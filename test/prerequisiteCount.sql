CREATE DEFINER=`110403043`@`192.168.128.1` PROCEDURE `test_prequisiteCount`()
BEGIN
	select distinct c1.course_code, c1.prerequisite_course, count(*) as prerequisite_count from tbl_Course as c1
    left join (select distinct course_code from tbl_Course) as c2 on find_in_set(c2.course_code, c1.prerequisite_course)
    where c1.prerequisite_course != ""
    group by c1.course_id;
END