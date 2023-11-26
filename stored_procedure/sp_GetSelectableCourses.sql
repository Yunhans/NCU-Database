CREATE DEFINER=`110403043`@`192.168.128.1` PROCEDURE `sp_GetSelectableCourses`(
	in student_id int,
    in semester int,
    out row_nums int
)
BEGIN
	select distinct s.student_id, c.semester, dp.name as degree_program_name, c.course_code, c.course_name 
    from tbl_Course as c
    left join tbl_DegreeProgram as dp on find_in_set(dp.degree_program_id, c.degree_program) 	-- courses confirm to degree program
    left join tbl_Student as s on find_in_set(dp.degree_program_id, s.degree_program)		 	-- students confirm to degree program
    where c.semester = semester and s.student_id = student_id
		and c.course_code not in (		-- courses that have passed before inputted semester
			select c.course_code from tbl_CourseStatus as cs
			left join tbl_Course as c on cs.course_id = c.course_id
			where cs.student_id = student_id and cs.passed = 1 and c.semester < semester
		)and c.course_code not in (		-- haven't passed prerequisite courses
			select ppc.course_code from(
				select pc.course_code, pc.prerequisite_course, pc.prerequisite_count, count(pass.course_code) as prerequisite_pass_count from (
					select c.course_code from tbl_CourseStatus as cs
					left join tbl_Course as c on cs.course_id = c.course_id
					where cs.student_id = student_id and cs.passed = 1 and c.semester < semester
				) as pass right join (
					select distinct c1.course_code, c1.prerequisite_course, count(c2.course_code) as prerequisite_count from tbl_Course as c1
					left join (select distinct course_code from tbl_Course) as c2 on find_in_set(c2.course_code, c1.prerequisite_course)
					where c1.prerequisite_course != "" -- delete courses without prerequisite course
					group by c1.course_id
				) as pc on find_in_set(pass.course_code, pc.prerequisite_course)
				group by pc.course_code, pc.prerequisite_course, pc.prerequisite_count
			) as ppc
			where ppc.prerequisite_count > ppc.prerequisite_pass_count
        );
	set row_nums = found_rows();
END