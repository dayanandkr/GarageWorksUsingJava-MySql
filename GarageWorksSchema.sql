-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: garageworks
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('id','password');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_items`
--

DROP TABLE IF EXISTS `bill_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_items` (
  `bill_id` int NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `s_name` varchar(45) NOT NULL,
  `s_price` int NOT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_items`
--

LOCK TABLES `bill_items` WRITE;
/*!40000 ALTER TABLE `bill_items` DISABLE KEYS */;
INSERT INTO `bill_items` VALUES (1,2,'Boomper WagneR',5000),(2,2,'Boomper WagneR',5000),(3,5,'Boomper WagneR',5000),(4,5,'Boomper WagneR',5000),(5,5,'Boomper WagneR',5000),(11,2,'Break',70),(12,2,'Engine Oil 5kg Castrol',1800),(13,14,'Break',70),(14,14,'Kunchi',800),(15,14,'Kunchi',800),(17,1,'Boomper WagneR',5000),(18,1,'Boomper WagneR',5000),(19,1,'Break',70),(20,14,'Engine Oil 5kg Castrol',1800),(21,14,'Engine Oil 5kg Castrol',1800),(22,14,'Engine Oil 5kg Castrol',1800),(23,1,'Kunchi',800),(24,1,'Sockers',700),(25,1,'Kunchi',800),(26,13,'Gromme',750),(27,13,'Boomper WagneR',5000),(28,14,'Boomper WagneR',5000),(30,13,'Boomper WagneR',5000),(31,13,'Engine Oil 5kg Castrol',1800),(32,13,'Break',70),(33,13,'Kunchi',800),(34,15,'Engine Oil 5kg Castrol',1800),(35,13,'Boomper WagneR',5000),(36,16,'Break',70),(37,15,'Gromme',750),(38,15,'Socker',700),(39,16,'Boomper WagneR',5000),(40,16,'Boomper WagneR',5000),(41,1,'Break',70),(42,17,'Engine Oil 5kg Castrol',1800),(43,19,'Boomper WagneR',5000),(44,19,'Kunchi',800),(45,19,'Socker',700),(46,18,'Boomper WagneR',5000),(47,18,'Gromme',750),(48,21,'Jada_Faltu',24),(49,21,'Gromme',750),(50,21,'Socker',700);
/*!40000 ALTER TABLE `bill_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bills` (
  `bill_id` int NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `v_nm` varchar(45) NOT NULL,
  `v_no` varchar(45) NOT NULL,
  `amount` int NOT NULL,
  `bill_date` date NOT NULL,
  `payment_mode` varchar(45) NOT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(45) NOT NULL,
  `v_no` varchar(45) NOT NULL,
  `v_name` varchar(45) NOT NULL,
  `jobs` varchar(45) NOT NULL,
  `entry_date` date NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Aman Sharma','9540856718','Jalpura,Haldoni,Greater nodia','Range Rover','UK07HU7928','Seat cover','2021-12-06','working'),(2,'Rohit Kumar','9876185247','Habibpur','Splender','DL07BC7824','Service,Sockers','2021-12-08','working');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spare_parts`
--

DROP TABLE IF EXISTS `spare_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spare_parts` (
  `name` varchar(60) NOT NULL,
  `price` int NOT NULL,
  `Qty` int NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spare_parts`
--

LOCK TABLES `spare_parts` WRITE;
/*!40000 ALTER TABLE `spare_parts` DISABLE KEYS */;
INSERT INTO `spare_parts` VALUES ('Boomper WagneR',5000,75),('Break',70,794),('Engine Oil 5kg Castrol',1800,42),('Gromme',750,66),('Jada_Faltu',24,884),('Kunchi',800,14),('Socker',700,76);
/*!40000 ALTER TABLE `spare_parts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-10 13:20:34
