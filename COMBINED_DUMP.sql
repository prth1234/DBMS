-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: dbms_p1
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `aadhar` varchar(12) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(20) NOT NULL,
  PRIMARY KEY (`aadhar`),
  CONSTRAINT `aadhar` FOREIGN KEY (`aadhar`) REFERENCES `citizen` (`aadhar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES ('111111111111','Avenue 3','Greater Noida ','Uttar Preadesh'),('222222222222','Avenue 2','Greater Noida ','Uttar Pradesh '),('333333333333','Avenue 4','Greater Noida ','Uttar Pradesh '),('444444444444','Avenue 5','Bangalore ','Karnataka '),('555555555555','Avenue 6','Banalore','Karnataka ');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup`
--

DROP TABLE IF EXISTS `backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backup` (
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `aadhar` varchar(12) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `dob` date NOT NULL,
  `phone_no` int NOT NULL,
  `mail_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup`
--

LOCK TABLES `backup` WRITE;
/*!40000 ALTER TABLE `backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citizen`
--

DROP TABLE IF EXISTS `citizen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citizen` (
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `aadhar` varchar(12) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `dob` date NOT NULL,
  `phone_no` bigint NOT NULL,
  `mail_id` varchar(50) NOT NULL,
  `age` int NOT NULL,
  PRIMARY KEY (`aadhar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citizen`
--

LOCK TABLES `citizen` WRITE;
/*!40000 ALTER TABLE `citizen` DISABLE KEYS */;
INSERT INTO `citizen` VALUES ('Parth','Raj','Singh','111111111111','M','2002-06-10',9205767228,'dearparthsingh@gmail.com',20),('Kundan ','Raj ','Singh','222222222222','M','1972-11-28',9910267228,'dearkundan@gmail.com',47),('Aekta ','Suman ','Singh','333333333333','F','1978-11-25',9810368094,'aekta.suman@gmail.com',45),('Varun ','Raj','Singh','444444444444','M','2003-12-30',9765679234,'dearvarun@gmail.com',19),('Mia ','Raj','Khurana ','555555555555','F','2004-08-09',9873634321,'dearmia@gmail.com',18),('An','S ','Sharma','666666666666','F','2001-09-01',9342345432,'dearann@gmail.com',18),('Atul','R ','Verma','777777777777','F','2001-09-01',9342345432,'dearann@gmail.com',18);
/*!40000 ALTER TABLE `citizen` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_for_age` BEFORE INSERT ON `citizen` FOR EACH ROW BEGIN  
IF NEW.age < 0 THEN SET NEW.age = 18;  
END IF;  
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `complaint`
--

DROP TABLE IF EXISTS `complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaint` (
  `aadhar` varchar(12) NOT NULL,
  `cdate` date NOT NULL,
  `cdesc` text NOT NULL,
  `cid` int NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `aadhar6` (`aadhar`),
  CONSTRAINT `aadhar6` FOREIGN KEY (`aadhar`) REFERENCES `citizen` (`aadhar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint`
--

LOCK TABLES `complaint` WRITE;
/*!40000 ALTER TABLE `complaint` DISABLE KEYS */;
INSERT INTO `complaint` VALUES ('333333333333','2022-10-04','Not able to apply for LL',1);
/*!40000 ALTER TABLE `complaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dl`
--

DROP TABLE IF EXISTS `dl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dl` (
  `aadhar` varchar(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cov` varchar(20) NOT NULL,
  `edate` date NOT NULL,
  `eid` varchar(20) NOT NULL,
  `dl_id` int NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `mail_id` varchar(50) NOT NULL,
  `dl_status` int NOT NULL,
  `dl_issue_date` date NOT NULL,
  PRIMARY KEY (`dl_id`),
  KEY `aadhar4` (`aadhar`),
  CONSTRAINT `aadhar4` FOREIGN KEY (`aadhar`) REFERENCES `citizen` (`aadhar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dl`
--

LOCK TABLES `dl` WRITE;
/*!40000 ALTER TABLE `dl` DISABLE KEYS */;
INSERT INTO `dl` VALUES ('222222222222','Kundan ','A','2022-09-10','1',1,'password','dearkundan@gmail.com',1,'2022-11-05'),('555555555555','Mia','B','2022-08-11','4',2,'password','dearmia@gmail.com',1,'2022-11-01');
/*!40000 ALTER TABLE `dl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inspector`
--

DROP TABLE IF EXISTS `inspector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inspector` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `privilege` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inspector`
--

LOCK TABLES `inspector` WRITE;
/*!40000 ALTER TABLE `inspector` DISABLE KEYS */;
INSERT INTO `inspector` VALUES (1,'ins','password','all'),(2,'ins2','password','all'),(3,'ins3','password','all');
/*!40000 ALTER TABLE `inspector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license`
--

DROP TABLE IF EXISTS `license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `license` (
  `id` int NOT NULL,
  `aadhar` varchar(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `license_no` varchar(20) NOT NULL,
  `cov` varchar(20) NOT NULL,
  `license_issue_date` date NOT NULL,
  `license_expiry_date` date NOT NULL,
  `mail_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`,`aadhar`),
  KEY `aadhar5` (`aadhar`),
  CONSTRAINT `aadhar5` FOREIGN KEY (`aadhar`) REFERENCES `citizen` (`aadhar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license`
--

LOCK TABLES `license` WRITE;
/*!40000 ALTER TABLE `license` DISABLE KEYS */;
INSERT INTO `license` VALUES (1,'111111111111','parth','1111','A','2022-11-05','2024-11-05','dearparthsingh@gmail.com'),(2,'222222222222','kundan','2222','A','2022-11-05','2024-11-05','dearkundan@gmail.com'),(3,'333333333333','varun','3333','A','2022-11-05','2024-11-05','dearvarun@gmail.com');
/*!40000 ALTER TABLE `license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `llr`
--

DROP TABLE IF EXISTS `llr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llr` (
  `aadhar` varchar(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cov` varchar(20) NOT NULL,
  `edate` date NOT NULL,
  `eid` varchar(10) NOT NULL,
  `llr_id` int NOT NULL,
  `epwd` varchar(10) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `mail_id` varchar(50) NOT NULL,
  `llr_status` int NOT NULL,
  `llr_issue_date` date NOT NULL,
  PRIMARY KEY (`llr_id`),
  KEY `aadhar2` (`aadhar`),
  CONSTRAINT `aadhar2` FOREIGN KEY (`aadhar`) REFERENCES `citizen` (`aadhar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llr`
--

LOCK TABLES `llr` WRITE;
/*!40000 ALTER TABLE `llr` DISABLE KEYS */;
INSERT INTO `llr` VALUES ('111111111111','Parth','A','2022-11-04','2',1,'abcd','password','dearparthsingh@gmail.com',1,'2022-11-05'),('444444444444','Varun','A','2022-10-01','3',2,'abcd','password','dearvarun@gmail.com',1,'2022-11-04'),('222222222222','Kundan ','A','2020-10-01','0',3,'abcd','password','dearkundan@gmail.com',1,'2022-11-09'),('555555555555','Mia','B','2019-09-02','5',4,'abcd','password','dearmia@gmail.com',1,'2022-11-29');
/*!40000 ALTER TABLE `llr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `office`
--

DROP TABLE IF EXISTS `office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `office` (
  `district` varchar(30) NOT NULL,
  `rto_address` varchar(200) NOT NULL,
  PRIMARY KEY (`district`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `office`
--

LOCK TABLES `office` WRITE;
/*!40000 ALTER TABLE `office` DISABLE KEYS */;
INSERT INTO `office` VALUES ('Agra','Agra'),('Gautum Budh Nagar ','Noida'),('Mathura','Mathura'),('Udipi','Udipi');
/*!40000 ALTER TABLE `office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg`
--

DROP TABLE IF EXISTS `reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reg` (
  `aadhar` varchar(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cov` varchar(30) NOT NULL,
  `model` varchar(20) NOT NULL,
  `company` varchar(20) NOT NULL,
  `rdate` date NOT NULL,
  `r_id` int NOT NULL,
  `passwd` varchar(30) NOT NULL,
  `mail_id` varchar(50) NOT NULL,
  `reg_status` int NOT NULL,
  `reg_issue_date` date NOT NULL,
  `vno` varchar(20) NOT NULL,
  `reg_expiry_date` date NOT NULL,
  PRIMARY KEY (`r_id`),
  KEY `aadhar3` (`aadhar`),
  CONSTRAINT `aadhar3` FOREIGN KEY (`aadhar`) REFERENCES `citizen` (`aadhar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg`
--

LOCK TABLES `reg` WRITE;
/*!40000 ALTER TABLE `reg` DISABLE KEYS */;
INSERT INTO `reg` VALUES ('111111111111','Parth ','A','Accord ','Honda ','2022-10-10',1,'password','dearparthsingh@gmail.com',1,'2022-11-04','DL5CN2232','2024-11-04'),('222222222222','Kundan','A','530d','Bmw','2022-10-09',2,'password','dearkundan@gmail.com',1,'2022-11-04','DL5CC4985','2024-11-04');
/*!40000 ALTER TABLE `reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dbms_p1'
--

--
-- Dumping routines for database 'dbms_p1'
--
/*!50003 DROP FUNCTION IF EXISTS `getMonths` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getMonths`(sampledate date) RETURNS int
    DETERMINISTIC
BEGIN
DECLARE currentDate DATE;
Select current_date()into currentDate;
RETURN (12 * (YEAR(currentDate)
- YEAR(sampledate))
+ (MONTH(currentDate)
- MONTH(sampledate)));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `isEligible` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `isEligible`( age INTEGER
) RETURNS varchar(20) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
IF age > 17 THEN
RETURN ("yes");
ELSE
RETURN ("No");
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `createNewsletter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `createNewsletter`(INOUT emails VARCHAR(4000))
BEGIN
    DECLARE terminate INT DEFAULT FALSE;
    DECLARE emailAddr VARCHAR(255) DEFAULT "";
    DECLARE collect_email CURSOR FOR SELECT mail_id FROM dbms_p1.llr;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET terminate = TRUE;
    OPEN collect_email;
    getEmails: LOOP
        FETCH collect_email INTO emailAddr;
        IF terminate = TRUE THEN
            LEAVE getEmails;
        END IF;
        SET emails = CONCAT(emailAddr, ",", emails);
    END LOOP getEmails;
    CLOSE collect_email;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `createNewsletter2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `createNewsletter2`(INOUT emails VARCHAR(4000))
BEGIN
    DECLARE terminate INT DEFAULT FALSE;
    DECLARE emailAddr VARCHAR(255) DEFAULT "";
    DECLARE collect_email CURSOR FOR SELECT mail_id FROM dbms_p1.llr;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET terminate = TRUE;
    OPEN collect_email;
    getEmails: LOOP
        FETCH collect_email INTO emailAddr;
        IF terminate = TRUE THEN
            LEAVE getEmails;
        END IF;
        SET emails = CONCAT(emailAddr, "|", emails);
    END LOOP getEmails;
    CLOSE collect_email;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `display_earliest_expirydate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `display_earliest_expirydate`(OUT earliest_expiry_date date)
BEGIN
DECLARE earliest_expiry date;
SELECT MIN(license_expiry_date) INTO earliest_expiry FROM license; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `finding_the_youngest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `finding_the_youngest`(OUT youngest int)
BEGIN
SELECT MIN(age) INTO youngest FROM citizen; 

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

-- Dump completed on 2022-11-15 22:27:00
