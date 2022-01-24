-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 192.168.0.7    Database: hell
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `user_spec`
--

DROP TABLE IF EXISTS `user_spec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_spec` (
  `userId` varchar(40) DEFAULT NULL,
  `height` double DEFAULT '0',
  `weight` double DEFAULT '0',
  `muscle` double DEFAULT '0',
  `fat` double DEFAULT '0',
  `regDate` date DEFAULT (curdate()),
  KEY `userId` (`userId`),
  CONSTRAINT `user_spec_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user_info` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_spec`
--

LOCK TABLES `user_spec` WRITE;
/*!40000 ALTER TABLE `user_spec` DISABLE KEYS */;
INSERT INTO `user_spec` VALUES ('ryan',165,55,13,20,'2022-01-15'),('cs',175,60,18,22,'2020-01-15'),('cs',175,58,13,23,'2020-01-16'),('cs',175,60,13,21,'2020-01-17'),('cs',175,59,18,21,'2020-01-18'),('cs',175,58,13,23,'2020-01-19'),('cs',175,30,30,30,'2022-01-18'),('ryan',160,23,23,23,'2022-01-18'),('conan',170,70,22,26,'2022-01-20'),('conan',170,65,22,11,'2022-01-21'),('conan',170,60,15,20,'2022-01-19'),('conan',170,65,11,20,'2022-01-16'),('conan',170,62,20,26,'2022-01-17'),('conan',170,55,22,20,'2022-01-14'),('박민현',100,1000,0,0,'2022-01-22'),('김호찬',150,80,0,0,'2022-01-22'),('유현채',100,100,0,0,'2022-01-22'),('conan',170,60,20,20,'2022-01-24'),('qwe',170,60,11,20,'2022-01-24'),('qwe',170,55,0,0,'2022-01-23'),('junho',190,77,0,0,'2022-01-24'),('miran',100,100,0,0,'2022-01-24'),('happy',150,30,7,5,'2022-01-24'),('happy',150,0,11,0,'2022-01-03'),('inwoo',184,74,0,0,'2022-01-24'),('inwoo22',184,70,0,0,'2022-01-24'),('choiinwoo',184,70,0,0,'2022-01-24'),('choi',184,70,0,0,'2022-01-24'),('ehowl',180,130,0,0,'2022-01-24'),('test1',180,55,0,0,'2022-01-24'),('woo',189,90,0,0,'2022-01-24'),('test3',100,50,0,0,'2022-01-24'),('test4',180,55,0,0,'2022-01-24');
/*!40000 ALTER TABLE `user_spec` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-24 10:47:51
