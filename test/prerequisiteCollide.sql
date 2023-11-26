CREATE DEFINER=`110403043`@`192.168.128.1` PROCEDURE `test_requisiteCollide`(
	in semester int,
	in teacher_id varchar(45),
    in course_time varchar(45),
    in course_room varchar(45)
)
BEGIN
	select *, substring_index(teacher_id,',',1) as teacher1, substring_index(teacher_id,',',-1) as teacher2 from tbl_Course as c
	where c.semester = semester
        and (find_in_set(substring_index(teacher_id,',',1), c.teacher) or find_in_set(substring_index(teacher_id,',',-1), c.teacher) or c.room = course_room) -- same teacher or room
		and instr(c.time, substring_index(course_time, " ", 1))  -- on the same day
		and (instr(c.time, if(substring(substring_index(course_time, " ", -1),1,1) ="" , "?", substring(substring_index(course_time, " ", -1),1,1)))  -- on the same time
			or instr(c.time, if(substring(substring_index(course_time, " ", -1),2,1) ="" , "?", substring(substring_index(course_time, " ", -1),2,1))) 
			or instr(c.time, if(substring(substring_index(course_time, " ", -1),3,1) ="" , "?", substring(substring_index(course_time, " ", -1),3,1)))
		);
END