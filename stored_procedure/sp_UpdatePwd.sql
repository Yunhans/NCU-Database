CREATE DEFINER=`110403043`@`192.168.128.1` PROCEDURE `sp_UpdatePwd`(
	in id int,
    in hashedPwd varchar(200),
    in salt char(64),
    out affected_row int
)
BEGIN
	start transaction; -- improve security
		update tbl_Student as s
		left join tbl_StudentCredential as sc on s.student_id = sc.hashed_student_id
		set sc.hashed_pwd = hashedPwd, s.salt = salt
		where sc.hashed_student_id = id;

		/* count affected rows */
		set affected_row = row_count(); 
	commit;
END