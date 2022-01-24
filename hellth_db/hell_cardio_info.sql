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
-- Table structure for table `cardio_info`
--

DROP TABLE IF EXISTS `cardio_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cardio_info` (
  `exercise_cardio` varchar(100) NOT NULL,
  `kcal` float DEFAULT NULL,
  `point` float DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`exercise_cardio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardio_info`
--

LOCK TABLES `cardio_info` WRITE;
/*!40000 ALTER TABLE `cardio_info` DISABLE KEYS */;
INSERT INTO `cardio_info` VALUES ('걷기',47,0.06,'../resources/images/walk.png','걷기는 대표적인 유산소 운동 중 하나로서 특별한 장비나 경제적인 투자 없이도 가능한 운동이다. 특히 체력이 약한 노약자나 임산부, 환자에게 효과적인 운동이다. 고도비만일 경우에도 체중이 무거운 만큼 달리기는 하반신에 큰 부담을 주기 때문에 걷기로 체중을 좀 줄이고 달리기로 전환하든가 하는 게 좋다. 다만 열량 소모는 낮은 만큼 시간대비 운동의 효과는 그다지 크진 않다는 단점이 있다. '),('계단',86,0.12,'../resources/images/stairs_up.png','실제로 계단 오르기는 심폐력 강화, 하체근력 강화, 관절 강화, 칼로리 소모가 동시에 되는 훌륭한 운동이다. 본래 걷기는 운동보다는 활동에 가까운 개념으로, 달리기에 비해 효율이 현저하게 떨어지지만 계단은 걸어 올라가는 것만으로도 상당한 효율을 볼 수 있다. 물론 뛰어 올라가거나 특정한 자세로 올라가는 등의 방법도 가능하다.'),('달리기',86,0.12,'../resources/images/run.png','달리기는 동물이 육상에서 다리를 이용해 움직이는 가장 빠른 방법을 말한다. 스포츠에서는 특정 시점에서 모든 발이 땅에서 떨어져 있는 걸음걸이로 정의한다. 유산소 및 무산소 운동으로 널리 시행되고 있다. 또한 달리기는 모든 스포츠의 기본이 되는 운동이다.'),('등산',98,0.14,'../resources/images/mountain_climbing.png','등산은 운동이나 탐험, 여가 활용 등의 목적으로 산에 오르는 것이다. 자연의 변화에 대응하고 자연을 이용하고 대처하면서 주어진 장애를 극복하는 것으로, 정복의 욕구를 채울 수 있는 레저 스포츠이다. 등산은 체력 단련과 정신 수양에 좋지만 위험이 따르는 운동이므로 협동심, 인내력, 희생 정신, 대담성, 침착성 등이 있어야 한다.'),('런닝머신',129,0.17,'../resources/images/running_machine.png','달리기를 실내에서 할 수 있는 운동기구. 원통에 감긴 넓은 띠가 계속 회전하는 방식으로 야외에서 달리는 것처럼 제자리뛰기를 할 수 있게 해준다. 유산소 운동과 다이어트에 사이클과 더불어 가장 흔하게 이용된다. 주로 피트니스 클럽에 많다.'),('복싱',123,0.16,'../resources/images/boxing.png','권투는 까마득한 과거부터 현재까지 꾸준히 발전해 왔으며, 주먹을 사용하는 격투기 중 최고의 자리를 지키고 있다. 종합격투기계에서도 권투는 대다수 파이터들의 필수과목일 정도로, 권투가 다른 격투기에 미친 영향은 매우 크다. 권투는 특정한 초식 같은건 없고, 공격 기술이라곤 스트레이트, 잽, 어퍼, 훅, 바디 이렇게 5가지 뿐이다. 그래서 무척 단순해보이지만, 기술이 적은 만큼 반복 훈련이 많고, 상대의 움직임을 예측하고 몇 수 앞까지 생각해서 공격 방법을 정해야 하는 생각보다 어렵고 복잡한 무술이기도 하다.'),('사이클',86,0.12,'../resources/images/cycle.png','실내에서 자전거를 타는 것과 비슷한 운동을 할 수 있도록 만든 기구. 헬스장에 가보면 런닝머신과 비슷한 느낌으로 유산소 운동을 위해 구비되어있는 것을 볼 수 있다. 안장의 높이는 무릎이 완전히 굽혀지기 직전이 정자세다. 제대로 탈 경우 런닝머신보다 높은 강도의 유산소 운동이 가능하다.'),('수영',110,0.15,'../resources/images/swim.png','수영은 물에서 나아가기 위해 손발을 움직이는 행위, 또는 물에서 누가 더 빨리 나가는지를 겨루는 스포츠를 일컫는다. 폐 속의 공기가 부력을 유지하기 때문에 보통은 상체가 길고 하체가 짧을수록 유리하다. 특히 남성은 하체 근육량이 많아 하체 부분은 잘 안뜨는 편이다. 그 외 수영에 유리한 신체 조건으로는 넓은 어깨, 큰 키와 긴 팔, 키에 비해 짧은 다리, 잘록한 허리와 납작한 엉덩이, 큰 손과 발 사이즈 등이 있다.'),('스쿼시',147,0.2,'../resources/images/squash.png','스쿼시(squash)는 두 명(단식) 또는 네 명(복식)의 선수가 사방이 벽으로 이루어진 코트에서 작고 속이 빈 고무공으로 경기를 하는 라켓 스포츠이다. 과거에는 스쿼시 라켓(squash rackets)라고 불렸는데, 이는 스쿼시의 전신이 되는 옛 실내 라켓 경기인 라켓 (또는 하드 라켓)이 딱딱한 공을 사용했던 것에 비해 스쿼시에서는 잘 찌그러지는(squashable)  말랑말랑한 공을 사용함을 가리키는 의미의 명칭이었다.'),('에어로빅',74,0.1,'../resources/images/airobic.png','유산소 운동인 에어로빅은 일반적으로 행하여지던 체조 동작에 유희성을 가미한 것으로, 리드미컬한 음악과 율동이 조화를 이루어 체력 및 건강을 증진하도록 고안되었다. 에어로빅은 재즈, 현대 무용, 발레, 민속 무용 등의 동작을 복합적으로 결합한 운동 형태로, 다른 유산소성 운동과 마찬가지로 심폐 순환계에 강한 자극을 줄 수 있다.'),('요가',31,0.04,'../resources/images/yoga.png','요가는 세계관의 많은 부분을 상키야 철학에서 빌려온다. 상키야에 의하면, 세계는 다수의 뿌루샤와 단일한 쁘라끄리띠로 이루어져 있다. 뿌루샤는 영혼이나 자아 따위로 생각할 수 있으나 정확하게 대응하지는 않는다. 사람은 죽으면 어디로 가는가? 상키야에 따르면 뿌루샤는 불변한다. 뿌루샤는 시간과 공간을 초월하며, 항상 편재하는 존재이고, 불멸한다. 즉 상키야에 따르면 인간은 이러한 뿌루샤의 성질을 깨닫지 못하기 때문에 잘못을 빚어내는 것으로, 뿌루샤의 본질을 직관하고 자아의 완전성을 깨닫는 순간 해탈한다는 것이다.'),('윗몸일으키기',98,0.13,'../resources/images/sit_up.png','누운 상태에서 양 손을 머리뒤에 깍지를 낀 상태로 다리는 고정시키고 상체를 앞으로 굽혔다가 팔꿈치가 무릎을 닿고 다시 내려가는 것을 반복하는 운동이다. 복근보다도 허리나 하체, 팔 등에 들어가는 힘이 더 많기 때문. 한마디로 복근만이 아니라 온몸의 힘을 짜내는 운동이다.'),('자전거',98,0.14,'../resources/images/bicycle.png','두 개의 바퀴가 앞뒤에 달려있고 발로 돌리는 페달과 뒷바퀴가 체인으로 연결된 형태이다. 일반적으로 자전거라 하면 이 이륜 자전거를 의미한다. 바퀴 수가 두 개가 아닐 경우, 외발 자전거(Unicycle), 세발 자전거(Tricycle) 등 다른 이름이 붙으며. 페달을 팔로 돌리는 경우 완력 자전거라 부른다.'),('줄넘기',123,0.16,'../resources/images/jump_rope.png','줄의 양 끝을 잡고 회전시켜 그 사이에서 줄에 안 걸리게 뛰는 운동. 전신운동으로 분류된다. 살을 빼거나, 성장판을 자극해 키를 키우려는 목적. 다만 제대로 하지 않으면 십자인대가 나가거나 아킬레스 건이 손상되어 다시는 줄넘기를 못 하는 몸이 될 수 있으니 주의. 체중이 많이 나가는 사람의 경우 별로 추천하지 않는다. '),('훌라후프',49,0.07,'../resources/images/hula_hoop.png','복부지방 감소와 복부비만 예방에 상당한 효과가 있다고 널리 알려졌었지만 직접적으로 복부지방 감소 작용을 하는 것이 아니라 유산소 운동이므로 전체적으로 지방을 태우는 것이다. 다른 유산소 운동이 그렇듯 최소 2~30분 이상 해야 효과가 있으며 한쪽으로만 돌릴 경우 척추 불균형을 야기할 수 있다고 한다.');
/*!40000 ALTER TABLE `cardio_info` ENABLE KEYS */;
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
