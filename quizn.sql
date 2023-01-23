-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: task1schoolmarking
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `Acc_Id` int NOT NULL AUTO_INCREMENT,
  `Acc_Name` varchar(100) DEFAULT NULL,
  `Acc_Status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Acc_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam` (
  `EID` int NOT NULL AUTO_INCREMENT,
  `ExamName` varchar(45) DEFAULT NULL,
  `LastUpdate` datetime DEFAULT NULL,
  `Status` enum('save','publish') DEFAULT NULL,
  `ExamDate` datetime DEFAULT NULL,
  `TimeDuration` datetime DEFAULT NULL,
  `TId` int DEFAULT NULL,
  PRIMARY KEY (`EID`),
  KEY `TId_idx` (`TId`),
  CONSTRAINT `TId` FOREIGN KEY (`TId`) REFERENCES `login` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examname`
--

DROP TABLE IF EXISTS `examname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examname` (
  `exam_Id` int NOT NULL AUTO_INCREMENT,
  `exam_Name` varchar(100) DEFAULT NULL,
  `teachers_Id` int DEFAULT NULL,
  PRIMARY KEY (`exam_Id`),
  KEY `teachers_Id` (`teachers_Id`),
  CONSTRAINT `examname_ibfk_1` FOREIGN KEY (`teachers_Id`) REFERENCES `account` (`Acc_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examname`
--

LOCK TABLES `examname` WRITE;
/*!40000 ALTER TABLE `examname` DISABLE KEYS */;
/*!40000 ALTER TABLE `examname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examnew`
--

DROP TABLE IF EXISTS `examnew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examnew` (
  `id` int NOT NULL AUTO_INCREMENT,
  `examid` int DEFAULT NULL,
  `question` varchar(45) DEFAULT NULL,
  `answer1` varchar(45) DEFAULT NULL,
  `answer2` varchar(45) DEFAULT NULL,
  `answer3` varchar(45) DEFAULT NULL,
  `answer4` varchar(45) DEFAULT NULL,
  `correctanswer` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_idx` (`examid`),
  CONSTRAINT `exam` FOREIGN KEY (`examid`) REFERENCES `exam` (`EID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examnew`
--

LOCK TABLES `examnew` WRITE;
/*!40000 ALTER TABLE `examnew` DISABLE KEYS */;
INSERT INTO `examnew` VALUES (1,NULL,'messi is ?','football player','baller','batman','basketball player','foot ball player'),(2,NULL,'123','sakila','3','4','5','5'),(3,NULL,'12','1','2','3','4','1'),(4,NULL,'name ?','sakila','baller','batman','5','sakila'),(5,NULL,'12','1','2','3','4','5'),(6,NULL,'123','sakila','baller','batman','basketball player','sakila');
/*!40000 ALTER TABLE `examnew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `jobRole` enum('student','teacher') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'saki@g.com','1234','teacher'),(2,'gg@gmail.com','1225','student');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `ID` int NOT NULL,
  `Question` varchar(45) DEFAULT NULL,
  `Answer1` varchar(45) DEFAULT NULL,
  `Answer2` varchar(45) DEFAULT NULL,
  `Answer3` varchar(45) DEFAULT NULL,
  `Answer4` varchar(45) DEFAULT NULL,
  `CorrectAnswer` varchar(45) DEFAULT NULL,
  `EID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `EID_idx` (`EID`),
  CONSTRAINT `EID` FOREIGN KEY (`EID`) REFERENCES `exam` (`EID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-22 21:38:25
