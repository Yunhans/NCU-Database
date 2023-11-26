CREATE DEFINER=`110403043`@`192.168.128.1` PROCEDURE `sp_Login`(
	in student_id int,
    in hashed_pwd varchar(200),
    out status_code int
)
BEGIN
	declare pwd varchar(200);
	select sc.hashed_pwd into pwd from tbl_StudentCredential as sc
    where sc.hashed_student_id = student_id;

	if pwd is null then 
		set status_code = 3;	-- wrong id 
    elseif pwd = hashed_pwd then 
		set status_code = 1;	-- correct password 
	else 
		set status_code = 2;	-- wrong password 
	end if;
END