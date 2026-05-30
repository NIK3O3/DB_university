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
-- Table structure for table `SpecialtyRequiredSubjects`
--

DROP TABLE IF EXISTS `SpecialtyRequiredSubjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SpecialtyRequiredSubjects` (
  `SpecialtyID` int NOT NULL,
  `SubjectID` int NOT NULL,
  `Coefficient` decimal(4,2) NOT NULL DEFAULT '1.00',
  `IsRequired` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`SpecialtyID`,`SubjectID`),
  KEY `fk_required_subject` (`SubjectID`),
  CONSTRAINT `fk_required_specialty` FOREIGN KEY (`SpecialtyID`) REFERENCES `Specialties` (`SpecialtyID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_required_subject` FOREIGN KEY (`SubjectID`) REFERENCES `Subjects` (`SubjectID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `chk_required_subject_coefficient` CHECK ((`Coefficient` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SpecialtyRequiredSubjects`
--

LOCK TABLES `SpecialtyRequiredSubjects` WRITE;
/*!40000 ALTER TABLE `SpecialtyRequiredSubjects` DISABLE KEYS */;
INSERT INTO `SpecialtyRequiredSubjects` VALUES (1,1,0.30,1),(1,2,0.40,1),(1,4,0.30,1),(2,1,0.30,1),(2,2,0.35,1),(2,5,0.35,1),(3,1,0.35,1),(3,2,0.30,1),(3,3,0.35,1),(4,1,0.35,1),(4,2,0.35,1),(4,3,0.30,1),(5,1,0.35,1),(5,3,0.35,1),(5,6,0.30,1),(6,1,0.30,1),(6,2,0.35,1),(6,5,0.35,1);
/*!40000 ALTER TABLE `SpecialtyRequiredSubjects` ENABLE KEYS */;
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
