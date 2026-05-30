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
-- Table structure for table `ExamResults`
--

DROP TABLE IF EXISTS `ExamResults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ExamResults` (
  `ResultID` int NOT NULL AUTO_INCREMENT,
  `ApplicantID` int NOT NULL,
  `SubjectID` int NOT NULL,
  `ExamYear` year NOT NULL,
  `Score` decimal(5,2) NOT NULL,
  PRIMARY KEY (`ResultID`),
  UNIQUE KEY `uq_exam_result` (`ApplicantID`,`SubjectID`,`ExamYear`),
  KEY `idx_exam_results_subject_year` (`SubjectID`,`ExamYear`),
  CONSTRAINT `fk_exam_applicant` FOREIGN KEY (`ApplicantID`) REFERENCES `Applicants` (`ApplicantID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_exam_subject` FOREIGN KEY (`SubjectID`) REFERENCES `Subjects` (`SubjectID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `chk_exam_score` CHECK ((`Score` between 100 and 200))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExamResults`
--

LOCK TABLES `ExamResults` WRITE;
/*!40000 ALTER TABLE `ExamResults` DISABLE KEYS */;
INSERT INTO `ExamResults` VALUES (1,1,1,2026,182.00),(2,1,2,2026,191.00),(3,1,4,2026,176.00),(4,1,5,2026,168.00),(5,2,1,2026,174.00),(6,2,2,2026,160.00),(7,2,3,2026,188.00),(8,2,6,2026,170.00),(9,3,1,2026,190.00),(10,3,2,2026,178.00),(11,3,3,2026,181.00),(12,3,6,2026,185.00),(13,4,1,2026,165.00),(14,4,2,2026,172.00),(15,4,5,2026,180.00),(16,5,1,2026,188.00),(17,5,2,2026,169.00),(18,5,4,2026,193.00),(19,6,1,2026,176.00),(20,6,2,2026,184.00),(21,6,3,2026,171.00),(22,7,1,2026,158.00),(23,7,2,2026,149.00),(24,7,5,2026,166.00),(25,8,1,2026,194.00),(26,8,3,2026,187.00),(27,8,6,2026,190.00);
/*!40000 ALTER TABLE `ExamResults` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_exam_results_before_insert` BEFORE INSERT ON `examresults` FOR EACH ROW BEGIN
    IF NEW.Score < 100 OR NEW.Score > 200 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Бал вступного випробування має бути в межах від 100 до 200';
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_exam_results_after_insert` AFTER INSERT ON `examresults` FOR EACH ROW BEGIN
    UPDATE Applications a
    JOIN (
        SELECT
            app.ApplicationID,
            ROUND(SUM(er.Score * rs.Coefficient) / SUM(rs.Coefficient), 2) AS NewScore
        FROM Applications app
        JOIN SpecialtyRequiredSubjects rs
            ON app.SpecialtyID = rs.SpecialtyID
        JOIN ExamResults er
            ON er.ApplicantID = app.ApplicantID
           AND er.SubjectID = rs.SubjectID
        JOIN AdmissionCampaigns c
            ON app.CampaignID = c.CampaignID
           AND er.ExamYear = c.CampaignYear
        WHERE app.ApplicantID = NEW.ApplicantID
        GROUP BY app.ApplicationID
    ) calc ON a.ApplicationID = calc.ApplicationID
    SET a.CompetitiveScore = calc.NewScore;
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
