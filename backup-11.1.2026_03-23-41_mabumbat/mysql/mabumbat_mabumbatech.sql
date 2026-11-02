/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.19-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: mabumbat_mabumbatech
-- ------------------------------------------------------
-- Server version	10.11.19-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `mabumbat_mabumbatech`
--


--
-- Table structure for table `acquisition_history`
--

DROP TABLE IF EXISTS `acquisition_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `acquisition_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(40) NOT NULL,
  `note` varchar(500) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `request_id` (`request_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `acquisition_history_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `service_requests` (`id`) ON DELETE CASCADE,
  CONSTRAINT `acquisition_history_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acquisition_history`
--

LOCK TABLES `acquisition_history` WRITE;
/*!40000 ALTER TABLE `acquisition_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `acquisition_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_logs`
--

DROP TABLE IF EXISTS `activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `actor_name` varchar(120) DEFAULT NULL,
  `actor_role` varchar(40) DEFAULT NULL,
  `action` varchar(160) NOT NULL,
  `details` varchar(400) DEFAULT NULL,
  `ip_address` varchar(60) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `idx_activity_created_at` (`created_at`),
  KEY `idx_activity_action` (`action`),
  CONSTRAINT `activity_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_logs`
--

LOCK TABLES `activity_logs` WRITE;
/*!40000 ALTER TABLE `activity_logs` DISABLE KEYS */;
INSERT INTO `activity_logs` (`id`, `user_id`, `actor_name`, `actor_role`, `action`, `details`, `ip_address`, `created_at`) VALUES (1,NULL,'MABUMBATECH Super Admin','super_admin','Requested password reset','via email link','41.59.187.52','2026-10-05 05:42:09'),
(2,NULL,'MABUMBATECH Super Admin','super_admin','Requested password reset','via email link','41.59.187.52','2026-10-05 05:43:42'),
(3,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','41.59.187.52','2026-10-05 05:53:26'),
(4,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','41.59.187.52','2026-10-05 06:25:23'),
(5,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','41.59.187.52','2026-10-05 06:43:07'),
(6,2,'ALLY ABDALLAH','super_admin','Added portfolio item','Inno-Stationery','41.59.187.52','2026-10-05 06:45:19'),
(7,2,'ALLY ABDALLAH','super_admin','Added portfolio item','eDesk','41.59.187.52','2026-10-05 06:47:36'),
(8,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','eDesk','41.59.187.52','2026-10-05 06:48:11'),
(9,2,'ALLY ABDALLAH','super_admin','Added portfolio item','Lusako-Shop','41.59.187.52','2026-10-05 06:50:28'),
(10,2,'ALLY ABDALLAH','super_admin','Added portfolio item','FF3','41.59.187.52','2026-10-05 07:00:04'),
(11,2,'ALLY ABDALLAH','super_admin','Added portfolio item','FF3 B','41.59.187.52','2026-10-05 07:02:06'),
(12,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','eDesk','41.59.187.52','2026-10-05 07:05:02'),
(13,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','Inno-Stationery','41.59.187.52','2026-10-05 07:05:31'),
(14,2,'ALLY ABDALLAH','super_admin','Created staff account','Edward Kapinga (edwardkapinga)','41.59.187.52','2026-10-05 07:07:20'),
(15,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','41.59.187.52','2026-10-05 07:07:37'),
(16,3,'Edward Kapinga','staff','Login','Staff logged in','41.59.187.52','2026-10-05 07:07:40'),
(17,3,'Edward Kapinga','staff','Logout','Staff logged out','41.59.187.52','2026-10-05 07:07:59'),
(18,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','41.59.187.52','2026-10-05 07:10:40'),
(19,2,'ALLY ABDALLAH','super_admin','Created admin account','Iddy Ayubu (iddyayubu) as generic Administrator','41.59.187.52','2026-10-05 07:11:43'),
(20,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','41.59.187.52','2026-10-05 07:11:52'),
(21,4,'Iddy Ayubu','admin','Login','Admin logged in','41.59.187.52','2026-10-05 07:11:58'),
(22,4,'Iddy Ayubu','admin','Logout','Admin logged out','41.59.187.52','2026-10-05 07:14:01'),
(23,NULL,NULL,NULL,'New service request','Tracking code MBT-255DA2','196.249.102.190','2026-10-05 08:28:01'),
(24,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','41.59.187.52','2026-10-05 09:45:30'),
(25,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','41.59.187.52','2026-10-05 09:45:56'),
(26,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','197.186.18.9','2026-10-05 13:15:19'),
(27,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','196.249.100.200','2026-10-05 13:22:57'),
(28,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','Inno-Stationery','196.249.100.200','2026-10-05 13:23:15'),
(29,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','Inno-Stationery','196.249.100.200','2026-10-05 13:23:19'),
(30,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','Inno-Stationery','196.249.100.200','2026-10-05 13:23:22'),
(31,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','196.249.100.200','2026-10-05 13:24:13'),
(32,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','196.249.100.200','2026-10-05 13:24:21'),
(33,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','196.249.100.200','2026-10-05 13:24:29'),
(34,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','196.249.100.200','2026-10-05 13:24:35'),
(35,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','196.249.100.200','2026-10-05 13:24:38'),
(36,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','41.59.19.31','2026-10-06 05:15:17'),
(37,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','41.59.19.31','2026-10-06 05:15:53'),
(38,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','41.59.19.31','2026-10-06 06:44:21'),
(39,2,'ALLY ABDALLAH','super_admin','Added portfolio item','Toniashop','41.59.19.31','2026-10-06 07:08:12'),
(40,2,'ALLY ABDALLAH','super_admin','Added portfolio item','Kikundi-chanika','41.59.19.31','2026-10-06 07:11:05'),
(41,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','41.59.19.31','2026-10-06 07:12:24'),
(42,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','41.59.15.160','2026-10-06 09:18:41'),
(43,2,'ALLY ABDALLAH','super_admin','Added portfolio item','Business Technology Assessment & Digital Solutions','41.59.15.160','2026-10-06 09:48:09'),
(44,2,'ALLY ABDALLAH','super_admin','Added portfolio item','DUKAHUB: Multi-Store Management for Drinks Shops','41.59.15.160','2026-10-06 10:01:15'),
(45,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','41.59.15.160','2026-10-06 23:15:59'),
(46,2,'ALLY ABDALLAH','super_admin','Added portfolio item','Cosmic Launch: Interactive CSS Animation','41.59.15.160','2026-10-06 23:21:49'),
(47,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','Cosmic Launch: Interactive CSS Animation','41.59.15.160','2026-10-06 23:24:06'),
(48,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','Cosmic Launch: Interactive CSS Animation','41.59.15.160','2026-10-06 23:34:31'),
(49,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','41.59.15.160','2026-10-06 23:35:45'),
(50,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','41.59.15.160','2026-10-06 23:41:22'),
(51,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','Cosmic Launch: Interactive CSS Animation','41.59.15.160','2026-10-06 23:41:44'),
(52,2,'ALLY ABDALLAH','super_admin','Added portfolio item','After Hours: Architectural Night','41.59.15.160','2026-10-06 23:56:36'),
(53,2,'ALLY ABDALLAH','super_admin','Added portfolio item','Deep Current: Ocean Exploration','41.59.15.160','2026-10-07 00:08:39'),
(54,2,'ALLY ABDALLAH','super_admin','Added portfolio item','Digital Aurora: Interactive Showcase','41.59.15.160','2026-10-07 00:20:25'),
(55,2,'ALLY ABDALLAH','super_admin','Added portfolio item','StockSense: Demand Forecasting for Drinks Shops','41.59.15.160','2026-10-07 00:35:20'),
(56,2,'ALLY ABDALLAH','super_admin','Added portfolio item','CreditGuard: Late-Payment Risk Scoring','41.59.15.160','2026-10-07 01:01:49'),
(57,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','Deep Current: Ocean Exploration','41.59.15.160','2026-10-07 01:03:24'),
(58,2,'ALLY ABDALLAH','super_admin','Added portfolio item','Software Fix: Sales System Freezing at Checkout','41.59.15.160','2026-10-07 01:24:59'),
(59,2,'ALLY ABDALLAH','super_admin','Added portfolio item','Hardware Repair: POS Computer Shutting Down at Random','41.59.15.160','2026-10-07 01:33:21'),
(60,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','41.59.15.160','2026-10-07 01:37:09'),
(61,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','41.59.15.160','2026-10-07 01:37:43'),
(62,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','Inno-Stationery','41.59.15.160','2026-10-07 01:37:56'),
(63,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','eDesk','41.59.15.160','2026-10-07 01:38:05'),
(64,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','Lusako-Shop','41.59.15.160','2026-10-07 01:38:16'),
(65,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','FF3','41.59.15.160','2026-10-07 01:38:28'),
(66,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','FF3 B','41.59.15.160','2026-10-07 01:38:38'),
(67,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','Toniashop','41.59.15.160','2026-10-07 01:38:56'),
(68,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','Kikundi-chanika','41.59.15.160','2026-10-07 01:39:14'),
(69,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','After Hours: Architectural Night','41.59.15.160','2026-10-07 01:39:26'),
(70,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','Deep Current: Ocean Exploration','41.59.15.160','2026-10-07 01:39:37'),
(71,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','Digital Aurora: Interactive Showcase','41.59.15.160','2026-10-07 01:39:47'),
(72,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','StockSense: Demand Forecasting for Drinks Shops','41.59.15.160','2026-10-07 01:40:03'),
(73,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','CreditGuard: Late-Payment Risk Scoring','41.59.15.160','2026-10-07 01:40:14'),
(74,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','Software Fix: Sales System Freezing at Checkout','41.59.15.160','2026-10-07 01:40:27'),
(75,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','Hardware Repair: POS Computer Shutting Down at Random','41.59.15.160','2026-10-07 01:40:45'),
(76,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','Digital Aurora: Interactive Showcase','41.59.15.160','2026-10-07 01:41:31'),
(77,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','Cosmic Launch: Interactive CSS Animation','41.59.15.160','2026-10-07 01:41:50'),
(78,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','41.59.15.160','2026-10-07 01:41:52'),
(79,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','41.59.15.160','2026-10-07 01:44:26'),
(80,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','Business Technology Assessment & Digital Solutions','41.59.15.160','2026-10-07 01:45:04'),
(81,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','FF3 B','41.59.15.160','2026-10-07 01:53:58'),
(82,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','FF3','41.59.15.160','2026-10-07 01:54:36'),
(83,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','41.59.15.160','2026-10-07 01:54:41'),
(84,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','41.59.15.160','2026-10-07 08:44:15'),
(85,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','eDesk','41.59.15.160','2026-10-07 08:44:28'),
(86,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','41.59.15.160','2026-10-07 08:44:30'),
(87,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','41.59.15.160','2026-10-07 08:44:55'),
(88,2,'ALLY ABDALLAH','super_admin','Removed portfolio item','eDesk','41.59.15.160','2026-10-07 08:45:03'),
(89,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','41.59.15.160','2026-10-07 08:45:06'),
(90,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','41.59.15.160','2026-10-07 08:48:49'),
(91,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','41.59.15.160','2026-10-07 08:51:43'),
(92,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','41.59.15.160','2026-10-07 08:58:16'),
(93,2,'ALLY ABDALLAH','super_admin','Removed portfolio item','Lusako-Shop','41.59.15.160','2026-10-07 09:01:22'),
(94,2,'ALLY ABDALLAH','super_admin','Removed portfolio item','#3','41.59.15.160','2026-10-07 09:01:23'),
(95,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','41.59.15.160','2026-10-07 09:31:26'),
(96,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','197.186.3.53','2026-10-17 14:04:39'),
(97,2,'ALLY ABDALLAH','super_admin','Added portfolio item','eDesk--Print & Digital','197.186.3.53','2026-10-17 14:07:04'),
(98,2,'ALLY ABDALLAH','super_admin','Added portfolio item','DG Golden Grains','197.186.3.53','2026-10-17 14:12:07'),
(99,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','197.186.3.53','2026-10-17 14:14:49'),
(100,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','197.186.3.53','2026-10-17 14:14:49'),
(101,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','197.186.3.53','2026-10-17 14:15:25'),
(102,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','eDesk--Print & Digital','197.186.3.53','2026-10-17 14:19:53'),
(103,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','197.186.3.53','2026-10-17 14:31:29'),
(104,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','154.74.159.26','2026-10-19 02:55:10'),
(105,2,'ALLY ABDALLAH','super_admin','Updated mail settings','','154.74.159.26','2026-10-19 02:56:34'),
(106,2,'ALLY ABDALLAH','super_admin','Updated mail settings','','154.74.159.26','2026-10-19 02:59:05'),
(107,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','154.74.159.26','2026-10-19 02:59:46'),
(108,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','196.249.100.192','2026-10-19 03:23:31'),
(109,2,'ALLY ABDALLAH','super_admin','Added portfolio item','Stationery Smart Management System ( SSMS )','196.249.100.192','2026-10-19 03:33:59'),
(110,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','Stationery Smart Management System ( SSMS )','196.249.100.192','2026-10-19 03:35:56'),
(111,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','Stationery Smart Management System ( SSMS )','196.249.100.192','2026-10-19 03:36:13'),
(112,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','196.249.100.192','2026-10-19 03:36:26'),
(113,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','196.249.100.206','2026-10-19 09:37:21'),
(114,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','DG Golden Grains','196.249.100.206','2026-10-19 09:38:24'),
(115,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','196.249.100.206','2026-10-19 09:38:36'),
(116,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','41.59.18.74','2026-10-20 06:54:26'),
(117,2,'ALLY ABDALLAH','super_admin','Added portfolio item','expense-tracker','41.59.18.74','2026-10-20 07:01:23'),
(118,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','expense-tracker','41.59.18.74','2026-10-20 07:02:15'),
(119,2,'ALLY ABDALLAH','super_admin','Updated portfolio item','expense-tracker','41.59.18.74','2026-10-20 07:02:47'),
(120,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','41.59.18.74','2026-10-20 07:05:16'),
(121,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','197.186.6.53','2026-10-20 17:50:03'),
(122,2,'ALLY ABDALLAH','super_admin','Added portfolio item','MabumbaTech BizControl','197.186.6.53','2026-10-20 17:52:56'),
(123,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','197.186.6.53','2026-10-20 17:58:39'),
(124,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','196.249.100.19','2026-10-25 06:10:17'),
(125,2,'ALLY ABDALLAH','super_admin','Added portfolio item','ANGEL CLOSET','196.249.100.19','2026-10-25 06:20:27'),
(126,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','196.249.100.19','2026-10-25 06:20:58'),
(127,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','154.74.158.13','2026-10-30 09:23:07'),
(128,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','154.74.158.13','2026-10-30 09:23:13'),
(129,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','197.186.8.119','2026-10-31 22:31:54'),
(130,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','197.186.8.119','2026-10-31 22:32:06'),
(131,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','197.186.8.119','2026-10-31 22:37:10'),
(132,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','197.186.8.119','2026-10-31 22:37:38'),
(133,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','197.186.8.119','2026-11-01 02:49:21'),
(134,2,'ALLY ABDALLAH','super_admin','Updated mail settings','','197.186.8.119','2026-11-01 02:51:56'),
(135,2,'ALLY ABDALLAH','super_admin','Updated mail settings','','197.186.8.119','2026-11-01 02:51:58'),
(136,2,'ALLY ABDALLAH','super_admin','Logout','Super Admin logged out','197.186.8.119','2026-11-01 02:54:06'),
(137,2,'ALLY ABDALLAH','super_admin','Requested password reset','via email link','197.186.8.119','2026-11-01 02:54:17'),
(138,2,'ALLY ABDALLAH','super_admin','Password reset via email link','','197.186.8.119','2026-11-01 02:56:08'),
(139,2,'ALLY ABDALLAH','super_admin','Login','Super Admin logged in','197.186.8.119','2026-11-01 02:58:54'),
(140,2,'ALLY ABDALLAH','super_admin','Updated mail settings','','197.186.8.119','2026-11-01 02:59:19'),
(141,2,'ALLY ABDALLAH','super_admin','Updated mail settings','','197.186.8.119','2026-11-01 03:01:03');
/*!40000 ALTER TABLE `activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget_payments`
--

DROP TABLE IF EXISTS `budget_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `budget_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `budget_id` int(11) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `payment_method` enum('cash','bank_transfer','mobile_money','card','other') NOT NULL DEFAULT 'bank_transfer',
  `reference` varchar(80) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `paid_by` int(11) DEFAULT NULL,
  `paid_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_bp_budget` (`budget_id`),
  KEY `paid_by` (`paid_by`),
  CONSTRAINT `budget_payments_ibfk_1` FOREIGN KEY (`budget_id`) REFERENCES `budget_requests` (`id`) ON DELETE CASCADE,
  CONSTRAINT `budget_payments_ibfk_2` FOREIGN KEY (`paid_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_payments`
--

LOCK TABLES `budget_payments` WRITE;
/*!40000 ALTER TABLE `budget_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `budget_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget_requests`
--

DROP TABLE IF EXISTS `budget_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `budget_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `requested_by` int(11) NOT NULL,
  `department` enum('marketing','legal','other') NOT NULL DEFAULT 'other',
  `purpose` varchar(200) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `details` varchar(500) DEFAULT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `decided_by` int(11) DEFAULT NULL,
  `decision_note` varchar(255) DEFAULT NULL,
  `decided_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `transfer_status` enum('none','awaiting','transferred') NOT NULL DEFAULT 'none',
  `transferred_by` int(11) DEFAULT NULL,
  `transferred_at` datetime DEFAULT NULL,
  `transfer_reference` varchar(80) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `approved_amount` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `requested_by` (`requested_by`),
  KEY `decided_by` (`decided_by`),
  CONSTRAINT `budget_requests_ibfk_1` FOREIGN KEY (`requested_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `budget_requests_ibfk_2` FOREIGN KEY (`decided_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_requests`
--

LOCK TABLES `budget_requests` WRITE;
/*!40000 ALTER TABLE `budget_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `budget_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_loans`
--

DROP TABLE IF EXISTS `company_loans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_loans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(150) NOT NULL,
  `principal` decimal(14,2) NOT NULL,
  `total_repayable` decimal(14,2) NOT NULL,
  `installment_amount` decimal(14,2) DEFAULT NULL,
  `date_received` date NOT NULL,
  `due_date` date DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `status` enum('active','paid') NOT NULL DEFAULT 'active',
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `company_loans_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_loans`
--

LOCK TABLES `company_loans` WRITE;
/*!40000 ALTER TABLE `company_loans` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_loans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_messages`
--

DROP TABLE IF EXISTS `contact_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `subject` varchar(160) DEFAULT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `converted_to_lead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `converted_to_lead_at` datetime DEFAULT NULL,
  `converted_to_lead_by` int(11) DEFAULT NULL,
  `converted_to_sale_receipt` varchar(20) DEFAULT NULL,
  `converted_to_sale_amount` decimal(12,2) DEFAULT NULL,
  `converted_to_sale_at` datetime DEFAULT NULL,
  `converted_to_sale_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `converted_to_lead_id` (`converted_to_lead_id`),
  KEY `idx_contact_messages_created_at` (`created_at`),
  CONSTRAINT `contact_messages_ibfk_1` FOREIGN KEY (`converted_to_lead_id`) REFERENCES `leads` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_messages`
--

LOCK TABLES `contact_messages` WRITE;
/*!40000 ALTER TABLE `contact_messages` DISABLE KEYS */;
INSERT INTO `contact_messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `is_read`, `converted_to_lead_id`, `created_at`, `converted_to_lead_at`, `converted_to_lead_by`, `converted_to_sale_receipt`, `converted_to_sale_amount`, `converted_to_sale_at`, `converted_to_sale_by`) VALUES (1,'Gideon Rwabona','rwabonag@nm-aist.ac.tz','0763399399','Business management','Let as discuss',0,NULL,'2026-10-07 08:39:37',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `contact_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_change`
--

DROP TABLE IF EXISTS `customer_change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_change` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `change_code` varchar(20) NOT NULL,
  `receipt_code` varchar(20) NOT NULL,
  `customer_name` varchar(120) NOT NULL,
  `customer_phone` varchar(40) NOT NULL,
  `customer_address` varchar(200) DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL,
  `amount_returned` decimal(12,2) NOT NULL DEFAULT 0.00,
  `status` enum('owed','partial','returned') NOT NULL DEFAULT 'owed',
  `notes` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `change_code` (`change_code`),
  UNIQUE KEY `receipt_code` (`receipt_code`),
  KEY `created_by` (`created_by`),
  KEY `idx_customer_change_status` (`status`),
  KEY `idx_customer_change_phone` (`customer_phone`),
  CONSTRAINT `customer_change_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_change`
--

LOCK TABLES `customer_change` WRITE;
/*!40000 ALTER TABLE `customer_change` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_change` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_change_payouts`
--

DROP TABLE IF EXISTS `customer_change_payouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_change_payouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `change_id` int(11) NOT NULL,
  `kind` enum('refund','offset') NOT NULL DEFAULT 'refund',
  `amount` decimal(12,2) NOT NULL,
  `balance_after` decimal(12,2) NOT NULL,
  `payment_method` enum('cash','mobile_money','bank_transfer') DEFAULT NULL,
  `payment_channel` varchar(40) DEFAULT NULL,
  `debt_id` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `paid_date` date NOT NULL,
  `recorded_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `debt_id` (`debt_id`),
  KEY `recorded_by` (`recorded_by`),
  KEY `idx_change_payouts_change` (`change_id`),
  CONSTRAINT `customer_change_payouts_ibfk_1` FOREIGN KEY (`change_id`) REFERENCES `customer_change` (`id`) ON DELETE CASCADE,
  CONSTRAINT `customer_change_payouts_ibfk_2` FOREIGN KEY (`debt_id`) REFERENCES `customer_debts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `customer_change_payouts_ibfk_3` FOREIGN KEY (`recorded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_change_payouts`
--

LOCK TABLES `customer_change_payouts` WRITE;
/*!40000 ALTER TABLE `customer_change_payouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_change_payouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_debt_payments`
--

DROP TABLE IF EXISTS `customer_debt_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_debt_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `debt_id` int(11) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `balance_after` decimal(12,2) NOT NULL,
  `payment_method` enum('cash','mobile_money','bank_transfer','card') NOT NULL DEFAULT 'cash',
  `payment_channel` varchar(40) DEFAULT NULL,
  `reference` varchar(80) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `paid_date` date NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `recorded_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `recorded_by` (`recorded_by`),
  KEY `idx_debt_payments_debt` (`debt_id`),
  CONSTRAINT `customer_debt_payments_ibfk_1` FOREIGN KEY (`debt_id`) REFERENCES `customer_debts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `customer_debt_payments_ibfk_2` FOREIGN KEY (`recorded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_debt_payments`
--

LOCK TABLES `customer_debt_payments` WRITE;
/*!40000 ALTER TABLE `customer_debt_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_debt_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_debts`
--

DROP TABLE IF EXISTS `customer_debts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_debts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `debt_code` varchar(20) NOT NULL,
  `receipt_code` varchar(20) NOT NULL,
  `customer_name` varchar(120) NOT NULL,
  `customer_phone` varchar(40) NOT NULL,
  `customer_address` varchar(200) DEFAULT NULL,
  `total_amount` decimal(12,2) NOT NULL,
  `amount_paid` decimal(12,2) NOT NULL DEFAULT 0.00,
  `due_date` date DEFAULT NULL,
  `status` enum('unpaid','partial','paid') NOT NULL DEFAULT 'unpaid',
  `notes` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `debt_code` (`debt_code`),
  UNIQUE KEY `receipt_code` (`receipt_code`),
  KEY `created_by` (`created_by`),
  KEY `idx_customer_debts_status` (`status`),
  KEY `idx_customer_debts_phone` (`customer_phone`),
  CONSTRAINT `customer_debts_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_debts`
--

LOCK TABLES `customer_debts` WRITE;
/*!40000 ALTER TABLE `customer_debts` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_debts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `dept_key` varchar(60) NOT NULL,
  `label` varchar(120) NOT NULL,
  `icon` varchar(60) NOT NULL DEFAULT 'bi-briefcase',
  `is_broadcast` tinyint(1) NOT NULL DEFAULT 0,
  `is_custom` tinyint(1) NOT NULL DEFAULT 0,
  `added_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`dept_key`),
  KEY `added_by` (`added_by`),
  CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` (`dept_key`, `label`, `icon`, `is_broadcast`, `is_custom`, `added_by`, `created_at`) VALUES ('ai_ml','AI/ML Projects','bi-cpu-fill',0,0,NULL,'2026-10-05 05:17:17'),
('app_dev','App Development','bi-phone',0,0,NULL,'2026-10-05 05:17:17'),
('graphics','Graphics Designing','bi-palette',0,0,NULL,'2026-10-05 05:17:17'),
('it_consultancy','IT Consultancy','bi-diagram-3',0,0,NULL,'2026-10-05 05:17:17'),
('multimedia','Multimedia/Animation Projects','bi-film',0,0,NULL,'2026-10-05 05:17:17'),
('other_services','All Other Digital Services','bi-grid-3x3-gap',1,0,NULL,'2026-10-05 05:17:17'),
('software_hardware','Software & Hardware Solutions','bi-cpu',0,0,NULL,'2026-10-05 05:17:17'),
('web_dev','Web Development','bi-code-slash',0,0,NULL,'2026-10-05 05:17:17');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_queue`
--

DROP TABLE IF EXISTS `email_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to_email` varchar(190) NOT NULL,
  `to_name` varchar(150) DEFAULT '',
  `subject` varchar(255) NOT NULL,
  `body_html` mediumtext NOT NULL,
  `status` enum('pending','sent','failed') NOT NULL DEFAULT 'pending',
  `attempts` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `last_error` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `sent_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_queue_status` (`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_queue`
--

LOCK TABLES `email_queue` WRITE;
/*!40000 ALTER TABLE `email_queue` DISABLE KEYS */;
INSERT INTO `email_queue` (`id`, `to_email`, `to_name`, `subject`, `body_html`, `status`, `attempts`, `last_error`, `created_at`, `sent_at`) VALUES (1,'mabumbatech@gmail.com','MABUMBATECH Super Admin','Reset Your MABUMBATECH Password','<p>We received a request to reset the password for your administrator account.</p><p><a href=\"https://mabumbatech.wuaze.com/MABUMBATECH/frontend/html/auth/admin-reset-password.html?token=ad5f87f5c398bcda368488666d249ad4020ace6e1de1bcda71b9ed4131edf4b3\" style=\"display:inline-block;background:#0d52b8;color:#fff;padding:10px 18px;border-radius:6px;text-decoration:none;font-weight:600;\">Reset Password</a></p><p style=\"color:#5b6b85;font-size:12px;\">This link expires in 30 minutes. If you did not request this, you can safely ignore this email — your password will not be changed.</p>','sent',0,NULL,'2026-10-05 05:42:09','2026-11-01 02:45:06'),
(2,'mabumbatech@gmail.com','MABUMBATECH Super Admin','Reset Your MABUMBATECH Password','<p>We received a request to reset the password for your administrator account.</p><p><a href=\"https://mabumbatech.wuaze.com/MABUMBATECH/frontend/html/auth/admin-reset-password.html?token=fbabc415a61d6276c5d38b2cec15632def0908e8a186a85192a67605dd5ef3f8\" style=\"display:inline-block;background:#0d52b8;color:#fff;padding:10px 18px;border-radius:6px;text-decoration:none;font-weight:600;\">Reset Password</a></p><p style=\"color:#5b6b85;font-size:12px;\">This link expires in 30 minutes. If you did not request this, you can safely ignore this email — your password will not be changed.</p>','sent',0,NULL,'2026-10-05 05:43:42','2026-11-01 02:45:06'),
(3,'edwardkapinga@gmail.com','Edward Kapinga','Welcome to MABUMBATECH','<h3 style=\"margin:0 0 10px;color:#0a3d8f;\">Welcome to the Team</h3><p style=\"margin:0 0 16px;\">Hi Edward Kapinga, an account has been created for you at MABUMBATECH as Graphics Designing. Your username is &quot;edwardkapinga&quot;. Please ask your administrator for your login password.</p><a href=\"https://mabumbatech.wuaze.com/frontend/html/auth/login.html?as=staff\" style=\"display:inline-block;background:#0d52b8;color:#fff;padding:10px 18px;border-radius:6px;text-decoration:none;font-size:13px;font-weight:600;\">View Details</a>','sent',0,NULL,'2026-10-05 07:07:20','2026-11-01 02:45:06'),
(4,'iddysonyo@gmail.com','Iddy Ayubu','Welcome to MABUMBATECH','<h3 style=\"margin:0 0 10px;color:#0a3d8f;\">Welcome to the Team</h3><p style=\"margin:0 0 16px;\">Hi Iddy Ayubu, an administrator account has been created for you at MABUMBATECH. Your username is &quot;iddyayubu&quot;. Please ask the person who created your account for your login password.</p><a href=\"https://mabumbatech.wuaze.com/frontend/html/auth/login.html?as=admin\" style=\"display:inline-block;background:#0d52b8;color:#fff;padding:10px 18px;border-radius:6px;text-decoration:none;font-size:13px;font-weight:600;\">View Details</a>','sent',0,NULL,'2026-10-05 07:11:43','2026-11-01 02:45:06'),
(5,'razakselemani989@gmail.com','Razak Selemani','We received your request — MBT-255DA2','<h3 style=\"margin:0 0 10px;color:#0a3d8f;\">Request Received</h3><p style=\"margin:0 0 16px;\">Thank you, Razak Selemani! We received your &quot;AI/ML Projects&quot; request &quot;Robotics&quot;. Your tracking code is MBT-255DA2. Our team will review it shortly.</p><a href=\"https://mabumbatech.wuaze.com/frontend/html/public/track-request.html?code=MBT-255DA2\" style=\"display:inline-block;background:#0d52b8;color:#fff;padding:10px 18px;border-radius:6px;text-decoration:none;font-size:13px;font-weight:600;\">View Details</a>','sent',0,NULL,'2026-10-05 08:28:01','2026-11-01 02:45:06'),
(6,'mabumbatech@gmail.com','ALLY ABDALLAH','New Service Request: Robotics','<h3 style=\"margin:0 0 10px;color:#0a3d8f;\">New Service Request: Robotics</h3><p style=\"margin:0 0 16px;\">Razak Selemani submitted a new &quot;AI/ML Projects&quot; request (MBT-255DA2).</p><a href=\"https://mabumbatech.wuaze.com/backend/admin/requests.php?view=1\" style=\"display:inline-block;background:#0d52b8;color:#fff;padding:10px 18px;border-radius:6px;text-decoration:none;font-size:13px;font-weight:600;\">View Details</a>','sent',0,NULL,'2026-10-05 08:28:01','2026-11-01 02:45:06'),
(7,'iddysonyo@gmail.com','Iddy Ayubu','New Service Request: Robotics','<h3 style=\"margin:0 0 10px;color:#0a3d8f;\">New Service Request: Robotics</h3><p style=\"margin:0 0 16px;\">Razak Selemani submitted a new &quot;AI/ML Projects&quot; request (MBT-255DA2).</p><a href=\"https://mabumbatech.wuaze.com/backend/admin/requests.php?view=1\" style=\"display:inline-block;background:#0d52b8;color:#fff;padding:10px 18px;border-radius:6px;text-decoration:none;font-size:13px;font-weight:600;\">View Details</a>','sent',0,NULL,'2026-10-05 08:28:01','2026-11-01 02:45:06'),
(8,'mabumbatech@gmail.com','ALLY ABDALLAH','New Contact Message: Business management','<h3 style=\"margin:0 0 10px;color:#0a3d8f;\">New Contact Message: Business management</h3><p style=\"margin:0 0 16px;\">Gideon Rwabona sent a message: &quot;Let as discuss&quot;</p><a href=\"https://mabumbatech.wuaze.com/backend/admin/messages.php\" style=\"display:inline-block;background:#0d52b8;color:#fff;padding:10px 18px;border-radius:6px;text-decoration:none;font-size:13px;font-weight:600;\">View Details</a>','sent',0,NULL,'2026-10-07 08:39:37','2026-11-01 02:45:06'),
(9,'iddysonyo@gmail.com','Iddy Ayubu','New Contact Message: Business management','<h3 style=\"margin:0 0 10px;color:#0a3d8f;\">New Contact Message: Business management</h3><p style=\"margin:0 0 16px;\">Gideon Rwabona sent a message: &quot;Let as discuss&quot;</p><a href=\"https://mabumbatech.wuaze.com/backend/admin/messages.php\" style=\"display:inline-block;background:#0d52b8;color:#fff;padding:10px 18px;border-radius:6px;text-decoration:none;font-size:13px;font-weight:600;\">View Details</a>','sent',0,NULL,'2026-10-07 08:39:37','2026-11-01 02:45:07'),
(10,'mabumbatech@gmail.com','Test Recipient','MABUMBATECH — Test Email','<h3 style=\"margin:0 0 10px;color:#0a3d8f;\">Test Email</h3><p style=\"margin:0 0 16px;\">This is a test message confirming your mail settings are working correctly.</p>','sent',0,NULL,'2026-10-19 02:56:01','2026-11-01 02:45:07'),
(11,'mabumbatech@gmail.com','Test Recipient','MABUMBATECH — Test Email','<h3 style=\"margin:0 0 10px;color:#0a3d8f;\">Test Email</h3><p style=\"margin:0 0 16px;\">This is a test message confirming your mail settings are working correctly.</p>','sent',0,NULL,'2026-10-19 02:56:36','2026-11-01 02:45:07'),
(12,'mabumbatech@gmail.com','Test Recipient','MABUMBATECH — Test Email','<h3 style=\"margin:0 0 10px;color:#0a3d8f;\">Test Email</h3><p style=\"margin:0 0 16px;\">This is a test message confirming your mail settings are working correctly.</p>','sent',0,NULL,'2026-10-19 02:56:41','2026-11-01 02:45:07'),
(13,'mabumbatech@gmail.com','Test Recipient','MABUMBATECH — Test Email','<h3 style=\"margin:0 0 10px;color:#0a3d8f;\">Test Email</h3><p style=\"margin:0 0 16px;\">This is a test message confirming your mail settings are working correctly.</p>','sent',0,NULL,'2026-10-19 02:57:51','2026-11-01 02:45:07'),
(14,'mabumbatech@gmail.com','Test Recipient','MABUMBATECH — Test Email','<h3 style=\"margin:0 0 10px;color:#0a3d8f;\">Test Email</h3><p style=\"margin:0 0 16px;\">This is a test message confirming your mail settings are working correctly.</p>','sent',0,NULL,'2026-10-19 02:59:12','2026-11-01 02:45:07'),
(15,'mabumbatech@gmail.com','Test Recipient','MABUMBATECH — Test Email','<h3 style=\"margin:0 0 10px;color:#0a3d8f;\">Test Email</h3><p style=\"margin:0 0 16px;\">This is a test message confirming your mail settings are working correctly.</p>','sent',0,NULL,'2026-11-01 02:52:25','2026-11-01 02:53:06'),
(16,'mabumbatech@gmail.com','ALLY ABDALLAH','Reset Your MABUMBATECH Password','<p>We received a request to reset the password for your administrator account.</p><p><a href=\"https://www.mabumbatech.co.tz/frontend/html/auth/admin-reset-password.html?token=075a45ce17456ef15aca7171f5d7e721752476adf6747d19409b224c12b971d1\" style=\"display:inline-block;background:#0d52b8;color:#fff;padding:10px 18px;border-radius:6px;text-decoration:none;font-weight:600;\">Reset Password</a></p><p style=\"color:#5b6b85;font-size:12px;\">This link expires in 30 minutes. If you did not request this, you can safely ignore this email — your password will not be changed.</p>','sent',0,NULL,'2026-11-01 02:54:17','2026-11-01 02:55:04'),
(17,'mabumbatech@gmail.com','ALLY ABDALLAH','Password Changed','<h3 style=\"margin:0 0 10px;color:#0a3d8f;\">Password Changed</h3><p style=\"margin:0 0 16px;\">Your password was just reset using the email reset link. If this was not you, please contact us immediately.</p>','sent',0,NULL,'2026-11-01 02:56:08','2026-11-01 02:57:03'),
(18,'mabumbatech@gmail.com','Test Recipient','MABUMBATECH — Test Email','<h3 style=\"margin:0 0 10px;color:#0a3d8f;\">Test Email</h3><p style=\"margin:0 0 16px;\">This is a test message confirming your mail settings are working correctly.</p>','sent',0,NULL,'2026-11-01 03:01:03','2026-11-01 03:01:33'),
(19,'mabumbatech@gmail.com','Test Recipient','MABUMBATECH — Test Email','<h3 style=\"margin:0 0 10px;color:#0a3d8f;\">Test Email</h3><p style=\"margin:0 0 16px;\">This is a test message confirming your mail settings are working correctly.</p>','sent',0,NULL,'2026-11-01 03:11:18','2026-11-01 03:12:22'),
(20,'mabumbatech@gmail.com','Test Recipient','MABUMBATECH — Test Email','<h3 style=\"margin:0 0 10px;color:#0a3d8f;\">Test Email</h3><p style=\"margin:0 0 16px;\">This is a test message confirming your mail settings are working correctly.</p>','sent',0,NULL,'2026-11-01 03:16:34','2026-11-01 03:17:49');
/*!40000 ALTER TABLE `email_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_transactions`
--

DROP TABLE IF EXISTS `finance_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `finance_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('income','expense') NOT NULL,
  `category` varchar(60) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `payment_method` enum('cash','bank_transfer','mobile_money','card','other') NOT NULL DEFAULT 'other',
  `transaction_date` date NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `payroll_id` int(11) DEFAULT NULL,
  `recorded_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `payee` varchar(120) DEFAULT NULL,
  `reference` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `request_id` (`request_id`),
  KEY `recorded_by` (`recorded_by`),
  KEY `fk_txn_invoice` (`invoice_id`),
  KEY `fk_txn_payroll` (`payroll_id`),
  CONSTRAINT `finance_transactions_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `finance_transactions_ibfk_2` FOREIGN KEY (`request_id`) REFERENCES `service_requests` (`id`) ON DELETE SET NULL,
  CONSTRAINT `finance_transactions_ibfk_3` FOREIGN KEY (`recorded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_txn_invoice` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_txn_payroll` FOREIGN KEY (`payroll_id`) REFERENCES `payroll_records` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_transactions`
--

LOCK TABLES `finance_transactions` WRITE;
/*!40000 ALTER TABLE `finance_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_sales`
--

DROP TABLE IF EXISTS `inventory_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_code` varchar(20) NOT NULL,
  `receipt_code` varchar(20) DEFAULT NULL,
  `product_type_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(12,2) NOT NULL,
  `unit_cost` decimal(12,2) NOT NULL,
  `total_amount` decimal(12,2) NOT NULL,
  `total_cost` decimal(12,2) NOT NULL,
  `profit` decimal(12,2) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `payment_method` varchar(20) DEFAULT NULL,
  `payment_channel` varchar(40) DEFAULT NULL,
  `sold_by` int(11) DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `sale_code` (`sale_code`),
  KEY `product_type_id` (`product_type_id`),
  KEY `sold_by` (`sold_by`),
  KEY `idx_inventory_sales_created_at` (`created_at`),
  KEY `idx_inventory_sales_receipt` (`receipt_code`),
  KEY `idx_inventory_sales_request` (`request_id`),
  CONSTRAINT `fk_inventory_sales_request` FOREIGN KEY (`request_id`) REFERENCES `service_requests` (`id`) ON DELETE SET NULL,
  CONSTRAINT `inventory_sales_ibfk_1` FOREIGN KEY (`product_type_id`) REFERENCES `product_types` (`id`),
  CONSTRAINT `inventory_sales_ibfk_2` FOREIGN KEY (`sold_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_sales`
--

LOCK TABLES `inventory_sales` WRITE;
/*!40000 ALTER TABLE `inventory_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_code` varchar(20) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `request_id` int(11) DEFAULT NULL,
  `quotation_id` int(11) DEFAULT NULL,
  `title` varchar(160) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `amount_paid` decimal(12,2) NOT NULL DEFAULT 0.00,
  `status` enum('unpaid','partial','paid','overdue','cancelled') NOT NULL DEFAULT 'unpaid',
  `due_date` date DEFAULT NULL,
  `issued_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `invoice_code` (`invoice_code`),
  KEY `customer_id` (`customer_id`),
  KEY `request_id` (`request_id`),
  KEY `quotation_id` (`quotation_id`),
  KEY `issued_by` (`issued_by`),
  CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `invoices_ibfk_2` FOREIGN KEY (`request_id`) REFERENCES `service_requests` (`id`) ON DELETE SET NULL,
  CONSTRAINT `invoices_ibfk_3` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`) ON DELETE SET NULL,
  CONSTRAINT `invoices_ibfk_4` FOREIGN KEY (`issued_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_role_permissions`
--

DROP TABLE IF EXISTS `job_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_role_permissions` (
  `job_role_key` varchar(40) NOT NULL,
  `permission_key` varchar(60) NOT NULL,
  PRIMARY KEY (`job_role_key`,`permission_key`),
  KEY `permission_key` (`permission_key`),
  CONSTRAINT `job_role_permissions_ibfk_1` FOREIGN KEY (`job_role_key`) REFERENCES `job_roles` (`job_role_key`) ON DELETE CASCADE,
  CONSTRAINT `job_role_permissions_ibfk_2` FOREIGN KEY (`permission_key`) REFERENCES `permissions` (`permission_key`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_role_permissions`
--

LOCK TABLES `job_role_permissions` WRITE;
/*!40000 ALTER TABLE `job_role_permissions` DISABLE KEYS */;
INSERT INTO `job_role_permissions` (`job_role_key`, `permission_key`) VALUES ('accountant','finance.manage'),
('accountant','finance.view'),
('accountant','marketing.view'),
('accountant','payroll.manage'),
('accountant','payroll.view'),
('accountant','reports.financial'),
('general_manager','budget_requests.manage'),
('general_manager','departments.manage'),
('general_manager','legal.records.view'),
('general_manager','marketing.view'),
('general_manager','projects.manage'),
('general_manager','projects.view'),
('general_manager','reports.operational'),
('general_manager','sales_overview.view'),
('lawyer','budget_requests.create'),
('lawyer','legal.manage'),
('lawyer','legal.view'),
('lawyer','projects.comment'),
('lawyer','projects.view'),
('marketing_officer','budget_requests.create'),
('marketing_officer','marketing.manage'),
('marketing_officer','marketing.view'),
('sales_officer','inventory.manage'),
('sales_officer','inventory.sell'),
('sales_officer','inventory.view'),
('sales_officer','marketing.view'),
('secretary','appointments.manage'),
('secretary','messages.manage');
/*!40000 ALTER TABLE `job_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_roles`
--

DROP TABLE IF EXISTS `job_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_roles` (
  `job_role_key` varchar(40) NOT NULL,
  `label` varchar(120) NOT NULL,
  `icon` varchar(60) NOT NULL DEFAULT 'bi-person-badge',
  `is_custom` tinyint(1) NOT NULL DEFAULT 0,
  `added_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`job_role_key`),
  KEY `added_by` (`added_by`),
  CONSTRAINT `job_roles_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_roles`
--

LOCK TABLES `job_roles` WRITE;
/*!40000 ALTER TABLE `job_roles` DISABLE KEYS */;
INSERT INTO `job_roles` (`job_role_key`, `label`, `icon`, `is_custom`, `added_by`, `created_at`) VALUES ('accountant','Accountant / Finance Manager','bi-cash-coin',0,NULL,'2026-10-05 05:17:17'),
('general_manager','General Manager / Operations Manager','bi-diagram-3',0,NULL,'2026-10-05 05:17:17'),
('lawyer','Lawyer','bi-briefcase',0,NULL,'2026-10-05 05:17:18'),
('marketing_officer','Marketing Officer','bi-person-lines-fill',0,NULL,'2026-10-05 05:17:18'),
('sales_officer','Sales Officer','bi-graph-up-arrow',0,NULL,'2026-10-05 05:17:17'),
('secretary','Secretary / Receptionist','bi-journal-text',0,NULL,'2026-10-05 05:17:17');
/*!40000 ALTER TABLE `job_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_activities`
--

DROP TABLE IF EXISTS `lead_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lead_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `activity_type` enum('note','call','email','meeting','follow_up','status_change') NOT NULL DEFAULT 'note',
  `description` varchar(500) DEFAULT NULL,
  `follow_up_at` datetime DEFAULT NULL,
  `old_status` varchar(20) DEFAULT NULL,
  `new_status` varchar(20) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `lead_activities_ibfk_1` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lead_activities_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_activities`
--

LOCK TABLES `lead_activities` WRITE;
/*!40000 ALTER TABLE `lead_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `leads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(120) NOT NULL,
  `company_name` varchar(160) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `source` enum('website_contact','referral','manual','other','social_media','advertisement','own_search','walk_in','phone_call','email') NOT NULL DEFAULT 'manual',
  `source_detail` varchar(160) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `requested_service_id` int(11) DEFAULT NULL,
  `status` enum('new','contacted','qualified','quotation','negotiation','won','lost') NOT NULL DEFAULT 'new',
  `assigned_to` int(11) DEFAULT NULL,
  `converted_customer_id` int(11) DEFAULT NULL,
  `converted_request_id` int(11) DEFAULT NULL,
  `lost_reason` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `requested_service_id` (`requested_service_id`),
  KEY `assigned_to` (`assigned_to`),
  KEY `converted_customer_id` (`converted_customer_id`),
  KEY `converted_request_id` (`converted_request_id`),
  KEY `created_by` (`created_by`),
  KEY `idx_leads_source` (`source`),
  KEY `idx_leads_phone` (`phone`),
  CONSTRAINT `leads_ibfk_2` FOREIGN KEY (`requested_service_id`) REFERENCES `services` (`id`) ON DELETE SET NULL,
  CONSTRAINT `leads_ibfk_3` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `leads_ibfk_4` FOREIGN KEY (`converted_customer_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `leads_ibfk_5` FOREIGN KEY (`converted_request_id`) REFERENCES `service_requests` (`id`) ON DELETE SET NULL,
  CONSTRAINT `leads_ibfk_6` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_requests`
--

DROP TABLE IF EXISTS `leave_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `leave_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `leave_type` enum('annual','sick','unpaid','maternity_paternity','other') NOT NULL DEFAULT 'annual',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` varchar(400) DEFAULT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `approved_by` int(11) DEFAULT NULL,
  `decision_note` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`),
  KEY `approved_by` (`approved_by`),
  CONSTRAINT `leave_requests_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `leave_requests_ibfk_2` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_requests`
--

LOCK TABLES `leave_requests` WRITE;
/*!40000 ALTER TABLE `leave_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `leave_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `legal_cases`
--

DROP TABLE IF EXISTS `legal_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `legal_cases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reported_by` int(11) NOT NULL,
  `record_type` enum('issue','case','emergency') NOT NULL DEFAULT 'issue',
  `title` varchar(200) NOT NULL,
  `priority` enum('low','medium','high','critical') NOT NULL DEFAULT 'medium',
  `status` enum('open','in_progress','resolved','closed') NOT NULL DEFAULT 'open',
  `parties` varchar(255) DEFAULT NULL,
  `incident_date` date DEFAULT NULL,
  `description` text NOT NULL,
  `action_taken` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_legal_cases_user` (`reported_by`),
  KEY `idx_legal_cases_status` (`status`),
  CONSTRAINT `legal_cases_ibfk_1` FOREIGN KEY (`reported_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legal_cases`
--

LOCK TABLES `legal_cases` WRITE;
/*!40000 ALTER TABLE `legal_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `legal_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `legal_documents`
--

DROP TABLE IF EXISTS `legal_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `legal_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uploaded_by` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `doc_type` varchar(60) NOT NULL DEFAULT 'Other',
  `description` varchar(500) DEFAULT NULL,
  `original_name` varchar(255) NOT NULL,
  `stored_name` varchar(255) NOT NULL,
  `file_size` int(11) NOT NULL DEFAULT 0,
  `mime_type` varchar(120) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_legal_documents_user` (`uploaded_by`),
  CONSTRAINT `legal_documents_ibfk_1` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legal_documents`
--

LOCK TABLES `legal_documents` WRITE;
/*!40000 ALTER TABLE `legal_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `legal_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `legal_notes`
--

DROP TABLE IF EXISTS `legal_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `legal_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `category` varchar(60) NOT NULL DEFAULT 'General',
  `body` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_legal_notes_author` (`author_id`),
  CONSTRAINT `legal_notes_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legal_notes`
--

LOCK TABLES `legal_notes` WRITE;
/*!40000 ALTER TABLE `legal_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `legal_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_repayments`
--

DROP TABLE IF EXISTS `loan_repayments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan_repayments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loan_id` int(11) NOT NULL,
  `amount` decimal(14,2) NOT NULL,
  `principal_part` decimal(14,2) NOT NULL DEFAULT 0.00,
  `interest_part` decimal(14,2) NOT NULL DEFAULT 0.00,
  `paid_date` date NOT NULL,
  `payment_method` enum('cash','bank_transfer','mobile_money','card','other') NOT NULL DEFAULT 'bank_transfer',
  `reference` varchar(80) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `recorded_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_lr_loan` (`loan_id`),
  KEY `idx_lr_date` (`paid_date`),
  KEY `recorded_by` (`recorded_by`),
  CONSTRAINT `loan_repayments_ibfk_1` FOREIGN KEY (`loan_id`) REFERENCES `company_loans` (`id`) ON DELETE CASCADE,
  CONSTRAINT `loan_repayments_ibfk_2` FOREIGN KEY (`recorded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_repayments`
--

LOCK TABLES `loan_repayments` WRITE;
/*!40000 ALTER TABLE `loan_repayments` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_repayments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `title` varchar(160) NOT NULL,
  `message` varchar(400) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `email_sent` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` (`id`, `user_id`, `type`, `title`, `message`, `link`, `is_read`, `email_sent`, `created_at`) VALUES (1,2,'new_request','New Service Request: Robotics','Razak Selemani submitted a new \"AI/ML Projects\" request (MBT-255DA2).','/backend/admin/requests.php?view=1',1,1,'2026-10-05 08:28:01'),
(2,4,'new_request','New Service Request: Robotics','Razak Selemani submitted a new \"AI/ML Projects\" request (MBT-255DA2).','/backend/admin/requests.php?view=1',0,1,'2026-10-05 08:28:01'),
(3,2,'new_contact','New Contact Message: Business management','Gideon Rwabona sent a message: \"Let as discuss\"','/backend/admin/messages.php',1,1,'2026-10-07 08:39:37'),
(4,4,'new_contact','New Contact Message: Business management','Gideon Rwabona sent a message: \"Let as discuss\"','/backend/admin/messages.php',0,1,'2026-10-07 08:39:37'),
(5,2,'security_reset','Password Changed','Your password was just reset using the email reset link. If this was not you, please contact us immediately.','',0,1,'2026-11-01 02:56:08');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token_hash` char(64) NOT NULL,
  `expires_at` datetime NOT NULL,
  `used_at` datetime DEFAULT NULL,
  `requested_ip` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idx_password_resets_token_hash` (`token_hash`),
  KEY `idx_password_resets_user_id` (`user_id`),
  CONSTRAINT `password_resets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` (`id`, `user_id`, `token_hash`, `expires_at`, `used_at`, `requested_ip`, `created_at`) VALUES (3,2,'d93ab3a6e6fa90f7ec894660315c840f07611e93bc4ae8e7bb43904b27ab046d','2026-11-01 03:24:17','2026-11-01 02:56:08','197.186.8.119','2026-11-01 02:54:17');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll_records`
--

DROP TABLE IF EXISTS `payroll_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `payroll_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `period_month` date NOT NULL,
  `gross_amount` decimal(12,2) NOT NULL,
  `deductions` decimal(12,2) NOT NULL DEFAULT 0.00,
  `net_amount` decimal(12,2) NOT NULL,
  `status` enum('pending','paid') NOT NULL DEFAULT 'pending',
  `paid_at` datetime DEFAULT NULL,
  `recorded_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `payment_reference` varchar(80) DEFAULT NULL,
  `paid_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_user_period` (`user_id`,`period_month`),
  KEY `recorded_by` (`recorded_by`),
  CONSTRAINT `payroll_records_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `payroll_records_ibfk_2` FOREIGN KEY (`recorded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll_records`
--

LOCK TABLES `payroll_records` WRITE;
/*!40000 ALTER TABLE `payroll_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `payroll_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `permission_key` varchar(60) NOT NULL,
  `category` varchar(40) NOT NULL,
  `label` varchar(160) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`permission_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`permission_key`, `category`, `label`, `created_at`) VALUES ('appointments.manage','admin_ops','Manage appointments, meetings & visitors','2026-10-05 05:17:17'),
('audit.view','system','View audit logs','2026-10-05 05:17:17'),
('budget_requests.create','finance','Submit a budget/expense request','2026-10-05 05:17:18'),
('budget_requests.manage','finance','Review & decide budget/expense requests','2026-10-05 05:17:18'),
('departments.manage','system','Manage departments','2026-10-05 05:17:17'),
('employees.manage','people','Create and manage Service Staff accounts','2026-10-05 05:17:17'),
('finance.manage','finance','Record income/expenses, manage payments & invoices','2026-10-05 05:17:17'),
('finance.view','finance','View financial data','2026-10-05 05:17:17'),
('inventory.manage','inventory','Manage products, stock, purchases & suppliers','2026-10-05 05:17:17'),
('inventory.sell','inventory','Record product sales','2026-10-05 05:17:18'),
('inventory.view','inventory','View products & stock','2026-10-05 05:17:17'),
('legal.manage','legal','Manage legal matters & tax requirements','2026-10-05 05:17:18'),
('legal.records.view','legal','View the Lawyer\'s notes, documents and reported cases (read-only)','2026-10-05 05:17:19'),
('legal.view','legal','View legal matters & tax requirements','2026-10-05 05:17:18'),
('marketing.acquisition.manage','marketing','Review, assign & forward customer-acquisition requests','2026-10-05 05:17:18'),
('marketing.manage','marketing','Manage customer acquisition, marketing tasks & expenses','2026-10-05 05:17:17'),
('marketing.view','marketing','View customer acquisition & leads','2026-10-05 05:17:17'),
('messages.manage','services','Manage contact messages','2026-10-05 05:17:17'),
('payroll.manage','finance','Manage payroll','2026-10-05 05:17:17'),
('payroll.view','finance','View payroll','2026-10-05 05:17:17'),
('portfolio.manage','services','Manage portfolio','2026-10-05 05:17:17'),
('projects.comment','projects','Add comments/concerns to a project (read + comment only)','2026-10-05 05:17:18'),
('projects.manage','projects','Create/assign/manage projects & tasks','2026-10-05 05:17:17'),
('projects.view','projects','View projects/requests','2026-10-05 05:17:17'),
('reports.financial','finance','View financial reports','2026-10-05 05:17:17'),
('reports.operational','admin_ops','View operational reports','2026-10-05 05:17:17'),
('roles.manage','system','Manage roles & permissions','2026-10-05 05:17:17'),
('sales_overview.view','inventory','View sales & stock overview (read-only)','2026-10-05 05:17:19'),
('services.manage','services','Manage services catalogue','2026-10-05 05:17:17'),
('settings.manage','system','Manage company/mail settings','2026-10-05 05:17:17'),
('users.manage','system','Manage user accounts','2026-10-05 05:17:17');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio`
--

DROP TABLE IF EXISTS `portfolio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `category_key` varchar(40) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `technologies` varchar(300) DEFAULT NULL,
  `project_outcome` varchar(500) DEFAULT NULL,
  `completion_date` date DEFAULT NULL,
  `client_name` varchar(120) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `project_url` varchar(255) DEFAULT NULL,
  `linked_request_id` int(11) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `added_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `added_by` (`added_by`),
  KEY `linked_request_id` (`linked_request_id`),
  CONSTRAINT `portfolio_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `portfolio_ibfk_2` FOREIGN KEY (`linked_request_id`) REFERENCES `service_requests` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio`
--

LOCK TABLES `portfolio` WRITE;
/*!40000 ALTER TABLE `portfolio` DISABLE KEYS */;
INSERT INTO `portfolio` (`id`, `title`, `category_key`, `description`, `technologies`, `project_outcome`, `completion_date`, `client_name`, `image`, `project_url`, `linked_request_id`, `is_featured`, `added_by`, `created_at`) VALUES (1,'Inno-Stationery','web_dev','A web-based application designed to manage and monitor stationery operations, including inventory, sales, expenses, and daily activities.',NULL,NULL,NULL,'Zaiko Rowassa','proj_1791231802_e4ae2583.png','https://inno-stationery.infinityfreeapp.com/frontend/index.html',NULL,1,2,'2026-10-05 06:45:19'),
(4,'FF3','graphics','Swahili social media post announcing direct USD and EUR exchange through bank accounts, highlighting no queues, fast service, and secure transactions. Features a joyful model, currency icon, and the brand’s deep red and white campaign style.',NULL,'Delivered to the client as a ready-to-post social media graphic.',NULL,'Edward Kapinga','proj_1791208803_a04b6559.jpeg','',NULL,1,2,'2026-10-05 07:00:04'),
(5,'FF3 B','graphics','Fast Forex Bureau social media post promoting daily exchange rates, featuring a cheerful model with a phone, bold “New month, same simplicity!” headline, brand elements, and contact details in a red, white, and soft pink design.',NULL,'Delivered to the client as a ready-to-post social media graphic.',NULL,'Edward','proj_1791208925_286ebf2c.jpeg','',NULL,1,2,'2026-10-05 07:02:06'),
(6,'Toniashop','web_dev','TONIASHOP is a modern web-based shop management and customer ordering system that streamlines sales, inventory, product management, and customer orders in one platform.',NULL,NULL,NULL,'Remija Alfeo','proj_1791295692_b0eb2d03.png','https://antoniaonlineshop.infinityfreeapp.com/toniashop/frontend/index.html',NULL,1,2,'2026-10-06 07:08:12'),
(7,'Kikundi-chanika','app_dev','Kikundi-Chanika is a mobile-friendly web app for managing a community savings and investment group, including member contributions, loans, meetings, records, and financial reports.',NULL,NULL,NULL,'Ally Selemani','proj_1791295865_acc32242.png','https://kikundi-chanika.kesug.com/frontend/index.html',NULL,0,2,'2026-10-06 07:11:05'),
(8,'Business Technology Assessment & Digital Solutions','it_consultancy','Provided IT consultancy services to assess the client’s business operations, identify technology-related challenges, and recommend practical digital solutions to improve efficiency, productivity, and overall business operations.',NULL,NULL,NULL,'Godwin Kilangaso','proj_1791305289_b9d7cc91.png','',NULL,1,2,'2026-10-06 09:48:09'),
(9,'DUKAHUB: Multi-Store Management for Drinks Shops','it_consultancy','DUKAHUB is a multi-store management platform that gives drinks retailers one system to manage stock, sales, and performance across all branches.',NULL,'Hassan Chuggo can now see stock and sales for all six(6) shops in one place, instead of how it was done before.',NULL,'Hassan Chuggo','proj_1791306075_fb111384.png','',NULL,1,2,'2026-10-06 10:01:15'),
(10,'Cosmic Launch: Interactive CSS Animation','multimedia','Cosmic Launch is a responsive browser animation featuring a rocket, stars, glowing planet, pulsing flame, and fading trail, with pause and restart controls.',NULL,'Concept piece showcasing lightweight, interactive web motion skills.',NULL,'Salma Saidi','proj_1791355302_a8b664a3.png','https://cosmic-launch.xo.je/cosmic_launch.html',NULL,1,2,'2026-10-06 23:21:49'),
(11,'After Hours: Architectural Night','multimedia','A cinematic night-city study. Rain, glowing windows, a rising moon and a neon glint, all animated in the browser. Pause and restart controls included.',NULL,'Personal concept piece. Shows atmospheric motion design for the web.',NULL,'Yahya Juma','proj_1791356195_efb8db06.png','https://after-hours.xo.je/after-hours-night.html',NULL,1,2,'2026-10-06 23:56:36'),
(12,'Deep Current: Ocean Exploration','multimedia','Animated deep-sea dive with a submarine, spinning propeller, light beam, jellyfish, fish, bubbles, sonar scan, and live-style readouts. Includes pause and restart controls.',NULL,'Personal concept piece. Shows illustrated, layered motion design for the web.',NULL,'Athumani Zumber','proj_1791356919_b7ee6ffb.png','https://ocean-exploration.xo.je/ocean_exploration.html',NULL,1,2,'2026-10-07 00:08:39'),
(13,'Digital Aurora: Interactive Showcase','multimedia','A glowing glass orb with orbiting rings and a moving satellite, floating over a perspective grid and drifting particles. Smooth, looping motion with pause and restart controls.',NULL,'Personal concept piece. Shows depth, lighting and smooth motion design for the web.',NULL,'Zuwena Hamza','proj_1791357625_6a24a9ab.png','https://digital-aurora.xo.je/digital-aurora.html',NULL,1,2,'2026-10-07 00:20:25'),
(14,'StockSense: Demand Forecasting for Drinks Shops','ai_ml','ML model that predicts daily drink-shop sales using day, promotions, and temperature, with an interactive demo for multi-store retailers.',NULL,'Test data: average error was **10 units/day**, versus **18** for the “same as last week” baseline. Demonstrated using synthetic data.',NULL,'Zubimedi Ombeni','proj_1791358520_7623bef3.png','https://stocksense.xo.je/stocksense.html',NULL,1,2,'2026-10-07 00:35:20'),
(15,'CreditGuard: Late-Payment Risk Scoring','ai_ml','ML model that predicts a shop customer’s risk of late credit payments using payment history, credit amount, customer tenure, and credit usage. Includes an interactive profile-testing demo.',NULL,'On 750 unseen customers, the model identified **41% of late payers**, with **38% of flagged customers actually late**, versus **8% by chance**. Demonstrated on synthetic data.',NULL,'Issa Juma','proj_1791360108_266c8917.png','https://creditguard.xo.je/creditguard.html',NULL,1,2,'2026-10-07 01:01:49'),
(16,'Software Fix: Sales System Freezing at Checkout','software_hardware','Problem:Sales software froze during busy hours.\r\nFound:Large database, outdated software, and low storage.\r\nFixed:Backed up data, cleaned the database, updated software, freed storage, and added daily backups.\r\nResult:Smooth checkout and safer sales data.',NULL,'Checkout no longer freezes in busy hours. The system now has scheduled backups and a maintenance routine.',NULL,'Halima Juma','proj_1791361498_05188e1b.png','',NULL,0,2,'2026-10-07 01:24:59'),
(17,'Hardware Repair: POS Computer Shutting Down at Random','software_hardware','Problem:Till computer kept shutting down after running for a while.\r\nFound:Blocked cooling vents, dried thermal paste, and unstable power.\r\nFixed:Cleaned the machine, replaced thermal paste and power adapter, and tested it under load.',NULL,'The computer stays cool and reliable, avoiding a full replacement.',NULL,'Derrick Simon','proj_1791362000_97880915.png','',NULL,1,2,'2026-10-07 01:33:21'),
(18,'eDesk--Print & Digital','web_dev','A complete business management system for stationery sales, digital services, inventory, payments, and daily operations.',NULL,'Good performance.',NULL,'Gideon Rwabona','proj_1792271992_e24c343f.png','https://edesk-stationery.infinityfreeapp.com/Frontend/index.html',NULL,1,2,'2026-10-17 14:07:04'),
(19,'DG Golden Grains','app_dev','A business management system for tracking products, stock, sales, customer debts, expenses, purchases, cash flow, and performance reports.',NULL,'Replaced paper records with a system for tracking stock, sales, debts, expenses, and profit.',NULL,'Diana & Gideon','proj_1792271525_970a363c.jpg','https://golden-grains.infinityfreeapp.com/frontend/index.html',NULL,1,2,'2026-10-17 14:12:07'),
(20,'Stationery Smart Management System ( SSMS )',NULL,'A web-based stationery management system for sales, receipts, inventory, purchases, services, expenses, customer debts, damaged stock, cash audits, and reports, featuring role-based access and a complete audit log.',NULL,'Replaced manual record-keeping with automated stock, sales, debt, and profit tracking.',NULL,'Innocent','proj_1792406039_5186a711.png','https://innos-stationery.wuaze.com',NULL,1,2,'2026-10-19 03:33:59'),
(21,'expense-tracker','app_dev','Expense Tracker is a simple, reliable financial management app that helps people track income and expenses, manage budgets and debts, and plan savings goals in Tanzanian Shillings (TZS). It works on any phone or computer, even offline.',NULL,'Replaced manual financial tracking with a digital system, enabling users to monitor income, expenses, debts, and savings efficiently, even offline.',NULL,'Public platform','proj_1792504967_b00f36b2.png','https://expense-tracker.kesug.com',NULL,1,2,'2026-10-20 07:01:23'),
(22,'MabumbaTech BizControl','web_dev','A web-based business management system that brings sales, inventory, services, expenses and customer debts into one place. It gives owners and staff real-time reports and role-based access, so the whole business runs from a single dashboard.',NULL,'Replaced manual record-keeping with a centralized system for managing business operations, tracking performance, and generating real-time reports.',NULL,'','proj_1792543975_8861be7b.png','https://mabumbaa.infinityfreeapp.com/Frontend/index.html',NULL,1,2,'2026-10-20 17:52:56'),
(23,'ANGEL CLOSET','web_dev','A web-based platform connecting clothing sellers with customers, enabling users to browse available clothing, explore discounts, communicate with sellers, and place orders.',NULL,'Simplified clothing shopping and improved seller-customer interaction.',NULL,'Angel','proj_1792934427_221f3653.jpg','https://angelcloset.infinityfreeapp.com',NULL,1,2,'2026-10-25 06:20:27');
/*!40000 ALTER TABLE `portfolio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` (`id`, `name`, `created_at`) VALUES (1,'Laptops','2026-10-05 05:17:18'),
(2,'Desktops','2026-10-05 05:17:18'),
(3,'Materials / Equipment','2026-10-05 05:17:18');
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_types`
--

DROP TABLE IF EXISTS `product_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `unit` varchar(20) NOT NULL DEFAULT 'pcs',
  `buying_price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `selling_price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `minimum_selling_price` decimal(12,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `minimum_stock_level` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_types_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_types`
--

LOCK TABLES `product_types` WRITE;
/*!40000 ALTER TABLE `product_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE SET NULL,
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_links`
--

DROP TABLE IF EXISTS `project_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `url` varchar(500) NOT NULL,
  `link_type` enum('website','webapp','demo','staging','repository','documentation','other') NOT NULL DEFAULT 'other',
  `description` varchar(300) DEFAULT NULL,
  `is_customer_visible` tinyint(1) NOT NULL DEFAULT 0,
  `added_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `request_id` (`request_id`),
  KEY `added_by` (`added_by`),
  CONSTRAINT `project_links_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `service_requests` (`id`) ON DELETE CASCADE,
  CONSTRAINT `project_links_ibfk_2` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_links`
--

LOCK TABLES `project_links` WRITE;
/*!40000 ALTER TABLE `project_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_milestones`
--

DROP TABLE IF EXISTS `project_milestones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_milestones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `title` varchar(160) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` enum('pending','in_progress','done') NOT NULL DEFAULT 'pending',
  `due_date` date DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `request_id` (`request_id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `project_milestones_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `service_requests` (`id`) ON DELETE CASCADE,
  CONSTRAINT `project_milestones_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_milestones`
--

LOCK TABLES `project_milestones` WRITE;
/*!40000 ALTER TABLE `project_milestones` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_milestones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_team`
--

DROP TABLE IF EXISTS `project_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_on_project` enum('sales','marketing','accounting','oversight','support','other') NOT NULL DEFAULT 'other',
  `added_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_request_user` (`request_id`,`user_id`),
  KEY `user_id` (`user_id`),
  KEY `added_by` (`added_by`),
  CONSTRAINT `project_team_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `service_requests` (`id`) ON DELETE CASCADE,
  CONSTRAINT `project_team_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `project_team_ibfk_3` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_team`
--

LOCK TABLES `project_team` WRITE;
/*!40000 ALTER TABLE `project_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_items`
--

DROP TABLE IF EXISTS `purchase_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) NOT NULL,
  `product_type_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_cost` decimal(12,2) NOT NULL,
  `line_total` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_id` (`purchase_id`),
  KEY `product_type_id` (`product_type_id`),
  CONSTRAINT `purchase_items_ibfk_1` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE,
  CONSTRAINT `purchase_items_ibfk_2` FOREIGN KEY (`product_type_id`) REFERENCES `product_types` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_items`
--

LOCK TABLES `purchase_items` WRITE;
/*!40000 ALTER TABLE `purchase_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_code` varchar(20) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `purchase_date` date NOT NULL,
  `total_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `notes` varchar(255) DEFAULT NULL,
  `recorded_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `purchase_code` (`purchase_code`),
  KEY `supplier_id` (`supplier_id`),
  KEY `recorded_by` (`recorded_by`),
  CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE SET NULL,
  CONSTRAINT `purchases_ibfk_2` FOREIGN KEY (`recorded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotations`
--

DROP TABLE IF EXISTS `quotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quote_code` varchar(20) NOT NULL,
  `lead_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `title` varchar(160) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `valid_until` date DEFAULT NULL,
  `status` enum('draft','sent','accepted','rejected','expired') NOT NULL DEFAULT 'draft',
  `notes` varchar(500) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `quote_code` (`quote_code`),
  KEY `lead_id` (`lead_id`),
  KEY `customer_id` (`customer_id`),
  KEY `service_id` (`service_id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `quotations_ibfk_1` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE SET NULL,
  CONSTRAINT `quotations_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `quotations_ibfk_3` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE SET NULL,
  CONSTRAINT `quotations_ibfk_4` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotations`
--

LOCK TABLES `quotations` WRITE;
/*!40000 ALTER TABLE `quotations` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rate_limits`
--

DROP TABLE IF EXISTS `rate_limits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `rate_limits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limit_key` varchar(191) NOT NULL,
  `attempts` int(11) NOT NULL DEFAULT 1,
  `first_attempt_at` datetime NOT NULL,
  `locked_until` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_limit_key` (`limit_key`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rate_limits`
--

LOCK TABLES `rate_limits` WRITE;
/*!40000 ALTER TABLE `rate_limits` DISABLE KEYS */;
INSERT INTO `rate_limits` (`id`, `limit_key`, `attempts`, `first_attempt_at`, `locked_until`) VALUES (2,'admin_reset_request:mabumbatech@gmail.com:41.59.187.52',1,'2026-10-05 05:43:42',NULL),
(4,'admin_reset_request:mabumbatech@gmail.com:197.186.8.119',1,'2026-11-01 02:54:17',NULL);
/*!40000 ALTER TABLE `rate_limits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_assignments`
--

DROP TABLE IF EXISTS `request_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_assignments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `is_broadcast` tinyint(1) NOT NULL DEFAULT 0,
  `task_status` enum('new','accepted','in_progress','completed','declined') NOT NULL DEFAULT 'new',
  `remark` varchar(400) DEFAULT NULL,
  `responded_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_request_staff` (`request_id`,`staff_id`),
  KEY `staff_id` (`staff_id`),
  CONSTRAINT `request_assignments_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `service_requests` (`id`) ON DELETE CASCADE,
  CONSTRAINT `request_assignments_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_assignments`
--

LOCK TABLES `request_assignments` WRITE;
/*!40000 ALTER TABLE `request_assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_attachments`
--

DROP TABLE IF EXISTS `request_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `uploaded_by` int(11) DEFAULT NULL,
  `original_name` varchar(255) NOT NULL,
  `stored_name` varchar(255) NOT NULL,
  `file_size` int(11) NOT NULL DEFAULT 0,
  `mime_type` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `request_id` (`request_id`),
  KEY `uploaded_by` (`uploaded_by`),
  CONSTRAINT `request_attachments_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `service_requests` (`id`) ON DELETE CASCADE,
  CONSTRAINT `request_attachments_ibfk_2` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_attachments`
--

LOCK TABLES `request_attachments` WRITE;
/*!40000 ALTER TABLE `request_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_messages`
--

DROP TABLE IF EXISTS `request_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `sender_role` enum('super_admin','admin','staff','customer','system') NOT NULL DEFAULT 'system',
  `message` text NOT NULL,
  `edited_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `request_id` (`request_id`),
  KEY `sender_id` (`sender_id`),
  CONSTRAINT `request_messages_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `service_requests` (`id`) ON DELETE CASCADE,
  CONSTRAINT `request_messages_ibfk_2` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_messages`
--

LOCK TABLES `request_messages` WRITE;
/*!40000 ALTER TABLE `request_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_thread_reads`
--

DROP TABLE IF EXISTS `request_thread_reads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_thread_reads` (
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_read_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`request_id`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `request_thread_reads_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `service_requests` (`id`) ON DELETE CASCADE,
  CONSTRAINT `request_thread_reads_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_thread_reads`
--

LOCK TABLES `request_thread_reads` WRITE;
/*!40000 ALTER TABLE `request_thread_reads` DISABLE KEYS */;
INSERT INTO `request_thread_reads` (`request_id`, `user_id`, `last_read_at`) VALUES (1,2,'2026-10-25 06:10:45');
/*!40000 ALTER TABLE `request_thread_reads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_requests`
--

DROP TABLE IF EXISTS `service_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracking_code` varchar(20) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `guest_name` varchar(120) DEFAULT NULL,
  `guest_email` varchar(120) DEFAULT NULL,
  `guest_phone` varchar(30) DEFAULT NULL,
  `guest_location` varchar(255) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `request_type` enum('service','product') NOT NULL DEFAULT 'service',
  `product_type_id` int(11) DEFAULT NULL,
  `product_name` varchar(160) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `quotation_id` int(11) DEFAULT NULL,
  `subject` varchar(160) NOT NULL,
  `message` text NOT NULL,
  `additional_notes` text DEFAULT NULL,
  `budget` varchar(60) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `deadline_reminder_sent` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('pending','assigned','in_progress','review','completed','delivered','cancelled') NOT NULL DEFAULT 'pending',
  `priority` enum('normal','urgent') NOT NULL DEFAULT 'normal',
  `source` enum('customer','marketing_officer') NOT NULL DEFAULT 'customer',
  `created_by_staff_id` int(11) DEFAULT NULL,
  `acquisition_status` enum('pending_review','reviewed','forwarded') DEFAULT NULL,
  `progress` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `assigned_by` int(11) DEFAULT NULL,
  `assigned_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `delivered_at` datetime DEFAULT NULL,
  `admin_note` varchar(400) DEFAULT NULL,
  `internal_notes` text DEFAULT NULL,
  `terms_accepted_at` datetime DEFAULT NULL,
  `terms_version` varchar(20) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `tracking_code` (`tracking_code`),
  KEY `customer_id` (`customer_id`),
  KEY `service_id` (`service_id`),
  KEY `assigned_by` (`assigned_by`),
  KEY `fk_request_quotation` (`quotation_id`),
  KEY `fk_request_product_type` (`product_type_id`),
  KEY `idx_service_requests_source` (`source`),
  KEY `idx_service_requests_created_by_staff` (`created_by_staff_id`),
  CONSTRAINT `fk_request_created_by_staff` FOREIGN KEY (`created_by_staff_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_request_product_type` FOREIGN KEY (`product_type_id`) REFERENCES `product_types` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_request_quotation` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`) ON DELETE SET NULL,
  CONSTRAINT `service_requests_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `service_requests_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  CONSTRAINT `service_requests_ibfk_3` FOREIGN KEY (`assigned_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_requests`
--

LOCK TABLES `service_requests` WRITE;
/*!40000 ALTER TABLE `service_requests` DISABLE KEYS */;
INSERT INTO `service_requests` (`id`, `tracking_code`, `customer_id`, `guest_name`, `guest_email`, `guest_phone`, `guest_location`, `service_id`, `request_type`, `product_type_id`, `product_name`, `quantity`, `quotation_id`, `subject`, `message`, `additional_notes`, `budget`, `deadline`, `deadline_reminder_sent`, `status`, `priority`, `source`, `created_by_staff_id`, `acquisition_status`, `progress`, `assigned_by`, `assigned_at`, `completed_at`, `delivered_at`, `admin_note`, `internal_notes`, `terms_accepted_at`, `terms_version`, `created_at`, `updated_at`) VALUES (1,'MBT-255DA2',NULL,'Razak Selemani','razakselemani989@gmail.com','0657554145',NULL,5,'service',NULL,NULL,NULL,NULL,'Robotics','Project titles for finalist',NULL,'','2027-01-01',0,'pending','normal','customer',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2026-10-05 08:28:01','1.0','2026-10-05 08:28:01','2026-10-05 08:28:01');
/*!40000 ALTER TABLE `service_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_key` varchar(40) NOT NULL,
  `name` varchar(120) NOT NULL,
  `icon` varchar(60) NOT NULL DEFAULT 'bi-gear',
  `description` varchar(400) DEFAULT NULL,
  `is_broadcast` tinyint(1) NOT NULL DEFAULT 0,
  `is_custom` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_category_name` (`category_key`,`name`),
  KEY `added_by` (`added_by`),
  CONSTRAINT `services_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` (`id`, `category_key`, `name`, `icon`, `description`, `is_broadcast`, `is_custom`, `is_active`, `sort_order`, `added_by`) VALUES (1,'web_dev','Web Development','bi-code-slash','Business websites, e-commerce platforms and web applications.',0,0,1,1,NULL),
(2,'app_dev','App Development','bi-phone','Android, iOS and cross-platform mobile applications.',0,0,1,2,NULL),
(3,'software_hardware','Software & Hardware Solutions','bi-cpu','Custom software, system installation, repair and maintenance.',0,0,1,3,NULL),
(4,'it_consultancy','IT Consultancy','bi-diagram-3','Technology planning, systems audit and digital strategy.',0,0,1,4,NULL),
(5,'ai_ml','AI/ML Projects','bi-cpu-fill','Machine learning models, automation and intelligent systems.',0,0,1,5,NULL),
(6,'multimedia','Multimedia/Animation Projects','bi-film','Video editing, animation and multimedia production.',0,0,1,6,NULL),
(7,'graphics','Graphics Designing','bi-palette','Branding, logos, posters and visual identity design.',0,0,1,7,NULL),
(8,'other_services','All Other Digital Services','bi-grid-3x3-gap','Any other digital service request reviewed and assigned by the admin team.',1,0,1,8,NULL),
(9,'software_hardware','Network Installation','bi-hdd-network','LAN & WAN setup, switches and routers, Wi-Fi, structured cabling, firewall security and network monitoring.',0,1,1,9,NULL),
(10,'software_hardware','Camera Installation','bi-camera-video','CCTV camera installation with HD footage, night vision and remote monitoring for homes, offices, shops and schools.',0,1,1,10,NULL);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `setting_key` varchar(80) NOT NULL,
  `setting_value` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`setting_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`setting_key`, `setting_value`) VALUES ('mail_from_email','no-reply@mabumbatech.com'),
('mail_from_name','MABUMBATECH'),
('mail_method','smtp'),
('notify_new_request_admin','1'),
('notify_status_change_customer','1'),
('smtp_host','mail.mabumbatech.co.tz'),
('smtp_password','Ally4568$&#'),
('smtp_port','465'),
('smtp_secure','ssl'),
('smtp_username','info@mabumbatech.co.tz');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_pay_details`
--

DROP TABLE IF EXISTS `staff_pay_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_pay_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `account_name` varchar(120) DEFAULT NULL,
  `account_number` varchar(40) DEFAULT NULL,
  `monthly_salary` decimal(12,2) DEFAULT NULL,
  `salary_start` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_pay_user` (`user_id`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `staff_pay_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `staff_pay_details_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_pay_details`
--

LOCK TABLES `staff_pay_details` WRITE;
/*!40000 ALTER TABLE `staff_pay_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_pay_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_movements`
--

DROP TABLE IF EXISTS `stock_movements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_movements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_type_id` int(11) NOT NULL,
  `movement_type` enum('purchase','sale','damage','adjustment_in','adjustment_out') NOT NULL,
  `quantity` int(11) NOT NULL,
  `reference_type` varchar(30) DEFAULT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `recorded_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `product_type_id` (`product_type_id`),
  KEY `recorded_by` (`recorded_by`),
  CONSTRAINT `stock_movements_ibfk_1` FOREIGN KEY (`product_type_id`) REFERENCES `product_types` (`id`) ON DELETE CASCADE,
  CONSTRAINT `stock_movements_ibfk_2` FOREIGN KEY (`recorded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_movements`
--

LOCK TABLES `stock_movements` WRITE;
/*!40000 ALTER TABLE `stock_movements` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_movements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `contact_person` varchar(120) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_permissions`
--

DROP TABLE IF EXISTS `user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_key` varchar(60) NOT NULL,
  `granted` tinyint(1) NOT NULL DEFAULT 1,
  `granted_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`user_id`,`permission_key`),
  KEY `permission_key` (`permission_key`),
  KEY `granted_by` (`granted_by`),
  CONSTRAINT `user_permissions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_permissions_ibfk_2` FOREIGN KEY (`permission_key`) REFERENCES `permissions` (`permission_key`) ON DELETE CASCADE,
  CONSTRAINT `user_permissions_ibfk_3` FOREIGN KEY (`granted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_permissions`
--

LOCK TABLES `user_permissions` WRITE;
/*!40000 ALTER TABLE `user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(120) NOT NULL,
  `username` varchar(60) NOT NULL,
  `email` varchar(120) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('super_admin','admin','staff','customer') NOT NULL DEFAULT 'customer',
  `staff_category` varchar(40) DEFAULT NULL,
  `position_title` varchar(80) DEFAULT NULL,
  `job_role_key` varchar(40) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `employment_status` enum('active','terminated') NOT NULL DEFAULT 'active',
  `status` enum('active','suspended') NOT NULL DEFAULT 'active',
  `must_reset` tinyint(1) NOT NULL DEFAULT 0,
  `temp_code` char(1) DEFAULT NULL,
  `security_question` varchar(255) DEFAULT NULL,
  `security_answer_hash` varchar(255) DEFAULT NULL,
  `terms_accepted_at` datetime DEFAULT NULL,
  `terms_version` varchar(20) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `is_public_profile` tinyint(1) NOT NULL DEFAULT 0,
  `public_bio` varchar(300) DEFAULT NULL,
  `public_skills` varchar(300) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `full_name`, `username`, `email`, `phone`, `password_hash`, `role`, `staff_category`, `position_title`, `job_role_key`, `hire_date`, `employment_status`, `status`, `must_reset`, `temp_code`, `security_question`, `security_answer_hash`, `terms_accepted_at`, `terms_version`, `avatar`, `is_public_profile`, `public_bio`, `public_skills`, `created_by`, `last_login`, `created_at`, `updated_at`) VALUES (2,'ALLY ABDALLAH','mabumba','mabumbatech@gmail.com','0620839640','$2y$10$Ik6.1B7rCP8/fsodfi5Mp.4qMgwti0lnWB6gVkjQKSI3acAnqkYri','super_admin',NULL,'Founder / Super Administrator',NULL,NULL,'active','active',0,NULL,NULL,NULL,NULL,NULL,'avatar_2_1791206700_6da0a25e.jpeg',1,NULL,NULL,NULL,'2026-11-01 02:58:54','2026-10-05 05:53:11','2026-11-01 02:58:54'),
(3,'Edward Kapinga','edwardkapinga','edwardkapinga@gmail.com','+255 754 986 275','$2y$12$3zY43MOomqBlWamEV7k83O47JUkGJWieNtYmmmWc7hocMy60TXp62','staff','graphics','Head of Graphic Design',NULL,NULL,'active','active',0,NULL,NULL,NULL,NULL,NULL,'avatar_3_1791209268_c8ede865.jpeg',0,NULL,NULL,2,'2026-10-05 07:07:40','2026-10-05 07:07:20','2026-10-06 05:15:44'),
(4,'Iddy Ayubu','iddyayubu','iddysonyo@gmail.com','+255 685 337 311','$2y$12$X/52.SL/lBcJjLK5jqUXh.TQpVuoFdy2/bI9kghXOmaJueJvwHk5a','admin',NULL,'Administrator',NULL,NULL,'active','active',0,NULL,NULL,NULL,NULL,NULL,'avatar_4_1791209588_6f7a08a4.jpg',0,NULL,NULL,2,'2026-10-05 07:11:58','2026-10-05 07:11:43','2026-10-06 05:15:34');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mabumbat_mabumbatech'
--

--
-- Dumping routines for database 'mabumbat_mabumbatech'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-01  3:23:42
