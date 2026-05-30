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
-- Table structure for table `Documents`
--

DROP TABLE IF EXISTS `Documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Documents` (
  `DocumentID` int NOT NULL AUTO_INCREMENT,
  `ApplicantID` int NOT NULL,
  `DocumentType` enum('Паспорт','РНОКПП','Свідоцтво про освіту','Мотиваційний лист','Фото','Інше') NOT NULL,
  `DocumentNumber` varchar(50) DEFAULT NULL,
  `IssuedDate` date DEFAULT NULL,
  `FileName` varchar(255) DEFAULT NULL,
  `IsVerified` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`DocumentID`),
  KEY `idx_documents_applicant_type` (`ApplicantID`,`DocumentType`),
  CONSTRAINT `fk_document_applicant` FOREIGN KEY (`ApplicantID`) REFERENCES `Applicants` (`ApplicantID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Documents`
--

LOCK TABLES `Documents` WRITE;
/*!40000 ALTER TABLE `Documents` DISABLE KEYS */;
INSERT INTO `Documents` VALUES (1,1,'Паспорт','КВ123456','2022-05-10','passport_1.pdf',1),(2,1,'Свідоцтво про освіту','AT001122','2026-06-20','certificate_1.pdf',1),(3,1,'Мотиваційний лист',NULL,'2026-07-03','motivation_1.pdf',1),(4,2,'Паспорт','НС234567','2022-04-18','passport_2.pdf',1),(5,2,'Свідоцтво про освіту','AT002233','2026-06-21','certificate_2.pdf',1),(6,3,'Паспорт','ВА345678','2021-12-02','passport_3.pdf',1),(7,3,'Свідоцтво про освіту','AT003344','2026-06-19','certificate_3.pdf',1),(8,4,'Паспорт','МС456789','2022-03-14','passport_4.pdf',1),(9,5,'Паспорт','АК567890','2022-08-09','passport_5.pdf',1),(10,6,'Паспорт','КЕ678901','2022-09-11','passport_6.pdf',1),(11,8,'Паспорт','СО890123','2022-02-22','passport_8.pdf',1);
/*!40000 ALTER TABLE `Documents` ENABLE KEYS */;
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
