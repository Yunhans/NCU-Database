CREATE DEFINER=`110403043`@`192.168.128.1` PROCEDURE `sp_GetStudentCourseWithCourseCard`(
	in course_id int,
    out row_nums int
)
BEGIN
	select c.semester, c.degree_program as degree_program_id, c.course_code, c.course_name, s.student_id, s.name as student_name, cc.serial_number 
    from tbl_CourseCardStatus as ccs
    left join tbl_CourseStatus as cs on ccs.course_status_id = cs.course_status_id
    left join tbl_CourseCard as cc on ccs.course_card_id = cc.course_card_id
    left join tbl_Course as c on cs.course_id = c.course_id
    left join tbl_Student as s on cs.student_id = s.student_id
    where cc.course_id = course_id;
    set row_nums = found_rows();
END