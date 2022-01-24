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
-- Table structure for table `user_food`
--

DROP TABLE IF EXISTS `user_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_food` (
  `userId` varchar(40) DEFAULT NULL,
  `foodName` varchar(200) DEFAULT NULL,
  `personer_dos` int DEFAULT NULL,
  `regDate` date DEFAULT NULL,
  `foodNo` int DEFAULT NULL,
  KEY `userId` (`userId`),
  KEY `foodNo` (`foodNo`),
  CONSTRAINT `user_food_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user_info` (`userId`),
  CONSTRAINT `user_food_ibfk_2` FOREIGN KEY (`foodNo`) REFERENCES `food_info` (`foodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_food`
--

LOCK TABLES `user_food` WRITE;
/*!40000 ALTER TABLE `user_food` DISABLE KEYS */;
INSERT INTO `user_food` VALUES ('conan','꿩불고기',2000,'2022-01-01',1),('conan','고추잡채',257,'2022-01-11',42),('conan','깻잎나물볶음',412,'2022-01-11',150),('conan','두부김치',1153,'2022-01-11',153),('conan','꿩불고기',1106,'2022-01-12',1),('conan','꿩불고기',738,'2022-01-19',1),('conan','고추잡채',770,'2022-01-05',42),('conan','돼지껍데기볶음',1760,'2022-01-05',152),('conan','머위나물볶음',108,'2022-01-05',154),('conan','해파리냉채',455,'2022-01-19',51),('conan','단무지무침',1340,'2022-01-19',101),('conan','더덕무침',648,'2022-01-19',103),('conan','게국지',1246,'2022-01-19',19),('conan','맑은감자국',1326,'2022-01-28',25),('conan','무된장국',728,'2022-01-28',27),('conan','해파리냉채',273,'2022-01-19',51),('conan','골뱅이무침',435,'2022-01-19',99),('conan','노각무침',420,'2022-01-19',100),('conan','단무지무침',20,'2022-01-19',101),('conan','달래나물무침',272,'2022-01-19',102),('conan','꿩불고기',369,'2022-01-02',1),('conan','닭갈비',1191,'2022-01-02',2),('conan','꿩불고기',369,'2022-01-02',1),('conan','닭갈비',1191,'2022-01-02',2),('conan','꿩불고기',369,'2022-01-02',1),('conan','닭갈비',1191,'2022-01-02',2),('conan','꿩불고기',369,'2022-01-19',1),('conan','꿩불고기',369,'2022-01-19',1),('conan','닭갈비',1191,'2022-01-19',2),('conan','닭갈비',1675,'2022-01-19',3),('conan','닭꼬치',707,'2022-01-19',4),('conan','더덕구이',184,'2022-01-19',5),('conan','꿩불고기',738,'2022-01-04',1),('conan','닭갈비',1675,'2022-01-04',3),('conan','닭꼬치',530,'2022-01-04',4),('conan','노각무침',84,'2022-01-04',100),('conan','달래나물무침',544,'2022-01-04',102),('conan','꿩불고기',1475,'2022-01-19',1),('conan','꿩불고기',1475,'2022-01-19',1),('conan','간자장',2474,'2022-01-19',71),('conan','김치라면',2760,'2022-01-19',74),('conan','간자장',4123,'2022-01-20',71),('conan','닭꼬치',1590,'2022-01-20',4),('conan','돼지갈비',481,'2022-01-21',7),('conan','닭갈비',2792,'2022-01-22',3),('conan','도미구이',3176,'2022-01-22',6),('conan','병어구이',976,'2022-01-22',8),('conan','닭꼬치',530,'2022-01-22',4),('conan','도미구이',397,'2022-01-22',6),('conan','만둣국',434,'2022-01-24',24),('conan','맑은감자국',221,'2022-01-24',25),('cs','오징어순대',467,'2022-01-24',49),('cs','돼지머리고기',650,'2022-01-24',235),('qwe','꿩불고기',369,'2022-01-24',1),('qwe','양념게장',193,'2022-01-24',7203);
/*!40000 ALTER TABLE `user_food` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-24 10:47:50
