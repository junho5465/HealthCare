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
-- Table structure for table `weight_info`
--

DROP TABLE IF EXISTS `weight_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weight_info` (
  `exercise_part` varchar(50) DEFAULT NULL,
  `exercise_kinds` varchar(50) NOT NULL,
  `point` float DEFAULT NULL,
  `ex_explain` varchar(1000) DEFAULT NULL,
  `ex_video_link` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`exercise_kinds`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weight_info`
--

LOCK TABLES `weight_info` WRITE;
/*!40000 ALTER TABLE `weight_info` DISABLE KEYS */;
INSERT INTO `weight_info` VALUES ('등','T바 로우',0.18,'T-바 로우(T-Bar Row)는 벤트오버 바벨로우와 함께 로우 분류의 운동에서 더욱 광배근을 고립해서 훈련할 수 있는 대표적인 운동이다. 비교적 무거운 중량을 사용해서 등 전체에 강도 높은 자극을 줄 수 있기 때문에 많은 보디빌더들이 이 운동을 등 운동 루틴에서 빼놓지 않습니다.','https://www.youtube.com/embed/4KQ0YdppHPs'),('가슴','덤벨 프레스',0.1,'덤벨프레스는 가슴의 근육을 전체적으로 발달 시켜 줍니다. 대근육 운동이고 두께를 전체적으로 두텁게 발달시킬수 있습니다. 또, 덤벨을 가지고 운동함으로써 볼 수 있는 장점이 있죠.운동 기구로 덤벨을 사용 하게 되면 가동 범위를 더 넓게 가져갈수 있거든요. 그래서 가슴의 안, 바깥, 중앙 등 다양하게 자극을 할 수 있구요. 더 입체적이고 섬세한 근육을 발달 시키는데 효과적 이랍니다.','https://www.youtube.com/watch?v=xTQL6jvVMNA'),('등','데드 리프트',0.15,'데드리프트는 가장 대표적인 웨이트 트레이닝 운동 중 하나로, 바닥에 놓인 바벨을 잡고 팔을 구부리지 않은 자세로 엉덩이 높이까지 들어올리는 식으로 행한다.','https://www.youtube.com/embed/EBjYQeeBI-0'),('하체','레그 프레스',0.14,'머신을 이용하여, 사선 방향으로 고중량의 무게를 밀어내는 하체 운동의 한 종류.발판에 놔두는 발의 위치에 따라 자극 부위가 달라지는데 발을 발판 위로 놔둘수록 다리 후면에 자극이 많이 가고 아래에 놔둘수록 다리 전면에 자극이 많이 간다.또한 발을 벌리면 다리 안쪽 좁히면 다리 바깥쪽이다.','https://www.youtube.com/embed/EV0F_3S7Sks'),('어깨','리버스 케이블 플라이',0.12,'케이블 리버스 플라이는 초보자분들도 쉽게 하실 수 있는 후면 삼각근 운동입니다!케이블 리버스 플라이를 하실 때 팔꿈치 각도를 일정하게 유지하며 동작을 해야 합니다.','https://www.youtube.com/embed/KJxQNJvucEw'),('어깨','벤 오버 래터럴',0.13,'이트 트레이닝에서, 어깨 근력을 강화하여 후면 삼각근을 발달시키는 운동의 하나. 허리를 구부려 팔꿈치를 구부린 상태로 고정한 후 견관절만 이용하여 운동을 한다.','https://www.youtube.com/embed/n3aX0oJyvWA'),('어깨','비하인드 넥 프레스',0.165,'바벨을 내릴때 머리 뒤로 내리는 운동입니다. 어깨의 삼각근에 수직으로 내리 꽂아주는 동작이기때문에 어깨에 자극이 즉각적으로 가게되서 어깨 근육의 효과가 높을 수 밖에 없습니다.','https://www.youtube.com/embed/Oo1RL5VN35Q'),('어깨','사이드 래터럴 레이즈',0.13,'래터럴 레이즈는 삼각근 전체 및 삼두를 단련시키는 복합 운동이 아닌 고립 운동이다. 따라서 약간 낮은 중량으로 고반복 운동을 하는 것이 효과적이라고 알려져 있는데, 삼각근도 5:5의 지근:속근 비율을 지니고 있기 때문에 고반복과 저반복을 섞어주는 것이 좋고 이런 고립운동도 10~12회 반복하는 정도가 근 성장에는 유리하다. 측면삼각근 자체가 그렇게 강한 근육은 아니기 때문에 큰 무게가 아니더라도 충분히 자극을 줄 수 있다.','https://www.youtube.com/embed/fr-5MKeRfVU'),('하체','스쿼트',0.15,'하체 근력 발달에 좋은 대표적인 운동이다. 스쿼트는 우리 몸을 단단히 지탱해주는 다리와 엉덩이를 만들어주고 혈액순환의 개선과 건강한 관절과 뼈를 유지하는 데도 도움이 된다.','https://www.youtube.com/embed/QyAH8O5X6g0'),('하체','스탠딩 캐프 레이즈',0.15,'균형을 유지하기 위해 벽이나 의자 근처의 바닥에 발을 어깨너비만큼 벌리고 서세요. 체중을 발가락에 싣고 발뒤꿈치를 바닥에서 들어 올리세요. 제일 높은 위치에서 몇 초 동안 멈추고 천천히 몸을 시작 위치로 낮추세요.','https://www.youtube.com/embed/_2jS6i9I_QI'),('등','시티드 케이블 로우',0.15,'시티드 로우는 광배근을 타겟으로 한 운동입니다. 즉 등 하부의 운동이죠. 등 상부의 견갑골 운동이 아닙니다! 그렇기에 먼저 등 하부 광배근이 움직여줘야 합니다.','https://www.youtube.com/embed/pkKfWeQ9APQ'),('가슴','인클라인 벤치프레스',0.11,'인클라인 벤치프레스는 의자의 각도를 위로 좀 더 높여 실시하는 벤치프레스 운동입니다. 의자의 각도만 높여도 자극을 더 다양하게 줄 수 있기 때문에 가슴 근육을, 상체를 골고루 발달 시키기 위해서 그냥 벤치프레스 운동과 묶어 인클라인 벤치프레스를 실시합니다.','https://www.youtube.com/embed/4HvI_mFhzVQ'),('등','친',0.16,'친업은 이두박근과 상완신근, 대흉근,광배근 수직 섬유와 등 근육 중하부에 자극을 느낄 수 있습니다.','https://www.youtube.com/embed/1oIi0g363MI'),('가슴','케이블 크로스 오버',0.13,'케이블 크로스 오버는 가슴을 모아주는 동작으로, 안쪽 근육을 자극하고 가슴 근육을 선명하게 만들어준다. 자세를 취함에 따라서 가슴 중간부터 하부 근육에 자극을 줄 수 있고 상부 근육에 자극을 줄수도 있다.','https://www.youtube.com/embed/QhF7XatWAqo'),('가슴','펙 덱 플라이',0.17,'플라이 운동은 본래 프리웨이트 운동으로, 아령을 이용하여 누워서 운동한다. 양옆으로 아령을 활짝 벌려서 가슴에 자극을 주기 위함인데, 가슴의 안쪽 부분과 바깥쪽 부분 모두에 자극을 줄수 있어 용이하다.','https://www.youtube.com/embed/6QB6XzaWI3I');
/*!40000 ALTER TABLE `weight_info` ENABLE KEYS */;
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
