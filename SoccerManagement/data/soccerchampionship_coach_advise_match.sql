-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: soccerchampionship
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `coach_advise_match`
--

DROP TABLE IF EXISTS `coach_advise_match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coach_advise_match` (
  `CID` decimal(6,0) NOT NULL,
  `MDate` date NOT NULL,
  `MLocation` varchar(25) NOT NULL,
  `MTime` char(5) NOT NULL,
  `Teamname` varchar(20) NOT NULL,
  PRIMARY KEY (`CID`,`MTime`,`MLocation`,`MDate`,`Teamname`),
  KEY `Teamname` (`Teamname`),
  KEY `MTime` (`MTime`,`MLocation`,`MDate`),
  CONSTRAINT `coach_advise_match_ibfk_1` FOREIGN KEY (`Teamname`) REFERENCES `team` (`Teamname`) ON DELETE CASCADE,
  CONSTRAINT `coach_advise_match_ibfk_2` FOREIGN KEY (`CID`) REFERENCES `coach` (`CID`) ON DELETE CASCADE,
  CONSTRAINT `coach_advise_match_ibfk_3` FOREIGN KEY (`MTime`, `MLocation`, `MDate`) REFERENCES `game` (`MTime`, `MLocation`, `MDate`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach_advise_match`
--

LOCK TABLES `coach_advise_match` WRITE;
/*!40000 ALTER TABLE `coach_advise_match` DISABLE KEYS */;
INSERT INTO `coach_advise_match` VALUES (123948,'2020-05-01','BCstadium','14:23','Roar'),(111143,'2020-05-01','BCstadium','14:23','Saint'),(123948,'2021-05-01','NYstadium','10:00','Saint');
/*!40000 ALTER TABLE `coach_advise_match` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-15 23:15:17
