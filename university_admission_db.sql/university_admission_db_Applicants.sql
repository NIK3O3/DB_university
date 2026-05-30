-- MySQL dump 10.13  Distrib 8.0.45, for macos15 (arm64)
--
-- Host: localhost    Database: university_admission_db
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `Applicants`
--

DROP TABLE IF EXISTS `Applicants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Applicants` (
  `ApplicantID` int NOT NULL AUTO_INCREMENT,
  `LastName` varchar(80) NOT NULL,
  `FirstName` varchar(80) NOT NULL,
  `MiddleName` varchar(80) DEFAULT NULL,
  `BirthDate` date NOT NULL,
  `PassportSeries` varchar(10) DEFAULT NULL,
  `PassportNumber` varchar(20) NOT NULL,
  `RNOKPP` varchar(20) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ApplicantID`),
  UNIQUE KEY `PassportNumber` (`PassportNumber`),
  UNIQUE KEY `RNOKPP` (`RNOKPP`),
  UNIQUE KEY `Email` (`Email`),
  KEY `idx_applicants_name` (`LastName`,`FirstName`,`MiddleName`),
  KEY `idx_applicants_phone` (`Phone`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applicants`
--

LOCK TABLES `Applicants` WRITE;
/*!40000 ALTER TABLE `Applicants` DISABLE KEYS */;
INSERT INTO `Applicants` VALUES (1,'Мельник','Андрій','Олегович','2008-04-12','КВ','123456','3456789012','+380671111111','andriy.melnyk@example.com','м. Київ, вул. Шевченка, 10','2026-05-24 16:24:48'),(2,'Бойко','Тарас','Ігорович','2008-09-21','НС','234567','4567890123','+380672222222','taras.boiko@example.com','м. Львів, вул. Франка, 5','2026-05-24 16:24:48'),(3,'Коваленко','Наталія','Сергіївна','2007-11-08','ВА','345678','5678901234','+380673333333','natalia.kovalenko@example.com','м. Харків, просп. Науки, 22','2026-05-24 16:24:48'),(4,'Ткаченко','Сергій','Павлович','2008-02-15','МС','456789','6789012345','+380674444444','serhii.tkachenko@example.com','м. Дніпро, вул. Центральна, 7','2026-05-24 16:24:48'),(5,'Іваненко','Оксана','Віталіївна','2008-06-30','АК','567890','7890123456','+380675555555','oksana.ivanenko@example.com','м. Одеса, вул. Морська, 14','2026-05-24 16:24:48'),(6,'Петренко','Марія','Андріївна','2007-12-03','КЕ','678901','8901234567','+380676666666','mariia.petrenko@example.com','м. Київ, вул. Лісова, 18','2026-05-24 16:24:48'),(7,'Сидоренко','Дмитро','Романович','2008-01-25','НВ','789012','9012345678','+380677777777','dmytro.sydorenko@example.com','м. Полтава, вул. Соборна, 3','2026-05-24 16:24:48'),(8,'Литвин','Ірина','Олександрівна','2008-05-19','СО','890123','0123456789','+380678888888','iryna.lytvyn@example.com','м. Черкаси, вул. Грушевського, 9','2026-05-24 16:24:48');
/*!40000 ALTER TABLE `Applicants` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-29 12:50:20
