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
-- Table structure for table `Applications`
--

DROP TABLE IF EXISTS `Applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Applications` (
  `ApplicationID` int NOT NULL AUTO_INCREMENT,
  `ApplicantID` int NOT NULL,
  `SpecialtyID` int NOT NULL,
  `CampaignID` int NOT NULL,
  `PriorityNumber` int NOT NULL,
  `SubmissionDate` date NOT NULL DEFAULT (curdate()),
  `StatusID` int NOT NULL,
  `IsBudget` tinyint(1) NOT NULL DEFAULT '1',
  `CompetitiveScore` decimal(6,2) DEFAULT NULL,
  `OriginalDocumentsSubmitted` tinyint(1) NOT NULL DEFAULT '0',
  `CommentText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ApplicationID`),
  UNIQUE KEY `uq_application` (`ApplicantID`,`SpecialtyID`,`CampaignID`),
  KEY `fk_application_status` (`StatusID`),
  KEY `idx_applications_campaign_specialty_status` (`CampaignID`,`SpecialtyID`,`StatusID`),
  KEY `idx_applications_specialty_score` (`SpecialtyID`,`CompetitiveScore` DESC),
  KEY `idx_applications_applicant` (`ApplicantID`),
  CONSTRAINT `fk_application_applicant` FOREIGN KEY (`ApplicantID`) REFERENCES `Applicants` (`ApplicantID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_application_campaign` FOREIGN KEY (`CampaignID`) REFERENCES `AdmissionCampaigns` (`CampaignID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_application_specialty` FOREIGN KEY (`SpecialtyID`) REFERENCES `Specialties` (`SpecialtyID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_application_status` FOREIGN KEY (`StatusID`) REFERENCES `ApplicationStatuses` (`StatusID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `chk_application_priority` CHECK ((`PriorityNumber` between 1 and 5)),
  CONSTRAINT `chk_application_score` CHECK (((`CompetitiveScore` is null) or (`CompetitiveScore` between 100 and 200)))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,1,1,2,1,'2026-07-05',3,1,188.80,1,'Рекомендовано на бюджет'),(2,1,2,2,2,'2026-07-05',2,1,180.10,0,NULL),(3,2,5,2,1,'2026-07-06',2,1,177.40,0,NULL),(4,2,3,2,2,'2026-07-06',1,1,174.70,0,NULL),(5,3,5,2,1,'2026-07-07',3,1,187.25,1,'Рекомендовано на бюджет'),(6,3,1,2,2,'2026-07-07',2,1,181.20,0,NULL),(7,4,6,2,1,'2026-07-08',2,1,172.95,0,NULL),(8,5,1,2,1,'2026-07-08',3,1,184.00,1,'Рекомендовано на бюджет'),(9,6,3,2,1,'2026-07-09',2,1,176.65,0,NULL),(10,7,6,2,1,'2026-07-10',1,0,157.05,0,'Контрактна пропозиція'),(11,8,5,2,1,'2026-07-11',3,1,193.25,1,'Рекомендовано на бюджет');
/*!40000 ALTER TABLE `Applications` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_applications_before_insert` BEFORE INSERT ON `applications` FOR EACH ROW BEGIN
    DECLARE vApplicationCount INT DEFAULT 0;
    DECLARE vIsActive BOOLEAN DEFAULT FALSE;
    DECLARE vStartDate DATE;
    DECLARE vEndDate DATE;

    SELECT IsActive, StartDate, EndDate
    INTO vIsActive, vStartDate, vEndDate
    FROM AdmissionCampaigns
    WHERE CampaignID = NEW.CampaignID;

    IF vIsActive = FALSE THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Заяву можна подати лише в активну вступну кампанію';
    END IF;

    IF NEW.SubmissionDate < vStartDate OR NEW.SubmissionDate > vEndDate THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Дата подання заяви виходить за межі вступної кампанії';
    END IF;

    SELECT COUNT(*)
    INTO vApplicationCount
    FROM Applications
    WHERE ApplicantID = NEW.ApplicantID
      AND CampaignID = NEW.CampaignID;

    IF vApplicationCount >= 5 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Один вступник може подати не більше 5 заяв у межах кампанії';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_applications_before_update` BEFORE UPDATE ON `applications` FOR EACH ROW BEGIN
    DECLARE vEnrolledStatusID INT;

    SELECT StatusID
    INTO vEnrolledStatusID
    FROM ApplicationStatuses
    WHERE StatusName = 'Зарахована';

    IF NEW.StatusID = vEnrolledStatusID
       AND NEW.OriginalDocumentsSubmitted = FALSE THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Неможливо зарахувати вступника без оригіналів документів';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_applications_before_delete` BEFORE DELETE ON `applications` FOR EACH ROW BEGIN
    DECLARE vEnrolledStatusID INT;

    SELECT StatusID
    INTO vEnrolledStatusID
    FROM ApplicationStatuses
    WHERE StatusName = 'Зарахована';

    IF OLD.StatusID = vEnrolledStatusID THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Неможливо видалити заяву зарахованого вступника';
    END IF;
END */;;
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

-- Dump completed on 2026-05-29 12:50:20
