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
-- Table structure for table `team_sponsors_match`
--

DROP TABLE IF EXISTS `team_sponsors_match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_sponsors_match` (
  `Teamname` varchar(20) NOT NULL,
  `CompanyName` varchar(20) NOT NULL,
  `MDate` date NOT NULL,
  `MLocation` varchar(25) NOT NULL,
  `MTime` char(5) NOT NULL,
  PRIMARY KEY (`Teamname`,`CompanyName`,`MTime`,`MLocation`,`MDate`),
  KEY `CompanyName` (`CompanyName`),
  KEY `MTime` (`MTime`,`MLocation`,`MDate`),
  CONSTRAINT `team_sponsors_match_ibfk_1` FOREIGN KEY (`Teamname`) REFERENCES `team` (`Teamname`) ON DELETE CASCADE,
  CONSTRAINT `team_sponsors_match_ibfk_2` FOREIGN KEY (`CompanyName`) REFERENCES `sponsor` (`CompanyName`) ON DELETE CASCADE,
  CONSTRAINT `team_sponsors_match_ibfk_3` FOREIGN KEY (`MTime`, `MLocation`, `MDate`) REFERENCES `game` (`MTime`, `MLocation`, `MDate`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_sponsors_match`
--

LOCK TABLES `team_sponsors_match` WRITE;
/*!40000 ALTER TABLE `team_sponsors_match` DISABLE KEYS */;
INSERT INTO `team_sponsors_match` VALUES ('Roar','Rob coffin','2020-05-01','BCstadium','14:23'),('Roar','Weber','2020-05-01','BCstadium','14:23');
/*!40000 ALTER TABLE `team_sponsors_match` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-15 23:15:16
