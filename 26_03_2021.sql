-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: projectai
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.18.04.1

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
-- Table structure for table `activity_logs`
--

DROP TABLE IF EXISTS `activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `action` enum('created','updated','deleted','bitbucket_notification_received','github_notification_received') COLLATE utf8_unicode_ci NOT NULL,
  `log_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `log_type_title` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `log_type_id` int(11) NOT NULL DEFAULT '0',
  `changes` mediumtext COLLATE utf8_unicode_ci,
  `log_for` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `log_for_id` int(11) NOT NULL DEFAULT '0',
  `log_for2` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_for_id2` int(11) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_logs`
--

LOCK TABLES `activity_logs` WRITE;
/*!40000 ALTER TABLE `activity_logs` DISABLE KEYS */;
INSERT INTO `activity_logs` VALUES (1,'2021-02-25 05:40:13',1,'created','task','Perizinan / Surat Perintah Kerja',1,NULL,'project',1,'',0,0),(2,'2021-02-25 05:41:08',1,'created','task','Perizinan / Surat Perintah Kerja',2,NULL,'project',1,'',0,0),(3,'2021-02-25 05:48:29',1,'created','task','Perizinan / Surat Perintah Kerja',3,NULL,'project',1,'',0,0),(4,'2021-02-25 06:14:58',1,'deleted','task','Perizinan / Surat Perintah Kerja',3,NULL,'project',1,NULL,NULL,0),(5,'2021-02-25 06:15:34',1,'deleted','task','Perizinan / Surat Perintah Kerja',2,NULL,'project',1,NULL,NULL,0),(6,'2021-02-25 06:15:35',1,'deleted','task','Perizinan / Surat Perintah Kerja',1,NULL,'project',1,NULL,NULL,0),(7,'2021-02-25 06:19:29',1,'created','task','Perizinan / Surat Perintah Kerja',4,NULL,'project',1,'',0,0),(8,'2021-02-25 06:20:21',1,'created','task','Install Test Tank',5,NULL,'project',1,'',0,0),(9,'2021-02-25 06:21:14',1,'created','task','Pengukuran Produksi (Test Tank)',6,NULL,'project',1,'',0,0),(10,'2021-02-25 06:22:28',1,'created','task','Install Power Supply',7,NULL,'project',1,'',0,0),(11,'2021-02-25 06:23:07',1,'created','task','Invoicing Mobilisasi',8,NULL,'project',1,'',0,0),(12,'2021-02-25 06:23:51',1,'created','task','install FAST Monitoring',9,NULL,'project',1,'',0,0),(13,'2021-02-25 06:24:49',1,'created','task','Pengumpulan Data Baseline',10,NULL,'project',1,'',0,0),(14,'2021-02-25 06:25:21',1,'created','task','Analisa dan Kesepakatan Baseline',11,NULL,'project',1,'',0,0),(15,'2021-02-25 06:25:51',1,'created','task','FAST Surface',12,NULL,'project',1,'',0,0),(16,'2021-02-25 06:26:26',1,'created','task','FAST Subsurface',13,NULL,'project',1,'',0,0),(17,'2021-02-25 06:27:01',1,'created','task','Onstream Project',14,NULL,'project',1,'',0,0),(18,'2021-02-25 06:27:27',1,'created','task','Evaluasi Project',15,NULL,'project',1,'',0,0),(19,'2021-02-25 06:27:52',1,'created','task','Dismantle dan Demobilisasi',16,NULL,'project',1,'',0,0),(20,'2021-02-25 07:02:04',1,'updated','task','Dismantle dan Demobilisasi',16,'a:1:{s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:1:\"3\";}}','project',1,'',0,0),(21,'2021-02-25 07:02:29',1,'updated','task','Evaluasi Project',15,'a:1:{s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:1:\"3\";}}','project',1,'',0,0),(22,'2021-02-25 07:02:37',1,'updated','task','Onstream Project',14,'a:1:{s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:1:\"3\";}}','project',1,'',0,0),(23,'2021-02-25 07:02:47',1,'updated','task','FAST Subsurface',13,'a:1:{s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:1:\"3\";}}','project',1,'',0,0),(24,'2021-02-25 07:02:54',1,'updated','task','FAST Surface',12,'a:1:{s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:1:\"3\";}}','project',1,'',0,0),(25,'2021-02-25 07:03:00',1,'updated','task','Analisa dan Kesepakatan Baseline',11,'a:1:{s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:1:\"3\";}}','project',1,'',0,0),(26,'2021-02-25 07:03:14',1,'updated','task','Pengumpulan Data Baseline',10,'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"3\";}}','project',1,'',0,0),(27,'2021-02-25 07:03:57',1,'updated','task','install FAST Monitoring',9,'a:1:{s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:1:\"3\";}}','project',1,'',0,0),(28,'2021-02-25 07:04:03',1,'updated','task','Invoicing Mobilisasi',8,'a:1:{s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:1:\"3\";}}','project',1,'',0,0),(29,'2021-02-25 07:04:11',1,'updated','task','Install Power Supply',7,'a:1:{s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:1:\"3\";}}','project',1,'',0,0),(30,'2021-02-25 07:04:19',1,'updated','task','Pengumpulan Data Baseline',10,'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:0:\"\";}}','project',1,'',0,0),(31,'2021-02-25 07:15:04',1,'created','milestone','Amandemen 1',1,NULL,'project',1,'',0,0),(32,'2021-02-25 07:48:15',1,'updated','task','install FAST Monitoring',9,'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"1\";}}','project',1,'',0,0),(33,'2021-02-25 08:06:14',1,'updated','task','Perizinan / Surat Perintah Kerja',4,'a:2:{s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2021-02-01\";s:2:\"to\";s:10:\"2021-02-08\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2021-02-07\";s:2:\"to\";s:10:\"2021-02-14\";}}','project',1,'',0,0),(34,'2021-02-26 11:16:29',1,'updated','task','install FAST Monitoring',9,'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"1\";}}','project',1,'',0,0),(35,'2021-03-05 08:02:55',1,'created','project_file','_file6041e5af1b98d-Surat-Penawaran-Harga.pdf',1,NULL,'project',1,'',0,0),(36,'2021-03-05 08:32:48',1,'deleted','milestone','Amandemen 1',1,NULL,'project',1,NULL,NULL,0),(37,'2021-03-05 09:29:41',4,'updated','task','Install Power Supply',7,'a:2:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"2\";s:2:\"to\";s:1:\"3\";}s:17:\"status_changed_at\";a:2:{s:4:\"from\";N;s:2:\"to\";s:19:\"2021-03-05 09:29:41\";}}','project',1,'',0,0),(38,'2021-03-05 09:29:47',4,'updated','task','Install Power Supply',7,'a:2:{s:9:\"status_id\";a:2:{s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"2\";}s:17:\"status_changed_at\";a:2:{s:4:\"from\";s:19:\"2021-03-05 09:29:41\";s:2:\"to\";s:19:\"2021-03-05 09:29:47\";}}','project',1,'',0,0),(39,'2021-03-08 02:13:09',10,'created','project_file','_file604588352951d-MOM-PLK-ke-1-&-Negosiasi-Jasa-FAST.pdf',2,NULL,'project',1,'',0,0),(40,'2021-03-08 02:14:06',10,'created','project_file','_file6045886e92e84-Amandemen-1-kontrak-390003638-Uji-Coba-Fast-R2--003-_sign.pdf',3,NULL,'project',1,'',0,0),(41,'2021-03-08 03:29:57',1,'deleted','project_file','_file6041e5af1b98d-Surat-Penawaran-Harga.pdf',1,NULL,'project',1,NULL,NULL,0),(42,'2021-03-08 04:12:00',1,'updated','task','install FAST Monitoring',9,'a:1:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:0:\"\";}}','project',1,'',0,0),(43,'2021-03-08 04:12:14',1,'updated','task','install FAST Monitoring',9,'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"9\";}}','project',1,'',0,0),(44,'2021-03-15 05:28:01',10,'created','project_file','_file604ef06119edb-Tanda-Terima-Dokumen-Amandemen---PHE-Siak-.pdf',4,NULL,'project',1,'',0,0);
/*!40000 ALTER TABLE `activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `share_with` mediumtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `files` text COLLATE utf8_unicode_ci NOT NULL,
  `read_by` mediumtext COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Under Construction !!!','<p>Pemudi Pemuda</p>','2021-03-01','2021-03-31',1,'all_members','2021-03-01 08:03:07','a:0:{}','0,1,13',0),(2,'Training pertama !','','2021-03-10','2021-03-11',1,'all_members','2021-03-10 06:22:31','a:0:{}','0,1',0);
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` enum('incomplete','pending','approved','rejected','deleted') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'incomplete',
  `user_id` int(11) NOT NULL,
  `in_time` datetime NOT NULL,
  `out_time` datetime DEFAULT NULL,
  `checked_by` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `checked_at` datetime DEFAULT NULL,
  `reject_reason` text COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `checked_by` (`checked_by`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,'pending',1,'2021-02-25 08:02:07','2021-02-25 09:09:40',NULL,'',NULL,NULL,0),(2,'pending',10,'2021-03-05 08:42:10','2021-03-08 01:30:28',NULL,'',NULL,NULL,0),(3,'pending',10,'2021-03-08 01:38:40','2021-03-08 09:42:27',NULL,'',NULL,NULL,0),(4,'incomplete',8,'2021-03-08 03:45:51',NULL,NULL,NULL,NULL,NULL,0),(5,'pending',1,'2021-03-08 03:56:08','2021-03-08 09:02:22',NULL,'',NULL,NULL,0),(6,'pending',10,'2021-03-09 04:17:26','2021-03-09 09:35:44',NULL,'',NULL,NULL,0),(7,'pending',1,'2021-03-10 03:31:19','2021-03-10 11:24:59',NULL,'',NULL,NULL,0),(8,'pending',10,'2021-03-10 06:15:28','2021-03-10 12:06:44',NULL,'',NULL,NULL,0),(9,'pending',11,'2021-03-10 06:25:11','2021-03-16 06:35:03',NULL,'',NULL,NULL,0),(10,'pending',10,'2021-03-12 03:25:58','2021-03-12 09:12:40',NULL,'',NULL,NULL,0),(11,'pending',10,'2021-03-15 04:36:36','2021-03-15 10:54:55',NULL,'',NULL,NULL,0),(12,'pending',10,'2021-03-16 06:34:25','2021-03-16 10:06:38',NULL,'',NULL,NULL,0),(13,'pending',11,'2021-03-16 06:35:08','2021-03-16 07:00:06',NULL,'',NULL,NULL,0),(14,'pending',10,'2021-03-17 04:03:51','2021-03-17 09:17:39',NULL,'',NULL,NULL,0),(15,'pending',10,'2021-03-22 03:14:17','2021-03-22 09:08:10',NULL,'',NULL,NULL,0),(16,'pending',1,'2021-03-22 03:41:11','2021-03-23 02:46:43',NULL,'',NULL,NULL,0),(17,'pending',10,'2021-03-23 02:51:36','2021-03-23 10:32:52',NULL,'',NULL,NULL,0),(18,'pending',10,'2021-03-24 02:45:47','2021-03-25 09:59:22',NULL,'',NULL,NULL,0);
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checklist_items`
--

DROP TABLE IF EXISTS `checklist_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checklist_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `is_checked` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checklist_items`
--

LOCK TABLES `checklist_items` WRITE;
/*!40000 ALTER TABLE `checklist_items` DISABLE KEYS */;
INSERT INTO `checklist_items` VALUES (1,'Install',1,7,0,1),(2,'Mobilisasi',1,7,0,1),(3,'Pemasangan',0,7,0,1),(4,'Insert Tubing Sensor',0,9,0,0),(5,'Persiapan Draft',1,10,0,0);
/*!40000 ALTER TABLE `checklist_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('7vv9rg1jvl1hjqhjp783bkqvdnm2so6h','::1',1614838040,_binary '__ci_last_regenerate|i:1614838040;user_id|s:1:\"1\";'),('06idos83t1deu89k2308sedrthqopkgb','::1',1614838358,_binary '__ci_last_regenerate|i:1614838358;user_id|s:1:\"1\";'),('9516vl4iqfek83uhl041731f6iojocp8','::1',1614838768,_binary '__ci_last_regenerate|i:1614838768;user_id|s:1:\"1\";'),('dadkmhi8m1g6g45usd38v756ut1kv1kr','::1',1614839077,_binary '__ci_last_regenerate|i:1614839076;user_id|s:1:\"1\";'),('6uqcij8frhrd5fkjo6rp8i0i82b0nqkr','::1',1614839449,_binary '__ci_last_regenerate|i:1614839449;user_id|s:1:\"1\";'),('6jmo7rmvbihih57tp4qo12h3spp9l7t4','::1',1614839783,_binary '__ci_last_regenerate|i:1614839783;user_id|s:1:\"1\";'),('j1dqjsn023hj2mpjcpi95f1el0vb9vfl','::1',1614843501,_binary '__ci_last_regenerate|i:1614839783;user_id|s:1:\"1\";'),('6hpomc55dg30huetsgnddj1j36k5oqv5','::1',1614842275,_binary '__ci_last_regenerate|i:1614842275;user_id|s:1:\"1\";'),('tsbhg13dflgp2fjd0gt1va2svvao85r8','::1',1614842674,_binary '__ci_last_regenerate|i:1614842674;user_id|s:1:\"1\";'),('pb571tm83tvl5j6c0p147p6n56trvtsm','::1',1614843462,_binary '__ci_last_regenerate|i:1614843462;user_id|s:1:\"1\";'),('5vtg3k7inrnotnd9u9kpkjf1tmg59njv','::1',1614843466,_binary '__ci_last_regenerate|i:1614843462;user_id|s:1:\"1\";'),('7rrkkp1jn0625a21bgncj3fd4crb78mk','103.156.118.58',1614917605,_binary '__ci_last_regenerate|i:1614917605;user_id|s:1:\"1\";'),('rlkje6t4pmec8pgae0lp650lhvr5j7qa','103.156.118.58',1614917909,_binary '__ci_last_regenerate|i:1614917909;user_id|s:1:\"1\";'),('jkbooaihb66mv58ov8r2jt1gjdvpbq41','103.156.118.58',1614918281,_binary '__ci_last_regenerate|i:1614918281;user_id|s:1:\"1\";'),('c7ust7s5jkq5f4o2jerfmvr9anob8pp9','103.156.118.58',1614918791,_binary '__ci_last_regenerate|i:1614918791;user_id|s:1:\"1\";'),('aujtnh4vjfsp4ebuf8jlv74piagf1qh5','103.156.118.58',1614919172,_binary '__ci_last_regenerate|i:1614919172;user_id|s:1:\"1\";'),('8u0r1d59jf0g2j5ct0kjcrrv7mhmubnc','103.156.118.58',1614919526,_binary '__ci_last_regenerate|i:1614919526;user_id|s:1:\"1\";'),('kudscsblm42dhpvjsfk2gf0kh30qbu39','103.156.118.58',1614919868,_binary '__ci_last_regenerate|i:1614919868;user_id|s:1:\"1\";'),('8hm9d5lo2iptvri9u9a5dg7ed1428pfr','103.156.118.58',1614920171,_binary '__ci_last_regenerate|i:1614920171;user_id|s:1:\"1\";'),('kqgn5msf9auo2pl3k1e0m0uh1mct9ua7','103.156.118.58',1614920549,_binary '__ci_last_regenerate|i:1614920549;user_id|s:1:\"1\";'),('49tnmk5tg5rksenc6a7gf7pvng954j6a','103.156.118.58',1614920897,_binary '__ci_last_regenerate|i:1614920897;user_id|s:1:\"1\";'),('bs605nori3jivp4bt9qk80986vtslnpt','103.156.118.58',1614923017,_binary '__ci_last_regenerate|i:1614923017;user_id|s:1:\"1\";'),('s65068273te802pmbb267jtu8dtsvlbd','103.156.118.58',1614923426,_binary '__ci_last_regenerate|i:1614923426;user_id|s:1:\"1\";'),('bt0ag8p0p11585gufb4b0asafbkjuu6h','103.156.118.58',1614923748,_binary '__ci_last_regenerate|i:1614923748;user_id|s:1:\"1\";'),('8b0lu53gvmm5iup0ook5hmvcdvrdm6i0','103.156.118.58',1614925418,_binary '__ci_last_regenerate|i:1614925418;user_id|s:1:\"1\";'),('nrao7u03t368d948au11lum9p35t9lc3','103.156.118.58',1614925784,_binary '__ci_last_regenerate|i:1614925784;user_id|s:1:\"1\";'),('0b2t6k4dj706hodv2t3k5q4ltcmo2c6c','103.156.118.58',1614926329,_binary '__ci_last_regenerate|i:1614926329;user_id|s:1:\"1\";'),('r46v46jnogkqetmgidcq6lsu959028ua','103.156.118.58',1614926635,_binary '__ci_last_regenerate|i:1614926635;user_id|s:1:\"1\";'),('f96g3gckpk3b5o2npjkn028na6qpubbc','103.156.118.58',1614927039,_binary '__ci_last_regenerate|i:1614927039;user_id|s:1:\"1\";'),('st7b92jmpf5iem3pn8cdpcpokakinuk4','103.156.118.58',1614927360,_binary '__ci_last_regenerate|i:1614927360;user_id|s:1:\"1\";'),('uhilfmbvr37u2d1nia4l3vlmth6dgk55','103.156.118.58',1614927829,_binary '__ci_last_regenerate|i:1614927829;user_id|s:1:\"1\";'),('5v17f6p2td2vv83du2h2sce28p762k0k','103.156.118.58',1614928357,_binary '__ci_last_regenerate|i:1614928357;user_id|s:1:\"1\";'),('sbjrh6mmf4l07olp2n89ocdprp4223vk','103.156.118.58',1614928666,_binary '__ci_last_regenerate|i:1614928666;user_id|s:1:\"1\";'),('iarvr9lrg9qcf8p7vj9a3f29588muurr','103.156.118.58',1614929111,_binary '__ci_last_regenerate|i:1614929111;user_id|s:1:\"1\";'),('sf6g9vfgki1hlo24umeugc6rjf88oa3c','103.156.118.58',1614929717,_binary '__ci_last_regenerate|i:1614929717;user_id|s:1:\"1\";'),('pi30823htm4jeiku6hvb8ov8663ikjlk','103.156.118.58',1614929414,_binary '__ci_last_regenerate|i:1614929414;user_id|s:1:\"1\";'),('0bp9iki94ai1k4h7lh90m7gcsnt8i8kg','103.156.118.58',1614930018,_binary '__ci_last_regenerate|i:1614930018;user_id|s:1:\"1\";'),('8r6rf02675i2vv9hsccts2r6g33uv6u2','103.156.118.58',1614930369,_binary '__ci_last_regenerate|i:1614930369;user_id|s:1:\"1\";'),('q0q32qmb04voi76oeoc4m1v4sj09tk5b','103.156.118.58',1614930678,_binary '__ci_last_regenerate|i:1614930678;user_id|s:1:\"1\";'),('mois5g2oaok129uqma8bva9ddtbv97t7','103.156.118.58',1614931007,_binary '__ci_last_regenerate|i:1614931007;user_id|s:1:\"1\";'),('9f4s213nq31j0q37vkcf2p1enblpj057','103.156.118.58',1614931321,_binary '__ci_last_regenerate|i:1614931321;user_id|s:1:\"1\";'),('h2k75u1mce20iq997qcd4de7r5b1duj6','103.156.118.58',1614931639,_binary '__ci_last_regenerate|i:1614931639;user_id|s:1:\"1\";'),('gb9au4qeumon86bp0vdp1g8bpb0n6dgt','172.105.126.18',1614931375,_binary '__ci_last_regenerate|i:1614931375;'),('2bsprnam3216rsn3a0gjujkr67cq1fqj','103.156.118.58',1614932125,_binary '__ci_last_regenerate|i:1614932125;user_id|s:1:\"1\";'),('0loj3hs1b4f74v2nui7837vuee9j90lt','103.156.118.58',1614932692,_binary '__ci_last_regenerate|i:1614932692;user_id|s:1:\"1\";'),('44l6vf2tcmsqdthej09qiq9ro1e3gffs','103.156.118.58',1614933039,_binary '__ci_last_regenerate|i:1614933039;user_id|s:2:\"10\";'),('sp1cd16suqkfugi6mrnj74u11budgr2o','103.156.118.58',1614932721,_binary '__ci_last_regenerate|i:1614932721;'),('hehjf5dp429trm98k169geoub0q11taa','103.156.118.58',1614932721,_binary '__ci_last_regenerate|i:1614932721;'),('os8brvsldhqojovbdbnttr5jdjsr028v','103.156.118.58',1614933204,_binary '__ci_last_regenerate|i:1614933204;user_id|s:2:\"10\";'),('jlb0ntjr6s74p7vf8i49im4tchjbcmrl','103.156.118.58',1614933723,_binary '__ci_last_regenerate|i:1614933723;'),('nos226jmm5s031h9blndm1t58d11pb7c','103.156.118.58',1614933826,_binary '__ci_last_regenerate|i:1614933826;user_id|s:1:\"1\";'),('7aaqjgjf31rqhg38fh25p3j7l5ar0bh8','103.156.118.58',1614933775,_binary '__ci_last_regenerate|i:1614933775;'),('k7f574l89tb17j8f5pt80089c9ertkfv','103.156.118.58',1614934202,_binary '__ci_last_regenerate|i:1614934202;user_id|s:1:\"1\";'),('d3a401ng2aa1dcrqoic6doqq85q6mmn1','103.156.118.58',1614934585,_binary '__ci_last_regenerate|i:1614934585;user_id|s:1:\"1\";'),('u1sfavgojn7o1q58jih8ca72mijvqnrd','103.156.118.58',1614935198,_binary '__ci_last_regenerate|i:1614935198;user_id|s:1:\"1\";'),('fcjav3slg3u98tok23a07h46ed0j142e','172.105.126.18',1614934657,_binary '__ci_last_regenerate|i:1614934657;'),('ob9njq0lphdmu78pj94pdq5jd0htpvn9','172.105.126.18',1614934657,_binary '__ci_last_regenerate|i:1614934657;'),('rt1hrguh8f8irprf46te4h375svkp8fm','172.105.126.18',1614934657,_binary '__ci_last_regenerate|i:1614934657;'),('flrjc18ck1n67d6eeu450rk0419o578g','172.105.126.18',1614934657,_binary '__ci_last_regenerate|i:1614934657;'),('7tmu2ehmc352pv7fv7tlau9dr8oae6p2','103.156.118.58',1614935891,_binary '__ci_last_regenerate|i:1614935891;user_id|s:1:\"1\";'),('rpqd050p8sfv59b2qlvi7n0avukk4mqa','103.156.118.58',1614936607,_binary '__ci_last_regenerate|i:1614936607;user_id|s:1:\"4\";'),('gorjs8sqimmretqis910v7ceu4fdnt7s','172.105.126.18',1614936581,_binary '__ci_last_regenerate|i:1614936581;'),('g07ogr9t1u301ilvl56emv91deq6a281','172.105.126.18',1614936587,_binary '__ci_last_regenerate|i:1614936587;'),('4bpjd3odbck1abq4gt6nh43610seg32h','103.156.118.58',1614936900,_binary '__ci_last_regenerate|i:1614936900;'),('c96ns6e41kl245nopc8t3tr5dinfe0vr','103.156.118.58',1614937379,_binary '__ci_last_regenerate|i:1614937379;user_id|s:1:\"1\";'),('ltrsllcfrm9dejnvlld74mbfvmun47j1','103.156.118.58',1614937732,_binary '__ci_last_regenerate|i:1614937732;user_id|s:1:\"1\";'),('bmf16rrultft5oboqps068i8ov0htg99','172.105.126.18',1614937482,_binary '__ci_last_regenerate|i:1614937482;'),('tgeq6ethcchik1i7bv8m686k3goq76eo','103.156.118.58',1614938150,_binary '__ci_last_regenerate|i:1614938150;user_id|s:1:\"1\";'),('r7o5mm3jlfgsn36m8ima4ooiihulv30c','172.105.126.18',1614937971,_binary '__ci_last_regenerate|i:1614937971;'),('obqmn64n9punjshpoups5to4a9s7tlgo','103.156.118.58',1614938491,_binary '__ci_last_regenerate|i:1614938150;user_id|s:1:\"1\";'),('b9n4s3b4pr7l031jr63okm0natb72don','92.118.160.37',1614976025,_binary '__ci_last_regenerate|i:1614976025;'),('nmko8rvtvphs0f43si5tge0gb5pok701','92.118.160.37',1614976034,_binary '__ci_last_regenerate|i:1614976034;'),('dshaq0tco0r4qr1eqeeplhr1q1rcqii3','180.163.220.4',1614979587,_binary '__ci_last_regenerate|i:1614979586;'),('fmnrv4i9od7odm8usmulfrgvsiiqkuvk','27.115.124.101',1614979718,_binary '__ci_last_regenerate|i:1614979716;'),('dphl3c55tedqe46mm65q2h7km4gl7lka','125.161.138.132',1615013124,_binary '__ci_last_regenerate|i:1615012719;user_id|s:2:\"10\";'),('i8r5qtpft62oho8sjg88985ibhvutjdk','125.161.150.142',1615013635,_binary '__ci_last_regenerate|i:1615012733;user_id|s:1:\"1\";'),('stas3saa7g7si750rppplfm44pug9ghp','34.77.162.33',1615030667,_binary '__ci_last_regenerate|i:1615030667;'),('j32bn99fhd15bvessj32082j647jlaab','120.188.7.38',1615087050,_binary '__ci_last_regenerate|i:1615087050;'),('5qkudeh3n98qkg1a0oootomuf7faku3a','118.96.21.4',1615092070,_binary '__ci_last_regenerate|i:1615091560;user_id|s:1:\"1\";'),('haepfjret5lsmfjog26jviu9e8uek3kf','125.161.138.132',1615122315,_binary '__ci_last_regenerate|i:1615122315;'),('e8qlse7hg3kingge1ler1vk0slt3lagd','125.161.138.132',1615122315,_binary '__ci_last_regenerate|i:1615122315;'),('vevvhn8eanri25lhqfl89t013ao327sq','103.156.118.58',1615167529,_binary '__ci_last_regenerate|i:1615167529;user_id|s:2:\"10\";'),('sraa8no05al54rhbua0ghe5auks6co42','103.156.118.58',1615167758,_binary '__ci_last_regenerate|i:1615167529;user_id|s:2:\"10\";'),('s90p1ng0ij951sj2kiab3gmu8g6a2e6k','103.156.118.58',1615168374,_binary '__ci_last_regenerate|i:1615168374;user_id|s:2:\"10\";'),('af419ejhrcjie6hsqn2v0ndolt2fn8m7','103.156.118.58',1615168869,_binary '__ci_last_regenerate|i:1615168869;user_id|s:2:\"10\";'),('gb97c4pr22scg4v1kq0pnkvnvcor6u5l','103.156.118.58',1615169457,_binary '__ci_last_regenerate|i:1615169457;user_id|s:2:\"10\";'),('c96raufe2c2i472jlr0tu01n5s6t4et1','103.156.118.58',1615169911,_binary '__ci_last_regenerate|i:1615169911;user_id|s:2:\"10\";'),('bdtdjm848i3dpid5a8kddfsjfhub0jsi','103.156.118.58',1615169779,_binary '__ci_last_regenerate|i:1615169779;user_id|s:2:\"10\";'),('kae4nhhpjn7u2aufks6er78optsu24dv','172.105.126.18',1615169589,_binary '__ci_last_regenerate|i:1615169589;'),('83ml7kue0e9cs86f9tg4dqgh0dqja8vl','172.105.126.18',1615169646,_binary '__ci_last_regenerate|i:1615169646;'),('c6226vbcrganseli5f0df66pf9mr3nfl','103.156.118.58',1615170733,_binary '__ci_last_regenerate|i:1615170733;user_id|s:2:\"10\";'),('cdnrr6eudc5nkbvbnma662vfjun2e1ll','103.156.118.58',1615172220,_binary '__ci_last_regenerate|i:1615169911;user_id|s:2:\"10\";'),('4taaojilm9osb19mf2evtalmbvp879ng','103.156.118.58',1615171113,_binary '__ci_last_regenerate|i:1615171113;user_id|s:2:\"10\";'),('h48l276e6vqnav25qaod03u0vo754h10','103.156.118.58',1615172209,_binary '__ci_last_regenerate|i:1615172209;user_id|s:2:\"10\";'),('2jhmakuqboj12i8gnvndvsf7lv34oat1','103.156.118.58',1615172713,_binary '__ci_last_regenerate|i:1615172713;user_id|s:2:\"10\";'),('hdoa8ss2qeviigb0gg3d7ekfgapvk035','103.156.118.58',1615173362,_binary '__ci_last_regenerate|i:1615173362;user_id|s:2:\"10\";'),('3rkuhveiqmi58h9mke2njo18vb7k22jt','103.156.118.58',1615173664,_binary '__ci_last_regenerate|i:1615173664;user_id|s:2:\"10\";'),('pf0li8o912bmj9c21rbpk85qh3u3ca02','103.156.118.58',1615174182,_binary '__ci_last_regenerate|i:1615174182;'),('t8u9g2mke5tl9d3sg4thr8rmr67re3if','103.156.118.58',1615173969,_binary '__ci_last_regenerate|i:1615173969;user_id|s:2:\"10\";'),('oauthonu7j9q6519cf3vidlmkdrok0f7','103.156.118.58',1615174288,_binary '__ci_last_regenerate|i:1615174288;user_id|s:2:\"10\";'),('060fui33qv1ppb0jo7iar9fd58c2651t','103.156.118.58',1615174555,_binary '__ci_last_regenerate|i:1615174555;user_id|s:1:\"1\";'),('drnrnp8c4ge6sm0abpv800t65n0d7ogb','172.105.126.18',1615174197,_binary '__ci_last_regenerate|i:1615174197;'),('7fkm3r8ljcs4qk1034d8vdi8gkk14tr4','103.156.118.58',1615174594,_binary '__ci_last_regenerate|i:1615174594;user_id|s:2:\"10\";'),('5fkp6r226u1fg3l7ngduotug7gtu9o0h','103.156.118.58',1615175424,_binary '__ci_last_regenerate|i:1615175424;user_id|s:2:\"10\";'),('pe42qld50b454v4261pddga4ljnl9scs','172.105.126.18',1615174852,_binary '__ci_last_regenerate|i:1615174852;'),('112qipd2hrn8u87067d5ugf8kji660e4','103.156.118.58',1615174854,_binary '__ci_last_regenerate|i:1615174854;'),('jvhfdfuk7oph86ml1l5vsqff2rd214q2','103.156.118.58',1615174854,_binary '__ci_last_regenerate|i:1615174854;'),('2ftnbe5vteus0aa271aoefe6ngom9rec','103.156.118.58',1615175443,_binary '__ci_last_regenerate|i:1615175443;user_id|s:1:\"8\";'),('nvelfkaftd01k97r0dd7gmgebi3424vn','103.156.118.58',1615175319,_binary '__ci_last_regenerate|i:1615175319;user_id|s:1:\"4\";'),('259fqtjqfcvkbt91is1u7garu6c94bbc','103.156.118.58',1615175651,_binary '__ci_last_regenerate|i:1615175651;user_id|s:1:\"4\";'),('c5rbfo8j09b5nteqi4vq1ro96lj8biua','103.156.118.58',1615175733,_binary '__ci_last_regenerate|i:1615175733;user_id|s:2:\"10\";'),('nlior1jjgdr7o05s6cr5s4udo2ma3d16','103.156.118.58',1615188109,_binary '__ci_last_regenerate|i:1615175443;user_id|s:1:\"8\";'),('g0t90iavcbbq38ef99vfkgr79rt2a0og','103.156.118.58',1615178847,_binary '__ci_last_regenerate|i:1615178847;user_id|s:2:\"10\";'),('lr2qevf1dhi3boel2050337vg8ccnb77','172.105.126.18',1615176073,_binary '__ci_last_regenerate|i:1615176073;'),('5tk5ghpf6k20gnhepm5nne5c3prsugh4','103.156.118.58',1615176608,_binary '__ci_last_regenerate|i:1615176608;user_id|s:1:\"1\";'),('k0ojn6duk8h9upumoeu2dbs2c0tmbum0','103.156.118.58',1615177232,_binary '__ci_last_regenerate|i:1615177232;user_id|s:1:\"1\";'),('m9gk7p85ic4o5hktp96bn2n4ptqol6su','172.105.126.18',1615176720,_binary '__ci_last_regenerate|i:1615176720;'),('c5degrb99akvm3sffimdahaeukfrf6dh','172.105.126.18',1615176734,_binary '__ci_last_regenerate|i:1615176734;'),('7m717eifuovb5t9gd158qosk3dq4jb0j','172.105.126.18',1615176749,_binary '__ci_last_regenerate|i:1615176749;'),('4gns090s38td66o1iqaopvtd5rrpcgg2','103.156.118.58',1615177556,_binary '__ci_last_regenerate|i:1615177556;user_id|s:1:\"1\";'),('qj3nrea6pii4nifv7r23k5v0rn9qjlm6','103.156.118.58',1615177880,_binary '__ci_last_regenerate|i:1615177880;user_id|s:1:\"1\";'),('rc6n07bi10c29mcijaicr4nch5af53o4','103.156.118.58',1615183957,_binary '__ci_last_regenerate|i:1615177670;user_id|s:1:\"1\";'),('fpgb14mphjv3670icdcv40n9e7p28vnk','54.174.53.194',1615177752,_binary '__ci_last_regenerate|i:1615177752;'),('j03u26tc8272cf8i62tqc857nlsk5bc6','103.156.118.58',1615178517,_binary '__ci_last_regenerate|i:1615178517;user_id|s:1:\"1\";'),('g7pskshid549g1h5aohui36pb1tqhnr3','103.156.118.58',1615179184,_binary '__ci_last_regenerate|i:1615179184;user_id|s:1:\"1\";'),('d915fq4g81sah929fbdgaidlan46mrmc','103.156.118.58',1615179771,_binary '__ci_last_regenerate|i:1615179771;user_id|s:2:\"10\";'),('fcrlscu7k05nlkcm6bt1nt2rqrv8nbok','103.156.118.58',1615179618,_binary '__ci_last_regenerate|i:1615179618;user_id|s:1:\"1\";'),('1fumu18un89dd572cn0lc9d99ttagcsd','103.156.118.58',1615180036,_binary '__ci_last_regenerate|i:1615180036;user_id|s:1:\"1\";'),('6emh308p4mbjol49nus7sumsf7qpoejh','103.156.118.58',1615182717,_binary '__ci_last_regenerate|i:1615182717;user_id|s:2:\"10\";'),('cq39f2u6p21s81qvm9r275838b232mfq','103.156.118.58',1615180648,_binary '__ci_last_regenerate|i:1615180648;user_id|s:1:\"1\";'),('s8bn5c939r43jdaou3t6cpoqu5m62h3u','103.156.118.58',1615180951,_binary '__ci_last_regenerate|i:1615180951;user_id|s:1:\"1\";'),('diolh1k14prhk84gmp3k230k69kecjgt','103.156.118.58',1615181711,_binary '__ci_last_regenerate|i:1615181711;user_id|s:1:\"1\";'),('h72dvjj0gk5eebua154o64gud8d1sh24','103.156.118.58',1615182047,_binary '__ci_last_regenerate|i:1615182047;user_id|s:1:\"1\";'),('ocha15que53tf0nm6p4ghikdj8gtc2rv','103.156.118.58',1615182396,_binary '__ci_last_regenerate|i:1615182396;user_id|s:1:\"1\";'),('uqiur7k1evka2gbk7rotn3bffm8se9dq','103.156.118.58',1615183032,_binary '__ci_last_regenerate|i:1615183032;user_id|s:1:\"1\";'),('9etp0bagd6am2qim72rtg3teuts1a1pg','103.156.118.58',1615191611,_binary '__ci_last_regenerate|i:1615191611;user_id|s:2:\"10\";'),('lksiqvkrttpr86jdn8go106ptmsl57st','103.156.118.58',1615183392,_binary '__ci_last_regenerate|i:1615183392;user_id|s:1:\"1\";'),('2ordj2hn8bqetio7pp3o7blenpkasc3m','103.156.118.58',1615183970,_binary '__ci_last_regenerate|i:1615183970;user_id|s:1:\"1\";'),('hjtjcjfodo5qprfmtt6tf87h6i9oer35','103.156.118.58',1615191971,_binary '__ci_last_regenerate|i:1615191971;user_id|s:1:\"1\";'),('99dtk86r5emm7gdcqkmmf77ebbhvtnn8','103.156.118.58',1615196554,_binary '__ci_last_regenerate|i:1615196554;user_id|s:2:\"10\";'),('lci6ca6sshk4r23g01938fhfd3ckupvp','103.156.118.58',1615192429,_binary '__ci_last_regenerate|i:1615192429;user_id|s:1:\"1\";'),('shi23grgf68jtkffaffo9drnmsl757ue','103.156.118.58',1615194134,_binary '__ci_last_regenerate|i:1615194134;user_id|s:1:\"1\";'),('l5jg5b5k2fdu30gvddjtvgc9ksbl9251','103.156.118.58',1615194660,_binary '__ci_last_regenerate|i:1615194660;user_id|s:1:\"1\";'),('6hlm6efuvbjjhj107jff6nkacv2relol','103.156.118.58',1615194776,_binary '__ci_last_regenerate|i:1615194660;user_id|s:1:\"1\";'),('1vhgt977ggkj095bu8tbdsi8jf66djut','103.156.118.58',1615196554,_binary '__ci_last_regenerate|i:1615196554;'),('9gq5h29cme3iq9a88m8hs27ijb8gp0p4','122.144.1.156',1615197020,_binary '__ci_last_regenerate|i:1615196853;user_id|s:2:\"11\";'),('7j7o8hqnrfuaqof8e2130sirinno7ph0','110.138.88.77',1615202857,_binary '__ci_last_regenerate|i:1615202778;user_id|s:1:\"1\";'),('8m9ua3046orae21b3ahea3585fveuvc4','125.161.138.182',1615223214,_binary '__ci_last_regenerate|i:1615223214;'),('hce8c9dkms9abpamq0b0r8hvl6gkcpjk','34.77.162.33',1615238414,_binary '__ci_last_regenerate|i:1615238414;'),('vmae19td6cflq4r38vl2hea8j5mn1hcu','120.188.7.38',1615264663,_binary '__ci_last_regenerate|i:1615263440;user_id|s:2:\"10\";'),('9mhk3fcrmajl0jkaepjv3600gos342jg','120.188.93.130',1615282553,_binary '__ci_last_regenerate|i:1615282553;'),('i8h86k06k9fcolquc8kj1sj4u5prs9do','125.161.138.182',1615299136,_binary '__ci_last_regenerate|i:1615299136;'),('bbighl3qaqerrimf2l6jtfmt4a033spu','121.4.254.238',1615313920,_binary '__ci_last_regenerate|i:1615313920;'),('uu5i6kamv6cq8bqib41bo47hikbs3k7b','121.4.254.238',1615313921,_binary '__ci_last_regenerate|i:1615313921;'),('6vgaorvno1v2p26af8hio61ldn65tc0g','103.119.63.167',1615341798,_binary '__ci_last_regenerate|i:1615341798;'),('l3cigtglq2n4f7ueg1bc41pcti1p2tu0','103.119.63.167',1615347073,_binary '__ci_last_regenerate|i:1615347073;user_id|s:1:\"1\";'),('o1qhp69m69cur8ti0v1a4o1rot3qmfhb','103.119.63.167',1615351877,_binary '__ci_last_regenerate|i:1615351877;user_id|s:1:\"1\";'),('hteth0up8nkqk676619l890fk5mqr640','103.119.63.167',1615348822,_binary '__ci_last_regenerate|i:1615348822;user_id|s:1:\"1\";'),('29seprp7prs6d1kuq7c84d9c1s5uboop','103.119.63.167',1615349123,_binary '__ci_last_regenerate|i:1615349123;user_id|s:1:\"1\";'),('hi0na5ri7u58ejknav33vr1hv0g65hfb','103.119.63.167',1615356432,_binary '__ci_last_regenerate|i:1615356432;user_id|s:1:\"1\";'),('d57rm42gn75q22t7rl16lgv4skn4h0o6','122.144.1.156',1615351952,_binary '__ci_last_regenerate|i:1615351952;user_id|s:2:\"11\";'),('fg4ta5foabl5asi0tk76eallmfu0cddk','103.119.63.167',1615359178,_binary '__ci_last_regenerate|i:1615359178;user_id|s:1:\"1\";'),('lelrm0va8m1cfkda3blms0s9b8olpqgs','122.144.1.156',1615353029,_binary '__ci_last_regenerate|i:1615353029;user_id|s:2:\"11\";'),('aeu147h7gajvfnvia3is6fif61s5usk3','122.144.1.156',1615353545,_binary '__ci_last_regenerate|i:1615353545;user_id|s:2:\"11\";'),('7ldoap1ab6ft80agot1dvu07ige90kgc','122.144.1.156',1615356517,_binary '__ci_last_regenerate|i:1615356517;user_id|s:2:\"11\";'),('0cbdc6a12ccjipj9jmuhgrht0ecghdca','103.119.63.167',1615356921,_binary '__ci_last_regenerate|i:1615356921;user_id|s:1:\"1\";'),('bk77488h7g9u8lc0bq25ol9sd325kr4g','122.144.1.156',1615356913,_binary '__ci_last_regenerate|i:1615356913;user_id|s:2:\"11\";'),('upi1204kmdd67cr6bo3v9a49bn4m8vr3','103.119.63.167',1615357925,_binary '__ci_last_regenerate|i:1615357925;'),('eaopddngat6enovpa2mgcugpkg029f9f','103.119.63.167',1615357887,_binary '__ci_last_regenerate|i:1615357887;user_id|s:2:\"10\";'),('d8uiegcdpjvdovcpb4ar90nd0tfkqv9g','122.144.1.156',1615357296,_binary '__ci_last_regenerate|i:1615357296;user_id|s:2:\"11\";'),('79pjq378hl0ncm00mbfjup0jkfntnioc','103.119.63.167',1615357223,_binary '__ci_last_regenerate|i:1615357223;user_id|s:1:\"1\";'),('0c05u3il8vgu9v0au56j1jds1tirgbuc','103.119.63.167',1615357530,_binary '__ci_last_regenerate|i:1615357530;user_id|s:1:\"1\";'),('tuoocsgjhu8dt55smlkhm893mhd3elkr','122.144.1.156',1615357628,_binary '__ci_last_regenerate|i:1615357628;user_id|s:2:\"11\";'),('e3bnhvj57edcn9ese1uiuns14k0bj9sf','172.105.126.18',1615357316,_binary '__ci_last_regenerate|i:1615357316;'),('cbp1bcgpcv1g4qjnjkgjthlf0l5k3cih','172.105.126.18',1615357351,_binary '__ci_last_regenerate|i:1615357351;'),('jugl7pkm63ci7fmpcmr23kech9fb9m69','103.119.63.167',1615357833,_binary '__ci_last_regenerate|i:1615357833;user_id|s:1:\"1\";'),('mknqehfl2po6j6tc4f5kcepvqt2rur8t','103.119.63.167',1615357555,_binary '__ci_last_regenerate|i:1615357555;user_id|s:2:\"10\";'),('igt24q4gfjqv431q43ujjco0mi4slnme','122.144.1.156',1615358182,_binary '__ci_last_regenerate|i:1615358182;user_id|s:2:\"11\";'),('onukot7iqhjvb20hmd909mmun8po6g7k','103.119.63.167',1615358216,_binary '__ci_last_regenerate|i:1615358216;user_id|s:1:\"1\";'),('eq3k51o2psqr8el9846cdktjop1ls30m','103.119.63.167',1615358475,_binary '__ci_last_regenerate|i:1615358475;user_id|s:2:\"10\";'),('9qfvvp82hikipda3jenh2p0cpr0ji521','103.119.63.167',1615357933,_binary '__ci_last_regenerate|i:1615357925;'),('mcupl60o7fgqv6cq3lr1ftpas8d5co7j','172.105.126.18',1615357988,_binary '__ci_last_regenerate|i:1615357988;'),('6at1go1lu9ql5bld90ja9kok8ggnqhmt','122.144.1.156',1615358503,_binary '__ci_last_regenerate|i:1615358503;user_id|s:2:\"11\";'),('snnrsnlc12lnf9g7hnbd0o1a2ate4ca6','103.119.63.167',1615359807,_binary '__ci_last_regenerate|i:1615359807;user_id|s:1:\"1\";'),('11msl92llv1shs28a2hdghs55c2mmq1d','103.119.63.167',1615366007,_binary '__ci_last_regenerate|i:1615366007;user_id|s:2:\"10\";'),('ll8jfaqeh78cko89f3hfrhbgs6dmhtjm','122.144.1.156',1615358812,_binary '__ci_last_regenerate|i:1615358812;user_id|s:2:\"11\";'),('7r3tldglpbkoetd8ju5b7uh1rdrq6hnc','122.144.1.156',1615359159,_binary '__ci_last_regenerate|i:1615359159;user_id|s:2:\"11\";'),('2sjtk0u5omlervrg1cp7q715ac87u43g','122.144.1.156',1615359464,_binary '__ci_last_regenerate|i:1615359159;user_id|s:2:\"11\";'),('5eg49o7946f9rrjocqku1evlo6r4df9h','103.119.63.167',1615359792,_binary '__ci_last_regenerate|i:1615359792;user_id|s:1:\"1\";'),('ekfjusi0jfh073bl4rln9tlhgb7rvf4q','103.119.63.167',1615360473,_binary '__ci_last_regenerate|i:1615360473;user_id|s:1:\"1\";'),('cdvl7nlbjn3vatkmasrgujt8jgdlf4b5','103.119.63.167',1615360020,_binary '__ci_last_regenerate|i:1615359807;user_id|s:1:\"1\";'),('n6aek08pl50ke803jkgf05i21t4obs7q','103.119.63.167',1615364713,_binary '__ci_last_regenerate|i:1615364713;user_id|s:1:\"1\";'),('gd9peo92057m1lob1ud5soa7cg2gfml3','103.119.63.167',1615366041,_binary '__ci_last_regenerate|i:1615366041;user_id|s:1:\"1\";'),('gs077adm3cq3j8ml29gnp1ei8n6qbarc','103.119.63.167',1615366454,_binary '__ci_last_regenerate|i:1615366454;user_id|s:2:\"10\";'),('af9gmtqn8mbcpnubqt9r1r2re1l2ph0k','103.119.63.167',1615368238,_binary '__ci_last_regenerate|i:1615366041;user_id|s:1:\"1\";'),('nvq41f74jjvpoj6u85epcpghm1qp3ek6','103.119.63.167',1615366837,_binary '__ci_last_regenerate|i:1615366837;user_id|s:2:\"10\";'),('r586ivpgu14m27bnvm0vfgokld8phh32','103.119.63.167',1615368027,_binary '__ci_last_regenerate|i:1615368027;user_id|s:2:\"10\";'),('fioeg6p2ocl96tbashalt8v8nq1qc5uq','103.119.63.167',1615369113,_binary '__ci_last_regenerate|i:1615369113;user_id|s:2:\"10\";'),('lct7hlp0ns8ib4u6o7ta548jrv6ob0uv','103.119.63.167',1615369628,_binary '__ci_last_regenerate|i:1615369628;user_id|s:2:\"10\";'),('7hmp3no17g9d25ur1a5dtoe9j3f941vq','103.119.63.167',1615370186,_binary '__ci_last_regenerate|i:1615370186;user_id|s:2:\"10\";'),('ucu93ncl8lrv0qij212seere8hi7es04','103.119.63.167',1615372235,_binary '__ci_last_regenerate|i:1615372235;user_id|s:2:\"10\";'),('7ticgi23k007pvincqerohlrobdill6d','103.119.63.167',1615519554,_binary '__ci_last_regenerate|i:1615519554;'),('l6qcr0r30s0e2puaufiahghhdp0vbg45','125.166.75.167',1615375908,_binary '__ci_last_regenerate|i:1615375908;user_id|s:1:\"1\";'),('glv57h703m9k0dld39ntae56s1k84tov','125.166.75.167',1615378664,_binary '__ci_last_regenerate|i:1615378664;user_id|s:1:\"1\";'),('ieah3e4vhjiutqn7uuj8l4g90lkutq9a','180.249.195.104',1615378030,_binary '__ci_last_regenerate|i:1615378029;'),('28ggrjvjol68h78b2uh5hlc5oqmg82d0','125.166.75.167',1615379072,_binary '__ci_last_regenerate|i:1615379072;user_id|s:1:\"1\";'),('9oet97ls3nr2akai750je6qjklvl54rh','125.166.75.167',1615379083,_binary '__ci_last_regenerate|i:1615379072;user_id|s:1:\"1\";'),('d9gtnldksul9p5r9veo8asg1nnbqulll','125.166.75.167',1615394396,_binary '__ci_last_regenerate|i:1615394396;'),('4f7vakmf37ckn2d72ipqlpam49p1a9jk','125.166.75.167',1615395254,_binary '__ci_last_regenerate|i:1615395254;user_id|s:1:\"1\";'),('9gf3sb94feq1v4s3jr111kph9a7u8td6','125.166.75.167',1615395506,_binary '__ci_last_regenerate|i:1615395254;user_id|s:1:\"1\";'),('vktgnghtot0dkvt5sgfr2bpclc7e32or','114.124.239.111',1615439098,_binary '__ci_last_regenerate|i:1615439098;'),('s8e3r4if54egto1rd229tnfqoi0huv4v','110.138.86.28',1615468592,_binary '__ci_last_regenerate|i:1615468538;user_id|s:1:\"1\";'),('r0dt5tt8b5o4tmipb3ljq5nlvbau37o7','125.161.138.182',1615484950,_binary '__ci_last_regenerate|i:1615484950;'),('hvg665vksvf14nik0mo8n7bvv7b74ui2','103.119.63.167',1615519943,_binary '__ci_last_regenerate|i:1615519943;user_id|s:2:\"10\";'),('ejmk2b9uaq1hdn62ajadi7i9cbvu0s0s','103.119.63.167',1615520300,_binary '__ci_last_regenerate|i:1615520300;user_id|s:2:\"10\";'),('jjf64rtgfsf2hv6tfj7ukqakrr41ivgk','103.119.63.167',1615520440,_binary '__ci_last_regenerate|i:1615520300;user_id|s:2:\"10\";'),('jc06uk06i7f02kj7cjl9nuhjqk1vt39i','110.138.86.28',1615525628,_binary '__ci_last_regenerate|i:1615525628;user_id|s:1:\"1\";'),('lfvv2gcsiui6aijns75n360ne21jkj3l','182.2.169.189',1615525788,_binary '__ci_last_regenerate|i:1615525628;user_id|s:1:\"1\";'),('qksf5jn255udeutsl78c94d9jots73or','103.119.63.167',1615540375,_binary '__ci_last_regenerate|i:1615540375;user_id|s:2:\"10\";'),('6g8updh6rhp53uloruj5qlamlhe47f6l','103.119.63.167',1615540375,_binary '__ci_last_regenerate|i:1615540375;'),('tjmho24dl21vaqrph98r0b9olg4mdtd7','34.77.162.29',1615551572,_binary '__ci_last_regenerate|i:1615551572;'),('2g4b6l5ubf0mnbudhvsfpdcfk0jga5h6','138.246.253.24',1615586488,_binary '__ci_last_regenerate|i:1615586488;'),('4ujaniarstcoihkv7li3vm5a8khv2pvi','110.138.88.253',1615696886,_binary '__ci_last_regenerate|i:1615696704;user_id|s:1:\"1\";'),('7rnh6tmlc2qmovvpjdoha68bu8jts7fg','120.188.7.213',1615726856,_binary '__ci_last_regenerate|i:1615726856;'),('4auhmenmhasibh8p0rggfm8ugtp1cnvb','8.47.69.99',1615728534,_binary '__ci_last_regenerate|i:1615728358;user_id|s:1:\"1\";'),('sr3v0hggd5aj4075tgjeuojp4shigpd3','103.119.63.167',1615763538,_binary '__ci_last_regenerate|i:1615763538;user_id|s:2:\"10\";'),('1eu0eteql1p8bg50t99jspglikcicf8k','103.119.63.167',1615763826,_binary '__ci_last_regenerate|i:1615763538;user_id|s:2:\"10\";'),('q4ksqaafbedorv3s3r6nf8bqk24555eh','103.119.63.167',1615781220,_binary '__ci_last_regenerate|i:1615781220;'),('reghu2rpn087nnrb5ehuldkt0m1sglbm','103.119.63.167',1615786356,_binary '__ci_last_regenerate|i:1615786356;user_id|s:1:\"1\";'),('90a17sstmq14rf7e8se6gh21r1deqnvu','122.144.1.156',1615829465,_binary '__ci_last_regenerate|i:1615782419;user_id|s:1:\"9\";'),('l53f132ad8476hqcbe56hv9h0b2lfqkk','114.4.4.139',1615782467,_binary '__ci_last_regenerate|i:1615782465;'),('6kmd43rjrgfntjm3k4361kkjis01niei','103.119.63.167',1615782828,_binary '__ci_last_regenerate|i:1615782828;'),('noe4ptsbcbboci71s2r8ldq0jcleq9q1','103.119.63.167',1615785869,_binary '__ci_last_regenerate|i:1615785869;user_id|s:2:\"10\";'),('2dldltf12ffgbs0fddhvkug9fi92gmpg','110.50.81.198',1615784226,_binary '__ci_last_regenerate|i:1615784225;'),('v08g0akm2bmi8p2ng54jmeu0odj83mg5','103.119.63.167',1615788801,_binary '__ci_last_regenerate|i:1615788801;user_id|s:2:\"10\";'),('sare545n7nvtsocv20eacfkall5fbetj','172.105.126.18',1615786081,_binary '__ci_last_regenerate|i:1615786081;'),('omo4sdqelt4qi0emilarbd8h9r3mjln0','103.119.63.167',1615788401,_binary '__ci_last_regenerate|i:1615786356;user_id|s:1:\"1\";'),('v1d5c0dp4jd8tmstbgrv08n28p7d79sn','103.119.63.167',1615796342,_binary '__ci_last_regenerate|i:1615796342;user_id|s:2:\"10\";'),('dihk8opqqpnflpl6plg9ke00kr61g5ic','122.144.1.156',1615791204,_binary '__ci_last_regenerate|i:1615791204;'),('pd05qneu74p4l39n908o86gdjab11gc7','103.119.63.167',1615792742,_binary '__ci_last_regenerate|i:1615792742;'),('gt51rk348css9hg32kpdfrlfdo3r68ob','103.119.63.167',1615805704,_binary '__ci_last_regenerate|i:1615805704;user_id|s:2:\"10\";'),('vbfg3jee1d0jdqaqs5eehmrmp7fn0f26','103.119.63.167',1615799816,_binary '__ci_last_regenerate|i:1615799816;'),('ff5mfc16qf7b75n8ngbknuoec5421nkg','103.119.63.167',1615805704,_binary '__ci_last_regenerate|i:1615805704;'),('3hhvnphen8e3ut4fs1hefsc1sp0fhmia','114.125.11.99',1615806424,_binary '__ci_last_regenerate|i:1615806424;user_id|s:2:\"13\";'),('arpvcsjrjj0psgi85m3qgof2n9aevdg3','114.125.11.99',1615806755,_binary '__ci_last_regenerate|i:1615806755;user_id|s:2:\"13\";'),('bf4k8uv2rs0o74vvcjbph45kbh2jmpdu','114.125.11.99',1615807833,_binary '__ci_last_regenerate|i:1615807833;user_id|s:2:\"13\";'),('3qenuqr4s2rj67uemp38j1qu3ncfhfbc','110.138.90.128',1615807086,_binary '__ci_last_regenerate|i:1615806991;user_id|s:1:\"1\";'),('mltq9motctqth4i29tn9flt8ng39olto','103.119.63.167',1615810552,_binary '__ci_last_regenerate|i:1615810552;'),('7v18j3pitg484j6bpak7j0m2hn5fiprl','172.105.126.18',1615807595,_binary '__ci_last_regenerate|i:1615807595;'),('053onvlrq81aae5n9bq5on6bc03jkjch','172.105.126.18',1615807826,_binary '__ci_last_regenerate|i:1615807826;'),('f8ebusgcq7un7r5o0s1jvuifio2qhlec','114.125.11.99',1615811439,_binary '__ci_last_regenerate|i:1615811439;user_id|s:2:\"13\";'),('ql3g886od2vu1ar0qcp3s67b4l7dhn64','172.105.126.18',1615807935,_binary '__ci_last_regenerate|i:1615807935;'),('24mhj1nun3oq7u9lkudtfoiajgq9kkoh','36.70.179.184',1615808754,_binary '__ci_last_regenerate|i:1615808754;'),('cupojvqe34hl2em7ctqiuufql0dc7o6q','36.70.179.184',1615808754,_binary '__ci_last_regenerate|i:1615808754;'),('ln1ohg541hbapiq83rp9kcofm86qdab4','103.119.63.167',1615810552,_binary '__ci_last_regenerate|i:1615810552;'),('gmbf4mbk60vbhfku2ppfsmbhklt633dj','114.125.11.99',1615810692,_binary '__ci_last_regenerate|i:1615810692;'),('k19brg5nrorqhk5id9vam4ski05bg57c','114.125.11.99',1615810692,_binary '__ci_last_regenerate|i:1615810692;'),('ooqsrl5s20meoahq39mqgrc9ni64dm83','114.125.26.106',1615811218,_binary '__ci_last_regenerate|i:1615811218;user_id|s:2:\"13\";'),('en1s5mv7ahp7kldsd9vsl4ic3oldge48','114.125.26.106',1615811535,_binary '__ci_last_regenerate|i:1615811535;user_id|s:2:\"13\";'),('ekocmlua78bhd2p11g17mc5up57rrllu','172.105.126.18',1615811325,_binary '__ci_last_regenerate|i:1615811325;'),('s3oslbhkpeq87hvtjp3nnt1v6v2pgdpm','114.125.11.99',1615813678,_binary '__ci_last_regenerate|i:1615813678;user_id|s:2:\"13\";'),('bcob3qbelj4iujess06gniv09f96atrq','114.125.26.106',1615812179,_binary '__ci_last_regenerate|i:1615812179;'),('3u6d4ep4lvskq68n4loeltrfotcp356h','114.125.26.106',1615813145,_binary '__ci_last_regenerate|i:1615813145;'),('pueoece6tg163or73v41g5d8dbkp4ad3','114.125.26.106',1615813147,_binary '__ci_last_regenerate|i:1615813145;'),('1rf3q4oh7668udaq55s1inmv1j4oqm28','114.125.11.99',1615814573,_binary '__ci_last_regenerate|i:1615814573;user_id|s:2:\"13\";'),('ve64rt887cfulvg6qhet41r8sl7repog','114.125.11.99',1615815161,_binary '__ci_last_regenerate|i:1615814573;user_id|s:2:\"13\";'),('lcmjfos375lr8s6a30jeenrppqc7pnv1','103.119.63.167',1615878446,_binary '__ci_last_regenerate|i:1615878446;user_id|s:1:\"1\";'),('etmvoc3ubail0thlgb4kc58lc2vmsl09','122.144.1.156',1615880379,_binary '__ci_last_regenerate|i:1615876388;user_id|s:2:\"11\";'),('tnt017cn01q2k3p30me2p1tthhqidstl','103.119.63.167',1615877223,_binary '__ci_last_regenerate|i:1615877223;user_id|s:2:\"11\";'),('gbgthm4u0i3g1hi8pf2pa5c2eb1t418l','103.119.63.167',1615877807,_binary '__ci_last_regenerate|i:1615877807;user_id|s:2:\"10\";'),('un67k6pnbjd3pq6g5f1372n7ib5d8nda','172.105.126.18',1615877385,_binary '__ci_last_regenerate|i:1615877385;'),('h7i3t9gj5faft9v2q2caob1gtmbmv894','172.105.126.18',1615877413,_binary '__ci_last_regenerate|i:1615877413;'),('8mmlng0suubuprn9u0bsm27eruf20qm4','103.119.63.167',1615879152,_binary '__ci_last_regenerate|i:1615878364;user_id|s:2:\"10\";'),('l13e6hd1amni1kju4inans27j93hveu0','103.119.63.167',1615877997,''),('ge2lq6s18anaueld7620hi187i5vu4sc','172.105.126.18',1615878300,_binary '__ci_last_regenerate|i:1615878300;'),('mr8b0fuf9i41fv7c9f50g9cpsb2ej4sd','103.119.63.167',1615878364,_binary '__ci_last_regenerate|i:1615878364;user_id|s:2:\"10\";'),('9g26dum1tmvjk4hb7jkab44677k5tv75','103.119.63.167',1615879387,_binary '__ci_last_regenerate|i:1615878446;user_id|s:1:\"1\";'),('52e72drui9vff1mockl8ljqpu1m2qdfh','103.119.63.167',1615889184,_binary '__ci_last_regenerate|i:1615889184;user_id|s:2:\"10\";'),('kejkpgp44m9sn22n1q7pnmq4mqjmvvn5','103.119.63.167',1615889238,_binary '__ci_last_regenerate|i:1615889238;'),('d8i9usf9edrinmi244f84c4gikok8kha','182.1.24.100',1615899017,_binary '__ci_last_regenerate|i:1615899017;user_id|s:2:\"13\";'),('n5aknct869gct16jhru4sh7rbrq2d4fg','172.105.126.18',1615892246,_binary '__ci_last_regenerate|i:1615892246;'),('d77s7t89hg2913fare01bjojc4dgihgp','103.119.63.167',1615893388,_binary '__ci_last_regenerate|i:1615893373;'),('ou3ad78pt5js2n5k9f44b4r18hqoths6','182.1.26.52',1615899140,_binary '__ci_last_regenerate|i:1615899017;user_id|s:2:\"13\";'),('aoe1d6iv9q49aq92f18r3b5126iqc29i','110.138.95.89',1615909547,_binary '__ci_last_regenerate|i:1615909547;user_id|s:1:\"1\";'),('qrcur4jcnmmenbqhici6qsb11tdjujhn','110.138.95.89',1615909554,_binary '__ci_last_regenerate|i:1615909547;user_id|s:1:\"1\";'),('kl2edo90vddf27mmao656jsqvp3v5eic','103.119.63.167',1615955349,_binary '__ci_last_regenerate|i:1615953756;user_id|s:2:\"10\";'),('erokcc0pbj20p4cm106tarb94tvb1nia','122.144.1.156',1615961914,_binary '__ci_last_regenerate|i:1615961914;user_id|s:2:\"11\";'),('j35fno1gtgih5456cgr8vtvosigo66rl','103.119.63.167',1615954752,_binary '__ci_last_regenerate|i:1615954752;user_id|s:2:\"10\";'),('dpsqh9oorbfh38iej68q53qm5ri9bo3a','103.119.63.167',1615967380,_binary '__ci_last_regenerate|i:1615967380;user_id|s:2:\"10\";'),('n9ddlv8e7j79kd0vb528iq87ist7rc7n','122.144.1.156',1615963014,_binary '__ci_last_regenerate|i:1615963014;user_id|s:2:\"11\";'),('os1fou0b6s1uk4dd9ls4ugmq9u6bm5ov','122.144.1.156',1615967923,_binary '__ci_last_regenerate|i:1615967923;user_id|s:2:\"11\";'),('fhehcttdtdu0mv66bc4q07jrrq34km7g','103.119.63.167',1615967935,_binary '__ci_last_regenerate|i:1615967935;user_id|s:2:\"10\";'),('kp17b6p3g93u0l8amck3p64he2crqm2e','122.144.1.156',1615968750,_binary '__ci_last_regenerate|i:1615968750;user_id|s:2:\"11\";'),('g73gp3pmjae6kt498bvb5i9nlh5krdre','103.119.63.167',1615968267,_binary '__ci_last_regenerate|i:1615968267;user_id|s:2:\"10\";'),('opspdplllde9o9gbi764f229hqkqgokq','103.119.63.167',1615972656,_binary '__ci_last_regenerate|i:1615972656;user_id|s:2:\"10\";'),('jdd3bipad7u4ejkd0r9fcs003heoik0u','122.144.1.156',1615975647,_binary '__ci_last_regenerate|i:1615968750;user_id|s:2:\"11\";'),('s9b8lloibn34ovbcr0tjoog0tcoj75bj','120.188.7.213',1615972663,_binary '__ci_last_regenerate|i:1615972663;'),('1revcgemfbb3basc1i6gbftq7t79toki','182.1.31.177',1615984286,_binary '__ci_last_regenerate|i:1615983177;user_id|s:2:\"13\";'),('5emn8vgdomnm5ev40q3qj66ee07f43ek','172.105.126.18',1615983334,_binary '__ci_last_regenerate|i:1615983334;'),('dafqtj291uesco3t7ii9gcoqi4lv3tl5','36.70.21.233',1616003261,_binary '__ci_last_regenerate|i:1616003229;user_id|s:1:\"1\";'),('1o4aetl6h345jcgode6c2njdtg3qbmp3','114.125.20.151',1616072729,_binary '__ci_last_regenerate|i:1616070742;user_id|s:2:\"13\";'),('24e50nk8g17vrivmbf2ro1dlvo67bafp','172.105.126.18',1616070775,_binary '__ci_last_regenerate|i:1616070775;'),('ek21vg1o392uo9sa2bk2mdmurmnp20k0','103.119.63.167',1616136218,_binary '__ci_last_regenerate|i:1616131513;user_id|s:1:\"8\";'),('je7ugd4k26ooqoeqiii9r1gal9s81kpr','138.246.253.24',1616144466,_binary '__ci_last_regenerate|i:1616144466;'),('p1efshmhmvfufgnq8ik187pdhg9okke6','114.125.40.97',1616157794,_binary '__ci_last_regenerate|i:1616154106;user_id|s:2:\"13\";'),('gctpj6dno5c02hlen916ndgt6r94a9td','172.105.126.18',1616154173,_binary '__ci_last_regenerate|i:1616154173;'),('a72432l68ef47folvugop55781vuce2j','114.125.40.23',1616217615,_binary '__ci_last_regenerate|i:1616210649;user_id|s:2:\"13\";'),('f7vvlp7oae9jhkf1mcnrjhi159tmrmoq','110.138.90.244',1616316089,_binary '__ci_last_regenerate|i:1616316089;'),('kj21bii3vhbamlp6g4kl6sdsnv51l2se','103.119.63.167',1616404072,_binary '__ci_last_regenerate|i:1616404072;user_id|s:2:\"10\";'),('hfk4c6u8cdd210ag1k3ammij6r1nc8fp','103.119.63.167',1616384489,_binary '__ci_last_regenerate|i:1616384462;user_id|s:1:\"1\";'),('84igbgn7nah97dp0gfm0letdchk3fr44','103.119.63.167',1616404778,_binary '__ci_last_regenerate|i:1616404778;'),('hdlnkc0phko1dis64dtt41i7k438s287','103.119.63.167',1616404779,_binary '__ci_last_regenerate|i:1616404778;'),('i4c5gbsdmbu5pnuggb3bddf67rrfbucu','114.125.6.227',1616416383,_binary '__ci_last_regenerate|i:1616416383;user_id|s:2:\"13\";'),('u5uk1cp900nddgeihmnqlm62bqk56psq','172.105.126.18',1616411440,_binary '__ci_last_regenerate|i:1616411440;'),('hucpcpilkjmojbn1m01tg5ld1iorrc4e','114.125.6.227',1616416738,_binary '__ci_last_regenerate|i:1616416738;user_id|s:2:\"13\";'),('ctkhltodejgmkf2lrf1pa5a07ngaq21k','114.125.6.227',1616417106,_binary '__ci_last_regenerate|i:1616417106;user_id|s:2:\"13\";'),('fn3s6695dgle53hl1g5vovg4ho0ifqof','114.125.6.227',1616422171,_binary '__ci_last_regenerate|i:1616417106;user_id|s:2:\"13\";'),('v6qepjpfv36otte0i1ql0vhvnjbqhh2k','125.160.224.24',1616434536,_binary '__ci_last_regenerate|i:1616434534;'),('nq1pg2ivqc8agmvgpkingfunt6dr1scm','103.119.63.167',1616467594,_binary '__ci_last_regenerate|i:1616467594;'),('fm81jjlabim1om3oujs52mkuntv20jqe','103.119.63.167',1616480723,_binary '__ci_last_regenerate|i:1616480723;user_id|s:1:\"1\";'),('5g9d894i4rrfianvjgrepad2pcb2f9of','103.119.63.167',1616479508,_binary '__ci_last_regenerate|i:1616479508;user_id|s:2:\"10\";'),('gjor7ccig7cro7e0cgo7vqtv2qhk4bqu','103.119.63.167',1616479920,_binary '__ci_last_regenerate|i:1616479920;user_id|s:2:\"10\";'),('0gsr2dke429a23m78jpubolngndpm293','103.119.63.167',1616480231,_binary '__ci_last_regenerate|i:1616480231;user_id|s:2:\"10\";'),('je2j9pue5ukp0a6ulggfgbu3jhquaiko','103.119.63.167',1616480543,_binary '__ci_last_regenerate|i:1616480543;user_id|s:2:\"10\";'),('eqirgoepg8jn2me1r80na1b7ogqqdvl0','103.119.63.167',1616480863,_binary '__ci_last_regenerate|i:1616480863;user_id|s:2:\"10\";'),('0d30qd72mup090sg0geq546p9jn4qfpb','103.119.63.167',1616491148,_binary '__ci_last_regenerate|i:1616480723;user_id|s:1:\"1\";'),('6t5cpavkampv09en1s7409t6md3l6gbm','103.119.63.167',1616482411,_binary '__ci_last_regenerate|i:1616482411;user_id|s:2:\"10\";'),('8ultem6v23afg2s8j683hf3abpteotck','103.119.63.167',1616482994,_binary '__ci_last_regenerate|i:1616482994;user_id|s:2:\"10\";'),('6bqsh9627ds28kpn6hlt5tcnsp41rn4s','103.119.63.167',1616483404,_binary '__ci_last_regenerate|i:1616483404;user_id|s:2:\"10\";'),('47o0hojsn9pjcu5ko9amuh9u8f7nonod','103.119.63.167',1616483744,_binary '__ci_last_regenerate|i:1616483744;user_id|s:2:\"10\";'),('0mjr1i5gokvt3rn45qsvrn4cag0jkobm','103.119.63.167',1616484262,_binary '__ci_last_regenerate|i:1616484262;user_id|s:2:\"10\";'),('c7crd09e5j9c7uv1tvg6tl8ikhd870f4','103.119.63.167',1616485437,_binary '__ci_last_regenerate|i:1616485437;user_id|s:2:\"10\";'),('9q3pfqd2balg8075lalq4stnad1ujj0b','103.119.63.167',1616486862,_binary '__ci_last_regenerate|i:1616486862;user_id|s:2:\"10\";'),('7000svp47ffjl53fbmj2lgrp0mrjorlr','103.119.63.167',1616487241,_binary '__ci_last_regenerate|i:1616487241;user_id|s:2:\"10\";'),('6frtvds787go0n73th4nkfeb0msbujc4','103.119.63.167',1616487553,_binary '__ci_last_regenerate|i:1616487553;user_id|s:2:\"10\";'),('0ba5rsngkjdrvh4m7qm68e0m1823o2hj','103.119.63.167',1616487962,_binary '__ci_last_regenerate|i:1616487962;user_id|s:2:\"10\";'),('508p43dldhv5k43avsca0gcajq2ut3o5','103.119.63.167',1616491683,_binary '__ci_last_regenerate|i:1616491683;user_id|s:2:\"10\";'),('54n45sro5ji01gqk69af99debrll1t71','103.119.63.167',1616495575,_binary '__ci_last_regenerate|i:1616495575;user_id|s:2:\"10\";'),('kd8nvku8srdjng3pg0nsggcsk3tbij98','103.119.63.167',1616495575,_binary '__ci_last_regenerate|i:1616495575;'),('mnfa8iqae1btvqvqhfok61ipghkr8bia','182.1.15.157',1616500885,_binary '__ci_last_regenerate|i:1616500682;user_id|s:2:\"13\";'),('o876d54hisu9qrgr2s31b2rgls8t4rut','172.105.126.18',1616500713,_binary '__ci_last_regenerate|i:1616500713;'),('d3css2666sf8gev1si07i1a0rmbkel5l','103.119.63.167',1616554568,_binary '__ci_last_regenerate|i:1616554568;user_id|s:2:\"10\";'),('s1li5hefoa71asja19h3kfhue1cbv7le','103.119.63.167',1616555735,_binary '__ci_last_regenerate|i:1616555735;user_id|s:2:\"10\";'),('vmnolfepkmnj2khf3elv79lskiins85a','103.119.63.167',1616556311,_binary '__ci_last_regenerate|i:1616556311;user_id|s:2:\"10\";'),('hjronaputobej13h4mceajvhbrg38o04','103.119.63.167',1616564225,_binary '__ci_last_regenerate|i:1616564225;user_id|s:2:\"10\";'),('7shht4tak16e88bais1skd83jvljipbg','103.119.63.167',1616558189,_binary '__ci_last_regenerate|i:1616558189;'),('uqldr3202n7raer7pqspkonsofjlsaj2','103.119.63.167',1616564763,_binary '__ci_last_regenerate|i:1616564763;user_id|s:1:\"1\";'),('u0f1dhm2ignmom697t7b0rpen9697emv','103.119.63.167',1616564795,_binary '__ci_last_regenerate|i:1616564225;user_id|s:2:\"10\";'),('a0qa6rcl1lmoe5s5t5inurk754f7dcfd','103.119.63.167',1616564774,_binary '__ci_last_regenerate|i:1616564763;user_id|s:1:\"1\";'),('c2hdle0e81f6a1dm0dqg6fkcinj2n734','103.119.63.167',1616565370,_binary '__ci_last_regenerate|i:1616565370;user_id|s:1:\"1\";'),('dr970d3rrq3hgcdm8dkubujnbq5s57cq','103.119.63.167',1616565717,_binary '__ci_last_regenerate|i:1616565717;user_id|s:1:\"1\";'),('qcsohsden2vr9o2ihiurno7mf933fick','103.119.63.167',1616566094,_binary '__ci_last_regenerate|i:1616566094;user_id|s:1:\"1\";'),('rh3sol4gcrbchfoe3o2jjl6n8bl78h5d','103.119.63.167',1616567137,_binary '__ci_last_regenerate|i:1616567137;user_id|s:1:\"1\";'),('kr7hr0o8i3l12ahvb91jv1bjhpeoc510','103.119.63.167',1616568586,_binary '__ci_last_regenerate|i:1616568586;user_id|s:1:\"1\";'),('4q8ncnmbfm574qtv73i45hi2bniug84n','178.93.12.227',1616567500,_binary '__ci_last_regenerate|i:1616567500;'),('aep5jjeiuoove74kpp27736eq143ek1m','103.119.63.167',1616568893,_binary '__ci_last_regenerate|i:1616568893;user_id|s:1:\"1\";'),('i31nrkvmfmlbsfj0ksv9bto1708c7ogo','103.119.63.167',1616569197,_binary '__ci_last_regenerate|i:1616569197;user_id|s:1:\"1\";'),('quorbkm4m5t2oh2h8so37lum71csq5kg','103.119.63.167',1616569541,_binary '__ci_last_regenerate|i:1616569541;user_id|s:1:\"1\";'),('p0jrqcpr5b2i68nupjuep1mk9l73rdlm','103.119.63.167',1616569851,_binary '__ci_last_regenerate|i:1616569851;user_id|s:1:\"1\";'),('9pnlq0vulke0q7snvjnc9eqeq2c0baja','103.119.63.167',1616570183,_binary '__ci_last_regenerate|i:1616570183;user_id|s:1:\"1\";'),('6p231spol4rpqjutock95m35rv5033id','152.231.48.171',1616569896,_binary '__ci_last_regenerate|i:1616569896;'),('nv0bea9dar6p87tujrs8l723vstb5ahq','103.119.63.167',1616570867,_binary '__ci_last_regenerate|i:1616570867;user_id|s:1:\"1\";'),('hccaecl1r3bag660f8fao819g3qf750s','103.119.63.167',1616571346,_binary '__ci_last_regenerate|i:1616571346;user_id|s:1:\"1\";'),('ss084uta7t0probebr2pt213grhehp74','103.119.63.167',1616572416,_binary '__ci_last_regenerate|i:1616572416;user_id|s:1:\"1\";'),('bouq81l576khasudk0ofn650olhlpqu2','103.119.63.167',1616573280,_binary '__ci_last_regenerate|i:1616573280;user_id|s:1:\"1\";'),('tei2ukqiklo8oq0msga6cq7snbj054d8','103.119.63.167',1616573623,_binary '__ci_last_regenerate|i:1616573623;user_id|s:1:\"1\";'),('mfgffcht2h7qv7v9if95bfdisnlnuaae','103.119.63.167',1616573941,_binary '__ci_last_regenerate|i:1616573941;user_id|s:1:\"1\";'),('34k3pf4pmomr2ug2ppp8sbv4j2bt6k05','103.119.63.167',1616574354,_binary '__ci_last_regenerate|i:1616574354;user_id|s:1:\"1\";'),('lmj2u9uar0ivd82cn6oikr1m66kr8ohi','103.119.63.167',1616575453,_binary '__ci_last_regenerate|i:1616575453;user_id|s:1:\"1\";'),('uni39kgsm1gh9lrkb246vpjpfst7aj2s','103.119.63.167',1616575775,_binary '__ci_last_regenerate|i:1616575775;user_id|s:1:\"1\";'),('4epebpdddgl4a72qepvjig4u23fks96k','103.119.63.167',1616576135,_binary '__ci_last_regenerate|i:1616576135;user_id|s:1:\"1\";'),('7219sb7vkabjjuefa9j8tqlude8lve21','103.119.63.167',1616576574,_binary '__ci_last_regenerate|i:1616576574;user_id|s:1:\"1\";'),('2cv390tc2qvcgbp7vqp6vc8jlrm7m4fi','103.119.63.167',1616576876,_binary '__ci_last_regenerate|i:1616576876;user_id|s:1:\"1\";'),('87bbnqvldvp4v0sgpt8hjg2gcfc7p9kk','103.119.63.167',1616577329,_binary '__ci_last_regenerate|i:1616577329;user_id|s:1:\"1\";'),('nk5pt7ddqkup377gbh5maq8gmdojsiep','103.119.63.167',1616577463,_binary '__ci_last_regenerate|i:1616577329;user_id|s:1:\"1\";'),('d8e17gtv9u7uk52kvep2l3uin2mopi69','103.119.63.167',1616636529,_binary '__ci_last_regenerate|i:1616636308;user_id|s:1:\"1\";'),('uesjd8mumfpn2ovnqo25qqlfj9vkp5b0','103.119.63.167',1616638551,_binary '__ci_last_regenerate|i:1616638551;user_id|s:1:\"1\";'),('u5qu0d14fq7kp4occ52eb5qn3735fprq','209.17.96.250',1616637910,_binary '__ci_last_regenerate|i:1616637910;'),('mr657sdckakdf6qgt5283c0am3p0g1a3','209.17.96.250',1616637911,_binary '__ci_last_regenerate|i:1616637911;'),('nerec8f6rb7mtacubephejuhlegs4fk4','103.119.63.167',1616638936,_binary '__ci_last_regenerate|i:1616638936;user_id|s:1:\"1\";'),('6rnljk5lk43kp7o8mf0rf8q2p5cbtm2k','103.119.63.167',1616639302,_binary '__ci_last_regenerate|i:1616639302;user_id|s:1:\"1\";'),('htq6055bsvpdumigf7jncoc2hnbfi1n4','103.119.63.167',1616639888,_binary '__ci_last_regenerate|i:1616639888;user_id|s:1:\"1\";'),('dr5q0kuohkcqg96gstjsr461kvf34imi','139.162.111.98',1616639577,_binary '__ci_last_regenerate|i:1616639577;'),('ie8djslapk2n6uci1o189sfojpah097b','103.119.63.167',1616640442,_binary '__ci_last_regenerate|i:1616640442;user_id|s:1:\"1\";'),('ujcvr4da9e47s9vnq4t9e9is40feqjo7','103.119.63.167',1616640830,_binary '__ci_last_regenerate|i:1616640830;user_id|s:1:\"1\";'),('lotb23jatvtklifksu3n84rf53l1aoob','103.119.63.167',1616641215,_binary '__ci_last_regenerate|i:1616641215;user_id|s:1:\"1\";'),('4b502cmru4c23jmr58ma8unq2g7d8948','103.119.63.167',1616641522,_binary '__ci_last_regenerate|i:1616641522;user_id|s:1:\"1\";'),('481jmhjku3aulak8torqpq7rhgu84ef4','103.119.63.167',1616641834,_binary '__ci_last_regenerate|i:1616641834;user_id|s:1:\"1\";'),('egkbufvta8qmgakk52uuipevvnm4shrl','103.119.63.167',1616642162,_binary '__ci_last_regenerate|i:1616642162;user_id|s:1:\"1\";'),('ljq14tu75lab55p44fd3ouj41p0klsso','103.119.63.167',1616642498,_binary '__ci_last_regenerate|i:1616642498;user_id|s:1:\"1\";'),('v81it6skpif84egrgcehlmcl6k0p4og0','209.17.96.10',1616642349,_binary '__ci_last_regenerate|i:1616642349;'),('gpioet7a93aqn5u8fh3melg2hf38qq12','103.119.63.167',1616642848,_binary '__ci_last_regenerate|i:1616642848;user_id|s:1:\"1\";'),('ie3cn50vmfhiia1m5haomg2r0n8vnv97','103.119.63.167',1616643190,_binary '__ci_last_regenerate|i:1616643190;user_id|s:1:\"1\";'),('ktve5lpcr2f5p7lbfmp1t6m0l0n9cu3v','103.119.63.167',1616643507,_binary '__ci_last_regenerate|i:1616643507;user_id|s:1:\"1\";'),('qept0mbs35e4495ed3h2ia9g060f6iog','103.119.63.167',1616644079,_binary '__ci_last_regenerate|i:1616644079;user_id|s:1:\"1\";'),('jhk9ns4fijlnfekfa10jas3t4art646j','103.119.63.167',1616644405,_binary '__ci_last_regenerate|i:1616644405;user_id|s:1:\"1\";'),('eq4jfj88i784ha9cbneru0mf8fqjqt92','103.119.63.167',1616645129,_binary '__ci_last_regenerate|i:1616645129;user_id|s:1:\"1\";'),('t49fbg3ocmfcivh62ek3as6035gqs4ar','103.119.63.167',1616645486,_binary '__ci_last_regenerate|i:1616645486;user_id|s:1:\"1\";'),('4c0hvo8ke2k8s7607vr99f2h7l625g1m','103.119.63.167',1616645819,_binary '__ci_last_regenerate|i:1616645819;user_id|s:1:\"1\";'),('lke5oec41harglglggmd7bvnrqfsrnb8','103.119.63.167',1616646173,_binary '__ci_last_regenerate|i:1616646173;user_id|s:1:\"1\";'),('e861u8dupqgqro182qcofi9qv78ke4jj','103.119.63.167',1616646493,_binary '__ci_last_regenerate|i:1616646493;user_id|s:1:\"1\";'),('c6js8jkremv59tgdoae7dj2vgl9upn66','103.119.63.167',1616646801,_binary '__ci_last_regenerate|i:1616646801;user_id|s:1:\"1\";'),('ofp8ckp3oghqhdhkhdp6tfl0iljc4k6n','85.29.130.210',1616646509,_binary '__ci_last_regenerate|i:1616646509;'),('m4gva9vq1h08tlspnjvan8u1u0poltla','103.119.63.167',1616647128,_binary '__ci_last_regenerate|i:1616647128;user_id|s:1:\"1\";'),('auch2fvc8q925eskg0t56sjku3qaara4','103.119.63.167',1616647443,_binary '__ci_last_regenerate|i:1616647443;user_id|s:1:\"1\";'),('n6lkfqpiknmghd6po4qvsvgo1p2q16ve','201.158.24.111',1616647786,_binary '__ci_last_regenerate|i:1616647786;'),('721r9p9ktcqnb7npbtkpt8aeu6kl89et','103.119.63.167',1616648510,_binary '__ci_last_regenerate|i:1616648510;user_id|s:2:\"10\";'),('nl13o3cmdbrm21ilvah7mikihtaveo74','103.119.63.167',1616648826,_binary '__ci_last_regenerate|i:1616648826;user_id|s:2:\"10\";'),('54u2c1tqkr5rk6e1bkvnci6l48t5h57h','103.119.63.167',1616649566,_binary '__ci_last_regenerate|i:1616649566;user_id|s:2:\"10\";'),('a37hpvmttm24p4e7iqe8prfomuh5j4v9','103.119.63.167',1616650413,_binary '__ci_last_regenerate|i:1616650413;user_id|s:2:\"10\";'),('9aopam320ub844ta30p1s23l6kskhp3i','103.119.63.167',1616651135,_binary '__ci_last_regenerate|i:1616651135;user_id|s:2:\"10\";'),('ishbhqinvnitcsfjgoeqhjmsh2ed4eqq','103.119.63.167',1616651480,_binary '__ci_last_regenerate|i:1616651480;user_id|s:1:\"1\";'),('2ksdi0a4du53g486h8jp5smu26g2dm8k','103.119.63.167',1616652885,_binary '__ci_last_regenerate|i:1616652885;user_id|s:1:\"1\";'),('32v6dsrjuu3h6c221m83s1on8tvmbh0j','110.138.167.134',1616651996,_binary '__ci_last_regenerate|i:1616651996;'),('6f64rpq2verr54254mthke5ssqg606ef','103.119.63.167',1616652415,_binary '__ci_last_regenerate|i:1616652295;user_id|s:1:\"1\";'),('iunc09392o35bc9g6iod64piukr1ceq1','103.119.63.167',1616654060,_binary '__ci_last_regenerate|i:1616654060;user_id|s:1:\"1\";'),('fr9nhs8clclcrq4fcnrnqu4i0qk3rl5k','103.119.63.167',1616653281,_binary '__ci_last_regenerate|i:1616653281;user_id|s:1:\"1\";'),('bgducofja58golmkmmj6cjt14n4l8msk','103.119.63.167',1616654739,_binary '__ci_last_regenerate|i:1616654739;user_id|s:1:\"1\";'),('mnigu8jtvn4akcgge6vh6p06ci7pb2nm','103.119.63.167',1616655056,_binary '__ci_last_regenerate|i:1616655056;user_id|s:1:\"1\";'),('81bl79r0sm2tgo5epi57vsqmicfl8gdo','103.119.63.167',1616655469,_binary '__ci_last_regenerate|i:1616655469;user_id|s:1:\"1\";'),('hqp36tep7da7o08irj415bdlu017ho7r','103.119.63.167',1616657512,_binary '__ci_last_regenerate|i:1616657512;user_id|s:1:\"1\";'),('2287fhgm9bbg5v4vcp7bhcvqfpsaa76a','103.119.63.167',1616658246,_binary '__ci_last_regenerate|i:1616658246;user_id|s:1:\"1\";'),('pa804c0lgkcv1688ev8gtpvn0fg34uh9','184.105.247.195',1616658222,_binary '__ci_last_regenerate|i:1616658222;'),('hph3k7u2huipktmk70t0jq06chamiutl','103.119.63.167',1616659668,_binary '__ci_last_regenerate|i:1616659668;user_id|s:1:\"1\";'),('6vhuhi461644eh6p8rtoshn97311cbin','103.119.63.167',1616658406,_binary '__ci_last_regenerate|i:1616658406;'),('it6i37312ejkn5sj5sntfi9ua7gvaubn','103.119.63.167',1616658409,_binary '__ci_last_regenerate|i:1616658409;'),('a5vqqhfrm0vqp4lf0e03e1bgk17f4h9l','103.119.63.167',1616658409,_binary '__ci_last_regenerate|i:1616658409;'),('tjudjb7k9a4f5ear0nrts8hbttv8i2bu','103.119.63.167',1616658415,_binary '__ci_last_regenerate|i:1616658415;'),('g1sg0oat1somq8po385rhmspej2ok5mv','103.119.63.167',1616658415,_binary '__ci_last_regenerate|i:1616658415;'),('nhtvtephm719c561lma0bv9un6vmjvop','103.119.63.167',1616658448,_binary '__ci_last_regenerate|i:1616658447;'),('ldi8u4s9kqvrj1edlf3lcl21bfedqor9','103.119.63.167',1616659218,_binary '__ci_last_regenerate|i:1616659218;user_id|s:2:\"10\";'),('4v98t7ijsul7mtseb8c38mbiopdcl2v1','103.119.63.167',1616659586,_binary '__ci_last_regenerate|i:1616659586;user_id|s:2:\"10\";'),('7kcpsfr29m16jitusosjmkb74783tsoj','103.119.63.167',1616666367,_binary '__ci_last_regenerate|i:1616666367;user_id|s:2:\"10\";'),('ld4ueuvonfmfat04vbmk8kqcp4a38u9c','103.119.63.167',1616660087,_binary '__ci_last_regenerate|i:1616660087;user_id|s:1:\"1\";'),('bu3gq6n281mab07a2asmm8l9mmiipnpl','109.194.20.187',1616660065,_binary '__ci_last_regenerate|i:1616660065;'),('cn8a6pma3ft2g03qmmdopuquhn7v4rf4','103.119.63.167',1616660430,_binary '__ci_last_regenerate|i:1616660430;user_id|s:1:\"1\";'),('jc2cg4f3d4q6qen6s4jh6il6t053i38g','103.119.63.167',1616660822,_binary '__ci_last_regenerate|i:1616660822;user_id|s:1:\"1\";'),('9jk1jjpnvb1p2a0st5n02i9t3hhticf8','103.119.63.167',1616661149,_binary '__ci_last_regenerate|i:1616661149;user_id|s:1:\"1\";'),('hr6nsb54kunbjj5vd7o4oea4gu320prn','111.92.162.133',1616660889,_binary '__ci_last_regenerate|i:1616660889;'),('dqjq6hbhrhb2nofe7asgd0dsfohd982i','103.119.63.167',1616662617,_binary '__ci_last_regenerate|i:1616662617;user_id|s:1:\"1\";'),('895f1ve4e0bg9b8vpc0cgdqam74a2uvf','103.119.63.167',1616662931,_binary '__ci_last_regenerate|i:1616662931;user_id|s:1:\"1\";'),('cn1hqrbobq69u9rhtqi9rq88jdqd4onb','103.119.63.167',1616663864,_binary '__ci_last_regenerate|i:1616663864;user_id|s:1:\"1\";'),('0e0f0tig1rhvtqkmudn15e1bsd3m3fl3','64.62.197.92',1616663076,_binary '__ci_last_regenerate|i:1616663076;'),('79mhvvq009g7utj19cdldta25ok1hbqq','103.119.63.167',1616664225,_binary '__ci_last_regenerate|i:1616664225;user_id|s:1:\"1\";'),('a98ibprv72mev2anqr8ho4c7oum6ol9o','103.119.63.167',1616664538,_binary '__ci_last_regenerate|i:1616664538;user_id|s:1:\"1\";'),('b9u1p3u6pdjhmg9nmt1rq83dknkhc5h1','103.119.63.167',1616664839,_binary '__ci_last_regenerate|i:1616664839;user_id|s:1:\"1\";'),('fp6uqg6r745ck3bskknrincbufm819q9','103.119.63.167',1616664840,_binary '__ci_last_regenerate|i:1616664839;user_id|s:1:\"1\";'),('qgsrg6e9ile0c81as6e0g34l2nir09mn','103.119.63.167',1616666367,_binary '__ci_last_regenerate|i:1616666367;'),('vsfm9t1qgqrb1c3afn9mu8qn9d9pkhdu','103.119.63.167',1616725545,_binary '__ci_last_regenerate|i:1616725545;user_id|s:1:\"1\";'),('c66g6s337vrfp0d75rb559tgptusc40m','162.142.125.55',1616725499,_binary '__ci_last_regenerate|i:1616725499;'),('kpnvvf1ja4l62mnesn1g1n7qbulo8dil','162.142.125.55',1616725500,_binary '__ci_last_regenerate|i:1616725500;'),('8kubmt6d7mdtruhtt70qjvqvkn99kc4v','162.142.125.55',1616725500,_binary '__ci_last_regenerate|i:1616725500;'),('dqqo46ja3fcs6d5b09cfgbqq9c43qn9i','103.119.63.167',1616725864,_binary '__ci_last_regenerate|i:1616725864;user_id|s:1:\"1\";'),('fjh3vq7ocvs02kb44pn7igm2g6kg0p6j','5.43.192.94',1616725750,_binary '__ci_last_regenerate|i:1616725750;'),('f1bjnjpde49bag18qvk48hm1to90vhef','103.119.63.167',1616726220,_binary '__ci_last_regenerate|i:1616726220;user_id|s:1:\"1\";'),('06qvn03s9g8egof1gp4u2u7cglnlrlvt','103.119.63.167',1616727206,_binary '__ci_last_regenerate|i:1616727206;user_id|s:1:\"1\";'),('be1k742bkfsm94jpotgn70eebebmh4d7','45.83.67.152',1616726230,_binary '__ci_last_regenerate|i:1616726230;'),('6mecocfbuf9j6eorjdc7pietkslpntv0','103.119.63.167',1616727542,_binary '__ci_last_regenerate|i:1616727542;user_id|s:1:\"1\";'),('2kfqkjog849adtdv14r551vkvg2mgd09','43.255.39.150',1616727484,_binary '__ci_last_regenerate|i:1616727484;'),('kjgv750udqrvn1q87d6ol193em6r0aul','103.119.63.167',1616727848,_binary '__ci_last_regenerate|i:1616727848;user_id|s:1:\"1\";'),('3mku0hl2er857t78os8mtqgoacmbpva7','103.119.63.167',1616728217,_binary '__ci_last_regenerate|i:1616728217;user_id|s:1:\"1\";'),('dngml6hgbbenorscmmd2glsk562mj9l3','194.165.16.82',1616727978,_binary '__ci_last_regenerate|i:1616727978;'),('vi2pilbtp6os2f08ssjrckmspapf62e8','194.165.16.82',1616727979,_binary '__ci_last_regenerate|i:1616727979;'),('92o8p2sb0rme8jmuile4oje2uc597aqm','103.119.63.167',1616728899,_binary '__ci_last_regenerate|i:1616728899;user_id|s:1:\"1\";'),('8otve3gkv90kpvfgq8i3gmnsl169lc8u','206.189.132.97',1616728268,_binary '__ci_last_regenerate|i:1616728268;'),('dv2af63539pc2v3mdm6qs4b7bc1m6385','103.119.63.167',1616729513,_binary '__ci_last_regenerate|i:1616729513;user_id|s:1:\"1\";'),('l61bgs4mgvafp1od9psrvjrou6paabm2','103.119.63.167',1616731305,_binary '__ci_last_regenerate|i:1616731305;user_id|s:1:\"1\";'),('snsh3iqj7otf01daq7pjpsgccc2gpu1u','139.162.119.197',1616729691,_binary '__ci_last_regenerate|i:1616729691;'),('qtd78k21rlaf5leolio7d0kun2phce17','103.119.63.167',1616731608,_binary '__ci_last_regenerate|i:1616731608;user_id|s:1:\"1\";'),('joq416pfac6vruj5v1vt74hupqvkopd9','103.119.63.167',1616732370,_binary '__ci_last_regenerate|i:1616732370;user_id|s:1:\"1\";'),('s3i53hg7djk7gsma6o7qh5ja11ch5tik','103.119.63.167',1616731911,_binary '__ci_last_regenerate|i:1616731911;user_id|s:1:\"1\";'),('3f7bfv4oakfrbfmq4ch8i8cnf4hcv1er','103.119.63.167',1616732674,_binary '__ci_last_regenerate|i:1616732674;user_id|s:1:\"1\";'),('qja339krvthjt3oqhls4b3fk3qkacr52','103.119.63.167',1616733107,_binary '__ci_last_regenerate|i:1616733107;user_id|s:1:\"1\";'),('ul4djbp9njnk9dqoikpuhe0g8f52k1u4','103.119.63.167',1616733484,_binary '__ci_last_regenerate|i:1616733484;user_id|s:1:\"1\";'),('36tsqc079u2slfas33ko2i696d1utlkl','103.119.63.167',1616733817,_binary '__ci_last_regenerate|i:1616733817;user_id|s:1:\"1\";'),('994hadereism1fhdctme7oakck29ifhu','103.119.63.167',1616734411,_binary '__ci_last_regenerate|i:1616733817;user_id|s:1:\"1\";');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_groups`
--

DROP TABLE IF EXISTS `client_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_groups`
--

LOCK TABLES `client_groups` WRITE;
/*!40000 ALTER TABLE `client_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` date NOT NULL,
  `website` text COLLATE utf8_unicode_ci,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starred_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `group_ids` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_lead` tinyint(1) NOT NULL DEFAULT '0',
  `lead_status_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `lead_source_id` int(11) NOT NULL,
  `last_lead_status` text COLLATE utf8_unicode_ci NOT NULL,
  `client_migration_date` date NOT NULL,
  `vat_number` text COLLATE utf8_unicode_ci,
  `currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disable_online_payment` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'PHE','','','','','','2021-02-25','','','','','',0,0,0,0,1,0,0,'','0000-00-00','','',0),(2,'Audemars Indonesia',NULL,NULL,NULL,NULL,NULL,'0000-00-00',NULL,NULL,NULL,'','',1,0,0,0,0,0,0,'','0000-00-00',NULL,NULL,0);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_values`
--

DROP TABLE IF EXISTS `custom_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `related_to_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `related_to_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_values`
--

LOCK TABLES `custom_field_values` WRITE;
/*!40000 ALTER TABLE `custom_field_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `placeholder` text COLLATE utf8_unicode_ci NOT NULL,
  `example_variable_name` text COLLATE utf8_unicode_ci,
  `options` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `field_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `related_to` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_table` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_invoice` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_estimate` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_order` tinyint(1) NOT NULL DEFAULT '0',
  `visible_to_admins_only` tinyint(1) NOT NULL DEFAULT '0',
  `hide_from_clients` tinyint(1) NOT NULL DEFAULT '0',
  `disable_editing_by_clients` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_kanban_card` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_widgets`
--

DROP TABLE IF EXISTS `custom_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `show_title` tinyint(1) NOT NULL DEFAULT '0',
  `show_border` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_widgets`
--

LOCK TABLES `custom_widgets` WRITE;
/*!40000 ALTER TABLE `custom_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboards`
--

DROP TABLE IF EXISTS `dashboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `data` text COLLATE utf8_unicode_ci,
  `color` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboards`
--

LOCK TABLES `dashboards` WRITE;
/*!40000 ALTER TABLE `dashboards` DISABLE KEYS */;
INSERT INTO `dashboards` VALUES (1,1,'AI-SPR','a:1:{i:0;O:8:\"stdClass\":2:{s:7:\"columns\";a:3:{i:0;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:14:\"total_payments\";s:5:\"title\";s:14:\"Total payments\";}}i:1;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:14:\"total_invoices\";s:5:\"title\";s:14:\"Total invoices\";}}i:2;a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"widget\";s:13:\"open_projects\";s:5:\"title\";s:13:\"Open Projects\";}}}s:5:\"ratio\";s:5:\"4-4-4\";}}','#aab7b7',0,1);
/*!40000 ALTER TABLE `dashboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email_subject` text COLLATE utf8_unicode_ci NOT NULL,
  `default_message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom_message` mediumtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES (1,'login_info','Login details','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\">  <h1>Login Details</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Hello {USER_FIRST_NAME}, &nbsp;{USER_LAST_NAME},<br><br>An account has been created for you.</p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Please use the following info to login your dashboard:</p>            <hr>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">Dashboard URL:&nbsp;<a href=\"{DASHBOARD_URL}\" target=\"_blank\">{DASHBOARD_URL}</a></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Email: {USER_LOGIN_EMAIL}</span><br></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Password:&nbsp;{USER_LOGIN_PASSWORD}</span></p>            <p style=\"color: rgb(85, 85, 85);\"><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>','',0),(2,'reset_password','Reset password','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"><div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Reset Password</h1>\n </div>\n <div style=\"padding: 20px; background-color: rgb(255, 255, 255); color:#555;\">                    <p style=\"font-size: 14px;\"> Hello {ACCOUNT_HOLDER_NAME},<br><br>A password reset request has been created for your account.&nbsp;</p>\n                    <p style=\"font-size: 14px;\"> To initiate the password reset process, please click on the following link:</p>\n                    <p style=\"font-size: 14px;\"><a href=\"{RESET_PASSWORD_URL}\" target=\"_blank\">Reset Password</a></p>\n                    <p style=\"font-size: 14px;\"></p>\n                    <p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you\'ve received this mail in error, it\'s likely that another user entered your email address by mistake while trying to reset a password.</span><br></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you didn\'t initiate the request, you don\'t need to take any further action and can safely disregard this email.</span><br></p>\n<p style=\"font-size: 14px;\"><br></p>\n<p style=\"font-size: 14px;\">{SIGNATURE}</p>\n                </div>\n            </div>\n        </div>','',0),(3,'team_member_invitation','You are invited','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Account Invitation</h1>   </div>  <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to join with a team.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>','',0),(4,'send_invoice','New invoice','<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>INVOICE #{INVOICE_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span><br></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Thank you for your business cooperation.</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Your invoice for the project {PROJECT_TITLE} has been generated and is attached here.</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVOICE_URL}\" target=\"_blank\">Show Invoice</a></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Invoice balance due is {BALANCE_DUE}</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Please pay this invoice within {DUE_DATE}.&nbsp;</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>  </div> </div></div>','',0),(5,'signature','Signature','Powered By: <a href=\"http://fairsketch.com/\" target=\"_blank\">fairsketch </a>','',0),(6,'client_contact_invitation','You are invited','<div style=\"background-color: #eeeeef; padding: 50px 0; \">    <div style=\"max-width:640px; margin:0 auto; \">  <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Account Invitation</h1> </div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to a client portal.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>','',0),(7,'ticket_created','Ticket  #{TICKET_ID} - {TICKET_TITLE}','<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID} Opened</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span><br></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p> <p style=\"\"><br></p><p style=\"\">Regards,</p><p style=\"\"><span style=\"line-height: 18.5714px;\">{USER_NAME}</span><br></p>   </div>  </div> </div>','',0),(8,'ticket_commented','Ticket  #{TICKET_ID} - {TICKET_TITLE}','<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID} Replies</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p></div></div></div>','',0),(9,'ticket_closed','Ticket  #{TICKET_ID} - {TICKET_TITLE}','<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been closed by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>   </div>  </div> </div>','',0),(10,'ticket_reopened','Ticket  #{TICKET_ID} - {TICKET_TITLE}','<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been reopened by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>  </div> </div></div>','',0),(11,'general_notification','{EVENT_TITLE}','<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>{APP_TITLE}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_TITLE}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_DETAILS}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{NOTIFICATION_URL}\" target=\"_blank\">View Details</a></span></p>  </div> </div></div>','',0),(12,'invoice_payment_confirmation','Payment received','<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\">\r\n <tbody><tr>\r\n <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n <tbody><tr>\r\n <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\">\r\n                                        <tbody><tr>\r\n                                                <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                        <tbody>\r\n                                                            <tr>\r\n                                                                <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                    <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\">\r\n                                                                        <tbody><tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\">\r\n                                                                                    <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Payment Confirmation</h2>\r\n                                                                                </td>\r\n                                                                            </tr>\r\n                                                                        </tbody>\r\n                                                                    </table>\r\n                                                                </td>\r\n                                                            </tr>\r\n                                                        </tbody>\r\n                                                    </table>\r\n                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                        <tbody>\r\n                                                            <tr>\r\n                                                                <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n\r\n                                                                    <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\">\r\n                                                                        <tbody><tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\">\r\n                                                                                    Hello,<br>\r\n                                                                                    We have received your payment of {PAYMENT_AMOUNT} for {INVOICE_ID} <br>\r\n                                                                                    Thank you for your business cooperation.\r\n                                                                                </td>\r\n                                                                            </tr>\r\n                                                                            <tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\">\r\n                                                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                                        <tbody>\r\n                                                                                            <tr>\r\n                                                                                                <td style=\"padding-top: 15px;padding-right: 0x;padding-bottom: 15px;padding-left: 0px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                                                        <tbody>\r\n                                                                                                            <tr>\r\n                                                                                                                <td align=\"center\" valign=\"middle\" style=\"font-family: Arial;font-size: 16px;padding: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\r\n                                                                                                                    <a href=\"{INVOICE_URL}\" target=\"_blank\" style=\"font-weight: bold;letter-spacing: normal;line-height: 100%;text-align: center;text-decoration: none;color: #FFFFFF;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;display: block;\">View Invoice</a>\r\n                                                                                                                </td>\r\n                                                                                                            </tr>\r\n                                                                                                        </tbody>\r\n                                                                                                    </table>\r\n                                                                                                </td>\r\n                                                                                            </tr>\r\n                                                                                        </tbody>\r\n                                                                                    </table>\r\n                                                                                </td>\r\n                                                                            </tr>\r\n                                                                            <tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> \r\n                                                                                    \r\n                                                                                </td>\r\n                                                                            </tr>\r\n                                                                            <tr>\r\n                                                                                <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> \r\n  {SIGNATURE}\r\n  </td>\r\n </tr>\r\n </tbody>\r\n  </table>\r\n  </td>\r\n  </tr>\r\n  </tbody>\r\n </table>\r\n  </td>\r\n </tr>\r\n  </tbody>\r\n  </table>\r\n  </td>\r\n </tr>\r\n </tbody>\r\n </table>\r\n </td>\r\n </tr>\r\n </tbody>\r\n  </table>',NULL,0),(13,'message_received','{SUBJECT}','<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\"> <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\"> <style type=\"text/css\"> #message-container p {margin: 10px 0;} #message-container h1, #message-container h2, #message-container h3, #message-container h4, #message-container h5, #message-container h6 { padding:10px; margin:0; } #message-container table td {border-collapse: collapse;} #message-container table { border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; } #message-container a span{padding:10px 15px !important;} </style> <table id=\"message-container\" align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background:#eee; margin:0; padding:0; width:100% !important; line-height: 100% !important; -webkit-text-size-adjust:100%; -ms-text-size-adjust:100%; margin:0; padding:0; font-family:Helvetica,Arial,sans-serif; color: #555;\"> <tbody> <tr> <td valign=\"top\"> <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"> <tbody> <tr> <td height=\"50\" width=\"600\">&nbsp;</td> </tr> <tr> <td style=\"background-color:#33333e; padding:25px 15px 30px 15px; font-weight:bold; \" width=\"600\"><h2 style=\"color:#fff; text-align:center;\">{USER_NAME} sent you a message</h2></td> </tr> <tr> <td bgcolor=\"whitesmoke\" style=\"background:#fff; font-family:Helvetica,Arial,sans-serif\" valign=\"top\" width=\"600\"> <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"> <tbody> <tr> <td height=\"10\" width=\"560\">&nbsp;</td> </tr> <tr> <td width=\"560\"><p><span style=\"background-color: transparent;\">{MESSAGE_CONTENT}</span></p> <p style=\"display:inline-block; padding: 10px 15px; background-color: #00b393;\"><a href=\"{MESSAGE_URL}\" style=\"text-decoration: none; color:#fff;\" target=\"_blank\">Reply Message</a></p> </td> </tr> <tr> <td height=\"10\" width=\"560\">&nbsp;</td> </tr> </tbody> </table> </td> </tr> <tr> <td height=\"60\" width=\"600\">&nbsp;</td> </tr> </tbody> </table> </td> </tr> </tbody> </table>','',0),(14,'invoice_due_reminder_before_due_date','Invoice due reminder','<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Invoice Due Reminder</h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello,<br>We would like to remind you that invoice {INVOICE_ID} is due on {DUE_DATE}. Please pay the invoice within due date.&nbsp;</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p>If you have already submitted the payment, please ignore this email.</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px;padding-right: 0x;padding-bottom: 15px;padding-left: 0px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-family: Arial;font-size: 16px;padding: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><a href=\"{INVOICE_URL}\" target=\"_blank\" style=\"font-weight: bold;letter-spacing: normal;line-height: 100%;text-align: center;text-decoration: none;color: #FFFFFF;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;display: block;\">View Invoice</a> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>','',0),(15,'invoice_overdue_reminder','Invoice overdue reminder','<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Invoice Overdue Reminder</h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello,<br>We would like to remind you that you have an unpaid invoice {INVOICE_ID}. We kindly request you to pay the invoice as soon as possible.&nbsp;</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p>If you have already submitted the payment, please ignore this email.</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px;padding-right: 0x;padding-bottom: 15px;padding-left: 0px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-family: Arial;font-size: 16px;padding: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><a href=\"{INVOICE_URL}\" target=\"_blank\" style=\"font-weight: bold;letter-spacing: normal;line-height: 100%;text-align: center;text-decoration: none;color: #FFFFFF;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;display: block;\">View Invoice</a> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>','',0),(16,'recurring_invoice_creation_reminder','Recurring invoice creation reminder','<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 40px;padding-right: 18px;padding-bottom: 40px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> <h2 style=\"display: block;margin: 0;padding: 0;font-family: Arial;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: -1px;text-align: center;color: #ffffff !important;\">Invoice Cration Reminder</h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello,<br>We would like to remind you that a recurring invoice will be created on {NEXT_RECURRING_DATE}.</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{INVOICE_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">View Invoice</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>','',0),(17,'project_task_deadline_reminder','Project task deadline reminder','<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>{APP_TITLE}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">This is to remind you that there are some tasks which deadline is {DEADLINE}.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">{TASKS_LIST}</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>  </div> </div></div>','',0),(18,'estimate_sent','New estimate','<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>ESTIMATE #{ESTIMATE_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding-top: 20px;padding-right: 18px;padding-bottom: 0;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><p> Hello {CONTACT_FIRST_NAME},<br></p><p>Here is the estimate. Please check the attachment.</p><p></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{ESTIMATE_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Estimate</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>','',0),(19,'estimate_request_received','Estimate request received','<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>ESTIMATE REQUEST #{ESTIMATE_REQUEST_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 20px 18px 0px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"><p style=\"color: rgb(96, 96, 96); font-family: Arial; font-size: 15px;\"><span style=\"background-color: transparent;\">A new estimate request has been received from {CONTACT_FIRST_NAME}.</span><br></p><p style=\"color: rgb(96, 96, 96); font-family: Arial; font-size: 15px;\"></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{ESTIMATE_REQUEST_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Estimate Request</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>','',0),(20,'estimate_rejected','Estimate rejected','<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>ESTIMATE #{ESTIMATE_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 20px 18px 0px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"><p style=\"\"><font color=\"#606060\" face=\"Arial\"><span style=\"font-size: 15px;\">The estimate #{ESTIMATE_ID} has been rejected.</span></font><br></p><p style=\"color: rgb(96, 96, 96); font-family: Arial; font-size: 15px;\"></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{ESTIMATE_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Estimate</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>','',0),(21,'estimate_accepted','Estimate accepted','<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EEEEEE;border-top: 0;border-bottom: 0;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"padding-top: 30px;padding-right: 10px;padding-bottom: 30px;padding-left: 10px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody><tr> <td align=\"center\" valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;\"> <tbody><tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color: #33333e; max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 40px 18px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"> <h2 style=\"display: block; margin: 0px; padding: 0px; line-height: 100%; text-align: center;\"><font color=\"#ffffff\" face=\"Arial\"><span style=\"letter-spacing: -1px;\"><b>ESTIMATE #{ESTIMATE_ID}</b></span></font><br></h2></td></tr></tbody></table></td></tr></tbody></table> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <tbody> <tr> <td valign=\"top\" style=\"mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"> <table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\" width=\"100%\"> <tbody><tr> <td valign=\"top\" style=\"padding: 20px 18px 0px; text-size-adjust: 100%; word-break: break-word; line-height: 150%; text-align: left;\"><p style=\"\"><font color=\"#606060\" face=\"Arial\"><span style=\"font-size: 15px;\">The estimate #{ESTIMATE_ID} has been accepted.</span></font><br></p><p style=\"color: rgb(96, 96, 96); font-family: Arial; font-size: 15px;\"></p></td></tr><tr><td valign=\"top\" style=\"padding-top: 10px;padding-right: 18px;padding-bottom: 10px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"min-width: 100%; text-size-adjust: 100%;\"><tbody><tr><td style=\"padding-top: 15px; padding-bottom: 15px; text-size-adjust: 100%;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: separate !important;border-radius: 2px;background-color: #00b393;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\"><tbody><tr><td align=\"center\" valign=\"middle\" style=\"font-size: 16px; padding: 10px; text-size-adjust: 100%;\"><a href=\"{ESTIMATE_URL}\" target=\"_blank\" style=\"font-weight: bold; line-height: 100%; color: rgb(255, 255, 255); text-size-adjust: 100%; display: block;\">Show Estimate</a></td></tr></tbody></table></td></tr></tbody></table> <p></p></td> </tr> <tr> <td valign=\"top\" style=\"padding-top: 0px;padding-right: 18px;padding-bottom: 20px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #606060;font-family: Arial;font-size: 15px;line-height: 150%;text-align: left;\"> {SIGNATURE} </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table>','',0),(22,'new_client_greetings','Welcome!','<div style=\"background-color: #eeeeef; padding: 50px 0; \">    <div style=\"max-width:640px; margin:0 auto; \">  <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Welcome to {COMPANY_NAME}</h1> </div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span></p><p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Thank you for creating your account. </span></p><p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">We are happy to see you here.<br></span></p><hr><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">Dashboard URL:&nbsp;<a href=\"{DASHBOARD_URL}\" target=\"_blank\">{DASHBOARD_URL}</a></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\"></p><p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Email: {CONTACT_LOGIN_EMAIL}</span><br></p><p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Password:&nbsp;{CONTACT_LOGIN_PASSWORD}</span></p><p style=\"color: rgb(85, 85, 85);\"><br></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>','',0),(23,'verify_email','Verify your email','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"><div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>Account verification</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255); color:#555;\"><p style=\"font-size: 14px;\">To initiate the signup process, please click on the following link:<br></p><p style=\"font-size: 14px;\"><br></p>','',0),(24,'new_order_received','New order received','<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>ORDER #{ORDER_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px;\">A new order has been received from&nbsp;</span><span style=\"color: rgb(85, 85, 85); font-size: 14px;\">{CONTACT_FIRST_NAME} and is attached here.</span><br></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{ORDER_URL}\" target=\"_blank\">Show Order</a></span></p><p style=\"\"><br></p>  </div> </div></div>','',0),(25,'order_status_updated','Order status updated','<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff; text-align: center; background-color:#33333e; padding: 30px; border-top-left-radius: 3px; border-top-right-radius: 3px; margin: 0;\"><h1>ORDER #{ORDER_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span><br></p><p><span style=\"font-size: 14px; line-height: 20px;\">Thank you for your business cooperation.</span><br></p><p><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Your order&nbsp;</span><font color=\"#555555\"><span style=\"font-size: 14px;\">has been updated&nbsp;</span></font><span style=\"color: rgb(85, 85, 85); font-size: 14px;\">and is attached here.</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{ORDER_URL}\" target=\"_blank\">Show Order</a></span></p><p style=\"\"><br></p>  </div> </div></div>','',0);
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estimate_forms`
--

DROP TABLE IF EXISTS `estimate_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estimate_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL,
  `assigned_to` int(11) NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `enable_attachment` tinyint(4) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estimate_forms`
--

LOCK TABLES `estimate_forms` WRITE;
/*!40000 ALTER TABLE `estimate_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `estimate_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estimate_items`
--

DROP TABLE IF EXISTS `estimate_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estimate_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `estimate_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estimate_items`
--

LOCK TABLES `estimate_items` WRITE;
/*!40000 ALTER TABLE `estimate_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `estimate_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estimate_requests`
--

DROP TABLE IF EXISTS `estimate_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estimate_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estimate_form_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `client_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `assigned_to` int(11) NOT NULL,
  `status` enum('new','processing','hold','canceled','estimated') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estimate_requests`
--

LOCK TABLES `estimate_requests` WRITE;
/*!40000 ALTER TABLE `estimate_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `estimate_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estimates`
--

DROP TABLE IF EXISTS `estimates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estimates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `estimate_request_id` int(11) NOT NULL DEFAULT '0',
  `estimate_date` date NOT NULL,
  `valid_until` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','sent','accepted','declined') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `tax_id2` int(11) NOT NULL DEFAULT '0',
  `discount_type` enum('before_tax','after_tax') COLLATE utf8_unicode_ci NOT NULL,
  `discount_amount` double NOT NULL,
  `discount_amount_type` enum('percentage','fixed_amount') COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estimates`
--

LOCK TABLES `estimates` WRITE;
/*!40000 ALTER TABLE `estimates` DISABLE KEYS */;
/*!40000 ALTER TABLE `estimates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `location` mediumtext COLLATE utf8_unicode_ci,
  `client_id` int(11) NOT NULL DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci NOT NULL,
  `share_with` mediumtext COLLATE utf8_unicode_ci,
  `editable_google_event` tinyint(1) NOT NULL DEFAULT '0',
  `google_event_id` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `color` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `recurring` int(1) NOT NULL DEFAULT '0',
  `repeat_every` int(11) NOT NULL DEFAULT '0',
  `repeat_type` enum('days','weeks','months','years') COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT '0',
  `last_start_date` date DEFAULT NULL,
  `recurring_dates` longtext COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_by` text COLLATE utf8_unicode_ci NOT NULL,
  `rejected_by` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_categories`
--

DROP TABLE IF EXISTS `expense_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_categories`
--

LOCK TABLES `expense_categories` WRITE;
/*!40000 ALTER TABLE `expense_categories` DISABLE KEYS */;
INSERT INTO `expense_categories` VALUES (1,'Asset',0),(2,'Consumable',0);
/*!40000 ALTER TABLE `expense_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_date` date DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `amount` double DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `measurement_id` int(11) DEFAULT NULL,
  `total` int(255) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `files` mediumtext COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `tax_id2` int(11) NOT NULL DEFAULT '0',
  `client_id` int(11) NOT NULL DEFAULT '0',
  `recurring` tinyint(4) NOT NULL DEFAULT '0',
  `recurring_expense_id` tinyint(4) NOT NULL DEFAULT '0',
  `repeat_every` int(11) NOT NULL DEFAULT '0',
  `repeat_type` enum('days','weeks','months','years') COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT '0',
  `next_recurring_date` date DEFAULT NULL,
  `no_of_cycles_completed` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (1,'2021-03-05',2,'Alat FAST dan Monitoring',5000000,2,1,10000000,2,'a:1:{i:0;a:4:{s:9:\"file_name\";s:50:\"expense_file6041fe9cd2a28-Switch-HUB-TOKOPEDIA.pdf\";s:9:\"file_size\";s:6:\"422131\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}','Mobilisasi',1,3,0,0,0,0,0,1,'months',0,NULL,0,1),(2,'2021-03-24',1,'Pertalite',1168700,0,1,0,2,'a:0:{}','Bensin',1,4,0,0,0,0,0,1,'months',0,NULL,0,1),(3,'2021-03-24',1,'Sampoerna Mild',3000000,0,1,0,1,'a:0:{}','Rokok',1,8,0,0,0,0,0,1,'months',0,NULL,0,1),(4,'2021-03-24',1,'Marlboro',1000000,0,1,0,1,'a:0:{}','Udu',1,4,0,0,0,0,0,1,'months',0,NULL,0,1),(5,'2021-03-24',1,'Pertamax',105000,1,1,0,1,'a:0:{}','Bensin',1,4,0,0,0,0,0,1,'months',0,NULL,0,1),(6,'2021-03-24',1,'',105000,5,1,0,2,'a:1:{i:0;a:4:{s:9:\"file_name\";s:52:\"expense_file605d64a4b0f1d-Surat-Pembukaan-Blokir.pdf\";s:9:\"file_size\";s:5:\"27386\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}','Bensin',1,3,0,0,0,0,0,1,'months',0,NULL,0,0),(7,'2021-03-25',1,'Permaxy',50000,8,1,0,3,'a:0:{}','Bensin',1,3,0,0,0,0,0,1,'months',0,NULL,0,0),(8,'2021-03-25',1,'',5000000,5,1,0,4,'a:0:{}','Bensin',1,4,0,0,0,0,0,1,'months',0,NULL,0,0),(9,'2021-03-26',1,'Pertamax',50000,10,3,0,1,'a:0:{}','Bensin',1,3,0,0,0,0,0,1,'months',0,NULL,0,0),(25,'2021-03-26',1,'Mobil',1000000,5,4,NULL,4,'a:0:{}','Bensin',1,4,0,0,0,0,0,1,'months',0,NULL,0,0);
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_files`
--

DROP TABLE IF EXISTS `general_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `file_id` text COLLATE utf8_unicode_ci,
  `service_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `file_size` double NOT NULL,
  `created_at` datetime NOT NULL,
  `client_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `uploaded_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_files`
--

LOCK TABLES `general_files` WRITE;
/*!40000 ALTER TABLE `general_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `general_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_articles`
--

DROP TABLE IF EXISTS `help_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `files` text COLLATE utf8_unicode_ci NOT NULL,
  `total_views` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_articles`
--

LOCK TABLES `help_articles` WRITE;
/*!40000 ALTER TABLE `help_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `help_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_categories`
--

DROP TABLE IF EXISTS `help_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('help','knowledge_base') COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_categories`
--

LOCK TABLES `help_categories` WRITE;
/*!40000 ALTER TABLE `help_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `help_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_items`
--

DROP TABLE IF EXISTS `invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `invoice_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_items`
--

LOCK TABLES `invoice_items` WRITE;
/*!40000 ALTER TABLE `invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_payments`
--

DROP TABLE IF EXISTS `invoice_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `payment_date` date NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `invoice_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `transaction_id` tinytext COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_payments`
--

LOCK TABLES `invoice_payments` WRITE;
/*!40000 ALTER TABLE `invoice_payments` DISABLE KEYS */;
INSERT INTO `invoice_payments` VALUES (1,4000000,'2021-03-05',1,'',1,0,NULL,1,'2021-03-05 09:44:42'),(2,50000,'2021-03-05',1,'',1,0,NULL,1,'2021-03-05 09:52:51');
/*!40000 ALTER TABLE `invoice_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `bill_date` date NOT NULL,
  `due_date` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci,
  `labels` text COLLATE utf8_unicode_ci,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','not_paid','cancelled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `tax_id2` int(11) NOT NULL DEFAULT '0',
  `tax_id3` int(11) NOT NULL DEFAULT '0',
  `recurring` tinyint(4) NOT NULL DEFAULT '0',
  `recurring_invoice_id` int(11) NOT NULL DEFAULT '0',
  `repeat_every` int(11) NOT NULL DEFAULT '0',
  `repeat_type` enum('days','weeks','months','years') COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT '0',
  `next_recurring_date` date DEFAULT NULL,
  `no_of_cycles_completed` int(11) NOT NULL DEFAULT '0',
  `due_reminder_date` date DEFAULT NULL,
  `recurring_reminder_date` date DEFAULT NULL,
  `discount_amount` double NOT NULL,
  `discount_amount_type` enum('percentage','fixed_amount') COLLATE utf8_unicode_ci NOT NULL,
  `discount_type` enum('before_tax','after_tax') COLLATE utf8_unicode_ci NOT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `cancelled_by` int(11) NOT NULL,
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,1,1,'2021-03-05','2021-03-05','','',NULL,'not_paid',0,0,0,0,0,1,'months',0,NULL,0,NULL,NULL,0,'percentage','before_tax',NULL,0,'a:0:{}',0);
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `show_in_client_portal` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labels`
--

DROP TABLE IF EXISTS `labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `context` enum('event','invoice','note','project','task','ticket','to_do') COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labels`
--

LOCK TABLES `labels` WRITE;
/*!40000 ALTER TABLE `labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_source`
--

DROP TABLE IF EXISTS `lead_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_source`
--

LOCK TABLES `lead_source` WRITE;
/*!40000 ALTER TABLE `lead_source` DISABLE KEYS */;
INSERT INTO `lead_source` VALUES (1,'Google',1,0),(2,'Facebook',2,0),(3,'Twitter',3,0),(4,'Youtube',4,0),(5,'Elsewhere',5,0);
/*!40000 ALTER TABLE `lead_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_status`
--

DROP TABLE IF EXISTS `lead_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_status`
--

LOCK TABLES `lead_status` WRITE;
/*!40000 ALTER TABLE `lead_status` DISABLE KEYS */;
INSERT INTO `lead_status` VALUES (1,'New','#f1c40f',0,0),(2,'Qualified','#2d9cdb',1,0),(3,'Discussion','#29c2c2',2,0),(4,'Negotiation','#2d9cdb',3,0),(5,'Won','#83c340',4,0),(6,'Lost','#e74c3c',5,0);
/*!40000 ALTER TABLE `lead_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` date NOT NULL,
  `website` text COLLATE utf8_unicode_ci,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_applications`
--

DROP TABLE IF EXISTS `leave_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leave_applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_type_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_hours` decimal(7,2) NOT NULL,
  `total_days` decimal(5,2) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `reason` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('pending','approved','rejected','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `checked_at` datetime DEFAULT NULL,
  `checked_by` int(11) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `leave_type_id` (`leave_type_id`),
  KEY `user_id` (`applicant_id`),
  KEY `checked_by` (`checked_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_applications`
--

LOCK TABLES `leave_applications` WRITE;
/*!40000 ALTER TABLE `leave_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `leave_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_types`
--

DROP TABLE IF EXISTS `leave_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leave_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_types`
--

LOCK TABLES `leave_types` WRITE;
/*!40000 ALTER TABLE `leave_types` DISABLE KEYS */;
INSERT INTO `leave_types` VALUES (1,'Casual Leave','active','#83c340','',0);
/*!40000 ALTER TABLE `leave_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_comment_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_categories`
--

DROP TABLE IF EXISTS `location_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_categories`
--

LOCK TABLES `location_categories` WRITE;
/*!40000 ALTER TABLE `location_categories` DISABLE KEYS */;
INSERT INTO `location_categories` VALUES (1,'Audemars Building',0),(2,'Cibitung Workshop',0),(3,'Field - Langgak',0),(4,'Field - PHE Siak',0);
/*!40000 ALTER TABLE `location_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_request`
--

DROP TABLE IF EXISTS `material_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material_request` (
  `id_asset_req` int(15) NOT NULL AUTO_INCREMENT,
  `mr_date_register` datetime DEFAULT NULL,
  `no_mr_asset` varchar(50) NOT NULL,
  `item_description` varchar(150) NOT NULL,
  `specification` varchar(150) NOT NULL,
  `qty` int(10) NOT NULL,
  `measurement` varchar(5) NOT NULL,
  `notes` text NOT NULL,
  `status` enum('Created','Pending','MR Void','PO Created','PO Approved','Paid','Delivered','Completed','Approved') NOT NULL,
  `po_no` varchar(255) NOT NULL,
  `do` varchar(255) NOT NULL,
  `po` varchar(255) NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `sp3` varchar(255) NOT NULL,
  `unit_price` float NOT NULL,
  `priority` enum('High','Medium','Low','') NOT NULL,
  PRIMARY KEY (`id_asset_req`)
) ENGINE=MyISAM AUTO_INCREMENT=865 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_request`
--

LOCK TABLES `material_request` WRITE;
/*!40000 ALTER TABLE `material_request` DISABLE KEYS */;
INSERT INTO `material_request` VALUES (2,NULL,'MR1708020000007','Mesin Absensi Sidik Jari Securax FP 100','Standalone/Network Fingerprint Time Attendance, 3.000 FPS (Finger Print Signature), 100.000 Logs, 3\" Color TFT Display, TCP/IP RS232/485 USB Host/Clie',1,'14','','','','','','','',0,''),(3,NULL,'MR1708020000007','AC LG ','Dual Cool Eco Inverter 1/2 PK - T13EMV (Indor + Outdoor)',1,'14','','','','','','','',0,''),(4,NULL,'MR1708020000007','AC LG ','Dual Cool Eco Inverter 1.5 PK - T06EMV (Indor + Outdoor)',1,'14','','','','','','','',0,''),(5,NULL,'MR1708020000007','CCTV','Hikvision 4 Channel Performance IP, paket terdiri: 1 Unit NVR Hikvision DS-7604NI-E1, 4 Unit CCTV Hikvision DS-2CD1101, 1 Paket Jack DC, 1 Paket Konek',1,'13','','','','','','','',0,''),(6,NULL,'MR1708020000007','Laptop Asus A456UQ ','Prosesor Intel CoreÂ i5-7200U@2,5GHz TurboBoost 3,1GHz',1,'14','','','','','','','',0,''),(7,NULL,'MR1708020000009','Helm MSA ','Full brim (Red) ',2,'11','','','','','','','',0,''),(8,NULL,'MR1708020000009','Helm MSA ','Full brim (Blue)',4,'11','','','','','','','',0,''),(9,NULL,'MR1708020000009','Helm MSA ','Full brim (White)',26,'11','','','','','','','',0,''),(10,NULL,'MR1708020000009','sepatu safety ','Krusher texas Size : 6 ',2,'15','','','','','','','',0,''),(11,NULL,'MR1708020000009','Sepatu safety ','krusher texas Size : 7',25,'15','','','','','','','',0,''),(12,NULL,'MR1708020000009','Sepatu safety  ','Krusher texas Size : 8',13,'15','','','','','','','',0,''),(13,NULL,'MR1708020000009','Kaca Mata Safety','Kings ky 2221/ky 2222 ',50,'11','','','','','','','',0,''),(14,NULL,'MR1708020000009','Sarung Tangan Safety ','Doting',15,'16','','','','','','','',0,''),(15,NULL,'MR1708020000009','Sarung Tangan Safety ','Karet 14\"',50,'15','','','','','','','',0,''),(16,NULL,'MR1708020000009','Head Lamp ','TICA Lumens 6 Lights',10,'11','','','','','','','',0,''),(17,NULL,'MR1708020000009','Lampu Senter','Merk : Cree XQ-99',2,'11','','','','','','','',0,''),(18,NULL,'MR1708020000009','Jas Hujan Proyek','',15,'11','','','','','','','',0,''),(19,NULL,'MR1708020000009',' Wearpack / Coverall  ','Nomex Merah  ukuran M',4,'11','','','','','','','',0,'High'),(20,NULL,'MR1708020000009',' Wearpack / Coverall  ','Nomex Biru Dongker Ukuran S',5,'11','','Completed','','','','','',0,''),(21,NULL,'MR1708020000009','Wearpack / Coverall ','Nomex Biru Dongker Ukuran M',20,'11','','','','','','','',0,''),(22,NULL,'MR1708020000009','Wearpack / Coverall ','Nomex Biru Dongker Ukuran L',22,'11','','','','','','','',0,''),(23,NULL,'MR1708020000010','InFocus IN226 Projector','Resolution â€” Native	XGA (1024 x 768)',1,'14','','','','','','','',0,''),(24,NULL,'MR1708210000014','Laptop Asus A456UR ','Prosesor Intel CoreÂ i5-7200U@2,5GHz TurboBoost 3,1GHz',1,'11','','','','','','','',0,''),(25,NULL,'MR1708210000014','Personal Computer','Custom, Prosesor core i-57400 3.0Ghz - Cache 6MB Socket LGA 1151, ASRock B250M Pro4Galax SSD Gamer L series 120 GB, WDC 1 TB SATA3 64MB, Avexir DDR4 C',1,'14','','','','','','','',0,''),(26,NULL,'MR1708210000014','Printer & Scanner','Epson L565',1,'14','','','','','','','',0,''),(27,NULL,'MR1708230000016','Mesin Absensi Sidik Jari Solution Type X302-S','Keterangan : Access Control (AC) : 1 Relay Output 2A 12V Fasilitas AC : 50 Time Zones, 5 Grouping, 10 Combination. Sensor sidik ',1,'0','','','','','','','',0,''),(28,NULL,'MR1708240000017','Mesin Absensi Sidik Jari Solution Type X302-S','Access Control (AC) : 1 Relay Output 2A 12V Fasilitas AC : 50 Time Zones, 5 Grouping, 10 Combination. ',1,'14','','','','','','','',0,''),(29,NULL,'MR1710160000026','','',0,'0','','','','','','','',0,''),(30,NULL,'MR1710240000039','Hady Talkie Motorola CP-338 VHF \"Gasproff\"','Frekuensi Kit Number : PMAD4015A',2,'13','Spesifikasi rinci :\r\n- Dilengkapi system anti radiasi dan batre yang tahan ledakan meskipun terkena percikan api\r\n- Description : VHF, 14 cm, 155-174 HZ\r\n-Dimensi HT : 137mm x 57,5 mm x 37,5 mm \r\n- Channel : 128 channel','','','','','','',0,''),(31,NULL,'MR1710240000037','Sewa Mobil','Double Gardan Mitsubishi Triton',1,'14','Keluaran tahun 2015','','','','','','',0,''),(32,NULL,'MR1710240000037','Sewa Mobil','Toyota Avanza Veloz',1,'14','Keluaran tahun 2014','','','','','','',0,''),(33,NULL,'MR1710240000036','Infrared Themperature ','',2,'14','','','','','','','',0,''),(34,NULL,'MR1710240000036','Marsfunnel Viscosity','Plastic Model No 201',2,'14','','','','','','','',0,''),(35,NULL,'MR1710240000036','Hidrometer ','',1,'14','+ Tas','','','','','','',0,''),(36,NULL,'MR1710240000034','Sewa Kantor/ Mini workshop/ Mess','',3,'0','Ruanga, di JL. Akasia Ujung No. 08 RT/RW 02/08 , Kel. Duri Barat, Kec. Mandau, Bengkalis Riau','','','','','','',0,''),(37,NULL,'MR1711030000043','Truck Cold Diesel','Dimensi Truck P 4,3m L 1,8m T 2,2n Tonase 4,5 Ton',1,'14','Untuk mobilisasi pengiriman alat FAST dari Workshop Cibitung ke Site Duri','','','','','','',0,''),(38,NULL,'MR1712110000045','Laptop Asus X441NA','Intel Celeron N3350,4GB, 500GB HDD, DVD RW, Wifi, Camera 14\" LED, Window 10, Mouse Logitec, USB Flash Disk Sandisk 8Gb ',3,'14','','','','','','','',0,''),(39,NULL,'MR1712150000048','Mini PC','Raspberry Pi 3 Model B + Official case Merah Putih',1,'14','','','','','','','',0,''),(40,NULL,'MR1712150000048','Casing Raspberry','Model Pi 3/ Pi 2/ Pi B+ ABS',1,'11','','','','','','','',0,''),(41,NULL,'MR1712150000048','Micro SD Card','SanDisk Ultra A1 64Gb, 100 MBps Class 10',1,'11','','','','','','','',0,''),(42,NULL,'MR1712150000048','Pigtail cabang dual (SMA)','untuk modem/MiFi MIMO Bolt, 4G, HSPA, 3G, EVDO',2,'11','','','','','','','',0,''),(43,NULL,'MR1712270000049','Viscotester VT-06','Merk: Rion, Measurement accuracy: +/- 10%, +/- 1 digit indcated, reproducibility +/-5%, Rotor Speed: 62.5 rpm, Dimensions and Weight (175 (H) x 77 (w)',1,'14','','','','','','','',0,''),(44,NULL,'MR1801230000050','APAR (Alat Pemadam Api Ringan)','Merek Viking (CO2)  5 Kg',3,'14','','','','','','','',0,''),(45,NULL,'MR1801230000050','Kotak P3K 	','Sesuai PERMENAKER No. PER- 15/MEN/VIII/2008 Uk.  610 x 498 x 130 mm',1,'13','Termasuk Obat-obatan P3K','','','','','','',0,''),(46,NULL,'MR1801230000050','Tas P3K','Sesuai PERMENAKER No. PER- 15/MEN/VIII/2008 Uk.  XL',1,'13','Termasuk isi obat-obatan P3K','','','','','','',0,''),(47,NULL,'MR1801230000050','Isi kotak P3K ','Sesuai PERMENAKER No. PER- 15/MEN/VIII/2008',1,'13','','','','','','','',0,''),(48,NULL,'MR1801230000050','Hazard Sign 60m x 50 cm','',4,'14','','','','','','','',0,''),(49,NULL,'MR1801230000051','Kursi Kantor','CHAIRMAN Kursi Kantor TS0301 Ukuran : 50 x 49 x 103-111 cm.',6,'14','Specification tidak megikat','','','','','','',0,''),(50,NULL,'MR1801230000051','Meja Kerja','HIGHPOINT One Meja Kantor - OD034 [Beech] Detail: - Material : Particle Board density 680 kg/m3, Dimensi  : 140 x 74 x 75cm',6,'14','Spesifikasi tidak mengikat','','','','','','',0,''),(51,NULL,'MR1801230000051','Printer dan scanner','HP Officejet Pro 8620 e All in One Printer',1,'14','','','','','','','',0,''),(52,NULL,'MR1801230000051','Laptop Asus A456UQ ','A456UQ Prosesor Intel CoreÂ i5-7200U@2,5GHz TurboBoost 3,1GHz',3,'14','','','','','','','',0,''),(53,NULL,'MR1802230000054','Personal Computer','Intel Core i5-7400, 3.0Ghz - Cache 6MB (Box) Socket LGA 151-ASRock B250M Pro4 (LGA1151,B250,DDR4) Galax SSD Gamer L series 120GB, WDC 1TB SATA3 64MB-B',2,'14','Diperlukan untuk pekerjaan Design Grafis Electronic dan Coding sehingga membutuhkan spect yang mumpuni ','','','','','','',0,''),(54,NULL,'MR1802230000054','Monitor','Samsung 24\" Curved Monitor C24F390FHE, Detil Detail - Flat / Curved: Curved - Active Display Size: 52.2 cm x 29.3 cm - Curved screen: 1.800R - Aspect ',5,'14','DIbutuhkan 2 Monitor untuk 1 PC, dikarenakan untuk pekerjaan Design Electronic grafis dan coding secara bersamaan dengan spec. yang mumpuni, untuk Project Engineer, Mechanical Engineer dan Electronic Engineer.','','','','','','',0,''),(55,NULL,'MR1802230000054','UPS PC','APC BX800LI-MS BACK UPS 800VA,230V,AVR,UNIVERSAL AND IEC SOCKETS',2,'14','','','','','','','',0,''),(56,NULL,'MR1802230000054','Keyboard PC','Logitec',2,'14','','','','','','','',0,''),(57,NULL,'MR1803230000056','Pembuatan Logo Perusahaan','Galvanis 30X21 Cm',1,'13','','','','','','','',0,''),(58,NULL,'MR1803230000056','Tulisan AUDEMARS ','Galvanis 7 Cm',1,'13','','','','','','','',0,''),(59,NULL,'MR1803230000056','Tulisan INDONESIA','Galvanis 4 Cm',1,'13','','','','','','','',0,''),(60,NULL,'MR1803230000057','Coverall Wearpack','Warna Navy Blue Ukuran XL',2,'11','','','','','','','',0,''),(61,NULL,'MR1803230000057','Coverall Wearpack','Warna Navy Blue Ukuran XXL',1,'11','','','','','','','',0,''),(62,NULL,'MR1803230000057','Coverall Wearpack','Warna Red Ukuran XL',1,'11','','','','','','','',0,''),(63,NULL,'MR1803230000058','Truck Cold Diesel','Dimensi Truck P 4,3m L 1,8m T 2,2m Tonase 4,5 Ton',2,'14','Pengiriman Alat FAST dr Cibitung ke Lapangan PHE Siak Duri','','','','','','',0,''),(64,NULL,'MR1807270000065','Audit ISO','Surveillane Audit ISO 9001:2015, ISO 14001:2015 dan OHSAS 18001:2007',0,'0','','','','','','','',0,''),(65,NULL,'MR1809040000066','SIM5320E 3G WCDMA GSM Module','-SIM5320E Dual Band UMTS/HSDPA 900/2100 MHz -Script Language Support LUA & Embedded AT -A-GPS mode: MS-Based, MS-Assisted - Stand-alone GPS -Data Tran',20,'11','Untuk keperluan pembuatan alat sensor project Bentayan','','','','','','',0,''),(66,NULL,'MR1809050000067','SIM5320E 3G WCDMA GSM Module','-SIM5320E Dual Band UMTS/HSDPA 900/2100 MHz -Script Language Support LUA & Embedded AT -A-GPS mode: MS-Based, MS-Assisted - Stand-alone GPS -Data Tran',9,'11','','','','','','','',0,''),(67,NULL,'MR1809120000068','Kabel ','NYYHY 3x4mm Makita',700,'9','Kabel power 3 phase dari PLN ke Panel Utama','','','','','','',0,''),(68,NULL,'MR1809120000068','Kabel ','NYYHY 2x4mm Makita',1600,'9','Kabel power DC FAST & Eter','','','','','','',0,''),(69,NULL,'MR1809120000068','Kabel ','NYYHY 2x0,75mm Makita',1900,'9','Kabel kontrol Monitoring system 220vac','','','','','','',0,''),(70,NULL,'MR1810030000070','Truck Cold Diesel','Dimensi ruck P 4.3m, L 1.8m, T 2.2m, Tonase 4,5 Ton ',2,'14','Keperluan Mobilisasi Alat FAST dari lapangan Batang Duri ke Bentayan Palembang','','','','','','',0,''),(71,NULL,'MR1811140000071','LoRa 3G router 900MHz including accessories','F8926-L-W',2,'14','','','','','','','',0,''),(72,NULL,'MR1811140000072','868Mhz outdoor Omni Antenna','Antenna LoRa',2,'11','','','','','','','',0,''),(73,NULL,'MR1811140000073','868Mhz outdoor Omni Antenna','Antenna LoRa',2,'11','','','','','','','',0,''),(74,NULL,'MR1811140000074','LoRa 3G router 900MHz including accessories','F8926-L-W',2,'11','','','','','','','',0,''),(75,NULL,'MR1811270000075','LoRa GSM GPRS IP modem 900MHz including  accessories','LoRa Router IP Modem',1,'11','','','','','','','',0,''),(76,NULL,'MR1812050000076','PT100 Thin Film','CRZ1632R-100 Class B',100,'11','','','','','','','',0,''),(79,NULL,'MR1909180000006','Air Conditioner (AC)','2 PK, split standard, low watt, 12000 - 18000 BTU',4,'14','1 unit for Administration room + Meeting room, 1 unit for Manager office + Component/Material room, and 2 unit for Working/soldering area','','','','','','',0,''),(78,NULL,'MR1904040000005','Truck Cold Diesel','Dimensi Truck P 4,3m L 1,8m T 2,2n Tonase 4,5 Ton',1,'14','Untuk Pengiriman Barang dari Workshop Cibitung ke Lapangan Osam BOB','','','','','','',0,''),(80,NULL,'MR1910010000008','Safety Suit','Clothes & pants Color Gray',7,'11','size :   M = 3pcs, L = 2pcs, XL =2 pcs','','','','','','',0,''),(81,NULL,'MR1910010000008','Safety Shoes','Krisbow type Prince 6inch Brown',7,'11','size   :  39 = 1pcs, 40 = 3pcs, 41 = 2pcs, 42 = 1pcs','','','','','','',0,''),(82,NULL,'MR1910100000012','2nd Surveillance Audit ','Audit ISO 9001:2015, ISO 14001:2015 and OHSAS 18001:2007',1,'14','2nd Surveillance Audit ISO 9001:2015, ISO 14001:2015 and OHSAS 18001:2007','','','','','','',0,''),(83,NULL,'MR1910160000014','Thermal Camera ','FLIR C3 Compact Thermal Camera with Wi-Fi',1,'14','','','','','','','',0,''),(84,NULL,'MR1910160000015','DSLR Camera','CANON EOS M6 / CANON M6 KIT 15-45 IS STM PAKET 32GB',1,'14','CANON EOS M6 / CANON M6 KIT 15-45 IS STM PAKET 32GB','','','','','','',0,''),(85,NULL,'MR1910100000013','TRIPOD','Tripod 3520 BLACK Slr Dslr Hp Mirrorless Gopro Takara Somita Excell',1,'11','Tripod 3520 BLACK Slr Dslr Hp Mirrorless Gopro Takara Somita Excell','','','','','','',0,''),(86,NULL,'MR1910160000016','Tripod','Tripod 3520 BLACK Slr Dslr Hp Mirrorless Gopro Takara Somita Excell',1,'14','Tripod 3520 BLACK Slr Dslr Hp Mirrorless Gopro Takara Somita Excell','','','','','','',0,''),(87,NULL,'MR1910310000017','Mesin Las Argon','900 Watt / 200A, Rhino DC TIG/MMA HT 200',1,'14','Untuk membantu pengerjaan pembuatan alat dalam mekanik yang berkaitan dengan pengelasan argon.','','','','','','',0,''),(88,NULL,'MR1910310000017','Mesin Bubut','WESTCO BENCH LATHE BV 20L 1. Center height : 110 mm, Swing Over bed : 220mm, Distance between centers : 520 mm, Swing over carriage : 115 mm',1,'14','Untuk membantu pengerjaan pembuatan alat dalam mekanik yang berkaitan dengan pembubutan.','','','','','','',0,''),(89,NULL,'MR1912090000021','Amplifer','SA01',1,'14','Kegunaannya agar sinyal di dlm alat monitoring system dapat terbaca dgn lebih detail','','','','','','',0,''),(90,NULL,'MR1912090000020','Load Cell','FA416',1,'14','Sebagai transducer dalam alat monitoring system khususnya pas FAST Sub Surface (ETER)','','','','','','',0,''),(91,NULL,'MR1912120000022','External Harddisk','HD HDD External Harddisk 2,5\", Memory capacity: 1TB, Port USB 3,0, Windows Operation System, 32-bit 64-bit',1,'14','For backup overload data from laptop, minimum memory capacity is 1TB','','','','','','',0,''),(92,'2020-10-01 00:00:00','MR2010010000001','  SIM7600CE-T 4G(LTE) Shield for arduino Model : TEL0124  ','USB Voltage: 5V Operating Voltage: 5V Input Voltage: VIN(7-23V)/USB(5V) Support Network: TDD-LTE B38/B39/B40/B41 FDD-LTE B1/B3',15,'11','PHE SIAK Project','Completed','PO2011120000077','008PTAIJKTIII2021_-_Cibitung_2.pdf','','','https://audemars.co.id/wp-content/uploads/2021/02/0063AMI-SP3XI2020-Robot-.pdf',635,'High'),(93,'2020-10-01 00:00:00','MR2010010000002','Pressure sensor cell Model : WD19','Range : 0 - 500 PSI (gauge) Interface : i2c	Power Supply : 3.3V DC',45,'11','PHE SIAK Project','Completed','PO2011120000078','','','','https://audemars.co.id/wp-content/uploads/2021/02/0064AMI-SP3XI2020-Hafei-.pdf',140,'High'),(94,'2020-10-01 00:00:00','MR2010010000003',' Ulltrasonic flow meter Model No.:UF2000-SW ','Meansuring Medium : Water Pipe Range : 4\' (DN100)  	Signal Output : 4-20mA+RS485 Power Supply : 24V DC Accuracy : 1% F.S Transd',75,'13','PHE SIAK Project','Completed','PO2011120000079','','','','https://audemars.co.id/wp-content/uploads/2021/02/0065AMI-SP3XI2020-Flowmeter-.pdf',0,'High'),(95,'2020-10-01 00:00:00','MR2010010000004',' Germany heraeus PT1000 PT1000 thin film platinum resistor chips ','Temperature range:          70 to +500 (continuous operation)(temporary use to 550 possible) Tolerance Class B/2B: -70 to +500 Toler',100,'11','PHE SIAK Project','','','','','','',0,''),(96,'2020-10-05 00:00:00','MR2010050000005','HopeRF LoRa 915Mhz','',200,'11','PHE SIAK Project','Completed','PO2011120000082','','','','https://audemars.co.id/wp-content/uploads/2021/02/0070AMI-SP3XII2020-DI-Electronics.pdf',200000,'High'),(811,'2021-01-26 00:00:00','MR2101260000005',' Laptop Manufacturing ','DELL Inspiron 15 5502',2,'11','Terealisasi hanya 1 unit - Platform Tipe Prosesor : Intel Core i7 Processor Onboard : Intel® Core™ i7-1165G7 Processor (12M Cache, up to 4.70 GHz, with IPU) Kapasitas Penyimpanan : 512 GB SSD Memori Standar : 8GB DDR4 Tipe Grafis : NVIDIA GeForce MX330 2GB Ukuran Layar : 15.6 Inch Resolusi Layar : 1920 x 1080 Layar Sentuh : Tidak Networking : Integrated Wireless Bluetooth : Integrated Antarmuka / Interface 2x USB 3.2 Gen 1 1x USB 3.2 Gen 2 Type-C (DP/PowerDelivery) 1x Headphone/Microphone Combo 1x HDMI 1.4 1x Power jack Micro SD Card Reader Keyboard : Backlit keyboard Audio : Integrated Speaker : Integrated Kamera : 720p at 30 fps HD camera, dual-array microphones Sistem Operasi : Microsoft Windows 10 Home Software Lainnya : Microsoft Office Home and Student 2019 Baterai : 4 Cell Daya Tahan Baterai : 53WHr Daya / Power : 65W AC Adapter Dimensi (PTL) : 14.15 - 17.9 x 356.1 x 234.5 mm Berat Produk : Starting weight: 1.714 kg Lain-lain : Detail display: FHD (1920 x 1080) Anti-glare LED Backlight Non-Touch Narrow Border WVA Detail Wireless: 802.11ac 2x2 WiFi and Bluetooth Detail speaker: Stereo speakers with Waves MaxxAudio® Pro ALC3204, 2 W x 2 = 4 W total Silver Palmrest With Fingerprint Reader','Completed','PO2102050000132','008PTAIJKTIII2021_-_Cibitung_.pdf','','','https://audemars.co.id/wp-content/uploads/2021/02/0026AMI-SP3II2021-Wilcom-computer-.pdf',15950000,'High'),(97,'2020-10-05 00:00:00','MR2010050000006',' Arduino Mega 2560 R3 ','Microcontroller: ATmega2560 Operating Voltage: 5V 	Input Voltage (recommended): 7V - 9V Digital I/O Pins: 54 (15 pin dapat digunakan se',15,'11','PHE SIAK Project','Completed','PO2102030000125','MR2010050000006_-_Check_by_Irvan_.pdf','','','https://audemars.co.id/wp-content/uploads/2021/02/0019AMI-SP3II2021-Freelab-Electronics-.pdf',130000,'High'),(98,'2020-10-05 00:00:00','MR2010050000006',' Arduino Nano v3 Pin no Solder + Kabel ','Nano V3 formfactor,  ATmega328 (16Mhz) microcontroller,  CH340G  USBUART interface, 	 Operating Voltage (logic level) : 5 V Input ',120,'11','PHE SIAK Project','Completed','PO2102030000125','MR2010050000006_-_Check_by_Irvan_1.pdf','','','https://audemars.co.id/wp-content/uploads/2021/02/0019AMI-SP3II2021-Freelab-Electronics-.pdf',43000,'High'),(99,'2020-10-05 00:00:00','MR2010050000007','Simcard Registered','XL',20,'11','PHE SIAK Project','Completed','PO2102040000131','','','','https://audemars.co.id/wp-content/uploads/2021/02/0024AMI-SP3II2021-Jovan-.pdf',6000,'Medium'),(100,'2020-10-05 00:00:00','MR2010050000008',' Antenna LoRa ','Antenna Stick 915Mhz',200,'11','PHE SIAK Project','','','','','','',0,'High'),(101,'2020-10-05 00:00:00','MR2010050000009',' Antenna Panel GSM ','Frequency-MHz:800~960/1710~2500 Gain-dBi:6/8 Beam width -:H:70/60 V:55/45	VSWR:1.5 	Input Impedance:50Polarization',15,'11','PHE SIAK Project','','','','','','',0,''),(102,'2020-10-05 00:00:00','MR2010050000010',' Connector ufl to N ','For Antenna Panel GSM to Module GSM',20,'11','PHE SIAK Project','','','','','','',0,'High'),(103,'2020-10-09 00:00:00','MR2010090000011','Samsung 55\" Crystal UHD 4K Smart TV TU6900','Type Smart USB Slot Yes	HDMI Slot Yes	Resolution 3,840 x 2,160 Display Size 55 Inci 	Crystal display Resolution 3,840 x 2,160UH',2,'14','PHE SIAK Project','Completed','PO2102030000127','','','','https://audemars.co.id/wp-content/uploads/2021/02/0025AMI-SP3II2021-Clinic-computer-.pdf',8250000,'Medium'),(104,NULL,'MR2010090000012','Corsair DDR4 Dominator Platinum RGB PC25600 32GB (2X16GB)','DDR4 32GB',1,'11','PHE SIAK Project','','','','','','',0,''),(105,NULL,'MR2010090000012','WDC Purple 2TB WD20PURZ','2TB Storage',1,'11','PHE SIAK Project','','','','','','',0,''),(106,NULL,'MR2010090000012','SSD Samsung SSD 970 EVO PLUS M.2 250GB MZ-V7S250BW','SSD 250GB Storage',1,'11','PHE SIAK Project','','','','','','',0,''),(107,NULL,'MR2010090000012','Casing CASING ** Enlight EN-4808 With 600W - Server Case Rackmount 4U','',1,'13','PHE SIAK Project','','','','','','',0,''),(108,NULL,'MR2010090000012','VGA Gigabyte Quadro P2200 5GB DDR5 160 Bit','',1,'11','PHE SIAK Project','','','','','','',0,''),(109,NULL,'MR2010090000012','Keyboard Logitech G710+ Mechanical Gaming Keyboard','',1,'11','PHE SIAK Project','','','','','','',0,''),(110,NULL,'MR2010090000012','CPU Cooler','Noctua NH-D15',1,'11','PHE SIAK Project','','','','','','',0,''),(111,NULL,'MR2010090000012','Cooler Fan Noctua','DC12V,14025 FAN,2000RPM,3PHASE MOTOR,IP67 (Water Proof) - NF-A14iPPC-2000 IP67',1,'14','PHE SIAK Project','','','','','','',0,''),(112,NULL,'MR2010090000012','UPS APC Smart UPS 1000VA','',1,'14','PHE SIAK Project','','','','','','',0,''),(113,NULL,'MR2010090000012','Processor Intel Xeon E5-2630v4','2.4Ghz, Cache 20MB, LGA2011-v3',1,'14','PHE SIAK Project','','','','','','',0,''),(114,NULL,'MR2010090000012','Motherboard Intel E-Series Server Board S2600CW2R','IntelÂ® XeonÂ® Processor E5 v4',1,'13','PHE SIAK Project','','','','','','',0,''),(115,NULL,'MR2010140000013','SSD Samsung 860EVO','1TB',1,'11','','','','','','','',0,''),(116,'2020-10-15 00:00:00','MR2010150000014',' Capacitor ','10uF/35V',8,'11','Vendor Duta Irama','','','','','','',0,''),(117,'2020-10-15 00:00:00','MR2010150000014',' Capacitor ','470uF/35V',16,'11','Vendor Duta Irama','','','','','','',0,''),(118,'2020-10-15 00:00:00','MR2010150000014',' Capacitor ','1nF/63V-SM1206',16,'11','Vendor Duta Irama','','','','','','',0,''),(119,'2020-10-15 00:00:00','MR2010150000014',' Capacitor ','100nF/63V-SM1206',72,'11','Vendor Duta Irama','','','','','','',0,''),(120,'2020-10-15 00:00:00','MR2010150000014',' Capacitor ','4n7F/63V-SM1206',24,'11','Vendor Duta Irama','','','','','','',0,''),(121,'2020-10-15 00:00:00','MR2010150000014',' Potensio Mono ','10K',10,'11','Vendor Duta Irama','','','','','','',0,''),(122,'2020-10-15 00:00:00','MR2010150000014',' Diode Zener ','18V/1W',32,'11','Vendor Duta Irama','','','','','','',0,''),(123,'2020-10-15 00:00:00','MR2010150000014',' Diode  ','1N4148',32,'11','Vendor Duta Irama','','','','','','',0,''),(124,'2020-10-15 00:00:00','MR2010150000014',' Terminal Blok ','KF350 2p hijau',48,'11','Vendor Duta Irama','','','','','','',0,''),(125,'2020-10-15 00:00:00','MR2010150000014',' IC ','UC3525 SMD',10,'11','Vendor Duta Irama','','','','','','',0,''),(126,'2020-10-15 00:00:00','MR2010150000014',' IC ','LM7815C',8,'11','Vendor Duta Irama','','','','','','',0,''),(127,'2020-10-15 00:00:00','MR2010150000014',' IC ','LM358 SMD',8,'11','Vendor Duta Irama','','','','','','',0,''),(128,'2020-10-15 00:00:00','MR2010150000014',' Capacitor ','CBB15 0,33uF 1250V',6,'11','Vendor Jabbar Elektronik','','','','','','',0,''),(129,NULL,'MR2010160000015','Potensio Mono','10K',5,'11','Vendor Duta Irama','','','','','','',0,''),(130,NULL,'MR2010160000015','Multipotensio','3950 S 10K + knop',5,'11','Vendor Duta Irama','','','','','','',0,''),(131,NULL,'MR2010160000015','Togle switch','on/off/on BA - 09c',5,'11','Vendor Duta Irama','','','','','','',0,''),(132,NULL,'MR2010160000015','Timah','0,25kg Paragon',2,'12','Vendor Spectra','','','','','','',0,''),(133,NULL,'MR2010160000015','Kern','EI 57',3,'10','Vendor Tekad Makmur','','','','','','',0,''),(134,NULL,'MR2010160000015','Koker','57x80mm',5,'11','Vendor Tekad Makmur','','','','','','',0,''),(135,NULL,'MR2010160000015','Kawat Email','Supreme 2,5mm',1,'12','Vendor Tekad Makmur','','','','','','',0,''),(136,NULL,'MR2010160000015','Kaki Trafo','57',20,'11','Vendor Tekad Makmur','','','','','','',0,''),(137,NULL,'MR2010160000016','IC','358 SMD',30,'11','Vendor Duta Irama','','','','','','',0,''),(138,NULL,'MR2010160000015','Pita Katun','1\"',2,'12','Vendor Tekad Makmur','','','','','','',0,''),(139,NULL,'MR2010160000016','IC','3525',30,'11','Vendor Duta Irama','','','','','','',0,''),(140,NULL,'MR2010160000016','IC','LM7805',50,'11','Vendor Duta Irama','','','','','','',0,''),(141,NULL,'MR2010160000016','IC','LM7812',50,'11','Vendor Duta Irama','','','','','','',0,''),(142,NULL,'MR2010160000015','Pertinax','5mm *120x240cm',1,'7','Vendor PD.Priangan','','','','','','',0,''),(143,NULL,'MR2010160000016','IC','DS 1669 DIP',100,'11','Vendor Jabbar Elektronik','','','','','','',0,''),(144,NULL,'MR2010160000015','UNP','5cm',2,'17','Vendor Dunia Baja','','','','','','',0,''),(145,NULL,'MR2010160000015','Asdrat','M6',9,'9','Vendor Dunia Baja','','','','','','',0,''),(146,NULL,'MR2010160000016','IC','IL 300 DIP',30,'11','Vendor Jabbar Elektronik','','','','','','',0,''),(147,NULL,'MR2010160000016','Transistor','BC337',100,'11','Vendor Duta Irama','','','','','','',0,''),(148,NULL,'MR2010160000015','Kern','EI 25',3,'10','Vendor Tekad Makmur','','','','','','',0,''),(149,NULL,'MR2010160000016','Capacitor','100nF / 63V SM1206',100,'11','Vendor Duta Irama','','','','','','',0,''),(150,NULL,'MR2010160000015','Kaki Trafo','25',80,'11','Vendor Tekad Makmur','','','','','','',0,''),(151,NULL,'MR2010160000016','Capacitor','1nF / 63V MKM',150,'11','Vendor Duta Irama','','','','','','',0,''),(152,NULL,'MR2010160000015','Selongsong Putih','1mm',15,'11','Vendor Tekad Makmur','','','','','','',0,''),(153,NULL,'MR2010160000016','Capacitor','10nF / 63V MKM',200,'11','Vendor Duta Irama','','','','','','',0,''),(154,NULL,'MR2010160000015','Koker','25x40mm',20,'11','Vendor Tekad Makmur','','','','','','',0,''),(155,NULL,'MR2010160000016','Capacitor','1uF / 63V MKM',200,'11','Vendor Duta Irama','','','','','','',0,''),(156,NULL,'MR2010160000016','Capacitor','4,7uF 35V',50,'0','Vendor Duta Irama','','','','','','',0,''),(157,NULL,'MR2010160000015','Kawat Email','0,3mm Supreme',3,'4','Vendor Tekad Makmur','','','','','','',0,''),(158,NULL,'MR2010160000016','Capacitor','47uF 35V',100,'11','Vendor Duta Irama','','','','','','',0,''),(159,NULL,'MR2010160000015','Insulax','Class F',5,'3','Vendor Tekad Makmur','','','','','','',0,''),(160,NULL,'MR2010160000016','Capacitor','100uF 35V',60,'11','Vendor Duta Irama','','','','','','',0,''),(161,NULL,'MR2010160000016','Capacitor','470uF 35V',60,'11','Vendor Duta Irama','','','','','','',0,''),(162,NULL,'MR2010160000015','Thyristor','SKKT172 16E Semikron',20,'11','Vendor Jabbar Electronic','','','','','','',0,''),(164,NULL,'MR2010160000015','Thyristor','SKKD 100 12E Semikron',7,'11','Vendor Jabbar Electronic','','','','','','',0,''),(165,NULL,'MR2010160000015','IC','DS1669 DIP',15,'11','Vendor Jabbar Electronic','','','','','','',0,''),(166,NULL,'MR2010160000015','Elco','4700uF 400V 75x115 Screw',10,'11','Vendor Jabbar Electronic','','','','','','',0,''),(167,NULL,'MR2010160000015','MCB','3x63A LS',5,'11','Vendor Sinar Abadi','','','','','','',0,''),(168,NULL,'MR2010160000015','MCCB','EZC100F 100A Shneider',5,'11','Vendor Sinar Abadi','','','','','','',0,''),(169,NULL,'MR2010160000015','Holder Fuse','RT18-32 + Fill 10A',15,'11','Vendor Sinar Abadi','','','','','','',0,''),(170,NULL,'MR2010160000015','RCCB','4 pole 63A LS',5,'11','Vendor Sinar Abadi','','','','','','',0,''),(171,NULL,'MR2010160000016','Diode','4148',200,'11','Vendor Duta Irama','','','','','','',0,''),(172,NULL,'MR2010160000015','Sensing Current','ACS 758 100A',7,'11','Vendor CNC Store','','','','','','',0,''),(173,NULL,'MR2010160000016','Diode Zener','18V 2W',300,'11','Vendor Duta Irama','','','','','','',0,''),(174,NULL,'MR2010160000015','R-shunt','100A / 75mV',5,'11','Vendor Tokopedia','','','','','','',0,''),(175,NULL,'MR2010160000016','Diode ','6,2 V',100,'11','Vendor Duta Irama','','','','','','',0,''),(176,NULL,'MR2010160000015','Terminal','IN60',20,'11','Vendor Sinar Abadi','','','','','','',0,''),(177,NULL,'MR2010160000016','Diode','4007',250,'11','Vendor Duta Irama','','','','','','',0,''),(178,NULL,'MR2010160000016','Heatsink ','TO220',50,'11','Vendor Duta Irama','','','','','','',0,''),(179,NULL,'MR2010160000015','Terminal','IN100',20,'11','Vendor Sinar Abadi','','','','','','',0,''),(180,NULL,'MR2010160000016','Multiturn','5K',60,'11','Vendor Duta Irama','','','','','','',0,''),(181,NULL,'MR2010160000016','Multiturn','10K',40,'11','Vendor Duta Irama','','','','','','',0,''),(182,NULL,'MR2010160000015','Busbar','3x15mm',2,'17','Vendor Sinar Abadi','','','','','','',0,''),(183,NULL,'MR2010160000016','Resistor','1K / 0,25W SM1206',1000,'11','Vendor Duta Irama','','','','','','',0,''),(184,NULL,'MR2010160000015','Binding Post','8mm hitam',25,'11','Vendor Duta Irama','','','','','','',0,''),(185,NULL,'MR2010160000016','Resistor','22K 10W',50,'11','Vendor Duta Irama','','','','','','',0,''),(186,NULL,'MR2010160000015','Binding Post','8mm Merah',7,'11','Vendor Duta Irama','','','','','','',0,''),(192,NULL,'MR2010160000015','Plat Alumunium','2mm',1,'5','Vendor Sinar Harapan','','','','','','',0,''),(188,NULL,'MR2010160000016','Resistor Shunt','30A 75mV',5,'11','Vendor Tokopedia\r\n','','','','','','',0,''),(189,NULL,'MR2010160000016','Resistor Shunt','100A 75mV',5,'11','Vendor Tokopedia','','','','','','',0,''),(190,NULL,'MR2010160000015','Heatsink ','12 Sirip 30cm tebal 5mm',30,'11','Vendor Tokopedia','','','','','','',0,''),(191,NULL,'MR2010160000016','Tactical Switch','2mm',50,'11','Vendor Duta Irama','','','','','','',0,''),(193,NULL,'MR2010160000015','Kabel','NYAF 0,75mm Hitam',5,'12','Vendor Sinar Abadi','','','','','','',0,''),(194,NULL,'MR2010160000015','Kabel','NYAF 4mm Ground',10,'9','Vendor Sinar Abadi','','','','','','',0,''),(195,NULL,'MR2010160000015','Kabel','NYAF 10mm',100,'9','Vendor Sinar Abadi','','','','','','',0,''),(196,NULL,'MR2010160000015','Kabel','NYAF 25mm',50,'9','Vendor Sinar Abadi','','','','','','',0,''),(197,NULL,'MR2010160000016','Transistor','TIP31C',40,'11','Vendor Duta Irama','','','','','','',0,''),(198,NULL,'MR2010160000015','Power Supply','12VDC/5A',5,'11','Vendor Duta Irama','','','','','','',0,''),(199,NULL,'MR2010160000016','Transistor','TIP32C',100,'11','Vendor Duta Irama','','','','','','',0,''),(200,NULL,'MR2010160000016','Varistor','07D220K',50,'11','Vendor Duta Irama','','','','','','',0,''),(201,NULL,'MR2010160000015','AC Connector','Plug C13',10,'11','Vendor Duta Irama','','','','','','',0,''),(202,NULL,'MR2010160000016',' XTAL ','16MHz',30,'11','Vendor Duta Irama','','','Audemars  .csv','','','',0,''),(203,NULL,'MR2010160000015','AC Connector','320',10,'11','Vendor Duta Irama','','','','','','',0,''),(204,NULL,'MR2010160000015','Thermoswitch','KSD302 75Â°C NO',5,'11','Vendor Duta Irama','','','','','','',0,''),(205,NULL,'MR2010160000015','Socket motor','2Pin',10,'11','Vendor Duta Irama','','','','','','',0,''),(206,NULL,'MR2010160000015','Fan','12x12cm 220VAC',40,'11','Vendor Duta Irama','','','','','','',0,''),(207,NULL,'MR2010160000015','Duct Cable','45x45mm',15,'17','Vendor Sinar Abadi','','','','','','',0,''),(208,NULL,'MR2010160000015','Rel MCB','Alumunium',5,'17','Vendor Sinar Abadi','','','','','','',0,''),(209,NULL,'MR2010160000015','Cable Gland','PG25',25,'11','Vendor Sinar Abadi','','','','','','',0,''),(210,NULL,'MR2010160000016','Terminal Blok','KF2 EDG 3Pin Hijau',100,'11','Vendor Duta Irama','','','','','','',0,''),(211,NULL,'MR2010160000016','Terminal Blok','KF2 EDG 6Pin Hijau',40,'11','Vendor Duta Irama','','','','','','',0,''),(212,NULL,'MR2010160000015','Cable Ties','10cm Black *100pcs',10,'10','Vendor Sinar Abadi','','','','','','',0,''),(213,NULL,'MR2010160000016','Tinol','0,25kg Paragon',5,'12','Vendor Duta Irama','','','','','','',0,''),(214,NULL,'MR2010160000015','Tie Mount','HC - 101',5,'10','Vendor Sinar Abadi','','','','','','',0,''),(215,NULL,'MR2010160000015','Skun gepeng','3mm female',100,'11','Vendor Duta Irama','','','','','','',0,''),(216,NULL,'MR2010160000016','Trafo ','Ferit Bobbin EE22 10pin',22,'11','Vendor SELC ','','','','','','',0,''),(217,NULL,'MR2010160000016','Trafo','Ferit Bobbin EE33',22,'11','Vendor SELC','','','','','','',0,''),(218,NULL,'MR2010160000016','Socket IC','8 Pin',100,'11','Vendor Duta Irama','','','','','','',0,''),(219,NULL,'MR2010160000015','Ferrules','0,75mm White',500,'11','Vendor Sinar Abadi','','','','','','',0,''),(220,NULL,'MR2010160000015','Ferrules','0,75mm Blue',500,'11','Vendor Sinar Abadi','','','','','','',0,''),(221,NULL,'MR2010160000015','Skun','1,25-3y Merah',100,'11','Vendor Sinar Abadi','','','','','','',0,''),(222,NULL,'MR2010160000016','Kawat Email','0,2 mm Supreme',5,'4','Vendor Tekad Makmur','','','','','','',0,''),(223,NULL,'MR2010160000015','Skun','1,25-3y Hitam',100,'11','Vendor Sinar Abadi','','','','','','',0,''),(224,NULL,'MR2010160000016','Kawat Email','0,3 mm Supreme',5,'4','Vendor Tekad Makmur','','','','','','',0,''),(225,NULL,'MR2010160000015','Skun','1,25-3y Biru',100,'11','Vendor Sinar Abadi','','','','','','',0,''),(226,NULL,'MR2010160000015','Skun','10-6',150,'11','Vendor Sinar Abadi','','','','','','',0,''),(227,NULL,'MR2010160000015','Skun','25-8',100,'11','Vendor Sinar Abadi','','','','','','',0,''),(228,NULL,'MR2010160000015','Isolator','SM25-M6',50,'11','Vendor Sinar Abadi','','','','','','',0,''),(229,NULL,'MR2010160000015','Heatsring','3mm',2,'9','Vendor Duta Irama','','','','','','',0,''),(230,NULL,'MR2010160000015','Heatsring','5mm',2,'9','Vendor Duta Irama','','','','','','',0,''),(231,NULL,'MR2010160000015','Heatsring','8mm',2,'9','Vendor Duta Irama','','','','','','',0,''),(232,NULL,'MR2010160000015','Heatsring','10mm',2,'9','Vendor Duta Irama','','','','','','',0,''),(233,NULL,'MR2010160000015','Vinyl skun','25 Merah',100,'11','Vendor Sinar Abadi','','','','','','',0,''),(234,NULL,'MR2010160000015','Vinyl skun','25 Hitam',100,'11','Vendor Sinar Abadi','','','','','','',0,''),(270,NULL,'MR2010160000017','PCB','Sensor Circuit',120,'11','Vendor Spectra','','','','','','',0,''),(236,NULL,'MR2010160000015','Stopper','EW-35',50,'11','Vendor Sinar Abadi','','','','','','',0,''),(237,NULL,'MR2010160000015','Nameplat','Stainless',10,'11','Vendor Martunas Jaya','','','','','','',0,''),(238,NULL,'MR2010160000015','Baut','M4x10mm',100,'11','Vendor Sinar Jaya','','','','','','',0,''),(239,NULL,'MR2010160000015','Baut','M4x50mm',100,'11','Vendor Sinar Jaya','','','','','','',0,''),(240,NULL,'MR2010160000016','Kawat Email','0,4 mm Supreme',5,'4','Vendor Tekad Makmur','','','','','','',0,''),(241,NULL,'MR2010160000015','Baut','JP M6x15mm',200,'11','Vendor Sinar Jaya','','','','','','',0,''),(242,NULL,'MR2010160000015','Baut','M12x20mm',30,'11','Vendor Sinar Jaya','','','','','','',0,''),(243,NULL,'MR2010160000015','Asdrat','M8',10,'9','Vendor Sinar Jaya','','','','','','',0,''),(244,NULL,'MR2010160000015','Mur','M4',200,'11','Vendor Sinar Jaya','','','','','','',0,''),(245,NULL,'MR2010160000015','Mur','M12',30,'11','Vendor Sinar Jaya','','','','','','',0,''),(246,NULL,'MR2010160000015','Ring Plat','M4',200,'11','Vendor Sinar Jaya','','','','','','',0,''),(247,NULL,'MR2010160000015','Ring Plat','M12',30,'11','Vendor Sinar Jaya','','','','','','',0,''),(248,NULL,'MR2010160000015','Ring Per','M12',30,'11','Vendor Sinar Jaya','','','','','','',0,''),(249,NULL,'MR2010160000015','cat','Blue danagloss',5,'4','Vendor Sinar Warna','','','','','','',0,''),(250,NULL,'MR2010160000015','cat','Black Doff Nippe',5,'4','Vendor Sinar Warna','','','','','','',0,''),(251,NULL,'MR2010160000015','Thinner','Impala',5,'19','Vendor Sinar Warna','','','','','','',0,''),(252,NULL,'MR2010160000015','Epoxy','Nippe',5,'4','Vendor Sinar Warna','','','','','','',0,''),(253,NULL,'MR2010160000015','Dempul','Sanpolac *0,25kg',2,'4','Vendor Sinar Warna','','','','','','',0,''),(254,NULL,'MR2010160000016','Kawat Email','0,75 mm Supreme',25,'4','Vendor Tekad Makmur','','','','','','',0,''),(255,NULL,'MR2010160000016','Kawat Email','1,5 mm Supreme',1,'12','Vendor Tekad Makmur','','','','','','',0,''),(256,NULL,'MR2010160000016','Kawat Email','2,5 mm Supreme',1,'12','Vendor Tekad Makmur','','','','','','',0,''),(257,NULL,'MR2010160000016','Kern EI','25',8,'10','Vendor Tekad Makmur','','','','','','',0,''),(258,NULL,'MR2010160000016','Kern EI','44',2,'10','Vendor Tekad Makmur','','','','','','',0,''),(259,NULL,'MR2010160000016','Kern EI','57',3,'10','Vendor Tekad Makmur','','','','','','',0,''),(260,NULL,'MR2010160000016','Koker Trafo','25x40mm',40,'11','Vendor Tekad Makmur','','','','','','',0,''),(261,NULL,'MR2010160000016','Koker Trafo','44x80mm',7,'11','Vendor Tekad Makmur','','','','','','',0,''),(262,NULL,'MR2010160000016','Koker Trafo','57x80mm',10,'11','Vendor Tekad Makmur','','','','','','',0,''),(263,NULL,'MR2010160000016','Selongsong Putih ','1 mm ',25,'11','Vendor Tekad Makmur','','','','','','',0,''),(264,NULL,'MR2010160000016','Insulax','Class F',12,'3','Vendor Tekad Makmur','','','','','','',0,''),(265,NULL,'MR2010160000016','Kaki Trafo','25',160,'11','Vendor Tekad Makmur','','','','','','',0,''),(266,NULL,'MR2010160000016','Kaki Trafo','44',25,'11','Vendor Tekad Makmur','','','','','','',0,''),(267,NULL,'MR2010160000016','Kaki Trafo','57',25,'11','Vendor Tekad Makmur','','','','','','',0,''),(268,NULL,'MR2010160000016','Pita Katun ','1\"',5,'12','Vendor Tekad Makmur','','','','','','',0,''),(269,NULL,'MR2010160000016','Selongsong Putih ','3mm',20,'11','Vendor Tekad Makmur','','','','','','',0,''),(271,NULL,'MR2010160000017','Pin Header','2 Pins',320,'11','Glodok','','','','','','',0,''),(272,NULL,'MR2010160000017','Power Supply','MCU Supply',100,'11','Glodok','','','','','','',0,''),(273,NULL,'MR2010160000017','Heatshrink','2mm',40,'9','Glodok','','','','','','',0,''),(274,NULL,'MR2010160000017','Tubing Stainless','OD 6mm',105,'11','Glodok','','','','','','',0,''),(275,NULL,'MR2010160000017','Tubing Stainless','OD 8mm',210,'11','Glodok','','','','','','',0,''),(276,NULL,'MR2010160000017','V-Sok Stainless','1/2\" Class 3000 1inch',105,'11','Glodok','','','','','','',0,''),(277,NULL,'MR2010160000017','Dop Stainless Steal','Class 3000 1inch',105,'11','Glodok','','','','','','',0,''),(278,NULL,'MR2010160000017','Kabel Temperature & Pressure AWG24','2 Jalur',600,'9','Glodok','','','','','','',0,''),(279,NULL,'MR2010160000017','Rubber','O-ring',400,'11','Glodok','','','','','','',0,''),(280,NULL,'MR2010160000017','Gland','PG9',400,'11','Glodok','','','','','','',0,''),(281,NULL,'MR2010160000017','Stainless Ring','ID6mm, OD8mm',300,'11','Glodok','','','','','','',0,''),(282,NULL,'MR2010160000017','Kabel Power Serabut','2x1.5',300,'9','Glodok','','','','','','',0,''),(283,NULL,'MR2010160000017','Voltage Regulator','LM7805',210,'11','Glodok','','','','','','',0,''),(284,NULL,'MR2010160000017','Timah','0,25kg Paragon',5,'12','Glodok','','','','','','',0,''),(285,NULL,'MR2010160000017','Plat Besi','Casing Sensor',105,'11','Glodok','','','','','','',0,''),(286,NULL,'MR2010160000017','Infrared LED','5mm',105,'11','Glodok','','','','','','',0,''),(287,NULL,'MR2010160000017','Diode ','BPW34',105,'11','Glodok','','','','','','',0,''),(288,NULL,'MR2010160000017','Mekanik Watercut','Casing WC',105,'11','Glodok','','','','','','',0,''),(289,NULL,'MR2010160000017','Signal Condioning','WC Amplify',105,'11','Glodok','','','','','','',0,''),(290,NULL,'MR2010160000017','Kabel Control','NYAF 0.75mm',500,'9','Glodok','','','','','','',0,''),(291,NULL,'MR2010160000017',' Double Nepple Stainless','Steal 3/4 Insertion',420,'11','Glodok','','','','','','',0,''),(292,NULL,'MR2010160000017','Socket Stainless','Steal 3/4 Insertion',250,'11','Glodok','','','','','','',0,''),(293,NULL,'MR2010160000017','Pin Header','Female 1x40',250,'11','Glodok','','','','','','',0,''),(294,NULL,'MR2010160000017','Resistor ','100 Ohm/0,25W',120,'11','Glodok','','','','','','',0,''),(295,NULL,'MR2010160000017','Resistor ','1K/0,25W',680,'11','Glodok','','','','','','',0,''),(296,NULL,'MR2010160000017','Resistor ','5K/0,25W',240,'11','Glodok','','','','','','',0,''),(297,NULL,'MR2010160000017','Resistor ','10K/0,25W',320,'11','Glodok','','','','','','',0,''),(298,NULL,'MR2010160000017','Analog to Digital','ADS1115',120,'11','Glodok','','','','','','',0,''),(299,NULL,'MR2010160000017','OP-AMP','LM324',240,'11','Glodok','','','','','','',0,''),(300,NULL,'MR2010160000017','Transistor','LM314',120,'11','Glodok','','','','','','',0,''),(301,NULL,'MR2010160000017','Heatsink ','TO220',120,'11','Glodok','','','','','','',0,''),(302,NULL,'MR2010160000017','Pot Resistor','10K',120,'11','Glodok','','','','','','',0,''),(303,NULL,'MR2010230000018','Fiber Merah','1,5mm',3,'5','Vendor Tekad Makmur','','','','','','',0,''),(304,NULL,'MR2010230000018','Thyristor','SKKT 172 16E Semikron',20,'11','Vendor Jabbar Electronic','','','','','','',0,''),(305,NULL,'MR2010230000018','Thyristor','SKKD 100 12E Semikron',8,'11','Vendor Jabbar Electronic','','','','','','',0,''),(306,NULL,'MR2010230000018','IGBT','SKM 200GB 125D',50,'11','Vendor Jabbar Electronic','','','','','','',0,''),(307,NULL,'MR2010230000018','Elco','2200uF 250VDC',15,'11','Vendor Jabbar Electronic','','','','','','',0,''),(308,NULL,'MR2010230000018','Elco','4700uF 400VDC *75x115 Screw',26,'11','Vendor Jabbar Electronic','','','','','','',0,''),(309,NULL,'MR2010230000018','Capacitor','CBB15 0,33uF 1200V',25,'11','Vendor Jabbar Electronic','','','','','','',0,''),(310,NULL,'MR2010230000018','Holder Fuse','RT18-32 + Fill Fuse 10A',20,'11','Vendor Sinar Abadi','','','','','','',0,''),(311,NULL,'MR2010230000018','Holder Fuse','4,2cm + Fill Fuse 10A',30,'11','Vendor Duta Irama','','','','','','',0,''),(312,NULL,'MR2010230000018','MCB ','2 x 25A LS',15,'11','Vendor Sinar Abadi','','','','','','',0,''),(313,NULL,'MR2010230000018','MCB ','2 x 40A LS',20,'11','Vendor Sinar Abadi','','','','','','',0,''),(314,NULL,'MR2010230000018','MCB ','2 x 63A LS',6,'11','Vendor Sinar Abadi','','','','','','',0,''),(315,NULL,'MR2010230000018','MCB ','3 x 63A LS',6,'11','Vendor Sinar Abadi','','','','','','',0,''),(316,NULL,'MR2010230000018','Busbar Sisir','2 Phase',2,'17','Vendor Sinar Abadi','','','','','','',0,''),(317,NULL,'MR2010230000018','Trafo','15CT15 / 2A',15,'11','Vendor Duta Irama','','','','','','',0,''),(318,NULL,'MR2010230000018','Power Supply','12VDC-5A JPN',5,'11','Vendor Duta Irama','','','','','','',0,''),(319,NULL,'MR2010230000018','AC Connector','Plug C13',35,'11','Vendor Duta Irama','','','','','','',0,''),(320,NULL,'MR2010230000018','AC Connector','320',35,'11','Vendor Duta Irama','','','','','','',0,''),(321,NULL,'MR2010230000018','Sensing Current','ACS758 50A ',20,'11','Vendor CNC Store','','','','','','',0,''),(322,NULL,'MR2010230000018','Sensing Current','ACS758 100A',7,'11','Vendor CNC Store','','','','','','',0,''),(323,NULL,'MR2010230000018','Asdrat','M6',8,'9','Vendor Sinar Jaya','','','','','','',0,''),(324,NULL,'MR2010230000018','Asdrat','M8',20,'9','Vendor Sinar Jaya','','','','','','',0,''),(325,NULL,'MR2010230000018','Busbar','3x15mm *4m',2,'17','Vendor Sinar Abadi','','','','','','',0,''),(326,NULL,'MR2010230000018','Binding Post','5mm',50,'13','Vendor Duta Irama','','','','','','',0,''),(327,NULL,'MR2010230000018','Binding Post','8mm Hitam',22,'11','Vendor Duta Irama','','','','','','',0,''),(328,NULL,'MR2010230000018','Binding Post','8mm Merah',7,'11','Vendor Duta Irama','','','','','','',0,''),(329,NULL,'MR2010230000018','Terminal Block','IN60',95,'11','Vendor Sinar Abadi','','','','','','',0,''),(330,NULL,'MR2010230000018','Thermoswitch','75Â°C NO',25,'11','Vendor Duta Irama','','','','','','',0,''),(331,NULL,'MR2010230000018','Fan','12x12cm 220VAC Eagle',60,'11','Vendor Duta Irama','','','','','','',0,''),(332,NULL,'MR2010230000018','Trafo Ferit','ETD49',25,'11','Vendor Salamint (Tokopedia)','','','','','','',0,''),(333,NULL,'MR2010230000018','Kabel ','NYAF 0,75mm Hitam ',600,'9','Vendor Sinar Abadi','','','','','','',0,''),(334,NULL,'MR2010230000018','Kabel ','NYAF 2,5mm Hitam',100,'9','Vendor Sinar Abadi','','','','','','',0,''),(335,NULL,'MR2010230000018','Kabel ','NYAF 4mm Hitam',200,'9','Vendor Sinar Abadi','','','','','','',0,''),(336,NULL,'MR2010230000018','Kabel ','NYAF 4mm Grounding',50,'9','Vendor Sinar Abadi','','','','','','',0,''),(337,NULL,'MR2010230000018','Kabel ','NYAF 6mm Hitam',100,'9','Vendor Sinar Abadi','','','','','','',0,''),(338,NULL,'MR2010230000018','Kabel ','NYAF 16mm Hitam',100,'9','Vendor Sinar Abadi','','','','','','',0,''),(339,NULL,'MR2010230000018','Pita Katun ','1\"',10,'12','Vendor Tekad Makmur','','','','','','',0,''),(340,NULL,'MR2010230000018','Lem','Korea ',50,'11','Vendor Tekad Makmur','','','','','','',0,''),(341,NULL,'MR2010230000018','Rel MCB','Alumunium',15,'9','Vendor Sinar Abadi','','','','','','',0,''),(342,NULL,'MR2010230000018','Plat Alumunium','120x240cm Tebal 2mm',1,'5','Vendor Sinar Harapan','','','','','','',0,''),(343,NULL,'MR2010230000018','Kabel Ties','10cm Hitam *100pcs',15,'10','Vendor Sinar Abadi','','','','','','',0,''),(344,NULL,'MR2010230000018','Tie Mount','HC-101',5,'10','Vendor Sinar Abadi','','','','','','',0,''),(345,NULL,'MR2010230000018','Skun ','Gepeng 3mm Female',600,'11','Vendor Solid Jaya Elektronik (Tokopedia)','','','','','','',0,''),(346,NULL,'MR2010230000018','Ferrules','0,75mm Putih',500,'11','Vendor Sinar Abadi','','','','','','',0,''),(347,NULL,'MR2010230000018','Ferrules','0,75mm Biru',500,'11','Vendor Sinar Abadi','','','','','','',0,''),(348,NULL,'MR2010230000018','Skun','1,25-3y Merah',5,'10','Vendor Sinar Abadi','','','','','','',0,''),(349,NULL,'MR2010230000018','Skun','1,25-3y Hitam',5,'10','Vendor Sinar Abadi','','','','','','',0,''),(350,NULL,'MR2010230000018','Skun','1,25-3y Biru',5,'10','Vendor Sinar Abadi','','','','','','',0,''),(351,NULL,'MR2010230000018','Skun ','5,5-6 Ring Hitam',5,'10','Vendor Sinar Abadi','','','','','','',0,''),(352,NULL,'MR2010230000018','Skun','5,5-6 Ring Biru',5,'10','Vendor Sinar Abadi','','','','','','',0,''),(353,NULL,'MR2010230000018','Skun','5,5-6 Ring Merah',5,'10','Vendor Sinar Abadi','','','','','','',0,''),(354,NULL,'MR2010230000018','Skun','16-6',100,'11','Vendor Sinar Abadi','','','','','','',0,''),(355,NULL,'MR2010230000018','Skun','16-8',50,'11','Vendor Sinar Abadi','','','','','','',0,''),(356,NULL,'MR2010230000018','Heatsring ','4mm Hitam',5,'9','Vendor Duta Irama','','','','','','',0,''),(357,NULL,'MR2010230000018','Heatsring ','6mm Hitam',5,'9','Vendor Duta Irama','','','','','','',0,''),(358,NULL,'MR2010230000018','Heatsring ','8mm Hitam',5,'9','Vendor Duta Irama','','','','','','',0,''),(359,NULL,'MR2010230000018','Heatsring ','10mm Hitam',5,'9','Vendor Duta Irama','','','','','','',0,''),(360,NULL,'MR2010230000018','Heatsring ','12mm Hitam',5,'9','Vendor Duta Irama','','','','','','',0,''),(361,NULL,'MR2010230000018','Stopper ','E-UK',100,'11','Vendor Sinar Abadi','','','','','','',0,''),(362,'2020-11-11 00:00:00','MR2011110000019',' Box Panel ','Model RTU ',5,'14','Vendor Panel Maker','','','','','','',0,''),(363,'2020-11-11 00:00:00','MR2011110000019',' Transformer ','3 Phase, power capacity 20KVA, Primer : Tap1 L-L 380V Star / Tap2 L-L 480V Star, Sekunder Tap1 L-L 200V Star, Isolated Transformer, Bahan CU class F 1',5,'14','Vendor Difitech','','','','','','',0,''),(364,'2020-11-11 00:00:00','MR2011110000019',' Connector  ','IDC 24pin',10,'11','Vendor Tokopedia','','','','','','',0,''),(365,'2020-11-11 00:00:00','MR2011110000019',' Header Box ','24Pin',20,'11','Vendor Tokopedia','','','','','','',0,''),(366,'2020-11-11 00:00:00','MR2011110000019',' paku soder trafo ','3A',1,'10','Vendor  Tekad Makmur','','','','','','',0,''),(367,NULL,'MR2011120000020','LAPTOP','Intel core i7 3520 M. 2,90 Hz, RAM 4GB. DDR 3. Hard disk 320GB. VGA NVDIA. NVS 5200M. Finger print. 14',1,'14','Include upgrade memory and hard disc, bugdet needed Rp. 5,200,000,00 (acc by, Mr. Steffen Chandra) ','','','','','','',0,''),(369,'2020-11-18 00:00:00','MR2011180000021',' Box Panel ','Model RTU Steel construction with Indoor Service NEMA 12 Std',5,'14','Vendor Panel Maker','','','','','','',0,''),(370,'2020-11-18 00:00:00','MR2011180000021',' Box Coil Induction ','Steel construction with Outdoor Service NEMA 12 Std',15,'14','Vendor Panel Maker','','','','','','',0,''),(371,'2020-11-18 00:00:00','MR2011180000021',' Box Magnetic + Ultrasonic ','Steel construction with Outdoor Service NEMA 12 Std',5,'14','Vendor Panel Maker','','','','','','',0,''),(372,'2020-11-18 00:00:00','MR2011180000021',' LCD Display ','Touchscreen TFT 3,5\"',30,'11','Tokopedia','','','','','','',0,''),(373,'2020-11-18 00:00:00','MR2011180000021',' Arduino Mega 2560 ','PRO CH340',27,'11','Vendor Tokopedia','','','','','','',0,''),(374,'2020-11-18 00:00:00','MR2011180000021',' Connector  ','IDC 24 pin ',15,'11','Vendor Tokopedia','','','','','','',0,''),(375,'2020-11-18 00:00:00','MR2011180000021',' Pertinax ','5mm *120x240cm',1,'7','Vendor PD. Priangan ','','','','','','',0,''),(376,'2020-11-18 00:00:00','MR2011180000021',' Heatsink  ','12 sirip 30x12cm tebal 5mm',50,'11','Vendor Tokopedia','','','','','','',0,''),(380,'2020-11-02 00:00:00','MR2011200000022','Besi Baja Siku','Ukuran 40x40 panjang 6 Meter semi KS',72,'17','Project PHE Siak - Material pembuatan Water Tanki','Completed','PO2011240000091','','','','https://audemars.co.id/wp-content/uploads/2021/02/0066AMI-SP3XI2020-Material-Tanki-.pdf',95000,'High'),(379,'2020-11-02 00:00:00','MR2011200000022','Besi Plat HTM','Ukuran 1,4mm',48,'5','Project PHE Siak','Completed','PO2011240000091','','','','https://audemars.co.id/wp-content/uploads/2021/02/0066AMI-SP3XI2020-Material-Tanki-.pdf',400000,'High'),(381,'2020-11-02 00:00:00','MR2011200000022','Besi Baja UNP','Type UNP 50 Panjang 6 Meter',12,'17','Project PHE Siak','Completed','PO2011240000091','','','','https://audemars.co.id/wp-content/uploads/2021/02/0066AMI-SP3XI2020-Material-Tanki-.pdf',135000,'High'),(382,'2020-11-02 00:00:00','MR2011200000022','Cat Minyak Danalac','Isi 3,75 Ltr Warna Biru',6,'3','Project PHE Siak','Completed','PO2011240000091','','','','https://audemars.co.id/wp-content/uploads/2021/02/0066AMI-SP3XI2020-Material-Tanki-.pdf',210000,'High'),(383,'2020-11-02 00:00:00','MR2011200000022','Thinner','Merk Dakkar Isi 5 Liter ',5,'3','Project PHE Siak','Completed','PO2011240000091','','','','https://audemars.co.id/wp-content/uploads/2021/02/0066AMI-SP3XI2020-Material-Tanki-.pdf',80000,'High'),(384,'2020-11-02 00:00:00','MR2011200000022','Kawat Las','Merk Enka ukuran 2,6 mm',25,'4','Project PHE Siak','Completed','PO2011240000091','','','','https://audemars.co.id/wp-content/uploads/2021/02/0066AMI-SP3XI2020-Material-Tanki-.pdf',22000,'High'),(385,'2020-11-02 00:00:00','MR2011200000022','Bolt Valve Kuningan','Ukuran 2\"',12,'11','Project PHE Siak','Completed','Po2011240000092','','','','https://audemars.co.id/wp-content/uploads/2021/02/0067AMI-SP3XI2020-Material-Pompa-.pdf',400000,'High'),(386,'2020-11-02 00:00:00','MR2011200000022','Pipa Nepple','Ukuran 2\"',6,'11','Project PHE Siak - Untuk Koneksi dari Tanki ke Valve','Completed','PO2011240000092','','','','https://audemars.co.id/wp-content/uploads/2021/02/0067AMI-SP3XI2020-Material-Pompa-.pdf',85000,'High'),(387,'2020-11-02 00:00:00','MR2011200000022','Pipa Nepple ','Ukuran 2\"',12,'11','Project PHE Siak - Pipa koneksi dari Tangki ke Selang','Completed','PO2011240000092','','','','https://audemars.co.id/wp-content/uploads/2021/02/0067AMI-SP3XI2020-Material-Pompa-.pdf',85000,'High'),(388,'2020-11-02 00:00:00','MR2011200000022',' Water Pass ','',12,'11','Project PHE Siak','Paid','PO2011240000092','','','','',60000,'High'),(389,'2020-11-02 00:00:00','MR2011200000022','Terpal','Bahan Plastik Ukuran 4x5 Meter',2,'11','Project PHE Siak','Completed','PO2011240000092','','','','https://audemars.co.id/wp-content/uploads/2021/02/0067AMI-SP3XI2020-Material-Pompa-.pdf',200000,'High'),(390,'2020-11-02 00:00:00','MR2011200000022','Gerinda Potong','Merk Masayuki 14\"',2,'11','Project PHE Siak','Completed','PO2011240000091','','','','https://audemars.co.id/wp-content/uploads/2021/02/0066AMI-SP3XI2020-Material-Tanki-.pdf',26000,'High'),(392,'2020-11-02 00:00:00','MR2011200000022','Batu Potong Gerinda','Merk Ultra Uk. 4X6',5,'11','Project PHE Siak','Completed','PO2011240000091','','','','https://audemars.co.id/wp-content/uploads/2021/02/0066AMI-SP3XI2020-Material-Tanki-.pdf',8000,'High'),(391,'2020-11-02 00:00:00','MR2011200000022','Mata Batu Gerinda','Merk Masayuki Uk. 4x1 mm',50,'11','Project PHE Siak','Completed','PO2011240000091','','','','https://audemars.co.id/wp-content/uploads/2021/02/0066AMI-SP3XI2020-Material-Tanki-.pdf',3000,'High'),(393,NULL,'MR2011200000022','','',0,'0','','','','','','','',0,''),(394,'2020-11-26 00:00:00','MR2011260000023','Gear Pump Rotor Rk55 ','Gear Pump Rotor Rk55 + motor 1,5Kw 380V Pompa Oil/Pompa cairan kental, capasitas 55L/menit daya dorong 30mtr',3,'14','SPR Langgak - Pembelian bertahap (pembelian pertama 1 unit)','Completed','PO2012080000098','','','','https://audemars.co.id/wp-content/uploads/2021/02/0073AMI-SP3XII2020-PD.-Citra-Teknik-Gear-Pump-.pdf',4950000,'High'),(395,'2020-11-26 00:00:00','MR2011260000024','Thermal camera','Flir C5 compact thermal camera with wifi C5',1,'14','thermal camera untuk project','Completed','PO2102040000129','','','','https://audemars.co.id/wp-content/uploads/2021/02/0021AMI-SP3II2021-Margasetia-.pdf',16000000,'Medium'),(396,'2020-11-26 00:00:00','MR2011260000024','Camera Mirrorless','Canon EOS M100 Kit EF-M 15-45mm',1,'14','camera untuk project','','','','','','',0,''),(397,'2020-11-26 00:00:00','MR2011260000024','Tripod','Tripod attanta kaiser 234 2 gen',1,'14','peralatan pendukung camera untuk project','','','','','','',0,''),(398,NULL,'MR2011260000025','Fiber Flange','FRP Flange Ansi 300',12,'14','FRP Flange Ansi 300\r\nCustom','','','','','','',0,''),(399,'2020-11-27 00:00:00','MR2011270000026',' Netgear R7000 Nighthawk AC1900 Smart Wi-Fi Router ','',1,'14','','','','','','','',0,''),(400,'2020-11-27 00:00:00','MR2011270000026',' Google Chromecast 3 ','',2,'14','','','','','','','',0,''),(401,'2020-11-27 00:00:00','MR2011270000026',' USB WiFi 150Mbps Antenna Wireless Adapter Dongle ','',5,'11','','','','','','','',0,''),(402,'2020-11-27 00:00:00','MR2011270000026',' DLINK Switch Hub 8 Port DGS-1008 Gigabit ','',3,'13','','','','','','','',0,''),(403,NULL,'MR2011300000027','CPU Cooler','Noctua NH-D15',1,'11','','','','','','','',0,''),(404,NULL,'MR2011300000027','Cooler Fan','Noctua DC12V,14025 FAN,2000RPM,3PHASE MOTOR,IP67 (Water Proof) - NF-A14iPPC-2000 IP67',1,'14','','','','','','','',0,''),(405,NULL,'MR2011300000027','SSD','Samsung SSD 970 EVO PLUS M.2 1TB MZ-V7S1T0BW - Grs 5th',1,'14','','','','','','','',0,''),(406,NULL,'MR2011300000027','Harddisk','WDC 4TB SATA3 64MB - Black Ver.2 - WD4005FZBX - Garansi 5 Th',1,'14','','','','','','','',0,''),(407,NULL,'MR2011300000027','Casing','Corsair Carbide 678C (Black/White)',1,'14','','','','','','','',0,''),(408,NULL,'MR2011300000027','Keyboard','Logitech Wireless Desktop MK270r',1,'14','','','','','','','',0,''),(409,NULL,'MR2011300000027','PSU','EVGA 1000W - 1000 GQ - 80+ GOLD - 5 Year Warranty',1,'14','','','','','','','',0,''),(410,NULL,'MR2011300000027','VGA','MSI GeForce RTX 2060 6GB DDR6 - Ventus XS 6G OC',1,'14','','','','','','','',0,''),(411,NULL,'MR2011300000027','Mouse','Logitech M 221 Silent Wireless Mouse',1,'14','','','','','','','',0,''),(412,NULL,'MR2011300000027','UPS','APC Back-UPS RS 1500VA LCD, Master Control - BR1500Gi - Weight 15Kg',1,'14','','','','','','','',0,''),(413,NULL,'MR2011300000027','Processor','Ryzen 9 5900X 12 Core 24 Thread ( 4.8Ghz Max Boost Clock )',1,'14','','','','','','','',0,''),(414,NULL,'MR2011300000027','Motherboard','MSI B450-A Pro MAX (AM4, AMD Promontory B450, DDR4, USB3.2, SATA3)',1,'14','','','','','','','',0,''),(415,NULL,'MR2011300000027','RAM','Team Delta TUF DDR4 RGB PC25600 3200Mhz Dual Channel 32GB (2x16GB) 16-18-18-38 - TF9D432G3200HC16CDC01 - Black Heatspreader',1,'14','','','','','','','',0,''),(416,NULL,'MR2011300000028','Laptop Dell Inspiron 3593 [Ci7-1065G7-8-512-NVD-W10-BLK]','â€¢ Display 15.6-inch FHD (1920 x 1080) Anti-Glare LED-Backlit Non-touch Display â€¢ Processor 10th Generation IntelÂ® Coreâ„¢ i7-1065G7 Processor (8M',1,'13','','','','','','','',0,''),(417,'2020-11-30 00:00:00','MR2011300000029','IC','358 SMD',30,'11','Project PHE Siak - Vendor Duta Irama','Completed','PO2101250000118','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2101250000118-CV.-Jabbar-Global-Sinergi-hal.1-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',10000,'High'),(418,'2020-11-30 00:00:00','MR2011300000029','IC','3525 SMD',30,'11','Project PHE Siak - Vendor Duta Irama','Completed','PO2101250000118','','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',15000,'High'),(419,'2020-11-30 00:00:00','MR2011300000029','IC','LM7805',50,'11','Project PHE Siak - Vendor Duta Irama','Completed','PO2101250000118','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2101250000118-CV.-Jabbar-Global-Sinergi-hal.1-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',12000,'High'),(420,'2020-11-30 00:00:00','MR2011300000029','IC','LM7812',50,'11','Project PHE Siak - Vendor Duta Irama','Completed','PO2101250000118','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2101250000118-CV.-Jabbar-Global-Sinergi-hal.1-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',12000,'High'),(421,'2020-11-30 00:00:00','MR2011300000029','Transistor','BC337',100,'11','Project PHE Siak - Vendor Duta Irama','Completed','PO2101250000118','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2101250000118-CV.-Jabbar-Global-Sinergi-hal.1-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',10000,'High'),(422,'2020-11-30 00:00:00','MR2011300000029','IC','DS1669 DIP',100,'11','Project PHE Siak - Jabbar Electronics','Completed','PO2101250000118','','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',46000,'High'),(423,'2020-11-30 00:00:00','MR2011300000029','IC','IL 300 DIP',30,'11','Project PHE Siak - Jabbar Electronics','Completed','PO2101250000118','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2101250000118-CV.-Jabbar-Global-Sinergi-hal.1-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',35000,'High'),(424,'2020-11-30 00:00:00','MR2011300000029','LCD Display','Touchscreen TFT 3,5',30,'11','Project PHE Siak - Vendor Tokopedia','Completed','PO2101250000118','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2101250000118-CV.-Jabbar-Global-Sinergi-hal.1-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',215000,'High'),(425,'2020-11-30 00:00:00','MR2011300000029','Arduino Mega 2560','PRO CH340',27,'11','Project PHE Siak - Vendor Tokopedia','Completed','PO2101250000118','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2101250000118-CV.-Jabbar-Global-Sinergi-hal.1-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',195000,'High'),(426,'2020-11-30 00:00:00','MR2011300000029','Capacitor','100nF / 63V SM1206',100,'11','Project PHE Siak - Vendor Duta Irama','Completed','PO2101250000118','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2101250000118-CV.-Jabbar-Global-Sinergi-hal.1-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',1500,'High'),(427,'2020-11-30 00:00:00','MR2011300000029','Capacitor','1nF / 63V MKM',150,'11','Project PHE Siak - Vendor Duta Irama','Completed','PO2101250000118','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2101250000118-CV.-Jabbar-Global-Sinergi-hal.1-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',1500,'High'),(428,'2020-11-30 00:00:00','MR2011300000029','Capacitor','10nF / 63V MKM',200,'11','Project PHE Siak - Vendor Duta Irama','Completed','PO2101250000118','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2101250000118-CV.-Jabbar-Global-Sinergi-hal.1-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',1250,'High'),(429,'2020-11-30 00:00:00','MR2011300000029','Capacitor','1uF / 63V MKM',200,'11','Project PHE Siak - Vendor Duta Irama- barang diterima 199 pcs, untuk kekurangannya menyusul','Completed','PO2101250000118','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2101250000118-CV.-Jabbar-Global-Sinergi-hal.1-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',1300,'High'),(430,'2020-11-30 00:00:00','MR2011300000029','Capacitor','4,7uF / 35V',50,'11','Project PHE Siak - Vendor Duta Irama','Completed','PO2101250000118','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2101250000118-CV.-Jabbar-Global-Sinergi-hal.1-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',1500,'High'),(431,'2020-11-30 00:00:00','MR2011300000029','Capacitor','47uF 35V',100,'11','Project PHE Siak - Vendor Duta Irama','Completed','PO2101250000118','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2101250000118-CV.-Jabbar-Global-Sinergi-hal.1-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',2700,'High'),(432,'2020-11-30 00:00:00','MR2011300000029','Capacitor','100uF 35V',60,'11','Project PHE Siak - Vendor Duta Irama','Completed','PO2101250000118','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2101250000118-CV.-Jabbar-Global-Sinergi-hal.1-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',2800,'High'),(433,'2020-11-30 00:00:00','MR2011300000029','Capacitor','470uF 35V',60,'11','Project PHE Siak - Vendor Duta Irama','Completed','PO2101250000118','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2101250000118-CV.-Jabbar-Global-Sinergi-hal.1-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',2800,'High'),(434,'2020-11-30 00:00:00','MR2011300000029',' Connector  ','IDC 24 pin ',70,'11','Vendor Tokopedia','Approved','','','','','',0,''),(435,'2020-11-30 00:00:00','MR2011300000029',' Header Box Lurus ','24pin',70,'11','Vendor Tokopedia','Approved','','','','','',0,''),(436,'2020-11-30 00:00:00','MR2011300000029',' Kabel Pita ','24pin',5,'9','Vendor Tokopedia','Approved','','','','','',0,''),(437,'2020-11-30 00:00:00','MR2011300000029','Diode','4148',200,'11','Project PHE Siak - Vendor Duta Irama','Completed','PO2101250000118','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2101250000118-CV.-Jabbar-Global-Sinergi-hal.1-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',815,'High'),(438,'2020-11-30 00:00:00','MR2011300000029','Diode Zener','6,2 V',100,'11','Project PHE Siak - Vendor Duta Irama','Completed','PO2101250000118','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2101250000118-CV.-Jabbar-Global-Sinergi-hal.1-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',1250,'High'),(439,'2020-11-30 00:00:00','MR2011300000029','Diode Zener','18V 1W',300,'11','Project PHE Siak - Vendor Duta Irama','Completed','PO2101250000118','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2101250000118-CV.-Jabbar-Global-Sinergi-hal.2-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',1200,'High'),(440,'2020-11-30 00:00:00','MR2011300000029','Diode','4007',250,'11','Project PHE Siak - Vendor Duta Irama','Completed','PO2101250000118','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2101250000118-CV.-Jabbar-Global-Sinergi-hal.2-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',800,'High'),(441,'2020-11-30 00:00:00','MR2011300000029','Heatsink ','TO220',50,'11','Project PHE Siak - Vendor Duta Irama','Completed','PO2101250000118','','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',8000,'High'),(442,'2020-11-30 00:00:00','MR2011300000029','Multiturn','5K',60,'11','Project PHE Siak - Vendor Duta Irama','Completed','PO2101250000118','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2101250000118-CV.-Jabbar-Global-Sinergi-hal.2-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',25000,'High'),(443,'2020-11-30 00:00:00','MR2011300000029','Multiturn','10K',40,'11','Project PHE Siak - Vendor Duta Irama','Completed','PO2101250000118','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2101250000118-CV.-Jabbar-Global-Sinergi-hal.2-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',27000,'High'),(444,'2020-11-30 00:00:00','MR2011300000029','Resistor','1K / 0,25W SM1206',1000,'11','Project PHE Siak - Vendor Duta Irama','Completed','PO2101250000118','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2101250000118-CV.-Jabbar-Global-Sinergi-hal.2-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',300,'High'),(445,'2020-11-30 00:00:00','MR2011300000029','Resistor','22K 10W',50,'11','Project PHE Siak - Vendor Duta Irama','Completed','PO2101250000118','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2101250000118-CV.-Jabbar-Global-Sinergi-hal.2-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',13500,'High'),(446,'2020-11-30 00:00:00','MR2011300000029',' Tactical Switch ','2mm',50,'11','Vendor Duta Irama','Approved','','','','','',0,''),(447,'2020-11-30 00:00:00','MR2011300000029',' Transistor ','TIP31C',40,'11','Vendor Duta Irama','Approved','','','','','',0,''),(448,'2020-11-30 00:00:00','MR2011300000029',' Transistor ','TIP32C',100,'11','Vendor Duta Irama','Approved','','','','','',0,''),(449,'2020-11-30 00:00:00','MR2011300000029',' Varistor ','07D220K',50,'11','Vendor Duta Irama','Approved','','','','','',0,''),(450,'2020-11-30 00:00:00','MR2011300000029','  XTAL  ','16MHz',30,'11','Vendor Duta Irama','Approved','','','','','',0,'High'),(451,'2020-11-30 00:00:00','MR2011300000029',' Terminal Blok ','KF2 EDG 3 Pin Right Angel',100,'11','Vendor Duta Irama','Approved','','','','','',0,''),(452,'2020-11-30 00:00:00','MR2011300000029',' Terminal Blok ','KF2 EDG 6 Pin Right Angel',40,'11','Vendor Duta Irama','Approved','','','','','',0,''),(453,'2020-11-30 00:00:00','MR2011300000029',' Tinol ','0,25kg Paragon',5,'12','Vendor Duta Irama','Approved','','','','','',0,''),(454,'2020-11-30 00:00:00','MR2011300000029',' Trafo Ferit ','EE22',60,'11','Vendor SELC','Approved','','','','','',0,''),(455,'2020-11-30 00:00:00','MR2011300000029',' Trafo Ferit ','ETD33 Non GAP',22,'11','Vendor Tokopedia','Approved','','','','','',0,''),(456,'2020-11-30 00:00:00','MR2011300000029',' Socket IC ','8 Pin',100,'11','Vendor Duta Irama','Approved','','','','','',0,''),(457,'2020-11-30 00:00:00','MR2011300000029',' Box Panel ','Model RTU Steel Construction with Outdoor Service NEMA 12 Std',5,'14','Vendor Panel Maker','Approved','','','','','',0,''),(458,'2020-11-30 00:00:00','MR2011300000029',' Box Coil Induction ','Steel construction with Outdoor Service NEMA 12 Std',15,'14','Vendor Panel Maker','Approved','','','','','',0,''),(459,'2020-11-30 00:00:00','MR2011300000029',' Box Magnetic & Ultrasonic + Support  ','Steel construction with Outdoor Service NEMA 12 Std',5,'14','Vendor Panel Maker','Approved','','','','','',0,''),(460,'2020-11-30 00:00:00','MR2011300000029',' Kawat Email ','0,75 mm Supreme',25,'4','Vendor Tekad Makmur','Approved','','','','','',0,''),(461,'2020-11-30 00:00:00','MR2011300000029',' Kawat Email ','0,4 mm Supreme',5,'4','Vendor Tekad Makmur','Approved','','','','','',0,''),(462,'2020-11-30 00:00:00','MR2011300000029',' Kern EI ','57',6,'10','Vendor Tekad Makmur','Approved','','','','','',0,''),(463,'2020-11-30 00:00:00','MR2011300000029',' Koker Trafo ','57x80mm',17,'11','Vendor Tekad Makmur','Approved','','','','','',0,''),(464,'2020-11-30 00:00:00','MR2011300000029','Asdrat','M6',8,'9','Project PHE Siak - Vendor Kern','Completed','PO2012280000106','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000106-Kern-Teknik-surat-jalan-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0005AMI-SP3I2021-CV-Kern-Teknik-.pdf',6000,'Medium'),(465,'2020-11-30 00:00:00','MR2011300000029',' Kawat Email ','2,5 mm Supreme',1,'12','Vendor Tekad Makmur','Approved','','','','','',0,''),(466,'2020-11-30 00:00:00','MR2011300000029',' Insulax ','Class F Series 031',12,'3','Vendor Tekad Makmur','Approved','','','','','',0,''),(467,'2020-11-30 00:00:00','MR2011300000029',' Kaki Trafo ','57',50,'11','Vendor Tekad Makmur','Approved','','','','','',0,''),(468,'2020-11-30 00:00:00','MR2011300000029',' Pita Katun  ','1',15,'12','Vendor Tekad Makmur','Approved','','','','','',0,''),(469,'2020-11-30 00:00:00','MR2011300000029',' Selongsong Putih  ','1mm',25,'11','Vendor Tekad Makmur','Approved','','','','','',0,''),(470,'2020-11-30 00:00:00','MR2011300000029',' Selongsong Putih  ','3mm',20,'11','Vendor Tekad Makmur','Approved','','','','','',0,''),(471,'2020-11-30 00:00:00','MR2011300000029',' Pertinax ','5mm *50x50cm',2,'5','Vendor Tokopedia','Approved','','','','','',0,''),(472,'2020-11-30 00:00:00','MR2011300000029',' Kaki Trafo ','25',220,'11','Vendor Tekad Makmur','Approved','','','','','',0,''),(619,'2020-11-30 00:00:00','MR2011300000029',' Kern EI ','25',5,'10','Vendor Tekad Makmur','Approved','','','','','',0,''),(474,'2020-11-30 00:00:00','MR2011300000029',' Koker Trafo ','25x40mm',40,'11','Vendor Tekad Makmur','Approved','','','','','',0,''),(475,'2020-11-30 00:00:00','MR2011300000029',' Kawat Email ','0,3 mm Supreme',15,'4','Vendor Tekad Makmur','Approved','','','','','',0,''),(476,'2020-11-30 00:00:00','MR2011300000029','Thyristor','SKKT 172 16E Semikron',20,'11','Project PHE Siak - Vendor Jabbar Electronics','Completed','PO2101250000118','','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',525000,'High'),(477,'2020-11-30 00:00:00','MR2011300000029','Thyristor','SKKD 100 12E Semikron',8,'11','Project PHE Siak - Vendor Jabbar Electronics','Completed','PO2101250000118','','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',250000,'High'),(478,'2020-11-30 00:00:00','MR2011300000029','IGBT','SKM 200GB 125D',50,'11','Project PHE Siak - Vendor Jabbar Electronics','Completed','PO2101250000118','','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',795000,'High'),(479,'2020-11-30 00:00:00','MR2011300000029','Capacitor','2200uF 250VDC',15,'11','Project PHE Siak - Vendor Jabbar Electronics','Completed','PO2101250000118','','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',95000,'High'),(480,'2020-11-30 00:00:00','MR2011300000029','Capacitor','4700uF 400VDC *75x115 Screw',26,'11','Project PHE Siak - Vendor Jabbar Electronics','Completed','PO2101250000118','','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',595000,'High'),(481,'2020-11-30 00:00:00','MR2011300000029','Capacitor','SNUB-H 0,47uF 1200VDC',30,'11','Project PHE Siak - Vendor Jabbar Electronics','Completed','PO2101250000118','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2101250000118-CV.-Jabbar-Global-Sinergi-hal.2-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',49000,'High'),(482,NULL,'MR2011300000030','PCB','Sensor Circuit',120,'11','Vendor Spectra','','','','','','',0,''),(483,NULL,'MR2011300000030','Terminal Blok','2P Medium',1300,'11','Vendor Duta Irama','','','','','','',0,''),(484,NULL,'MR2011300000030','Power Supply','MCU Supply',100,'11','Glodok','','','','','','',0,''),(485,NULL,'MR2011300000030','Heatshrink','2mm',48,'11','Vendor Duta Irama','','','','','','',0,''),(486,NULL,'MR2011300000030','Tubing Stainless','OD 6mm',105,'11','Glodok','','','','','','',0,''),(487,NULL,'MR2011300000030','Tubing Stainless','OD 8mm',210,'11','Glodok','','','','','','',0,''),(488,NULL,'MR2011300000030','V-Sok Stainless','1/2\" Class 3000 1inch',105,'11','Glodok','','','','','','',0,''),(489,'2020-11-30 00:00:00','MR2011300000029','Holder Fuse','RT18-32 + Fill Fuse 10A',20,'11','Project PHE Siak - Vendor Surya Kencana','Completed','PO2101250000118','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2101250000118-CV.-Jabbar-Global-Sinergi-hal.2-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0016AMI-SP3I2021-CV-Jabbar-global-sinergi-.pdf',79000,'High'),(490,NULL,'MR2011300000030','Dop Stainless Steal','Class 3000 1inch',105,'11','Glodok','','','','','','',0,''),(491,'2020-11-30 00:00:00','MR2011300000029',' Holder Fuse ','4,2cm + Fill Fuse 10A',30,'11','Vendor Duta Irama','Approved','','','','','',0,''),(492,NULL,'MR2011300000030','Kabel AWG24','4 Jalur',7000,'9','Tokopedia','','','','','','',0,''),(493,'2020-11-30 00:00:00','MR2011300000029',' MCB  ','2 x 25A LS',15,'11','Vendor Surya Kencana','Approved','','','','','',0,''),(494,NULL,'MR2011300000030','Rubber','O-ring',400,'11','Glodok','','','','','','',0,''),(495,NULL,'MR2011300000030','Gland','PG9',400,'11','Tokopedia','','','','','','',0,''),(496,NULL,'MR2011300000030','Stainless Ring','ID6mm, OD8mm',300,'11','Glodok','','','','','','',0,''),(497,NULL,'MR2011300000030','Kabel NYMHY','2x1,5 Makita Hitam',4000,'9','Vendor Sinar Abadi','','','','','','',0,''),(498,NULL,'MR2011300000030','Voltage Regulator','LM7805',210,'11','Vendor Duta Irama','','','','','','',0,''),(499,NULL,'MR2011300000030','Timah','0,25kg Paragon',5,'12','Vendor Duta Irama','','','','','','',0,''),(500,NULL,'MR2011300000030','Plat Besi','Casing Sensor',105,'11','Vendor Bandung Panel Maker','','','','','','',0,''),(501,NULL,'MR2011300000030','Mekanik Watercut','Casing WC',105,'11','Vendor Bandung Panel Maker','','','','','','',0,''),(502,NULL,'MR2011300000030','Signal Condioning','WC Amplify',105,'11','Glodok','','','','','','',0,''),(503,NULL,'MR2011300000030','Kabel','NYAF 0,75mm Makita Hitam',500,'9','Vendor Sinar Abadi','','','','','','',0,''),(504,NULL,'MR2011300000030','Double Nepple Stainless','Steal 3/4 Insertion',420,'11','Glodok','','','','','','',0,''),(505,NULL,'MR2011300000030','Socket Stainless','Steal 3/4 Insertion',210,'11','Glodok','','','','','','',0,''),(506,NULL,'MR2011300000030','Pin Header','Female 1x40',250,'11','Glodok','','','','','','',0,''),(507,NULL,'MR2011300000030','Resistor ','SMD 1206/100 Ohm',400,'11','Vendor Duta Irama','','','https://audemars.co.id/wp-content/uploads/2021/02/MR030-PO2101250000117-CV.-Jabbar-Global-Sinergi-scaled.jpg','','','',0,''),(508,NULL,'MR2011300000030','Resistor ','SMD 1206/1K',4300,'11','Vendor Duta Irama','','','https://audemars.co.id/wp-content/uploads/2021/02/MR030-PO2101250000117-CV.-Jabbar-Global-Sinergi-scaled.jpg','','','',0,''),(509,NULL,'MR2011300000030','Resistor ','SMD 1206/10K',2400,'11','Vendor Duta Irama','','','https://audemars.co.id/wp-content/uploads/2021/02/MR030-PO2101250000117-CV.-Jabbar-Global-Sinergi-scaled.jpg','','','',0,''),(510,NULL,'MR2011300000030','Analog to Digital','ADS1115 16 Bit 12C Module adc 4 channel with pro gain amplifier',120,'11','Vendor WD Electronic','','','','','','',0,''),(565,'2020-11-30 00:00:00','MR2011300000029',' Lem ','Korea ',1,'10','Vendor Tokopedia','Approved','','','','','',0,''),(512,NULL,'MR2011300000030','Transistor','SMD 1308 LM317',120,'11','Vendor Duta Irama','','','','','','',0,''),(513,NULL,'MR2011300000030','Heatsink ','TO220',120,'11','Vendor Duta Irama','','','','','','',0,''),(514,NULL,'MR2011300000030','Variable Resistor Biru Putih duduk','10K',120,'11','Vendor Duta Irama','','','','','','',0,''),(515,NULL,'MR2011300000030','Variable Resistor ','100 Ohm',400,'11','Vendor Duta Irama','','','','','','',0,''),(516,NULL,'MR2011300000030','Resistor ','SMD 1206/100K',1200,'11','Vendor Duta Irama','','','https://audemars.co.id/wp-content/uploads/2021/02/MR030-PO2101250000117-CV.-Jabbar-Global-Sinergi-scaled.jpg','','','',0,''),(517,NULL,'MR2011300000030','OP-AMP','LM324 SMD',400,'11','Vendor Duta Irama','','','https://audemars.co.id/wp-content/uploads/2021/02/MR030-PO2101250000117-CV.-Jabbar-Global-Sinergi-scaled.jpg','','','',0,''),(518,NULL,'MR2011300000030','Temp-Transistor','LM317 SMD',400,'11','Vendor Duta Irama','','','https://audemars.co.id/wp-content/uploads/2021/02/MR030-PO2101250000117-CV.-Jabbar-Global-Sinergi-scaled.jpg','','','',0,''),(519,NULL,'MR2011300000030','Capacitor','SMD 1206 100nF/63V',1200,'11','Vendor Duta Irama','','','','','','',0,''),(520,NULL,'MR2011300000030','Capacitor','ELCO 100uF/50V',500,'11','Vendor Duta Irama- baru masuk 499pcs ','','','https://audemars.co.id/wp-content/uploads/2021/02/MR030-PO2101250000117-CV.-Jabbar-Global-Sinergi-scaled.jpg','','','',0,''),(521,NULL,'MR2011300000030','TEMP-REF','LM35',50,'11','Tokopedia','','','','','','',0,''),(522,NULL,'MR2011300000030','JST Socket','4-Pin',50,'11','Vendor Duta Irama','','','','','','',0,''),(523,NULL,'MR2011300000030','Terminal Blok','3p',50,'11','Vendor Duta Irama','','','','','','',0,''),(524,NULL,'MR2011300000030','LCD','2004A (16x2) + 12C',50,'11','Tokopedia','','','','','','',0,''),(525,NULL,'MR2011300000030','Terminal Baut','6x12',500,'11','Vendor Duta Irama','','','','','','',0,''),(526,NULL,'MR2011300000030','Push Button','12mm',1300,'11','Vendor Duta irama','','','','','','',0,''),(527,NULL,'MR2011300000030','Photo Transistor','3DU5C',240,'11','Tokopedia','','','','','','',0,''),(528,NULL,'MR2011300000030','Infrared Diode Laser','808nm 500mW',240,'11','Tokopedia','','','','','','',0,''),(529,'2020-11-30 00:00:00','MR2011300000029',' MCB  ','2 x 40A LS',22,'11','Vendor Surya Kencana','Approved','','','','','',0,''),(530,'2020-11-30 00:00:00','MR2011300000029',' MCB  ','2 x 63A LS',6,'11','Vendor Surya Kencana','Approved','','','','','',0,''),(531,'2020-11-30 00:00:00','MR2011300000029',' MCB  ','3 x 63A LS',6,'11','Vendor Surya Kencana','Approved','','','','','',0,''),(532,'2020-11-30 00:00:00','MR2011300000029','  Trafo  ','15CT15 / 2A',15,'11','Vendor Duta Irama','Approved','','','','','',0,''),(533,'2020-11-30 00:00:00','MR2011300000029','Power Supply','12 VDC-5A JPN',5,'11','Project PHE Siak - Vendor Duta Irama','Completed','PO2012280000103','https://audemars.co.id/wp-content/uploads/2021/02/MR029-Gerindo-Teknik2.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0003AMI-SP3I2021-Gerindo-Tehnik-.pdf',325000,'High'),(534,'2020-11-30 00:00:00','MR2011300000029',' AC Connector ','Plug C13',35,'11','Vendor Duta Irama','Approved','','','','','',0,''),(535,'2020-11-30 00:00:00','MR2011300000029',' AC Connector ','320',35,'11','Vendor Duta Irama','Approved','','','','','',0,''),(536,'2020-11-30 00:00:00','MR2011300000029',' Sensing Current ','ACS758 50A ',22,'11','Vendor Tokopedia','Approved','','','','','',0,''),(537,'2020-11-30 00:00:00','MR2011300000029',' Sensing Current ','ACS758 100A',7,'11','Vendor Tokopedia','Approved','','','','','',0,''),(538,'2020-11-30 00:00:00','MR2011300000029',' Binding Post ','333 6mm',60,'13','Vendor Tokopedia','Approved','','','','','',0,''),(539,'2020-11-30 00:00:00','MR2011300000029',' Binding Post ','555 8mm',25,'13','Vendor Tokopedia','Approved','','','','','',0,''),(540,'2020-11-30 00:00:00','MR2011300000029',' Resistor Shunt ','50A/75mV',20,'11','Vendor Tokopedia','Approved','','','','','',0,''),(541,'2020-11-30 00:00:00','MR2011300000029',' Resistor Shunt ','100A 75mV',6,'11','Vendor Tokopedia','Approved','','','','','',0,''),(542,'2020-11-30 00:00:00','MR2011300000029','Busbar','3x15mm *4m',2,'17','Project PHE Siak - Vendor Tokopedia','Completed','PO2012280000103','https://audemars.co.id/wp-content/uploads/2021/02/MR029-Gerindo-Tehnik-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0003AMI-SP3I2021-Gerindo-Tehnik-.pdf',240000,'High'),(543,'2020-11-30 00:00:00','MR2011300000029',' Terminal Blok ','IN411',100,'11','Vendor Surya Kencana','Approved','','','','','',0,''),(544,'2020-11-30 00:00:00','MR2011300000029',' Thermoswitch ','KSD302 75Â°C NO',25,'11','Vendor Duta Irama','Approved','','','','','',0,''),(545,'2020-11-30 00:00:00','MR2011300000029',' Heatsink  ','12 sirip 30x12cm Tebal 5mm',50,'11','Vendor Tokopedia','Approved','','','','','',0,''),(546,'2020-11-30 00:00:00','MR2011300000029',' Trafo Ferit ','ETD49 Non Gap',25,'11','Vendor Tokopedia','Approved','','','','','',0,''),(547,'2020-11-30 00:00:00','MR2011300000029','Fan','12x12cm 220VAC Winner',65,'11','Project PHE Siak - Vendor Duta Irama','Completed','PO2012280000103','https://audemars.co.id/wp-content/uploads/2021/02/MR029-Gerindo-Teknik2.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0003AMI-SP3I2021-Gerindo-Tehnik-.pdf',80000,'High'),(548,'2020-11-30 00:00:00','MR2011300000029','Kabel ','NYAF 0,75mm Hitam',6,'12','Project PHE Siak - Vendor Surya Kencana','Completed','PO2012280000103','https://audemars.co.id/wp-content/uploads/2021/02/MR029-Gerindo-Tehnik-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0003AMI-SP3I2021-Gerindo-Tehnik-.pdf',180000,'High'),(549,'2020-11-30 00:00:00','MR2011300000029','Kabel ','NYAF 2,5mm Hitam',2,'12','Project PHE Siak - Vendor Surya Kencana','Completed','PO2012220000102','https://audemars.co.id/wp-content/uploads/2021/02/MR029-Noxindo-Cakrawala2.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0075AMI-SP3XII2020-PT-Noxindo-.pdf',407000,'Medium'),(550,'2020-11-30 00:00:00','MR2011300000029','Kabel ','NYAF 4mm Hitam',2,'12','Project PHE Siak - Vendor Surya Kencana','Completed','PO2012220000102','https://audemars.co.id/wp-content/uploads/2021/02/MR029-Noxindo-Cakrawala2.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0075AMI-SP3XII2020-PT-Noxindo-.pdf',638000,'Medium'),(551,'2020-11-30 00:00:00','MR2011300000029','Kabel ','NYAF 6mm Hitam',2,'12','Project PHE Siak - Vendor Surya Kencana','Completed','PO2012220000102','https://audemars.co.id/wp-content/uploads/2021/02/MR029-Noxindo-Cakrawala2.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0075AMI-SP3XII2020-PT-Noxindo-.pdf',935000,'Medium'),(552,'2020-11-30 00:00:00','MR2011300000029','Kabel ','NYAF 10mm',1,'12','Project PHE Siak - Vendor Surya Kencana ','Completed','PO2012220000102','https://audemars.co.id/wp-content/uploads/2021/02/MR029-Noxindo-Cakrawala2.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0075AMI-SP3XII2020-PT-Noxindo-.pdf',1551000,'Medium'),(553,'2020-11-30 00:00:00','MR2011300000029','Kabel ','NYVIN 4mm',10,'12','Project PHE Siak - Vendor Tokopedia','Completed','PO2012220000102','https://audemars.co.id/wp-content/uploads/2021/02/MR029-Noxindo-Cakrawala2.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0075AMI-SP3XII2020-PT-Noxindo-.pdf',1650000,'Medium'),(554,'2020-11-30 00:00:00','MR2011300000029',' Kabel  ','NYAF 4mm Grounding',50,'9','Vendor Surya Kencana','Approved','','','','','',0,''),(555,'2020-11-30 00:00:00','MR2011300000029',' Rod Stainless  ','1/2\" 304',5,'9','Vendor Haparan Baru Cikarang','Approved','','','','','',0,''),(556,'2020-11-30 00:00:00','MR2011300000029','Kabel ','NYYHY 2x2,5mm',300,'9','Project PHE Siak - Vendor Belltronic Indonesia','Completed','PO2012280000104','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000104-Surat-Jalan-Noxindo-Cakrawala1.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0001AMI-SP3I2021-Noxindo-.pdf',11400,'Medium'),(557,'2020-11-30 00:00:00','MR2011300000029','Kabel','NYYHY 2x4mm',300,'9','Project PHE Siak - Vendor Belltronic Indonesia','Completed','PO2012280000104','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000104-Surat-Jalan-Noxindo-Cakrawala1-1.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0001AMI-SP3I2021-Noxindo-.pdf',17400,'Medium'),(558,'2020-11-30 00:00:00','MR2011300000029','Kabel ','NYYHY 3x6mm',250,'9','Project PHE Siak - Vendor Belltronic Indonesia','Completed','PO2012220000102','https://audemars.co.id/wp-content/uploads/2021/02/MR029-Noxindo-Cakrawala2.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0075AMI-SP3XII2020-PT-Noxindo-.pdf',37600,'Medium'),(559,'2020-11-30 00:00:00','MR2011300000029','Kain Teflon','40x40cm / PTFE sheet 260 C',50,'5','Project PHE Siak - Vendor Tokopedia','Completed','PO2012280000105','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000105-PT.-Kharisma-Wira-Persada.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0007AMI-SP3I2021-PT-KHARISMA-WIRA-PERSADA-.pdf',265000,'Medium'),(560,'2020-11-30 00:00:00','MR2011300000029','Sensor Temperature','WZP PT100',7,'11','Project PHE Siak - Vendor Tokopedia','Completed','PO2012280000105','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000105-PT.-Kharisma-Wira-Persada.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0007AMI-SP3I2021-PT-KHARISMA-WIRA-PERSADA-.pdf',65000,'Medium'),(561,'2020-11-30 00:00:00','MR2011300000029','Kabel ','NYYHY 3x1,5mm',1,'12','Project PHE Siak - Vendor Surya Kencana','Completed','PO2012220000102','https://audemars.co.id/wp-content/uploads/2021/02/MR029-Noxindo-Cakrawala2.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0075AMI-SP3XII2020-PT-Noxindo-.pdf',902000,'Medium'),(562,'2020-11-30 00:00:00','MR2011300000029','Kabel ','NYYHY 2x1,5mm',1,'12','Project PHE Siak - Vendor Surya Kencana','Completed','PO2012220000102','https://audemars.co.id/wp-content/uploads/2021/02/MR029-Noxindo-Cakrawala2.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0075AMI-SP3XII2020-PT-Noxindo-.pdf',649000,'Medium'),(563,'2020-11-30 00:00:00','MR2011300000029','Kabel ','NYVIN 2,5mm',3,'12','Project PHE Siak - Vendor Tokopedia','Completed','PO2012220000102','https://audemars.co.id/wp-content/uploads/2021/02/MR029-Noxindo-Cakrawala2.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0075AMI-SP3XII2020-PT-Noxindo-.pdf',1056000,'Medium'),(564,'2020-11-30 00:00:00','MR2011300000029',' Fiber Merah ','1,5mm',1,'5','Vendor Tokopedia','Approved','','','','','',0,''),(566,'2020-11-30 00:00:00','MR2011300000029','Duct Cable','45x45mm',20,'17','Project PHE Siak - Vendor Surya Kencana','Completed','PO2012280000103','https://audemars.co.id/wp-content/uploads/2021/02/MR029-Gerindo-Tehnik-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0003AMI-SP3I2021-Gerindo-Tehnik-.pdf',50000,'High'),(567,'2020-11-30 00:00:00','MR2011300000029','Rel MCB','Alumunium',15,'9','Project PHE Siak - Vendor Surya kencana','Completed','PO2012280000103','https://audemars.co.id/wp-content/uploads/2021/02/MR029-Gerindo-Tehnik-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0003AMI-SP3I2021-Gerindo-Tehnik-.pdf',30000,'High'),(568,'2020-11-30 00:00:00','MR2011300000029',' Cable Gland  ','PG16',80,'11','Vendor Surya kencana','Approved','','','','','',0,''),(569,'2020-11-30 00:00:00','MR2011300000029','Cable Gland ','PG25',15,'11','Project PHE Siak - Vendor Surya kencana','Completed','PO2012280000103','https://audemars.co.id/wp-content/uploads/2021/02/MR029-Gerindo-Tehnik-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0003AMI-SP3I2021-Gerindo-Tehnik-.pdf',8000,'High'),(570,'2020-11-30 00:00:00','MR2011300000029',' Tie Mount ','HC-101',5,'10','Vendor Surya Kencana','Approved','','','','','',0,''),(571,'2020-11-30 00:00:00','MR2011300000029','Skun','Gepeng 3mm Female',600,'11','Project PHE Siak - Vendor Duta Irama','Completed','PO2012280000103','https://audemars.co.id/wp-content/uploads/2021/02/MR029-Gerindo-Teknik2.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0003AMI-SP3I2021-Gerindo-Tehnik-.pdf',550,'High'),(572,'2020-11-30 00:00:00','MR2011300000029','Ferrules','0,75mm Putih',5,'10','Project PHE Siak - Vendor Surya Kencana','Completed','PO2012280000103','https://audemars.co.id/wp-content/uploads/2021/02/MR029-Gerindo-Teknik2.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0003AMI-SP3I2021-Gerindo-Tehnik-.pdf',15000,'High'),(573,'2020-11-30 00:00:00','MR2011300000029','Ferrules','0,75mm Biru',5,'10','Project PHE Siak - Vendor Surya Kencana','Completed','PO2012280000103','https://audemars.co.id/wp-content/uploads/2021/02/MR029-Gerindo-Tehnik-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0003AMI-SP3I2021-Gerindo-Tehnik-.pdf',15000,'High'),(574,'2020-11-30 00:00:00','MR2011300000029','Skun','1,25-3y Merah',5,'10','Project PHE Siak - Vendor Surya Kencana','Completed','PO2012280000103','https://audemars.co.id/wp-content/uploads/2021/02/MR029-Gerindo-Tehnik-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0003AMI-SP3I2021-Gerindo-Tehnik-.pdf',25000,'High'),(575,'2020-11-30 00:00:00','MR2011300000029','Skun','1,25-3y Hitam',5,'10','Project PHE Siak - Vendor Surya kencana','Completed','PO2012280000103','https://audemars.co.id/wp-content/uploads/2021/02/MR029-Gerindo-Tehnik-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0003AMI-SP3I2021-Gerindo-Tehnik-.pdf',25000,'High'),(576,'2020-11-30 00:00:00','MR2011300000029','Skun','1,25-3y Biru',5,'10','Project PHE Siak - Vendor Surya Kencana','Completed','PO2012280000103','https://audemars.co.id/wp-content/uploads/2021/02/MR029-Gerindo-Tehnik-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0003AMI-SP3I2021-Gerindo-Tehnik-.pdf',25000,'High'),(577,'2020-11-30 00:00:00','MR2011300000029',' Skun ','5,5-6 Ring Hitam',5,'10','Vendor Surya Kencana','Approved','','','','','',0,''),(578,'2020-11-30 00:00:00','MR2011300000029',' Skun ','5,5-6 Ring Biru',5,'10','Vendor Surya Kencana','Approved','','','','','',0,''),(579,'2020-11-30 00:00:00','MR2011300000029',' Skun ','5,5-6 Ring Merah',5,'10','Vendor Surya Kencana','Approved','','','','','',0,''),(580,'2020-11-30 00:00:00','MR2011300000029',' Skun ','5,5-8 Ring Hitam',2,'10','Vendor Surya kencana','Approved','','','','','',0,''),(581,'2020-11-30 00:00:00','MR2011300000029',' Skun ','5,5-8 Ring Merah',2,'10','Vendor Surya Kencana','Approved','','','','','',0,''),(582,'2020-11-30 00:00:00','MR2011300000029',' Skun ','5,5-8 Ring Biru',2,'10','Vendor Surya Kencana','Approved','','','','','',0,''),(583,'2020-11-30 00:00:00','MR2011300000029','Skun','10-6',100,'11','Project PHE Siak - Vendor Surya Kencana','Completed','PO2012280000103','https://audemars.co.id/wp-content/uploads/2021/02/MR029-Gerindo-Tehnik-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0003AMI-SP3I2021-Gerindo-Tehnik-.pdf',1500,'High'),(584,'2020-11-30 00:00:00','MR2011300000029',' Skun  ','10-8',100,'11','Vendor Surya Kencana','Approved','','','','','',0,''),(585,'2020-11-30 00:00:00','MR2011300000029',' Heatsring  ','4mm',10,'9','Vendor Duta Irama','Approved','','','','','',0,''),(586,'2020-11-30 00:00:00','MR2011300000029',' Heatsring  ','6mm',10,'9','Vendor Duta Irama','Approved','','','','','',0,''),(587,'2020-11-30 00:00:00','MR2011300000029',' Heatsring  ','8mm',10,'9','Vendor Duta Irarme','Approved','','','','','',0,''),(588,'2020-11-30 00:00:00','MR2011300000029',' Heatsring  ','10mm',10,'9','Vendor Duta Irama','Approved','','','','','',0,''),(589,'2020-11-30 00:00:00','MR2011300000029',' Heatsring  ','12mm',5,'9','Vendor Duta irama','Approved','','','','','',0,''),(590,'2020-11-30 00:00:00','MR2011300000029',' Stopper  ','E-UK',100,'11','Vendor Surya kencana','Approved','','','','','',0,''),(591,'2020-11-30 00:00:00','MR2011300000029',' Nameplat ','Stainless',5,'14','Vendor Martunas Jaya','Approved','','','','','',0,''),(592,'2020-11-30 00:00:00','MR2011300000029','Baut ','JP M4x10mm',500,'11','Project PHE Siak - Vendor Kern','Completed','PO2012280000106','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000106-Kern-Teknik-surat-jalan-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0005AMI-SP3I2021-CV-Kern-Teknik-.pdf',100,'Medium'),(593,'2020-11-30 00:00:00','MR2011300000029','Baut ','JP M4x50mm',200,'11','Project PHE Siak - Vendor Kern','Completed','PO2012280000106','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000106-Kern-Teknik-surat-jalan-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0005AMI-SP3I2021-CV-Kern-Teknik-.pdf',300,'Medium'),(594,'2020-11-30 00:00:00','MR2011300000029','Baut ','JP M5x15',100,'11','Project PHE Siak - Vendor Kern','Completed','PO2012280000106','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000106-Kern-Teknik-surat-jalan-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0005AMI-SP3I2021-CV-Kern-Teknik-.pdf',150,'Medium'),(595,'2020-11-30 00:00:00','MR2011300000029','Baut ','JP M6x15',200,'11','Project PHE Siak - Vendor Kern','Completed','PO2012280000106','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000106-Kern-Teknik-surat-jalan-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0005AMI-SP3I2021-CV-Kern-Teknik-.pdf',250,'Medium'),(596,'2020-11-30 00:00:00','MR2011300000029','Mur','M4',500,'11','Project PHE Siak - Vendor Kern ','Completed','PO2012280000106','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000106-Kern-Teknik-surat-jalan-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0005AMI-SP3I2021-CV-Kern-Teknik-.pdf',100,'Medium'),(597,'2020-11-30 00:00:00','MR2011300000029','Ring Plat','M4',400,'11','Project PHE Siak - Vendor Kern','Completed','PO2012280000106','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000106-Kern-Teknik-surat-jalan-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0005AMI-SP3I2021-CV-Kern-Teknik-.pdf',50,'Medium'),(598,'2020-11-30 00:00:00','MR2011300000029','Mata Bor','2,5mm Nachi',2,'11','Project PHE Siak - Vendor Kern','Completed','PO2012280000106','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000106-Kern-Teknik-surat-jalan-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0005AMI-SP3I2021-CV-Kern-Teknik-.pdf',15000,'Medium'),(599,'2020-11-30 00:00:00','MR2011300000029','Mata Bor','3mm Nachi',2,'11','Project PHE Siak - Vendor Kern','Completed','PO2012280000106','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000106-Kern-Teknik-surat-jalan-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0005AMI-SP3I2021-CV-Kern-Teknik-.pdf',15000,'Medium'),(600,'2020-11-30 00:00:00','MR2011300000029','Mata Bor','4mm Nachi',2,'11','Project PHE Siak - Vendor Kern','Completed','PO2012280000106','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000106-Kern-Teknik-surat-jalan-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0005AMI-SP3I2021-CV-Kern-Teknik-.pdf',20000,'Medium'),(601,'2020-11-30 00:00:00','MR2011300000029','Mata Bor','5,5mm Nachi',2,'11','Project PHE Siak - Vendor Kern','Completed','PO2012280000106','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000106-Kern-Teknik-surat-jalan-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0005AMI-SP3I2021-CV-Kern-Teknik-.pdf',30000,'Medium'),(602,'2020-11-30 00:00:00','MR2011300000029','Mata Bor','6mm Nachi',2,'11','Project PHE Siak - Vendor Kern','Completed','PO2012280000106','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000106-Kern-Teknik-surat-jalan-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0005AMI-SP3I2021-CV-Kern-Teknik-.pdf',35000,'Medium'),(603,'2020-11-30 00:00:00','MR2011300000029','Mata Bor','8mm Nachi',1,'11','Project PHE Siak - Vendor Kern','Completed','PO2012280000106','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000106-Kern-Teknik-surat-jalan-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0005AMI-SP3I2021-CV-Kern-Teknik-.pdf',50000,'Medium'),(604,'2020-11-30 00:00:00','MR2011300000029','Mata Bor','10mm Nachi',1,'11','Project PHE Siak - Vendor Kern','Completed','PO2012280000106','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000106-Kern-Teknik-surat-jalan-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0005AMI-SP3I2021-CV-Kern-Teknik-.pdf',80000,'Medium'),(605,'2020-11-30 00:00:00','MR2011300000029','Mata Bor','12mm Nachi',1,'11','Project PHE Siak - Vendor Kern','Completed','PO2012280000106','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000106-Kern-Teknik-surat-jalan-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0005AMI-SP3I2021-CV-Kern-Teknik-.pdf',125000,'Medium'),(606,'2020-11-30 00:00:00','MR2011300000029','Mata Jigsaw Besi','T118A',1,'10','Project PHE Siak - Vendor Kern','Completed','PO2012280000106','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000106-Kern-Teknik-surat-jalan-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0005AMI-SP3I2021-CV-Kern-Teknik-.pdf',75000,'Medium'),(607,'2020-11-30 00:00:00','MR2011300000029','Mata Gerinda Potong','14\" Resibon',3,'11','Project PHE Siak - Vendor Kern','Completed','PO2012280000106','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000106-Kern-Teknik-surat-jalan-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0005AMI-SP3I2021-CV-Kern-Teknik-.pdf',60000,'Medium'),(608,'2020-11-30 00:00:00','MR2011300000029','Amplas','1000',10,'5','Project PHE Siak - Vendor Kern','Completed','PO2012280000106','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000106-Kern-Teknik-surat-jalan-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0005AMI-SP3I2021-CV-Kern-Teknik-.pdf',7500,'Medium'),(609,'2020-11-30 00:00:00','MR2011300000029','Hand Tap','M3',2,'10','Project PHE Siak - Vendor Kern','Completed','PO2012280000106','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000106-Kern-Teknik-surat-jalan-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0005AMI-SP3I2021-CV-Kern-Teknik-.pdf',25000,'Medium'),(610,'2020-11-30 00:00:00','MR2011300000029','Hand Tap','M4',2,'10','Project PHE Siak - Vendor Kern','Completed','PO2012280000106','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000106-Kern-Teknik-surat-jalan-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0005AMI-SP3I2021-CV-Kern-Teknik-.pdf',25000,'Medium'),(611,'2020-11-30 00:00:00','MR2011300000029','Hand Tap','M5',2,'10','Project PHE Siak - Vendor Kern','Completed','PO2012280000106','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000106-Kern-Teknik-surat-jalan-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0005AMI-SP3I2021-CV-Kern-Teknik-.pdf',25000,'Medium'),(612,'2020-11-30 00:00:00','MR2011300000029','Hand Tap','M6',2,'10','Project PHE Siak - Vendor Kern','Completed','PO2012280000106','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000106-Kern-Teknik-surat-jalan-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0005AMI-SP3I2021-CV-Kern-Teknik-.pdf',27500,'Medium'),(613,'2020-11-30 00:00:00','MR2011300000029','Asdrat','M8',20,'9','Project PHE Siak - Vendor Kern','Completed','PO2012280000106','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012280000106-Kern-Teknik-surat-jalan-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0005AMI-SP3I2021-CV-Kern-Teknik-.pdf',10000,'Medium'),(614,'2020-11-30 00:00:00','MR2011300000029','Cat','Hitam Dof Nippe',2,'4','Project PHE Siak - Vendor Sinar Warna','Completed','PO2012150000100','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012150000100-Sinar-Warna-Surat-jalan.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0006AMI-SP3I2021-Toko-Sinar-Warna-.pdf',72000,'Medium'),(615,'2020-11-30 00:00:00','MR2011300000029','Thinner','Impala',5,'19','Project PHE Siak - Vendor Sinar Warna','Completed','PO2012150000100','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012150000100-Sinar-Warna-Surat-jalan.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0006AMI-SP3I2021-Toko-Sinar-Warna-.pdf',19600,'Medium'),(616,'2020-11-30 00:00:00','MR2011300000029',' Epoxy ','Resin Hardener',1,'4','Project PHE Siak - Vendor Tokopedia','Approved','','','','','',0,'Medium'),(617,'2020-11-30 00:00:00','MR2011300000029',' Kayu ','Palet Box Panel',5,'14','Vendor Toko Bangunan','Approved','','','','','',0,''),(618,'2020-11-30 00:00:00','MR2011300000029',' Clamp Pipa ','4\"',160,'11','Vendor Tokopedia','Approved','','','','','',0,''),(620,'2020-11-30 00:00:00','MR2011300000029','Cable Ties','10cm Hitam *100pcs',15,'10','Project PHE Siak - Vendor Surya kencana','Completed','PO2012280000103','https://audemars.co.id/wp-content/uploads/2021/02/MR029-Gerindo-Tehnik-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0003AMI-SP3I2021-Gerindo-Tehnik-.pdf',15000,'High'),(621,'2020-11-30 00:00:00','MR2011300000029',' Isolasi ','Hitam',2,'11','Vendor Surya Kencana','Approved','','','','','',0,''),(622,'2020-11-30 00:00:00','MR2011300000029',' Isolasi ','Merah',2,'11','Vendor Surya Kencana','Approved','','','','','',0,''),(623,'2020-11-30 00:00:00','MR2011300000029',' Isolasi ','Kuning',2,'11','Vendor Surya Kencana','Approved','','','','','',0,''),(624,'2020-11-30 00:00:00','MR2011300000029',' Isolasi ','Biru',2,'11','Vendor Surya Kencana','Approved','','','','','',0,''),(625,'2020-11-30 00:00:00','MR2011300000031',' Box Panel ','Model RTU Steel construction with Indoor Service NEMA 12 Std',5,'14','Vendor Panel Maker','Approved','','','','','',0,''),(626,'2020-11-30 00:00:00','MR2011300000031',' LCD Display ','Touchscreen TFT 3,5\" ILI9486',7,'11','Vendor Tokopedia','Approved','','https://audemars.co.id/wp-content/uploads/2021/02/MR031-PO2101250000116-CV.-Jabbar-Global-Sinergi-scaled.jpg','','','',0,''),(627,'2020-11-30 00:00:00','MR2011300000031',' Arduino Mega 2560 ','PRO CH340',7,'11','Vendor Tokopedia','Approved','','https://audemars.co.id/wp-content/uploads/2021/02/MR031-PO2101250000116-CV.-Jabbar-Global-Sinergi-scaled.jpg','','','',0,''),(628,'2020-11-30 00:00:00','MR2011300000031',' Potensiometer ','Mono 10K',5,'11','Vendor Duta Irama','Approved','','https://audemars.co.id/wp-content/uploads/2021/02/MR031-PO2101250000116-CV.-Jabbar-Global-Sinergi-scaled.jpg','','','',0,''),(629,'2020-11-30 00:00:00','MR2011300000031',' Potensiometer ','3950 S 10K + Knop',5,'11','Vendor Duta Irama','Approved','','','','','',0,''),(630,'2020-11-30 00:00:00','MR2011300000031',' Togle Switch ','On/Off/On BA-09C',5,'11','Vendor Duta Irama','Approved','','','','','',0,''),(631,'2020-11-30 00:00:00','MR2011300000031','Transformer','Capacity 25KVA, Primer : Tap1 380V Star, Tap2 480V Star. Sekunder : 200V Star. Isolated Transformer, Bahan kawat tembaga Supreme Class, Drying',5,'14','Project PHE Siak - Vendor Difatech','Paid','PO2012110000099','','','','https://audemars.co.id/wp-content/uploads/2021/02/0074AMI-SP3XII2020-Gerindo-Tehnik-Transformer-.pdf',23500000,'High'),(632,'2020-11-30 00:00:00','MR2011300000031',' Kern EI ','57',5,'10','Vendor Tekad Makmur','Approved','','','','','',0,''),(633,'2020-11-30 00:00:00','MR2011300000031',' Koker Trafo ','57x80mm',10,'11','Vendor Tekad Makmur','Approved','','','','','',0,''),(634,'2020-11-30 00:00:00','MR2011300000031',' Kawat Email ','2,5 mm Supreme',1,'12','Vendor Tekad Makmur','Approved','','','','','',0,''),(635,'2020-11-30 00:00:00','MR2011300000031',' Kaki Trafo ','57',30,'11','Vendor Tekad Makmur','Approved','','','','','',0,''),(636,'2020-11-30 00:00:00','MR2011300000031',' Pita Katun  ','1\"',2,'12','Vendor Tekad Makmur','Approved','','','','','',0,''),(637,'2020-11-30 00:00:00','MR2011300000031',' Pertinax ','5mm *50x50cm',1,'7','Vendor Tokopedia','Approved','','','','','',0,''),(638,'2020-11-30 00:00:00','MR2011300000031',' Asdrat ','M6',10,'9','Vendor Kern','Approved','','','','','',0,''),(639,'2020-11-30 00:00:00','MR2011300000031',' Kern EI ','25',2,'10','Vendor Tekad Makmur','Approved','','','','','',0,''),(640,'2020-11-30 00:00:00','MR2011300000031',' Kaki Trafo ','25',100,'11','Vendor Tekad Makmur','Approved','','','','','',0,''),(641,'2020-11-30 00:00:00','MR2011300000031',' Selongsong Putih  ','1mm',15,'11','Vendor Tekad Makmur','Approved','','','','','',0,''),(642,'2020-11-30 00:00:00','MR2011300000031',' Selongsong Putih  ','3mm',5,'11','Vendor Tekad Makmur','Approved','','','','','',0,''),(643,'2020-11-30 00:00:00','MR2011300000031',' Koker Trafo ','25x40mm',20,'11','Vendor Tekad Makmur','Approved','','','','','',0,''),(644,'2020-11-30 00:00:00','MR2011300000031',' Kawat Email ','0,3 mm Supreme',5,'4','Vendor Tekad Makmur','Approved','','','','','',0,''),(645,'2020-11-30 00:00:00','MR2011300000031',' Insulax ','Class F Series 031',5,'3','Vendor Tekad Makmur','Approved','','','','','',0,''),(646,'2020-11-30 00:00:00','MR2011300000031',' Paku Soder Trafo ','3A',1,'10','Vendor Tekad Makmur','Approved','','','','','',0,''),(647,'2020-11-30 00:00:00','MR2011300000031',' Thyristor ','SKKT 172 16E Semikron',20,'11','Vendor Jabbar Electrinics','Approved','','','','','',0,''),(648,'2020-11-30 00:00:00','MR2011300000031',' Thyristor ','SKKD 100 12E Semikron',7,'11','Vendor Jabbar Electronics','Approved','','','','','',0,''),(649,'2020-11-30 00:00:00','MR2011300000031',' IC ','DS 1669 DIP',15,'11','Vendor Jabbar Electronics','Approved','','','','','',0,''),(650,'2020-11-30 00:00:00','MR2011300000031',' IC ','IL 300 DIP',10,'11','Vendor Jabbar Electronics','Approved','','https://audemars.co.id/wp-content/uploads/2021/02/MR031-PO2101250000116-CV.-Jabbar-Global-Sinergi-scaled.jpg','','','',0,''),(651,'2020-11-30 00:00:00','MR2011300000031',' Capacitor ','4700uF 400VDC *75x115 Screw',12,'11','Vendor Jabbar Electronics','Approved','','','','','',0,''),(652,'2020-11-30 00:00:00','MR2011300000031',' Connector  ','IDC 24 pin ',20,'11','Vendor Tokopedia','Approved','','','','','',0,''),(653,'2020-11-30 00:00:00','MR2011300000031',' Header Box Lurus ','24 Pin',20,'11','Vendor Tokopedia','Approved','','','','','',0,''),(654,'2020-11-30 00:00:00','MR2011300000031',' Kabel Pita ','24 Pin',2,'9','Vendor Tokopedia','Approved','','','','','',0,''),(655,'2020-11-30 00:00:00','MR2011300000031',' MCB  ','3x63A LS',5,'11','Vendor Surya Kencana','Approved','','','','','',0,''),(656,'2020-11-30 00:00:00','MR2011300000031',' MCCB ','EZC100F 100A Schneider',5,'11','Vendor Surya Kencana','Approved','','','','','',0,''),(657,'2020-11-30 00:00:00','MR2011300000031',' Holder Fuse ','RT18-32 + Fill Fuse 10A',15,'11','Vendor Surya Kencana','Approved','','','','','',0,''),(658,'2020-11-30 00:00:00','MR2011300000031',' RCCB ','4 Pole 40A Schneider',5,'11','Vendor Surya Kencana','Approved','','','','','',0,''),(659,'2020-11-30 00:00:00','MR2011300000031',' Sensing Current ','ACS758 100A',7,'11','Vendor Tokopedia','Approved','','','','','',0,''),(660,'2020-11-30 00:00:00','MR2011300000031',' Resistor Shunt ','100A 75mV',7,'11','Vendor Tokopedia','Approved','','','','','',0,''),(661,'2020-11-30 00:00:00','MR2011300000031',' Terminal Block ','IN411',50,'11','Vendor Surya Kencana','Approved','','','','','',0,''),(662,'2020-11-30 00:00:00','MR2011300000031',' Terminal Block ','IN60',30,'11','Vendor Surya Kencana','Approved','','','','','',0,''),(663,'2020-11-30 00:00:00','MR2011300000031',' Busbar ','3x15mm *4m',2,'17','Vendor Tokopedia','Approved','','','','','',0,''),(664,'2020-11-30 00:00:00','MR2011300000031',' Binding Post ','333 6mm',15,'13','Vendor Tokopedia','Approved','','','','','',0,''),(665,'2020-11-30 00:00:00','MR2011300000031',' Binding Post ','555 8mm',20,'13','Vendor Tokopedia','Approved','','','','','',0,''),(666,'2020-11-30 00:00:00','MR2011300000031',' Binding Post ','555 8mm',20,'13','Vendor Tokopedia','Approved','','','','','',0,''),(667,'2020-11-30 00:00:00','MR2011300000031',' Heatsink  ','12 sirip 30x12cm tebal 5mm',30,'11','Vendor Tokopedia','Approved','','','','','',0,''),(668,'2020-11-30 00:00:00','MR2011300000031',' Kabel  ','NYAF 0,75mm Hitam',5,'12','Vendor Surya Kencana','Approved','','','','','',0,''),(669,'2020-11-30 00:00:00','MR2011300000031',' Kabel  ','NYAF 6mm',2,'12','Vendor Surya Kencana','Approved','','','','','',0,''),(670,'2020-11-30 00:00:00','MR2011300000031',' Kabel  ','NYAF 16mm',3,'12','Vendor Surya Kencana','Approved','','','','','',0,''),(671,'2020-11-30 00:00:00','MR2011300000031',' Power Supply ','12VDC-5A JPN',5,'11','Vendor Duta Irama','Approved','','','','','',0,''),(672,'2020-11-30 00:00:00','MR2011300000031',' Thermoswitch ','KSD302 75Â°C NO',5,'11','Vendor Duta Irama','Approved','','','','','',0,''),(673,'2020-11-30 00:00:00','MR2011300000031',' Socket Motor ','2 Pin',10,'11','Vendor Duta Irama','Approved','','','','','',0,''),(674,'2020-11-30 00:00:00','MR2011300000031',' Fan ','12x12cm 220VAC Winner',40,'11','Vendor Duta Irama','Approved','','','','','',0,''),(675,'2020-11-30 00:00:00','MR2011300000031',' Kabel  ','NYAF 16mm',5000,'9','Vendor PT. Belltronic Indonesia','Approved','','','','','',0,''),(676,'2020-11-30 00:00:00','MR2011300000031',' Kabel  ','NYYHY 3x6mm',250,'9','Vendor PT. Belltronic Indonesia','Approved','','','','','',0,''),(677,'2020-11-30 00:00:00','MR2011300000031',' Rod Stainless  ','304 1\"',12,'9','Vendor Harapan Baru Cikarang','Approved','','','','','',0,''),(678,'2020-11-30 00:00:00','MR2011300000031',' Pipa PVC ','1\" AW',40,'17','Vendor Hock Jaya','Approved','','','','','',0,''),(679,'2020-11-30 00:00:00','MR2011300000031',' Baut  ','M8x20 Stainless',50,'11','Vendor Kern','Approved','','','','','',0,''),(680,'2020-11-30 00:00:00','MR2011300000031',' Mur ','M8 Stainless',50,'11','Vendor Kern','Approved','','','','','',0,''),(681,'2020-11-30 00:00:00','MR2011300000031',' Epoxy ','Resin Hardener',2,'4','Vendor Tokopedia','Approved','','','','','',0,''),(682,'2020-11-30 00:00:00','MR2011300000031',' Duct Cable ','45x45mm',15,'17','Vendor Surya Kencana','Approved','','','','','',0,''),(683,'2020-11-30 00:00:00','MR2011300000031',' Rel MCB ','Alumunium',5,'9','Vendor Surya Kencana','Approved','','','','','',0,''),(684,'2020-11-30 00:00:00','MR2011300000031',' Cable Gland  ','PG25',25,'11','Vendor Surya Kencana','Approved','','','','','',0,''),(685,'2020-11-30 00:00:00','MR2011300000031',' Cable Ties ','10cm Hitam *100pcs',10,'10','Vendor Surya Kencana','Approved','','','','','',0,''),(686,'2020-11-30 00:00:00','MR2011300000031',' Tie Mount ','HC-101',5,'10','Vendor Surya Kencana','Approved','','','','','',0,''),(687,'2020-11-30 00:00:00','MR2011300000031',' Skun ','Gepeng 3mm Female',100,'11','Vendor Duta Irama','Approved','','','','','',0,''),(688,'2020-11-30 00:00:00','MR2011300000031',' Ferrules ','0,75mm Putih',5,'10','Vendor Surya Kencana','Approved','','','','','',0,''),(689,'2020-11-30 00:00:00','MR2011300000031',' Ferrules ','0,75mm Biru',5,'10','Vendor Surya Kencana','Approved','','','','','',0,''),(690,'2020-11-30 00:00:00','MR2011300000031',' Skun ','1,25-3y Merah',2,'10','Vendor Surya Kencana','Approved','','','','','',0,''),(691,'2020-11-30 00:00:00','MR2011300000031',' Skun ','1,25-3y Hitam',2,'10','Vendor Surya Kencana','Approved','','','','','',0,''),(692,'2020-11-30 00:00:00','MR2011300000031',' Skun ','1,25-3y Biru',2,'10','Vendor Surya Kencana','Approved','','','','','',0,''),(693,'2020-11-30 00:00:00','MR2011300000031',' Skun ','5,5-6 Ring Hitam',2,'10','Vendor Surya Kencana','Approved','','','','','',0,''),(694,'2020-11-30 00:00:00','MR2011300000031',' Skun ','5,5-6 Ring Biru',2,'10','Vendor Surya Kencana','Approved','','','','','',0,''),(695,'2020-11-30 00:00:00','MR2011300000031',' Skun ','5,5-6 Ring Merah',2,'10','Vendor Surya Kencana','Approved','','','','','',0,''),(696,'2020-11-30 00:00:00','MR2011300000031',' Skun ','5,5-8 Ring Hitam',2,'10','Vendor Surya Kencana','Approved','','','','','',0,''),(697,'2020-11-30 00:00:00','MR2011300000031',' Skun ','5,5-8 Ring Biru',2,'10','Vendor Surya Kencana','Approved','','','','','',0,''),(698,'2020-11-30 00:00:00','MR2011300000031',' Skun ','5,5-8 Ring Merah',2,'10','Vendor Surya Kencana','Approved','','','','','',0,''),(699,'2020-11-30 00:00:00','MR2011300000031',' Skun ','16-6',50,'11','Vendor Surya Kencana','Approved','','','','','',0,''),(700,'2020-11-30 00:00:00','MR2011300000031',' Skun ','16-8',300,'11','Vendor Surya Kencana','Approved','','','','','',0,''),(701,'2020-11-30 00:00:00','MR2011300000031',' Skun ','25-8',50,'11','Vendor Surya Kencana','Approved','','','','','',0,''),(702,'2020-11-30 00:00:00','MR2011300000029','Skun ','25-8',30,'11','Project - PHE Siak - Vendor Surya Kencana','Completed','PO2012280000103','https://audemars.co.id/wp-content/uploads/2021/02/MR029-Gerindo-Tehnik-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0003AMI-SP3I2021-Gerindo-Tehnik-.pdf',2500,'High'),(703,'2020-11-30 00:00:00','MR2011300000031',' Isolator ','SM30-M6',50,'11','Vendor Surya Kencana','Approved','','','','','',0,''),(704,'2020-11-30 00:00:00','MR2011300000029',' Isolator ','SM25-M6',20,'11','Vendor Surya Kencana','Approved','','','','','',0,''),(705,'2020-11-30 00:00:00','MR2011300000031',' Heatsring  ','3mm',5,'9','Vendor Duta Irama','Approved','','','','','',0,''),(706,'2020-11-30 00:00:00','MR2011300000031',' Heatsring  ','5mm',5,'9','Vendor Duta Irama','Approved','','','','','',0,''),(707,'2020-11-30 00:00:00','MR2011300000031',' Heatsring  ','8mm',5,'9','Vendor Duta Irama','Approved','','','','','',0,''),(708,'2020-11-30 00:00:00','MR2011300000031',' Heatsring  ','10mm',10,'9','Vendor Duta Irama','Approved','','','','','',0,''),(709,'2020-11-30 00:00:00','MR2011300000031',' Heatsring  ','12mm Hitam',10,'9','Vendor Duta Irama','Approved','','','','','',0,''),(710,'2020-11-30 00:00:00','MR2011300000031',' Heatsring  ','12mm Merah',10,'9','Vendor Duta Irama','Approved','','','','','',0,''),(711,'2020-11-30 00:00:00','MR2011300000031',' Stopper  ','E-UK',50,'11','Vendor Surya Kencana','Approved','','','','','',0,''),(712,'2020-11-30 00:00:00','MR2011300000031',' Nameplat ','Stainless',5,'14','Vendor Martunas Jaya','Approved','','','','','',0,''),(713,'2020-11-30 00:00:00','MR2011300000031',' Stiker ','Label',5,'14','Vendor Kurnia Printing','Approved','','','','','',0,''),(714,'2020-11-30 00:00:00','MR2011300000029',' Stiker ','Label',5,'14','Vendor Kurnia Printing','Approved','','','','','',0,''),(715,'2020-11-30 00:00:00','MR2011300000031',' Baut    ','JP M4x10mm',100,'11','Vendor Kern Cikarang','Paid','PO2102020000134','','','','',0,''),(716,'2020-11-30 00:00:00','MR2011300000031','  Baut   ','JP M4x50mm',100,'11','Vendor Kern Cikarang','Paid','PO2102020000134','','','','',0,''),(717,'2020-11-30 00:00:00','MR2011300000031','  Baut   ','JP M6x15mm',200,'11','Vendor Kern Cikarang','Paid','PO2102020000134','','','','',0,''),(718,'2020-11-30 00:00:00','MR2011300000031','  Baut   ','M12x50mm',50,'11','Vendor Kern Cikarang','Paid','PO2102020000134','','','','',0,''),(719,'2020-11-30 00:00:00','MR2011300000031','  Mur  ','M4',200,'11','Vendor Kern Cikarang','Paid','PO2102020000134','','','','',0,''),(720,'2020-11-30 00:00:00','MR2011300000031','  Mur  ','M12',30,'11','Vendor Kern Cikarang','Paid','PO2102020000134','','','','',0,''),(721,'2020-11-30 00:00:00','MR2011300000031','  Ring Plat  ','M4',200,'11','Vendor Kern Cikarang','Paid','PO2102020000134','','','','',0,''),(722,'2020-11-30 00:00:00','MR2011300000031','  Ring Plat  ','M12',100,'11','Vendor Kern Cikarang','Paid','PO2102020000134','','','','',0,''),(723,'2020-11-30 00:00:00','MR2011300000031','  Ring Per  ','M12',50,'11','Vendor Kern Cikarang','Paid','PO2102020000134','','','','',0,''),(724,'2020-11-30 00:00:00','MR2011300000031',' Mata Bor ','2,5mm Nachi',2,'11','Vendor Kern Cikarang','Approved','','','','','',0,''),(725,'2020-11-30 00:00:00','MR2011300000031',' Mata Bor ','3mm Nachi',2,'11','Vendor Kern Cikarang','Approved','','','','','',0,''),(726,'2020-11-30 00:00:00','MR2011300000031',' Mata Bor ','4mm Nachi',2,'11','Vendor Kern Cikarang','Approved','','','','','',0,''),(727,'2020-11-30 00:00:00','MR2011300000031',' Mata Bor ','5,5mm Nachi',2,'11','Vendor Kern Cikarang','Approved','','','','','',0,''),(728,'2020-11-30 00:00:00','MR2011300000031',' Mata Bor ','6mm Nachi',2,'11','Vendor Kern Cikarang','Approved','','','','','',0,''),(729,'2020-11-30 00:00:00','MR2011300000031',' Mata Bor ','8mm Nachi',1,'11','Vendor Kern Cikarang','Approved','','','','','',0,''),(730,'2020-11-30 00:00:00','MR2011300000031',' Mata Bor ','10mm Nachi',1,'11','Vendor Kern Cikarang','Approved','','','','','',0,''),(731,'2020-11-30 00:00:00','MR2011300000031',' Mata Bor ','12mm Nachi',1,'11','Vendor Kern Cikarang','Approved','','','','','',0,''),(732,'2020-11-30 00:00:00','MR2011300000031',' Mata Jigsaw Besi ','T118A Bosch',1,'10','Vendor Kern Cikarang','Approved','','','','','',0,''),(733,'2020-11-30 00:00:00','MR2011300000031',' Mata Gerinda Potong ','4\" ',1,'10','Vendor Kern Cikarang','Approved','','','','','',0,''),(734,'2020-11-30 00:00:00','MR2011300000031',' Mata Gerinda Asah ','4\" Resibon',5,'11','Vendor Kern Cikarang','Approved','','','','','',0,''),(735,'2020-11-30 00:00:00','MR2011300000031',' Kayu ','Palet Box Panel',5,'14','Vendor Toko Bangunan','Approved','','','','','',0,''),(736,'2020-11-30 00:00:00','MR2011300000031',' Kabel ','NYYHY 2x0,5mm',1,'12','Vendor Surya kencana','Approved','','','','','',0,''),(737,'2020-11-30 00:00:00','MR2011300000031',' Pipa PVC ','1/2\" ',1150,'17','Vendor Hock Jaya','Approved','','','','','',0,''),(738,'2020-11-30 00:00:00','MR2011300000029',' Skun ','2-6 Ring Hitam',1,'10','Vendor Surya Kencana','Approved','','','','','',0,''),(739,'2020-11-30 00:00:00','MR2011300000029',' Skun ','2-6 Ring Biru',1,'10','Vendor Surya Kencana','Approved','','','','','',0,''),(740,'2020-11-30 00:00:00','MR2011300000029',' Skun ','2-6 Ring Merah',1,'10','Vendor Surya Kencana','Approved','','','','','',0,''),(741,'2020-11-30 00:00:00','MR2011300000029',' Kabel  ','NYYHY 2x0,75mm',1,'12','Vendor Surya Kencana','Approved','','','','','',0,''),(742,'2020-11-30 00:00:00','MR2011300000031',' Tinol ','0,25kg Paragon',2,'12','Vendor Duta Irama','Approved','','','','','',0,''),(743,'2020-11-30 00:00:00','MR2011300000029','Epoxy','Nippe ',2,'4','Project PHE Siak - Vendor Sinar Warna','Completed','PO2012150000100','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012150000100-Sinar-Warna-Surat-jalan.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0006AMI-SP3I2021-Toko-Sinar-Warna-.pdf',72000,'High'),(744,'2020-11-30 00:00:00','MR2011300000029','Cat','Blue Sky Danagloss',2,'4','Project PHE Siak - Vendor Sinar Warna','Completed','PO2012150000100','https://audemars.co.id/wp-content/uploads/2021/02/MR029-PO2012150000100-Sinar-Warna-Surat-jalan.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0006AMI-SP3I2021-Toko-Sinar-Warna-.pdf',108000,'Medium'),(745,'2020-11-30 00:00:00','MR2011300000029',' Binding Post ','Socket Banana 4mm',50,'11','Vendor Tokopedia','Approved','','','','','',0,''),(747,'2020-12-01 00:00:00','MR2012010000033','Viscometer ','Viscometer Type NDJ8S',2,'14','Project PHE Siak - Alat Utk Mengukur Kekentalan Minyak ','Completed','PO2101210000110','008PTAIJKTIII2021_-_Cibitung_1.pdf','','','https://audemars.co.id/wp-content/uploads/2021/02/0017AMI-SP3I2021-CV-Bona-Indo-Teknik-.pdf',13500000,'High'),(748,'2020-12-01 00:00:00','MR2012010000033',' Hydrometer ','Allafrance 0,650 - 1 Density',5,'14','Project PHE Siak - Alat Pengukur Densitas Minyak','Completed','PO2101210000109','005PTAIJKTIII2021_-_Cibitung_.pdf','','','https://audemars.co.id/wp-content/uploads/2021/02/0014AMI-SP3I2021-PT-Multi-Bangun-Bersama-.pdf',607500,'High'),(749,'2020-12-01 00:00:00','MR2012010000033','Gelas Ukur Cylinder ','Kapasitas 500 ml',5,'14','Project PHE Siak - Alat Labs Lapangan','Completed','PO2101210000109','005PTAIJKTIII2021_-_Cibitung_1.pdf','','','https://audemars.co.id/wp-content/uploads/2021/02/0014AMI-SP3I2021-PT-Multi-Bangun-Bersama-.pdf',168750,'High'),(750,'2020-12-01 00:00:00','MR2012010000033','Gelas Kimia ','Beaker Glass Herma 600 ml',5,'14','Project PHE Siak - Alat Labs Lapangan','Completed','PO2101210000109','005PTAIJKTIII2021_-_Cibitung_2.pdf','','','https://audemars.co.id/wp-content/uploads/2021/02/0014AMI-SP3I2021-PT-Multi-Bangun-Bersama-.pdf',114750,'High'),(751,NULL,'MR2012010000034','Fiber Flange Custom','FRP Double Flange Ansi 300, panjang 15 cm',12,'14','Flange Pipa berbahan dasar Fiber','','','','','','',0,''),(752,'2020-12-02 00:00:00','MR2012020000035','Double Fiber Flange','FRP Double Flange Ansi 300, panjang 15 cm',16,'14','Project PHE Siak - Double Flange Custom untuk pipa di Wellhead di Lapangan Batang - Siak ','Completed','PO2012030000096','https://audemars.co.id/wp-content/uploads/2021/02/DO-Vendor-Flange-.pdf','','','https://audemars.co.id/wp-content/uploads/2021/02/0071AMI-SP3XII2020-PT-Graha-Adhi-Jaya-Abadi-.pdf',1700000,'High'),(753,'2020-12-03 00:00:00','MR2012030000036','Safety Helmet','Topi Proyek Safety A3, Fastrack, Tali Dagu, Warna Putih',17,'14','Project PHE Siak','Completed','PO2012210000101','https://audemars.co.id/wp-content/uploads/2021/02/DO-Vendor-Dunia-Saftindo-.pdf','','','https://audemars.co.id/wp-content/uploads/2021/02/0076AMI-SP3XII2020-PT-Dunia-Saftindo-.pdf',65000,'High'),(754,'2020-12-03 00:00:00','MR2012030000036','Safety Glass','Safety Clear Safeguard Googles Bening',20,'11','Project PHE Siak','Completed','PO2012210000101','https://audemars.co.id/wp-content/uploads/2021/02/DO-Vendor-Dunia-Saftindo-.pdf','','','https://audemars.co.id/wp-content/uploads/2021/02/0076AMI-SP3XII2020-PT-Dunia-Saftindo-.pdf',38000,'High'),(755,'2020-12-03 00:00:00','MR2012030000036','Safety Shoes','Safety Shoes Kings KWD 805x, Black color',17,'15','Project PHE Siak','Completed','PO2012210000101','https://audemars.co.id/wp-content/uploads/2021/02/DO-Vendor-Dunia-Saftindo-.pdf','','','https://audemars.co.id/wp-content/uploads/2021/02/0076AMI-SP3XII2020-PT-Dunia-Saftindo-.pdf',342000,'High'),(756,'2020-12-03 00:00:00','MR2012030000036','Safety Gloves','Dotting Bintik Hitam, Warna Hitam',4,'13','Project PHE Siak - 1 sett isi 12 Pasang','Completed','PO2012210000101','https://audemars.co.id/wp-content/uploads/2021/02/DO-Vendor-Dunia-Saftindo-.pdf','','','https://audemars.co.id/wp-content/uploads/2021/02/0076AMI-SP3XII2020-PT-Dunia-Saftindo-.pdf',32000,'High'),(757,'2020-12-04 00:00:00','MR2012040000037','  Capacitor  ','SNUB-H 0,47uF 1200VDC',6,'11','Vendor Jabbar Electronics','Delivered','','https://audemars.co.id/wp-content/uploads/2021/02/MR037-PO2101250000115-CV.-Jabbar-Global-Sinergi-scaled.jpg','','','',0,''),(760,'2020-12-10 00:00:00','MR2012100000038',' Kawat Email ','0,4 mm Supreme',15,'4','','Delivered','','https://audemars.co.id/wp-content/uploads/2021/02/MR38-PO2101210000112-PT.-Kharisma-Wira-Persada-scaled.jpg','','','',0,'High'),(759,'2020-12-10 00:00:00','MR2012100000038',' Box Panel ','Outdoor 20x30x12cm Pyramid',40,'14','','Approved','','','','','',0,''),(761,'2020-12-10 00:00:00','MR2012100000038','Kern EI  ','32',10,'10','','Delivered','','https://audemars.co.id/wp-content/uploads/2021/02/MR38-PO2101210000112-PT.-Kharisma-Wira-Persada-scaled.jpg','','','',0,''),(762,'2020-12-10 00:00:00','MR2012100000038','Kawat Email  ','0,5mm Supreme',10,'4','','Delivered','','https://audemars.co.id/wp-content/uploads/2021/02/MR38-PO2101210000112-PT.-Kharisma-Wira-Persada-scaled.jpg','','','',0,''),(763,'2020-12-10 00:00:00','MR2012100000038','Koker Trafo  ','32x50mm',100,'11','','Delivered','','https://audemars.co.id/wp-content/uploads/2021/02/MR38-PO2101210000112-PT.-Kharisma-Wira-Persada-scaled.jpg','','','',0,''),(764,'2020-12-10 00:00:00','MR2012100000038','Selongsong Putih   ','1mm',20,'11','','Delivered','','https://audemars.co.id/wp-content/uploads/2021/02/MR38-PO2101210000112-PT.-Kharisma-Wira-Persada-scaled.jpg','','','',0,''),(765,'2020-12-10 00:00:00','MR2012100000038','Kaki Trafo  ','32',200,'11','','Delivered','','https://audemars.co.id/wp-content/uploads/2021/02/MR38-PO2101210000112-PT.-Kharisma-Wira-Persada-scaled.jpg','','','',0,''),(766,'2020-12-10 00:00:00','MR2012100000038','Baut   ','JP M5x100 ',200,'11','','Delivered','','https://audemars.co.id/wp-content/uploads/2021/02/MR38-PO2101210000112-PT.-Kharisma-Wira-Persada-scaled.jpg','','','',0,''),(767,'2020-12-10 00:00:00','MR2012100000038','MCB ','1x16A LS',40,'11','Project PHE Siak','Completed','PO2101210000113','https://audemars.co.id/wp-content/uploads/2021/02/MR038-PO2101210000113-Gerindo-tehnik.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0015AMI-SP3I2021-Gerindo-Tehnik-.pdf',55000,'High'),(768,'2020-12-10 00:00:00','MR2012100000038','Skun','1,25-3y Biru',4,'10','Project PHE Siak - 100pcs/pack','Completed','PO2101210000113','https://audemars.co.id/wp-content/uploads/2021/02/MR038-PO2101210000113-Gerindo-tehnik.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0015AMI-SP3I2021-Gerindo-Tehnik-.pdf',40000,'High'),(769,'2020-12-10 00:00:00','MR2012100000038','Skun','1,25-3y Hitam',4,'10','Project PHE Siak - 100pcs/pack','Completed','PO2101210000113','https://audemars.co.id/wp-content/uploads/2021/02/MR038-PO2101210000113-Gerindo-tehnik.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0015AMI-SP3I2021-Gerindo-Tehnik-.pdf',40000,'High'),(770,'2020-12-10 00:00:00','MR2012100000038','Power Supply','12VDC-5A JPN',40,'11','Project PHE Siak ','Completed','PO2101210000113','https://audemars.co.id/wp-content/uploads/2021/02/MR038-PO2101210000113-Gerindo-tehnik.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0015AMI-SP3I2021-Gerindo-Tehnik-.pdf',325000,'High'),(771,'2020-12-10 00:00:00','MR2012100000038','FPGA Board  ','DE0-Nano Atlas-SoC Kits Cyclone V',1,'11','','Delivered','','https://audemars.co.id/wp-content/uploads/2021/02/MR38-PO-2101210000112-PT.-Kharisma-Wira-Persada-surat-jalan.jpg','','','',0,''),(772,'2020-12-10 00:00:00','MR2012100000038','  Clamp Pipa Gantung  ','4',90,'11','','Delivered','','https://audemars.co.id/wp-content/uploads/2021/02/MR38-PO2101210000112-PT.-Kharisma-Wira-Persada-scaled.jpg','','','',0,''),(773,'2020-12-10 00:00:00','MR2012100000038','Insulax','Class F Series 031',5,'3','Project PHE Siak','Completed','PO2101210000114','https://audemars.co.id/wp-content/uploads/2021/02/MR038-PO2101210000114-Berkat-Mandiri-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0013AMI-SP3I2021-Berkat-Mandiri-Jakarta-.pdf',42000,'High'),(774,'2020-12-10 00:00:00','MR2012100000038','   Kabel NYMHY    ','2x1,5mm Makita Hitam',4000,'9','100m / 1 Roll','Approved','','','','','',0,''),(775,'2020-12-10 00:00:00','MR2012100000038','  Cat  ','Blue Sky Danagloss',5,'4','','Delivered','','https://audemars.co.id/wp-content/uploads/2021/02/MR38-PO2101210000112-PT.-Kharisma-Wira-Persada-scaled.jpg','','','',0,''),(776,'2020-12-10 00:00:00','MR2012100000038','Thinner  ','Impala',10,'19','5 liter / 1 galon','Delivered','','https://audemars.co.id/wp-content/uploads/2021/02/MR38-PO2101210000112-PT.-Kharisma-Wira-Persada-scaled.jpg','','','',0,''),(777,'2020-12-10 00:00:00','MR2012100000038','Epoxy  ','Nippe Abu',3,'4','','Delivered','','https://audemars.co.id/wp-content/uploads/2021/02/MR38-PO2101210000112-PT.-Kharisma-Wira-Persada-scaled.jpg','','','',0,''),(778,'2020-12-10 00:00:00','MR2012100000038','Fiber Merah','1,5mm 100x200cm',2,'5','Project PHE Siak ','Completed','PO2101210000114','https://audemars.co.id/wp-content/uploads/2021/02/MR038-PO2101210000114-Berkat-Mandiri-scaled.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0013AMI-SP3I2021-Berkat-Mandiri-Jakarta-.pdf',160000,'High'),(779,'2020-12-10 00:00:00','MR2012100000038','Baut   ','JP M4x10mm',500,'11','','Delivered','','https://audemars.co.id/wp-content/uploads/2021/02/MR38-PO2101210000112-PT.-Kharisma-Wira-Persada-scaled.jpg','','','',0,''),(780,'2020-12-10 00:00:00','MR2012100000038','Mur  ','M4',500,'11','','Delivered','','https://audemars.co.id/wp-content/uploads/2021/02/MR38-PO2101210000112-PT.-Kharisma-Wira-Persada-scaled.jpg','','','',0,''),(781,'2020-12-10 00:00:00','MR2012100000038','Lem ','Korea',1,'10','Project PHE Siak - 1 pack / 50pcs','Completed','PO2101210000113','https://audemars.co.id/wp-content/uploads/2021/02/MR038-PO2101210000113-Gerindo-tehnik.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0015AMI-SP3I2021-Gerindo-Tehnik-.pdf',425000,'High'),(782,'2020-12-10 00:00:00','MR2012100000038','Cable Gland ','PG16',80,'11','Project PHE Siak ','Completed','PO2101210000113','https://audemars.co.id/wp-content/uploads/2021/02/MR038-PO2101210000113-Gerindo-tehnik.jpg','','','https://audemars.co.id/wp-content/uploads/2021/02/0015AMI-SP3I2021-Gerindo-Tehnik-.pdf',3500,'High'),(783,'2020-12-10 00:00:00','MR2012100000038','Baut ','JP M5x',0,'0','','','','','','','',0,''),(784,'2021-01-06 00:00:00','MR2101060000001',' Pill Box 3rd Edition ','15 Slot 17x10x2,3 cm',20,'11','','','','','','','',0,''),(785,'2021-01-06 00:00:00','MR2101060000001',' Tool Kit  ','66 pcs Krisbow ',4,'13','','','','','','','',0,''),(786,'2021-01-06 00:00:00','MR2101060000001',' Solder ','40 Watt Dekko',4,'11','','','','','','','',0,''),(787,'2021-01-06 00:00:00','MR2101060000001',' Solder ','60 Watt Dekko',3,'11','','','','','','','',0,''),(788,'2021-01-06 00:00:00','MR2101060000001',' Mata Solder ','40 Watt Dekko',10,'11','','','','','','','',0,''),(789,'2021-01-06 00:00:00','MR2101060000001','  Mata Solder  ','60 Watt Dekko',3,'11','Project PHE Siak','Created','','','https://audemars.co.id/wp-content/uploads/2021/02/Surat-Penawaran-Harga-1.pdf','','',2000,''),(790,'2021-01-06 00:00:00','MR2101060000001',' Sedot Timah Dekko ','DS-200',5,'11','','','','','','','',0,''),(791,'2021-01-06 00:00:00','MR2101060000001',' Tang Potong Elektronik ','5 Inch Tekiro',5,'11','','','','','','','',0,''),(792,'2021-01-06 00:00:00','MR2101060000001',' Tang Potong Kabel ','6 Inch Tekiro',5,'11','','','','','','','',0,''),(793,'2021-01-06 00:00:00','MR2101060000001',' Tang Potong Kabel ','10 Inch Tekiro',3,'11','','','','','','','',0,''),(794,'2021-01-06 00:00:00','MR2101060000001',' Rak Komponen ','60 Slot Racco',2,'11','','','','','','','',0,''),(795,'2021-01-06 00:00:00','MR2101060000001',' Tang Press Skun  ','HS16CN 6-16mm',4,'11','','','','','','','',0,''),(796,'2021-01-06 00:00:00','MR2101060000001',' Obeng Set Tool Kit ','31 in 1',5,'13','','','','','','','',0,''),(797,'2021-01-06 00:00:00','MR2101060000001',' Mini Tool Box ','B250 25x12x10cm',5,'11','','','','','','','',0,''),(798,'2021-01-06 00:00:00','MR2101060000001',' Tang Pengupas Kabel ','Kapasitas Kupas Ukuran : 0.5 - 2.2mm, 2 in 1 (Potong & Kupas)',5,'11','','','','','','','',0,''),(799,'2021-01-06 00:00:00','MR2101060000001',' Tang Pengupas Kabel ','Darley',4,'11','','','','','','','',0,''),(800,'2021-01-06 00:00:00','MR2101060000001',' Kain Majun ','Putih',20,'4','','','','','','','',0,''),(801,'2021-01-06 00:00:00','MR2101060000001',' Sarung Tangan Kain ','Bintik Dot ',5,'16','','','','','','','',0,''),(802,'2021-01-06 00:00:00','MR2101060000001',' Tool Box Kenmaster ','H415',2,'11','','','','','','','',0,''),(803,'2021-01-06 00:00:00','MR2101060000001',' Kacamata Safety ','Bening',5,'11','','','','','','','',0,''),(804,'2021-01-06 00:00:00','MR2101060000001',' Lampu Meja  ','LB-203',4,'11','','','','','','','',0,''),(805,'2021-01-06 00:00:00','MR2101060000001',' Kaca Las ','Hitam',5,'11','','','','','','','',0,''),(806,'2021-01-11 00:00:00','MR2101110000002','    Ultrasonic Level Sensor    ','Model No. US8000 Ultrasonic Level Sensor With Display',2,'11','Project PHE Siak - Application: Water, Level Range: 15m, Output: 4-20mA, Power 24V DCVendor: Holykell, China ','Paid','PO2101290000119','Surat_Penawaran_Harga1.pdf','','','https://audemars.co.id/wp-content/uploads/2021/02/0018AMI-SP3II2021-Holykell-technology-.pdf',492,'High'),(807,'2021-02-11 00:00:00','MR2101110000002','        Radar Level Sensor        ','Model No. HR263 Radar Level Sensor with Display',2,'11','Project PHE Siak - Application: Water, Connection: Flange, Level Range: 30m, Output: 4-20mA, Power: 24v DCVendor: Holykell, China','Paid','PO2101290000119','','','','https://audemars.co.id/wp-content/uploads/2021/02/0018AMI-SP3II2021-Holykell-technology-.pdf',867,'High'),(808,'2021-01-13 00:00:00','MR2101130000003',' PSU Seasonic S12III-650 650W ','SKU : 162388 Product Name : Seasonic S12III-650 650W - 80+ Bronze Certified - 5 Years Warranty Replacement - Retail Box (NO OEM) Brand : Seasonic Seri',2,'13','Power Supply untuk PC kantor Audemars','Approved','','','','','',0,'Medium'),(809,'2021-01-22 00:00:00','MR2101220000004','Thermometer Gun ','Thermometer Gun LCD Screen',5,'11','LCD Screen 3 Back Color, Temperature Range Measurement 32,0 - 42,9 C, Surface Temperature, Power Supply DC3,0V, Temperature Mode. Merek Bebas.','Completed','PO2102040000130','MR2101220000004_-_Check_by_Nisa_dan_Kak_Ilham_1.pdf','','https://audemars.co.id/wp-content/uploads/2021/02/Surat-Penawaran-Harga-1.pdf','https://audemars.co.id/wp-content/uploads/2021/01/RAB-PHE-SIAK.xlsx',980000,'High'),(810,'2021-01-22 00:00:00','MR2101220000004',' Sarung Tangan Anti Listrik  ','NOVAK Rubber Insulating Glove Class 00',2,'15','NOVAK Electrical Glove Class 00 (500V)The gloves come in several options for international standards, colors, lengths, cuffs and sizes.AC Maximum Use Voltage: 500VAC Proof Test: 2,500VDC Maximum Use Voltage: 750VDC Proof Test: 10,000V','Completed','PO2102040000130','MR2101220000004_-_Check_by_Nisa_dan_Kak_Ilham_.pdf','','','https://audemars.co.id/wp-content/uploads/2021/02/0022AMI-SP3II2021-PT-Multi-Bangun-Bersama-.pdf',910000,'High'),(812,'2021-02-03 00:00:00','MR2102030000007',' Gear Pump Rotor  ','Gear Pump Rotor RK55',2,'11','Dokumen SP3 belum diterima - Gear Pump ROTOR Type RK 55 (Output 1 inchi), Power Motor : 1,5kw, 2 HP, 220Volt, 1 Phase, 1400 Rpm + Base Frame, Kapasitas 55 liter/menit, Daya Dorong/ Total Head : 30m - Pompa Oli/ Cairan Kental - Lanjutan dari MR20011260000023 ','Completed','PO2102090000135','006PTAIJKTIII2021_-_Duri_.pdf','','','',0,'High'),(813,'2021-02-03 00:00:00','MR2102030000008',' Gate Valve ','Gate Valve Stainless Steel	',15,'11','Gate Valve Stainless Steel, Diameter 1/2 Inch, Bolted Bonnet, Kelas #1000 psi','Approved','','','','','',0,'High'),(814,'2021-02-03 00:00:00','MR2102030000008',' Pipa Nipple ','Pipa Nipple Stainless Steel	',18,'11','Pipa Nipple Stainless Steel, Diameter 3/4 Inch, Panjang 10 cm, Kelas #1000 psi','Approved','','','','','',0,'High'),(815,'2021-02-03 00:00:00','MR2102030000008',' Pipa Tee	 ','Tee Carbon Steel	',18,'11','Tee Carbon Steel, Diameter 3/4 Inch, Kelas #3000 psi','Approved','','','','','',0,'High'),(816,'2021-02-03 00:00:00','MR2102030000008',' Reducer ','Reducer Stainless Steel	',50,'11','Reducer Stainless Steel. Ukuran: 3/4 Inch to 1/2 Inch','Approved','','','','','',0,'High'),(817,'2021-02-03 00:00:00','MR2102030000008',' Reducer ','Reducer Stainless Steel	',50,'11','Reducer Stainless Steel. Ukuran: 1 Inch to 3/4 Inch','Approved','','','','','',0,'High'),(818,'2021-02-04 00:00:00','MR2102040000009',' Processor         ','Core i9 10900K	',1,'11','Dokumen SP3 belum diterima','Completed','','MR2102040000009_-_Check_by_Irvan_.pdf','','','',0,'High'),(819,'2021-02-04 00:00:00','MR2102040000009','RAM     ','Corsair RGB 32GB DDR4 3600Mhz 2x16GB	',1,'11','Dokumen SP3 belum diterima','Completed','','MR2102040000009_-_Check_by_Irvan_1.pdf','','','',0,'High'),(820,'2021-02-04 00:00:00','MR2102040000009',' Motherboard   ','Mobo Msi Z490 Gaming Plus	',1,'11','Dokumen SP3 belum diterima','Completed','','MR2102040000009_-_Check_by_Irvan_2.pdf','','','',0,'High'),(821,'2021-02-04 00:00:00','MR2102040000009',' VGA Card	   ','MSI RTX 3070 8GB Trio Gaming	',1,'11','Dokumen SP3 belum diterima','Completed','','MR2102040000009_-_Check_by_Irvan_3.pdf','','','',0,'High'),(822,'2021-02-04 00:00:00','MR2102040000009','SSD  ','Samsung EVO Nvme 1TB	',1,'11','Dokumen SP3 belum diterima','Completed','','MR2102040000009_-_Check_by_Irvan_4.pdf','','','',0,'High'),(823,'2021-02-04 00:00:00','MR2102040000009','HDD  ','WD Blue 4TB	',1,'11','Dokumen SP3 belum diterima','Completed','','MR2102040000009_-_Check_by_Irvan_5.pdf','','','',0,'High'),(824,'2021-02-04 00:00:00','MR2102040000009',' Power Supply	   ','Corsair RM750 750W 80+ Gold	',1,'11','Dokumen SP3 belum diterima','Completed','','MR2102040000009_-_Check_by_Irvan_6.pdf','','','',0,'High'),(825,'2021-02-04 00:00:00','MR2102040000009','Casing  ','MSI Gungnir 4X Fan ARGB	',1,'11','Dokumen SP3 belum diterima','Completed','','MR2102040000009_-_Check_by_Irvan_7.pdf','','','',0,'High'),(826,'2021-02-04 00:00:00','MR2102040000009',' Cooler CPU	 ','Aerocool Mirage 240L RGB	',1,'11','','Approved','','','','','',0,'High'),(827,'2021-02-04 00:00:00','MR2102040000009','UPS  ','ICA 1400va	',1,'11','Dokumen SP3 belum diterima','Completed','','MR2102040000009_-_Check_by_Irvan_8.pdf','','','',0,'High'),(828,NULL,'Qui optio pariatur','Minima perspiciatis','Occaecat voluptatem',40,'0','','','Et error commodi qua','Tempora sed qui tota','Vitae quaerat animi','Aute voluptas iusto ','Esse in provident c',137,''),(829,NULL,'Qui optio pariatur','Minima perspiciatis','Occaecat voluptatem',40,'0','','','Et error commodi qua','Tempora sed qui tota','Vitae quaerat animi','Aute voluptas iusto ','Esse in provident c',137,''),(831,NULL,'Aut blanditiis vitae','Quos exercitationem ','Earum totam voluptat',646,'0','','','Qui praesentium moll','Quia at aperiam magn','Optio voluptatibus ','Dicta dolore molesti','Ullamco omnis perspi',577,''),(832,NULL,'Aut blanditiis vitae','Quos exercitationem ','Earum totam voluptat',646,'0','','','Qui praesentium moll','Quia at aperiam magn','Optio voluptatibus ','Dicta dolore molesti','Ullamco omnis perspi',577,''),(833,NULL,'Incididunt atque est','Non aliqua Eu natus','Officia veniam repr',566,'0','','','Quia vel dolorem ali','Similique nisi dolor','Voluptatem doloribu','Magni reprehenderit ','Quia dolore id et v',474,''),(834,NULL,'Incididunt atque est','Non aliqua Eu natus','Officia veniam repr',566,'0','','','Quia vel dolorem ali','Similique nisi dolor','Voluptatem doloribu','Magni reprehenderit ','Quia dolore id et v',474,''),(835,NULL,'Incididunt atque est','Non aliqua Eu natus','Officia veniam repr',566,'0','','','Quia vel dolorem ali','Similique nisi dolor','Voluptatem doloribu','Magni reprehenderit ','Quia dolore id et v',474,''),(836,NULL,'Incididunt atque est','Non aliqua Eu natus','Officia veniam repr',566,'0','','','Quia vel dolorem ali','Similique nisi dolor','Voluptatem doloribu','Magni reprehenderit ','Quia dolore id et v',474,''),(837,NULL,'Voluptatem non aliq','vincent','Est hic aperiam ut ',146,'0','','','Dolor earum est con','Lorem mollit odit do','Perferendis tenetur ','Ut autem minim fuga','Aut quia sint saepe ',74,''),(838,NULL,'','','',0,'0','','Created','','','','206-307-1-SM1.pdf','',0,'High'),(839,NULL,'vincent','Error elit labore n','Blanditiis dolor sus',18,'0','Veritatis similique ','Paid','Dolor et sapiente ei','206-307-1-SM3.pdf','206-307-1-SM4.pdf','206-307-1-SM2.pdf','206-307-1-SM5.pdf',365,'Medium'),(841,NULL,'tes tes','Nulla velit sunt mol','Quo ipsa impedit o',407,'0','Quod fugit sed dict','Paid','Quia odit in dolor s','','','','',367,'High'),(848,'2021-03-01 00:00:00','MR2103010000010',' FAST Monitoring Mechanical Sensor (Custom) ','- Custom - 1 socket pressure sensor, 1 watercut sensor 3.3 volt input, 1 temperature sensor 5 volt input, bahan stainless',75,'Pcs','Project PHE Siak','Approved','','','','','',0,'High'),(847,'2021-03-01 00:00:00','MR2103010000010','     Casing Panel Mechanical Sensor (Custom)     ','- Custom - Material Plat - Input tegangan : 5 - 9 volt - Input arus : 1 - 2 Ampere - 5 Channel temperatur - 5 Channel watercut - 5 Channel 4-20 mA AD',40,'11','Project PHE Siak ','Approved','','','','','',0,'High'),(849,'2021-03-04 00:00:00','MR2103040000012','      Clamp selang   ','2.5',6,'Pcs','Urgent Request by Ilham untuk kebutuhan instalasi test sumur di Lapangan PHE - Batang','Approved','','','','','',0,'High'),(850,'2021-03-04 00:00:00','MR2103040000012','Selang bening','2 inch x 10 mtr	',1,'Pcs','Urgent Request by Ilham untuk kebutuhan instalasi test sumur di Lapangan PHE - Batang','Approved','','','','','',0,'High'),(851,'2021-03-04 00:00:00','MR2103040000012','Reducer besi','2 inch x 1 inch',3,'Pcs','Urgent Request by Ilham untuk kebutuhan instalasi test sumur di Lapangan PHE - Batang','Approved','','','','','',0,'High'),(852,'2021-03-04 00:00:00','MR2103040000012','Socket selang','2 inch',3,'Pcs','Urgent Request by Ilham untuk kebutuhan instalasi test sumur di Lapangan PHE - Batang','Approved','','','','','',0,'High'),(853,'2021-03-04 00:00:00','MR2103040000012','Socket selang','1 inch',3,'Pcs','Urgent Request by Ilham untuk kebutuhan instalasi test sumur di Lapangan PHE - Batang','Approved','','','','','',0,'High'),(854,'2021-03-04 00:00:00','MR2103040000012','Clamp selang','1.25',3,'Pcs','Urgent Request by Ilham untuk kebutuhan instalasi test sumur di Lapangan PHE - Batang','Approved','','','','','',0,'High'),(855,'2021-03-04 00:00:00','MR2103040000012',' Reducer vking ','',4,'Pcs','Urgent Request by Ilham untuk kebutuhan instalasi test sumur di Lapangan PHE - Batang','Approved','','','','','',0,'High'),(856,'2021-03-04 00:00:00','MR2103040000012','Seal tape jumbo','',5,'Roll','Urgent Request by Ilham untuk kebutuhan instalasi test sumur di Lapangan PHE - Batang','Approved','','','','','',0,'High'),(857,'2021-03-04 00:00:00','MR2103040000013','Hydraulic hose press ujung kepala','1 inch x 3mtr',1,'Pcs','Urgent Request by Ilham untuk kebutuhan instalasi test sumur di Lapangan PHE - Batang','Approved','','','','','',0,'High'),(858,'2021-03-04 00:00:00','MR2103040000013','Hydraulic hose press ujung kepala','1 inch x 5mtr',1,'Pcs','Urgent Request by Ilham untuk kebutuhan instalasi test sumur di Lapangan PHE - Batang','Approved','','','','','',0,'High'),(859,'2021-03-04 00:00:00','MR2103040000013','Hydraulic hose press ujung kepala','1 inch x 6 mtr	',1,'Pcs','Urgent Request by Ilham untuk kebutuhan instalasi test sumur di Lapangan PHE - Batang','Approved','','','','','',0,'High'),(860,'2021-03-04 00:00:00','MR2103040000013','Gauge pressure OD 4 inch, 1/2 inch npt','0-350 psi',3,'Pcs','Urgent Request by Ilham untuk kebutuhan instalasi test sumur di Lapangan PHE - Batang','Approved','','','','','',0,'High'),(861,'2021-03-04 00:00:00','MR2103040000013','Hose rubber press kepala','1 inch x 5mtr',1,'Pcs','Urgent Request by Ilham untuk kebutuhan instalasi test sumur di Lapangan PHE - Batang','Approved','','','','','',0,'High'),(862,'2021-03-04 00:00:00','MR2103040000013','Hose rubber press kepala	','1 inch x 6 mtr',1,'Pcs','Urgent Request by Ilham untuk kebutuhan instalasi test sumur di Lapangan PHE - Batang','Approved','','','','','',0,'High'),(863,'2021-03-04 00:00:00','MR2103040000013','Hose rubber press kepala','1 inch x 7 mtr',1,'Pcs','Urgent Request by Ilham untuk kebutuhan instalasi test sumur di Lapangan PHE - Batang','Approved','','','','','',0,'High'),(864,'2021-03-22 00:00:00','MR2103220000014','Standing Bracket TV','55 Inch',2,'Unit','Untuk TV Monitoring Computer Server','Created','','','','','',0,'Medium');
/*!40000 ALTER TABLE `material_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measurement`
--

DROP TABLE IF EXISTS `measurement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measurement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measurement`
--

LOCK TABLES `measurement` WRITE;
/*!40000 ALTER TABLE `measurement` DISABLE KEYS */;
INSERT INTO `measurement` VALUES (1,'KG',0),(2,'Meter',0),(3,'Liter',0),(4,'CM',0),(5,'Roll',0);
/*!40000 ALTER TABLE `measurement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Untitled',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `status` enum('unread','read') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unread',
  `message_id` int(11) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `files` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted_by_users` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `message_from` (`from_user_id`),
  KEY `message_to` (`to_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,':D','test test 123','2021-03-08 04:01:13',4,10,'read',0,0,'a:0:{}',''),(2,'Halo','Halo Meyy : D','2021-03-10 06:21:56',1,11,'read',0,0,'a:0:{}',''),(3,'','ngak ada notif kalau ada pesan masuk','2021-03-10 06:22:47',11,1,'read',2,0,'a:0:{}',''),(4,'','halo','2021-03-10 06:24:30',11,1,'read',2,0,'a:0:{}',''),(5,'','blm pake notif mey :D','2021-03-10 06:33:08',1,11,'read',2,0,'a:0:{}',''),(6,'','cie cie bisa akses','2021-03-16 06:49:44',10,4,'unread',1,0,'a:0:{}',''),(7,'Trainning web internal','selamat belajar','2021-03-16 06:50:13',10,11,'read',0,0,'a:0:{}',''),(8,'Request User and Pass Web Internal','kak irvan, ku mau minta user dan pass buat iman sama andis buat update diweb yaa','2021-03-16 07:05:00',10,1,'read',0,0,'a:0:{}','');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `milestones`
--

DROP TABLE IF EXISTS `milestones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `milestones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `due_date` date NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `milestones`
--

LOCK TABLES `milestones` WRITE;
/*!40000 ALTER TABLE `milestones` DISABLE KEYS */;
INSERT INTO `milestones` VALUES (1,'Amandemen 1',1,'2021-08-31','',1);
/*!40000 ALTER TABLE `milestones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `client_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci,
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,1,'2021-03-01 06:55:17','Test','Halo',0,0,0,'','a:0:{}',0,0);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_settings`
--

DROP TABLE IF EXISTS `notification_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event` varchar(250) NOT NULL,
  `category` varchar(50) NOT NULL,
  `enable_email` int(1) NOT NULL DEFAULT '0',
  `enable_web` int(1) NOT NULL DEFAULT '0',
  `enable_slack` int(1) NOT NULL DEFAULT '0',
  `notify_to_team` text NOT NULL,
  `notify_to_team_members` text NOT NULL,
  `notify_to_terms` text NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `event` (`event`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_settings`
--

LOCK TABLES `notification_settings` WRITE;
/*!40000 ALTER TABLE `notification_settings` DISABLE KEYS */;
INSERT INTO `notification_settings` VALUES (1,'project_created','project',0,0,0,'','','',1,0),(2,'project_deleted','project',0,0,0,'','','',2,0),(3,'project_task_created','project',0,1,0,'','','project_members,task_assignee',3,0),(4,'project_task_updated','project',0,1,0,'','','task_assignee',4,0),(5,'project_task_assigned','project',0,1,0,'','','task_assignee',5,0),(7,'project_task_started','project',0,0,0,'','','',7,0),(8,'project_task_finished','project',0,0,0,'','','',8,0),(9,'project_task_reopened','project',0,0,0,'','','',9,0),(10,'project_task_deleted','project',0,1,0,'','','task_assignee',10,0),(11,'project_task_commented','project',0,1,0,'','','task_assignee',11,0),(12,'project_member_added','project',0,1,0,'','','project_members',12,0),(13,'project_member_deleted','project',0,1,0,'','','project_members',13,0),(14,'project_file_added','project',0,1,0,'','','project_members',14,0),(15,'project_file_deleted','project',0,1,0,'','','project_members',15,0),(16,'project_file_commented','project',0,1,0,'','','project_members',16,0),(17,'project_comment_added','project',0,1,0,'','','project_members',17,0),(18,'project_comment_replied','project',0,1,0,'','','project_members,comment_creator',18,0),(19,'project_customer_feedback_added','project',0,1,0,'','','project_members',19,0),(20,'project_customer_feedback_replied','project',0,1,0,'','','project_members,comment_creator',20,0),(21,'client_signup','client',0,0,0,'','','',21,0),(22,'invoice_online_payment_received','invoice',0,0,0,'','','',22,0),(23,'leave_application_submitted','leave',0,0,0,'','','',23,0),(24,'leave_approved','leave',0,1,0,'','','leave_applicant',24,0),(25,'leave_assigned','leave',0,1,0,'','','leave_applicant',25,0),(26,'leave_rejected','leave',0,1,0,'','','leave_applicant',26,0),(27,'leave_canceled','leave',0,0,0,'','','',27,0),(28,'ticket_created','ticket',0,0,0,'','','',28,0),(29,'ticket_commented','ticket',0,1,0,'','','client_primary_contact,ticket_creator',29,0),(30,'ticket_closed','ticket',0,1,0,'','','client_primary_contact,ticket_creator',30,0),(31,'ticket_reopened','ticket',0,1,0,'','','client_primary_contact,ticket_creator',31,0),(32,'estimate_request_received','estimate',0,0,0,'','','',32,0),(34,'estimate_accepted','estimate',0,0,0,'','','',34,0),(35,'estimate_rejected','estimate',0,0,0,'','','',35,0),(36,'new_message_sent','message',0,0,0,'','','',36,0),(37,'message_reply_sent','message',0,0,0,'','','',37,0),(38,'invoice_payment_confirmation','invoice',0,0,0,'','','',22,0),(39,'new_event_added_in_calendar','event',0,0,0,'','','',39,0),(40,'recurring_invoice_created_vai_cron_job','invoice',0,0,0,'','','',22,0),(41,'new_announcement_created','announcement',0,0,0,'','','recipient',41,0),(42,'invoice_due_reminder_before_due_date','invoice',0,0,0,'','','',22,0),(43,'invoice_overdue_reminder','invoice',0,0,0,'','','',22,0),(44,'recurring_invoice_creation_reminder','invoice',0,0,0,'','','',22,0),(45,'project_completed','project',0,0,0,'','','',2,0),(46,'lead_created','lead',0,0,0,'','','',21,0),(47,'client_created_from_lead','lead',0,0,0,'','','',21,0),(48,'project_task_deadline_pre_reminder','project',0,1,0,'','','task_assignee',20,0),(49,'project_task_reminder_on_the_day_of_deadline','project',0,1,0,'','','task_assignee',20,0),(50,'project_task_deadline_overdue_reminder','project',0,1,0,'','','task_assignee',20,0),(51,'recurring_task_created_via_cron_job','project',0,1,0,'','','project_members,task_assignee',20,0),(52,'calendar_event_modified','event',0,0,0,'','','',39,0),(53,'client_contact_requested_account_removal','client',0,0,0,'','','',21,0),(54,'bitbucket_push_received','project',0,1,0,'','','',45,0),(55,'github_push_received','project',0,1,0,'','','',45,0),(56,'invited_client_contact_signed_up','client',0,0,0,'','','',21,0),(57,'created_a_new_post','timeline',0,0,0,'','','',52,0),(58,'timeline_post_commented','timeline',0,0,0,'','','',52,0),(59,'ticket_assigned','ticket',0,0,0,'','','ticket_assignee',31,0),(60,'new_order_received','order',0,0,0,'','','',1,0),(61,'order_status_updated','order',0,0,0,'','','',2,0);
/*!40000 ALTER TABLE `notification_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `notify_to` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `read_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `project_comment_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `ticket_comment_id` int(11) NOT NULL,
  `project_file_id` int(11) NOT NULL,
  `leave_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `activity_log_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `invoice_payment_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `estimate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `estimate_request_id` int(11) NOT NULL,
  `actual_message_id` int(11) NOT NULL,
  `parent_message_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `announcement_id` int(11) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,1,'','2021-02-25 05:40:13','','','project_task_created',1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(2,1,'','2021-02-25 05:41:08','','','project_task_created',1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(3,1,'','2021-02-25 05:48:29','','','project_task_created',1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(4,1,'','2021-02-25 06:14:58','','','project_task_deleted',1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(5,1,'','2021-02-25 06:15:34','','','project_task_deleted',1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(6,1,'','2021-02-25 06:15:35','','','project_task_deleted',1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(7,1,'','2021-02-25 06:19:29','','','project_task_created',1,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,1,'','2021-02-25 06:20:21','','','project_task_created',1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,1,'','2021-02-25 06:21:14','','','project_task_created',1,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(10,1,'','2021-02-25 06:22:28','','','project_task_created',1,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(11,1,'','2021-02-25 06:23:07','','','project_task_created',1,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(12,1,'','2021-02-25 06:23:51','','','project_task_created',1,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(13,1,'','2021-02-25 06:24:49','','','project_task_created',1,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(14,1,'','2021-02-25 06:25:21','','','project_task_created',1,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(15,1,'','2021-02-25 06:25:51','','','project_task_created',1,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(16,1,'','2021-02-25 06:26:26','','','project_task_created',1,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(17,1,'','2021-02-25 06:27:01','','','project_task_created',1,14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(18,1,'','2021-02-25 06:27:27','','','project_task_created',1,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(19,1,'','2021-02-25 06:27:52','','','project_task_created',1,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(20,1,'','2021-02-25 07:01:13','3','','project_member_added',1,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(21,1,'','2021-02-25 07:02:04','','','project_task_updated',1,16,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0),(22,1,'','2021-02-25 07:02:29','','','project_task_updated',1,15,0,0,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,0),(23,1,'','2021-02-25 07:02:38','','','project_task_updated',1,14,0,0,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,0),(24,1,'','2021-02-25 07:02:47','','','project_task_updated',1,13,0,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,0,0,0,0),(25,1,'','2021-02-25 07:02:54','','','project_task_updated',1,12,0,0,0,0,0,0,0,24,0,0,0,0,0,0,0,0,0,0,0,0),(26,1,'','2021-02-25 07:03:00','','','project_task_updated',1,11,0,0,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0),(27,1,'','2021-02-25 07:03:14','3','','project_task_assigned',1,10,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(28,1,'','2021-02-25 07:03:27','3','','project_task_updated',1,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(29,1,'','2021-02-25 07:03:57','','','project_task_updated',1,9,0,0,0,0,0,0,0,27,0,0,0,0,0,0,0,0,0,0,0,0),(30,1,'','2021-02-25 07:04:03','','','project_task_updated',1,8,0,0,0,0,0,0,0,28,0,0,0,0,0,0,0,0,0,0,0,0),(31,1,'','2021-02-25 07:04:11','','','project_task_updated',1,7,0,0,0,0,0,0,0,29,0,0,0,0,0,0,0,0,0,0,0,0),(32,1,'','2021-02-25 07:04:19','','','project_task_assigned',1,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(33,1,'','2021-02-25 07:34:48','3,8','','project_member_added',1,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0),(34,1,'','2021-02-25 07:34:48','3,5,8','','project_member_added',1,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0),(35,1,'','2021-02-25 07:34:48','3,5,6,8','','project_member_added',1,0,0,0,0,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0),(36,1,'','2021-02-25 07:34:48','3,5,6,7,8','','project_member_added',1,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0),(37,1,'','2021-02-25 07:34:48','3,4,5,6,7,8','','project_member_added',1,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0),(38,1,'','2021-02-25 07:48:15','','','project_task_assigned',1,9,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0),(39,1,'','2021-02-25 07:57:54','3,4,5,6,7,8,10','','project_member_added',1,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0),(40,1,'','2021-02-25 07:57:54','3,4,5,6,7,8,9,10','','project_member_added',1,0,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0),(41,1,'','2021-02-25 08:06:14','','','project_task_updated',1,4,0,0,0,0,0,0,0,33,0,0,0,0,0,0,0,0,0,0,0,0),(42,1,'','2021-02-26 11:16:29','','','project_task_updated',1,9,0,0,0,0,0,0,0,34,0,0,0,0,0,0,0,0,0,0,0,0),(43,1,'','2021-03-05 08:02:55','3,4,5,6,7,8,9,10','','project_file_added',1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(44,4,'','2021-03-05 09:29:41','','','project_task_updated',1,7,0,0,0,0,0,0,0,37,0,0,0,0,0,0,0,0,0,0,0,0),(45,4,'','2021-03-05 09:29:47','','','project_task_updated',1,7,0,0,0,0,0,0,0,38,0,0,0,0,0,0,0,0,0,0,0,0),(46,10,'','2021-03-08 02:13:09','1,3,4,5,6,7,8,9','','project_file_added',1,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(47,10,'','2021-03-08 02:14:06','1,3,4,5,6,7,8,9','','project_file_added',1,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(48,1,'','2021-03-08 03:29:57','3,4,5,6,7,8,9,10','','project_file_deleted',1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(49,1,'','2021-03-08 03:40:52','3,4,5,6,7,8,9,10,11','','project_member_added',1,0,0,0,0,0,0,0,11,0,0,0,0,0,0,0,0,0,0,0,0,0),(50,1,'','2021-03-08 04:12:00','','','project_task_updated',1,9,0,0,0,0,0,0,0,42,0,0,0,0,0,0,0,0,0,0,0,0),(51,1,'','2021-03-08 04:12:14','9','','project_task_assigned',1,9,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0),(52,1,'','2021-03-08 04:12:29','9','','project_task_updated',1,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(53,10,'','2021-03-15 05:28:01','1,3,4,5,6,7,8,9,11','','project_file_added',1,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `order_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` VALUES (1,'New','#f1c40f',0,0),(2,'Processing','#29c2c2',1,0),(3,'Confirmed','#83c340',2,0);
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci,
  `status_id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `tax_id2` int(11) NOT NULL DEFAULT '0',
  `discount_amount` double NOT NULL,
  `discount_amount_type` enum('percentage','fixed_amount') COLLATE utf8_unicode_ci NOT NULL,
  `discount_type` enum('before_tax','after_tax') COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `slug` text COLLATE utf8_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `internal_use_only` tinyint(1) NOT NULL DEFAULT '0',
  `visible_to_team_members_only` tinyint(1) NOT NULL DEFAULT '0',
  `visible_to_clients_only` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Material Request','<p><br></p>','material-request','active',0,0,0,1);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'custom',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `online_payable` tinyint(1) NOT NULL DEFAULT '0',
  `available_on_invoice` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_payment_amount` double NOT NULL DEFAULT '0',
  `settings` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES (1,'Cash','custom','Cash payments',0,0,0,'',0),(2,'Stripe','stripe','Stripe online payments',1,0,0,'a:3:{s:15:\"pay_button_text\";s:6:\"Stripe\";s:10:\"secret_key\";s:6:\"\";s:15:\"publishable_key\";s:6:\"\";}',0),(3,'PayPal Payments Standard','paypal_payments_standard','PayPal Payments Standard Online Payments',1,0,0,'a:4:{s:15:\"pay_button_text\";s:6:\"PayPal\";s:5:\"email\";s:4:\"\";s:11:\"paypal_live\";s:1:\"0\";s:5:\"debug\";s:1:\"0\";}',0),(4,'Paytm','paytm','Paytm online payments',1,0,0,'',0);
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_ipn`
--

DROP TABLE IF EXISTS `paypal_ipn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paypal_ipn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` tinytext COLLATE utf8_unicode_ci,
  `ipn_hash` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ipn_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_ipn`
--

LOCK TABLES `paypal_ipn` WRITE;
/*!40000 ALTER TABLE `paypal_ipn` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_ipn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `petty_cash`
--

DROP TABLE IF EXISTS `petty_cash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `petty_cash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_time` date NOT NULL,
  `location_id` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petty_cash`
--

LOCK TABLES `petty_cash` WRITE;
/*!40000 ALTER TABLE `petty_cash` DISABLE KEYS */;
INSERT INTO `petty_cash` VALUES (1,'2005-03-24',1,250000,1),(2,'0000-00-00',1,250000,1),(3,'2021-03-25',1,5000,1),(4,'2021-03-24',1,50000000,1),(5,'2021-03-24',1,750000,1),(6,'2021-03-24',1,250000,1),(7,'2021-03-24',1,500000,1),(8,'2021-03-24',1,50000000,0),(9,'2021-03-24',1,1000000,1),(10,'2021-03-24',1,750000,1),(11,'2021-03-24',2,500000,1),(12,'2021-03-24',2,750000,1),(13,'2021-03-25',1,5000,1),(14,'2021-03-25',1,750000,1),(15,'2021-03-25',1,500000,1),(16,'2021-03-25',1,750000,1),(17,'2021-03-25',3,250000,1),(18,'2021-03-25',1,750000,1),(19,'2021-03-25',1,750000,1),(20,'2021-03-25',1,750000,1),(21,'2021-03-25',1,750000,1),(22,'2021-03-25',1,750000,1),(23,'2021-03-25',1,750000,1),(24,'2021-03-25',1,750000,1),(25,'2021-03-25',1,750000,1),(26,'2021-03-25',1,750000,1),(27,'2021-03-25',1,750000,1),(28,'2021-03-25',1,750000,1),(29,'2021-03-25',1,750000,1),(30,'2021-03-25',1,750000,1),(31,'2021-03-24',2,10000000,0),(32,'2021-03-25',4,500000,1),(33,'2021-03-25',4,10000000,1),(34,'2021-03-25',4,10000000,1),(35,'2021-03-25',4,50000000,0),(36,'2021-03-26',3,10000000,0);
/*!40000 ALTER TABLE `petty_cash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `share_with` text COLLATE utf8_unicode_ci,
  `files` longtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,'2021-02-25 05:47:04','Test Sensor',0,'','a:0:{}',0),(2,1,'2021-02-25 07:08:39','Instalasi FAST',0,'','a:1:{i:0;a:4:{s:9:\"file_name\";s:44:\"timeline_post_file60374cf729293-IMG_9900.jpg\";s:9:\"file_size\";s:6:\"468903\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}',0),(3,13,'2021-03-15 11:26:35','Progress instalasi FAST Batang: \n\nToday Activity :  \n- Penggalian tanah untuk kabel FAST Subsurface di BTG#22 \n\nTomorrow Activity :  \n- Penggalian tanah untuk kabel FAST Subsurface di BTG#84 & BTG#85 \n\nKendala : -',0,'','a:2:{i:0;a:4:{s:9:\"file_name\";s:51:\"timeline_post_file604f446b3a607-20210315_120610.jpg\";s:9:\"file_size\";s:7:\"4619542\";s:7:\"file_id\";N;s:12:\"service_type\";N;}i:1;a:4:{s:9:\"file_name\";s:51:\"timeline_post_file604f446b3a681-20210315_120710.jpg\";s:9:\"file_size\";s:7:\"4913173\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}',1),(4,13,'2021-03-15 11:30:26','Progress instalasi FAST Batang:\n\nToday Activity : \n- Penggalian tanah untuk kabel FAST Subsurface di BTG#22\n\nTomorrow Activity : \n- Penggalian tanah untuk kabel FAST Subsurface di BTG#84 & BTG#85\n\nKendala : -',0,'','a:2:{i:0;a:4:{s:9:\"file_name\";s:51:\"timeline_post_file604f45529f525-20210315_120610.jpg\";s:9:\"file_size\";s:7:\"4619542\";s:7:\"file_id\";N;s:12:\"service_type\";N;}i:1;a:4:{s:9:\"file_name\";s:51:\"timeline_post_file604f45529f53a-20210315_120710.jpg\";s:9:\"file_size\";s:7:\"4913173\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}',1),(5,13,'2021-03-15 11:32:15','Progress instalasi FAST Batang:\n\nToday Activity : \n- Penggalian tanah untuk kabel FAST Subsurface di BTG#22\n\nTomorrow Activity : \n- Penggalian tanah untuk kabel FAST Subsurface di BTG#84 & BTG#85\n\nKendala : -',0,'','a:1:{i:0;a:4:{s:9:\"file_name\";s:51:\"timeline_post_file604f45bf6dc3a-20210315_120610.jpg\";s:9:\"file_size\";s:7:\"4619542\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}',1),(6,13,'2021-03-15 12:28:45','Progress instalasi FAST Batang: \n\nToday Activity :  \n- Penggalian tanah untuk kabel FAST Subsurface di BTG#22 \n\nTomorrow Activity :  \n- Penggalian tanah untuk kabel FAST Subsurface di BTG#84 & BTG#85 \n\nKendala : -',0,'','a:2:{i:0;a:4:{s:9:\"file_name\";s:55:\"timeline_post_file604f52fdaa43c-IMG-20210315-WA0007.jpg\";s:9:\"file_size\";s:6:\"149834\";s:7:\"file_id\";N;s:12:\"service_type\";N;}i:1;a:4:{s:9:\"file_name\";s:55:\"timeline_post_file604f52fdaa877-IMG-20210315-WA0006.jpg\";s:9:\"file_size\";s:6:\"151516\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}',0),(7,13,'2021-03-16 10:57:26','Daily Report FAST\nwell status \n\nToday\nBtg 84:\nPenggalian tanah untuk kabel FAST Subsurface \n\nBtg 85:\nPenggalian tanah untuk kabel FAST Subsurface \n\nTomorow\nBTG 73:\nPenggalian tanah untuk kabel FAST Subsurface \n\nBtg 74:\nPenggalian tanah untuk kabel FAST Subsurface',0,'','a:2:{i:0;a:4:{s:9:\"file_name\";s:43:\"timeline_post_file60508f160b914-BTG-84.jpeg\";s:9:\"file_size\";s:6:\"151991\";s:7:\"file_id\";N;s:12:\"service_type\";N;}i:1;a:4:{s:9:\"file_name\";s:43:\"timeline_post_file60508f160bb3f-BTG-85.jpeg\";s:9:\"file_size\";s:6:\"256222\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}',0),(8,13,'2021-03-17 12:15:34','Daily Report FAST\nwell status \n\nToday\nBtg 73:\nPenggalian tanah untuk kabel FAST Subsurface \n\nTomorow\nBTG 74:\nPenggalian tanah untuk kabel FAST Subsurface \n\nBtg 79:\nPenggalian tanah untuk kabel FAST Subsurface \n\nDone :\n- BTG 12 \n- BTG 80\n- BTG 85',0,'','a:2:{i:0;a:4:{s:9:\"file_name\";s:42:\"timeline_post_file6051f2e65a4a7-BTG73.jpeg\";s:9:\"file_size\";s:6:\"258887\";s:7:\"file_id\";N;s:12:\"service_type\";N;}i:1;a:4:{s:9:\"file_name\";s:43:\"timeline_post_file6051f2e65a74a-BTG-73.jpeg\";s:9:\"file_size\";s:6:\"258414\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}',0),(9,13,'2021-03-18 12:32:55','Daily Report FAST\nwell status \n\nToday\nBtg 74:\nPenggalian tanah untuk kabel FAST Subsurface \n\nTomorow\nBtg 79:\nPenggalian tanah untuk kabel FAST Subsurface \n\nDone :\n- BTG 12 \n- BTG 80\n- BTG 85\n- BTG 74',0,'','a:2:{i:0;a:4:{s:9:\"file_name\";s:42:\"timeline_post_file605348773ef9d-Btg74.jpeg\";s:9:\"file_size\";s:6:\"250329\";s:7:\"file_id\";N;s:12:\"service_type\";N;}i:1;a:4:{s:9:\"file_name\";s:43:\"timeline_post_file605348773f29b-Btg-74.jpeg\";s:9:\"file_size\";s:6:\"246754\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}',0),(10,13,'2021-03-19 11:42:52','Daily Report FAST\nwell status \n\nToday\nBtg 79:\nPenggalian tanah untuk kabel FAST Subsurface \n\nTomorow monday\nBtg 20:\nPenggalian tanah untuk kabel FAST Subsurface \n\nDone :\n- BTG 12 \n- BTG 80\n- BTG 85\n- BTG 74\n- BTG 79',0,'','a:2:{i:0;a:4:{s:9:\"file_name\";s:43:\"timeline_post_file60548e3cabc00-Btg-79.jpeg\";s:9:\"file_size\";s:6:\"164884\";s:7:\"file_id\";N;s:12:\"service_type\";N;}i:1;a:4:{s:9:\"file_name\";s:42:\"timeline_post_file60548e3cabe52-Btg79.jpeg\";s:9:\"file_size\";s:6:\"180574\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}',0),(11,13,'2021-03-22 11:10:40','Daily Report FAST\nwell status \n\nToday\nBtg 20:\nPenggalian tanah untuk kabel FAST Subsurface \n\nTomorow\nBtg 42:\nPenggalian tanah untuk kabel FAST Subsurface \n\nDone :\n- BTG 12 \n- BTG 80\n- BTG 85\n- BTG 74\n- BTG 79\n- BTG 20',0,'','a:2:{i:0;a:4:{s:9:\"file_name\";s:43:\"timeline_post_file60587b3064f72-Btg-20.jpeg\";s:9:\"file_size\";s:6:\"255779\";s:7:\"file_id\";N;s:12:\"service_type\";N;}i:1;a:4:{s:9:\"file_name\";s:42:\"timeline_post_file60587b3065222-Btg20.jpeg\";s:9:\"file_size\";s:6:\"273902\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}',0),(12,13,'2021-03-23 11:58:32','Daily Report FAST\nwell status \n\nToday\nBtg 42:\nPenggalian tanah untuk kabel FAST Subsurface \n\nTomorow\nBtg 45:\nPenggalian tanah untuk kabel FAST Subsurface \n\nBtg 27:\nPenggalian tanah untuk kabel FAST Subsurface \n\nDone :\n- BTG 12 \n- BTG 80\n- BTG 85\n- BTG 74\n- BTG 79\n- BTG 20\n- BTG 42',0,'','a:2:{i:0;a:4:{s:9:\"file_name\";s:43:\"timeline_post_file6059d7e8e271f-Btg-42.jpeg\";s:9:\"file_size\";s:6:\"225717\";s:7:\"file_id\";N;s:12:\"service_type\";N;}i:1;a:4:{s:9:\"file_name\";s:42:\"timeline_post_file6059d7e8e296f-Btg42.jpeg\";s:9:\"file_size\";s:6:\"251593\";s:7:\"file_id\";N;s:12:\"service_type\";N;}}',0);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `product_id` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_comments`
--

DROP TABLE IF EXISTS `project_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `file_id` int(11) NOT NULL DEFAULT '0',
  `customer_feedback_id` int(11) NOT NULL DEFAULT '0',
  `files` longtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_comments`
--

LOCK TABLES `project_comments` WRITE;
/*!40000 ALTER TABLE `project_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_files`
--

DROP TABLE IF EXISTS `project_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `file_id` text COLLATE utf8_unicode_ci,
  `service_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `file_size` double NOT NULL,
  `created_at` datetime NOT NULL,
  `project_id` int(11) NOT NULL,
  `uploaded_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_files`
--

LOCK TABLES `project_files` WRITE;
/*!40000 ALTER TABLE `project_files` DISABLE KEYS */;
INSERT INTO `project_files` VALUES (1,'_file6041e5af1b98d-Surat-Penawaran-Harga.pdf','','','',56332,'2021-03-05 08:02:55',1,1,1),(2,'_file604588352951d-MOM-PLK-ke-1-&-Negosiasi-Jasa-FAST.pdf','','','MOM Amandemen',312376,'2021-03-08 02:13:09',1,10,0),(3,'_file6045886e92e84-Amandemen-1-kontrak-390003638-Uji-Coba-Fast-R2--003-_sign.pdf','','','Kontrak Amandemen 1',930972,'2021-03-08 02:14:06',1,10,0),(4,'_file604ef06119edb-Tanda-Terima-Dokumen-Amandemen---PHE-Siak-.pdf','','','Dokumen sudah disign AI dan sudah dikirim kembali ke PHE Siak ',784290,'2021-03-15 05:28:01',1,10,0);
/*!40000 ALTER TABLE `project_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_members`
--

DROP TABLE IF EXISTS `project_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `is_leader` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_members`
--

LOCK TABLES `project_members` WRITE;
/*!40000 ALTER TABLE `project_members` DISABLE KEYS */;
INSERT INTO `project_members` VALUES (1,1,1,1,0),(2,3,1,0,0),(3,8,1,0,0),(4,5,1,0,0),(5,6,1,0,0),(6,7,1,0,0),(7,4,1,0,0),(8,10,1,0,0),(9,9,1,0,0),(10,1,2,1,0),(11,11,1,0,0);
/*!40000 ALTER TABLE `project_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_settings`
--

DROP TABLE IF EXISTS `project_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_settings` (
  `project_id` int(11) NOT NULL,
  `setting_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `unique_index` (`project_id`,`setting_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_settings`
--

LOCK TABLES `project_settings` WRITE;
/*!40000 ALTER TABLE `project_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_time`
--

DROP TABLE IF EXISTS `project_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `hours` float NOT NULL,
  `status` enum('open','logged','approved') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'logged',
  `note` text COLLATE utf8_unicode_ci,
  `task_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_time`
--

LOCK TABLES `project_time` WRITE;
/*!40000 ALTER TABLE `project_time` DISABLE KEYS */;
INSERT INTO `project_time` VALUES (1,1,1,'2021-02-25 07:57:22','2021-02-25 09:09:23',0,'logged','',0,1),(2,1,4,'2021-03-05 09:26:23','2021-03-05 09:26:56',0,'logged','Lihat sensor',7,1),(3,1,1,'2021-03-10 04:51:28','2021-03-10 04:51:37',0,'logged','',0,1),(4,1,1,'2021-03-10 06:20:43','2021-03-10 06:36:56',0,'logged','Test',9,0);
/*!40000 ALTER TABLE `project_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `start_date` date DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `status` enum('open','completed','hold','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `labels` text COLLATE utf8_unicode_ci,
  `price` double NOT NULL DEFAULT '0',
  `starred_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `estimate_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'UJI COBA FAST FLOW ASSURANCE SYSTEM TECHNOLOGY PHE SIAK BATANG ','','2020-12-01','2021-08-31',1,'2021-02-25',1,'open','',190000000,'',0,0),(2,'Nesciunt nihil sunt','Elit enim et tempor','0000-00-00','0000-00-00',1,'2021-03-02',1,'open','',317,'',0,1);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` mediumtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Project',NULL,1),(2,'Finance','a:40:{s:5:\"leave\";N;s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";N;s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";N;s:8:\"estimate\";N;s:7:\"expense\";s:3:\"all\";s:5:\"order\";N;s:6:\"client\";N;s:4:\"lead\";N;s:6:\"ticket\";N;s:15:\"ticket_specific\";s:0:\"\";s:12:\"announcement\";N;s:23:\"help_and_knowledge_base\";N;s:23:\"can_manage_all_projects\";N;s:19:\"can_create_projects\";N;s:17:\"can_edit_projects\";N;s:19:\"can_delete_projects\";N;s:30:\"can_add_remove_project_members\";N;s:16:\"can_create_tasks\";N;s:14:\"can_edit_tasks\";N;s:16:\"can_delete_tasks\";N;s:20:\"can_comment_on_tasks\";N;s:24:\"show_assigned_tasks_only\";N;s:37:\"can_update_only_assigned_tasks_status\";N;s:21:\"can_create_milestones\";N;s:19:\"can_edit_milestones\";N;s:21:\"can_delete_milestones\";N;s:16:\"can_delete_files\";N;s:34:\"can_view_team_members_contact_info\";N;s:34:\"can_view_team_members_social_links\";N;s:29:\"team_member_update_permission\";N;s:38:\"team_member_update_permission_specific\";s:0:\"\";s:27:\"timesheet_manage_permission\";N;s:36:\"timesheet_manage_permission_specific\";s:0:\"\";s:21:\"disable_event_sharing\";N;s:22:\"hide_team_members_list\";N;s:28:\"can_delete_leave_application\";N;s:18:\"message_permission\";s:0:\"\";s:27:\"message_permission_specific\";s:0:\"\";}',1);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `setting_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'app',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `setting_name` (`setting_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('accepted_file_formats','jpg,jpeg,doc,pdf','app',0),('allow_partial_invoice_payment_from_clients','1','app',0),('allowed_ip_addresses','','app',0),('app_title','Audemars Management System','app',0),('client_can_pay_invoice_without_login','1','app',0),('company_email','irvan.sandoval@audemars.co.id','app',0),('currency_position','left','app',0),('currency_symbol','Rp','app',0),('date_format','d/m/Y','app',0),('decimal_separator',',','app',0),('default_currency','IDR','app',0),('default_due_date_after_billing_date','','app',0),('default_left_menu','a:16:{i:0;a:1:{s:4:\"name\";s:9:\"dashboard\";}i:1;a:1:{s:4:\"name\";s:8:\"projects\";}i:2;a:1:{s:4:\"name\";s:6:\"orders\";}i:3;a:2:{s:4:\"name\";s:7:\"clients\";s:11:\"is_sub_menu\";s:1:\"1\";}i:4;a:2:{s:4:\"name\";s:5:\"tasks\";s:11:\"is_sub_menu\";s:1:\"1\";}i:5;a:2:{s:4:\"name\";s:4:\"todo\";s:11:\"is_sub_menu\";s:1:\"1\";}i:6;a:2:{s:4:\"name\";s:5:\"gantt\";s:11:\"is_sub_menu\";s:1:\"1\";}i:7;a:2:{s:4:\"name\";s:8:\"timeline\";s:11:\"is_sub_menu\";s:1:\"1\";}i:8;a:2:{s:4:\"name\";s:10:\"timesheets\";s:11:\"is_sub_menu\";s:1:\"1\";}i:9;a:2:{s:4:\"name\";s:5:\"notes\";s:11:\"is_sub_menu\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:16:\"Material Request\";s:3:\"url\";s:28:\"http://18.140.4.134/material\";s:4:\"icon\";s:8:\"bookmark\";s:15:\"open_in_new_tab\";s:0:\"\";}i:11;a:4:{s:4:\"name\";s:10:\"Petty Cash\";s:3:\"url\";s:30:\"http://18.140.4.134:8080/pcash\";s:4:\"icon\";s:10:\"line-chart\";s:15:\"open_in_new_tab\";s:0:\"\";}i:12;a:5:{s:4:\"name\";s:8:\"Expenses\";s:11:\"is_sub_menu\";s:1:\"1\";s:3:\"url\";s:33:\"http://18.140.4.134:8080/expenses\";s:4:\"icon\";s:3:\"tag\";s:15:\"open_in_new_tab\";s:0:\"\";}i:13;a:1:{s:4:\"name\";s:12:\"team_members\";}i:14;a:1:{s:4:\"name\";s:8:\"settings\";}i:15;a:1:{s:4:\"name\";s:13:\"announcements\";}}','app',0),('default_theme_color','1d2632','app',0),('email_protocol','smtp','app',0),('email_sent_from_address','project@audemars.co.id','app',0),('email_sent_from_name','Project Team Audemars','app',0),('email_smtp_host','srv42.niagahoster.com','app',0),('email_smtp_pass','94fa6d8cbe7869c2ebc18b251d2705e1535ff4810d2a554ab3e495f0388bf71c8afacdfa63d9b2742723d90110eb88a473a1603de2235a32006d93841165dd903EDHQKJYUb7TPww5X6XEmbJcyKh2gXw6jBAgglXKOkKJ88MCrKGXn4WR8GK9nW4v','app',0),('email_smtp_port','587','app',0),('email_smtp_security_type','tls','app',0),('email_smtp_user','project@audemars.co.id','app',0),('enable_chat_via_pusher','1','app',0),('enable_footer','1','app',0),('enable_google_drive_api_to_upload_file','','app',0),('enable_push_notification','1','app',0),('enable_rich_text_editor','0','app',0),('favicon','a:1:{s:9:\"file_name\";s:30:\"_file6037345472f86-favicon.png\";}','app',0),('first_day_of_week','1','app',0),('footer_copyright_text','Audemars Indonesia','app',0),('footer_menus','a:0:{}','app',0),('google_drive_client_id','','app',0),('google_drive_client_secret','','app',0),('inactive_ticket_closing_date','2021-03-05','app',0),('initial_number_of_the_invoice','2','app',0),('invoice_color','','app',0),('invoice_footer','<p><br></p>','app',0),('invoice_logo','a:1:{s:9:\"file_name\";s:35:\"_file605c2f55f2b25-invoice-logo.png\";}','app',0),('invoice_prefix','','app',0),('invoice_style','style_2','app',0),('item_purchase_code','0','app',0),('language','english','app',0),('last_cron_job_time','1614909457','app',0),('last_hourly_job_time','1614909457','app',0),('module_announcement','1','app',0),('module_attendance','1','app',0),('module_chat','1','app',0),('module_estimate','','app',0),('module_estimate_request','','app',0),('module_event','','app',0),('module_expense','1','app',0),('module_gantt','1','app',0),('module_help','1','app',0),('module_invoice','1','app',0),('module_knowledge_base','','app',0),('module_lead','','app',0),('module_leave','','app',0),('module_location','','app',0),('module_message','','app',0),('module_note','1','app',0),('module_order','1','app',0),('module_project_timesheet','1','app',0),('module_ticket','','app',0),('module_timeline','1','app',0),('module_todo','1','app',0),('no_of_decimals','0','app',0),('pusher_app_id','1167906','app',0),('pusher_cluster','ap1','app',0),('pusher_key','aa5707bf44551a85d5e2','app',0),('pusher_secret','62b886d9cccd35f8fdf8','app',0),('rows_per_page','10','app',0),('rtl','0','app',0),('scrollbar','jquery','app',0),('send_bcc_to','','app',0),('send_invoice_due_after_reminder','','app',0),('send_invoice_due_pre_reminder','','app',0),('send_recurring_invoice_reminder_before_creation','','app',0),('show_background_image_in_signin_page','no','app',0),('show_logo_in_signin_page','no','app',0),('show_theme_color_changer','yes','app',0),('signin_page_background','a:4:{s:9:\"file_name\";s:37:\"system_file6045a99c0d75c-IMG_9900.jpg\";s:9:\"file_size\";s:6:\"468903\";s:7:\"file_id\";N;s:12:\"service_type\";N;}','app',0),('site_logo','a:1:{s:9:\"file_name\";s:32:\"_file60373409ea56e-site-logo.png\";}','app',0),('task_point_range','5','app',0),('time_format','24_hours','app',0),('timezone','Asia/Jakarta','app',0),('user_1_dashboard','','user',0),('user_1_disable_keyboard_shortcuts','0','user',0),('user_1_disable_push_notification','0','user',0),('user_1_hidden_topbar_menus','','user',0),('user_1_notification_sound_volume','9','user',0),('user_1_personal_language','english','user',0),('user_1_recently_meaning','1_days','user',0),('user_10_dashboard','','user',0),('user_11_dashboard','','user',0),('user_12_dashboard','','user',0),('user_13_dashboard','','user',0),('user_14_dashboard','','user',0),('user_15_dashboard','','user',0),('user_3_dashboard','','user',0),('user_4_dashboard','','user',0),('user_5_dashboard','','user',0),('user_6_dashboard','','user',0),('user_7_dashboard','','user',0),('user_8_dashboard','','user',0),('user_9_dashboard','','user',0),('weekends','6,0','app',0);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_links`
--

DROP TABLE IF EXISTS `social_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_links` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `facebook` text COLLATE utf8_unicode_ci,
  `twitter` text COLLATE utf8_unicode_ci,
  `linkedin` text COLLATE utf8_unicode_ci,
  `googleplus` text COLLATE utf8_unicode_ci,
  `digg` text COLLATE utf8_unicode_ci,
  `youtube` text COLLATE utf8_unicode_ci,
  `pinterest` text COLLATE utf8_unicode_ci,
  `instagram` text COLLATE utf8_unicode_ci,
  `github` text COLLATE utf8_unicode_ci,
  `tumblr` text COLLATE utf8_unicode_ci,
  `vine` text COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_links`
--

LOCK TABLES `social_links` WRITE;
/*!40000 ALTER TABLE `social_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stripe_ipn`
--

DROP TABLE IF EXISTS `stripe_ipn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stripe_ipn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_intent` text COLLATE utf8_unicode_ci NOT NULL,
  `verification_code` text COLLATE utf8_unicode_ci NOT NULL,
  `payment_verification_code` text COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `contact_user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stripe_ipn`
--

LOCK TABLES `stripe_ipn` WRITE;
/*!40000 ALTER TABLE `stripe_ipn` DISABLE KEYS */;
/*!40000 ALTER TABLE `stripe_ipn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_status`
--

DROP TABLE IF EXISTS `task_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `key_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_status`
--

LOCK TABLES `task_status` WRITE;
/*!40000 ALTER TABLE `task_status` DISABLE KEYS */;
INSERT INTO `task_status` VALUES (1,'To Do','to_do','#F9A52D',0,0),(2,'In progress','in_progress','#1672B9',1,0),(3,'Done','done','#00B393',2,0);
/*!40000 ALTER TABLE `task_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `project_id` int(11) NOT NULL,
  `milestone_id` int(11) NOT NULL DEFAULT '0',
  `assigned_to` int(11) NOT NULL,
  `deadline` date DEFAULT NULL,
  `labels` text COLLATE utf8_unicode_ci,
  `points` tinyint(4) NOT NULL DEFAULT '1',
  `status` enum('to_do','in_progress','done') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'to_do',
  `status_id` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `collaborators` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `recurring` tinyint(1) NOT NULL DEFAULT '0',
  `repeat_every` int(11) NOT NULL DEFAULT '0',
  `repeat_type` enum('days','weeks','months','years') COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_cycles` int(11) NOT NULL DEFAULT '0',
  `recurring_task_id` int(11) NOT NULL DEFAULT '0',
  `no_of_cycles_completed` int(11) NOT NULL DEFAULT '0',
  `created_date` date NOT NULL,
  `blocking` text COLLATE utf8_unicode_ci NOT NULL,
  `blocked_by` text COLLATE utf8_unicode_ci NOT NULL,
  `parent_task_id` int(11) NOT NULL,
  `next_recurring_date` date DEFAULT NULL,
  `reminder_date` date NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `status_changed_at` datetime DEFAULT NULL,
  `deleted` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,'Perizinan / Surat Perintah Kerja','',1,0,1,'2021-02-07','',1,'to_do',3,'2021-02-01','1',0,0,0,'',0,0,0,'2021-02-25','','',0,NULL,'0000-00-00',0,NULL,1),(2,'Perizinan / Surat Perintah Kerja','',1,0,1,'2021-02-07','',2,'to_do',3,'2021-02-01','',0,0,0,'',0,0,0,'2021-02-25','','',0,NULL,'0000-00-00',0,NULL,1),(3,'Perizinan / Surat Perintah Kerja','',1,0,1,'2021-02-07','',1,'to_do',2,'2021-02-01','',0,0,0,'',0,0,0,'2021-02-25','','',0,NULL,'0000-00-00',0,NULL,1),(4,'Perizinan / Surat Perintah Kerja','',1,0,0,'2021-02-14','',2,'to_do',3,'2021-02-08','',0,0,0,'',0,0,0,'2021-02-25','','',0,NULL,'0000-00-00',0,NULL,0),(5,'Install Test Tank','',1,0,0,'2021-02-28','',3,'to_do',3,'2021-02-15','',0,0,0,'',0,0,0,'2021-02-25','','',0,NULL,'0000-00-00',0,NULL,0),(6,'Pengukuran Produksi (Test Tank)','',1,0,0,'2021-06-30','',3,'to_do',1,'2021-03-01','',0,0,0,'',0,0,0,'2021-02-25','','',0,NULL,'0000-00-00',0,NULL,0),(7,'Install Power Supply','',1,0,0,'2021-03-07','',3,'to_do',2,'2021-02-22','3',0,0,0,'',0,0,0,'2021-02-25','','',0,NULL,'0000-00-00',0,'2021-03-05 09:29:47',0),(8,'Invoicing Mobilisasi','',1,0,0,'2021-03-07','',3,'to_do',1,'2021-03-01','3',0,0,0,'',0,0,0,'2021-02-25','','',0,NULL,'0000-00-00',0,NULL,0),(9,'install FAST Monitoring','',1,0,9,'2021-03-21','',3,'to_do',1,'2021-03-08','3',0,0,0,'',0,0,0,'2021-02-25','','',0,NULL,'0000-00-00',0,NULL,0),(10,'Pengumpulan Data Baseline','',1,0,0,'2021-04-25','',3,'to_do',1,'2021-03-22','',0,0,0,'',0,0,0,'2021-02-25','','',0,NULL,'0000-00-00',0,NULL,0),(11,'Analisa dan Kesepakatan Baseline','',1,0,0,'2021-04-30','',3,'to_do',1,'2021-04-26','3',0,0,0,'',0,0,0,'2021-02-25','','',0,NULL,'0000-00-00',0,NULL,0),(12,'FAST Surface','',1,0,0,'2021-04-11','',3,'to_do',1,'2021-04-01','3',0,0,0,'',0,0,0,'2021-02-25','','',0,NULL,'0000-00-00',0,NULL,0),(13,'FAST Subsurface','',1,0,0,'2021-04-25','',3,'to_do',1,'2021-04-12','3',0,0,0,'',0,0,0,'2021-02-25','','',0,NULL,'0000-00-00',0,NULL,0),(14,'Onstream Project','',1,0,0,'2021-06-30','',3,'to_do',1,'2021-05-01','3',0,0,0,'',0,0,0,'2021-02-25','','',0,NULL,'0000-00-00',0,NULL,0),(15,'Evaluasi Project','',1,0,0,'2021-07-31','',3,'to_do',1,'2021-07-01','3',0,0,0,'',0,0,0,'2021-02-25','','',0,NULL,'0000-00-00',0,NULL,0),(16,'Dismantle dan Demobilisasi','',1,0,0,'2021-08-31','',3,'to_do',1,'2021-08-01','3',0,0,0,'',0,0,0,'2021-02-25','','',0,NULL,'0000-00-00',0,NULL,0);
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `percentage` double NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxes`
--

LOCK TABLES `taxes` WRITE;
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
INSERT INTO `taxes` VALUES (1,'Tax (10%)',10,0);
/*!40000 ALTER TABLE `taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `members` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'Finance','10',1);
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_member_job_info`
--

DROP TABLE IF EXISTS `team_member_job_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_member_job_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date_of_hire` date DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `salary` double NOT NULL DEFAULT '0',
  `salary_term` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_member_job_info`
--

LOCK TABLES `team_member_job_info` WRITE;
/*!40000 ALTER TABLE `team_member_job_info` DISABLE KEYS */;
INSERT INTO `team_member_job_info` VALUES (1,3,'0000-00-00',0,0,''),(2,4,'0000-00-00',0,0,''),(3,5,'0000-00-00',0,0,''),(4,6,'0000-00-00',0,0,''),(5,7,'0000-00-00',0,0,''),(6,8,'0000-00-00',0,0,''),(7,9,'0000-00-00',0,0,''),(8,10,'0000-00-00',0,0,''),(9,11,'0000-00-00',0,0,''),(10,12,'0000-00-00',0,0,''),(11,13,'0000-00-00',0,0,''),(12,14,'0000-00-00',0,0,''),(13,15,'0000-00-00',0,0,''),(14,16,'0000-00-00',0,0,'');
/*!40000 ALTER TABLE `team_member_job_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_comments`
--

DROP TABLE IF EXISTS `ticket_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `files` longtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_comments`
--

LOCK TABLES `ticket_comments` WRITE;
/*!40000 ALTER TABLE `ticket_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_templates`
--

DROP TABLE IF EXISTS `ticket_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `ticket_type_id` int(11) NOT NULL,
  `private` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_templates`
--

LOCK TABLES `ticket_templates` WRITE;
/*!40000 ALTER TABLE `ticket_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_types`
--

DROP TABLE IF EXISTS `ticket_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_types`
--

LOCK TABLES `ticket_types` WRITE;
/*!40000 ALTER TABLE `ticket_types` DISABLE KEYS */;
INSERT INTO `ticket_types` VALUES (1,'General Support',0);
/*!40000 ALTER TABLE `ticket_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `ticket_type_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `requested_by` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `status` enum('new','client_replied','open','closed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `last_activity_at` datetime DEFAULT NULL,
  `assigned_to` int(11) NOT NULL DEFAULT '0',
  `creator_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `creator_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `labels` text COLLATE utf8_unicode_ci,
  `task_id` int(11) NOT NULL,
  `closed_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `to_do`
--

DROP TABLE IF EXISTS `to_do`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `to_do` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `labels` text COLLATE utf8_unicode_ci,
  `status` enum('to_do','done') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'to_do',
  `start_date` date DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_do`
--

LOCK TABLES `to_do` WRITE;
/*!40000 ALTER TABLE `to_do` DISABLE KEYS */;
/*!40000 ALTER TABLE `to_do` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` enum('staff','client','lead') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'client',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `message_checked_at` datetime DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT '0',
  `notification_checked_at` datetime DEFAULT NULL,
  `is_primary_contact` tinyint(1) NOT NULL DEFAULT '0',
  `job_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Untitled',
  `disable_login` tinyint(1) NOT NULL DEFAULT '0',
  `note` mediumtext COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `alternative_address` text COLLATE utf8_unicode_ci,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ssn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci DEFAULT NULL,
  `sticky_note` mediumtext COLLATE utf8_unicode_ci,
  `skype` text COLLATE utf8_unicode_ci,
  `enable_web_notification` tinyint(1) NOT NULL DEFAULT '1',
  `enable_email_notification` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `last_online` datetime DEFAULT NULL,
  `requested_account_removal` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_type` (`user_type`),
  KEY `email` (`email`),
  KEY `client_id` (`client_id`),
  KEY `deleted` (`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Irvan','Sandoval','staff',1,0,'irvan.sandoval@audemars.co.id','$2y$10$OGFrOmnAPAfGtY7X97.G3OlanY/4v6fwpWJd/dShXMo/UWNhjjkRW',NULL,'active','2021-03-22 03:41:18',0,'2021-03-15 11:17:33',0,'Admin',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'male','BISMILLAH !!\nAIMS v1.0 released! (10 Maret 2021)\n\nUpcoming feature:\n- Material Request System\n- Petty Cash Management\n- Business Development\n- Production Management System\n- Executive Management System\n- Service Request System',NULL,1,1,'2021-02-25 11:38:16','2021-03-26 04:45:49',0,0),(2,'Tom','Kurus','client',0,0,'tom.kurus13@gmail.com','$2y$10$gwUfsTdyl/XVAKBBnotezek.1DvW2VWGcxq3r.x9PyBgpRebQztiC',NULL,'active',NULL,2,NULL,1,'Untitled',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2021-02-25 06:38:00',NULL,0,1),(3,'Ilham','Asaddin','staff',0,0,'ilham.asaddin@audemars.co.id','$2y$10$6jabr9PIqz1HMxiJ2qogp.OoiyHVwJoeeuvluteEhnHM/ee52l3Mi',NULL,'active','2021-03-08 04:04:39',0,NULL,0,'Project Manager',0,NULL,'ilham.asaddin@audemars.co.id',NULL,'',NULL,NULL,NULL,'male',NULL,NULL,1,1,'2021-02-25 06:43:40','2021-03-15 04:11:16',0,0),(4,'Shita','Denalla','staff',0,0,'shita.denalla@audemars.co.id','$2y$10$bzR8z9BrCPfxngxfT0YJWOEx6qa35gvFH2eesYVr03ZNdS7abBOZW',NULL,'active','2021-03-08 04:01:23',0,NULL,0,'Project Engineer',0,NULL,'',NULL,'',NULL,NULL,NULL,'female',NULL,NULL,1,1,'2021-02-25 07:20:31','2021-03-15 04:12:44',0,0),(5,'Andis','Faza','staff',0,0,'andis.faza@audemars.co.id','$2y$10$f5H2.rXqx47/YlHZFcCs9uCsr0sz4C.vCF5.Wz0iB10E2zg6dhYpS',NULL,'active',NULL,0,NULL,0,'Project Engineer',0,NULL,'',NULL,'',NULL,NULL,NULL,'female',NULL,NULL,1,1,'2021-02-25 07:21:31','2021-03-15 04:33:44',0,0),(6,'Ardy','Mardiansyah','staff',0,0,'ardy_mardiansyah@audemars.co.id','$2y$10$3/WMJfIfD6Z4sgbGdX9Y1eSL2WzK844MHaJ9ea/MpGm86uCNglddi',NULL,'active',NULL,0,NULL,0,'Manager',0,NULL,'',NULL,'',NULL,NULL,NULL,'male',NULL,NULL,1,1,'2021-02-25 07:25:08','2021-03-15 04:10:48',0,0),(7,'Nur','Eko','staff',0,0,'nur.eko@audemars.co.id','$2y$10$a1dtr6eajYVvXPmDhIYkP.aJZy/yxibRV86ENFJnZJrpVwR1chw5S',NULL,'active',NULL,0,NULL,0,'Project Engineer',0,NULL,'',NULL,'',NULL,NULL,NULL,'male',NULL,NULL,1,1,'2021-02-25 07:26:51','2021-03-15 04:12:14',0,0),(8,'Abdul','Rachim','staff',0,0,'arachim@audemars.co.id','$2y$10$dkEYdDXRfIplQIrqUILb7./oPBLhMfUS9XJSwtsGWEximoidv4jhC',NULL,'active',NULL,0,NULL,0,'Finance',0,NULL,'',NULL,'',NULL,NULL,NULL,'male',NULL,NULL,1,1,'2021-02-25 07:27:27','2021-03-19 05:30:12',0,0),(9,'Teguh','Satrio','staff',0,0,'teguh.satrio1612@gmail.com','$2y$10$cdtIjpXsFXoGBbv4TQ7.E.W848MQoSArJsI00tpOtzG4caGO38ry6',NULL,'active',NULL,0,NULL,0,'Electrical Engineer',0,NULL,'',NULL,'',NULL,NULL,NULL,'male',NULL,NULL,1,1,'2021-02-25 07:50:39','2021-03-15 05:28:01',0,0),(10,'Khoirun','Nisa','staff',0,0,'khoirunnisa@audemars.co.id','$2y$10$TRXgMgl9fMJSXJu8cjKwqu1tiAUsdiI6d9QHnvHjArncIO8E5sJ2u',NULL,'active','2021-03-16 07:06:13',0,'2021-03-16 06:58:38',0,'Admin',0,NULL,'',NULL,'',NULL,NULL,NULL,'female','list to do 01/04/2021 :\n1. Update BPJS Kesehatan karyawan field\n2. Update BPJS Ketenagakerjaan Satria\n',NULL,1,1,'2021-02-25 07:54:18','2021-03-25 08:06:31',0,0),(11,'Mey','Rika','staff',0,0,'meyrikahs@gmail.com','$2y$10$jdP9pTbtb24wosh3G40c..hvFrKNNVcQ5BLGOeDjiFofufC0k4AL.',NULL,'active','2021-03-16 06:50:56',0,NULL,0,'Admin Cibitung',0,NULL,'',NULL,'',NULL,NULL,NULL,'female','\n',NULL,1,1,'2021-03-05 08:36:36','2021-03-17 08:15:57',0,0),(12,'Mr','Irwandi','staff',0,0,'irwandi@audemars.co.id','$2y$10$IcQryGNJAoQFMpgrKnIpOO5EDUfWDtNw6PEF2ne.HfWKtU0I6HSga',NULL,'active',NULL,0,NULL,0,'Director',0,NULL,'',NULL,'',NULL,NULL,NULL,'male',NULL,NULL,1,1,'2021-03-08 04:23:05','2021-03-15 04:11:25',0,0),(13,'Satria Putra','Samudra','staff',0,0,'satria.samudrap@audemars.co.id','$2y$10$OMvDeo57b2icvuxpl2ntQui/Pmfa0k4NXTu4DJOJENYtk3631k3fq',NULL,'active','2021-03-22 12:34:14',0,'2021-03-18 12:33:09',0,'Project Enginner',0,NULL,'satria.samudrap@gmail.com','','08117599949','','0000-00-00','','male',NULL,'',1,1,'2021-03-08 04:31:15','2021-03-23 12:01:25',0,0),(14,'Fauzi','Oktavian','staff',0,0,'fauzi.oktavian@audemars.co.id','$2y$10$Q6K5d.McO7S8pJmSMlsC7.lWkZkclcECIOxVnCoG7/48wiuC2.AyK',NULL,'active',NULL,0,NULL,0,'Engineer',0,NULL,'',NULL,'',NULL,NULL,NULL,'male',NULL,NULL,1,1,'2021-03-08 04:32:20','2021-03-15 04:11:08',0,0),(15,'Muhammad','Zaky','staff',0,0,'muhammad.zaky@audemars.co.id','$2y$10$WtMdV1BaEbLYec4kkR576ue2C/JC6RlLsmANA4rIzOO3QoC9T2FdS',NULL,'active',NULL,0,NULL,0,'Project Enginner',0,NULL,'',NULL,'',NULL,NULL,NULL,'male',NULL,NULL,1,1,'2021-03-08 04:43:22','2021-03-15 04:11:33',0,0),(16,'Aziz','Fahrurrozi','staff',0,0,'azizfahrurrozi97@yahoo.com','$2y$10$GmPrDnjcgAeF2H5k3rJq.edWBgUH04HskS/haAcJwG1leN.BOUUye',NULL,'active',NULL,0,NULL,0,'Electrical Engineer',0,NULL,'',NULL,'',NULL,NULL,NULL,'male',NULL,NULL,1,1,'2021-03-15 04:14:19',NULL,0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verification`
--

DROP TABLE IF EXISTS `verification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` enum('invoice_payment','reset_password','verify_email','invitation') COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verification`
--

LOCK TABLES `verification` WRITE;
/*!40000 ALTER TABLE `verification` DISABLE KEYS */;
INSERT INTO `verification` VALUES (1,'2021-02-25 06:39:39','invitation','CIUcJFZzJm','a:3:{s:5:\"email\";s:21:\"tom.kurus13@gmail.com\";s:4:\"type\";s:5:\"staff\";s:11:\"expire_time\";i:1614321579;}',0),(2,'2021-03-10 06:10:22','reset_password','kShkEfmmPr','a:2:{s:5:\"email\";s:22:\"nur.eko@audemars.co.id\";s:11:\"expire_time\";i:1615443022;}',0);
/*!40000 ALTER TABLE `verification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-26  4:53:37
