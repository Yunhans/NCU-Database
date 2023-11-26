CREATE DATABASE  IF NOT EXISTS `db_110403043` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_110403043`;
-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (arm64)
--
-- Host: 192.168.128.5    Database: db_110403043
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_Course`
--

DROP TABLE IF EXISTS `tbl_Course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_Course` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_code` varchar(45) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `prerequisite_course` varchar(45) DEFAULT NULL,
  `semester` int NOT NULL,
  `room` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  `teacher` varchar(45) NOT NULL,
  `degree_program` varchar(45) NOT NULL,
  PRIMARY KEY (`course_id`),
  UNIQUE KEY `course_id_UNIQUE` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_Course`
--

LOCK TABLES `tbl_Course` WRITE;
/*!40000 ALTER TABLE `tbl_Course` DISABLE KEYS */;
INSERT INTO `tbl_Course` VALUES (1,'IM1023','Finance Management','',1121,'I1-104','(Wed) 234','2356','1'),(2,'IM1023','Finance Management','',1111,'I1-104','(Wed) 234','2356','1'),(3,'IM1022','Data Science','IM560,IM2048',1121,'I1-404','(Fri) 234','5623','1,4'),(4,'IM1022','Data Science','IM560,IM2048',1112,'I1-404','(Fri) 234','5620','1,4'),(5,'IM1022','Data Science','IM560,IM2048',1102,'I1-404','(Fri) 234','5620','1'),(6,'IM560','Programming(Basic)','',1111,'I1-407','(Sun) 678','5623','1'),(7,'IM560','Programming(Basic)','',1101,'I1-407','(Fri) 678','5623','1,2,3,4'),(8,'IM560','Programming(Basic)','',1091,'I1-407','(Fri) 678','5623','1,2,3,4'),(9,'IM2056','Introduction to Blockchain','IM2060',1112,'I1-404','(Mon) 234','5623','3'),(10,'IM2056','Introduction to Blockchain','IM2060',1101,'I1-404','(Tue) 234','5623','3,4'),(11,'IM1025','Machine Learning','IM560',1121,'I1-104','(Mon) 567','5623,1245','1'),(12,'IM1025','Machine Learning','IM560',1092,'I1-104','(Mon) 567','1245','1,2,3'),(13,'IM2048','Introduction to DataBase','',1121,'I1-103','(Wed) 567','5620','1'),(14,'IM2048','Introduction to DataBase','',1111,'I1-103','(Mon) 567','5620','1,2,3,4'),(15,'IM2048','Introduction to DataBase','',1101,'I1-103','(Mon) 567','5620','2,3,4'),(16,'IM2048','Introduction to DataBase','',1091,'I1-103','(Mon) 567','5620','2,3,4'),(17,'IM561','Programming(Advanced)','IM560',1112,'I1-407','(Tue) 234','5620,5623','2,4'),(18,'IM561','Programming(Advanced)','IM560',1102,'I1-407','(Tue) 234','5620,5623','2,4'),(19,'IM561','Programming(Advanced)','IM560',1092,'I1-407','(Tue) 234','5620,5623','2,4'),(20,'IM4085','Basic Chinese','',1121,'I1-404','(Wed) 789','3120','5'),(21,'IM4085','Basic Chinese','',1112,'I1-404','(Wed) 789','3120','5'),(22,'IM4085','Basic Chinese','',1102,'I1-404','(Wed) 789','3120','5'),(23,'IM2060','Information Security','',1121,'I1-404','(Tue) 678','1245','1,2'),(24,'IM2060','Information Security','',1111,'I1-404','(Tue) 678','1245','1,3'),(25,'IM2060','Information Security','',1101,'I1-404','(Tue) 678','1245','1,2,3,4'),(26,'IM2062','Introduction to Internet','',1121,'l1-409','(Thu) 678','5623','1,2'),(27,'IM2062','Introduction to Internet','',1111,'l1-409','(Thu) 678','1245','1,2'),(28,'IM4083','Basic English','',1121,'I1-404','(Mon) 234','3120','5'),(29,'IM4083','Basic English','',1111,'I1-404','(Mon) 234','3120','5'),(30,'IM4083','Basic English','',1101,'I1-404','(Mon) 234','3120','5'),(31,'IM2063','Practical Course of Cloud Computing','IM2062',1121,'I1-407','(Thu) 678','1245','3,4'),(32,'IM2063','Practical Course of Cloud Computing','IM2062',1112,'I1-407','(Thu) 678','1245','3,4'),(33,'IM1050','Marketing Management','',1121,'I1-507','(Thu) 567','2356','2,3,4'),(34,'IM1050','Marketing Management','',1111,'I1-507','(Thu) 567','2356','3,4'),(35,'IM1050','Marketing Management','',1101,'I1-507','(Thu) 567','2356','3,4'),(36,'IM1062','Physical Education','',1121,'I1-408','(Wed) 678','3120','5'),(37,'IM1062','Physical Education','',1111,'I1-408','(Wed) 678','3120','5'),(38,'IM1062','Physical Education','',1101,'I1-408','(Wed) 678','3120','5'),(39,'IM1023','Finance Management','',1121,'I1-104','(Sun) 234','2356','2'),(40,'IM1023','Finance Management','',1121,'I1-104','(Mon) 234','2356','3'),(41,'IM1023','Finance Management','',1121,'I1-104','(Tue) 234','2356','4'),(42,'IM2056','Introduction to Blockchain','IM2060',1112,'I1-404','(Tue) 234','5623','4'),(43,'IM560','Programming(Basic)','',1121,'I1-407','(Fri) 678','5623','2'),(44,'IM1022','Data Science','IM560,IM2048',1102,'I1-404','(Sun) 234','5620','4'),(45,'IM1025','Machine Learning','IM560',1121,'I1-104','(Tue) 567','5623,1245','2'),(46,'IM1025','Machine Learning','IM560',1121,'I1-104','(Wed) 567','5623,1245','3'),(47,'IM1023','Finance Management','',1111,'I1-104','(Sun) 234','2356','2'),(48,'IM1023','Finance Management','',1111,'I1-104','(Mon) 234','2356','3'),(49,'IM1023','Finance Management','',1111,'I1-104','(Tue) 234','2356','4'),(50,'IM560','Programming(Basic)','',1121,'I1-407','(Sun) 678','5623','1'),(51,'IM2056','Introduction to Blockchain','IM2060',1121,'I1-404','(Wed) 234','5623','1'),(52,'IM2060','Information Security','',1111,'I1-404','(Mon) 678','1245','2,4'),(53,'IM2048','Introduction to DataBase','',1121,'I1-103','(Mon) 567','5620','3,4');
/*!40000 ALTER TABLE `tbl_Course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_CourseCard`
--

DROP TABLE IF EXISTS `tbl_CourseCard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_CourseCard` (
  `course_card_id` int NOT NULL AUTO_INCREMENT,
  `serial_number` int NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`course_card_id`,`course_id`),
  UNIQUE KEY `course_card_id_UNIQUE` (`course_card_id`),
  KEY `course_id_fk_idx` (`course_id`),
  CONSTRAINT `course_id_fk` FOREIGN KEY (`course_id`) REFERENCES `tbl_Course` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_CourseCard`
--

LOCK TABLES `tbl_CourseCard` WRITE;
/*!40000 ALTER TABLE `tbl_CourseCard` DISABLE KEYS */;
INSERT INTO `tbl_CourseCard` VALUES (1,50001,45),(2,50002,45),(3,50003,45),(4,50004,45),(5,50005,45),(6,50006,44),(7,50007,44),(8,50008,44),(9,50009,44),(10,50010,44),(11,50011,44),(12,50012,44),(13,50013,51),(14,50014,51),(15,50015,51),(16,50016,51),(17,50017,51),(18,50018,51),(19,50019,51),(20,50020,51);
/*!40000 ALTER TABLE `tbl_CourseCard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_CourseCardStatus`
--

DROP TABLE IF EXISTS `tbl_CourseCardStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_CourseCardStatus` (
  `course_card_status_id` int NOT NULL AUTO_INCREMENT,
  `course_card_id` int NOT NULL,
  `course_status_id` int NOT NULL,
  PRIMARY KEY (`course_card_status_id`,`course_card_id`,`course_status_id`),
  UNIQUE KEY `course_card_status_id_UNIQUE` (`course_card_status_id`),
  KEY `course_card_id_fk_idx` (`course_card_id`),
  KEY `course_status_id_fk_idx` (`course_status_id`),
  CONSTRAINT `course_card_id_fk` FOREIGN KEY (`course_card_id`) REFERENCES `tbl_CourseCard` (`course_card_id`),
  CONSTRAINT `course_status_id_fk` FOREIGN KEY (`course_status_id`) REFERENCES `tbl_CourseStatus` (`course_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_CourseCardStatus`
--

LOCK TABLES `tbl_CourseCardStatus` WRITE;
/*!40000 ALTER TABLE `tbl_CourseCardStatus` DISABLE KEYS */;
INSERT INTO `tbl_CourseCardStatus` VALUES (1,6,32),(2,13,40),(3,14,41),(4,1,44);
/*!40000 ALTER TABLE `tbl_CourseCardStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_CourseStatus`
--

DROP TABLE IF EXISTS `tbl_CourseStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_CourseStatus` (
  `course_status_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `course_id` int NOT NULL,
  `status` varchar(45) NOT NULL,
  `passed` tinyint NOT NULL,
  PRIMARY KEY (`course_status_id`,`student_id`,`course_id`),
  UNIQUE KEY `course_status_id_UNIQUE` (`course_status_id`),
  KEY `status_student_id_fk_idx` (`student_id`),
  KEY `status_course_id_fk_idx` (`course_id`),
  CONSTRAINT `status_course_id_fk` FOREIGN KEY (`course_id`) REFERENCES `tbl_Course` (`course_id`),
  CONSTRAINT `status_student_id_fk` FOREIGN KEY (`student_id`) REFERENCES `tbl_Student` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_CourseStatus`
--

LOCK TABLES `tbl_CourseStatus` WRITE;
/*!40000 ALTER TABLE `tbl_CourseStatus` DISABLE KEYS */;
INSERT INTO `tbl_CourseStatus` VALUES (1,110123123,7,'enrolled',1),(2,110123123,2,'enrolled',1),(3,110123123,14,'enrolled',1),(4,110123120,7,'withdrawn',0),(5,110123120,2,'enrolled',1),(6,110123120,6,'enrolled',1),(7,110256321,7,'enrolled',1),(8,110256321,47,'enrolled',1),(9,110256321,14,'enrolled',1),(10,109234561,25,'enrolled',1),(11,109234561,35,'enrolled',1),(12,109234561,48,'enrolled',1),(13,109234561,9,'enrolled',0),(14,108569231,8,'enrolled',1),(15,108569231,25,'enrolled',1),(16,108569231,18,'enrolled',1),(17,108569231,35,'enrolled',1),(18,108569231,49,'enrolled',1),(19,108569231,42,'enrolled',0),(20,110123123,25,'withdrawn',0),(21,110123123,24,'enrolled',1),(22,110123123,38,'enrolled',1),(23,110123120,25,'enrolled',1),(24,110123120,37,'enrolled',1),(25,110256321,18,'unselected',1),(26,110256321,25,'enrolled',1),(27,110256321,22,'enrolled',1),(28,109234561,8,'enrolled',1),(29,109234561,12,'withdrawn',0),(30,109234561,30,'enrolled',1),(31,108569231,16,'enrolled',1),(32,108569231,44,'enrolled',1),(33,108569231,29,'unselected',0),(34,110123123,11,'enrolled',0),(35,110123123,26,'enrolled',0),(36,110123120,11,'enrolled',0),(37,110123120,13,'enrolled',0),(38,110256321,33,'enrolled',0),(39,110123123,3,'preliminary',0),(40,110123123,51,'enrolled',0),(41,110123120,51,'enrolled',0),(42,110123120,20,'preliminary',0),(43,110256321,26,'preliminary',0),(44,110256321,45,'enrolled',0),(45,109234561,46,'preliminary',0),(46,109234561,53,'preliminary',0),(47,109234561,36,'preliminary',0),(48,108569231,20,'preliminary',0),(49,108569231,28,'preliminary',0),(50,108569231,36,'preliminary',0);
/*!40000 ALTER TABLE `tbl_CourseStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_DegreeProgram`
--

DROP TABLE IF EXISTS `tbl_DegreeProgram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_DegreeProgram` (
  `degree_program_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `required_course` varchar(100) NOT NULL,
  `prerequisite_year_of_required_course` varchar(45) NOT NULL,
  `elective_course` varchar(100) NOT NULL,
  PRIMARY KEY (`degree_program_id`),
  UNIQUE KEY `degree_program_id_UNIQUE` (`degree_program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_DegreeProgram`
--

LOCK TABLES `tbl_DegreeProgram` WRITE;
/*!40000 ALTER TABLE `tbl_DegreeProgram` DISABLE KEYS */;
INSERT INTO `tbl_DegreeProgram` VALUES (1,'Bachelor of Information Management Degree Program','IM1023,IM560,IM1025,IM2048,IM561,IM2062','1,1,2,2,3,3','IM1022,IM2056,IM2060,IM2063'),(2,'Bachelor of Business Management Degree Program','IM1023,IM560,IM2048,IM1050','1,1,2,3','IM1025,IM561,IM2060,IM2062'),(3,'Bachelor of Applied Economics Degree Program','IM1023,IM2060,IM1050,IM2056,IM2062','1,1,2,3,4','IM560,IM1025,IM2048,IM2063'),(4,'Bachelor of Financial Management Degree Program','IM560,IM1023,IM2060,IM561,IM1050,IM2056','1,1,2,3,3,4','IM1022,IM2048,IM2063,IM2062'),(5,'Liberal Education','','','IM4085,IM4083,IM1062');
/*!40000 ALTER TABLE `tbl_DegreeProgram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_Student`
--

DROP TABLE IF EXISTS `tbl_Student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_Student` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `salt` char(64) NOT NULL,
  `degree_program` varchar(45) NOT NULL,
  `grade` int NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `student_id_UNIQUE` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110256322 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_Student`
--

LOCK TABLES `tbl_Student` WRITE;
/*!40000 ALTER TABLE `tbl_Student` DISABLE KEYS */;
INSERT INTO `tbl_Student` VALUES (108569231,'Timmy Huang','0912587773','sagittis.nullam@google.com','XcZg6Be^cU2y','4,5',4),(109234561,'Peter Wang','0958351743','sed.auctor@hotmail.com','Rv$uGmL&C!%g','3,5',3),(110123120,'Mei','0988008346','adipiscing.enim.mi@outlook.com','7gB%z9Svg8EW','1,5',1),(110123123,'Kevin Wang','0921003614','in.consequat@yahoo.com','0oplfZ16tyLX','1,5',2),(110256321,'Jeter Liu','0922830125','nullam.velit@yahoo.com','JJQF0j%tkx3i','2,5',2);
/*!40000 ALTER TABLE `tbl_Student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_StudentCredential`
--

DROP TABLE IF EXISTS `tbl_StudentCredential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_StudentCredential` (
  `hashed_id` int NOT NULL AUTO_INCREMENT,
  `hashed_student_id` int NOT NULL,
  `hashed_pwd` varchar(200) NOT NULL,
  PRIMARY KEY (`hashed_id`,`hashed_student_id`),
  UNIQUE KEY `hashed_id_UNIQUE` (`hashed_id`),
  UNIQUE KEY `hashed_student_id_UNIQUE` (`hashed_student_id`),
  KEY `student_id_fk_idx` (`hashed_student_id`),
  CONSTRAINT `student_id_fk` FOREIGN KEY (`hashed_student_id`) REFERENCES `tbl_Student` (`student_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_StudentCredential`
--

LOCK TABLES `tbl_StudentCredential` WRITE;
/*!40000 ALTER TABLE `tbl_StudentCredential` DISABLE KEYS */;
INSERT INTO `tbl_StudentCredential` VALUES (1,110123123,'5459ffea690882061cfa56fa9033278370e48de356c700637aad68d14f2ae0ae'),(2,110123120,'07703ba76ae595a212c8317146fb292fb773f34314a3708a6f3e916bbf6e499c'),(3,110256321,'1caf7cfa34bdb90fd7a332dfed5a5e0d1a153d6a164234aa98b7ba611b83abe7'),(4,109234561,'ea8ced964d6826e1eede67dccaea05e543e4bcf84ff06d6af8f7877413a91538'),(5,108569231,'7a09363a667de652e1666b0810219bb7886036dca13af909cd755c80df946365');
/*!40000 ALTER TABLE `tbl_StudentCredential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_Teacher`
--

DROP TABLE IF EXISTS `tbl_Teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_Teacher` (
  `teacher_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `salt` char(64) NOT NULL,
  PRIMARY KEY (`teacher_id`),
  UNIQUE KEY `teacher_id_UNIQUE` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5624 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_Teacher`
--

LOCK TABLES `tbl_Teacher` WRITE;
/*!40000 ALTER TABLE `tbl_Teacher` DISABLE KEYS */;
INSERT INTO `tbl_Teacher` VALUES (1245,'Thor Chang','0970691667','dui.quis.accumsan@google.com','&@^ODhk0MH&l'),(2356,'Ota Huang','0960105109','nec.leo.morbi@protonmail.com','aZjy*GvZt@s*'),(3120,'Charle Yang','0961749001','sociosqu.ad@yahoo.com','j8tI5!wG88PM'),(5620,'Pole Huang','0928735721','proin.non@protonmail.com','n7UDOe0uspZk'),(5623,'LIlly Chang','0968169143','arcu.vel.quam@hotmail.com','wlmM33nAD@SR');
/*!40000 ALTER TABLE `tbl_Teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_TeacherCredential`
--

DROP TABLE IF EXISTS `tbl_TeacherCredential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_TeacherCredential` (
  `hashed_id` int NOT NULL AUTO_INCREMENT,
  `hashed_teacher_id` int NOT NULL,
  `hashed_pwd` varchar(200) NOT NULL,
  PRIMARY KEY (`hashed_id`,`hashed_teacher_id`),
  UNIQUE KEY `hashed_id_UNIQUE` (`hashed_id`),
  KEY `teacher_id_idx` (`hashed_teacher_id`),
  CONSTRAINT `teacher_id` FOREIGN KEY (`hashed_teacher_id`) REFERENCES `tbl_Teacher` (`teacher_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_TeacherCredential`
--

LOCK TABLES `tbl_TeacherCredential` WRITE;
/*!40000 ALTER TABLE `tbl_TeacherCredential` DISABLE KEYS */;
INSERT INTO `tbl_TeacherCredential` VALUES (1,2356,'ccd108b762527fcdcdb8c5b6cad6480e9b81a5d92f29e6793d6865b274bc50dc'),(2,3120,'a5c5e74448987538a8bffda3518f59e2f3785cf460d4f882a2c563af654fe13f'),(3,5620,'1a4c96ddeda1e2bfc16abd7bd6f8a72dc416c10c824747cbe5b1f9cc20671c40'),(4,5623,'e9c59dd5748d8c0be520b37658c8da542720916cc6d7ff627ad2ba0e76237bca'),(5,1245,'5ad2e13f01b6c6597301b4dd8fa5b2a055c6e4245e84f63344f6bbb5c0f3c802');
/*!40000 ALTER TABLE `tbl_TeacherCredential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_110403043'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetCourseStudent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`110403043`@`192.168.128.1` PROCEDURE `sp_GetCourseStudent`(
	in course_id int,
    out row_nums int
)
BEGIN
	select c.semester, c.degree_program, c.course_code, c.course_name, cs.student_id, s.name as student_name
    from tbl_CourseStatus as cs
    left join tbl_Course as c on c.course_id = cs.course_id
	left join tbl_Student as s on s.student_id = cs.student_id
	where cs.course_id = course_id and cs.status = "enrolled";
    set row_nums = found_rows();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetCourseWithSemesterAndTeacher` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetDegreeProgramCourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetPrerequisiteCourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetRequiredCourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`110403043`@`192.168.128.1` PROCEDURE `sp_GetRequiredCourse`(
	in student_id int,
    in semester int
)
BEGIN
	declare next_grade int;
    select grade into next_grade from tbl_Student as s where s.student_id = student_id;
    set next_grade = if(semester%10=1, next_grade + 1, next_grade);

	select c.course_id, c.course_code, c.course_name, c.time, substr(substring_index(dp.prerequisite_year_of_required_course, ",",find_in_set(c.course_code, dp.required_course)),-1,1) as prerequisite_year
    from tbl_Student as s
    left join tbl_DegreeProgram as dp on find_in_set(dp.degree_program_id, s.degree_program)
    left join tbl_Course as c on find_in_set(c.course_code, dp.required_course)
    where s.student_id = student_id
		and c.semester = semester
        and find_in_set(degree_program_id,c.degree_program)
        and substr(substring_index(dp.prerequisite_year_of_required_course, ",",find_in_set(c.course_code, dp.required_course)),-1,1) <= next_grade
        and c.course_code not in ( -- passed required course
            select c.course_code from tbl_CourseStatus as cs
			left join tbl_Course as c on cs.course_id = c.course_id
			where cs.student_id = student_id and cs.passed = 1 and c.semester < semester
        )
        and c.course_id not in(  -- collision required course with bigger year
        	select c.course_id
			from tbl_Student as s
			left join tbl_DegreeProgram as dp on find_in_set(dp.degree_program_id, s.degree_program)
			left join tbl_Course as c on find_in_set(c.course_code, dp.required_course)
			cross join ( -- self join find collision
				select c.course_id, c.course_code, c.course_name, c.time, substr(substring_index(dp.prerequisite_year_of_required_course, ",",find_in_set(c.course_code, dp.required_course)),-1,1) as prerequisite_year, next_grade
				from tbl_Student as s
				left join tbl_DegreeProgram as dp on find_in_set(dp.degree_program_id, s.degree_program)
				left join tbl_Course as c on find_in_set(c.course_code, dp.required_course)
				where s.student_id = student_id
					and c.semester = semester
					and find_in_set(degree_program_id,c.degree_program)
					and substr(substring_index(dp.prerequisite_year_of_required_course, ",",find_in_set(c.course_code, dp.required_course)),-1,1) <= next_grade
					and c.course_code not in ( -- passed required course
						select c.course_code from tbl_CourseStatus as cs
						left join tbl_Course as c on cs.course_id = c.course_id
						where cs.student_id = student_id and cs.passed = 1 and c.semester < semester
					)
			) as collide
			where s.student_id = student_id
				and c.semester = semester
				and find_in_set(degree_program_id,c.degree_program)
				and substr(substring_index(dp.prerequisite_year_of_required_course, ",",find_in_set(c.course_code, dp.required_course)),-1,1) <= next_grade
				and c.course_code not in ( -- passed required course
					select c.course_code from tbl_CourseStatus as cs
					left join tbl_Course as c on cs.course_id = c.course_id
					where cs.student_id = student_id and cs.passed = 1 and c.semester < semester
				)
				and c.time != collide.time
				and substr(substring_index(dp.prerequisite_year_of_required_course, ",",find_in_set(c.course_code, dp.required_course)),-1,1) > collide.prerequisite_year
				and instr(c.time, substring_index(collide.time, " ", 1))
				and (instr(c.time, if(substring(substring_index(collide.time, " ", -1),1,1) ="" , "?", substring(substring_index(collide.time, " ", -1),1,1)))
					or instr(c.time, if(substring(substring_index(collide.time, " ", -1),2,1) ="" , "?", substring(substring_index(collide.time, " ", -1),2,1))) 
					or instr(c.time, if(substring(substring_index(collide.time, " ", -1),3,1) ="" , "?", substring(substring_index(collide.time, " ", -1),3,1)))
				)
        )
        and c.course_code not in( -- haven't passed prerequisite courses
			select ppc.course_code from(
					select pc.course_code, pc.prerequisite_course, pc.prerequisite_count, count(pass.course_code) as prerequisite_pass_count from (
						select c.course_code from tbl_CourseStatus as cs
						left join tbl_Course as c on cs.course_id = c.course_id
						where cs.student_id = student_id and cs.passed = 1 and c.semester < semester
					) as pass right join (
						select distinct c1.course_code, c1.prerequisite_course, count(c2.course_code) as prerequisite_count from tbl_Course as c1
						left join (select distinct course_code from tbl_Course) as c2 on find_in_set(c2.course_code, c1.prerequisite_course)
						where c1.prerequisite_course != "" -- delete courses without prerequisite course
						group by c1.course_id
					) as pc on find_in_set(pass.course_code, pc.prerequisite_course)
					group by pc.course_code, pc.prerequisite_course, pc.prerequisite_count
				) as ppc
				where ppc.prerequisite_count > ppc.prerequisite_pass_count
        );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetSelectableCourses` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`110403043`@`192.168.128.1` PROCEDURE `sp_GetSelectableCourses`(
	in student_id int,
    in semester int,
    out row_nums int
)
BEGIN
	select distinct s.student_id, c.semester, dp.name as degree_program_name, c.course_code, c.course_name 
    from tbl_Course as c
    left join tbl_DegreeProgram as dp on find_in_set(dp.degree_program_id, c.degree_program) 	-- courses confirm to degree program
    left join tbl_Student as s on find_in_set(dp.degree_program_id, s.degree_program)		 	-- students confirm to degree program
    where c.semester = semester and s.student_id = student_id
		and c.course_code not in (		-- courses that have passed before inputted semester
			select c.course_code from tbl_CourseStatus as cs
			left join tbl_Course as c on cs.course_id = c.course_id
			where cs.student_id = student_id and cs.passed = 1 and c.semester < semester
		)and c.course_code not in (		-- haven't passed prerequisite courses
			select ppc.course_code from(
				select pc.course_code, pc.prerequisite_course, pc.prerequisite_count, count(pass.course_code) as prerequisite_pass_count from (
					select c.course_code from tbl_CourseStatus as cs
					left join tbl_Course as c on cs.course_id = c.course_id
					where cs.student_id = student_id and cs.passed = 1 and c.semester < semester
				) as pass right join (
					select distinct c1.course_code, c1.prerequisite_course, count(c2.course_code) as prerequisite_count from tbl_Course as c1
					left join (select distinct course_code from tbl_Course) as c2 on find_in_set(c2.course_code, c1.prerequisite_course)
					where c1.prerequisite_course != "" -- delete courses without prerequisite course
					group by c1.course_id
				) as pc on find_in_set(pass.course_code, pc.prerequisite_course)
				group by pc.course_code, pc.prerequisite_course, pc.prerequisite_count
			) as ppc
			where ppc.prerequisite_count > ppc.prerequisite_pass_count
        );
	set row_nums = found_rows();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetSelectionCourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`110403043`@`192.168.128.1` PROCEDURE `sp_GetSelectionCourse`(
	in student_id int,
    in semester int,
    out row_nums int
)
BEGIN
	select cs.student_id, c.semester, c.course_code, c.course_name, cs.status from tbl_CourseStatus as cs
    left join tbl_Course as c on c.course_id = cs.course_id
    where cs.student_id = student_id and c.semester = semester and cs.status in("preliminary","enrolled");
    set row_nums = found_rows();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetStudentCourseWithCourseCard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`110403043`@`192.168.128.1` PROCEDURE `sp_GetStudentCourseWithCourseCard`(
	in course_id int,
    out row_nums int
)
BEGIN
	select c.semester, c.degree_program as degree_program_id, c.course_code, c.course_name, s.student_id, s.name as student_name, cc.serial_number 
    from tbl_CourseCardStatus as ccs
    left join tbl_CourseStatus as cs on ccs.course_status_id = cs.course_status_id
    left join tbl_CourseCard as cc on ccs.course_card_id = cc.course_card_id
    left join tbl_Course as c on cs.course_id = c.course_id
    left join tbl_Student as s on cs.student_id = s.student_id
    where cc.course_id = course_id;
    set row_nums = found_rows();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_OfferCourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdatePwd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdateWithdrawCourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `test_passed` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`110403043`@`192.168.128.1` PROCEDURE `test_passed`(
	in student_id int,
    in semester int
)
BEGIN
	select c.course_id, c.course_code, c.semester from tbl_CourseStatus as cs
    left join tbl_Course as c on cs.course_id = c.course_id
    where cs.student_id = student_id and cs.passed = 1 and c.semester < semester;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-11  0:54:57
