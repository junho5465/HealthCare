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
-- Table structure for table `personal_cardio`
--

DROP TABLE IF EXISTS `personal_cardio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_cardio` (
  `userId` varchar(40) DEFAULT NULL,
  `exercise_cardio` varchar(100) DEFAULT NULL,
  `cardio_time` varchar(50) DEFAULT NULL,
  `exer_date` date DEFAULT (curdate()),
  KEY `exercise_cardio` (`exercise_cardio`),
  KEY `userId` (`userId`),
  CONSTRAINT `personal_cardio_ibfk_1` FOREIGN KEY (`exercise_cardio`) REFERENCES `cardio_info` (`exercise_cardio`),
  CONSTRAINT `personal_cardio_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user_info` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_cardio`
--

LOCK TABLES `personal_cardio` WRITE;
/*!40000 ALTER TABLE `personal_cardio` DISABLE KEYS */;
INSERT INTO `personal_cardio` VALUES ('conan','스쿼시','60','2022-01-12'),('conan','스쿼시','30','2022-01-13'),('conan','스쿼시','50','2022-01-14'),('conan','스쿼시','20','2022-01-15'),('conan','스쿼시','10','2022-01-16'),('conan','스쿼시','30','2022-01-17'),('conan','스쿼시','50','2022-01-18'),('conan','스쿼시','30','2022-01-19'),('conan','스쿼시','20','2022-01-20'),('conan','스쿼시','60','2022-01-21'),('conan','걷기','50','2022-01-12'),('conan','수영','40','2022-01-22'),('conan','수영','60','2022-01-22'),('conan','훌라후프','20','2022-01-22'),('conan','훌라후프','30','2022-01-22'),('conan','에어로빅','30','2022-01-22'),('conan','에어로빅','10','2022-01-22'),('conan','걷기','50','2022-01-22'),('conan','계단','50','2022-01-22'),('conan','달리기','50','2022-01-22'),('conan','등산','50','2022-01-22'),('conan','런닝머신','50','2022-01-22'),('conan','복싱','50','2022-01-22'),('conan','수영','50','2022-01-22'),('conan','스쿼시','50','2022-01-22'),('conan','에어로빅','50','2022-01-22'),('conan','요가','50','2022-01-22'),('conan','자전거','50','2022-01-22'),('conan','줄넘기','50','2022-01-22'),('conan','훌라후프','50','2022-01-22'),('conan','걷기','50','2022-01-21'),('conan','달리기','50','2022-01-21'),('conan','복싱','50','2022-01-21'),('conan','복싱','50','2022-01-21'),('conan','걷기','50','2022-01-24'),('conan','걷기','50','2022-01-24'),('conan','계단','50','2022-01-24'),('conan','계단','50','2022-01-24'),('conan','달리기','50','2022-01-24'),('conan','복싱','60','2022-01-24'),('conan','달리기','50','2022-01-24'),('conan','복싱','60','2022-01-24'),('conan','달리기','30','2022-01-24'),('conan','걷기','50','2022-01-24'),('qwe','달리기','40','2022-01-24'),('qwe','걷기','10','2022-01-24'),('qwe','걷기','60','2022-01-24'),('qwe','등산','50','2022-01-24'),('qwe','달리기','40','2022-01-24');
/*!40000 ALTER TABLE `personal_cardio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-24 10:47:49
