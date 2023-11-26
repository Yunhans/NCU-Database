CREATE DEFINER=`110403043`@`192.168.128.1` PROCEDURE `sp_GetCourseStudent`(
	in course_id int,
    out row_nums int
)
BEGIN
	select c.semester, c.degree_program, c.course_code, c.course_name, cs.student_id, s.name as student_name
    from tbl_CourseStatus as cs
    left join tbl_Course as c on c.course_id = cs.course_id
	left join tbl_Student as s on s.student_id = cs.student_id
	where cs.course_id = course_id and cs.status = "enrolled";
    set row_nums = found_rows();
END