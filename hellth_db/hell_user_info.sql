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
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `userName` varchar(40) DEFAULT NULL,
  `userId` varchar(40) NOT NULL,
  `userPwd` varchar(40) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES ('인우','choi','choi','05de3681-51e7-43e2-982e-151019f6a17c_inwoo.png'),('최인우','choiinwoo','choiinwoo','c093b18e-7b33-489f-ae37-38c9c55c2ffe_'),('conan','conan','1234','main_body_profile_face_5.png'),('chunsik','cs','1111','main_body_profile_face_3.png'),('돼지','ehowl','1234','ddaba52e-2c26-49d8-bccb-1f85c4d977d2_king.png'),('happy','happy','happy','1794ea23-1639-4296-8b88-8c7a24e73a4e_img.jpg'),('인우','inwoo','inwoo','dde15ca0-a12b-4ebd-8d31-8c2de9547525_'),('인우','inwoo22','inwoo22','65d6c7c3-a554-4c1a-ad5c-4e0d083b1389_in.png'),('junho','junho','1234','cf489218-db99-4498-81e8-503d2ac81b93_인물3.jpg'),('미란','miran','1234','841fc7c7-0d3f-4951-a675-420464364676_king.png'),('qwe','qwe','qwe','6572dd94-b547-4cba-93dc-1b750c90929c_pig.png'),('ryan','ryan','2222','main_body_profile_face_4.png'),('test1','test1','test1','6256a5c5-ef69-4849-9656-815152f4e3ab_person1.jpg'),('test3','test3','test3','8b8ec3d9-89fa-49ab-b417-8d8fd856a44f_짜리.jpg'),('test4','test4','test4','cc327ee1-2b00-4552-964e-67ec42a7f982_person1.jpg'),('인우','woo','woo','4807b400-de41-4dbf-9781-0eea6346aae4_inwoo.png'),('김인우','김인우','rladlsdn','4adfb085-7b89-4941-9eed-32f5b6f2e350_bg8.png'),('김호찬','김호찬','1234','0f755076-ecaa-43f8-af97-f11d14b16a0d_인물3.jpg'),('박민현','박민현','qkralsgus','166f52aa-b4da-4fed-a5ae-97d2c484d07d_person1.jpg'),('박인우','박인우','qkrdlsdn','e8f2b936-917a-4465-b131-37a32a368675_person1.jpg'),('박준호','박준호','1234','81aa4c02-4c82-4368-a758-21c30c5a58ea_main_body_profile_face.png'),('박호준','박호준','1234','39a9299c-33f1-4afd-addd-c7f281314c97_main_body_profile_face.png'),('유현채','유현채','1234','faad7733-072b-4d0e-a639-823c45f0e9ab_인물2.jpg'),('준호박','준호박','1234','ebf77043-b6e7-4331-9b7f-37f209085229_main_body_profile_face_4.png');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
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
