-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db_urad
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

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
-- Current Database: `db_urad`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db_urad` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `db_urad`;

--
-- Table structure for table `iletisims`
--

DROP TABLE IF EXISTS `iletisims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iletisims` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iletisims`
--

LOCK TABLES `iletisims` WRITE;
/*!40000 ALTER TABLE `iletisims` DISABLE KEYS */;
INSERT INTO `iletisims` VALUES (2,'ögrenci dersleri','sınavlar hakkında bilgi istiyorum','student@gmail.com','2015-02-22 17:29:21','2015-02-22 17:29:21'),(3,'ögrenci dersleri','sınavlar hakkında bilgi istiyorum 2','student@gmail.com','2015-02-22 17:32:10','2015-02-22 17:32:10'),(4,'urad','urad hakkında bilgi','uyesiz@gmail.com','2015-02-22 18:14:41','2015-02-22 18:14:41'),(5,'kurum','kurum ilk mail','instution@gmail.com','2015-02-22 18:15:02','2015-02-22 18:15:02'),(6,'radiologist','sistem ne zaman acılcak','radiologist@gmail.com','2015-02-22 18:15:48','2015-02-22 18:15:48'),(8,'yeni uye','uyelık onay işlemi','uysesiz2@gmail.com','2015-02-22 18:26:50','2015-02-22 18:26:50'),(9,'bbb','bbbbb','teacher@gmail.com','2015-02-22 20:44:16','2015-02-22 20:44:16');
/*!40000 ALTER TABLE `iletisims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagetaleps`
--

DROP TABLE IF EXISTS `imagetaleps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagetaleps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gonderen_tc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gonderen_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gonderen_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_tur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `unvan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hastatc` text COLLATE utf8_unicode_ci,
  `hastaname` text COLLATE utf8_unicode_ci,
  `hastayasi` int(11) DEFAULT NULL,
  `hastacinsiyet` text COLLATE utf8_unicode_ci,
  `durum` text COLLATE utf8_unicode_ci,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `report_id` int(11) DEFAULT NULL,
  `audiofile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sekreter_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rapor_suresi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rapor_ucreti` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagetaleps`
--

LOCK TABLES `imagetaleps` WRITE;
/*!40000 ALTER TABLE `imagetaleps` DISABLE KEYS */;
INSERT INTO `imagetaleps` VALUES (1,'22222222222','esra','instution@gmail.com','US','2015-02-22 22:13:50','2015-03-12 16:21:48','Yrd.Doç','1111111111111111','hasta hasta',55,'E','Onay','Caudal_regresyon_sendromu_sag_MR.jpg',10,24,NULL,NULL,NULL,NULL),(2,'22222222222','esra','instution@gmail.com','MR','2015-02-22 23:21:14','2015-06-25 12:06:31','Prof.','222222222222','betül yılmaz',26,'E','Onay','Caudal_regresyon_sendromu_koroner_MR.jpg',11,40,NULL,NULL,NULL,NULL),(5,'22222222222','esra','instution@gmail.com','MR','2015-02-25 21:06:00','2015-03-12 16:17:40','Prof.','aaa','aaaa',0,'E','Talep','gereksiz_yere_rontgen_cektirmeyin.jpg',13,NULL,NULL,NULL,NULL,NULL),(6,'22222222222','esra','instution@gmail.com','PET','2015-02-25 21:27:12','2015-03-17 21:15:04','Doç.','aaa','aaa',0,'E','Havuz','images.jpeg',NULL,NULL,NULL,NULL,NULL,NULL),(8,'33333333333','aaaaaaaaa','instution2@gmail.com','MR','2015-02-28 17:30:42','2015-03-01 11:09:43','Yrd.Doç','11111111111','aaaaaa',16,'E','Talep','gereksiz_yere_rontgen_cektirmeyin.jpg',13,NULL,NULL,NULL,NULL,NULL),(9,'33333333333','aaaaaaaaa','instution2@gmail.com','PET','2015-02-28 17:33:37','2015-03-18 10:29:17','Doç.','11111111111111','ssssss',222,'E','Havuz','Caudal_regresyon_sendromu_koroner_MR.jpg',NULL,NULL,NULL,NULL,NULL,NULL),(10,'33333333333','aaaaaaaaa','instution2@gmail.com','MR','2015-02-28 17:34:29','2015-03-01 14:06:22','Doç.','555555555','vvvvv',23,'E','Talep','Caudal_regresyon_sendromu_koroner_MR.jpg',13,NULL,NULL,NULL,NULL,NULL),(11,'22222222222','esra','instution@gmail.com','MR','2015-03-02 19:00:31','2015-03-17 17:35:42','Doç.','1234567891','ahmet yıldız',50,'E','Kabul','images.jpeg',10,NULL,NULL,NULL,NULL,NULL),(12,'22222222222','esra','instution@gmail.com','US','2015-03-11 22:02:31','2015-06-25 11:49:37','Yrd.Doç','222222','aaa',23,'K','Rapor','images.jpeg',12,39,NULL,NULL,NULL,NULL),(13,'22222222222','esra','instution@gmail.com','MR','2015-03-17 20:41:50','2015-03-18 10:29:20','Yrd.Doç','00000000000','hhhhhhhhhh',45,'E','Onay','Caudal_regresyon_sendromu_sag_MR.jpg',9,36,NULL,NULL,NULL,NULL),(14,'22222222222','esra','instution@gmail.com','MR','2015-03-17 20:43:50','2015-06-25 11:50:18','Yrd.Doç','333333','fff',45,'E','Onay','images.jpeg',9,37,'Ajda_Pekkan_-_Arada_S_rada.mp3','17',NULL,NULL),(15,'22222222222','esra','instution@gmail.com','MR','2015-03-17 20:47:45','2015-06-22 12:47:53','Yrd.Doç','555555555555','dddddddd',45,'E','Rapor/Taslak','images.jpeg',9,38,'Sila_-_Vaziyetler.mp3','17',NULL,NULL),(16,'22222222222','esra','instution@gmail.com','BT','2015-03-18 10:17:30','2015-03-18 10:19:24','Prof.','33333','fff',0,'E','Havuz','images.jpeg',NULL,NULL,NULL,NULL,NULL,NULL),(17,'22222222222','esra','instution@gmail.com','MR','2015-05-12 13:16:43','2015-06-22 11:48:38','Prof.','aaaa','aaa',12,'E','Sekretarya','images.jpeg',9,NULL,'Ebru_G_nde__-_M_stehak.mp3','17',NULL,NULL),(18,'22222222222','esra','instution@gmail.com','US','2015-06-23 09:12:29','2015-06-23 09:13:22','Doç.','2222222222222222','sssss',34,'E','Kabul','images.jpeg',9,NULL,NULL,NULL,NULL,NULL),(19,'22222222222','esra','instution@gmail.com','BT','2015-06-23 09:16:08','2015-06-23 09:16:08','Doç.','44444444444444','gggg',23,'E','Talep','Caudal_regresyon_sendromu_sag_MR.jpg',9,NULL,NULL,NULL,NULL,NULL),(20,'22222222222','esra','instution@gmail.com','MR','2015-06-24 07:09:13','2015-06-24 07:09:13','Prof.','33333333333333','ddddd',33,'E','Talep','Caudal_regresyon_sendromu_koroner_MR.jpg',9,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `imagetaleps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `result` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `onaylayan` int(11) DEFAULT NULL,
  `degerlendiren` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (21,'rapor3','1.iterasyon','geri gönder','2015-03-12 15:31:13','2015-03-12 15:31:13',NULL,10),(22,'rapor1','1.iterasyon','geri gönder','2015-03-12 15:55:50','2015-03-12 15:55:50',NULL,13),(23,'rapor','radyolog2','radyolog2','2015-03-12 16:01:26','2015-03-12 16:01:26',NULL,10),(24,'radyolog2','rapor2','red','2015-03-12 16:01:48','2015-03-12 16:21:48',1,10),(25,'2.talep','aaaa','aaa','2015-03-12 16:13:34','2015-03-12 16:13:34',NULL,10),(26,'aaa','aaa','aa','2015-03-12 16:20:39','2015-03-12 16:20:39',NULL,14),(27,'bbb','bbbb','bb','2015-03-12 16:22:34','2015-03-12 16:22:34',NULL,9),(28,'bbb','bbb','bbb','2015-03-12 16:22:52','2015-03-12 16:22:52',NULL,9),(29,'ccc','ccc','cc','2015-03-12 16:23:53','2015-03-12 16:23:53',NULL,9),(30,'cc','cc','cc','2015-03-12 16:24:10','2015-03-12 16:24:10',NULL,9),(31,'aaa','dfsfyuıklkjhgfdsa','dfskjlşiilkjhgfd','2015-03-12 17:00:26','2015-03-12 17:00:26',NULL,9),(32,'yeni rapor','raporlrı artık kabul et','aaa','2015-03-12 17:03:01','2015-03-12 17:03:01',NULL,9),(33,'ttttt','admin havuz yonlendirme test<br>','havuza gönder','2015-03-17 21:11:33','2015-03-17 21:11:33',NULL,9),(34,'havuza yönlendir','havuz 2<br>','havuza yönlendir','2015-03-17 21:13:50','2015-03-17 21:13:50',NULL,14),(35,'ggggggggggggg','ggggggggggggggggggg','gggggggggggg','2015-03-17 21:20:16','2015-03-17 21:20:16',NULL,9),(36,'sss','ddd<b>dddd<br><br></b>','ggg','2015-03-18 10:20:20','2015-03-18 10:29:20',1,9),(37,'ses dosyası deneme','ses acıklama','ses sonuc','2015-06-22 12:14:02','2015-06-25 11:50:18',1,17),(38,'ses denemene2','deneme2','ses sonuc deneme2','2015-06-22 12:47:53','2015-06-22 12:47:53',NULL,17),(39,'a','aaaa','aaaa','2015-06-25 11:49:37','2015-06-25 11:49:37',NULL,12),(40,'addddhh','lllllllllllllllllllllllllllllllll','llllllllllllllllllllllllll','2015-06-25 12:05:04','2015-06-25 12:06:31',1,11);
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20150210131521'),('20150222165734'),('20150222210301'),('20150222212047'),('20150222213422'),('20150222213432'),('20150223101209'),('20150223101210'),('20150223131210'),('20150223131410'),('20150223132209'),('20150225185706'),('20150225190842'),('20150228094905'),('20150301083047'),('20150309221705'),('20150309222005'),('20150311010605'),('20150312010134'),('20150512135808'),('20150622135808'),('20150622185808'),('20150622195808'),('20150622205808'),('20150622215808'),('20150623105526');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taleparsivs`
--

DROP TABLE IF EXISTS `taleparsivs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taleparsivs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rapor_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `imagetalep_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taleparsivs`
--

LOCK TABLES `taleparsivs` WRITE;
/*!40000 ALTER TABLE `taleparsivs` DISABLE KEYS */;
INSERT INTO `taleparsivs` VALUES (24,22,13,'2015-03-12 15:58:16','2015-03-12 15:58:16',5),(25,25,10,'2015-03-12 16:17:39','2015-03-12 16:17:39',5),(26,26,14,'2015-03-12 16:21:04','2015-03-12 16:21:04',9),(27,23,10,'2015-03-12 16:21:52','2015-03-12 16:21:52',2),(28,21,13,'2015-03-12 16:22:01','2015-03-12 16:22:01',6),(29,27,9,'2015-03-12 16:23:20','2015-03-12 16:23:20',2),(30,28,9,'2015-03-12 16:23:26','2015-03-12 16:23:26',6),(31,29,9,'2015-03-12 17:00:59','2015-03-12 17:00:59',2),(32,30,9,'2015-03-12 17:01:02','2015-03-12 17:01:02',6),(33,31,9,'2015-03-12 17:01:06','2015-03-12 17:01:06',9),(34,32,9,'2015-03-17 20:54:11','2015-03-17 20:54:11',2),(35,32,9,'2015-03-17 20:56:31','2015-03-17 20:56:31',2),(36,32,9,'2015-03-17 20:58:51','2015-03-17 20:58:51',2),(37,32,9,'2015-03-17 20:59:20','2015-03-17 20:59:20',2),(38,32,9,'2015-03-17 21:00:09','2015-03-17 21:00:09',2),(39,32,9,'2015-03-17 21:01:11','2015-03-17 21:01:11',2),(40,32,9,'2015-03-17 21:02:56','2015-03-17 21:02:56',2),(41,32,9,'2015-03-17 21:03:18','2015-03-17 21:03:18',2),(42,32,9,'2015-03-17 21:04:25','2015-03-17 21:04:25',2),(43,33,9,'2015-03-17 21:12:45','2015-03-17 21:12:45',6),(44,34,14,'2015-03-17 21:15:04','2015-03-17 21:15:04',6),(45,35,9,'2015-03-18 10:29:17','2015-03-18 10:29:17',9);
/*!40000 ALTER TABLE `taleparsivs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ucrets`
--

DROP TABLE IF EXISTS `ucrets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ucrets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `atur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fiyat` float DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ucrets`
--

LOCK TABLES `ucrets` WRITE;
/*!40000 ALTER TABLE `ucrets` DISABLE KEYS */;
INSERT INTO `ucrets` VALUES (6,'zaman','3h',20,'2015-06-24 06:10:11','2015-06-24 06:10:11'),(7,'zaman','2h',25,'2015-06-24 06:10:24','2015-06-24 06:10:24'),(8,'zaman','1h',30,'2015-06-24 06:10:36','2015-06-24 06:10:36'),(9,'zaman','24s',35,'2015-06-24 06:10:50','2015-06-24 06:10:50'),(10,'zaman','12s',45,'2015-06-24 06:10:59','2015-06-24 06:43:51'),(11,'unvan','Uzman',5,'2015-06-24 06:11:37','2015-06-24 06:11:37'),(12,'unvan','Uzm.Dr',10,'2015-06-24 06:11:48','2015-06-24 06:11:48'),(13,'unvan','Yrd.Doç',15,'2015-06-24 06:12:04','2015-06-24 06:12:04'),(14,'unvan','Doç.',20,'2015-06-24 06:12:15','2015-06-24 06:12:15'),(15,'unvan','Prof.',25,'2015-06-24 06:12:26','2015-06-24 06:12:26'),(16,'Göruntu Türü','MR',5,'2015-06-24 06:12:38','2015-06-24 06:12:38'),(17,'Göruntu Türü','BT',2.5,'2015-06-24 06:12:56','2015-06-24 06:12:56'),(18,'Göruntu Türü','Röntgen',2,'2015-06-24 06:13:10','2015-06-24 06:13:10'),(19,'Göruntu Türü','US',2,'2015-06-24 06:13:23','2015-06-24 06:13:23'),(20,'Göruntu Türü','PET',8,'2015-06-24 06:13:42','2015-06-24 06:13:42'),(21,'Göruntu Türü','SPECT',8,'2015-06-24 06:13:54','2015-06-24 06:13:54'),(22,'zaman','1a',15,'2015-06-24 07:20:03','2015-06-24 07:20:03'),(23,'Genel','Genel',50,'2015-06-24 08:04:50','2015-06-24 08:04:50');
/*!40000 ALTER TABLE `ucrets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nameSurname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adres` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uzmnlk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unvn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dipScl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unviversty` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bolum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sinif` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aktif` tinyint(1) DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `indirim` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@gmail.com','$2a$10$A4zUSBVWHFNQLl/TPdjG6eagX1GFrB2IUfT0tBzRx.TyjP38X9Azu','admin','22222222222','admin','22222222222','samsun',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,82,'2015-06-30 07:55:13','2015-06-29 05:33:55','127.0.0.1','127.0.0.1','2015-02-22 13:12:42','2015-06-30 07:55:13',NULL),(2,'teacher@gmail.com','$2a$10$Xzuhnwa81aDJ2rZCbBmJ3.jJS17DFXj/OZ59TRadYcka6VUV0oGHy','teacher','22222222222','teacher','22222222222','samsun',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,7,'2015-06-25 13:51:29','2015-02-25 22:26:21','127.0.0.1','127.0.0.1','2015-02-22 13:12:42','2015-06-25 13:51:29',NULL),(3,'student@gmail.com','$2a$10$nHW8/GrWo97qSLeKjC1dYOl3H0zNk/X7HuM3fQCRud.b8.ieTsOLm','student','22222222222','öğrenci','22222222222','samsun',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,19,'2015-06-25 13:14:09','2015-03-08 16:20:48','127.0.0.1','127.0.0.1','2015-02-22 13:12:42','2015-06-25 13:14:09',NULL),(4,'instution@gmail.com','$2a$10$aysm.PMnXEXW.v.GUWRAWu3h8s6HWf5bv5KHsm4/1bWvirGU9SQ/S','instution','22222222222','esra','22222222222','samsun',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,58,'2015-06-25 12:05:17','2015-06-25 11:43:47','127.0.0.1','127.0.0.1','2015-02-22 13:12:42','2015-06-25 12:05:17',NULL),(9,'radiologist@gmail.com','$2a$10$2IvtiCg0etagni/iUoPRTu.VED1//WF7JI2qJqsmHaOI5V2V3xJOe','radiologist','11111111111','radyolog1','11111111111','samsun','MR','Yrd.Doç','11111',NULL,'','',1,NULL,NULL,NULL,56,'2015-06-26 11:00:13','2015-06-25 13:56:40','127.0.0.1','127.0.0.1','2015-02-25 14:44:38','2015-06-26 11:00:13',NULL),(10,'radiologist2@gmail.com','$2a$10$9jEorkHRUSdUTqp9FLqGK.J.3mVjAn7kM0hCZ9MAF4vS3GzSo5eZi','radiologist','22222222222','radyolog2','2222222222','istanbul','MR','Doç.','222222',NULL,'','',1,NULL,NULL,NULL,10,'2015-06-22 12:09:28','2015-03-17 20:44:32','127.0.0.1','127.0.0.1','2015-02-25 14:45:19','2015-06-22 12:09:28',NULL),(11,'radiologist3@gmail.com','$2a$10$b0NJ5dwixoRpKFnICykz0uEU6Wnz.U2ngewvHplLqiTne87mNDZJy','radiologist','33333333333','radyolog3','33333333333','istanbul','MR','Prof.','333333',NULL,'','',1,NULL,NULL,NULL,3,'2015-06-25 12:04:36','2015-03-17 21:06:43','127.0.0.1','127.0.0.1','2015-02-25 14:46:13','2015-06-25 12:04:36',NULL),(12,'radiologist4@gmail.com','$2a$10$X2pGEj/LRYlof.kNpojF9eDU.Tdw9ok.xM6fKkTPz.8Ore8arcKdS','radiologist','44444444444','radyolog4','4444444444','istanbul','MR','Yrd.Doç','',NULL,'','',1,NULL,NULL,NULL,3,'2015-06-25 11:49:11','2015-03-11 22:47:48','127.0.0.1','127.0.0.1','2015-02-25 14:47:10','2015-06-25 11:49:11',NULL),(13,'radiologist5@gmail.com','$2a$10$1qjYZg7V5TV.01DncwMzpuQz8.WxAADuM7XmxQVey6vEaqxCHgmBG','radiologist','55555555555','radyolog5','5555555555','istanbul','Röntgen','Yrd.Doç','555555',NULL,'','',1,NULL,NULL,NULL,11,'2015-03-17 20:44:18','2015-03-12 15:55:20','127.0.0.1','127.0.0.1','2015-02-25 14:48:10','2015-03-17 20:44:18',NULL),(14,'radiologist6@gmail.com','$2a$10$IocPI25/7fTtmWx0RU5aWe6rED564aQIJFLCiQiQdH0yGRUoCZUxy','radiologist','66666666666','radyolog6','6666666666666','istanbul','Röntgen','Doç.','',NULL,'','',1,NULL,NULL,NULL,9,'2015-03-17 21:24:13','2015-03-17 21:12:56','127.0.0.1','127.0.0.1','2015-02-25 14:49:10','2015-03-17 21:24:13',NULL),(15,'radiologist7@gmail.com','$2a$10$8UWLPKg96TP35N56z5Cbw.PknQC0TwACM8XLUwdSdzq/WcI3qmC.G','radiologist','77777777777','radyolog7','777777777777','istanbul','PET','Doç.','7777777',NULL,'','',1,NULL,NULL,NULL,1,'2015-02-25 14:51:06','2015-02-25 14:51:06','127.0.0.1','127.0.0.1','2015-02-25 14:51:06','2015-06-25 13:26:22',NULL),(16,'instution2@gmail.com','$2a$10$O0R4QZXp25a/0jss3YrsiuO8LD0UQwvczHrkC4kKkN7r/iNrdoBDq','instution','33333333333','aaaaaaaaa','555555555555','aaaaaa','MR','Prof.','',NULL,'','',1,NULL,NULL,NULL,7,'2015-03-11 20:38:57','2015-03-01 19:54:39','127.0.0.1','127.0.0.1','2015-02-28 09:34:00','2015-03-11 20:38:57',NULL),(17,'sekreter@gmail.com','$2a$10$QHhEmu061Qi9Qs4EbkYUi.humnfdj7ptCCf4CBnS57hSdzIAv4LIG','sekreter','1111111111','sekreter1','054343454343','samsun','MR','Prof.','',NULL,'','',1,NULL,NULL,NULL,12,'2015-06-25 13:51:59','2015-06-23 09:23:18','127.0.0.1','127.0.0.1','2015-06-22 07:32:15','2015-06-25 13:51:59',NULL),(18,'admin2@gmail.com','$2a$10$EJ0EJJ5DSbxEYV35qC6frewNdvBNS5rLOHrJcWGuUIX/7OuPqh6sG','admin','55555555555','yeni','7676767676','samsun','MR','Prof.','',NULL,'','',0,NULL,NULL,NULL,1,'2015-06-30 07:54:48','2015-06-30 07:54:48','127.0.0.1','127.0.0.1','2015-06-30 07:54:48','2015-06-30 07:55:22',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-30 11:29:57
