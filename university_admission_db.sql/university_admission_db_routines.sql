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
-- Temporary view structure for view `v_budget_recommendations`
--

DROP TABLE IF EXISTS `v_budget_recommendations`;
/*!50001 DROP VIEW IF EXISTS `v_budget_recommendations`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_budget_recommendations` AS SELECT 
 1 AS `ApplicationID`,
 1 AS `SpecialtyID`,
 1 AS `SpecialtyName`,
 1 AS `BudgetPlaces`,
 1 AS `ApplicantName`,
 1 AS `CompetitiveScore`,
 1 AS `PositionInList`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_enrolled_students`
--

DROP TABLE IF EXISTS `v_enrolled_students`;
/*!50001 DROP VIEW IF EXISTS `v_enrolled_students`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_enrolled_students` AS SELECT 
 1 AS `OrderNumber`,
 1 AS `OrderDate`,
 1 AS `EnrollmentType`,
 1 AS `StudyGroup`,
 1 AS `StudentName`,
 1 AS `Email`,
 1 AS `SpecialtyName`,
 1 AS `FacultyName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_specialty_rating`
--

DROP TABLE IF EXISTS `v_specialty_rating`;
/*!50001 DROP VIEW IF EXISTS `v_specialty_rating`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_specialty_rating` AS SELECT 
 1 AS `ApplicationID`,
 1 AS `SpecialtyID`,
 1 AS `SpecialtyName`,
 1 AS `ApplicantName`,
 1 AS `CompetitiveScore`,
 1 AS `PriorityNumber`,
 1 AS `StatusName`,
 1 AS `RatingPosition`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_specialty_competition`
--

DROP TABLE IF EXISTS `v_specialty_competition`;
/*!50001 DROP VIEW IF EXISTS `v_specialty_competition`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_specialty_competition` AS SELECT 
 1 AS `SpecialtyID`,
 1 AS `FacultyName`,
 1 AS `SpecialtyCode`,
 1 AS `SpecialtyName`,
 1 AS `BudgetPlaces`,
 1 AS `LicenseVolume`,
 1 AS `ApplicationCount`,
 1 AS `AvgScore`,
 1 AS `MaxScore`,
 1 AS `MinScore`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_unverified_documents`
--

DROP TABLE IF EXISTS `v_unverified_documents`;
/*!50001 DROP VIEW IF EXISTS `v_unverified_documents`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_unverified_documents` AS SELECT 
 1 AS `DocumentID`,
 1 AS `ApplicantName`,
 1 AS `DocumentType`,
 1 AS `DocumentNumber`,
 1 AS `FileName`,
 1 AS `IsVerified`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_applicant_applications`
--

DROP TABLE IF EXISTS `v_applicant_applications`;
/*!50001 DROP VIEW IF EXISTS `v_applicant_applications`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_applicant_applications` AS SELECT 
 1 AS `ApplicationID`,
 1 AS `ApplicantID`,
 1 AS `ApplicantName`,
 1 AS `Phone`,
 1 AS `Email`,
 1 AS `FacultyName`,
 1 AS `SpecialtyCode`,
 1 AS `SpecialtyName`,
 1 AS `DegreeLevel`,
 1 AS `StudyForm`,
 1 AS `CampaignYear`,
 1 AS `PriorityNumber`,
 1 AS `StatusName`,
 1 AS `IsBudget`,
 1 AS `CompetitiveScore`,
 1 AS `OriginalDocumentsSubmitted`,
 1 AS `SubmissionDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_payment_summary`
--

DROP TABLE IF EXISTS `v_payment_summary`;
/*!50001 DROP VIEW IF EXISTS `v_payment_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_payment_summary` AS SELECT 
 1 AS `ApplicationID`,
 1 AS `ApplicantName`,
 1 AS `SpecialtyName`,
 1 AS `PaidAmount`,
 1 AS `PendingAmount`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_budget_recommendations`
--

/*!50001 DROP VIEW IF EXISTS `v_budget_recommendations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_budget_recommendations` AS select `ranked`.`ApplicationID` AS `ApplicationID`,`ranked`.`SpecialtyID` AS `SpecialtyID`,`ranked`.`SpecialtyName` AS `SpecialtyName`,`ranked`.`BudgetPlaces` AS `BudgetPlaces`,`ranked`.`ApplicantName` AS `ApplicantName`,`ranked`.`CompetitiveScore` AS `CompetitiveScore`,`ranked`.`PositionInList` AS `PositionInList` from (select `a`.`ApplicationID` AS `ApplicationID`,`s`.`SpecialtyID` AS `SpecialtyID`,`s`.`SpecialtyName` AS `SpecialtyName`,`s`.`BudgetPlaces` AS `BudgetPlaces`,concat(`ap`.`LastName`,' ',`ap`.`FirstName`) AS `ApplicantName`,`a`.`CompetitiveScore` AS `CompetitiveScore`,row_number() OVER (PARTITION BY `s`.`SpecialtyID` ORDER BY `a`.`CompetitiveScore` desc,`a`.`PriorityNumber` )  AS `PositionInList` from ((`applications` `a` join `applicants` `ap` on((`a`.`ApplicantID` = `ap`.`ApplicantID`))) join `specialties` `s` on((`a`.`SpecialtyID` = `s`.`SpecialtyID`))) where ((`a`.`IsBudget` = true) and (`a`.`CompetitiveScore` is not null))) `ranked` where (`ranked`.`PositionInList` <= `ranked`.`BudgetPlaces`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_enrolled_students`
--

/*!50001 DROP VIEW IF EXISTS `v_enrolled_students`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_enrolled_students` AS select `eo`.`OrderNumber` AS `OrderNumber`,`eo`.`OrderDate` AS `OrderDate`,`eo`.`EnrollmentType` AS `EnrollmentType`,`eo`.`StudyGroup` AS `StudyGroup`,concat(`ap`.`LastName`,' ',`ap`.`FirstName`,' ',ifnull(`ap`.`MiddleName`,'')) AS `StudentName`,`ap`.`Email` AS `Email`,`s`.`SpecialtyName` AS `SpecialtyName`,`f`.`FacultyName` AS `FacultyName` from ((((`enrollmentorders` `eo` join `applications` `a` on((`eo`.`ApplicationID` = `a`.`ApplicationID`))) join `applicants` `ap` on((`a`.`ApplicantID` = `ap`.`ApplicantID`))) join `specialties` `s` on((`a`.`SpecialtyID` = `s`.`SpecialtyID`))) join `faculties` `f` on((`s`.`FacultyID` = `f`.`FacultyID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_specialty_rating`
--

/*!50001 DROP VIEW IF EXISTS `v_specialty_rating`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_specialty_rating` AS select `a`.`ApplicationID` AS `ApplicationID`,`s`.`SpecialtyID` AS `SpecialtyID`,`s`.`SpecialtyName` AS `SpecialtyName`,concat(`ap`.`LastName`,' ',`ap`.`FirstName`) AS `ApplicantName`,`a`.`CompetitiveScore` AS `CompetitiveScore`,`a`.`PriorityNumber` AS `PriorityNumber`,`st`.`StatusName` AS `StatusName`,dense_rank() OVER (PARTITION BY `s`.`SpecialtyID` ORDER BY `a`.`CompetitiveScore` desc )  AS `RatingPosition` from (((`applications` `a` join `applicants` `ap` on((`a`.`ApplicantID` = `ap`.`ApplicantID`))) join `specialties` `s` on((`a`.`SpecialtyID` = `s`.`SpecialtyID`))) join `applicationstatuses` `st` on((`a`.`StatusID` = `st`.`StatusID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_specialty_competition`
--

/*!50001 DROP VIEW IF EXISTS `v_specialty_competition`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_specialty_competition` AS select `s`.`SpecialtyID` AS `SpecialtyID`,`f`.`FacultyName` AS `FacultyName`,`s`.`SpecialtyCode` AS `SpecialtyCode`,`s`.`SpecialtyName` AS `SpecialtyName`,`s`.`BudgetPlaces` AS `BudgetPlaces`,`s`.`LicenseVolume` AS `LicenseVolume`,count(`a`.`ApplicationID`) AS `ApplicationCount`,round(avg(`a`.`CompetitiveScore`),2) AS `AvgScore`,max(`a`.`CompetitiveScore`) AS `MaxScore`,min(`a`.`CompetitiveScore`) AS `MinScore` from ((`specialties` `s` join `faculties` `f` on((`s`.`FacultyID` = `f`.`FacultyID`))) left join `applications` `a` on((`s`.`SpecialtyID` = `a`.`SpecialtyID`))) group by `s`.`SpecialtyID`,`f`.`FacultyName`,`s`.`SpecialtyCode`,`s`.`SpecialtyName`,`s`.`BudgetPlaces`,`s`.`LicenseVolume` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_unverified_documents`
--

/*!50001 DROP VIEW IF EXISTS `v_unverified_documents`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_unverified_documents` AS select `d`.`DocumentID` AS `DocumentID`,concat(`ap`.`LastName`,' ',`ap`.`FirstName`) AS `ApplicantName`,`d`.`DocumentType` AS `DocumentType`,`d`.`DocumentNumber` AS `DocumentNumber`,`d`.`FileName` AS `FileName`,`d`.`IsVerified` AS `IsVerified` from (`documents` `d` join `applicants` `ap` on((`d`.`ApplicantID` = `ap`.`ApplicantID`))) where (`d`.`IsVerified` = false) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_applicant_applications`
--

/*!50001 DROP VIEW IF EXISTS `v_applicant_applications`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_applicant_applications` AS select `a`.`ApplicationID` AS `ApplicationID`,`ap`.`ApplicantID` AS `ApplicantID`,concat(`ap`.`LastName`,' ',`ap`.`FirstName`,' ',ifnull(`ap`.`MiddleName`,'')) AS `ApplicantName`,`ap`.`Phone` AS `Phone`,`ap`.`Email` AS `Email`,`f`.`FacultyName` AS `FacultyName`,`s`.`SpecialtyCode` AS `SpecialtyCode`,`s`.`SpecialtyName` AS `SpecialtyName`,`s`.`DegreeLevel` AS `DegreeLevel`,`s`.`StudyForm` AS `StudyForm`,`c`.`CampaignYear` AS `CampaignYear`,`a`.`PriorityNumber` AS `PriorityNumber`,`st`.`StatusName` AS `StatusName`,`a`.`IsBudget` AS `IsBudget`,`a`.`CompetitiveScore` AS `CompetitiveScore`,`a`.`OriginalDocumentsSubmitted` AS `OriginalDocumentsSubmitted`,`a`.`SubmissionDate` AS `SubmissionDate` from (((((`applications` `a` join `applicants` `ap` on((`a`.`ApplicantID` = `ap`.`ApplicantID`))) join `specialties` `s` on((`a`.`SpecialtyID` = `s`.`SpecialtyID`))) join `faculties` `f` on((`s`.`FacultyID` = `f`.`FacultyID`))) join `admissioncampaigns` `c` on((`a`.`CampaignID` = `c`.`CampaignID`))) join `applicationstatuses` `st` on((`a`.`StatusID` = `st`.`StatusID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_payment_summary`
--

/*!50001 DROP VIEW IF EXISTS `v_payment_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_payment_summary` AS select `a`.`ApplicationID` AS `ApplicationID`,concat(`ap`.`LastName`,' ',`ap`.`FirstName`) AS `ApplicantName`,`s`.`SpecialtyName` AS `SpecialtyName`,ifnull(sum((case when (`p`.`PaymentStatus` = 'Сплачено') then `p`.`Amount` else 0 end)),0) AS `PaidAmount`,ifnull(sum((case when (`p`.`PaymentStatus` = 'Очікується') then `p`.`Amount` else 0 end)),0) AS `PendingAmount` from (((`applications` `a` join `applicants` `ap` on((`a`.`ApplicantID` = `ap`.`ApplicantID`))) join `specialties` `s` on((`a`.`SpecialtyID` = `s`.`SpecialtyID`))) left join `payments` `p` on((`a`.`ApplicationID` = `p`.`ApplicationID`))) group by `a`.`ApplicationID`,`ApplicantName`,`s`.`SpecialtyName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'university_admission_db'
--

--
-- Dumping routines for database 'university_admission_db'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_ApplicantApplicationCount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_ApplicantApplicationCount`(
    pApplicantID INT,
    pCampaignID INT
) RETURNS int
    READS SQL DATA
BEGIN
    DECLARE vCount INT;

    SELECT COUNT(*)
    INTO vCount
    FROM Applications
    WHERE ApplicantID = pApplicantID
      AND CampaignID = pCampaignID;

    RETURN vCount;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_ApplicantFullName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_ApplicantFullName`(pApplicantID INT) RETURNS varchar(250) CHARSET utf8mb4
    READS SQL DATA
BEGIN
    DECLARE vFullName VARCHAR(250);

    SELECT CONCAT(LastName, ' ', FirstName, ' ', IFNULL(MiddleName, ''))
    INTO vFullName
    FROM Applicants
    WHERE ApplicantID = pApplicantID;

    RETURN TRIM(vFullName);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_AvgApplicantExamScore` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_AvgApplicantExamScore`(pApplicantID INT) RETURNS decimal(6,2)
    READS SQL DATA
BEGIN
    DECLARE vAvgScore DECIMAL(6,2);

    SELECT ROUND(AVG(Score), 2)
    INTO vAvgScore
    FROM ExamResults
    WHERE ApplicantID = pApplicantID;

    RETURN IFNULL(vAvgScore, 0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_CalculateCompetitiveScore` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_CalculateCompetitiveScore`(
    pApplicantID INT,
    pSpecialtyID INT,
    pExamYear YEAR
) RETURNS decimal(6,2)
    READS SQL DATA
BEGIN
    DECLARE vWeightedScore DECIMAL(6,2);
    DECLARE vBonusScore DECIMAL(6,2);

    SELECT
        ROUND(SUM(er.Score * rs.Coefficient) / SUM(rs.Coefficient), 2)
    INTO vWeightedScore
    FROM SpecialtyRequiredSubjects rs
    JOIN ExamResults er
        ON rs.SubjectID = er.SubjectID
       AND er.ApplicantID = pApplicantID
       AND er.ExamYear = pExamYear
    WHERE rs.SpecialtyID = pSpecialtyID
      AND rs.IsRequired = TRUE;

    SELECT IFNULL(SUM(bt.BonusScore), 0)
    INTO vBonusScore
    FROM ApplicantBenefits ab
    JOIN BenefitTypes bt ON ab.BenefitTypeID = bt.BenefitTypeID
    WHERE ab.ApplicantID = pApplicantID
      AND (ab.ValidUntil IS NULL OR ab.ValidUntil >= CURRENT_DATE);

    RETURN LEAST(IFNULL(vWeightedScore, 0) + IFNULL(vBonusScore, 0), 200);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_CompetitionPerBudgetPlace` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_CompetitionPerBudgetPlace`(pSpecialtyID INT) RETURNS decimal(8,2)
    READS SQL DATA
BEGIN
    DECLARE vApplications INT;
    DECLARE vBudgetPlaces INT;

    SELECT COUNT(*)
    INTO vApplications
    FROM Applications
    WHERE SpecialtyID = pSpecialtyID
      AND IsBudget = TRUE;

    SELECT BudgetPlaces
    INTO vBudgetPlaces
    FROM Specialties
    WHERE SpecialtyID = pSpecialtyID;

    IF vBudgetPlaces IS NULL OR vBudgetPlaces = 0 THEN
        RETURN 0;
    END IF;

    RETURN ROUND(vApplications / vBudgetPlaces, 2);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_HasOriginalDocuments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_HasOriginalDocuments`(pApplicationID INT) RETURNS tinyint(1)
    READS SQL DATA
BEGIN
    DECLARE vHasOriginal BOOLEAN;

    SELECT OriginalDocumentsSubmitted
    INTO vHasOriginal
    FROM Applications
    WHERE ApplicationID = pApplicationID;

    RETURN IFNULL(vHasOriginal, FALSE);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_TotalPaidByApplication` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_TotalPaidByApplication`(pApplicationID INT) RETURNS decimal(12,2)
    READS SQL DATA
BEGIN
    DECLARE vTotal DECIMAL(12,2);

    SELECT SUM(Amount)
    INTO vTotal
    FROM Payments
    WHERE ApplicationID = pApplicationID
      AND PaymentStatus = 'Сплачено';

    RETURN IFNULL(vTotal, 0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_EnrollApplicant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_EnrollApplicant`(
    IN pApplicationID INT,
    IN pOrderNumber VARCHAR(50),
    IN pEnrollmentType ENUM('Бюджет', 'Контракт'),
    IN pStudyGroup VARCHAR(30)
)
BEGIN
    INSERT INTO EnrollmentOrders (
        ApplicationID,
        OrderNumber,
        OrderDate,
        EnrollmentType,
        StudyGroup
    )
    VALUES (
        pApplicationID,
        pOrderNumber,
        CURRENT_DATE,
        pEnrollmentType,
        pStudyGroup
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_FacultyCompetitionReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_FacultyCompetitionReport`(
    IN pFacultyID INT
)
BEGIN
    SELECT
        s.SpecialtyCode,
        s.SpecialtyName,
        s.BudgetPlaces,
        s.LicenseVolume,
        COUNT(a.ApplicationID) AS ApplicationCount,
        ROUND(AVG(a.CompetitiveScore), 2) AS AverageScore
    FROM Specialties s
    LEFT JOIN Applications a ON s.SpecialtyID = a.SpecialtyID
    WHERE s.FacultyID = pFacultyID
    GROUP BY
        s.SpecialtyID,
        s.SpecialtyCode,
        s.SpecialtyName,
        s.BudgetPlaces,
        s.LicenseVolume
    ORDER BY ApplicationCount DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_FindApplicant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_FindApplicant`(
    IN pSearchText VARCHAR(150)
)
BEGIN
    SELECT *
    FROM Applicants
    WHERE LastName LIKE CONCAT('%', pSearchText, '%')
       OR FirstName LIKE CONCAT('%', pSearchText, '%')
       OR MiddleName LIKE CONCAT('%', pSearchText, '%')
       OR Phone LIKE CONCAT('%', pSearchText, '%')
       OR Email LIKE CONCAT('%', pSearchText, '%')
    ORDER BY LastName, FirstName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetApplicationsBySpecialty` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetApplicationsBySpecialty`(
    IN pSpecialtyID INT,
    IN pCampaignID INT
)
BEGIN
    SELECT
        a.ApplicationID,
        CONCAT(ap.LastName, ' ', ap.FirstName, ' ', IFNULL(ap.MiddleName, '')) AS ApplicantName,
        a.PriorityNumber,
        st.StatusName,
        a.CompetitiveScore,
        a.OriginalDocumentsSubmitted
    FROM Applications a
    JOIN Applicants ap ON a.ApplicantID = ap.ApplicantID
    JOIN ApplicationStatuses st ON a.StatusID = st.StatusID
    WHERE a.SpecialtyID = pSpecialtyID
      AND a.CampaignID = pCampaignID
    ORDER BY a.CompetitiveScore DESC, a.PriorityNumber ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_RecalculateCompetitiveScore` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_RecalculateCompetitiveScore`(
    IN pApplicationID INT
)
BEGIN
    DECLARE vApplicantID INT;
    DECLARE vSpecialtyID INT;
    DECLARE vExamYear YEAR;
    DECLARE vWeightedScore DECIMAL(6,2);
    DECLARE vBonusScore DECIMAL(6,2);

    SELECT ApplicantID, SpecialtyID
    INTO vApplicantID, vSpecialtyID
    FROM Applications
    WHERE ApplicationID = pApplicationID;

    SELECT CampaignYear
    INTO vExamYear
    FROM AdmissionCampaigns c
    JOIN Applications a ON c.CampaignID = a.CampaignID
    WHERE a.ApplicationID = pApplicationID;

    SELECT
        ROUND(SUM(er.Score * rs.Coefficient) / SUM(rs.Coefficient), 2)
    INTO vWeightedScore
    FROM SpecialtyRequiredSubjects rs
    JOIN ExamResults er
        ON rs.SubjectID = er.SubjectID
       AND er.ApplicantID = vApplicantID
       AND er.ExamYear = vExamYear
    WHERE rs.SpecialtyID = vSpecialtyID
      AND rs.IsRequired = TRUE;

    SELECT IFNULL(SUM(bt.BonusScore), 0)
    INTO vBonusScore
    FROM ApplicantBenefits ab
    JOIN BenefitTypes bt ON ab.BenefitTypeID = bt.BenefitTypeID
    WHERE ab.ApplicantID = vApplicantID
      AND (ab.ValidUntil IS NULL OR ab.ValidUntil >= CURRENT_DATE);

    UPDATE Applications
    SET CompetitiveScore = LEAST(IFNULL(vWeightedScore, 0) + vBonusScore, 200)
    WHERE ApplicationID = pApplicationID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_SetApplicationStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SetApplicationStatus`(
    IN pApplicationID INT,
    IN pStatusName VARCHAR(50)
)
BEGIN
    DECLARE vStatusID INT;

    SELECT StatusID
    INTO vStatusID
    FROM ApplicationStatuses
    WHERE StatusName = pStatusName;

    IF vStatusID IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Вказаний статус заяви не знайдено';
    END IF;

    UPDATE Applications
    SET StatusID = vStatusID
    WHERE ApplicationID = pApplicationID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_SubmitApplication` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SubmitApplication`(
    IN pApplicantID INT,
    IN pSpecialtyID INT,
    IN pCampaignID INT,
    IN pPriorityNumber INT,
    IN pIsBudget BOOLEAN
)
BEGIN
    DECLARE vStatusID INT;

    SELECT StatusID
    INTO vStatusID
    FROM ApplicationStatuses
    WHERE StatusName = 'Подана';

    INSERT INTO Applications (
        ApplicantID,
        SpecialtyID,
        CampaignID,
        PriorityNumber,
        SubmissionDate,
        StatusID,
        IsBudget,
        OriginalDocumentsSubmitted
    )
    VALUES (
        pApplicantID,
        pSpecialtyID,
        pCampaignID,
        pPriorityNumber,
        CURRENT_DATE,
        vStatusID,
        pIsBudget,
        FALSE
    );
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

-- Dump completed on 2026-05-29 12:50:20
