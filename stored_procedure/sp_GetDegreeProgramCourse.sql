CREATE DEFINER=`110403043`@`192.168.128.1` PROCEDURE `sp_GetDegreeProgramCourse`(
	in degree_program_id int,
    out row_nums int
)
BEGIN
	
	select distinct dp.name as degree_program_name, c.course_code, c.course_name, 
		if(find_in_set(c.course_code, dp.required_course), "required","elective") as required_or_elective  -- last column is required or not
	from tbl_DegreeProgram as dp
    cross join tbl_Course as c
    where dp.degree_program_id = degree_program_id and (find_in_set(c.course_code, dp.required_course) or find_in_set(c.course_code, dp.elective_course))
    order by required_or_elective desc; -- sort required -> elective 
    set row_nums = found_rows();
END