CREATE DEFINER=`110403043`@`192.168.128.1` PROCEDURE `test_passed`(
	in student_id int,
    in semester int
)
BEGIN
	select c.course_code from tbl_CourseStatus as cs
    left join tbl_Course as c on cs.course_id = c.course_id
    where cs.student_id = student_id and cs.passed = 1 and c.semester < semester;
END