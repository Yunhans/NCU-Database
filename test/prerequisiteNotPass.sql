CREATE DEFINER=`110403043`@`192.168.128.1` PROCEDURE `test_prerequisiteNotPass`(
	in student_id int,
    in semester int
)
BEGIN
	select ppc.course_code from(
			select pc.course_code, pc.prerequisite_course, pc.prerequisite_count, count(pass.course_code) as prerequisite_pass_count from (
			select c.course_code from tbl_CourseStatus as cs
			left join tbl_Course as c on cs.course_id = c.course_id
			where cs.student_id = student_id and cs.passed = 1 and c.semester < semester
		) as pass right join (
			select distinct c1.course_code, c1.prerequisite_course, count(c2.course_code) as prerequisite_count from tbl_Course as c1
			left join (select distinct course_code from tbl_Course) as c2 on find_in_set(c2.course_code, c1.prerequisite_course)
			where c1.prerequisite_course != ""
			group by c1.course_id
		) as pc on find_in_set(pass.course_code, pc.prerequisite_course)
		group by pc.course_code, pc.prerequisite_course, pc.prerequisite_count
	) as ppc
    where ppc.prerequisite_count > ppc.prerequisite_pass_count;
END