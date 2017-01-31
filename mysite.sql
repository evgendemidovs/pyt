-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mysite_db
-- ------------------------------------------------------
-- Server version	5.5.54-0ubuntu0.14.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add article',7,'add_article'),(20,'Can change article',7,'change_article'),(21,'Can delete article',7,'delete_article'),(22,'Can add Category',8,'add_category'),(23,'Can change Category',8,'change_category'),(24,'Can delete Category',8,'delete_category'),(25,'Can add Good',9,'add_item'),(26,'Can change Good',9,'change_item'),(27,'Can delete Good',9,'delete_item'),(34,'Can add person',12,'add_person'),(35,'Can change person',12,'change_person'),(36,'Can delete person',12,'delete_person'),(37,'Can add Order',13,'add_zakaz2'),(38,'Can change Order',13,'change_zakaz2'),(39,'Can delete Order',13,'delete_zakaz2');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$7ZnVKYJ7LY1M$Qmh5yeixOnpT454nDJyQSU8VlYgkmoB99OlK9o612cs=','2017-01-19 16:00:09',1,'jeka','','','jeka@ukr.net',1,1,'2016-09-28 18:17:52');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_article`
--

DROP TABLE IF EXISTS `blog_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `text` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_aritcle_user_id_76eaf77eaf1cfe9a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `blog_aritcle_user_id_76eaf77eaf1cfe9a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article`
--

LOCK TABLES `blog_article` WRITE;
/*!40000 ALTER TABLE `blog_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_category_724874d1` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category`
--

LOCK TABLES `blog_category` WRITE;
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` VALUES (1,'obuv','obuv'),(3,'koselki','koselki'),(4,'belt','belt'),(5,'purse','purse');
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_item`
--

DROP TABLE IF EXISTS `blog_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image1` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_item_category_id_1eba6935dd5a9bc1_fk_blog_category_id` (`category_id`),
  KEY `blog_item_724874d1` (`alias`),
  CONSTRAINT `blog_item_category_id_1eba6935dd5a9bc1_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_item`
--

LOCK TABLES `blog_item` WRITE;
/*!40000 ALTER TABLE `blog_item` DISABLE KEYS */;
INSERT INTO `blog_item` VALUES (9,'b1',400,'http://127.0.0.1/1001a/1.JPG','b1',4,'http://127.0.0.1/1001a/3.JPG','http://127.0.0.1/1001a/2.JPG','http://127.0.0.1/1001a/4.JPG'),(10,'b2',400,'http://127.0.0.1/1001b/1.JPG','b2',4,'http://127.0.0.1/1001b/3.JPG','http://127.0.0.1/1001b/2.JPG','http://127.0.0.1/1001b/4.JPG'),(11,'b3',400,'http://127.0.0.1/1001c/1.JPG','b3',4,'http://127.0.0.1/1001c/3.JPG','http://127.0.0.1/1001c/2.JPG','http://127.0.0.1/1001c/4.JPG'),(12,'b4',400,'http://127.0.0.1/1002a/1.JPG','b4',4,'http://127.0.0.1/1001c/3.JPG','http://127.0.0.1/1001c/2.JPG','http://127.0.0.1/1001c/4.JPG'),(13,'b5',400,'http://127.0.0.1/1002b/1.JPG','b5',4,'http://127.0.0.1/1002b/3.JPG','http://127.0.0.1/1002b/2.JPG','http://127.0.0.1/1002b/4.JPG'),(14,'b6',400,'http://127.0.0.1/1002c/1.JPG','b6',4,'http://127.0.0.1/1002c/3.JPG','http://127.0.0.1/1002c/2.JPG','http://127.0.0.1/1002c/4.JPG');
/*!40000 ALTER TABLE `blog_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_person`
--

DROP TABLE IF EXISTS `blog_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_person`
--

LOCK TABLES `blog_person` WRITE;
/*!40000 ALTER TABLE `blog_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_zakaz2`
--

DROP TABLE IF EXISTS `blog_zakaz2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_zakaz2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `zakaz` varchar(255) NOT NULL,
  `summa` int(11) NOT NULL,
  `delivery` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_zakaz2`
--

LOCK TABLES `blog_zakaz2` WRITE;
/*!40000 ALTER TABLE `blog_zakaz2` DISABLE KEYS */;
INSERT INTO `blog_zakaz2` VALUES (1,'afhak','agaga',350,'arawr','2017-01-24 18:34:10'),(2,'dad','',1314,'adsa','2017-01-24 18:34:10'),(3,'dada','[{\"price\":\"\\n    111 Грн\\n    \",\"img\":\"http://i2.rozetka.ua/goods/1521749/apple_iphone_5s_16gb_space_gray_cpo_images_1521749958.jpg\"}]',14141,'dada','2017-01-24 18:34:10'),(4,'dadarqrq','[{\"price\":\"\\n    111 Грн\\n    \",\"img\":\"http://i2.rozetka.ua/goods/1521749/apple_iphone_5s_16gb_space_gray_cpo_images_1521749958.jpg\"}]',14141,'dadarqrq',NULL),(5,'dadarqrq','[{\"price\":\"\\n    111 Грн\\n    \",\"img\":\"http://i2.rozetka.ua/goods/1521749/apple_iphone_5s_16gb_space_gray_cpo_images_1521749958.jpg\"}]',14141,'dadarqrq','2017-01-24 18:41:01'),(6,'fafw','[{\"price\":\"\\n    111 Грн\\n    \",\"img\":\"http://i2.rozetka.ua/goods/1521749/apple_iphone_5s_16gb_space_gray_cpo_images_1521749958.jpg\"}]',3141,'fwfw','2017-01-26 17:11:59'),(7,'dadafefef','[{\"price\":\"\\n    111 Грн\\n    \",\"img\":\"http://i2.rozetka.ua/goods/1521749/apple_iphone_5s_16gb_space_gray_cpo_images_1521749958.jpg\"}]',1234451551,'afwafw','2017-01-26 18:22:32'),(8,'dadafefef','[{\"price\":\"\\n    111 Грн\\n    \",\"img\":\"http://i2.rozetka.ua/goods/1521749/apple_iphone_5s_16gb_space_gray_cpo_images_1521749958.jpg\"}]',1234451551,'afwafw','2017-01-26 18:22:56'),(9,'dadafefef','[{\"price\":\"\\n    111 Грн\\n    \",\"img\":\"http://i2.rozetka.ua/goods/1521749/apple_iphone_5s_16gb_space_gray_cpo_images_1521749958.jpg\"}]',2147483647,'afwafw','2017-01-26 18:23:10'),(10,'dadafefef','[{\"price\":\"\\n    111 Грн\\n    \",\"img\":\"http://i2.rozetka.ua/goods/1521749/apple_iphone_5s_16gb_space_gray_cpo_images_1521749958.jpg\"}]',123,'afwafw','2017-01-26 18:23:14'),(11,'Женя','афафа',500,'Г.Канев','2017-01-29 08:53:03');
/*!40000 ALTER TABLE `blog_zakaz2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_697914295151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2016-09-28 18:18:33','1','Catogory obuv',1,'',8,1),(2,'2016-09-28 18:19:46','1','Good bo1',1,'',9,1),(3,'2016-12-10 12:36:21','2','Catogory obuv',1,'',8,1),(4,'2016-12-10 12:36:34','3','Catogory koselki',1,'',8,1),(5,'2016-12-10 12:39:06','2','Good odoad',1,'',9,1),(6,'2016-12-10 12:39:36','2','Catogory obuv',3,'',8,1),(7,'2016-12-11 09:36:56','3','Good afwr',1,'',9,1),(8,'2016-12-11 09:38:08','3','Good afwr',2,'Changed image, image1, image2 and image3.',9,1),(55,'2017-01-22 08:27:09','4','Catogory belt',1,'',8,1),(56,'2017-01-22 08:32:11','4','Good rqr',1,'',9,1),(57,'2017-01-22 08:46:21','4','Good rqr',2,'Changed image, image1, image2 and image3.',9,1),(58,'2017-01-22 08:49:47','5','Good rqrrr',1,'',9,1),(59,'2017-01-22 11:01:29','5','Catogory purse',1,'',8,1),(60,'2017-01-22 11:01:57','6','Good ajfihiw',1,'',9,1),(61,'2017-01-24 16:42:31','1','Order on 350',1,'',13,1),(62,'2017-01-28 16:47:23','7','Good blt',1,'',9,1),(63,'2017-01-28 16:48:19','7','Good blt',2,'Changed category.',9,1),(64,'2017-01-28 16:50:31','7','Good blt',2,'Changed category.',9,1),(65,'2017-01-28 16:52:11','7','Good blt',2,'Changed image, image1, image2 and image3.',9,1),(66,'2017-01-28 16:52:36','6','Good ajfihiw',2,'Changed image, image1, image2, image3 and category.',9,1),(67,'2017-01-28 17:00:18','8','Good qerqtq',1,'',9,1),(68,'2017-01-29 08:53:14','11','Order on 500',1,'',13,1),(69,'2017-01-31 17:05:29','8','Good qerqtq',3,'',9,1),(70,'2017-01-31 17:05:29','7','Good blt',3,'',9,1),(71,'2017-01-31 17:05:29','6','Good ajfihiw',3,'',9,1),(72,'2017-01-31 17:05:29','5','Good rqrrr',3,'',9,1),(73,'2017-01-31 17:05:29','4','Good rqr',3,'',9,1),(74,'2017-01-31 17:05:29','3','Good afwr',3,'',9,1),(75,'2017-01-31 17:05:29','2','Good odoad',3,'',9,1),(76,'2017-01-31 17:05:29','1','Good bo1',3,'',9,1),(77,'2017-01-31 17:32:37','9','Good b1',1,'',9,1),(78,'2017-01-31 17:33:33','10','Good b2',1,'',9,1),(79,'2017-01-31 17:34:10','11','Good b3',1,'',9,1),(80,'2017-01-31 17:43:19','12','Good b4',1,'',9,1),(81,'2017-01-31 17:43:48','13','Good b5',1,'',9,1),(82,'2017-01-31 17:44:14','14','Good b6',1,'',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'blog','article'),(8,'blog','category'),(9,'blog','item'),(12,'blog','person'),(13,'blog','zakaz2'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-09-28 18:11:14'),(2,'auth','0001_initial','2016-09-28 18:11:14'),(3,'admin','0001_initial','2016-09-28 18:11:14'),(4,'contenttypes','0002_remove_content_type_name','2016-09-28 18:11:14'),(5,'auth','0002_alter_permission_name_max_length','2016-09-28 18:11:14'),(6,'auth','0003_alter_user_email_max_length','2016-09-28 18:11:14'),(7,'auth','0004_alter_user_username_opts','2016-09-28 18:11:14'),(8,'auth','0005_alter_user_last_login_null','2016-09-28 18:11:14'),(9,'auth','0006_require_contenttypes_0002','2016-09-28 18:11:14'),(10,'blog','0001_initial','2016-09-28 18:11:14'),(11,'blog','0002_auto_20160727_1025','2016-09-28 18:11:14'),(12,'blog','0003_category_item','2016-09-28 18:11:14'),(13,'blog','0004_auto_20160824_1214','2016-09-28 18:11:14'),(14,'blog','0005_auto_20160827_0944','2016-09-28 18:11:15'),(15,'blog','0006_auto_20160827_1049','2016-09-28 18:11:15'),(16,'blog','0007_auto_20160830_0941','2016-09-28 18:11:15'),(17,'blog','0008_auto_20160831_1642','2016-09-28 18:11:15'),(18,'blog','0009_auto_20160831_1645','2016-09-28 18:11:15'),(19,'blog','0010_auto_20160831_1658','2016-09-28 18:11:15'),(20,'blog','0011_item_images','2016-09-28 18:11:15'),(21,'blog','0012_auto_20160831_1700','2016-09-28 18:11:15'),(22,'sessions','0001_initial','2016-09-28 18:11:15'),(23,'blog','0013_zakaz','2016-11-08 13:33:19'),(24,'blog','0014_auto_20161118_1702','2016-11-18 17:02:09'),(25,'blog','0015_auto_20161211_1007','2016-12-11 10:07:23'),(26,'blog','0016_auto_20161211_1119','2016-12-11 11:19:49'),(27,'blog','0017_auto_20161211_1249','2016-12-11 12:49:11'),(28,'blog','0018_auto_20161211_1411','2016-12-11 14:11:07'),(29,'blog','0019_auto_20161211_1420','2016-12-11 14:20:39'),(30,'blog','0020_auto_20170102_1238','2017-01-02 12:38:59'),(31,'blog','0021_auto_20170102_1259','2017-01-02 12:59:58'),(32,'blog','0022_auto_20170102_1312','2017-01-02 13:12:31'),(33,'blog','0023_auto_20170102_1404','2017-01-02 14:04:43'),(34,'blog','0024_auto_20170104_1751','2017-01-04 17:52:01'),(35,'blog','0002_person','2017-01-24 16:38:08'),(36,'blog','0002_zakaz2_date','2017-01-24 18:37:46'),(37,'blog','0003_auto_20170124_2034','2017-01-24 18:37:46'),(38,'blog','0004_auto_20170124_2037','2017-01-24 18:37:46');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('c6jm5k6rtdh7vfomwj1u2gru9mv3wgmd','MTM3MTZiNWMwZTA4ZDQ1OGViYWY1ZDI0M2VkYzQwYzgxNTE3YTI0NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkMjg4MGQ2OTdhMzFmMDVlNGQzYjkxNWZkNTIwMDkzNTdkYzg2NTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-11-22 13:43:04'),('d0mqi6fnlykxcrey6tsc4ev8q602q26p','MTM3MTZiNWMwZTA4ZDQ1OGViYWY1ZDI0M2VkYzQwYzgxNTE3YTI0NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkMjg4MGQ2OTdhMzFmMDVlNGQzYjkxNWZkNTIwMDkzNTdkYzg2NTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-12-24 12:35:51'),('e6do18842xce5c42xlxd8gqkzpxljgni','MTM3MTZiNWMwZTA4ZDQ1OGViYWY1ZDI0M2VkYzQwYzgxNTE3YTI0NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkMjg4MGQ2OTdhMzFmMDVlNGQzYjkxNWZkNTIwMDkzNTdkYzg2NTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-12-25 12:36:52'),('ilh7dmc85xx5wm05fircv871bedld21u','MTM3MTZiNWMwZTA4ZDQ1OGViYWY1ZDI0M2VkYzQwYzgxNTE3YTI0NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkMjg4MGQ2OTdhMzFmMDVlNGQzYjkxNWZkNTIwMDkzNTdkYzg2NTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-10-12 18:18:13'),('iubgtj9lcwmqr4awf4ezd3esq1p0yjjv','MTM3MTZiNWMwZTA4ZDQ1OGViYWY1ZDI0M2VkYzQwYzgxNTE3YTI0NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkMjg4MGQ2OTdhMzFmMDVlNGQzYjkxNWZkNTIwMDkzNTdkYzg2NTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-02 15:54:29'),('la2dzic7owzfzskdhtlggxwsv3xaigd3','MTM3MTZiNWMwZTA4ZDQ1OGViYWY1ZDI0M2VkYzQwYzgxNTE3YTI0NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkMjg4MGQ2OTdhMzFmMDVlNGQzYjkxNWZkNTIwMDkzNTdkYzg2NTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-02 16:00:09'),('lfflepuew0tqkz9gu1k5ef8l8dgn8nsy','MTM3MTZiNWMwZTA4ZDQ1OGViYWY1ZDI0M2VkYzQwYzgxNTE3YTI0NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkMjg4MGQ2OTdhMzFmMDVlNGQzYjkxNWZkNTIwMDkzNTdkYzg2NTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-01-16 12:34:40');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-31 20:18:55
