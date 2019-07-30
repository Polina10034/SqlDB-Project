-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: recordstudio
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `musicians_instrument`
--

DROP TABLE IF EXISTS `musicians_instrument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `musicians_instrument` (
  `snum` int(11) NOT NULL AUTO_INCREMENT,
  `i_id` int(11) NOT NULL,
  `im_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  PRIMARY KEY (`snum`),
  KEY `fk_instrument_manufacturer1_idx` (`im_id`),
  KEY `m_id_idx` (`m_id`),
  CONSTRAINT `fk_instrument_manufacturer1` FOREIGN KEY (`im_id`) REFERENCES `manufacturer` (`im_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `m_id` FOREIGN KEY (`m_id`) REFERENCES `people` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musicians_instrument`
--

LOCK TABLES `musicians_instrument` WRITE;
/*!40000 ALTER TABLE `musicians_instrument` DISABLE KEYS */;
INSERT INTO `musicians_instrument` VALUES (1,1,1,2),(2,1,3,4),(3,1,10,6),(4,1,1,5),(5,1,1,8),(6,1,1,9),(7,2,1,9),(8,3,2,9),(9,4,6,9),(10,8,3,1),(11,7,5,5),(12,6,2,10),(13,5,3,1);
/*!40000 ALTER TABLE `musicians_instrument` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-30 16:53:30
