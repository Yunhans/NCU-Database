CREATE DEFINER=`110403043`@`192.168.128.1` PROCEDURE `sp_OfferCourse`(
	in degree_program_id int,
    in course_code varchar(45),
	in semester int,
	in teacher_id varchar(45),
    in course_time varchar(45),
    in course_room varchar(45),
    out affected_row_num int
)
BEGIN
	-- find collision
	start transaction;
		if (
			select case 
				when exists( -- same teacher or room in the same time
					select * from tbl_Course as c
					where c.semester = semester
						and (find_in_set(substring_index(teacher_id,',',1), c.teacher) or find_in_set(substring_index(teacher_id,',',-1), c.teacher) or c.room = course_room) -- same teacher or room
						and instr(c.time, substring_index(course_time, " ", 1))  -- on the same day
						and (instr(c.time, if(substring(substring_index(course_time, " ", -1),1,1) ="" , "?", substring(substring_index(course_time, " ", -1),1,1)))  -- on the same time
							or instr(c.time, if(substring(substring_index(course_time, " ", -1),2,1) ="" , "?", substring(substring_index(course_time, " ", -1),2,1))) 
							or instr(c.time, if(substring(substring_index(course_time, " ", -1),3,1) ="" , "?", substring(substring_index(course_time, " ", -1),3,1)))
						)
				) or exists( -- same degree prerequisite year course in the same time
					select dp.degree_program_id, dp.required_course, dp.prerequisite_year_of_required_course, c.course_id, c.course_code, c.course_name, c.semester, c.time, c.degree_program, find_in_set(c.course_code, dp.required_course) as pre_index, substr(substring_index(dp.prerequisite_year_of_required_course, ",",find_in_set(c.course_code, dp.required_course)),-1,1) as pre_year, substr(substring_index(dp.prerequisite_year_of_required_course, ",",find_in_set(course_code, dp.required_course)),-1,1) as target_year
					from tbl_DegreeProgram as dp
					left join tbl_Course as c on find_in_set(c.course_code, dp.required_course) and find_in_set(dp.degree_program_id, c.degree_program)
					where dp.degree_program_id = degree_program_id 
						and c.semester = semester
						and substr(substring_index(dp.prerequisite_year_of_required_course, ",",find_in_set(c.course_code, dp.required_course)),-1,1) = substr(substring_index(dp.prerequisite_year_of_required_course, ",",find_in_set(course_code, dp.required_course)),-1,1)
						and c.course_code != course_code
						and instr(c.time, substring_index(course_time, " ", 1))
						and (instr(c.time, if(substring(substring_index(course_time, " ", -1),1,1) ="" , "?", substring(substring_index(course_time, " ", -1),1,1)))
							or instr(c.time, if(substring(substring_index(course_time, " ", -1),2,1) ="" , "?", substring(substring_index(course_time, " ", -1),2,1))) 
							or instr(c.time, if(substring(substring_index(course_time, " ", -1),3,1) ="" , "?", substring(substring_index(course_time, " ", -1),3,1)))
						)
				) then 'yes'
				else 'no'
				end as collide
		) = 'no' then -- no collide
			insert into tbl_Course (course_code, course_name, prerequisite_course, semester, room, time, teacher, degree_program)
				values(`course_code`, 
					(select distinct c.course_name from tbl_Course as c where c.course_code = course_code), 
					(select distinct c.prerequisite_course from tbl_Course as c where c.course_code = course_code), 
					`semester`, `course_room`, `course_time`, `teacher_id`, `degree_program_id`);
		end if;
		set affected_row_num = row_count();
    commit;
    
    -- result set
    if affected_row_num != 0 then
		select c.degree_program, c.semester, c.course_code, c.course_name, concat(t1.name, if(t2.name!=t1.name,concat(",",t2.name),'')) as teacher_name, c.time as course_time, c.room as course_room
		from tbl_Course as c
		left join tbl_Teacher as t1 on t1.teacher_id = substring_index(c.teacher,",",1)
		left join tbl_Teacher as t2 on t2.teacher_id = substring_index(c.teacher,",",-1)
		where c.semester = semester and c.course_id = course_id and c.time = course_time and c.room = course_room;
	end if;
END