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
-- Table structure for table `EnrollmentOrders`
--

DROP TABLE IF EXISTS `EnrollmentOrders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EnrollmentOrders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `ApplicationID` int NOT NULL,
  `OrderNumber` varchar(50) NOT NULL,
  `OrderDate` date NOT NULL,
  `EnrollmentType` enum('Бюджет','Контракт') NOT NULL,
  `StudyGroup` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  UNIQUE KEY `ApplicationID` (`ApplicationID`),
  UNIQUE KEY `OrderNumber` (`OrderNumber`),
  KEY `idx_orders_date` (`OrderDate`),
  CONSTRAINT `fk_order_application` FOREIGN KEY (`ApplicationID`) REFERENCES `Applications` (`ApplicationID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EnrollmentOrders`
--

LOCK TABLES `EnrollmentOrders` WRITE;
/*!40000 ALTER TABLE `EnrollmentOrders` DISABLE KEYS */;
INSERT INTO `EnrollmentOrders` VALUES (1,1,'НЗ-2026-001','2026-08-25','Бюджет','ІПЗ-1'),(2,5,'НЗ-2026-002','2026-08-25','Бюджет','ПР-1'),(3,8,'НЗ-2026-003','2026-08-25','Бюджет','ІПЗ-1'),(4,11,'НЗ-2026-004','2026-08-25','Бюджет','ПР-1');
/*!40000 ALTER TABLE `EnrollmentOrders` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_enrollment_orders_after_insert` AFTER INSERT ON `enrollmentorders` FOR EACH ROW BEGIN
    DECLARE vStatusID INT;

    SELECT StatusID
    INTO vStatusID
    FROM ApplicationStatuses
    WHERE StatusName = 'Зарахована';

    UPDATE Applications
    SET StatusID = vStatusID,
        OriginalDocumentsSubmitted = TRUE
    WHERE ApplicationID = NEW.ApplicationID;
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
