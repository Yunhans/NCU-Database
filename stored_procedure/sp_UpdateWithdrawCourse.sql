CREATE DEFINER=`110403043`@`192.168.128.1` PROCEDURE `sp_UpdateWithdrawCourse`(
	in student_id int,
    in course_id int,
    out affected_row_num int
)
BEGIN
	start transaction;
	-- withdraw
		update tbl_CourseStatus as cs
		left join tbl_Course as c on cs.course_id = c.course_id
        set cs.status = "withdrawn"
		where cs.student_id = student_id and cs.course_id = course_id;
        set affected_row_num = row_count();
    commit;
    
    -- result set
		if affected_row_num != 0 then
			select cs.student_id, c.degree_program, c.course_code, c.course_name, c.semester, cs.status from tbl_CourseStatus as cs
			left join tbl_Course as c on cs.course_id = c.course_id
			where cs.student_id = student_id and cs.course_id = course_id;
		end if;
END