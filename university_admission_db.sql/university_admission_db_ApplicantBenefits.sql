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
-- Table structure for table `ApplicantBenefits`
--

DROP TABLE IF EXISTS `ApplicantBenefits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ApplicantBenefits` (
  `ApplicantID` int NOT NULL,
  `BenefitTypeID` int NOT NULL,
  `DocumentNumber` varchar(50) NOT NULL,
  `ValidUntil` date DEFAULT NULL,
  PRIMARY KEY (`ApplicantID`,`BenefitTypeID`),
  KEY `fk_applicant_benefit_type` (`BenefitTypeID`),
  CONSTRAINT `fk_applicant_benefit_applicant` FOREIGN KEY (`ApplicantID`) REFERENCES `Applicants` (`ApplicantID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_applicant_benefit_type` FOREIGN KEY (`BenefitTypeID`) REFERENCES `BenefitTypes` (`BenefitTypeID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApplicantBenefits`
--

LOCK TABLES `ApplicantBenefits` WRITE;
/*!40000 ALTER TABLE `ApplicantBenefits` DISABLE KEYS */;
INSERT INTO `ApplicantBenefits` VALUES (1,1,'OL-2026-001','2026-12-31'),(3,2,'PIL-2026-014','2026-12-31'),(8,1,'OL-2026-027','2026-12-31');
/*!40000 ALTER TABLE `ApplicantBenefits` ENABLE KEYS */;
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
