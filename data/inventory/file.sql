-- MySQL dump 10.13  Distrib 5.6.35, for macos10.12 (x86_64)
--
-- Host: localhost    Database: inventory
-- ------------------------------------------------------
-- Server version	5.6.35

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
-- Current Database: `inventory`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `inventory` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `inventory`;

--
-- Table structure for table `Personnel`
--

DROP TABLE IF EXISTS `Personnel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Personnel` (
  `pid` varchar(50) NOT NULL,
  `pname` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `Designation` varchar(30) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personnel`
--

LOCK TABLES `Personnel` WRITE;
/*!40000 ALTER TABLE `Personnel` DISABLE KEYS */;
INSERT INTO `Personnel` VALUES ('1','Aditya','ex1@mail.com','SystemAdmin',2147483647),('2','Neil','ex2@mail.com','SystemAdmin',2147483647),('3','Rahul','ex3@mail.com','SystemAdmin',2147483647),('4','Mukesh','ex4@mail.com','admin',2147483647),('5','Gopal','ex5@mail.com','management',2147483647),('6','Raghu','ex6@mail.com','StockroomPerson',2147483647);
/*!40000 ALTER TABLE `Personnel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Request`
--

DROP TABLE IF EXISTS `Request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Request` (
  `req_id` int(11) NOT NULL AUTO_INCREMENT,
  `req_date` date DEFAULT NULL,
  `req_time` time DEFAULT NULL,
  `lab_name` varchar(10) DEFAULT NULL,
  `parts_inrepair` varchar(100) DEFAULT NULL,
  `quantity` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`req_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Request`
--

LOCK TABLES `Request` WRITE;
/*!40000 ALTER TABLE `Request` DISABLE KEYS */;
INSERT INTO `Request` VALUES (1,'2016-08-14','00:00:10','FS6','MotherBoard,Monitor,Processor','3,5,7','pending\r'),(2,'2016-02-14','00:00:02','FS6','MotherBoard,Monitor,Processor','6,9,8','active\r'),(3,'2015-10-10','00:00:12','FS6','MotherBoard,Monitor,Processor','7,1,2','closed');
/*!40000 ALTER TABLE `Request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemAdmin`
--

DROP TABLE IF EXISTS `SystemAdmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemAdmin` (
  `id` varchar(50) NOT NULL,
  `Lab_nos` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemAdmin`
--

LOCK TABLES `SystemAdmin` WRITE;
/*!40000 ALTER TABLE `SystemAdmin` DISABLE KEYS */;
INSERT INTO `SystemAdmin` VALUES ('1','FS6'),('2','FS5,FS6'),('3','FS4,FS5,FS6');
/*!40000 ALTER TABLE `SystemAdmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemsInFS6`
--

DROP TABLE IF EXISTS `SystemsInFS6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemsInFS6` (
  `sys_no` varchar(20) NOT NULL,
  `motherboard` varchar(20) DEFAULT NULL,
  `model` varchar(20) DEFAULT NULL,
  `processer` varchar(20) DEFAULT NULL,
  `memory` varchar(20) DEFAULT NULL,
  `HDD` varchar(20) DEFAULT NULL,
  `ip_addr` varchar(20) DEFAULT NULL,
  `mac_addr` varchar(20) DEFAULT NULL,
  `Monitor_no` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sys_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemsInFS6`
--

LOCK TABLES `SystemsInFS6` WRITE;
/*!40000 ALTER TABLE `SystemsInFS6` DISABLE KEYS */;
INSERT INTO `SystemsInFS6` VALUES ('117/307','INTEL(R)','S3420GP','2.40Ghz','4GB','2TB','10.11.32.1','00:15:17:c8:1b:fe','113'),('258','Gigabyte','G41MT:S2','3.00GHz','2GB','500GB','10.11.33.101','50:e5:49:56:d6:c4','254\r'),('259','AsRock','H91M:XT Plus','3.00GHz','4GB','160GB','10.11.33.103','d0:50:99:ad:ab:c0','255\r'),('260','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','500GB','10.11.33.105','bc:5f:f4:8f:98:9c','258\r'),('261','Gigabyte','G41M:Combo','3.00GHz','1GB','160GB','10.11.33.104','6c:f0:49:c5:19:e1','257\r'),('263','Gigabyte','H61M:DS2','2.60GHz','2GB','160GB','10.11.33.106','90:2b:34:42:64:da','259\r'),('264','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','250GB','10.11.33.107','bc:5f:f4:8f:97:dc','260\r'),('265','Gigabyte','H61M:DS2','2.60GHz','4GB','500GB','10.11.33.108','90:2b:34:42:64:77','261\r'),('266','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','160GB','10.11.33.109','bc:5f:f4:97:32:a4','262\r'),('267','AsRock','H91M:XT Plus','3.00GHz','4GB','500GB','10.11.33.110','d0:50:99:ad:af:9f','263\r'),('268','Gigabyte','G41MT:S2','3.00GHz','4GB','80GB','10.11.33.111','50:e5:49:56:e4:ad','264\r'),('269','Gigabyte','H61M:DS2','2.60GHz','2GB','160GB','10.11.33.112','90:2b:34:42:64:de','265\r'),('270','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','80GB','10.11.33.113','bc:5f:f4:97:32:97','266\r'),('271','DIGILITE','DL:H61M:VS3','2.80GHz','2GB','250GB','10.11.33.114','bc:5f:f4:97:34:de','267\r'),('272','Gigabyte','G41MT:S2','3.00GHz','2GB','500GB','10.11.33.115','50:e5:49:56:e0:d7','268\r'),('273','BIOSTAR','G31:M7 TE','2.00GHz','1GB','80GB','10.11.33.159','00:e0:4d:99:9a:03','312\r'),('274','Gigabyte','G41MT:S2P','3.00GHz','2GB','250GB','10.11.33.117','1c:6f:65:dc:2d:ec','270\r'),('275/320','ASRock','H61M:S1 PLUS','3.00GHz','4GB','160GB','10.11.33.154','d0:50:99:73:9f:5e','307\r'),('276','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','80GB','10.11.33.119','bc:5f:f4:97:32:98','272\r'),('277','Gigabyte','G41MT:S2','3.00GHz','2GB','160GB','10.11.33.120','50:e5:49:56:e8:4a','273\r'),('278','Gigabyte','G41MT:S2','3.00GHz','2GB','250GB','10.11.33.121','50:e5:49:56:e6:b1','274\r'),('279','ASRock','H91M:S1 PLUS','3.10Ghz','4GB','500GB','10.11.33.122','d0:50:99:7b:48:4f','275\r'),('280','Gigabyte','H61M:DS2','2.70GHz','2GB','160GB','10.11.33.123','90:2b:34:4f:57:6d','276\r'),('281','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','160GB','10.11.33.124','bc:5f:f4:8f:97:d2','277\r'),('282','Gigabyte','H61M:S1','2.90GHz','4GB','80GB','10.11.33.127','fc:aa:14:67:06:04','280\r'),('283','Gigabyte','H61M:DS2','2.60GHz','2GB','160GB','10.11.33.126','90:2b:34:42:64:e4','279\r'),('284','Gigabyte','G41MT:S2','3.00GHz','2GB','500GB','10.11.33.125','50:e5:49:49:1d:ca','278\r'),('285','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','500GB','10.11.33.128','bc:5f:f4:74:7b:88','281\r'),('286','Gigabyte','H61M:DS2','2.60GHz','4GB','160GB','10.11.33.129','90:2b:34:42:20:99','282\r'),('287','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','160GB','10.11.33.130','bc:5f:f4:8f:97:d4','283\r'),('288','ASRock','H91M:S1 PLUS','3.20Ghz','2GB','500GB','10.11.33.131','d0:50:99:86:ca:11','284\r'),('289','Gigabyte','H61M:DS2','2.60GHz','4GB','80GB','10.11.33.132','90:2b:34:42:65:76','285\r'),('290','Gigabyte','H61M:DS2','2.60GHz','2GB','160GB','10.11.33.133','90:2b:34:42:25:17','286\r'),('291','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','160GB','10.11.33.134','bc:5f:f4:74:7b:53','287\r'),('292','Gigabyte','H61M:DS2','2.60GHz','4GB','250GB','10.11.33.135','90:2b:34:3a:00:96','288\r'),('294','Gigabyte','G41M:Combo','3.00GHz','2GB','500GB','10.11.33.137','6c:f0:49:c7:4a:32','290\r'),('295','DIGILITE','DL:H61M:VS3','2.80GHz','2GB','160GB','10.11.33.138','bc:5f:f4:97:35:21','291\r'),('296','Gigabyte','G41MT:S2','3.00GHz','2GB','500GB','10.11.33.139','50:e5:49:49:aa:73','292\r'),('297','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','500GB','10.11.33.140','bc:5f:f4:97:35:20','293\r'),('298','Gigabyte','G41MT:S2','3.00GHz','2GB','500GB','10.11.33.141','50:e5:49:56:e0:fc','294\r'),('299','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','500GB','10.11.33.142','bc:5f:f4:8f:97:e5','295\r'),('300','Gigabyte','H61M:DS2','2.60GHz','2GB','160GB','10.11.33.143','90:2b:34:42:22:b8','296\r'),('301','Gigabyte','H61M:DS2','2.70GHz','2GB','160GB','10.11.33.144','90:2b:34:4f:56:f4','297\r'),('302','Gigabyte','G41MT:S2','3.00GHz','2GB','250GB','10.11.33.145','50:e5:49:56:e0:9b','298\r'),('303','Gigabyte','G41MT:S2','3.00GHz','2GB','160GB','10.11.33.146','50:e5:49:49:6a:a4','299\r'),('304','DIGILITE','DL:H61M:VS3','2.80GHz','2GB','500GB','10.11.33.147','bc:5f:f4:97:34:dd','300\r'),('305','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','160GB','10.11.33.148','bc:5f:f4:74:7b:81','301\r'),('306','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','500GB','10.11.33.149','bc:5f:f4:8f:97:df','302\r'),('307','DIGILITE','DL:H61M:VS3','2.70GHz','4GB','500GB','10.11.33.150','bc:5f:f4:97:35:08','303\r'),('308','Gigabyte','G41M:Combo','3.00GHz','1GB','80GB','10.11.33.151','6c:f0:49:a7:9a:bd','304\r'),('309','Gigabyte','H61M:S1','2.90GHz','2GB','160GB','10.11.33.152','fc:aa:14:67:06:07','305\r'),('310','ASRock','H61M:S1 PLUS','3.00GHz','2GB','80GB','10.11.33.155','d0:50:99:73:a4:a5','308\r'),('311','ASRock','H61M:S1 PLUS','3.00GHz','2GB','160GB','10.11.33.157','d0:50:99:73:9f:60','310\r'),('315/259','Gigabyte','H61M:DS2','2.60GHz','2GB','250GB','10.11.33.153','90:2b:34:42:64:b9','306\r'),('316','Intel','DG31PR','2.80GHz','3GB','80GB','10.11.33.160','00:1c:c0:e8:97:ed','313\r'),('317','DIGILITE','DL:H61M:VS3','2.80GHz','2GB','500GB','10.11.33.116','bc:5f:f4:97:32:96','269\r'),('318','DIGILITE','DL:H61M:VS3','2.80GHz','2GB','80GB','10.11.33.158','bc:5f:f4:74:7b:76','311\r'),('319','ASRock','H61M:S1 PLUS','3.00GHz','4GB','500GB','10.11.33.156','d0:50:99:73:9f:ff','309 / 510\r'),('321','DIGILITE','DL:H61M:VS3','2.80GHz','2GB','500GB','10.11.33.118','bc:5f:f4:97:35:16','271\r'),('531','ASRock','H91M:S1 PLUS','3.20Ghz','2GB','500GB','10.11.33.136','d0:50:99:86:ca:07','289\r'),('A/C:532','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','500GB','10.11.33.102','bc:5f:f4:74:7b:84','256\r');
/*!40000 ALTER TABLE `SystemsInFS6` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-06 10:47:20
