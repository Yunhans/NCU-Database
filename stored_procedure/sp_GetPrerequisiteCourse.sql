CREATE DEFINER=`110403043`@`192.168.128.1` PROCEDURE `sp_GetPrerequisiteCourse`(
	in course_code varchar(45),
    out row_nums int
)
BEGIN
	select distinct c1.course_code, c1.course_name, c2.course_code as prerequisite_course_code, c2.course_name as prerequisite_course_name 
    from tbl_Course as c1
    left join tbl_Course as c2 on find_in_set(c2.course_code, c1.prerequisite_course)
    where c1.course_code = course_code and c2.course_id is not null; -- same course code & have requisition course
    set row_nums = found_rows();
END