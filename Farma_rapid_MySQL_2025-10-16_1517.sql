-- MySQL dump 10.13  Distrib 8.4.6, for Linux (x86_64)
--
-- Host: 172.19.209.123    Database: Farma_rapid
-- ------------------------------------------------------
-- Server version	8.4.6

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `Farma_rapid`
--

/*!40000 DROP DATABASE IF EXISTS `Farma_rapid`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Farma_rapid` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `Farma_rapid`;

--
-- Table structure for table `batches`
--

DROP TABLE IF EXISTS `batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batches` (
  `id` int NOT NULL AUTO_INCREMENT,
  `medicine_id` int NOT NULL,
  `supplier_id` int NOT NULL,
  `batch_code` varchar(60) NOT NULL,
  `expiration_date` date NOT NULL,
  `current_stock` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `medicine_id` (`medicine_id`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `batches_ibfk_1` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`id`),
  CONSTRAINT `batches_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batches`
--

LOCK TABLES `batches` WRITE;
/*!40000 ALTER TABLE `batches` DISABLE KEYS */;
INSERT INTO `batches` VALUES (1,75,16,'LOT-2025-001','2026-12-11',404),(2,32,2,'LOT-2025-002','2025-12-14',297),(3,89,61,'LOT-2025-003','2027-07-04',79),(4,48,99,'LOT-2025-004','2026-01-31',127),(5,21,64,'LOT-2025-005','2026-02-02',351),(6,80,44,'LOT-2025-006','2027-08-03',30),(7,8,46,'LOT-2025-007','2027-08-23',78),(8,90,69,'LOT-2025-008','2026-02-18',64),(9,63,30,'LOT-2025-009','2026-09-21',285),(10,83,97,'LOT-2025-010','2026-10-22',412),(11,57,94,'LOT-2025-011','2026-05-17',10),(12,89,49,'LOT-2025-012','2026-11-02',370),(13,18,33,'LOT-2025-013','2025-12-11',248),(14,91,57,'LOT-2025-014','2027-05-27',150),(15,70,90,'LOT-2025-015','2027-03-17',97),(16,73,24,'LOT-2025-016','2027-05-11',178),(17,42,94,'LOT-2025-017','2027-02-23',140),(18,77,71,'LOT-2025-018','2026-04-14',35),(19,68,20,'LOT-2025-019','2027-02-04',151),(20,34,70,'LOT-2025-020','2026-11-11',232),(21,1,100,'LOT-2025-021','2027-08-16',259),(22,49,94,'LOT-2025-022','2026-05-09',452),(23,3,80,'LOT-2025-023','2026-11-08',397),(24,80,31,'LOT-2025-024','2026-09-25',369),(25,9,85,'LOT-2025-025','2027-05-06',419),(26,50,25,'LOT-2025-026','2027-04-21',349),(27,64,99,'LOT-2025-027','2027-05-19',78),(28,79,37,'LOT-2025-028','2026-09-27',209),(29,83,42,'LOT-2025-029','2026-02-22',49),(30,67,85,'LOT-2025-030','2026-01-08',22),(31,17,23,'LOT-2025-031','2025-12-03',103),(32,14,63,'LOT-2025-032','2026-05-16',50),(33,5,74,'LOT-2025-033','2027-08-20',428),(34,50,85,'LOT-2025-034','2027-03-17',269),(35,80,90,'LOT-2025-035','2027-06-28',131),(36,7,47,'LOT-2025-036','2026-06-15',310),(37,92,10,'LOT-2025-037','2025-11-14',476),(38,27,84,'LOT-2025-038','2027-03-19',475),(39,11,60,'LOT-2025-039','2027-08-17',31),(40,47,72,'LOT-2025-040','2026-12-31',420),(41,48,91,'LOT-2025-041','2025-12-30',421),(42,79,35,'LOT-2025-042','2027-04-26',20),(43,94,10,'LOT-2025-043','2026-09-08',39),(44,28,67,'LOT-2025-044','2026-02-08',51),(45,93,30,'LOT-2025-045','2027-04-29',197),(46,25,25,'LOT-2025-046','2027-04-23',336),(47,32,73,'LOT-2025-047','2027-08-03',485),(48,23,72,'LOT-2025-048','2027-05-26',212),(49,96,14,'LOT-2025-049','2027-08-16',295),(50,46,87,'LOT-2025-050','2027-02-13',359),(51,86,55,'LOT-2025-051','2026-02-15',85),(52,24,71,'LOT-2025-052','2026-12-17',258),(53,44,85,'LOT-2025-053','2026-04-11',273),(54,77,57,'LOT-2025-054','2026-10-27',462),(55,41,71,'LOT-2025-055','2026-09-29',432),(56,48,53,'LOT-2025-056','2027-08-11',220),(57,93,42,'LOT-2025-057','2027-07-17',123),(58,73,70,'LOT-2025-058','2026-06-08',192),(59,99,71,'LOT-2025-059','2026-07-19',184),(60,58,58,'LOT-2025-060','2026-12-12',0),(61,93,5,'LOT-2025-061','2026-08-19',305),(62,3,67,'LOT-2025-062','2026-03-19',455),(63,39,1,'LOT-2025-063','2026-09-04',113),(64,28,41,'LOT-2025-064','2025-11-23',395),(65,89,36,'LOT-2025-065','2027-05-21',261),(66,72,74,'LOT-2025-066','2027-06-09',79),(67,13,5,'LOT-2025-067','2027-02-15',182),(68,20,18,'LOT-2025-068','2026-07-30',187),(69,75,32,'LOT-2025-069','2026-06-27',131),(70,39,12,'LOT-2025-070','2027-06-08',204),(71,73,28,'LOT-2025-071','2026-01-19',370),(72,42,62,'LOT-2025-072','2026-04-27',249),(73,89,90,'LOT-2025-073','2027-06-14',419),(74,13,77,'LOT-2025-074','2027-08-20',153),(75,5,94,'LOT-2025-075','2027-06-14',195),(76,11,100,'LOT-2025-076','2025-12-28',471),(77,99,43,'LOT-2025-077','2026-10-23',450),(78,56,54,'LOT-2025-078','2026-03-04',445),(79,99,30,'LOT-2025-079','2027-08-31',434),(80,78,2,'LOT-2025-080','2027-08-12',398),(81,81,49,'LOT-2025-081','2025-12-26',156),(82,68,6,'LOT-2025-082','2026-09-23',276),(83,73,20,'LOT-2025-083','2026-10-01',257),(84,90,29,'LOT-2025-084','2026-04-06',25),(85,87,94,'LOT-2025-085','2026-12-08',497),(86,58,97,'LOT-2025-086','2027-07-03',294),(87,65,12,'LOT-2025-087','2026-06-16',221),(88,38,51,'LOT-2025-088','2026-04-01',67),(89,44,11,'LOT-2025-089','2027-03-03',292),(90,96,7,'LOT-2025-090','2027-05-16',204),(91,34,11,'LOT-2025-091','2026-12-14',256),(92,56,100,'LOT-2025-092','2026-03-14',390),(93,18,62,'LOT-2025-093','2027-05-27',101),(94,63,51,'LOT-2025-094','2027-08-30',292),(95,26,72,'LOT-2025-095','2027-07-24',376),(96,68,32,'LOT-2025-096','2026-07-07',36),(97,35,100,'LOT-2025-097','2027-01-15',165),(98,88,74,'LOT-2025-098','2026-01-31',57),(99,86,53,'LOT-2025-099','2027-01-08',187),(100,45,25,'LOT-2025-100','2026-09-25',176);
/*!40000 ALTER TABLE `batches` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `ai_batches_audit` AFTER INSERT ON `batches` FOR EACH ROW BEGIN
  SET @from_batches_trigger = 1;
  INSERT INTO batches_audit (batch_id, action, before_data, after_data)
  VALUES (
    NEW.id,
    'INSERT',
    NULL,
    JSON_OBJECT(
      'id', NEW.id,
      'medicine_id', NEW.medicine_id,
      'supplier_id', NEW.supplier_id,
      'batch_code', NEW.batch_code,
      'expiration_date', NEW.expiration_date,
      'current_stock', NEW.current_stock
    )
  );
  SET @from_batches_trigger = NULL;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `au_batches_audit` AFTER UPDATE ON `batches` FOR EACH ROW BEGIN
  SET @from_batches_trigger = 1;
  INSERT INTO batches_audit (batch_id, action, before_data, after_data)
  VALUES (
    NEW.id,
    'UPDATE',
    JSON_OBJECT(
      'id', OLD.id,
      'medicine_id', OLD.medicine_id,
      'supplier_id', OLD.supplier_id,
      'batch_code', OLD.batch_code,
      'expiration_date', OLD.expiration_date,
      'current_stock', OLD.current_stock
    ),
    JSON_OBJECT(
      'id', NEW.id,
      'medicine_id', NEW.medicine_id,
      'supplier_id', NEW.supplier_id,
      'batch_code', NEW.batch_code,
      'expiration_date', NEW.expiration_date,
      'current_stock', NEW.current_stock
    )
  );
  SET @from_batches_trigger = NULL;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `ad_batches_audit` AFTER DELETE ON `batches` FOR EACH ROW BEGIN
  SET @from_batches_trigger = 1;
  INSERT INTO batches_audit (batch_id, action, before_data, after_data)
  VALUES (
    OLD.id,
    'DELETE',
    JSON_OBJECT(
      'id', OLD.id,
      'medicine_id', OLD.medicine_id,
      'supplier_id', OLD.supplier_id,
      'batch_code', OLD.batch_code,
      'expiration_date', OLD.expiration_date,
      'current_stock', OLD.current_stock
    ),
    NULL
  );
  SET @from_batches_trigger = NULL;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `batches_audit`
--

DROP TABLE IF EXISTS `batches_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batches_audit` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `batch_id` bigint NOT NULL,
  `action` enum('INSERT','UPDATE','DELETE') NOT NULL,
  `changed_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `changed_by` varchar(255) NOT NULL DEFAULT 'Admin',
  `before_data` json DEFAULT NULL,
  `after_data` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batches_audit`
--

LOCK TABLES `batches_audit` WRITE;
/*!40000 ALTER TABLE `batches_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `batches_audit` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `bii_batches_audit_guard_insert` BEFORE INSERT ON `batches_audit` FOR EACH ROW BEGIN
  IF COALESCE(@from_batches_trigger, 0) <> 1 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'INSERT en batches_audit solo permitido desde triggers de batches.';
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `biu_batches_audit_block_update` BEFORE UPDATE ON `batches_audit` FOR EACH ROW BEGIN
  SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'batches_audit es inmutable: UPDATE prohibido.';
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `bid_batches_audit_block_delete` BEFORE DELETE ON `batches_audit` FOR EACH ROW BEGIN
  SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'batches_audit es inmutable: DELETE prohibido.';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Analgésicos','Medicamentos para aliviar el dolor (lote 1)'),(2,'Antibióticos','Combaten infecciones bacterianas (lote 2)'),(3,'Antiinflamatorios','Reducen inflamación y dolor (lote 3)'),(4,'Antihistamínicos','Controlan reacciones alérgicas (lote 4)'),(5,'Antipiréticos','Reducen la fiebre (lote 5)'),(6,'Antimicóticos','Tratan infecciones por hongos (lote 6)'),(7,'Antivirales','Combaten infecciones virales (lote 7)'),(8,'Vacunas','Previenen enfermedades infecciosas (lote 8)'),(9,'Vitaminas y Suplementos','Apoyo nutricional y fortalecimiento (lote 9)'),(10,'Antidepresivos','Tratamiento para depresión y ansiedad (lote 10)'),(11,'Antipsicóticos','Medicamentos para trastornos psicóticos (lote 11)'),(12,'Antiepilépticos','Previenen convulsiones (lote 12)'),(13,'Cardiovasculares','Medicamentos para el sistema cardiovascular (lote 13)'),(14,'Hipoglucemiantes','Controlan los niveles de glucosa en sangre (lote 14)'),(15,'Inmunosupresores','Disminuyen la respuesta inmune (lote 15)'),(16,'Relajantes musculares','Alivian espasmos musculares (lote 16)'),(17,'Gastrointestinales','Tratamiento de problemas digestivos (lote 17)'),(18,'Hormonas','Medicamentos de terapia hormonal (lote 18)'),(19,'Anticoagulantes','Previenen la formación de coágulos sanguíneos (lote 19)'),(20,'Anestésicos','Medicamentos para bloquear la sensibilidad al dolor (lote 20)'),(21,'Analgésicos','Medicamentos para aliviar el dolor (lote 21)'),(22,'Antibióticos','Combaten infecciones bacterianas (lote 22)'),(23,'Antiinflamatorios','Reducen inflamación y dolor (lote 23)'),(24,'Antihistamínicos','Controlan reacciones alérgicas (lote 24)'),(25,'Antipiréticos','Reducen la fiebre (lote 25)'),(26,'Antimicóticos','Tratan infecciones por hongos (lote 26)'),(27,'Antivirales','Combaten infecciones virales (lote 27)'),(28,'Vacunas','Previenen enfermedades infecciosas (lote 28)'),(29,'Vitaminas y Suplementos','Apoyo nutricional y fortalecimiento (lote 29)'),(30,'Antidepresivos','Tratamiento para depresión y ansiedad (lote 30)'),(31,'Antipsicóticos','Medicamentos para trastornos psicóticos (lote 31)'),(32,'Antiepilépticos','Previenen convulsiones (lote 32)'),(33,'Cardiovasculares','Medicamentos para el sistema cardiovascular (lote 33)'),(34,'Hipoglucemiantes','Controlan los niveles de glucosa en sangre (lote 34)'),(35,'Inmunosupresores','Disminuyen la respuesta inmune (lote 35)'),(36,'Relajantes musculares','Alivian espasmos musculares (lote 36)'),(37,'Gastrointestinales','Tratamiento de problemas digestivos (lote 37)'),(38,'Hormonas','Medicamentos de terapia hormonal (lote 38)'),(39,'Anticoagulantes','Previenen la formación de coágulos sanguíneos (lote 39)'),(40,'Anestésicos','Medicamentos para bloquear la sensibilidad al dolor (lote 40)'),(41,'Analgésicos','Medicamentos para aliviar el dolor (lote 41)'),(42,'Antibióticos','Combaten infecciones bacterianas (lote 42)'),(43,'Antiinflamatorios','Reducen inflamación y dolor (lote 43)'),(44,'Antihistamínicos','Controlan reacciones alérgicas (lote 44)'),(45,'Antipiréticos','Reducen la fiebre (lote 45)'),(46,'Antimicóticos','Tratan infecciones por hongos (lote 46)'),(47,'Antivirales','Combaten infecciones virales (lote 47)'),(48,'Vacunas','Previenen enfermedades infecciosas (lote 48)'),(49,'Vitaminas y Suplementos','Apoyo nutricional y fortalecimiento (lote 49)'),(50,'Antidepresivos','Tratamiento para depresión y ansiedad (lote 50)'),(51,'Antipsicóticos','Medicamentos para trastornos psicóticos (lote 51)'),(52,'Antiepilépticos','Previenen convulsiones (lote 52)'),(53,'Cardiovasculares','Medicamentos para el sistema cardiovascular (lote 53)'),(54,'Hipoglucemiantes','Controlan los niveles de glucosa en sangre (lote 54)'),(55,'Inmunosupresores','Disminuyen la respuesta inmune (lote 55)'),(56,'Relajantes musculares','Alivian espasmos musculares (lote 56)'),(57,'Gastrointestinales','Tratamiento de problemas digestivos (lote 57)'),(58,'Hormonas','Medicamentos de terapia hormonal (lote 58)'),(59,'Anticoagulantes','Previenen la formación de coágulos sanguíneos (lote 59)'),(60,'Anestésicos','Medicamentos para bloquear la sensibilidad al dolor (lote 60)'),(61,'Analgésicos','Medicamentos para aliviar el dolor (lote 61)'),(62,'Antibióticos','Combaten infecciones bacterianas (lote 62)'),(63,'Antiinflamatorios','Reducen inflamación y dolor (lote 63)'),(64,'Antihistamínicos','Controlan reacciones alérgicas (lote 64)'),(65,'Antipiréticos','Reducen la fiebre (lote 65)'),(66,'Antimicóticos','Tratan infecciones por hongos (lote 66)'),(67,'Antivirales','Combaten infecciones virales (lote 67)'),(68,'Vacunas','Previenen enfermedades infecciosas (lote 68)'),(69,'Vitaminas y Suplementos','Apoyo nutricional y fortalecimiento (lote 69)'),(70,'Antidepresivos','Tratamiento para depresión y ansiedad (lote 70)'),(71,'Antipsicóticos','Medicamentos para trastornos psicóticos (lote 71)'),(72,'Antiepilépticos','Previenen convulsiones (lote 72)'),(73,'Cardiovasculares','Medicamentos para el sistema cardiovascular (lote 73)'),(74,'Hipoglucemiantes','Controlan los niveles de glucosa en sangre (lote 74)'),(75,'Inmunosupresores','Disminuyen la respuesta inmune (lote 75)'),(76,'Relajantes musculares','Alivian espasmos musculares (lote 76)'),(77,'Gastrointestinales','Tratamiento de problemas digestivos (lote 77)'),(78,'Hormonas','Medicamentos de terapia hormonal (lote 78)'),(79,'Anticoagulantes','Previenen la formación de coágulos sanguíneos (lote 79)'),(80,'Anestésicos','Medicamentos para bloquear la sensibilidad al dolor (lote 80)'),(81,'Analgésicos','Medicamentos para aliviar el dolor (lote 81)'),(82,'Antibióticos','Combaten infecciones bacterianas (lote 82)'),(83,'Antiinflamatorios','Reducen inflamación y dolor (lote 83)'),(84,'Antihistamínicos','Controlan reacciones alérgicas (lote 84)'),(85,'Antipiréticos','Reducen la fiebre (lote 85)'),(86,'Antimicóticos','Tratan infecciones por hongos (lote 86)'),(87,'Antivirales','Combaten infecciones virales (lote 87)'),(88,'Vacunas','Previenen enfermedades infecciosas (lote 88)'),(89,'Vitaminas y Suplementos','Apoyo nutricional y fortalecimiento (lote 89)'),(90,'Antidepresivos','Tratamiento para depresión y ansiedad (lote 90)'),(91,'Antipsicóticos','Medicamentos para trastornos psicóticos (lote 91)'),(92,'Antiepilépticos','Previenen convulsiones (lote 92)'),(93,'Cardiovasculares','Medicamentos para el sistema cardiovascular (lote 93)'),(94,'Hipoglucemiantes','Controlan los niveles de glucosa en sangre (lote 94)'),(95,'Inmunosupresores','Disminuyen la respuesta inmune (lote 95)'),(96,'Relajantes musculares','Alivian espasmos musculares (lote 96)'),(97,'Gastrointestinales','Tratamiento de problemas digestivos (lote 97)'),(98,'Hormonas','Medicamentos de terapia hormonal (lote 98)'),(99,'Anticoagulantes','Previenen la formación de coágulos sanguíneos (lote 99)'),(100,'Anestésicos','Medicamentos para bloquear la sensibilidad al dolor (lote 100)');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `document` varchar(50) DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `document` (`document`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'19995059','Sofía Sánchez','3233915798','sofía.sánchez1@mail.com','Carrera 95 #132-16, Medellín'),(2,'67513345','Ana Rodríguez','3355433204','ana.rodríguez2@mail.com','Carrera 17 #42-75, Medellín'),(3,'54367386','Miguel García','3593597208','miguel.garcía3@mail.com','Carrera 6 #40-42, Medellín'),(4,'93935292','Gabriela Rodríguez','3786052539','gabriela.rodríguez4@mail.com','Carrera 63 #147-71, Medellín'),(5,'52662313','Lucía Martínez','3674690350','lucía.martínez5@mail.com','Carrera 24 #134-9, Medellín'),(6,'65825346','Camila Sánchez','3697768215','camila.sánchez6@mail.com','Carrera 12 #90-29, Medellín'),(7,'54434998','David Vargas','3465925360','david.vargas7@mail.com','Carrera 28 #193-80, Medellín'),(8,'85341065','Camila Díaz','3961147701','camila.díaz8@mail.com','Carrera 15 #172-45, Medellín'),(9,'96203262','Sofía Torres','3785090740','sofía.torres9@mail.com','Carrera 6 #175-42, Medellín'),(10,'61791391','Ana Gómez','3325745083','ana.gómez10@mail.com','Carrera 4 #133-99, Medellín'),(11,'78281335','Lucía Silva','3579167227','lucía.silva11@mail.com','Carrera 6 #76-84, Medellín'),(12,'78973779','David Vargas','3102609881','david.vargas12@mail.com','Carrera 22 #198-69, Medellín'),(13,'94145533','Isabella García','3084536326','isabella.garcía13@mail.com','Carrera 86 #162-28, Medellín'),(14,'37592422','Laura Gómez','3688302077','laura.gómez14@mail.com','Carrera 83 #19-96, Medellín'),(15,'71636167','Diego García','3916565260','diego.garcía15@mail.com','Carrera 5 #23-10, Medellín'),(16,'43810519','Carlos Sánchez','3712181822','carlos.sánchez16@mail.com','Carrera 74 #59-34, Medellín'),(17,'70549061','Laura Molina','3807785511','laura.molina17@mail.com','Carrera 56 #81-3, Medellín'),(18,'81784254','Ana Gómez','3002060950','ana.gómez18@mail.com','Carrera 97 #191-75, Medellín'),(19,'58009699','Carlos Martínez','3642780658','carlos.martínez19@mail.com','Carrera 38 #176-39, Medellín'),(20,'47784631','Gabriela Martínez','3978342987','gabriela.martínez20@mail.com','Carrera 49 #102-85, Medellín'),(21,'30981381','Juan Díaz','3684688734','juan.díaz21@mail.com','Carrera 18 #192-51, Medellín'),(22,'95100169','Isabella Ramos','3186000558','isabella.ramos22@mail.com','Carrera 87 #187-83, Medellín'),(23,'84292758','Lucía García','3713371859','lucía.garcía23@mail.com','Carrera 16 #11-1, Medellín'),(24,'62892750','Paula Vega','3682428191','paula.vega24@mail.com','Carrera 40 #54-96, Medellín'),(25,'65385548','Lucía Ramírez','3829599207','lucía.ramírez25@mail.com','Carrera 19 #42-24, Medellín'),(26,'43922427','Daniel Vega','3242923047','daniel.vega26@mail.com','Carrera 24 #172-73, Medellín'),(27,'71909967','Carlos López','3822227162','carlos.lópez27@mail.com','Carrera 38 #172-9, Medellín'),(28,'36496940','Miguel Gómez','3929173698','miguel.gómez28@mail.com','Carrera 43 #92-17, Medellín'),(29,'48270459','Daniel Gómez','3792171198','daniel.gómez29@mail.com','Carrera 25 #82-63, Medellín'),(30,'92724080','Sofía Vargas','3846128383','sofía.vargas30@mail.com','Carrera 89 #150-20, Medellín'),(31,'58921480','Paula Fernández','3408185805','paula.fernández31@mail.com','Carrera 22 #2-41, Medellín'),(32,'96011893','Daniel Torres','3555641917','daniel.torres32@mail.com','Carrera 47 #35-87, Medellín'),(33,'72122457','María Díaz','3577018685','maría.díaz33@mail.com','Carrera 40 #125-71, Medellín'),(34,'96644469','Andrés Sánchez','3772375290','andrés.sánchez34@mail.com','Carrera 36 #36-69, Medellín'),(35,'94103363','David Flores','3092265001','david.flores35@mail.com','Carrera 3 #130-81, Medellín'),(36,'87698748','Juan Fernández','3514569531','juan.fernández36@mail.com','Carrera 5 #142-34, Medellín'),(37,'73364719','Isabella López','3833493647','isabella.lópez37@mail.com','Carrera 47 #101-29, Medellín'),(38,'27969238','Paula Ramos','3599407451','paula.ramos38@mail.com','Carrera 66 #24-51, Medellín'),(39,'11421591','Lucía Silva','3845007754','lucía.silva39@mail.com','Carrera 79 #176-22, Medellín'),(40,'69890694','Camila Pérez','3204005557','camila.pérez40@mail.com','Carrera 73 #145-85, Medellín'),(41,'58156722','Diego Díaz','3054671175','diego.díaz41@mail.com','Carrera 98 #125-30, Medellín'),(42,'59584751','Luis Flores','3291718206','luis.flores42@mail.com','Carrera 86 #53-67, Medellín'),(43,'73038607','Lucía Molina','3581779091','lucía.molina43@mail.com','Carrera 6 #167-42, Medellín'),(44,'95035920','Andrés Silva','3355417710','andrés.silva44@mail.com','Carrera 75 #140-73, Medellín'),(45,'97734815','Sergio Molina','3487128662','sergio.molina45@mail.com','Carrera 76 #168-10, Medellín'),(46,'60509993','Camila Flores','3289663280','camila.flores46@mail.com','Carrera 52 #91-45, Medellín'),(47,'91095825','Valentina Díaz','3009419427','valentina.díaz47@mail.com','Carrera 18 #113-22, Medellín'),(48,'79060560','Daniel Martínez','3825711201','daniel.martínez48@mail.com','Carrera 28 #39-24, Medellín'),(49,'90801793','Sergio Castillo','3912985251','sergio.castillo49@mail.com','Carrera 85 #59-54, Medellín'),(50,'74628070','María Gómez','3869033176','maría.gómez50@mail.com','Carrera 62 #54-76, Medellín'),(51,'13012656','Sergio Herrera','3311723841','sergio.herrera51@mail.com','Carrera 17 #147-76, Medellín'),(52,'94495485','Sergio Pérez','3651657513','sergio.pérez52@mail.com','Carrera 74 #38-8, Medellín'),(53,'34164229','Sergio Flores','3667802428','sergio.flores53@mail.com','Carrera 77 #145-82, Medellín'),(54,'21508969','Juan Ramos','3278536381','juan.ramos54@mail.com','Carrera 78 #121-62, Medellín'),(55,'65132193','Sergio Torres','3763394312','sergio.torres55@mail.com','Carrera 75 #197-24, Medellín'),(56,'45503367','Gabriela Silva','3216749069','gabriela.silva56@mail.com','Carrera 59 #153-76, Medellín'),(57,'60762668','Luis Torres','3493218169','luis.torres57@mail.com','Carrera 14 #5-26, Medellín'),(58,'66343932','Camila Silva','3192615622','camila.silva58@mail.com','Carrera 23 #122-79, Medellín'),(59,'81327320','Gabriela Rodríguez','3642971598','gabriela.rodríguez59@mail.com','Carrera 12 #124-85, Medellín'),(60,'82381739','Diego Vega','3008239315','diego.vega60@mail.com','Carrera 67 #108-48, Medellín'),(61,'67573535','Carlos Silva','3299088689','carlos.silva61@mail.com','Carrera 99 #98-45, Medellín'),(62,'23115341','Paula Fernández','3543246185','paula.fernández62@mail.com','Carrera 33 #123-99, Medellín'),(63,'48019408','Daniel Martínez','3767855954','daniel.martínez63@mail.com','Carrera 33 #49-1, Medellín'),(64,'80134216','Juan Fernández','3159720156','juan.fernández64@mail.com','Carrera 1 #97-84, Medellín'),(65,'64874257','David Vargas','3462788169','david.vargas65@mail.com','Carrera 20 #110-84, Medellín'),(66,'45071480','Paula Flores','3688106183','paula.flores66@mail.com','Carrera 73 #94-79, Medellín'),(67,'37339300','Miguel Molina','3529094465','miguel.molina67@mail.com','Carrera 23 #95-72, Medellín'),(68,'44061458','Isabella Díaz','3396777340','isabella.díaz68@mail.com','Carrera 91 #102-95, Medellín'),(69,'40839382','Diego Gómez','3573714471','diego.gómez69@mail.com','Carrera 13 #55-66, Medellín'),(70,'83897088','Ana Vargas','3781873301','ana.vargas70@mail.com','Carrera 21 #100-82, Medellín'),(71,'29505652','Juan Martínez','3608304421','juan.martínez71@mail.com','Carrera 12 #17-34, Medellín'),(72,'20742751','Daniel Castillo','3771633429','daniel.castillo72@mail.com','Carrera 93 #99-52, Medellín'),(73,'48449249','Gabriela Silva','3911964069','gabriela.silva73@mail.com','Carrera 23 #164-64, Medellín'),(74,'37072687','Sofía García','3849693169','sofía.garcía74@mail.com','Carrera 37 #50-5, Medellín'),(75,'79231333','Gabriela Silva','3894886793','gabriela.silva75@mail.com','Carrera 79 #44-87, Medellín'),(76,'42112480','Carlos Castillo','3831004819','carlos.castillo76@mail.com','Carrera 21 #23-36, Medellín'),(77,'99880518','Ana Castillo','3507802338','ana.castillo77@mail.com','Carrera 76 #52-67, Medellín'),(78,'22101856','Juan Martínez','3705773013','juan.martínez78@mail.com','Carrera 93 #144-75, Medellín'),(79,'47112255','Lucía Castillo','3284263591','lucía.castillo79@mail.com','Carrera 59 #104-74, Medellín'),(80,'33492771','Juan Flores','3529493265','juan.flores80@mail.com','Carrera 14 #144-10, Medellín'),(81,'55629449','Camila Ramos','3149611521','camila.ramos81@mail.com','Carrera 33 #138-74, Medellín'),(82,'60610858','Miguel Suárez','3729113963','miguel.suárez82@mail.com','Carrera 99 #63-97, Medellín'),(83,'71836850','María Suárez','3751458868','maría.suárez83@mail.com','Carrera 62 #30-34, Medellín'),(84,'95048646','Luis Molina','3284857587','luis.molina84@mail.com','Carrera 41 #106-46, Medellín'),(85,'11305024','Camila López','3895418274','camila.lópez85@mail.com','Carrera 32 #74-12, Medellín'),(86,'20204415','Ana Vargas','3703994493','ana.vargas86@mail.com','Carrera 61 #81-46, Medellín'),(87,'46114740','David Fernández','3234190481','david.fernández87@mail.com','Carrera 64 #189-26, Medellín'),(88,'45622106','Daniel Torres','3264845464','daniel.torres88@mail.com','Carrera 26 #64-80, Medellín'),(89,'24319594','Lucía Pérez','3152316802','lucía.pérez89@mail.com','Carrera 87 #170-64, Medellín'),(90,'82675403','Gabriela García','3059091518','gabriela.garcía90@mail.com','Carrera 48 #159-41, Medellín'),(91,'46874043','Valentina Fernández','3624068080','valentina.fernández91@mail.com','Carrera 98 #131-36, Medellín'),(92,'87398691','Ana Torres','3161908455','ana.torres92@mail.com','Carrera 68 #109-62, Medellín'),(93,'77441081','Isabella Rodríguez','3447605473','isabella.rodríguez93@mail.com','Carrera 88 #199-23, Medellín'),(94,'79552316','Sofía Gómez','3586295749','sofía.gómez94@mail.com','Carrera 89 #3-2, Medellín'),(95,'87981603','David Molina','3126459913','david.molina95@mail.com','Carrera 47 #157-34, Medellín'),(96,'45279000','Sergio López','3305519920','sergio.lópez96@mail.com','Carrera 61 #157-44, Medellín'),(97,'76943778','Lucía Sánchez','3544532148','lucía.sánchez97@mail.com','Carrera 54 #180-97, Medellín'),(98,'63766628','Lucía Castillo','3358561977','lucía.castillo98@mail.com','Carrera 24 #147-17, Medellín'),(99,'23404289','Paula Torres','3925528994','paula.torres99@mail.com','Carrera 31 #143-56, Medellín'),(100,'29574814','Ana Ramírez','3943509000','ana.ramírez100@mail.com','Carrera 61 #3-23, Medellín');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `ai_customers_audit` AFTER INSERT ON `customers` FOR EACH ROW BEGIN
  SET @from_customers_trigger = 1;
  INSERT INTO customers_audit (customer_id, action, before_data, after_data)
  VALUES (
    NEW.id,
    'INSERT',
    NULL,
    JSON_OBJECT(
      'id', NEW.id,
      'document', NEW.document,
      'name', NEW.name,
      'phone', NEW.phone,
      'email', NEW.email,
      'address', NEW.address
    )
  );
  SET @from_customers_trigger = NULL;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `au_customers_audit` AFTER UPDATE ON `customers` FOR EACH ROW BEGIN
  SET @from_customers_trigger = 1;
  INSERT INTO customers_audit (customer_id, action, before_data, after_data)
  VALUES (
    NEW.id,
    'UPDATE',
    JSON_OBJECT(
      'id', OLD.id,
      'document', OLD.document,
      'name', OLD.name,
      'phone', OLD.phone,
      'email', OLD.email,
      'address', OLD.address
    ),
    JSON_OBJECT(
      'id', NEW.id,
      'document', NEW.document,
      'name', NEW.name,
      'phone', NEW.phone,
      'email', NEW.email,
      'address', NEW.address
    )
  );
  SET @from_customers_trigger = NULL;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `ad_customers_audit` AFTER DELETE ON `customers` FOR EACH ROW BEGIN
  SET @from_customers_trigger = 1;
  INSERT INTO customers_audit (customer_id, action, before_data, after_data)
  VALUES (
    OLD.id,
    'DELETE',
    JSON_OBJECT(
      'id', OLD.id,
      'document', OLD.document,
      'name', OLD.name,
      'phone', OLD.phone,
      'email', OLD.email,
      'address', OLD.address
    ),
    NULL
  );
  SET @from_customers_trigger = NULL;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `customers_audit`
--

DROP TABLE IF EXISTS `customers_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers_audit` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint NOT NULL,
  `action` enum('INSERT','UPDATE','DELETE') NOT NULL,
  `changed_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `changed_by` varchar(255) NOT NULL DEFAULT 'Admin',
  `before_data` json DEFAULT NULL,
  `after_data` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_audit`
--

LOCK TABLES `customers_audit` WRITE;
/*!40000 ALTER TABLE `customers_audit` DISABLE KEYS */;
INSERT INTO `customers_audit` VALUES (1,1,'UPDATE','2025-10-16 05:46:06','Admin','{\"id\": 1, \"name\": \"Sofía Sánchez\", \"email\": \"sofía.sánchez1@mail.com\", \"phone\": \"3233915798\", \"address\": \"Carrera 95 #132-16, Medellín\", \"document\": \"19995059\"}','{\"id\": 1, \"name\": \"David Sánchez\", \"email\": \"sofía.sánchez1@mail.com\", \"phone\": \"3234567890\", \"address\": \"Carrera 95 #132-16, Medellín\", \"document\": \"19995059\"}'),(2,1,'UPDATE','2025-10-16 05:48:56','Admin','{\"id\": 1, \"name\": \"David Sánchez\", \"email\": \"sofía.sánchez1@mail.com\", \"phone\": \"3234567890\", \"address\": \"Carrera 95 #132-16, Medellín\", \"document\": \"19995059\"}','{\"id\": 1, \"name\": \"Sofía Sánchez\", \"email\": \"sofía.sánchez1@mail.com\", \"phone\": \"3233915798\", \"address\": \"Carrera 95 #132-16, Medellín\", \"document\": \"19995059\"}');
/*!40000 ALTER TABLE `customers_audit` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `bii_customers_audit_guard_insert` BEFORE INSERT ON `customers_audit` FOR EACH ROW BEGIN
  IF COALESCE(@from_customers_trigger, 0) <> 1 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'INSERT en customers_audit solo permitido desde triggers de customers.';
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `biu_customers_audit_block_update` BEFORE UPDATE ON `customers_audit` FOR EACH ROW BEGIN
  SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'customers_audit es inmutable: UPDATE prohibido.';
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `bid_customers_audit_block_delete` BEFORE DELETE ON `customers_audit` FOR EACH ROW BEGIN
  SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'customers_audit es inmutable: DELETE prohibido.';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `medicines`
--

DROP TABLE IF EXISTS `medicines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicines` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sale_price` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `medicines_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicines`
--

LOCK TABLES `medicines` WRITE;
/*!40000 ALTER TABLE `medicines` DISABLE KEYS */;
INSERT INTO `medicines` VALUES (1,54,'Paracetamol 500 mg','Paracetamol 500 mg presentación 265 unidades',31.22),(2,81,'Ibuprofeno 400 mg','Ibuprofeno 400 mg presentación 274 unidades',109.13),(3,41,'Amoxicilina 500 mg','Amoxicilina 500 mg presentación 412 unidades',99.89),(4,33,'Loratadina 10 mg','Loratadina 10 mg presentación 297 unidades',172.41),(5,7,'Omeprazol 20 mg','Omeprazol 20 mg presentación 213 unidades',24.30),(6,21,'Metformina 850 mg','Metformina 850 mg presentación 40 unidades',47.02),(7,33,'Atorvastatina 20 mg','Atorvastatina 20 mg presentación 253 unidades',168.60),(8,13,'Losartán 50 mg','Losartán 50 mg presentación 240 unidades',150.20),(9,34,'Salbutamol Inhalador','Salbutamol Inhalador presentación 194 unidades',75.26),(10,72,'Vitamina C 1000 mg','Vitamina C 1000 mg presentación 487 unidades',162.95),(11,45,'Paracetamol 500 mg','Paracetamol 500 mg presentación 20 unidades',85.29),(12,45,'Ibuprofeno 400 mg','Ibuprofeno 400 mg presentación 454 unidades',137.52),(13,78,'Amoxicilina 500 mg','Amoxicilina 500 mg presentación 111 unidades',117.49),(14,84,'Loratadina 10 mg','Loratadina 10 mg presentación 342 unidades',110.00),(15,100,'Omeprazol 20 mg','Omeprazol 20 mg presentación 155 unidades',74.25),(16,87,'Metformina 850 mg','Metformina 850 mg presentación 271 unidades',100.06),(17,95,'Atorvastatina 20 mg','Atorvastatina 20 mg presentación 238 unidades',178.48),(18,49,'Losartán 50 mg','Losartán 50 mg presentación 324 unidades',60.87),(19,81,'Salbutamol Inhalador','Salbutamol Inhalador presentación 499 unidades',33.25),(20,22,'Vitamina C 1000 mg','Vitamina C 1000 mg presentación 337 unidades',162.50),(21,44,'Paracetamol 500 mg','Paracetamol 500 mg presentación 225 unidades',128.10),(22,74,'Ibuprofeno 400 mg','Ibuprofeno 400 mg presentación 217 unidades',170.54),(23,10,'Amoxicilina 500 mg','Amoxicilina 500 mg presentación 50 unidades',36.59),(24,30,'Loratadina 10 mg','Loratadina 10 mg presentación 170 unidades',66.79),(25,38,'Omeprazol 20 mg','Omeprazol 20 mg presentación 373 unidades',57.16),(26,83,'Metformina 850 mg','Metformina 850 mg presentación 212 unidades',57.89),(27,57,'Atorvastatina 20 mg','Atorvastatina 20 mg presentación 409 unidades',173.25),(28,47,'Losartán 50 mg','Losartán 50 mg presentación 392 unidades',119.45),(29,58,'Salbutamol Inhalador','Salbutamol Inhalador presentación 221 unidades',37.63),(30,3,'Vitamina C 1000 mg','Vitamina C 1000 mg presentación 74 unidades',146.92),(31,85,'Paracetamol 500 mg','Paracetamol 500 mg presentación 138 unidades',188.39),(32,90,'Ibuprofeno 400 mg','Ibuprofeno 400 mg presentación 393 unidades',20.61),(33,22,'Amoxicilina 500 mg','Amoxicilina 500 mg presentación 213 unidades',25.09),(34,9,'Loratadina 10 mg','Loratadina 10 mg presentación 489 unidades',176.34),(35,71,'Omeprazol 20 mg','Omeprazol 20 mg presentación 37 unidades',10.14),(36,51,'Metformina 850 mg','Metformina 850 mg presentación 278 unidades',154.17),(37,11,'Atorvastatina 20 mg','Atorvastatina 20 mg presentación 63 unidades',56.18),(38,20,'Losartán 50 mg','Losartán 50 mg presentación 53 unidades',132.69),(39,50,'Salbutamol Inhalador','Salbutamol Inhalador presentación 168 unidades',49.72),(40,95,'Vitamina C 1000 mg','Vitamina C 1000 mg presentación 155 unidades',91.42),(41,17,'Paracetamol 500 mg','Paracetamol 500 mg presentación 77 unidades',107.71),(42,22,'Ibuprofeno 400 mg','Ibuprofeno 400 mg presentación 24 unidades',11.86),(43,46,'Amoxicilina 500 mg','Amoxicilina 500 mg presentación 450 unidades',183.48),(44,61,'Loratadina 10 mg','Loratadina 10 mg presentación 249 unidades',195.12),(45,70,'Omeprazol 20 mg','Omeprazol 20 mg presentación 488 unidades',58.12),(46,57,'Metformina 850 mg','Metformina 850 mg presentación 79 unidades',194.06),(47,90,'Atorvastatina 20 mg','Atorvastatina 20 mg presentación 286 unidades',39.52),(48,77,'Losartán 50 mg','Losartán 50 mg presentación 243 unidades',128.05),(49,82,'Salbutamol Inhalador','Salbutamol Inhalador presentación 459 unidades',114.98),(50,68,'Vitamina C 1000 mg','Vitamina C 1000 mg presentación 337 unidades',129.71),(51,40,'Paracetamol 500 mg','Paracetamol 500 mg presentación 475 unidades',72.70),(52,70,'Ibuprofeno 400 mg','Ibuprofeno 400 mg presentación 126 unidades',161.92),(53,57,'Amoxicilina 500 mg','Amoxicilina 500 mg presentación 167 unidades',76.33),(54,34,'Loratadina 10 mg','Loratadina 10 mg presentación 89 unidades',64.20),(55,1,'Omeprazol 20 mg','Omeprazol 20 mg presentación 277 unidades',164.00),(56,18,'Metformina 850 mg','Metformina 850 mg presentación 186 unidades',60.92),(57,69,'Atorvastatina 20 mg','Atorvastatina 20 mg presentación 14 unidades',139.12),(58,63,'Losartán 50 mg','Losartán 50 mg presentación 494 unidades',152.32),(59,39,'Salbutamol Inhalador','Salbutamol Inhalador presentación 14 unidades',154.34),(60,38,'Vitamina C 1000 mg','Vitamina C 1000 mg presentación 315 unidades',50.09),(61,1,'Paracetamol 500 mg','Paracetamol 500 mg presentación 290 unidades',77.86),(62,53,'Ibuprofeno 400 mg','Ibuprofeno 400 mg presentación 461 unidades',114.31),(63,51,'Amoxicilina 500 mg','Amoxicilina 500 mg presentación 137 unidades',36.84),(64,95,'Loratadina 10 mg','Loratadina 10 mg presentación 340 unidades',81.00),(65,49,'Omeprazol 20 mg','Omeprazol 20 mg presentación 122 unidades',56.28),(66,55,'Metformina 850 mg','Metformina 850 mg presentación 330 unidades',51.71),(67,98,'Atorvastatina 20 mg','Atorvastatina 20 mg presentación 419 unidades',182.44),(68,89,'Losartán 50 mg','Losartán 50 mg presentación 360 unidades',58.01),(69,84,'Salbutamol Inhalador','Salbutamol Inhalador presentación 390 unidades',108.73),(70,35,'Vitamina C 1000 mg','Vitamina C 1000 mg presentación 221 unidades',41.66),(71,9,'Paracetamol 500 mg','Paracetamol 500 mg presentación 103 unidades',31.64),(72,15,'Ibuprofeno 400 mg','Ibuprofeno 400 mg presentación 336 unidades',93.79),(73,58,'Amoxicilina 500 mg','Amoxicilina 500 mg presentación 149 unidades',141.59),(74,63,'Loratadina 10 mg','Loratadina 10 mg presentación 106 unidades',67.53),(75,20,'Omeprazol 20 mg','Omeprazol 20 mg presentación 35 unidades',194.09),(76,3,'Metformina 850 mg','Metformina 850 mg presentación 105 unidades',194.60),(77,37,'Atorvastatina 20 mg','Atorvastatina 20 mg presentación 147 unidades',29.38),(78,57,'Losartán 50 mg','Losartán 50 mg presentación 382 unidades',6.60),(79,12,'Salbutamol Inhalador','Salbutamol Inhalador presentación 87 unidades',7.87),(80,28,'Vitamina C 1000 mg','Vitamina C 1000 mg presentación 185 unidades',86.95),(81,64,'Paracetamol 500 mg','Paracetamol 500 mg presentación 200 unidades',95.42),(82,5,'Ibuprofeno 400 mg','Ibuprofeno 400 mg presentación 179 unidades',20.64),(83,97,'Amoxicilina 500 mg','Amoxicilina 500 mg presentación 497 unidades',33.49),(84,35,'Loratadina 10 mg','Loratadina 10 mg presentación 407 unidades',81.52),(85,70,'Omeprazol 20 mg','Omeprazol 20 mg presentación 250 unidades',40.41),(86,33,'Metformina 850 mg','Metformina 850 mg presentación 428 unidades',79.41),(87,2,'Atorvastatina 20 mg','Atorvastatina 20 mg presentación 72 unidades',195.05),(88,92,'Losartán 50 mg','Losartán 50 mg presentación 137 unidades',80.04),(89,57,'Salbutamol Inhalador','Salbutamol Inhalador presentación 136 unidades',148.84),(90,5,'Vitamina C 1000 mg','Vitamina C 1000 mg presentación 111 unidades',94.86),(91,99,'Paracetamol 500 mg','Paracetamol 500 mg presentación 58 unidades',106.62),(92,27,'Ibuprofeno 400 mg','Ibuprofeno 400 mg presentación 252 unidades',80.88),(93,40,'Amoxicilina 500 mg','Amoxicilina 500 mg presentación 489 unidades',68.00),(94,81,'Loratadina 10 mg','Loratadina 10 mg presentación 382 unidades',13.23),(95,71,'Omeprazol 20 mg','Omeprazol 20 mg presentación 276 unidades',28.82),(96,62,'Metformina 850 mg','Metformina 850 mg presentación 336 unidades',63.27),(97,47,'Atorvastatina 20 mg','Atorvastatina 20 mg presentación 464 unidades',15.16),(98,86,'Losartán 50 mg','Losartán 50 mg presentación 121 unidades',194.79),(99,31,'Salbutamol Inhalador','Salbutamol Inhalador presentación 334 unidades',89.66),(100,2,'Vitamina C 1000 mg','Vitamina C 1000 mg presentación 95 unidades',159.91);
/*!40000 ALTER TABLE `medicines` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `ai_medicines_audit` AFTER INSERT ON `medicines` FOR EACH ROW BEGIN
  SET @from_medicines_trigger = 1;
  INSERT INTO medicines_audit (medicine_id, action, before_data, after_data)
  VALUES (
    NEW.id,
    'INSERT',
    NULL,
    JSON_OBJECT(
      'id', NEW.id,
      'category_id', NEW.category_id,
      'name', NEW.name,
      'description', NEW.description,
      'sale_price', NEW.sale_price
    )
  );
  SET @from_medicines_trigger = NULL;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `au_medicines_audit` AFTER UPDATE ON `medicines` FOR EACH ROW BEGIN
  SET @from_medicines_trigger = 1;
  INSERT INTO medicines_audit (medicine_id, action, before_data, after_data)
  VALUES (
    NEW.id,
    'UPDATE',
    JSON_OBJECT(
      'id', OLD.id,
      'category_id', OLD.category_id,
      'name', OLD.name,
      'description', OLD.description,
      'sale_price', OLD.sale_price
    ),
    JSON_OBJECT(
      'id', NEW.id,
      'category_id', NEW.category_id,
      'name', NEW.name,
      'description', NEW.description,
      'sale_price', NEW.sale_price
    )
  );
  SET @from_medicines_trigger = NULL;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `ad_medicines_audit` AFTER DELETE ON `medicines` FOR EACH ROW BEGIN
  SET @from_medicines_trigger = 1;
  INSERT INTO medicines_audit (medicine_id, action, before_data, after_data)
  VALUES (
    OLD.id,
    'DELETE',
    JSON_OBJECT(
      'id', OLD.id,
      'category_id', OLD.category_id,
      'name', OLD.name,
      'description', OLD.description,
      'sale_price', OLD.sale_price
    ),
    NULL
  );
  SET @from_medicines_trigger = NULL;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `medicines_audit`
--

DROP TABLE IF EXISTS `medicines_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicines_audit` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `medicine_id` bigint NOT NULL,
  `action` enum('INSERT','UPDATE','DELETE') NOT NULL,
  `changed_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `changed_by` varchar(255) NOT NULL DEFAULT 'Admin',
  `before_data` json DEFAULT NULL,
  `after_data` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicines_audit`
--

LOCK TABLES `medicines_audit` WRITE;
/*!40000 ALTER TABLE `medicines_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicines_audit` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `bii_medicines_audit_guard_insert` BEFORE INSERT ON `medicines_audit` FOR EACH ROW BEGIN
  IF COALESCE(@from_medicines_trigger, 0) <> 1 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'INSERT en medicines_audit solo permitido desde triggers de medicines.';
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `biu_medicines_audit_block_update` BEFORE UPDATE ON `medicines_audit` FOR EACH ROW BEGIN
  SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'medicines_audit es inmutable: UPDATE prohibido.';
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `bid_medicines_audit_block_delete` BEFORE DELETE ON `medicines_audit` FOR EACH ROW BEGIN
  SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'medicines_audit es inmutable: DELETE prohibido.';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `medicines_prescriptions`
--

DROP TABLE IF EXISTS `medicines_prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicines_prescriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `medicine_id` int NOT NULL,
  `prescription_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `medicine_id` (`medicine_id`),
  KEY `prescription_id` (`prescription_id`),
  CONSTRAINT `medicines_prescriptions_ibfk_1` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`id`),
  CONSTRAINT `medicines_prescriptions_ibfk_2` FOREIGN KEY (`prescription_id`) REFERENCES `prescriptions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicines_prescriptions`
--

LOCK TABLES `medicines_prescriptions` WRITE;
/*!40000 ALTER TABLE `medicines_prescriptions` DISABLE KEYS */;
INSERT INTO `medicines_prescriptions` VALUES (1,34,47,4),(2,24,90,3),(3,42,59,4),(4,4,9,4),(5,15,45,4),(6,60,22,3),(7,99,45,5),(8,74,17,5),(9,14,52,1),(10,42,72,1),(11,39,69,4),(12,52,76,4),(13,31,80,2),(14,71,21,4),(15,50,9,3),(16,27,89,5),(17,56,56,5),(18,44,70,2),(19,23,85,1),(20,95,92,5),(21,63,15,5),(22,77,60,3),(23,72,13,4),(24,23,40,4),(25,9,77,1),(26,88,77,4),(27,42,64,1),(28,12,28,2),(29,75,97,1),(30,97,19,2),(31,58,69,3),(32,50,79,5),(33,58,26,2),(34,88,41,3),(35,73,87,3),(36,56,92,3),(37,12,75,1),(38,79,66,4),(39,17,38,1),(40,48,71,1),(41,1,91,5),(42,46,15,3),(43,4,31,4),(44,90,76,4),(45,81,41,4),(46,52,49,4),(47,70,28,2),(48,61,18,2),(49,72,50,3),(50,54,20,3),(51,86,17,2),(52,2,10,1),(53,19,93,4),(54,85,56,2),(55,11,18,4),(56,59,90,5),(57,55,80,2),(58,59,66,4),(59,71,58,4),(60,46,29,2),(61,55,78,1),(62,74,64,2),(63,92,65,3),(64,53,70,5),(65,47,5,1),(66,73,62,3),(67,15,75,4),(68,89,11,2),(69,94,94,5),(70,97,100,3),(71,60,67,1),(72,67,79,1),(73,32,61,1),(74,88,82,5),(75,75,40,5),(76,7,44,5),(77,100,2,4),(78,59,66,4),(79,74,94,3),(80,54,46,3),(81,38,22,1),(82,89,77,3),(83,94,73,3),(84,8,81,4),(85,75,22,5),(86,7,85,3),(87,95,80,1),(88,37,63,1),(89,17,65,1),(90,36,33,2),(91,79,36,3),(92,33,2,1),(93,78,23,5),(94,95,20,4),(95,48,23,3),(96,90,31,4),(97,24,68,1),(98,44,11,2),(99,77,20,4),(100,97,53,4);
/*!40000 ALTER TABLE `medicines_prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicines_sales`
--

DROP TABLE IF EXISTS `medicines_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicines_sales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sale_id` int NOT NULL,
  `medicine_id` int NOT NULL,
  `batch_id` int NOT NULL,
  `quantity` int NOT NULL,
  `unit_price` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sale_id` (`sale_id`),
  KEY `medicine_id` (`medicine_id`),
  KEY `batch_id` (`batch_id`),
  CONSTRAINT `medicines_sales_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`),
  CONSTRAINT `medicines_sales_ibfk_2` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`id`),
  CONSTRAINT `medicines_sales_ibfk_3` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicines_sales`
--

LOCK TABLES `medicines_sales` WRITE;
/*!40000 ALTER TABLE `medicines_sales` DISABLE KEYS */;
INSERT INTO `medicines_sales` VALUES (1,57,31,85,2,188.39),(2,7,27,38,3,173.25),(3,7,97,15,2,15.16),(4,61,60,52,3,50.09),(5,97,61,96,5,77.86),(6,88,30,49,4,146.92),(7,19,61,34,5,77.86),(8,37,56,78,4,60.92),(9,68,49,22,1,114.98),(10,56,13,74,5,117.49),(11,43,84,35,3,81.52),(12,33,35,97,5,10.14),(13,99,51,60,2,72.70),(14,67,94,43,3,13.23),(15,41,87,85,5,195.05),(16,2,2,87,1,109.13),(17,13,2,53,5,109.13),(18,45,14,32,2,110.00),(19,33,93,57,2,68.00),(20,80,5,33,1,24.30),(21,77,8,7,1,150.20),(22,12,91,14,5,106.62),(23,85,17,31,5,178.48),(24,90,24,52,2,66.79),(25,60,33,38,1,25.09),(26,36,82,59,4,20.64),(27,33,89,65,2,148.84),(28,36,100,10,1,159.91),(29,43,49,22,1,114.98),(30,23,34,91,4,176.34),(31,26,9,25,5,75.26),(32,83,51,23,4,72.70),(33,70,14,32,4,110.00),(34,57,28,44,3,119.45),(35,10,14,32,1,110.00),(36,33,74,94,4,67.53),(37,20,3,62,1,99.89),(38,35,5,75,2,24.30),(39,51,90,84,5,94.86),(40,62,1,21,4,31.22),(41,100,52,94,1,161.92),(42,1,70,15,4,41.66),(43,16,89,73,5,148.84),(44,43,69,46,3,108.73),(45,81,52,8,1,161.92),(46,11,47,40,4,39.52),(47,38,98,99,2,194.79),(48,50,23,48,2,36.59),(49,14,39,70,3,49.72),(50,81,63,9,4,36.84),(51,18,95,25,1,28.82),(52,93,25,46,5,57.16),(53,50,31,63,1,188.39),(54,64,70,15,5,41.66),(55,5,58,60,3,152.32),(56,93,8,7,1,150.20),(57,28,52,16,5,161.92),(58,69,59,87,2,154.34),(59,30,95,75,1,28.82),(60,63,5,33,1,24.30),(61,6,61,80,2,77.86),(62,2,90,8,2,94.86),(63,40,81,81,1,95.42),(64,22,59,79,5,154.34),(65,15,9,25,4,75.26),(66,9,77,18,2,29.38),(67,95,55,44,4,164.00),(68,88,42,17,5,11.86),(69,42,70,15,2,41.66),(70,76,98,6,2,194.79),(71,16,43,9,3,183.48),(72,54,19,97,2,33.25),(73,71,90,84,2,94.86),(74,75,57,11,1,139.12),(75,81,18,13,5,60.87),(76,3,49,22,4,114.98),(77,1,11,39,2,85.29),(78,84,12,91,5,137.52),(79,89,37,54,4,56.18),(80,27,89,12,2,148.84),(81,67,82,35,4,20.64),(82,23,53,31,5,76.33),(83,77,89,3,2,148.84),(84,79,92,37,1,80.88),(85,45,81,81,4,95.42),(86,25,1,21,1,31.22),(87,80,68,19,3,58.01),(88,65,98,70,2,194.79),(89,81,60,99,2,50.09),(90,25,36,7,1,154.17),(91,64,20,68,2,162.50),(92,7,21,5,3,128.10),(93,56,37,27,3,56.18),(94,98,43,79,4,183.48),(95,95,6,14,1,47.02),(96,21,69,23,1,108.73),(97,10,63,9,2,36.84),(98,76,93,57,5,68.00),(99,26,42,72,3,11.86),(100,15,30,100,3,146.92);
/*!40000 ALTER TABLE `medicines_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicines_sales_taxes`
--

DROP TABLE IF EXISTS `medicines_sales_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicines_sales_taxes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `medicines_sale_id` int NOT NULL,
  `tax_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `medicines_sale_id` (`medicines_sale_id`),
  KEY `tax_id` (`tax_id`),
  CONSTRAINT `medicines_sales_taxes_ibfk_1` FOREIGN KEY (`medicines_sale_id`) REFERENCES `medicines_sales` (`id`),
  CONSTRAINT `medicines_sales_taxes_ibfk_2` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicines_sales_taxes`
--

LOCK TABLES `medicines_sales_taxes` WRITE;
/*!40000 ALTER TABLE `medicines_sales_taxes` DISABLE KEYS */;
INSERT INTO `medicines_sales_taxes` VALUES (1,30,13),(2,31,95),(3,53,26),(4,49,29),(5,10,61),(6,75,63),(7,7,56),(8,19,28),(9,79,59),(10,23,50),(11,48,18),(12,59,93),(13,25,81),(14,46,35),(15,26,43),(16,17,5),(17,89,73),(18,8,36),(19,18,15),(20,60,59),(21,54,22),(22,98,44),(23,29,38),(24,78,21),(25,82,79),(26,22,74),(27,71,30),(28,12,53),(29,67,63),(30,28,76),(31,61,60),(32,36,2),(33,94,55),(34,95,32),(35,32,42),(36,56,75),(37,29,76),(38,20,74),(39,1,54),(40,6,6),(41,61,94),(42,99,65),(43,5,55),(44,68,51),(45,62,90),(46,13,58),(47,64,31),(48,11,72),(49,97,2),(50,89,94),(51,53,28),(52,17,46),(53,38,31),(54,83,12),(55,3,62),(56,86,40),(57,21,91),(58,59,74),(59,96,75),(60,4,59),(61,60,99),(62,18,91),(63,52,24),(64,48,81),(65,60,91),(66,82,1),(67,81,10),(68,50,89),(69,43,68),(70,5,38),(71,55,97),(72,35,90),(73,79,70),(74,74,27),(75,88,11),(76,80,43),(77,95,8),(78,66,87),(79,47,7),(80,15,50),(81,47,60),(82,80,6),(83,47,47),(84,23,83),(85,72,91),(86,9,72),(87,91,100),(88,27,18),(89,43,31),(90,70,15),(91,84,62),(92,95,97),(93,75,90),(94,27,97),(95,96,98),(96,29,42),(97,46,35),(98,65,88),(99,55,36),(100,7,9);
/*!40000 ALTER TABLE `medicines_sales_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sale_id` int NOT NULL,
  `method` enum('cash','card','transfer') NOT NULL,
  `amount_paid` decimal(14,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sale_id` (`sale_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,'card',821.69),(2,2,'card',875.87),(3,3,'card',564.16),(4,4,'card',556.11),(5,5,'transfer',234.01),(6,6,'transfer',1064.78),(7,7,'cash',798.21),(8,8,'card',868.46),(9,9,'transfer',972.28),(10,10,'transfer',778.45),(11,11,'transfer',646.16),(12,12,'transfer',479.94),(13,13,'card',569.61),(14,14,'card',547.02),(15,15,'transfer',529.74),(16,16,'card',208.04),(17,17,'transfer',776.22),(18,18,'transfer',480.04),(19,19,'cash',660.34),(20,20,'cash',346.74),(21,21,'card',665.74),(22,22,'cash',288.49),(23,23,'cash',123.02),(24,24,'card',94.45),(25,25,'cash',950.26),(26,26,'card',59.89),(27,27,'cash',977.30),(28,28,'cash',196.43),(29,29,'cash',316.42),(30,30,'card',211.56),(31,31,'cash',745.33),(32,32,'transfer',502.65),(33,33,'cash',611.90),(34,34,'card',592.97),(35,35,'cash',469.83),(36,36,'cash',319.57),(37,37,'transfer',186.56),(38,38,'transfer',1017.80),(39,39,'cash',58.54),(40,40,'card',756.41),(41,41,'card',612.34),(42,42,'transfer',364.50),(43,43,'transfer',798.90),(44,44,'cash',170.41),(45,45,'card',469.97),(46,46,'card',646.73),(47,47,'card',1028.54),(48,48,'card',823.21),(49,49,'transfer',1010.69),(50,50,'transfer',1184.13),(51,51,'cash',567.01),(52,52,'card',991.01),(53,53,'cash',1028.44),(54,54,'cash',493.75),(55,55,'cash',999.00),(56,56,'cash',398.89),(57,57,'transfer',248.92),(58,58,'transfer',374.48),(59,59,'card',819.89),(60,60,'card',601.89),(61,61,'transfer',401.28),(62,62,'card',962.85),(63,63,'transfer',486.68),(64,64,'transfer',467.85),(65,65,'card',364.56),(66,66,'card',33.95),(67,67,'transfer',1154.20),(68,68,'transfer',1101.83),(69,69,'transfer',415.45),(70,70,'transfer',902.20),(71,71,'transfer',107.44),(72,72,'card',989.08),(73,73,'card',324.77),(74,74,'card',819.01),(75,75,'transfer',34.69),(76,76,'cash',198.31),(77,77,'card',871.11),(78,78,'cash',761.54),(79,79,'card',46.19),(80,80,'cash',148.37),(81,81,'card',892.12),(82,82,'card',934.80),(83,83,'card',788.24),(84,84,'cash',852.22),(85,85,'cash',238.74),(86,86,'card',813.81),(87,87,'card',174.22),(88,88,'card',592.23),(89,89,'cash',424.60),(90,90,'transfer',1123.18),(91,91,'cash',213.68),(92,92,'transfer',572.43),(93,93,'transfer',499.83),(94,94,'card',63.26),(95,95,'cash',707.63),(96,96,'cash',357.64),(97,97,'transfer',707.87),(98,98,'transfer',140.48),(99,99,'transfer',317.29),(100,100,'cash',1061.73);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescriptions`
--

DROP TABLE IF EXISTS `prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `issue_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `prescriptions_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescriptions`
--

LOCK TABLES `prescriptions` WRITE;
/*!40000 ALTER TABLE `prescriptions` DISABLE KEYS */;
INSERT INTO `prescriptions` VALUES (1,77,'2025-09-02'),(2,4,'2025-03-07'),(3,22,'2025-03-30'),(4,79,'2025-05-16'),(5,80,'2024-12-15'),(6,57,'2024-10-24'),(7,30,'2025-01-12'),(8,88,'2025-04-11'),(9,20,'2024-11-14'),(10,15,'2024-10-29'),(11,32,'2025-08-15'),(12,19,'2025-02-26'),(13,2,'2025-03-26'),(14,89,'2024-11-27'),(15,40,'2025-05-20'),(16,61,'2024-10-13'),(17,43,'2025-01-17'),(18,95,'2025-07-04'),(19,28,'2025-01-14'),(20,70,'2025-06-26'),(21,97,'2025-02-11'),(22,71,'2025-06-06'),(23,80,'2024-12-13'),(24,89,'2025-09-24'),(25,86,'2024-10-11'),(26,49,'2025-07-27'),(27,85,'2025-06-28'),(28,6,'2025-02-09'),(29,22,'2024-11-01'),(30,37,'2025-01-12'),(31,90,'2025-08-14'),(32,35,'2024-10-29'),(33,60,'2025-09-02'),(34,2,'2024-11-05'),(35,50,'2025-09-05'),(36,35,'2025-09-06'),(37,85,'2025-04-04'),(38,14,'2024-10-11'),(39,38,'2025-08-30'),(40,50,'2025-01-28'),(41,49,'2025-06-19'),(42,91,'2024-11-21'),(43,41,'2025-06-07'),(44,77,'2025-07-01'),(45,12,'2025-01-05'),(46,26,'2025-06-15'),(47,59,'2025-07-16'),(48,92,'2024-10-13'),(49,6,'2025-02-05'),(50,68,'2025-03-07'),(51,43,'2025-06-09'),(52,51,'2024-12-21'),(53,3,'2025-03-28'),(54,88,'2025-03-31'),(55,46,'2025-08-18'),(56,39,'2025-01-30'),(57,65,'2025-02-20'),(58,8,'2025-08-18'),(59,33,'2025-04-18'),(60,4,'2025-07-13'),(61,36,'2025-01-25'),(62,20,'2025-03-25'),(63,51,'2025-09-03'),(64,18,'2024-11-15'),(65,94,'2025-04-15'),(66,67,'2025-09-14'),(67,79,'2025-08-18'),(68,88,'2025-01-26'),(69,54,'2025-02-02'),(70,74,'2024-12-19'),(71,55,'2025-03-10'),(72,78,'2025-03-19'),(73,58,'2025-07-06'),(74,17,'2025-01-15'),(75,84,'2024-12-11'),(76,75,'2025-07-06'),(77,88,'2025-01-13'),(78,18,'2025-03-09'),(79,89,'2025-09-28'),(80,68,'2024-12-10'),(81,56,'2024-12-15'),(82,84,'2025-07-18'),(83,21,'2025-03-13'),(84,9,'2025-07-14'),(85,69,'2024-12-01'),(86,24,'2025-03-13'),(87,19,'2024-10-17'),(88,98,'2025-03-14'),(89,53,'2025-04-30'),(90,39,'2025-05-16'),(91,96,'2025-08-24'),(92,95,'2025-02-19'),(93,20,'2025-01-06'),(94,14,'2024-12-08'),(95,24,'2024-10-15'),(96,98,'2025-08-11'),(97,79,'2025-02-15'),(98,78,'2025-07-19'),(99,79,'2025-01-28'),(100,77,'2025-01-28');
/*!40000 ALTER TABLE `prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `sale_date` datetime NOT NULL,
  `subtotal` decimal(14,2) NOT NULL,
  `total_taxes` decimal(14,2) NOT NULL,
  `total` decimal(14,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,30,'2024-11-11 00:00:00',690.50,131.19,821.69),(2,89,'2025-06-16 00:00:00',782.03,93.84,875.87),(3,78,'2025-01-04 00:00:00',474.08,90.08,564.16),(4,50,'2024-12-24 00:00:00',496.53,59.58,556.11),(5,25,'2024-10-09 00:00:00',234.01,0.00,234.01),(6,35,'2025-09-10 00:00:00',950.70,114.08,1064.78),(7,26,'2024-12-31 00:00:00',760.20,38.01,798.21),(8,57,'2025-09-19 00:00:00',868.46,0.00,868.46),(9,42,'2025-05-08 00:00:00',868.11,104.17,972.28),(10,52,'2025-03-11 00:00:00',778.45,0.00,778.45),(11,51,'2025-06-25 00:00:00',615.39,30.77,646.16),(12,14,'2025-02-04 00:00:00',457.09,22.85,479.94),(13,67,'2025-07-14 00:00:00',542.49,27.12,569.61),(14,50,'2025-01-07 00:00:00',520.97,26.05,547.02),(15,38,'2025-02-25 00:00:00',445.16,84.58,529.74),(16,60,'2025-08-11 00:00:00',174.82,33.22,208.04),(17,7,'2025-05-27 00:00:00',693.05,83.17,776.22),(18,83,'2025-01-02 00:00:00',457.18,22.86,480.04),(19,100,'2025-04-21 00:00:00',589.59,70.75,660.34),(20,53,'2025-01-01 00:00:00',330.23,16.51,346.74),(21,59,'2025-05-22 00:00:00',594.41,71.33,665.74),(22,12,'2024-12-04 00:00:00',257.58,30.91,288.49),(23,12,'2025-08-22 00:00:00',123.02,0.00,123.02),(24,47,'2025-06-20 00:00:00',94.45,0.00,94.45),(25,79,'2025-07-10 00:00:00',950.26,0.00,950.26),(26,49,'2025-03-22 00:00:00',53.47,6.42,59.89),(27,73,'2024-12-24 00:00:00',872.59,104.71,977.30),(28,19,'2025-05-04 00:00:00',187.08,9.35,196.43),(29,40,'2025-02-26 00:00:00',316.42,0.00,316.42),(30,81,'2025-01-13 00:00:00',188.89,22.67,211.56),(31,1,'2024-10-08 00:00:00',626.33,119.00,745.33),(32,59,'2025-07-07 00:00:00',502.65,0.00,502.65),(33,1,'2025-01-31 00:00:00',611.90,0.00,611.90),(34,28,'2025-05-22 00:00:00',592.97,0.00,592.97),(35,53,'2025-02-04 00:00:00',447.46,22.37,469.83),(36,71,'2024-10-27 00:00:00',285.33,34.24,319.57),(37,24,'2024-10-20 00:00:00',156.77,29.79,186.56),(38,19,'2025-03-20 00:00:00',855.29,162.51,1017.80),(39,12,'2025-01-01 00:00:00',58.54,0.00,58.54),(40,21,'2025-05-23 00:00:00',675.37,81.04,756.41),(41,96,'2024-11-18 00:00:00',583.18,29.16,612.34),(42,99,'2025-04-14 00:00:00',306.30,58.20,364.50),(43,9,'2025-02-28 00:00:00',760.86,38.04,798.90),(44,61,'2025-03-19 00:00:00',143.20,27.21,170.41),(45,68,'2025-09-23 00:00:00',419.62,50.35,469.97),(46,27,'2025-07-21 00:00:00',615.93,30.80,646.73),(47,94,'2025-06-06 00:00:00',979.56,48.98,1028.54),(48,93,'2025-05-08 00:00:00',691.77,131.44,823.21),(49,78,'2025-06-28 00:00:00',849.32,161.37,1010.69),(50,74,'2024-12-07 00:00:00',995.07,189.06,1184.13),(51,79,'2025-06-11 00:00:00',567.01,0.00,567.01),(52,24,'2025-09-29 00:00:00',884.83,106.18,991.01),(53,38,'2024-12-01 00:00:00',979.47,48.97,1028.44),(54,4,'2025-01-16 00:00:00',470.24,23.51,493.75),(55,79,'2024-10-25 00:00:00',999.00,0.00,999.00),(56,43,'2024-10-07 00:00:00',356.15,42.74,398.89),(57,82,'2025-02-09 00:00:00',209.18,39.74,248.92),(58,9,'2024-10-05 00:00:00',314.69,59.79,374.48),(59,15,'2025-04-22 00:00:00',688.98,130.91,819.89),(60,93,'2024-12-30 00:00:00',573.23,28.66,601.89),(61,25,'2025-09-11 00:00:00',337.21,64.07,401.28),(62,62,'2025-08-28 00:00:00',917.00,45.85,962.85),(63,18,'2025-07-03 00:00:00',486.68,0.00,486.68),(64,43,'2024-10-30 00:00:00',467.85,0.00,467.85),(65,67,'2025-07-13 00:00:00',306.35,58.21,364.56),(66,69,'2025-04-01 00:00:00',28.53,5.42,33.95),(67,9,'2024-10-17 00:00:00',969.92,184.28,1154.20),(68,44,'2025-07-21 00:00:00',983.78,118.05,1101.83),(69,78,'2025-03-08 00:00:00',395.67,19.78,415.45),(70,91,'2025-02-18 00:00:00',859.24,42.96,902.20),(71,53,'2025-04-10 00:00:00',95.93,11.51,107.44),(72,58,'2025-01-20 00:00:00',831.16,157.92,989.08),(73,68,'2025-04-11 00:00:00',309.30,15.47,324.77),(74,5,'2025-05-17 00:00:00',780.01,39.00,819.01),(75,65,'2025-06-15 00:00:00',34.69,0.00,34.69),(76,20,'2025-06-27 00:00:00',198.31,0.00,198.31),(77,40,'2024-11-21 00:00:00',777.78,93.33,871.11),(78,67,'2025-01-15 00:00:00',679.95,81.59,761.54),(79,93,'2025-10-02 00:00:00',46.19,0.00,46.19),(80,67,'2024-10-24 00:00:00',124.68,23.69,148.37),(81,88,'2025-03-21 00:00:00',849.64,42.48,892.12),(82,60,'2025-06-25 00:00:00',890.29,44.51,934.80),(83,99,'2024-10-13 00:00:00',662.39,125.85,788.24),(84,74,'2025-03-15 00:00:00',760.91,91.31,852.22),(85,26,'2025-07-01 00:00:00',200.62,38.12,238.74),(86,41,'2025-02-18 00:00:00',775.06,38.75,813.81),(87,20,'2024-10-09 00:00:00',165.92,8.30,174.22),(88,80,'2025-01-15 00:00:00',564.03,28.20,592.23),(89,70,'2025-02-17 00:00:00',356.81,67.79,424.60),(90,19,'2025-07-22 00:00:00',943.85,179.33,1123.18),(91,32,'2025-08-11 00:00:00',179.56,34.12,213.68),(92,44,'2024-12-07 00:00:00',545.17,27.26,572.43),(93,4,'2024-11-25 00:00:00',476.03,23.80,499.83),(94,50,'2025-04-20 00:00:00',63.26,0.00,63.26),(95,23,'2025-08-13 00:00:00',707.63,0.00,707.63),(96,46,'2025-10-02 00:00:00',319.32,38.32,357.64),(97,98,'2025-05-28 00:00:00',674.16,33.71,707.87),(98,73,'2024-11-20 00:00:00',140.48,0.00,140.48),(99,59,'2025-05-30 00:00:00',317.29,0.00,317.29),(100,30,'2025-08-13 00:00:00',947.97,113.76,1061.73);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `ai_sales_audit` AFTER INSERT ON `sales` FOR EACH ROW BEGIN
  SET @from_sales_trigger = 1;
  INSERT INTO sales_audit (sale_id, action, before_data, after_data)
  VALUES (
    NEW.id,
    'INSERT',
    NULL,
    JSON_OBJECT(
      'id', NEW.id,
      'customer_id', NEW.customer_id,
      'sale_date', NEW.sale_date,
      'subtotal', NEW.subtotal,
      'total_taxes', NEW.total_taxes,
      'total', NEW.total
    )
  );
  SET @from_sales_trigger = NULL;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `au_sales_audit` AFTER UPDATE ON `sales` FOR EACH ROW BEGIN
  SET @from_sales_trigger = 1;
  INSERT INTO sales_audit (sale_id, action, before_data, after_data)
  VALUES (
    NEW.id,
    'UPDATE',
    JSON_OBJECT(
      'id', OLD.id,
      'customer_id', OLD.customer_id,
      'sale_date', OLD.sale_date,
      'subtotal', OLD.subtotal,
      'total_taxes', OLD.total_taxes,
      'total', OLD.total
    ),
    JSON_OBJECT(
      'id', NEW.id,
      'customer_id', NEW.customer_id,
      'sale_date', NEW.sale_date,
      'subtotal', NEW.subtotal,
      'total_taxes', NEW.total_taxes,
      'total', NEW.total
    )
  );
  SET @from_sales_trigger = NULL;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `ad_sales_audit` AFTER DELETE ON `sales` FOR EACH ROW BEGIN
  SET @from_sales_trigger = 1;
  INSERT INTO sales_audit (sale_id, action, before_data, after_data)
  VALUES (
    OLD.id,
    'DELETE',
    JSON_OBJECT(
      'id', OLD.id,
      'customer_id', OLD.customer_id,
      'sale_date', OLD.sale_date,
      'subtotal', OLD.subtotal,
      'total_taxes', OLD.total_taxes,
      'total', OLD.total
    ),
    NULL
  );
  SET @from_sales_trigger = NULL;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sales_audit`
--

DROP TABLE IF EXISTS `sales_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_audit` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sale_id` bigint NOT NULL,
  `action` enum('INSERT','UPDATE','DELETE') NOT NULL,
  `changed_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `changed_by` varchar(255) NOT NULL DEFAULT 'Admin',
  `before_data` json DEFAULT NULL,
  `after_data` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_audit`
--

LOCK TABLES `sales_audit` WRITE;
/*!40000 ALTER TABLE `sales_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_audit` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `bii_sales_audit_guard_insert` BEFORE INSERT ON `sales_audit` FOR EACH ROW BEGIN
  IF COALESCE(@from_sales_trigger, 0) <> 1 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'INSERT en sales_audit solo permitido desde triggers de sales.';
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `biu_sales_audit_block_update` BEFORE UPDATE ON `sales_audit` FOR EACH ROW BEGIN
  SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'sales_audit es inmutable: UPDATE prohibido.';
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
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `bid_sales_audit_block_delete` BEFORE DELETE ON `sales_audit` FOR EACH ROW BEGIN
  SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'sales_audit es inmutable: DELETE prohibido.';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'PharmaPlus Ltda. #1','3009581776','supplier1@example.com','Calle 85 #96-72, Bogotá'),(2,'Farmacéutica del Caribe #2','3775742531','supplier2@example.com','Calle 39 #176-14, Bogotá'),(3,'Droguería Central #3','3086641903','supplier3@example.com','Calle 36 #164-42, Bogotá'),(4,'MediLife Corp. #4','3336012883','supplier4@example.com','Calle 25 #39-67, Bogotá'),(5,'BioPharma Colombia #5','3077779646','supplier5@example.com','Calle 85 #82-88, Bogotá'),(6,'Distribuidora Salud Global #6','3921427068','supplier6@example.com','Calle 84 #128-38, Bogotá'),(7,'MediLife Corp. #7','3537788043','supplier7@example.com','Calle 50 #189-5, Bogotá'),(8,'Farmacéutica del Caribe #8','3904186247','supplier8@example.com','Calle 44 #186-92, Bogotá'),(9,'BioPharma Colombia #9','3879969688','supplier9@example.com','Calle 82 #122-86, Bogotá'),(10,'SaludVital S.A. #10','3646036433','supplier10@example.com','Calle 22 #169-72, Bogotá'),(11,'Distribuidora Salud Global #11','3372637507','supplier11@example.com','Calle 61 #33-95, Bogotá'),(12,'MediLife Corp. #12','3924071377','supplier12@example.com','Calle 88 #86-84, Bogotá'),(13,'PharmaPlus Ltda. #13','3286960666','supplier13@example.com','Calle 29 #191-40, Bogotá'),(14,'PharmaCol #14','3427235796','supplier14@example.com','Calle 34 #150-38, Bogotá'),(15,'Droguería Central #15','3158894293','supplier15@example.com','Calle 7 #163-75, Bogotá'),(16,'Farmacéutica del Caribe #16','3792194801','supplier16@example.com','Calle 61 #50-65, Bogotá'),(17,'PharmaPlus Ltda. #17','3877403346','supplier17@example.com','Calle 68 #77-53, Bogotá'),(18,'Laboratorios Genéricos S.A.S. #18','3193304606','supplier18@example.com','Calle 26 #88-53, Bogotá'),(19,'Farmacéutica del Caribe #19','3583402902','supplier19@example.com','Calle 41 #184-24, Bogotá'),(20,'PharmaPlus Ltda. #20','3626580596','supplier20@example.com','Calle 81 #46-41, Bogotá'),(21,'Laboratorios Genéricos S.A.S. #21','3008584194','supplier21@example.com','Calle 36 #54-98, Bogotá'),(22,'Distribuidora Salud Global #22','3733658100','supplier22@example.com','Calle 63 #196-12, Bogotá'),(23,'Distribuidora Salud Global #23','3788276470','supplier23@example.com','Calle 82 #110-52, Bogotá'),(24,'PharmaCol #24','3617430982','supplier24@example.com','Calle 1 #10-69, Bogotá'),(25,'BioPharma Colombia #25','3937259602','supplier25@example.com','Calle 2 #83-97, Bogotá'),(26,'Laboratorios Sanarte #26','3241300582','supplier26@example.com','Calle 87 #2-81, Bogotá'),(27,'BioPharma Colombia #27','3286777230','supplier27@example.com','Calle 40 #34-14, Bogotá'),(28,'PharmaCol #28','3646135759','supplier28@example.com','Calle 22 #17-6, Bogotá'),(29,'MediLife Corp. #29','3378649174','supplier29@example.com','Calle 94 #134-77, Bogotá'),(30,'Laboratorios Sanarte #30','3438275695','supplier30@example.com','Calle 88 #35-44, Bogotá'),(31,'Droguería Central #31','3454161264','supplier31@example.com','Calle 22 #104-3, Bogotá'),(32,'BioPharma Colombia #32','3283201267','supplier32@example.com','Calle 28 #188-3, Bogotá'),(33,'Farmacéutica del Caribe #33','3643835093','supplier33@example.com','Calle 16 #94-92, Bogotá'),(34,'Laboratorios Genéricos S.A.S. #34','3485291430','supplier34@example.com','Calle 99 #137-80, Bogotá'),(35,'Laboratorios Genéricos S.A.S. #35','3761804641','supplier35@example.com','Calle 85 #28-84, Bogotá'),(36,'Laboratorios Genéricos S.A.S. #36','3062942630','supplier36@example.com','Calle 54 #114-49, Bogotá'),(37,'PharmaPlus Ltda. #37','3705240244','supplier37@example.com','Calle 61 #180-20, Bogotá'),(38,'BioPharma Colombia #38','3881156104','supplier38@example.com','Calle 39 #108-85, Bogotá'),(39,'PharmaPlus Ltda. #39','3849729340','supplier39@example.com','Calle 35 #160-78, Bogotá'),(40,'Distribuidora Salud Global #40','3532760168','supplier40@example.com','Calle 66 #185-80, Bogotá'),(41,'PharmaPlus Ltda. #41','3362912813','supplier41@example.com','Calle 14 #128-26, Bogotá'),(42,'Farmacéutica del Caribe #42','3255412305','supplier42@example.com','Calle 67 #52-46, Bogotá'),(43,'PharmaCol #43','3373690622','supplier43@example.com','Calle 6 #141-64, Bogotá'),(44,'BioPharma Colombia #44','3889064202','supplier44@example.com','Calle 43 #61-1, Bogotá'),(45,'Laboratorios Genéricos S.A.S. #45','3852493219','supplier45@example.com','Calle 15 #147-86, Bogotá'),(46,'Droguería Central #46','3192511336','supplier46@example.com','Calle 66 #20-93, Bogotá'),(47,'PharmaPlus Ltda. #47','3324878226','supplier47@example.com','Calle 59 #76-34, Bogotá'),(48,'Droguería Central #48','3062674515','supplier48@example.com','Calle 23 #11-38, Bogotá'),(49,'SaludVital S.A. #49','3866246354','supplier49@example.com','Calle 55 #190-15, Bogotá'),(50,'PharmaPlus Ltda. #50','3971769891','supplier50@example.com','Calle 2 #36-85, Bogotá'),(51,'Distribuidora Salud Global #51','3426998314','supplier51@example.com','Calle 57 #160-35, Bogotá'),(52,'PharmaPlus Ltda. #52','3476749933','supplier52@example.com','Calle 24 #30-52, Bogotá'),(53,'PharmaCol #53','3585560602','supplier53@example.com','Calle 50 #177-62, Bogotá'),(54,'PharmaCol #54','3833798082','supplier54@example.com','Calle 15 #34-90, Bogotá'),(55,'Laboratorios Genéricos S.A.S. #55','3202740017','supplier55@example.com','Calle 54 #152-62, Bogotá'),(56,'Farmacéutica del Caribe #56','3868351152','supplier56@example.com','Calle 24 #157-49, Bogotá'),(57,'SaludVital S.A. #57','3781483456','supplier57@example.com','Calle 88 #187-17, Bogotá'),(58,'Droguería Central #58','3622894776','supplier58@example.com','Calle 53 #113-6, Bogotá'),(59,'PharmaPlus Ltda. #59','3336272037','supplier59@example.com','Calle 2 #181-87, Bogotá'),(60,'Laboratorios Sanarte #60','3984757843','supplier60@example.com','Calle 86 #87-67, Bogotá'),(61,'Laboratorios Sanarte #61','3882597897','supplier61@example.com','Calle 56 #170-94, Bogotá'),(62,'BioPharma Colombia #62','3616800713','supplier62@example.com','Calle 85 #174-83, Bogotá'),(63,'PharmaCol #63','3191915467','supplier63@example.com','Calle 2 #165-21, Bogotá'),(64,'Laboratorios Sanarte #64','3609318729','supplier64@example.com','Calle 22 #20-97, Bogotá'),(65,'Droguería Central #65','3415041494','supplier65@example.com','Calle 43 #72-7, Bogotá'),(66,'Laboratorios Sanarte #66','3287352484','supplier66@example.com','Calle 52 #61-11, Bogotá'),(67,'Droguería Central #67','3568517846','supplier67@example.com','Calle 12 #128-58, Bogotá'),(68,'SaludVital S.A. #68','3159344540','supplier68@example.com','Calle 96 #168-3, Bogotá'),(69,'PharmaPlus Ltda. #69','3517917892','supplier69@example.com','Calle 5 #143-71, Bogotá'),(70,'Laboratorios Genéricos S.A.S. #70','3116110305','supplier70@example.com','Calle 66 #144-27, Bogotá'),(71,'Droguería Central #71','3437095875','supplier71@example.com','Calle 7 #58-59, Bogotá'),(72,'SaludVital S.A. #72','3718937865','supplier72@example.com','Calle 92 #169-47, Bogotá'),(73,'Droguería Central #73','3142634721','supplier73@example.com','Calle 98 #169-29, Bogotá'),(74,'Laboratorios Genéricos S.A.S. #74','3436958243','supplier74@example.com','Calle 82 #75-71, Bogotá'),(75,'Laboratorios Sanarte #75','3472783791','supplier75@example.com','Calle 6 #43-64, Bogotá'),(76,'Distribuidora Salud Global #76','3917865417','supplier76@example.com','Calle 14 #66-79, Bogotá'),(77,'BioPharma Colombia #77','3243025778','supplier77@example.com','Calle 51 #56-59, Bogotá'),(78,'BioPharma Colombia #78','3916669584','supplier78@example.com','Calle 14 #194-54, Bogotá'),(79,'Laboratorios Genéricos S.A.S. #79','3813067274','supplier79@example.com','Calle 99 #116-59, Bogotá'),(80,'Farmacéutica del Caribe #80','3643258817','supplier80@example.com','Calle 64 #2-68, Bogotá'),(81,'Laboratorios Genéricos S.A.S. #81','3708261353','supplier81@example.com','Calle 75 #124-66, Bogotá'),(82,'Distribuidora Salud Global #82','3883913368','supplier82@example.com','Calle 94 #33-14, Bogotá'),(83,'PharmaCol #83','3846399642','supplier83@example.com','Calle 65 #99-54, Bogotá'),(84,'Farmacéutica del Caribe #84','3885164755','supplier84@example.com','Calle 36 #102-44, Bogotá'),(85,'MediLife Corp. #85','3573237608','supplier85@example.com','Calle 18 #106-78, Bogotá'),(86,'Laboratorios Sanarte #86','3386266549','supplier86@example.com','Calle 92 #189-71, Bogotá'),(87,'BioPharma Colombia #87','3254518395','supplier87@example.com','Calle 80 #183-38, Bogotá'),(88,'SaludVital S.A. #88','3863225862','supplier88@example.com','Calle 91 #167-23, Bogotá'),(89,'Laboratorios Sanarte #89','3696408662','supplier89@example.com','Calle 91 #30-98, Bogotá'),(90,'SaludVital S.A. #90','3719059269','supplier90@example.com','Calle 75 #147-86, Bogotá'),(91,'PharmaCol #91','3869957402','supplier91@example.com','Calle 37 #109-2, Bogotá'),(92,'Laboratorios Sanarte #92','3131423996','supplier92@example.com','Calle 49 #38-7, Bogotá'),(93,'Laboratorios Genéricos S.A.S. #93','3255479152','supplier93@example.com','Calle 97 #42-37, Bogotá'),(94,'MediLife Corp. #94','3182040738','supplier94@example.com','Calle 89 #76-27, Bogotá'),(95,'Laboratorios Sanarte #95','3047017692','supplier95@example.com','Calle 58 #27-79, Bogotá'),(96,'Laboratorios Sanarte #96','3287524435','supplier96@example.com','Calle 31 #131-90, Bogotá'),(97,'MediLife Corp. #97','3881788191','supplier97@example.com','Calle 49 #100-54, Bogotá'),(98,'SaludVital S.A. #98','3701902651','supplier98@example.com','Calle 2 #191-33, Bogotá'),(99,'BioPharma Colombia #99','3798433377','supplier99@example.com','Calle 29 #163-91, Bogotá'),(100,'SaludVital S.A. #100','3964296204','supplier100@example.com','Calle 93 #50-38, Bogotá');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `rate` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxes`
--

LOCK TABLES `taxes` WRITE;
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
INSERT INTO `taxes` VALUES (1,'IVA 5%',5.00),(2,'IVA 12%',12.00),(3,'IVA 19%',19.00),(4,'Exento',0.00),(5,'IVA 5%',5.00),(6,'IVA 12%',12.00),(7,'IVA 19%',19.00),(8,'Exento',0.00),(9,'IVA 5%',5.00),(10,'IVA 12%',12.00),(11,'IVA 19%',19.00),(12,'Exento',0.00),(13,'IVA 5%',5.00),(14,'IVA 12%',12.00),(15,'IVA 19%',19.00),(16,'Exento',0.00),(17,'IVA 5%',5.00),(18,'IVA 12%',12.00),(19,'IVA 19%',19.00),(20,'Exento',0.00),(21,'IVA 5%',5.00),(22,'IVA 12%',12.00),(23,'IVA 19%',19.00),(24,'Exento',0.00),(25,'IVA 5%',5.00),(26,'IVA 12%',12.00),(27,'IVA 19%',19.00),(28,'Exento',0.00),(29,'IVA 5%',5.00),(30,'IVA 12%',12.00),(31,'IVA 19%',19.00),(32,'Exento',0.00),(33,'IVA 5%',5.00),(34,'IVA 12%',12.00),(35,'IVA 19%',19.00),(36,'Exento',0.00),(37,'IVA 5%',5.00),(38,'IVA 12%',12.00),(39,'IVA 19%',19.00),(40,'Exento',0.00),(41,'IVA 5%',5.00),(42,'IVA 12%',12.00),(43,'IVA 19%',19.00),(44,'Exento',0.00),(45,'IVA 5%',5.00),(46,'IVA 12%',12.00),(47,'IVA 19%',19.00),(48,'Exento',0.00),(49,'IVA 5%',5.00),(50,'IVA 12%',12.00),(51,'IVA 19%',19.00),(52,'Exento',0.00),(53,'IVA 5%',5.00),(54,'IVA 12%',12.00),(55,'IVA 19%',19.00),(56,'Exento',0.00),(57,'IVA 5%',5.00),(58,'IVA 12%',12.00),(59,'IVA 19%',19.00),(60,'Exento',0.00),(61,'IVA 5%',5.00),(62,'IVA 12%',12.00),(63,'IVA 19%',19.00),(64,'Exento',0.00),(65,'IVA 5%',5.00),(66,'IVA 12%',12.00),(67,'IVA 19%',19.00),(68,'Exento',0.00),(69,'IVA 5%',5.00),(70,'IVA 12%',12.00),(71,'IVA 19%',19.00),(72,'Exento',0.00),(73,'IVA 5%',5.00),(74,'IVA 12%',12.00),(75,'IVA 19%',19.00),(76,'Exento',0.00),(77,'IVA 5%',5.00),(78,'IVA 12%',12.00),(79,'IVA 19%',19.00),(80,'Exento',0.00),(81,'IVA 5%',5.00),(82,'IVA 12%',12.00),(83,'IVA 19%',19.00),(84,'Exento',0.00),(85,'IVA 5%',5.00),(86,'IVA 12%',12.00),(87,'IVA 19%',19.00),(88,'Exento',0.00),(89,'IVA 5%',5.00),(90,'IVA 12%',12.00),(91,'IVA 19%',19.00),(92,'Exento',0.00),(93,'IVA 5%',5.00),(94,'IVA 12%',12.00),(95,'IVA 19%',19.00),(96,'Exento',0.00),(97,'IVA 5%',5.00),(98,'IVA 12%',12.00),(99,'IVA 19%',19.00),(100,'Exento',0.00);
/*!40000 ALTER TABLE `taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'Farma_rapid'
--

--
-- Dumping routines for database 'Farma_rapid'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_customers_equal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_customers_equal`()
SELECT * 
    FROM customers
    WHERE id = 5 ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_customers_like` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_customers_like`()
SELECT * 
    FROM customers
    WHERE name LIKE 'A%' ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_customers_sales_join` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_customers_sales_join`()
SELECT c.name AS cliente,
           s.sale_date,
           s.total
    FROM customers c
    INNER JOIN sales s ON c.id = s.customer_id ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_customers_sales_where` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_customers_sales_where`()
SELECT c.name AS cliente, s.sale_date, s.total
FROM customers c
JOIN sales s ON c.id = s.customer_id ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_sales_between` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_sales_between`()
SELECT 
      id, 
      sale_date, 
      total
  FROM sales
  WHERE total BETWEEN 30 AND 1200
  ORDER BY total ;;
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

-- Dump completed on 2025-10-16 20:17:24
