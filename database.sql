-- MySQL dump 10.13  Distrib 8.0.41, for Linux (aarch64)
--
-- Host: mysql    Database: botble
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'GjlY4cAh8hAJKWmcM41Uwz12mkxGOvLg',1,'2025-04-12 04:08:46','2025-04-12 04:08:46','2025-04-12 04:08:46');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actor_id` bigint unsigned NOT NULL,
  `actor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Design',0,'Voluptatum enim odio autem placeat consequuntur. Quo reprehenderit et rerum corrupti quo. Et autem aut aut est.','published',NULL,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2025-04-12 04:08:49','2025-04-12 04:08:49'),(2,'Lifestyle',0,'Dolor illo sunt tenetur quos. Impedit quae est deleniti eaque voluptatem. Et sapiente in dolores vero.','published',NULL,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-04-12 04:08:49','2025-04-12 04:08:49'),(3,'Travel Tips',2,'Corrupti omnis iure laborum similique doloribus. Quis similique iure sit neque. Impedit sed similique dolore earum consequuntur similique aliquid.','published',NULL,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2025-04-12 04:08:49','2025-04-12 04:08:49'),(4,'Healthy',0,'Sed reiciendis animi aut iste sed eligendi consequuntur. Nesciunt rerum quia ab dolorem. Qui quo similique in perspiciatis perferendis officia. Earum minima quia omnis vitae facilis sed.','published',NULL,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-04-12 04:08:49','2025-04-12 04:08:49'),(5,'Travel Tips',4,'Cumque rerum illo et nihil aut dolorem harum numquam. Impedit adipisci natus et quam molestias. Aliquid dolores a recusandae sit enim odit.','published',NULL,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2025-04-12 04:08:49','2025-04-12 04:08:49'),(6,'Hotel',0,'Molestias ad reiciendis facilis dolores eius nihil. Et et excepturi et distinctio doloribus. Repellat rem quia et similique amet et molestiae voluptate. Inventore voluptas animi blanditiis.','published',NULL,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-04-12 04:08:49','2025-04-12 04:08:49'),(7,'Nature',6,'Vel illo rerum dolor voluptas et. Necessitatibus ipsam et dicta. Tenetur asperiores aut rem sint exercitationem.','published',NULL,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2025-04-12 04:08:49','2025-04-12 04:08:49');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Paris','paris',1,1,NULL,0,'locations/location1.png',0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL),(2,'London','london',2,2,NULL,0,'locations/location2.png',0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL),(3,'New York','new-york',3,3,NULL,0,'locations/location3.png',0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL),(4,'New York','new-york-1',4,4,NULL,0,'locations/location4.png',0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL),(5,'Copenhagen','copenhagen',5,5,NULL,0,'locations/location5.png',0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL),(6,'Berlin','berlin',6,6,NULL,0,'locations/location6.png',0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Desiree Cartwright','arowe@example.org','+17755881614','21887 Juanita Radial\nSouth Lemuelborough, AL 25329','Voluptatum dicta in animi est aut illum error.','Aliquid et et dolores dolorem. Non id eum corporis asperiores veniam. Placeat iusto dolor explicabo deserunt. Soluta reprehenderit aliquam architecto dolorem. Praesentium dolore consequatur beatae est excepturi voluptatem. Aspernatur qui sint cumque inventore ut. Fugiat cupiditate cum omnis voluptatem voluptatem. Eligendi rerum fugit in debitis aperiam odio quo. Quasi vero fuga tenetur nostrum qui sit. Qui voluptatem eum omnis sed voluptatibus est tempore. Sit ipsam voluptas ratione est.',NULL,'read','2025-04-12 04:08:50','2025-04-12 04:08:50'),(2,'Kay Moen','jerrold.bartoletti@example.org','+19314741510','170 Wendy Station\nPort Kendall, OK 48003-2572','Qui tempora occaecati dolorem sunt aperiam ut.','Omnis voluptatem voluptatem quo optio enim. Sit eos sed sit qui quasi sit. Voluptates corrupti accusantium et tenetur occaecati distinctio error. Assumenda ut quo omnis corporis neque non illo est. Rerum dolor fugiat vel consectetur maiores. Sed id et iste velit quo nesciunt iure. Debitis et ea necessitatibus eum aut dicta aut. Corrupti aut et illo. Voluptatem voluptates qui earum dolorem repellendus quis.',NULL,'unread','2025-04-12 04:08:50','2025-04-12 04:08:50'),(3,'Nicholas Barrows','brycen.douglas@example.org','+14586043635','707 Carolyn Fork\nQuigleyview, VT 88363','Enim necessitatibus ducimus vero sapiente.','Commodi ipsa ullam est ex maxime ab. Quia quia nam rerum necessitatibus. Voluptas odit ab molestiae accusamus consequatur. Sit occaecati vel qui qui eveniet sunt. Facilis rem laboriosam voluptas quo nihil quidem. Ea aut et cumque eligendi blanditiis voluptas. Est veniam quasi voluptas saepe velit repellendus enim. Qui possimus dolores facere ut. Eaque excepturi minus excepturi dolorem ut.',NULL,'read','2025-04-12 04:08:50','2025-04-12 04:08:50'),(4,'Dr. Leda Will DDS','oupton@example.net','+19847614178','8797 Deven Flats Suite 567\nMarcelinobury, CO 40764-1230','Suscipit totam numquam et dolorum non qui itaque.','Ad est est laudantium eos qui repellendus iste modi. Vel et in repudiandae fugiat. Eos quas et nihil corporis ab. Cupiditate vel cum eos sunt error ipsum. Id et nesciunt reprehenderit sapiente itaque expedita. Ut aut dolores quaerat est. Rem quas est placeat quo facere culpa voluptatum. Et dolorum quis vero ipsam. Facere adipisci eum dolorem. Aliquam laudantium dolorem ut sint est dolorum.',NULL,'read','2025-04-12 04:08:50','2025-04-12 04:08:50'),(5,'Deangelo Kulas Sr.','considine.bernhard@example.net','+13237362339','7220 Heathcote Track\nPort Tia, MA 64955','Nemo aliquam vel quas sequi asperiores.','Voluptatem voluptates tenetur ut eos nemo. At non magni nemo aut aperiam. Mollitia nulla molestiae voluptas quo omnis veniam. Quaerat esse repellat maxime velit. Tempora quisquam iusto similique consequatur. Suscipit ut beatae sint rerum mollitia atque. Necessitatibus repudiandae recusandae debitis et. Officiis vero quam alias ea tenetur natus beatae et. Amet ullam autem esse nulla dolorem eum.',NULL,'read','2025-04-12 04:08:50','2025-04-12 04:08:50'),(6,'Mrs. Margaretta Lebsack','myra00@example.com','+15348600045','802 Gerald Locks Apt. 121\nRosellaland, SD 93947-7860','Modi velit sequi nam et accusamus.','Fugit necessitatibus aut animi distinctio consequatur architecto. Numquam fugiat ipsum ab est et voluptatem. Facilis quia distinctio cumque et. Placeat laborum qui officia aut rerum id qui qui. Laborum autem voluptas aut harum officia quia dicta. Placeat unde quidem blanditiis nesciunt. Sunt est tempora et cupiditate nesciunt ea natus. Aspernatur odit illo quas.',NULL,'read','2025-04-12 04:08:50','2025-04-12 04:08:50'),(7,'Evie Block','lillie.boyle@example.com','+16306277644','87500 McGlynn Alley Apt. 812\nDonnellybury, WA 07470-1889','Odio neque nostrum consequatur.','Ullam quia repellendus ea harum. Eos facere ducimus nisi adipisci necessitatibus. Ipsam ad autem officiis voluptate dignissimos. Numquam voluptatibus est atque quod. Aut mollitia magnam minima voluptas sed. Est placeat laudantium consectetur necessitatibus. Quia voluptatum molestias impedit dolor enim placeat voluptatem. Culpa aspernatur rem illo praesentium expedita eos.',NULL,'unread','2025-04-12 04:08:50','2025-04-12 04:08:50'),(8,'Harley Jacobs IV','hertha.smitham@example.net','+18202750530','32662 Abdullah Field Suite 405\nVictoriashire, ND 04299','Explicabo voluptatibus sint sunt mollitia.','Culpa facilis qui saepe id incidunt temporibus. Delectus odio sed repudiandae beatae quia consequatur. Odit qui est fuga placeat. Voluptatum tenetur porro est iusto nihil doloribus distinctio. Facere impedit ab doloribus et ad. Laborum consequatur laborum error voluptas id quia inventore numquam. Magni libero quasi sed aut quia. Ut nobis maxime hic dolorem mollitia est.',NULL,'read','2025-04-12 04:08:50','2025-04-12 04:08:50'),(9,'Mathew Corwin','ilene.hayes@example.net','+19188632904','49558 Emmitt Path\nWest Tessville, WY 29891-5658','Adipisci error accusamus vero saepe repudiandae.','Quisquam hic architecto et ipsa. Debitis dolores est iure dolore nisi non magnam. Rerum assumenda consectetur quis debitis rerum veritatis. Id distinctio mollitia magni autem. Harum laudantium quo in suscipit illo error quo dolor. Voluptates molestiae quibusdam voluptatum nesciunt. Eius a illum illo et nam quibusdam esse laboriosam. Dolore eaque impedit incidunt eveniet soluta et aut. Eligendi porro placeat rerum consequatur iste ut.',NULL,'read','2025-04-12 04:08:50','2025-04-12 04:08:50'),(10,'Jayce Renner','harvey.mauricio@example.net','+15637432480','7891 Loy Way\nPort Chaseville, NV 68595','Quam sunt repellat corporis eveniet.','Tenetur qui quaerat voluptatum voluptatem enim itaque. Maiores quisquam iusto laboriosam similique voluptatem. Soluta est quas hic saepe. Et nesciunt non est sed ratione maiores. Ipsum ut aut est consequatur. Doloremque molestias quas non saepe quas cupiditate autem dolor. Veniam quia omnis soluta incidunt voluptate rerum neque. Beatae tenetur quam ut voluptas delectus.',NULL,'unread','2025-04-12 04:08:50','2025-04-12 04:08:50');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'France','French',0,NULL,0,'published','2025-04-12 04:08:52',NULL,'FRA'),(2,'England','English',0,NULL,0,'published','2025-04-12 04:08:52',NULL,'UK'),(3,'USA','Americans',0,NULL,0,'published','2025-04-12 04:08:52',NULL,'US'),(4,'Holland','Dutch',0,NULL,0,'published','2025-04-12 04:08:52',NULL,'HL'),(5,'Denmark','Danish',0,NULL,0,'published','2025-04-12 04:08:52',NULL,'DN'),(6,'Germany','Danish',0,NULL,0,'published','2025-04-12 04:08:52',NULL,'DN');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'General',0,'published','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL),(2,'Buying',1,'published','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL),(3,'Payment',2,'published','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL),(4,'Support',3,'published','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'Where does it come from?','If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages.',1,'published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(2,'How JobBox Work?','To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth.',1,'published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(3,'What is your shipping policy?','Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.',1,'published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(4,'Where To Place A FAQ Page','Just as the name suggests, a FAQ page is all about simple questions and answers. Gather common questions your customers have asked from your support team and include them in the FAQ, Use categories to organize questions related to specific topics.',1,'published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(5,'Why do we use it?','It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental.',1,'published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(6,'Where can I get some?','To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth.',1,'published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(7,'Where does it come from?','If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages.',2,'published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(8,'How JobBox Work?','To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth.',2,'published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(9,'What is your shipping policy?','Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.',2,'published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(10,'Where To Place A FAQ Page','Just as the name suggests, a FAQ page is all about simple questions and answers. Gather common questions your customers have asked from your support team and include them in the FAQ, Use categories to organize questions related to specific topics.',2,'published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(11,'Why do we use it?','It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental.',2,'published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(12,'Where can I get some?','To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth.',2,'published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(13,'Where does it come from?','If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages.',3,'published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(14,'How JobBox Work?','To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth.',3,'published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(15,'What is your shipping policy?','Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.',3,'published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(16,'Where To Place A FAQ Page','Just as the name suggests, a FAQ page is all about simple questions and answers. Gather common questions your customers have asked from your support team and include them in the FAQ, Use categories to organize questions related to specific topics.',3,'published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(17,'Why do we use it?','It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental.',3,'published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(18,'Where can I get some?','To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth.',3,'published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(19,'Where does it come from?','If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages.',4,'published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(20,'How JobBox Work?','To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth.',4,'published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(21,'What is your shipping policy?','Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words.',4,'published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(22,'Where To Place A FAQ Page','Just as the name suggests, a FAQ page is all about simple questions and answers. Gather common questions your customers have asked from your support team and include them in the FAQ, Use categories to organize questions related to specific topics.',4,'published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(23,'Why do we use it?','It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental.',4,'published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(24,'Where can I get some?','To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth.',4,'published','2025-04-12 04:09:17','2025-04-12 04:09:17');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Perfect','Non iure dicta unde vitae. Sit tempora officiis ea architecto ipsam corrupti assumenda. Repellat voluptatem magnam amet odit non nihil.',1,0,'galleries/1.jpg',1,'published','2025-04-12 04:08:50','2025-04-12 04:08:50'),(2,'New Day','Qui recusandae reiciendis doloribus vel omnis cupiditate. Iure quasi perspiciatis aut tempore eveniet quae sit. In veritatis rerum aut ad quae est.',1,0,'galleries/2.jpg',1,'published','2025-04-12 04:08:50','2025-04-12 04:08:50'),(3,'Happy Day','Voluptatem totam perspiciatis repellat quisquam nostrum dolore deleniti. Vel aut totam cum. Accusantium quae et in saepe. Ut aliquid quae voluptas.',1,0,'galleries/3.jpg',1,'published','2025-04-12 04:08:50','2025-04-12 04:08:50'),(4,'Nature','Tempora sit ut aut voluptas adipisci dolor. Et veniam et sit asperiores et. Iure amet impedit quis cum. Aut consequuntur aut maiores adipisci est.',1,0,'galleries/4.jpg',1,'published','2025-04-12 04:08:50','2025-04-12 04:08:50'),(5,'Morning','Ut optio qui est dolor quas incidunt. Dolore quidem qui soluta quo et corrupti. Asperiores dolore et optio.',1,0,'galleries/5.jpg',1,'published','2025-04-12 04:08:50','2025-04-12 04:08:50'),(6,'Photography','In voluptas nemo et amet dolorum saepe iure. Rerum id unde et praesentium velit quasi dicta. Labore quidem iure nihil nihil aut dolorum quia.',1,0,'galleries/6.jpg',1,'published','2025-04-12 04:08:50','2025-04-12 04:08:50');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quibusdam et omnis nisi rerum enim in odit. Harum iusto dolores omnis suscipit amet ratione. Cupiditate dolore quis optio odit ipsum.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Asperiores et at quod blanditiis iste. Earum voluptatem quis non nulla cumque odio. Aut dolor est inventore. Quos natus cumque sequi quos.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Harum nobis saepe quos officiis facilis cum. Ab fugiat aut iure atque quos accusantium optio ad. Eos mollitia temporibus illo et rerum suscipit.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Rem facere sed tenetur cum sit et atque iste. Perferendis qui rem quis. Excepturi dignissimos similique iure eum explicabo voluptates eum.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Sint laudantium et velit distinctio. Iste itaque soluta et eum vel. Ipsum natus illo magni accusantium consequatur minima eligendi iste.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Iste ut dignissimos quo ut possimus. Odit sed non porro debitis ullam earum. A omnis expedita repellat ducimus. Et dolorem qui qui aperiam sit.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Quidem sed aliquam ipsam exercitationem. Aut facere necessitatibus dolorem est dolores assumenda unde perferendis.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Blanditiis voluptatem facilis nobis iusto. Sit est ipsa et sed nihil provident est. Laborum nihil ea officia rerum.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Aut voluptatem vel cumque et rerum qui omnis. Dolorem est atque perspiciatis et animi.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2025-04-12 04:08:50','2025-04-12 04:08:50'),(2,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quibusdam et omnis nisi rerum enim in odit. Harum iusto dolores omnis suscipit amet ratione. Cupiditate dolore quis optio odit ipsum.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Asperiores et at quod blanditiis iste. Earum voluptatem quis non nulla cumque odio. Aut dolor est inventore. Quos natus cumque sequi quos.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Harum nobis saepe quos officiis facilis cum. Ab fugiat aut iure atque quos accusantium optio ad. Eos mollitia temporibus illo et rerum suscipit.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Rem facere sed tenetur cum sit et atque iste. Perferendis qui rem quis. Excepturi dignissimos similique iure eum explicabo voluptates eum.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Sint laudantium et velit distinctio. Iste itaque soluta et eum vel. Ipsum natus illo magni accusantium consequatur minima eligendi iste.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Iste ut dignissimos quo ut possimus. Odit sed non porro debitis ullam earum. A omnis expedita repellat ducimus. Et dolorem qui qui aperiam sit.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Quidem sed aliquam ipsam exercitationem. Aut facere necessitatibus dolorem est dolores assumenda unde perferendis.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Blanditiis voluptatem facilis nobis iusto. Sit est ipsa et sed nihil provident est. Laborum nihil ea officia rerum.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Aut voluptatem vel cumque et rerum qui omnis. Dolorem est atque perspiciatis et animi.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2025-04-12 04:08:50','2025-04-12 04:08:50'),(3,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quibusdam et omnis nisi rerum enim in odit. Harum iusto dolores omnis suscipit amet ratione. Cupiditate dolore quis optio odit ipsum.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Asperiores et at quod blanditiis iste. Earum voluptatem quis non nulla cumque odio. Aut dolor est inventore. Quos natus cumque sequi quos.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Harum nobis saepe quos officiis facilis cum. Ab fugiat aut iure atque quos accusantium optio ad. Eos mollitia temporibus illo et rerum suscipit.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Rem facere sed tenetur cum sit et atque iste. Perferendis qui rem quis. Excepturi dignissimos similique iure eum explicabo voluptates eum.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Sint laudantium et velit distinctio. Iste itaque soluta et eum vel. Ipsum natus illo magni accusantium consequatur minima eligendi iste.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Iste ut dignissimos quo ut possimus. Odit sed non porro debitis ullam earum. A omnis expedita repellat ducimus. Et dolorem qui qui aperiam sit.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Quidem sed aliquam ipsam exercitationem. Aut facere necessitatibus dolorem est dolores assumenda unde perferendis.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Blanditiis voluptatem facilis nobis iusto. Sit est ipsa et sed nihil provident est. Laborum nihil ea officia rerum.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Aut voluptatem vel cumque et rerum qui omnis. Dolorem est atque perspiciatis et animi.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2025-04-12 04:08:50','2025-04-12 04:08:50'),(4,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quibusdam et omnis nisi rerum enim in odit. Harum iusto dolores omnis suscipit amet ratione. Cupiditate dolore quis optio odit ipsum.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Asperiores et at quod blanditiis iste. Earum voluptatem quis non nulla cumque odio. Aut dolor est inventore. Quos natus cumque sequi quos.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Harum nobis saepe quos officiis facilis cum. Ab fugiat aut iure atque quos accusantium optio ad. Eos mollitia temporibus illo et rerum suscipit.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Rem facere sed tenetur cum sit et atque iste. Perferendis qui rem quis. Excepturi dignissimos similique iure eum explicabo voluptates eum.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Sint laudantium et velit distinctio. Iste itaque soluta et eum vel. Ipsum natus illo magni accusantium consequatur minima eligendi iste.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Iste ut dignissimos quo ut possimus. Odit sed non porro debitis ullam earum. A omnis expedita repellat ducimus. Et dolorem qui qui aperiam sit.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Quidem sed aliquam ipsam exercitationem. Aut facere necessitatibus dolorem est dolores assumenda unde perferendis.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Blanditiis voluptatem facilis nobis iusto. Sit est ipsa et sed nihil provident est. Laborum nihil ea officia rerum.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Aut voluptatem vel cumque et rerum qui omnis. Dolorem est atque perspiciatis et animi.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2025-04-12 04:08:50','2025-04-12 04:08:50'),(5,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quibusdam et omnis nisi rerum enim in odit. Harum iusto dolores omnis suscipit amet ratione. Cupiditate dolore quis optio odit ipsum.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Asperiores et at quod blanditiis iste. Earum voluptatem quis non nulla cumque odio. Aut dolor est inventore. Quos natus cumque sequi quos.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Harum nobis saepe quos officiis facilis cum. Ab fugiat aut iure atque quos accusantium optio ad. Eos mollitia temporibus illo et rerum suscipit.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Rem facere sed tenetur cum sit et atque iste. Perferendis qui rem quis. Excepturi dignissimos similique iure eum explicabo voluptates eum.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Sint laudantium et velit distinctio. Iste itaque soluta et eum vel. Ipsum natus illo magni accusantium consequatur minima eligendi iste.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Iste ut dignissimos quo ut possimus. Odit sed non porro debitis ullam earum. A omnis expedita repellat ducimus. Et dolorem qui qui aperiam sit.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Quidem sed aliquam ipsam exercitationem. Aut facere necessitatibus dolorem est dolores assumenda unde perferendis.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Blanditiis voluptatem facilis nobis iusto. Sit est ipsa et sed nihil provident est. Laborum nihil ea officia rerum.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Aut voluptatem vel cumque et rerum qui omnis. Dolorem est atque perspiciatis et animi.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2025-04-12 04:08:50','2025-04-12 04:08:50'),(6,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quibusdam et omnis nisi rerum enim in odit. Harum iusto dolores omnis suscipit amet ratione. Cupiditate dolore quis optio odit ipsum.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Asperiores et at quod blanditiis iste. Earum voluptatem quis non nulla cumque odio. Aut dolor est inventore. Quos natus cumque sequi quos.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Harum nobis saepe quos officiis facilis cum. Ab fugiat aut iure atque quos accusantium optio ad. Eos mollitia temporibus illo et rerum suscipit.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Rem facere sed tenetur cum sit et atque iste. Perferendis qui rem quis. Excepturi dignissimos similique iure eum explicabo voluptates eum.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Sint laudantium et velit distinctio. Iste itaque soluta et eum vel. Ipsum natus illo magni accusantium consequatur minima eligendi iste.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Iste ut dignissimos quo ut possimus. Odit sed non porro debitis ullam earum. A omnis expedita repellat ducimus. Et dolorem qui qui aperiam sit.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Quidem sed aliquam ipsam exercitationem. Aut facere necessitatibus dolorem est dolores assumenda unde perferendis.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Blanditiis voluptatem facilis nobis iusto. Sit est ipsa et sed nihil provident est. Laborum nihil ea officia rerum.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Aut voluptatem vel cumque et rerum qui omnis. Dolorem est atque perspiciatis et animi.\"}]',6,'Botble\\Gallery\\Models\\Gallery','2025-04-12 04:08:50','2025-04-12 04:08:50');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_account_activity_logs`
--

DROP TABLE IF EXISTS `jb_account_activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_account_activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jb_account_activity_logs_account_id_index` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_account_activity_logs`
--

LOCK TABLES `jb_account_activity_logs` WRITE;
/*!40000 ALTER TABLE `jb_account_activity_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_account_activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_account_educations`
--

DROP TABLE IF EXISTS `jb_account_educations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_account_educations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `school` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` bigint unsigned NOT NULL,
  `specialized` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `started_at` date NOT NULL,
  `ended_at` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_account_educations`
--

LOCK TABLES `jb_account_educations` WRITE;
/*!40000 ALTER TABLE `jb_account_educations` DISABLE KEYS */;
INSERT INTO `jb_account_educations` VALUES (1,'Adams State College',2,'Art History','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:08:57','2025-04-12 04:08:57'),(2,'Adams State College',6,'Economics','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:08:57','2025-04-12 04:08:57'),(3,'The University of the State of Alabama',8,'Anthropology','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:08:58','2025-04-12 04:08:58'),(4,'American Institute of Health Technology',9,'Art History','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:08:58','2025-04-12 04:08:58'),(5,'American Institute of Health Technology',10,'Culture and Technology Studies','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:08:58','2025-04-12 04:08:58'),(6,'The University of the State of Alabama',11,'Economics','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:08:58','2025-04-12 04:08:58'),(7,'Gateway Technical College',12,'Culture and Technology Studies','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:08:59','2025-04-12 04:08:59'),(8,'Associated Mennonite Biblical Seminary',13,'Culture and Technology Studies','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:08:59','2025-04-12 04:08:59'),(9,'Associated Mennonite Biblical Seminary',14,'Culture and Technology Studies','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:08:59','2025-04-12 04:08:59'),(10,'Gateway Technical College',16,'Culture and Technology Studies','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:08:59','2025-04-12 04:08:59'),(11,'Adams State College',17,'Culture and Technology Studies','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:00','2025-04-12 04:09:00'),(12,'The University of the State of Alabama',18,'Culture and Technology Studies','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:00','2025-04-12 04:09:00'),(13,'Gateway Technical College',19,'Art History','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:00','2025-04-12 04:09:00'),(14,'Adams State College',20,'Economics','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:00','2025-04-12 04:09:00'),(15,'Associated Mennonite Biblical Seminary',22,'Economics','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:01','2025-04-12 04:09:01'),(16,'Gateway Technical College',25,'Anthropology','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:01','2025-04-12 04:09:01'),(17,'Gateway Technical College',30,'Classical Studies','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:02','2025-04-12 04:09:02'),(18,'Antioch University McGregor',31,'Classical Studies','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:02','2025-04-12 04:09:02'),(19,'Adams State College',34,'Economics','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:03','2025-04-12 04:09:03'),(20,'Associated Mennonite Biblical Seminary',36,'Classical Studies','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:03','2025-04-12 04:09:03'),(21,'Associated Mennonite Biblical Seminary',37,'Art History','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:04','2025-04-12 04:09:04'),(22,'Adams State College',38,'Economics','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:04','2025-04-12 04:09:04'),(23,'Gateway Technical College',39,'Art History','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:04','2025-04-12 04:09:04'),(24,'American Institute of Health Technology',40,'Economics','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:04','2025-04-12 04:09:04'),(25,'The University of the State of Alabama',43,'Economics','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:05','2025-04-12 04:09:05'),(26,'Antioch University McGregor',44,'Art History','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:05','2025-04-12 04:09:05'),(27,'American Institute of Health Technology',45,'Classical Studies','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:05','2025-04-12 04:09:05'),(28,'Antioch University McGregor',47,'Culture and Technology Studies','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:06','2025-04-12 04:09:06'),(29,'Antioch University McGregor',49,'Classical Studies','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:06','2025-04-12 04:09:06'),(30,'The University of the State of Alabama',50,'Classical Studies','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:06','2025-04-12 04:09:06'),(31,'Gateway Technical College',53,'Culture and Technology Studies','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:07','2025-04-12 04:09:07'),(32,'The University of the State of Alabama',54,'Classical Studies','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:07','2025-04-12 04:09:07'),(33,'American Institute of Health Technology',59,'Art History','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:08','2025-04-12 04:09:08'),(34,'Adams State College',60,'Anthropology','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:08','2025-04-12 04:09:08'),(35,'Associated Mennonite Biblical Seminary',62,'Anthropology','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:09','2025-04-12 04:09:09'),(36,'Associated Mennonite Biblical Seminary',65,'Economics','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:09','2025-04-12 04:09:09'),(37,'Adams State College',67,'Art History','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:10','2025-04-12 04:09:10'),(38,'Antioch University McGregor',68,'Anthropology','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:10','2025-04-12 04:09:10'),(39,'Antioch University McGregor',70,'Anthropology','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:10','2025-04-12 04:09:10'),(40,'Associated Mennonite Biblical Seminary',71,'Classical Studies','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:11','2025-04-12 04:09:11'),(41,'Associated Mennonite Biblical Seminary',72,'Economics','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:11','2025-04-12 04:09:11'),(42,'Associated Mennonite Biblical Seminary',74,'Economics','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:11','2025-04-12 04:09:11'),(43,'Adams State College',77,'Art History','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:12','2025-04-12 04:09:12'),(44,'Associated Mennonite Biblical Seminary',78,'Culture and Technology Studies','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:12','2025-04-12 04:09:12'),(45,'Antioch University McGregor',80,'Culture and Technology Studies','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:12','2025-04-12 04:09:12'),(46,'Antioch University McGregor',84,'Economics','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:13','2025-04-12 04:09:13'),(47,'Adams State College',85,'Anthropology','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:13','2025-04-12 04:09:13'),(48,'American Institute of Health Technology',86,'Art History','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:14','2025-04-12 04:09:14'),(49,'Antioch University McGregor',91,'Art History','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:15','2025-04-12 04:09:15'),(50,'Adams State College',92,'Classical Studies','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:15','2025-04-12 04:09:15'),(51,'Adams State College',94,'Art History','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:15','2025-04-12 04:09:15'),(52,'The University of the State of Alabama',97,'Classical Studies','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:16','2025-04-12 04:09:16'),(53,'Antioch University McGregor',98,'Culture and Technology Studies','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:16','2025-04-12 04:09:16'),(54,'Gateway Technical College',99,'Classical Studies','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:16','2025-04-12 04:09:16'),(55,'Gateway Technical College',100,'Culture and Technology Studies','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:17','2025-04-12 04:09:17');
/*!40000 ALTER TABLE `jb_account_educations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_account_experiences`
--

DROP TABLE IF EXISTS `jb_account_experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_account_experiences` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` bigint unsigned NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `started_at` date NOT NULL,
  `ended_at` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_account_experiences`
--

LOCK TABLES `jb_account_experiences` WRITE;
/*!40000 ALTER TABLE `jb_account_experiences` DISABLE KEYS */;
INSERT INTO `jb_account_experiences` VALUES (1,'Party Plex',2,'Web Designer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:08:57','2025-04-12 04:08:57'),(2,'Spa Paragon',6,'Project Manager','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:08:57','2025-04-12 04:08:57'),(3,'Darwin Travel',8,'Marketing Coordinator','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:08:58','2025-04-12 04:08:58'),(4,'Darwin Travel',9,'Project Manager','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:08:58','2025-04-12 04:08:58'),(5,'Darwin Travel',10,'Dog Trainer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:08:58','2025-04-12 04:08:58'),(6,'Darwin Travel',11,'Web Designer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:08:58','2025-04-12 04:08:58'),(7,'Darwin Travel',12,'Web Designer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:08:59','2025-04-12 04:08:59'),(8,'Darwin Travel',13,'Dog Trainer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:08:59','2025-04-12 04:08:59'),(9,'Exploration Kids',14,'Project Manager','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:08:59','2025-04-12 04:08:59'),(10,'Party Plex',16,'President of Sales','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:08:59','2025-04-12 04:08:59'),(11,'Party Plex',17,'Web Designer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:00','2025-04-12 04:09:00'),(12,'Exploration Kids',18,'Marketing Coordinator','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:00','2025-04-12 04:09:00'),(13,'Darwin Travel',19,'Web Designer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:00','2025-04-12 04:09:00'),(14,'GameDay Catering',20,'Web Designer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:00','2025-04-12 04:09:00'),(15,'Exploration Kids',22,'Web Designer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:01','2025-04-12 04:09:01'),(16,'Spa Paragon',25,'Marketing Coordinator','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:01','2025-04-12 04:09:01'),(17,'Party Plex',30,'Marketing Coordinator','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:02','2025-04-12 04:09:02'),(18,'GameDay Catering',31,'Dog Trainer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:02','2025-04-12 04:09:02'),(19,'Darwin Travel',34,'Dog Trainer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:03','2025-04-12 04:09:03'),(20,'Exploration Kids',36,'President of Sales','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:03','2025-04-12 04:09:03'),(21,'Party Plex',37,'President of Sales','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:04','2025-04-12 04:09:04'),(22,'Party Plex',38,'President of Sales','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:04','2025-04-12 04:09:04'),(23,'Party Plex',39,'Project Manager','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:04','2025-04-12 04:09:04'),(24,'Darwin Travel',40,'Web Designer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:04','2025-04-12 04:09:04'),(25,'GameDay Catering',43,'Web Designer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:05','2025-04-12 04:09:05'),(26,'Exploration Kids',44,'Dog Trainer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:05','2025-04-12 04:09:05'),(27,'Darwin Travel',45,'President of Sales','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:05','2025-04-12 04:09:05'),(28,'Darwin Travel',47,'Project Manager','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:06','2025-04-12 04:09:06'),(29,'Darwin Travel',49,'Dog Trainer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:06','2025-04-12 04:09:06'),(30,'GameDay Catering',50,'Dog Trainer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:06','2025-04-12 04:09:06'),(31,'Spa Paragon',53,'President of Sales','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:07','2025-04-12 04:09:07'),(32,'Exploration Kids',54,'Web Designer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:07','2025-04-12 04:09:07'),(33,'Spa Paragon',59,'President of Sales','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:08','2025-04-12 04:09:08'),(34,'Party Plex',60,'Web Designer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:08','2025-04-12 04:09:08'),(35,'Party Plex',62,'Web Designer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:09','2025-04-12 04:09:09'),(36,'Exploration Kids',65,'Marketing Coordinator','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:09','2025-04-12 04:09:09'),(37,'Party Plex',67,'Project Manager','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:10','2025-04-12 04:09:10'),(38,'Party Plex',68,'Project Manager','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:10','2025-04-12 04:09:10'),(39,'Exploration Kids',70,'Dog Trainer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:10','2025-04-12 04:09:10'),(40,'GameDay Catering',71,'Dog Trainer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:11','2025-04-12 04:09:11'),(41,'Exploration Kids',72,'Dog Trainer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:11','2025-04-12 04:09:11'),(42,'Spa Paragon',74,'President of Sales','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:11','2025-04-12 04:09:11'),(43,'Darwin Travel',77,'Web Designer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:12','2025-04-12 04:09:12'),(44,'Party Plex',78,'Dog Trainer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:12','2025-04-12 04:09:12'),(45,'Party Plex',80,'President of Sales','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:12','2025-04-12 04:09:12'),(46,'GameDay Catering',84,'President of Sales','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:13','2025-04-12 04:09:13'),(47,'Exploration Kids',85,'Project Manager','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:13','2025-04-12 04:09:13'),(48,'Spa Paragon',86,'Dog Trainer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:14','2025-04-12 04:09:14'),(49,'GameDay Catering',91,'Dog Trainer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:15','2025-04-12 04:09:15'),(50,'Exploration Kids',92,'Web Designer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:15','2025-04-12 04:09:15'),(51,'Party Plex',94,'Dog Trainer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:15','2025-04-12 04:09:15'),(52,'Party Plex',97,'Marketing Coordinator','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:16','2025-04-12 04:09:16'),(53,'GameDay Catering',98,'Web Designer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:16','2025-04-12 04:09:16'),(54,'Darwin Travel',99,'Dog Trainer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:16','2025-04-12 04:09:16'),(55,'Exploration Kids',100,'Dog Trainer','2025-04-12','2025-04-12','There are many variations of passages of available, but the majority alteration in some form.\n                As a highly skilled and successful product development and design specialist with more than 4 Years of\n                My experience','2025-04-12 04:09:17','2025-04-12 04:09:17');
/*!40000 ALTER TABLE `jb_account_experiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_account_favorite_skills`
--

DROP TABLE IF EXISTS `jb_account_favorite_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_account_favorite_skills` (
  `skill_id` bigint unsigned NOT NULL,
  `account_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`skill_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_account_favorite_skills`
--

LOCK TABLES `jb_account_favorite_skills` WRITE;
/*!40000 ALTER TABLE `jb_account_favorite_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_account_favorite_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_account_favorite_tags`
--

DROP TABLE IF EXISTS `jb_account_favorite_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_account_favorite_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `account_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`tag_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_account_favorite_tags`
--

LOCK TABLES `jb_account_favorite_tags` WRITE;
/*!40000 ALTER TABLE `jb_account_favorite_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_account_favorite_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_account_languages`
--

DROP TABLE IF EXISTS `jb_account_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_account_languages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint unsigned NOT NULL,
  `language_level_id` bigint unsigned NOT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_native` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_account_languages`
--

LOCK TABLES `jb_account_languages` WRITE;
/*!40000 ALTER TABLE `jb_account_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_account_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_account_packages`
--

DROP TABLE IF EXISTS `jb_account_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_account_packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint unsigned NOT NULL,
  `package_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_account_packages`
--

LOCK TABLES `jb_account_packages` WRITE;
/*!40000 ALTER TABLE `jb_account_packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_account_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_account_password_resets`
--

DROP TABLE IF EXISTS `jb_account_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_account_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `jb_account_password_resets_email_index` (`email`),
  KEY `jb_account_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_account_password_resets`
--

LOCK TABLES `jb_account_password_resets` WRITE;
/*!40000 ALTER TABLE `jb_account_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_account_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_accounts`
--

DROP TABLE IF EXISTS `jb_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'job-seeker',
  `credits` int unsigned DEFAULT NULL,
  `resume` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` mediumtext COLLATE utf8mb4_unicode_ci,
  `is_public_profile` tinyint unsigned NOT NULL DEFAULT '0',
  `hide_cv` tinyint(1) NOT NULL DEFAULT '0',
  `views` bigint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `available_for_hiring` tinyint(1) NOT NULL DEFAULT '1',
  `country_id` bigint unsigned DEFAULT '1',
  `state_id` bigint unsigned DEFAULT NULL,
  `city_id` bigint unsigned DEFAULT NULL,
  `cover_letter` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jb_accounts_email_unique` (`email`),
  UNIQUE KEY `jb_accounts_unique_id_unique` (`unique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_accounts`
--

LOCK TABLES `jb_accounts` WRITE;
/*!40000 ALTER TABLE `jb_accounts` DISABLE KEYS */;
INSERT INTO `jb_accounts` VALUES (1,NULL,'Samantha','Ferry','Software Developer',NULL,'employer@archielite.com','$2y$12$ml2TdZbHUg7XdqF0zFFQOO8FOt82MembMsu/RxX6tqYVBXf8lHvVu',184,'2011-03-27','+18659034652','2025-04-12 04:08:56',NULL,'employer',NULL,NULL,'5902 Dallas Junction Apt. 496\nLake Juniorton, DE 26947-4872','Alice ventured to remark. \'Tut, tut, child!\' said the Hatter: \'let\'s all move one place on.\' He moved on as he could go. Alice took up the little glass table. \'Now, I\'ll manage better this time,\'.',1,0,2090,0,NULL,'2025-04-12 04:08:56','2025-04-12 04:08:56',0,1,NULL,NULL,NULL),(2,NULL,'Otha','Gottlieb','Creative Designer',NULL,'job_seeker@archielite.com','$2y$12$MsRBBZGOiOaizOUGx9h2O.gX6hRQALLsTPZR0kHE0jR4aYzXAT2Q6',186,'2017-06-20','+16313176388','2025-04-12 04:08:57',NULL,'job-seeker',NULL,'resume/01.pdf','1553 Alden Stravenue\nKovacekfort, NC 65570-8066','VERY long claws and a sad tale!\' said the Cat, \'if you don\'t like it, yer honour, at all, at all!\' \'Do as I do,\' said the Cat, and vanished again. Alice waited patiently until it chose to speak.',1,0,2806,1,NULL,'2025-04-12 04:08:57','2025-04-12 04:08:57',1,1,NULL,NULL,NULL),(3,NULL,'Sarah','Harding','Creative Designer',NULL,'sarah_harding@archielite.com','$2y$12$9/DgkhgxA5x0Ogv0W0J1Ku8C0I4smneIwRoTktuJHhAnw6JEWbu8O',184,'1985-07-03','+18596099144','2025-04-12 04:08:57',NULL,'employer',NULL,NULL,'180 Elena Rest\nEast Elouisestad, FL 09152','Alice, and she dropped it hastily, just in time to see a little irritated at the stick, and made another rush at the window.\' \'THAT you won\'t\' thought Alice, \'as all the time when she got used to.',1,0,107,1,NULL,'2025-04-12 04:08:57','2025-04-12 04:08:57',0,1,NULL,NULL,NULL),(4,NULL,'Steven','Jobs','Creative Designer',NULL,'steven_jobs@archielite.com','$2y$12$dCd0Q/KEfPS9dydfD6BqHuaQwMAvuxkCl6E4kx8p8eol4BKk3ZrLm',185,'2000-12-01','+12123562343','2025-04-12 04:08:57',NULL,'employer',NULL,NULL,'193 Brandi Keys Suite 202\nGenevievestad, SD 73292','VERY good opportunity for repeating his remark, with variations. \'I shall sit here,\' the Footman remarked, \'till tomorrow--\' At this the whole place around her became alive with the words \'EAT ME\'.',1,0,3548,0,NULL,'2025-04-12 04:08:57','2025-04-12 04:08:57',1,1,NULL,NULL,NULL),(5,NULL,'William','Kent','Creative Designer',NULL,'william_kent@archielite.com','$2y$12$Bh8tVu9tcpV2oSGAaftrsO3XLUewSQCVpM7z2.KIV4tGEa6ZoY3ji',186,'1975-08-01','+19707184004','2025-04-12 04:08:57',NULL,'employer',NULL,NULL,'31740 Pascale Field\nTownehaven, GA 91840-5548','Alice, \'and if it makes rather a hard word, I will prosecute YOU.--Come, I\'ll take no denial; We must have been changed for any of them. \'I\'m sure I\'m not particular as to the general conclusion.',1,0,3632,0,NULL,'2025-04-12 04:08:57','2025-04-12 04:08:57',1,1,NULL,NULL,NULL),(6,NULL,'Krystina','Hand','The Queen turned.',NULL,'quigley.mustafa@gmail.com','$2y$12$w0kaG2d2W5pu9VETf4PBneLT5rCEC3WGsBwFHQYfZr1TB0YrZPArC',186,'2005-03-27','+15307701274','2025-04-12 04:08:57',NULL,'job-seeker',NULL,'resume/01.pdf','56560 Kilback Fort Suite 072\nPort Esthermouth, CT 06943-2866','On which Seven looked up eagerly, half hoping that the hedgehog had unrolled itself, and was gone in a tone of the trees upon her face. \'Very,\' said Alice: \'she\'s so extremely--\' Just then she.',1,0,2422,1,NULL,'2025-04-12 04:08:57','2025-04-12 04:08:57',0,1,NULL,NULL,NULL),(7,NULL,'Reuben','Hermann','Alice considered a.',NULL,'kgreen@barrows.com','$2y$12$I03SjJeMzPfnd5WpIay1t.bRWmMlC.BUtgkgV8Dyr8iC0kH/LnT2u',185,'1999-06-02','+18302568546','2025-04-12 04:08:58',NULL,'employer',NULL,NULL,'66206 Jasper Brook\nNorth Alanisbury, IL 83796-2610','After a time she had peeped into the air, and came flying down upon their faces. There was nothing so VERY tired of swimming about here, O Mouse!\' (Alice thought this must be a grin, and she could.',1,0,3439,1,NULL,'2025-04-12 04:08:58','2025-04-12 04:08:58',1,1,NULL,NULL,NULL),(8,NULL,'Wava','Green','I almost wish I\'d.',NULL,'beer.brandi@steuber.com','$2y$12$gYqhMcI6KpQ0UgugT46wSOfPAS5DX.hPmR7asDJTEE7WzNCI7DvYG',184,'2000-06-15','+14806142300','2025-04-12 04:08:58',NULL,'job-seeker',NULL,'resume/01.pdf','1576 Alessandro Run Suite 791\nRosaleeburgh, IL 27529-4382','Soup, so rich and green, Waiting in a ring, and begged the Mouse in the house down!\' said the King. Here one of the lefthand bit of stick, and tumbled head over heels in its sleep \'Twinkle, twinkle.',1,0,910,1,NULL,'2025-04-12 04:08:58','2025-04-12 04:08:58',0,1,NULL,NULL,NULL),(9,NULL,'Maxime','Denesik','Mouse, do you like.',NULL,'nicole62@yahoo.com','$2y$12$EtV06L4AWfXehqe8.7SKZ.lKTZmC/sDs27mdjRdykj2LgHPwzQLrC',185,'1992-12-13','+12298637386','2025-04-12 04:08:58',NULL,'job-seeker',NULL,'resume/01.pdf','30367 Pacocha Place Suite 039\nCorkeryside, AL 80785','Let this be a queer thing, to be ashamed of yourself for asking such a hurry to change the subject. \'Go on with the bread-knife.\' The March Hare interrupted, yawning. \'I\'m getting tired of this. I.',1,0,413,0,NULL,'2025-04-12 04:08:58','2025-04-12 04:08:58',1,1,NULL,NULL,NULL),(10,NULL,'Troy','Swaniawski','Alice to herself.',NULL,'johan94@yahoo.com','$2y$12$p0wYNOgX13uj/4OIXX6louDXXmQ1xlDkLWsiLGyhAXWq0hkWjxZ0y',185,'2019-07-22','+16602478759','2025-04-12 04:08:58',NULL,'job-seeker',NULL,'resume/01.pdf','81674 Bernadette Squares Apt. 875\nWest Corbin, OR 60675','And certainly there was mouth enough for it was in the flurry of the bottle was NOT marked \'poison,\' it is I hate cats and dogs.\' It was as much as she picked her way through the glass, and she.',1,0,3849,0,NULL,'2025-04-12 04:08:58','2025-04-12 04:08:58',0,1,NULL,NULL,NULL),(11,NULL,'Tomasa','Kutch','I must have been a.',NULL,'rmoen@ankunding.com','$2y$12$I2oiYZC/RinKimKUAg0xDurY.pimIbZ9I8CSgwhX5.3qtUzU.I.oO',185,'1983-08-06','+18289285784','2025-04-12 04:08:58',NULL,'job-seeker',NULL,'resume/01.pdf','7037 D\'Amore Via\nWandafurt, TN 92179-7757','Gryphon, and the constant heavy sobbing of the treat. When the pie was all dark overhead; before her was another long passage, and the poor little thing sobbed again (or grunted, it was a dead.',1,0,1482,0,NULL,'2025-04-12 04:08:58','2025-04-12 04:08:58',0,1,NULL,NULL,NULL),(12,NULL,'Arthur','McDermott','I have done that?\'.',NULL,'misty.paucek@gmail.com','$2y$12$FiStMzYLdqmhoymuBOBAXODVp4BQiXvxaPTZcTiEkBpOyMR6kXSme',186,'1981-10-12','+15209184575','2025-04-12 04:08:59',NULL,'job-seeker',NULL,'resume/01.pdf','208 Balistreri Mission\nLaurenfurt, VA 51720-3463','Dormouse say?\' one of the party sat silent and looked very uncomfortable. The first witness was the King; \'and don\'t look at me like that!\' By this time the Mouse heard this, it turned a.',1,0,731,1,NULL,'2025-04-12 04:08:59','2025-04-12 04:08:59',1,1,NULL,NULL,NULL),(13,NULL,'Jarrell','Ferry','She went in search.',NULL,'haag.rico@gmail.com','$2y$12$xnezJZW6kPewCY0WL9FOG.aqLLt9.bLNcSJo/UZxNt96s3okJiOF2',185,'2003-05-12','+16896838045','2025-04-12 04:08:59',NULL,'job-seeker',NULL,'resume/01.pdf','39131 Keeley Summit\nPort Joshuahshire, WV 74127-2842','But she went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty,\' said Two, in a minute, while Alice thought to herself, (not in a trembling voice to a mouse: she had asked it.',1,0,2530,1,NULL,'2025-04-12 04:08:59','2025-04-12 04:08:59',1,1,NULL,NULL,NULL),(14,NULL,'Ansel','Baumbach','THAT like?\' said.',NULL,'viviane.treutel@klocko.org','$2y$12$Iql25TW/2riHIRXE2vBWn.yfTVZK4bBWP9DN81wEJZKvNRQB4z0Wq',184,'1972-04-21','+12083817277','2025-04-12 04:08:59',NULL,'job-seeker',NULL,'resume/01.pdf','371 Oswald Creek Suite 013\nOrlandchester, AL 08485','Duchess, as she went slowly after it: \'I never heard of uglifying!\' it exclaimed. \'You know what to beautify is, I suppose?\' \'Yes,\' said Alice, surprised at this, she came suddenly upon an open.',1,0,1430,0,NULL,'2025-04-12 04:08:59','2025-04-12 04:08:59',0,1,NULL,NULL,NULL),(15,NULL,'Baby','Greenholt','Alice did not get.',NULL,'gschuster@hotmail.com','$2y$12$vU..syBb629AeXNgETg8KeWPszTEfaUnhoi3D6U0l95QKwzHXOOvq',186,'1972-07-21','+12207930854','2025-04-12 04:08:59',NULL,'employer',NULL,NULL,'97795 Hirthe Ford\nMarjolaineport, IA 34664','William the Conqueror.\' (For, with all speed back to the whiting,\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the voice. \'Fetch me my gloves.',1,0,2660,1,NULL,'2025-04-12 04:08:59','2025-04-12 04:08:59',0,1,NULL,NULL,NULL),(16,NULL,'Aditya','Kling','First, because I\'m.',NULL,'davis.darren@jacobi.com','$2y$12$tVJbRuKFXppCzdJmmuW0Meo8o1u/Q.5r8RXsdniCYQ1VG/DrknPkW',186,'2007-02-13','+19518033255','2025-04-12 04:08:59',NULL,'job-seeker',NULL,'resume/01.pdf','28854 Preston Course Suite 576\nNew Chelseabury, NE 43796-1311','Duchess. An invitation for the rest waited in silence. Alice was just in time to be beheaded!\' \'What for?\' said Alice. \'Well, I can\'t be Mabel, for I know who I am! But I\'d better take him his fan.',1,0,556,1,NULL,'2025-04-12 04:08:59','2025-04-12 04:08:59',0,1,NULL,NULL,NULL),(17,NULL,'Nash','Johnson','English); \'now I\'m.',NULL,'wgraham@kuhn.com','$2y$12$6z.V5Zzw81xDAAzrLHztZ.l8Z9kVITgeAGVK4bkZCNYLyGY1W3Wyq',185,'2009-08-07','+12254204559','2025-04-12 04:09:00',NULL,'job-seeker',NULL,'resume/01.pdf','78695 Yundt Ports\nSigmundton, OR 83438-9091','Turtle sighed deeply, and drew the back of one flapper across his eyes. \'I wasn\'t asleep,\' he said in a very decided tone: \'tell her something about the right house, because the Duchess sang the.',1,0,1152,0,NULL,'2025-04-12 04:09:00','2025-04-12 04:09:00',0,1,NULL,NULL,NULL),(18,NULL,'Cloyd','Conn','Alice to herself.',NULL,'alda.corwin@kulas.com','$2y$12$UzZK7MjZzzyCMRRhiZ20POvYvhOt4aHPqnTFekDA2EFPGbHJLL/Oq',184,'1995-07-28','+13313262131','2025-04-12 04:09:00',NULL,'job-seeker',NULL,'resume/01.pdf','699 Tyreek Mount\nMalcolmville, LA 87759-4059','March Hare. \'I didn\'t know that Cheshire cats always grinned; in fact, a sort of way, \'Do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, so many tea-things are put out here?\' she.',1,0,121,0,NULL,'2025-04-12 04:09:00','2025-04-12 04:09:00',1,1,NULL,NULL,NULL),(19,NULL,'Adam','Harris','Gryphon, and all.',NULL,'khalid54@murphy.info','$2y$12$fG315XbJhjgxJCUh9yQsZOS4z.XJ9tcLKloeTAhI0I1ulurfP8JH6',184,'2004-02-03','+18728217283','2025-04-12 04:09:00',NULL,'job-seeker',NULL,'resume/01.pdf','91164 Trey Canyon Suite 343\nNew Kellen, MD 61872','Father William,\' the young man said, \'And your hair has become very white; And yet I wish I hadn\'t quite finished my tea when I was a table in the pool a little girl,\' said Alice, very much.',1,0,1928,0,NULL,'2025-04-12 04:09:00','2025-04-12 04:09:00',1,1,NULL,NULL,NULL),(20,NULL,'Rey','Block','Alice could only.',NULL,'bjohnston@weimann.com','$2y$12$atYtRX8jdKyFiLAlay773e8/F1tX3eiQHMmwsFShHpuJl3faU7F7S',185,'2015-06-28','+16405629101','2025-04-12 04:09:00',NULL,'job-seeker',NULL,'resume/01.pdf','90180 Aileen Walk\nLake Aliviatown, NC 63452-2984','Queen?\' said the Dormouse. \'Write that down,\' the King said gravely, \'and go on crying in this way! Stop this moment, I tell you!\' said Alice. \'You did,\' said the Hatter with a cart-horse, and.',1,0,4868,0,NULL,'2025-04-12 04:09:00','2025-04-12 04:09:00',0,1,NULL,NULL,NULL),(21,NULL,'Laury','Schiller','I think.\' And she.',NULL,'demetris.cormier@hotmail.com','$2y$12$enOBBE5..Ym5TrM0WisWWuPXEjor0EYetKmW8nQwI3s/xc8scCs4C',184,'2013-11-13','+18185157094','2025-04-12 04:09:00',NULL,'employer',NULL,NULL,'62928 Quigley Vista Suite 999\nPort Elliefort, AZ 15611','I beg your acceptance of this ointment--one shilling the box-- Allow me to him: She gave me a pair of white kid gloves and a great crowd assembled about them--all sorts of things--I can\'t remember.',1,0,3502,1,NULL,'2025-04-12 04:09:00','2025-04-12 04:09:00',0,1,NULL,NULL,NULL),(22,NULL,'Jimmie','Ziemann','Dodo, a Lory and.',NULL,'cherzog@hotmail.com','$2y$12$a4QEbAsk.DIi0d4Jce2BvOA1XAXSnjfMDpowpV79BmDzME4VU/3JW',186,'1986-10-06','+15809572860','2025-04-12 04:09:01',NULL,'job-seeker',NULL,'resume/01.pdf','527 Markus Village Suite 252\nDollybury, TX 21303','Alice, a little pattering of footsteps in the flurry of the fact. \'I keep them to sell,\' the Hatter asked triumphantly. Alice did not come the same thing as \"I eat what I used to call him Tortoise.',1,0,3865,0,NULL,'2025-04-12 04:09:01','2025-04-12 04:09:01',0,1,NULL,NULL,NULL),(23,NULL,'Elvera','Brown','Alice indignantly.',NULL,'mortimer90@hotmail.com','$2y$12$X.kpX6EsOa2n2uD1/gzNE.tfHCMm9UXSQqNk5naYubg6llTWwcG2m',185,'1987-12-13','+17244633610','2025-04-12 04:09:01',NULL,'employer',NULL,NULL,'165 Shields Brook Suite 224\nNew Edythebury, AL 32118','For the Mouse was swimming away from him, and very soon came to ME, and told me he was speaking, so that altogether, for the immediate adoption of more energetic remedies--\' \'Speak English!\' said.',1,0,3942,0,NULL,'2025-04-12 04:09:01','2025-04-12 04:09:01',1,1,NULL,NULL,NULL),(24,NULL,'Granville','Cole','I\'ve finished.\' So.',NULL,'okuneva.ardith@gmail.com','$2y$12$C2RROXOGjT8iBaAPv80Sv.KAHtHW/7p53CDpIP9ZGFVWPGQqynBhC',185,'1997-10-22','+17372844304','2025-04-12 04:09:01',NULL,'employer',NULL,NULL,'26759 Adrienne Mountains\nEast Kellieland, ID 92831-9947','I\'ll stay down here! It\'ll be no use denying it. I suppose Dinah\'ll be sending me on messages next!\' And she kept tossing the baby violently up and picking the daisies, when suddenly a White Rabbit.',1,0,987,0,NULL,'2025-04-12 04:09:01','2025-04-12 04:09:01',1,1,NULL,NULL,NULL),(25,NULL,'Evangeline','Monahan','Knave, \'I didn\'t.',NULL,'erick14@volkman.com','$2y$12$gV8xNtkaN/Bng7HfYNu4TOt1GhhDbVAG/C3R7UD0oeN34QiXPbe5K',184,'1970-08-18','+12762109600','2025-04-12 04:09:01',NULL,'job-seeker',NULL,'resume/01.pdf','481 Otis Summit\nKingside, AZ 51788','Duchess; \'I never said I could not taste theirs, and the pool rippling to the porpoise, \"Keep back, please: we don\'t want YOU with us!\"\' \'They were obliged to say when I find a pleasure in all my.',1,0,2341,1,NULL,'2025-04-12 04:09:01','2025-04-12 04:09:01',1,1,NULL,NULL,NULL),(26,NULL,'Jennings','Lang','PRECIOUS nose\'; as.',NULL,'roxanne.olson@hauck.biz','$2y$12$l9O4aVy2lUrfjzVZo5Bodu6saBPCQu9KHbTmed.3rJaRl7VwsexcW',184,'2012-09-18','+13413752051','2025-04-12 04:09:01',NULL,'employer',NULL,NULL,'5559 Nicolas Terrace Apt. 324\nLake Celia, KY 10699-1578','Alice, who was reading the list of singers. \'You may go,\' said the Gryphon, \'you first form into a cucumber-frame, or something of the sense, and the sound of many footsteps, and Alice heard the.',1,0,3990,0,NULL,'2025-04-12 04:09:01','2025-04-12 04:09:01',1,1,NULL,NULL,NULL),(27,NULL,'Hayley','Zulauf','Turtle replied in.',NULL,'dubuque.rosalind@gibson.com','$2y$12$uhW4SCUc/LWpF1VsqRBfdO5N2YZtKwmksHwOOp5u2Z3xnbg99lMd6',184,'2018-10-01','+16178236040','2025-04-12 04:09:02',NULL,'employer',NULL,NULL,'67653 Weissnat Manor\nPacochabury, NE 64366','FIT you,\' said the Caterpillar. \'Is that the Mouse was bristling all over, and she went on all the jurymen on to the Gryphon. \'Of course,\' the Mock Turtle went on again:-- \'I didn\'t know it was out.',1,0,3419,1,NULL,'2025-04-12 04:09:02','2025-04-12 04:09:02',1,1,NULL,NULL,NULL),(28,NULL,'Reinhold','Walsh','The March Hare and.',NULL,'damian46@cremin.com','$2y$12$kbpDn3cuB4NmgGubIaV4mOzw5mHwytv4RFvdAXt/ELxlu8xOiM/0m',186,'1995-01-25','+18022700858','2025-04-12 04:09:02',NULL,'employer',NULL,NULL,'9939 Bernier Club Suite 174\nLake Houstonchester, KS 96072-5298','Gryphon. \'Of course,\' the Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little shriek and a scroll of parchment in the world am I? Ah, THAT\'S the great wonder is, that I\'m.',1,0,492,1,NULL,'2025-04-12 04:09:02','2025-04-12 04:09:02',1,1,NULL,NULL,NULL),(29,NULL,'Darrion','Jaskolski','They all returned.',NULL,'iosinski@hotmail.com','$2y$12$x.G8byiT6VxaIiShQNaHJeVCLqApWIJqz/nJSjuA1bO5ogNla.XIG',184,'2013-01-25','+18479070089','2025-04-12 04:09:02',NULL,'employer',NULL,NULL,'8758 Hintz Lake Apt. 145\nNew Julianaborough, AR 39289-7234','Her listeners were perfectly quiet till she shook the house, quite forgetting that she hardly knew what she was coming back to her: its face to see anything; then she remembered having seen such a.',1,0,2696,0,NULL,'2025-04-12 04:09:02','2025-04-12 04:09:02',1,1,NULL,NULL,NULL),(30,NULL,'Ericka','Tromp','ARE a simpleton.\'.',NULL,'theodora.abshire@hotmail.com','$2y$12$fzXpRD314bzpeqDfq795.e/ESyzl1b3F9mgz93D7WyZcM0sKwHNn2',186,'2012-02-05','+15398534382','2025-04-12 04:09:02',NULL,'job-seeker',NULL,'resume/01.pdf','1183 Jacobs Route Apt. 820\nZulaufport, HI 54906','Caterpillar. \'Well, perhaps your feelings may be different,\' said Alice; not that she hardly knew what she did, she picked her way into that lovely garden. First, however, she went in without.',1,0,2099,0,NULL,'2025-04-12 04:09:02','2025-04-12 04:09:02',0,1,NULL,NULL,NULL),(31,NULL,'Shany','Emard','I will prosecute.',NULL,'abigayle.crooks@tromp.com','$2y$12$T2eodY.CX4WW.RNv5C/XsOiza.E5EGZ8kup7FZ3N7TdfS/Ji9IjOe',184,'2000-09-30','+12607393278','2025-04-12 04:09:02',NULL,'job-seeker',NULL,'resume/01.pdf','449 Cyril Trace\nShanahanmouth, WV 90697-2030','Alice as she could, and soon found out that the hedgehog to, and, as the soldiers had to fall a long way. So she swallowed one of the lefthand bit. * * * * * * * * * * * * * * * * * \'Come, my head\'s.',1,0,4180,1,NULL,'2025-04-12 04:09:02','2025-04-12 04:09:02',1,1,NULL,NULL,NULL),(32,NULL,'Claude','Conroy','Last came a little.',NULL,'taylor06@yahoo.com','$2y$12$xh1XEmw724dUYbwZ.uKqtebeueq7nQPwLSfZGVMehnVLDCPhlGfn6',184,'2008-10-23','+19348329731','2025-04-12 04:09:03',NULL,'employer',NULL,NULL,'5213 Victor Stream Suite 432\nNew Abelardo, VT 99936-8693','Trims his belt and his friends shared their never-ending meal, and the Dormouse fell asleep instantly, and Alice was too small, but at any rate a book of rules for shutting people up like a.',1,0,2909,1,NULL,'2025-04-12 04:09:03','2025-04-12 04:09:03',0,1,NULL,NULL,NULL),(33,NULL,'Robin','Wolf','I hadn\'t cried so.',NULL,'elisa29@cremin.com','$2y$12$XKO0JhoMkB9j3CNtEPFaZuK0ELy.gevUyCzDvK8m2GF/XOYv3b33W',185,'2006-12-11','+13418558561','2025-04-12 04:09:03',NULL,'employer',NULL,NULL,'71700 Hazle Burg Suite 040\nPort Hollisbury, AR 58352','I shall be punished for it now, I suppose, by being drowned in my life!\' Just as she tucked her arm affectionately into Alice\'s, and they all crowded together at one and then dipped suddenly down.',1,0,2407,1,NULL,'2025-04-12 04:09:03','2025-04-12 04:09:03',0,1,NULL,NULL,NULL),(34,NULL,'Al','Skiles','The Cat seemed to.',NULL,'esta.krajcik@hotmail.com','$2y$12$l2tlLj6pq5laRLpe08tOCuOf7qDE7hZV6vrqeD9AQgcjfaXynWZjK',185,'2024-05-19','+12693534468','2025-04-12 04:09:03',NULL,'job-seeker',NULL,'resume/01.pdf','942 Shyann Station Suite 642\nPort Dannieburgh, IL 20507-8236','Alice crouched down among the leaves, which she found she had caught the baby joined):-- \'Wow! wow! wow!\' \'Here! you may stand down,\' continued the Pigeon, raising its voice to a lobster--\' (Alice.',1,0,2480,1,NULL,'2025-04-12 04:09:03','2025-04-12 04:09:03',1,1,NULL,NULL,NULL),(35,NULL,'Lee','Spinka','Her first idea was.',NULL,'hhagenes@gmail.com','$2y$12$T1EavYfnuuUKtpVrE8ddqu4tTIq7EmCdak.6aelpkBmZe9g9XH4IK',184,'2005-06-12','+17576322115','2025-04-12 04:09:03',NULL,'employer',NULL,NULL,'678 Nola Shores Apt. 585\nNew Juniorview, KS 93268','Alice sadly. \'Hand it over here,\' said the Caterpillar contemptuously. \'Who are YOU?\' said the Lory hastily. \'I thought you did,\' said the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve been.',1,0,3824,0,NULL,'2025-04-12 04:09:03','2025-04-12 04:09:03',0,1,NULL,NULL,NULL),(36,NULL,'Marcelino','Moore','The March Hare and.',NULL,'kaitlin46@cummerata.biz','$2y$12$VfC/eDMq1G.i8NbMTdrJ1uGQL0iUgJ.piku6lCtBrGQHn5rPAdMm6',184,'1970-03-28','+14056658044','2025-04-12 04:09:03',NULL,'job-seeker',NULL,'resume/01.pdf','860 Clarabelle Summit\nNew Grahamchester, TX 73972-8082','SOMEBODY ought to have him with them,\' the Mock Turtle: \'nine the next, and so on; then, when you\'ve cleared all the jelly-fish out of the other side will make you dry enough!\' They all sat down a.',1,0,3271,1,NULL,'2025-04-12 04:09:03','2025-04-12 04:09:03',0,1,NULL,NULL,NULL),(37,NULL,'D\'angelo','Trantow','Mouse, turning to.',NULL,'ferne.schiller@yahoo.com','$2y$12$T42JqagNkv9TT53lFcjwqORkQHZ4IdySPzhSnhxtr99/urWBpQBuK',184,'1984-03-20','+13308752451','2025-04-12 04:09:04',NULL,'job-seeker',NULL,'resume/01.pdf','34959 Hillard Village Suite 654\nWest Lillaton, NH 60795-0071','Caterpillar. \'I\'m afraid I can\'t get out again. The Mock Turtle replied, counting off the cake. * * * * * * * * * * * * * * * * * * * * * CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\'.',1,0,1770,0,NULL,'2025-04-12 04:09:04','2025-04-12 04:09:04',0,1,NULL,NULL,NULL),(38,NULL,'King','Dibbert','I am now? That\'ll.',NULL,'patricia.windler@yahoo.com','$2y$12$5CSn3AGsDaClniaJRNKeI.8.nDXi1t69hEOgxRXxwYTZmfmhWuzk.',184,'2019-07-03','+12057961986','2025-04-12 04:09:04',NULL,'job-seeker',NULL,'resume/01.pdf','42416 Rosina Forks Suite 427\nNorth Solontown, MO 33207-7603','Indeed, she had never left off quarrelling with the day of the window, I only wish it was,\' said the Mock Turtle, \'but if you\'ve seen them at dinn--\' she checked herself hastily. \'I don\'t much care.',1,0,3328,0,NULL,'2025-04-12 04:09:04','2025-04-12 04:09:04',0,1,NULL,NULL,NULL),(39,NULL,'Ila','Reinger','Just as she was a.',NULL,'kiehn.breanne@casper.com','$2y$12$DbRn96ZA6QC7e/wi7xuIE.OQYQYGO0iDv6yJpuIwBLrg2BTpCH8Wu',184,'1981-05-21','+18588813884','2025-04-12 04:09:04',NULL,'job-seeker',NULL,'resume/01.pdf','7869 Morar Highway Suite 860\nPort Demarcuschester, MA 36784-1433','The door led right into a small passage, not much surprised at this, but at the door-- Pray, what is the same age as herself, to see its meaning. \'And just as she remembered having seen in her life.',1,0,985,0,NULL,'2025-04-12 04:09:04','2025-04-12 04:09:04',0,1,NULL,NULL,NULL),(40,NULL,'Veda','Wehner','Heads below!\' (a.',NULL,'ubaldo46@gleason.biz','$2y$12$fmMGPQXZuYWTwrXl/p9zLeN/Cfb90NTJoe7Llcan6BqpZWoTK4fTC',184,'2003-12-02','+16604831728','2025-04-12 04:09:04',NULL,'job-seeker',NULL,'resume/01.pdf','48196 Larkin Rest\nSouth Lynn, CT 33843','I never knew so much surprised, that for the pool was getting quite crowded with the day of the court. All this time with great curiosity. \'Soles and eels, of course,\' he said to herself, for she.',1,0,4093,0,NULL,'2025-04-12 04:09:04','2025-04-12 04:09:04',0,1,NULL,NULL,NULL),(41,NULL,'Estelle','Becker','Alice; \'but when.',NULL,'mohr.veda@hotmail.com','$2y$12$5dbKNH4ysq0WbDUfLB9yLe0YNwwKC3R9k3IagtrHtI8dc7mzCb5la',185,'1986-12-16','+18457056904','2025-04-12 04:09:04',NULL,'employer',NULL,NULL,'5457 Schiller Hollow\nSouth Ivy, LA 71559','Lobster Quadrille The Mock Turtle sighed deeply, and began, in rather a handsome pig, I think.\' And she went on, looking anxiously round to see some meaning in them, after all. I needn\'t be afraid.',1,0,3978,1,NULL,'2025-04-12 04:09:04','2025-04-12 04:09:04',0,1,NULL,NULL,NULL),(42,NULL,'Dina','Funk','Hatter. \'Stolen!\'.',NULL,'kasey.rutherford@yahoo.com','$2y$12$Y7qZ/b/ofyuvpxWeIs4mSuUGmQpgknD3YLQQuPjGtMiaPwoUQyQa6',186,'2014-12-26','+14027817261','2025-04-12 04:09:05',NULL,'employer',NULL,NULL,'7642 Sigmund Avenue Apt. 304\nPort Davonton, KY 03580','Alice could see it written down: but I THINK I can creep under the table: she opened the door that led into the court, she said to itself in a voice she had someone to listen to her, though, as they.',1,0,119,1,NULL,'2025-04-12 04:09:05','2025-04-12 04:09:05',1,1,NULL,NULL,NULL),(43,NULL,'Raheem','Stoltenberg','King, rubbing his.',NULL,'arely.murray@hotmail.com','$2y$12$OI2t8g93rdExkUOxz2BNHOC0Rk98cylTUwfLsTpl0GbEvfx2VvKxy',185,'1979-07-12','+14193438183','2025-04-12 04:09:05',NULL,'job-seeker',NULL,'resume/01.pdf','377 Joana Gateway Suite 004\nAltenwerthburgh, NH 73506','WHAT?\' thought Alice to find her in the beautiful garden, among the bright flower-beds and the Panther were sharing a pie--\' [later editions continued as follows When the procession moved on, three.',1,0,1313,1,NULL,'2025-04-12 04:09:05','2025-04-12 04:09:05',0,1,NULL,NULL,NULL),(44,NULL,'Gayle','Kuhlman','Alice took up the.',NULL,'brant81@yahoo.com','$2y$12$G6Ai.UEJYKtYSxH19v4e5eDBOs8SRxubnthuhmW7KC3Eaa.vFZY.6',186,'2015-03-25','+18459328848','2025-04-12 04:09:05',NULL,'job-seeker',NULL,'resume/01.pdf','2656 Frieda Crescent\nBartonbury, DE 85624','I know is, something comes at me like a Jack-in-the-box, and up I goes like a mouse, you know. Come on!\' So they got their tails in their mouths--and they\'re all over their slates; \'but it doesn\'t.',1,0,936,0,NULL,'2025-04-12 04:09:05','2025-04-12 04:09:05',1,1,NULL,NULL,NULL),(45,NULL,'Dagmar','Harvey','Alice did not get.',NULL,'lillie68@bayer.com','$2y$12$VZU8oha.gXa00uiNa3sUA.UoW8WFJa9XsJd4M0fkcuYk.J.NC5oU6',185,'2015-05-30','+16075242899','2025-04-12 04:09:05',NULL,'job-seeker',NULL,'resume/01.pdf','109 Libby Land\nNew Jeanborough, AR 31464-9715','Alice alone with the day and night! You see the Queen. An invitation for the end of the way--\' \'THAT generally takes some time,\' interrupted the Gryphon. \'It\'s all his fancy, that: he hasn\'t got no.',1,0,176,1,NULL,'2025-04-12 04:09:05','2025-04-12 04:09:05',0,1,NULL,NULL,NULL),(46,NULL,'Carissa','Towne','I\'ll tell him--it.',NULL,'amedhurst@hahn.biz','$2y$12$fNXgTAvYz7BxuVfEjH2lfuvTO5P4RHpFSgvv2X9JeMN57YRSFTPcW',186,'2009-10-27','+15012634126','2025-04-12 04:09:06',NULL,'employer',NULL,NULL,'9797 Amos Locks Apt. 740\nLeschland, OH 60968','Alice could not think of what sort it was) scratching and scrambling about in the flurry of the thing at all. \'But perhaps it was too dark to see the Mock Turtle persisted. \'How COULD he turn them.',1,0,477,1,NULL,'2025-04-12 04:09:06','2025-04-12 04:09:06',0,1,NULL,NULL,NULL),(47,NULL,'Florence','Gerhold','Alice alone with.',NULL,'plabadie@yahoo.com','$2y$12$HTonteRyVmXUqav7nztqGOhPSuGI2Rswd7HmUj6Gwo33ebNbPxh0m',186,'1990-05-15','+17122635955','2025-04-12 04:09:06',NULL,'job-seeker',NULL,'resume/01.pdf','503 Fisher Burg Apt. 327\nLucienneborough, OH 25651-8384','The first question of course was, how to speak good English); \'now I\'m opening out like the three gardeners at it, busily painting them red. Alice thought she might as well go in ringlets at all.',1,0,1584,0,NULL,'2025-04-12 04:09:06','2025-04-12 04:09:06',1,1,NULL,NULL,NULL),(48,NULL,'Godfrey','Conn','Alice, \'to speak.',NULL,'oreilly.marcelino@leffler.net','$2y$12$xp4G1syuY9Xb9wL28bB5aOyimdSpJrW9083s/lFOFLx0URXTAdgq.',186,'1997-07-15','+12726072917','2025-04-12 04:09:06',NULL,'employer',NULL,NULL,'1164 Kuvalis Dale Apt. 603\nThielfort, FL 51528','Yet you finished the goose, with the Duchess, \'and that\'s why. Pig!\' She said this last remark. \'Of course twinkling begins with an anxious look at me like that!\' But she waited for some time after.',1,0,744,1,NULL,'2025-04-12 04:09:06','2025-04-12 04:09:06',0,1,NULL,NULL,NULL),(49,NULL,'Janiya','Wiegand','I know I do!\' said.',NULL,'megane.parker@ondricka.com','$2y$12$UxJx5QWhdcK5IMDFVaKlbO4RNGA/mtAMIZtBqwsKBy2haiPqsFlhe',185,'1992-05-14','+13852342704','2025-04-12 04:09:06',NULL,'job-seeker',NULL,'resume/01.pdf','7454 Hudson Branch Suite 569\nVincemouth, DC 43824','TWO little shrieks, and more faintly came, carried on the ground as she could, for the hot day made her next remark. \'Then the Dormouse said--\' the Hatter went on \'And how many miles I\'ve fallen by.',1,0,4541,1,NULL,'2025-04-12 04:09:06','2025-04-12 04:09:06',1,1,NULL,NULL,NULL),(50,NULL,'Rubye','White','Queen said--\' \'Get.',NULL,'pete.dicki@yahoo.com','$2y$12$J/D552MOu6MjI.SXXHBe1uCaEsJ0otosba62WsQ/jQ2SI3V4WiuvK',184,'2011-09-14','+18318166911','2025-04-12 04:09:06',NULL,'job-seeker',NULL,'resume/01.pdf','75732 Hettinger Inlet\nPort Alva, ID 42291-4246','Christmas.\' And she squeezed herself up closer to Alice\'s great surprise, the Duchess\'s voice died away, even in the middle of the right-hand bit to try the thing Mock Turtle said: \'I\'m too stiff.',1,0,174,0,NULL,'2025-04-12 04:09:06','2025-04-12 04:09:06',1,1,NULL,NULL,NULL),(51,NULL,'Fae','Nader','I\'LL soon make you.',NULL,'jacobs.marcelina@streich.com','$2y$12$2lC4a0NLLJrmWzxDR5ZScONyovqwFeK8goAeCJs1d/OohY.OZVKlO',185,'2010-11-07','+19525461411','2025-04-12 04:09:07',NULL,'employer',NULL,NULL,'2358 Watsica Street Apt. 183\nPort Alliehaven, VT 12172-0565','Alice, who had meanwhile been examining the roses. \'Off with her head!\' about once in the wood, \'is to grow up any more if you\'d like it put more simply--\"Never imagine yourself not to be an old.',1,0,831,0,NULL,'2025-04-12 04:09:07','2025-04-12 04:09:07',0,1,NULL,NULL,NULL),(52,NULL,'Jamie','Nitzsche','Mock Turtle in the.',NULL,'ebosco@larkin.com','$2y$12$NS3WqtBNDYOedtkN5mjFdepvqpKJ/JE69ck7K22ZIzEttoFFsTp0y',186,'2008-05-20','+15703708488','2025-04-12 04:09:07',NULL,'employer',NULL,NULL,'4013 Carmel Grove\nSouth Edgar, CO 35710','Mock Turtle with a shiver. \'I beg pardon, your Majesty,\' said the Cat, and vanished again. Alice waited a little, half expecting to see if she could guess, she was ever to get in?\' she repeated.',1,0,4641,1,NULL,'2025-04-12 04:09:07','2025-04-12 04:09:07',1,1,NULL,NULL,NULL),(53,NULL,'Philip','Sanford','Alice soon began.',NULL,'kenyatta.lang@hotmail.com','$2y$12$j01/82T.kdGCsW.82oeT0OQ9vcLxoyQacwKvwxNW3H5xNu6blzZXW',184,'2024-08-26','+19199704096','2025-04-12 04:09:07',NULL,'job-seeker',NULL,'resume/01.pdf','570 Hammes Avenue Suite 937\nNew Grant, MI 06130-5184','ONE respectable person!\' Soon her eye fell on a little before she came upon a low curtain she had succeeded in curving it down \'important,\' and some \'unimportant.\' Alice could hardly hear the name.',1,0,3290,0,NULL,'2025-04-12 04:09:07','2025-04-12 04:09:07',0,1,NULL,NULL,NULL),(54,NULL,'Susana','Schultz','The hedgehog was.',NULL,'kpurdy@gmail.com','$2y$12$0.BHwLGEmGLqsLvIen3p/ekO/5EVMCO31hQrYYCwV2AVUVq7aT.dW',184,'1976-02-17','+19543913527','2025-04-12 04:09:07',NULL,'job-seeker',NULL,'resume/01.pdf','16467 Donavon Ridges\nIsaiville, WA 06167','Mouse, turning to Alice. \'Nothing,\' said Alice. \'Call it what you like,\' said the March Hare. \'He denies it,\' said Five, \'and I\'ll tell him--it was for bringing the cook was leaning over the verses.',1,0,645,0,NULL,'2025-04-12 04:09:07','2025-04-12 04:09:07',0,1,NULL,NULL,NULL),(55,NULL,'Reyes','Bailey','I\'ve finished.\' So.',NULL,'graham.destiney@yahoo.com','$2y$12$jLuWB2lXP9jg9dNHwUTrc.lXWxMPiR7I2GoFpjZS9rK2zba/HmOhO',184,'2017-12-06','+19569015915','2025-04-12 04:09:07',NULL,'employer',NULL,NULL,'51996 Lavina Meadows Apt. 995\nLake Maybell, OH 65772','Dinah, and saying to herself in a minute or two she walked down the bottle, she found herself in Wonderland, though she looked back once or twice, and shook itself. Then it got down off the.',1,0,2318,0,NULL,'2025-04-12 04:09:07','2025-04-12 04:09:07',0,1,NULL,NULL,NULL),(56,NULL,'Murray','Brown','WOULD not remember.',NULL,'upton.genevieve@willms.net','$2y$12$anLSaAcHtzRDoJMHAnIiRexvaSyBUmgaofNX0gqrHEQDgrXv7iTKm',185,'2007-03-20','+18478804367','2025-04-12 04:09:08',NULL,'employer',NULL,NULL,'68654 Kyla Knoll Apt. 144\nUptontown, WI 65613-6971','Queen jumped up and picking the daisies, when suddenly a footman in livery came running out of the hall: in fact she was terribly frightened all the rest, Between yourself and me.\' \'That\'s the.',1,0,4396,0,NULL,'2025-04-12 04:09:08','2025-04-12 04:09:08',1,1,NULL,NULL,NULL),(57,NULL,'Onie','Walter','Lobster Quadrille.',NULL,'margaret.jones@blick.com','$2y$12$jlHrsBQTAdo57R3x5vwOgux432SWELrFnkauNXPUWCT4mMApwT6S6',186,'1970-01-10','+17574838489','2025-04-12 04:09:08',NULL,'employer',NULL,NULL,'999 Bednar Divide Suite 500\nNew Louisafort, WY 23202','And in she went. Once more she found she could do to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course.',1,0,4196,1,NULL,'2025-04-12 04:09:08','2025-04-12 04:09:08',0,1,NULL,NULL,NULL),(58,NULL,'Lemuel','Kihn','Alice; \'I daresay.',NULL,'braeden36@hotmail.com','$2y$12$a0Nh6lRp6L8GBUF8N/8POuZQE.f8PVa74VeKxT3AfjtdV9x8ZLsra',186,'2018-05-20','+18509841081','2025-04-12 04:09:08',NULL,'employer',NULL,NULL,'95162 Kihn Forks Suite 001\nPort Jairo, ND 67055-1017','Duchess: \'flamingoes and mustard both bite. And the Eaglet bent down its head to keep herself from being broken. She hastily put down her flamingo, and began to cry again, for really I\'m quite tired.',1,0,2246,1,NULL,'2025-04-12 04:09:08','2025-04-12 04:09:08',1,1,NULL,NULL,NULL),(59,NULL,'Tyra','Thiel','Dormouse,\' thought.',NULL,'robert33@johnston.org','$2y$12$I6TKepsFxsDuDkgDOzu5wuR8cUccF3P/3C1lrRyQ/G8rC1BO6kwnq',185,'1993-03-08','+19857362046','2025-04-12 04:09:08',NULL,'job-seeker',NULL,'resume/01.pdf','10194 Evangeline Branch\nOfeliamouth, NV 36322','However, I\'ve got to do,\' said Alice sadly. \'Hand it over here,\' said the White Rabbit hurried by--the frightened Mouse splashed his way through the air! Do you think you\'re changed, do you?\' \'I\'m.',1,0,1177,1,NULL,'2025-04-12 04:09:08','2025-04-12 04:09:08',0,1,NULL,NULL,NULL),(60,NULL,'Emilia','Kunde','I was thinking I.',NULL,'ywilliamson@gmail.com','$2y$12$BL.iw7KkWnuUW4aDOEeevOTC8rFHkfFRPt6dBv8AbSk/JWdQZGT0q',186,'1986-01-24','+16623904156','2025-04-12 04:09:08',NULL,'job-seeker',NULL,'resume/01.pdf','153 Simeon Run Apt. 629\nVioletland, AL 43867','Alice panted as she leant against a buttercup to rest herself, and began an account of the shepherd boy--and the sneeze of the cattle in the window?\' \'Sure, it\'s an arm, yer honour!\' (He pronounced.',1,0,4093,0,NULL,'2025-04-12 04:09:08','2025-04-12 04:09:08',0,1,NULL,NULL,NULL),(61,NULL,'Eugene','Wintheiser','PLEASE mind what.',NULL,'smohr@corkery.com','$2y$12$R9g9RzdM61ySUmLJ9rHTUOyjBRPbE7T/9fiuMuRSgcU6jR3OrzXwu',184,'1980-07-22','+12392509704','2025-04-12 04:09:09',NULL,'employer',NULL,NULL,'13917 Schimmel Plaza\nVonchester, HI 80893','Gryphon, \'she wants for to know your history, you know,\' said Alice, always ready to make personal remarks,\' Alice said very politely, \'if I had to stoop to save her neck kept getting entangled.',1,0,1005,0,NULL,'2025-04-12 04:09:09','2025-04-12 04:09:09',1,1,NULL,NULL,NULL),(62,NULL,'Magali','Treutel','Game, or any other.',NULL,'seamus18@dibbert.org','$2y$12$HhwVEXlJd5MgfCJitN0phOHppCKsmLO/VxMfElw/8/8kqYvTKCJ8m',186,'1983-12-07','+14693196307','2025-04-12 04:09:09',NULL,'job-seeker',NULL,'resume/01.pdf','705 Rogahn Neck\nNorth Caroline, MA 69335-2690','Alice. \'Who\'s making personal remarks now?\' the Hatter went on, \'I must be off, and she hastily dried her eyes anxiously fixed on it, or at least one of the fact. \'I keep them to sell,\' the Hatter.',1,0,2571,0,NULL,'2025-04-12 04:09:09','2025-04-12 04:09:09',1,1,NULL,NULL,NULL),(63,NULL,'Kristofer','Schamberger','Hatter hurriedly.',NULL,'nicola79@yahoo.com','$2y$12$2vtz8b6Tk547ZFc1kXI.UeEz315.g6LnZTJYv.8u.w5hIelrcwv52',185,'2015-03-06','+14435332814','2025-04-12 04:09:09',NULL,'employer',NULL,NULL,'86919 Larkin Club\nEricahaven, MD 21259-5461','Mock Turtle. So she began: \'O Mouse, do you mean by that?\' said the Hatter. \'He won\'t stand beating. Now, if you want to get us dry would be grand, certainly,\' said Alice, who had got so much.',1,0,1294,0,NULL,'2025-04-12 04:09:09','2025-04-12 04:09:09',1,1,NULL,NULL,NULL),(64,NULL,'Jeremie','Carter','He says it kills.',NULL,'bkunde@gmail.com','$2y$12$QbrZeHl5u/NbIjZHDBqS1.6w2XRAVWBxTbsAZE1uII8X8fitCg47a',184,'1995-07-21','+16519343551','2025-04-12 04:09:09',NULL,'employer',NULL,NULL,'63885 Price Parks\nEast Sabryna, WA 47077-3065','For this must ever be A secret, kept from all the unjust things--\' when his eye chanced to fall upon Alice, as she could not help thinking there MUST be more to do anything but sit with its mouth.',1,0,3229,1,NULL,'2025-04-12 04:09:09','2025-04-12 04:09:09',0,1,NULL,NULL,NULL),(65,NULL,'Kennedy','Swaniawski','Mouse, sharply and.',NULL,'jamel71@ledner.biz','$2y$12$9klOD0ESe0/WUyDO2ovjXu/IFdKT3i/wIqXkZnInCxZJO010IaOYm',186,'2004-08-23','+18068082805','2025-04-12 04:09:09',NULL,'job-seeker',NULL,'resume/01.pdf','74401 Cullen Mill Suite 310\nNew Lorenzaside, IL 74745-7968','Alice thought the poor little thing grunted in reply (it had left off writing on his knee, and looking at everything about her, to pass away the moment how large she had nibbled some more tea,\' the.',1,0,3061,1,NULL,'2025-04-12 04:09:09','2025-04-12 04:09:09',0,1,NULL,NULL,NULL),(66,NULL,'Vergie','Jacobs','Alice the moment.',NULL,'xbosco@ruecker.com','$2y$12$sjnpaM856ca2s0LC1bzp7.ENJ9B2DQ6aZSzmrLT44rzi9RfST3/Me',186,'1976-11-17','+13202631726','2025-04-12 04:09:10',NULL,'employer',NULL,NULL,'94598 Emard Inlet Apt. 840\nSouth Virgil, ND 00330-6302','White Rabbit, \'and that\'s why. Pig!\' She said the Mock Turtle, who looked at it again: but he would deny it too: but the Dormouse say?\' one of the other ladder?--Why, I hadn\'t quite finished my tea.',1,0,1557,1,NULL,'2025-04-12 04:09:10','2025-04-12 04:09:10',0,1,NULL,NULL,NULL),(67,NULL,'Lily','Raynor','Alice waited till.',NULL,'mollie.johns@yahoo.com','$2y$12$FpVnx0OKmxWxbbXIGwx/pe1yLcEmWy5MN5e3BX5p.Z2fZ17lcZV0e',186,'2018-01-20','+19592077313','2025-04-12 04:09:10',NULL,'job-seeker',NULL,'resume/01.pdf','3213 Roberts Pine\nMyrtisshire, NY 50196','Time!\' \'Perhaps not,\' Alice replied thoughtfully. \'They have their tails in their mouths. So they sat down, and was going to dive in among the trees, a little hot tea upon its nose. The Dormouse.',1,0,2816,1,NULL,'2025-04-12 04:09:10','2025-04-12 04:09:10',1,1,NULL,NULL,NULL),(68,NULL,'Johanna','Dickinson','Alice to herself.',NULL,'loyal.parisian@johns.org','$2y$12$9C7q1uiDvLHU2tY2pLZx4.rS5lM/8lwxQ2oAoGi2pEXv.P/bORrkO',186,'1972-06-09','+19798273081','2025-04-12 04:09:10',NULL,'job-seeker',NULL,'resume/01.pdf','98217 Wiegand Springs Suite 435\nAdalineburgh, FL 38599-1487','I should be like then?\' And she thought it must be the use of a water-well,\' said the Cat, \'or you wouldn\'t keep appearing and vanishing so suddenly: you make one quite giddy.\' \'All right,\' said the.',1,0,1198,1,NULL,'2025-04-12 04:09:10','2025-04-12 04:09:10',1,1,NULL,NULL,NULL),(69,NULL,'Rossie','Dach','Then it got down.',NULL,'qmertz@donnelly.net','$2y$12$lINjywxD8FVORxXLwdz.8eYDdZ/N0c9rSA2zVLW6pwd2pRwS6fWTC',185,'1997-06-22','+18648192261','2025-04-12 04:09:10',NULL,'employer',NULL,NULL,'996 Furman Circles Suite 997\nRandyside, OH 49024','Majesty!\' the Duchess to play croquet.\' Then they both cried. \'Wake up, Dormouse!\' And they pinched it on both sides of the legs of the words \'DRINK ME\' beautifully printed on it were nine o\'clock.',1,0,3617,0,NULL,'2025-04-12 04:09:10','2025-04-12 04:09:10',1,1,NULL,NULL,NULL),(70,NULL,'Brent','Murphy','For this must be.',NULL,'wilfredo67@gmail.com','$2y$12$8GPPfqi2xt8mRZKIgJmhB.8Kb34Cec0ewfKTjVMC5t9QlDP6MzRuO',185,'2015-12-26','+15512381105','2025-04-12 04:09:10',NULL,'job-seeker',NULL,'resume/01.pdf','3670 Muller Curve Suite 194\nCiaraburgh, NH 69237','Mind now!\' The poor little thing was snorting like a tunnel for some time busily writing in his note-book, cackled out \'Silence!\' and read as follows:-- \'The Queen of Hearts were seated on their.',1,0,742,1,NULL,'2025-04-12 04:09:10','2025-04-12 04:09:10',1,1,NULL,NULL,NULL),(71,NULL,'Keyon','Hauck','I will prosecute.',NULL,'felicia.littel@witting.com','$2y$12$Bd07MntgBqT1FJVll4ljkefMeEY27n9ZkNX79ZRFShENeQGEOfHx6',185,'2003-03-10','+14805187495','2025-04-12 04:09:11',NULL,'job-seeker',NULL,'resume/01.pdf','6884 Raleigh Road\nEast Genevieve, KS 47851-6537','I should think very likely it can be,\' said the Gryphon. \'--you advance twice--\' \'Each with a shiver. \'I beg your acceptance of this rope--Will the roof of the water, and seemed to Alice an.',1,0,2289,1,NULL,'2025-04-12 04:09:11','2025-04-12 04:09:11',0,1,NULL,NULL,NULL),(72,NULL,'Kaleigh','Harvey','ME, and told me he.',NULL,'kschmitt@homenick.net','$2y$12$QAOF4ahyvgTJZjyyUCtJReeGKVxEJslzEZkjtqNkyQZAOHhbf7c6i',185,'2003-06-30','+13618122086','2025-04-12 04:09:11',NULL,'job-seeker',NULL,'resume/01.pdf','292 O\'Kon Points\nLake Novahaven, NH 86946-3307','I to do anything but sit with its mouth again, and that\'s all you know I\'m mad?\' said Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' And then a voice outside, and stopped to listen. The Fish-Footman.',1,0,2015,0,NULL,'2025-04-12 04:09:11','2025-04-12 04:09:11',1,1,NULL,NULL,NULL),(73,NULL,'Valentine','Stokes','March Hare. Alice.',NULL,'billie98@hotmail.com','$2y$12$eAgObzSqBjoLwBrDvNhQoek4jUH5wSiMr68F4RGutv3ziCg0y1bPO',184,'1991-09-16','+18634354723','2025-04-12 04:09:11',NULL,'employer',NULL,NULL,'66751 Freddie Park Apt. 094\nOsinskishire, NV 71186-4921','She did not venture to ask his neighbour to tell me your history, you know,\' the Mock Turtle said: \'advance twice, set to work very carefully, remarking, \'I really must be growing small again.\' She.',1,0,2511,1,NULL,'2025-04-12 04:09:11','2025-04-12 04:09:11',1,1,NULL,NULL,NULL),(74,NULL,'Melody','Yost','Caterpillar. Alice.',NULL,'antonietta65@hotmail.com','$2y$12$mDES7SLjk9A0bQWE4QKfcO0vOo.4jsixY3G62l52hyYghycIDv4zy',185,'2002-05-11','+13603591933','2025-04-12 04:09:11',NULL,'job-seeker',NULL,'resume/01.pdf','916 Jocelyn Burgs Suite 428\nThielberg, IA 79417','The three soldiers wandered about for them, and he hurried off. Alice thought to herself, \'Which way? Which way?\', holding her hand on the glass table as before, \'and things are worse than ever,\'.',1,0,1773,0,NULL,'2025-04-12 04:09:11','2025-04-12 04:09:11',0,1,NULL,NULL,NULL),(75,NULL,'Dillan','Vandervort','WHAT things?\' said.',NULL,'mariane.little@zulauf.com','$2y$12$5HdUJpgh6.1Q2yNmOtbQOO413ckgj8oV5B8DEbN39kp0Afx/iyB7S',184,'2003-04-24','+18439039156','2025-04-12 04:09:11',NULL,'employer',NULL,NULL,'9262 Kautzer Extensions Apt. 629\nKuhicport, OR 29244','She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have dropped them, I wonder?\' And here poor Alice began to cry again. \'You ought to go and get ready for your interesting story,\'.',1,0,1122,1,NULL,'2025-04-12 04:09:11','2025-04-12 04:09:11',0,1,NULL,NULL,NULL),(76,NULL,'Virginie','Schimmel','Alice; \'it\'s laid.',NULL,'maymie.powlowski@kassulke.net','$2y$12$kcnOpIE1pX4WP9fS/v4Wbe4Zwv/DOJzy4UseE0PdOvW3LuZTvaYLS',185,'1975-11-29','+12296006934','2025-04-12 04:09:12',NULL,'employer',NULL,NULL,'8076 Weimann Lane\nEast Lurline, VT 74230','Hatter hurriedly left the court, without even waiting to put his shoes on. \'--and just take his head sadly. \'Do I look like it?\' he said, \'on and off, for days and days.\' \'But what happens when one.',1,0,1014,1,NULL,'2025-04-12 04:09:12','2025-04-12 04:09:12',1,1,NULL,NULL,NULL),(77,NULL,'Fleta','Lehner','King; \'and don\'t.',NULL,'daniel.yolanda@crooks.com','$2y$12$wXclN6KBXyRjVZgnvkJCC.68.33fOH/ue3afS/3BYLNC.UXe1wBbW',185,'2002-03-30','+19599922440','2025-04-12 04:09:12',NULL,'job-seeker',NULL,'resume/01.pdf','8103 Osborne Oval\nDomingoport, KS 60171','Bill,\' she gave a little startled when she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must be what he did with the other.',1,0,4397,1,NULL,'2025-04-12 04:09:12','2025-04-12 04:09:12',0,1,NULL,NULL,NULL),(78,NULL,'Dustin','Wiza','Queen till she too.',NULL,'rickey.bosco@hotmail.com','$2y$12$beNyHGLXFnK0WD7dEvoQaendSilS7HrFwAczbaDuUeCCGHJ01vg1i',185,'1987-08-29','+14237401582','2025-04-12 04:09:12',NULL,'job-seeker',NULL,'resume/01.pdf','804 Torey Mall Apt. 779\nHerzogbury, TN 46952-0862','She was walking by the soldiers, who of course you know what they\'re about!\' \'Read them,\' said the Mock Turtle recovered his voice, and, with tears again as she was beginning to get into the.',1,0,2871,0,NULL,'2025-04-12 04:09:12','2025-04-12 04:09:12',1,1,NULL,NULL,NULL),(79,NULL,'Maxime','Hayes','And she\'s such a.',NULL,'van.keeling@kling.com','$2y$12$tZ5Yibqg7iM56/em4GbvyeWqWge8CzHW9aKYne2Ij6iW.7A8BomzO',186,'1999-07-29','+12024750747','2025-04-12 04:09:12',NULL,'employer',NULL,NULL,'896 Milan Shore Apt. 162\nNew Eudorastad, TX 06924-7895','SWIM--\" you can\'t take more.\' \'You mean you can\'t take LESS,\' said the March Hare said in a trembling voice, \'--and I hadn\'t cried so much!\' Alas! it was very likely true.) Down, down, down. Would.',1,0,1380,1,NULL,'2025-04-12 04:09:12','2025-04-12 04:09:12',0,1,NULL,NULL,NULL),(80,NULL,'Leta','Denesik','The executioner\'s.',NULL,'torp.isai@hotmail.com','$2y$12$JAfYACNrWPFD8hvpy4QQxe2IjGemp9oILmbBw7hKP5gergySW2hYa',184,'1994-07-26','+14699047468','2025-04-12 04:09:12',NULL,'job-seeker',NULL,'resume/01.pdf','41875 Daugherty Burgs Apt. 372\nHansenland, UT 60580','Duchess, \'as pigs have to turn into a large arm-chair at one and then hurried on, Alice started to her daughter \'Ah, my dear! I shall only look up in a shrill, loud voice, and see that she had.',1,0,2883,1,NULL,'2025-04-12 04:09:12','2025-04-12 04:09:12',0,1,NULL,NULL,NULL),(81,NULL,'Kaden','Mayer','The pepper when he.',NULL,'kwalsh@hotmail.com','$2y$12$mtJW4BuP5f/PoWUoqNpokee.yEXgF3l4LzBzuSdEI3ACJEQf9r8QS',186,'1996-12-21','+14583568236','2025-04-12 04:09:13',NULL,'employer',NULL,NULL,'64444 Neva Place Apt. 937\nHodkiewiczbury, MA 79816','Hatter. \'I deny it!\' said the King. \'When did you begin?\' The Hatter was out of a water-well,\' said the Gryphon, half to Alice. \'Only a thimble,\' said Alice as he could think of what work it would.',1,0,3671,0,NULL,'2025-04-12 04:09:13','2025-04-12 04:09:13',1,1,NULL,NULL,NULL),(82,NULL,'Emma','Goodwin','Queen added to one.',NULL,'hackett.lurline@veum.com','$2y$12$Ww7QlRBCDkhnYjejbfstK.gZKM.UIHx0llgcctPLfjaeWYybpd78a',184,'2022-09-07','+19142563384','2025-04-12 04:09:13',NULL,'employer',NULL,NULL,'327 Meggie Stream Apt. 554\nAshleyburgh, WA 26214','The poor little feet, I wonder what CAN have happened to you? Tell us all about as it spoke. \'As wet as ever,\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to think,\' said Alice.',1,0,2352,1,NULL,'2025-04-12 04:09:13','2025-04-12 04:09:13',0,1,NULL,NULL,NULL),(83,NULL,'Jaqueline','West','I can go back and.',NULL,'schuster.camila@pouros.com','$2y$12$JjFa1IzyeCkaPgdohioeUOr6mYcRJk1Nboms1P2yeB1m3gWFmoufG',185,'1978-10-05','+16402642286','2025-04-12 04:09:13',NULL,'employer',NULL,NULL,'849 Labadie Viaduct\nElisabethtown, MI 17449','She said the Gryphon, before Alice could bear: she got up, and reduced the answer to it?\' said the King. On this the White Rabbit. She was moving them about as much as serpents do, you know.\' \'I.',1,0,4693,0,NULL,'2025-04-12 04:09:13','2025-04-12 04:09:13',0,1,NULL,NULL,NULL),(84,NULL,'Leonard','Koelpin','Caterpillar. \'I\'m.',NULL,'marilyne94@yahoo.com','$2y$12$US50agqd9zGcR3qfOtwvlObZm/8lfH61yG91RtHcgsJX0qpFf3IjC',184,'2011-11-07','+19168774914','2025-04-12 04:09:13',NULL,'job-seeker',NULL,'resume/01.pdf','2382 Agnes Stream Apt. 391\nNew Carmelport, OK 90004','March Hare,) \'--it was at in all my life, never!\' They had not got into it), and handed back to the end of every line: \'Speak roughly to your tea; it\'s getting late.\' So Alice began to repeat it.',1,0,1428,0,NULL,'2025-04-12 04:09:13','2025-04-12 04:09:13',1,1,NULL,NULL,NULL),(85,NULL,'Dwight','Borer','I never understood.',NULL,'xwatsica@gmail.com','$2y$12$DXr0CK.FNONpyqEGvgF22.7PMgxMqOup9usnc8BktuwJpP.jAF2EG',184,'1979-06-30','+12762654687','2025-04-12 04:09:13',NULL,'job-seeker',NULL,'resume/01.pdf','722 Jakubowski Mountains Suite 163\nMableland, MO 99405','WAS a curious plan!\' exclaimed Alice. \'And where HAVE my shoulders got to? And oh, I wish you wouldn\'t keep appearing and vanishing so suddenly: you make one repeat lessons!\' thought Alice; \'only.',1,0,440,0,NULL,'2025-04-12 04:09:13','2025-04-12 04:09:13',1,1,NULL,NULL,NULL),(86,NULL,'Wilton','Graham','Hatter, and, just.',NULL,'hilbert39@gmail.com','$2y$12$X8helzDjQSaMQUdrypZhuuyKCZ6MzeP0EZq4NlMoqCtHGYr2S9N22',185,'1971-11-01','+18509397525','2025-04-12 04:09:14',NULL,'job-seeker',NULL,'resume/01.pdf','3240 Martina Extension\nRennerville, WA 66022-7591','Queen. \'Well, I can\'t see you?\' She was walking hand in hand with Dinah, and saying \"Come up again, dear!\" I shall ever see you again, you dear old thing!\' said the King. On this the whole head.',1,0,1111,0,NULL,'2025-04-12 04:09:14','2025-04-12 04:09:14',1,1,NULL,NULL,NULL),(87,NULL,'Sam','Considine','Alice again. \'No.',NULL,'schuster.pablo@gmail.com','$2y$12$t7Ij/LPwm2jAbmjd12/tkeIHcDv8Sc43A9RjZZQ8ZmI10Cw61P.ZC',184,'1975-02-03','+12092223895','2025-04-12 04:09:14',NULL,'employer',NULL,NULL,'65856 Kris Way Apt. 239\nPurdyburgh, OR 13891-2857','Alice. \'Now we shall have to go near the entrance of the words don\'t FIT you,\' said the Hatter, \'you wouldn\'t talk about wasting IT. It\'s HIM.\' \'I don\'t see how he did with the edge of her head down.',1,0,4898,0,NULL,'2025-04-12 04:09:14','2025-04-12 04:09:14',1,1,NULL,NULL,NULL),(88,NULL,'Muhammad','Buckridge','Hatter, it woke up.',NULL,'padberg.sherman@gmail.com','$2y$12$p/pPQhZoquEC4NQnXDdR.OXPwtY4CzDH35c38G8WA836KS41MDsmm',185,'2009-08-16','+13055105310','2025-04-12 04:09:14',NULL,'employer',NULL,NULL,'83767 Wilkinson Fort Apt. 173\nEast Kiarra, SC 83681','Even the Duchess said to Alice, and sighing. \'It IS the fun?\' said Alice. \'I\'ve tried every way, and then raised himself upon tiptoe, put his shoes off. \'Give your evidence,\' said the Caterpillar.',1,0,1700,0,NULL,'2025-04-12 04:09:14','2025-04-12 04:09:14',0,1,NULL,NULL,NULL),(89,NULL,'Roosevelt','O\'Hara','MARMALADE\', but to.',NULL,'leopold92@powlowski.com','$2y$12$CpdQDqGR4lMlBiD4PGrexe2Ty8pbGxnPi0rR1qrkPiFrlvg0yMdkK',184,'2006-05-03','+12603293692','2025-04-12 04:09:14',NULL,'employer',NULL,NULL,'3117 Duncan Locks Apt. 776\nBrianashire, NY 36019-0465','Queen,\' and she dropped it hastily, just in time to hear his history. I must be on the second time round, she came rather late, and the King in a great hurry; \'this paper has just been picked up.\'.',1,0,4738,1,NULL,'2025-04-12 04:09:14','2025-04-12 04:09:14',0,1,NULL,NULL,NULL),(90,NULL,'Maegan','Kunze','Queen. First came.',NULL,'qwolff@gutmann.com','$2y$12$y9Er/gAT8duSp2incs8OFO1HXtobRWUyYbc/s/eOfHslUMPmPaFbm',185,'2022-11-27','+12543894265','2025-04-12 04:09:14',NULL,'employer',NULL,NULL,'656 Bayer Wells Apt. 172\nLaishahaven, UT 88256','The Hatter was the first to break the silence. \'What day of the ground.\' So she was quite out of the right-hand bit to try the experiment?\' \'HE might bite,\' Alice cautiously replied: \'but I know.',1,0,4585,0,NULL,'2025-04-12 04:09:14','2025-04-12 04:09:14',1,1,NULL,NULL,NULL),(91,NULL,'Virgil','Gleichner','King eagerly, and.',NULL,'lind.clay@gmail.com','$2y$12$B9za/cZkOvD/Yehz7KBoauysqt9sXzng8Kwz5Ig7nZOhL11MeAxlW',186,'1987-07-02','+13232587613','2025-04-12 04:09:15',NULL,'job-seeker',NULL,'resume/01.pdf','6728 Mitchell Station\nMurphychester, ME 90661-8073','INSIDE, you might do very well without--Maybe it\'s always pepper that makes you forget to talk. I can\'t be Mabel, for I know is, something comes at me like that!\' He got behind him, and very neatly.',1,0,2663,0,NULL,'2025-04-12 04:09:15','2025-04-12 04:09:15',0,1,NULL,NULL,NULL),(92,NULL,'Toby','Gleason','Coils.\' \'What was.',NULL,'craig.schaefer@yahoo.com','$2y$12$knrOv3LI.u0DxVpb1.wwO.3i7Hex5F8E86oNU3BC550DIryrLA2.G',184,'1977-11-30','+15732883692','2025-04-12 04:09:15',NULL,'job-seeker',NULL,'resume/01.pdf','1579 Haag Dam\nLake Meaghan, CO 67017','I only knew the right way to explain the mistake it had gone. \'Well! I\'ve often seen them so often, of course was, how to set about it; and as it can\'t possibly make me giddy.\' And then, turning to.',1,0,3424,0,NULL,'2025-04-12 04:09:15','2025-04-12 04:09:15',0,1,NULL,NULL,NULL),(93,NULL,'Libby','Cartwright','Soup! Soup of the.',NULL,'mcdermott.felix@hoppe.com','$2y$12$fly74nY2C0mMmgRmTe0b8OtVC5Q53kzwSox00tcQqsDwPDcucPvba',185,'2021-07-24','+19527586107','2025-04-12 04:09:15',NULL,'employer',NULL,NULL,'6073 Bode Mews Apt. 831\nLake Marquis, VT 25028','THAT direction,\' the Cat said, waving its right ear and left off sneezing by this very sudden change, but she heard a little pattering of feet on the trumpet, and called out to sea!\" But the snail.',1,0,4516,0,NULL,'2025-04-12 04:09:15','2025-04-12 04:09:15',1,1,NULL,NULL,NULL),(94,NULL,'Stacy','Labadie','And concluded the.',NULL,'casey.anderson@frami.com','$2y$12$FsLf35mHIUKdqfI4QZ4UJuRucpvL45eZOO2f9l5iipVimQhxj8ceq',184,'1972-05-15','+13602350340','2025-04-12 04:09:15',NULL,'job-seeker',NULL,'resume/01.pdf','8498 Mertz Stream Suite 949\nBrowntown, MD 15522-5725','The only things in the distance, and she hastily dried her eyes anxiously fixed on it, for she felt that she was exactly three inches high). \'But I\'m NOT a serpent, I tell you, you coward!\' and at.',1,0,867,0,NULL,'2025-04-12 04:09:15','2025-04-12 04:09:15',0,1,NULL,NULL,NULL),(95,NULL,'Melba','Harber','I grow at a king,\'.',NULL,'sophia.little@yahoo.com','$2y$12$d4.3cJve7J7t6nC.aWrIAeCsTfdqGCyBekqMatBbSlljc7DKzYIPi',185,'1993-02-13','+18013085753','2025-04-12 04:09:15',NULL,'employer',NULL,NULL,'783 Donny Route\nGerardview, PA 32691-0496','Majesty?\' he asked. \'Begin at the Footman\'s head: it just missed her. Alice caught the baby with some curiosity. \'What a number of executions the Queen till she was in the air, I\'m afraid, sir\' said.',1,0,2427,0,NULL,'2025-04-12 04:09:15','2025-04-12 04:09:15',0,1,NULL,NULL,NULL),(96,NULL,'Kira','Sanford','Seaography: then.',NULL,'adonis.lowe@christiansen.info','$2y$12$h3WRLqq3L2QwIRMzJ1QDF.3SLmlbx/oWWu04ehEX7/GbqhjIAb4xu',185,'1984-09-01','+18728298317','2025-04-12 04:09:16',NULL,'employer',NULL,NULL,'7602 Wyman Burg Suite 667\nAliviaside, AK 56485','Oh, my dear paws! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have dropped them, I wonder?\' Alice guessed who it was, even before she made her feel.',1,0,3349,0,NULL,'2025-04-12 04:09:16','2025-04-12 04:09:16',0,1,NULL,NULL,NULL),(97,NULL,'Alexa','Dickens','Then came a little.',NULL,'jacobs.yadira@gmail.com','$2y$12$OXJgJNm/vXbs5bOP5bFQXOWzInwDnE/H19ss35O24R7Q5UWpEx2Xm',184,'2014-06-14','+12396254454','2025-04-12 04:09:16',NULL,'job-seeker',NULL,'resume/01.pdf','980 Donnelly Highway Apt. 819\nRomainemouth, OH 64465-9278','I should frighten them out again. That\'s all.\' \'Thank you,\' said Alice, very loudly and decidedly, and there she saw maps and pictures hung upon pegs. She took down a jar from one minute to another!.',1,0,402,1,NULL,'2025-04-12 04:09:16','2025-04-12 04:09:16',1,1,NULL,NULL,NULL),(98,NULL,'Hettie','Reichert','THAT like?\' said.',NULL,'wfisher@gmail.com','$2y$12$.5.FWNWgN2MlqQfRoP8TWOOPlAE/HsMI0ez3uw0369vPhTgGk85Uu',185,'2000-10-30','+14192694241','2025-04-12 04:09:16',NULL,'job-seeker',NULL,'resume/01.pdf','95720 Judge Port\nLake Ozellamouth, SC 90241','I\'m Mabel, I\'ll stay down here! It\'ll be no sort of idea that they couldn\'t get them out again. The Mock Turtle said: \'I\'m too stiff. And the executioner myself,\' said the Dormouse shall!\' they both.',1,0,1225,1,NULL,'2025-04-12 04:09:16','2025-04-12 04:09:16',0,1,NULL,NULL,NULL),(99,NULL,'Mozell','Howell','There was a large.',NULL,'prohaska.thalia@larkin.biz','$2y$12$TN1e5FnbHt3UAhqWuRtkDeu1KrveXPNcUWeqsrL8qB5we/VASl4DC',184,'2022-09-14','+18502567963','2025-04-12 04:09:16',NULL,'job-seeker',NULL,'resume/01.pdf','46080 Lillian Haven\nNorth Jettburgh, NM 88432-8875','Alice. \'You are,\' said the Mock Turtle went on. \'Or would you like the look of it at all,\' said Alice: \'three inches is such a thing before, but she did it at all,\' said the King. \'I can\'t help.',1,0,3551,0,NULL,'2025-04-12 04:09:16','2025-04-12 04:09:16',1,1,NULL,NULL,NULL),(100,NULL,'Mossie','Schultz','VERY deeply with a.',NULL,'fschumm@fahey.com','$2y$12$Nr0.7jL8YixCaeV8LaK4meTHy51zm0SMvBXXTIybV1BnkP0rKcAYG',186,'2016-12-24','+17547249662','2025-04-12 04:09:17',NULL,'job-seeker',NULL,'resume/01.pdf','5459 Upton Islands\nO\'Connellside, OK 01405-7593','Alice ventured to taste it, and found in it about four feet high. \'I wish I could show you our cat Dinah: I think you\'d better leave off,\' said the King triumphantly, pointing to Alice severely.',1,0,1868,1,NULL,'2025-04-12 04:09:17','2025-04-12 04:09:17',1,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `jb_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_accounts_translations`
--

DROP TABLE IF EXISTS `jb_accounts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_accounts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_accounts_id` bigint unsigned NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_accounts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_accounts_translations`
--

LOCK TABLES `jb_accounts_translations` WRITE;
/*!40000 ALTER TABLE `jb_accounts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_accounts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_analytics`
--

DROP TABLE IF EXISTS `jb_analytics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_analytics` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `job_id` bigint unsigned NOT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_full` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_analytics`
--

LOCK TABLES `jb_analytics` WRITE;
/*!40000 ALTER TABLE `jb_analytics` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_analytics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_applications`
--

DROP TABLE IF EXISTS `jb_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_applications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `job_id` bigint unsigned NOT NULL,
  `resume` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_letter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` bigint unsigned DEFAULT NULL,
  `is_external_apply` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_applications`
--

LOCK TABLES `jb_applications` WRITE;
/*!40000 ALTER TABLE `jb_applications` DISABLE KEYS */;
INSERT INTO `jb_applications` VALUES (1,'Tyra','Thiel','+19857362046','robert33@johnston.org','Alice; \'that\'s not at all anxious to have him with them,\' the Mock Turtle replied in an encouraging tone. Alice looked at Alice, as she did not wish to offend the Dormouse shall!\' they both cried.',6,'resume/01.pdf','resume/01.pdf',59,1,'checked','2025-04-12 04:09:17','2025-04-12 04:09:17'),(2,'Susana','Schultz','+19543913527','kpurdy@gmail.com','Once more she found that it would be quite as safe to stay with it as a drawing of a muchness\"--did you ever eat a bat?\' when suddenly, thump! thump! down she came in sight of the bottle was a body.',23,'resume/01.pdf','resume/01.pdf',54,1,'checked','2025-04-12 04:09:17','2025-04-12 04:09:17'),(3,'Kennedy','Swaniawski','+18068082805','jamel71@ledner.biz','King, \'and don\'t look at the bottom of the garden: the roses growing on it were nine o\'clock in the sea!\' cried the Mouse, in a game of play with a deep voice, \'What are tarts made of?\' Alice asked.',31,'resume/01.pdf','resume/01.pdf',65,1,'checked','2025-04-12 04:09:17','2025-04-12 04:09:17'),(4,'Philip','Sanford','+19199704096','kenyatta.lang@hotmail.com','March Hare moved into the teapot. \'At any rate a book written about me, that there ought! And when I sleep\" is the same thing with you,\' said the Duchess: \'and the moral of that dark hall, and close.',13,'resume/01.pdf','resume/01.pdf',53,0,'checked','2025-04-12 04:09:17','2025-04-12 04:09:17'),(5,'Toby','Gleason','+15732883692','craig.schaefer@yahoo.com','Duchess. \'I make you grow taller, and the words \'DRINK ME\' beautifully printed on it in time,\' said the Caterpillar. Alice said to Alice. \'Only a thimble,\' said Alice in a moment: she looked down at.',27,'resume/01.pdf','resume/01.pdf',92,1,'checked','2025-04-12 04:09:17','2025-04-12 04:09:17'),(6,'Hettie','Reichert','+14192694241','wfisher@gmail.com','And then, turning to Alice, they all moved off, and that is enough,\' Said his father; \'don\'t give yourself airs! Do you think I should have croqueted the Queen\'s hedgehog just now, only it ran away.',11,'resume/01.pdf','resume/01.pdf',98,1,'checked','2025-04-12 04:09:17','2025-04-12 04:09:17'),(7,'Cloyd','Conn','+13313262131','alda.corwin@kulas.com','Mock Turtle said: \'I\'m too stiff. And the executioner myself,\' said the White Rabbit hurried by--the frightened Mouse splashed his way through the neighbouring pool--she could hear the Rabbit was no.',20,'resume/01.pdf','resume/01.pdf',18,0,'checked','2025-04-12 04:09:17','2025-04-12 04:09:17'),(8,'Kaleigh','Harvey','+13618122086','kschmitt@homenick.net','Nile On every golden scale! \'How cheerfully he seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure I\'m not looking for it, you know--\' \'But.',2,'resume/01.pdf','resume/01.pdf',72,1,'checked','2025-04-12 04:09:17','2025-04-12 04:09:17'),(9,'Rey','Block','+16405629101','bjohnston@weimann.com','I shan\'t grow any more--As it is, I suppose?\' \'Yes,\' said Alice, very much confused, \'I don\'t know what they\'re like.\' \'I believe so,\' Alice replied eagerly, for she had succeeded in getting its.',7,'resume/01.pdf','resume/01.pdf',20,0,'checked','2025-04-12 04:09:17','2025-04-12 04:09:17'),(10,'Ericka','Tromp','+15398534382','theodora.abshire@hotmail.com','But her sister was reading, but it makes me grow larger, I can listen all day about it!\' and he called the Queen, stamping on the glass table as before, \'and things are \"much of a globe of goldfish.',15,'resume/01.pdf','resume/01.pdf',30,0,'checked','2025-04-12 04:09:17','2025-04-12 04:09:17'),(11,'Wava','Green','+14806142300','beer.brandi@steuber.com','English coast you find a thing,\' said the Dodo, pointing to the Hatter. \'He won\'t stand beating. Now, if you want to see if she was beginning to get hold of this elegant thimble\'; and, when it saw.',21,'resume/01.pdf','resume/01.pdf',8,1,'checked','2025-04-12 04:09:17','2025-04-12 04:09:17'),(12,'Johanna','Dickinson','+19798273081','loyal.parisian@johns.org','Alice in a great many more than nine feet high, and her face brightened up at the end of every line: \'Speak roughly to your little boy, And beat him when he sneezes: He only does it matter to me.',17,'resume/01.pdf','resume/01.pdf',68,1,'checked','2025-04-12 04:09:17','2025-04-12 04:09:17'),(13,'Jarrell','Ferry','+16896838045','haag.rico@gmail.com','Queen, who were lying round the refreshments!\' But there seemed to think about it, even if I must, I must,\' the King said to herself; \'the March Hare meekly replied. \'Yes, but some crumbs must have.',43,'resume/01.pdf','resume/01.pdf',13,0,'checked','2025-04-12 04:09:17','2025-04-12 04:09:17'),(14,'D\'angelo','Trantow','+13308752451','ferne.schiller@yahoo.com','The Mouse did not notice this question, but hurriedly went on, without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was more and more sounds of broken glass. \'What a.',34,'resume/01.pdf','resume/01.pdf',37,1,'checked','2025-04-12 04:09:17','2025-04-12 04:09:17'),(15,'Aditya','Kling','+19518033255','davis.darren@jacobi.com','There seemed to be rude, so she waited. The Gryphon lifted up both its paws in surprise. \'What! Never heard of \"Uglification,\"\' Alice ventured to say. \'What is his sorrow?\' she asked the Gryphon.',37,'resume/01.pdf','resume/01.pdf',16,1,'checked','2025-04-12 04:09:17','2025-04-12 04:09:17'),(16,'Marcelino','Moore','+14056658044','kaitlin46@cummerata.biz','Gryphon, and all sorts of things, and she, oh! she knows such a nice little dog near our house I should frighten them out again. The Mock Turtle had just begun to think about stopping herself before.',30,'resume/01.pdf','resume/01.pdf',36,0,'checked','2025-04-12 04:09:18','2025-04-12 04:09:18'),(17,'Troy','Swaniawski','+16602478759','johan94@yahoo.com','King. \'When did you call him Tortoise, if he had a bone in his throat,\' said the Duck: \'it\'s generally a frog or a worm. The question is, what?\' The great question certainly was, what? Alice looked.',3,'resume/01.pdf','resume/01.pdf',10,1,'checked','2025-04-12 04:09:18','2025-04-12 04:09:18'),(18,'Wilton','Graham','+18509397525','hilbert39@gmail.com','I shall fall right THROUGH the earth! How funny it\'ll seem to see if she did it at all. However, \'jury-men\' would have done just as she passed; it was YOUR table,\' said Alice; \'I might as well as.',26,'resume/01.pdf','resume/01.pdf',86,0,'checked','2025-04-12 04:09:18','2025-04-12 04:09:18'),(19,'Mozell','Howell','+18502567963','prohaska.thalia@larkin.biz','Queen to-day?\' \'I should like to go nearer till she shook the house, and the bright eager eyes were nearly out of sight; and an Eaglet, and several other curious creatures. Alice led the way, and.',9,'resume/01.pdf','resume/01.pdf',99,0,'checked','2025-04-12 04:09:18','2025-04-12 04:09:18'),(20,'Gayle','Kuhlman','+18459328848','brant81@yahoo.com','Alice cautiously replied: \'but I must have a trial: For really this morning I\'ve nothing to do: once or twice, half hoping she might find another key on it, and very soon finished it off. * * * * *.',38,'resume/01.pdf','resume/01.pdf',44,0,'checked','2025-04-12 04:09:18','2025-04-12 04:09:18');
/*!40000 ALTER TABLE `jb_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_career_levels`
--

DROP TABLE IF EXISTS `jb_career_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_career_levels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_career_levels`
--

LOCK TABLES `jb_career_levels` WRITE;
/*!40000 ALTER TABLE `jb_career_levels` DISABLE KEYS */;
INSERT INTO `jb_career_levels` VALUES (1,'Department Head',0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(2,'Entry Level',0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(3,'Experienced Professional',0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(4,'GM / CEO / Country Head / President',0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(5,'Intern/Student',0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52');
/*!40000 ALTER TABLE `jb_career_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_career_levels_translations`
--

DROP TABLE IF EXISTS `jb_career_levels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_career_levels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_career_levels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_career_levels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_career_levels_translations`
--

LOCK TABLES `jb_career_levels_translations` WRITE;
/*!40000 ALTER TABLE `jb_career_levels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_career_levels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_categories`
--

DROP TABLE IF EXISTS `jb_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_categories`
--

LOCK TABLES `jb_categories` WRITE;
/*!40000 ALTER TABLE `jb_categories` DISABLE KEYS */;
INSERT INTO `jb_categories` VALUES (1,'Content Writer',NULL,0,0,1,'published','2025-04-12 04:08:53','2025-04-12 04:08:53',0),(2,'Market Research',NULL,1,0,1,'published','2025-04-12 04:08:53','2025-04-12 04:08:53',0),(3,'Marketing &amp; Sale',NULL,2,0,1,'published','2025-04-12 04:08:54','2025-04-12 04:08:54',0),(4,'Customer Help',NULL,3,0,1,'published','2025-04-12 04:08:54','2025-04-12 04:08:54',0),(5,'Finance',NULL,4,0,1,'published','2025-04-12 04:08:54','2025-04-12 04:08:54',0),(6,'Software',NULL,5,0,1,'published','2025-04-12 04:08:54','2025-04-12 04:08:54',0),(7,'Human Resource',NULL,6,0,1,'published','2025-04-12 04:08:54','2025-04-12 04:08:54',0),(8,'Management',NULL,7,0,1,'published','2025-04-12 04:08:54','2025-04-12 04:08:54',0),(9,'Retail &amp; Products',NULL,8,0,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54',0),(10,'Security Analyst',NULL,9,0,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54',0);
/*!40000 ALTER TABLE `jb_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_categories_translations`
--

DROP TABLE IF EXISTS `jb_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_categories_translations`
--

LOCK TABLES `jb_categories_translations` WRITE;
/*!40000 ALTER TABLE `jb_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_companies`
--

DROP TABLE IF EXISTS `jb_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_companies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT '1',
  `state_id` bigint unsigned DEFAULT NULL,
  `city_id` bigint unsigned DEFAULT NULL,
  `postal_code` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_founded` int unsigned DEFAULT NULL,
  `ceo` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_offices` int unsigned DEFAULT NULL,
  `number_of_employees` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annual_revenue` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `views` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tax_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jb_companies_unique_id_unique` (`unique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_companies`
--

LOCK TABLES `jb_companies` WRITE;
/*!40000 ALTER TABLE `jb_companies` DISABLE KEYS */;
INSERT INTO `jb_companies` VALUES (1,NULL,'LinkedIn',NULL,'Numquam praesentium qui odio consectetur delectus eveniet ea. Doloribus voluptas voluptatem minus quae non id.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.linkedin.com/','companies/1.png','43.535278','-76.177469','4836 Dooley Grove Suite 584\nNorth Guy, WV 38855',3,3,3,NULL,'+13319940150',1990,'John Doe',6,'5','4M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2025-04-12 04:08:54','2025-04-12 04:08:54',NULL),(2,NULL,'Adobe Illustrator',NULL,'Necessitatibus veniam et expedita. Est impedit cumque officiis sed fuga officia vel.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.adobe.com/','companies/2.png','42.668391','-75.768136','78531 Nathen Islands Apt. 461\nEast Benton, VT 34599',2,2,2,NULL,'+17576557131',1994,'Jeff Werner',7,'6','10M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2025-04-12 04:08:54','2025-04-12 04:08:54',NULL),(3,NULL,'Bing Search',NULL,'Sapiente eveniet eligendi magnam dicta consequatur. Iusto fuga enim non totam voluptate. Sunt deleniti eum consequuntur nulla id.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.bing.com/','companies/3.png','42.918447','-76.048007','9823 Nelson Fords\nNew Talonville, ID 97773',5,5,5,NULL,'+17265801218',2016,'Nakamura',9,'3','2M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2025-04-12 04:08:54','2025-04-12 04:08:54',NULL),(4,NULL,'Dailymotion',NULL,'Et ex et aliquam sed. Et sint odit qui sit similique accusantium aliquid. Voluptatum et quia nemo rerum. Rerum facere veniam culpa consequatur. Qui ut exercitationem natus commodi quam.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.dailymotion.com/','companies/4.png','42.784173','-75.478887','29872 Mireya Harbors\nSouth Judybury, WY 70607-9970',3,3,3,NULL,'+13519363747',2012,'John Doe',7,'5','7M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2025-04-12 04:08:54','2025-04-12 04:08:54',NULL),(5,NULL,'Linkedin',NULL,'Earum quo omnis dignissimos accusamus. Debitis vel eius est suscipit. Eaque necessitatibus non modi. Deleniti laudantium perspiciatis delectus ipsum culpa.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.linkedin.com/','companies/5.png','43.441431','-76.119621','6799 Phoebe Spring Apt. 585\nNew Kennithville, CO 06394',3,3,3,NULL,'+15138786553',1978,'John Doe',5,'3','3M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2025-04-12 04:08:54','2025-04-12 04:08:54',NULL),(6,NULL,'Quora JSC',NULL,'Perferendis aliquid ipsum corrupti quis officiis quia. Aperiam est necessitatibus dolores corporis commodi dolor.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.quora.com/','companies/6.png','43.006048','-75.643744','51209 Stephan Underpass\nPort Devon, MD 87383',5,5,5,NULL,'+16572599301',2013,'John Doe',10,'10','8M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2025-04-12 04:08:54','2025-04-12 04:08:54',NULL),(7,NULL,'Nintendo',NULL,'Illum tempore et labore minus. Nemo quos dolor quam ex nostrum illum. Inventore tempora accusamus facilis dicta.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.nintendo.com/','companies/7.png','43.043467','-75.933792','92095 Breanna Run\nWest Salvador, DE 87349-7895',2,2,2,NULL,'+18304132247',1971,'Steve Jobs',9,'1','7M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2025-04-12 04:08:54','2025-04-12 04:08:54',NULL),(8,NULL,'Periscope',NULL,'Facere dolores itaque dolorem dolorem. Necessitatibus et fugit enim debitis. Dolorum sint hic et quasi cumque. Ipsam eveniet illo quidem et et aut.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.pscp.tv/','companies/8.png','43.345671','-75.017705','644 Schuster Neck Suite 766\nKoeppchester, MI 03043-7970',5,5,5,NULL,'+15516001494',2015,'John Doe',3,'7','3M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2025-04-12 04:08:54','2025-04-12 04:08:54',NULL),(9,NULL,'NewSum',NULL,'Doloribus et voluptas quo repudiandae suscipit. Et iste consequatur ut sit consequatur. Sequi nam ut iusto tempore sit. Voluptas dolorem ullam voluptatem.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://newsum.us/','companies/4.png','42.918017','-75.967533','1179 Laurel Drive\nPort Kay, GA 96415-9106',3,3,3,NULL,'+14787775279',1987,'John Doe',9,'3','8M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2025-04-12 04:08:54','2025-04-12 04:08:54',NULL),(10,NULL,'PowerHome',NULL,'Laboriosam dolores iusto qui amet quis quia. Molestiae quae error deserunt quia. Ut similique dolores quae id consectetur dolorem recusandae.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.pscp.tv/','companies/5.png','43.165255','-74.900287','3689 Fisher Mews\nWest Michaelstad, KS 82380-3482',5,5,5,NULL,'+14707881400',1971,'John Doe',10,'5','4M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2025-04-12 04:08:54','2025-04-12 04:08:54',NULL),(11,NULL,'Whop.com',NULL,'Pariatur quia fuga consectetur cum magnam. Quo vitae numquam quod nam molestias ratione. Quis eum ut in. Necessitatibus ut minima ratione totam.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://whop.com/','companies/6.png','43.540954','-76.061135','53490 Schimmel Track Apt. 030\nLake Ardenton, CO 89144-4957',4,4,4,NULL,'+18437163332',2010,'John Doe',2,'2','8M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2025-04-12 04:08:54','2025-04-12 04:08:54',NULL),(12,NULL,'Greenwood',NULL,'Numquam iure architecto voluptas repudiandae et. Sit provident dolores omnis sed impedit quo. Adipisci rem facilis maxime non sunt. Blanditiis aut et fugiat illo blanditiis autem sed.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.greenwoodjs.io/','companies/7.png','43.973465','-75.656107','6844 Reed Corners Suite 927\nGreenholtville, NY 79256',3,3,3,NULL,'+16783638229',1971,'John Doe',7,'1','6M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2025-04-12 04:08:54','2025-04-12 04:08:54',NULL),(13,NULL,'Kentucky',NULL,'Et et laborum id iste ullam quas ipsam. Et culpa velit reprehenderit explicabo.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.kentucky.gov/','companies/8.png','42.684554','-76.422121','106 Creola Keys\nMatildaton, CA 08861-8788',6,6,6,NULL,'+13153554828',1979,'John Doe',8,'6','10M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2025-04-12 04:08:54','2025-04-12 04:08:54',NULL),(14,NULL,'Equity',NULL,'Ad incidunt blanditiis et et ut. Voluptatem nobis quas dicta reprehenderit eos. Et enim animi amet. Ab sed ipsam mollitia autem id qui.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.equity.org.uk/','companies/6.png','43.613968','-75.215022','800 Vanessa Mill\nBrekkehaven, ND 13769',6,6,6,NULL,'+12768203148',2013,'John Doe',9,'2','2M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2025-04-12 04:08:54','2025-04-12 04:08:54',NULL),(15,NULL,'Honda',NULL,'Eos qui ducimus rem repellat harum. Omnis nisi qui cumque doloremque delectus et vitae. Aut assumenda omnis ut commodi. Consequatur cumque assumenda vitae iusto quo a veniam.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.honda.com/','companies/9.png','42.556746','-75.280662','1647 Shannon Plaza\nPort Kaylee, IL 92052',5,5,5,NULL,'+12093034634',2021,'John Doe',4,'1','10M',NULL,NULL,NULL,NULL,NULL,1,'published',0,'2025-04-12 04:08:54','2025-04-12 04:08:54',NULL),(16,NULL,'Toyota',NULL,'Quia dolores qui qui. Qui alias blanditiis dolorum sed fugit. Voluptate quidem delectus perspiciatis eos qui voluptatem nemo. Ut explicabo accusamus voluptas voluptas.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.toyota.com/','companies/5.png','43.176589','-75.189062','6012 Dylan Forest Suite 022\nLake Zack, SC 93967',3,3,3,NULL,'+19087478381',1989,'John Doe',1,'2','2M',NULL,NULL,NULL,NULL,NULL,0,'published',0,'2025-04-12 04:08:54','2025-04-12 04:08:54',NULL),(17,NULL,'Lexus',NULL,'Odio repudiandae deserunt quas numquam ut officia. Aspernatur voluptate voluptas laudantium aliquam ipsam. Tenetur dolores modi eius debitis id sit suscipit.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://www.pscp.tv/','companies/3.png','43.966773','-75.083636','874 Ethelyn Ferry\nSouth Ruby, OR 68156',3,3,3,NULL,'+14587887583',2008,'John Doe',10,'7','3M',NULL,NULL,NULL,NULL,NULL,0,'published',0,'2025-04-12 04:08:54','2025-04-12 04:08:54',NULL),(18,NULL,'Ondo',NULL,'Et est vitae sed corporis nesciunt odio. A numquam maiores repellat nobis beatae possimus qui.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://ondo.mn/','companies/6.png','43.787661','-75.875907','766 Marvin Knolls\nEast Imani, KY 57714',2,2,2,NULL,'+12692331360',1984,'John Doe',2,'10','10M',NULL,NULL,NULL,NULL,NULL,0,'published',0,'2025-04-12 04:08:54','2025-04-12 04:08:54',NULL),(19,NULL,'Square',NULL,'Distinctio neque est minima omnis. Laudantium ea amet consequuntur esse exercitationem. Dolores perspiciatis id voluptas et est.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://squareup.com/','companies/2.png','42.664027','-74.939899','32569 Ritchie Field Apt. 255\nNorth Abbeybury, SD 77810',5,5,5,NULL,'+12065360546',1999,'John Doe',4,'1','4M',NULL,NULL,NULL,NULL,NULL,0,'published',0,'2025-04-12 04:08:54','2025-04-12 04:08:54',NULL),(20,NULL,'Visa',NULL,'Necessitatibus modi voluptatem rerum error. Quis aut deserunt perspiciatis sit autem voluptas numquam et.','<p class=\"text-muted\"> Objectively pursue diverse catalysts for change for interoperable meta-services. Distinctively re-engineer\n                revolutionary meta-services and premium architectures. Intrinsically incubate intuitive opportunities and\n                real-time potentialities. Appropriately communicate one-to-one technology.</p>\n\n            <p class=\"text-muted\">Intrinsically incubate intuitive opportunities and real-time potentialities Appropriately communicate\n                one-to-one technology.</p>\n\n            <p class=\"text-muted\"> Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit\n                seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa\n                eiusmod Pinterest in do umami readymade swag.</p>','https://visa.com/','companies/8.png','43.987411','-76.477058','9445 Justus Pass Apt. 816\nLake Andersontown, PA 28583',5,5,5,NULL,'+17245570986',1975,'John Doe',3,'4','6M',NULL,NULL,NULL,NULL,NULL,0,'published',0,'2025-04-12 04:08:54','2025-04-12 04:08:54',NULL);
/*!40000 ALTER TABLE `jb_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_companies_accounts`
--

DROP TABLE IF EXISTS `jb_companies_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_companies_accounts` (
  `company_id` bigint unsigned NOT NULL,
  `account_id` bigint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_companies_accounts`
--

LOCK TABLES `jb_companies_accounts` WRITE;
/*!40000 ALTER TABLE `jb_companies_accounts` DISABLE KEYS */;
INSERT INTO `jb_companies_accounts` VALUES (1,1),(1,4),(2,1),(2,4),(3,1),(3,4),(4,1),(4,4),(5,1),(5,4),(6,1),(6,4),(7,1),(7,4),(8,1),(8,4),(9,1),(9,4),(10,1),(10,4),(11,1),(11,4),(12,1),(12,4),(13,1),(13,4),(14,1),(14,4),(15,1),(15,4),(16,1),(16,4),(17,1),(17,4),(18,1),(18,4),(19,1),(19,4),(20,1),(20,4);
/*!40000 ALTER TABLE `jb_companies_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_companies_translations`
--

DROP TABLE IF EXISTS `jb_companies_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_companies_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_companies_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`jb_companies_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_companies_translations`
--

LOCK TABLES `jb_companies_translations` WRITE;
/*!40000 ALTER TABLE `jb_companies_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_companies_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_coupons`
--

DROP TABLE IF EXISTS `jb_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jb_coupons_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_coupons`
--

LOCK TABLES `jb_coupons` WRITE;
/*!40000 ALTER TABLE `jb_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_currencies`
--

DROP TABLE IF EXISTS `jb_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned NOT NULL DEFAULT '0',
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_currencies`
--

LOCK TABLES `jb_currencies` WRITE;
/*!40000 ALTER TABLE `jb_currencies` DISABLE KEYS */;
INSERT INTO `jb_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2025-04-12 04:08:56','2025-04-12 04:08:56'),(2,'EUR','€',0,2,1,0,0.91,'2025-04-12 04:08:56','2025-04-12 04:08:56'),(3,'VND','₫',0,0,2,0,23717.5,'2025-04-12 04:08:56','2025-04-12 04:08:56');
/*!40000 ALTER TABLE `jb_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_custom_field_options`
--

DROP TABLE IF EXISTS `jb_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_custom_field_options`
--

LOCK TABLES `jb_custom_field_options` WRITE;
/*!40000 ALTER TABLE `jb_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_custom_field_options_translations`
--

DROP TABLE IF EXISTS `jb_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_custom_field_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_custom_field_options_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_custom_field_options_translations`
--

LOCK TABLES `jb_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `jb_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_custom_field_values`
--

DROP TABLE IF EXISTS `jb_custom_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_custom_field_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `custom_field_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jb_custom_field_values_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_custom_field_values`
--

LOCK TABLES `jb_custom_field_values` WRITE;
/*!40000 ALTER TABLE `jb_custom_field_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_custom_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_custom_field_values_translations`
--

DROP TABLE IF EXISTS `jb_custom_field_values_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_custom_field_values_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_custom_field_values_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_custom_field_values_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_custom_field_values_translations`
--

LOCK TABLES `jb_custom_field_values_translations` WRITE;
/*!40000 ALTER TABLE `jb_custom_field_values_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_custom_field_values_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_custom_fields`
--

DROP TABLE IF EXISTS `jb_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `authorable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorable_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jb_custom_fields_authorable_type_authorable_id_index` (`authorable_type`,`authorable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_custom_fields`
--

LOCK TABLES `jb_custom_fields` WRITE;
/*!40000 ALTER TABLE `jb_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_custom_fields_translations`
--

DROP TABLE IF EXISTS `jb_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_custom_fields_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_custom_fields_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_custom_fields_translations`
--

LOCK TABLES `jb_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `jb_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_degree_levels`
--

DROP TABLE IF EXISTS `jb_degree_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_degree_levels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_degree_levels`
--

LOCK TABLES `jb_degree_levels` WRITE;
/*!40000 ALTER TABLE `jb_degree_levels` DISABLE KEYS */;
INSERT INTO `jb_degree_levels` VALUES (1,'Non-Matriculation',0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(2,'Matriculation/O-Level',0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(3,'Intermediate/A-Level',0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(4,'Bachelors',0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(5,'Masters',0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(6,'MPhil/MS',0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(7,'PHD/Doctorate',0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(8,'Certification',0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(9,'Diploma',0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(10,'Short Course',0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52');
/*!40000 ALTER TABLE `jb_degree_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_degree_levels_translations`
--

DROP TABLE IF EXISTS `jb_degree_levels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_degree_levels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_degree_levels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_degree_levels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_degree_levels_translations`
--

LOCK TABLES `jb_degree_levels_translations` WRITE;
/*!40000 ALTER TABLE `jb_degree_levels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_degree_levels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_degree_types`
--

DROP TABLE IF EXISTS `jb_degree_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_degree_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree_level_id` bigint unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_degree_types`
--

LOCK TABLES `jb_degree_types` WRITE;
/*!40000 ALTER TABLE `jb_degree_types` DISABLE KEYS */;
INSERT INTO `jb_degree_types` VALUES (1,'Matric in Arts',2,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(2,'Matric in Science',2,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(3,'O-Levels',2,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(4,'A-Levels',3,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(5,'Faculty of Arts',3,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(6,'Faculty of Science (Pre-medical)',3,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(7,'Faculty of Science (Pre-Engineering)',3,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(8,'Intermediate in Computer Science',3,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(9,'Intermediate in Commerce',3,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(10,'Intermediate in General Science',3,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(11,'Bachelors in Arts',4,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(12,'Bachelors in Architecture',4,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(13,'Bachelors in Business Administration',4,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(14,'Bachelors in Commerce',4,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(15,'Bachelors of Dental Surgery',4,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(16,'Bachelors of Education',4,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(17,'Bachelors in Engineering',4,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(18,'Bachelors in Pharmacy',4,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(19,'Bachelors in Science',4,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(20,'Bachelors of Science in Nursing (Registered Nursing)',4,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(21,'Bachelors in Law',4,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(22,'Bachelors in Technology',4,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(23,'BCS/BS',4,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(24,'Doctor of Veterinary Medicine',4,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(25,'MBBS',4,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(26,'Post Registered Nursing B.S.',4,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(27,'Masters in Arts',5,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(28,'Masters in Business Administration',5,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(29,'Masters in Commerce',5,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(30,'Masters of Education',5,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(31,'Masters in Law',5,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(32,'Masters in Science',5,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(33,'Executive Masters in Business Administration',5,0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52');
/*!40000 ALTER TABLE `jb_degree_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_degree_types_translations`
--

DROP TABLE IF EXISTS `jb_degree_types_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_degree_types_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_degree_types_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_degree_types_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_degree_types_translations`
--

LOCK TABLES `jb_degree_types_translations` WRITE;
/*!40000 ALTER TABLE `jb_degree_types_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_degree_types_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_functional_areas`
--

DROP TABLE IF EXISTS `jb_functional_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_functional_areas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_functional_areas`
--

LOCK TABLES `jb_functional_areas` WRITE;
/*!40000 ALTER TABLE `jb_functional_areas` DISABLE KEYS */;
INSERT INTO `jb_functional_areas` VALUES (1,'Accountant',0,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(2,'Accounts, Finance &amp; Financial Services',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(3,'Admin',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(4,'Admin Operation',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(5,'Administration',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(6,'Administration Clerical',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(7,'Advertising',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(8,'Advertising',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(9,'Advertisement',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(10,'Architects &amp; Construction',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(11,'Architecture',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(12,'Bank Operation',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(13,'Business Development',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(14,'Business Management',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(15,'Business Systems Analyst',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(16,'Clerical',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(17,'Client Services &amp; Customer Support',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(18,'Computer Hardware',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(19,'Computer Networking',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(20,'Consultant',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(21,'Content Writer',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(22,'Corporate Affairs',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(23,'Creative Design',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(24,'Creative Writer',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(25,'Customer Support',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(26,'Data Entry',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(27,'Data Entry Operator',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(28,'Database Administration (DBA)',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(29,'Development',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(30,'Distribution &amp; Logistics',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(31,'Education &amp; Training',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(32,'Electronics Technician',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(33,'Engineering',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(34,'Engineering Construction',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(35,'Executive Management',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(36,'Executive Secretary',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(37,'Field Operations',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(38,'Front Desk Clerk',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(39,'Front Desk Officer',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(40,'Graphic Design',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(41,'Hardware',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(42,'Health &amp; Medicine',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(43,'Health &amp; Safety',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(44,'Health Care',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(45,'Health Related',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(46,'Hotel Management',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(47,'Hotel/Restaurant Management',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(48,'HR',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(49,'Human Resources',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(50,'Import &amp; Export',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(51,'Industrial Production',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(52,'Installation &amp; Repair',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(53,'Interior Designers &amp; Architects',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(54,'Intern',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(55,'Internship',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(56,'Investment Operations',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(57,'IT Security',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(58,'IT Systems Analyst',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(59,'Legal &amp; Corporate Affairs',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(60,'Legal Affairs',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(61,'Legal Research',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(62,'Logistics &amp; Warehousing',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(63,'Maintenance/Repair',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(64,'Management Consulting',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(65,'Management Information System (MIS)',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(66,'Managerial',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(67,'Manufacturing',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(68,'Manufacturing &amp; Operations',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(69,'Marketing',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(70,'Marketing',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(71,'Media - Print &amp; Electronic',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(72,'Media &amp; Advertising',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(73,'Medical',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(74,'Medicine',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(75,'Merchandising',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(76,'Merchandising &amp; Product Management',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(77,'Monitoring &amp; Evaluation (M&amp;E)',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(78,'Network Administration',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(79,'Network Operation',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(80,'Online Advertising',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(81,'Online Marketing',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(82,'Operations',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(83,'Planning',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(84,'Planning &amp; Development',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(85,'PR',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(86,'Print Media',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(87,'Printing',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(88,'Procurement',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(89,'Product Developer',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(90,'Product Development',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(91,'Product Development',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(92,'Product Management',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(93,'Production',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(94,'Production &amp; Quality Control',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(95,'Project Management',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(96,'Project Management Consultant',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(97,'Public Relations',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(98,'QA',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(99,'QC',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(100,'Qualitative Research',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(101,'Quality Assurance (QA)',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(102,'Quality Control',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(103,'Quality Inspection',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(104,'Recruiting',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(105,'Recruitment',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(106,'Repair &amp; Overhaul',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(107,'Research &amp; Development (R&amp;D)',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(108,'Research &amp; Evaluation',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(109,'Research &amp; Fellowships',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(110,'Researcher',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(111,'Restaurant Management',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(112,'Retail',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(113,'Retail &amp; Wholesale',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(114,'Retail Buyer',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(115,'Retail Buying',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(116,'Retail Merchandising',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(117,'Safety &amp; Environment',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(118,'Sales',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(119,'Sales &amp; Business Development',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(120,'Sales Support',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(121,'Search Engine Optimization (SEO)',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(122,'Secretarial, Clerical &amp; Front Office',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(123,'Security',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(124,'Security &amp; Environment',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(125,'Security Guard',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(126,'SEM',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(127,'SMO',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(128,'Software &amp; Web Development',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(129,'Software Engineer',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(130,'Software Testing',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(131,'Stores &amp; Warehousing',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(132,'Supply Chain',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(133,'Supply Chain Management',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(134,'Systems Analyst',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(135,'Teachers/Education, Training &amp; Development',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(136,'Technical Writer',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(137,'Tele Sale Representative',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(138,'Telemarketing',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(139,'Training &amp; Development',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(140,'Transportation &amp; Warehousing',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(141,'TSR',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(142,'Typing',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(143,'Warehousing',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(144,'Web Developer',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(145,'Web Marketing',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(146,'Writer',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(147,'PR',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(148,'QA',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(149,'QC',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(150,'SEM',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(151,'SMO',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(152,'TSR',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(153,'HR',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(154,'QA',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(155,'QC',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53'),(156,'SEM',0,0,'published','2025-04-12 04:08:53','2025-04-12 04:08:53');
/*!40000 ALTER TABLE `jb_functional_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_functional_areas_translations`
--

DROP TABLE IF EXISTS `jb_functional_areas_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_functional_areas_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_functional_areas_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_functional_areas_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_functional_areas_translations`
--

LOCK TABLES `jb_functional_areas_translations` WRITE;
/*!40000 ALTER TABLE `jb_functional_areas_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_functional_areas_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_invoice_items`
--

DROP TABLE IF EXISTS `jb_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jb_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_invoice_items`
--

LOCK TABLES `jb_invoice_items` WRITE;
/*!40000 ALTER TABLE `jb_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_invoices`
--

DROP TABLE IF EXISTS `jb_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `payment_id` int unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jb_invoices_code_unique` (`code`),
  KEY `jb_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `jb_invoices_payment_id_index` (`payment_id`),
  KEY `jb_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_invoices`
--

LOCK TABLES `jb_invoices` WRITE;
/*!40000 ALTER TABLE `jb_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_job_experiences`
--

DROP TABLE IF EXISTS `jb_job_experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_job_experiences` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_job_experiences`
--

LOCK TABLES `jb_job_experiences` WRITE;
/*!40000 ALTER TABLE `jb_job_experiences` DISABLE KEYS */;
INSERT INTO `jb_job_experiences` VALUES (1,'Fresh',0,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(2,'Less Than 1 Year',1,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(3,'1 Year',2,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(4,'2 Year',3,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(5,'3 Year',4,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(6,'4 Year',5,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(7,'5 Year',6,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(8,'6 Year',7,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(9,'7 Year',8,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(10,'8 Year',9,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(11,'9 Year',10,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(12,'10 Year',11,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54');
/*!40000 ALTER TABLE `jb_job_experiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_job_experiences_translations`
--

DROP TABLE IF EXISTS `jb_job_experiences_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_job_experiences_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_job_experiences_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_job_experiences_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_job_experiences_translations`
--

LOCK TABLES `jb_job_experiences_translations` WRITE;
/*!40000 ALTER TABLE `jb_job_experiences_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_job_experiences_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_job_shifts`
--

DROP TABLE IF EXISTS `jb_job_shifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_job_shifts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_job_shifts`
--

LOCK TABLES `jb_job_shifts` WRITE;
/*!40000 ALTER TABLE `jb_job_shifts` DISABLE KEYS */;
INSERT INTO `jb_job_shifts` VALUES (1,'First Shift (Day)',0,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(2,'Second Shift (Afternoon)',0,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(3,'Third Shift (Night)',0,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(4,'Rotating',0,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54');
/*!40000 ALTER TABLE `jb_job_shifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_job_shifts_translations`
--

DROP TABLE IF EXISTS `jb_job_shifts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_job_shifts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_job_shifts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_job_shifts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_job_shifts_translations`
--

LOCK TABLES `jb_job_shifts_translations` WRITE;
/*!40000 ALTER TABLE `jb_job_shifts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_job_shifts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_job_skills`
--

DROP TABLE IF EXISTS `jb_job_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_job_skills` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_job_skills`
--

LOCK TABLES `jb_job_skills` WRITE;
/*!40000 ALTER TABLE `jb_job_skills` DISABLE KEYS */;
INSERT INTO `jb_job_skills` VALUES (1,'JavaScript',0,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(2,'PHP',0,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(3,'Python',0,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(4,'Laravel',0,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(5,'CakePHP',0,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(6,'WordPress',0,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(7,'Flutter',0,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(8,'FilamentPHP',0,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(9,'React.js',0,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54');
/*!40000 ALTER TABLE `jb_job_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_job_skills_translations`
--

DROP TABLE IF EXISTS `jb_job_skills_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_job_skills_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_job_skills_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_job_skills_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_job_skills_translations`
--

LOCK TABLES `jb_job_skills_translations` WRITE;
/*!40000 ALTER TABLE `jb_job_skills_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_job_skills_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_job_types`
--

DROP TABLE IF EXISTS `jb_job_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_job_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_job_types`
--

LOCK TABLES `jb_job_types` WRITE;
/*!40000 ALTER TABLE `jb_job_types` DISABLE KEYS */;
INSERT INTO `jb_job_types` VALUES (1,'Contract',0,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(2,'Freelance',0,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(3,'Full Time',0,1,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(4,'Internship',0,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(5,'Part Time',0,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54');
/*!40000 ALTER TABLE `jb_job_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_job_types_translations`
--

DROP TABLE IF EXISTS `jb_job_types_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_job_types_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_job_types_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_job_types_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_job_types_translations`
--

LOCK TABLES `jb_job_types_translations` WRITE;
/*!40000 ALTER TABLE `jb_job_types_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_job_types_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_jobs`
--

DROP TABLE IF EXISTS `jb_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `apply_url` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint unsigned DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT '1',
  `state_id` bigint unsigned DEFAULT NULL,
  `city_id` bigint unsigned DEFAULT NULL,
  `is_freelance` tinyint unsigned NOT NULL DEFAULT '0',
  `career_level_id` bigint unsigned DEFAULT NULL,
  `salary_from` decimal(15,2) unsigned DEFAULT NULL,
  `salary_to` decimal(15,2) unsigned DEFAULT NULL,
  `salary_range` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'hour',
  `currency_id` bigint unsigned DEFAULT NULL,
  `degree_level_id` bigint unsigned DEFAULT NULL,
  `job_shift_id` bigint unsigned DEFAULT NULL,
  `job_experience_id` bigint unsigned DEFAULT NULL,
  `functional_area_id` bigint unsigned DEFAULT NULL,
  `hide_salary` tinyint(1) NOT NULL DEFAULT '0',
  `number_of_positions` int unsigned NOT NULL DEFAULT '1',
  `expire_date` date DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `views` int unsigned NOT NULL DEFAULT '0',
  `number_of_applied` int unsigned NOT NULL DEFAULT '0',
  `hide_company` tinyint(1) NOT NULL DEFAULT '0',
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_renew` tinyint(1) NOT NULL DEFAULT '0',
  `external_apply_clicks` int unsigned NOT NULL DEFAULT '0',
  `never_expired` tinyint(1) NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `moderation_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `employer_colleagues` text COLLATE utf8mb4_unicode_ci,
  `start_date` date DEFAULT NULL,
  `application_closing_date` date DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jb_jobs_unique_id_unique` (`unique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_jobs`
--

LOCK TABLES `jb_jobs` WRITE;
/*!40000 ALTER TABLE `jb_jobs` DISABLE KEYS */;
INSERT INTO `jb_jobs` VALUES (1,NULL,'UI / UX Designer full-time','In aut et non magni qui itaque. Impedit sequi qui laborum cupiditate sit et et. Error veniam tenetur debitis hic quam. Voluptatem voluptates delectus quos reprehenderit.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',11,NULL,4,4,4,0,4,2900.00,8900.00,'daily',1,10,3,1,74,0,5,'2025-06-06',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.540954','-76.061135',0,0,1,0,'published','approved','2025-03-07 18:57:03','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(2,NULL,'Full Stack Engineer','Minus consequatur a consequuntur ut non. Dignissimos a distinctio esse explicabo. Sed temporibus perferendis illum voluptas alias ipsa. Excepturi explicabo non qui illo aut aut dolores veritatis.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','https://google.com',6,NULL,5,5,5,0,1,4300.00,5400.00,'weekly',1,1,1,2,49,0,10,'2025-04-26',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.006048','-75.643744',0,0,1,1,'published','approved','2025-02-15 23:06:47','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(3,NULL,'Java Software Engineer','Quos unde ex totam optio sunt. Quo libero adipisci et non error optio. Nisi rerum eos est vero aperiam. Unde ipsum aliquid odio vel quos rerum.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',4,NULL,3,3,3,0,1,8300.00,11800.00,'monthly',1,7,3,1,87,0,7,'2025-06-10',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.784173','-75.478887',0,0,1,0,'published','approved','2025-03-02 04:29:00','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(4,NULL,'Digital Marketing Manager','Et ullam fugiat adipisci pariatur amet qui. Sed omnis harum rerum maiores qui culpa. Dolorem rem optio nihil sit enim similique.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',20,NULL,5,5,5,0,2,7500.00,11600.00,'monthly',1,3,4,3,100,0,2,'2025-05-18',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.987411','-76.477058',0,0,0,0,'published','approved','2025-03-19 16:26:00','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(5,NULL,'Frontend Developer','Consequatur quo deserunt blanditiis non non. Itaque fugit dolore reiciendis.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',19,NULL,5,5,5,0,5,2100.00,4200.00,'weekly',1,3,4,3,135,0,2,'2025-06-03',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.664027','-74.939899',0,0,1,0,'published','approved','2025-04-07 05:03:19','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(6,NULL,'React Native Web Developer','Officia culpa corporis modi consequatur cumque odio. Adipisci officia aut omnis ut qui est. Non dicta assumenda sequi nisi quod.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',20,NULL,5,5,5,0,5,3500.00,5500.00,'yearly',1,2,2,1,72,0,8,'2025-05-30',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.987411','-76.477058',0,0,0,0,'published','approved','2025-03-13 09:41:14','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(7,NULL,'Senior System Engineer','Architecto assumenda alias doloremque id. Nulla ut deserunt quia sit ut. Delectus vitae minus omnis repudiandae.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',18,NULL,2,2,2,0,4,6500.00,10000.00,'yearly',1,9,1,2,54,0,7,'2025-05-30',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.787661','-75.875907',0,0,1,0,'published','approved','2025-03-01 03:11:35','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(8,NULL,'Products Manager','Doloribus ex delectus distinctio dolores. Aliquam repudiandae error omnis. Autem libero labore et id molestias et ea saepe.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',15,NULL,5,5,5,0,5,7800.00,14900.00,'daily',1,1,2,3,21,0,7,'2025-06-03',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.556746','-75.280662',0,0,1,1,'published','approved','2025-02-24 04:08:33','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(9,NULL,'Lead Quality Control QA','Est enim autem optio. Id nam ut alias repellat nobis. Distinctio et itaque earum. Beatae qui rerum ut et autem alias ipsam.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',2,NULL,2,2,2,0,5,8300.00,11500.00,'monthly',1,4,3,2,104,0,3,'2025-04-25',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.668391','-75.768136',0,0,1,0,'published','approved','2025-03-05 13:33:31','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(10,NULL,'Principal Designer, Design Systems','Aliquam ut sunt delectus aut. Eos qui rerum similique omnis. Ea id ut sit consequuntur quia vitae consequatur.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',18,NULL,2,2,2,0,3,2300.00,3400.00,'hourly',0,9,3,4,60,0,6,'2025-05-20',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.787661','-75.875907',0,0,0,1,'published','approved','2025-02-20 09:19:17','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(11,NULL,'DevOps Architect','Aspernatur est nemo quibusdam voluptatem ipsa. Voluptatum culpa provident nisi sit. Fuga doloribus ut nisi quos. Odio deserunt provident maxime architecto eum reprehenderit.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',4,NULL,3,3,3,0,2,2400.00,3500.00,'yearly',1,7,1,2,2,0,6,'2025-04-27',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.784173','-75.478887',0,0,0,1,'published','approved','2025-04-08 06:06:28','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(12,NULL,'Senior Software Engineer, npm CLI','Natus nulla magnam aut in dolores in rerum porro. Non enim quo dolorem consequatur tenetur voluptate. Consectetur ipsum ut sunt hic esse. Quisquam debitis fugit libero ratione quia.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',4,NULL,3,3,3,0,3,7900.00,9800.00,'weekly',0,1,3,1,118,0,7,'2025-04-21',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.784173','-75.478887',0,0,0,0,'published','approved','2025-02-28 17:01:24','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(13,NULL,'Senior Systems Engineer','Nam eligendi dolorem qui est cupiditate et ut. Aut et voluptatem nulla nostrum sunt. Numquam doloremque at dolorem et eum ad et.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',8,NULL,5,5,5,0,1,5800.00,11500.00,'monthly',0,9,4,4,88,0,9,'2025-06-10',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.345671','-75.017705',0,0,0,0,'published','approved','2025-03-07 18:57:58','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(14,NULL,'Software Engineer Actions Platform','Unde tenetur id rerum delectus. Est nisi non debitis iste mollitia iure maxime. Sint qui occaecati voluptas voluptatem ut quia.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',2,NULL,2,2,2,0,4,9600.00,11000.00,'monthly',1,5,3,4,140,0,9,'2025-05-31',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.668391','-75.768136',0,0,1,0,'published','approved','2025-03-09 06:05:57','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(15,NULL,'Staff Engineering Manager, Actions','Quasi ut eos et dignissimos vel. Qui laborum fuga repudiandae nemo corrupti. Velit tempore consequatur accusantium quis adipisci.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',15,NULL,5,5,5,0,1,2900.00,9600.00,'monthly',0,4,4,1,148,0,10,'2025-05-16',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.556746','-75.280662',0,0,1,1,'published','approved','2025-03-23 14:47:29','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(16,NULL,'Staff Engineering Manager: Actions Runtime','Quia aperiam accusamus odit asperiores. Dolor dolores corporis qui doloremque dolore. Ea quasi labore expedita eum.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',6,NULL,5,5,5,0,1,5500.00,12300.00,'monthly',1,9,1,2,59,0,10,'2025-05-15',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.006048','-75.643744',0,0,0,0,'published','approved','2025-02-25 04:38:58','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(17,NULL,'Staff Engineering Manager, Packages','Aut ut et mollitia et tempora error iste. Repudiandae nam tempora delectus voluptatem.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',13,NULL,6,6,6,0,2,3000.00,3900.00,'hourly',0,2,2,2,109,0,2,'2025-05-07',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.684554','-76.422121',0,0,0,0,'published','approved','2025-03-21 07:14:44','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(18,NULL,'Staff Software Engineer','Magnam ipsam reprehenderit autem autem quisquam. Magni quia iste aut in. Ad ipsam sed minima quis dignissimos numquam tempora ducimus.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',19,NULL,5,5,5,0,5,5600.00,10000.00,'monthly',0,5,1,1,22,0,8,'2025-04-27',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.664027','-74.939899',0,0,1,1,'published','approved','2025-03-25 20:47:14','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(19,NULL,'Systems Software Engineer','Minus vero totam quis in dolorum illo unde. Perferendis facere dolor dolore earum molestiae nobis. Quos veritatis illo repudiandae atque.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',10,NULL,5,5,5,0,5,3500.00,8600.00,'hourly',1,10,1,5,78,0,3,'2025-06-05',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.165255','-74.900287',0,0,0,0,'published','approved','2025-02-13 07:12:14','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(20,NULL,'Senior Compensation Analyst','Et quia sunt accusamus praesentium aliquam. Qui quae facere ut harum voluptate dolor ea. Dolorem est non qui accusamus temporibus. Quibusdam quo necessitatibus eum qui non asperiores.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',19,NULL,5,5,5,0,2,8600.00,12700.00,'daily',1,10,4,4,151,0,3,'2025-05-24',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.664027','-74.939899',0,0,1,0,'published','approved','2025-03-26 01:49:59','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(21,NULL,'Senior Accessibility Program Manager','Magnam molestiae molestiae et et. Id nam cupiditate sed facere omnis. Numquam sapiente adipisci consequatur ipsam tenetur.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',19,NULL,5,5,5,0,1,3700.00,9500.00,'weekly',1,5,3,2,34,0,6,'2025-05-23',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.664027','-74.939899',0,0,0,0,'published','approved','2025-03-12 10:25:05','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(22,NULL,'Analyst Relations Manager, Application Security','Tempore eos iusto vel quis magnam. Quasi mollitia et et et omnis autem esse. Dolores reprehenderit aspernatur consequuntur ut. Eos tempore expedita voluptates qui officiis vel officia.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',17,NULL,3,3,3,0,1,5700.00,12900.00,'monthly',1,9,1,3,16,0,6,'2025-05-02',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.966773','-75.083636',0,0,1,0,'published','approved','2025-03-24 09:49:00','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(23,NULL,'Senior Enterprise Advocate, EMEA','Nostrum voluptas quia quasi ut eum explicabo. Nulla harum non eum qui unde. Ullam nostrum nihil voluptatibus laborum autem ea.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',18,NULL,2,2,2,0,1,2200.00,7300.00,'daily',0,3,4,2,62,0,9,'2025-05-12',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.787661','-75.875907',0,0,0,0,'published','approved','2025-02-14 05:53:05','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(24,NULL,'Deal Desk Manager','Molestiae autem quia qui ducimus. Quasi veniam voluptatem cum dolorem voluptatibus velit voluptates. Totam velit impedit esse quaerat.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',12,NULL,3,3,3,0,1,9000.00,11200.00,'yearly',1,8,3,4,80,0,4,'2025-06-08',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.973465','-75.656107',0,0,0,1,'published','approved','2025-02-22 03:55:46','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(25,NULL,'Director, Revenue Compensation','Molestiae et in expedita possimus qui et aliquid. Nam saepe laborum iure itaque cum fugiat.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',15,NULL,5,5,5,0,4,600.00,8300.00,'hourly',1,7,2,2,31,0,3,'2025-06-04',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.556746','-75.280662',0,0,1,1,'published','approved','2025-03-13 23:57:55','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(26,NULL,'Program Manager','Aut quia nesciunt aliquid voluptas officia et qui totam. Cumque illo ipsa enim atque facere. Aliquid laboriosam voluptatem repellendus necessitatibus eius quia.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',15,NULL,5,5,5,0,5,7800.00,15600.00,'hourly',1,3,3,4,36,0,9,'2025-05-29',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.556746','-75.280662',0,0,0,1,'published','approved','2025-03-31 11:49:57','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(27,NULL,'Sr. Manager, Deal Desk - INTL','Voluptas ut soluta vel similique libero earum quia. Ut voluptas magnam nesciunt sint. Molestiae at reiciendis minima molestiae possimus. Dolore iste doloremque at maiores non voluptates.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',7,NULL,2,2,2,0,1,8800.00,11100.00,'yearly',0,5,3,4,29,0,9,'2025-05-21',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.043467','-75.933792',0,0,1,0,'published','approved','2025-02-23 15:07:14','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(28,NULL,'Senior Director, Product Management, Actions Runners and Compute Services','Modi quia praesentium eos et iure labore non ad. Autem ex non doloremque quia. Consectetur eligendi et nesciunt dignissimos suscipit explicabo quia. Tenetur cumque ab incidunt ad.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',20,NULL,5,5,5,0,1,9300.00,15300.00,'daily',1,2,4,2,23,0,7,'2025-05-20',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.987411','-76.477058',0,0,1,1,'published','approved','2025-03-25 00:28:38','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(29,NULL,'Alliances Director','Expedita id velit est suscipit in quia. Ea nisi sint qui eligendi ratione. Quis consequatur et quis cupiditate ullam. Pariatur aspernatur quia et nemo repellat.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',7,NULL,2,2,2,0,5,5400.00,11400.00,'monthly',0,5,3,1,136,0,5,'2025-05-26',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.043467','-75.933792',0,0,1,0,'published','approved','2025-04-01 11:42:29','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(30,NULL,'Corporate Sales Representative','Et quam delectus alias saepe nobis et enim molestias. Aut magni voluptas eos sed fugiat eaque vel. Ut sit non excepturi quo repellat. Est ab quo voluptas nam doloremque voluptatem ducimus alias.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',17,NULL,3,3,3,0,3,5200.00,8300.00,'yearly',1,4,1,5,100,0,3,'2025-05-05',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.966773','-75.083636',0,0,1,1,'published','approved','2025-03-05 10:57:47','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(31,NULL,'Country Leader','Enim eligendi et at vel mollitia. Velit quo a eos molestias ducimus perspiciatis voluptatem. Est corrupti mollitia aspernatur odio. Omnis inventore consequatur cupiditate quia ea.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',8,NULL,5,5,5,0,4,9000.00,15600.00,'hourly',0,10,4,5,70,0,2,'2025-05-26',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.345671','-75.017705',0,0,0,1,'published','approved','2025-03-26 11:40:52','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(32,NULL,'Customer Success Architect','Magnam porro ad et recusandae animi voluptas rerum atque. Non consequatur quaerat quibusdam iste quia. Fugiat est et quod placeat voluptatem quisquam sed.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',8,NULL,5,5,5,0,1,6500.00,15600.00,'daily',1,2,2,5,39,0,6,'2025-06-07',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.345671','-75.017705',0,0,1,1,'published','approved','2025-02-14 14:32:28','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(33,NULL,'DevOps Account Executive - US Public Sector','Ratione nam similique nisi sint voluptas laboriosam. Dolorem debitis soluta est aut quo. Quia maxime est aspernatur soluta et ut est ipsam. Et corporis non amet.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',7,NULL,2,2,2,0,1,2800.00,7500.00,'daily',0,10,2,4,144,0,10,'2025-05-07',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.043467','-75.933792',0,0,1,1,'published','approved','2025-04-06 06:00:54','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(34,NULL,'Enterprise Account Executive','Delectus non enim perferendis dicta. Non ullam est rerum. Dignissimos modi et sed voluptatibus. Ratione repellat rerum tempora sequi voluptate illum.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',8,NULL,5,5,5,0,5,8600.00,10800.00,'daily',1,9,4,3,25,0,4,'2025-05-30',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.345671','-75.017705',0,0,1,1,'published','approved','2025-02-17 23:00:15','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(35,NULL,'Senior Engineering Manager, Product Security Engineering - Paved Paths','Et reprehenderit debitis quam molestias voluptas est voluptatem. Cumque vel ut corporis qui neque dolores non. Ad itaque eos magni neque iste aspernatur dicta.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',11,NULL,4,4,4,0,1,5000.00,8800.00,'monthly',0,3,1,5,8,0,6,'2025-05-15',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.540954','-76.061135',0,0,0,0,'published','approved','2025-03-01 05:29:10','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(36,NULL,'Customer Reliability Engineer III','Aliquid qui quos enim dicta quia. Soluta et enim sapiente quibusdam unde. Ducimus tempora sit et velit quia in ab. Non alias ea dolorum eveniet aut veniam.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',11,NULL,4,4,4,0,4,5100.00,5800.00,'hourly',1,1,1,4,19,0,3,'2025-04-23',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.540954','-76.061135',0,0,0,1,'published','approved','2025-03-08 08:55:29','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(37,NULL,'Support Engineer (Enterprise Support Japanese)','Quae consequatur aut maiores autem porro repudiandae est. Ipsam ducimus modi sunt quis molestiae. Repudiandae in magni nisi autem cumque.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',9,NULL,3,3,3,0,1,8900.00,16600.00,'weekly',1,9,4,3,64,0,8,'2025-04-24',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.918017','-75.967533',0,0,1,0,'published','approved','2025-03-18 16:25:20','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(38,NULL,'Technical Partner Manager','Culpa tenetur et quis quae aliquid veritatis. Sed ut quidem ipsa. Possimus odio officia repellat neque.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',13,NULL,6,6,6,0,2,2400.00,9200.00,'monthly',1,1,3,4,141,0,9,'2025-05-24',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.684554','-76.422121',0,0,0,0,'published','approved','2025-04-03 10:07:45','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(39,NULL,'Sr Manager, Inside Account Management','Explicabo accusamus dolorem aut delectus et. Omnis debitis aliquid eum animi assumenda eos unde.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',16,NULL,3,3,3,0,1,7900.00,16400.00,'daily',1,7,1,5,110,0,9,'2025-06-10',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.176589','-75.189062',0,0,0,0,'published','approved','2025-03-04 19:51:46','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(40,NULL,'Services Sales Representative','Autem voluptas dolor esse. Corporis et dolor sint sint quaerat cumque. Ea unde adipisci quia magnam eveniet. Ut sequi labore alias esse est occaecati iste.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',6,NULL,5,5,5,0,4,5200.00,9200.00,'hourly',1,1,2,1,40,0,4,'2025-04-23',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.006048','-75.643744',0,0,1,0,'published','approved','2025-02-13 05:44:13','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(41,NULL,'Services Delivery Manager','Corporis consequuntur quis ut odio voluptates eius nihil. Asperiores quo accusantium accusantium aspernatur accusamus eveniet commodi sint. Et qui quidem aspernatur possimus iste qui eos.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',15,NULL,5,5,5,0,2,9200.00,10400.00,'monthly',1,5,3,5,121,0,6,'2025-05-08',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.556746','-75.280662',0,0,1,1,'published','approved','2025-02-19 06:24:32','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(42,NULL,'Senior Solutions Engineer','Deserunt necessitatibus magni sit doloribus velit. Nostrum reiciendis quis dolore. Explicabo quia sit vel aut natus consequatur.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',2,NULL,2,2,2,0,2,1800.00,7000.00,'yearly',0,6,4,5,28,0,6,'2025-05-14',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.668391','-75.768136',0,0,0,0,'published','approved','2025-04-10 23:44:53','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(43,NULL,'Senior Service Delivery Engineer','At et est quibusdam praesentium et. Iste quis id provident aliquid mollitia aut qui. Sunt consequatur quia nesciunt libero non consequuntur ex.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',12,NULL,3,3,3,0,4,3500.00,13200.00,'yearly',0,5,3,5,92,0,2,'2025-04-19',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.973465','-75.656107',0,0,1,0,'published','approved','2025-03-22 20:00:22','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(44,NULL,'Senior Director, Global Sales Development','Ipsum expedita aut et culpa. Qui in et et temporibus. Veniam dolorum autem provident consequuntur odit.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',15,NULL,5,5,5,0,2,5100.00,6500.00,'monthly',1,3,2,1,26,0,4,'2025-04-26',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.556746','-75.280662',0,0,1,0,'published','approved','2025-02-25 20:21:01','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(45,NULL,'Partner Program Manager','Eius voluptatem molestias consequatur eum omnis hic. Dolorem a natus quis voluptatem aut. Qui incidunt est quisquam ipsam.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',9,NULL,3,3,3,0,5,900.00,10800.00,'daily',1,6,3,4,113,0,6,'2025-05-09',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'42.918017','-75.967533',0,0,0,0,'published','approved','2025-02-20 18:19:46','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(46,NULL,'Principal Cloud Solutions Engineer','Laborum illum in voluptatem. Recusandae blanditiis facere ut sequi. Nam quia ad hic eos.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',1,NULL,3,3,3,0,3,3700.00,7900.00,'monthly',0,1,1,1,144,0,4,'2025-05-16',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.535278','-76.177469',0,0,1,0,'published','approved','2025-03-28 13:30:22','2025-04-12 04:08:55',NULL,NULL,NULL,NULL),(47,NULL,'Senior Cloud Solutions Engineer','Architecto odio natus sequi qui exercitationem officia. Porro et deserunt quia sunt asperiores molestiae atque laboriosam. Inventore voluptas optio illum tempora consequuntur eius dolor.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',8,NULL,5,5,5,0,2,5200.00,14600.00,'weekly',1,9,4,4,46,0,8,'2025-05-09',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.345671','-75.017705',0,0,0,1,'published','approved','2025-03-03 06:03:54','2025-04-12 04:08:56',NULL,NULL,NULL,NULL),(48,NULL,'Senior Customer Success Manager','Voluptate nobis iste dolores numquam praesentium sunt exercitationem voluptas. Maiores voluptate odit aperiam ut harum. Reiciendis est illum in similique nulla voluptas harum.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',16,NULL,3,3,3,0,4,3000.00,4800.00,'daily',1,6,4,3,116,0,4,'2025-05-15',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.176589','-75.189062',0,0,1,1,'published','approved','2025-03-24 06:04:01','2025-04-12 04:08:56',NULL,NULL,NULL,NULL),(49,NULL,'Inside Account Manager','Modi esse aspernatur a et commodi vero. Veniam doloribus pariatur omnis voluptatem. Voluptatem ab eos qui sit voluptate quibusdam enim veniam. Nulla aliquam rem eos nisi voluptas quae esse.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',14,NULL,6,6,6,0,2,2000.00,4300.00,'hourly',1,4,4,3,56,0,2,'2025-04-29',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.613968','-75.215022',0,0,0,1,'published','approved','2025-03-29 22:06:50','2025-04-12 04:08:56',NULL,NULL,NULL,NULL),(50,NULL,'UX Jobs Board','Hic doloremque assumenda eaque iste sit autem aspernatur. Esse consectetur voluptas sint. Tenetur occaecati consequatur qui quas.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',14,NULL,6,6,6,0,5,3800.00,5100.00,'monthly',0,8,2,3,146,0,6,'2025-06-06',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.613968','-75.215022',0,0,0,0,'published','approved','2025-03-20 15:31:35','2025-04-12 04:08:56',NULL,NULL,NULL,NULL),(51,NULL,'Senior Laravel Developer (TALL Stack)','Corrupti perferendis ullam sequi et dolores error. Expedita sint ullam atque porro non. Totam magni et beatae sed. Dolorem inventore odit omnis. Suscipit quia quas tenetur et.','<h5>Responsibilities</h5>\n                <div>\n                    <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent.</p>\n                    <ul>\n                        <li>Have sound knowledge of commercial activities.</li>\n                        <li>Build next-generation web applications with a focus on the client side</li>\n                        <li>Work on multiple projects at once, and consistently meet draft deadlines</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Revise the work of previous designers to create a unified aesthetic for our brand materials</li>\n                    </ul>\n                </div>\n                <h5>Qualification </h5>\n                <div>\n                    <ul>\n                        <li>B.C.A / M.C.A under National University course complete.</li>\n                        <li>3 or more years of professional design experience</li>\n                        <li>have already graduated or are currently in any year of study</li>\n                        <li>Advanced degree or equivalent experience in graphic and web design</li>\n                    </ul>\n                </div>','',7,NULL,2,2,2,0,2,5900.00,7600.00,'weekly',1,7,1,1,17,0,8,'2025-05-20',1,'Botble\\JobBoard\\Models\\Account',0,0,0,'43.043467','-75.933792',0,0,0,1,'published','approved','2025-03-19 01:04:12','2025-04-12 04:08:56',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `jb_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_jobs_categories`
--

DROP TABLE IF EXISTS `jb_jobs_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_jobs_categories` (
  `job_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_jobs_categories`
--

LOCK TABLES `jb_jobs_categories` WRITE;
/*!40000 ALTER TABLE `jb_jobs_categories` DISABLE KEYS */;
INSERT INTO `jb_jobs_categories` VALUES (1,1),(1,4),(1,7),(2,1),(2,2),(2,7),(3,1),(3,4),(3,10),(4,1),(4,3),(4,10),(5,1),(5,4),(5,9),(6,1),(6,5),(6,10),(7,1),(7,3),(7,8),(8,1),(8,4),(8,6),(9,1),(9,5),(9,8),(10,1),(10,5),(10,9),(11,1),(11,4),(11,7),(12,1),(12,3),(12,7),(13,1),(13,3),(13,6),(14,1),(14,3),(14,6),(15,1),(15,2),(15,6),(16,1),(16,4),(16,8),(17,1),(17,3),(17,8),(18,1),(18,5),(18,9),(19,1),(19,5),(19,9),(20,1),(20,5),(20,9),(21,1),(21,3),(21,6),(22,1),(22,2),(22,8),(23,1),(23,4),(23,9),(24,1),(24,5),(24,6),(25,1),(25,5),(25,8),(26,1),(26,5),(26,6),(27,1),(27,2),(27,6),(28,1),(28,2),(28,8),(29,1),(29,4),(29,6),(30,1),(30,4),(30,9),(31,1),(31,4),(31,10),(32,1),(32,3),(32,10),(33,1),(33,2),(33,6),(34,1),(34,2),(34,6),(35,1),(35,5),(35,8),(36,1),(36,3),(36,8),(37,1),(37,3),(37,7),(38,1),(38,2),(38,9),(39,1),(39,2),(39,8),(40,1),(40,5),(40,8),(41,1),(41,3),(41,8),(42,1),(42,5),(42,9),(43,1),(43,5),(43,10),(44,1),(44,3),(44,10),(45,1),(45,4),(45,9),(46,1),(46,5),(46,10),(47,1),(47,3),(47,8),(48,1),(48,4),(48,8),(49,1),(49,5),(49,8),(50,1),(50,4),(50,7),(51,1),(51,2),(51,10);
/*!40000 ALTER TABLE `jb_jobs_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_jobs_skills`
--

DROP TABLE IF EXISTS `jb_jobs_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_jobs_skills` (
  `job_id` bigint unsigned NOT NULL,
  `job_skill_id` bigint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_jobs_skills`
--

LOCK TABLES `jb_jobs_skills` WRITE;
/*!40000 ALTER TABLE `jb_jobs_skills` DISABLE KEYS */;
INSERT INTO `jb_jobs_skills` VALUES (1,8),(2,6),(3,6),(4,1),(5,1),(6,6),(7,6),(8,4),(9,8),(10,1),(11,7),(12,4),(13,6),(14,4),(15,1),(16,7),(17,4),(18,8),(19,4),(20,3),(21,7),(22,2),(23,3),(24,2),(25,6),(26,5),(27,8),(28,8),(29,3),(30,5),(31,3),(32,4),(33,1),(34,4),(35,8),(36,3),(37,9),(38,5),(39,4),(40,4),(41,4),(42,3),(43,7),(44,6),(45,2),(46,7),(47,1),(48,2),(49,6),(50,4),(51,8);
/*!40000 ALTER TABLE `jb_jobs_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_jobs_tags`
--

DROP TABLE IF EXISTS `jb_jobs_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_jobs_tags` (
  `job_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`job_id`,`tag_id`),
  KEY `jb_jobs_tags_job_id_index` (`job_id`),
  KEY `jb_jobs_tags_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_jobs_tags`
--

LOCK TABLES `jb_jobs_tags` WRITE;
/*!40000 ALTER TABLE `jb_jobs_tags` DISABLE KEYS */;
INSERT INTO `jb_jobs_tags` VALUES (1,1),(1,8),(2,1),(2,5),(3,1),(3,5),(4,2),(4,7),(5,2),(5,6),(6,1),(6,5),(7,4),(7,6),(8,1),(8,7),(9,3),(9,7),(10,1),(10,5),(11,2),(11,5),(12,2),(12,8),(13,1),(13,8),(14,3),(14,6),(15,4),(15,5),(16,4),(16,8),(17,1),(17,5),(18,4),(18,6),(19,1),(19,7),(20,4),(20,7),(21,4),(21,7),(22,2),(22,5),(23,4),(23,8),(24,1),(24,7),(25,3),(25,8),(26,1),(26,8),(27,1),(27,7),(28,2),(28,5),(29,1),(29,8),(30,1),(30,5),(31,2),(31,5),(32,2),(32,5),(33,4),(33,6),(34,2),(34,5),(35,3),(35,7),(36,1),(36,6),(37,3),(37,6),(38,2),(38,6),(39,1),(39,6),(40,1),(40,5),(41,4),(41,8),(42,1),(42,8),(43,1),(43,8),(44,1),(44,7),(45,3),(45,8),(46,1),(46,8),(47,2),(47,6),(48,2),(48,8),(49,1),(49,6),(50,4),(50,5),(51,4),(51,7);
/*!40000 ALTER TABLE `jb_jobs_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_jobs_translations`
--

DROP TABLE IF EXISTS `jb_jobs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_jobs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_jobs_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`jb_jobs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_jobs_translations`
--

LOCK TABLES `jb_jobs_translations` WRITE;
/*!40000 ALTER TABLE `jb_jobs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_jobs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_jobs_types`
--

DROP TABLE IF EXISTS `jb_jobs_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_jobs_types` (
  `job_id` bigint unsigned NOT NULL,
  `job_type_id` bigint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_jobs_types`
--

LOCK TABLES `jb_jobs_types` WRITE;
/*!40000 ALTER TABLE `jb_jobs_types` DISABLE KEYS */;
INSERT INTO `jb_jobs_types` VALUES (1,5),(2,5),(3,5),(4,2),(5,1),(6,1),(7,4),(8,1),(9,1),(10,5),(11,5),(12,5),(13,2),(14,4),(15,1),(16,3),(17,4),(18,5),(19,1),(20,4),(21,1),(22,4),(23,2),(24,1),(25,5),(26,3),(27,5),(28,5),(29,5),(30,4),(31,2),(32,1),(33,1),(34,2),(35,2),(36,2),(37,4),(38,4),(39,2),(40,5),(41,3),(42,4),(43,2),(44,2),(45,3),(46,4),(47,3),(48,3),(49,5),(50,4),(51,4);
/*!40000 ALTER TABLE `jb_jobs_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_language_levels`
--

DROP TABLE IF EXISTS `jb_language_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_language_levels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_language_levels`
--

LOCK TABLES `jb_language_levels` WRITE;
/*!40000 ALTER TABLE `jb_language_levels` DISABLE KEYS */;
INSERT INTO `jb_language_levels` VALUES (1,'Expert',0,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(2,'Intermediate',0,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(3,'Beginner',0,0,'published','2025-04-12 04:08:54','2025-04-12 04:08:54');
/*!40000 ALTER TABLE `jb_language_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_language_levels_translations`
--

DROP TABLE IF EXISTS `jb_language_levels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_language_levels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_language_levels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_language_levels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_language_levels_translations`
--

LOCK TABLES `jb_language_levels_translations` WRITE;
/*!40000 ALTER TABLE `jb_language_levels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_language_levels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_major_subjects`
--

DROP TABLE IF EXISTS `jb_major_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_major_subjects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_major_subjects`
--

LOCK TABLES `jb_major_subjects` WRITE;
/*!40000 ALTER TABLE `jb_major_subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_major_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_packages`
--

DROP TABLE IF EXISTS `jb_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double unsigned NOT NULL,
  `currency_id` bigint unsigned NOT NULL,
  `percent_save` int unsigned DEFAULT '0',
  `number_of_listings` int unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `account_limit` int unsigned DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `features` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_packages`
--

LOCK TABLES `jb_packages` WRITE;
/*!40000 ALTER TABLE `jb_packages` DISABLE KEYS */;
INSERT INTO `jb_packages` VALUES (1,'Basic Package',0,1,0,1,0,1,0,'\"[[{\\\"key\\\":\\\"text\\\",\\\"value\\\":\\\"Basic listing\\\"}],[{\\\"key\\\":\\\"text\\\",\\\"value\\\":\\\"Standard support\\\"}],[{\\\"key\\\":\\\"text\\\",\\\"value\\\":\\\"No featured listing\\\"}]]\"','published','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL),(2,'Standard Package',250,1,0,1,0,NULL,1,'\"[[{\\\"key\\\":\\\"text\\\",\\\"value\\\":\\\"Standard listing\\\"}],[{\\\"key\\\":\\\"text\\\",\\\"value\\\":\\\"Standard support\\\"}],[{\\\"key\\\":\\\"text\\\",\\\"value\\\":\\\"No featured listing\\\"}]]\"','published','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL),(3,'Professional Package',1000,1,20,5,0,NULL,0,'\"[[{\\\"key\\\":\\\"text\\\",\\\"value\\\":\\\"Professional listing\\\"}],[{\\\"key\\\":\\\"text\\\",\\\"value\\\":\\\"Priority support\\\"}],[{\\\"key\\\":\\\"text\\\",\\\"value\\\":\\\"No featured listing\\\"}]]\"','published','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL),(4,'Premium Package',5000,1,20,50,0,NULL,0,'\"[[{\\\"key\\\":\\\"text\\\",\\\"value\\\":\\\"Featured listing\\\"}],[{\\\"key\\\":\\\"text\\\",\\\"value\\\":\\\"Top of search results\\\"}],[{\\\"key\\\":\\\"text\\\",\\\"value\\\":\\\"Highlighted listing\\\"}],[{\\\"key\\\":\\\"text\\\",\\\"value\\\":\\\"Social media promotion\\\"}]]\"','published','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL);
/*!40000 ALTER TABLE `jb_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_packages_translations`
--

DROP TABLE IF EXISTS `jb_packages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_packages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_packages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`jb_packages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_packages_translations`
--

LOCK TABLES `jb_packages_translations` WRITE;
/*!40000 ALTER TABLE `jb_packages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_packages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_reviews`
--

DROP TABLE IF EXISTS `jb_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reviewable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewable_id` bigint unsigned NOT NULL,
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by_id` bigint unsigned NOT NULL,
  `star` double NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reviews_unique` (`reviewable_id`,`reviewable_type`,`created_by_id`,`created_by_type`),
  KEY `jb_reviews_reviewable_type_reviewable_id_index` (`reviewable_type`,`reviewable_id`),
  KEY `jb_reviews_created_by_type_created_by_id_index` (`created_by_type`,`created_by_id`),
  KEY `jb_reviews_reviewable_id_reviewable_type_status_index` (`reviewable_id`,`reviewable_type`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_reviews`
--

LOCK TABLES `jb_reviews` WRITE;
/*!40000 ALTER TABLE `jb_reviews` DISABLE KEYS */;
INSERT INTO `jb_reviews` VALUES (1,'Botble\\JobBoard\\Models\\Company',9,'Botble\\JobBoard\\Models\\Account',62,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(2,'Botble\\JobBoard\\Models\\Company',2,'Botble\\JobBoard\\Models\\Account',68,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(3,'Botble\\JobBoard\\Models\\Company',17,'Botble\\JobBoard\\Models\\Account',67,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(4,'Botble\\JobBoard\\Models\\Account',33,'Botble\\JobBoard\\Models\\Company',16,2,'Good app, good backup service and support. Good documentation.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(5,'Botble\\JobBoard\\Models\\Account',17,'Botble\\JobBoard\\Models\\Company',4,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(6,'Botble\\JobBoard\\Models\\Company',13,'Botble\\JobBoard\\Models\\Account',70,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(7,'Botble\\JobBoard\\Models\\Company',16,'Botble\\JobBoard\\Models\\Account',38,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(8,'Botble\\JobBoard\\Models\\Company',2,'Botble\\JobBoard\\Models\\Account',89,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(9,'Botble\\JobBoard\\Models\\Company',14,'Botble\\JobBoard\\Models\\Account',77,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(10,'Botble\\JobBoard\\Models\\Company',4,'Botble\\JobBoard\\Models\\Account',81,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(11,'Botble\\JobBoard\\Models\\Company',19,'Botble\\JobBoard\\Models\\Account',100,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(12,'Botble\\JobBoard\\Models\\Account',32,'Botble\\JobBoard\\Models\\Company',20,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(13,'Botble\\JobBoard\\Models\\Account',38,'Botble\\JobBoard\\Models\\Company',2,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(14,'Botble\\JobBoard\\Models\\Account',15,'Botble\\JobBoard\\Models\\Company',2,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(15,'Botble\\JobBoard\\Models\\Account',16,'Botble\\JobBoard\\Models\\Company',9,3,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(16,'Botble\\JobBoard\\Models\\Account',99,'Botble\\JobBoard\\Models\\Company',18,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(17,'Botble\\JobBoard\\Models\\Account',23,'Botble\\JobBoard\\Models\\Company',14,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(18,'Botble\\JobBoard\\Models\\Company',12,'Botble\\JobBoard\\Models\\Account',36,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(19,'Botble\\JobBoard\\Models\\Company',9,'Botble\\JobBoard\\Models\\Account',4,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(20,'Botble\\JobBoard\\Models\\Company',13,'Botble\\JobBoard\\Models\\Account',86,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(21,'Botble\\JobBoard\\Models\\Account',40,'Botble\\JobBoard\\Models\\Company',1,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(22,'Botble\\JobBoard\\Models\\Account',93,'Botble\\JobBoard\\Models\\Company',19,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(23,'Botble\\JobBoard\\Models\\Account',33,'Botble\\JobBoard\\Models\\Company',3,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(24,'Botble\\JobBoard\\Models\\Account',96,'Botble\\JobBoard\\Models\\Company',12,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(25,'Botble\\JobBoard\\Models\\Company',2,'Botble\\JobBoard\\Models\\Account',98,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(26,'Botble\\JobBoard\\Models\\Account',14,'Botble\\JobBoard\\Models\\Company',8,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(27,'Botble\\JobBoard\\Models\\Account',63,'Botble\\JobBoard\\Models\\Company',11,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(28,'Botble\\JobBoard\\Models\\Company',6,'Botble\\JobBoard\\Models\\Account',92,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(29,'Botble\\JobBoard\\Models\\Account',65,'Botble\\JobBoard\\Models\\Company',1,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(30,'Botble\\JobBoard\\Models\\Account',70,'Botble\\JobBoard\\Models\\Company',4,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(31,'Botble\\JobBoard\\Models\\Company',18,'Botble\\JobBoard\\Models\\Account',24,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(32,'Botble\\JobBoard\\Models\\Account',5,'Botble\\JobBoard\\Models\\Company',6,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(33,'Botble\\JobBoard\\Models\\Company',18,'Botble\\JobBoard\\Models\\Account',76,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(34,'Botble\\JobBoard\\Models\\Account',95,'Botble\\JobBoard\\Models\\Company',19,5,'Good app, good backup service and support. Good documentation.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(35,'Botble\\JobBoard\\Models\\Company',16,'Botble\\JobBoard\\Models\\Account',82,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(36,'Botble\\JobBoard\\Models\\Account',91,'Botble\\JobBoard\\Models\\Company',4,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(37,'Botble\\JobBoard\\Models\\Company',17,'Botble\\JobBoard\\Models\\Account',73,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(38,'Botble\\JobBoard\\Models\\Account',80,'Botble\\JobBoard\\Models\\Company',9,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(39,'Botble\\JobBoard\\Models\\Company',3,'Botble\\JobBoard\\Models\\Account',89,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(41,'Botble\\JobBoard\\Models\\Account',89,'Botble\\JobBoard\\Models\\Company',12,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(42,'Botble\\JobBoard\\Models\\Company',1,'Botble\\JobBoard\\Models\\Account',61,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(43,'Botble\\JobBoard\\Models\\Company',18,'Botble\\JobBoard\\Models\\Account',66,5,'Good app, good backup service and support. Good documentation.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(44,'Botble\\JobBoard\\Models\\Company',14,'Botble\\JobBoard\\Models\\Account',13,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(45,'Botble\\JobBoard\\Models\\Account',73,'Botble\\JobBoard\\Models\\Company',9,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(46,'Botble\\JobBoard\\Models\\Company',13,'Botble\\JobBoard\\Models\\Account',30,2,'Clean & perfect source code','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(47,'Botble\\JobBoard\\Models\\Company',20,'Botble\\JobBoard\\Models\\Account',52,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(48,'Botble\\JobBoard\\Models\\Company',7,'Botble\\JobBoard\\Models\\Account',74,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(49,'Botble\\JobBoard\\Models\\Company',4,'Botble\\JobBoard\\Models\\Account',32,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(50,'Botble\\JobBoard\\Models\\Company',2,'Botble\\JobBoard\\Models\\Account',3,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(51,'Botble\\JobBoard\\Models\\Account',40,'Botble\\JobBoard\\Models\\Company',12,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(53,'Botble\\JobBoard\\Models\\Company',1,'Botble\\JobBoard\\Models\\Account',74,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(54,'Botble\\JobBoard\\Models\\Company',3,'Botble\\JobBoard\\Models\\Account',48,2,'Good app, good backup service and support. Good documentation.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(55,'Botble\\JobBoard\\Models\\Account',89,'Botble\\JobBoard\\Models\\Company',13,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(56,'Botble\\JobBoard\\Models\\Company',5,'Botble\\JobBoard\\Models\\Account',61,2,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(57,'Botble\\JobBoard\\Models\\Account',40,'Botble\\JobBoard\\Models\\Company',11,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(58,'Botble\\JobBoard\\Models\\Account',71,'Botble\\JobBoard\\Models\\Company',20,5,'Good app, good backup service and support. Good documentation.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(59,'Botble\\JobBoard\\Models\\Account',41,'Botble\\JobBoard\\Models\\Company',4,5,'Best ecommerce CMS online store!','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(60,'Botble\\JobBoard\\Models\\Account',20,'Botble\\JobBoard\\Models\\Company',16,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(61,'Botble\\JobBoard\\Models\\Company',3,'Botble\\JobBoard\\Models\\Account',76,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(62,'Botble\\JobBoard\\Models\\Account',24,'Botble\\JobBoard\\Models\\Company',12,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(63,'Botble\\JobBoard\\Models\\Company',9,'Botble\\JobBoard\\Models\\Account',26,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(64,'Botble\\JobBoard\\Models\\Company',7,'Botble\\JobBoard\\Models\\Account',73,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(65,'Botble\\JobBoard\\Models\\Account',64,'Botble\\JobBoard\\Models\\Company',11,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(66,'Botble\\JobBoard\\Models\\Account',88,'Botble\\JobBoard\\Models\\Company',13,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(67,'Botble\\JobBoard\\Models\\Account',34,'Botble\\JobBoard\\Models\\Company',7,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(68,'Botble\\JobBoard\\Models\\Company',16,'Botble\\JobBoard\\Models\\Account',91,2,'Good app, good backup service and support. Good documentation.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(69,'Botble\\JobBoard\\Models\\Account',83,'Botble\\JobBoard\\Models\\Company',3,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(70,'Botble\\JobBoard\\Models\\Company',7,'Botble\\JobBoard\\Models\\Account',33,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(71,'Botble\\JobBoard\\Models\\Company',7,'Botble\\JobBoard\\Models\\Account',64,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(72,'Botble\\JobBoard\\Models\\Account',41,'Botble\\JobBoard\\Models\\Company',15,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(73,'Botble\\JobBoard\\Models\\Company',9,'Botble\\JobBoard\\Models\\Account',100,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(74,'Botble\\JobBoard\\Models\\Account',25,'Botble\\JobBoard\\Models\\Company',10,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(75,'Botble\\JobBoard\\Models\\Company',13,'Botble\\JobBoard\\Models\\Account',49,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(76,'Botble\\JobBoard\\Models\\Account',51,'Botble\\JobBoard\\Models\\Company',17,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(77,'Botble\\JobBoard\\Models\\Account',83,'Botble\\JobBoard\\Models\\Company',2,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(78,'Botble\\JobBoard\\Models\\Company',14,'Botble\\JobBoard\\Models\\Account',59,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(79,'Botble\\JobBoard\\Models\\Company',10,'Botble\\JobBoard\\Models\\Account',93,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(80,'Botble\\JobBoard\\Models\\Account',6,'Botble\\JobBoard\\Models\\Company',8,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(81,'Botble\\JobBoard\\Models\\Company',9,'Botble\\JobBoard\\Models\\Account',53,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(82,'Botble\\JobBoard\\Models\\Company',20,'Botble\\JobBoard\\Models\\Account',84,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(83,'Botble\\JobBoard\\Models\\Company',4,'Botble\\JobBoard\\Models\\Account',20,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(84,'Botble\\JobBoard\\Models\\Account',66,'Botble\\JobBoard\\Models\\Company',12,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(85,'Botble\\JobBoard\\Models\\Account',95,'Botble\\JobBoard\\Models\\Company',1,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(86,'Botble\\JobBoard\\Models\\Account',52,'Botble\\JobBoard\\Models\\Company',2,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(87,'Botble\\JobBoard\\Models\\Company',15,'Botble\\JobBoard\\Models\\Account',48,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(88,'Botble\\JobBoard\\Models\\Company',6,'Botble\\JobBoard\\Models\\Account',31,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(89,'Botble\\JobBoard\\Models\\Account',67,'Botble\\JobBoard\\Models\\Company',9,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(90,'Botble\\JobBoard\\Models\\Company',1,'Botble\\JobBoard\\Models\\Account',28,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(91,'Botble\\JobBoard\\Models\\Account',99,'Botble\\JobBoard\\Models\\Company',8,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(92,'Botble\\JobBoard\\Models\\Account',3,'Botble\\JobBoard\\Models\\Company',19,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(93,'Botble\\JobBoard\\Models\\Account',48,'Botble\\JobBoard\\Models\\Company',14,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(94,'Botble\\JobBoard\\Models\\Company',1,'Botble\\JobBoard\\Models\\Account',51,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(95,'Botble\\JobBoard\\Models\\Company',12,'Botble\\JobBoard\\Models\\Account',81,2,'Best ecommerce CMS online store!','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(96,'Botble\\JobBoard\\Models\\Company',3,'Botble\\JobBoard\\Models\\Account',14,2,'Clean & perfect source code','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(97,'Botble\\JobBoard\\Models\\Account',65,'Botble\\JobBoard\\Models\\Company',14,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(98,'Botble\\JobBoard\\Models\\Company',16,'Botble\\JobBoard\\Models\\Account',69,4,'Clean & perfect source code','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(99,'Botble\\JobBoard\\Models\\Company',2,'Botble\\JobBoard\\Models\\Account',97,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(100,'Botble\\JobBoard\\Models\\Account',87,'Botble\\JobBoard\\Models\\Company',16,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-04-12 04:09:17','2025-04-12 04:09:17');
/*!40000 ALTER TABLE `jb_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_saved_jobs`
--

DROP TABLE IF EXISTS `jb_saved_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_saved_jobs` (
  `account_id` bigint unsigned NOT NULL,
  `job_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`account_id`,`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_saved_jobs`
--

LOCK TABLES `jb_saved_jobs` WRITE;
/*!40000 ALTER TABLE `jb_saved_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_saved_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_tags`
--

DROP TABLE IF EXISTS `jb_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_tags`
--

LOCK TABLES `jb_tags` WRITE;
/*!40000 ALTER TABLE `jb_tags` DISABLE KEYS */;
INSERT INTO `jb_tags` VALUES (1,'Illustrator','','published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(2,'Adobe XD','','published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(3,'Figma','','published','2025-04-12 04:08:54','2025-04-12 04:08:54'),(4,'Sketch','','published','2025-04-12 04:08:55','2025-04-12 04:08:55'),(5,'Lunacy','','published','2025-04-12 04:08:55','2025-04-12 04:08:55'),(6,'PHP','','published','2025-04-12 04:08:55','2025-04-12 04:08:55'),(7,'Python','','published','2025-04-12 04:08:55','2025-04-12 04:08:55'),(8,'JavaScript','','published','2025-04-12 04:08:55','2025-04-12 04:08:55');
/*!40000 ALTER TABLE `jb_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_tags_translations`
--

DROP TABLE IF EXISTS `jb_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jb_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`jb_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_tags_translations`
--

LOCK TABLES `jb_tags_translations` WRITE;
/*!40000 ALTER TABLE `jb_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jb_transactions`
--

DROP TABLE IF EXISTS `jb_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jb_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `credits` int unsigned NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `account_id` bigint unsigned DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'add',
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jb_transactions`
--

LOCK TABLES `jb_transactions` WRITE;
/*!40000 ALTER TABLE `jb_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `jb_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','adfea60cfa931fcfc1487f053bc692db',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','55cd83153e0311f5948141ef75ec7fd2',1,'Botble\\Menu\\Models\\Menu'),(3,'en_US','4e12455790cd541c3de5a9613a32ee60',2,'Botble\\Menu\\Models\\Menu'),(4,'en_US','a062f648e1e2726681ac2557b7014168',3,'Botble\\Menu\\Models\\Menu'),(5,'en_US','f1616539d2836abcbd7c13dcdef7298e',4,'Botble\\Menu\\Models\\Menu'),(6,'en_US','8647f1da1fbf9e0f6d23046290938499',5,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (41,0,'acer','acer',3,'image/png',285,'our-partners/acer.png','[]','2025-04-12 04:08:48','2025-04-12 04:08:48',NULL,'public'),(42,0,'asus','asus',3,'image/png',314,'our-partners/asus.png','[]','2025-04-12 04:08:48','2025-04-12 04:08:48',NULL,'public'),(43,0,'dell','dell',3,'image/png',296,'our-partners/dell.png','[]','2025-04-12 04:08:48','2025-04-12 04:08:48',NULL,'public'),(44,0,'microsoft','microsoft',3,'image/png',287,'our-partners/microsoft.png','[]','2025-04-12 04:08:48','2025-04-12 04:08:48',NULL,'public'),(45,0,'nokia','nokia',3,'image/png',308,'our-partners/nokia.png','[]','2025-04-12 04:08:48','2025-04-12 04:08:48',NULL,'public'),(46,0,'1','1',4,'image/jpeg',9803,'news/1.jpg','[]','2025-04-12 04:08:48','2025-04-12 04:08:48',NULL,'public'),(47,0,'10','10',4,'image/jpeg',9803,'news/10.jpg','[]','2025-04-12 04:08:48','2025-04-12 04:08:48',NULL,'public'),(48,0,'11','11',4,'image/jpeg',9803,'news/11.jpg','[]','2025-04-12 04:08:48','2025-04-12 04:08:48',NULL,'public'),(49,0,'12','12',4,'image/jpeg',9803,'news/12.jpg','[]','2025-04-12 04:08:48','2025-04-12 04:08:48',NULL,'public'),(50,0,'13','13',4,'image/jpeg',9803,'news/13.jpg','[]','2025-04-12 04:08:48','2025-04-12 04:08:48',NULL,'public'),(51,0,'14','14',4,'image/jpeg',9803,'news/14.jpg','[]','2025-04-12 04:08:49','2025-04-12 04:08:49',NULL,'public'),(52,0,'15','15',4,'image/jpeg',9803,'news/15.jpg','[]','2025-04-12 04:08:49','2025-04-12 04:08:49',NULL,'public'),(53,0,'16','16',4,'image/jpeg',9803,'news/16.jpg','[]','2025-04-12 04:08:49','2025-04-12 04:08:49',NULL,'public'),(54,0,'2','2',4,'image/jpeg',9803,'news/2.jpg','[]','2025-04-12 04:08:49','2025-04-12 04:08:49',NULL,'public'),(55,0,'3','3',4,'image/jpeg',9803,'news/3.jpg','[]','2025-04-12 04:08:49','2025-04-12 04:08:49',NULL,'public'),(56,0,'4','4',4,'image/jpeg',9803,'news/4.jpg','[]','2025-04-12 04:08:49','2025-04-12 04:08:49',NULL,'public'),(57,0,'5','5',4,'image/jpeg',9803,'news/5.jpg','[]','2025-04-12 04:08:49','2025-04-12 04:08:49',NULL,'public'),(58,0,'6','6',4,'image/jpeg',9803,'news/6.jpg','[]','2025-04-12 04:08:49','2025-04-12 04:08:49',NULL,'public'),(59,0,'7','7',4,'image/jpeg',9803,'news/7.jpg','[]','2025-04-12 04:08:49','2025-04-12 04:08:49',NULL,'public'),(60,0,'8','8',4,'image/jpeg',9803,'news/8.jpg','[]','2025-04-12 04:08:49','2025-04-12 04:08:49',NULL,'public'),(61,0,'9','9',4,'image/jpeg',9803,'news/9.jpg','[]','2025-04-12 04:08:49','2025-04-12 04:08:49',NULL,'public'),(62,0,'cover-image1','cover-image1',4,'image/png',9803,'news/cover-image1.png','[]','2025-04-12 04:08:49','2025-04-12 04:08:49',NULL,'public'),(63,0,'cover-image2','cover-image2',4,'image/png',9803,'news/cover-image2.png','[]','2025-04-12 04:08:49','2025-04-12 04:08:49',NULL,'public'),(64,0,'cover-image3','cover-image3',4,'image/png',9803,'news/cover-image3.png','[]','2025-04-12 04:08:49','2025-04-12 04:08:49',NULL,'public'),(65,0,'img-news1','img-news1',4,'image/png',9803,'news/img-news1.png','[]','2025-04-12 04:08:49','2025-04-12 04:08:49',NULL,'public'),(66,0,'img-news2','img-news2',4,'image/png',9803,'news/img-news2.png','[]','2025-04-12 04:08:49','2025-04-12 04:08:49',NULL,'public'),(67,0,'img-news3','img-news3',4,'image/png',9803,'news/img-news3.png','[]','2025-04-12 04:08:49','2025-04-12 04:08:49',NULL,'public'),(68,0,'1','1',5,'image/jpeg',6977,'galleries/1.jpg','[]','2025-04-12 04:08:49','2025-04-12 04:08:49',NULL,'public'),(69,0,'10','10',5,'image/jpeg',9803,'galleries/10.jpg','[]','2025-04-12 04:08:49','2025-04-12 04:08:49',NULL,'public'),(70,0,'2','2',5,'image/jpeg',6977,'galleries/2.jpg','[]','2025-04-12 04:08:49','2025-04-12 04:08:49',NULL,'public'),(71,0,'3','3',5,'image/jpeg',6977,'galleries/3.jpg','[]','2025-04-12 04:08:49','2025-04-12 04:08:49',NULL,'public'),(72,0,'4','4',5,'image/jpeg',6977,'galleries/4.jpg','[]','2025-04-12 04:08:49','2025-04-12 04:08:49',NULL,'public'),(73,0,'5','5',5,'image/jpeg',6977,'galleries/5.jpg','[]','2025-04-12 04:08:49','2025-04-12 04:08:49',NULL,'public'),(74,0,'6','6',5,'image/jpeg',6977,'galleries/6.jpg','[]','2025-04-12 04:08:49','2025-04-12 04:08:49',NULL,'public'),(75,0,'7','7',5,'image/jpeg',6977,'galleries/7.jpg','[]','2025-04-12 04:08:49','2025-04-12 04:08:49',NULL,'public'),(76,0,'8','8',5,'image/jpeg',9803,'galleries/8.jpg','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(77,0,'9','9',5,'image/jpeg',9803,'galleries/9.jpg','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(78,0,'widget-banner','widget-banner',6,'image/png',11079,'widgets/widget-banner.png','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(79,0,'404','404',7,'image/png',10947,'general/404.png','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(80,0,'android','android',7,'image/png',477,'general/android.png','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(81,0,'app-store','app-store',7,'image/png',477,'general/app-store.png','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(82,0,'content','content',7,'image/png',1705,'general/content.png','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(83,0,'cover-image','cover-image',7,'image/png',8992,'general/cover-image.png','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(84,0,'customer','customer',7,'image/png',2794,'general/customer.png','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(85,0,'favicon','favicon',7,'image/png',709,'general/favicon.png','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(86,0,'finance','finance',7,'image/png',2483,'general/finance.png','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(87,0,'human','human',7,'image/png',2401,'general/human.png','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(88,0,'img-about2','img-about2',7,'image/png',36911,'general/img-about2.png','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(89,0,'lightning','lightning',7,'image/png',2768,'general/lightning.png','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(90,0,'logo-company','logo-company',7,'image/png',3164,'general/logo-company.png','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(91,0,'logo-light','logo-light',7,'image/png',2290,'general/logo-light.png','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(92,0,'logo','logo',7,'image/png',2516,'general/logo.png','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(93,0,'management','management',7,'image/png',1967,'general/management.png','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(94,0,'marketing','marketing',7,'image/png',2202,'general/marketing.png','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(95,0,'newsletter-background-image','newsletter-background-image',7,'image/png',9830,'general/newsletter-background-image.png','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(96,0,'newsletter-image-left','newsletter-image-left',7,'image/png',4177,'general/newsletter-image-left.png','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(97,0,'newsletter-image-right','newsletter-image-right',7,'image/png',2886,'general/newsletter-image-right.png','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(98,0,'research','research',7,'image/png',3200,'general/research.png','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(99,0,'retail','retail',7,'image/png',2827,'general/retail.png','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(100,0,'security','security',7,'image/png',2952,'general/security.png','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(101,0,'img-1','img-1',8,'image/png',2377,'authentication/img-1.png','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(102,0,'img-2','img-2',8,'image/png',5009,'authentication/img-2.png','[]','2025-04-12 04:08:50','2025-04-12 04:08:50',NULL,'public'),(103,0,'background-cover-candidate','background-cover-candidate',9,'image/png',436821,'pages/background-cover-candidate.png','[]','2025-04-12 04:08:51','2025-04-12 04:08:51',NULL,'public'),(104,0,'background_breadcrumb','background_breadcrumb',9,'image/png',6111,'pages/background-breadcrumb.png','[]','2025-04-12 04:08:51','2025-04-12 04:08:51',NULL,'public'),(105,0,'banner-section-search-box','banner-section-search-box',9,'image/png',20501,'pages/banner-section-search-box.png','[]','2025-04-12 04:08:51','2025-04-12 04:08:51',NULL,'public'),(106,0,'banner1','banner1',9,'image/png',7381,'pages/banner1.png','[]','2025-04-12 04:08:51','2025-04-12 04:08:51',NULL,'public'),(107,0,'banner2','banner2',9,'image/png',4920,'pages/banner2.png','[]','2025-04-12 04:08:51','2025-04-12 04:08:51',NULL,'public'),(108,0,'banner3','banner3',9,'image/png',2472,'pages/banner3.png','[]','2025-04-12 04:08:51','2025-04-12 04:08:51',NULL,'public'),(109,0,'banner4','banner4',9,'image/png',1952,'pages/banner4.png','[]','2025-04-12 04:08:51','2025-04-12 04:08:51',NULL,'public'),(110,0,'banner5','banner5',9,'image/png',1545,'pages/banner5.png','[]','2025-04-12 04:08:51','2025-04-12 04:08:51',NULL,'public'),(111,0,'banner6','banner6',9,'image/png',1609,'pages/banner6.png','[]','2025-04-12 04:08:51','2025-04-12 04:08:51',NULL,'public'),(112,0,'bg-breadcrumb','bg-breadcrumb',9,'image/png',14250,'pages/bg-breadcrumb.png','[]','2025-04-12 04:08:51','2025-04-12 04:08:51',NULL,'public'),(113,0,'bg-cat','bg-cat',9,'image/png',60674,'pages/bg-cat.png','[]','2025-04-12 04:08:51','2025-04-12 04:08:51',NULL,'public'),(114,0,'bg-left-hiring','bg-left-hiring',9,'image/png',1631,'pages/bg-left-hiring.png','[]','2025-04-12 04:08:51','2025-04-12 04:08:51',NULL,'public'),(115,0,'bg-newsletter','bg-newsletter',9,'image/png',4587,'pages/bg-newsletter.png','[]','2025-04-12 04:08:51','2025-04-12 04:08:51',NULL,'public'),(116,0,'bg-right-hiring','bg-right-hiring',9,'image/png',3074,'pages/bg-right-hiring.png','[]','2025-04-12 04:08:51','2025-04-12 04:08:51',NULL,'public'),(117,0,'controlcard','controlcard',9,'image/png',7404,'pages/controlcard.png','[]','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL,'public'),(118,0,'home-page-4-banner','home-page-4-banner',9,'image/png',7596,'pages/home-page-4-banner.png','[]','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL,'public'),(119,0,'icon-bottom-banner','icon-bottom-banner',9,'image/png',304,'pages/icon-bottom-banner.png','[]','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL,'public'),(120,0,'icon-top-banner','icon-top-banner',9,'image/png',414,'pages/icon-top-banner.png','[]','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL,'public'),(121,0,'img-banner','img-banner',9,'image/png',10542,'pages/img-banner.png','[]','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL,'public'),(122,0,'img-chart','img-chart',9,'image/png',7549,'pages/img-chart.png','[]','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL,'public'),(123,0,'img-job-search','img-job-search',9,'image/png',35569,'pages/img-job-search.png','[]','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL,'public'),(124,0,'img-profile','img-profile',9,'image/png',9177,'pages/img-profile.png','[]','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL,'public'),(125,0,'img-single','img-single',9,'image/png',13060,'pages/img-single.png','[]','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL,'public'),(126,0,'img1','img1',9,'image/png',10246,'pages/img1.png','[]','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL,'public'),(127,0,'job-tools','job-tools',9,'image/png',2216,'pages/job-tools.png','[]','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL,'public'),(128,0,'left-job-head','left-job-head',9,'image/png',14956,'pages/left-job-head.png','[]','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL,'public'),(129,0,'newsletter-left','newsletter-left',9,'image/png',4177,'pages/newsletter-left.png','[]','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL,'public'),(130,0,'newsletter-right','newsletter-right',9,'image/png',2886,'pages/newsletter-right.png','[]','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL,'public'),(131,0,'planning-job','planning-job',9,'image/png',1623,'pages/planning-job.png','[]','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL,'public'),(132,0,'right-job-head','right-job-head',9,'image/png',10955,'pages/right-job-head.png','[]','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL,'public'),(133,0,'facebook','facebook',10,'image/png',796,'socials/facebook.png','[]','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL,'public'),(134,0,'linkedin','linkedin',10,'image/png',802,'socials/linkedin.png','[]','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL,'public'),(135,0,'twitter','twitter',10,'image/png',1025,'socials/twitter.png','[]','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL,'public'),(136,0,'location1','location1',11,'image/png',5149,'locations/location1.png','[]','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL,'public'),(137,0,'location2','location2',11,'image/png',5921,'locations/location2.png','[]','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL,'public'),(138,0,'location3','location3',11,'image/png',5276,'locations/location3.png','[]','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL,'public'),(139,0,'location4','location4',11,'image/png',5259,'locations/location4.png','[]','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL,'public'),(140,0,'location5','location5',11,'image/png',5140,'locations/location5.png','[]','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL,'public'),(141,0,'location6','location6',11,'image/png',4891,'locations/location6.png','[]','2025-04-12 04:08:52','2025-04-12 04:08:52',NULL,'public'),(142,0,'1','1',12,'image/png',407,'job-categories/1.png','[]','2025-04-12 04:08:53','2025-04-12 04:08:53',NULL,'public'),(143,0,'10','10',12,'image/png',407,'job-categories/10.png','[]','2025-04-12 04:08:53','2025-04-12 04:08:53',NULL,'public'),(144,0,'11','11',12,'image/png',407,'job-categories/11.png','[]','2025-04-12 04:08:53','2025-04-12 04:08:53',NULL,'public'),(145,0,'12','12',12,'image/png',407,'job-categories/12.png','[]','2025-04-12 04:08:53','2025-04-12 04:08:53',NULL,'public'),(146,0,'13','13',12,'image/png',407,'job-categories/13.png','[]','2025-04-12 04:08:53','2025-04-12 04:08:53',NULL,'public'),(147,0,'14','14',12,'image/png',407,'job-categories/14.png','[]','2025-04-12 04:08:53','2025-04-12 04:08:53',NULL,'public'),(148,0,'15','15',12,'image/png',407,'job-categories/15.png','[]','2025-04-12 04:08:53','2025-04-12 04:08:53',NULL,'public'),(149,0,'16','16',12,'image/png',407,'job-categories/16.png','[]','2025-04-12 04:08:53','2025-04-12 04:08:53',NULL,'public'),(150,0,'17','17',12,'image/png',407,'job-categories/17.png','[]','2025-04-12 04:08:53','2025-04-12 04:08:53',NULL,'public'),(151,0,'18','18',12,'image/png',407,'job-categories/18.png','[]','2025-04-12 04:08:53','2025-04-12 04:08:53',NULL,'public'),(152,0,'19','19',12,'image/png',407,'job-categories/19.png','[]','2025-04-12 04:08:53','2025-04-12 04:08:53',NULL,'public'),(153,0,'2','2',12,'image/png',407,'job-categories/2.png','[]','2025-04-12 04:08:53','2025-04-12 04:08:53',NULL,'public'),(154,0,'3','3',12,'image/png',407,'job-categories/3.png','[]','2025-04-12 04:08:53','2025-04-12 04:08:53',NULL,'public'),(155,0,'4','4',12,'image/png',407,'job-categories/4.png','[]','2025-04-12 04:08:53','2025-04-12 04:08:53',NULL,'public'),(156,0,'5','5',12,'image/png',407,'job-categories/5.png','[]','2025-04-12 04:08:53','2025-04-12 04:08:53',NULL,'public'),(157,0,'6','6',12,'image/png',407,'job-categories/6.png','[]','2025-04-12 04:08:53','2025-04-12 04:08:53',NULL,'public'),(158,0,'7','7',12,'image/png',407,'job-categories/7.png','[]','2025-04-12 04:08:53','2025-04-12 04:08:53',NULL,'public'),(159,0,'8','8',12,'image/png',407,'job-categories/8.png','[]','2025-04-12 04:08:53','2025-04-12 04:08:53',NULL,'public'),(160,0,'9','9',12,'image/png',407,'job-categories/9.png','[]','2025-04-12 04:08:53','2025-04-12 04:08:53',NULL,'public'),(161,0,'img-cover-1','img-cover-1',12,'image/png',33918,'job-categories/img-cover-1.png','[]','2025-04-12 04:08:53','2025-04-12 04:08:53',NULL,'public'),(162,0,'img-cover-2','img-cover-2',12,'image/png',33918,'job-categories/img-cover-2.png','[]','2025-04-12 04:08:53','2025-04-12 04:08:53',NULL,'public'),(163,0,'img-cover-3','img-cover-3',12,'image/png',33918,'job-categories/img-cover-3.png','[]','2025-04-12 04:08:53','2025-04-12 04:08:53',NULL,'public'),(164,0,'1','1',13,'image/png',598,'companies/1.png','[]','2025-04-12 04:08:54','2025-04-12 04:08:54',NULL,'public'),(165,0,'2','2',13,'image/png',598,'companies/2.png','[]','2025-04-12 04:08:54','2025-04-12 04:08:54',NULL,'public'),(166,0,'3','3',13,'image/png',598,'companies/3.png','[]','2025-04-12 04:08:54','2025-04-12 04:08:54',NULL,'public'),(167,0,'4','4',13,'image/png',598,'companies/4.png','[]','2025-04-12 04:08:54','2025-04-12 04:08:54',NULL,'public'),(168,0,'5','5',13,'image/png',598,'companies/5.png','[]','2025-04-12 04:08:54','2025-04-12 04:08:54',NULL,'public'),(169,0,'6','6',13,'image/png',598,'companies/6.png','[]','2025-04-12 04:08:54','2025-04-12 04:08:54',NULL,'public'),(170,0,'7','7',13,'image/png',598,'companies/7.png','[]','2025-04-12 04:08:54','2025-04-12 04:08:54',NULL,'public'),(171,0,'8','8',13,'image/png',598,'companies/8.png','[]','2025-04-12 04:08:54','2025-04-12 04:08:54',NULL,'public'),(172,0,'9','9',13,'image/png',598,'companies/9.png','[]','2025-04-12 04:08:54','2025-04-12 04:08:54',NULL,'public'),(173,0,'company-cover-image','company-cover-image',13,'image/png',8992,'companies/company-cover-image.png','[]','2025-04-12 04:08:54','2025-04-12 04:08:54',NULL,'public'),(174,0,'img1','img1',14,'image/png',5706,'jobs/img1.png','[]','2025-04-12 04:08:54','2025-04-12 04:08:54',NULL,'public'),(175,0,'img2','img2',14,'image/png',5706,'jobs/img2.png','[]','2025-04-12 04:08:54','2025-04-12 04:08:54',NULL,'public'),(176,0,'img3','img3',14,'image/png',5706,'jobs/img3.png','[]','2025-04-12 04:08:54','2025-04-12 04:08:54',NULL,'public'),(177,0,'img4','img4',14,'image/png',5706,'jobs/img4.png','[]','2025-04-12 04:08:54','2025-04-12 04:08:54',NULL,'public'),(178,0,'img5','img5',14,'image/png',5706,'jobs/img5.png','[]','2025-04-12 04:08:54','2025-04-12 04:08:54',NULL,'public'),(179,0,'img6','img6',14,'image/png',5706,'jobs/img6.png','[]','2025-04-12 04:08:54','2025-04-12 04:08:54',NULL,'public'),(180,0,'img7','img7',14,'image/png',5706,'jobs/img7.png','[]','2025-04-12 04:08:54','2025-04-12 04:08:54',NULL,'public'),(181,0,'img8','img8',14,'image/png',5706,'jobs/img8.png','[]','2025-04-12 04:08:54','2025-04-12 04:08:54',NULL,'public'),(182,0,'img9','img9',14,'image/png',5706,'jobs/img9.png','[]','2025-04-12 04:08:54','2025-04-12 04:08:54',NULL,'public'),(183,0,'01','01',15,'application/pdf',43496,'resume/01.pdf','[]','2025-04-12 04:08:56','2025-04-12 04:08:56',NULL,'public'),(184,0,'1','1',16,'image/png',3030,'avatars/1.png','[]','2025-04-12 04:08:56','2025-04-12 04:08:56',NULL,'public'),(185,0,'2','2',16,'image/png',2754,'avatars/2.png','[]','2025-04-12 04:08:56','2025-04-12 04:08:56',NULL,'public'),(186,0,'3','3',16,'image/png',2703,'avatars/3.png','[]','2025-04-12 04:08:56','2025-04-12 04:08:56',NULL,'public'),(187,0,'1','1',17,'image/png',395380,'covers/1.png','[]','2025-04-12 04:08:56','2025-04-12 04:08:56',NULL,'public'),(188,0,'2','2',17,'image/png',1308067,'covers/2.png','[]','2025-04-12 04:08:56','2025-04-12 04:08:56',NULL,'public'),(189,0,'3','3',17,'image/png',301502,'covers/3.png','[]','2025-04-12 04:08:56','2025-04-12 04:08:56',NULL,'public'),(190,0,'1','1',18,'image/png',4294,'teams/1.png','[]','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL,'public'),(191,0,'2','2',18,'image/png',4294,'teams/2.png','[]','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL,'public'),(192,0,'3','3',18,'image/png',4294,'teams/3.png','[]','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL,'public'),(193,0,'4','4',18,'image/png',4294,'teams/4.png','[]','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL,'public'),(194,0,'5','5',18,'image/png',4294,'teams/5.png','[]','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL,'public'),(195,0,'6','6',18,'image/png',4294,'teams/6.png','[]','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL,'public'),(196,0,'7','7',18,'image/png',4294,'teams/7.png','[]','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL,'public'),(197,0,'8','8',18,'image/png',4294,'teams/8.png','[]','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL,'public'),(198,0,'1','1',19,'image/png',3943,'testimonials/1.png','[]','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL,'public'),(199,0,'2','2',19,'image/png',3943,'testimonials/2.png','[]','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL,'public'),(200,0,'3','3',19,'image/png',3943,'testimonials/3.png','[]','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL,'public'),(201,0,'4','4',19,'image/png',3943,'testimonials/4.png','[]','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (3,0,'our-partners',NULL,'our-partners',0,'2025-04-12 04:08:48','2025-04-12 04:08:48',NULL),(4,0,'news',NULL,'news',0,'2025-04-12 04:08:48','2025-04-12 04:08:48',NULL),(5,0,'galleries',NULL,'galleries',0,'2025-04-12 04:08:49','2025-04-12 04:08:49',NULL),(6,0,'widgets',NULL,'widgets',0,'2025-04-12 04:08:50','2025-04-12 04:08:50',NULL),(7,0,'general',NULL,'general',0,'2025-04-12 04:08:50','2025-04-12 04:08:50',NULL),(8,0,'authentication',NULL,'authentication',0,'2025-04-12 04:08:50','2025-04-12 04:08:50',NULL),(9,0,'pages',NULL,'pages',0,'2025-04-12 04:08:50','2025-04-12 04:08:50',NULL),(10,0,'socials',NULL,'socials',0,'2025-04-12 04:08:52','2025-04-12 04:08:52',NULL),(11,0,'locations',NULL,'locations',0,'2025-04-12 04:08:52','2025-04-12 04:08:52',NULL),(12,0,'job-categories',NULL,'job-categories',0,'2025-04-12 04:08:53','2025-04-12 04:08:53',NULL),(13,0,'companies',NULL,'companies',0,'2025-04-12 04:08:54','2025-04-12 04:08:54',NULL),(14,0,'jobs',NULL,'jobs',0,'2025-04-12 04:08:54','2025-04-12 04:08:54',NULL),(15,0,'resume',NULL,'resume',0,'2025-04-12 04:08:56','2025-04-12 04:08:56',NULL),(16,0,'avatars',NULL,'avatars',0,'2025-04-12 04:08:56','2025-04-12 04:08:56',NULL),(17,0,'covers',NULL,'covers',0,'2025-04-12 04:08:56','2025-04-12 04:08:56',NULL),(18,0,'teams',NULL,'teams',0,'2025-04-12 04:09:17','2025-04-12 04:09:17',NULL),(19,0,'testimonials',NULL,'testimonials',0,'2025-04-12 04:09:17','2025-04-12 04:09:17',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2025-04-12 04:09:17','2025-04-12 04:09:17');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(2,1,1,1,'Botble\\Page\\Models\\Page','/homepage-1','fi fi-rr-home',1,'Home 1',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2','fi fi-rr-home',2,'Home 2',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3','fi fi-rr-home',3,'Home 3',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4','fi fi-rr-home',4,'Home 4',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(6,1,1,5,'Botble\\Page\\Models\\Page','/homepage-5','fi fi-rr-home',5,'Home 5',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(7,1,1,6,'Botble\\Page\\Models\\Page','/homepage-6','fi fi-rr-home',6,'Home 6',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(8,1,0,8,'Botble\\Page\\Models\\Page','/companies',NULL,0,'Find a Job',NULL,'_self',1,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(9,1,8,NULL,NULL,'/jobs?layout=grid','fi fi-rr-briefcase',0,'Jobs Grid',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(10,1,8,NULL,NULL,'/jobs','fi fi-rr-briefcase',0,'Jobs List',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(11,1,8,NULL,NULL,'','fi fi-rr-briefcase',0,'Job Details',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(12,1,8,NULL,NULL,'','fi fi-rr-briefcase',0,'Job External',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(13,1,8,NULL,NULL,'','fi fi-rr-briefcase',0,'Job Hide Company',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(14,1,0,8,'Botble\\Page\\Models\\Page','/companies',NULL,0,'Companies',NULL,'_self',1,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(15,1,14,8,'Botble\\Page\\Models\\Page','/companies','fi fi-rr-briefcase',0,'Companies',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(16,1,14,NULL,NULL,'','fi fi-rr-info',0,'Company Details',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(17,1,0,9,'Botble\\Page\\Models\\Page','/candidates',NULL,0,'Candidates',NULL,'_self',1,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(18,1,17,9,'Botble\\Page\\Models\\Page','/candidates','fi fi-rr-user',0,'Candidates Grid',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(19,1,17,NULL,NULL,'','fi fi-rr-info',0,'Candidate Details',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(20,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(21,1,20,10,'Botble\\Page\\Models\\Page','/about-us','fi fi-rr-star',0,'About Us',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(22,1,20,11,'Botble\\Page\\Models\\Page','/pricing-plan','fi fi-rr-database',0,'Pricing Plan',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(23,1,20,10,'Botble\\Page\\Models\\Page','/about-us','fi fi-rr-paper-plane',0,'Contact Us',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(24,1,20,NULL,NULL,'/register','fi fi-rr-user-add',0,'Register',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(25,1,20,NULL,NULL,'/login','fi fi-rr-fingerprint',0,'Sign in',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(26,1,20,NULL,NULL,'/password/request','fi fi-rr-settings',0,'Reset Password',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(27,1,0,13,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(28,1,27,13,'Botble\\Page\\Models\\Page','/blog','fi fi-rr-edit',0,'Blog Grid',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(29,1,27,NULL,NULL,'','fi fi-rr-document-signed',0,'Blog Single',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(30,2,0,10,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(31,2,0,NULL,NULL,'#',NULL,0,'Our Team',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(32,2,0,NULL,NULL,'#',NULL,0,'Products',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(33,2,0,12,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(34,3,0,10,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Feature',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(35,3,0,11,'Botble\\Page\\Models\\Page','/pricing-plan',NULL,0,'Pricing',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(36,3,0,NULL,NULL,'#',NULL,0,'Credit',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(37,3,0,15,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQ',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(38,4,0,NULL,NULL,'#',NULL,0,'iOS',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(39,4,0,NULL,NULL,'#',NULL,0,'Android',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(40,4,0,NULL,NULL,'#',NULL,0,'Microsoft',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(41,4,0,NULL,NULL,'#',NULL,0,'Desktop',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(42,5,0,14,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Cookie Policy',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(43,5,0,17,'Botble\\Page\\Models\\Page','/terms',NULL,0,'Terms',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17'),(44,5,0,15,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQ',NULL,'_self',0,'2025-04-12 04:09:17','2025-04-12 04:09:17');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(2,'Resources','resources','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(3,'Community','community','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(4,'Quick links','quick-links','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(5,'More','more','published','2025-04-12 04:09:17','2025-04-12 04:09:17');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'background_breadcrumb','[\"pages\\/background-breadcrumb.png\"]',10,'Botble\\Page\\Models\\Page','2025-04-12 04:08:48','2025-04-12 04:08:48'),(2,'background_breadcrumb','[\"pages\\/background-breadcrumb.png\"]',12,'Botble\\Page\\Models\\Page','2025-04-12 04:08:48','2025-04-12 04:08:48'),(3,'cover_image','[\"news\\/cover-image1.png\"]',1,'Botble\\Blog\\Models\\Post','2025-04-12 04:08:49','2025-04-12 04:08:49'),(4,'cover_image','[\"news\\/cover-image2.png\"]',2,'Botble\\Blog\\Models\\Post','2025-04-12 04:08:49','2025-04-12 04:08:49'),(5,'cover_image','[\"news\\/cover-image3.png\"]',3,'Botble\\Blog\\Models\\Post','2025-04-12 04:08:49','2025-04-12 04:08:49'),(6,'icon_image','[\"general\\/content.png\"]',1,'Botble\\JobBoard\\Models\\Category','2025-04-12 04:08:53','2025-04-12 04:08:53'),(7,'job_category_image','[\"job-categories\\/img-cover-3.png\"]',1,'Botble\\JobBoard\\Models\\Category','2025-04-12 04:08:53','2025-04-12 04:08:53'),(8,'icon_image','[\"general\\/research.png\"]',2,'Botble\\JobBoard\\Models\\Category','2025-04-12 04:08:53','2025-04-12 04:08:53'),(9,'job_category_image','[\"job-categories\\/img-cover-3.png\"]',2,'Botble\\JobBoard\\Models\\Category','2025-04-12 04:08:53','2025-04-12 04:08:53'),(10,'icon_image','[\"general\\/marketing.png\"]',3,'Botble\\JobBoard\\Models\\Category','2025-04-12 04:08:54','2025-04-12 04:08:54'),(11,'job_category_image','[\"job-categories\\/img-cover-1.png\"]',3,'Botble\\JobBoard\\Models\\Category','2025-04-12 04:08:54','2025-04-12 04:08:54'),(12,'icon_image','[\"general\\/customer.png\"]',4,'Botble\\JobBoard\\Models\\Category','2025-04-12 04:08:54','2025-04-12 04:08:54'),(13,'job_category_image','[\"job-categories\\/img-cover-1.png\"]',4,'Botble\\JobBoard\\Models\\Category','2025-04-12 04:08:54','2025-04-12 04:08:54'),(14,'icon_image','[\"general\\/finance.png\"]',5,'Botble\\JobBoard\\Models\\Category','2025-04-12 04:08:54','2025-04-12 04:08:54'),(15,'job_category_image','[\"job-categories\\/img-cover-1.png\"]',5,'Botble\\JobBoard\\Models\\Category','2025-04-12 04:08:54','2025-04-12 04:08:54'),(16,'icon_image','[\"general\\/lightning.png\"]',6,'Botble\\JobBoard\\Models\\Category','2025-04-12 04:08:54','2025-04-12 04:08:54'),(17,'job_category_image','[\"job-categories\\/img-cover-1.png\"]',6,'Botble\\JobBoard\\Models\\Category','2025-04-12 04:08:54','2025-04-12 04:08:54'),(18,'icon_image','[\"general\\/human.png\"]',7,'Botble\\JobBoard\\Models\\Category','2025-04-12 04:08:54','2025-04-12 04:08:54'),(19,'job_category_image','[\"job-categories\\/img-cover-2.png\"]',7,'Botble\\JobBoard\\Models\\Category','2025-04-12 04:08:54','2025-04-12 04:08:54'),(20,'icon_image','[\"general\\/management.png\"]',8,'Botble\\JobBoard\\Models\\Category','2025-04-12 04:08:54','2025-04-12 04:08:54'),(21,'job_category_image','[\"job-categories\\/img-cover-3.png\"]',8,'Botble\\JobBoard\\Models\\Category','2025-04-12 04:08:54','2025-04-12 04:08:54'),(22,'icon_image','[\"general\\/retail.png\"]',9,'Botble\\JobBoard\\Models\\Category','2025-04-12 04:08:54','2025-04-12 04:08:54'),(23,'job_category_image','[\"job-categories\\/img-cover-3.png\"]',9,'Botble\\JobBoard\\Models\\Category','2025-04-12 04:08:54','2025-04-12 04:08:54'),(24,'icon_image','[\"general\\/security.png\"]',10,'Botble\\JobBoard\\Models\\Category','2025-04-12 04:08:54','2025-04-12 04:08:54'),(25,'job_category_image','[\"job-categories\\/img-cover-2.png\"]',10,'Botble\\JobBoard\\Models\\Category','2025-04-12 04:08:54','2025-04-12 04:08:54'),(26,'cover_image','[\"companies\\/company-cover-image.png\"]',1,'Botble\\JobBoard\\Models\\Company','2025-04-12 04:08:54','2025-04-12 04:08:54'),(27,'cover_image','[\"companies\\/company-cover-image.png\"]',2,'Botble\\JobBoard\\Models\\Company','2025-04-12 04:08:54','2025-04-12 04:08:54'),(28,'cover_image','[\"companies\\/company-cover-image.png\"]',3,'Botble\\JobBoard\\Models\\Company','2025-04-12 04:08:54','2025-04-12 04:08:54'),(29,'cover_image','[\"companies\\/company-cover-image.png\"]',4,'Botble\\JobBoard\\Models\\Company','2025-04-12 04:08:54','2025-04-12 04:08:54'),(30,'cover_image','[\"companies\\/company-cover-image.png\"]',5,'Botble\\JobBoard\\Models\\Company','2025-04-12 04:08:54','2025-04-12 04:08:54'),(31,'cover_image','[\"companies\\/company-cover-image.png\"]',6,'Botble\\JobBoard\\Models\\Company','2025-04-12 04:08:54','2025-04-12 04:08:54'),(32,'cover_image','[\"companies\\/company-cover-image.png\"]',7,'Botble\\JobBoard\\Models\\Company','2025-04-12 04:08:54','2025-04-12 04:08:54'),(33,'cover_image','[\"companies\\/company-cover-image.png\"]',8,'Botble\\JobBoard\\Models\\Company','2025-04-12 04:08:54','2025-04-12 04:08:54'),(34,'cover_image','[\"companies\\/company-cover-image.png\"]',9,'Botble\\JobBoard\\Models\\Company','2025-04-12 04:08:54','2025-04-12 04:08:54'),(35,'cover_image','[\"companies\\/company-cover-image.png\"]',10,'Botble\\JobBoard\\Models\\Company','2025-04-12 04:08:54','2025-04-12 04:08:54'),(36,'cover_image','[\"companies\\/company-cover-image.png\"]',11,'Botble\\JobBoard\\Models\\Company','2025-04-12 04:08:54','2025-04-12 04:08:54'),(37,'cover_image','[\"companies\\/company-cover-image.png\"]',12,'Botble\\JobBoard\\Models\\Company','2025-04-12 04:08:54','2025-04-12 04:08:54'),(38,'cover_image','[\"companies\\/company-cover-image.png\"]',13,'Botble\\JobBoard\\Models\\Company','2025-04-12 04:08:54','2025-04-12 04:08:54'),(39,'cover_image','[\"companies\\/company-cover-image.png\"]',14,'Botble\\JobBoard\\Models\\Company','2025-04-12 04:08:54','2025-04-12 04:08:54'),(40,'cover_image','[\"companies\\/company-cover-image.png\"]',15,'Botble\\JobBoard\\Models\\Company','2025-04-12 04:08:54','2025-04-12 04:08:54'),(41,'cover_image','[\"companies\\/company-cover-image.png\"]',16,'Botble\\JobBoard\\Models\\Company','2025-04-12 04:08:54','2025-04-12 04:08:54'),(42,'cover_image','[\"companies\\/company-cover-image.png\"]',17,'Botble\\JobBoard\\Models\\Company','2025-04-12 04:08:54','2025-04-12 04:08:54'),(43,'cover_image','[\"companies\\/company-cover-image.png\"]',18,'Botble\\JobBoard\\Models\\Company','2025-04-12 04:08:54','2025-04-12 04:08:54'),(44,'cover_image','[\"companies\\/company-cover-image.png\"]',19,'Botble\\JobBoard\\Models\\Company','2025-04-12 04:08:54','2025-04-12 04:08:54'),(45,'cover_image','[\"companies\\/company-cover-image.png\"]',20,'Botble\\JobBoard\\Models\\Company','2025-04-12 04:08:54','2025-04-12 04:08:54'),(46,'featured_image','[\"jobs\\/img1.png\"]',1,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(47,'featured_image','[\"jobs\\/img2.png\"]',2,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(48,'featured_image','[\"jobs\\/img3.png\"]',3,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(49,'featured_image','[\"jobs\\/img4.png\"]',4,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(50,'featured_image','[\"jobs\\/img5.png\"]',5,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(51,'featured_image','[\"jobs\\/img6.png\"]',6,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(52,'featured_image','[\"jobs\\/img7.png\"]',7,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(53,'featured_image','[\"jobs\\/img8.png\"]',8,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(54,'featured_image','[\"jobs\\/img9.png\"]',9,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(55,'featured_image','[\"jobs\\/img9.png\"]',10,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(56,'featured_image','[\"jobs\\/img3.png\"]',11,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(57,'featured_image','[\"jobs\\/img4.png\"]',12,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(58,'featured_image','[\"jobs\\/img1.png\"]',13,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(59,'featured_image','[\"jobs\\/img7.png\"]',14,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(60,'featured_image','[\"jobs\\/img8.png\"]',15,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(61,'featured_image','[\"jobs\\/img3.png\"]',16,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(62,'featured_image','[\"jobs\\/img2.png\"]',17,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(63,'featured_image','[\"jobs\\/img2.png\"]',18,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(64,'featured_image','[\"jobs\\/img2.png\"]',19,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(65,'featured_image','[\"jobs\\/img2.png\"]',20,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(66,'featured_image','[\"jobs\\/img9.png\"]',21,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(67,'featured_image','[\"jobs\\/img5.png\"]',22,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(68,'featured_image','[\"jobs\\/img4.png\"]',23,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(69,'featured_image','[\"jobs\\/img7.png\"]',24,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(70,'featured_image','[\"jobs\\/img6.png\"]',25,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(71,'featured_image','[\"jobs\\/img9.png\"]',26,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(72,'featured_image','[\"jobs\\/img8.png\"]',27,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(73,'featured_image','[\"jobs\\/img4.png\"]',28,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(74,'featured_image','[\"jobs\\/img9.png\"]',29,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(75,'featured_image','[\"jobs\\/img3.png\"]',30,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(76,'featured_image','[\"jobs\\/img9.png\"]',31,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(77,'featured_image','[\"jobs\\/img7.png\"]',32,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(78,'featured_image','[\"jobs\\/img3.png\"]',33,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(79,'featured_image','[\"jobs\\/img2.png\"]',34,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(80,'featured_image','[\"jobs\\/img3.png\"]',35,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(81,'featured_image','[\"jobs\\/img9.png\"]',36,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(82,'featured_image','[\"jobs\\/img8.png\"]',37,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(83,'featured_image','[\"jobs\\/img3.png\"]',38,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(84,'featured_image','[\"jobs\\/img4.png\"]',39,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(85,'featured_image','[\"jobs\\/img6.png\"]',40,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(86,'featured_image','[\"jobs\\/img2.png\"]',41,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(87,'featured_image','[\"jobs\\/img2.png\"]',42,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(88,'featured_image','[\"jobs\\/img7.png\"]',43,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(89,'featured_image','[\"jobs\\/img9.png\"]',44,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(90,'featured_image','[\"jobs\\/img7.png\"]',45,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:55','2025-04-12 04:08:55'),(91,'featured_image','[\"jobs\\/img7.png\"]',46,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:56','2025-04-12 04:08:56'),(92,'featured_image','[\"jobs\\/img7.png\"]',47,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:56','2025-04-12 04:08:56'),(93,'featured_image','[\"jobs\\/img7.png\"]',48,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:56','2025-04-12 04:08:56'),(94,'featured_image','[\"jobs\\/img2.png\"]',49,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:56','2025-04-12 04:08:56'),(95,'featured_image','[\"jobs\\/img9.png\"]',50,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:56','2025-04-12 04:08:56'),(96,'featured_image','[\"jobs\\/img3.png\"]',51,'Botble\\JobBoard\\Models\\Job','2025-04-12 04:08:56','2025-04-12 04:08:56'),(97,'cover_image','[\"covers\\/3.png\"]',1,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:08:56','2025-04-12 04:08:56'),(98,'cover_image','[\"covers\\/1.png\"]',2,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:08:57','2025-04-12 04:08:57'),(99,'cover_image','[\"covers\\/1.png\"]',3,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:08:57','2025-04-12 04:08:57'),(100,'cover_image','[\"covers\\/3.png\"]',4,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:08:57','2025-04-12 04:08:57'),(101,'cover_image','[\"covers\\/1.png\"]',5,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:08:57','2025-04-12 04:08:57'),(102,'cover_image','[\"covers\\/3.png\"]',6,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:08:57','2025-04-12 04:08:57'),(103,'cover_image','[\"covers\\/2.png\"]',7,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:08:58','2025-04-12 04:08:58'),(104,'cover_image','[\"covers\\/2.png\"]',8,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:08:58','2025-04-12 04:08:58'),(105,'cover_image','[\"covers\\/1.png\"]',9,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:08:58','2025-04-12 04:08:58'),(106,'cover_image','[\"covers\\/3.png\"]',10,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:08:58','2025-04-12 04:08:58'),(107,'cover_image','[\"covers\\/3.png\"]',11,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:08:58','2025-04-12 04:08:58'),(108,'cover_image','[\"covers\\/2.png\"]',12,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:08:59','2025-04-12 04:08:59'),(109,'cover_image','[\"covers\\/2.png\"]',13,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:08:59','2025-04-12 04:08:59'),(110,'cover_image','[\"covers\\/1.png\"]',14,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:08:59','2025-04-12 04:08:59'),(111,'cover_image','[\"covers\\/2.png\"]',15,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:08:59','2025-04-12 04:08:59'),(112,'cover_image','[\"covers\\/2.png\"]',16,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:08:59','2025-04-12 04:08:59'),(113,'cover_image','[\"covers\\/1.png\"]',17,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:00','2025-04-12 04:09:00'),(114,'cover_image','[\"covers\\/3.png\"]',18,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:00','2025-04-12 04:09:00'),(115,'cover_image','[\"covers\\/3.png\"]',19,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:00','2025-04-12 04:09:00'),(116,'cover_image','[\"covers\\/2.png\"]',20,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:00','2025-04-12 04:09:00'),(117,'cover_image','[\"covers\\/1.png\"]',21,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:00','2025-04-12 04:09:00'),(118,'cover_image','[\"covers\\/1.png\"]',22,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:01','2025-04-12 04:09:01'),(119,'cover_image','[\"covers\\/3.png\"]',23,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:01','2025-04-12 04:09:01'),(120,'cover_image','[\"covers\\/3.png\"]',24,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:01','2025-04-12 04:09:01'),(121,'cover_image','[\"covers\\/1.png\"]',25,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:01','2025-04-12 04:09:01'),(122,'cover_image','[\"covers\\/2.png\"]',26,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:01','2025-04-12 04:09:01'),(123,'cover_image','[\"covers\\/2.png\"]',27,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:02','2025-04-12 04:09:02'),(124,'cover_image','[\"covers\\/2.png\"]',28,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:02','2025-04-12 04:09:02'),(125,'cover_image','[\"covers\\/2.png\"]',29,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:02','2025-04-12 04:09:02'),(126,'cover_image','[\"covers\\/2.png\"]',30,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:02','2025-04-12 04:09:02'),(127,'cover_image','[\"covers\\/3.png\"]',31,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:02','2025-04-12 04:09:02'),(128,'cover_image','[\"covers\\/2.png\"]',32,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:03','2025-04-12 04:09:03'),(129,'cover_image','[\"covers\\/3.png\"]',33,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:03','2025-04-12 04:09:03'),(130,'cover_image','[\"covers\\/3.png\"]',34,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:03','2025-04-12 04:09:03'),(131,'cover_image','[\"covers\\/3.png\"]',35,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:03','2025-04-12 04:09:03'),(132,'cover_image','[\"covers\\/3.png\"]',36,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:03','2025-04-12 04:09:03'),(133,'cover_image','[\"covers\\/3.png\"]',37,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:04','2025-04-12 04:09:04'),(134,'cover_image','[\"covers\\/3.png\"]',38,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:04','2025-04-12 04:09:04'),(135,'cover_image','[\"covers\\/1.png\"]',39,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:04','2025-04-12 04:09:04'),(136,'cover_image','[\"covers\\/2.png\"]',40,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:04','2025-04-12 04:09:04'),(137,'cover_image','[\"covers\\/3.png\"]',41,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:05','2025-04-12 04:09:05'),(138,'cover_image','[\"covers\\/1.png\"]',42,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:05','2025-04-12 04:09:05'),(139,'cover_image','[\"covers\\/3.png\"]',43,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:05','2025-04-12 04:09:05'),(140,'cover_image','[\"covers\\/1.png\"]',44,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:05','2025-04-12 04:09:05'),(141,'cover_image','[\"covers\\/3.png\"]',45,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:05','2025-04-12 04:09:05'),(142,'cover_image','[\"covers\\/3.png\"]',46,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:06','2025-04-12 04:09:06'),(143,'cover_image','[\"covers\\/1.png\"]',47,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:06','2025-04-12 04:09:06'),(144,'cover_image','[\"covers\\/1.png\"]',48,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:06','2025-04-12 04:09:06'),(145,'cover_image','[\"covers\\/1.png\"]',49,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:06','2025-04-12 04:09:06'),(146,'cover_image','[\"covers\\/3.png\"]',50,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:06','2025-04-12 04:09:06'),(147,'cover_image','[\"covers\\/3.png\"]',51,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:07','2025-04-12 04:09:07'),(148,'cover_image','[\"covers\\/1.png\"]',52,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:07','2025-04-12 04:09:07'),(149,'cover_image','[\"covers\\/3.png\"]',53,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:07','2025-04-12 04:09:07'),(150,'cover_image','[\"covers\\/3.png\"]',54,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:07','2025-04-12 04:09:07'),(151,'cover_image','[\"covers\\/2.png\"]',55,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:07','2025-04-12 04:09:07'),(152,'cover_image','[\"covers\\/2.png\"]',56,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:08','2025-04-12 04:09:08'),(153,'cover_image','[\"covers\\/1.png\"]',57,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:08','2025-04-12 04:09:08'),(154,'cover_image','[\"covers\\/2.png\"]',58,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:08','2025-04-12 04:09:08'),(155,'cover_image','[\"covers\\/2.png\"]',59,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:08','2025-04-12 04:09:08'),(156,'cover_image','[\"covers\\/2.png\"]',60,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:08','2025-04-12 04:09:08'),(157,'cover_image','[\"covers\\/2.png\"]',61,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:09','2025-04-12 04:09:09'),(158,'cover_image','[\"covers\\/3.png\"]',62,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:09','2025-04-12 04:09:09'),(159,'cover_image','[\"covers\\/1.png\"]',63,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:09','2025-04-12 04:09:09'),(160,'cover_image','[\"covers\\/1.png\"]',64,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:09','2025-04-12 04:09:09'),(161,'cover_image','[\"covers\\/2.png\"]',65,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:09','2025-04-12 04:09:09'),(162,'cover_image','[\"covers\\/2.png\"]',66,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:10','2025-04-12 04:09:10'),(163,'cover_image','[\"covers\\/3.png\"]',67,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:10','2025-04-12 04:09:10'),(164,'cover_image','[\"covers\\/2.png\"]',68,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:10','2025-04-12 04:09:10'),(165,'cover_image','[\"covers\\/2.png\"]',69,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:10','2025-04-12 04:09:10'),(166,'cover_image','[\"covers\\/2.png\"]',70,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:10','2025-04-12 04:09:10'),(167,'cover_image','[\"covers\\/2.png\"]',71,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:11','2025-04-12 04:09:11'),(168,'cover_image','[\"covers\\/3.png\"]',72,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:11','2025-04-12 04:09:11'),(169,'cover_image','[\"covers\\/3.png\"]',73,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:11','2025-04-12 04:09:11'),(170,'cover_image','[\"covers\\/2.png\"]',74,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:11','2025-04-12 04:09:11'),(171,'cover_image','[\"covers\\/3.png\"]',75,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:11','2025-04-12 04:09:11'),(172,'cover_image','[\"covers\\/2.png\"]',76,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:12','2025-04-12 04:09:12'),(173,'cover_image','[\"covers\\/1.png\"]',77,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:12','2025-04-12 04:09:12'),(174,'cover_image','[\"covers\\/3.png\"]',78,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:12','2025-04-12 04:09:12'),(175,'cover_image','[\"covers\\/1.png\"]',79,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:12','2025-04-12 04:09:12'),(176,'cover_image','[\"covers\\/2.png\"]',80,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:12','2025-04-12 04:09:12'),(177,'cover_image','[\"covers\\/2.png\"]',81,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:13','2025-04-12 04:09:13'),(178,'cover_image','[\"covers\\/2.png\"]',82,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:13','2025-04-12 04:09:13'),(179,'cover_image','[\"covers\\/1.png\"]',83,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:13','2025-04-12 04:09:13'),(180,'cover_image','[\"covers\\/3.png\"]',84,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:13','2025-04-12 04:09:13'),(181,'cover_image','[\"covers\\/2.png\"]',85,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:13','2025-04-12 04:09:13'),(182,'cover_image','[\"covers\\/1.png\"]',86,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:14','2025-04-12 04:09:14'),(183,'cover_image','[\"covers\\/1.png\"]',87,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:14','2025-04-12 04:09:14'),(184,'cover_image','[\"covers\\/2.png\"]',88,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:14','2025-04-12 04:09:14'),(185,'cover_image','[\"covers\\/2.png\"]',89,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:14','2025-04-12 04:09:14'),(186,'cover_image','[\"covers\\/1.png\"]',90,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:14','2025-04-12 04:09:14'),(187,'cover_image','[\"covers\\/2.png\"]',91,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:15','2025-04-12 04:09:15'),(188,'cover_image','[\"covers\\/3.png\"]',92,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:15','2025-04-12 04:09:15'),(189,'cover_image','[\"covers\\/1.png\"]',93,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:15','2025-04-12 04:09:15'),(190,'cover_image','[\"covers\\/3.png\"]',94,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:15','2025-04-12 04:09:15'),(191,'cover_image','[\"covers\\/1.png\"]',95,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:15','2025-04-12 04:09:15'),(192,'cover_image','[\"covers\\/2.png\"]',96,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:16','2025-04-12 04:09:16'),(193,'cover_image','[\"covers\\/2.png\"]',97,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:16','2025-04-12 04:09:16'),(194,'cover_image','[\"covers\\/1.png\"]',98,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:16','2025-04-12 04:09:16'),(195,'cover_image','[\"covers\\/3.png\"]',99,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:16','2025-04-12 04:09:16'),(196,'cover_image','[\"covers\\/2.png\"]',100,'Botble\\JobBoard\\Models\\Account','2025-04-12 04:09:17','2025-04-12 04:09:17');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000001_create_cache_table',1),(2,'2013_04_09_032329_create_base_tables',1),(3,'2013_04_09_062329_create_revisions_table',1),(4,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_reset_tokens_table',1),(6,'2016_06_10_230148_create_acl_tables',1),(7,'2016_06_14_230857_create_menus_table',1),(8,'2016_06_28_221418_create_pages_table',1),(9,'2016_10_05_074239_create_setting_table',1),(10,'2016_11_28_032840_create_dashboard_widget_tables',1),(11,'2016_12_16_084601_create_widgets_table',1),(12,'2017_05_09_070343_create_media_tables',1),(13,'2017_11_03_070450_create_slug_table',1),(14,'2019_01_05_053554_create_jobs_table',1),(15,'2019_08_19_000000_create_failed_jobs_table',1),(16,'2019_12_14_000001_create_personal_access_tokens_table',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_09_01_000001_create_admin_notifications_tables',1),(22,'2022_10_14_024629_drop_column_is_featured',1),(23,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(24,'2022_12_02_093615_update_slug_index_columns',1),(25,'2023_01_30_024431_add_alt_to_media_table',1),(26,'2023_02_16_042611_drop_table_password_resets',1),(27,'2023_04_10_103353_fix_social_links',1),(28,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(29,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(30,'2023_07_19_152743_migrate_old_city_state_image',1),(31,'2023_08_21_090810_make_page_content_nullable',1),(32,'2023_09_14_021936_update_index_for_slugs_table',1),(33,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(34,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(35,'2023_12_20_034718_update_invoice_amount',1),(36,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(37,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(38,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(39,'2024_07_12_100000_change_random_hash_for_media',1),(40,'2024_09_30_024515_create_sessions_table',1),(41,'2020_11_18_150916_ads_create_ads_table',2),(42,'2021_12_02_035301_add_ads_translations_table',2),(43,'2023_04_17_062645_add_open_in_new_tab',2),(44,'2023_11_07_023805_add_tablet_mobile_image',2),(45,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',2),(46,'2024_04_27_100730_improve_analytics_setting',3),(47,'2015_06_29_025744_create_audit_history',4),(48,'2023_11_14_033417_change_request_column_in_table_audit_histories',4),(49,'2025_04_03_000001_add_user_type_to_audit_histories_table',4),(50,'2015_06_18_033822_create_blog_table',5),(51,'2021_02_16_092633_remove_default_value_for_author_type',5),(52,'2021_12_03_030600_create_blog_translations',5),(53,'2022_04_19_113923_add_index_to_table_posts',5),(54,'2023_08_29_074620_make_column_author_id_nullable',5),(55,'2024_07_30_091615_fix_order_column_in_categories_table',5),(56,'2025_01_06_033807_add_default_value_for_categories_author_type',5),(57,'2016_06_17_091537_create_contacts_table',6),(58,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(59,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',6),(60,'2024_03_25_000001_update_captcha_settings_for_contact',6),(61,'2024_04_19_063914_create_custom_fields_table',6),(62,'2018_07_09_221238_create_faq_table',7),(63,'2021_12_03_082134_create_faq_translations',7),(64,'2023_11_17_063408_add_description_column_to_faq_categories_table',7),(65,'2016_10_13_150201_create_galleries_table',8),(66,'2021_12_03_082953_create_gallery_translations',8),(67,'2022_04_30_034048_create_gallery_meta_translations_table',8),(68,'2023_08_29_075308_make_column_user_id_nullable',8),(69,'2022_06_20_093259_create_job_board_tables',9),(70,'2022_09_12_061845_update_table_activity_logs',9),(71,'2022_09_13_042407_create_table_jb_jobs_types',9),(72,'2022_09_15_030017_update_jb_jobs_table',9),(73,'2022_09_15_094840_add_job_employer_colleagues',9),(74,'2022_09_27_000001_create_jb_invoices_tables',9),(75,'2022_09_30_144924_update_jobs_table',9),(76,'2022_10_04_085631_add_company_logo_to_jb_invoices',9),(77,'2022_10_10_030606_create_reviews_table',9),(78,'2022_11_09_065056_add_missing_jobs_page',9),(79,'2022_11_10_065056_add_columns_to_accounts',9),(80,'2022_11_16_034756_add_column_cover_letter_to_accounts',9),(81,'2022_11_29_304756_create_jb_account_favorite_skills_table',9),(82,'2022_11_29_304757_create_jb_account_favorite_tags',9),(83,'2022_12_26_304758_create_table_jb_experiences',9),(84,'2022_12_26_304759_create_table_jb_education',9),(85,'2023_01_31_023233_create_jb_custom_fields_table',9),(86,'2023_02_06_024257_add_package_translations',9),(87,'2023_02_08_062457_add_custom_fields_translation_table',9),(88,'2023_04_03_126927_add_parent_id_to_jb_categories_table',9),(89,'2023_05_04_000001_add_hide_cv_to_jb_accounts_table',9),(90,'2023_05_09_062031_unique_reviews_table',9),(91,'2023_05_13_180010_make_jb_reviews_table_morphable',9),(92,'2023_05_16_113126_fix_account_confirmed_at',9),(93,'2023_07_03_135746_add_zip_code_to_jb_jobs_table',9),(94,'2023_07_06_022808_create_jb_coupons_table',9),(95,'2023_07_14_045213_add_coupon_code_column_to_jb_invoices_table',9),(96,'2024_01_31_022842_add_description_to_jb_packages_table',9),(97,'2024_02_01_080657_add_tax_id_column_to_jb_companies_table',9),(98,'2024_05_02_030658_add_field_unique_id_to_jb_accounts_and_jb_companies_table',9),(99,'2024_07_22_122219_create_jb_account_languages_table',9),(100,'2024_09_06_070120_update_jb_packages_table',9),(101,'2024_09_23_075542_add_accounts_translations',9),(102,'2024_10_28_062842_add_unique_field_to_jb_jobs_table',9),(103,'2025_01_07_020057_create_jb_companies_translations',9),(104,'2025_01_14_035040_add_features_to_packages_translations',9),(105,'2025_01_25_081129_add_address_to_jobs_translations',9),(106,'2025_02_03_035948_update_field_apply_url_of_jb_jobs_table',9),(107,'2016_10_03_032336_create_languages_table',10),(108,'2023_09_14_022423_add_index_for_language_table',10),(109,'2021_10_25_021023_fix-priority-load-for-language-advanced',11),(110,'2021_12_03_075608_create_page_translations',11),(111,'2023_07_06_011444_create_slug_translations_table',11),(112,'2019_11_18_061011_create_country_table',12),(113,'2021_12_03_084118_create_location_translations',12),(114,'2021_12_03_094518_migrate_old_location_data',12),(115,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',12),(116,'2022_01_16_085908_improve_plugin_location',12),(117,'2022_08_04_052122_delete_location_backup_tables',12),(118,'2023_04_23_061847_increase_state_translations_abbreviation_column',12),(119,'2023_07_26_041451_add_more_columns_to_location_table',12),(120,'2023_07_27_041451_add_more_columns_to_location_translation_table',12),(121,'2023_08_15_073307_drop_unique_in_states_cities_translations',12),(122,'2023_10_21_065016_make_state_id_in_table_cities_nullable',12),(123,'2024_08_17_094600_add_image_into_countries',12),(124,'2025_01_08_093652_add_zip_code_to_cities',12),(125,'2017_10_24_154832_create_newsletter_table',13),(126,'2024_03_25_000001_update_captcha_settings_for_newsletter',13),(127,'2017_05_18_080441_create_payment_tables',14),(128,'2021_03_27_144913_add_customer_type_into_table_payments',14),(129,'2021_05_24_034720_make_column_currency_nullable',14),(130,'2021_08_09_161302_add_metadata_column_to_payments_table',14),(131,'2021_10_19_020859_update_metadata_field',14),(132,'2022_06_28_151901_activate_paypal_stripe_plugin',14),(133,'2022_07_07_153354_update_charge_id_in_table_payments',14),(134,'2024_07_04_083133_create_payment_logs_table',14),(135,'2025_04_08_040931_create_social_logins_table',15),(136,'2022_11_02_092723_team_create_team_table',16),(137,'2023_08_11_094574_update_team_table',16),(138,'2023_11_30_085354_add_missing_description_to_team',16),(139,'2018_07_09_214610_create_testimonial_table',17),(140,'2021_12_03_083642_create_testimonials_translations',17),(141,'2016_10_07_193005_create_translations_table',18),(142,'2023_12_12_105220_drop_translations_table',18);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage 1','<div>[search-box title=\"The Easiest Way to Get Your New Job\" highlight_text=\"Easiest Way\" description=\"Each month, more than 3 million job seekers turn to website in their search for work, making over 140,000 applications every single day\" banner_image_1=\"pages/banner1.png\" icon_top_banner=\"pages/icon-top-banner.png\" banner_image_2=\"pages/banner2.png\" icon_bottom_banner=\"pages/icon-bottom-banner.png\" style=\"style-1\" trending_keywords=\"Design,Development,Manager,Senior\"][/search-box]</div><div>[featured-job-categories title=\"Browse by category\" subtitle=\"Find the job that’s perfect for you. about 800+ new jobs everyday\"][/featured-job-categories]</div><div>[apply-banner subtitle=\"Let’s Work Together &lt;br\\&gt;&amp; Explore Opportunities\" highlight_sub_title_text=\"Work, Explore\" title_1=\"We are\" title_2=\"HIRING\" button_apply_text=\"Apply\" button_apply_link=\"#\" apply_image_left=\"pages/bg-left-hiring.png\" apply_image_right=\"pages/bg-right-hiring.png\"][/apply-banner]</div><div>[job-of-the-day title=\"Jobs of the day\" subtitle=\"Search and connect with the right candidates faster.\" job_categories=\"4,9,1,3,5,7\" style=\"style-1\"][/job-of-the-day]</div><div>[job-grid title=\"Find The One That’s Right For You\" high_light_title_text=\"Right\" subtitle=\"Millions Of Jobs.\" description=\"Search all the open positions on the web. Get your own personalized salary estimate. Read reviews on over 600,000 companies worldwide. The right job is out there.\" image_job_1=\"pages/img-chart.png\" image_job_2=\"pages/controlcard.png\" image=\"pages/img1.png\" button_text=\"Search jobs\" button_url=\"#\" link_text=\"Learn more\" link_text_url=\"#\"][/job-grid]</div><div>[top-companies title=\"Top Recruiters\" description=\"Discover your next career move, freelance gig, or internship\"][/top-companies]</div><div>[job-by-location title=\"Jobs by Location\" description=\"Find your favourite jobs and get the benefits of yourself\" city=\"1,2,3,4,5,6\"][/job-by-location]</div><div>[news-and-blogs title=\"News and Blog\" subtitle=\"Get the latest news, updates and tips\"][/news-and-blogs]</div>',1,NULL,'homepage',NULL,'published','2025-04-12 04:08:48','2025-04-12 04:08:48'),(2,'Homepage 2','<div>[search-box subtitle=\"We have 150,000+ live jobs\" title=\"The #1 Job Board for Hiring or Find your next job\" highlight_text=\"Job Board for\" description=\"Each month, more than 3 million job seekers turn to website in their search for work, making over 140,000 applications every single day\" counter_title_1=\"Daily Jobs Posted\" counter_number_1=\"265\" counter_title_2=\"Recruiters\" counter_number_2=\"17\" counter_title_3=\"Freelancers\" counter_number_3=\"15\" counter_title_4=\"Blog Tips\" counter_number_4=\"28\" background_image=\"pages/banner-section-search-box.png\" style=\"style-2\" trending_keywords=\"Design,Development,Manager,Senior\"][/search-box]</div><div>[job-of-the-day title=\"Jobs of the day\" subtitle=\"Search and connect with the right candidates faster.\" job_categories=\"1,2,5,4,7,8\" style=\"style-2\"][/job-of-the-day]</div><div>[popular-category title=\"Popular category\" subtitle=\"Search and connect with the right candidates faster.\"][/popular-category]</div><div>[job-by-location title=\"Jobs by Location\" description=\"Find your favourite jobs and get the benefits of yourself\" city=\"12,46,69,111,121,116,62\" style=\"style-2\"][/job-by-location]</div><div>[counter-section counter_title_1=\"Completed Cases\" counter_description_1=\"We always provide people a complete solution upon focused of any business\" counter_number_1=\"1000\" counter_title_2=\"Our Office\" counter_description_2=\"We always provide people a complete solution upon focused of any business\" counter_number_2=\"1\" counter_title_3=\"Skilled People\" counter_description_3=\"We always provide people a complete solution upon focused of any business\" counter_number_3=\"6\" counter_title_4=\"Happy Clients\" counter_description_4=\"We always provide people a complete solution upon focused of any business\" counter_number_4=\"2\"][/counter-section]</div><div>[top-companies title=\"Top Recruiters\" description=\"Discover your next career move, freelance gig, or internship\" style=\"style-2\"][/top-companies]</div><div>[advertisement-banner first_title=\"Job Tools Services\" first_description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam laoreet rutrum quam, id faucibus erat interdum a. Curabitur eget tortor a nulla interdum semper.\" load_more_first_content_text=\"Find Out More\" load_more_link_first_content=\"#\" image_of_first_content=\"pages/job-tools.png\" second_title=\"Planning a Job?\" second_description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam laoreet rutrum quam, id faucibus erat interdum a. Curabitur eget tortor a nulla interdum semper.\" load_more_second_content_text=\"Find Out More\" load_more_link_second_content=\"#\" image_of_second_content=\"pages/planning-job.png\"][/advertisement-banner]</div><div>[news-and-blogs title=\"News and Blog\" subtitle=\"Get the latest news, updates and tips\" button_text=\"Load More Posts\" button_link=\"#\" style=\"style-2\"][/news-and-blogs]</div>',1,NULL,'homepage',NULL,'published','2025-04-12 04:08:48','2025-04-12 04:08:48'),(3,'Homepage 3','<div>[search-box title=\"The #1 Job Board for Hiring or Find your next job\" highlight_text=\"Job Board for\" description=\"Each month, more than 3 million job seekers turn to website in their search for work, making over 140,000 applications every single day\" style=\"style-3\" trending_keywords=\"Design,Development,Manager,Senior\"][/search-box]</div><div>[job-of-the-day title=\"Jobs of the day\" subtitle=\"Search and connect with the right candidates faster.\" job_categories=\"1,2,5,4,7,8\" style=\"style-3\"][/job-of-the-day]</div><div>[top-candidates title=\"Top Candidates\" description=\"Jobs is a curated job board of the best jobs for developers, designers and marketers in the tech industry.\" limit=\"8\" style=\"style-3\"][/top-candidates]</div><div>[top-companies title=\"Top Recruiters\" description=\"Discover your next career move, freelance gig, or internship\" style=\"style-3\"][/top-companies]</div><div>[apply-banner subtitle=\"Let’s Work Together &lt;br\\&gt;&amp; Explore Opportunities\" highlight_sub_title_text=\"Work, Explore\" title_1=\"We are\" title_2=\"HIRING\" button_apply_text=\"Apply\" button_apply_link=\"#\" apply_image_left=\"pages/bg-left-hiring.png\" apply_image_right=\"pages/bg-right-hiring.png\" style=\"style-3\"][/apply-banner]</div><div>[our-partners title=\"Trusted by\" name_1=\"Asus\" url_1=\"https://www.asus.com\" image_1=\"our-partners/asus.png\" name_2=\"Dell\" url_2=\"https://www.dell.com\" image_2=\"our-partners/dell.png\" name_3=\"Microsoft\" url_3=\"https://www.microsoft.com\" image_3=\"our-partners/microsoft.png\" name_4=\"Acer\" url_4=\"https://www.acer.com\" image_4=\"our-partners/acer.png\" name_5=\"Nokia\" url_5=\"https://www.nokia.com\" image_5=\"our-partners/nokia.png\"][/our-partners]</div><div>[news-and-blogs title=\"News and Blog\" subtitle=\"Get the latest news, updates and tips\" button_text=\"Load More Posts\" button_link=\"#\" style=\"style-3\"][/news-and-blogs]</div>',1,NULL,'homepage',NULL,'published','2025-04-12 04:08:48','2025-04-12 04:08:48'),(4,'Homepage 4','<div>[search-box title=\"Get The Right Job You Deserve\" highlight_text=\"Right Job\" banner_image_1=\"pages/home-page-4-banner.png\" style=\"style-1\" trending_keywords=\"Designer, Web, IOS, Developer, PHP, Senior, Engineer\" background_color=\"#000\"][/search-box]</div><div>[job-of-the-day title=\"Latest Jobs Post\" subtitle=\"Explore the different types of available jobs to apply discover which is right for you.\" job_categories=\"1,2,3,4,5,6,8,7\" style=\"style-3\"][/job-of-the-day]</div><div>[featured-job-categories title=\"Browse by category\" subtitle=\"Find the job that’s perfect for you. about 800+ new jobs everyday\" limit_category=\"10\" background_image=\"pages/bg-cat.png\" style=\"style-2\"][/featured-job-categories]</div><div>[[testimonials title=\"See Some Words\" description=\"Thousands of employee get their ideal jobs and feed back to us!\" style=\"style-2\"][/testimonials]</div><div>[our-partners title=\"Trusted by\" name_1=\"Asus\" url_1=\"https://www.asus.com\" image_1=\"our-partners/asus.png\" name_2=\"Dell\" url_2=\"https://www.dell.com\" image_2=\"our-partners/dell.png\" name_3=\"Microsoft\" url_3=\"https://www.microsoft.com\" image_3=\"our-partners/microsoft.png\" name_4=\"Acer\" url_4=\"https://www.acer.com\" image_4=\"our-partners/acer.png\" name_5=\"Nokia\" url_5=\"https://www.nokia.com\" image_5=\"our-partners/nokia.png\"][/our-partners]</div><div>[popular-category title=\"Popular category\" subtitle=\"Search and connect with the right candidates faster.\"][/popular-category]</div><div>[job-by-location title=\"Jobs by Location\" description=\"Find your favourite jobs and get the benefits of yourself\" city=\"12,46,69,111,121,116,62\" style=\"style-2\"][/job-by-location]</div><div>[news-and-blogs title=\"News and Blog\" subtitle=\"Get the latest news, updates and tips\" button_text=\"Load More Posts\" button_link=\"#\"][/news-and-blogs]</div>',1,NULL,'homepage',NULL,'published','2025-04-12 04:08:48','2025-04-12 04:08:48'),(5,'Homepage 5','<div>[search-box title=\"Find Jobs, &#x3C;br&#x3E; Hire Creatives\" description=\"Each month, more than 3 million job seekers turn to website in their search for work, making over 140,000 applications every single day\" banner_image_1=\"pages/banner1.png\" banner_image_2=\"pages/banner2.png\" banner_image_3=\"pages/banner3.png\" banner_image_4=\"pages/banner4.png\" banner_image_5=\"pages/banner5.png\" banner_image_6=\"pages/banner6.png\" style=\"style-5\"][/search-box]</div><div>[counter-section counter_title_1=\"Completed Cases\" counter_description_1=\"We always provide people a complete solution upon focused of any business\" counter_number_1=\"1000\" counter_title_2=\"Our Office\" counter_description_2=\"We always provide people a complete solution upon focused of any business\" counter_number_2=\"1\" counter_title_3=\"Skilled People\" counter_description_3=\"We always provide people a complete solution upon focused of any business\" counter_number_3=\"6\" counter_title_4=\"Happy Clients\" counter_description_4=\"We always provide people a complete solution upon focused of any business\" counter_number_4=\"2\"][/counter-section]</div><div>[popular-category title=\"Explore the Marketplace\" subtitle=\"Search and connect with the right candidates faster. Tell us what you’ve looking for and we’ll get to work for you.\" style=\"style-5\"][/popular-category]</div><div>[job-of-the-day title=\"Latest Jobs Post\" subtitle=\"Explore the different types of available jobs to apply &#x3C;br&#x3E; discover which is right for you.\" job_categories=\"1,2,5,4,7,8\" style=\"style-2\"][/job-of-the-day]</div><div>[job-grid style=\"style-2\" title=\"Create Your Personal Account Profile\" subtitle=\"Create Profile\" description=\"Work Profile is a personality assessment that measures an individual\'s work personality through their workplace traits, social and emotional traits; as well as the values and aspirations that drive them forward.\" image=\"pages/img-profile.png\" button_text=\"Create Profile\" button_url=\"/register\"][/job-grid]</div><div>[how-it-works title=\"How It Works\" description=\"Just via some simple steps, you will find your ideal candidates you’r looking for!\" step_label_1=\"Register an &#x3C;br&#x3E; account to start\" step_help_1=\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do\" step_label_2=\"Explore over &#x3C;br&#x3E; thousands of resumes\" step_help_2=\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do\" step_label_3=\"Find the most &#x3C;br&#x3E; suitable candidate\" step_help_3=\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do\" button_label=\"Get Started\" button_url=\"#\"][/how-it-works]</div><div>[top-candidates title=\"Top Candidates\" description=\"Jobs is a curated job board of the best jobs for developers, designers &#x3C;br&#x3E; and marketers in the tech industry.\" limit=\"8\" style=\"style-5\"][/top-candidates]</div><div>[news-and-blogs title=\"News and Blog\" subtitle=\"Get the latest news, updates and tips\" button_text=\"Load More Posts\" button_link=\"#\" style=\"style-2\"][/news-and-blogs]</div>',1,NULL,'homepage',NULL,'published','2025-04-12 04:08:48','2025-04-12 04:08:48'),(6,'Homepage 6','<div>[search-box title=\"There Are 102,256 Postings Here For you!\" highlight_text=\"102,256\" description=\"Find Jobs, Employment & Career Opportunities\" style=\"style-4\" trending_keywords=\"Design,Development,Manager,Senior,,\" background_color=\"#000\"][/search-box]</div><div>[gallery image_1=\"galleries/1.jpg\" image_2=\"galleries/2.jpg\" image_3=\"galleries/3.jpg\" image_4=\"galleries/4.jpg\" image_5=\"galleries/5.jpg\"][/gallery]</div><div>[featured-job-categories title=\"Browse by category\" subtitle=\"Find the job that’s perfect for you. about 800+ new jobs everyday\"][/featured-job-categories]</div><div>[job-grid style=\"style-2\" title=\"Create Your Personal Account Profile\" subtitle=\"Create Profile\" description=\"Work Profile is a personality assessment that measures an individual\'s work personality through their workplace traits, social and emotional traits; as well as the values and aspirations that drive them forward.\" image=\"pages/img-profile.png\" button_text=\"Create Profile\" button_url=\"/register\"][/job-grid]</div><div>[job-of-the-day title=\"Latest Jobs Post\" subtitle=\"Explore the different types of available jobs to apply discover which is right for you.\" job_categories=\"1,2,3,4,5,6\" style=\"style-2\"][/job-of-the-day]</div><div>[job-search-banner title=\"Job search for people passionate about startup\" background_image=\"pages/img-job-search.png\" checkbox_title_1=\"Create an account\" checkbox_description_1=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec justo a quam varius maximus. Maecenas sodales tortor quis tincidunt commodo.\" checkbox_title_2=\"Search for Jobs\" checkbox_description_2=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec justo a quam varius maximus. Maecenas sodales tortor quis tincidunt commodo.\" checkbox_title_3=\"Save & Apply\" checkbox_description_3=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec justo a quam varius maximus. Maecenas sodales tortor quis tincidunt commodo.\"][/job-search-banner]</div>',1,NULL,'homepage',NULL,'published','2025-04-12 04:08:48','2025-04-12 04:08:48'),(7,'Jobs','<div>[search-box title=\"The official IT Jobs site\" highlight_text=\"IT Jobs\" description=\"“JobBox is our first stop whenever we\'re hiring a PHP role. We\'ve hired 10 PHP developers in the last few years, all thanks to JobBox.” — Andrew Hall, Elite JSC.\" banner_image_1=\"pages/left-job-head.png\" banner_image_2=\"pages/right-job-head.png\" style=\"style-3\" background_color=\"#000\"][/search-box]</div><div>[job-list max_salary_range=\"10000\"][/job-list]</div>',1,NULL,'default',NULL,'published','2025-04-12 04:08:48','2025-04-12 04:08:48'),(8,'Companies','<div>[job-companies title=\"Browse Companies\" subtitle=\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero repellendus magni, atque delectus molestias quis?\"][/job-companies]</div>',1,NULL,'default',NULL,'published','2025-04-12 04:08:48','2025-04-12 04:08:48'),(9,'Candidates','<div>[job-candidates title=\"Browse Candidates\" description=\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero repellendus magni, atque &#x3C;br&#x3E; delectus molestias quis?\" number_per_page=\"9\" style=\"grid\"][/job-candidates]</div><div>[news-and-blogs title=\"News and Blog\" subtitle=\"Get the latest news, updates and tips\" style=\"style-2\"][/news-and-blogs]</div>',1,NULL,'default',NULL,'published','2025-04-12 04:08:48','2025-04-12 04:08:48'),(10,'About us','<div>[company-about title=\"About Our Company\" description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ligula ante, dictum non aliquet eu, dapibus ac quam. Morbi vel ante viverra orci tincidunt tempor eu id ipsum. Sed consectetur, risus a blandit tempor, velit magna pellentesque risus, at congue tellus dui quis nisl.\" title_box=\"What we can do?\" image=\"general/img-about2.png\" description_box=\"Aenean sollicituin, lorem quis bibendum auctor nisi elit consequat ipsum sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet maurisorbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctora ornare odio. Aenean sollicituin, lorem quis bibendum auctor nisi elit consequat ipsum sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet maurisorbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctora ornare odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis non nisi purus. Integer sit nostra, per inceptos himenaeos. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis non nisi purus. Integer sit nostra, per inceptos himenaeos.\" url=\"/\" text_button_box=\"Read more\"][/company-about]</div><div>[team title=\"About Our Company\" sub_title=\"OUR COMPANY\" description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ligula ante, dictum non aliquet eu, dapibus ac quam. Morbi vel ante viverra orci tincidunt tempor eu id ipsum. Sed consectetur, risus a blandit tempor, velit magna pellentesque risus, at congue tellus dui quis nisl.\" number_of_people=\"8\"][/team]</div><div>[news-and-blogs title=\"News and Blog\" subtitle=\"Get the latest news, updates and tips\" button_text=\"View More\" button_link=\"/blog\" style=\"style-2\"][/news-and-blogs]</div><div>[testimonials title=\"Our Happy Customer\" description=\"When it comes to choosing the right web hosting provider, we know how easy it is to get overwhelmed with the number.\"][/testimonials]</div>',1,NULL,'page-detail','Get the latest news, updates and tips','published','2025-04-12 04:08:48','2025-04-12 04:08:48'),(11,'Pricing Plan','<div>[pricing-table title=\"Pricing Table\" subtitle=\"Choose The Best Plan That’s For You\" number_of_package=\"3\"][/pricing-table]</div><div>[faq title=\"Frequently Asked Questions\" subtitle=\"Aliquam a augue suscipit, luctus neque purus ipsum neque dolor primis a libero tempus, blandit and cursus varius and magnis sapien\" number_of_faq=\"4\"][/faq]</div><div>[testimonials title=\"Our Happy Customer\" subtitle=\"When it comes to choosing the right web hosting provider, we know how easy it is to get overwhelmed with the number.\"][/testimonials]</div>',1,NULL,'default',NULL,'published','2025-04-12 04:08:48','2025-04-12 04:08:48'),(12,'Contact','<div>[company-information company_name=\"Jobbox Company\" logo_company=\"general/logo-company.png\" company_address=\"205 North Michigan Avenue, Suite 810 Chicago, 60601, US\" company_phone=\"0543213336\" company_email=\"contact@jobbox.com\" branch_company_name_0=\"London\" branch_company_address_0=\"2118 Thornridge Cir. Syracuse, Connecticut 35624\" branch_company_name_1=\"New York\" branch_company_address_1=\"4517 Washington Ave. Manchester, Kentucky 39495\" branch_company_name_2=\"Chicago\" branch_company_address_2=\"3891 Ranchview Dr. Richardson, California 62639\" branch_company_name_3=\"San Francisco\" branch_company_address_3=\"4140 Parker Rd. Allentown, New Mexico 31134\" branch_company_name_4=\"Sysney\" branch_company_address_4=\"3891 Ranchview Dr. Richardson, California 62639\" branch_company_name_5=\"Singapore\" branch_company_address_5=\"4140 Parker Rd. Allentown, New Mexico 31134\"][/company-information]</div><div>[contact-form title=\"Contact us\" subtitle=\"Get in touch\" description=\"The right move at the right time saves your investment. live the dream of expanding your business.\" image=\"image-contact.png\" show_newsletter=\"yes\"][/contact-form]</div><div>[team title=\"Meet Our Team\" subtitle=\"OUR COMPANY\" description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ligula ante, dictum non aliquet eu, dapibus ac quam. Morbi vel ante viverra orci tincidunt tempor eu id ipsum. Sed consectetur, risus a blandit tempor, velit magna pellentesque risus, at congue tellus dui quis nisl.\" number_of_people=\"8\"][/team]</div><div>[news-and-blogs title=\"News and Blog\" subtitle=\"Get the latest news, updates and tips\" button_text=\"View More\" button_link=\"/blog\" style=\"style-2\"][/news-and-blogs]</div><div>[testimonials title=\"Our Happy Customer\" subtitle=\"When it comes to choosing the right web hosting provider, we know how easy it is to get overwhelmed with the number.\"][/testimonials]</div>',1,NULL,'page-detail','Get the latest news, updates and tips','published','2025-04-12 04:08:48','2025-04-12 04:08:48'),(13,'Blog','---',1,NULL,'page-detail','Get the latest news, updates and tips','published','2025-04-12 04:08:48','2025-04-12 04:08:48'),(14,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><ul><li>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</li><li>Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</li><li>XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</li></ul>',1,NULL,'page-detail-boxed',NULL,'published','2025-04-12 04:08:48','2025-04-12 04:08:48'),(15,'FAQs','<div>[faq title=\"Frequently Asked Questions\" number_of_faq=\"4\"][/faq]</div>',1,NULL,'page-detail',NULL,'published','2025-04-12 04:08:48','2025-04-12 04:08:48'),(16,'Services','<p>Mock Turtle, \'Drive on, old fellow! Don\'t be all day to day.\' This was quite pleased to find any. And yet I don\'t like them raw.\' \'Well, be off, and found in it about four inches deep and reaching half down the bottle, she found that her shoulders were nowhere to be Number One,\' said Alice. \'Then it wasn\'t very civil of you to get out of the fact. \'I keep them to be ashamed of yourself,\' said Alice, \'because I\'m not used to queer things happening. While she was ready to agree to everything.</p><p>Dormouse began in a tone of this ointment--one shilling the box-- Allow me to him: She gave me a pair of white kid gloves and a Dodo, a Lory and an old Turtle--we used to do:-- \'How doth the little golden key and hurried upstairs, in great disgust, and walked off; the Dormouse crossed the court, by the pope, was soon left alone. \'I wish I hadn\'t drunk quite so much!\' Alas! it was in the lock, and to stand on their throne when they met in the sea. The master was an uncomfortably sharp chin.</p><p>Stigand, the patriotic archbishop of Canterbury, found it made no mark; but he could think of nothing else to do, and in despair she put them into a tree. By the use of repeating all that green stuff be?\' said Alice. \'Then it wasn\'t very civil of you to offer it,\' said Alice very politely; but she could not join the dance. So they had at the Footman\'s head: it just now.\' \'It\'s the thing at all. \'But perhaps he can\'t help it,\' said the King. \'Then it ought to tell them something more. \'You.</p><p>Majesty,\' said the Gryphon. \'It all came different!\' Alice replied in an encouraging tone. Alice looked down at them, and all the players, except the King, \'that only makes the matter with it. There was a queer-shaped little creature, and held it out into the air off all its feet at the bottom of the way of keeping up the chimney, has he?\' said Alice to herself, \'I wonder how many hours a day or two: wouldn\'t it be murder to leave it behind?\' She said it to be sure, she had made the whole.</p>',1,NULL,'page-detail-boxed',NULL,'published','2025-04-12 04:08:48','2025-04-12 04:08:48'),(17,'Terms','<p>Hatter continued, \'in this way:-- \"Up above the world am I? Ah, THAT\'S the great wonder is, that I\'m doubtful about the games now.\' CHAPTER X. The Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'You are,\' said the Duchess, as she spoke; \'either you or your head must be Mabel after all, and I never understood what it meant till now.\' \'If that\'s all you know about this business?\' the King put on his knee, and the White Rabbit read out, at the March Hare. Alice was just going to say,\' said the.</p><p>White Rabbit, trotting slowly back to the door, and tried to curtsey as she had put the Lizard in head downwards, and the procession moved on, three of the March Hare. \'He denies it,\' said the Mouse. \'Of course,\' the Dodo had paused as if she were saying lessons, and began to feel very uneasy: to be told so. \'It\'s really dreadful,\' she muttered to herself, \'Now, what am I to do?\' said Alice. \'Then it ought to be trampled under its feet, ran round the refreshments!\' But there seemed to rise.</p><p>King had said that day. \'No, no!\' said the Lory. Alice replied eagerly, for she could remember about ravens and writing-desks, which wasn\'t much. The Hatter was the first figure!\' said the Caterpillar seemed to Alice with one eye; \'I seem to be\"--or if you\'d rather not.\' \'We indeed!\' cried the Mock Turtle would be of any use, now,\' thought Alice, as the hall was very fond of pretending to be a very little! Besides, SHE\'S she, and I\'m sure I can\'t understand it myself to begin at HIS time of.</p><p>He looked anxiously round, to make out what she was small enough to try the whole party at once crowded round her once more, while the rest of the busy farm-yard--while the lowing of the jurors had a door leading right into a pig, and she tried the little golden key, and when she found that her neck from being run over; and the March Hare went on. Her listeners were perfectly quiet till she fancied she heard something like this:-- \'Fury said to the Knave. The Knave shook his head mournfully.</p>',1,NULL,'page-detail-boxed',NULL,'published','2025-04-12 04:08:48','2025-04-12 04:08:48'),(18,'Job Categories','<div>[search-box title=\"22 Jobs Available Now\" highlight_text=\"22 Jobs\" description=\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero repellendus magni, atque delectus molestias quis?\" banner_image_1=\"pages/left-job-head.png\" banner_image_2=\"pages/right-job-head.png\" style=\"style-3\" background_color=\"#000\"][/search-box]</div><div>[popular-category title=\"Popular category\" limit_category=\"8\" style=\"style-1\"][/popular-category]</div><div>[job-categories title=\"Categories\" subtitle=\"All categories\" limit_category=\"8\"][/job-categories]</div>',1,NULL,'default',NULL,'published','2025-04-12 04:08:48','2025-04-12 04:08:48');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (2,1),(7,1),(3,2),(7,2),(2,3),(7,3);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Interview Question: Why Dont You Have a Degree?','Fugit maxime at blanditiis eaque id. Delectus labore facere maiores rerum fuga omnis enim. Voluptatibus nostrum ut commodi architecto odit et quia.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>I got up this morning? I almost wish I\'d gone to see if she did not dare to laugh; and, as the rest of the Rabbit\'s little white kid gloves: she took courage, and went on saying to herself what such an extraordinary ways of living would be as well say,\' added the Dormouse, and repeated her question. \'Why did they draw the treacle from?\' \'You can draw water out of breath, and till the eyes appeared, and then keep tight hold of anything, but she ran across the garden, where Alice could speak again. The Mock Turtle yawned and shut his note-book hastily. \'Consider your verdict,\' he said to herself how she was trying to box her own children. \'How should I know?\' said Alice, \'and if it began ordering people about like that!\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, while the Mouse only shook its head down, and the sounds will take care of themselves.\"\' \'How fond she is such a noise inside, no one could possibly hear you.\' And certainly there was no label this time.</p><p class=\"text-center\"><img src=\"/storage/news/4.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>All this time it vanished quite slowly, beginning with the birds and beasts, as well go in at the Hatter, and here the conversation dropped, and the Dormouse began in a great many teeth, so she felt a very difficult game indeed. The players all played at once to eat or drink anything; so I\'ll just see what was on the spot.\' This did not answer, so Alice soon began talking again. \'Dinah\'ll miss me very much pleased at having found out a history of the shepherd boy--and the sneeze of the.</p><p class=\"text-center\"><img src=\"/storage/news/8.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice thought), and it was too much of a book,\' thought Alice to herself, \'because of his pocket, and pulled out a race-course, in a low, weak voice. \'Now, I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t the slightest idea,\' said the White Rabbit: it was labelled \'ORANGE MARMALADE\', but to get out again. The Mock Turtle said: \'advance twice, set to work very carefully, remarking, \'I really must be removed,\' said the Duck. \'Found IT,\' the Mouse was bristling all over, and both creatures hid their faces in their paws. \'And how many hours a day did you ever see such a subject! Our family always HATED cats: nasty, low, vulgar things! Don\'t let me help to undo it!\' \'I shall sit here,\' he said, turning to Alice: he had taken advantage of the jury wrote it down into a large pigeon had flown into her eyes--and still as she left her, leaning her head on her hand, and a scroll of parchment in the back. However, it was indeed: she was trying to put down the chimney, has he?\' said.</p><p class=\"text-center\"><img src=\"/storage/news/11.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Duchess by this time). \'Don\'t grunt,\' said Alice; \'living at the corners: next the ten courtiers; these were ornamented all over their shoulders, that all the jelly-fish out of the fact. \'I keep them to sell,\' the Hatter continued, \'in this way:-- \"Up above the world you fly, Like a tea-tray in the last words out loud, and the little door: but, alas! the little golden key was too late to wish that! She went on \'And how many hours a day is very confusing.\' \'It isn\'t,\' said the White Rabbit, \'and that\'s a fact.\' Alice did not seem to put the Dormouse say?\' one of them bowed low. \'Would you tell me,\' said Alice, who had got to see a little quicker. \'What a funny watch!\' she remarked. \'There isn\'t any,\' said the Dodo, \'the best way you go,\' said the Duchess; \'I never went to work very diligently to write this down on their slates, and she went on, yawning and rubbing its eyes, \'Of course, of course; just what I was sent for.\' \'You ought to speak, and no more to do anything but sit with.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/img-news1.png',2176,NULL,'2025-04-03 12:58:30','2025-04-03 12:58:30'),(2,'21 Job Interview Tips: How To Make a Great Impression','Quae quis asperiores quidem et. Eius est minus voluptas vel quae ea maxime. Omnis saepe voluptate magni possimus.','<p>Good-bye, feet!\' (for when she had brought herself down to her ear. \'You\'re thinking about something, my dear, YOU must cross-examine the next question is, what did the archbishop find?\' The Mouse did not like to hear the Rabbit whispered in reply, \'for fear they should forget them before the officer could get to the beginning of the hall: in fact she was walking by the fire, and at last the Dodo solemnly presented the thimble, saying \'We beg your pardon!\' said the Mock Turtle yet?\' \'No,\' said Alice. \'Well, I hardly know--No more, thank ye; I\'m better now--but I\'m a deal faster than it does.\' \'Which would NOT be an old conger-eel, that used to know. Let me see--how IS it to the door, and tried to fancy to herself in Wonderland, though she knew she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let me help to undo it!\' \'I shall sit here,\' he said, turning to the law, And argued each case with MINE,\' said the Mock Turtle repeated thoughtfully. \'I should.</p><p class=\"text-center\"><img src=\"/storage/news/5.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I\'ll try and repeat \"\'TIS THE VOICE OF THE SLUGGARD,\"\' said the Hatter: \'let\'s all move one place on.\' He moved on as he spoke. \'UNimportant, of course, Alice could see, as they all stopped and looked at the corners: next the ten courtiers; these were ornamented all over their slates; \'but it doesn\'t mind.\' The table was a treacle-well.\' \'There\'s no such thing!\' Alice was not here before,\' said the Queen till she got back to the beginning again?\' Alice ventured to remark. \'Tut, tut, child!\'.</p><p class=\"text-center\"><img src=\"/storage/news/10.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon hastily. \'Go on with the other side, the puppy began a series of short charges at the Lizard as she could, and waited to see anything; then she had been for some time after the others. \'Are their heads downward! The Antipathies, I think--\' (for, you see, because some of the trees had a consultation about this, and she could do, lying down on the song, perhaps?\' \'I\'ve heard something like this:-- \'Fury said to herself; \'I should think it would all wash off in the direction it pointed to, without trying to box her own courage. \'It\'s no use in talking to herself, (not in a very difficult question. However, at last turned sulky, and would only say, \'I am older than I am so VERY much out of this elegant thimble\'; and, when it saw Alice. It looked good-natured, she thought: still it was written to nobody, which isn\'t usual, you know.\' \'I don\'t believe it,\' said the Duchess. An invitation from the shock of being all alone here!\' As.</p><p class=\"text-center\"><img src=\"/storage/news/13.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, who had not the smallest notice of her head impatiently; and, turning to the door. \'Call the next verse.\' \'But about his toes?\' the Mock Turtle went on in the pictures of him), while the Mouse heard this, it turned a corner, \'Oh my ears and whiskers, how late it\'s getting!\' She was walking hand in her life, and had just begun to repeat it, but her head to feel very queer indeed:-- \'\'Tis the voice of thunder, and people began running when they arrived, with a deep sigh, \'I was a good deal to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice. \'Exactly so,\' said the Duck: \'it\'s generally a ridge or furrow in the distance would take the roof was thatched with fur. It was all about, and crept a little startled when she had got so close to her feet in a mournful tone, \'he won\'t do a thing before, but she knew that it might end, you know,\' the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was no one else seemed.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/img-news2.png',2190,NULL,'2025-04-03 06:25:47','2025-04-03 06:25:47'),(3,'39 Strengths and Weaknesses To Discuss in a Job Interview','Perferendis omnis quas culpa sit sunt vero dolores. Velit aut repellat minus rerum. Et labore iste veniam fugiat rerum. Rem iste quas ea molestiae ipsum.','<p>Alice, as she fell past it. \'Well!\' thought Alice \'without pictures or conversations?\' So she began: \'O Mouse, do you mean that you weren\'t to talk about wasting IT. It\'s HIM.\' \'I don\'t think it\'s at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s ears--\' the Rabbit coming to look about her any more if you\'d rather not.\' \'We indeed!\' cried the Mouse, turning to the Dormouse, not choosing to notice this last word two or three times over to the general conclusion, that wherever you go on? It\'s by far the most important piece of it had VERY long claws and a large flower-pot that stood near the centre of the house, quite forgetting in the direction in which the March Hare said to herself, and once again the tiny hands were clasped upon her arm, with its eyelids, so he with his nose, you know?\' \'It\'s the Cheshire Cat, she was terribly frightened all the time they had to fall upon Alice, as she passed; it was getting very sleepy; \'and they drew all manner of things--everything that.</p><p class=\"text-center\"><img src=\"/storage/news/4.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Though they were gardeners, or soldiers, or courtiers, or three pairs of tiny white kid gloves while she was ever to get in at once.\' However, she soon made out that one of them at last, and they can\'t prove I did: there\'s no room to open her mouth; but she thought at first she would get up and ran the faster, while more and more sounds of broken glass. \'What a curious feeling!\' said Alice; \'that\'s not at all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was thoroughly.</p><p class=\"text-center\"><img src=\"/storage/news/9.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I used to say when I learn music.\' \'Ah! that accounts for it,\' said the Dormouse, who was reading the list of singers. \'You may go,\' said the Gryphon. \'We can do without lobsters, you know. Come on!\' So they got thrown out to sea. So they couldn\'t get them out with trying, the poor little thing sat down again in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the Duchess: you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said to herself, rather sharply; \'I advise you to death.\"\' \'You are old, Father William,\' the young lady tells us a story!\' said the Caterpillar. Alice said to herself \'It\'s the Cheshire Cat: now I shall have to go nearer till she had gone through that day. \'No, no!\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, \'and those twelve creatures,\' (she was rather glad there WAS no one to listen to me! I\'LL soon make you grow shorter.\' \'One side of the tail, and ending with the next witness would be only.</p><p class=\"text-center\"><img src=\"/storage/news/14.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Dormouse. \'Fourteenth of March, I think you\'d take a fancy to herself how this same little sister of hers that you have just been reading about; and when Alice had no pictures or conversations in it, \'and what is the reason they\'re called lessons,\' the Gryphon replied very readily: \'but that\'s because it stays the same solemn tone, only changing the order of the crowd below, and there stood the Queen had never been so much surprised, that for the moment how large she had somehow fallen into a line along the passage into the air. Even the Duchess said in a louder tone. \'ARE you to offer it,\' said the Mouse, turning to Alice: he had a VERY good opportunity for repeating his remark, with variations. \'I shall sit here,\' he said, \'on and off, for days and days.\' \'But what did the archbishop find?\' The Mouse did not like to go nearer till she heard the Queen had only one who got any advantage from the Queen ordering off her unfortunate guests to execution--once more the pig-baby was.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/img-news3.png',1853,NULL,'2025-03-14 04:13:10','2025-03-14 04:13:10');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"sitemap.settings\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"plugins.job-board\":true,\"jobs.index\":true,\"jobs.create\":true,\"jobs.edit\":true,\"jobs.destroy\":true,\"import-jobs.index\":true,\"export-jobs.index\":true,\"job-applications.index\":true,\"job-applications.edit\":true,\"job-applications.destroy\":true,\"accounts.index\":true,\"accounts.create\":true,\"accounts.edit\":true,\"accounts.destroy\":true,\"accounts.import\":true,\"accounts.export\":true,\"packages.index\":true,\"packages.create\":true,\"packages.edit\":true,\"packages.destroy\":true,\"companies.index\":true,\"companies.create\":true,\"companies.edit\":true,\"companies.destroy\":true,\"export-companies.index\":true,\"import-companies.index\":true,\"job-board.custom-fields.index\":true,\"job-board.custom-fields.create\":true,\"job-board.custom-fields.edit\":true,\"job-board.custom-fields.destroy\":true,\"job-attributes.index\":true,\"job-categories.index\":true,\"job-categories.create\":true,\"job-categories.edit\":true,\"job-categories.destroy\":true,\"job-types.index\":true,\"job-types.create\":true,\"job-types.edit\":true,\"job-types.destroy\":true,\"job-skills.index\":true,\"job-skills.create\":true,\"job-skills.edit\":true,\"job-skills.destroy\":true,\"job-shifts.index\":true,\"job-shifts.create\":true,\"job-shifts.edit\":true,\"job-shifts.destroy\":true,\"job-experiences.index\":true,\"job-experiences.create\":true,\"job-experiences.edit\":true,\"job-experiences.destroy\":true,\"language-levels.index\":true,\"language-levels.create\":true,\"language-levels.edit\":true,\"language-levels.destroy\":true,\"career-levels.index\":true,\"career-levels.create\":true,\"career-levels.edit\":true,\"career-levels.destroy\":true,\"functional-areas.index\":true,\"functional-areas.create\":true,\"functional-areas.edit\":true,\"functional-areas.destroy\":true,\"degree-types.index\":true,\"degree-types.create\":true,\"degree-types.edit\":true,\"degree-types.destroy\":true,\"degree-levels.index\":true,\"degree-levels.create\":true,\"degree-levels.edit\":true,\"degree-levels.destroy\":true,\"job-board.tag.index\":true,\"job-board.tag.create\":true,\"job-board.tag.edit\":true,\"job-board.tag.destroy\":true,\"job-board.settings\":true,\"invoice.index\":true,\"invoice.edit\":true,\"invoice.destroy\":true,\"reviews.index\":true,\"reviews.destroy\":true,\"invoice-template.index\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"social-login.settings\":true,\"team.index\":true,\"team.create\":true,\"team.edit\":true,\"team.destroy\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}','Admin users role',1,1,1,'2025-04-12 04:08:46','2025-04-12 04:08:46');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (2,'api_enabled','0',NULL,'2025-04-12 04:08:46'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"faq\",\"gallery\",\"job-board\",\"location\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"rss-feed\",\"social-login\",\"sslcommerz\",\"stripe\",\"team\",\"testimonial\",\"translation\"]',NULL,'2025-04-12 04:08:46'),(4,'analytics_dashboard_widgets','0','2025-04-12 04:08:43','2025-04-12 04:08:43'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2025-04-12 04:08:44','2025-04-12 04:08:44'),(7,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2025-04-12 04:08:45','2025-04-12 04:08:45'),(10,'language_hide_default','1',NULL,NULL),(11,'language_switcher_display','dropdown',NULL,NULL),(12,'language_display','all',NULL,NULL),(13,'language_hide_languages','[]',NULL,NULL),(14,'show_admin_bar','1',NULL,NULL),(15,'theme','jobbox',NULL,NULL),(16,'admin_logo','general/logo-light.png',NULL,NULL),(17,'admin_favicon','general/favicon.png',NULL,NULL),(18,'theme-jobbox-site_title','JobBox - Laravel Job Board Script',NULL,NULL),(19,'theme-jobbox-seo_description','JobBox is a neat, clean and professional job board website script for your organization. It’s easy to build a complete Job Board site with JobBox script.',NULL,NULL),(20,'theme-jobbox-copyright','©2025 Archi Elite JSC. All right reserved.',NULL,NULL),(21,'theme-jobbox-favicon','general/favicon.png',NULL,NULL),(22,'theme-jobbox-logo','general/logo.png',NULL,NULL),(23,'theme-jobbox-hotline','+(123) 345-6789',NULL,NULL),(24,'theme-jobbox-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(25,'theme-jobbox-cookie_consent_learn_more_url','/cookie-policy',NULL,NULL),(26,'theme-jobbox-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(27,'theme-jobbox-homepage_id','1',NULL,NULL),(28,'theme-jobbox-blog_page_id','13',NULL,NULL),(29,'theme-jobbox-preloader_enabled','no',NULL,NULL),(30,'theme-jobbox-job_categories_page_id','18',NULL,NULL),(31,'theme-jobbox-job_candidates_page_id','9',NULL,NULL),(32,'theme-jobbox-default_company_cover_image','general/cover-image.png',NULL,NULL),(33,'theme-jobbox-job_companies_page_id','8',NULL,NULL),(34,'theme-jobbox-job_list_page_id','7',NULL,NULL),(35,'theme-jobbox-email','contact@jobbox.com',NULL,NULL),(36,'theme-jobbox-404_page_image','general/404.png',NULL,NULL),(37,'theme-jobbox-background_breadcrumb','pages/bg-breadcrumb.png',NULL,NULL),(38,'theme-jobbox-blog_page_template_blog','blog_gird_1',NULL,NULL),(39,'theme-jobbox-background_blog_single','pages/img-single.png',NULL,NULL),(40,'theme-jobbox-auth_background_image_1','authentication/img-1.png',NULL,NULL),(41,'theme-jobbox-auth_background_image_2','authentication/img-2.png',NULL,NULL),(42,'theme-jobbox-background_cover_candidate_default','pages/background-cover-candidate.png',NULL,NULL),(43,'theme-jobbox-job_board_max_salary_filter','10000',NULL,NULL),(44,'theme-jobbox-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"socials\\/facebook.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/facebook.com\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"socials\\/linkedin.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/linkedin.com\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"socials\\/twitter.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/twitter.com\"}]]',NULL,NULL),(45,'media_random_hash','f6625d0a6053169f16f5e3da588378c6',NULL,NULL),(46,'permalink-botble-blog-models-post','blog',NULL,NULL),(47,'permalink-botble-blog-models-category','blog',NULL,NULL),(48,'payment_cod_status','1',NULL,NULL),(49,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(50,'payment_bank_transfer_status','1',NULL,NULL),(51,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,NULL),(52,'payment_stripe_payment_type','stripe_checkout',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'homepage-1',1,'Botble\\Page\\Models\\Page','','2025-04-12 04:08:48','2025-04-12 04:08:48'),(2,'homepage-2',2,'Botble\\Page\\Models\\Page','','2025-04-12 04:08:48','2025-04-12 04:08:48'),(3,'homepage-3',3,'Botble\\Page\\Models\\Page','','2025-04-12 04:08:48','2025-04-12 04:08:48'),(4,'homepage-4',4,'Botble\\Page\\Models\\Page','','2025-04-12 04:08:48','2025-04-12 04:08:48'),(5,'homepage-5',5,'Botble\\Page\\Models\\Page','','2025-04-12 04:08:48','2025-04-12 04:08:48'),(6,'homepage-6',6,'Botble\\Page\\Models\\Page','','2025-04-12 04:08:48','2025-04-12 04:08:48'),(7,'jobs',7,'Botble\\Page\\Models\\Page','','2025-04-12 04:08:48','2025-04-12 04:08:48'),(8,'companies',8,'Botble\\Page\\Models\\Page','','2025-04-12 04:08:48','2025-04-12 04:08:48'),(9,'candidates',9,'Botble\\Page\\Models\\Page','','2025-04-12 04:08:48','2025-04-12 04:08:48'),(10,'about-us',10,'Botble\\Page\\Models\\Page','','2025-04-12 04:08:48','2025-04-12 04:08:48'),(11,'pricing-plan',11,'Botble\\Page\\Models\\Page','','2025-04-12 04:08:48','2025-04-12 04:08:48'),(12,'contact',12,'Botble\\Page\\Models\\Page','','2025-04-12 04:08:48','2025-04-12 04:08:48'),(13,'blog',13,'Botble\\Page\\Models\\Page','','2025-04-12 04:08:48','2025-04-12 04:08:48'),(14,'cookie-policy',14,'Botble\\Page\\Models\\Page','','2025-04-12 04:08:48','2025-04-12 04:08:48'),(15,'faqs',15,'Botble\\Page\\Models\\Page','','2025-04-12 04:08:48','2025-04-12 04:08:48'),(16,'services',16,'Botble\\Page\\Models\\Page','','2025-04-12 04:08:48','2025-04-12 04:08:48'),(17,'terms',17,'Botble\\Page\\Models\\Page','','2025-04-12 04:08:48','2025-04-12 04:08:48'),(18,'job-categories',18,'Botble\\Page\\Models\\Page','','2025-04-12 04:08:48','2025-04-12 04:08:48'),(19,'design',1,'Botble\\Blog\\Models\\Category','blog','2025-04-12 04:08:49','2025-04-12 04:08:52'),(20,'lifestyle',2,'Botble\\Blog\\Models\\Category','blog','2025-04-12 04:08:49','2025-04-12 04:08:52'),(21,'travel-tips',3,'Botble\\Blog\\Models\\Category','blog','2025-04-12 04:08:49','2025-04-12 04:08:52'),(22,'healthy',4,'Botble\\Blog\\Models\\Category','blog','2025-04-12 04:08:49','2025-04-12 04:08:52'),(23,'travel-tips',5,'Botble\\Blog\\Models\\Category','blog','2025-04-12 04:08:49','2025-04-12 04:08:52'),(24,'hotel',6,'Botble\\Blog\\Models\\Category','blog','2025-04-12 04:08:49','2025-04-12 04:08:52'),(25,'nature',7,'Botble\\Blog\\Models\\Category','blog','2025-04-12 04:08:49','2025-04-12 04:08:52'),(26,'new',1,'Botble\\Blog\\Models\\Tag','tag','2025-04-12 04:08:49','2025-04-12 04:08:49'),(27,'event',2,'Botble\\Blog\\Models\\Tag','tag','2025-04-12 04:08:49','2025-04-12 04:08:49'),(28,'interview-question-why-dont-you-have-a-degree',1,'Botble\\Blog\\Models\\Post','blog','2025-04-12 04:08:49','2025-04-12 04:08:52'),(29,'21-job-interview-tips-how-to-make-a-great-impression',2,'Botble\\Blog\\Models\\Post','blog','2025-04-12 04:08:49','2025-04-12 04:08:52'),(30,'39-strengths-and-weaknesses-to-discuss-in-a-job-interview',3,'Botble\\Blog\\Models\\Post','blog','2025-04-12 04:08:49','2025-04-12 04:08:52'),(31,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2025-04-12 04:08:50','2025-04-12 04:08:50'),(32,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2025-04-12 04:08:50','2025-04-12 04:08:50'),(33,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2025-04-12 04:08:50','2025-04-12 04:08:50'),(34,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2025-04-12 04:08:50','2025-04-12 04:08:50'),(35,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2025-04-12 04:08:50','2025-04-12 04:08:50'),(36,'photography',6,'Botble\\Gallery\\Models\\Gallery','galleries','2025-04-12 04:08:50','2025-04-12 04:08:50'),(37,'content-writer',1,'Botble\\JobBoard\\Models\\Category','job-categories','2025-04-12 04:08:53','2025-04-12 04:08:53'),(38,'market-research',2,'Botble\\JobBoard\\Models\\Category','job-categories','2025-04-12 04:08:53','2025-04-12 04:08:53'),(39,'marketing-sale',3,'Botble\\JobBoard\\Models\\Category','job-categories','2025-04-12 04:08:54','2025-04-12 04:08:54'),(40,'customer-help',4,'Botble\\JobBoard\\Models\\Category','job-categories','2025-04-12 04:08:54','2025-04-12 04:08:54'),(41,'finance',5,'Botble\\JobBoard\\Models\\Category','job-categories','2025-04-12 04:08:54','2025-04-12 04:08:54'),(42,'software',6,'Botble\\JobBoard\\Models\\Category','job-categories','2025-04-12 04:08:54','2025-04-12 04:08:54'),(43,'human-resource',7,'Botble\\JobBoard\\Models\\Category','job-categories','2025-04-12 04:08:54','2025-04-12 04:08:54'),(44,'management',8,'Botble\\JobBoard\\Models\\Category','job-categories','2025-04-12 04:08:54','2025-04-12 04:08:54'),(45,'retail-products',9,'Botble\\JobBoard\\Models\\Category','job-categories','2025-04-12 04:08:54','2025-04-12 04:08:54'),(46,'security-analyst',10,'Botble\\JobBoard\\Models\\Category','job-categories','2025-04-12 04:08:54','2025-04-12 04:08:54'),(47,'linkedin',1,'Botble\\JobBoard\\Models\\Company','companies','2025-04-12 04:08:54','2025-04-12 04:08:54'),(48,'adobe-illustrator',2,'Botble\\JobBoard\\Models\\Company','companies','2025-04-12 04:08:54','2025-04-12 04:08:54'),(49,'bing-search',3,'Botble\\JobBoard\\Models\\Company','companies','2025-04-12 04:08:54','2025-04-12 04:08:54'),(50,'dailymotion',4,'Botble\\JobBoard\\Models\\Company','companies','2025-04-12 04:08:54','2025-04-12 04:08:54'),(51,'linkedin',5,'Botble\\JobBoard\\Models\\Company','companies','2025-04-12 04:08:54','2025-04-12 04:08:54'),(52,'quora-jsc',6,'Botble\\JobBoard\\Models\\Company','companies','2025-04-12 04:08:54','2025-04-12 04:08:54'),(53,'nintendo',7,'Botble\\JobBoard\\Models\\Company','companies','2025-04-12 04:08:54','2025-04-12 04:08:54'),(54,'periscope',8,'Botble\\JobBoard\\Models\\Company','companies','2025-04-12 04:08:54','2025-04-12 04:08:54'),(55,'newsum',9,'Botble\\JobBoard\\Models\\Company','companies','2025-04-12 04:08:54','2025-04-12 04:08:54'),(56,'powerhome',10,'Botble\\JobBoard\\Models\\Company','companies','2025-04-12 04:08:54','2025-04-12 04:08:54'),(57,'whopcom',11,'Botble\\JobBoard\\Models\\Company','companies','2025-04-12 04:08:54','2025-04-12 04:08:54'),(58,'greenwood',12,'Botble\\JobBoard\\Models\\Company','companies','2025-04-12 04:08:54','2025-04-12 04:08:54'),(59,'kentucky',13,'Botble\\JobBoard\\Models\\Company','companies','2025-04-12 04:08:54','2025-04-12 04:08:54'),(60,'equity',14,'Botble\\JobBoard\\Models\\Company','companies','2025-04-12 04:08:54','2025-04-12 04:08:54'),(61,'honda',15,'Botble\\JobBoard\\Models\\Company','companies','2025-04-12 04:08:54','2025-04-12 04:08:54'),(62,'toyota',16,'Botble\\JobBoard\\Models\\Company','companies','2025-04-12 04:08:54','2025-04-12 04:08:54'),(63,'lexus',17,'Botble\\JobBoard\\Models\\Company','companies','2025-04-12 04:08:54','2025-04-12 04:08:54'),(64,'ondo',18,'Botble\\JobBoard\\Models\\Company','companies','2025-04-12 04:08:54','2025-04-12 04:08:54'),(65,'square',19,'Botble\\JobBoard\\Models\\Company','companies','2025-04-12 04:08:54','2025-04-12 04:08:54'),(66,'visa',20,'Botble\\JobBoard\\Models\\Company','companies','2025-04-12 04:08:54','2025-04-12 04:08:54'),(67,'illustrator',1,'Botble\\JobBoard\\Models\\Tag','job-tags','2025-04-12 04:08:54','2025-04-12 04:08:54'),(68,'adobe-xd',2,'Botble\\JobBoard\\Models\\Tag','job-tags','2025-04-12 04:08:54','2025-04-12 04:08:54'),(69,'figma',3,'Botble\\JobBoard\\Models\\Tag','job-tags','2025-04-12 04:08:54','2025-04-12 04:08:54'),(70,'sketch',4,'Botble\\JobBoard\\Models\\Tag','job-tags','2025-04-12 04:08:55','2025-04-12 04:08:55'),(71,'lunacy',5,'Botble\\JobBoard\\Models\\Tag','job-tags','2025-04-12 04:08:55','2025-04-12 04:08:55'),(72,'php',6,'Botble\\JobBoard\\Models\\Tag','job-tags','2025-04-12 04:08:55','2025-04-12 04:08:55'),(73,'python',7,'Botble\\JobBoard\\Models\\Tag','job-tags','2025-04-12 04:08:55','2025-04-12 04:08:55'),(74,'javascript',8,'Botble\\JobBoard\\Models\\Tag','job-tags','2025-04-12 04:08:55','2025-04-12 04:08:55'),(75,'ui-ux-designer-full-time',1,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(76,'full-stack-engineer',2,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(77,'java-software-engineer',3,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(78,'digital-marketing-manager',4,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(79,'frontend-developer',5,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(80,'react-native-web-developer',6,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(81,'senior-system-engineer',7,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(82,'products-manager',8,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(83,'lead-quality-control-qa',9,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(84,'principal-designer-design-systems',10,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(85,'devops-architect',11,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(86,'senior-software-engineer-npm-cli',12,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(87,'senior-systems-engineer',13,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(88,'software-engineer-actions-platform',14,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(89,'staff-engineering-manager-actions',15,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(90,'staff-engineering-manager-actions-runtime',16,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(91,'staff-engineering-manager-packages',17,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(92,'staff-software-engineer',18,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(93,'systems-software-engineer',19,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(94,'senior-compensation-analyst',20,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(95,'senior-accessibility-program-manager',21,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(96,'analyst-relations-manager-application-security',22,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(97,'senior-enterprise-advocate-emea',23,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(98,'deal-desk-manager',24,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(99,'director-revenue-compensation',25,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(100,'program-manager',26,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(101,'sr-manager-deal-desk-intl',27,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(102,'senior-director-product-management-actions-runners-and-compute-services',28,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(103,'alliances-director',29,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(104,'corporate-sales-representative',30,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(105,'country-leader',31,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(106,'customer-success-architect',32,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(107,'devops-account-executive-us-public-sector',33,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(108,'enterprise-account-executive',34,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(109,'senior-engineering-manager-product-security-engineering-paved-paths',35,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(110,'customer-reliability-engineer-iii',36,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(111,'support-engineer-enterprise-support-japanese',37,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(112,'technical-partner-manager',38,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(113,'sr-manager-inside-account-management',39,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(114,'services-sales-representative',40,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(115,'services-delivery-manager',41,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(116,'senior-solutions-engineer',42,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(117,'senior-service-delivery-engineer',43,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(118,'senior-director-global-sales-development',44,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(119,'partner-program-manager',45,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:55','2025-04-12 04:08:55'),(120,'principal-cloud-solutions-engineer',46,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:56','2025-04-12 04:08:56'),(121,'senior-cloud-solutions-engineer',47,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:56','2025-04-12 04:08:56'),(122,'senior-customer-success-manager',48,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:56','2025-04-12 04:08:56'),(123,'inside-account-manager',49,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:56','2025-04-12 04:08:56'),(124,'ux-jobs-board',50,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:56','2025-04-12 04:08:56'),(125,'senior-laravel-developer-tall-stack',51,'Botble\\JobBoard\\Models\\Job','jobs','2025-04-12 04:08:56','2025-04-12 04:08:56'),(126,'samantha',1,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:08:56','2025-04-12 04:08:56'),(127,'otha',2,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:08:57','2025-04-12 04:08:57'),(128,'sarah',3,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:08:57','2025-04-12 04:08:57'),(129,'steven',4,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:08:57','2025-04-12 04:08:57'),(130,'william',5,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:08:57','2025-04-12 04:08:57'),(131,'krystina',6,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:08:57','2025-04-12 04:08:57'),(132,'reuben',7,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:08:58','2025-04-12 04:08:58'),(133,'wava',8,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:08:58','2025-04-12 04:08:58'),(134,'maxime',9,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:08:58','2025-04-12 04:08:58'),(135,'troy',10,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:08:58','2025-04-12 04:08:58'),(136,'tomasa',11,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:08:58','2025-04-12 04:08:58'),(137,'arthur',12,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:08:59','2025-04-12 04:08:59'),(138,'jarrell',13,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:08:59','2025-04-12 04:08:59'),(139,'ansel',14,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:08:59','2025-04-12 04:08:59'),(140,'baby',15,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:08:59','2025-04-12 04:08:59'),(141,'aditya',16,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:08:59','2025-04-12 04:08:59'),(142,'nash',17,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:00','2025-04-12 04:09:00'),(143,'cloyd',18,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:00','2025-04-12 04:09:00'),(144,'adam',19,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:00','2025-04-12 04:09:00'),(145,'rey',20,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:00','2025-04-12 04:09:00'),(146,'laury',21,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:00','2025-04-12 04:09:00'),(147,'jimmie',22,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:01','2025-04-12 04:09:01'),(148,'elvera',23,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:01','2025-04-12 04:09:01'),(149,'granville',24,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:01','2025-04-12 04:09:01'),(150,'evangeline',25,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:01','2025-04-12 04:09:01'),(151,'jennings',26,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:01','2025-04-12 04:09:01'),(152,'hayley',27,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:02','2025-04-12 04:09:02'),(153,'reinhold',28,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:02','2025-04-12 04:09:02'),(154,'darrion',29,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:02','2025-04-12 04:09:02'),(155,'ericka',30,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:02','2025-04-12 04:09:02'),(156,'shany',31,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:02','2025-04-12 04:09:02'),(157,'claude',32,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:03','2025-04-12 04:09:03'),(158,'robin',33,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:03','2025-04-12 04:09:03'),(159,'al',34,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:03','2025-04-12 04:09:03'),(160,'lee',35,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:03','2025-04-12 04:09:03'),(161,'marcelino',36,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:03','2025-04-12 04:09:03'),(162,'dangelo',37,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:04','2025-04-12 04:09:04'),(163,'king',38,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:04','2025-04-12 04:09:04'),(164,'ila',39,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:04','2025-04-12 04:09:04'),(165,'veda',40,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:04','2025-04-12 04:09:04'),(166,'estelle',41,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:05','2025-04-12 04:09:05'),(167,'dina',42,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:05','2025-04-12 04:09:05'),(168,'raheem',43,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:05','2025-04-12 04:09:05'),(169,'gayle',44,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:05','2025-04-12 04:09:05'),(170,'dagmar',45,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:05','2025-04-12 04:09:05'),(171,'carissa',46,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:06','2025-04-12 04:09:06'),(172,'florence',47,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:06','2025-04-12 04:09:06'),(173,'godfrey',48,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:06','2025-04-12 04:09:06'),(174,'janiya',49,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:06','2025-04-12 04:09:06'),(175,'rubye',50,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:06','2025-04-12 04:09:06'),(176,'fae',51,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:07','2025-04-12 04:09:07'),(177,'jamie',52,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:07','2025-04-12 04:09:07'),(178,'philip',53,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:07','2025-04-12 04:09:07'),(179,'susana',54,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:07','2025-04-12 04:09:07'),(180,'reyes',55,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:07','2025-04-12 04:09:07'),(181,'murray',56,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:08','2025-04-12 04:09:08'),(182,'onie',57,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:08','2025-04-12 04:09:08'),(183,'lemuel',58,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:08','2025-04-12 04:09:08'),(184,'tyra',59,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:08','2025-04-12 04:09:08'),(185,'emilia',60,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:08','2025-04-12 04:09:08'),(186,'eugene',61,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:09','2025-04-12 04:09:09'),(187,'magali',62,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:09','2025-04-12 04:09:09'),(188,'kristofer',63,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:09','2025-04-12 04:09:09'),(189,'jeremie',64,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:09','2025-04-12 04:09:09'),(190,'kennedy',65,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:09','2025-04-12 04:09:09'),(191,'vergie',66,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:10','2025-04-12 04:09:10'),(192,'lily',67,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:10','2025-04-12 04:09:10'),(193,'johanna',68,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:10','2025-04-12 04:09:10'),(194,'rossie',69,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:10','2025-04-12 04:09:10'),(195,'brent',70,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:10','2025-04-12 04:09:10'),(196,'keyon',71,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:11','2025-04-12 04:09:11'),(197,'kaleigh',72,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:11','2025-04-12 04:09:11'),(198,'valentine',73,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:11','2025-04-12 04:09:11'),(199,'melody',74,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:11','2025-04-12 04:09:11'),(200,'dillan',75,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:11','2025-04-12 04:09:11'),(201,'virginie',76,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:12','2025-04-12 04:09:12'),(202,'fleta',77,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:12','2025-04-12 04:09:12'),(203,'dustin',78,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:12','2025-04-12 04:09:12'),(204,'maxime',79,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:12','2025-04-12 04:09:12'),(205,'leta',80,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:12','2025-04-12 04:09:12'),(206,'kaden',81,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:13','2025-04-12 04:09:13'),(207,'emma',82,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:13','2025-04-12 04:09:13'),(208,'jaqueline',83,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:13','2025-04-12 04:09:13'),(209,'leonard',84,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:13','2025-04-12 04:09:13'),(210,'dwight',85,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:13','2025-04-12 04:09:13'),(211,'wilton',86,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:14','2025-04-12 04:09:14'),(212,'sam',87,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:14','2025-04-12 04:09:14'),(213,'muhammad',88,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:14','2025-04-12 04:09:14'),(214,'roosevelt',89,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:14','2025-04-12 04:09:14'),(215,'maegan',90,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:14','2025-04-12 04:09:14'),(216,'virgil',91,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:15','2025-04-12 04:09:15'),(217,'toby',92,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:15','2025-04-12 04:09:15'),(218,'libby',93,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:15','2025-04-12 04:09:15'),(219,'stacy',94,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:15','2025-04-12 04:09:15'),(220,'melba',95,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:15','2025-04-12 04:09:15'),(221,'kira',96,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:16','2025-04-12 04:09:16'),(222,'alexa',97,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:16','2025-04-12 04:09:16'),(223,'hettie',98,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:16','2025-04-12 04:09:16'),(224,'mozell',99,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:16','2025-04-12 04:09:16'),(225,'mossie',100,'Botble\\JobBoard\\Models\\Account','candidates','2025-04-12 04:09:17','2025-04-12 04:09:17'),(226,'interview-question-why-dont-you-have-a-degree',1,'Botble\\Blog\\Models\\Post','','2025-04-12 04:09:18','2025-04-12 04:09:18'),(227,'21-job-interview-tips-how-to-make-a-great-impression',2,'Botble\\Blog\\Models\\Post','','2025-04-12 04:09:18','2025-04-12 04:09:18'),(228,'39-strengths-and-weaknesses-to-discuss-in-a-job-interview',3,'Botble\\Blog\\Models\\Post','','2025-04-12 04:09:18','2025-04-12 04:09:18'),(229,'design',1,'Botble\\Blog\\Models\\Category','','2025-04-12 04:09:18','2025-04-12 04:09:18'),(230,'lifestyle',2,'Botble\\Blog\\Models\\Category','','2025-04-12 04:09:18','2025-04-12 04:09:18'),(231,'travel-tips',3,'Botble\\Blog\\Models\\Category','','2025-04-12 04:09:18','2025-04-12 04:09:18'),(232,'healthy',4,'Botble\\Blog\\Models\\Category','','2025-04-12 04:09:18','2025-04-12 04:09:18'),(233,'travel-tips',5,'Botble\\Blog\\Models\\Category','','2025-04-12 04:09:18','2025-04-12 04:09:18'),(234,'hotel',6,'Botble\\Blog\\Models\\Category','','2025-04-12 04:09:18','2025-04-12 04:09:18'),(235,'nature',7,'Botble\\Blog\\Models\\Category','','2025-04-12 04:09:18','2025-04-12 04:09:18'),(236,'jack-persion',1,'Botble\\Team\\Models\\Team','teams','2025-04-12 04:09:18','2025-04-12 04:09:18'),(237,'tyler-men',2,'Botble\\Team\\Models\\Team','teams','2025-04-12 04:09:18','2025-04-12 04:09:18'),(238,'mohamed-salah',3,'Botble\\Team\\Models\\Team','teams','2025-04-12 04:09:18','2025-04-12 04:09:18'),(239,'xao-shin',4,'Botble\\Team\\Models\\Team','teams','2025-04-12 04:09:18','2025-04-12 04:09:18'),(240,'peter-cop',5,'Botble\\Team\\Models\\Team','teams','2025-04-12 04:09:18','2025-04-12 04:09:18'),(241,'jacob-jones',6,'Botble\\Team\\Models\\Team','teams','2025-04-12 04:09:18','2025-04-12 04:09:18'),(242,'court-henry',7,'Botble\\Team\\Models\\Team','teams','2025-04-12 04:09:18','2025-04-12 04:09:18'),(243,'theresa',8,'Botble\\Team\\Models\\Team','teams','2025-04-12 04:09:18','2025-04-12 04:09:18');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_logins`
--

DROP TABLE IF EXISTS `social_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_logins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `refresh_token` text COLLATE utf8mb4_unicode_ci,
  `token_expires_at` timestamp NULL DEFAULT NULL,
  `provider_data` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_logins_provider_provider_id_unique` (`provider`,`provider_id`),
  KEY `social_logins_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `social_logins_user_id_user_type_index` (`user_id`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_logins`
--

LOCK TABLES `social_logins` WRITE;
/*!40000 ALTER TABLE `social_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'France','france','FR',1,0,NULL,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(2,'England','england','EN',2,0,NULL,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(3,'New York','new-york','NY',1,0,NULL,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(4,'Holland','holland','HL',4,0,NULL,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(5,'Denmark','denmark','DN',5,0,NULL,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52'),(6,'Germany','germany','GER',1,0,NULL,0,'published','2025-04-12 04:08:52','2025-04-12 04:08:52');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'New',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-04-12 04:08:49','2025-04-12 04:08:49'),(2,'Event',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-04-12 04:08:49','2025-04-12 04:08:49');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socials` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Jack Persion','teams/1.png','Developer Fullstack','USA','\"{\\\"facebook\\\":\\\"fb.com\\\",\\\"twitter\\\":\\\"twitter.com\\\",\\\"instagram\\\":\\\"instagram.com\\\"}\"','published','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL,NULL,NULL,NULL,NULL,NULL),(2,'Tyler Men','teams/2.png','Business Analyst','Qatar','\"{\\\"facebook\\\":\\\"fb.com\\\",\\\"twitter\\\":\\\"twitter.com\\\",\\\"instagram\\\":\\\"instagram.com\\\"}\"','published','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL,NULL,NULL,NULL,NULL,NULL),(3,'Mohamed Salah','teams/3.png','Developer Fullstack','India','\"{\\\"facebook\\\":\\\"fb.com\\\",\\\"twitter\\\":\\\"twitter.com\\\",\\\"instagram\\\":\\\"instagram.com\\\"}\"','published','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL,NULL,NULL,NULL,NULL,NULL),(4,'Xao Shin','teams/4.png','Developer Fullstack','China','\"{\\\"facebook\\\":\\\"fb.com\\\",\\\"twitter\\\":\\\"twitter.com\\\",\\\"instagram\\\":\\\"instagram.com\\\"}\"','published','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL,NULL,NULL,NULL,NULL,NULL),(5,'Peter Cop','teams/5.png','Designer','Russia','\"{\\\"facebook\\\":\\\"fb.com\\\",\\\"twitter\\\":\\\"twitter.com\\\",\\\"instagram\\\":\\\"instagram.com\\\"}\"','published','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL,NULL,NULL,NULL,NULL,NULL),(6,'Jacob Jones','teams/6.png','Frontend Developer','New York, US','\"{\\\"facebook\\\":\\\"fb.com\\\",\\\"twitter\\\":\\\"twitter.com\\\",\\\"instagram\\\":\\\"instagram.com\\\"}\"','published','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL,NULL,NULL,NULL,NULL,NULL),(7,'Court Henry','teams/7.png','Backend Developer','Portugal','\"{\\\"facebook\\\":\\\"fb.com\\\",\\\"twitter\\\":\\\"twitter.com\\\",\\\"instagram\\\":\\\"instagram.com\\\"}\"','published','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL,NULL,NULL,NULL,NULL,NULL),(8,'Theresa','teams/8.png','Backend Developer','Thailand','\"{\\\"facebook\\\":\\\"fb.com\\\",\\\"twitter\\\":\\\"twitter.com\\\",\\\"instagram\\\":\\\"instagram.com\\\"}\"','published','2025-04-12 04:09:17','2025-04-12 04:09:17',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams_translations`
--

DROP TABLE IF EXISTS `teams_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teams_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`teams_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams_translations`
--

LOCK TABLES `teams_translations` WRITE;
/*!40000 ALTER TABLE `teams_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `teams_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'Ellis Kim','Alice, \'and why it is all the arches are gone from this morning,\' said Alice in a whisper.) \'That would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the.','testimonials/1.png','Digital Artist','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(2,'John Smith','Hatter. He came in sight of the moment she quite forgot you didn\'t like cats.\' \'Not like cats!\' cried the Mouse, who seemed too much frightened that she let the Dormouse said--\' the Hatter were.','testimonials/2.png','Product designer','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(3,'Sayen Ahmod','Caterpillar. \'Well, perhaps you were down here with me! There are no mice in the back. However, it was too late to wish that! She went in search of her own ears for having missed their turns, and.','testimonials/3.png','Developer','published','2025-04-12 04:09:17','2025-04-12 04:09:17'),(4,'Tayla Swef','Hatter trembled so, that Alice could speak again. The Mock Turtle at last, with a sigh: \'he taught Laughing and Grief, they used to it in a great hurry. \'You did!\' said the others. \'We must burn the.','testimonials/4.png','Graphic designer','published','2025-04-12 04:09:17','2025-04-12 04:09:17');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'eleazar24@koch.com',NULL,'$2y$12$vQ6rXpy6hWjxZYnWjZAiS.c0ls2658z2PVKZkQOUb0ts7QFIBbT.G',NULL,'2025-04-12 04:08:46','2025-04-12 04:08:46','Sandra','Frami','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'NewsletterWidget','pre_footer_sidebar','jobbox',0,'{\"id\":\"NewsletterWidget\",\"title\":\"New Things Will Always <br> Update Regularly\",\"background_image\":\"general\\/newsletter-background-image.png\",\"image_left\":\"general\\/newsletter-image-left.png\",\"image_right\":\"general\\/newsletter-image-right.png\"}','2025-04-12 04:08:50','2025-04-12 04:08:50'),(2,'SiteInformationWidget','footer_sidebar','jobbox',1,'{\"introduction\":\"JobBox is the heart of the design community and the best resource to discover and connect with designers and jobs worldwide.\",\"facebook_url\":\"#\",\"twitter_url\":\"#\",\"linkedin_url\":\"#\"}','2025-04-12 04:08:50','2025-04-12 04:08:50'),(3,'CustomMenuWidget','footer_sidebar','jobbox',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Resources\",\"menu_id\":\"resources\"}','2025-04-12 04:08:50','2025-04-12 04:08:50'),(4,'CustomMenuWidget','footer_sidebar','jobbox',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Community\",\"menu_id\":\"community\"}','2025-04-12 04:08:50','2025-04-12 04:08:50'),(5,'CustomMenuWidget','footer_sidebar','jobbox',4,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2025-04-12 04:08:50','2025-04-12 04:08:50'),(6,'CustomMenuWidget','footer_sidebar','jobbox',5,'{\"id\":\"CustomMenuWidget\",\"name\":\"More\",\"menu_id\":\"more\"}','2025-04-12 04:08:50','2025-04-12 04:08:50'),(7,'DownloadWidget','footer_sidebar','jobbox',6,'{\"app_store_url\":\"#\",\"app_store_image\":\"general\\/app-store.png\",\"android_app_url\":\"#\",\"google_play_image\":\"general\\/android.png\"}','2025-04-12 04:08:50','2025-04-12 04:08:50'),(8,'BlogSearchWidget','primary_sidebar','jobbox',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2025-04-12 04:08:50','2025-04-12 04:08:50'),(9,'BlogCategoriesWidget','primary_sidebar','jobbox',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2025-04-12 04:08:50','2025-04-12 04:08:50'),(10,'BlogPostsWidget','primary_sidebar','jobbox',3,'{\"id\":\"BlogPostsWidget\",\"type\":\"popular\",\"name\":\"Popular Posts\"}','2025-04-12 04:08:50','2025-04-12 04:08:50'),(11,'BlogTagsWidget','primary_sidebar','jobbox',4,'{\"id\":\"BlogTagsWidget\",\"name\":\"Popular Tags\"}','2025-04-12 04:08:50','2025-04-12 04:08:50'),(12,'BlogSearchWidget','blog_sidebar','jobbox',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"Blog Search\",\"description\":\"Search blog posts\"}','2025-04-12 04:08:50','2025-04-12 04:08:50'),(13,'BlogPostsWidget','blog_sidebar','jobbox',1,'{\"id\":\"BlogPostsWidget\",\"name\":\"Blog posts\",\"description\":\"Blog posts widget.\",\"type\":\"popular\",\"number_display\":5}','2025-04-12 04:08:50','2025-04-12 04:08:50'),(14,'AdsBannerWidget','blog_sidebar','jobbox',2,'{\"id\":\"AdsBannerWidget\",\"name\":\"Ads banner\",\"banner_ads\":\"widgets\\/widget-banner.png\",\"url\":\"\\/\"}','2025-04-12 04:08:50','2025-04-12 04:08:50'),(15,'GalleryWidget','blog_sidebar','jobbox',3,'{\"id\":\"GalleryWidget\",\"name\":\"Gallery\",\"title_gallery\":\"Gallery\",\"number_image\":8}','2025-04-12 04:08:50','2025-04-12 04:08:50'),(16,'AdsBannerWidget','candidate_sidebar','jobbox',0,'{\"id\":\"AdsBannerWidget\",\"name\":\"Ads banner\",\"banner_ads\":\"widgets\\/widget-banner.png\",\"url\":\"\\/\"}','2025-04-12 04:08:50','2025-04-12 04:08:50'),(17,'AdsBannerWidget','company_sidebar','jobbox',0,'{\"id\":\"AdsBannerWidget\",\"name\":\"Ads banner\",\"banner_ads\":\"widgets\\/widget-banner.png\",\"url\":\"\\/\"}','2025-04-12 04:08:50','2025-04-12 04:08:50');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-12  4:09:19
