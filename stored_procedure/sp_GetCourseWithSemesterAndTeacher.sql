CREATE DEFINER=`110403043`@`192.168.128.1` PROCEDURE `sp_GetCourseWithSemesterAndTeacher`(
	in semester int,
    in teacher_id int,
    out row_nums int
)
BEGIN
	select c.semester, c.teacher as teacher_id, c.course_code, c.course_name, dp.degree_program_id as degree_program from tbl_Course as c
    cross join tbl_DegreeProgram as dp
    where c.semester = semester and find_in_set(teacher_id, c.teacher) and find_in_set(dp.degree_program_id, c.degree_program)
    order by c.course_code asc;
    set row_nums = found_rows();
END