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
-- Table structure for table `musicians_song`
--

DROP TABLE IF EXISTS `musicians_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `musicians_song` (
  `s_id` int(10) NOT NULL,
  `m_id` int(10) NOT NULL,
  `join_m_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_id`,`m_id`),
  KEY `musician_idx` (`m_id`),
  CONSTRAINT `hassong` FOREIGN KEY (`s_id`) REFERENCES `song` (`s_id`),
  CONSTRAINT `musician` FOREIGN KEY (`m_id`) REFERENCES `musicians` (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musicians_song`
--

LOCK TABLES `musicians_song` WRITE;
/*!40000 ALTER TABLE `musicians_song` DISABLE KEYS */;
INSERT INTO `musicians_song` VALUES (1,1,2),(2,1,2),(3,1,2),(4,2,2),(5,2,6),(6,2,4),(7,1,4),(8,1,4),(9,1,4),(10,1,4),(11,3,NULL),(12,6,7),(13,7,7),(14,4,7),(14,6,7),(15,4,7),(16,5,7),(17,5,7),(18,5,7),(19,10,7),(20,10,NULL),(21,8,NULL),(22,8,NULL),(23,8,NULL),(24,10,NULL),(25,10,NULL),(26,9,NULL),(27,9,NULL),(28,8,NULL),(29,8,NULL),(30,4,NULL),(31,5,NULL),(32,3,NULL),(33,6,NULL),(34,7,NULL);
/*!40000 ALTER TABLE `musicians_song` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-30 16:53:31
