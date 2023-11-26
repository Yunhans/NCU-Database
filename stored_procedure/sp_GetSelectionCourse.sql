CREATE DEFINER=`110403043`@`192.168.128.1` PROCEDURE `sp_GetSelectionCourse`(
	in student_id int,
    in semester int,
    out row_nums int
)
BEGIN
	select cs.student_id, c.semester, c.course_code, c.course_name, cs.status from tbl_CourseStatus as cs
    left join tbl_Course as c on c.course_id = cs.course_id
    where cs.student_id = student_id and c.semester = semester and cs.status in("preliminary","enrolled");
    set row_nums = found_rows();
END