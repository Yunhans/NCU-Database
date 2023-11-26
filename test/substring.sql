CREATE DEFINER=`110403043`@`192.168.128.1` PROCEDURE `test_split`(
	in course_time varchar(45)
)
BEGIN
	select substring(substring_index(course_time, " ", -1),1,1) as time1,
        substring(substring_index(course_time, " ", -1),2,1) as time2,
        substring(substring_index(course_time, " ", -1),3,1) as time3;
	-- from tbl_Course as c;
END