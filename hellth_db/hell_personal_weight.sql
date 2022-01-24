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
-- Table structure for table `personal_weight`
--

DROP TABLE IF EXISTS `personal_weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_weight` (
  `userId` varchar(40) DEFAULT NULL,
  `exercise_kinds` varchar(50) DEFAULT NULL,
  `weight_set` int DEFAULT NULL,
  `date` date DEFAULT (curdate()),
  KEY `exercise_kinds` (`exercise_kinds`),
  KEY `userId` (`userId`),
  CONSTRAINT `personal_weight_ibfk_1` FOREIGN KEY (`exercise_kinds`) REFERENCES `weight_info` (`exercise_kinds`),
  CONSTRAINT `personal_weight_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user_info` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_weight`
--

LOCK TABLES `personal_weight` WRITE;
/*!40000 ALTER TABLE `personal_weight` DISABLE KEYS */;
INSERT INTO `personal_weight` VALUES ('conan','T바 로우',5,'2022-01-22'),('conan','데드 리프트',5,'2022-01-12'),('conan','T바 로우',5,'2022-01-21'),('conan','시티드 케이블 로우',5,'2022-01-21'),('conan','데드 리프트',5,'2022-01-21'),('conan','친',5,'2022-01-21'),('conan','덤벨 프레스',5,'2022-01-21'),('conan','인클라인 벤치프레스',5,'2022-01-21'),('conan','케이블 크로스 오버',5,'2022-01-21'),('conan','펙 덱 플라이',8,'2022-01-21'),('conan','레그 프레스',4,'2022-01-21'),('conan','스쿼트',6,'2022-01-21'),('conan','스탠딩 캐프 레이즈',8,'2022-01-21'),('conan','리버스 케이블 플라이',8,'2022-01-21'),('conan','벤 오버 래터럴',8,'2022-01-21'),('conan','사이드 래터럴 레이즈',8,'2022-01-21'),('conan','T바 로우',4,'2022-01-24'),('conan','레그 프레스',6,'2022-01-24'),('conan','덤벨 프레스',5,'2022-01-24'),('conan','레그 프레스',8,'2022-01-24'),('conan','T바 로우',6,'2022-01-24'),('conan','리버스 케이블 플라이',7,'2022-01-24'),('conan','T바 로우',5,'2022-01-24'),('conan','리버스 케이블 플라이',4,'2022-01-24'),('conan','덤벨 프레스',8,'2022-01-24'),('conan','T바 로우',2,'2022-01-24'),('conan','T바 로우',3,'2022-01-24'),('qwe','덤벨 프레스',7,'2022-01-24'),('qwe','인클라인 벤치프레스',7,'2022-01-24'),('qwe','덤벨 프레스',8,'2022-01-24');
/*!40000 ALTER TABLE `personal_weight` ENABLE KEYS */;
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
