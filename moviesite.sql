CREATE DATABASE  IF NOT EXISTS `moviesite` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `moviesite`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: moviesite
-- ------------------------------------------------------
-- Server version	5.6.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `movieid` int(11) NOT NULL AUTO_INCREMENT,
  `moviename` varchar(255) NOT NULL,
  `movieloc` varchar(255) NOT NULL,
  `moviepic` varchar(255) NOT NULL,
  `moviedescription` varchar(255) NOT NULL,
  `movierate` int(11) NOT NULL,
  `moviecomments` int(11) NOT NULL,
  `movietype` int(11) NOT NULL,
  PRIMARY KEY (`movieid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'X-MAN','movies/movie1.jpg','images/movie1.jpg','deadbeef',4,111,0),(2,'SPIDER MAN 2','movies/movie2.jpg','images/movie2.jpg','deadbeef',5,29,0),(3,'SPIDER MAN 3','movies/movie3.jpg','images/movie3.jpg','deadbeef',3,0,0),(4,'VALKYRIE','movies/movie4.jpg','images/movie4.jpg','deadbeef',1,1,0),(5,'GLADIATOR','movies/movie5.jpg','images/movie5.jpg','deadbeef',2,12,0),(6,'ICE AGE','movies/movie6.jpg','images/movie6.jpg','deadbeef',3,78,0),(7,'TRANSFORMERS','movies/movie7.jpg','images/movie7.jpg','deadbeef',4,12,0),(8,'MAGNETO','movies/movie8.jpg','images/movie8.jpg','deadbeef',5,34,0),(9,'KUNG FU PANDA','movies/movie9.jpg','images/movie9.jpg','deadbeef',2,65,0),(10,'EAGLE EYE','movies/movie10.jpg','images/movie10.jpg','deadbeef',3,27,0),(11,'NARNIA','movies/movie11.jpg','images/movie11.jpg','deadbeef',5,34,0),(12,'ANGELS &amp; DEMONS','movies/movie12.jpg','images/movie12.jpg','deadbeef',4,90,0),(13,'HOUSE','movies/movie13.jpg','images/movie13.jpg','deadbeef',4,100,0),(14,'VACANCY','movies/movie14.jpg','images/movie14.jpg','deadbeef',3,1,0),(15,'MIRRORS','movies/movie15.jpg','images/movie15.jpg','deadbeef',5,13,0),(16,'THE KINGDOM','movies/movie16.jpg','images/movie16.jpg','deadbeef',5,15,0),(17,'MOTIVES','movies/movie17.jpg','images/movie17.jpg','deadbeef',1,17,0),(18,'THE PRESTIGE','movies/movie18.jpg','images/movie18.jpg','deadbeef',4,8,0);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(16) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'1212','1'),(2,'1212','1'),(3,'12212','1'),(4,'12123','1'),(5,'12124','1'),(6,'1','1'),(7,'2','1'),(8,'3','1'),(9,'a','1');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-16 14:26:04
