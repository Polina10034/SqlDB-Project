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
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `song` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `recordDate` date NOT NULL,
  `r_id` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  PRIMARY KEY (`s_id`),
  KEY `tech_idx` (`t_id`),
  KEY `rec_idx` (`r_id`),
  KEY `genre_idx` (`genre_id`),
  CONSTRAINT `genre` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`g_id`),
  CONSTRAINT `rec` FOREIGN KEY (`r_id`) REFERENCES `record` (`r_id`),
  CONSTRAINT `tech` FOREIGN KEY (`t_id`) REFERENCES `technician` (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (1,'About You','2016-01-01',1,120,100,8),(2,'Bad','2017-01-01',1,130,100,5),(3,'Life','2016-07-01',1,123,100,9),(4,'Mad World','2016-09-09',2,200,100,8),(5,'Good Night','2016-05-10',2,200,106,3),(6,'Forever','2017-03-09',2,100,106,1),(7,'When','2001-01-01',1,130,106,5),(8,'Love Song','2001-01-01',1,134,106,5),(9,'Time','1967-02-03',1,100,106,8),(10,'Before You','2015-01-01',1,130,106,2),(11,'PINK','1999-02-14',3,120,110,2),(12,'Falling','2004-10-15',4,120,104,2),(13,'Like you','2003-11-01',4,125,104,2),(14,'Me and You','2003-01-01',5,125,104,6),(15,'Keep the Family Close','2016-01-01',1,120,104,10),(16,'Childs Play','2016-01-03',1,130,104,10),(17,'Still Here','2016-01-05',1,123,104,10),(18,'Superman','2016-09-09',2,200,109,9),(19,'Without Me','2016-05-10',2,200,109,10),(20,'Jokerman','1885-03-09',3,100,109,4),(21,'Sweetheart Like You','1885-03-09',3,240,109,7),(22,'Neighborhood Bully','1885-03-09',3,160,105,7),(23,'License to Kill','1885-03-09',3,300,105,10),(24,'Girl Loves Me','2016-11-11',4,200,105,6),(25,'Family ','2010-01-01',6,120,105,10),(26,'Play','2012-01-03',6,130,105,7),(27,'Here','2010-01-05',7,123,105,8),(28,'Man','2016-09-09',9,200,105,9),(29,'Without You','2002-05-10',7,200,105,7),(30,'Joker','1887-03-09',8,100,105,6),(31,'Sweetheart','1990-03-09',6,240,105,9),(32,'Neighborhood','1885-03-09',9,160,107,7),(33,'Kill','2015-08-09',5,300,107,10),(34,'She Loves Me','2010-10-01',9,200,107,7),(35,'Last One ','2000-01-01',10,120,107,1);
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-30 16:53:32
