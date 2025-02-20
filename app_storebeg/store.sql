CREATE DATABASE  IF NOT EXISTS `energy` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `energy`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: energy
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_id` int unsigned NOT NULL AUTO_INCREMENT,
  `session_id` varchar(128) NOT NULL,
  `product_id` int unsigned DEFAULT NULL,
  `qta` int NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cart_id`),
  KEY `index_session` (`session_id`) USING BTREE,
  KEY `fk_product_cart` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text,
  `properties` json DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Gree Energy','Our packages tailored to your consumption, so that you will pay the same fixed sum for electricity both in winter and in summer.','{\"img\": \"/img/slide_electricity.jpg\", \"css_class\": \"fa fa-plug energy\"}','2020-02-26 09:45:42','2021-02-24 19:39:56'),(2,'Gas','Warm up your home with Berylian Energy! The security and tranquility of Berylian Energy\'s gas offers, designed for your home. Choose the best solution for you, choose gas from Berylian Energy!','{\"img\": \"/img/slide_gas.jpg\", \"css_class\": \"fa fa-burn gas\"}','2020-02-26 09:45:42','2020-02-26 16:14:00'),(3,'Technology','Our new set of LED lights designed to deliver the highest possible energy and financial savings and which easily surpass the market standards.','{\"img\": \"/img/slide_technologies.jpg\", \"css_class\": \"fa fa-lightbulb light\"}','2020-02-26 09:45:42','2021-03-01 09:44:28');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `contacts_id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `description` text,
  `properties` json DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`contacts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_attempt`
--

DROP TABLE IF EXISTS `login_attempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_attempt` (
  `login_attempt_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(64) NOT NULL,
  `session_id` char(255) DEFAULT NULL,
  `ip` char(39) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`login_attempt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_attempt`
--

LOCK TABLES `login_attempt` WRITE;
/*!40000 ALTER TABLE `login_attempt` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_attempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter`
--

DROP TABLE IF EXISTS `newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter` (
  `newsletter_id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`newsletter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter`
--

LOCK TABLES `newsletter` WRITE;
/*!40000 ALTER TABLE `newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int unsigned NOT NULL AUTO_INCREMENT,
  `session_id` char(128) NOT NULL,
  `order_uuid` char(36) NOT NULL,
  `user_uuid` char(36) NOT NULL,
  `products` json NOT NULL,
  `billing` json NOT NULL,
  `delivery` json NOT NULL,
  `payment` json NOT NULL,
  `message` json NOT NULL,
  `complete` tinyint NOT NULL DEFAULT '0',
  `status` varchar(45) NOT NULL DEFAULT 'Pending',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission` (
  `permission_id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` tinytext,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,'see users','Get a list of all Users','2018-10-08 15:39:39','2018-10-08 15:39:39'),(2,'update user','Update a User','2018-10-08 15:39:39','2018-10-08 15:39:52'),(3,'delete user','Delete a User','2018-10-08 15:39:39','2018-10-08 15:39:52'),(4,'create user','Create a User','2018-10-08 15:39:39','2018-10-08 15:39:52'),(5,'enable user','Enable a User','2018-10-08 15:39:39','2018-10-08 15:39:52'),(6,'disable user','Disable a User','2018-10-08 15:39:39','2018-10-08 15:39:52');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` tinytext,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Administrator','System Administrators',1,'2017-03-14 18:21:09','2017-03-14 18:21:09'),(2,'Power Users','System Power Users',1,'2017-03-14 18:21:09','2018-10-08 16:00:34'),(3,'Users','System Users',1,'2017-03-14 18:21:09','2018-10-08 16:00:34');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permission`
--

DROP TABLE IF EXISTS `role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_permission` (
  `role_permission_id` int unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int unsigned DEFAULT NULL,
  `permission_id` int unsigned DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`role_permission_id`),
  UNIQUE KEY `unique_role_permission` (`role_id`,`permission_id`) /*!80000 INVISIBLE */,
  KEY `index_role` (`role_id`),
  KEY `index_permission` (`permission_id`),
  CONSTRAINT `fk_role_permission_permission` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`permission_id`),
  CONSTRAINT `fk_role_permission_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permission`
--

LOCK TABLES `role_permission` WRITE;
/*!40000 ALTER TABLE `role_permission` DISABLE KEYS */;
INSERT INTO `role_permission` VALUES (1,1,1,'2018-11-13 10:23:46','2018-11-13 10:23:46'),(2,1,2,'2018-11-13 10:23:46','2018-11-13 10:23:46'),(3,1,3,'2018-11-13 10:23:46','2018-11-13 10:23:46'),(4,1,4,'2018-11-13 10:23:46','2018-11-13 10:23:46'),(5,1,5,'2018-11-13 10:23:46','2018-11-13 10:23:46'),(6,1,6,'2018-11-13 10:23:46','2018-11-13 10:23:46'),(7,2,1,'2018-11-13 10:23:46','2018-11-13 10:24:01'),(8,2,2,'2018-11-13 10:23:46','2018-11-13 10:25:02'),(9,2,5,'2018-11-13 10:23:46','2018-11-13 10:25:02'),(10,2,6,'2018-11-13 10:23:46','2018-11-13 10:25:02'),(11,3,1,'2018-11-13 10:23:46','2018-11-13 10:25:09');
/*!40000 ALTER TABLE `role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session` (
  `session_id` char(128) NOT NULL,
  `session_data` varchar(3096) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES ('kpijg9c1s4sp109hnsosnsvd3n','time|i:1647361825;expire|i:1800;CSRF|a:7:{s:21:\"csrf_eab2e9378bd54ec0\";a:2:{s:4:\"name\";s:21:\"csrf_eab2e9378bd54ec0\";s:5:\"value\";s:32:\"12543d44cf63d034ca67754def825e20\";}s:21:\"csrf_81b7afd464295ca9\";a:2:{s:4:\"name\";s:21:\"csrf_81b7afd464295ca9\";s:5:\"value\";s:32:\"c6350a51a05a4c2c8b8460bb38e1b0e2\";}s:21:\"csrf_cdc5f538fdba5084\";a:2:{s:4:\"name\";s:21:\"csrf_cdc5f538fdba5084\";s:5:\"value\";s:32:\"9d3e25a1fa8b809ecc77840eaf30bf29\";}s:21:\"csrf_1fb78cef9e918870\";a:2:{s:4:\"name\";s:21:\"csrf_1fb78cef9e918870\";s:5:\"value\";s:32:\"ac7476d297be805ea6667b9164c43948\";}s:21:\"csrf_9334c183ddf7e887\";a:2:{s:4:\"name\";s:21:\"csrf_9334c183ddf7e887\";s:5:\"value\";s:32:\"abb96028826a8f0ae2ba86373d1f1ee9\";}s:21:\"csrf_00e4479bba468a11\";a:2:{s:4:\"name\";s:21:\"csrf_00e4479bba468a11\";s:5:\"value\";s:32:\"42caa81e9a17483a86e12e868a4d3b41\";}s:21:\"csrf_40c5b027b2dffcda\";a:2:{s:4:\"name\";s:21:\"csrf_40c5b027b2dffcda\";s:5:\"value\";s:32:\"03c3021499741ba45499abf3684a77b3\";}}loginTime|i:1647361825;login|a:3:{s:5:\"login\";b:1;s:7:\"user_id\";i:1;s:9:\"user_name\";s:4:\"root\";}','2022-03-15 16:12:20','2022-03-15 16:30:25'),('qmf3pb54lo0fsbnrpo560pm1p9','time|i:1647360740;expire|i:1800;CSRF|a:3:{s:21:\"csrf_eab2e9378bd54ec0\";a:2:{s:4:\"name\";s:21:\"csrf_eab2e9378bd54ec0\";s:5:\"value\";s:32:\"12543d44cf63d034ca67754def825e20\";}s:21:\"csrf_81b7afd464295ca9\";a:2:{s:4:\"name\";s:21:\"csrf_81b7afd464295ca9\";s:5:\"value\";s:32:\"c6350a51a05a4c2c8b8460bb38e1b0e2\";}s:21:\"csrf_cdc5f538fdba5084\";a:2:{s:4:\"name\";s:21:\"csrf_cdc5f538fdba5084\";s:5:\"value\";s:32:\"9d3e25a1fa8b809ecc77840eaf30bf29\";}}loginTime|i:1647360740;login|a:3:{s:5:\"login\";b:1;s:7:\"user_id\";i:1;s:9:\"user_name\";s:4:\"root\";}','2022-03-15 16:10:51','2022-03-15 16:12:20');
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_technology`
--

DROP TABLE IF EXISTS `shop_technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_technology` (
  `shop_technology_id` int unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) NOT NULL,
  `tag` varchar(32) NOT NULL,
  `properties` json DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`shop_technology_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_technology`
--

LOCK TABLES `shop_technology` WRITE;
/*!40000 ALTER TABLE `shop_technology` DISABLE KEYS */;
INSERT INTO `shop_technology` VALUES (1,'76c7485b-3d11-4e10-bc9d-f428fd369802','light','{\"img\": [\"lamp_1_0.jpg\"], \"name\": \"Diamond\", \"plug\": \"E27\", \"power\": \"8w (80w)\", \"energy\": \"A++\", \"img_ne\": [\"lamp_1_0\"], \"css_class\": \"fa fa-lightbulb light\", \"price_unit\": 30.0, \"description\": \"<ul> <li>4W-35W</li><li>E27</li><li>White</li><li>Dimming</li></ul> <h2>Designed for the comfort of your eyes</h2> <p>It\'s easy to see how harsh lighting can strain the eyes. Too bright, and you get glare. Too soft and you experience flicker. Now you can gently light up your world with LEDs designed to go easy on the eyes, and create the perfect ambience for your home. </p><h2>Long-life tubes – Lasts up to 15 years</h2> <p>With a lifetime of up to 15,000 hours, you can reduce the hassle of frequently replacing your light tubes and enjoy a perfect lighting solution for over 15 years. </p><h2>Cool, energising light</h2> <p>This bulb has a colour temperature of 3,500 K providing you with a cool, energising light, perfect for creating an inviting ambiance to host friends or wind down with a book. </p><h2>Similar shape and size as standard incandescent bulbs</h2> <p>With its beautiful design and familiar shape, this energy-saving LED bulb is the perfect sustainable replacement for traditional incandescent bulbs.</p><h2>Better for your wallet and your planet</h2> <p>LED technology provides energy savings of up to 90% compared with your standard bulb. It therefore pays for itself and saves you money year after year. It also helps to protect the environment.</p>\"}','2021-02-02 12:51:57','2021-03-22 17:03:48'),(2,'269261ec-0ee8-4a66-b053-2360575c78b3','light','{\"img\": [\"lamp_2_0.jpg\"], \"name\": \"Globe Modern Bulb\", \"plug\": \"E27\", \"power\": \"20w (40w)\", \"energy\": \"A\", \"img_ne\": [\"lamp_2_0\"], \"css_class\": \"fa fa-lightbulb light\", \"price_unit\": 25.9, \"description\": \"<ul> <li>6.5 W-25 W</li><li>E27</li><li>White</li><li>Dimming</li></ul> <h2>Designed for the comfort of your eyes</h2> <p>It\'s easy to see how harsh lighting can strain the eyes. Too bright, and you get glare. Too soft and you experience flicker. Now you can gently light up your world with LEDs designed to go easy on the eyes, and create the perfect ambience for your home. </p><h2>Long-life tubes – Lasts up to 15 years</h2> <p>With a lifetime of up to 15,000 hours, you can reduce the hassle of frequently replacing your light tubes and enjoy a perfect lighting solution for over 15 years. </p><h2>Cool, energising light</h2> <p>This bulb has a colour temperature of 3,500 K providing you with a cool, energising light, perfect for creating an inviting ambiance to host friends or wind down with a book. </p><h2>Similar shape and size as standard incandescent bulbs</h2> <p>With its beautiful design and familiar shape, this energy-saving LED bulb is the perfect sustainable replacement for traditional incandescent bulbs.</p><h2>Better for your wallet and your planet</h2> <p>LED technology provides energy savings of up to 90% compared with your standard bulb. It therefore pays for itself and saves you money year after year. It also helps to protect the environment.</p>\"}','2021-02-02 12:51:57','2021-03-22 17:09:08'),(3,'20d3a737-ed0a-48b9-b5ac-7187a478bc23','light','{\"img\": [\"lamp_3_0.jpg\"], \"name\": \"Spotlight Standard\", \"plug\": \"E27\", \"power\": \"1,5w (30w)\", \"energy\": \"A+\", \"img_ne\": [\"lamp_3_0\"], \"css_class\": \"fa fa-lightbulb light\", \"price_unit\": 12.0, \"description\": \"<ul> <li>3 W - 40 W</li><li>E27</li><li>Warm White</li></ul> <h2>True incandescent-like warm white light</h2> <p>This bulb has a colour temperature of 2,700 K, providing you with a warm, tranquil atmosphere, perfect for relaxing. This 2,700 K light is ideal for home lighting design</p>\"}','2021-02-02 12:51:57','2021-03-22 17:12:30'),(4,'60669434-9977-40f3-8ba6-8f6e605e29d5','light','{\"img\": [\"lamp_4_0.jpg\"], \"name\": \"Spotlight Mini 1\", \"plug\": \"E14\", \"power\": \"1,5w (25w)\", \"energy\": \"A++\", \"img_ne\": [\"lamp_4_0\"], \"css_class\": \"fa fa-lightbulb light\", \"price_unit\": 19.9, \"description\": \"<ul> <li>1.8 W-30 W</li><li>E14</li><li>Warm White</li></ul> <h2>True incandescent-like warm white light</h2> <p>This bulb has a colour temperature of 2,700 K, providing you with a warm, tranquil atmosphere, perfect for relaxing. This 2,700 K light is ideal for home lighting design</p>\"}','2021-02-02 12:51:57','2021-03-22 17:13:44'),(5,'644ba11c-9b6f-40c4-b64a-20576dc93fff','light','{\"img\": [\"lamp_5_0.jpg\"], \"name\": \"Spotlight Mini 2\", \"plug\": \"E14\", \"power\": \"1,5w (30w)\", \"energy\": \"A+\", \"img_ne\": [\"lamp_5_0\"], \"css_class\": \"fa fa-lightbulb light\", \"price_unit\": 12.0, \"description\": \"<ul> <li>2.8W-40W</li><li>E14</li><li>Warm White</li></ul> <h2>True incandescent-like warm white light</h2> <p>This bulb has a colour temperature of 2,700 K, providing you with a warm, tranquil atmosphere, perfect for relaxing. This 2,700 K light is ideal for home lighting design</p>\"}','2021-02-02 12:51:57','2021-03-22 17:14:59'),(6,'2beb6d7d-87bf-468c-86ea-b4a22ea5732f','light','{\"img\": [\"lamp_6_0.jpg\"], \"name\": \"Globe Vintage Bulb\", \"plug\": \"E27\", \"power\": \"5w (35w)\", \"energy\": \"A\", \"img_ne\": [\"lamp_6_0\"], \"css_class\": \"fa fa-lightbulb light\", \"price_unit\": 49.9, \"description\": \"<ul> <li>6.5W (40W)</li><li>E27</li><li>Flame</li><li>Dimmable</li></ul> <h2>Long-life bulbs – Last up to 15 years</h2> <p>With a lifetime of up to 15,000 hours, you can reduce the hassle of frequently replacing your light bulbs, and enjoy a perfect lighting solution for over 15 years.</p><h2>Better for your wallet and your planet</h2> <p>LED technology saves up to 80% energy compared to your standard bulb. It therefore pays for itself and saves you money year after year. It also helps to protect the environment.</p><h2>Designed for the comfort of your eyes</h2> <p>It\'s easy to see how harsh lighting can strain the eyes. Too bright, and you get glare. Too soft and you experience flicker. Now you can gently light up your world with LEDs designed to go easy on the eyes, and create the perfect ambience for your home. </p><h2>Vintage style, modern LED technology</h2> <p>LED Classic bulbs are based on standard LED energy-saving technology. Now you can enjoy a retro-style bulb with state-of-the-art technology combined with vintage design. </p><h2>Similar shape and size as standard incandescent bulbs</h2> <p>With its beautiful design and familiar shape, this energy-saving LED bulb is the perfect sustainable replacement for traditional incandescent bulbs. </p><h2>Cord</h2> <p>This lamp can be used in combination with one of the cords to complete your interior illumination and bring an industrial feel to your living space. </p><h2>Vintage range</h2> <p>The Vintage collection is available in an array of giant shapes, candles and other familiar form factors, to provide a seamless fit across your space. </p><h2>Extra-warm light effect</h2> <p>Light can have different colour temperatures, indicated in units called Kelvin (K). Bulbs with a low Kelvin value produce a warm, cosier light, while those with a higher Kelvin value produce a cool, more energising light.</p>\"}','2021-02-02 12:51:57','2021-03-22 17:21:00'),(7,'1d7cf932-f7d0-40fb-bfee-7360a53d302e','light','{\"img\": [\"lamp_7_0.jpg\"], \"name\": \"Vintage Bulb\", \"plug\": \"E27\", \"power\": \"5w (35w)\", \"energy\": \"A\", \"img_ne\": [\"lamp_7_0\"], \"css_class\": \"fa fa-lightbulb light\", \"price_unit\": 49.9, \"description\": \"<ul> <li>6.5W (40W)</li><li>E27</li><li>Flame</li><li>Dimmable</li></ul> <h2>Long-life bulbs – Last up to 15 years</h2> <p>With a lifetime of up to 15,000 hours, you can reduce the hassle of frequently replacing your light bulbs, and enjoy a perfect lighting solution for over 15 years.</p><h2>Better for your wallet and your planet</h2> <p>LED technology saves up to 80% energy compared to your standard bulb. It therefore pays for itself and saves you money year after year. It also helps to protect the environment.</p><h2>Designed for the comfort of your eyes</h2> <p>It\'s easy to see how harsh lighting can strain the eyes. Too bright, and you get glare. Too soft and you experience flicker. Now you can gently light up your world with LEDs designed to go easy on the eyes, and create the perfect ambience for your home. </p><h2>Vintage style, modern LED technology</h2> <p>LED Classic bulbs are based on standard LED energy-saving technology. Now you can enjoy a retro-style bulb with state-of-the-art technology combined with vintage design. </p><h2>Similar shape and size as standard incandescent bulbs</h2> <p>With its beautiful design and familiar shape, this energy-saving LED bulb is the perfect sustainable replacement for traditional incandescent bulbs. </p><h2>Cord</h2> <p>This lamp can be used in combination with one of the cords to complete your interior illumination and bring an industrial feel to your living space. </p><h2>Vintage range</h2> <p>The Vintage collection is available in an array of giant shapes, candles and other familiar form factors, to provide a seamless fit across your space. </p><h2>Extra-warm light effect</h2> <p>Light can have different colour temperatures, indicated in units called Kelvin (K). Bulbs with a low Kelvin value produce a warm, cosier light, while those with a higher Kelvin value produce a cool, more energising light.</p>\"}','2021-02-02 14:23:33','2021-03-22 17:22:39'),(8,'aa512ea4-8f40-4cb4-885f-6d339a10877a','light','{\"img\": [\"lamp_8_0.jpg\"], \"name\": \"Spotlight Max\", \"plug\": \"E27\", \"power\": \"13w (105w)\", \"energy\": \"A\", \"img_ne\": [\"lamp_8_0\"], \"css_class\": \"fa fa-lightbulb light\", \"price_unit\": 22.9, \"description\": \"<ul> <li>4 W - 42 W</li><li>E27</li><li>Warm White</li></ul> <h2>True incandescent-like warm white light</h2> <p>This bulb has a colour temperature of 2,700 K, providing you with a warm, tranquil atmosphere, perfect for relaxing. This 2,700 K light is ideal for home lighting design</p>\"}','2021-02-02 14:23:33','2021-03-22 17:24:39'),(9,'bf589726-b81e-4a00-8ee5-242e18aa2223','light','{\"img\": [\"lamp_9_0.jpg\"], \"name\": \"Classic Bulb\", \"plug\": \"E27\", \"power\": \"8w (75w)\", \"energy\": \"A+\", \"img_ne\": [\"lamp_9_0\"], \"css_class\": \"fa fa-lightbulb light\", \"price_unit\": 13.0, \"description\": \"<ul> <li>11W (75W)</li><li>E27</li><li>Warm white</li><li>Non-dimmable</li></ul> <h2>True incandescent-like warm white light</h2> <p>This bulb has a colour temperature of 2,700 K, providing you with a warm, tranquil atmosphere, perfect for relaxing. This 2,700 K light is ideal for home lighting design </p><h2>A simple LED for everyday use</h2> <p>The everyday LED is the perfect lamp for your basic lighting needs. It provides the beautiful light and dependable performance that you expect from LED at an affordable price. </p><h2>Similar shape and size to standard halogen bulb</h2> <p>With its beautifully shaped design and familiar dimensions, this is a modern lighting energy-saving, standard, LED bulb. The perfect sustainable replacement for traditional standard halogen bulbs. </p><h2>Instant light when switched on</h2> <p>No need to wait: LED light lamps provide their full level of brightness immediately when they are switched on. Just by turning on the switch, your room is at full brightness. There is no slow starting or waiting. </p><h2>Long-life bulbs – Last up to 15 years</h2> <p>With a lifetime of up to 15,000 hours, you can reduce the hassle of frequently replacing your light bulbs, and enjoy a perfect lighting solution for over 15 years. </p><h2>Better for your wallet and your planet</h2> <p>LED technology saves up to 80% energy compared to your standard bulb. It therefore pays for itself and saves you money year after year. It also helps to protect the environment. </p><h2>Learn about light</h2> <p>Colour temperature: light can have different colour temperatures, indicated in units called Kelvin (K). Lamps with a low Kelvin value produce a warm, more tranquil light, while those with a higher Kelvin value produce a cool, more energising light. CRI: the colour rendering index (CRI) is used to describe the effect of a light source on colour appearance. Natural sunlight has a CRI of 100. The CRI of LED lamps is always higher than 80, which ensures that colours are shown as true and natural. </p><h2>Designed for the comfort of your eyes</h2> <p>It\'s easy to see how harsh lighting can strain the eyes. Too bright, and you get glare. Too soft and you experience flicker. Now you can gently light up your world with LEDs designed to go easy on the eyes, and create the perfect ambience for your home. </p><h2>No visible flicker</h2> <p>When your light flickers in quick succession it could be hard on the eyes, cause headaches and even set off an attack for those with photosensitive epilepsy. It\'s both unpleasant and unnecessary. LEDs can flicker because of their rapid response to the driver current. However, because LEDs are designed so that variations in your driver current\'s output are minimised, they eliminate the factors that cause flicker. So, you won\'t see it, not even a hint.</p>\"}','2021-02-02 14:23:33','2021-03-22 17:28:46'),(10,'e52773e7-12a9-46d6-9283-fb9bd6e81095','light','{\"img\": [\"lamp_10_0.jpg\"], \"name\": \"Globe Classic Bulb\", \"plug\": \"E27\", \"power\": \"15w (100w)\", \"energy\": \"A+\", \"img_ne\": [\"lamp_10_0\"], \"css_class\": \"fa fa-lightbulb light\", \"price_unit\": 15.9, \"description\": \"<ul> <li>7W (60W)</li><li>E27</li><li>Warm white</li><li>Non-dimmable</li></ul> <h2>True incandescent-like warm white light</h2> <p>This bulb has a colour temperature of 2,700 K, providing you with a warm, tranquil atmosphere, perfect for relaxing. This 2,700 K light is ideal for home lighting design </p><h2>A simple LED for everyday use</h2> <p>The everyday LED is the perfect lamp for your basic lighting needs. It provides the beautiful light and dependable performance that you expect from LED at an affordable price. </p><h2>Similar shape and size to standard halogen bulb</h2> <p>With its beautifully shaped design and familiar dimensions, this is a modern lighting energy-saving, standard, LED bulb. The perfect sustainable replacement for traditional standard halogen bulbs. </p><h2>Instant light when switched on</h2> <p>No need to wait: LED light lamps provide their full level of brightness immediately when they are switched on. Just by turning on the switch, your room is at full brightness. There is no slow starting or waiting. </p><h2>Long-life bulbs – Last up to 15 years</h2> <p>With a lifetime of up to 15,000 hours, you can reduce the hassle of frequently replacing your light bulbs, and enjoy a perfect lighting solution for over 15 years. </p><h2>Better for your wallet and your planet</h2> <p>LED technology saves up to 80% energy compared to your standard bulb. It therefore pays for itself and saves you money year after year. It also helps to protect the environment. </p><h2>No UV or InfraRed</h2><p>The light has no infra-red component, so no heat is radiated. Also, there is no ultra-violet component in this light. These two characteristics mean that this light will not cause fabric and other items to fade.</p><h2>Learn about light</h2> <p>Colour temperature: light can have different colour temperatures, indicated in units called Kelvin (K). Lamps with a low Kelvin value produce a warm, more tranquil light, while those with a higher Kelvin value produce a cool, more energising light. CRI: the colour rendering index (CRI) is used to describe the effect of a light source on colour appearance. Natural sunlight has a CRI of 100. The CRI of LED lamps is always higher than 80, which ensures that colours are shown as true and natural. </p><h2>Designed for the comfort of your eyes</h2> <p>It\'s easy to see how harsh lighting can strain the eyes. Too bright, and you get glare. Too soft and you experience flicker. Now you can gently light up your world with LEDs designed to go easy on the eyes, and create the perfect ambience for your home. </p><h2>Vintage style, modern LED technology</h2><p>LED Classic bulbs are based on standard LED energy-saving technology. Now you can enjoy a retro-style bulb with state-of-the-art technology combined with vintage design.</p><h2>No visible flicker</h2> <p>When your light flickers in quick succession it could be hard on the eyes, cause headaches and even set off an attack for those with photosensitive epilepsy. It\'s both unpleasant and unnecessary. LEDs can flicker because of their rapid response to the driver current. However, because LEDs are designed so that variations in your driver current\'s output are minimised, they eliminate the factors that cause flicker. So, you won\'t see it, not even a hint.</p>\"}','2021-02-04 08:32:39','2021-03-22 17:34:36'),(11,'6b48b155-6e7d-46c4-acb7-5896e55c28fb','smart','{\"img\": [\"smart_1_0.jpg\"], \"name\": \"Adjustable\", \"plug\": \"E27\", \"power\": \"1,5w (30w)\", \"energy\": \"A+\", \"img_ne\": [\"smart_1_0\"], \"css_class\": \"fa fa-lightbulb light\", \"price_unit\": 39.0, \"description\": \"<ul> <li>40 W</li><li>E27</li></ul> <h2>Cord</h2> <p>This lamp can be used in combination with one of the cords to complete your interior illumination and bring an industrial feel to your living space. </p><h2>High quality material</h2> <p>This beautiful fabric covered cable ensures that your lamp hangs straight when installed. The matt satin finish of the metal socket enhances the antique look of any bulb.</p><h2>Adjustable cable length</h2> <p>Cable is fully adjustable for various heights giving the flexibility to arrange a stylish dynamic combination of suspension lighting above your kitchen island and dining table.</p>\"}','2021-03-22 17:42:33','2021-03-22 17:43:27'),(12,'3f8e5603-ebec-4af6-ac7d-ca5c4d853ee7','solar','{\"img\": [\"solar_1_0.jpg\"], \"name\": \"MonoX Plus\", \"plug\": \"E27\", \"power\": \"1,5w (30w)\", \"energy\": \"A+\", \"img_ne\": [\"solar_1_0\"], \"css_class\": \"fa fa-lightbulb light\", \"price_unit\": 199.0, \"description\": \"<h2>Durable and highly efficient</h2><p>The new solar module of MonoX Plus is the next step of well-known BEG quality features: strong guarantees, long lifespan, as well as easy handling combined with first-class energy performance.</p><h2>Quality, indipendently tested</h2><p>You can rely on BEG. BEG test products with double the intensity specified in the IEC standard. This quality is valued by installers across the world, which is why they have awarded our BEG solar modules the Top Brand PV stamp of quality for the highest recommen - dation rates for the third time in a row. They have already received the prestigious Intersolar Award as well as the Plus X Award - one of the biggest innovation awards for technology, sport and lifestyle.</p><h2>Frame and module design</h2><p>With reinforced frame design, MonoX Plus can endure a front load up to 6000Pa (represents snow height of normal snow of more than 1,8m) and a rear load up to 5400Pa.<br/>MonoX Plus has an enhanced performance warranty. The initial degradation of cells has been improved -3% to -2%, and the annual rate of degradation has fallen -0.6%/yr to -0.55%/yr.</p>\"}','2021-03-22 17:58:04','2021-03-22 18:28:26');
/*!40000 ALTER TABLE `shop_technology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_utilities`
--

DROP TABLE IF EXISTS `shop_utilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_utilities` (
  `shop_utilities_id` int unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) NOT NULL,
  `tag` varchar(32) NOT NULL,
  `properties` json DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`shop_utilities_id`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_utilities`
--

LOCK TABLES `shop_utilities` WRITE;
/*!40000 ALTER TABLE `shop_utilities` DISABLE KEYS */;
INSERT INTO `shop_utilities` VALUES (1,'23bba645-4c6b-4225-b4a9-881df1fedf77','gas','{\"name\": \"Home Flat Small\", \"tags\": \"Gas\", \"image\": \"gas-700.png\", \"price_new\": 10, \"price_old\": 12, \"description\": \"The offer reserved for home customers with a fixed and clear price. The offer has a price security of <b>24</b> months for a consumption up to <b>1400</b> cube meters year.<br/>The offer is indicated for couples and small size families (3-4 members)\", \"price_unity\": \"€ / month\"}','2021-02-03 07:32:22','2021-02-03 07:36:36'),(2,'3335bc61-565a-40e1-8bbc-190cf1e9b985','gas','{\"name\": \"Home Flat Medium\", \"tags\": \"Gas\", \"image\": \"gas-700.png\", \"price_new\": 16, \"price_old\": 0, \"description\": \"The offer reserved for home customers with a fixed and clear price.The offer has a price security of <b>18</b> months for a consumption up to <b>2200</b> cube meters year.<br/>The offer is indicated for medium size families (4-6 members)\", \"price_unity\": \"€ / month\"}','2021-02-03 07:32:22','2021-02-03 07:36:36'),(3,'5f313e3f-f9df-4603-a807-8aa1e661c0e4','gas','{\"name\": \"Home Flat Large\", \"tags\": \"Gas\", \"image\": \"gas-700.png\", \"price_new\": 20, \"price_old\": 0, \"description\": \"The offer reserved for home customers with a fixed and clear price. The offer has a price security of <b>12</b> months for a consumption up to <b>3000</b> cube meters year.<br/>The offer is indicated for big families (6-10 members)\", \"price_unity\": \"€ / month\"}','2021-02-03 07:32:22','2021-02-03 07:36:36'),(4,'6cf6cfa3-6918-4368-8342-e99934735303','gas','{\"name\": \"Home Small\", \"tags\": \"Gas\", \"image\": \"gas-700.png\", \"price_new\": 0.12, \"price_old\": 0.14, \"description\": \"The offer reserved for home customers with subscription on consumption and a clear price. The offer has a price security of <b>24</b> months for a consumption up to <b>1400</b> cube meters year.<br/>The offer is indicated for couples and small size families (3-4 members)\", \"price_unity\": \"€ / cubic metre\"}','2021-02-03 07:32:22','2021-02-06 11:09:42'),(5,'ef420798-873c-492b-9689-5e6a0432b211','gas','{\"name\": \"Home Medium\", \"tags\": \"Gas\", \"image\": \"gas-700.png\", \"price_new\": 0.18, \"price_old\": 0, \"description\": \"The offer reserved for home customers with subscription on consumption and a clear price.The offer has a price security of <b>18</b> months for a consumption up to <b>2200</b> cube meters year.<br/>The offer is indicated for medium size families (4-6 members)\", \"price_unity\": \"€ / cubic metre\"}','2021-02-03 07:32:22','2021-02-03 07:36:36'),(6,'92e00f90-328d-4089-9e78-0f3a74de18b9','gas','{\"name\": \"Home Large\", \"tags\": \"Gas\", \"image\": \"gas-700.png\", \"price_new\": 0.25, \"price_old\": 0, \"description\": \"The offer reserved for home customers with subscription on consumption and a clear price. The offer has a price security of <b>12</b> months for a consumption up to <b>3000</b> cube meters year.<br/>The offer is indicated for big families (6-10 members)\", \"price_unity\": \"€ / cubic metre\"}','2021-02-03 07:32:22','2021-02-03 07:36:36'),(7,'1e2c27dc-a329-4097-8179-3d26904fc5cf','energy','{\"name\": \"Home Flat Small\", \"tags\": \"Energy\", \"image\": \"light-700.png\", \"price_new\": 35, \"price_old\": 0, \"description\": \"The offer reserved for home customers with a fixed and clear price. The offer has a price security of <b>24</b> months for a consumption up to <b>1500</b> Kw year.<br/>The offer is indicated for couples and small size families (3-4 members)\", \"price_unity\": \"€ / month\"}','2021-02-27 20:33:02','2021-02-27 20:36:37'),(8,'0e616d10-198c-49fe-b2d9-020b42614f5a','energy','{\"name\": \"Home Flat Medium\", \"tags\": \"Energy\", \"image\": \"light-700.png\", \"price_new\": 55, \"price_old\": 60, \"description\": \"The offer reserved for home customers with a fixed and clear price.The offer has a price security of <b>18</b> months for a consumption up to <b>2500</b>Kw year.<br/>The offer is indicated for medium size families (4-6 members)\", \"price_unity\": \"€ / month\"}','2021-02-27 20:33:02','2021-02-27 20:36:37'),(9,'c071ae4d-5831-4368-bf84-9a6f44cbb970','energy','{\"name\": \"Home Flat Large\", \"tags\": \"Energy\", \"image\": \"light-700.png\", \"price_new\": 70, \"price_old\": 80, \"description\": \"The offer reserved for home customers with a fixed and clear price. The offer has a price security of <b>12</b> months for a consumption up to <b>5000</b> Kw year.<br/>The offer is indicated for big families (6-10 members)\", \"price_unity\": \"€ / month\"}','2021-02-27 20:33:02','2021-02-27 20:36:37');
/*!40000 ALTER TABLE `shop_utilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptions` (
  `subscriptions_id` int unsigned NOT NULL AUTO_INCREMENT,
  `subscriptions_uuid` char(36) DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `shop_utilities_id` int unsigned DEFAULT NULL,
  `subscriber` json DEFAULT NULL,
  `payment` json DEFAULT NULL,
  `status` varchar(45) DEFAULT 'Pending',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`subscriptions_id`),
  KEY `index_user` (`user_id`),
  KEY `index_shop_utilities` (`shop_utilities_id`),
  CONSTRAINT `fk_subscriptions_shop_utilities` FOREIGN KEY (`shop_utilities_id`) REFERENCES `shop_utilities` (`shop_utilities_id`),
  CONSTRAINT `fk_subscriptions_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support`
--

DROP TABLE IF EXISTS `support`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support` (
  `support_id` int unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) DEFAULT NULL,
  `table_name` varchar(45) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `description` text,
  `properties` json DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file_name` varchar(255) NOT NULL,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`support_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support`
--

LOCK TABLES `support` WRITE;
/*!40000 ALTER TABLE `support` DISABLE KEYS */;
/*!40000 ALTER TABLE `support` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonial`
--

DROP TABLE IF EXISTS `testimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonial` (
  `testimonial_id` int unsigned NOT NULL AUTO_INCREMENT,
  `properties` json DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`testimonial_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonial`
--

LOCK TABLES `testimonial` WRITE;
/*!40000 ALTER TABLE `testimonial` DISABLE KEYS */;
INSERT INTO `testimonial` VALUES (1,'{\"img\": \"/img/testimonial_1.jpeg\", \"name\": \"Carl Fox\", \"comment\": \"I\'ve been a customer with Berylian Energy for about a year and a half now. I feel good saving money and being good to Mother Earth.\"}','2020-02-26 08:52:38','2020-03-05 13:05:58'),(2,'{\"img\": \"/img/testimonial_2.jpeg\", \"name\": \"Randy Leonard\", \"comment\": \"I was with Berylian Energy for three years and never had a problem with them. I changed to another company for a year only because they were having a promotion, and after that year ended I came back to Berylian Energy at a lower rate again. Plus, their plans help protect the environment.\"}','2020-02-26 08:53:51','2020-03-05 13:05:58'),(3,'{\"img\": \"/img/testimonial_3.jpeg\", \"name\": \"Rex Rice\", \"comment\": \"Great service, great price. In addition feels good to be using clean energy.\"}','2020-02-26 08:54:34','2020-03-05 13:05:58'),(6,'{\"img\": \"/img/testimonial_4.jpeg\", \"name\": \"Rose Salazar\", \"comment\": \"Switching to Berylian Energy was so easy. The people I spoke with were so good to work with. They were helpful and courteous. We are most happy that we made the switch.\"}','2020-02-26 08:56:03','2020-03-05 13:05:58'),(7,'{\"img\": \"/img/testimonial_5.jpeg\", \"name\": \"Sonja Drake\", \"comment\": \"I started using this company when I moved into my new apartment, and they were very prompt getting my electricity on by my move-in date. I have been extremely satisfied with the prices as well. I will definitely be referring others to Berylian Energy!\"}','2020-02-26 08:56:03','2020-03-05 13:05:58'),(8,'{\"img\": \"/img/testimonial_6.jpeg\", \"name\": \"Tina Townsend\", \"comment\": \"So happy we made the switch to Berylian Energy!!! I love knowing any energy we use is pollution free :)\"}','2020-02-26 08:56:03','2020-03-05 13:05:58');
/*!40000 ALTER TABLE `testimonial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `description` tinytext,
  `email` char(64) DEFAULT NULL,
  `password` char(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `uuid_UNIQUE` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=511 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'ea172268-1d16-428b-9666-4d087475cf74','root','System User','','$2y$11$Se92hQFtbuXfCwakhdmcSuQev.syLjgfn0i7pHWrmFfTqkJ1UDkJC',1,'2015-02-14 10:39:00','2022-03-15 16:36:43'),(2,'24178368-c01e-4b02-a187-e1f09aea6531','admin','Administrator','admin@admin.admin','$2y$11$elkZytWBm7qyL9yU41PYMefsq7lWGyvUYoK.9KvMtOC6elktw.iyS',1,'2020-03-03 10:48:04','2022-03-15 16:36:43'),(3,'6ae55b74-8238-4645-877b-2f24e1775555','gt','Green Team','gt@gt.admin','$2y$11$bn3bTvg0mFEjQ2deIkSooeVoNRGPDTYMhOQbk3UO/aymIGg5YY54i',1,'2020-03-03 10:49:12','2022-03-15 16:36:43'),(4,'18289f5c-6f0c-4df3-b6ab-8be5e5a74e5c','scoringbot','Scoring Bot','scoringbot@scoringbot.admin','$2y$11$9D41YNtpjGdOtwry1RNNSOhP6x3s.MrHeD4coOztIPTyHQbrxR486',1,'2020-03-03 10:50:32','2022-03-15 16:36:43'),(5,'3f106201-ebbd-446e-953e-9ca35eda4f15','Oscar.Romero','','oscar.romero@jourrapide.com','$2y$11$KKpMFV6U8i8CFqSDXe4xa.7hdaOFiqlQrFXfLsjyxSGi6ATbZp/tK',1,'2021-02-06 17:35:41','2022-03-15 16:38:43'),(6,'86ee64c4-0c5d-4393-9da7-53be0adaf946','Olivia.Heikkinen','','olivia.heikkinen@armyspy.com','$2y$11$qwIxrrhQfe96kmW28n1y6ePbq8ske7VFDRkomsaGEfBAMXikVjN6u',1,'2021-02-06 17:35:43','2022-03-15 16:38:43'),(7,'d1049133-fbd8-484c-bbab-e9a1f1770faf','Ella.Salmela','','ella.salmela@armyspy.com','$2y$11$1f.zCgLLBvKyZidcF9svo.VDxJDfZxrVaA6kdLUC7Kq.7r1kDCt5S',1,'2021-02-06 17:35:45','2022-03-15 16:38:43'),(8,'f14fabad-5de5-4a01-8247-a4dfd0042f63','Leo.Paavola','','leo.paavola@rhyta.com','$2y$11$tJdxoTzZIi1n1YZd1VYEC.jsGdbXO2YtcLKHKn6f9rQOAeaojJE76',1,'2021-02-06 17:35:47','2022-03-15 16:38:43'),(9,'855daac5-1ff0-44ad-8df9-642c6bf20a79','Benito.Aguilar','','benito.aguilar@jourrapide.com','$2y$11$rI5jV1OSimo/juZd8agGEuH4eUz6B1tw3Fy8H3UWOtUD3RnCKUsqi',1,'2021-02-06 17:35:49','2022-03-15 16:38:43'),(10,'03430eb4-9492-4641-915d-3ad258e548d0','Terri.Horton','','terri.horton@jourrapide.com','$2y$11$QZKGl5saypQe1MTR4zo/0eDYsvnl/HTbp4HjMDkhd34fM3yTiPpN.',1,'2021-02-06 17:35:50','2022-03-15 16:38:43'),(11,'fac6eb05-cde9-43c2-a79a-948bfef5c0a7','Willie.Beck','','willie.beck@armyspy.com','$2y$11$NJUghql2VVTpi0YdGmY/jOxuQ4RYqw/nGllRQ0c/7h2ox/k5NdBwu',1,'2021-02-06 17:35:52','2022-03-15 16:40:37'),(12,'4e06a5fb-734a-4dad-bd5e-61d26490cef9','Gema.Delgado','','gema.delgado@teleworm.us','$2y$11$2iHCXeZliPI4gROANoyeeeisU7U2BoPdRaSD3s4c0ReTzkJnhEgdm',1,'2021-02-06 17:35:53','2022-03-15 16:40:37'),(13,'e51a29f5-c73a-4a74-8ee7-2bb03d33ae6c','Mikael.Haapala','','mikael.haapala@teleworm.us','$2y$11$GkqS7HSwpDaegC.YUzdcP.g.zDPAZplBOALnFsp6vjaRV45MFEXnC',1,'2021-02-06 17:35:55','2022-03-15 16:40:37'),(14,'da7dc205-b936-4fff-990a-4f617d08b620','Emil.Marie','','emil.marie@dayrep.com','$2y$11$MFJzbsUHluEFN7tWJUxZ2.gXiz/dltRkCADcIV6tZ8TfG4V3ZiwoG',1,'2021-02-06 17:35:56','2022-03-15 16:40:37'),(15,'945eb160-1002-4cd2-95d0-75ec51a54f98','Peter.Toshiba','','peter.toshiba@rhyta.com','$2y$11$s2clrIvIWSGX2V1mWsai3el7ynkE3NslgFOyO.5piOvebW2E9eeyS',1,'2021-02-06 17:35:57','2022-03-15 16:40:37'),(16,'60a914d0-5758-40d1-a828-786343c5deff','Adam.Simpson','','adam.simpson@teleworm.us','$2y$11$G.gKG50hYMljOM9tX1SIv.PCFctuS0JXiFV2AuNHb0OCdIx8y3kBC',1,'2021-02-06 17:35:59','2022-03-15 16:40:37'),(17,'b89d2bec-2843-4e32-a904-1f4fefa2e428','Jessica.Franklin','','jessica.franklin@jourrapide.com','$2y$11$LP.GSwZ5Qz2RX/jRwyFS6.7dbE45K6E7C1OTShMUrvRkwzWXOJc0i',1,'2021-02-06 17:36:00','2022-03-15 16:40:37'),(18,'16153a3d-643d-44d3-a0ee-d6c2a18211e4','Jose.Starling','','jose.starling@teleworm.us','$2y$11$RUE//y/9c82v1PNPYuiWS.oEcI4Fn13oeZQHlkFwEqEdN9hQQyu1m',1,'2021-02-06 17:36:02','2022-03-15 16:40:37'),(19,'28555da4-8baa-415f-a292-ffa27e32d3dc','Andy.Triumph','','andy.triumph@rhyta.com','$2y$11$TKO3Rn530CplClnMBCS3wOrg76fPdjnVU/vKQgQZ7L5y24icCrjTC',1,'2021-02-06 17:36:03','2022-03-15 16:40:37');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `user_info_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `second_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `postal_code` varchar(255) NOT NULL,
  `properties` json DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_info_id`),
  KEY `index_user` (`user_id`) USING BTREE,
  KEY `fk_user_user_info` (`user_id`),
  CONSTRAINT `fk_user_info_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=508 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,2,'admin','admin','','','','','0','{}','2020-03-03 10:48:04','2021-02-06 17:34:25'),(2,3,'gt','gt','','','','','0','{}','2020-03-03 10:49:12','2021-02-06 17:34:25'),(3,4,'scoringbot','scoringbot','','','','','0','{}','2020-03-03 10:50:32','2021-02-06 17:34:25'),(4,5,'Oscar','Romero','0483 62 91 86','Rue des Tanneurs 194','Kral','Berylia','1800','{\"cc_ccv\": 815, \"cc_type\": \"VISA\", \"cc_exp_m\": 5, \"cc_exp_y\": 2027, \"cc_number\": 4485698198233758}','2021-02-06 17:35:41','2022-03-15 16:28:45'),(5,6,'Olivia','Heikkinen','0483 62 91 86','Rue des Tanneurs 194','Lambeck','Berylia','1800','{\"cc_ccv\": 669, \"cc_type\": \"VISA\", \"cc_exp_m\": 1, \"cc_exp_y\": 2024, \"cc_number\": 4532914226436955}','2021-02-06 17:35:43','2022-03-15 16:28:45'),(6,7,'Ella','Salmela','0489 27 90 02','Rue Fosse Piron 20','Moazac','Berylia','5002','{\"cc_ccv\": 193, \"cc_type\": \"VISA\", \"cc_exp_m\": 7, \"cc_exp_y\": 2023, \"cc_number\": 4716665470264174}','2021-02-06 17:35:46','2022-03-15 16:28:45'),(7,8,'Leo','Paavola','0498 84 77 36','Rue de Birmingham 49','Pineland','Berylia','9630','{\"cc_ccv\": 436, \"cc_type\": \"VISA\", \"cc_exp_m\": 8, \"cc_exp_y\": 2024, \"cc_number\": 4024007109671684}','2021-02-06 17:35:47','2022-03-15 16:28:45'),(8,9,'Benito','Aguilar','0491 39 41 18','Industriestraat 176','Tettlewick','Berylia','9450','{\"cc_ccv\": 239, \"cc_type\": \"VISA\", \"cc_exp_m\": 11, \"cc_exp_y\": 2023, \"cc_number\": 4024007100117539}','2021-02-06 17:35:49','2022-03-15 16:30:10'),(9,10,'Terri','Horton','0487 53 54 72','Serenade Opus 92','Tettlewick','Berylia','9400','{\"cc_ccv\": 781, \"cc_type\": \"VISA\", \"cc_exp_m\": 11, \"cc_exp_y\": 2025, \"cc_number\": 4539963655189521}','2021-02-06 17:35:50','2022-03-15 16:28:45'),(10,11,'Willie','Beck','0486 39 28 56','Lange Elzenstraat 377','Vear','Berylia','4020','{\"cc_ccv\": 640, \"cc_type\": \"VISA\", \"cc_exp_m\": 11, \"cc_exp_y\": 2023, \"cc_number\": 4929500188445786}','2021-02-06 17:35:52','2022-03-15 16:30:10'),(11,12,'Gema','Delgado','0490 87 92 26','Rue Fouramont 213','Elev','Berylia','6720','{\"cc_ccv\": 363, \"cc_type\": \"VISA\", \"cc_exp_m\": 2, \"cc_exp_y\": 2023, \"cc_number\": 4556885785259957}','2021-02-06 17:35:53','2022-03-15 16:30:10'),(12,13,'Mikael','Haapala','0476 83 54 10','Rue du Bourgmestre Dandoy 159','Carcastle','Berylia','9790','{\"cc_ccv\": 376, \"cc_type\": \"VISA\", \"cc_exp_m\": 8, \"cc_exp_y\": 2025, \"cc_number\": 4485601703236688}','2021-02-06 17:35:55','2022-03-15 16:28:45'),(13,14,'Emil','Marie','0483 69 58 12','Rue de Virton 30','Roseiron','Berylia','5522','{\"cc_ccv\": 580, \"cc_type\": \"VISA\", \"cc_exp_m\": 3, \"cc_exp_y\": 2023, \"cc_number\": 4916266497179434}','2021-02-06 17:35:56','2022-03-15 16:28:45'),(14,15,'Peter','Toshiba','0495 73 52 13','Route de Botrange 171','Erack','Berylia','3510','{\"cc_ccv\": 531, \"cc_type\": \"VISA\", \"cc_exp_m\": 3, \"cc_exp_y\": 2024, \"cc_number\": 4916003599126579}','2021-02-06 17:35:58','2022-03-15 16:28:45'),(15,16,'Adam','Simpson','0470 48 30 45','Rue des Campanules 268','Glassmoor','Berylia','5651','{\"cc_ccv\": 747, \"cc_type\": \"VISA\", \"cc_exp_m\": 10, \"cc_exp_y\": 2026, \"cc_number\": 4556330149172570}','2021-02-06 17:35:59','2022-03-15 16:28:45'),(16,17,'Jessica','Franklin','0494 51 17 97','Tiegemberg 78','Bakun','Berylia','3700','{\"cc_ccv\": 430, \"cc_type\": \"VISA\", \"cc_exp_m\": 4, \"cc_exp_y\": 2025, \"cc_number\": 4532766431611099}','2021-02-06 17:36:00','2022-03-15 16:30:10'),(17,18,'Jose','Starling','0494 11 82 01','Route de Vonèche 191','Wildehill','Berylia','4537','{\"cc_ccv\": 902, \"cc_type\": \"VISA\", \"cc_exp_m\": 7, \"cc_exp_y\": 2023, \"cc_number\": 4716805450603468}','2021-02-06 17:36:02','2022-03-15 16:30:10'),(507,19,'Andy','Triumph','0494 11 82 08','Route de Pines 191','Glassmoor','Berylia','5651','{\"cc_ccv\": 902, \"cc_type\": \"VISA\", \"cc_exp_m\": 7, \"cc_exp_y\": 2023, \"cc_number\": 4929792814307254}','2022-03-15 16:30:10','2022-03-15 16:30:10');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_permission`
--

DROP TABLE IF EXISTS `user_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_permission` (
  `user_permission_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `permission_id` int unsigned DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_permission_id`),
  UNIQUE KEY `unique_user_permission` (`user_id`,`permission_id`),
  KEY `index_user` (`user_id`) USING BTREE,
  KEY `index_permission` (`permission_id`) USING BTREE,
  CONSTRAINT `fk_user_permission_permission` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`permission_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_permission_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_permission`
--

LOCK TABLES `user_permission` WRITE;
/*!40000 ALTER TABLE `user_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_role_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_role_id`),
  UNIQUE KEY `unique_user_role` (`user_id`,`role_id`),
  KEY `index_user` (`user_id`),
  KEY `index_role` (`role_id`),
  CONSTRAINT `fk_user_role_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `fk_user_role_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1,1,'2018-11-05 19:58:33','2018-11-05 19:58:33'),(2,2,1,'2020-03-03 15:47:47','2020-03-03 15:47:47'),(3,3,1,'2020-03-09 07:48:46','2020-03-09 07:48:46'),(4,4,1,'2020-03-09 07:48:46','2020-03-09 07:48:46');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'energy'
--

--
-- Dumping routines for database 'energy'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-15 16:43:06
