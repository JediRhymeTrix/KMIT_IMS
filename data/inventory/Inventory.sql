-- MySQL dump 10.13  Distrib 5.6.35, for macos10.12 (x86_64)
--
-- Host: localhost    Database: Inventory
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
-- Table structure for table `HDD`
--

DROP TABLE IF EXISTS `HDD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HDD` (
  `make` varchar(30) NOT NULL DEFAULT '',
  `size` varchar(20) NOT NULL DEFAULT '',
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`make`,`size`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HDD`
--

LOCK TABLES `HDD` WRITE;
/*!40000 ALTER TABLE `HDD` DISABLE KEYS */;
INSERT INTO `HDD` VALUES ('seagate','500GB',30),('toshiba','1TB',10),('western digitial','2TB',7);
/*!40000 ALTER TABLE `HDD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mac_Addr_MoBo`
--

DROP TABLE IF EXISTS `Mac_Addr_MoBo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mac_Addr_MoBo` (
  `make` varchar(30) DEFAULT NULL,
  `model` varchar(30) DEFAULT NULL,
  `mac_addr` varchar(50) NOT NULL,
  PRIMARY KEY (`mac_addr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mac_Addr_MoBo`
--

LOCK TABLES `Mac_Addr_MoBo` WRITE;
/*!40000 ALTER TABLE `Mac_Addr_MoBo` DISABLE KEYS */;
INSERT INTO `Mac_Addr_MoBo` VALUES ('Gigabyte','G41MT:S2','00:1c:c0:e8:97:ed'),('Gigabyte','H61M:DS2','00:e0:4d:99:9a:03\r'),('Gigabyte','G41M:Combo','1c:6f:65:dc:2d:ec\r'),('DIGILITE','DL:H61M:VS7','50:e5:49:49:1d:ca\r'),('Gigabyte','G41MT:S2','50:e5:49:49:6a:a4\r'),('DIGILITE','DL:H61M:VS21','50:e5:49:49:aa:73\r'),('Gigabyte','G41M:Combo','50:e5:49:56:d6:c4\r'),('Gigabyte','H61M:DS2','50:e5:49:56:e0:9b\r'),('Gigabyte','G41M:Combo','50:e5:49:56:e0:d7\r'),('Gigabyte','H61M:DS2','50:e5:49:56:e0:fc\r'),('Gigabyte','G41M:Combo','50:e5:49:56:e4:ad\r'),('DIGILITE','DL:H61M:VS3','50:e5:49:56:e6:b1\r'),('Gigabyte','G41M:Combo','50:e5:49:56:e8:4a\r'),('Gigabyte','H61M:DS2','6c:f0:49:a7:9a:bd\r'),('Gigabyte','G41M:Combo','6c:f0:49:c5:19:e1\r'),('DIGILITE','DL:H61M:VS19','6c:f0:49:c7:4a:32\r'),('DIGILITE','DL:H61M:VS17','90:2b:34:3a:00:96\r'),('DIGILITE','DL:H61M:VS11','90:2b:34:42:20:99\r'),('Gigabyte','H61M:DS2','90:2b:34:42:22:b8\r'),('DIGILITE','DL:H61M:VS15','90:2b:34:42:25:17\r'),('Gigabyte','G41M:Combo','90:2b:34:42:64:77\r'),('Gigabyte','H61M:DS2','90:2b:34:42:64:b9\r'),('Gigabyte','G41M:Combo','90:2b:34:42:64:da\r'),('Gigabyte','G41M:Combo','90:2b:34:42:64:de\r'),('DIGILITE','DL:H61M:VS8','90:2b:34:42:64:e4\r'),('DIGILITE','DL:H61M:VS14','90:2b:34:42:65:76\r'),('Gigabyte','G41MT:S2','90:2b:34:4f:56:f4\r'),('DIGILITE','DL:H61M:VS5','90:2b:34:4f:57:6d\r'),('DIGILITE','DL:H61M:VS16','bc:5f:f4:74:7b:53\r'),('Gigabyte','G41MT:S2','bc:5f:f4:74:7b:76\r'),('Gigabyte','G41MT:S2','bc:5f:f4:74:7b:81\r'),('Gigabyte','G41M:Combo','bc:5f:f4:74:7b:84\r'),('DIGILITE','DL:H61M:VS10','bc:5f:f4:74:7b:88\r'),('DIGILITE','DL:H61M:VS6','bc:5f:f4:8f:97:d2\r'),('DIGILITE','DL:H61M:VS12','bc:5f:f4:8f:97:d4\r'),('Gigabyte','G41M:Combo','bc:5f:f4:8f:97:dc\r'),('Gigabyte','H61M:DS2','bc:5f:f4:8f:97:df\r'),('Gigabyte','G41MT:S2','bc:5f:f4:8f:97:e5\r'),('Gigabyte','G41M:Combo','bc:5f:f4:8f:98:9c\r'),('Gigabyte','G41M:Combo','bc:5f:f4:97:32:96\r'),('Gigabyte','G41M:Combo','bc:5f:f4:97:32:97\r'),('Gigabyte','G41M:Combo','bc:5f:f4:97:32:98\r'),('Gigabyte','G41M:Combo','bc:5f:f4:97:32:a4\r'),('Gigabyte','H61M:DS2','bc:5f:f4:97:34:dd\r'),('Gigabyte','G41M:Combo','bc:5f:f4:97:34:de\r'),('Gigabyte','G41MT:S2','bc:5f:f4:97:35:08\r'),('Gigabyte','G41M:Combo','bc:5f:f4:97:35:16\r'),('DIGILITE','DL:H61M:VS22','bc:5f:f4:97:35:20\r'),('DIGILITE','DL:H61M:VS20','bc:5f:f4:97:35:21\r'),('Gigabyte','G41MT:S2','d0:50:99:73:9f:5e\r'),('Gigabyte','H61M:DS2','d0:50:99:73:9f:60\r'),('Gigabyte','G41MT:S2','d0:50:99:73:9f:ff\r'),('Gigabyte','H61M:DS2','d0:50:99:73:a4:a5\r'),('DIGILITE','DL:H61M:VS4','d0:50:99:7b:48:4f\r'),('DIGILITE','DL:H61M:VS18','d0:50:99:86:ca:07\r'),('DIGILITE','DL:H61M:VS13','d0:50:99:86:ca:11\r'),('Gigabyte','G41M:Combo','d0:50:99:ad:ab:c0\r'),('Gigabyte','G41M:Combo','d0:50:99:ad:af:9f\r'),('DIGILITE','DL:H61M:VS9','fc:aa:14:67:06:04\r'),('Gigabyte','G41MT:S2','fc:aa:14:67:06:07\r');
/*!40000 ALTER TABLE `Mac_Addr_MoBo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monitor`
--

DROP TABLE IF EXISTS `Monitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Monitor` (
  `make` varchar(30) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`make`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monitor`
--

LOCK TABLES `Monitor` WRITE;
/*!40000 ALTER TABLE `Monitor` DISABLE KEYS */;
INSERT INTO `Monitor` VALUES ('ACER',25),('AOC',20),('LG',5);
/*!40000 ALTER TABLE `Monitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MotherBoard`
--

DROP TABLE IF EXISTS `MotherBoard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MotherBoard` (
  `make` varchar(30) NOT NULL DEFAULT '',
  `model` varchar(30) NOT NULL DEFAULT '',
  `socket` varchar(30) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`make`,`model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MotherBoard`
--

LOCK TABLES `MotherBoard` WRITE;
/*!40000 ALTER TABLE `MotherBoard` DISABLE KEYS */;
INSERT INTO `MotherBoard` VALUES ('DIGILITE','DL:H61M:VS3','FCLGA1011',20),('Gigabyte','G41M:Combo','LGA 1151',20),('Gigabyte','G41MT:S2','FCLGA1011',10),('Gigabyte','H61M:DS2','FM2+',10);
/*!40000 ALTER TABLE `MotherBoard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movement`
--

DROP TABLE IF EXISTS `Movement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movement` (
  `req_id` int(11) NOT NULL AUTO_INCREMENT,
  `source_lab` varchar(10) DEFAULT NULL,
  `dest_lab` varchar(10) DEFAULT NULL,
  `no_of_systems` int(11) DEFAULT NULL,
  `no_of_monitors` int(11) DEFAULT NULL,
  `systems_list` varchar(1000) DEFAULT NULL,
  `monitors_list` varchar(1000) DEFAULT NULL,
  `movement_date` date DEFAULT NULL,
  `movement_time` time DEFAULT NULL,
  `status` enum('pending','active','closed') DEFAULT NULL,
  `remarks` varchar(20000) DEFAULT NULL,
  PRIMARY KEY (`req_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movement`
--

LOCK TABLES `Movement` WRITE;
/*!40000 ALTER TABLE `Movement` DISABLE KEYS */;
/*!40000 ALTER TABLE `Movement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Peripherals`
--

DROP TABLE IF EXISTS `Peripherals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Peripherals` (
  `sub_type` varchar(30) NOT NULL DEFAULT '',
  `make` varchar(30) NOT NULL DEFAULT '',
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`sub_type`,`make`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Peripherals`
--

LOCK TABLES `Peripherals` WRITE;
/*!40000 ALTER TABLE `Peripherals` DISABLE KEYS */;
INSERT INTO `Peripherals` VALUES ('keyboard','Antec',25),('keyboard','Asrock',10),('mouse','Aopen',25),('mouse','ECS',15);
/*!40000 ALTER TABLE `Peripherals` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Table structure for table `Processor`
--

DROP TABLE IF EXISTS `Processor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Processor` (
  `make` varchar(30) NOT NULL DEFAULT '',
  `frequency` varchar(20) NOT NULL DEFAULT '',
  `socket` varchar(30) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`make`,`frequency`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Processor`
--

LOCK TABLES `Processor` WRITE;
/*!40000 ALTER TABLE `Processor` DISABLE KEYS */;
INSERT INTO `Processor` VALUES ('AMD A8-7670K','3.6GHz','FM2+',10),('Intel Core i3-6100','3.7GHz','LGA 1151',5),('Intel Xeon E5-2670','2.6GHz','FCLGA1011',10);
/*!40000 ALTER TABLE `Processor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RAM`
--

DROP TABLE IF EXISTS `RAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RAM` (
  `make` varchar(30) NOT NULL DEFAULT '',
  `size` varchar(20) NOT NULL DEFAULT '',
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`make`,`size`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RAM`
--

LOCK TABLES `RAM` WRITE;
/*!40000 ALTER TABLE `RAM` DISABLE KEYS */;
INSERT INTO `RAM` VALUES ('Corsair','1GB',10),('Kingston','2GB',10),('Samsung','4GB',3);
/*!40000 ALTER TABLE `RAM` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
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
-- Table structure for table `SharedPeripherals`
--

DROP TABLE IF EXISTS `SharedPeripherals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SharedPeripherals` (
  `sub_type` varchar(30) NOT NULL DEFAULT '',
  `make` varchar(30) NOT NULL DEFAULT '',
  `model` varchar(30) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`sub_type`,`make`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SharedPeripherals`
--

LOCK TABLES `SharedPeripherals` WRITE;
/*!40000 ALTER TABLE `SharedPeripherals` DISABLE KEYS */;
INSERT INTO `SharedPeripherals` VALUES ('Printer','Antec','DL:H61M:VS3',30),('Projector','ECS','G41MT:S2',6),('Server','Asrock','G41MT:S2',2),('Xerox','Aopen','DL:H61M:VS3',5);
/*!40000 ALTER TABLE `SharedPeripherals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stock`
--

DROP TABLE IF EXISTS `Stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stock` (
  `type` varchar(100) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stock`
--

LOCK TABLES `Stock` WRITE;
/*!40000 ALTER TABLE `Stock` DISABLE KEYS */;
INSERT INTO `Stock` VALUES ('HDD',47),('Keyboard',30),('Monitor',50),('MotherBoard',60),('Mouse',45),('Printer',30),('Processor',25),('projector',6),('RAM',23),('server',2),('xerox',5);
/*!40000 ALTER TABLE `Stock` ENABLE KEYS */;
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
-- Table structure for table `SystemsInAllLabs`
--

DROP TABLE IF EXISTS `SystemsInAllLabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemsInAllLabs` (
  `lab_name` varchar(20) DEFAULT NULL,
  `CPU_no` varchar(20) NOT NULL DEFAULT '',
  `MotherBoard` varchar(20) DEFAULT NULL,
  `model` varchar(20) DEFAULT NULL,
  `processor` varchar(20) DEFAULT NULL,
  `memory` varchar(20) DEFAULT NULL,
  `HDD` varchar(20) DEFAULT NULL,
  `IP_ADDR` varchar(20) DEFAULT NULL,
  `MAC_ADDR` varchar(20) DEFAULT NULL,
  `MT_no` varchar(20) NOT NULL DEFAULT '',
  `MT_make` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CPU_no`,`MT_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemsInAllLabs`
--

LOCK TABLES `SystemsInAllLabs` WRITE;
/*!40000 ALTER TABLE `SystemsInAllLabs` DISABLE KEYS */;
INSERT INTO `SystemsInAllLabs` VALUES ('FS8','100','DIGILITE','DL:H61MXEL','2.70GHZ','4GB','500GB','','00:17:7C:0F:20:F7','578','ACER'),('FS8','1001','DIGILITE','DL:H61MXEL','2.70GHZ','4GB','500GB','','00:17:7C:0F:20:58','589','ACER'),('FS8','1002','GIGABYTE','H61M:DS2','2.60GHZ','4GB','500GB','','90:2B:34:4F:54:92','603','GATEWAY'),('FS3','1003','ASROCK','H91M:S1 PLES','3 GHZ','4 GB','500 GB','','D0:50:99:86:CB:4B','175','ACER'),('FS3','1004','','','','','','','Extra Monitor','168','ACER'),('FS7','1005','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','4GB','500GB','','DO:50:99:43:64:48','170','ACER'),('FS7','1006','','','','','','','','340','LG'),('FS7','1007','','','','','','','','356','LG'),('FS7','1008','','','','','','','','330','LG'),('FS7','1009','','','','','','','','334','LG'),('FS7','1010','','','','','','','','333','LG'),('FS4','1011','H91M:XT PLUS','ASROCK','3.00GHz','4GB','500GB','','D0:50:99:30:82:AE','KMIT/FS4/MT/196','View Sonic'),('ECESR','1013','','','','','','','','1150',''),('ECESR','1014','D945GCNL','KMIT/ECE SR/CPU/502','','2GB','80GB','','90:2B:34:42:21:69','KMIT/FS2/MT/503','ACER'),('ECESR','1015','H61M:DS2','KMIT/VR/CPU/568','','2GB','160GB','','00:19:D1:87:85:9E','KMIT/FS2/MT/551','ACER'),('ECESR','1016','G41M:Combo','KMIT/ECESR/CPU/532','','2GB','160GB','','6C:F0:49:C7:45:93','KMIT/FS2/MT/566','GATEWAY'),('ECESR','1017','H91M:S1 PLUS','KMIT/ECE/CPU/4th Sys','','4GB','500GB','','D0:50:99:86:CB:3B','KMIT/FS2/MT/515','ACER'),('CP LAB','1018','G41MT:S2P','','3.GHZ','2GB','80 GB','','1C:6F:65:C8:9B:C6','1151','LG'),('CP LAB','1019','D865 GSA','','3.GHZ','2GB','80 GB','','1C:6F:65:C8:9B:C6','1152','LG'),('CP LAB','1020','G41MT:S2P','','3.GHZ','2GB','80 GB','','1C:6F:65:C8:9B:C6','1153','LG'),('CP LAB','1021','H61M:DS2','','3.GHZ','2GB','80 GB','','1C:6F:65:C8:9B:C6','1154','LG'),('CP LAB','1022','DUAL CORE','','3.GHZ','4GB','500GB','','','1155','LG'),('CP LAB','1023','DUAL CORE','','3.GHZ','2GB','500GB','','','1156','LG'),('CP LAB','1024','G41MT:S2P','','2.66 GHZ','2GB','80 GB','','1C:6F:65:DB:6E:F5','1157','LG'),('CP LAB','1025','H91M:S1 PLUS','','3.GHZ','4GB','500GB','','D0:50:99:86:C7:66','1158','LG'),('CP LAB','1026','G41MT:S2P','','2.GHZ','2GB','80 GB','','1C:6F:65:DC:0F:FC','1159','LG'),('CP LAB','1027','H61M:DS2','','2.60 GHZ','2GB','160 GB','','96:2B:34:42:63:72','1160','LG'),('CP LAB','1028','G41MT:S2P','','3.GHZ','2 GB','80 GB','','50:E5:49:56:E8:52','1161','LG'),('CP LAB','1029','DG31PR','','2.GHZ','1GB','40 GB','','00:E6:1C:3B:FC:81','1162','LG'),('CP LAB','1030','H61M:S1:PLUS','','3.GHZ','4GB','500GB','','D0:50:99:73:9F:5A','1163','LG'),('CP LAB','1031','H61M:DS2','','2.7 GHZ','2GB','160 GB','','90:2B:34:B3:1B:68','1164','LG'),('CP LAB','1032','GF7050V:M7:SE','','2.GHZ','1 GB','80 GB','','00:E0:4D:84:B9:68','1165','LG'),('CP LAB','1033','G41MT:S2P','','3.GHZ','2GB','80 GB','','1C:6F:65:C8:58D9','1166','LG'),('CP LAB','1034','H91M:S1 PLUS','','3.GHZ','4GB','500GB','','D0:50:99:86:C7:56','1167','LG'),('CP LAB','1035','H61M:DS2','','2.60 GHZ','2GB','160 GB','','90:2B:34:42:20:6A','1168','LG'),('CP LAB','1036','G41MT:S2P','','3.GHZ','2GB','500GB','','','1169','LG'),('CP LAB','1037','H91M:S1 PLUS','','3.GHZ','4GB','500GB','','','1170','LG'),('CP LAB','1038','G41MT:S2P','','2.7 GHZ','2GB','160 GB','','90:2B:34:B3:09:75','1171','LG'),('CP LAB','1039','G41MT:S2P','','2.7 GHZ','2GB','160 GB','','90:2B:34:B3:09:68','1172','LG'),('CP LAB','1040','GF7050V:M7:SE','','2.GHZ','1 GB','80 GB','','00:E0:4D:83:8A:44','1173','LG'),('CP LAB','1041','GF7050V:M7:SE','','2.GHZ','1 GB','160 GB','','00:E0:4D:85:78:F7','1174','LG'),('CP LAB','1042','H91M:S1:PLUS','','3.GHZ','2GB','500GB','','D0:50:99:86:CE:A4','1175','LG'),('CP LAB','1043','G41MT:S2P','','3.GHZ','4GB','160 GB','','1C:6F:65:DB:6E:E9','1176','LG'),('CP LAB','1044','G41MT:COMBO','','3.GHZ','2GB','80 GB','','6C:F0:49:AE:FA:B1','1177','LG'),('CP LAB','1045','GF7050V:M7:SE','','2.GHZ','1GB','80 GB','','00:E0:4D:83:8D:F2','1178','LG'),('CP LAB','1046','DUAL CORE','','3.GHZ','4GB','500GB','','','1179','LG'),('CP LAB','1047','GF7050V:M7:SE','','3.GHZ','1 GB','80 GB','','00:E0:4D:84:B9:53','1180','LG'),('CP LAB','1048','H61M:S1:PLUS','','3.GHZ','4GB','500 GB','','00:50:99:73:A4:84','1181','LG'),('CP LAB','1049','D945 GCNL','','1.60 GHZ','1 GB','80 GB','','00:19:D1:87:6E:97','1182','LG'),('CP LAB','1050','DUAL CORE','','3.GHZ','2GB','160GB','','','1183','LG'),('CP LAB','1051','GF7050V:M7:SE','','2.GHZ','1 GB','80 GB','','00:E0:4D:85:78:68','1184','LG'),('CP LAB','1052','H61M:DS2','','2.GHZ','2 GB','80 GB','','90:2B:34:4C:79:58','1185','LG'),('CP LAB','1053','DUAL CORE','','3.GHZ','2GB','500GB','','','1186','LG'),('CP LAB','1054','H61M:DS2','','2.7 GHZ','2GB','160 GB','','90:2B:34:B3:09:7C','1187','LG'),('CP LAB','1055','H61M:DS2','','3.GHZ','2 GB','80 GB','','50:E5:49:56:E8:4F','1188','LG'),('CP LAB','1056','H61M:DS2','','3.GHZ','2 GB','80 GB','','1C:6F:65:DC:6D:C7','1189','LG'),('CP LAB','1057','H61M:DS2','','3.GHZ','2 GB','160 GB','','50:E5:49:56:E4:74','1190','LG'),('CP LAB','1058','H61M:DS2','','2.7 GHZ','2 GB','80 GB','','90:2B:34:B3:1A:E6','1191','LG'),('CP LAB','1059','GF7050V:M7:SE','','2.GHZ','1 GB','80 GB','','00:E0:4D:85:78:A8','1192','LG'),('CP LAB','1060','H91M:S1 PLUS','','3.GHZ','4 GB','500 GB','','D0:50:99:86:C7:74','1193','LG'),('CP LAB','1061','G41MT:S2','','3.GHZ','2 GB','80 GB','','50:E5:49:56:D7:37','1194','LG'),('CP LAB','1062','G41MT:S2','','3.GHZ','2GB','160 GB','','90;2B:34:B3:2A:41','1195','LG'),('CP LAB','1063','G41MT:S2P','','2.20 GHZ','2GB','80 GB','','1C:6F:65:DB:E6:06','1196','LG'),('CP LAB','1064','G41MT:DS2','','3.GHZ','2 GB','160 GB','','90:2B:34:B3:29:85','1197','LG'),('CP LAB','1065','G41MT:DS2','','3.GHZ','2GB','160 GB','','90:2B:34:B3:08:A1','1198','LG'),('CP LAB','1066','G41MT:DS2','','3.GHZ','2GB','160 GB','','90:2B:34:B3:27:68','1199','LG'),('CP LAB','1067','G41MT:DS2','','3.GHZ','2GB','80 GB','','90:2B:34:B3:2A:3F','1200','LG'),('CP LAB','1068','DUAL CORE','','3.GHZ','2 GB','160 GB','','','1201','LG'),('CP LAB','1069','H61M:DS2','','3.GHZ','1 GB','80 GB','','90:2B:34:B3:2A:77','1202','LG'),('CP LAB','1070','DG31PR','','3.GHZ','41 B','80 GB','','NO MAC ADD..','1203','LG'),('CP LAB','1071','H41MT:S2','','3.GHZ','2GB','80 GB','','50:E5:49:59:D7:53','1204','LG'),('CP LAB','1072','DUAL CORE','','3.GHZ','4GB','500GB','','','1205','LG'),('CP LAB','1073','H61M:DS2','','2.7GHZ','2 GB','160GB','','90:2B:34:B3:1A:CA','1206','LG'),('CP LAB','1074','H41MT:S2P','','3.GHZ','1 GB','80GB','','1C:6F:65:C8:9B:CA','1207','LG'),('CP LAB','1075','G41MT:S2P','','3.GHZ','2GB','80GB','','1C:6F:65:C8:8A:CA','1208','LG'),('CP LAB','1076','DUAL CORE','','3.GHZ','512 MB','40GB','','','1209','LG'),('CP LAB','1077','H91M:S1 PLUS','','3.GHZ','4GB','500GB','','D0:50:99:86:CE:B0','1210','LG'),('ELCL LAB','1078','D 945 GCR','','1.60 GHZ','1.6 GB','80 GB','','00:19:D1:87:97:CB','1211','ACER'),('ELCL LAB','1079','D 945 GCR','','1.60 GHZ','1.6 GB','80 GB','','001C:C0:0D:09:AA','1212','ACER'),('ELCL LAB','1080','D 945 GCR','','1.60 GHZ','1.6 GB','80 GB','','90:2B:34:B3:1A:D6','1213','ACER'),('ELCL LAB','1081','D 945 GCR','','1.60 GHZ','1.6 GB','80 GB','','00:1C:C0:56:57:AD','1214','ACER'),('ELCL LAB','1082','D 945 GCR','','1.60 GHZ','1. GB','40 GB','','','1215','ACER'),('ELCL LAB','1083','H61M:S1:PLUS','','3.GHZ','3. GB','500GB','','00:16:76:95:69:73','1216','ACER'),('ELCL LAB','1084','DUAL CORE','','3.GHZ','3. GB','500GB','','D0:50:99:73:9F:56','1217','ACER'),('ELCL LAB','1085','DUAL CORE','','1.60 GHZ','3. GB','500GB','','00:19:D1:87:97:E0','1218','ACER'),('ELCL LAB','1086','DUAL CORE','','3.GHZ','1. GB','80 GB','','00:E0:4D:85:78:A7','1219','ACER'),('ELCL LAB','1087','DUAL CORE','','3.GHZ','2. GB','80 GB','','00:E0:4D:78:11:06','1220','ACER'),('ELCL LAB','1088','DUAL CORE','','3.GHZ','1.GB','40 GB','','00:0F:EA:98:E9:DD','1221','ACER'),('ELCL LAB','1089','DUAL CORE','','3.GHZ','1. GB','160 GB','','00:E0:4D:85:78:E7','1222','ACER'),('ELCL LAB','1090','DUAL CORE','','3.GHZ','4. GB','500GB','','D0:50:99:1E:83:79','1223','ACER'),('ELCL LAB','1091','DUAL CORE','','3.GHZ','4. GB','500GB','','BC:5F:F4:BA:4A:A1','1224','ACER'),('ELCL LAB','1092','DUAL CORE','','3.GHZ','4. GB','500GB','','BC:5F:F4:BA:48:BB','1225','ACER'),('ELCL LAB','1093','DUAL CORE','','3.GHZ','1. GB','80 GB','','BC:5F:F4:BA:47:8A','1226','ACER'),('ELCL LAB','1094','DUAL CORE','','3.GHZ','3. GB','500GB','','00:17:7C:0F:20:66','1227','ACER'),('ELCL LAB','1095','DUAL CORE','','3.GHZ','1.6 GB','80 GB','','00:1C:C0:0D:04:F8','1228','ACER'),('ELCL LAB','1096','DUAL CORE','','3.GHZ','4. GB','160 GB','','D0:50:99:1E:84:11','1229','ACER'),('ELCL LAB','1097','DUAL CORE','','1.6 GHZ','3. GB','500GB','','D0:50:99:1E:83:66','1230','ACER'),('ELCL LAB','1098','DUAL CORE','','3.GHZ','2GB','500GB','','','1231','ACER'),('ELCL LAB','1099','DUAL CORE','','2.40 GHZ','512 MB','80 GB','','00:0F:EA:98:E5:E3','1232','ACER'),('ELCL LAB','1100','DUAL CORE','','1.6 GHZ','1.6 GB','80 GB','','00:E0:4D:85:78:E7','1233','ACER'),('ELCL LAB','1101','DUAL CORE','','3.GHZ','4. GB','500GB','','BC:5F:F4:B9:22:F9','1234','ACER'),('ELCL LAB','1102','DUAL CORE','','3.GHZ','4. GB','500GB','','D0:50:99:1E:82:52','1235','ACER'),('ELCL LAB','1103','DUAL CORE','','3.GHZ','2GB','500GB','','','1236','ACER'),('ELCL LAB','1104','DUAL CORE','','3.GHZ','1. GB','40 GB','','00:1C:C0:0D:05:30','1237','ACER'),('ELCL LAB','1105','DUAL CORE','','3.GHZ','4. GB','80 GB','','D0:50:99:81:00:9C','1238','ACER'),('ELCL LAB','1106','DUAL CORE','','3.GHZ','1. GB','80 GB','','00:19:D1:28:C9:48','1239','ACER'),('ELCL LAB','1107','DUAL CORE','','3.GHZ','2GB','80 GB','','','1240','ACER'),('ELCL LAB','1108','DUAL CORE','','1.6 GHZ','2GB','80 GB','','00:19:D1:87:86:41','1241','ACER'),('STAFF ROOM 1','1109','H61M:DS2','','2.70 GHZ','4 GB','500 GB','','90:2B:34:B3:1A:D6','1242','AOC'),('STAFF ROOM 1','1110','DL:H61M:VG3','','3.00 GHZ','4 GB','500 GB','','BC:5F:F4:B9:23:09','1243','ACER'),('STAFF ROOM 1','1111','G41MT:S2','','3.00 GHZ','2 GB','250 GB','','50:E5:49:56:E5:72','1244','LG'),('STAFF ROOM 2','1112','DL:H61MXEL','','2.70 GHZ','4 GB','150 GB','','00:17:7C:0F:20:66','1245','LG'),('STAFF ROOM 2','1113','G41MT:COMBO','','3.00 GHZ','4 GB','500 GB','','6C:F0:49:C7:45:95','1246','LG'),('STAFF ROOM 2','1114','G41M:ES2L','','3.00 GHZ','2 GB','250 GB','','6C:F0:49:F2:D6:8D','1247','LG'),('STAFF ROOM 3','1115','D945 GCR','','1.60 GHZ','4 GB','80 GB','','00:1C:C0:0C:B6:14','1248','LG'),('Chemistry Lab','1116','G41M:S2P','','3.00 GHZ','2 GB','160 GB','','50:E5:49:28:AA:1C','1249','View Sonic'),('RESEARCH ROOM 1','1117','H61M:S1:PLUS','','3.00 GHZ','8 GB','500 GB','','D0:50:99:2A:D6:88','1250','LG'),('RESEARCH ROOM 1','1118','B150M:PRO4V','','3.40 GHZ CORE i7','16 GB','1 TB','','54:2A:A2:80:12:9D','1251','LG'),('RESEARCH ROOM 1','1119','H61M:S1:PLUS','','3.00 GHZ','4 GB','500 GB','','00:50:99:AD:AD:0A','1252','View Sonic'),('RESEARCH ROOM 1','1120','H61M:S1:PLUS','','3.00 GHZ','4 GB','500 GB','','D0:50:99:3C:7A:AE','1253','AOC'),('RECEPTION','1121','H61M:S1:PLUS','','3.00 GHZ','4 GB','500 GB','','D0:50:99:3C:7B:B7','1254','ACER'),('RECEPTION','1122','H61M:DS2','','2.60 GHZ','8 GB','500 GB','','90:2B:34:3A:05:B9','1255','ACER'),('RECEPTION','1123','H61M:S1:PLUS','','3.00 GHZ','8 GB','500 GB','','D0:50:99:80:FF:20','1256','ACER'),('RECEPTION','1124','H61M:S1:PLUS','','3.00 GHZ','4 GB','250 GB','','D0:50:99:3C:7B:ED','1257','LG'),('TESSELLATOR ROOM','1125','XEON CPU E98683:352','','3.10 GHZ','32 GB','500 GB','','00:1E:67:79:BA:33','1258','LG'),('TESSELLATOR ROOM','1126','Z97:C','','4.00 GHZ CORE i7','16 GB','500 GB','','F0:79:59:93:FE:52','1259','ACER'),('TESSELLATOR ROOM','1127','Z97:C','','4.00 GHZ CORE i7','16 GB','1 TB','','F0:79:59:93:FF:DF','1260','ACER'),('TESSELLATOR ROOM','1128','H61M:DS2','','2.60 GHZ','4 GB','500 GB','','90:2B:34:39:D4:95','1261','ACER'),('TESSELLATOR ROOM','1129','G41M:COMBO','','3.00 GHZ','2 GB','500 GB','','6C:F0:49:C5:19:C4','1262','ACER'),('TESSELLATOR ROOM','1130','DL:H61M:VS3','','2.80 GHZ','8 GB','500 GB','','BC:5F:F4:74:7B:79','1263',''),('TESSELLATOR ROOM','1131','DL:H61M:VS4','','3.00 GHZ','4 GB','500 GB','','BC:5F:F4:C8:08:6D','1264',''),('TESSELLATOR ROOM','1132','H61M:DS2','','2.60 GHZ','4 GB','500 GB','','90:2B:34:39:D4:82','1265','LG'),('TESSELLATOR ROOM','1133','DH61HO','','3.20 GHZ CORE i3','8 GB','500 GB','','EC:A8:6B:76:8F:DF','1266','View Sonic'),('TESSELLATOR ROOM','1134','DH55TC','','3.70 GHZ CORE i3','8 GB','500 GB','','38:60:77:9C:53:3D','1267','View Sonic'),('FS1','1135','INTEL','DG31PR','C0re:2.93GHz','2GB','250','','00:1C:C0:D4:81:B7','FS1:22','AOC'),('FS1','1136','INTEL','DG31PR','C0re:2.93GHz','2GB','250','','00:27:OE:04:D3:55','FS1:51','AOC'),('FS1','1137','ASROCK','H61M:S1 PLUS','P4:2.80GHz','4GB','500','','D0:50:99:3C:7C:E7','FS1:1','AOC'),('FS1','1138','','','','','','','Movement','FS1:15','AOC'),('FS10','1139','GIGABYTE','Z170M:D3H','4.00GHZ','32GB','1TB','','40:80:5C:DE:03:B9','567',''),('R&D','1140','','','','','','','','1270','LG'),('R&D','1141','','','','','','','','1271','LG'),('R&D','1142','','','','','','','','1272','LG'),('R&D','1143','','','','','','','Maitenance','1273','LG'),('R&D','1144','','','','','','','Maitenance','1274','LG'),('R&D','1145','','','','','','','Maitenance','1275','LG'),('R&D','1146','','','','','','','Maitenance','1276','LG'),('R&D','1147','','','','','','','Maitenance','1277','LG'),('FS6','117','INTEL(R)','S3420GP','2.40Ghz','4GB','2TB','10.11.32.1','00:15:17:c8:1b:fe','113','ACER'),('FS3','118','GIGABYTE','GA G41MTS2','3 GHZ','2 GB','500 GB','','6C:F0:49:C9:64:A1','153','ACER'),('FS7','119','DIGILITE','DL H61M:VS3','2.PENTIUM G2010 CPU@','2GB','500GB','','BC:5F:F4:8F:97:CA','328','LG'),('FS3','120','GIGABYTE','GA G41MTS2','2.90 GHZ','4 GB','500 GB','','FC:AA:14:67:07:65','132','ACER'),('FS7','122','DIGILITE','DL H61M:VS3','2.PENTIUM G2010 CPU@','4GB','500GB','','BC:5F:F4:74:EC:D8','128','ACER'),('FS3','123','GIGABYTE','GA G41MTS2','3 GHZ','2 GB','500 GB','','6C:F0:49:C8:81:98','156','ACER'),('FS3','124','GIGABYTE','GA G41MTS2','2 GHZ','4 GB','500 GB','','6C:F0:49:C5:19:C6','121','ACER'),('FS3','126','GIGABYTE','GA G41MTS2','3 GHZ','4 GB','500 GB','','6C:F0:49:C9:29:D3','135','ACER'),('FS3','127','GIGABYTE','GA G41MTS2','2 GHZ','2 GB','500 GB','','6C:F0:49:C5:19:D1','127','ACER'),('FS7','128','DIGILITE','DL H61M:VS3','2.PENTIUM G2010 CPU@','4GB','500GB','','BC:5F:F4:74:EC:46','327','LG'),('FS3','129','GIGABYTE','GA G41MTS2','3 GHZ','2 GB','500 GB','','6C:F0:49:C9:29:D4','142','ACER'),('FS3','130','GIGABYTE','GA G41MTS2','3 GHZ','2 GB','500 GB','','6C:F0:49:C9:2A:86','123','ACER'),('FS3','131','GIGABYTE','GA G41MTS2','3 GHZ','4 GB','500 GB','','6C:F0:49:C5:19:D3','118','ACER'),('FS7','131','DIGILITE','DL H61M:VS3','2.PENTIUM G2010 CPU@','4GB','500GB','','BC:5F:F4:74:EC:D2','152','ACER'),('FS3','132','GIGABYTE','GA G41MTS2','3 GHZ','4 GB','500 GB','','6C:F0:49:C9:0F:7B','129','ACER'),('FS3','133','GIGABYTE','GA G41MTS2','2 GHZ','2 GB','500 GB','','6C:F0:49:C9:64:CB','130','ACER'),('FS7','134','DIGILITE','DL H61M:VS3','2.PENTIUM G2010 CPU@','2GB','500GB','','BC:5F:F4:74:EC:91','344','LG'),('FS3','135','GIGABYTE','GA G41MTS2','3 GHZ','2 GB','500 GB','','','169','ACER'),('FS3','136','GIGABYTE','GA G41MTS2','3 GHZ','2 GB','500 GB','','6C:F0:49:C9:2A:7F','133','ACER'),('FS7','137','DIGILITE','DL H61M:VS3','2.PENTIUM G2010 CPU@','2GB','500GB','','BC:5F:F4:74:EC:B7','342','LG'),('FS3','138','GIGABYTE','GA G41MTS2','3 GHZ','2 GB','500 GB','','6C:F0:49:C9:0F:7E','117','ACER'),('FS3','139','GIGABYTE','GA G41MTS2','3 GHZ','2 GB','500 GB','','6C:F0:49:C9:6C:75','136','ACER'),('FS7','140','GIGABYTE','G41 COMBO','DUAL CORE E5700@3.00','2GB','500GB','','6C:FO:49:C9:77:3C','319','LG'),('FS3','141','DIGILITE','DL:H61M:VS3','2.80 GHZ','4 GB','500 GB','','BC:5F:F4:74:EC:98','150','ACER'),('FS3','142','GIGABYTE','GA G41MTS2','3 GHZ','2 GB','500 GB','','6C:F0:49:C9:0F:BF','139','ACER'),('FS7','143','GIGABYTE','G41 COMBO','DUAL CORE E5700@3.00','2GB','500GB','','6C:FO:49:C7:56:B0','161','ACER'),('FS3','144','DIGILITE','DL:H61M:VS3','2.8 GHZ','2 GB','500 GB','','BC:5F:F4:8F:97:B6','120','ACER'),('FS3','145','DIGILITE','DL:H61M:VS3','2.80 GHZ','4 GB','500 GB','','BC:5F:F4:8F:97:D8','157','ACER'),('FS3','147','DIGILITE','DL:H61M:VS3','2.80 GHZ','4 GB','500 GB','','BC:5F:F4:74:EB:EC','124','ACER'),('FS7','149','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','2GB','500GB','','50:E5:49:56:2D:FB','134','ACER'),('FS3','150','GIGABYTE','GA G41MTS2','3 GHZ','4 GB','500 GB','','6C:F0:49:C7:4A:F2','162','ACER'),('FS3','151','GIGABYTE','GA G41MTS2','3 GHZ','4 GB','500 GB','','6C:F0:49:C9:28:A4','145','ACER'),('FS7','152','DIGILITE','DL H61M:VS3','2.PENTIUM G2010 CPU@','2GB','500GB','','BC:5F:F4:74:7B:6A','343','LG'),('FS3','153','GIGABYTE','GA G41MTS2','3 GHZ','4 GB','500 GB','','6C:F0:49:C9:33:6C','165','ACER'),('FS3','154','GIGABYTE','GA G41MTS2','3 GHZ','4 GB','500 GB','','6C:F0:49:C9:29:D1','151','ACER'),('FS7','155','DIGILITE','DL H61M:VS3','2.PENTIUM G2010 CPU@','4GB','500GB','','BC:5F:F4:74:EC:C5','357','LG'),('FS3','156','GIGABYTE','GA G41MTS2','3 GHZ','4 GB','250 GB','','6C:F0:49:C9:64:B0','171','ACER'),('FS3','157','GIGABYTE','GA G41MTS2','3 GHZ','2 GB','500 GB','','6C:F0:49:C9:29:D6','141','ACER'),('FS7','158','DIGILITE','DL H61M:VS3','2.PENTIUM G2010 CPU@','2GB','500GB','','BC:5F:F4:74:EC:DF','320','LG'),('FS7','160','DIGILITE','DL H61M:VS3','2.PENTIUM G2010 CPU@','4GB','500GB','','BC:5F:F4:74:EC:C6','146','ACER'),('FS3','160','GIGABYTE','GA G41MTS2','3 GHZ','2 GB','500 GB','','6C:F0:49:C9:29:D2','163','ACER'),('FS3','162','GIGABYTE','GA G41MTS2','3 GHZ','2 GB','500 GB','','6C:F0:49:C8:EE:84','147','ACER'),('FS3','163','GIGABYTE','GA G41MTS2','3 GHZ','2 GB','500 GB','','6C:F0:49:C9:64:A2','160','ACER'),('FS3','165','GIGABYTE','GA G41MTS2','3 GHZ','4 GB','500 GB','','6C:F0:49:C9:65:8A','115','ACER'),('FS3','166','GIGABYTE','GA G41MTS2','3 GHZ','2 GB','500 GB','','6C:F0:49:C9:2A:6C','166','ACER'),('FS7','167','DIGILITE','DL H61M:VS3','2.PENTIUM G2010 CPU@','2GB','500GB','','BC:5F:F4:74:EC:CF','345','LG'),('FS3','168','','','','','','','Maintenance','144','ACER'),('FS3','169','GIGABYTE','GA G41MTS2','3 GHZ','2 GB','500 GB','','6C:F0:49:C8:CC:D1','154','ACER'),('FS3','171','GIGABYTE','GA G41MTS2','3 GHZ','4 GB','500 GB','','6C:F0:49:C9:29:AE','174','ACER'),('FS3','172','DIGILITE','DL:H61M:VS3','3 GHZ','4 GB','500 GB','','00:FF:25:B9:87:D8','138','ACER'),('FS10','173','DIGILITE','DL:H61M:VS3','2.80GHZ','8GB','500GB','','BC:5F:F4:74:7C:51','82',''),('FS3','174','GIGABYTE','GA G41MTS2','3 GHZ','2 GB','500 GB','','6C:F0:49:C9:2A:95','172','ACER'),('FS10','175','DIGILITE','DL:H61M:VS3','2.80GHZ','8GB','500GB','','BC:5F:F4:74:EC:D4','104',''),('FS3','177','DIGILITE','DL:H61M:VS3','2.80 GHZ','4 GB','500 GB','','BC:5F:F4:74:EC:D9','148','ACER'),('FS6','258','Gigabyte','G41MT:S2','3.00GHz','2GB','500GB','10.11.33.101','50:e5:49:56:d6:c4','254','AOC'),('FS6','259','AsRock','H91M:XT Plus','3.00GHz','4GB','160GB','10.11.33.103','d0:50:99:ad:ab:c0','255','ACER'),('FS6','260','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','500GB','10.11.33.105','bc:5f:f4:8f:98:9c','258','AOC'),('FS6','261','Gigabyte','G41M:Combo','3.00GHz','1GB','160GB','10.11.33.104','6c:f0:49:c5:19:e1','257','AOC'),('FS6','263','Gigabyte','H61M:DS2','2.60GHz','2GB','160GB','10.11.33.106','90:2b:34:42:64:da','259','ACER'),('FS6','264','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','250GB','10.11.33.107','bc:5f:f4:8f:97:dc','260','ACER'),('FS6','265','Gigabyte','H61M:DS2','2.60GHz','4GB','500GB','10.11.33.108','90:2b:34:42:64:77','261','LG'),('FS6','266','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','160GB','10.11.33.109','bc:5f:f4:97:32:a4','262','ACER'),('FS6','267','AsRock','H91M:XT Plus','3.00GHz','4GB','500GB','10.11.33.110','d0:50:99:ad:af:9f','263','LG'),('FS6','268','Gigabyte','G41MT:S2','3.00GHz','4GB','80GB','10.11.33.111','50:e5:49:56:e4:ad','264','LG'),('FS6','269','Gigabyte','H61M:DS2','2.60GHz','2GB','160GB','10.11.33.112','90:2b:34:42:64:de','265','AOC'),('FS6','270','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','80GB','10.11.33.113','bc:5f:f4:97:32:97','266','LG'),('FS6','271','DIGILITE','DL:H61M:VS3','2.80GHz','2GB','250GB','10.11.33.114','bc:5f:f4:97:34:de','267','ACER'),('FS6','272','Gigabyte','G41MT:S2','3.00GHz','2GB','500GB','10.11.33.115','50:e5:49:56:e0:d7','268','LG'),('FS6','273','BIOSTAR','G31:M7 TE','2.00GHz','1GB','80GB','10.11.33.159','00:e0:4d:99:9a:03','312','LG'),('FS6','274','Gigabyte','G41MT:S2P','3.00GHz','2GB','250GB','10.11.33.117','1c:6f:65:dc:2d:ec','270','ACER'),('FS6','275','ASRock','H61M:S1 PLUS','3.00GHz','4GB','160GB','10.11.33.154','d0:50:99:73:9f:5e','307','AOC'),('FS6','276','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','80GB','10.11.33.119','bc:5f:f4:97:32:98','272','ACER'),('FS6','277','Gigabyte','G41MT:S2','3.00GHz','2GB','160GB','10.11.33.120','50:e5:49:56:e8:4a','273','LG'),('FS6','278','Gigabyte','G41MT:S2','3.00GHz','2GB','250GB','10.11.33.121','50:e5:49:56:e6:b1','274','ACER'),('FS6','279','ASRock','H91M:S1 PLUS','3.10Ghz','4GB','500GB','10.11.33.122','d0:50:99:7b:48:4f','275','ACER'),('FS6','280','Gigabyte','H61M:DS2','2.70GHz','2GB','160GB','10.11.33.123','90:2b:34:4f:57:6d','276','AOC'),('FS6','281','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','160GB','10.11.33.124','bc:5f:f4:8f:97:d2','277','LG'),('FS6','282','Gigabyte','H61M:S1','2.90GHz','4GB','80GB','10.11.33.127','fc:aa:14:67:06:04','280','AOC'),('FS6','283','Gigabyte','H61M:DS2','2.60GHz','2GB','160GB','10.11.33.126','90:2b:34:42:64:e4','279','ACER'),('FS6','284','Gigabyte','G41MT:S2','3.00GHz','2GB','500GB','10.11.33.125','50:e5:49:49:1d:ca','278','LG'),('FS6','285','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','500GB','10.11.33.128','bc:5f:f4:74:7b:88','281','AOC'),('FS6','286','Gigabyte','H61M:DS2','2.60GHz','4GB','160GB','10.11.33.129','90:2b:34:42:20:99','282','LG'),('FS6','287','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','160GB','10.11.33.130','bc:5f:f4:8f:97:d4','283','LG'),('FS6','288','ASRock','H91M:S1 PLUS','3.20Ghz','2GB','500GB','10.11.33.131','d0:50:99:86:ca:11','284','AOC'),('FS6','289','Gigabyte','H61M:DS2','2.60GHz','4GB','80GB','10.11.33.132','90:2b:34:42:65:76','285','AOC'),('FS6','290','Gigabyte','H61M:DS2','2.60GHz','2GB','160GB','10.11.33.133','90:2b:34:42:25:17','286','LG'),('FS6','291','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','160GB','10.11.33.134','bc:5f:f4:74:7b:53','287','ACER'),('FS6','292','Gigabyte','H61M:DS2','2.60GHz','4GB','250GB','10.11.33.135','90:2b:34:3a:00:96','288','ACER'),('FS6','294','Gigabyte','G41M:Combo','3.00GHz','2GB','500GB','10.11.33.137','6c:f0:49:c7:4a:32','290','AOC'),('FS6','295','DIGILITE','DL:H61M:VS3','2.80GHz','2GB','160GB','10.11.33.138','bc:5f:f4:97:35:21','291','ACER'),('FS6','296','Gigabyte','G41MT:S2','3.00GHz','2GB','500GB','10.11.33.139','50:e5:49:49:aa:73','292','LG'),('FS6','297','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','500GB','10.11.33.140','bc:5f:f4:97:35:20','293','ACER'),('FS6','298','Gigabyte','G41MT:S2','3.00GHz','2GB','500GB','10.11.33.141','50:e5:49:56:e0:fc','294','ACER'),('FS6','299','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','500GB','10.11.33.142','bc:5f:f4:8f:97:e5','295','ACER'),('FS6','300','Gigabyte','H61M:DS2','2.60GHz','2GB','160GB','10.11.33.143','90:2b:34:42:22:b8','296','ACER'),('FS6','301','Gigabyte','H61M:DS2','2.70GHz','2GB','160GB','10.11.33.144','90:2b:34:4f:56:f4','297','ACER'),('FS6','302','Gigabyte','G41MT:S2','3.00GHz','2GB','250GB','10.11.33.145','50:e5:49:56:e0:9b','298','LG'),('FS6','303','Gigabyte','G41MT:S2','3.00GHz','2GB','160GB','10.11.33.146','50:e5:49:49:6a:a4','299','LG'),('FS6','304','DIGILITE','DL:H61M:VS3','2.80GHz','2GB','500GB','10.11.33.147','bc:5f:f4:97:34:dd','300','AOC'),('FS6','305','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','160GB','10.11.33.148','bc:5f:f4:74:7b:81','301','ACER'),('FS6','306','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','500GB','10.11.33.149','bc:5f:f4:8f:97:df','302','AOC'),('FS6','307','DIGILITE','DL:H61M:VS3','2.70GHz','4GB','500GB','10.11.33.150','bc:5f:f4:97:35:08','303','AOC'),('FS6','308','Gigabyte','G41M:Combo','3.00GHz','1GB','80GB','10.11.33.151','6c:f0:49:a7:9a:bd','304','AOC'),('FS6','309','Gigabyte','H61M:S1','2.90GHz','2GB','160GB','10.11.33.152','fc:aa:14:67:06:07','305','AOC'),('FS6','310','ASRock','H61M:S1 PLUS','3.00GHz','2GB','80GB','10.11.33.155','d0:50:99:73:a4:a5','308','ACER'),('FS6','311','ASRock','H61M:S1 PLUS','3.00GHz','2GB','160GB','10.11.33.157','d0:50:99:73:9f:60','310','LG'),('FS3','314','ASROCK','H91M:S1 PLES','3 GHZ','4 GB','500 GB','','D0:50:99:86:CB:47','159','ACER'),('FS6','315','Gigabyte','H61M:DS2','2.60GHz','2GB','250GB','10.11.33.153','90:2b:34:42:64:b9','306','AOC'),('FS6','316','Intel','DG31PR','2.80GHz','3GB','80GB','10.11.33.160','00:1c:c0:e8:97:ed','313','ACER'),('FS6','317','DIGILITE','DL:H61M:VS3','2.80GHz','2GB','500GB','10.11.33.116','bc:5f:f4:97:32:96','269','LG'),('FS6','318','DIGILITE','DL:H61M:VS3','2.80GHz','2GB','80GB','10.11.33.158','bc:5f:f4:74:7b:76','311','AOC'),('FS6','319','ASRock','H61M:S1 PLUS','3.00GHz','4GB','500GB','10.11.33.156','d0:50:99:73:9f:ff','309','ACER'),('FS6','321','DIGILITE','DL:H61M:VS3','2.80GHz','2GB','500GB','10.11.33.118','bc:5f:f4:97:35:16','271','AOC'),('NBA','322','Gigabyte','G41MT:S2','3.00Ghz','2GB','500GB','10.11.34.23','50:E5:49:56:E2:E7','316','ACER'),('FS7','324','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','2GB','500GB','','50:E5:49:56:E3:5F','332','LG'),('FS7','328','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','2GB','500GB','','50:E5:49:56:E3:38','322','LG'),('FS7','329','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','2GB','500GB','','50:E5:49:56:E3:5E','164','ACER'),('FS10','330','GIGABYTE','G41MT:S2P','3.00GHz','8GB','250GB','','50:E5:49:56:E5:71','569',''),('FS7','331','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','2GB','500GB','','50:E5:49:56:42:46','149','ACER'),('FS7','333','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','2GB','80GB','','50:E5:49:56:2D:6E','318','LG'),('FS7','338','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','2GB','500GB','','50:E5:49:56:2E:33','323','LG'),('FS7','341','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','2GB','500GB','','50:E5:49:56:E3:36','326','LG'),('FS7','342','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','2GB','500GB','','50:E5:49:56:D7:93','346','LG'),('FS7','345','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','2GB','500GB','','50:E5:49:56:41:F2','336','LG'),('FS7','346','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','2GB','500GB','','50:E5:49:56:EC:0D','140','ACER'),('FS7','347','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','2GB','250GB','','50:E5:49:56:2D:FD','327','LG'),('FS10','348','GIGABYTE','G41MT:S2P','3.00GHz','8GB','500GB','','1C:6F:65:CC:FA:D1','359',''),('FS10','349','GIGABYTE','G41MT:S2P','3.00GHz','6GB','500GB','','50:E5:49:56:2E:4C','76',''),('FS7','351','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','2GB','500GB','','50:E5:49:56:1B:95','324','LG'),('FS7','352','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','2GB','80GB','','50:E5:49:56:E3:53','339','LG'),('FS7','353','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','2GB','500GB','','50:E5:49:56:2D:C8','355','LG'),('FS7','354','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','4GB','500GB','','6C:FO:49:C7:47:83','354','LG'),('FS7','355','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','2GB','500GB','','50:E5:49:56:2E:03','349','LG'),('FS7','356','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','2GB','500GB','','50:E5:49:56:2E:0F','350','LG'),('FS7','357','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','2GB','500GB','','50:E5:49:56:E2:C4','351','LG'),('FS7','358','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','2GB','500GB','','50:E5:49:56:2D:8A','158','ACER'),('FS7','359','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','2GB','500GB','','50:E5:49:56:41:77','341','LG'),('FS7','360','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','2GB','500GB','','50:E5:49:56:1B:B3','338','LG'),('FS7','361','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','2GB','500GB','','50:E5:49:56:2D:FD','125','ACER'),('R&D','361','GIGABYTE','G41MT:S2','3 GHZ','2 GB','80 GB','','50:E5:49:BB:F0:69:LG','374','LG'),('FS7','362','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','2GB','500GB','','1C:6F:65:ED:4E:88','137','ACER'),('FS7','363','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','2GB','500GB','','50:E5:49:56:E3:00','325','LG'),('FS7','368','GIGABYTE','G41MT:S2','DUAL CORE E5700@3.00','2GB','250GB','','50:E5:49:56:E2:C4','348','LG'),('R&D','368','','','','','','','Maitenance','366','LG'),('R&D','369','GIGABYTE','GA:H61M:DS2','2.70GHZ','2 GB','150 GB','','Maitenance','365','LG'),('R&D','369','','','','','','','Maitenance','387','LG'),('R&D','370','INTEL','G31:M7:TE','2.20GHZ','1 GB','500 GB','','00:E0:40:A1:9C:48','375','View Sonic'),('R&D','371','DIGILITE','DL:H61M:VG4','2.90GHZ','4 GB','80 GB','','BC:5F:F4:CF:0E:C7','378','ACER'),('R&D','373','GIGABYTE','G41M:COMBO','3 GHZ','1 GB','80 GB','','CC:F0:49:C9:C6:76','368','LG'),('R&D','373','GIGABYTE','G41MT:S2','3 GHZ','2 GB','150 GB','','50:E5:49:BB:F0:9E','377','LG'),('R&D','374','INTEL','D865GLC','3.06GHZ','512 MB','80 GB','','00:19:D1:28:C8:A6','362','LG'),('R&D','375','INTEL','ATI','2.60GHZ','1 GB','500 GB','','00:13:20:DA:28:C7','381','LG'),('R&D','377','GIGABYTE','G41MT:S2','3 GHZ','4 GB','250 GB','','50:E5:49:BB:F0::29','367','LG'),('R&D','378','INTEL','D945G','1.60GHZ','1 GB','80 GB','','00:19:D1:87:88:79','363','View Sonic'),('R&D','379','','','','','','','Maitenance','379','ACER'),('R&D','380','','','','','','','Maitenance','361','LG'),('R&D','381','INTEL','D11020M','2.60GHZ','1 GB','500 GB','','00:16:76:C6:22:9D','364','LG'),('R&D','383','INTEL','D945GCR','1.60GHZ','2 GB','80 GB','','00:19:D1:87:88:8F','376','LG'),('R&D','384','INTEL','','','2 GB','80 GB','','Not Booting','360','LG'),('R&D','385','','','','','','','Maitenance','380','LG'),('FS8','393','DIGILITE','DL:H61MXEL','2.70GHZ','4GB','500GB','','00:17:7C:0F:20:FE','591','ACER'),('FS8','394','DIGILITE','DL:H61MXEL','2.70GHZ','4GB','500GB','','00:17:7C:0F:20:65','462','ACER'),('FS8','395','DIGILITE','DL:H61MXEL','2.70GHZ','4GB','500GB','','00:17:7C:0F:20:ED','1148','AOC'),('FS8','396','DIGILITE','DL:H61MXEL','2.70GHZ','4GB','500GB','','00:17:7C:0F:20:D7','592','ACER'),('FS8','397','DIGILITE','DL:H61MXEL','2.70GHZ','4GB','500GB','','00:17:7C:19:17:B7','596','ACER'),('FS8','398','DIGILITE','DL:H61MXEL','2.70GHZ','4GB','500GB','','00:17:7C:0F:1F:03','390','LG'),('FS8','403','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:30:96:0F','391','LG'),('FS8','404','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:30:97:17','155','ACER'),('FS8','405','DIGILITE','DL:H61MXEL','2.70GHZ','4GB','500GB','','00:17:7C:19:19:2A','582','ACER'),('FS8','406','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:3C:7B:E9','606','GATEWAY'),('R&D','408','DIGILITE','DL:H61M:VS3','2.70GHZ','4 GB','500 GB','','00:17:7C:0F:20:F0','370','LG'),('FS8','409','DIGILITE','DL:H61MXEL','2.70GHZ','4GB','500GB','','00:17:7C:19:17:71','594','ACER'),('FS8','410','DIGILITE','DL:H61MXEL','2.70GHZ','4GB','500GB','','00:17:7C:19:17:B8','595','ACER'),('FS8','411','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:43:66:FA','400','LG'),('FS8','485','GIGABYTE','H61M:DS2','2.60GHZ','4GB','500GB','','90:2B:34:39:6C:93','604','GATEWAY'),('FS10','51','','','','','','','','1269',''),('FS6','531','ASRock','H91M:S1 PLUS','3.20Ghz','2GB','500GB','10.11.33.136','d0:50:99:86:ca:07','289','ACER'),('FS6','532','DIGILITE','DL:H61M:VS3','2.80GHz','4GB','500GB','10.11.33.102','bc:5f:f4:74:7b:84','256','ACER'),('FS3','534','ASROCK','H91M:S1 PLES','3 GHZ','4 GB','500 GB','','D0:50:99:86:CB:39','126','ACER'),('FS10','549','DIGILITE','DL:H61M:VS3','3.00GHz','4GB','500GB','','BC:5F:F4:D9:23:01','1268',''),('NBA','570','ASRock','H61M:S1 PLUS','3.00Ghz','4GB','500GB','','D0:50:99:43:67:26','461','LG'),('FS10','574','ASROCK','H61M:S1 PLUS','3.00GHz','8GB','500GB','','D0:50:99:43:66:F6','335',''),('FS10','575','ASROCK','H61M:S1 PLUS','3.00GHz','8GB','500GB','','D0:50:99:43:66:F0','555',''),('FS10','578','ASROCK','H61M:S1 PLUS','3.00GHz','8GB','500GB','','D0:50:99:43:68:08','347',''),('FS10','582','ASROCK','H61M:S1 PLUS','3.00GHz','8GB','500GB','','D0:50:99:3C:7B:49','562',''),('FS10','583','ASROCK','H61M:S1 PLUS','3.00GHz','8GB','500GB','','D0:50:99:43:67:27','554',''),('FS10','584','ASROCK','H61M:S1 PLUS','3.00GHz','8GB','500GB','','','331',''),('FS8','587','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:2C:12:F4','587','ACER'),('FS8','588','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:2A:D9:0B','583','ACER'),('FS8','589','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:2A:D9:0F','586','ACER'),('FS8','590','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:2A:D9:11','572','ACER'),('FS8','591','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:2A:D4:2D','576','ACER'),('FS8','592','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:2A:D9:2A','585','ACER'),('FS8','594','DIGILITE','DL:H61MXEL','2.70GHZ','4GB','500GB','','00:17:7C:0F:20:EB','584','ACER'),('FS8','595','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:2A:D9:29','575','ACER'),('FS8','596','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:2A:D9:1F','605','GATEWAY'),('FS8','597','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:2A:D8:25','581','ACER'),('FS8','598','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:2A:D8:EF','580','ACER'),('FS8','599','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:2A:D8:E4','579','ACER'),('FS8','600','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:2A:D9:23','556','ACER'),('FS8','600','DIGILITE','DL:H61MXEL','2.70GHZ','4GB','160GB','','00:17:7C:0F:20:E9','600','GATEWAY'),('FS8','601','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:2A:D9:2B','573','ACER'),('FS8','602','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:2A:D9:20','574','ACER'),('FS8','603','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:2A:D9:1B','597','ACER'),('FS8','604','DIGILITE','DL:H61MXEL','2.70GHZ','4GB','500GB','','00:17:7C:19:15:F4','588','ACER'),('FS8','605','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:2A:D9:1D','577','ACER'),('FS8','606','ASROCK','H91M:XT:PLUS','3.00GHz','2GB','500GB','','70:85:C2:03:9F:F7','398','LG'),('FS8','607','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:3C:7B:BB','598','ACER'),('FS8','609','DIGILITE','DL:H61MXEL','2.70GHZ','4GB','160GB','','00:17:7C:0F:20:59','1149','LG'),('FS8','611','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:30:86:5F','607','GATEWAY'),('FS8','612','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:30:97:14','389','LG'),('FS8','613','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:30:97:13','392','LG'),('FS8','614','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:30:96:17','387','LG'),('FS8','616','ASROCK','H91M:XT:PLUS','3.00GHz','2GB','500GB','','70:85:C2:03:9F:15','384','LG'),('FS8','617','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:30:14:B9','590','ACER'),('FS8','618','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:30:97:2C','593','ACER'),('FS8','619','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:30:97:0A','395','LG'),('FS8','620','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:30:97:38','608','GATEWAY'),('FS8','621','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:30:95:FC','385','LG'),('FS8','622','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:30:97:04','601','GATEWAY'),('FS8','623','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:30:97:23','386','LG'),('FS8','624','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:30:97:18','602','GATEWAY'),('FS8','625','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:30:86:63','490','ACER'),('FS8','626','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:30:96:01','393','LG'),('FS8','627','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:30:97:1D','382','LG'),('FS8','628','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:30:96:08','401','LG'),('FS8','629','ASROCK','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:30:97:1C','396','ACER'),('ECA LAB','ACLAB:504','GIGABYTE','G41M:S2P','Dualcore:3.00GHz','2GB','500','','50:E5:49:BB:F0:8D','ACLAB:504','ACER'),('ECA LAB','ACLAB:505','GIGABYTE','G41M:S2P','Dualcore:3.00GHz','2GB','250','','6C:F0:49:C9:0F:70','ICLAB:505','LG'),('ECA LAB','ACLAB:506','GIGABYTE','G41M:S2P','Dualcore:3.00GHz','2GB','500','','00:24:1D:FA:79:5E','ACLAB:489','ACER'),('ECA LAB','ACLAB:508','GIGABYTE','G41M:S2P','Dualcore:3.00GHz','2GB','500','','1C:6F:65:ED:4B:3F','ACLAB:497','ACER'),('ECA LAB','ACLAB:509','ASROCK','H96M:XT PLUS','P4:3.10GHz','2GB','500','','MAC Not Detect â€“ X','ACLAB:496','View Sonic'),('ECA LAB','ACLAB:510','GIGABYTE','G41M:S2P','Dualcore:3.00GHz','2GB','500','','50:E5:49:56:42:2F','ACLAB:495','AOC'),('ECA LAB','ACLAB:511','GIGABYTE','G41M:S2P','Dualcore:3.00GHz','2GB','250','','50:E5:49:49:87:60','ACLAB:494','ACER'),('ECA LAB','ACLAB:513','GIGABYTE','G41M:S2P','Dualcore:3.00GHz','2GB','160','','50:E5:49:BB:F0:AE','ACLAB:492','LG'),('ECA LAB','ACLAB:520','GIGABYTE','G41M:S2P','Dualcore:3.00GHz','2GB','250','','6C:F0:49:C8:91:39','ACLAB:488','ACER'),('FS1','FS:1:','INTEL','DG31PR','C0re:2.93GHz','4GB','500','','BC:5F:F4:C8:08:6D','FS1:60','AOC'),('FS1','FS:1:1','INTEL','DG31PR','C0re:2.93GHz','4GB','500','','00:1C:C0:D4:81:BC','FS1:9','AOC'),('FS1','FS:1:10','GIGABYTE','G41MT:S2','Dualcore:3.00GHz','2GB','500','','50:E5:49:49:1E:1A','FS1:39','ACER'),('FS1','FS:1:11','INTEL','DG31PR','C0re:2.93GHz','2GB','250','','00:1C:C0:BD:84:AB','FS1:11','AOC'),('FS1','FS:1:12','ASROCK','H91M: XT PLUS','P4:2.80GHz','2GB','500','','Maintenance','FS1:34','AOC'),('FS1','FS:1:13','DIGILITE','DL:H61M:VS3','P4:2.80GHz','4GB','500','','BC:5F:F4:74:7C:1C','FS1:1','ACER'),('FS1','FS:1:14','INTEL','DG31PR','C0re:2.93GHz','2GB','250','','00:1C:C0:BD:86:E5','FS1:14','AOC'),('FS1','FS:1:15','ASROCK','H91M:S1 PLUS','P4:3.00GHz','4GB','1 TB','','D0:50:99:7B:48:47','FS1:2','AOC'),('FS1','FS:1:16','DIGILITE','DL:H61M:VS3','P4:2.80GHz','4GB','500','','BC:5F:F4:97:34:A0','FS1:20','AOC'),('FS1','FS:1:18','INTEL','DG31PR','C0re:2.93GHz','4GB','500','','90:1C:C0:BD:45:82','FS1:25','LG'),('FS1','FS:1:19','GIGABYTE','H61M:DS2','P4:2.60GHz','4GB','500','','90:2B:34:BF:49:A1','FS1:18','LG'),('FS1','FS:1:20','INTEL','DG31PR','C0re:2.93GHz','4GB','500','','00:1C:C0:BD:86:DE','FS1:29','AOC'),('FS1','FS:1:21','INTEL','DG31PR','C0re:2.93GHz','2GB','250','','00:1C:CO:D4:80:F9','FS1:33','AOC'),('FS1','FS:1:23','INTEL','DG31PR','C0re:2.93GHz','2GB','80','','00:1C:C0:D4:81:6A','FS1:23','AOC'),('FS1','FS:1:24','INTEL','DG31PR','C0re:2.93GHz','2GB','250','','00:1C:C0:BD:86:90','FS1:24','LG'),('FS1','FS:1:25','INTEL','DG31PR','C0re:2.93GHz','4GB','500','','00:1C:C0:D4:81:B8','FS1:38','ACER'),('FS1','FS:1:26','INTEL','DG31PR','C0re:2.93GHz','2GB','500','','00:1C:C0:BD:86:CF','FS1:26','AOC'),('FS1','FS:1:27','INTEL','DG31PR','C0re:2.93GHz','2GB','250','','00:1C:C0:D4:81:06','FS1:32','LG'),('FS1','FS:1:28','INTEL','DG31PR','C0re:2.93GHz','2GB','250','','00:1C:C0:D4:81:AD','FS1:58','AOC'),('FS1','FS:1:29','ASROCK','H61M:S1 PLUS','P4:3.00GHz','4GB','250','','D0:50:99:7C:8C:CE','FS1:40','ACER'),('FS1','FS:1:3','DIGILITE','DL:H61M:VS3','P4:2.80GHz','4GB','500','','BC:5F:F4:97:35:1F','FS1:5','AOC'),('FS1','FS:1:30','DIGILITE','DL:H61M:VS3','P42.80GHz','4GB','500','','BC:5F:F4:8F:98:A0','FS1:12','AOC'),('FS1','FS:1:31','INTEL','DG31PR','C0re:2.93GHz','4GB','250','','00:1C:C0:BD:86:B3','EB:544','ACER'),('FS1','FS:1:33','GIGABYTE','H61M:DS2','P4:2.60GHz','4GB','500','','90:2B:34:BF:61:58','FS1:31','LG'),('FS1','FS:1:34','INTEL','DG31PR','C0re:2.93GHz','2GB','500','','00:1C:C0:BD:86:BE','FS1:35','AOC'),('FS1','FS:1:35','INTEL','DG31PR','C0re:2.93GHz','2GB','500','','00:1C:C0:DC:CD:93','FS1:53','View Sonic'),('FS1','FS:1:36','GIGABYTE','H61M:DS2','P4:2.60GHz','4GB','500','','90:2B:34:BF:60:1B','FS1:59','LG'),('FS1','FS:1:37','INTEL','DG31PR','C0re:2.93GHz','4GB','160','','00:1C:C0:D4:80:FC','FS1:21','AOC'),('FS1','FS:1:38','INTEL','DG31PR','C0re:2.93GHz','2GB','500','','00:1C:C0:BD:86:8C','FS1:2','View Sonic'),('FS1','FS:1:39','GIGABYTE','H61M:DS2','P4:2.60GHz','4GB','500','','90:2B:34:BF:4A:23','FS1:10','ACER'),('FS1','FS:1:40','GIGABYTE','H61M:DS2','P42.60GHz','4GB','500','','90:2B:34:BF:64:D5','FS1:47','ACER'),('FS1','FS:1:41','GIGABYTE','H61M:DS2','P42.60GHz','4GB','500','','90:2B:34:C1:88:11','FS1:8','AOC'),('FS1','FS:1:42','GIGABYTE','H61M:DS2','P42.60GHz','4GB','500','','90:2B:34:BF:EF:8E','FS1:42','ACER'),('FS1','FS:1:43','GIGABYTE','H61M:DS2','P42.60GHz','4GB','500','','90:2B:34:BF:64:D3','FS1:49','ACER'),('FS1','FS:1:45','GIGABYTE','H61M:DS2','P42.60GHz','4GB','500','','90:2B:34:BF:69:52','FS1:45','ACER'),('FS1','FS:1:46','GIGABYTE','H61M:DS2','P42.60GHz','4GB','500','','90:2B:34:C0:CD:B7','FS1:46','ACER'),('FS1','FS:1:47','ASROCK','H91M:S1 PLUS','P4:3.00GHz','4GB','500','','D0:50:99:86:CA:19','FS1:44','ACER'),('FS1','FS:1:48','INTEL','DG31PR','C0re:2.93GHz','2GB','250','','00:1C:C0:BD:84:71','FS1:19','ACER'),('FS1','FS:1:48','GIGABYTE','H61M:DS2','P42.60GHz','4GB','500','','90:2B:34:BF:6A:A2','FS1:48','ACER'),('FS1','FS:1:49','INTEL','DG31PR','C0re:2.93GHz','4GB','250','','00:1C:C0:BD:86:B7','FS1:56','ACER'),('FS1','FS:1:5','INTEL','DG31PR','C0re:2.93GHz','2GB','500','','00:1C:C0:BD:86:91','FS1:55','ACER'),('FS1','FS:1:50','ASROCK','H91M:XT PLUS','P4:2.80 GHz','2GB','80','','70:85:C2:03:7E:B8','FS1:43','LG'),('FS1','FS:1:51','INTEL','DG31PR','C0re:2.93GHz','2GB','250','','00:1C:C0:D4:80:DD','FS1:27','AOC'),('FS1','FS:1:54','INTEL','DG31PR','C0re:2.93GHz','2GB','500','','00:1C:C0:D4:81:B3','FS1:47','ACER'),('FS1','FS:1:55','INTEL','DG31PR','C0re:2.93GHz','2GB','500','','00:1C:C0:BD:45:A8','FS1:54','ACER'),('FS1','FS:1:57','INTEL','DG31PR','C0re:2.93GHz','2GB','500','','00:1C:C0:BD:45:96','FS1:57','LG'),('FS1','FS:1:58','DIGILITE','DL:H61M:VS3','P4:2.80GHz','4GB','500','','BC:5F:F4:8F:97:C3','FS1:62','AOC'),('FS1','FS:1:59','INTEL','DG31PR','Core:2.93GHz','2GB','250','','00:1C:C0:BD:45:89','FS1:63','AOC'),('FS1','FS:1:6','DIGILITE','DL:H61M:VG4','P4:2.90GHz','4GB','250','','BC:5F:F4:C7:7E:B4','FS1:6','AOC'),('FS1','FS:1:60','INTEL','DG31PR','C0re:2.93GHz','2GB','250','','00:1C:C0:D4:81:A7','FS1:32','LG'),('FS1','FS:1:61','DIGILITE','DL:H61M:VS3','P4:2.80GHz','4GB','500','','BC:5F:F4:74:EC:9B','FS1:60','LG'),('FS1','FS:1:62','INTEL','DG31PR','C0re:2.93GHz','2GB','250','','00:1C:C0:BD:45:89','FS1:37','ACER'),('FS1','FS:1:64','INTEL','DG31PR','C0re:2.93GHz','2GB','250','','00:1C:C0:D4:81:2E','FS1:61','AOC'),('FS1','FS:1:65','GIGABYTE','G41MT:S2P','Dualcore:3.00GHz','2GB','80','','1C:6F:65:C8:7C:0A','FS1:28','AOC'),('FS1','FS:1:7','DIGILITE','DL:H61M:VS3','P4:2.90GHz','4GB','250','','BC:5F:F4:D7:ED:EA','FS1:7','AOC'),('FS1','FS:1:8','INTEL','DG31PR','C0re:2.93GHz','2GB','250','','00:1C:C0:BD:45:78','FS1:17','AOC'),('FS1','FS:1:9','INTEL','DG31PR','C0re:2.93GHz','2GB','250','','00:1C:C0:D4:81:A2','FS1:3','AOC'),('FS1','FS:2:111','INTEL','DG31PR','C0re:2.93GHz','4GB','250','','00:1C:C0:BD:86:E4','FS1:36','ACER'),('FS1','FS:4:183','ASROCK','H61M:S1 PLUS','P4:2.80GHz','2GB','500','','D0:50:99:3C:7B:71','FS1:30','AOC'),('FS1','FS:4:218','GIGABYTE','G41MT:S2P','Dualcore:3.00GHz','4GB','500','','00:E0:4C:83:F1:B3','FS1:4','AOC'),('FS1','FS:5:256','GIGABYTE','G41MT:S2P','Dualcore:3.00GHz','4GB','500','','1C:6F:65:ED:4B:41','FS1:13','AOC'),('ECA LAB','ICLAB:509','GIGABYTE','G41M:S2P','Dualcore:3.00GHz','2GB','250','','6C:F0:49:C5:19:CA','ACLAB:491','LG'),('ECA LAB','ICLAB:521','GIGABYTE','G41M:S2P','Dualcore:3.00GHz','2GB','500','','6C:F0:49:C7:4A:21','ACLAB:493','ACER'),('FS4','KMIT/FS1/CPU/4','H91M:XT PLUS','ASROCK','3.00GHz','4GB','500GB','','70:85:C2:06:65:F7','KMIT/FS4/MT/203','View Sonic'),('FS2','KMIT/FS2/CPU/100','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','6C:F0:49:F2:F5:EC','KMIT/FS2/MT/93','LG'),('FS2','KMIT/FS2/CPU/101','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:24:1D:FA:55:26','KMIT/FS2/MT/89','LG'),('FS2','KMIT/FS2/CPU/102','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:24:1D:FA:66:22','KMIT/FS2/MT/73','LG'),('FS2','KMIT/FS2/CPU/103','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:24:1D:FA:76:DB','KMIT/FS2/MT/95','LG'),('FS2','KMIT/FS2/CPU/104','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','6C:F0:49:F2:F6:6A','KMIT/FS2/MT/111','ACER'),('FS2','KMIT/FS2/CPU/105','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','6C:F0:49:F2:F6:60','KMIT/FS2/MT/112','LG'),('FS2','KMIT/FS2/CPU/106','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','6C:F0:49:F3:OF:BE','KMIT/FS2/MT/100','LG'),('FS2','KMIT/FS2/CPU/108','Gigabyte','G41M:ES2L','2.80GHz','2GB','500GB','','70:85:C2:03:9F:09','KMIT/FS2/MT/90','LG'),('FS2','KMIT/FS2/CPU/109','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:24:1D:FA:53:E7','KMIT/FS2/MT/110','LG'),('FS2','KMIT/FS2/CPU/110','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:24:1D:FA:75:IF','KMIT/FS2/MT/101','LG'),('FS2','KMIT/FS2/CPU/112','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','6C:F0:49:F3:00:5C','KMIT/FS2/MT/114','AOC'),('FS2','KMIT/FS2/CPU/114','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','6C:F0:49:F2:F5:63','KMIT/FS2/MT/69','LG'),('FS2','KMIT/FS2/CPU/115','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:27:0E:04:D3:59','KMIT/FS2/MT/74','LG'),('FS2','KMIT/FS2/CPU/65','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:24:1D:FA:43:A5','KMIT/FS2/MT/71','LG'),('FS2','KMIT/FS2/CPU/66','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','6C:F0:49:C8:CC:75','KMIT/FS2/MT/94','LG'),('FS2','KMIT/FS2/CPU/67','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:24:1D:FA:67:FF','KMIT/FS2/MT/108','LG'),('FS2','KMIT/FS2/CPU/69','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:24:1D:FA:66:C2','KMIT/FS2/MT/86','LG'),('FS2','KMIT/FS2/CPU/70','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:24:1D:FA:55:9E','KMIT/FS2/MT/67','LG'),('FS2','KMIT/FS2/CPU/71','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','6C:F0:49:E2:F5:18','KMIT/FS2/MT/79','LG'),('FS2','KMIT/FS2/CPU/72','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:24:1D:FA:66:23','KMIT/FS2/MT/77','LG'),('FS2','KMIT/FS2/CPU/73','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:24:1D:FA:67:74','KMIT/FS2/MT/97','LG'),('FS2','KMIT/FS2/CPU/74','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','6C:F0:49:F3:00:DE','KMIT/FS2/MT/81','LG'),('FS2','KMIT/FS2/CPU/75','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','6C:F0:49:F2:F5:8E','KMIT/FS2/MT/72','LG'),('FS2','KMIT/FS2/CPU/76','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:24:1D:FA:68:03','KMIT/FS2/MT/103','LG'),('FS2','KMIT/FS2/CPU/77','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:24:1D:FA:67:67','KMIT/FS2/MT/99','LG'),('FS2','KMIT/FS2/CPU/78','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:24:1D:FA:66:CC','KMIT/FS2/MT/70','LG'),('FS2','KMIT/FS2/CPU/79','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:24:1D:FA:67:70','KMIT/FS2/MT/109','LG'),('FS2','KMIT/FS2/CPU/81','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:24:1D:FA:67:6F','KMIT/FS2/MT/84','LG'),('FS2','KMIT/FS2/CPU/82','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','6C:F0:49:F2:E0:59','KMIT/FS2/MT/78','LG'),('FS2','KMIT/FS2/CPU/83','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','6C:F0:49:F2:F6:C4','KMIT/FS2/MT/106','LG'),('FS2','KMIT/FS2/CPU/84','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:24:1D:FA:68:01','KMIT/FS2/MT/66','LG'),('FS2','KMIT/FS2/CPU/85','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:24:1D:FA:53:24','KMIT/FS2/MT/107','LG'),('FS2','KMIT/FS2/CPU/86','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','6C:F0:49:F2:FF:C6','KMIT/FS2/MT/75','LG'),('FS2','KMIT/FS2/CPU/89','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','6C:F0:49:F2:E0:55','KMIT/FS2/MT/80','LG'),('FS2','KMIT/FS2/CPU/90','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:24:1D:FA:78:D1','KMIT/FS2/MT/105','LG'),('FS2','KMIT/FS2/CPU/91','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:24:1D:FA:7A:D0','KMIT/FS2/MT/85','LG'),('FS2','KMIT/FS2/CPU/92','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:24:1D:FA:66:BF','KMIT/FS2/MT/65','LG'),('FS2','KMIT/FS2/CPU/93','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:24:1D:FA:53:E6','KMIT/FS2/MT/68','LG'),('FS2','KMIT/FS2/CPU/95','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:24:1D:FA:54:35','KMIT/FS2/MT/92','LG'),('FS2','KMIT/FS2/CPU/96','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:24:1D:FA:66:C0','KMIT/FS2/MT/82','LG'),('FS2','KMIT/FS2/CPU/97','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','6C:F0:49:F3:00:0D','KMIT/FS2/MT/91','LG'),('FS2','KMIT/FS2/CPU/98','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','6C:F0:49:F2:F6:6C','KMIT/FS2/MT/102','LG'),('FS2','KMIT/FS2/CPU/99','Gigabyte','G41M:ES2L','2.80GHz','2GB','250GB','','00:24:1D:FA:54:F0','KMIT/FS2/MT/98','LG'),('FS2','KMIT/FS2/Server Syst','Intel','DG3:1PR','2.80GHz','2GB','250GB','','70:71:BC:94:B2:60','KMIT/FS2/MT/87','LG'),('FS4','KMIT/FS4/CPU/180','G31 M7 TE','BIOSTAR','2.2GHz','2GB','80GB','','00:E0:4D:9E:22:04','KMIT/FS4/MT/176','AOC'),('FS4','KMIT/FS4/CPU/181','DL:H61M:VG4','BIOSTAR','2.2GHZ','2GB','80GB','','00:E0:4D:9D:AD:8B','KMIT/FS4/MT/194','View Sonic'),('FS4','KMIT/FS4/CPU/182','DL:H61M:VG4','Digilite','3.00GHz','2GB','80GB','','BC:5F:F4:D7:ED:EE','KMIT/FS4/MT/198','View Sonic'),('FS4','KMIT/FS4/CPU/184','G31 M7 TE','BIOSTAR','2.2GHZ','2GB','80GB','','00:E0:4D:9E:9B:D9','KMIT/FS4/MT/180','AOC'),('FS4','KMIT/FS4/CPU/185','G31 M7 TE','BIOSTAR','3.00GHZ','2GB','80GB','','00:E0:4D:9D:AD:4A','KMIT/FS4/MT/181','AOC'),('FS4','KMIT/FS4/CPU/186','G31 M7 TE','BIOSTAR','2.2GHz','2GB','80GB','','00:E0:4D:9D:AD:5B','KMIT/FS4/MT/182','AOC'),('FS4','KMIT/FS4/CPU/188','G31 M7 TE','BIOSTAR','2.2GHz','2GB','80GB','','00:E0:4D:9E:9B:F0','KMIT/FS4/MT/177','AOC'),('FS4','KMIT/FS4/CPU/189','G31 M7 TE','BIOSTAR','2.2GHz','2GB','80GB','','00:E0:4D:9E:9B:0D','KMIT/FS4/MT/185','AOC'),('FS4','KMIT/FS4/CPU/190','G31 M7 TE','BIOSTAR','2.2GHz','2GB','80GB','','00:E0:4D:9D:AD:68','KMIT/FS4/MT/186','AOC'),('FS4','KMIT/FS4/CPU/191','G31 M7 TE','BIOSTAR','2.2GHz','2GB','80GB','','00:E0:4D:9D:AD:2F','KMIT/FS4/MT/187','AOC'),('FS4','KMIT/FS4/CPU/192','G31 M7 TE','BIOSTAR','2.2GHz','2GB','80GB','','00:E0:4D:9D:AD:40','KMIT/FS4/MT/188','AOC'),('FS4','KMIT/FS4/CPU/193','G31 M7 TE','BIOSTAR','2.2GHz','2GB','80GB','','00:E0:4D:9D:AD:F1','KMIT/FS4/MT/189','AOC'),('FS4','KMIT/FS4/CPU/194','G31 M7 TE','BIOSTAR','2.2GHz','2GB','80GB','','00:E0:4D:9E:D1:67','KMIT/FS4/MT/190','AOC'),('FS4','KMIT/FS4/CPU/195','G31 M7 TE','BIOSTAR','2.2GHz','2GB','80GB','','00:E0:4D:9D:AD:79','KMIT/FS4/MT/191','AOC'),('FS4','KMIT/FS4/CPU/196','G31 M7 TE','BIOSTAR','2.2GHz','2GB','80GB','','00:E0:4D:9D:AD:83','KMIT/FS4/MT/192','AOC'),('FS4','KMIT/FS4/CPU/197','G31 M7 TE','BIOSTAR','2.2GHz','2GB','80GB','','00:E0:4D:9D:EC:30','KMIT/FS4/MT/193','AOC'),('FS4','KMIT/FS4/CPU/198','GA_G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:ED:4D:43','KMIT/FS4/MT/215','AOC'),('FS4','KMIT/FS4/CPU/199','GA_G41MT_S2P','GIGABYTE','3.00GHZ','2GB','500GB','','50:E5:49:56:E0:B1','KMIT/FS4/MT/179','AOC'),('FS4','KMIT/FS4/CPU/200','GA_G41MT_S2P','GIGABYTE','3.00GHz','2GB','80GB','','1C:6F:65:DC:27:E1','KMIT/FS4/MT/211','AOC'),('FS4','KMIT/FS4/CPU/201','GA_G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:EF:22:23','KMIT/FS4/MT/214','AOC'),('FS4','KMIT/FS4/CPU/202','GA_G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','50:E5:49:56:E0:D1','KMIT/FS4/MT/195','View Sonic'),('FS4','KMIT/FS4/CPU/203','GA_G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:DC:A8:E2','KMIT/FS4/MT/199','View Sonic'),('FS4','KMIT/FS4/CPU/204','GA_G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','6C:F0:49:C7:17:A5','KMIT/FS4/MT/200','View Sonic'),('FS4','KMIT/FS4/CPU/205','GA_G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:DC:16:5F','KMIT/FS4/MT/201','View Sonic'),('FS4','KMIT/FS4/CPU/206','GA_G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:DC:09:95','KMIT/FS4/MT/202','View Sonic'),('FS4','KMIT/FS4/CPU/207','GA_G41MT_S2P','GIGABYTE','2.2GHz','2GB','500GB','','1C:6F:65:ED:4D:EA','KMIT/FS4/MT/183','AOC'),('FS4','KMIT/FS4/CPU/209','GA_G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:DC:A8:B8','KMIT/FS4/MT/205','View Sonic'),('FS4','KMIT/FS4/CPU/210','GA_G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:DC:16:54','KMIT/FS4/MT/206','View Sonic'),('FS4','KMIT/FS4/CPU/211','GA_G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:DC:27:F1','KMIT/FS4/MT/207','View Sonic'),('FS4','KMIT/FS4/CPU/212','GA_G41MT_S2P','GIGABYTE','3.00GHz','2GB','250GB','','1C:6F:65:DC:16:24','KMIT/FS4/MT/208','View Sonic'),('FS4','KMIT/FS4/CPU/213','H91M:XT PLUS','ASROCK','3.00GHz','4GB','500NW','','70:85:C2:06:5F:9F','KMIT/FS4/MT/197 NW','View Sonic'),('FS4','KMIT/FS4/CPU/213','H91M:XT PLUS','ASROCK','3.00GHz','4GB','500GB','','70:85:C2:06:65:F1','KMIT/FS4/MT/204','View Sonic'),('FS4','KMIT/FS4/CPU/214','G31 M7 TE','BIOSTAR','3.00GHz','2GB','80GB','','00:E0:4D:9E:9B:EA','KMIT/FS4/MT/210','AOC'),('FS4','KMIT/FS4/CPU/215','G31 M7 TE','BIOSTAR','3.00GHz','2GB','80GB','','00:E0:4D:9E:9C:01','KMIT/FS4/MT/209','AOC'),('FS4','KMIT/FS4/CPU/216','GA_G41MT_S2P','GIGABYTE','3.00GHZ','2GB','500GB','','1C:6F:65:DC:0A:2C','KMIT/FS4/MT/184','AOC'),('FS4','KMIT/FS4/CPU/217','DL:H61M:VG4','Digilite','2.9GHz','2GB','500GB','','BC:5F:F4:D7:ED:FF','KMIT/FS4/MT/213','View Sonic'),('FS5','KMIT/FS5/CPU/220','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:DC:A8:EB','KMIT/FS5/MT/216','AOC'),('FS5','KMIT/FS5/CPU/221','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:ED:2B:73','KMIT/FS5/MT/217','AOC'),('FS5','KMIT/FS5/CPU/222','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:EE:63:FA','KMIT/FS5/MT/218','AOC'),('FS5','KMIT/FS5/CPU/223','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:EE:63:CE','KMIT/FS5/MT/219','AOC'),('FS5','KMIT/FS5/CPU/224','G41MT_S2P','GIGABYTE','2.80GHz','2GB','500GB','','1C:6F:65:EE:08:62','KMIT/FS5/MT/220','AOC'),('FS5','KMIT/FS5/CPU/225','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:ED:4C:37','KMIT/FS5/MT/221','AOC'),('FS5','KMIT/FS5/CPU/226','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:DC:A9:07','KMIT/FS5/MT/222','AOC'),('FS5','KMIT/FS5/CPU/227','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:DC:A7:F5','KMIT/FS5/MT/223','AOC'),('FS5','KMIT/FS5/CPU/228','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:DC:09:BA','KMIT/FS5/MT/224','AOC'),('FS5','KMIT/FS5/CPU/229','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:DC:A8:BD','KMIT/FS5/MT/249','AOC'),('FS5','KMIT/FS5/CPU/230','G41MT_S2P','GIGABYTE','3.00GHz','2GB','250GB','','1C:6F:65:EE:08:62','KMIT/FS5/MT/226','AOC'),('FS5','KMIT/FS5/CPU/231','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:DC:43:31','KMIT/FS5/MT/227','AOC'),('FS5','KMIT/FS5/CPU/232','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:DC:16:21','KMIT/FS5/MT/228','AOC'),('FS5','KMIT/FS5/CPU/233','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:EE:2C:CA','KMIT/FS5/MT/229','AOC'),('FS5','KMIT/FS5/CPU/234','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:DC:16:57','KMIT/FS5/MT/230','AOC'),('FS5','KMIT/FS5/CPU/235','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:ED:4C:F0','KMIT/FS5/MT/231','AOC'),('FS5','KMIT/FS5/CPU/236','DL:H61M:VG4','DIGILITE','2.90GHz','2GB','500GB','','BC:5F:F4:CF:0E:F5','KMIT/FS5/MT/232','AOC'),('FS5','KMIT/FS5/CPU/237','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:EF:21:F4','KMIT/FS5/MT/233','AOC'),('FS5','KMIT/FS5/CPU/238','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:EE:08:61','KMIT/FS5/MT/247','AOC'),('FS5','KMIT/FS5/CPU/239','G31M7:TE','BIOSTAR','2.20GHz','2GB','500GB','','00:E0:4D:9D:AD:3B','KMIT/FS5/MT/246','ACER'),('FS5','KMIT/FS5/CPU/240','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:EE:2C:B1','KMIT/FS5/MT/251','AOC'),('FS5','KMIT/FS5/CPU/241','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:DC:09:F3','KMIT/FS5/MT/253','ACER'),('FS5','KMIT/FS5/CPU/242','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:DC:A8:F0','KMIT/FS5/MT/236','AOC'),('FS5','KMIT/FS5/CPU/243','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:DC:16:23','KMIT/FS5/MT/235 B','AOC'),('FS5','KMIT/FS5/CPU/244','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:DC:19:B4','KMIT/FS5/MT/240','AOC'),('FS5','KMIT/FS5/CPU/245','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:DC:28:27','KMIT/FS5/MT/241','AOC'),('FS5','KMIT/FS5/CPU/246','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:DC:43:16','KMIT/FS5/MT/242','AOC'),('FS5','KMIT/FS5/CPU/247','G41MT_COMBO:F3','GIGABYTE','3.00GHz','2GB','500GB','','00:E0:4D:BD:78:B8','KMIT/FS5/MT/243','AOC'),('FS5','KMIT/FS5/CPU/248','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:EE:20:E7','KMIT/FS5/MT/252','ACER'),('FS5','KMIT/FS5/CPU/249','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:EE:2C:C1','KMIT/FS5/MT/245','AOC'),('FS5','KMIT/FS5/CPU/250','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:DC:43:15','KMIT/FS5/MT/244','AOC'),('FS5','KMIT/FS5/CPU/252','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:EE:20:E8','KMIT/FS5/MT/248','AOC'),('FS5','KMIT/FS5/CPU/253','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:DC:09:9A','KMIT/FS5/MT/225','AOC'),('FS5','KMIT/FS5/CPU/254','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:EE:58:D3','KMIT/FS5/MT/238 B','AOC'),('FS5','KMIT/FS5/CPU/255','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','1C:6F:65:ED:4D:48','KMIT/FS5/MT/250','AOC'),('FS5','KMIT/FS5/CPU/380','G41MT_S2P','GIGABYTE','3.00GHz','2GB','500GB','','00:E0:4D:9D:AD:6D','KMIT/FS5/MT/234','AOC'),('PCI & IL1,2','PC:Lab:01','ASRock','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:43:67:28','PC:Lab:02','ACER'),('PCI & IL1,2','PC:Lab:02','ASRock','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:C9:F7:8A','513','ACER'),('PCI & IL1,2','PC:Lab:03','INTEL','D11020M','2.66Ghz','1GB','80GB','','00:16:76:99:F8:D0','553','View Sonic'),('PCI & IL1,2','PC:Lab:04','ATI','AWRDACPI','2.66Ghz','1GB','80GB','','00:13:20:C9:57:D0','524','ACER'),('PCI & IL1,2','PC:Lab:05','ASRock','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:30:8C:01','PC:Lab:05','ACER'),('PCI & IL1,2','PC:Lab:06','ASRock','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:43:67:F8','PC:Lab:01','ACER'),('PCI & IL1,2','PC:Lab:07','ASRock','H61M:S1 PLUS','3.00GHz','4GB','500GB','','D0:50:99:43:66:E6','PC:Lab:07','ACER');
/*!40000 ALTER TABLE `SystemsInAllLabs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-23 14:07:37
