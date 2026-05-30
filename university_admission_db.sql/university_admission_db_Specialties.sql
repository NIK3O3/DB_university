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
-- Table structure for table `Specialties`
--

DROP TABLE IF EXISTS `Specialties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Specialties` (
  `SpecialtyID` int NOT NULL AUTO_INCREMENT,
  `FacultyID` int NOT NULL,
  `SpecialtyCode` varchar(20) NOT NULL,
  `SpecialtyName` varchar(150) NOT NULL,
  `DegreeLevel` enum('Бакалавр','Магістр') NOT NULL,
  `StudyForm` enum('Денна','Заочна') NOT NULL DEFAULT 'Денна',
  `LicenseVolume` int NOT NULL,
  `BudgetPlaces` int NOT NULL DEFAULT '0',
  `TuitionFee` decimal(12,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`SpecialtyID`),
  UNIQUE KEY `uq_specialty_code_level_form` (`SpecialtyCode`,`DegreeLevel`,`StudyForm`),
  KEY `idx_specialties_faculty` (`FacultyID`),
  CONSTRAINT `fk_specialty_faculty` FOREIGN KEY (`FacultyID`) REFERENCES `Faculties` (`FacultyID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `chk_specialty_budget_places` CHECK (((`BudgetPlaces` >= 0) and (`BudgetPlaces` <= `LicenseVolume`))),
  CONSTRAINT `chk_specialty_license_volume` CHECK ((`LicenseVolume` > 0)),
  CONSTRAINT `chk_specialty_tuition_fee` CHECK ((`TuitionFee` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Specialties`
--

LOCK TABLES `Specialties` WRITE;
/*!40000 ALTER TABLE `Specialties` DISABLE KEYS */;
INSERT INTO `Specialties` VALUES (1,1,'F2','Інженерія програмного забезпечення','Бакалавр','Денна',120,35,42000.00),(2,1,'F3','Комп’ютерні науки','Бакалавр','Денна',100,30,40000.00),(3,2,'D3','Менеджмент','Бакалавр','Денна',80,15,35000.00),(4,2,'D2','Фінанси, банківська справа та страхування','Бакалавр','Заочна',60,5,28000.00),(5,3,'D8','Право','Бакалавр','Денна',90,20,39000.00),(6,4,'G11','Транспортні технології','Бакалавр','Денна',75,18,33000.00);
/*!40000 ALTER TABLE `Specialties` ENABLE KEYS */;
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
