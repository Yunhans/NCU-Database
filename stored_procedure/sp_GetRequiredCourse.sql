CREATE DEFINER=`110403043`@`192.168.128.1` PROCEDURE `sp_GetRequiredCourse`(
	in student_id int,
    in semester int
)
BEGIN
	declare next_grade int;
    select grade into next_grade from tbl_Student as s where s.student_id = student_id;
    set next_grade = if(semester%10=1, next_grade + 1, next_grade);

	select c.course_id, c.course_code, c.course_name, c.time, substr(substring_index(dp.prerequisite_year_of_required_course, ",",find_in_set(c.course_code, dp.required_course)),-1,1) as prerequisite_year
    from tbl_Student as s
    left join tbl_DegreeProgram as dp on find_in_set(dp.degree_program_id, s.degree_program)
    left join tbl_Course as c on find_in_set(c.course_code, dp.required_course)
    where s.student_id = student_id
		and c.semester = semester
        and find_in_set(degree_program_id,c.degree_program)
        and substr(substring_index(dp.prerequisite_year_of_required_course, ",",find_in_set(c.course_code, dp.required_course)),-1,1) <= next_grade
        and c.course_code not in ( -- passed required course
            select c.course_code from tbl_CourseStatus as cs
			left join tbl_Course as c on cs.course_id = c.course_id
			where cs.student_id = student_id and cs.passed = 1 and c.semester < semester
        )
        and c.course_id not in(  -- collision required course with bigger year
        	select c.course_id
			from tbl_Student as s
			left join tbl_DegreeProgram as dp on find_in_set(dp.degree_program_id, s.degree_program)
			left join tbl_Course as c on find_in_set(c.course_code, dp.required_course)
			cross join ( -- self join find collision
				select c.course_id, c.course_code, c.course_name, c.time, substr(substring_index(dp.prerequisite_year_of_required_course, ",",find_in_set(c.course_code, dp.required_course)),-1,1) as prerequisite_year, next_grade
				from tbl_Student as s
				left join tbl_DegreeProgram as dp on find_in_set(dp.degree_program_id, s.degree_program)
				left join tbl_Course as c on find_in_set(c.course_code, dp.required_course)
				where s.student_id = student_id
					and c.semester = semester
					and find_in_set(degree_program_id,c.degree_program)
					and substr(substring_index(dp.prerequisite_year_of_required_course, ",",find_in_set(c.course_code, dp.required_course)),-1,1) <= next_grade
					and c.course_code not in ( -- passed required course
						select c.course_code from tbl_CourseStatus as cs
						left join tbl_Course as c on cs.course_id = c.course_id
						where cs.student_id = student_id and cs.passed = 1 and c.semester < semester
					)
			) as collide
			where s.student_id = student_id
				and c.semester = semester
				and find_in_set(degree_program_id,c.degree_program)
				and substr(substring_index(dp.prerequisite_year_of_required_course, ",",find_in_set(c.course_code, dp.required_course)),-1,1) <= next_grade
				and c.course_code not in ( -- passed required course
					select c.course_code from tbl_CourseStatus as cs
					left join tbl_Course as c on cs.course_id = c.course_id
					where cs.student_id = student_id and cs.passed = 1 and c.semester < semester
				)
				and c.time != collide.time
				and substr(substring_index(dp.prerequisite_year_of_required_course, ",",find_in_set(c.course_code, dp.required_course)),-1,1) > collide.prerequisite_year
				and instr(c.time, substring_index(collide.time, " ", 1))
				and (instr(c.time, if(substring(substring_index(collide.time, " ", -1),1,1) ="" , "?", substring(substring_index(collide.time, " ", -1),1,1)))
					or instr(c.time, if(substring(substring_index(collide.time, " ", -1),2,1) ="" , "?", substring(substring_index(collide.time, " ", -1),2,1))) 
					or instr(c.time, if(substring(substring_index(collide.time, " ", -1),3,1) ="" , "?", substring(substring_index(collide.time, " ", -1),3,1)))
				)
        )
        and c.course_code not in( -- haven't passed prerequisite courses
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
END