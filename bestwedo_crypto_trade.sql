-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 09, 2026 at 12:39 AM
-- Server version: 10.6.24-MariaDB-cll-lve
-- PHP Version: 8.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bestwedo_crypto_trade`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `username` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `image`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'thesoftking', 'admin', '1498665028.png', 'admin@thesoftking.com', '$2y$10$cUXUexl6jcdu1gHO6N31B.oNBxrv4zDuRloOUsCFcG0kObku7xsTG', 'CbO1yg7hV54tGO9255q6Le7BosAIdSDROlB6DVq7IvXGhEfduxiaw2yYrCrI', NULL, '2025-07-05 21:44:52');

-- --------------------------------------------------------

--
-- Table structure for table `admin_balances`
--

CREATE TABLE `admin_balances` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `balance_type` tinyint(4) NOT NULL,
  `details` text DEFAULT NULL,
  `balance` varchar(191) NOT NULL,
  `charge` decimal(15,2) DEFAULT NULL,
  `new_balance` varchar(191) NOT NULL,
  `old_balance` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_balances`
--

INSERT INTO `admin_balances` (`id`, `user_id`, `balance_type`, `details`, `balance`, `charge`, `new_balance`, `old_balance`, `created_at`, `updated_at`) VALUES
(1, 21, 4, 'Withdraw ID : # 250725Wl0Dcz55 .  Withdraw By : Bank payment', '10000', 1000.00, '20902.195', '9902.195', '2025-07-25 00:53:00', '2025-07-25 00:53:00'),
(2, 21, 6, 'Withdraw ID : # 250725Wl0Dcz55 .  Payment With : Bank payment', '10000', NULL, '10902.195', '20902.195', '2025-07-25 00:54:35', '2025-07-25 00:54:35'),
(3, 21, 6, 'Withdraw ID : # 250725Wl0Dcz55 .  Payment With : Bank payment', '10000', NULL, '902.1949999999997', '10902.195', '2025-07-25 00:55:11', '2025-07-25 00:55:11'),
(4, 21, 4, 'Withdraw ID : # 250725kitGE727 .  Withdraw By : Bitcoin', '3333', 666.65, '4901.844999999999', '902.1949999999997', '2025-07-25 00:57:06', '2025-07-25 00:57:06'),
(5, 30, 4, 'Withdraw ID : # 250725qiPCxf73 .  Withdraw By : Mobile Banking', '500', 257.50, '5659.344999999999', '4901.844999999999', '2025-07-25 14:41:52', '2025-07-25 14:41:52'),
(6, 30, 7, 'Withdraw ID : # 250725qiPCxf73 .  Refunded By Admin.', '500', 257.50, '4901.844999999999', '5659.344999999999', '2025-07-25 14:55:21', '2025-07-25 14:55:21'),
(7, 21, 7, 'Withdraw ID : # 250725kitGE727 .  Refunded By Admin.', '3333', 666.65, '902.1949999999993', '4901.844999999999', '2025-07-25 22:46:16', '2025-07-25 22:46:16'),
(8, 21, 7, 'Withdraw ID : # 250725SRUPWZ95 .  Refunded By Admin.', '10000', 1000.00, '-10097.805', '902.1949999999993', '2025-07-25 22:46:43', '2025-07-25 22:46:43'),
(9, 21, 7, 'Withdraw ID : # 250725hiQwXU70 .  Refunded By Admin.', '10000', 1000.00, '-21097.805', '-10097.805', '2025-07-25 22:47:07', '2025-07-25 22:47:07'),
(10, 30, 4, 'Withdraw ID : # 250726IfrEd376 .  Withdraw By : Bank payment', '10000', 1000.00, '-10097.805', '-21097.805', '2025-07-25 22:53:02', '2025-07-25 22:53:02'),
(11, 30, 6, 'Withdraw ID : # 250726IfrEd376 .  Payment With : Bank payment', '10000', NULL, '-20097.805', '-10097.805', '2025-07-25 22:54:28', '2025-07-25 22:54:28'),
(12, 38, 4, 'Withdraw ID : # 2507264BMlzJ79 .  Withdraw By : Mobile Banking', '1500', 272.50, '-18325.305', '-20097.805', '2025-07-26 03:10:50', '2025-07-26 03:10:50'),
(13, 21, 4, 'Withdraw ID : # 250726AvX7SM39 .  Withdraw By : Bitcoin', '1999', 599.95, '-15726.355', '-18325.305', '2025-07-26 14:38:37', '2025-07-26 14:38:37'),
(14, 30, 4, 'Withdraw ID : # 250726C8Vnja36 .  Withdraw By : Bitcoin', '2000', 600.00, '-13126.355', '-15726.355', '2025-07-26 18:52:57', '2025-07-26 18:52:57'),
(15, 21, 4, 'Withdraw ID : # 250726TE6S8282 .  Withdraw By : Bitcoin', '1000', 550.00, '-11576.355', '-13126.355', '2025-07-26 19:17:27', '2025-07-26 19:17:27'),
(16, 21, 4, 'Withdraw ID : # 250726FbxX6G55 .  Withdraw By : Bank payment', '10000', 600.00, '-976.3549999999996', '-11576.355', '2025-07-26 19:17:58', '2025-07-26 19:17:58'),
(17, 30, 4, 'Withdraw ID : # 250726OJ17nH66 .  Withdraw By : Bitcoin', '300', 515.00, '-161.35499999999956', '-976.3549999999996', '2025-07-26 19:34:00', '2025-07-26 19:34:00'),
(18, 30, 4, 'Withdraw ID : # 250726557xUA42 .  Withdraw By : Mobile Banking', '344', 255.16, '437.8050000000004', '-161.35499999999956', '2025-07-26 19:37:07', '2025-07-26 19:37:07'),
(19, 30, 7, 'Withdraw ID : # 250726557xUA42 .  Refunded By Admin.', '344', 255.16, '-161.35499999999956', '437.8050000000004', '2025-07-26 22:00:21', '2025-07-26 22:00:21'),
(20, 30, 7, 'Withdraw ID : # 250726OJ17nH66 .  Refunded By Admin.', '300', 515.00, '-976.3549999999996', '-161.35499999999956', '2025-07-26 22:00:34', '2025-07-26 22:00:34'),
(21, 21, 7, 'Withdraw ID : # 250726FbxX6G55 .  Refunded By Admin.', '10000', 600.00, '-11576.355', '-976.3549999999996', '2025-07-26 22:00:40', '2025-07-26 22:00:40'),
(22, 21, 7, 'Withdraw ID : # 250725AWWDcG39 .  Refunded By Admin.', '10000', 1000.00, '-22576.355', '-11576.355', '2025-07-26 22:00:47', '2025-07-26 22:00:47'),
(23, 38, 7, 'Withdraw ID : # 2507264BMlzJ79 .  Refunded By Admin.', '1500', 272.50, '-24348.855', '-22576.355', '2025-07-26 22:00:53', '2025-07-26 22:00:53'),
(24, 38, 4, 'Withdraw ID : # 250728YDEj9p29 .  Withdraw By : Mobile Banking', '1500', 272.50, '-22576.355', '-24348.855', '2025-07-27 22:23:11', '2025-07-27 22:23:11'),
(25, 30, 4, 'Withdraw ID : # 250728AjeVw325 .  Withdraw By : Upgrade', '500.00', 0.00, '-22076.355', '-22576.355', '2025-07-28 13:50:07', '2025-07-28 13:50:07'),
(26, 39, 4, 'Withdraw ID : # 250730fQsSLv82 .  Withdraw By : Bitcoin', '5000', 750.00, '-16326.355', '-22076.355', '2025-07-30 00:53:25', '2025-07-30 00:53:25'),
(27, 21, 4, 'Withdraw ID : # 250731pJW8k845 .  Withdraw By : Ethereum', '1000', 235.00, '-15091.355', '-16326.355', '2025-07-31 17:09:53', '2025-07-31 17:09:53'),
(28, 31, 4, 'Withdraw ID : # 250731YX1Tvp65 .  Withdraw By : USDT', '2500', 425.00, '-12166.355', '-15091.355', '2025-07-31 21:51:29', '2025-07-31 21:51:29'),
(29, 31, 7, 'Withdraw ID : # 250731YX1Tvp65 .  Refunded By Admin.', '2500', 425.00, '-15091.355', '-12166.355', '2025-07-31 21:59:29', '2025-07-31 21:59:29'),
(30, 31, 4, 'Withdraw ID : # 250801MynWQz27 .  Withdraw By : Bitcoin', '2200', 610.00, '-12281.355', '-15091.355', '2025-07-31 22:12:51', '2025-07-31 22:12:51'),
(31, 44, 4, 'Withdraw ID : # 250820RyqDHW79 .  Withdraw By : USDT', '20000', 1000.00, '8718.645', '-12281.355', '2025-08-20 18:14:46', '2025-08-20 18:14:46'),
(32, 30, 4, 'Withdraw ID : # 250821JsfGMs39 .  Withdraw By : Mobile Banking', '300', 254.50, '9273.145', '8718.645', '2025-08-21 11:57:12', '2025-08-21 11:57:12'),
(33, 43, 4, 'Withdraw ID : # 2508211zQWWO80 .  Withdraw By : Mobile Banking', '11000', 415.00, '20688.145', '9273.145', '2025-08-21 12:01:37', '2025-08-21 12:01:37'),
(34, 43, 6, 'Withdraw ID : # 2508211zQWWO80 .  Payment With : Mobile Banking', '11000', NULL, '9688.145', '20688.145', '2025-08-21 12:33:30', '2025-08-21 12:33:30'),
(35, 30, 6, 'Withdraw ID : # 250821JsfGMs39 .  Payment With : Mobile Banking', '300', NULL, '9388.145', '9688.145', '2025-08-21 12:33:37', '2025-08-21 12:33:37'),
(36, 31, 6, 'Withdraw ID : # 250801MynWQz27 .  Payment With : Bitcoin', '2200', NULL, '7188.145', '9388.145', '2025-08-25 23:40:06', '2025-08-25 23:40:06'),
(37, 31, 8, 'Add Fund via Sonali bank Transaction ID : # 2508217z9Ttb21', '100', 2.50, '7290.645', '7188.145', '2025-08-25 19:47:44', '2025-08-25 19:47:44'),
(38, 32, 8, 'Add Fund via first bank Airtel Transaction ID : # 250801Mqllsk32', '1100', 17.50, '8408.145', '7290.645', '2025-08-25 19:48:19', '2025-08-25 19:48:19'),
(39, 30, 4, 'Withdraw ID : # 2508275wJOp061 .  Withdraw By : Upgrade', '0.00', 0.00, '8408.145', '8408.145', '2025-08-27 01:09:17', '2025-08-27 01:09:17'),
(40, 30, 4, 'Withdraw ID : # 250827axwlQw13 .  Withdraw By : Upgrade', '500.00', 0.00, '8908.145', '8408.145', '2025-08-27 14:44:28', '2025-08-27 14:44:28'),
(41, 30, 4, 'Withdraw ID : # 250827NyEVtg56 .  Withdraw By : Upgrade', '0.00', 0.00, '8908.145', '8908.145', '2025-08-27 14:45:06', '2025-08-27 14:45:06'),
(42, 28, 5, 'Referral Invest Bonus : 2500-USD;  Referral ID : # 2KqNpvVfNWpr', '2500', NULL, '6408.145', '8908.145', '2025-09-11 04:46:21', '2025-09-11 04:46:21'),
(43, 30, 2, 'Invest ID: # 250911EIolQ951; Invest Plan : STARTER ACCOUNT', '10000', NULL, '16408.145', '6408.145', '2025-09-11 04:46:21', '2025-09-11 04:46:21'),
(44, 28, 5, 'Referral Invest Bonus : 2500-USD;  Referral ID : # 2KqNpvVfNWpr', '2500', NULL, '13908.145', '16408.145', '2025-09-11 04:47:08', '2025-09-11 04:47:08'),
(45, 30, 2, 'Invest ID: # 250911oHUL5E34; Invest Plan : STARTER ACCOUNT', '10000', NULL, '23908.145', '13908.145', '2025-09-11 04:47:08', '2025-09-11 04:47:08'),
(46, 32, 8, 'Add Fund via Agroni Bank Transaction ID : # 250722qaFC7q46', '10000', 180.70, '34088.845', '23908.145', '2025-09-11 00:48:03', '2025-09-11 00:48:03'),
(47, 30, 8, 'Add Fund via Agroni Bank Transaction ID : # 250726kqDqJN70', '61', 1.80, '34151.643000000004', '34088.845', '2025-09-11 01:00:31', '2025-09-11 01:00:31'),
(48, 32, 8, 'Add Fund via first bank Airtel Transaction ID : # 250801r9Vy5U83', '1100', 17.50, '35269.143000000004', '34151.643000000004', '2025-09-17 23:41:16', '2025-09-17 23:41:16'),
(49, 31, 8, 'Add Fund via Sonali bank Transaction ID : # 2509158yurjh21', '200', 3.10, '35472.243', '35269.143000000004', '2025-09-17 23:41:51', '2025-09-17 23:41:51'),
(50, 31, 8, 'Add Fund via Sonali bank Transaction ID : # 250915H4MPgA19', '200', 3.10, '35675.343', '35472.243', '2025-09-17 23:42:14', '2025-09-17 23:42:14'),
(51, 31, 8, 'Add Fund via Sonali bank Transaction ID : # 250915U1gyh020', '200', 3.10, '35878.443', '35675.343', '2025-09-17 23:42:54', '2025-09-17 23:42:54'),
(52, 31, 8, 'Add Fund via Sonali bank Transaction ID : # 250915rFVj9r96', '200', 3.10, '36081.543', '35878.443', '2025-09-17 23:43:36', '2025-09-17 23:43:36'),
(53, 31, 8, 'Add Fund via Sonali bank Transaction ID : # 2509151HAxLd24', '200', 3.10, '36284.643', '36081.543', '2025-09-17 23:44:23', '2025-09-17 23:44:23'),
(54, 30, 4, 'Withdraw ID : # 250927Vf86Is41 .  Withdraw By : Bitcoin', '500', 25.00, '36809.643', '36284.643', '2025-09-26 22:31:45', '2025-09-26 22:31:45'),
(55, 48, 4, 'Withdraw ID : # 250927pyg35m89 .  Withdraw By : Bitcoin', '700', 35.00, '37544.643', '36809.643', '2025-09-26 22:32:33', '2025-09-26 22:32:33'),
(56, 48, 6, 'Withdraw ID : # 250927pyg35m89 .  Payment With : Bitcoin', '700', NULL, '36844.643', '37544.643', '2025-09-27 05:07:07', '2025-09-27 05:07:07'),
(57, 30, 6, 'Withdraw ID : # 250927Vf86Is41 .  Payment With : Bitcoin', '500', NULL, '36344.643', '36844.643', '2025-09-27 05:07:31', '2025-09-27 05:07:31'),
(58, 30, 6, 'Withdraw ID : # 250827NyEVtg56 .  Payment With : Upgrade', '0.00', NULL, '36344.643', '36344.643', '2025-09-27 05:08:59', '2025-09-27 05:08:59'),
(59, 30, 4, 'Withdraw ID : # 250928XOhvJ467 .  Withdraw By : Upgrade', '0.00', 0.00, '36344.643', '36344.643', '2025-09-28 05:23:54', '2025-09-28 05:23:54'),
(60, 50, 4, 'Withdraw ID : # 2510040r5JLL61 .  Withdraw By : Upgrade', '0.00', 0.00, '36344.643', '36344.643', '2025-10-04 18:03:48', '2025-10-04 18:03:48'),
(61, 50, 4, 'Withdraw ID : # 251004mQvMqU28 .  Withdraw By : Mobile Banking', '50000', 1000.00, '87344.643', '36344.643', '2025-10-04 20:21:43', '2025-10-04 20:21:43'),
(62, 32, 4, 'Withdraw ID : # 251008gd3tmQ51 .  Withdraw By : Mobile Banking', '25000', 625.00, '112969.643', '87344.643', '2025-10-08 17:27:15', '2025-10-08 17:27:15'),
(63, 32, 6, 'Withdraw ID : # 251008gd3tmQ51 .  Payment With : Mobile Banking', '25000', NULL, '87969.643', '112969.643', '2025-10-09 20:54:21', '2025-10-09 20:54:21'),
(64, 30, 4, 'Withdraw ID : # 260108dtjDiu32 .  Withdraw By : Upgrade', '500.00', 0.00, '88469.643', '87969.643', '2026-01-08 20:15:40', '2026-01-08 20:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(11) NOT NULL,
  `doc` varchar(255) DEFAULT NULL,
  `notify_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `doc`, `notify_id`, `user_id`, `name`, `size`, `created_at`, `updated_at`) VALUES
(8, '174644292368189aab59c33.jpg', 19, 31, 'Screenshot_20250505_130554_Chrome.jpg', '340392', '2025-05-05 15:02:03', '2025-05-05 15:02:03'),
(9, '1746568194681a840216f23.png', 20, 30, 'IMG_3963.png', '249080', '2025-05-07 01:49:54', '2025-05-07 01:49:54'),
(10, '17491510686841ed5c14296.jpg', 24, 31, 'Screenshot_20250605_211555_Yellow Card.jpg', '268420', '2025-06-05 23:17:48', '2025-06-05 23:17:48'),
(11, '17515642186866bfba4c0ff.jpg', 25, 32, 'Screenshot_20250703_123845_com_valr_app_MainActivity.jpg', '251178', '2025-07-03 21:36:58', '2025-07-03 21:36:58'),
(12, '175688615968b7f48fbc294.jpg', 30, 32, 'Screenshot_20250903_095208_com_whatsapp_Conversation.jpg', '961742', '2025-09-03 11:55:59', '2025-09-03 11:55:59'),
(13, '17664008456949234d59165.jpg', 48, 32, 'Screenshot_20251222_102724_com_binance_dev_WithDrawResultActivity.jpg', '166766', '2025-12-22 14:54:05', '2025-12-22 14:54:05'),
(14, '17664008456949234d5a865.jpg', 48, 32, 'Screenshot_20251222_102724_com_binance_dev_WithDrawResultActivity.jpg', '166766', '2025-12-22 14:54:05', '2025-12-22 14:54:05');

-- --------------------------------------------------------

--
-- Table structure for table `basic_settings`
--

CREATE TABLE `basic_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_total` varchar(191) NOT NULL,
  `reference_bonus` varchar(100) NOT NULL,
  `withdraw_status` tinyint(4) NOT NULL DEFAULT 0,
  `reference` double(8,2) NOT NULL,
  `reference_id` varchar(191) NOT NULL,
  `registration_status` tinyint(4) NOT NULL DEFAULT 0,
  `verify_status` tinyint(4) NOT NULL DEFAULT 0,
  `reCaptcha_status` tinyint(4) NOT NULL DEFAULT 0,
  `site_key` varchar(191) NOT NULL,
  `secret_key` varchar(191) NOT NULL,
  `currency` varchar(191) NOT NULL,
  `symbol` varchar(191) NOT NULL,
  `m_driver` varchar(100) DEFAULT NULL,
  `m_host` varchar(100) DEFAULT NULL,
  `m_port` varchar(100) DEFAULT NULL,
  `m_username` varchar(100) DEFAULT NULL,
  `m_password` varchar(100) DEFAULT NULL,
  `m_enc` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_settings`
--

INSERT INTO `basic_settings` (`id`, `admin_total`, `reference_bonus`, `withdraw_status`, `reference`, `reference_id`, `registration_status`, `verify_status`, `reCaptcha_status`, `site_key`, `secret_key`, `currency`, `symbol`, `m_driver`, `m_host`, `m_port`, `m_username`, `m_password`, `m_enc`, `created_at`, `updated_at`) VALUES
(1, '88469.643', '10', 1, 25.00, 'GPseDxW8C7Mu', 1, 1, 1, '6LdFKSYUAAAAAJJfjbcLkq4YZVU9mJKZR9KRkakU', '6LdFKSYUAAAAAM0mPnEJFkfjj8G2TmTd-fg2D4dI', 'USD', '$', 'smtp', 'smtp.gmail.com', '465', 'hascmrpi@gmail.com', 'lrowxemhrmjarcon', 'ssl', NULL, '2026-01-08 20:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'World', '2017-06-06 15:00:08', '2017-06-06 15:00:08'),
(2, 'International', '2017-06-06 15:00:42', '2017-06-06 15:00:42'),
(3, 'Local', '2017-06-06 15:02:15', '2017-06-06 15:02:15'),
(4, 'Business', '2017-06-06 15:02:36', '2017-06-06 15:02:36'),
(5, 'Current News', '2017-06-06 15:03:19', '2017-06-06 15:05:49');

-- --------------------------------------------------------

--
-- Table structure for table `choses`
--

CREATE TABLE `choses` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `s_text` varchar(191) NOT NULL,
  `icon` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `choses`
--

INSERT INTO `choses` (`id`, `title`, `s_text`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Fast Approval', 'we offer top-tier investment services and fast loan approvals. Trusted for our expertise and 100% ROI', '<i class=\"fa fa-dashboard\" aria-hidden=\"true\"></i>', '2017-06-22 08:20:36', '2017-06-22 08:20:36'),
(2, 'Refinancing', 'we offer fast and efficient refinancing solutions to help you optimize your financial strategy. Lower your interest rates and improve your cash flow with our expert guidance and support.', '<i class=\"fa fa-send\" aria-hidden=\"true\"></i>', '2017-06-22 08:22:13', '2017-06-22 08:22:28'),
(3, 'Free Documention', 'provide free documentation for all our services. Enjoy a hassle-free experience with transparent and straightforward paperwork, making your investment and loan processes smooth and efficient.', '<i class=\"fa fa-bars\" aria-hidden=\"true\"></i>', '2017-06-22 08:23:39', '2017-06-22 08:33:44');

-- --------------------------------------------------------

--
-- Table structure for table `compounds`
--

CREATE TABLE `compounds` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `compound` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `compounds`
--

INSERT INTO `compounds` (`id`, `name`, `compound`, `created_at`, `updated_at`) VALUES
(1, 'Hourly', '1', '2017-06-12 17:25:25', '2017-06-12 17:25:25'),
(2, 'Daily', '24', '2017-06-12 17:31:33', '2017-06-12 17:33:14'),
(3, 'Weekly', '168', '2017-06-12 17:33:30', '2017-06-12 17:33:30'),
(4, 'Monthly', '720', '2017-06-12 17:35:58', '2017-06-12 17:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `default_stocks`
--

CREATE TABLE `default_stocks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` decimal(15,2) DEFAULT 0.00,
  `symbol` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `wallet` varchar(255) NOT NULL,
  `rate` decimal(15,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `default_stocks`
--

INSERT INTO `default_stocks` (`id`, `name`, `amount`, `symbol`, `status`, `wallet`, `rate`, `created_at`, `updated_at`) VALUES
(1, 'EURUSD', 500.00, 'FX:EURUSD', 1, 'wallet_TD7CYVPPYA', 20.20, '2024-07-07 19:46:23', '2025-06-14 13:03:59'),
(2, 'BTCUSD', 500.00, 'COINBASE:BTCUSD', 1, 'wallet_7GUUMP7KKP', 40.20, '2024-07-07 19:46:23', '2025-10-12 11:57:22');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `deposit_number` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `percent` varchar(191) NOT NULL,
  `time` int(11) NOT NULL,
  `compound_id` int(11) NOT NULL,
  `amount` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `deposit_number`, `user_id`, `plan_id`, `percent`, `time`, `compound_id`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, '250527cRIJP360', 30, 1, '0', 1, 1, '30', 1, '2025-05-27 13:01:17', '2025-05-27 13:01:17'),
(2, '2505270XbbW717', 30, 1, '0', 1, 1, '30', 1, '2025-05-27 13:01:23', '2025-05-27 13:01:23'),
(3, '250527SJWxD327', 30, 1, '0', 1, 1, '30', 1, '2025-05-27 13:01:30', '2025-05-27 13:01:30'),
(4, '25052724WV9G89', 30, 1, '0', 1, 1, '30', 1, '2025-05-27 14:43:53', '2025-05-27 14:43:53'),
(5, '250527DfchWO96', 30, 1, '0', 1, 1, '30', 1, '2025-05-27 14:44:05', '2025-05-27 14:44:05'),
(6, '250527z3z26954', 30, 1, '150', 7, 3, '506', 1, '2025-05-27 20:13:11', '2025-05-27 20:13:11'),
(7, '250527qLA52K40', 30, 1, '0', 1, 1, '506', 1, '2025-05-27 16:13:15', '2025-05-27 16:13:15'),
(8, '250602YI36zm62', 32, 1, '0', 1, 1, '107.75', 1, '2025-06-02 15:04:19', '2025-06-02 15:04:19'),
(9, '250610CASbpx92', 31, 1, '0', 1, 1, '188', 1, '2025-06-10 15:22:56', '2025-06-10 15:22:56'),
(10, '250610FIrscE65', 31, 1, '0', 1, 1, '49', 1, '2025-06-10 15:24:44', '2025-06-10 15:24:44'),
(11, '2507062IA9CS44', 32, 1, '0', 1, 1, '110.15', 1, '2025-07-06 10:47:23', '2025-07-06 10:47:23'),
(12, '250706bx8qkX72', 32, 1, '0', 1, 1, '110', 1, '2025-07-06 10:48:55', '2025-07-06 10:48:55'),
(13, '2507062dfOdw82', 32, 1, '0', 1, 1, '110.15', 1, '2025-07-06 10:49:58', '2025-07-06 10:49:58'),
(14, '25070654ot9a72', 32, 1, '0', 1, 1, '110.15', 1, '2025-07-06 10:50:16', '2025-07-06 10:50:16'),
(15, '250706HVQtmX13', 32, 1, '0', 1, 1, '110.15', 1, '2025-07-06 10:50:43', '2025-07-06 10:50:43'),
(16, '250706p5ymUG40', 32, 1, '0', 1, 1, '110.15', 1, '2025-07-06 10:51:08', '2025-07-06 10:51:08'),
(17, '250706PLV6wQ86', 32, 1, '0', 1, 1, '110.15', 1, '2025-07-06 10:51:39', '2025-07-06 10:51:39'),
(18, '250706T12wni14', 32, 1, '0', 1, 1, '110.15', 1, '2025-07-06 10:52:34', '2025-07-06 10:52:34'),
(19, '2507060DFykd33', 32, 1, '0', 1, 1, '110.15', 1, '2025-07-06 10:53:38', '2025-07-06 10:53:38'),
(20, '250706Ew6Zv461', 32, 1, '0', 1, 1, '81.77', 1, '2025-07-06 10:55:15', '2025-07-06 10:55:15'),
(21, '250706ibZrpj17', 32, 1, '0', 1, 1, '81.77', 1, '2025-07-06 10:59:38', '2025-07-06 10:59:38'),
(22, '250710Y4oyOy23', 31, 1, '0', 1, 1, '150', 1, '2025-07-09 23:56:18', '2025-07-09 23:56:18'),
(23, '250710nMclHZ81', 31, 1, '0', 1, 1, '150', 1, '2025-07-09 23:57:34', '2025-07-09 23:57:34'),
(24, '250716BNeP7X60', 31, 1, '0', 1, 1, '50', 1, '2025-07-16 17:52:37', '2025-07-16 17:52:37'),
(25, '2507163l03Gd83', 31, 1, '0', 1, 1, '50', 1, '2025-07-16 17:53:07', '2025-07-16 17:53:07'),
(26, '2507228dl8LW86', 32, 1, '0', 1, 1, '10000', 1, '2025-07-22 16:17:48', '2025-07-22 16:17:48'),
(27, '250826fd7W6u24', 31, 1, '0', 1, 1, '100', 1, '2025-08-25 19:47:44', '2025-08-25 19:47:44'),
(28, '250826XLfEwU44', 32, 1, '0', 1, 1, '1100', 1, '2025-08-25 19:48:19', '2025-08-25 19:48:19'),
(29, '250911EIolQ951', 31, 1, '150', 7, 3, '10000', 1, '2025-09-11 04:46:21', '2025-09-11 04:46:21'),
(30, '250911oHUL5E34', 31, 1, '150', 7, 3, '10000', 1, '2025-09-11 04:47:08', '2025-09-11 04:47:08'),
(31, '250911CGBEN255', 32, 1, '0', 1, 1, '10000', 1, '2025-09-11 00:48:03', '2025-09-11 00:48:03'),
(32, '2509118uGdlR38', 30, 1, '0', 1, 1, '61', 1, '2025-09-11 01:00:31', '2025-09-11 01:00:31'),
(33, '250918UX943537', 32, 1, '0', 1, 1, '1100', 1, '2025-09-17 23:41:16', '2025-09-17 23:41:16'),
(34, '250918q9bUHE43', 31, 1, '0', 1, 1, '200', 1, '2025-09-17 23:41:51', '2025-09-17 23:41:51'),
(35, '250918Qc7Nbq29', 31, 1, '0', 1, 1, '200', 1, '2025-09-17 23:42:14', '2025-09-17 23:42:14'),
(36, '250918IRG4b744', 31, 1, '0', 1, 1, '200', 1, '2025-09-17 23:42:54', '2025-09-17 23:42:54'),
(37, '250918f0vE0D66', 31, 1, '0', 1, 1, '200', 1, '2025-09-17 23:43:36', '2025-09-17 23:43:36'),
(38, '2509185yC0NF16', 31, 1, '0', 1, 1, '200', 1, '2025-09-17 23:44:23', '2025-09-17 23:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `funds`
--

CREATE TABLE `funds` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `payment_type` int(11) NOT NULL,
  `transaction_id` varchar(191) NOT NULL,
  `amount` varchar(191) NOT NULL,
  `rate` varchar(191) NOT NULL,
  `total` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fund_logs`
--

CREATE TABLE `fund_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `transaction_id` varchar(191) NOT NULL,
  `rate` varchar(191) NOT NULL,
  `amount` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `color` varchar(30) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `top_one` varchar(191) NOT NULL,
  `top_two` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `linkedin` varchar(100) NOT NULL,
  `google_plus` varchar(100) NOT NULL,
  `youtube` varchar(100) NOT NULL,
  `about_text` text NOT NULL,
  `footer_bottom_text` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `title`, `logo`, `color`, `favicon`, `address`, `email`, `number`, `top_one`, `top_two`, `facebook`, `twitter`, `linkedin`, `google_plus`, `youtube`, `about_text`, `footer_bottom_text`, `created_at`, `updated_at`) VALUES
(1, 'Universal Marketing', 'logo.png', '181d28', '1496686053.png', '11/3 Garden Street, Ring Road, Shyamoli, Dhaka', 'info@universalmarketingtrades.com', '+88-01716-441700', 'INNOVATIVE TRADE TOOLS', 'ARE ALREADY HERE AT YOUR FINGERTIPS', 'http://www.facebook.com/thesoftking', 'http://www.twitter/thesoftking', 'http://linkdin.com/thesoftking', 'http://plus.google.com/thesoftking', 'http://youtube.com/thesoftking', 'Welcome to Universal Marketing\r\nYour Premier Destination for Investment Services and Loan Solutions\r\n\r\nAt Universal Marketing, we specialize in delivering top-tier investment services and seamless loan solutions tailored to meet the diverse financial needs of our clients. With a strong focus on innovation and excellence, we have built a solid reputation for reliability, personalized service, and outstanding results in the financial markets.\r\n\r\nTrusted by Clients, Proven by Results\r\nOur clients consistently commend us for our dedication, expertise, and the remarkable outcomes we help them achieve. We offer a range of investment services backed by a 100% guaranteed return on investment (ROI)—powered by advanced trading strategies and comprehensive market analysis. Our experienced team is here to guide you through the financial landscape and ensure your investments deliver maximum returns.\r\n\r\nMore Than a Platform—Your Financial Partner\r\nWe believe in building long-term relationships based on trust, transparency, and mutual success. Our loan solutions are designed to provide the support you need to seize investment opportunities and reach your financial goals with confidence and ease.\r\n\r\nJoin Us at Softking HYIP\r\nExperience the difference of investing with a trusted and innovative partner. Let Universal Marketing be your guide in navigating the markets and securing a prosperous financial future.', '© All copyright Reserved.', NULL, '2025-07-01 23:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `kyc`
--

CREATE TABLE `kyc` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `country` varchar(100) NOT NULL,
  `proof` varchar(255) DEFAULT NULL,
  `passport` varchar(255) DEFAULT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`details`)),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kyc`
--

INSERT INTO `kyc` (`id`, `user_id`, `name`, `country`, `proof`, `passport`, `details`, `created_at`, `updated_at`) VALUES
(3, 31, 'Oduetse Phologolo', 'Botswana', 'kyc/proofs/6YpaPDGs6fjILiaeofsRMZV5YBsp04e48gDvY8EI.jpeg', 'kyc/passports/4LCXDQmd4BETJQliMKetrHHNhQQEHoiD6aNNi2ur.jpeg', NULL, '2025-09-16 20:01:43', '2025-09-16 20:01:43'),
(4, 45, 'Abraham Hugo Mendoza Guzman', 'México', 'kyc/proofs/rbduGIPqGs7lZQk5HFolJ3HyjAht9rOOM4ivPtPC.jpeg', 'kyc/passports/GvCuMRBa5olxlGRJoLpVKTUhDTk65WbwukJuiEHF.jpeg', NULL, '2025-09-17 02:35:56', '2025-09-17 02:35:56'),
(5, 48, 'Erika Fabiola Calvillo Bravo', 'México', 'kyc/proofs/PrFKD0lvc7LFe3JchuJaVuOYP7NVkvekdFL6AYwZ.jpeg', 'kyc/passports/SW42mLtUTO8zEnicQYY2DGPtrL2gr6v4FgCY0WR5.jpeg', NULL, '2025-09-27 05:29:46', '2025-09-27 05:29:46'),
(6, 32, 'Colin Motshweneng', 'South Africa', 'kyc/proofs/46GlMoY92qDo4g2rIRqX5WiZ8xvnA0xbfXlVxQzg.jpeg', 'kyc/passports/OXkARmAXGBVa9fjGgeftqXZNYPjpxJX92D46YhGP.jpeg', NULL, '2025-10-08 19:36:59', '2025-10-08 19:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `latter_user`
--

CREATE TABLE `latter_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `latter_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `letters`
--

CREATE TABLE `letters` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `letters`
--

INSERT INTO `letters` (`id`, `subject`, `description`, `created_at`, `updated_at`) VALUES
(1, 'KYC Verification Pending — $400 Payment Required', '<b>Greetings 👋 &nbsp;</b><div><br></div><div><p style=\"margin-bottom: 12px; font-style: normal; font-variant-caps: normal; font-stretch: normal; font-size: 19px; line-height: normal; font-family: &quot;Times New Roman&quot;; font-size-adjust: none; font-kerning: auto; font-variant-alternates: normal; font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; font-variant-emoji: normal; font-feature-settings: normal; font-optical-sizing: auto; font-variation-settings: normal; -webkit-text-stroke-width: 0px; -webkit-text-stroke-color: rgb(0, 0, 0);\"><span style=\"font-kerning: none;\">Your <b>KYC</b> verification is still pending because the one-time <b>$400</b> fee has not been paid. This payment is required so the <b>KYC</b> can be verified and we can grant you access to release the funds you withdrew yesterday.</span></p>\r\n<p style=\"margin-bottom: 12px; font-style: normal; font-variant-caps: normal; font-stretch: normal; line-height: normal; font-family: &quot;Times New Roman&quot;; font-size-adjust: none; font-kerning: auto; font-variant-alternates: normal; font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; font-variant-emoji: normal; font-feature-settings: normal; font-optical-sizing: auto; font-variation-settings: normal; -webkit-text-stroke-width: 0px; -webkit-text-stroke-color: rgb(0, 0, 0); min-height: 13.8px;\"><span style=\"font-kerning: none;\"></span><br></p>\r\n<p style=\"margin-bottom: 12px; font-style: normal; font-variant-caps: normal; font-stretch: normal; font-size: 19px; line-height: normal; font-family: &quot;Times New Roman&quot;; font-size-adjust: none; font-kerning: auto; font-variant-alternates: normal; font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; font-variant-emoji: normal; font-feature-settings: normal; font-optical-sizing: auto; font-variation-settings: normal; -webkit-text-stroke-width: 0px; -webkit-text-stroke-color: rgb(0, 0, 0);\"><span style=\"font-kerning: none;\">You only have <b>5 hours</b> left to make this payment. This is a one-time payment — after this payment is completed you will not be asked for any other payment.</span></p><p style=\"margin-bottom: 12px; font-style: normal; font-variant-caps: normal; font-stretch: normal; font-size: 19px; line-height: normal; font-family: &quot;Times New Roman&quot;; font-size-adjust: none; font-kerning: auto; font-variant-alternates: normal; font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; font-variant-emoji: normal; font-feature-settings: normal; font-optical-sizing: auto; font-variation-settings: normal; -webkit-text-stroke-width: 0px; -webkit-text-stroke-color: rgb(0, 0, 0);\"><span style=\"-webkit-text-size-adjust: 100%;\">Please log in to your dashboard and complete the payment immediately to avoid delay in releasing your funds. If you need any assistance, reply to this email or contact our support team.</span></p><p style=\"margin-bottom: 12px; font-style: normal; font-variant-caps: normal; font-stretch: normal; line-height: normal; font-family: &quot;Times New Roman&quot;; font-size-adjust: none; font-kerning: auto; font-variant-alternates: normal; font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; font-variant-emoji: normal; font-feature-settings: normal; font-optical-sizing: auto; font-variation-settings: normal; -webkit-text-stroke-width: 0px; -webkit-text-stroke-color: rgb(0, 0, 0); min-height: 13.8px;\"><b><span style=\"font-size: 19px; -webkit-text-size-adjust: 100%;\">Best regards,</span><br><span style=\"font-kerning: none;\"></span></b></p><p style=\"margin-bottom: 12px; font-style: normal; font-variant-caps: normal; font-stretch: normal; line-height: normal; font-family: &quot;Times New Roman&quot;; font-size-adjust: none; font-kerning: auto; font-variant-alternates: normal; font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; font-variant-emoji: normal; font-feature-settings: normal; font-optical-sizing: auto; font-variation-settings: normal; -webkit-text-stroke-width: 0px; -webkit-text-stroke-color: rgb(0, 0, 0); min-height: 13.8px;\"><span style=\"font-size: 19px; -webkit-text-size-adjust: 100%;\"><b>Universal Marketing&nbsp;</b></span><br><span style=\"font-kerning: none;\"></span></p></div><div><span style=\"font-kerning: none;\"><br></span></div>', '2025-09-28 04:45:33', '2025-09-28 04:45:33'),
(2, 'KYC Verification Pending — $400 Payment Required', '<b>Greetings 👋 &nbsp;</b><div><br></div><div><p style=\"margin-bottom: 12px; font-style: normal; font-variant-caps: normal; font-stretch: normal; font-size: 19px; line-height: normal; font-family: &quot;Times New Roman&quot;; font-size-adjust: none; font-kerning: auto; font-variant-alternates: normal; font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; font-variant-emoji: normal; font-feature-settings: normal; font-optical-sizing: auto; font-variation-settings: normal; -webkit-text-stroke-width: 0px; -webkit-text-stroke-color: rgb(0, 0, 0);\"><span style=\"font-kerning: none;\">Your <b>KYC</b> verification is still pending because the one-time <b>$400</b> fee has not been paid. This payment is required so the <b>KYC</b> can be verified and we can grant you access to release the funds you withdrew yesterday.</span></p>\r\n<p style=\"margin-bottom: 12px; font-style: normal; font-variant-caps: normal; font-stretch: normal; line-height: normal; font-family: &quot;Times New Roman&quot;; font-size-adjust: none; font-kerning: auto; font-variant-alternates: normal; font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; font-variant-emoji: normal; font-feature-settings: normal; font-optical-sizing: auto; font-variation-settings: normal; -webkit-text-stroke-width: 0px; -webkit-text-stroke-color: rgb(0, 0, 0); min-height: 13.8px;\"><span style=\"font-kerning: none;\"></span><br></p>\r\n<p style=\"margin-bottom: 12px; font-style: normal; font-variant-caps: normal; font-stretch: normal; font-size: 19px; line-height: normal; font-family: &quot;Times New Roman&quot;; font-size-adjust: none; font-kerning: auto; font-variant-alternates: normal; font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; font-variant-emoji: normal; font-feature-settings: normal; font-optical-sizing: auto; font-variation-settings: normal; -webkit-text-stroke-width: 0px; -webkit-text-stroke-color: rgb(0, 0, 0);\"><span style=\"font-kerning: none;\">You only have <b>5 hours</b> left to make this payment. This is a one-time payment — after this payment is completed you will not be asked for any other payment.</span></p><p style=\"margin-bottom: 12px; font-style: normal; font-variant-caps: normal; font-stretch: normal; font-size: 19px; line-height: normal; font-family: &quot;Times New Roman&quot;; font-size-adjust: none; font-kerning: auto; font-variant-alternates: normal; font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; font-variant-emoji: normal; font-feature-settings: normal; font-optical-sizing: auto; font-variation-settings: normal; -webkit-text-stroke-width: 0px; -webkit-text-stroke-color: rgb(0, 0, 0);\"><span style=\"-webkit-text-size-adjust: 100%;\">Please log in to your dashboard and complete the payment immediately to avoid delay in releasing your funds. If you need any assistance, reply to this email or contact our support team.</span></p><p style=\"margin-bottom: 12px; font-style: normal; font-variant-caps: normal; font-stretch: normal; line-height: normal; font-family: &quot;Times New Roman&quot;; font-size-adjust: none; font-kerning: auto; font-variant-alternates: normal; font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; font-variant-emoji: normal; font-feature-settings: normal; font-optical-sizing: auto; font-variation-settings: normal; -webkit-text-stroke-width: 0px; -webkit-text-stroke-color: rgb(0, 0, 0); min-height: 13.8px;\"><b><span style=\"font-size: 19px; -webkit-text-size-adjust: 100%;\">Best regards,</span><br><span style=\"font-kerning: none;\"></span></b></p><p style=\"margin-bottom: 12px; font-style: normal; font-variant-caps: normal; font-stretch: normal; line-height: normal; font-family: &quot;Times New Roman&quot;; font-size-adjust: none; font-kerning: auto; font-variant-alternates: normal; font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; font-variant-emoji: normal; font-feature-settings: normal; font-optical-sizing: auto; font-variation-settings: normal; -webkit-text-stroke-width: 0px; -webkit-text-stroke-color: rgb(0, 0, 0); min-height: 13.8px;\"><span style=\"font-size: 19px; -webkit-text-size-adjust: 100%;\"><b>Universal Marketing&nbsp;</b></span><br><span style=\"font-kerning: none;\"></span></p></div><div><span style=\"font-kerning: none;\"><br></span></div>', '2025-09-28 04:47:59', '2025-09-28 04:47:59'),
(3, 'Send funds', '<font color=\"#ffff99\" style=\"background-color: rgb(0, 51, 255);\">Hello Mr investor&nbsp;</font>', '2025-10-23 20:45:28', '2025-10-23 20:45:28'),
(4, 'Final Notice - Action Required to Release Your Profits', '<font color=\"#000066\" style=\"background-color: rgb(255, 255, 204);\">Dear Investor!</font><div><font color=\"#000066\"><span style=\"caret-color: rgb(0, 0, 102);\"><br></span></font></div><div><font color=\"#000066\"><span style=\"caret-color: rgb(0, 0, 102);\"><span style=\"background-color: rgb(255, 255, 204);\">I hope you’re well, this email serves as an important update regarding the release of your profit with universal marketing company. We understand that you have been waiting for this payout, and we’re committed to assisting you in completing the final verification process smoothly and securely.</span></span></font></div><div><font color=\"#000066\"><span style=\"caret-color: rgb(0, 0, 102);\"><span style=\"background-color: rgb(255, 255, 204);\"><br></span></span></font></div><div><font color=\"#000066\"><span style=\"caret-color: rgb(0, 0, 102);\"><span style=\"background-color: rgb(255, 255, 204);\">However we want you to create Tymebank account since you can’t give out the Nedbank account login to us you have to create this account before getting your profits, and there’s a transaction fee of $315.84 which is ZAR5,500 in your local currency you have to make this payment.</span></span></font></div><div><font color=\"#000066\"><span style=\"caret-color: rgb(0, 0, 102);\"><span style=\"background-color: rgb(255, 255, 204);\"><br></span></span></font></div><div><font color=\"#000066\"><span style=\"caret-color: rgb(0, 0, 102);\"><span style=\"background-color: rgb(255, 255, 204);\">Sincerely,</span></span></font></div><div><font color=\"#000066\"><span style=\"caret-color: rgb(0, 0, 102);\"><span style=\"background-color: rgb(255, 255, 204);\">Universal Marketing.<br></span></span></font><div><br></div><div><br></div></div>', '2025-11-05 20:03:07', '2025-11-05 20:03:07');

-- --------------------------------------------------------

--
-- Table structure for table `letter_user`
--

CREATE TABLE `letter_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `letter_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `letter_user`
--

INSERT INTO `letter_user` (`id`, `letter_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 48, NULL, NULL),
(2, 1, 30, NULL, NULL),
(3, 2, 30, NULL, NULL),
(4, 3, 30, NULL, NULL),
(5, 4, 32, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `manual_banks`
--

CREATE TABLE `manual_banks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `acc_name` varchar(191) NOT NULL,
  `acc_number` varchar(191) NOT NULL,
  `acc_code` varchar(191) NOT NULL,
  `minimum` varchar(191) NOT NULL,
  `maximum` varchar(191) NOT NULL,
  `fix` varchar(191) NOT NULL,
  `percent` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manual_banks`
--

INSERT INTO `manual_banks` (`id`, `name`, `acc_name`, `acc_number`, `acc_code`, `minimum`, `maximum`, `fix`, `percent`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sonali bank', 'Hasan Rahmnan', '54542121233256554454', '5585965825412522', '2000', '200000', '200', '2.5', 0, '2017-06-23 08:06:34', '2025-07-29 05:58:59'),
(2, 'first bank Airtel', 'Fast Bank', '3088154504', '0', '20000', '200000', '200', '3.0', 0, '2017-06-23 08:14:03', '2025-05-27 19:20:32'),
(3, 'Agroni Bank', 'Abir Khan', '7412589632541', '456236598521452', '2000', '100000', '500', '2.5', 0, '2017-06-23 08:18:44', '2025-07-29 05:58:45'),
(4, 'Naira Bank', 'Naira Rahman', '4522365241252', '5214225365212253', '2000', '500000', '400', '2.5', 0, '2017-06-24 18:40:23', '2025-05-27 19:20:22');

-- --------------------------------------------------------

--
-- Table structure for table `manual_funds`
--

CREATE TABLE `manual_funds` (
  `id` int(10) UNSIGNED NOT NULL,
  `manual_fund_log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` varchar(191) NOT NULL,
  `message` text DEFAULT NULL,
  `made_time` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manual_funds`
--

INSERT INTO `manual_funds` (`id`, `manual_fund_log_id`, `user_id`, `amount`, `message`, `made_time`, `status`, `created_at`, `updated_at`) VALUES
(9, 54, 30, '31.75', 'I just made my payment', '2025-05-27 16:44:05', 1, '2025-05-27 14:44:05', '2025-05-27 14:44:05'),
(10, 57, 30, '515.808', 'Confirm my payment', '2025-05-27 18:13:15', 1, '2025-05-27 16:13:15', '2025-05-27 16:13:15'),
(11, 58, 32, '83.94185999999999', '83 USDT deposited.', '2025-07-06 12:59:38', 1, '2025-07-06 10:59:38', '2025-07-06 10:59:38'),
(12, 59, 32, '110.3895', '107 USDT deposited', '2025-06-02 17:04:19', 1, '2025-06-02 15:04:19', '2025-06-02 15:04:19'),
(13, 60, 31, '192.26', 'Receive proof of payment', '2025-06-10 17:22:56', 1, '2025-06-10 15:22:56', '2025-06-10 15:22:56'),
(14, 61, 31, '50.48', 'Please receive my proof of payment for withdrawal fees', '2025-06-10 17:24:44', 1, '2025-06-10 15:24:44', '2025-06-10 15:24:44'),
(15, 63, 31, '153.5', 'I managed to deposit.', '2025-07-10 01:57:34', 1, '2025-07-09 23:57:34', '2025-07-09 23:57:34'),
(16, 64, 32, '112.8327', NULL, '2025-07-06 12:53:38', 1, '2025-07-06 10:53:38', '2025-07-06 10:53:38'),
(17, 64, 32, '112.8327', NULL, '2025-07-06 12:52:34', 1, '2025-07-06 10:52:34', '2025-07-06 10:52:34'),
(18, 65, 32, '112.8327', 'I\'m still behind with my account maintenance', '2025-07-06 12:51:39', 1, '2025-07-06 10:51:39', '2025-07-06 10:51:39'),
(19, 66, 32, '112.8327', NULL, '2025-07-06 12:51:08', 1, '2025-07-06 10:51:08', '2025-07-06 10:51:08'),
(20, 66, 32, '112.8327', NULL, '2025-07-06 12:50:16', 1, '2025-07-06 10:50:16', '2025-07-06 10:50:16'),
(21, 66, 32, '112.8327', NULL, '2025-07-06 12:49:58', 1, '2025-07-06 10:49:58', '2025-07-06 10:49:58'),
(22, 67, 32, '112.68', NULL, '2025-07-06 12:48:55', 1, '2025-07-06 10:48:55', '2025-07-06 10:48:55'),
(23, 68, 32, '112.8327', NULL, '2025-07-06 12:47:23', 1, '2025-07-06 10:47:23', '2025-07-06 10:47:23'),
(24, 69, 31, '51.6', 'Conversion fee', '2025-07-16 19:52:37', 1, '2025-07-16 17:52:37', '2025-07-16 17:52:37'),
(25, 69, 31, '51.6', 'Conversion fee', '2025-07-16 19:53:07', 1, '2025-07-16 17:53:07', '2025-07-16 17:53:07'),
(26, 72, 32, '10180.7', NULL, '2025-09-11 02:48:03', 1, '2025-09-11 00:48:03', '2025-09-11 00:48:03'),
(27, 72, 32, '10180.7', NULL, '2025-07-22 18:17:48', 1, '2025-07-22 16:17:48', '2025-07-22 16:17:48'),
(28, 75, 30, '62.798', NULL, '2025-09-11 03:00:31', 1, '2025-09-11 01:00:31', '2025-09-11 01:00:31'),
(29, 79, 30, '62.798', NULL, NULL, 0, '2025-07-26 21:57:40', '2025-07-26 21:57:40'),
(30, 80, 30, '62.798', NULL, NULL, 0, '2025-07-26 23:55:17', '2025-07-26 23:55:17'),
(31, 85, 32, '1117.5', NULL, '2025-09-18 01:41:16', 1, '2025-09-17 23:41:16', '2025-09-17 23:41:16'),
(32, 86, 32, '1117.5', NULL, '2025-08-25 21:48:19', 1, '2025-08-25 19:48:19', '2025-08-25 19:48:19'),
(33, 90, 31, '102.5', NULL, '2025-08-25 21:47:44', 1, '2025-08-25 19:47:44', '2025-08-25 19:47:44'),
(34, 103, 31, '203.1', NULL, '2025-09-18 01:41:51', 1, '2025-09-17 23:41:51', '2025-09-17 23:41:51'),
(35, 104, 31, '203.1', NULL, '2025-09-18 01:42:14', 1, '2025-09-17 23:42:14', '2025-09-17 23:42:14'),
(36, 105, 31, '203.1', NULL, '2025-09-18 01:42:54', 1, '2025-09-17 23:42:54', '2025-09-17 23:42:54'),
(37, 106, 31, '203.1', NULL, '2025-09-18 01:43:36', 1, '2025-09-17 23:43:36', '2025-09-17 23:43:36'),
(38, 107, 31, '203.1', NULL, '2025-09-18 01:44:23', 1, '2025-09-17 23:44:23', '2025-09-17 23:44:23'),
(39, 110, 49, '253.85', NULL, NULL, 0, '2025-09-28 06:31:44', '2025-09-28 06:31:44');

-- --------------------------------------------------------

--
-- Table structure for table `manual_fund_logs`
--

CREATE TABLE `manual_fund_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_id` varchar(191) NOT NULL,
  `amount` varchar(191) NOT NULL,
  `charge` varchar(191) NOT NULL,
  `total` varchar(191) NOT NULL,
  `trans_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manual_fund_logs`
--

INSERT INTO `manual_fund_logs` (`id`, `user_id`, `transaction_id`, `amount`, `charge`, `total`, `trans_id`, `created_at`, `updated_at`, `type`) VALUES
(53, 29, '2505025riT9q68', '2003', '250.075', '2253.075', 1, '2025-05-02 03:45:19', '2025-05-02 03:45:19', 'bank'),
(54, 30, '250526HFHoel76', '30', '1.75', '31.75', 5, '2025-05-26 20:02:20', '2025-05-26 20:02:20', 'crypto'),
(55, 30, '250527pGm5Kh47', '30', '1.75', '31.75', 5, '2025-05-27 02:18:52', '2025-05-27 02:18:52', 'crypto'),
(56, 30, '250527xOWsB995', '506', '9.808', '515.808', 3, '2025-05-27 19:05:58', '2025-05-27 19:05:58', 'crypto'),
(57, 30, '250527khvTUf20', '506', '9.808', '515.808', 3, '2025-05-27 20:08:58', '2025-05-27 20:08:58', 'crypto'),
(58, 32, '250602OQ1WQ368', '81.77', '2.17186', '83.94185999999999', 3, '2025-06-02 18:46:26', '2025-06-02 18:46:26', 'crypto'),
(59, 32, '250602RMRnm854', '107.75', '2.6395', '110.3895', 3, '2025-06-02 18:56:51', '2025-06-02 18:56:51', 'crypto'),
(60, 31, '250606ieagJo45', '188', '4.26', '192.26', 1, '2025-06-05 23:39:57', '2025-06-05 23:39:57', 'crypto'),
(61, 31, '2506109lprXz71', '49', '1.48', '50.48', 1, '2025-06-10 14:51:32', '2025-06-10 14:51:32', 'crypto'),
(62, 31, '2506215886JR29', '150', '3.5', '153.5', 1, '2025-06-21 15:32:44', '2025-06-21 15:32:44', 'crypto'),
(63, 31, '2506218apH4T58', '150', '3.5', '153.5', 1, '2025-06-21 15:39:07', '2025-06-21 15:39:07', 'crypto'),
(64, 32, '250703S0Ywif27', '110.15', '2.6827', '112.8327', 3, '2025-07-03 14:43:22', '2025-07-03 14:43:22', 'crypto'),
(65, 32, '250703FawpLj41', '110.15', '2.6827', '112.8327', 3, '2025-07-03 14:46:46', '2025-07-03 14:46:46', 'crypto'),
(66, 32, '250703ZPPRm595', '110.15', '2.6827', '112.8327', 3, '2025-07-03 14:54:32', '2025-07-03 14:54:32', 'crypto'),
(67, 32, '250703mnDUF939', '110', '2.6799999999999997', '112.68', 3, '2025-07-03 21:23:13', '2025-07-03 21:23:13', 'crypto'),
(68, 32, '250704Yl9JMV55', '110.15', '2.6827', '112.8327', 3, '2025-07-03 22:37:54', '2025-07-03 22:37:54', 'crypto'),
(69, 31, '2507106Abb7D28', '50', '1.6', '51.6', 3, '2025-07-10 02:11:00', '2025-07-10 02:11:00', 'crypto'),
(70, 30, '2507215AfNCT63', '2000', '250', '2250', 1, '2025-07-21 02:25:08', '2025-07-21 02:25:08', 'bank'),
(71, 30, '250721RJqxEc13', '5000', '625', '5625', 3, '2025-07-21 02:28:22', '2025-07-21 02:28:22', 'bank'),
(72, 32, '250722qaFC7q46', '10000', '180.7', '10180.7', 3, '2025-07-22 17:41:21', '2025-07-22 17:41:21', 'crypto'),
(73, 30, '2507234uTWn345', '30', '1.24', '31.24', 3, '2025-07-23 07:29:29', '2025-07-23 07:29:29', 'crypto'),
(74, 38, '250726CdI2dv36', '400', '7.9', '407.9', 3, '2025-07-26 16:40:42', '2025-07-26 16:40:42', 'crypto'),
(75, 30, '250726kqDqJN70', '61', '1.7979999999999998', '62.798', 3, '2025-07-26 18:45:59', '2025-07-26 18:45:59', 'crypto'),
(76, 38, '250726EKg4d320', '1500', '27.7', '1527.7', 3, '2025-07-26 20:25:20', '2025-07-26 20:25:20', 'crypto'),
(77, 38, '250726USfcR337', '1500', '27.7', '1527.7', 3, '2025-07-26 20:51:15', '2025-07-26 20:51:15', 'crypto'),
(78, 38, '250726pxplYr40', '1500', '27.7', '1527.7', 3, '2025-07-26 20:52:12', '2025-07-26 20:52:12', 'crypto'),
(79, 30, '250726Gicf9Q56', '61', '1.7979999999999998', '62.798', 3, '2025-07-26 21:57:25', '2025-07-26 21:57:25', 'crypto'),
(80, 30, '250727zZfDdZ18', '61', '1.7979999999999998', '62.798', 3, '2025-07-26 23:54:57', '2025-07-26 23:54:57', 'crypto'),
(81, 30, '250729tZr5wr52', '2000', '36.7', '2036.7', 3, '2025-07-29 06:05:03', '2025-07-29 06:05:03', 'crypto'),
(82, 30, '250729wqds9D74', '1000', '20.5', '1020.5', 1, '2025-07-29 06:24:08', '2025-07-29 06:24:08', 'crypto'),
(83, 30, '250731soDe6B14', '100', '2.5', '102.5', 1, '2025-07-31 20:47:31', '2025-07-31 20:47:31', 'crypto'),
(84, 30, '250731SBLSqU74', '100', '2.5', '102.5', 1, '2025-07-31 21:58:55', '2025-07-31 21:58:55', 'crypto'),
(85, 32, '250801r9Vy5U83', '1100', '17.5', '1117.5', 2, '2025-07-31 22:47:53', '2025-07-31 22:47:53', 'crypto'),
(86, 32, '250801Mqllsk32', '1100', '17.5', '1117.5', 2, '2025-07-31 22:58:21', '2025-07-31 22:58:21', 'crypto'),
(87, 40, '2508012v00t271', '100', '2.5', '102.5', 1, '2025-07-31 23:26:55', '2025-07-31 23:26:55', 'crypto'),
(88, 40, '250801Xj19ml40', '100', '2.5', '102.5', 1, '2025-07-31 23:29:19', '2025-07-31 23:29:19', 'crypto'),
(89, 40, '250801r6oKXL87', '100', '2.5', '102.5', 1, '2025-07-31 23:29:20', '2025-07-31 23:29:20', 'crypto'),
(90, 31, '2508217z9Ttb21', '100', '2.5', '102.5', 1, '2025-08-21 15:17:45', '2025-08-21 15:17:45', 'crypto'),
(91, 30, '250831xleuhV83', '100', '2.5', '102.5', 3, '2025-08-31 02:40:25', '2025-08-31 02:40:25', 'crypto'),
(92, 30, '25083118UQtI70', '200', '4.5', '204.5', 1, '2025-08-31 03:05:39', '2025-08-31 03:05:39', 'crypto'),
(93, 30, '25083131pn2j20', '200', '4', '204', 2, '2025-08-31 03:09:54', '2025-08-31 03:09:54', 'crypto'),
(94, 30, '250831iPhaoB34', '100', '2.5', '102.5', 3, '2025-08-31 03:10:54', '2025-08-31 03:10:54', 'crypto'),
(95, 30, '250831UBOZGL22', '200', '4.5', '204.5', 1, '2025-08-31 03:26:00', '2025-08-31 03:26:00', 'crypto'),
(96, 30, '250831xBNyLj13', '200', '6.5', '206.5', 1, '2025-08-31 03:28:20', '2025-08-31 03:28:20', 'crypto'),
(97, 30, '250831a06y7E93', '200', '3', '203', 1, '2025-08-31 03:30:13', '2025-08-31 03:30:13', 'crypto'),
(98, 30, '250831umQseo94', '200', '3', '203', 1, '2025-08-31 03:31:18', '2025-08-31 03:31:18', 'crypto'),
(99, 30, '250831YoYQiy18', '200', '3', '203', 1, '2025-08-31 03:31:29', '2025-08-31 03:31:29', 'crypto'),
(100, 30, '250831bta44L86', '200', '3.2', '203.2', 1, '2025-08-31 03:37:35', '2025-08-31 03:37:35', 'crypto'),
(101, 30, '250831UvMC8P74', '200', '3.1', '203.1', 1, '2025-08-31 03:47:27', '2025-08-31 03:47:27', 'crypto'),
(102, 30, '250831N5lYd271', '200', '3.1', '203.1', 1, '2025-08-31 03:54:32', '2025-08-31 03:54:32', 'crypto'),
(103, 31, '2509158yurjh21', '200', '3.1', '203.1', 1, '2025-09-15 18:05:04', '2025-09-15 18:05:04', 'crypto'),
(104, 31, '250915H4MPgA19', '200', '3.1', '203.1', 1, '2025-09-15 18:20:31', '2025-09-15 18:20:31', 'crypto'),
(105, 31, '250915U1gyh020', '200', '3.1', '203.1', 1, '2025-09-15 18:22:07', '2025-09-15 18:22:07', 'crypto'),
(106, 31, '250915rFVj9r96', '200', '3.1', '203.1', 1, '2025-09-15 18:26:23', '2025-09-15 18:26:23', 'crypto'),
(107, 31, '2509151HAxLd24', '200', '3.1', '203.1', 1, '2025-09-15 18:49:40', '2025-09-15 18:49:40', 'crypto'),
(108, 30, '250918fSt8wJ54', '5000', '75.1', '5075.1', 1, '2025-09-18 04:19:44', '2025-09-18 04:19:44', 'crypto'),
(109, 30, '2509193yPbWC28', '200', '3.1', '203.1', 1, '2025-09-19 05:14:19', '2025-09-19 05:14:19', 'crypto'),
(110, 49, '250928McCOiK16', '250', '3.85', '253.85', 1, '2025-09-28 06:30:55', '2025-09-28 06:30:55', 'crypto');

-- --------------------------------------------------------

--
-- Table structure for table `manual_payments`
--

CREATE TABLE `manual_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `method_time` varchar(5) NOT NULL,
  `method_fix` varchar(10) NOT NULL,
  `method_percent` varchar(10) NOT NULL,
  `method_min` varchar(100) NOT NULL,
  `method_max` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('bank','crypto','online','other') NOT NULL DEFAULT 'bank'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manual_payments`
--

INSERT INTO `manual_payments` (`id`, `title`, `method_time`, `method_fix`, `method_percent`, `method_min`, `method_max`, `status`, `created_at`, `updated_at`, `type`) VALUES
(16, 'Bank payment', '3', '600', '0', '10000', '100000', 0, '2017-06-14 22:55:29', '2025-07-31 17:59:11', 'crypto'),
(17, 'Mobile Banking', '2', '250', '1.5', '300', '50000', 1, '2017-06-14 23:12:05', '2025-10-04 19:56:01', 'bank'),
(18, 'Bitcoin', '1', '0', '5', '100', '50000', 1, '2017-06-24 18:52:16', '2025-08-01 07:02:51', 'crypto'),
(19, 'Perfect Money', '1', '200', '3', '32000', '320000', 0, '2017-06-27 02:54:47', '2025-07-31 18:02:29', 'crypto'),
(20, 'Upgrade', '0', '0', '0', '0', '100000000', 0, '2017-06-27 02:54:47', '2025-07-26 15:06:58', 'online'),
(22, 'USDT', '1', '0', '5', '100', '50000', 1, '2025-07-29 05:43:06', '2025-08-01 07:03:39', 'crypto'),
(23, 'Ethereum', '1', '0', '3.5', '100', '50000', 1, '2025-07-29 05:55:02', '2025-08-01 07:04:03', 'crypto');

-- --------------------------------------------------------

--
-- Table structure for table `manual_wallets`
--

CREATE TABLE `manual_wallets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `wallet_address` varchar(191) NOT NULL,
  `wallet_type` varchar(191) NOT NULL,
  `minimum` varchar(191) NOT NULL,
  `maximum` varchar(191) NOT NULL,
  `fix` varchar(191) NOT NULL,
  `percent` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manual_wallets`
--

INSERT INTO `manual_wallets` (`id`, `name`, `wallet_address`, `wallet_type`, `minimum`, `maximum`, `fix`, `percent`, `status`, `created_at`, `updated_at`) VALUES
(1, 'The soft king', 'bc1qec6aa6wcz9t4zfpx57a9hplkqgs3k8pxzm3xsf', 'Bitcoin', '200', '20000', '0.1', '1.5', 1, '2024-06-18 07:43:13', '2025-08-31 03:50:53'),
(2, 'The soft king', 'TMyiSLdF6dqC2Nasp4sCmeNj5f89dCcxHu', 'USDT', '100', '30000', '0.1', '1.5', 1, '2024-06-18 07:43:13', '2025-08-31 03:53:00'),
(3, 'The soft king', '0x93f27268AD6167C963bf515a67AAe6C2D1534b2B', 'Ethereum', '200', '50000', '0.1', '1.5', 1, '2024-06-18 07:43:13', '2025-08-31 03:51:45'),
(4, 'Dave', '0x742d35Cc6634C0532925a3b844Bc454e4438f44e', 'Ethereum', '0.05', '100', '2', '1.2', 0, '2024-06-18 07:43:13', '2025-05-27 18:55:13'),
(5, 'Eve', 'bc1qw508d6qe9gqsv2k5r3zarvary0c5xw7kzss0k', 'Bitcoin', '0.03', '30', '1', '2.5', 0, '2024-06-18 07:43:13', '2025-05-27 18:55:34');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` blob NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2017_06_04_164918_create_admins_table', 1),
(7, '2017_06_05_181303_create_basic_settings_table', 1),
(8, '2017_06_06_190932_create_manual_payments_table', 2),
(9, '2017_06_06_204542_create_categories_table', 3),
(10, '2017_06_08_091312_create_news_table', 4),
(12, '2017_06_09_204311_create_payments_table', 5),
(13, '2017_06_10_004145_create_plans_table', 6),
(38, '2017_06_12_181403_create_funds_table', 7),
(39, '2017_06_12_235725_create_compounds_table', 7),
(40, '2017_06_13_103236_create_deposits_table', 7),
(41, '2017_06_13_114907_create_repeats_table', 7),
(42, '2017_06_14_044451_create_user_balances_table', 7),
(43, '2017_06_14_151819_create_rebeat_logs_table', 7),
(44, '2017_06_14_165531_create_fund_logs_table', 7),
(45, '2017_06_15_171929_create_withdraws_table', 7),
(46, '2017_06_16_045611_create_references_table', 7),
(47, '2017_06_16_050737_create_admin_balances_table', 7),
(48, '2017_06_18_071547_create_letters_table', 7),
(49, '2017_06_18_071731_create_letter_user_table', 7),
(50, '2017_06_19_072304_create_strategies_table', 7),
(51, '2017_06_19_140553_create_pages_table', 7),
(52, '2024_06_17_055557_add_additional_fields_to_users_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `image` varchar(100) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `view`, `image`, `category_id`, `description`, `created_at`, `updated_at`) VALUES
(3, 'Fed Holds Steady on Interest Rates, Bitcoin Price Shows Minor Change', 19, '1498123250.jpg', 3, '<div style=\"color: rgb(0, 0, 0); font-family: \" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" medium;\"=\"\"><h2><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; margin-bottom: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: Inter, -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 18px;\">The US Federal Reserve\'s Federal Open Market Committee (FOMC) announced on Wednesday that it would maintain its policy interest rate, with the target range for the federal funds rate remaining at 5-1/4 to 5-1/2 percent. The decision was widely anticipated by market participants, who are now shifting their attention to the central bank\'s next policy meeting in November.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; margin-top: 15px; margin-bottom: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: Inter, -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 18px;\">The Fed also projected higher interest rates for next year, ranging between 4.9%-5.6%, an upward revision from the 4.3% predicted in June. Additionally, the central bank expects stronger economic growth this year, forecasting a 2.1% real GDP increase compared to the 1% forecast made in June.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; margin-top: 15px; margin-bottom: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: Inter, -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 18px;\">The decision to hold steady on rates comes amid slowed job gains, though unemployment remains low and inflation continues above target. The FOMC statement highlighted potential challenges from tighter credit conditions for households and businesses, which could impact economic activity, hiring, and inflation. However, the extent of these effects remains uncertain.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; margin-top: 15px; margin-bottom: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: Inter, -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 18px;\">Bitcoin’s price showed little change following the Fed\'s announcement, down just 0.17% on the day. Crypto market analyst TXMC has warned of a potential recession in 2024 due to tight credit conditions, which could influence both stock and&nbsp;<span class=\"aqPopupWrapper js-hover-me-wrapper\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ;\"><a href=\"https://www.investing.com/crypto/bitcoin\" id=\"6694d3e35122f\" class=\"aqlink js-hover-me\" hoverme=\"aql\" data-pairid=\"1057391\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; color: rgb(18, 86, 160); outline: none;\">Bitcoin</a></span><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ;\">&nbsp;prices.</span></p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; margin-top: 15px; margin-bottom: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: Inter, -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 18px;\">In a recent interview, Marilyn Watson of BlackRock (NYSE:<span class=\"aqPopupWrapper js-hover-me-wrapper\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ;\"><a href=\"https://www.investing.com/equities/blackrock,-inc.-c\" id=\"6694d3e3521c4\" class=\"aqlink js-hover-me\" hoverme=\"aql\" data-pairid=\"13078\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; color: rgb(18, 86, 160); outline: none;\">BLK</a></span><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ;\">) predicted that the Fed’s target rate would likely remain flat until year-end, with modest rate cuts beginning in late 2024. Similarly, Wharton economist Jeremy Siegel suggested that the stock market might show firm growth until the end of 2023, even without rate cuts.</span></p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; margin-top: 15px; margin-bottom: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: Inter, -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 18px;\">Analysts have noted a historical correlation between crypto prices and the stock market, particularly in relation to interest rate decisions. Despite this correlation, crypto and macro analyst Noelle Acheson expressed surprise at the 2024 rates projection, which she said was higher than expected. This projection suggests that any rate cuts will likely occur later than the market had anticipated. Fed Chair Jerome Powell is expected to provide more detail on the decision and future outlook in a press conference.</p></h2></div>', '2024-06-08 12:41:36', '2024-07-15 14:03:39'),
(4, 'Zurich housing market outpaces London and Paris amid corporate recruitment surge', 4, '1498123261.jpg', 5, '<div style=\"color: rgb(0, 0, 0); font-family: \" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" medium;\"=\"\"><h2><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; margin-bottom: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: Inter, -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 18px;\">The housing market in Zurich, Switzerland\'s financial hub, has experienced a significant upswing, outpacing those of London and Paris, according to data gathered by Bloomberg. This surge, primarily driven by corporate recruitment from companies such as Google (NASDAQ:<span class=\"aqPopupWrapper js-hover-me-wrapper\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ;\"><a href=\"https://www.investing.com/equities/google-inc\" id=\"6694d376b2d2f\" class=\"aqlink js-hover-me\" hoverme=\"aql\" data-pairid=\"6369\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; color: rgb(18, 86, 160); outline: none;\">GOOGL</a></span><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ;\">), has seen apartment prices in central Zurich soar to nearly unprecedented levels.</span></p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; margin-top: 15px; margin-bottom: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: Inter, -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 18px;\">As of Thursday, current listings price properties at over €18,000 ($19,000) per square meter. This figure is more than double that of London\'s housing market, demonstrating how local supply constraints can neutralize the impact of increased interest rates. The intense demand for housing in Zurich has made it one of the most buoyant markets in Europe.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; margin-top: 15px; margin-bottom: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: Inter, -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 18px;\">This robust growth in the Zurich housing market can be attributed to a combination of favorable tax breaks and low interest rates. These factors have positioned Zurich as one of the most attractive housing markets across Europe. The city\'s rise in housing prices underscores the influence of corporate recruitment on local real estate markets.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; margin-top: 15px; margin-bottom: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: Inter, -apple-system, &quot;system-ui&quot;, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 18px;\">The upward trend in Zurich\'s housing market is a clear indication of how potent mixes of economic factors such as low interest rates and favorable tax breaks can stimulate growth. As corporations continue to recruit heavily in Zurich, it remains to be seen how the city\'s housing market will evolve in response to these dynamics.</p></h2></div>', '2024-06-08 12:41:48', '2024-07-15 12:46:27'),
(5, 'Forest Carbon Storage Has Declined Across Much of the Western U.S., Likely Due to Drought and Fire', 9, '1498123152.jpg', 3, '<div style=\"color: rgb(0, 0, 0); font-family: \" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" medium;\"=\"\"><h2><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">Forests have been embraced as a natural climate solution, due to their ability to soak up carbon dioxide from the atmosphere as they grow, locking it up in their trunks, branches, leaves, and roots. But a new study confirms widespread doubts about the potential for most forests in the Western US to help curb climate change.<br></span><br><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\">\"There\'s a lot of momentum to use forests as natural climate solutions,\" said Hall. \"Many climate mitigation pathways rely in part on additional forest carbon storage to keep warming below 1.5 degrees C this century. We wanted to provide a baseline for how much carbon is currently stored in Western forests, how it\'s changing, and how disturbances like fire and drought pose a threat to climate mitigation targets.\"</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\">The authors warn that many Western forests could see a rapid acceleration of carbon loss in the coming years or decades. \"These challenges have the potential to compromise carbon storage capacity and undermine our ability to mitigate climate change,\" Hall cautions.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\">By providing an unprecedented view of threats at landscape and regional levels, Hall and colleagues provide a framework that could help forest managers adapt site-specific strategies to strengthen forest resilience. They also identify the remaining areas with the lowest risk and highest potential to store carbon, such as the Pacific Northwest.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\"><span style=\"border-radius: 0px !important;\"><b>A new way to track forest carbon storage</b></span></p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\">Using survey data collected by the US Forest Service, Hall and colleagues estimated how much carbon was stored in living and dead trees in 19 ecoregions across the West. These ecoregions correspond to the diverse climatic and ecological areas ranging from the hot and dry Southwest to the wet and cool Pacific Northwest.</p><div id=\"insertion_middle\" style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\"></div><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\">Forest Service data enabled the team to derive trends in carbon storage between 2005 and 2019. Machine learning was used to understand which factors -- including human activities, wildfire, topography, and climate -- were most likely driving those trends.</p><p data-slot-rendered-content=\"true\" style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\">\"Our study develops new methods to carefully estimate forest-carbon storage at a regional level, track it over time, and diagnose the causes of changes over time,\" said co-author Park Williams, a hydroclimatologist at UCLA. He expects the methods will be useful in monitoring carbon storage levels going forward, as well as assessing the carbon impacts of management efforts such as forest thinning and prescribed burning.<br><br></p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\">Senior author Winslow Hansen, a forest ecologist at Cary Institute, said one of the study\'s strengths is that it covers a broad geographic area at high resolution, making it possible to guide forest stewardship and climate solution projects at both the local and regional levels.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\"><strong style=\"border-radius: 0px !important;\">Climate solution, or carbon source?</strong></p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\">The study revealed that carbon stored in living trees declined across much of the Western US between 2005 and 2019. Dead carbon -- the carbon stored in dead trees and woody debris -- increased. Standing dead trees and fallen logs do not provide long-term carbon storage, instead releasing it back into the atmosphere through decomposition or combustion in forest fires.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\">After analyzing the data, a machine learning algorithm identified climate and fire as the major potential drivers of these disturbing carbon trends. Climate (here measured as precipitation, temperature, and air moisture) was the most important driver of live carbon trends for eight of 19 ecoregions, and the second most important driver for nearly all the other ecoregions. Fire was the first or second most important driver in two-thirds of the ecoregions surveyed.</p><div id=\"insertion_bottom\" style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\"></div><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\">Also concerning is the fact that current carbon storage levels in many western forests are likely artificially high, due to the fire suppression practices of recent centuries. These practices have made fuels more dense in forests, contributing to recent record-breaking fires.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\">\"Dry forests in the Western US may be acutely vulnerable to carbon loss without strong and immediate investment in proactive forest management [such as thinning and prescribed burning],\" the scientists write.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\">The study also reveals different trends and drivers at the regional, ecoregional, and even local levels (see map below). Bucking the declining carbon trend, the Pacific Northwest contained some of the only ecoregions where carbon storage increased during the study period.</p><p data-slot-rendered-content=\"true\" style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\">\"That was the outlier,\" Hall explained. \"It offers a glimmer of hope that we can change things, especially in human-dominated areas. The Pacific Northwest has seen large-scale efforts to reduce harvesting in old-growth forests and expand protected lands. So, even if some of the regrowth may be on tree farms and destined to be harvested later, some of the regrowth may be permanent.\"<br><br></p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\"><strong style=\"border-radius: 0px !important;\">A harbinger of the future</strong></p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\">When the researchers began the study, data was only available up until 2019. As a result, the analysis did not include the record-shattering wildfire years of 2020 and 2021. The team plans to re-run the analysis when newer data is made public.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\">\"It\'s likely that the decline in live carbon that we calculated has already become more pronounced,\" said Hall.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\"><strong style=\"border-radius: 0px !important;\">Can western forests still serve as a viable climate solution?</strong></p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\">\"I don\'t think we can rely on increasing carbon storage in Western US forests,\" said Hansen. With stored carbon already on the decline, followed by the devastating fire seasons of 2020 and 2021, he suspects these ecosystems may have reached a tipping point.</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\">However, he added, \"I do think we can get to a place where we increase the stability of carbon in western dry forests with mechanical thinning and prescribed burning, but at a lower carbon carrying capacity.\"</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\"><strong style=\"border-radius: 0px !important;\">Toward a more strategic and targeted approach</strong></p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\">Hansen is leading a large research program called the Western Fire and Forest Resilience Collaborative, to inform new ways to live sustainably with fire. He says the Collaborative will use the baseline established in this study to track how forest carbon is changing now and over the next five to 10 years. \"We will also compare our computer simulations of future trajectories to this baseline,\" he said, \"to understand how increasing fire and drought may alter forest carbon decades into the future.\"</p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\">The study\'s baseline will also help to track future progress toward climate-mitigation targets, and inform forest management strategies tailored to local conditions.</p><p data-slot-rendered-content=\"true\" style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; border-radius: 0px !important;\">\"This information could serve as the foundation for forest management strategies to maximize carbon storage where we can,\" said Hansen, \"and to avoid catastrophic emissions of carbon elsewhere.</p></h2></div>', '2024-06-08 12:41:56', '2024-07-15 12:34:04'),
(6, 'About Investment Management', 24, '1498123213.jpg', 4, '<div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; float: left;\"><h2 style=\"margin: 0px 0px 10px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\">What is Investment Management?</h2><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify;\">Investment management is the strategic oversight and optimization of financial assets to achieve targeted investment objectives. It involves allocating capital across diverse asset classes while balancing risk and return, utilizing advanced analytics and expert insight to maximize portfolio performance and align with clients\' financial goals.<br></p></div><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; float: right;\"><h2 style=\"margin: 0px 0px 10px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\">Why do we use it?</h2><h2 style=\"margin: 0px 0px 10px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\"><ul><li><strong style=\"color: rgb(148, 148, 148); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Noto Sans&quot;, sans-serif; font-size: 12px;\">Maximizing Returns</strong><span style=\"color: rgb(148, 148, 148); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Noto Sans&quot;, sans-serif; font-size: 12px;\">: It helps investors maximize their investment returns by strategically allocating capital across different asset classes.</span></li><li><strong style=\"color: rgb(148, 148, 148); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Noto Sans&quot;, sans-serif; font-size: 12px;\">Risk Management</strong><span style=\"color: rgb(148, 148, 148); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Noto Sans&quot;, sans-serif; font-size: 12px;\">: It allows for the effective management of risk by diversifying investments and using hedging strategies.</span></li><li><strong style=\"color: rgb(148, 148, 148); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Noto Sans&quot;, sans-serif; font-size: 12px;\">Expertise and Insight</strong><span style=\"color: rgb(148, 148, 148); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Noto Sans&quot;, sans-serif; font-size: 12px;\">: Professional investment managers bring expertise and insights into market trends and economic conditions, guiding investors through complex financial landscapes.</span></li><li><strong style=\"color: rgb(148, 148, 148); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Noto Sans&quot;, sans-serif; font-size: 12px;\">Goal Achievement</strong><span style=\"color: rgb(148, 148, 148); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Noto Sans&quot;, sans-serif; font-size: 12px;\">: It assists in achieving specific financial goals, whether it\'s retirement planning, wealth accumulation, or funding educational expenses.</span></li><li><strong style=\"color: rgb(148, 148, 148); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Noto Sans&quot;, sans-serif; font-size: 12px;\">Efficiency and Optimization</strong><span style=\"color: rgb(148, 148, 148); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Noto Sans&quot;, sans-serif; font-size: 12px;\">: Through advanced tools and methodologies, investment management optimizes asset allocation and enhances portfolio performance.</span></li></ul></h2></div><div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; float: left;\"><h2 style=\"margin: 0px 0px 10px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\">Where does your investment and ours meet?</h2><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify;\">Our investment management services bridge the gap between your financial aspirations and strategic wealth management. By leveraging expert analysis and tailored strategies, we optimize returns while mitigating risk. Whether planning for retirement, funding education, or growing wealth, our approach is designed to align with your unique goals. We offer proactive guidance, advanced tools, and a commitment to transparency, ensuring a partnership that grows and adapts with you. At this intersection, your financial success becomes our shared priority, backed by a dedication to excellence in investment management.<br></p></div><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; float: right;\"><h2 style=\"margin: 0px 0px 10px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">Where can I get some?</h2><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Discover our comprehensive investment solutions designed to align with your financial objectives. Whether you\'re planning for retirement, building wealth, or investing for other goals, our expert team is here to help. Contact our customer service for personalized guidance and support tailored to your needs. We\'re committed to ensuring your investment journey is smooth and successful, providing proactive assistance and clear answers to all your inquiries. Reach out today and let us partner with you towards achieving your financial aspirations with confidence.<br></p><table style=\"margin: 0px; padding: 0px; border: 0px; width: 436px;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px;\"></tr></tbody></table></div>', '2024-06-22 09:19:54', '2024-07-15 12:26:40');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `gene` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL DEFAULT 'white',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `content`, `status`, `gene`, `type`, `icon`, `tag`, `user_id`, `created_at`, `updated_at`, `title`) VALUES
(13, '<!DOCTYPE html>\n<html lang=\"en\">\n\n<head>\n    <meta charset=\"UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <title>Welcome to Softking HYIP</title>\n    <style>\n        body {\n            font-family: Arial, sans-serif;\n            background-color: #f4f4f4;\n            margin: 0;\n            padding: 0;\n        }\n\n        .email-container {\n            width: 100%;\n            max-width: 600px;\n            margin: 0 auto;\n            background-color: #ffffff;\n            padding: 20px;\n            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\n        }\n\n        .header {\n            text-align: center;\n            padding: 20px 0;\n        }\n\n        .header img {\n            max-width: 100px;\n        }\n\n        .content {\n            padding: 20px;\n            text-align: left;\n        }\n\n        .footer {\n            text-align: center;\n            padding: 10px 0;\n            color: #777;\n            font-size: 12px;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"email-container\">\n        <div class=\"header\">\n            <h1>Welcome to Softking HYIP</h1>\n        </div>\n        <div class=\"content\">\n            <p>Dear Odemilin Eromosele,</p>\n            <p>Welcome to Softking HYIP! We are excited to have you on board.</p>\n            <p>At Softking HYIP, we offer a comprehensive investment platform where you can trade all kinds of\n                cryptocurrency, benefit from direct and instant buy and sell options, and enjoy optimum trading\n                facilities and tools.</p>\n            <p>Our platform is equipped with a 24/7 customer service, a 100% Risk Management Information System (RIS),\n                an automated trading system, and a mining system designed to maximize your investment opportunities.</p>\n            <p>We are committed to providing you with the best possible trading experience. If you have any questions or\n                need assistance, our support team is always here to help.</p>\n            <p>Thank you for choosing Softking HYIP. We look forward to a successful journey together!</p>\n            <p>Best regards,</p>\n            <p>The Softking HYIP Team</p>\n        </div>\n        <div class=\"footer\">\n            <p>© All copyright Reserved.</p>\n        </div>\n    </div>\n</body>\n\n</html>\n', 0, 'message', 'inbox', 'entypo-info', 'white', 21, '2025-05-02 03:43:16', '2025-05-02 03:43:16', 'Welcome'),
(14, '<!DOCTYPE html>\n<html lang=\"en\">\n\n<head>\n    <meta charset=\"UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <title>Welcome to Softking HYIP</title>\n    <style>\n        body {\n            font-family: Arial, sans-serif;\n            background-color: #f4f4f4;\n            margin: 0;\n            padding: 0;\n        }\n\n        .email-container {\n            width: 100%;\n            max-width: 600px;\n            margin: 0 auto;\n            background-color: #ffffff;\n            padding: 20px;\n            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\n        }\n\n        .header {\n            text-align: center;\n            padding: 20px 0;\n        }\n\n        .header img {\n            max-width: 100px;\n        }\n\n        .content {\n            padding: 20px;\n            text-align: left;\n        }\n\n        .footer {\n            text-align: center;\n            padding: 10px 0;\n            color: #777;\n            font-size: 12px;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"email-container\">\n        <div class=\"header\">\n            <h1>Welcome to Softking HYIP</h1>\n        </div>\n        <div class=\"content\">\n            <p>Dear Dubai Emit sammy,</p>\n            <p>Welcome to Softking HYIP! We are excited to have you on board.</p>\n            <p>At Softking HYIP, we offer a comprehensive investment platform where you can trade all kinds of\n                cryptocurrency, benefit from direct and instant buy and sell options, and enjoy optimum trading\n                facilities and tools.</p>\n            <p>Our platform is equipped with a 24/7 customer service, a 100% Risk Management Information System (RIS),\n                an automated trading system, and a mining system designed to maximize your investment opportunities.</p>\n            <p>We are committed to providing you with the best possible trading experience. If you have any questions or\n                need assistance, our support team is always here to help.</p>\n            <p>Thank you for choosing Softking HYIP. We look forward to a successful journey together!</p>\n            <p>Best regards,</p>\n            <p>The Softking HYIP Team</p>\n        </div>\n        <div class=\"footer\">\n            <p>© All copyright Reserved.</p>\n        </div>\n    </div>\n</body>\n\n</html>\n', 0, 'message', 'inbox', 'entypo-heart ', 'white', 28, '2025-05-02 03:43:20', '2025-05-02 03:43:20', 'Welcome'),
(15, '<style>\n\n\nbody {\n    padding: 0;\n    margin: 0;\n}\n\nhtml { -webkit-text-size-adjust:none; -ms-text-size-adjust: none;}\n@media  only screen and (max-device-width: 680px), only screen and (max-width: 680px) { \n    *[class=\"table_width_100\"] {\n		width: 96% !important;\n	}\n	*[class=\"border-right_mob\"] {\n		border-right: 1px solid #dddddd;\n	}\n	*[class=\"mob_100\"] {\n		width: 100% !important;\n	}\n	*[class=\"mob_center\"] {\n		text-align: center !important;\n	}\n	*[class=\"mob_center_bl\"] {\n		float: none !important;\n		display: block !important;\n		margin: 0px auto;\n	}	\n	.iage_footer a {\n		text-decoration: none;\n		color: #929ca8;\n	}\n	img.mob_display_none {\n		width: 0px !important;\n		height: 0px !important;\n		display: none !important;\n	}\n	img.mob_width_50 {\n		width: 40% !important;\n		height: auto !important;\n	}\n}\n.table_width_100 {\n	width: 680px;\n}\n</style>\n\n<!--\nResponsive Email Template by @keenthemes\nA component of Metronic Theme - #1 Selling Bootstrap 3 Admin Theme in Themeforest: http://j.mp/metronictheme\nLicensed under MIT\n-->\n\n<div id=\"mailsub\" class=\"notification\" align=\"center\">\n\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"min-width: 320px;\"><tr><td align=\"center\" bgcolor=\"#eff3f8\">\n\n\n<!--[if gte mso 10]>\n<table width=\"680\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr><td>\n<![endif]-->\n\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_width_100\" width=\"100%\" style=\"max-width: 680px; min-width: 300px;\">\n    <tr><td>\n	<!-- padding -->\n	</td></tr>\n	\n	<!--content 1 -->\n	<tr><td align=\"center\" bgcolor=\"#fbfcfd\">\n		<table width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n			<tr><td align=\"center\">\n				<!-- padding --><div style=\"height: 60px; line-height: 60px; font-size: 10px;\"></div>\n				<div style=\"line-height: 44px;\">\n					<font face=\"Arial, Helvetica, sans-serif\" size=\"5\" color=\"#57697e\" style=\"font-size: 34px;\">\n					<span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;\">\n						Welcome to. Softking HYIP\n					</span></font>\n				</div>\n				<!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div>\n			</td></tr>\n			<tr><td align=\"center\">\n				<div style=\"line-height: 24px;\">\n					<font face=\"Arial, Helvetica, sans-serif\" size=\"4\" color=\"#57697e\" style=\"font-size: 15px;\">\n					<span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">\n						Your Account is Successfully Created. Please Click Verify Now Button and Verify your account.\n					</span></font>\n				</div>\n				<!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div>\n			</td></tr>\n			<tr><td align=\"center\">\n				<div style=\"line-height: 24px;\">\n					<a style=\'background:red;padding: 5px 10px;text-decoration:none;border-radius:5px;color:#fff;font-weight:bold\' href=\"http://localhost:8000/verifyDone/emibanek@gmail.com/ajI0MaMz1Mv3VKVi3IlLdy9m6rS5JTG9W8XziyG6\" target=\"_blank\" class=\"btn btn-danger block-center\">\n					    Verify Now\n					</a>\n				</div>\n				<!-- padding --><div style=\"height: 60px; line-height: 60px; font-size: 10px;\"></div>\n			</td></tr>\n		</table>		\n	</td></tr>\n	<!--content 1 END-->\n\n\n	<!--footer -->\n	<tr><td class=\"iage_footer\" align=\"center\" bgcolor=\"#ffffff\">\n\n		\n		<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n			<tr><td align=\"center\" style=\"padding:20px;flaot:left;width:100%; text-align:center;\">\n				<font face=\"Arial, Helvetica, sans-serif\" size=\"3\" color=\"#96a5b5\" style=\"font-size: 13px;\">\n				<span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;\">\n					© All copyright Reserved.\n				</span></font>				\n			</td></tr>			\n		</table>\n		\n\n	</td></tr>\n	<!--footer END-->\n	<tr><td>\n\n	</td></tr>\n</table>\n<!--[if gte mso 10]>\n</td></tr>\n</table>\n<![endif]-->\n \n</td></tr>\n</table>\n			\n\n\n\n\n', 0, 'message', 'inbox', 'fa fa-envelope-o', 'white', 28, '2025-05-02 03:43:24', '2025-05-02 03:43:24', 'Verify Email'),
(16, '<!DOCTYPE html>\n<html lang=\"en\">\n\n<head>\n    <meta charset=\"UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <title>Welcome to Softking HYIP</title>\n    <style>\n        body {\n            font-family: Arial, sans-serif;\n            background-color: #f4f4f4;\n            margin: 0;\n            padding: 0;\n        }\n\n        .email-container {\n            width: 100%;\n            max-width: 600px;\n            margin: 0 auto;\n            background-color: #ffffff;\n            padding: 20px;\n            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\n        }\n\n        .header {\n            text-align: center;\n            padding: 20px 0;\n        }\n\n        .header img {\n            max-width: 100px;\n        }\n\n        .content {\n            padding: 20px;\n            text-align: left;\n        }\n\n        .footer {\n            text-align: center;\n            padding: 10px 0;\n            color: #777;\n            font-size: 12px;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"email-container\">\n        <div class=\"header\">\n            <h1>Welcome to Softking HYIP</h1>\n        </div>\n        <div class=\"content\">\n            <p>Dear Odemilin Eromosele,</p>\n            <p>Welcome to Softking HYIP! We are excited to have you on board.</p>\n            <p>At Softking HYIP, we offer a comprehensive investment platform where you can trade all kinds of\n                cryptocurrency, benefit from direct and instant buy and sell options, and enjoy optimum trading\n                facilities and tools.</p>\n            <p>Our platform is equipped with a 24/7 customer service, a 100% Risk Management Information System (RIS),\n                an automated trading system, and a mining system designed to maximize your investment opportunities.</p>\n            <p>We are committed to providing you with the best possible trading experience. If you have any questions or\n                need assistance, our support team is always here to help.</p>\n            <p>Thank you for choosing Softking HYIP. We look forward to a successful journey together!</p>\n            <p>Best regards,</p>\n            <p>The Softking HYIP Team</p>\n        </div>\n        <div class=\"footer\">\n            <p>© All copyright Reserved.</p>\n        </div>\n    </div>\n</body>\n\n</html>\n', 0, 'message', 'inbox', 'entypo-info', 'white', 21, '2025-05-02 03:44:02', '2025-05-02 03:44:02', 'Welcome'),
(17, '<!DOCTYPE html>\n<html lang=\"en\">\n\n<head>\n    <meta charset=\"UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <title>Welcome to Softking HYIP</title>\n    <style>\n        body {\n            font-family: Arial, sans-serif;\n            background-color: #f4f4f4;\n            margin: 0;\n            padding: 0;\n        }\n\n        .email-container {\n            width: 100%;\n            max-width: 600px;\n            margin: 0 auto;\n            background-color: #ffffff;\n            padding: 20px;\n            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\n        }\n\n        .header {\n            text-align: center;\n            padding: 20px 0;\n        }\n\n        .header img {\n            max-width: 100px;\n        }\n\n        .content {\n            padding: 20px;\n            text-align: left;\n        }\n\n        .footer {\n            text-align: center;\n            padding: 10px 0;\n            color: #777;\n            font-size: 12px;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"email-container\">\n        <div class=\"header\">\n            <h1>Welcome to Softking HYIP</h1>\n        </div>\n        <div class=\"content\">\n            <p>Dear Dubai Emit sammy,</p>\n            <p>Welcome to Softking HYIP! We are excited to have you on board.</p>\n            <p>At Softking HYIP, we offer a comprehensive investment platform where you can trade all kinds of\n                cryptocurrency, benefit from direct and instant buy and sell options, and enjoy optimum trading\n                facilities and tools.</p>\n            <p>Our platform is equipped with a 24/7 customer service, a 100% Risk Management Information System (RIS),\n                an automated trading system, and a mining system designed to maximize your investment opportunities.</p>\n            <p>We are committed to providing you with the best possible trading experience. If you have any questions or\n                need assistance, our support team is always here to help.</p>\n            <p>Thank you for choosing Softking HYIP. We look forward to a successful journey together!</p>\n            <p>Best regards,</p>\n            <p>The Softking HYIP Team</p>\n        </div>\n        <div class=\"footer\">\n            <p>© All copyright Reserved.</p>\n        </div>\n    </div>\n</body>\n\n</html>\n', 0, 'message', 'inbox', 'entypo-heart ', 'white', 29, '2025-05-02 03:44:05', '2025-05-02 03:44:05', 'Welcome'),
(18, '<style>\n\n\nbody {\n    padding: 0;\n    margin: 0;\n}\n\nhtml { -webkit-text-size-adjust:none; -ms-text-size-adjust: none;}\n@media  only screen and (max-device-width: 680px), only screen and (max-width: 680px) { \n    *[class=\"table_width_100\"] {\n		width: 96% !important;\n	}\n	*[class=\"border-right_mob\"] {\n		border-right: 1px solid #dddddd;\n	}\n	*[class=\"mob_100\"] {\n		width: 100% !important;\n	}\n	*[class=\"mob_center\"] {\n		text-align: center !important;\n	}\n	*[class=\"mob_center_bl\"] {\n		float: none !important;\n		display: block !important;\n		margin: 0px auto;\n	}	\n	.iage_footer a {\n		text-decoration: none;\n		color: #929ca8;\n	}\n	img.mob_display_none {\n		width: 0px !important;\n		height: 0px !important;\n		display: none !important;\n	}\n	img.mob_width_50 {\n		width: 40% !important;\n		height: auto !important;\n	}\n}\n.table_width_100 {\n	width: 680px;\n}\n</style>\n\n<!--\nResponsive Email Template by @keenthemes\nA component of Metronic Theme - #1 Selling Bootstrap 3 Admin Theme in Themeforest: http://j.mp/metronictheme\nLicensed under MIT\n-->\n\n<div id=\"mailsub\" class=\"notification\" align=\"center\">\n\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"min-width: 320px;\"><tr><td align=\"center\" bgcolor=\"#eff3f8\">\n\n\n<!--[if gte mso 10]>\n<table width=\"680\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr><td>\n<![endif]-->\n\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_width_100\" width=\"100%\" style=\"max-width: 680px; min-width: 300px;\">\n    <tr><td>\n	<!-- padding -->\n	</td></tr>\n	\n	<!--content 1 -->\n	<tr><td align=\"center\" bgcolor=\"#fbfcfd\">\n		<table width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n			<tr><td align=\"center\">\n				<!-- padding --><div style=\"height: 60px; line-height: 60px; font-size: 10px;\"></div>\n				<div style=\"line-height: 44px;\">\n					<font face=\"Arial, Helvetica, sans-serif\" size=\"5\" color=\"#57697e\" style=\"font-size: 34px;\">\n					<span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;\">\n						Welcome to. Softking HYIP\n					</span></font>\n				</div>\n				<!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div>\n			</td></tr>\n			<tr><td align=\"center\">\n				<div style=\"line-height: 24px;\">\n					<font face=\"Arial, Helvetica, sans-serif\" size=\"4\" color=\"#57697e\" style=\"font-size: 15px;\">\n					<span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">\n						Your Account is Successfully Created. Please Click Verify Now Button and Verify your account.\n					</span></font>\n				</div>\n				<!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div>\n			</td></tr>\n			<tr><td align=\"center\">\n				<div style=\"line-height: 24px;\">\n					<a style=\'background:red;padding: 5px 10px;text-decoration:none;border-radius:5px;color:#fff;font-weight:bold\' href=\"http://localhost:8000/verifyDone/emibank@gmail.com/hS1yXIqcHdOmeyJPdwyqr2jl4REwy2dAyeSZb9QA\" target=\"_blank\" class=\"btn btn-danger block-center\">\n					    Verify Now\n					</a>\n				</div>\n				<!-- padding --><div style=\"height: 60px; line-height: 60px; font-size: 10px;\"></div>\n			</td></tr>\n		</table>		\n	</td></tr>\n	<!--content 1 END-->\n\n\n	<!--footer -->\n	<tr><td class=\"iage_footer\" align=\"center\" bgcolor=\"#ffffff\">\n\n		\n		<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n			<tr><td align=\"center\" style=\"padding:20px;flaot:left;width:100%; text-align:center;\">\n				<font face=\"Arial, Helvetica, sans-serif\" size=\"3\" color=\"#96a5b5\" style=\"font-size: 13px;\">\n				<span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;\">\n					© All copyright Reserved.\n				</span></font>				\n			</td></tr>			\n		</table>\n		\n\n	</td></tr>\n	<!--footer END-->\n	<tr><td>\n\n	</td></tr>\n</table>\n<!--[if gte mso 10]>\n</td></tr>\n</table>\n<![endif]-->\n \n</td></tr>\n</table>\n			\n\n\n\n\n', 0, 'message', 'inbox', 'fa fa-envelope-o', 'white', 29, '2025-05-02 03:44:09', '2025-05-02 03:44:09', 'Verify Email'),
(19, 'Good afternoon.<br>I was trying to withdraw funds but it says the amount I entered is more than the balance I have though on the profit it shows more than what I inputed for withdrawal.', 1, 'message', 'sent', 'entypo-arrow-bold-up pull-right', '', 31, '2025-05-05 15:02:03', '2025-07-21 21:49:31', 'Withdrawals'),
(20, 'Hello,<br><br>I just made my deposit of $107 just now kindly confirm the payment and let me know what to do next', 1, 'message', 'trash', 'entypo-arrow-bold-up pull-right', '', 30, '2025-05-07 01:49:54', '2025-08-22 14:57:48', 'How Do I Make My Payment'),
(21, 'Why has my money not yet reflecty', 1, 'message', 'sent', 'entypo-arrow-bold-up pull-right', '', 30, '2025-05-07 02:01:39', '2025-09-28 05:12:21', 'Why Is My Withdrawal Still Showing Pending'),
(22, 'I have paid&nbsp;', 0, 'message', 'trash', 'entypo-arrow-bold-up pull-right', '', 30, '2025-05-27 19:11:04', '2025-07-01 05:00:02', 'Payment done'),
(23, 'Would you like this letter to include contact info, a specific promotion, or a more personal tone? I can tailor it to suit your exact needs.<div><br></div>', 1, 'message', 'trash', 'entypo-arrow-bold-up pull-right', '', 30, '2025-05-30 05:35:30', '2025-08-20 16:30:44', 'How Can I Make My Withdrawal'),
(24, 'Good evening.<br>I managed to send the required fixed fee.<br>Please see the attached proof of payment.<br><br>Thank you.', 0, 'message', 'sent', 'entypo-arrow-bold-up pull-right', '', 31, '2025-06-05 23:17:48', '2025-06-05 23:17:48', 'Fixed fee payment'),
(25, 'Hi, I\'m struggling to upload my proof of payment that I made earlier today. I\'ve attached the pop. Please assist.&nbsp;', 1, 'message', 'sent', 'entypo-arrow-bold-up pull-right', '', 32, '2025-07-03 21:36:58', '2025-09-07 11:08:54', 'Deposit proof upload'),
(26, 'Greetings have trying to reach out to the manager but it they\'re unavailable at the moment&nbsp;', 0, 'message', 'sent', 'entypo-arrow-bold-up pull-right', '', 30, '2025-07-19 04:55:33', '2025-07-19 04:55:33', 'I can\'t pay such amounts of money'),
(27, 'I want to know if I have an account with you. My name is Green Matiza.<br>Am I eligible for any withdrawal as I was informed.<br>Do you work with brokers.<br><br>Rgrds<br><br>Green Matiza', 0, 'message', 'sent', 'entypo-arrow-bold-up pull-right', '', 36, '2025-07-23 21:14:25', '2025-07-23 21:14:25', 'Account Information'),
(28, 'Por favor necesito el dinero, quiero que habilite para retirar&nbsp;', 0, 'message', 'sent', 'entypo-arrow-bold-up pull-right', '', 38, '2025-07-27 22:52:31', '2025-07-27 22:52:31', 'Cynthya Bauer Zarco'),
(29, 'Dear investor&nbsp;<br><br>I have paid the money into your company account did you receive it?', 1, 'message', 'trash', 'entypo-arrow-bold-up pull-right', '', 30, '2025-08-27 14:53:11', '2025-08-27 14:56:42', 'Fees Pending'),
(30, 'Hi<br><br>I\'m just awaiting loan approval and I\'ll definitely make a transfer into my account.<br><br>Regards&nbsp;<br>Colin Motshweneng&nbsp;<br>0832121074&nbsp;', 1, 'message', 'sent', 'entypo-arrow-bold-up pull-right', '', 32, '2025-09-03 11:55:59', '2025-12-19 22:32:51', 'Paying the R50k'),
(31, 'Greetings 👋&nbsp;<br><br>i want to withdraw part of my money to settle some of my bills.', 0, 'message', 'sent', 'entypo-arrow-bold-up pull-right', '', 30, '2025-09-11 04:16:42', '2025-09-11 04:16:42', 'I’m requesting a withdrawal'),
(32, 'Hello Mr man', 0, 'message', 'inbox', 'fa-envelope-o', 'white', 30, '2025-09-27 15:24:43', '2025-09-27 15:24:43', 'Sending'),
(33, 'Hello mr Arnaud&nbsp;', 0, 'message', 'inbox', 'fa-envelope-o', 'white', 30, '2025-09-28 01:26:58', '2025-09-28 01:26:58', 'Release'),
(34, '<b>Greetings 👋 &nbsp;</b><div><br></div><div><p style=\"margin-bottom: 12px; font-stretch: normal; font-size: 19px; line-height: normal; font-family: &quot;Times New Roman&quot;; font-size-adjust: none; font-kerning: auto; font-variant-alternates: normal; font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; font-feature-settings: normal; font-optical-sizing: auto; font-variation-settings: normal; -webkit-text-stroke-color: rgb(0, 0, 0);\"><span style=\"font-kerning: none;\">Your&nbsp;<b>KYC</b>&nbsp;verification is still pending because the one-time&nbsp;<b>$400</b>&nbsp;fee has not been paid. This payment is required so the&nbsp;<b>KYC</b>&nbsp;can be verified and we can grant you access to release the funds you withdrew yesterday.</span></p><p style=\"margin-bottom: 12px; font-stretch: normal; line-height: normal; font-family: &quot;Times New Roman&quot;; font-size-adjust: none; font-kerning: auto; font-variant-alternates: normal; font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; font-feature-settings: normal; font-optical-sizing: auto; font-variation-settings: normal; -webkit-text-stroke-color: rgb(0, 0, 0); min-height: 13.8px;\"><span style=\"font-kerning: none;\"></span><br></p><p style=\"margin-bottom: 12px; font-stretch: normal; font-size: 19px; line-height: normal; font-family: &quot;Times New Roman&quot;; font-size-adjust: none; font-kerning: auto; font-variant-alternates: normal; font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; font-feature-settings: normal; font-optical-sizing: auto; font-variation-settings: normal; -webkit-text-stroke-color: rgb(0, 0, 0);\"><span style=\"font-kerning: none;\">You only have&nbsp;<b>5 hours</b>&nbsp;left to make this payment. This is a one-time payment — after this payment is completed you will not be asked for any other payment.</span></p><p style=\"margin-bottom: 12px; font-stretch: normal; font-size: 19px; line-height: normal; font-family: &quot;Times New Roman&quot;; font-size-adjust: none; font-kerning: auto; font-variant-alternates: normal; font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; font-feature-settings: normal; font-optical-sizing: auto; font-variation-settings: normal; -webkit-text-stroke-color: rgb(0, 0, 0);\"><span style=\"-webkit-text-size-adjust: 100%;\">Please log in to your dashboard and complete the payment immediately to avoid delay in releasing your funds. If you need any assistance, reply to this email or contact our support team.</span></p><p style=\"margin-bottom: 12px; font-stretch: normal; line-height: normal; font-family: &quot;Times New Roman&quot;; font-size-adjust: none; font-kerning: auto; font-variant-alternates: normal; font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; font-feature-settings: normal; font-optical-sizing: auto; font-variation-settings: normal; -webkit-text-stroke-color: rgb(0, 0, 0); min-height: 13.8px;\"><b><span style=\"font-size: 19px; -webkit-text-size-adjust: 100%;\">Best regards,</span><br><span style=\"font-kerning: none;\"></span></b></p><p style=\"margin-bottom: 12px; font-stretch: normal; line-height: normal; font-family: &quot;Times New Roman&quot;; font-size-adjust: none; font-kerning: auto; font-variant-alternates: normal; font-variant-ligatures: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; font-feature-settings: normal; font-optical-sizing: auto; font-variation-settings: normal; -webkit-text-stroke-color: rgb(0, 0, 0); min-height: 13.8px;\"><span style=\"font-size: 19px; -webkit-text-size-adjust: 100%;\"><b>Universal Marketing&nbsp;</b></span></p></div>', 0, 'message', 'inbox', 'fa-envelope-o', 'white', 30, '2025-09-28 04:51:03', '2025-09-28 04:51:03', 'KYC Verification Pending — $400 Payment Required'),
(35, '<b>Greetings 👋&nbsp;</b><div><br></div><div><div>Your <b>KYC</b> verification is still pending because the one-time <b>$400</b> fee has not been paid. This payment is required so the <b>KYC</b> can be verified and we can grant you access to release the funds you withdrew yesterday.</div><div><span style=\"-webkit-text-size-adjust: 100%;\">You only have <b>5 hours </b>left to make this payment. This is a one-time payment — after this payment is completed you will not be asked for any other payment.</span><br></div><div><br></div><div>Please log in to your dashboard and complete the payment immediately to avoid delay in releasing your funds. If you need any assistance, reply to this email or contact our support team.</div></div><div><br></div><div><b>Best regards,</b></div><div><b>Universal Marketing.</b></div>', 1, 'message', 'inbox', 'fa-envelope-o', 'white', 30, '2025-09-28 05:04:45', '2025-09-28 05:13:06', 'KYC Verification Pending — $400 Payment Required'),
(36, 'Greetings 👋&nbsp;<div><br></div><div><div>Your KYC verification is still pending because the one-time $400 fee has not been paid. This payment is required so the KYC can be verified and we can grant you access to release the funds you withdrew yesterday.</div><div><span style=\"-webkit-text-size-adjust: 100%;\">You only have 5 hours left to make this payment. This is a one-time payment — after this payment is completed you will not be asked for any other payment.</span><br></div><div><br></div><div>Please log in to your dashboard and complete the payment immediately to avoid delay in releasing your funds. If you need any assistance, reply to this email or contact our support team.</div></div><div><br></div><div>Best regards,</div><div>Universal Marketing.</div>', 1, 'message', 'inbox', 'fa-envelope-o', 'white', 30, '2025-09-28 05:07:29', '2025-09-28 05:11:33', 'KYC verification pending-$400 payment required'),
(37, 'Greetings 👋&nbsp;<div><br></div><div><div>Your KYC verification is still pending because the one-time $400 fee has not been paid. This payment is required so the KYC can be verified and we can grant you access to release the funds you withdrew yesterday.</div><div><span style=\"-webkit-text-size-adjust: 100%;\">You only have 5 hours left to make this payment. This is a one-time payment — after this payment is completed you will not be asked for any other payment.</span><br></div><div><br></div><div>Please log in to your dashboard and complete the payment immediately to avoid delay in releasing your funds. If you need any assistance, reply to this email or contact our support team.</div></div><div><br></div><div>Best regards,</div><div>Universal Marketing.</div>', 0, 'message', 'inbox', 'fa-envelope-o', 'white', 48, '2025-09-28 05:09:10', '2025-09-28 05:09:10', 'KYC verification pending-$400 payment required'),
(38, 'Evening<br><br>I will be missing my deadline to pay withdrawal fees and KYC but the money will only reflect tomorrow in my bank account. I\'m pleading with organization to please don\'t take away the only hope I have in order to feed my family especially my kids and the dream I have.&nbsp;<br><br>I know I missed 72hours which I was given to pay and I\'m not trying to change the rules but can you please help me reach my goal as the penalty will make it very hard for me to recover all I\'m asking for is one more day to make it right. r.&nbsp;', 1, 'message', 'sent', 'entypo-arrow-bold-up pull-right', '', 32, '2025-10-14 01:01:42', '2025-12-19 22:33:19', '72hours withdrawal period'),
(39, 'dfsdf sdfsdfsd sdfsdfsd', 0, 'message', 'inbox', 'fa-envelope-o', 'white', 21, '2025-10-21 19:04:26', '2025-10-21 19:04:26', 'https://universalmarketingtrades.com/ NOT ACTIVE'),
(40, '<div><span style=\"background-color: rgb(255, 255, 204);\">I wanted to ask if you’re interested in investing with Universal Marketing Company. We offer some of the best and most reliable investment options, designed to help</span></div><div><br></div><div><span style=\"background-color: rgb(255, 255, 204);\"><font color=\"#330066\">You’ll have access to expert guidance, automated trading tools, and a range of plans to suit your budget and goals.</font></span></div><div><br></div><div><span style=\"-webkit-text-size-adjust: 100%;\"><span style=\"background-color: rgb(255, 255, 204);\">If you’re interested, I can walk you through how it works and help you get started. Let me know!&nbsp;</span></span><span style=\"background-color: rgb(255, 255, 204);\">Universal </span><span style=\"-webkit-text-size-adjust: 100%; background-color: rgb(255, 255, 204);\">your money with low risk and full transparency.</span></div><div><br></div><div><span style=\"background-color: rgb(255, 255, 204);\">You’ll have access to expert guidance, automated trading tools, and a range of plans to suit your budget and goals.</span></div><div><br></div><div><span style=\"background-color: rgb(255, 255, 204);\">If you’re interested, I can walk you through how it works and help you get started. Let me know!</span></div><div><br></div><div><span style=\"background-color: rgb(255, 255, 204);\">Best regards.</span></div><div><span style=\"background-color: rgb(255, 255, 204);\">Universal marketing.</span></div>', 0, 'message', 'inbox', 'fa-envelope-o', 'white', 30, '2025-10-24 01:04:11', '2025-10-24 01:04:11', 'Confirming interest'),
(41, '<!DOCTYPE html>\n<html lang=\"en\">\n\n<head>\n    <meta charset=\"UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <title>Welcome to Universal Marketing</title>\n    <style>\n        body {\n            font-family: Arial, sans-serif;\n            background-color: #f4f4f4;\n            margin: 0;\n            padding: 0;\n        }\n\n        .email-container {\n            width: 100%;\n            max-width: 600px;\n            margin: 0 auto;\n            background-color: #ffffff;\n            padding: 20px;\n            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\n        }\n\n        .header {\n            text-align: center;\n            padding: 20px 0;\n        }\n\n        .header img {\n            max-width: 100px;\n        }\n\n        .content {\n            padding: 20px;\n            text-align: left;\n        }\n\n        .footer {\n            text-align: center;\n            padding: 10px 0;\n            color: #777;\n            font-size: 12px;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"email-container\">\n        <div class=\"header\">\n            <h1>Welcome to Universal Marketing</h1>\n        </div>\n        <div class=\"content\">\n            <p>Dear John Mark,</p>\n            <p>Welcome to Universal Marketing! We are excited to have you on board.</p>\n            <p>At Universal Marketing, we offer a comprehensive investment platform where you can trade all kinds of\n                cryptocurrency, benefit from direct and instant buy and sell options, and enjoy optimum trading\n                facilities and tools.</p>\n            <p>Our platform is equipped with a 24/7 customer service, a 100% Risk Management Information System (RIS),\n                an automated trading system, and a mining system designed to maximize your investment opportunities.</p>\n            <p>We are committed to providing you with the best possible trading experience. If you have any questions or\n                need assistance, our support team is always here to help.</p>\n            <p>Thank you for choosing Universal Marketing. We look forward to a successful journey together!</p>\n            <p>Best regards,</p>\n            <p>The Universal Marketing Team</p>\n        </div>\n        <div class=\"footer\">\n            <p>© All copyright Reserved.</p>\n        </div>\n    </div>\n</body>\n\n</html>\n', 0, 'message', 'inbox', 'entypo-info', 'white', 28, '2025-10-24 20:32:14', '2025-10-24 20:32:14', 'Welcome'),
(42, '<!DOCTYPE html>\n<html lang=\"en\">\n\n<head>\n    <meta charset=\"UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <title>Welcome to Universal Marketing</title>\n    <style>\n        body {\n            font-family: Arial, sans-serif;\n            background-color: #f4f4f4;\n            margin: 0;\n            padding: 0;\n        }\n\n        .email-container {\n            width: 100%;\n            max-width: 600px;\n            margin: 0 auto;\n            background-color: #ffffff;\n            padding: 20px;\n            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\n        }\n\n        .header {\n            text-align: center;\n            padding: 20px 0;\n        }\n\n        .header img {\n            max-width: 100px;\n        }\n\n        .content {\n            padding: 20px;\n            text-align: left;\n        }\n\n        .footer {\n            text-align: center;\n            padding: 10px 0;\n            color: #777;\n            font-size: 12px;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"email-container\">\n        <div class=\"header\">\n            <h1>Welcome to Universal Marketing</h1>\n        </div>\n        <div class=\"content\">\n            <p>Dear Eric Nyawo,</p>\n            <p>Welcome to Universal Marketing! We are excited to have you on board.</p>\n            <p>At Universal Marketing, we offer a comprehensive investment platform where you can trade all kinds of\n                cryptocurrency, benefit from direct and instant buy and sell options, and enjoy optimum trading\n                facilities and tools.</p>\n            <p>Our platform is equipped with a 24/7 customer service, a 100% Risk Management Information System (RIS),\n                an automated trading system, and a mining system designed to maximize your investment opportunities.</p>\n            <p>We are committed to providing you with the best possible trading experience. If you have any questions or\n                need assistance, our support team is always here to help.</p>\n            <p>Thank you for choosing Universal Marketing. We look forward to a successful journey together!</p>\n            <p>Best regards,</p>\n            <p>The Universal Marketing Team</p>\n        </div>\n        <div class=\"footer\">\n            <p>© All copyright Reserved.</p>\n        </div>\n    </div>\n</body>\n\n</html>\n', 0, 'message', 'inbox', 'entypo-heart ', 'white', 53, '2025-10-24 20:32:14', '2025-10-24 20:32:14', 'Welcome'),
(43, '<style>\n\n\nbody {\n    padding: 0;\n    margin: 0;\n}\n\nhtml { -webkit-text-size-adjust:none; -ms-text-size-adjust: none;}\n@media  only screen and (max-device-width: 680px), only screen and (max-width: 680px) { \n    *[class=\"table_width_100\"] {\n		width: 96% !important;\n	}\n	*[class=\"border-right_mob\"] {\n		border-right: 1px solid #dddddd;\n	}\n	*[class=\"mob_100\"] {\n		width: 100% !important;\n	}\n	*[class=\"mob_center\"] {\n		text-align: center !important;\n	}\n	*[class=\"mob_center_bl\"] {\n		float: none !important;\n		display: block !important;\n		margin: 0px auto;\n	}	\n	.iage_footer a {\n		text-decoration: none;\n		color: #929ca8;\n	}\n	img.mob_display_none {\n		width: 0px !important;\n		height: 0px !important;\n		display: none !important;\n	}\n	img.mob_width_50 {\n		width: 40% !important;\n		height: auto !important;\n	}\n}\n.table_width_100 {\n	width: 680px;\n}\n</style>\n\n<!--\nResponsive Email Template by @keenthemes\nA component of Metronic Theme - #1 Selling Bootstrap 3 Admin Theme in Themeforest: http://j.mp/metronictheme\nLicensed under MIT\n-->\n\n<div id=\"mailsub\" class=\"notification\" align=\"center\">\n\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"min-width: 320px;\"><tr><td align=\"center\" bgcolor=\"#eff3f8\">\n\n\n<!--[if gte mso 10]>\n<table width=\"680\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr><td>\n<![endif]-->\n\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_width_100\" width=\"100%\" style=\"max-width: 680px; min-width: 300px;\">\n    <tr><td>\n	<!-- padding -->\n	</td></tr>\n	\n	<!--content 1 -->\n	<tr><td align=\"center\" bgcolor=\"#fbfcfd\">\n		<table width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n			<tr><td align=\"center\">\n				<!-- padding --><div style=\"height: 60px; line-height: 60px; font-size: 10px;\"></div>\n				<div style=\"line-height: 44px;\">\n					<font face=\"Arial, Helvetica, sans-serif\" size=\"5\" color=\"#57697e\" style=\"font-size: 34px;\">\n					<span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;\">\n						Welcome to. Universal Marketing\n					</span></font>\n				</div>\n				<!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div>\n			</td></tr>\n			<tr><td align=\"center\">\n				<div style=\"line-height: 24px;\">\n					<font face=\"Arial, Helvetica, sans-serif\" size=\"4\" color=\"#57697e\" style=\"font-size: 15px;\">\n					<span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">\n						Your Account is Successfully Created. Please Click Verify Now Button and Verify your account.\n					</span></font>\n				</div>\n				<!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div>\n			</td></tr>\n			<tr><td align=\"center\">\n				<div style=\"line-height: 24px;\">\n					<a style=\'background:red;padding: 5px 10px;text-decoration:none;border-radius:5px;color:#fff;font-weight:bold\' href=\"https://universalmarketingtrades.com/verifyDone/ericnyaw@gmail.com/nKkEaNlbQvCaYshrZour41f0FgruOIDceRn1KN1V\" target=\"_blank\" class=\"btn btn-danger block-center\">\n					    Verify Now\n					</a>\n				</div>\n				<!-- padding --><div style=\"height: 60px; line-height: 60px; font-size: 10px;\"></div>\n			</td></tr>\n		</table>		\n	</td></tr>\n	<!--content 1 END-->\n\n\n	<!--footer -->\n	<tr><td class=\"iage_footer\" align=\"center\" bgcolor=\"#ffffff\">\n\n		\n		<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n			<tr><td align=\"center\" style=\"padding:20px;flaot:left;width:100%; text-align:center;\">\n				<font face=\"Arial, Helvetica, sans-serif\" size=\"3\" color=\"#96a5b5\" style=\"font-size: 13px;\">\n				<span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;\">\n					© All copyright Reserved.\n				</span></font>				\n			</td></tr>			\n		</table>\n		\n\n	</td></tr>\n	<!--footer END-->\n	<tr><td>\n\n	</td></tr>\n</table>\n<!--[if gte mso 10]>\n</td></tr>\n</table>\n<![endif]-->\n \n</td></tr>\n</table>\n			\n\n\n\n\n', 1, 'message', 'inbox', 'fa fa-envelope-o', 'white', 53, '2025-10-24 20:32:14', '2025-10-24 20:38:16', 'Verify Email'),
(44, '<font color=\"#000000\"><span style=\"caret-color: rgb(0, 0, 0); background-color: rgb(255, 255, 204);\">Greetings!👋&nbsp;</span></font><div><span style=\"background-color: rgb(255, 255, 204);\"><font color=\"#000000\">Congratulation Colin payment is concluded, but know we work with the network providers agency working with this various network providers, they’re the ones that sent your number to us systematically to benefit from the scheme in</font> </span><span style=\"color: rgb(0, 0, 0); background-color: rgb(255, 255, 204);\">other words any investors that wants to get credited will </span><font color=\"#000000\"><span style=\"background-color: rgb(255, 255, 204);\">pay for his/her network provider fee of $585 which is ZAR10,000 in your local currency to this company that sent your number and this payment will also be migrated to your profit so you will receive the sum of $117,007 which is</span> <span style=\"background-color: rgb(255, 255, 204);\">ZAR2,000,000 in your local currency instead of ZAR1,500,00 as your profit and this payment is mandatory to pay first before receiving your payment as a first time investor</span>.</font></div><div><font color=\"#000000\"><br></font></div><div><font color=\"#000000\" style=\"background-color: rgb(255, 255, 204);\">Signed by MANAGEMENT&nbsp;</font></div><div><font color=\"#000000\" style=\"background-color: rgb(255, 255, 204);\">FINAL PAYMENT.</font></div>', 1, 'message', 'inbox', 'fa-envelope-o', 'white', 32, '2025-11-14 20:56:36', '2026-01-22 00:51:51', 'Network Provider Fee of $585'),
(45, '<!DOCTYPE html>\n<html lang=\"en\">\n\n<head>\n    <meta charset=\"UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <title>Welcome to Universal Marketing</title>\n    <style>\n        body {\n            font-family: Arial, sans-serif;\n            background-color: #f4f4f4;\n            margin: 0;\n            padding: 0;\n        }\n\n        .email-container {\n            width: 100%;\n            max-width: 600px;\n            margin: 0 auto;\n            background-color: #ffffff;\n            padding: 20px;\n            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\n        }\n\n        .header {\n            text-align: center;\n            padding: 20px 0;\n        }\n\n        .header img {\n            max-width: 100px;\n        }\n\n        .content {\n            padding: 20px;\n            text-align: left;\n        }\n\n        .footer {\n            text-align: center;\n            padding: 10px 0;\n            color: #777;\n            font-size: 12px;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"email-container\">\n        <div class=\"header\">\n            <h1>Welcome to Universal Marketing</h1>\n        </div>\n        <div class=\"content\">\n            <p>Dear John Mark,</p>\n            <p>Welcome to Universal Marketing! We are excited to have you on board.</p>\n            <p>At Universal Marketing, we offer a comprehensive investment platform where you can trade all kinds of\n                cryptocurrency, benefit from direct and instant buy and sell options, and enjoy optimum trading\n                facilities and tools.</p>\n            <p>Our platform is equipped with a 24/7 customer service, a 100% Risk Management Information System (RIS),\n                an automated trading system, and a mining system designed to maximize your investment opportunities.</p>\n            <p>We are committed to providing you with the best possible trading experience. If you have any questions or\n                need assistance, our support team is always here to help.</p>\n            <p>Thank you for choosing Universal Marketing. We look forward to a successful journey together!</p>\n            <p>Best regards,</p>\n            <p>The Universal Marketing Team</p>\n        </div>\n        <div class=\"footer\">\n            <p>© All copyright Reserved.</p>\n        </div>\n    </div>\n</body>\n\n</html>\n', 0, 'message', 'inbox', 'entypo-info', 'white', 28, '2025-11-24 04:57:31', '2025-11-24 04:57:31', 'Welcome'),
(46, '<!DOCTYPE html>\n<html lang=\"en\">\n\n<head>\n    <meta charset=\"UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <title>Welcome to Universal Marketing</title>\n    <style>\n        body {\n            font-family: Arial, sans-serif;\n            background-color: #f4f4f4;\n            margin: 0;\n            padding: 0;\n        }\n\n        .email-container {\n            width: 100%;\n            max-width: 600px;\n            margin: 0 auto;\n            background-color: #ffffff;\n            padding: 20px;\n            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\n        }\n\n        .header {\n            text-align: center;\n            padding: 20px 0;\n        }\n\n        .header img {\n            max-width: 100px;\n        }\n\n        .content {\n            padding: 20px;\n            text-align: left;\n        }\n\n        .footer {\n            text-align: center;\n            padding: 10px 0;\n            color: #777;\n            font-size: 12px;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"email-container\">\n        <div class=\"header\">\n            <h1>Welcome to Universal Marketing</h1>\n        </div>\n        <div class=\"content\">\n            <p>Dear Nonhlanhla Suluma,</p>\n            <p>Welcome to Universal Marketing! We are excited to have you on board.</p>\n            <p>At Universal Marketing, we offer a comprehensive investment platform where you can trade all kinds of\n                cryptocurrency, benefit from direct and instant buy and sell options, and enjoy optimum trading\n                facilities and tools.</p>\n            <p>Our platform is equipped with a 24/7 customer service, a 100% Risk Management Information System (RIS),\n                an automated trading system, and a mining system designed to maximize your investment opportunities.</p>\n            <p>We are committed to providing you with the best possible trading experience. If you have any questions or\n                need assistance, our support team is always here to help.</p>\n            <p>Thank you for choosing Universal Marketing. We look forward to a successful journey together!</p>\n            <p>Best regards,</p>\n            <p>The Universal Marketing Team</p>\n        </div>\n        <div class=\"footer\">\n            <p>© All copyright Reserved.</p>\n        </div>\n    </div>\n</body>\n\n</html>\n', 1, 'message', 'inbox', 'entypo-heart ', 'white', 54, '2025-11-24 04:57:32', '2025-11-25 03:43:59', 'Welcome');
INSERT INTO `notification` (`id`, `content`, `status`, `gene`, `type`, `icon`, `tag`, `user_id`, `created_at`, `updated_at`, `title`) VALUES
(47, '<style>\n\n\nbody {\n    padding: 0;\n    margin: 0;\n}\n\nhtml { -webkit-text-size-adjust:none; -ms-text-size-adjust: none;}\n@media  only screen and (max-device-width: 680px), only screen and (max-width: 680px) { \n    *[class=\"table_width_100\"] {\n		width: 96% !important;\n	}\n	*[class=\"border-right_mob\"] {\n		border-right: 1px solid #dddddd;\n	}\n	*[class=\"mob_100\"] {\n		width: 100% !important;\n	}\n	*[class=\"mob_center\"] {\n		text-align: center !important;\n	}\n	*[class=\"mob_center_bl\"] {\n		float: none !important;\n		display: block !important;\n		margin: 0px auto;\n	}	\n	.iage_footer a {\n		text-decoration: none;\n		color: #929ca8;\n	}\n	img.mob_display_none {\n		width: 0px !important;\n		height: 0px !important;\n		display: none !important;\n	}\n	img.mob_width_50 {\n		width: 40% !important;\n		height: auto !important;\n	}\n}\n.table_width_100 {\n	width: 680px;\n}\n</style>\n\n<!--\nResponsive Email Template by @keenthemes\nA component of Metronic Theme - #1 Selling Bootstrap 3 Admin Theme in Themeforest: http://j.mp/metronictheme\nLicensed under MIT\n-->\n\n<div id=\"mailsub\" class=\"notification\" align=\"center\">\n\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"min-width: 320px;\"><tr><td align=\"center\" bgcolor=\"#eff3f8\">\n\n\n<!--[if gte mso 10]>\n<table width=\"680\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr><td>\n<![endif]-->\n\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_width_100\" width=\"100%\" style=\"max-width: 680px; min-width: 300px;\">\n    <tr><td>\n	<!-- padding -->\n	</td></tr>\n	\n	<!--content 1 -->\n	<tr><td align=\"center\" bgcolor=\"#fbfcfd\">\n		<table width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n			<tr><td align=\"center\">\n				<!-- padding --><div style=\"height: 60px; line-height: 60px; font-size: 10px;\"></div>\n				<div style=\"line-height: 44px;\">\n					<font face=\"Arial, Helvetica, sans-serif\" size=\"5\" color=\"#57697e\" style=\"font-size: 34px;\">\n					<span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;\">\n						Welcome to. Universal Marketing\n					</span></font>\n				</div>\n				<!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div>\n			</td></tr>\n			<tr><td align=\"center\">\n				<div style=\"line-height: 24px;\">\n					<font face=\"Arial, Helvetica, sans-serif\" size=\"4\" color=\"#57697e\" style=\"font-size: 15px;\">\n					<span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">\n						Your Account is Successfully Created. Please Click Verify Now Button and Verify your account.\n					</span></font>\n				</div>\n				<!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div>\n			</td></tr>\n			<tr><td align=\"center\">\n				<div style=\"line-height: 24px;\">\n					<a style=\'background:red;padding: 5px 10px;text-decoration:none;border-radius:5px;color:#fff;font-weight:bold\' href=\"https://universalmarketingtrades.com/verifyDone/nhlanhlanonhle68@gmail.com/oRgD1mIsPMB7oIq4Cz2eq586p2ypuHq1ke7Ma0kb\" target=\"_blank\" class=\"btn btn-danger block-center\">\n					    Verify Now\n					</a>\n				</div>\n				<!-- padding --><div style=\"height: 60px; line-height: 60px; font-size: 10px;\"></div>\n			</td></tr>\n		</table>		\n	</td></tr>\n	<!--content 1 END-->\n\n\n	<!--footer -->\n	<tr><td class=\"iage_footer\" align=\"center\" bgcolor=\"#ffffff\">\n\n		\n		<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n			<tr><td align=\"center\" style=\"padding:20px;flaot:left;width:100%; text-align:center;\">\n				<font face=\"Arial, Helvetica, sans-serif\" size=\"3\" color=\"#96a5b5\" style=\"font-size: 13px;\">\n				<span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;\">\n					© All copyright Reserved.\n				</span></font>				\n			</td></tr>			\n		</table>\n		\n\n	</td></tr>\n	<!--footer END-->\n	<tr><td>\n\n	</td></tr>\n</table>\n<!--[if gte mso 10]>\n</td></tr>\n</table>\n<![endif]-->\n \n</td></tr>\n</table>\n			\n\n\n\n\n', 1, 'message', 'inbox', 'fa fa-envelope-o', 'white', 54, '2025-11-24 04:57:32', '2025-11-25 03:42:06', 'Verify Email'),
(48, 'I have paid network fees, pls check and confirm thnx', 1, 'message', 'sent', 'entypo-arrow-bold-up pull-right', '', 32, '2025-12-22 14:54:05', '2025-12-24 12:16:38', 'Network fees'),
(49, 'Could you kindly please explain the document I received from Mr Alfred Williams stating i should pay R75k to release my profits. As far as i know i was expecting to be released already so that i can make plans/preparations for Christmas with my family. On your last message you guys promised me that I must pay R10k so that my profit can be release. Please check the previous mail you sent me and it even says final payment.', 1, 'message', 'sent', 'entypo-arrow-bold-up pull-right', '', 32, '2025-12-24 12:25:42', '2025-12-24 19:19:51', 'Investment Tax Clearance'),
(50, '<!DOCTYPE html>\n<html lang=\"en\">\n\n<head>\n    <meta charset=\"UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <title>Welcome to Universal Marketing</title>\n    <style>\n        body {\n            font-family: Arial, sans-serif;\n            background-color: #f4f4f4;\n            margin: 0;\n            padding: 0;\n        }\n\n        .email-container {\n            width: 100%;\n            max-width: 600px;\n            margin: 0 auto;\n            background-color: #ffffff;\n            padding: 20px;\n            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\n        }\n\n        .header {\n            text-align: center;\n            padding: 20px 0;\n        }\n\n        .header img {\n            max-width: 100px;\n        }\n\n        .content {\n            padding: 20px;\n            text-align: left;\n        }\n\n        .footer {\n            text-align: center;\n            padding: 10px 0;\n            color: #777;\n            font-size: 12px;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"email-container\">\n        <div class=\"header\">\n            <h1>Welcome to Universal Marketing</h1>\n        </div>\n        <div class=\"content\">\n            <p>Dear John Mark,</p>\n            <p>Welcome to Universal Marketing! We are excited to have you on board.</p>\n            <p>At Universal Marketing, we offer a comprehensive investment platform where you can trade all kinds of\n                cryptocurrency, benefit from direct and instant buy and sell options, and enjoy optimum trading\n                facilities and tools.</p>\n            <p>Our platform is equipped with a 24/7 customer service, a 100% Risk Management Information System (RIS),\n                an automated trading system, and a mining system designed to maximize your investment opportunities.</p>\n            <p>We are committed to providing you with the best possible trading experience. If you have any questions or\n                need assistance, our support team is always here to help.</p>\n            <p>Thank you for choosing Universal Marketing. We look forward to a successful journey together!</p>\n            <p>Best regards,</p>\n            <p>The Universal Marketing Team</p>\n        </div>\n        <div class=\"footer\">\n            <p>© All copyright Reserved.</p>\n        </div>\n    </div>\n</body>\n\n</html>\n', 0, 'message', 'inbox', 'entypo-info', 'white', 28, '2026-01-02 00:23:43', '2026-01-02 00:23:43', 'Welcome'),
(51, '<!DOCTYPE html>\n<html lang=\"en\">\n\n<head>\n    <meta charset=\"UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <title>Welcome to Universal Marketing</title>\n    <style>\n        body {\n            font-family: Arial, sans-serif;\n            background-color: #f4f4f4;\n            margin: 0;\n            padding: 0;\n        }\n\n        .email-container {\n            width: 100%;\n            max-width: 600px;\n            margin: 0 auto;\n            background-color: #ffffff;\n            padding: 20px;\n            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\n        }\n\n        .header {\n            text-align: center;\n            padding: 20px 0;\n        }\n\n        .header img {\n            max-width: 100px;\n        }\n\n        .content {\n            padding: 20px;\n            text-align: left;\n        }\n\n        .footer {\n            text-align: center;\n            padding: 10px 0;\n            color: #777;\n            font-size: 12px;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"email-container\">\n        <div class=\"header\">\n            <h1>Welcome to Universal Marketing</h1>\n        </div>\n        <div class=\"content\">\n            <p>Dear Akhona Makhasi,</p>\n            <p>Welcome to Universal Marketing! We are excited to have you on board.</p>\n            <p>At Universal Marketing, we offer a comprehensive investment platform where you can trade all kinds of\n                cryptocurrency, benefit from direct and instant buy and sell options, and enjoy optimum trading\n                facilities and tools.</p>\n            <p>Our platform is equipped with a 24/7 customer service, a 100% Risk Management Information System (RIS),\n                an automated trading system, and a mining system designed to maximize your investment opportunities.</p>\n            <p>We are committed to providing you with the best possible trading experience. If you have any questions or\n                need assistance, our support team is always here to help.</p>\n            <p>Thank you for choosing Universal Marketing. We look forward to a successful journey together!</p>\n            <p>Best regards,</p>\n            <p>The Universal Marketing Team</p>\n        </div>\n        <div class=\"footer\">\n            <p>© All copyright Reserved.</p>\n        </div>\n    </div>\n</body>\n\n</html>\n', 0, 'message', 'inbox', 'entypo-heart ', 'white', 55, '2026-01-02 00:23:43', '2026-01-02 00:23:43', 'Welcome'),
(52, '<style>\n\n\nbody {\n    padding: 0;\n    margin: 0;\n}\n\nhtml { -webkit-text-size-adjust:none; -ms-text-size-adjust: none;}\n@media  only screen and (max-device-width: 680px), only screen and (max-width: 680px) { \n    *[class=\"table_width_100\"] {\n		width: 96% !important;\n	}\n	*[class=\"border-right_mob\"] {\n		border-right: 1px solid #dddddd;\n	}\n	*[class=\"mob_100\"] {\n		width: 100% !important;\n	}\n	*[class=\"mob_center\"] {\n		text-align: center !important;\n	}\n	*[class=\"mob_center_bl\"] {\n		float: none !important;\n		display: block !important;\n		margin: 0px auto;\n	}	\n	.iage_footer a {\n		text-decoration: none;\n		color: #929ca8;\n	}\n	img.mob_display_none {\n		width: 0px !important;\n		height: 0px !important;\n		display: none !important;\n	}\n	img.mob_width_50 {\n		width: 40% !important;\n		height: auto !important;\n	}\n}\n.table_width_100 {\n	width: 680px;\n}\n</style>\n\n<!--\nResponsive Email Template by @keenthemes\nA component of Metronic Theme - #1 Selling Bootstrap 3 Admin Theme in Themeforest: http://j.mp/metronictheme\nLicensed under MIT\n-->\n\n<div id=\"mailsub\" class=\"notification\" align=\"center\">\n\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"min-width: 320px;\"><tr><td align=\"center\" bgcolor=\"#eff3f8\">\n\n\n<!--[if gte mso 10]>\n<table width=\"680\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr><td>\n<![endif]-->\n\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_width_100\" width=\"100%\" style=\"max-width: 680px; min-width: 300px;\">\n    <tr><td>\n	<!-- padding -->\n	</td></tr>\n	\n	<!--content 1 -->\n	<tr><td align=\"center\" bgcolor=\"#fbfcfd\">\n		<table width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n			<tr><td align=\"center\">\n				<!-- padding --><div style=\"height: 60px; line-height: 60px; font-size: 10px;\"></div>\n				<div style=\"line-height: 44px;\">\n					<font face=\"Arial, Helvetica, sans-serif\" size=\"5\" color=\"#57697e\" style=\"font-size: 34px;\">\n					<span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;\">\n						Welcome to. Universal Marketing\n					</span></font>\n				</div>\n				<!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div>\n			</td></tr>\n			<tr><td align=\"center\">\n				<div style=\"line-height: 24px;\">\n					<font face=\"Arial, Helvetica, sans-serif\" size=\"4\" color=\"#57697e\" style=\"font-size: 15px;\">\n					<span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">\n						Your Account is Successfully Created. Please Click Verify Now Button and Verify your account.\n					</span></font>\n				</div>\n				<!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div>\n			</td></tr>\n			<tr><td align=\"center\">\n				<div style=\"line-height: 24px;\">\n					<a style=\'background:red;padding: 5px 10px;text-decoration:none;border-radius:5px;color:#fff;font-weight:bold\' href=\"https://universalmarketingtrades.com/verifyDone/aamakhasi@gmail.com/1RoXg2bXFMcsivKs4Nswu0aQxfo48DJLdqCzwmC9\" target=\"_blank\" class=\"btn btn-danger block-center\">\n					    Verify Now\n					</a>\n				</div>\n				<!-- padding --><div style=\"height: 60px; line-height: 60px; font-size: 10px;\"></div>\n			</td></tr>\n		</table>		\n	</td></tr>\n	<!--content 1 END-->\n\n\n	<!--footer -->\n	<tr><td class=\"iage_footer\" align=\"center\" bgcolor=\"#ffffff\">\n\n		\n		<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n			<tr><td align=\"center\" style=\"padding:20px;flaot:left;width:100%; text-align:center;\">\n				<font face=\"Arial, Helvetica, sans-serif\" size=\"3\" color=\"#96a5b5\" style=\"font-size: 13px;\">\n				<span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;\">\n					© All copyright Reserved.\n				</span></font>				\n			</td></tr>			\n		</table>\n		\n\n	</td></tr>\n	<!--footer END-->\n	<tr><td>\n\n	</td></tr>\n</table>\n<!--[if gte mso 10]>\n</td></tr>\n</table>\n<![endif]-->\n \n</td></tr>\n</table>\n			\n\n\n\n\n', 1, 'message', 'inbox', 'fa fa-envelope-o', 'white', 55, '2026-01-02 00:23:44', '2026-01-02 12:28:17', 'Verify Email'),
(53, '<!DOCTYPE html>\n<html lang=\"en\">\n\n<head>\n    <meta charset=\"UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <title>Welcome to Universal Marketing</title>\n    <style>\n        body {\n            font-family: Arial, sans-serif;\n            background-color: #f4f4f4;\n            margin: 0;\n            padding: 0;\n        }\n\n        .email-container {\n            width: 100%;\n            max-width: 600px;\n            margin: 0 auto;\n            background-color: #ffffff;\n            padding: 20px;\n            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\n        }\n\n        .header {\n            text-align: center;\n            padding: 20px 0;\n        }\n\n        .header img {\n            max-width: 100px;\n        }\n\n        .content {\n            padding: 20px;\n            text-align: left;\n        }\n\n        .footer {\n            text-align: center;\n            padding: 10px 0;\n            color: #777;\n            font-size: 12px;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"email-container\">\n        <div class=\"header\">\n            <h1>Welcome to Universal Marketing</h1>\n        </div>\n        <div class=\"content\">\n            <p>Dear John Mark,</p>\n            <p>Welcome to Universal Marketing! We are excited to have you on board.</p>\n            <p>At Universal Marketing, we offer a comprehensive investment platform where you can trade all kinds of\n                cryptocurrency, benefit from direct and instant buy and sell options, and enjoy optimum trading\n                facilities and tools.</p>\n            <p>Our platform is equipped with a 24/7 customer service, a 100% Risk Management Information System (RIS),\n                an automated trading system, and a mining system designed to maximize your investment opportunities.</p>\n            <p>We are committed to providing you with the best possible trading experience. If you have any questions or\n                need assistance, our support team is always here to help.</p>\n            <p>Thank you for choosing Universal Marketing. We look forward to a successful journey together!</p>\n            <p>Best regards,</p>\n            <p>The Universal Marketing Team</p>\n        </div>\n        <div class=\"footer\">\n            <p>© All copyright Reserved.</p>\n        </div>\n    </div>\n</body>\n\n</html>\n', 0, 'message', 'inbox', 'entypo-info', 'white', 28, '2026-01-06 00:26:17', '2026-01-06 00:26:17', 'Welcome'),
(54, '<!DOCTYPE html>\n<html lang=\"en\">\n\n<head>\n    <meta charset=\"UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <title>Welcome to Universal Marketing</title>\n    <style>\n        body {\n            font-family: Arial, sans-serif;\n            background-color: #f4f4f4;\n            margin: 0;\n            padding: 0;\n        }\n\n        .email-container {\n            width: 100%;\n            max-width: 600px;\n            margin: 0 auto;\n            background-color: #ffffff;\n            padding: 20px;\n            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\n        }\n\n        .header {\n            text-align: center;\n            padding: 20px 0;\n        }\n\n        .header img {\n            max-width: 100px;\n        }\n\n        .content {\n            padding: 20px;\n            text-align: left;\n        }\n\n        .footer {\n            text-align: center;\n            padding: 10px 0;\n            color: #777;\n            font-size: 12px;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"email-container\">\n        <div class=\"header\">\n            <h1>Welcome to Universal Marketing</h1>\n        </div>\n        <div class=\"content\">\n            <p>Dear Hector eulises Sánchez portillo,</p>\n            <p>Welcome to Universal Marketing! We are excited to have you on board.</p>\n            <p>At Universal Marketing, we offer a comprehensive investment platform where you can trade all kinds of\n                cryptocurrency, benefit from direct and instant buy and sell options, and enjoy optimum trading\n                facilities and tools.</p>\n            <p>Our platform is equipped with a 24/7 customer service, a 100% Risk Management Information System (RIS),\n                an automated trading system, and a mining system designed to maximize your investment opportunities.</p>\n            <p>We are committed to providing you with the best possible trading experience. If you have any questions or\n                need assistance, our support team is always here to help.</p>\n            <p>Thank you for choosing Universal Marketing. We look forward to a successful journey together!</p>\n            <p>Best regards,</p>\n            <p>The Universal Marketing Team</p>\n        </div>\n        <div class=\"footer\">\n            <p>© All copyright Reserved.</p>\n        </div>\n    </div>\n</body>\n\n</html>\n', 0, 'message', 'inbox', 'entypo-heart ', 'white', 56, '2026-01-06 00:26:17', '2026-01-06 00:26:17', 'Welcome'),
(55, '<style>\n\n\nbody {\n    padding: 0;\n    margin: 0;\n}\n\nhtml { -webkit-text-size-adjust:none; -ms-text-size-adjust: none;}\n@media  only screen and (max-device-width: 680px), only screen and (max-width: 680px) { \n    *[class=\"table_width_100\"] {\n		width: 96% !important;\n	}\n	*[class=\"border-right_mob\"] {\n		border-right: 1px solid #dddddd;\n	}\n	*[class=\"mob_100\"] {\n		width: 100% !important;\n	}\n	*[class=\"mob_center\"] {\n		text-align: center !important;\n	}\n	*[class=\"mob_center_bl\"] {\n		float: none !important;\n		display: block !important;\n		margin: 0px auto;\n	}	\n	.iage_footer a {\n		text-decoration: none;\n		color: #929ca8;\n	}\n	img.mob_display_none {\n		width: 0px !important;\n		height: 0px !important;\n		display: none !important;\n	}\n	img.mob_width_50 {\n		width: 40% !important;\n		height: auto !important;\n	}\n}\n.table_width_100 {\n	width: 680px;\n}\n</style>\n\n<!--\nResponsive Email Template by @keenthemes\nA component of Metronic Theme - #1 Selling Bootstrap 3 Admin Theme in Themeforest: http://j.mp/metronictheme\nLicensed under MIT\n-->\n\n<div id=\"mailsub\" class=\"notification\" align=\"center\">\n\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"min-width: 320px;\"><tr><td align=\"center\" bgcolor=\"#eff3f8\">\n\n\n<!--[if gte mso 10]>\n<table width=\"680\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr><td>\n<![endif]-->\n\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_width_100\" width=\"100%\" style=\"max-width: 680px; min-width: 300px;\">\n    <tr><td>\n	<!-- padding -->\n	</td></tr>\n	\n	<!--content 1 -->\n	<tr><td align=\"center\" bgcolor=\"#fbfcfd\">\n		<table width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n			<tr><td align=\"center\">\n				<!-- padding --><div style=\"height: 60px; line-height: 60px; font-size: 10px;\"></div>\n				<div style=\"line-height: 44px;\">\n					<font face=\"Arial, Helvetica, sans-serif\" size=\"5\" color=\"#57697e\" style=\"font-size: 34px;\">\n					<span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;\">\n						Welcome to. Universal Marketing\n					</span></font>\n				</div>\n				<!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div>\n			</td></tr>\n			<tr><td align=\"center\">\n				<div style=\"line-height: 24px;\">\n					<font face=\"Arial, Helvetica, sans-serif\" size=\"4\" color=\"#57697e\" style=\"font-size: 15px;\">\n					<span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">\n						Your Account is Successfully Created. Please Click Verify Now Button and Verify your account.\n					</span></font>\n				</div>\n				<!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div>\n			</td></tr>\n			<tr><td align=\"center\">\n				<div style=\"line-height: 24px;\">\n					<a style=\'background:red;padding: 5px 10px;text-decoration:none;border-radius:5px;color:#fff;font-weight:bold\' href=\"https://universalmarketingtrades.com/verifyDone/hectorsanchez909ill.com@gmail.com/hDaa9R3VVDcXfS8SAu2SOdaTXzAtLFagHxz2SnmY\" target=\"_blank\" class=\"btn btn-danger block-center\">\n					    Verify Now\n					</a>\n				</div>\n				<!-- padding --><div style=\"height: 60px; line-height: 60px; font-size: 10px;\"></div>\n			</td></tr>\n		</table>		\n	</td></tr>\n	<!--content 1 END-->\n\n\n	<!--footer -->\n	<tr><td class=\"iage_footer\" align=\"center\" bgcolor=\"#ffffff\">\n\n		\n		<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n			<tr><td align=\"center\" style=\"padding:20px;flaot:left;width:100%; text-align:center;\">\n				<font face=\"Arial, Helvetica, sans-serif\" size=\"3\" color=\"#96a5b5\" style=\"font-size: 13px;\">\n				<span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;\">\n					© All copyright Reserved.\n				</span></font>				\n			</td></tr>			\n		</table>\n		\n\n	</td></tr>\n	<!--footer END-->\n	<tr><td>\n\n	</td></tr>\n</table>\n<!--[if gte mso 10]>\n</td></tr>\n</table>\n<![endif]-->\n \n</td></tr>\n</table>\n			\n\n\n\n\n', 0, 'message', 'inbox', 'fa fa-envelope-o', 'white', 56, '2026-01-06 00:26:18', '2026-01-06 00:26:18', 'Verify Email'),
(56, '<!DOCTYPE html>\n<html lang=\"en\">\n\n<head>\n    <meta charset=\"UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <title>Welcome to Universal Marketing</title>\n    <style>\n        body {\n            font-family: Arial, sans-serif;\n            background-color: #f4f4f4;\n            margin: 0;\n            padding: 0;\n        }\n\n        .email-container {\n            width: 100%;\n            max-width: 600px;\n            margin: 0 auto;\n            background-color: #ffffff;\n            padding: 20px;\n            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\n        }\n\n        .header {\n            text-align: center;\n            padding: 20px 0;\n        }\n\n        .header img {\n            max-width: 100px;\n        }\n\n        .content {\n            padding: 20px;\n            text-align: left;\n        }\n\n        .footer {\n            text-align: center;\n            padding: 10px 0;\n            color: #777;\n            font-size: 12px;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"email-container\">\n        <div class=\"header\">\n            <h1>Welcome to Universal Marketing</h1>\n        </div>\n        <div class=\"content\">\n            <p>Dear John Mark,</p>\n            <p>Welcome to Universal Marketing! We are excited to have you on board.</p>\n            <p>At Universal Marketing, we offer a comprehensive investment platform where you can trade all kinds of\n                cryptocurrency, benefit from direct and instant buy and sell options, and enjoy optimum trading\n                facilities and tools.</p>\n            <p>Our platform is equipped with a 24/7 customer service, a 100% Risk Management Information System (RIS),\n                an automated trading system, and a mining system designed to maximize your investment opportunities.</p>\n            <p>We are committed to providing you with the best possible trading experience. If you have any questions or\n                need assistance, our support team is always here to help.</p>\n            <p>Thank you for choosing Universal Marketing. We look forward to a successful journey together!</p>\n            <p>Best regards,</p>\n            <p>The Universal Marketing Team</p>\n        </div>\n        <div class=\"footer\">\n            <p>© All copyright Reserved.</p>\n        </div>\n    </div>\n</body>\n\n</html>\n', 0, 'message', 'inbox', 'entypo-info', 'white', 28, '2026-02-26 21:01:29', '2026-02-26 21:01:29', 'Welcome'),
(57, '<!DOCTYPE html>\n<html lang=\"en\">\n\n<head>\n    <meta charset=\"UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <title>Welcome to Universal Marketing</title>\n    <style>\n        body {\n            font-family: Arial, sans-serif;\n            background-color: #f4f4f4;\n            margin: 0;\n            padding: 0;\n        }\n\n        .email-container {\n            width: 100%;\n            max-width: 600px;\n            margin: 0 auto;\n            background-color: #ffffff;\n            padding: 20px;\n            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\n        }\n\n        .header {\n            text-align: center;\n            padding: 20px 0;\n        }\n\n        .header img {\n            max-width: 100px;\n        }\n\n        .content {\n            padding: 20px;\n            text-align: left;\n        }\n\n        .footer {\n            text-align: center;\n            padding: 10px 0;\n            color: #777;\n            font-size: 12px;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"email-container\">\n        <div class=\"header\">\n            <h1>Welcome to Universal Marketing</h1>\n        </div>\n        <div class=\"content\">\n            <p>Dear Siboniso,</p>\n            <p>Welcome to Universal Marketing! We are excited to have you on board.</p>\n            <p>At Universal Marketing, we offer a comprehensive investment platform where you can trade all kinds of\n                cryptocurrency, benefit from direct and instant buy and sell options, and enjoy optimum trading\n                facilities and tools.</p>\n            <p>Our platform is equipped with a 24/7 customer service, a 100% Risk Management Information System (RIS),\n                an automated trading system, and a mining system designed to maximize your investment opportunities.</p>\n            <p>We are committed to providing you with the best possible trading experience. If you have any questions or\n                need assistance, our support team is always here to help.</p>\n            <p>Thank you for choosing Universal Marketing. We look forward to a successful journey together!</p>\n            <p>Best regards,</p>\n            <p>The Universal Marketing Team</p>\n        </div>\n        <div class=\"footer\">\n            <p>© All copyright Reserved.</p>\n        </div>\n    </div>\n</body>\n\n</html>\n', 0, 'message', 'inbox', 'entypo-heart ', 'white', 57, '2026-02-26 21:01:29', '2026-02-26 21:01:29', 'Welcome'),
(58, '<style>\n\n\nbody {\n    padding: 0;\n    margin: 0;\n}\n\nhtml { -webkit-text-size-adjust:none; -ms-text-size-adjust: none;}\n@media  only screen and (max-device-width: 680px), only screen and (max-width: 680px) { \n    *[class=\"table_width_100\"] {\n		width: 96% !important;\n	}\n	*[class=\"border-right_mob\"] {\n		border-right: 1px solid #dddddd;\n	}\n	*[class=\"mob_100\"] {\n		width: 100% !important;\n	}\n	*[class=\"mob_center\"] {\n		text-align: center !important;\n	}\n	*[class=\"mob_center_bl\"] {\n		float: none !important;\n		display: block !important;\n		margin: 0px auto;\n	}	\n	.iage_footer a {\n		text-decoration: none;\n		color: #929ca8;\n	}\n	img.mob_display_none {\n		width: 0px !important;\n		height: 0px !important;\n		display: none !important;\n	}\n	img.mob_width_50 {\n		width: 40% !important;\n		height: auto !important;\n	}\n}\n.table_width_100 {\n	width: 680px;\n}\n</style>\n\n<!--\nResponsive Email Template by @keenthemes\nA component of Metronic Theme - #1 Selling Bootstrap 3 Admin Theme in Themeforest: http://j.mp/metronictheme\nLicensed under MIT\n-->\n\n<div id=\"mailsub\" class=\"notification\" align=\"center\">\n\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"min-width: 320px;\"><tr><td align=\"center\" bgcolor=\"#eff3f8\">\n\n\n<!--[if gte mso 10]>\n<table width=\"680\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr><td>\n<![endif]-->\n\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_width_100\" width=\"100%\" style=\"max-width: 680px; min-width: 300px;\">\n    <tr><td>\n	<!-- padding -->\n	</td></tr>\n	\n	<!--content 1 -->\n	<tr><td align=\"center\" bgcolor=\"#fbfcfd\">\n		<table width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n			<tr><td align=\"center\">\n				<!-- padding --><div style=\"height: 60px; line-height: 60px; font-size: 10px;\"></div>\n				<div style=\"line-height: 44px;\">\n					<font face=\"Arial, Helvetica, sans-serif\" size=\"5\" color=\"#57697e\" style=\"font-size: 34px;\">\n					<span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;\">\n						Welcome to. Universal Marketing\n					</span></font>\n				</div>\n				<!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div>\n			</td></tr>\n			<tr><td align=\"center\">\n				<div style=\"line-height: 24px;\">\n					<font face=\"Arial, Helvetica, sans-serif\" size=\"4\" color=\"#57697e\" style=\"font-size: 15px;\">\n					<span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;\">\n						Your Account is Successfully Created. Please Click Verify Now Button and Verify your account.\n					</span></font>\n				</div>\n				<!-- padding --><div style=\"height: 40px; line-height: 40px; font-size: 10px;\"></div>\n			</td></tr>\n			<tr><td align=\"center\">\n				<div style=\"line-height: 24px;\">\n					<a style=\'background:red;padding: 5px 10px;text-decoration:none;border-radius:5px;color:#fff;font-weight:bold\' href=\"https://universalmarketingtrades.com/verifyDone/sibonisokhumalo161@gmail.com/NKqEN9Cq2ZwdgyjPYOJEUVdDvcoNBqkBt95s1xOZ\" target=\"_blank\" class=\"btn btn-danger block-center\">\n					    Verify Now\n					</a>\n				</div>\n				<!-- padding --><div style=\"height: 60px; line-height: 60px; font-size: 10px;\"></div>\n			</td></tr>\n		</table>		\n	</td></tr>\n	<!--content 1 END-->\n\n\n	<!--footer -->\n	<tr><td class=\"iage_footer\" align=\"center\" bgcolor=\"#ffffff\">\n\n		\n		<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n			<tr><td align=\"center\" style=\"padding:20px;flaot:left;width:100%; text-align:center;\">\n				<font face=\"Arial, Helvetica, sans-serif\" size=\"3\" color=\"#96a5b5\" style=\"font-size: 13px;\">\n				<span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;\">\n					© All copyright Reserved.\n				</span></font>				\n			</td></tr>			\n		</table>\n		\n\n	</td></tr>\n	<!--footer END-->\n	<tr><td>\n\n	</td></tr>\n</table>\n<!--[if gte mso 10]>\n</td></tr>\n</table>\n<![endif]-->\n \n</td></tr>\n</table>\n			\n\n\n\n\n', 0, 'message', 'inbox', 'fa fa-envelope-o', 'white', 57, '2026-02-26 21:01:29', '2026-02-26 21:01:29', 'Verify Email');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `about` text NOT NULL,
  `document` text NOT NULL,
  `bankbook` text NOT NULL,
  `terms` text NOT NULL,
  `privacy` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Habiba Himu', '1502226051.png', '2017-06-22 10:35:08', '2017-08-08 21:00:51'),
(2, 'DMCa', '1502226061.png', '2017-06-22 10:40:28', '2017-08-08 21:01:01'),
(3, 'Empty Poweer', '1502226075.png', '2017-06-22 10:40:38', '2017-08-08 21:01:15'),
(4, 'BDT', '1502226086.png', '2017-06-22 10:40:48', '2017-08-08 21:01:26'),
(5, 'Admin Rahman', '1502226094.png', '2017-06-22 10:40:59', '2017-08-08 21:01:34'),
(7, 'Hasan Rahman', '1502226144.png', '2017-06-22 10:46:53', '2017-08-08 21:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('hellomrhasan@gmail.com', '$2y$10$0B71gzhd6hcjoW9cKu3Cl..iuFtUT1o4xlsTVjM3dc/K5pwN6DMGW', '2017-06-22 03:29:08'),
('abirkhan75@gmail.com', '$2y$10$gzSIPUl7owx...LGwmU5i.sA8QJpoBKPpYc3TbO5SEBMeuDFN7Vg2', '2017-07-03 05:46:04'),
('admin@thesoftking.com', '$2y$10$YpD7jLN1ZgDFAkzgVg7N/u.RpniMMKGVF14s2flZG7WRMwmFqksQu', '2017-07-26 04:22:28'),
('hasan02@gmail.com', '$2y$10$DMiLA/9WavO982FvzyCpeOcrqXjJD.gAcJWSuDeCQf5I1mjm3AVm6', '2017-08-08 20:24:08'),
('hellomrhasan@gmail.com', '$2y$10$0B71gzhd6hcjoW9cKu3Cl..iuFtUT1o4xlsTVjM3dc/K5pwN6DMGW', '2017-06-22 03:29:08'),
('abirkhan75@gmail.com', '$2y$10$gzSIPUl7owx...LGwmU5i.sA8QJpoBKPpYc3TbO5SEBMeuDFN7Vg2', '2017-07-03 05:46:04'),
('admin@thesoftking.com', '$2y$10$YpD7jLN1ZgDFAkzgVg7N/u.RpniMMKGVF14s2flZG7WRMwmFqksQu', '2017-07-26 04:22:28'),
('hasan02@gmail.com', '$2y$10$DMiLA/9WavO982FvzyCpeOcrqXjJD.gAcJWSuDeCQf5I1mjm3AVm6', '2017-08-08 20:24:08'),
('cbauerzarco@gamil.com', '$2y$10$9Myj5HaOG3wI6PVPedz.gOiXt0F7pesdmRbulcX4pEqmM5MD8sdUK', '2025-07-23 06:34:03'),
('itorotitusp@gmail.com', '$2y$10$wBtAEM6.JiLyDdr.JDTl1eeEa.N/tFdC7qn.YYit8Z8cdGKHV7ZYK', '2025-07-23 06:46:15'),
('thabisomokhele49@gmail.com', '$2y$10$1rSCGHqTXR9GVKRBtY0LQ.F4WtBL8sFrVoVU4asBCO2Pv/ZESueaq', '2025-07-29 22:36:37'),
('hectorsanchez909ill.com@gmail.com', '$2y$10$NScY2dIYnflkvN4CVNWQCO/HXqDsrzAQrY8F7d8P7PC2HqwBLQtn2', '2026-01-14 01:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `paypal_name` varchar(191) NOT NULL,
  `paypal_image` varchar(191) NOT NULL,
  `paypal_rate` varchar(15) NOT NULL,
  `paypal_min` varchar(15) NOT NULL,
  `paypal_max` varchar(15) NOT NULL,
  `paypal_fix` varchar(15) NOT NULL,
  `paypal_percent` varchar(15) NOT NULL,
  `paypal_email` varchar(191) NOT NULL,
  `paypal_status` tinyint(4) NOT NULL,
  `perfect_name` varchar(191) NOT NULL,
  `perfect_image` varchar(191) NOT NULL,
  `perfect_rate` varchar(15) NOT NULL,
  `perfect_min` varchar(15) NOT NULL,
  `perfect_max` varchar(15) NOT NULL,
  `perfect_fix` varchar(15) NOT NULL,
  `perfect_percent` varchar(15) NOT NULL,
  `perfect_account` varchar(191) NOT NULL,
  `perfect_alternate` varchar(191) NOT NULL,
  `perfect_status` tinyint(4) NOT NULL,
  `btc_name` varchar(191) NOT NULL,
  `btc_image` varchar(191) NOT NULL,
  `btc_rate` varchar(15) NOT NULL,
  `btc_min` varchar(15) NOT NULL,
  `btc_max` varchar(15) NOT NULL,
  `btc_fix` varchar(15) NOT NULL,
  `btc_percent` varchar(15) NOT NULL,
  `btc_api` varchar(191) NOT NULL,
  `btc_xpub` varchar(191) NOT NULL,
  `btc_status` tinyint(4) NOT NULL,
  `stripe_name` varchar(191) NOT NULL,
  `stripe_image` varchar(191) NOT NULL,
  `stripe_rate` varchar(15) NOT NULL,
  `stripe_min` varchar(15) NOT NULL,
  `stripe_max` varchar(15) NOT NULL,
  `stripe_fix` varchar(15) NOT NULL,
  `stripe_percent` varchar(15) NOT NULL,
  `stripe_secret` varchar(191) NOT NULL,
  `stripe_publisher` varchar(191) NOT NULL,
  `stripe_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `paypal_name`, `paypal_image`, `paypal_rate`, `paypal_min`, `paypal_max`, `paypal_fix`, `paypal_percent`, `paypal_email`, `paypal_status`, `perfect_name`, `perfect_image`, `perfect_rate`, `perfect_min`, `perfect_max`, `perfect_fix`, `perfect_percent`, `perfect_account`, `perfect_alternate`, `perfect_status`, `btc_name`, `btc_image`, `btc_rate`, `btc_min`, `btc_max`, `btc_fix`, `btc_percent`, `btc_api`, `btc_xpub`, `btc_status`, `stripe_name`, `stripe_image`, `stripe_rate`, `stripe_min`, `stripe_max`, `stripe_fix`, `stripe_percent`, `stripe_secret`, `stripe_publisher`, `stripe_status`, `created_at`, `updated_at`) VALUES
(1, 'PayPal', '1497051637h3.png', '74', '50', '50000', '3', '2.36', 'thesoftking@gmail.com', 1, 'Perfect Money', '1497051638h2.png', '85', '250', '360000', '3', '1.75', 'U5220203', 'reg4e54h1grt1j', 1, 'BITCOIN', '1497051638h1.png', '78', '50', '78000', '3', '2.75', '29da9229-8084-4313-ba46-bbb056b69fd7', 'xpub6BtpKpaLGimLEkJ13nPKXzAbDidxowb4nmLWDLoA2vWJaxNb55Ba4oHnpizaMfXkTJyh9V2HdnENrAUCKB4DNGiZchBUJumjhphyKUMqws3', 1, 'CARD', '1497051638h4.png', '500', '250', '36000', '3', '3.6', 'sk_test_YjWBdtTXv4xTh1Ri1CglDqMH', 'pk_test_F9V6UfKuCq0ij4jEE64uqjWF', 1, NULL, '2017-08-26 19:40:53');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `fund_id` int(11) NOT NULL,
  `image` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `user_id`, `fund_id`, `image`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, '1502260616598aad885b4f6.jpg', '2017-08-09 06:36:56', '2017-08-09 06:36:56'),
(2, NULL, 2, '1502260616598aad888e254.jpg', '2017-08-09 06:36:56', '2017-08-09 06:36:56'),
(3, NULL, 1, '1718646901667078759a755.jpeg', '2024-06-17 22:55:01', '2024-06-17 22:55:01'),
(4, NULL, 2, '17187236826671a462c25df.jpeg', '2024-06-18 20:14:42', '2024-06-18 20:14:42'),
(5, NULL, 3, '17187245096671a79d649d9.jpeg', '2024-06-18 20:28:29', '2024-06-18 20:28:29'),
(6, NULL, 4, '171967388866802420cc11c.jpeg', '2024-06-29 20:11:28', '2024-06-29 20:11:28'),
(7, NULL, 5, '172088115066928ffe56430.png', '2024-07-13 19:32:30', '2024-07-13 19:32:30'),
(8, NULL, 6, '17208811986692902e53a97.png', '2024-07-13 19:33:18', '2024-07-13 19:33:18'),
(9, NULL, 7, '17208872276692a7bb2c28f.png', '2024-07-13 21:13:47', '2024-07-13 21:13:47'),
(10, NULL, 8, '17208872796692a7ef423b9.png', '2024-07-13 21:14:39', '2024-07-13 21:14:39'),
(11, NULL, 9, '17482756136834919dc861a.jpeg', '2025-05-26 20:06:53', '2025-05-26 20:06:53'),
(12, NULL, 10, '17483621876835e3cb1a8b2.jpeg', '2025-05-27 20:09:47', '2025-05-27 20:09:47'),
(13, NULL, 11, '1748875961683dbab9dd5eb.jpg', '2025-06-02 18:52:42', '2025-06-02 18:52:42'),
(14, NULL, 12, '1748876369683dbc51a3df7.jpg', '2025-06-02 18:59:29', '2025-06-02 18:59:29'),
(15, NULL, 13, '17491527746841f406db006.jpg', '2025-06-05 23:46:15', '2025-06-05 23:46:15'),
(16, NULL, 14, '174955283268480ec088ab8.jpg', '2025-06-10 14:53:52', '2025-06-10 14:53:52'),
(17, NULL, 15, '175050601268569a1cb1827.jpg', '2025-06-21 15:40:12', '2025-06-21 15:40:12');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `image` varchar(100) NOT NULL,
  `minimum` varchar(191) NOT NULL,
  `maximum` varchar(191) NOT NULL,
  `percent` varchar(191) NOT NULL,
  `time` int(11) NOT NULL,
  `compound_id` int(5) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `image`, `minimum`, `maximum`, `percent`, `time`, `compound_id`, `status`, `created_at`, `updated_at`, `amount`) VALUES
(1, 'STARTER ACCOUNT', '1497870966.png', '200', '999', '150', 7, 3, 1, '2017-06-13 22:25:33', '2025-07-03 00:42:00', 500.00),
(2, 'SILVER ACCOUNT', '1497871022.png', '1000', '4999', '200', 14, 3, 1, '2017-06-13 22:37:42', '2025-05-26 18:59:00', 0.00),
(3, 'GOLD ACCOUNT', '1497871033.png', '5000', '9999', '250', 30, 4, 1, '2017-06-13 22:41:00', '2025-05-26 19:15:12', 0.00),
(4, 'PLATINUM ACCOUNT', '1498497137.png', '10000', '50000', '300', 60, 4, 1, '2017-06-13 22:41:54', '2025-05-26 19:08:51', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `profits`
--

CREATE TABLE `profits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `from` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promos`
--

CREATE TABLE `promos` (
  `id` int(10) UNSIGNED NOT NULL,
  `icon` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `s_text` varchar(191) NOT NULL,
  `number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promos`
--

INSERT INTO `promos` (`id`, `icon`, `title`, `s_text`, `number`, `created_at`, `updated_at`) VALUES
(1, '<i class=\"fa fa-paper-plane\" aria-hidden=\"true\"></i>', 'Advisors', 'Smart and Hard Workers', 6000, '2017-06-21 23:38:40', '2017-06-21 23:43:58'),
(2, '<i class=\"fa fa-refresh\" aria-hidden=\"true\"></i>', 'Loan Processed', '100 % Customer Satisfaction', 2000, '2017-06-21 23:42:35', '2017-06-22 07:28:05'),
(3, '<i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>', 'Locations', 'Find Us All Over The World', 70, '2017-06-21 23:45:10', '2017-08-08 21:05:31');

-- --------------------------------------------------------

--
-- Table structure for table `rebeat_logs`
--

CREATE TABLE `rebeat_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `balance` varchar(191) NOT NULL,
  `deposit_id` int(11) NOT NULL,
  `made_time` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `references`
--

CREATE TABLE `references` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `old_balance` varchar(191) NOT NULL,
  `new_balance` varchar(191) NOT NULL,
  `details` text NOT NULL,
  `reference_id` varchar(191) NOT NULL,
  `under_reference` varchar(191) NOT NULL,
  `balance` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `references`
--

INSERT INTO `references` (`id`, `user_id`, `old_balance`, `new_balance`, `details`, `reference_id`, `under_reference`, `balance`, `created_at`, `updated_at`) VALUES
(1, 21, '10.00', '10', 'Dubai Emit sammy was referred by Odemilin Eromosele', 'WbO4lCNDxuTQ', 'yCmyIzmshbtR', '1000', '2025-05-02 03:39:54', '2025-05-02 03:39:54'),
(2, 21, '10.00', '10', 'Dubai Emit sammy was referred by Odemilin Eromosele', 'j6iFTITi8A5w', 'yCmyIzmshbtR', '1000', '2025-05-02 03:43:13', '2025-05-02 03:43:13'),
(3, 21, '10.00', '10', 'Dubai Emit sammy was referred by Odemilin Eromosele', 's3svjIJPdb7H', 'yCmyIzmshbtR', '1000', '2025-05-02 03:43:58', '2025-05-02 03:43:58'),
(4, 28, '10.00', '10', 'Titus itoro peter was referred by John Mark', 'e2xj9MIoJUQM', 'GsK0JEiIHFTD', '0', '2025-05-04 13:36:34', '2025-05-04 13:36:34'),
(5, 28, '10.00', '10', 'Oduetse Phologolo was referred by John Mark', '2KqNpvVfNWpr', 'GsK0JEiIHFTD', '0', '2025-05-04 13:49:26', '2025-05-04 13:49:26'),
(6, 30, '10.00', '10', 'Colin was referred by Titus itoro peter', 'sdE2CBG5kCnj', 'j6iFTITi8A5w', '100.00', '2025-05-04 21:01:27', '2025-05-04 21:01:27'),
(7, 30, '10.00', '10', 'Kagiso Mpala was referred by Titus itoro peter', 'bOJK2ktTcPdc', 'j6iFTITi8A5w', '1000.00', '2025-05-07 22:50:41', '2025-05-07 22:50:41'),
(8, 30, '10.00', '20', 'Green Matiza was referred by Thiona Jaime', 'YIxJdzTwEL2y', 'j6iFTITi8A5w', '2500', '2025-07-18 21:00:18', '2025-07-18 21:00:18'),
(9, 30, '10.00', '20', 'Green Matiza was referred by Thiona Jaime', 'i22nEFz6dn05', 'j6iFTITi8A5w', '2500', '2025-07-18 21:02:56', '2025-07-18 21:02:56'),
(10, 30, '10.00', '20', 'Green Matiza was referred by Thiona Jaime', 'iA5eObcWNVix', 'j6iFTITi8A5w', '2500', '2025-07-18 21:24:40', '2025-07-18 21:24:40'),
(11, 28, '10.00', '20', 'Cynthya Bauer Zarco was referred by John Mark', 'Py30D0sWfFYi', 'GsK0JEiIHFTD', '0', '2025-07-23 06:26:29', '2025-07-23 06:26:29'),
(12, 29, '10.00', '20', 'Cynthya Bauer Zarco was referred by Dubai Emit sammy', 'vZLI0xyZlmjN', 'GsK0JEiIHFTD', '0', '2025-07-23 07:03:55', '2025-07-23 07:03:55'),
(13, 31, '10.00', '20', 'Thabiso. Mokhele was referred by Oduetse Phologolo', 'UTbxG1UsFmmO', 'j6iFTITi8A5w', '3107.00', '2025-07-27 15:25:07', '2025-07-27 15:25:07'),
(14, 31, '10.00', '20', 'Jim Vieira was referred by Oduetse Phologolo', 'VhRXPKwQmHvP', 'j6iFTITi8A5w', '3107.00', '2025-07-30 21:57:37', '2025-07-30 21:57:37'),
(15, 31, '10.00', '20', 'Sharon Miland-Holcomb was referred by Oduetse Phologolo', 'Zf2MN9glCVtV', 'j6iFTITi8A5w', '297', '2025-08-01 06:50:20', '2025-08-01 06:50:20'),
(16, 31, '10.00', '20', 'Sharon Miland-Holcomb was referred by Oduetse Phologolo', 'QfgoOI2B9p7S', 'j6iFTITi8A5w', '297', '2025-08-01 07:12:36', '2025-08-01 07:12:36'),
(17, 28, '10.00', '20', 'Sinethemba Thiona Okopeng was referred by John Mark', 'fYKymOmiEE9j', 'GsK0JEiIHFTD', '0', '2025-08-18 19:32:15', '2025-08-18 19:32:15'),
(18, 28, '10.00', '20', 'Tiny Itumeleng was referred by John Mark', 'kYJy7ZEBVH0n', 'GsK0JEiIHFTD', '0', '2025-08-20 16:59:06', '2025-08-20 16:59:06'),
(19, 28, '0', '2500', 'Referral Invest Bonus : 2500-USD;  Referral ID : # 2KqNpvVfNWpr', 'j6iFTITi8A5w', '2KqNpvVfNWpr', '2500', '2025-09-11 04:46:21', '2025-09-11 04:46:21'),
(20, 28, '2500', '5000', 'Referral Invest Bonus : 2500-USD;  Referral ID : # 2KqNpvVfNWpr', 'j6iFTITi8A5w', '2KqNpvVfNWpr', '2500', '2025-09-11 04:47:08', '2025-09-11 04:47:08'),
(21, 28, '10.00', '20', 'Abraham Hugo Mendoza Guzman was referred by John Mark', 'D6WKq48bBTDy', 'GsK0JEiIHFTD', '5000', '2025-09-17 01:24:41', '2025-09-17 01:24:41'),
(22, 28, '10.00', '20', 'Lackson weza was referred by John Mark', 'QyjzU60ZnbtB', 'GsK0JEiIHFTD', '5000', '2025-09-23 13:25:45', '2025-09-23 13:25:45'),
(23, 28, '10.00', '20', 'Lackson weza was referred by John Mark', 'DewoDHjYcvs7', 'GsK0JEiIHFTD', '5000', '2025-09-23 13:33:12', '2025-09-23 13:33:12'),
(24, 28, '10.00', '20', 'Erika Fabiola Calvillo Bravo was referred by John Mark', 'IxlKZcLKwfwl', 'GsK0JEiIHFTD', '5000', '2025-09-25 03:06:50', '2025-09-25 03:06:50'),
(25, 28, '10.00', '20', 'Cyril John was referred by John Mark', 'e1kreigygDHe', 'GsK0JEiIHFTD', '5000', '2025-09-28 06:19:32', '2025-09-28 06:19:32'),
(26, 28, '10.00', '20', 'Ngenzeni Agnes Mdunge was referred by John Mark', 'CTDedlK0Erfp', 'GsK0JEiIHFTD', '5000', '2025-10-04 17:38:34', '2025-10-04 17:38:34'),
(27, 28, '10.00', '20', 'Brenda Kanema was referred by John Mark', 'vJDj50RV84Xx', 'GsK0JEiIHFTD', '5000', '2025-10-09 14:54:55', '2025-10-09 14:54:55'),
(28, 28, '10.00', '20', 'Steven Shirinda was referred by John Mark', 'C4tfbCYTqrz2', 'GsK0JEiIHFTD', '5000', '2025-10-23 00:02:05', '2025-10-23 00:02:05'),
(29, 28, '10.00', '20', 'Eric Nyawo was referred by John Mark', 'K9R21pccbU1t', 'GsK0JEiIHFTD', '5000', '2025-10-24 20:32:13', '2025-10-24 20:32:13'),
(30, 28, '10.00', '20', 'Nonhlanhla Suluma was referred by John Mark', 'hbmz1ljJXl6o', 'GsK0JEiIHFTD', '5000', '2025-11-24 04:57:31', '2025-11-24 04:57:31'),
(31, 28, '10.00', '20', 'Akhona Makhasi was referred by John Mark', 'XnjMSRnDuarY', 'GsK0JEiIHFTD', '5000', '2026-01-02 00:23:43', '2026-01-02 00:23:43'),
(32, 28, '10.00', '20', 'Hector eulises Sánchez portillo was referred by John Mark', 'yqdFoJoL5a3G', 'GsK0JEiIHFTD', '5000', '2026-01-06 00:26:16', '2026-01-06 00:26:16'),
(33, 28, '10.00', '20', 'Siboniso was referred by John Mark', 'hPCF53X2xi5v', 'GsK0JEiIHFTD', '5000', '2026-02-26 21:01:29', '2026-02-26 21:01:29');

-- --------------------------------------------------------

--
-- Table structure for table `repeats`
--

CREATE TABLE `repeats` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `deposit_id` int(11) NOT NULL,
  `repeat_time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Best HYIP Platform', 'Free registration. To open an account Invest and get Profit.', '1502260757h3.jpg', '2017-06-21 22:42:40', '2017-08-09 06:39:18'),
(2, 'What is HYIP', 'Invest HYIP To open an account Invest and get Profit.', '1498085005h3.jpg', '2017-06-21 22:43:25', '2017-06-21 22:43:25');

-- --------------------------------------------------------

--
-- Table structure for table `statements`
--

CREATE TABLE `statements` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `month` varchar(191) NOT NULL,
  `year` varchar(191) NOT NULL,
  `Opening_Balance` decimal(15,2) NOT NULL,
  `Added_Fund` decimal(15,2) NOT NULL,
  `Growth_Added_Fund` decimal(15,2) NOT NULL,
  `Closing_Added_Fund` decimal(15,2) NOT NULL,
  `Percentage_Growth` decimal(5,2) NOT NULL,
  `Closing_Balance` decimal(15,2) NOT NULL,
  `Commission` decimal(5,2) NOT NULL,
  `Gross` decimal(15,2) NOT NULL,
  `Withdrawal` decimal(15,2) NOT NULL,
  `Payout` decimal(15,2) NOT NULL,
  `Net_Balance` decimal(15,2) NOT NULL,
  `Growth_Amount` decimal(15,2) NOT NULL,
  `Commission_Amount` decimal(15,2) NOT NULL,
  `Next_Month_Opening_Balance` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statements`
--

INSERT INTO `statements` (`id`, `user_id`, `month`, `year`, `Opening_Balance`, `Added_Fund`, `Growth_Added_Fund`, `Closing_Added_Fund`, `Percentage_Growth`, `Closing_Balance`, `Commission`, `Gross`, `Withdrawal`, `Payout`, `Net_Balance`, `Growth_Amount`, `Commission_Amount`, `Next_Month_Opening_Balance`, `created_at`, `updated_at`) VALUES
(3, 30, '06', '2025', 30.00, 656.00, 0.00, 0.00, 100.00, 62.64, 0.20, 69.60, 0.00, 62.64, 34.80, 34.80, 6.96, 62.64, NULL, NULL),
(4, 32, '06', '2025', 1100.00, 12200.00, 0.00, 0.00, 1.00, 0.00, 0.20, 0.00, 25000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL),
(5, 30, '07', '2025', 34.80, 0.00, 0.00, 0.00, 100.00, 62.64, 0.20, 69.60, 0.00, 62.64, 34.80, 34.80, 6.96, 62.64, NULL, NULL),
(6, 31, '06', '2025', 100.00, 1100.00, 0.00, 0.00, 100.00, 180.00, 0.20, 200.00, 2200.00, -920.00, 100.00, 100.00, 20.00, 180.00, NULL, NULL),
(7, 32, '07', '2025', 1100.00, 12200.00, 0.00, 0.00, 1.00, 0.00, 0.20, 0.00, 25000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL),
(8, 31, '07', '2025', 100.00, 1100.00, 0.00, 0.00, 100.00, 180.00, 0.20, 200.00, 2200.00, -920.00, 100.00, 100.00, 20.00, 180.00, NULL, NULL),
(9, 30, '08', '2025', 62.64, 0.00, 0.00, 0.00, 1.00, 0.00, 0.20, 0.00, 0.00, 62.64, 0.00, 0.00, 0.00, 0.00, NULL, NULL),
(10, 31, '09', '2025', 100.00, 1100.00, 0.00, 0.00, 100.00, 180.00, 0.20, 200.00, 0.00, -920.00, 100.00, 100.00, 20.00, 180.00, NULL, NULL),
(11, 32, '09', '2025', 1100.00, 12200.00, 0.00, 0.00, 1.00, 0.00, 0.20, 0.00, 25000.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL),
(12, 30, '09', '2025', 61.00, 61.00, 0.00, 0.00, 1.00, 0.00, 0.20, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL),
(13, 31, '10', '2025', 100.00, 1100.00, 0.00, 0.00, 100.00, 180.00, 0.20, 200.00, 0.00, -920.00, 100.00, 100.00, 20.00, 180.00, NULL, NULL),
(14, 31, '11', '2025', 180.00, 0.00, 0.00, 0.00, 1.00, 0.00, 0.20, 0.00, 0.00, -920.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `stock_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT 0.00,
  `status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `user_id`, `stock_id`, `created_at`, `updated_at`, `amount`, `status`) VALUES
(6, 30, 2, '2025-06-14 13:02:34', '2025-06-14 13:02:34', 0.00, 0),
(7, 30, 1, '2025-06-14 13:12:06', '2025-06-14 13:12:06', 0.00, 0),
(8, 40, 1, '2025-07-31 23:25:25', '2025-07-31 23:25:25', 0.00, 0),
(9, 40, 2, '2025-07-31 23:25:37', '2025-07-31 23:25:37', 0.00, 0),
(10, 50, 1, '2025-10-04 17:49:15', '2025-10-04 17:49:15', 0.00, 0),
(11, 50, 2, '2025-10-04 17:49:25', '2025-10-04 17:49:25', 0.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `strategies`
--

CREATE TABLE `strategies` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `percent` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `title`, `content`, `status`, `percent`, `created_at`, `updated_at`) VALUES
(14, 52, 'none', 'j6iFTITi8A5w', 1, 0, '2025-10-23 00:04:05', '2025-10-23 00:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `position` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `position`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Hasan Rahman', 'Jr. V8 Analyst, at Thesoftking Trading Solution.', 'Investing with Thesoftking Trading Solution  has been a game-changer for me. Their expert advice and comprehensive market analysis have significantly boosted my portfolio. The 100% ROI is truly impressive!', '2017-06-22 07:46:57', '2017-06-22 07:58:54'),
(2, 'Abir Khan', 'Lead Trader At Thesoftking Trading Solution', 'I was skeptical at first, but Thesoftking Trading Solution exceeded my expectations. Their seamless loan solutions helped me seize critical investment opportunities. I couldn’t be happier with the results!', '2017-06-22 07:50:18', '2017-06-22 07:58:43'),
(3, 'Rex Rifat', 'Head of Ideas at Thesoftking Trading Solution', 'The team at Thesoftking Trading Solution is knowledgeable and always available to answer my questions. Their dedication to client success is evident in the remarkable returns I’ve seen on my investments.', '2017-06-22 07:50:59', '2017-06-22 07:58:01');

-- --------------------------------------------------------

--
-- Table structure for table `trades`
--

CREATE TABLE `trades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `trade_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trades`
--

INSERT INTO `trades` (`id`, `user_id`, `amount`, `trade_date`, `created_at`, `updated_at`) VALUES
(1, 6, 3612.00, '2024-07-16 21:12:21', '2024-07-16 21:12:21', '2024-07-16 21:12:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `image` varchar(100) NOT NULL,
  `country` varchar(191) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `amount` varchar(100) NOT NULL DEFAULT '0',
  `reference` varchar(100) NOT NULL,
  `under_reference` varchar(100) NOT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `verifyToken` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `block_status` tinyint(1) NOT NULL DEFAULT 0,
  `block_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profit` decimal(8,2) NOT NULL DEFAULT 0.00,
  `bonus` decimal(8,2) NOT NULL DEFAULT 10.00,
  `reference_bonus` decimal(8,2) NOT NULL DEFAULT 10.00,
  `currency` varchar(2) NOT NULL DEFAULT '$',
  `plan_id` int(10) UNSIGNED DEFAULT NULL,
  `trade` tinyint(1) DEFAULT 0,
  `trade_start` datetime DEFAULT NULL,
  `trade_stop` datetime DEFAULT NULL,
  `ID_Number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `country`, `zip`, `phone`, `address`, `amount`, `reference`, `under_reference`, `password`, `remember_token`, `verifyToken`, `status`, `block_status`, `block_at`, `created_at`, `updated_at`, `profit`, `bonus`, `reference_bonus`, `currency`, `plan_id`, `trade`, `trade_start`, `trade_stop`, `ID_Number`) VALUES
(6, 'Eromosele 🤑✌️', 'maryderek1101@gmail.com', 'user-default.png', 'South Africa', '3213123', '08084909120', 'asdasd sdasdas asdasd asdasdas dfdsfdsfds', '24134444', 'yCmyIzmshbtR', 'GPseDxW8C7Mu', '$2y$10$jTZfz4KmDyKdTe.6K.1XEuoaePUg3ggtLdmWDnfJJyhS9tZuytxWW', 'KWXpZAF4qoCshGKAqULfvNWDO3WuahLX9RWvfgxrmwVB1Kff1VudkLauzJ8D', 'JxlJzBtLHwpYA4Fe5KngA0zLYgb2QzuEx6HIqIbA', 1, 0, NULL, '2024-06-17 05:03:42', '2025-07-24 05:46:23', 3612.00, 10.00, 110.00, '$', 1, 0, NULL, '2025-05-04 20:11:35', NULL),
(21, 'Odemilin Eromosele', 'goodluckodemilin@gmail.com', '1720393890.jpeg', 'Nigeria', '123123', '08106243856', 'No 36 Warri\r\nBlock 3', '1350.00', 'GsK0JEiIHFTD', 'yCmyIzmshbtR', '$2y$10$xEJSo5XihDkddNVlKT/s0.WzEZPjJ0N1FlMQGE51HQ9ZGEe/rO8tu', 't2zSWNCEzTz7ZIhQHLfhMhn48d8sowoXqlhGNywy6gbKwd8DDkgVaP62kosW', 'XXp5LFYmZIzYFGnkxL2ya3UeF8BjEpsnz9BWnJKP', 0, 0, '2024-07-14 04:38:42', '2024-07-01 20:35:50', '2026-01-08 20:09:55', 6290.00, 20.00, 10.00, '$', NULL, 0, '2024-07-14 04:35:05', '2025-05-04 20:11:21', NULL),
(28, 'John Mark', 'emibanek@gmail.com', 'user-default.png', 'Dubai', '123123', '903232233', 'no 34 jahi 1, dubi', '5000', 'j6iFTITi8A5w', 'GsK0JEiIHFTD', '$2y$10$Pu4hK2hN6Xadz0D7.MWfXOX1jCrJQf88pRO1ojafY.lTzUTadhqDy', NULL, 'ajI0MaMz1Mv3VKVi3IlLdy9m6rS5JTG9W8XziyG6', 0, 0, NULL, '2025-05-02 03:43:13', '2026-02-26 21:01:29', 0.00, 10.00, 20.00, '$', NULL, 0, '2025-05-04 02:23:33', '2025-05-04 02:24:13', '13423324223'),
(29, 'Dubai Emit sammy', 'emibank@gmail.com', 'user-default.png', 'South Africa', '123123', '903232233', 'no 34 jahi 1, dubi', '0', 's3svjIJPdb7H', 'GsK0JEiIHFTD', '$2y$10$xa6lQKmG6LXUW.TLzlL24.yUopz5yWEZUN/jLRZWOpo6a.UMqJf1G', NULL, 'hS1yXIqcHdOmeyJPdwyqr2jl4REwy2dAyeSZb9QA', 0, 0, '2025-05-04 17:12:56', '2025-05-02 03:43:58', '2025-07-23 07:03:55', 0.00, 10.00, 20.00, '$', NULL, 0, NULL, NULL, '13423324223'),
(30, 'Thiona Jaime', 'itorotitusp@gmail.com', '1750510239.jpg', 'Nigeria', '500001', '+44 7473 638327', 'Gaborone', '99500', 'e2xj9MIoJUQM', 'j6iFTITi8A5w', '$2y$10$.VGLR/oBtvSmut5IXS.ome/L3rOiFCoTrNLHKSnpPMoeCczLD31.2', '055grqj2WgiL70QO20W3YgVjPoFqNwSQg043RflMQyv5LyfYJxfPBmHWIpeI', '4greLS7CaBpHtZGvk8wUYkRLmckOcbEHKmYWUY5H', 0, 0, '2025-07-01 06:08:12', '2025-05-04 13:36:34', '2026-01-08 20:15:40', 50000.00, 10.00, 20.00, '$', 1, 0, '2025-07-23 08:46:48', '2025-07-23 10:32:18', '87119365167'),
(31, 'Oduetse Phologolo', 'oduetsep@yahoo.com', 'user-default.png', 'Botswana', '000000', '+26771826421', 'P O Box 2549 AAD, Poso House, Gaborone', '30.00', '2KqNpvVfNWpr', 'j6iFTITi8A5w', '$2y$10$qXMtYSE3cPg5LzZq1KX9Uu2KqtA/Xge5awYmJiXv7wfLsvdywgoa6', 'CaWJUAbUJ8B70eyu9f3EWUnw7duvZcF4W3Z0yxhIvrwdDAxKT6sWU5W9LjTJ', 'ZhV1x8EhF1OnQZ6J8TYeSKo7fBbqX0xyIP40ccAI', 0, 0, NULL, '2025-05-04 13:49:26', '2026-01-08 18:50:12', 1150.00, 10.00, 20.00, '$', NULL, 1, '2025-05-04 20:10:58', NULL, '404212016'),
(32, 'Colin', 'hlomi0895@gmail.com', 'user-default.png', 'South Africa', '185251', '+27832121074', '17455 Cpho street\r\nZone 1 Meadowlands\r\nSoweto', '170', 'sdE2CBG5kCnj', 'e2xj9MIoJUQM', '$2y$10$/KrNxaEaBh9rj4dEiYnY3O/wjRAfq4XnF3WgnBK31.hZCrWdcwxq6', 'x68JpFyr5yYS2KMWrfwi1SupE5Rs8c6vtmZTcAn2KvFVN5x8fsNJAdUfvg7P', 'd2cYBqPXhsIq5DsPqxTMAMEnOM8JtTd3d2S8flbd', 0, 0, NULL, '2025-05-04 21:01:27', '2025-10-08 17:27:15', 65256.00, 10.00, 10.00, '$', NULL, 1, '2025-07-01 06:50:33', NULL, '7404305357086'),
(33, 'Kagiso Mpala', 'kaygmp@gmail.com', 'user-default.png', 'Botswana', '000000', '+26774184853', 'P O Box 81821 Gaborone', '00.00', 'bOJK2ktTcPdc', 'e2xj9MIoJUQM', '$2y$10$pYbMc7X8kQrukjChJeS1kOFq7X9DaBI199kVxbq6AY.64cfd7b5ue', NULL, 'cXXKNlEqngPiVbqESUki42VmmkQqW69ySUvwYsZh', 0, 0, NULL, '2025-05-07 22:50:41', '2025-07-01 04:49:06', 0.00, 10.00, 10.00, '$', NULL, 1, '2025-07-01 06:49:06', NULL, '909125616'),
(34, 'Green Matiza', 'gcmatiza@gmail.com', 'user-default.png', 'Botswana', '000000', '+26774131430', 'Letlhakane\r\nTawana ward', '0', 'YIxJdzTwEL2y', 'e2xj9MIoJUQM', '$2y$10$HRvty0MpcCglscsTAYnmsOn7aWstlN3n0kU8HcJ982hLlSk0Y9D.W', 'IT3LXlqtz1UWNQNn1ZV4vkkem8uJ8lFB1mtHSNRJsgAmaymVquwTaePobtfB', 'VE2seNbKcvdI9NMKbUclj59gwhuCZtsIjG2oxLqL', 0, 0, NULL, '2025-07-18 21:00:18', '2025-07-18 21:00:18', 0.00, 10.00, 10.00, '$', NULL, 0, NULL, NULL, 'FN682169'),
(35, 'Green Matiza', 'grnmatiza@gmail.com', 'user-default.png', 'Botswana', '000000', '+26774131430', 'Letlhakane\r\nTawana ward', '0.00', 'i22nEFz6dn05', 'e2xj9MIoJUQM', '$2y$10$5IbTvLRVcP0LussS.Z3N9.9C.TlpaY7WRhlvip6wb0u933SiAXMfO', NULL, 'kc8khO1P0NfYRgTyAdlfgbMHVGGAYF7EBi8fWJvX', 0, 0, '2025-07-23 09:18:33', '2025-07-18 21:02:56', '2025-07-23 08:31:53', 0.00, 10.00, 10.00, '$', NULL, 0, NULL, NULL, 'FN682169'),
(36, 'Green Matiza', 'green.matiza@yahoo.com', 'user-default.png', 'Botswana', '000000', '+26774131430', 'Letlhakane\r\nTawana ward', '11632', 'iA5eObcWNVix', 'e2xj9MIoJUQM', '$2y$10$ANwai4ImBUnZ5hG2MzpOteWpynxaJMU4VEFI3qxp71NOMWkKbFxH.', '9XIUsQ327uKFqABnq2fHmZGhYFwQmsEsjPfx0b4gECdjFvDfovpOER3UloJi', 'PWnVzkp4It82iAApAJ8wopkIXMhUn3ov7zLpCVkt', 0, 0, NULL, '2025-07-18 21:24:40', '2025-07-23 06:48:50', 53067.00, 50.00, 10.00, '$', NULL, 1, '2025-07-23 08:48:50', NULL, 'FN682169'),
(37, 'Cynthya Bauer Zarco', 'cbauerzarco@gamil.com', 'user-default.png', 'Bolivia', '69114072', '69114072', 'Las cabañas del río Pirai', '0.00', 'Py30D0sWfFYi', 'j6iFTITi8A5w', '$2y$10$I7Jn4YT687Irx8e8y3ETEO2jI2C7wD3fH9dexPcwNSesHJh5dPqXe', NULL, 'w89HaGEH8urCD2F4zaOArxnSxgcfNCXcHTDhugrw', 0, 0, NULL, '2025-07-23 06:26:29', '2025-07-23 08:41:49', 0.00, 10.00, 10.00, '$', NULL, 0, '2025-07-23 08:37:41', '2025-07-23 10:41:49', '6290516'),
(38, 'Cynthya Bauer Zarco', 'zarcocynthya@gmail.com', 'user-default.png', 'Bolivia', '6290516', '69114072', 'Las cabañas del río Pirai', '2500', 'vZLI0xyZlmjN', 's3svjIJPdb7H', '$2y$10$cf7fN6o6jWOiaEbn4sy1keHV61ByJdv3sjCHmsCj9lNJExOb6eDxq', NULL, 'gYaQAo6SDDjQftNKKsXZtyxrK8XePvApZPqFRm35', 0, 0, NULL, '2025-07-23 07:03:55', '2025-07-27 22:30:18', 3000.00, 80.00, 10.00, '$', NULL, 1, '2025-07-23 10:40:34', NULL, '6290516'),
(39, 'Thabiso. Mokhele', 'thabisomokhele49@gmail.com', 'user-default.png', 'South Africa', '9463', '+270633413484', '2462 Theboko \r\nThabong\r\nWelkom', '2502', 'UTbxG1UsFmmO', '2KqNpvVfNWpr', '$2y$10$icLsORZsuWO9Fne9rsFTcuTXVtIOjow9WQ6XzYEEoa35RvlFhQv8m', 'ww8d7oUygmiP4JW6Zf3oPk71kCzBzTcY3p4HLlcvXp3ut8oBf9usOx42LVwQ', 'BAhsAuWntxxDar03AsELaLcBvXtznpvUazPNtnEY', 0, 0, NULL, '2025-07-27 15:25:07', '2025-07-30 00:53:25', 8363.00, 10.00, 10.00, '$', NULL, 1, '2025-07-27 17:33:30', NULL, '62121 45870080'),
(40, 'Jim Vieira', 'jimcavalcantii22@gmail.com', 'user-default.png', 'United States of America', '07047', '5512163015', '4105 liberty ave apt b', '0', 'VhRXPKwQmHvP', '2KqNpvVfNWpr', '$2y$10$z916qg1lBVyOIgBtF2.QaeiJx4w0L1AqvWDsRSyMPAivhrT9eONZC', NULL, '2GUqOl3U3Sp7SuKR48LkGfDaUEf2GMsaKKeHHQOh', 0, 0, NULL, '2025-07-30 21:57:37', '2025-07-30 21:57:37', 0.00, 10.00, 10.00, '$', NULL, 0, NULL, NULL, NULL),
(41, 'Sharon Miland-Holcomb', 'sharonbiz@yahoo.com', 'user-default.png', 'United States of America', '54151', '+1 906 221 4335', 'W5400 SPIKE HORN RD, NIAGARA WI 54151', '0', 'Zf2MN9glCVtV', '2KqNpvVfNWpr', '$2y$10$3Vd08UxFrDfwK8AjbGPme.iEJyRpMEjSkIRp7Te9IMea5QMXqfpiO', NULL, 'YlIqKxRIg6wfxIHWaKnn2HN9gfOFsZ9GTKqh0nCF', 0, 0, NULL, '2025-08-01 06:50:20', '2025-08-01 06:50:20', 0.00, 10.00, 10.00, '$', NULL, 0, NULL, NULL, NULL),
(42, 'Sharon Miland-Holcomb', 'Sharonbiz1963@gmail.com', 'user-default.png', 'United States of America', '54151', '+1 906 221 4335', 'W5400 SPIKE HORN RD, NIAGARA WI 54151', '0', 'QfgoOI2B9p7S', '2KqNpvVfNWpr', '$2y$10$Cx3MQv0tjbqe9NX.udyImu3K83Pe8kKnosufmqfajfLsBMprfjDWW', NULL, 'XEfUa398APdvvmOXi8o7n4518fRVdXE7J6spqYrt', 0, 0, NULL, '2025-08-01 07:12:36', '2025-08-01 07:12:36', 0.00, 10.00, 10.00, '$', NULL, 0, NULL, NULL, NULL),
(43, 'Sinethemba Thiona Okopeng', 'sthiona07@gmail.com', 'user-default.png', 'Botswana', '100000', '+26777164539', 'P O Box 36047 Francistown', '4939', 'fYKymOmiEE9j', 'j6iFTITi8A5w', '$2y$10$mwWe87nws19lbbDcSlC2TOKtMRGvTpkYhGLppmp3rVhx1jX.WrEH6', NULL, 'lAJ17OztEBpT4jLiFC3CflmvjSiI4ow2wDkNcWxY', 0, 0, NULL, '2025-08-18 19:32:15', '2025-08-21 12:01:37', 19526.00, 10.00, 10.00, '$', NULL, 0, NULL, NULL, NULL),
(44, 'Tiny Itumeleng', 'tiny75itumeleng@gmail.com', 'user-default.png', 'Botswana', '000000', '+26775942535', 'P O Box 559 Letlhakane  \r\nTawana ward', '1576', 'kYJy7ZEBVH0n', 'j6iFTITi8A5w', '$2y$10$Fq17uy4aqTR7oi7ce9Wmc.YzdF8LjabWl0Yg2hA4xhNzMpcRZ9Epu', NULL, 'ljGKoACSDCmhv1zofqGM0nnsJINfclghsiObYRIE', 0, 0, NULL, '2025-08-20 16:59:06', '2025-08-20 18:14:46', 33920.00, 10.00, 10.00, '$', NULL, 0, NULL, NULL, NULL),
(45, 'Abraham Hugo Mendoza Guzman', 'mendizahugo300@gmail.com', 'user-default.png', 'Mexico', '220560', '81 1375 5877', 'Chinacos 201', '100.00', 'D6WKq48bBTDy', 'j6iFTITi8A5w', '$2y$10$HTq/RsoZqrkeZnn.0.WLyOF8/wfF/JW9LESjTNW7wQD5lqiTnjtsq', NULL, 'kI29TntSzm4z20wMsxEKDbIf1RosZCyD0wjFkhZt', 0, 0, NULL, '2025-09-17 01:24:41', '2025-09-17 01:36:16', 3500.00, 10.00, 10.00, '$', NULL, 0, NULL, NULL, NULL),
(46, 'Lackson weza', 'Lacksonweza01@gmail.com', 'user-default.png', 'Zambia', '573827', '0973055115', 'D536 /A', '0', 'QyjzU60ZnbtB', 'j6iFTITi8A5w', '$2y$10$p0LZ0CrOj2IGAkrinK720OL.dNm6EpGWZ4JZifXV4FXp9Ieca9dvu', NULL, 'Nd2n1747aNy4nS6XBdJvici2o5zpB91h1fRCjeBz', 0, 0, NULL, '2025-09-23 13:25:45', '2025-09-24 10:33:16', 0.00, 10.00, 10.00, '$', NULL, 1, '2025-09-24 12:33:16', NULL, NULL),
(47, 'Lackson weza', 'Lacsonweza01@gmail.com', 'user-default.png', 'Zambia', '573827', '0973055115', 'D536 /A', '1345.00', 'DewoDHjYcvs7', 'j6iFTITi8A5w', '$2y$10$4o8alhcSq8EGVrXhtAhlheLtDunbX9v0cJzgTd7qNZdpGLJCEYo0C', NULL, 'L0aehZJTPJKJ4huPw0ynRgc7suSMfCJfDUjHxVFU', 0, 0, NULL, '2025-09-23 13:33:12', '2025-10-11 00:47:51', 18565.00, 10.00, 10.00, '$', NULL, 0, NULL, NULL, NULL),
(48, 'Erika Fabiola Calvillo Bravo', 'cascalerika@gmail.com', 'user-default.png', 'Mexico', '372340', '+524778421331', 'San Manuel 332 Col. Real providencia', '230.00', 'IxlKZcLKwfwl', 'j6iFTITi8A5w', '$2y$10$/tfNVMOi5LcGlESIZNkws.94X9zo/hii69MQtYl8p80W.HRJcMcX2', NULL, 'iNrYUsZWsnnYkI9GU37vfkRrCFCDTYPfYkMm6VFK', 0, 0, NULL, '2025-09-25 03:06:50', '2025-09-27 04:43:47', 2300.00, 10.00, 10.00, '$', NULL, 0, NULL, NULL, NULL),
(49, 'Cyril John', 'tituscyril1@gmail.com', 'user-default.png', 'China', '510001', '81029334182', 'Moore house', '10000', 'e1kreigygDHe', 'j6iFTITi8A5w', '$2y$10$2IDIzsVx7J2UKfO36ii7meBHCR7ORDl2thBvU5t.2/C8llGMf2sD6', NULL, 'aNRnCO7PAELkLVOozajs7LoZdC0QXKAjEXK6LY2m', 0, 0, NULL, '2025-09-28 06:19:32', '2026-01-08 19:55:15', 50000.00, 10.00, 10.00, '$', NULL, 0, NULL, NULL, NULL),
(50, 'Ngenzeni Agnes Mdunge', 'Ngenzenieggie945@gmail.com', 'user-default.png', 'South Africa', '538387', '+27 725254169', 'House no843 Tholeni area Wasbank 2920', '36493', 'CTDedlK0Erfp', 'j6iFTITi8A5w', '$2y$10$jW2sfG7k5EbZtDHOHx4rpu3c7hnnj85B9yHqMWwZqC.9tSPc5Ob0O', NULL, 'iLcKZa6gfi8QKRJk1KS4dnhOpbW2HzKOGFkccNK8', 0, 0, NULL, '2025-10-04 17:38:34', '2025-10-04 20:21:43', 174643.00, 10.00, 10.00, '$', 4, 0, NULL, NULL, NULL),
(51, 'Brenda Kanema', 'kanemabrendan32@gmail.com', 'user-default.png', 'Zambia', '736537', '0974555306', 'Shampande A comp', '0', 'vJDj50RV84Xx', 'j6iFTITi8A5w', '$2y$10$tYi6gqcOWkNXJoyMwpCTF.ugpQ8TLf7gSqt3nDKEj3lk5nL4UI2gC', NULL, 'FEm42uTEsbqiaaNcr8U7MZcg30pUVUoSLDBQ2Hf0', 0, 0, NULL, '2025-10-09 14:54:55', '2025-10-09 14:54:55', 0.00, 10.00, 10.00, '$', NULL, 0, NULL, NULL, NULL),
(52, 'Steven Shirinda', 'shirindasteven622@gmail.com', 'user-default.png', 'South Africa', '6109809Ss', '0715191871', 'Winnie Mandela Zone 7\r\n 1632 \r\nTembisa', '0.00', 'C4tfbCYTqrz2', 'j6iFTITi8A5w', '$2y$10$zjNjxo61x9XwqkE7AuGTmOeEuDYfyrpeolyOWiguQL/pPt6SmBZIC', NULL, 'ZlTpULJhUwPfEPkINZu59xASFEoorr76BqRTAhRC', 0, 0, NULL, '2025-10-23 00:02:05', '2025-10-31 03:30:47', 0.00, 10.00, 10.00, '$', NULL, 0, NULL, NULL, '9705206109089'),
(53, 'Eric Nyawo', 'ericnyaw@gmail.com', 'user-default.png', 'South Africa', '220100', '0720829496', 'Mphafeni area\r\nMphafeni area', '0', 'K9R21pccbU1t', 'j6iFTITi8A5w', '$2y$10$A.Wh6izNAJgnbZuwOGip2e.mGOP0ot74SQxFdz3D5f.r6Li/dTquW', NULL, 'nKkEaNlbQvCaYshrZour41f0FgruOIDceRn1KN1V', 0, 0, NULL, '2025-10-24 20:32:13', '2025-10-24 20:32:13', 0.00, 10.00, 10.00, '$', NULL, 0, NULL, NULL, NULL),
(54, 'Nonhlanhla Suluma', 'nhlanhlanonhle68@gmail.com', 'user-default.png', 'South Africa', '211988', '0766251704', '1698 Ethiopia crescent ext 2 Cosmo city', '0', 'hbmz1ljJXl6o', 'j6iFTITi8A5w', '$2y$10$nuCEYQReB1sOldVx98vnH.JTHFH26ULy7TEfms1Tw2av4OXdeHy8m', NULL, 'oRgD1mIsPMB7oIq4Cz2eq586p2ypuHq1ke7Ma0kb', 0, 0, NULL, '2025-11-24 04:57:31', '2025-11-24 04:57:31', 0.00, 10.00, 10.00, '$', NULL, 0, NULL, NULL, NULL),
(55, 'Akhona Makhasi', 'aamakhasi@gmail.com', 'user-default.png', 'South Africa', '5360', '0733301877', '3451 Zola Location', '0', 'XnjMSRnDuarY', 'j6iFTITi8A5w', '$2y$10$yTXmUxqv81/Ogn2niRyjbuo/N.7Eyy5/c1wIPRMIyDwbKh3dUyfVq', '0PndPUWRiRL9rRzooB7mhn6yRdczPAi5bECgcDE0p2tfmqCLPi1QkGeR8TxS', '1RoXg2bXFMcsivKs4Nswu0aQxfo48DJLdqCzwmC9', 0, 0, NULL, '2026-01-02 00:23:43', '2026-01-02 00:23:43', 0.00, 10.00, 10.00, '$', NULL, 0, NULL, NULL, NULL),
(56, 'Hector eulises Sánchez portillo', 'hectorsanchez909ill.com@gmail.com', 'user-default.png', 'El Salvador', '503 79353374', '79353374', 'Colonia el triunfo pasaje 12 casa 12 mejicanos san salvador', '0', 'yqdFoJoL5a3G', 'j6iFTITi8A5w', '$2y$10$LybPQlPB9D2PRzmYrZLfxuTN.K6Kr8Wef96mPq52dTpjqEQswuZh6', NULL, 'hDaa9R3VVDcXfS8SAu2SOdaTXzAtLFagHxz2SnmY', 0, 0, NULL, '2026-01-06 00:26:16', '2026-01-06 00:26:16', 0.00, 10.00, 10.00, '$', NULL, 0, NULL, NULL, NULL),
(57, 'Siboniso', 'sibonisokhumalo161@gmail.com', 'user-default.png', 'South Africa', '910477', '0715694377', 'Stand no 18.Ga-Manyaka.Driekop 1129', '0', 'hPCF53X2xi5v', 'j6iFTITi8A5w', '$2y$10$FpiatiagDk32OcHd4IdRy.9ZAKT/3h3r294JNBUBMjEY1xlwszrRW', NULL, 'NKqEN9Cq2ZwdgyjPYOJEUVdDvcoNBqkBt95s1xOZ', 0, 0, NULL, '2026-02-26 21:01:29', '2026-02-26 21:01:29', 0.00, 10.00, 10.00, '$', NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_balances`
--

CREATE TABLE `user_balances` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `balance_type` tinyint(4) NOT NULL,
  `details` text DEFAULT NULL,
  `balance` varchar(191) NOT NULL,
  `charge` decimal(15,2) DEFAULT NULL,
  `new_balance` varchar(191) NOT NULL,
  `old_balance` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_balances`
--

INSERT INTO `user_balances` (`id`, `user_id`, `balance_type`, `details`, `balance`, `charge`, `new_balance`, `old_balance`, `created_at`, `updated_at`) VALUES
(1, 21, 4, 'Withdraw ID : # 250725SRUPWZ95 .  Withdraw By : Bank payment', '10000', 1000.00, '989000', '1000000', '2025-07-25 00:52:10', '2025-07-25 00:52:10'),
(2, 21, 4, 'Withdraw ID : # 250725Wl0Dcz55 .  Withdraw By : Bank payment', '10000', 1000.00, '989000', '1000000', '2025-07-25 00:53:00', '2025-07-25 00:53:00'),
(3, 21, 4, 'Withdraw ID : # 250725kitGE727 .  Withdraw By : Bitcoin', '3333', 666.65, '985000.35', '989000', '2025-07-25 00:57:06', '2025-07-25 00:57:06'),
(4, 30, 4, 'Withdraw ID : # 250725qiPCxf73 .  Withdraw By : Mobile Banking', '500', 257.50, '4242.5', '5000', '2025-07-25 14:41:52', '2025-07-25 14:41:52'),
(5, 30, 7, 'Withdraw ID : # 250725qiPCxf73 .  Refunded By Admin.', '500', 257.50, '5000', '4242.5', '2025-07-25 14:55:21', '2025-07-25 14:55:21'),
(6, 21, 7, 'Withdraw ID : # 250725kitGE727 .  Refunded By Admin.', '3333', 666.65, '989000', '985000.35', '2025-07-25 22:46:16', '2025-07-25 22:46:16'),
(7, 21, 7, 'Withdraw ID : # 250725SRUPWZ95 .  Refunded By Admin.', '10000', 1000.00, '1000000', '989000', '2025-07-25 22:46:43', '2025-07-25 22:46:43'),
(8, 21, 7, 'Withdraw ID : # 250725hiQwXU70 .  Refunded By Admin.', '10000', 1000.00, '1011000', '1000000', '2025-07-25 22:47:07', '2025-07-25 22:47:07'),
(9, 30, 4, 'Withdraw ID : # 250726IfrEd376 .  Withdraw By : Bank payment', '10000', 1000.00, '89000', '100000', '2025-07-25 22:53:02', '2025-07-25 22:53:02'),
(10, 38, 4, 'Withdraw ID : # 2507264BMlzJ79 .  Withdraw By : Mobile Banking', '1500', 272.50, '227.5', '2000', '2025-07-26 03:10:50', '2025-07-26 03:10:50'),
(11, 21, 4, 'Withdraw ID : # 250726AvX7SM39 .  Withdraw By : Bitcoin', '1999', 599.95, '1008401.05', '1011000', '2025-07-26 14:38:37', '2025-07-26 14:38:37'),
(12, 30, 4, 'Withdraw ID : # 250726C8Vnja36 .  Withdraw By : Bitcoin', '2000', 600.00, '86400', '89000', '2025-07-26 18:52:57', '2025-07-26 18:52:57'),
(13, 21, 4, 'Withdraw ID : # 250726TE6S8282 .  Withdraw By : Bitcoin', '1000', 550.00, '1006851.05', '1008401.05', '2025-07-26 19:17:27', '2025-07-26 19:17:27'),
(14, 21, 4, 'Withdraw ID : # 250726FbxX6G55 .  Withdraw By : Bank payment', '10000', 600.00, '996251.05', '1006851.05', '2025-07-26 19:17:58', '2025-07-26 19:17:58'),
(15, 30, 4, 'Withdraw ID : # 250726OJ17nH66 .  Withdraw By : Bitcoin', '300', 515.00, '85585', '86400', '2025-07-26 19:34:00', '2025-07-26 19:34:00'),
(16, 30, 4, 'Withdraw ID : # 250726557xUA42 .  Withdraw By : Mobile Banking', '344', 255.16, '84985.84', '85585', '2025-07-26 19:37:07', '2025-07-26 19:37:07'),
(17, 30, 7, 'Withdraw ID : # 250726557xUA42 .  Refunded By Admin.', '344', 255.16, '85585', '84985.84', '2025-07-26 22:00:21', '2025-07-26 22:00:21'),
(18, 30, 7, 'Withdraw ID : # 250726OJ17nH66 .  Refunded By Admin.', '300', 515.00, '86400', '85585', '2025-07-26 22:00:34', '2025-07-26 22:00:34'),
(19, 21, 7, 'Withdraw ID : # 250726FbxX6G55 .  Refunded By Admin.', '10000', 600.00, '1006851.05', '996251.05', '2025-07-26 22:00:40', '2025-07-26 22:00:40'),
(20, 21, 7, 'Withdraw ID : # 250725AWWDcG39 .  Refunded By Admin.', '10000', 1000.00, '1017851.05', '1006851.05', '2025-07-26 22:00:47', '2025-07-26 22:00:47'),
(21, 38, 7, 'Withdraw ID : # 2507264BMlzJ79 .  Refunded By Admin.', '1500', 272.50, '2000', '227.5', '2025-07-26 22:00:53', '2025-07-26 22:00:53'),
(22, 38, 4, 'Withdraw ID : # 250728YDEj9p29 .  Withdraw By : Mobile Banking', '1500', 272.50, '227.5', '2000', '2025-07-27 22:23:11', '2025-07-27 22:23:11'),
(23, 30, 4, 'Withdraw ID : # 250728AjeVw325 .  Withdraw By : Upgrade', '500.00', 0.00, '85900', '86400', '2025-07-28 13:50:07', '2025-07-28 13:50:07'),
(24, 39, 4, 'Withdraw ID : # 250730fQsSLv82 .  Withdraw By : Bitcoin', '5000', 750.00, '2502', '8252', '2025-07-30 00:53:25', '2025-07-30 00:53:25'),
(25, 21, 4, 'Withdraw ID : # 250731pJW8k845 .  Withdraw By : Ethereum', '1000', 235.00, '1016616.05', '1017851.05', '2025-07-31 17:09:53', '2025-07-31 17:09:53'),
(26, 31, 4, 'Withdraw ID : # 250731YX1Tvp65 .  Withdraw By : USDT', '2500', 425.00, '182', '3107.00', '2025-07-31 21:51:29', '2025-07-31 21:51:29'),
(27, 31, 7, 'Withdraw ID : # 250731YX1Tvp65 .  Refunded By Admin.', '2500', 425.00, '3107', '182', '2025-07-31 21:59:29', '2025-07-31 21:59:29'),
(28, 31, 4, 'Withdraw ID : # 250801MynWQz27 .  Withdraw By : Bitcoin', '2200', 610.00, '297', '3107', '2025-07-31 22:12:51', '2025-07-31 22:12:51'),
(29, 44, 4, 'Withdraw ID : # 250820RyqDHW79 .  Withdraw By : USDT', '20000', 1000.00, '1576', '22576.00', '2025-08-20 18:14:46', '2025-08-20 18:14:46'),
(30, 30, 4, 'Withdraw ID : # 250821JsfGMs39 .  Withdraw By : Mobile Banking', '300', 254.50, '85345.5', '85900', '2025-08-21 11:57:12', '2025-08-21 11:57:12'),
(31, 43, 4, 'Withdraw ID : # 2508211zQWWO80 .  Withdraw By : Mobile Banking', '11000', 415.00, '4939', '16354.00', '2025-08-21 12:01:37', '2025-08-21 12:01:37'),
(32, 31, 8, 'Add Fund via Sonali bank Transaction ID : # 2508217z9Ttb21', '100', 2.50, '397', '297', '2025-08-25 19:47:44', '2025-08-25 19:47:44'),
(33, 32, 8, 'Add Fund via first bank Airtel Transaction ID : # 250801Mqllsk32', '1100', 17.50, '14695', '13595.00', '2025-08-25 19:48:19', '2025-08-25 19:48:19'),
(34, 30, 4, 'Withdraw ID : # 2508275wJOp061 .  Withdraw By : Upgrade', '0.00', 0.00, '85345.5', '85345.5', '2025-08-27 01:09:17', '2025-08-27 01:09:17'),
(35, 30, 4, 'Withdraw ID : # 250827axwlQw13 .  Withdraw By : Upgrade', '500.00', 0.00, '84845.5', '85345.5', '2025-08-27 14:44:28', '2025-08-27 14:44:28'),
(36, 30, 4, 'Withdraw ID : # 250827NyEVtg56 .  Withdraw By : Upgrade', '0.00', 0.00, '84845.5', '84845.5', '2025-08-27 14:45:06', '2025-08-27 14:45:06'),
(37, 31, 2, 'Invest ID: # 250911EIolQ951; Invest Plan : STARTER ACCOUNT', '10000', NULL, '-9603', '397', '2025-09-11 04:46:21', '2025-09-11 04:46:21'),
(38, 28, 5, 'Referral Invest Bonus : 2500-USD;  Referral ID : # 2KqNpvVfNWpr', '2500', NULL, '2500', '0', '2025-09-11 04:46:21', '2025-09-11 04:46:21'),
(39, 31, 2, 'Invest ID: # 250911oHUL5E34; Invest Plan : STARTER ACCOUNT', '10000', NULL, '-19603', '-9603', '2025-09-11 04:47:08', '2025-09-11 04:47:08'),
(40, 28, 5, 'Referral Invest Bonus : 2500-USD;  Referral ID : # 2KqNpvVfNWpr', '2500', NULL, '5000', '2500', '2025-09-11 04:47:08', '2025-09-11 04:47:08'),
(41, 32, 8, 'Add Fund via Agroni Bank Transaction ID : # 250722qaFC7q46', '10000', 180.70, '24695', '14695', '2025-09-11 00:48:03', '2025-09-11 00:48:03'),
(42, 30, 8, 'Add Fund via Agroni Bank Transaction ID : # 250726kqDqJN70', '61', 1.80, '84906.5', '84845.5', '2025-09-11 01:00:31', '2025-09-11 01:00:31'),
(43, 32, 8, 'Add Fund via first bank Airtel Transaction ID : # 250801r9Vy5U83', '1100', 17.50, '25795', '24695', '2025-09-17 23:41:16', '2025-09-17 23:41:16'),
(44, 31, 8, 'Add Fund via Sonali bank Transaction ID : # 2509158yurjh21', '200', 3.10, '3160', '2960.00', '2025-09-17 23:41:51', '2025-09-17 23:41:51'),
(45, 31, 8, 'Add Fund via Sonali bank Transaction ID : # 250915H4MPgA19', '200', 3.10, '3360', '3160', '2025-09-17 23:42:14', '2025-09-17 23:42:14'),
(46, 31, 8, 'Add Fund via Sonali bank Transaction ID : # 250915U1gyh020', '200', 3.10, '3560', '3360', '2025-09-17 23:42:54', '2025-09-17 23:42:54'),
(47, 31, 8, 'Add Fund via Sonali bank Transaction ID : # 250915rFVj9r96', '200', 3.10, '3760', '3560', '2025-09-17 23:43:36', '2025-09-17 23:43:36'),
(48, 31, 8, 'Add Fund via Sonali bank Transaction ID : # 2509151HAxLd24', '200', 3.10, '3960', '3760', '2025-09-17 23:44:23', '2025-09-17 23:44:23'),
(49, 30, 4, 'Withdraw ID : # 250927Vf86Is41 .  Withdraw By : Bitcoin', '500', 25.00, '475', '1000.00', '2025-09-26 22:31:45', '2025-09-26 22:31:45'),
(50, 48, 4, 'Withdraw ID : # 250927pyg35m89 .  Withdraw By : Bitcoin', '700', 35.00, '765', '1500.00', '2025-09-26 22:32:33', '2025-09-26 22:32:33'),
(51, 30, 4, 'Withdraw ID : # 250928XOhvJ467 .  Withdraw By : Upgrade', '0.00', 0.00, '475', '475', '2025-09-28 05:23:54', '2025-09-28 05:23:54'),
(52, 50, 4, 'Withdraw ID : # 2510040r5JLL61 .  Withdraw By : Upgrade', '0.00', 0.00, '87493', '87493.00', '2025-10-04 18:03:48', '2025-10-04 18:03:48'),
(53, 50, 4, 'Withdraw ID : # 251004mQvMqU28 .  Withdraw By : Mobile Banking', '50000', 1000.00, '36493', '87493', '2025-10-04 20:21:43', '2025-10-04 20:21:43'),
(54, 32, 4, 'Withdraw ID : # 251008gd3tmQ51 .  Withdraw By : Mobile Banking', '25000', 625.00, '170', '25795', '2025-10-08 17:27:15', '2025-10-08 17:27:15'),
(55, 30, 4, 'Withdraw ID : # 260108dtjDiu32 .  Withdraw By : Upgrade', '500.00', 0.00, '99500', '100000', '2026-01-08 20:15:40', '2026-01-08 20:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `method_id` int(11) NOT NULL,
  `withdraw_number` varchar(191) NOT NULL,
  `amount` varchar(191) NOT NULL,
  `charge` varchar(191) NOT NULL,
  `total` varchar(191) NOT NULL,
  `new_balance` varchar(191) NOT NULL,
  `old_balance` varchar(191) NOT NULL,
  `details` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `acc_code` varchar(255) DEFAULT NULL,
  `acc_number` varchar(255) DEFAULT NULL,
  `acc_name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `made_date` datetime DEFAULT NULL,
  `wallet_address` varchar(255) DEFAULT NULL,
  `network_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `user_id`, `method_id`, `withdraw_number`, `amount`, `charge`, `total`, `new_balance`, `old_balance`, `details`, `message`, `acc_code`, `acc_number`, `acc_name`, `status`, `created_at`, `updated_at`, `made_date`, `wallet_address`, `network_name`, `email`) VALUES
(1, 21, 16, '250725AWWDcG39', '10000', '1000', '11000', '989000', '1000000', NULL, NULL, '4324', '4234234', '23432423423', 2, '2025-07-25 00:50:39', '2025-07-26 22:00:47', '2025-07-27 00:00:47', NULL, NULL, NULL),
(2, 21, 16, '250725hiQwXU70', '10000', '1000', '11000', '989000', '1000000', NULL, NULL, '4324', '4234234', '23432423423', 2, '2025-07-25 00:51:27', '2025-07-25 22:47:07', '2025-07-26 00:47:07', NULL, NULL, NULL),
(3, 21, 16, '250725SRUPWZ95', '10000', '1000', '11000', '989000', '1000000', NULL, NULL, '4324', '4234234', '23432423423', 2, '2025-07-25 00:52:10', '2025-07-25 22:46:43', '2025-07-26 00:46:43', NULL, NULL, NULL),
(4, 21, 16, '250725Wl0Dcz55', '10000', '1000', '11000', '989000', '1000000', NULL, NULL, '4324', '4234234', '23432423423', 1, '2025-07-25 00:53:00', '2025-07-25 00:55:11', '2025-07-25 02:55:11', NULL, NULL, NULL),
(5, 21, 18, '250725kitGE727', '3333', '666.65', '3999.65', '985000.35', '989000', NULL, NULL, '4324', '4234234', '23432423423', 2, '2025-07-25 00:57:06', '2025-07-25 22:46:16', '2025-07-26 00:46:16', NULL, NULL, NULL),
(6, 30, 17, '250725qiPCxf73', '500', '257.5', '757.5', '4242.5', '5000', NULL, NULL, 'OPAHGB22', '7058371242', 'Thiona Jaime', 2, '2025-07-25 14:41:52', '2025-07-25 14:55:21', '2025-07-25 16:55:21', NULL, NULL, NULL),
(7, 30, 16, '250726IfrEd376', '10000', '1000', '11000', '89000', '100000', NULL, NULL, '5256', '7058371242', 'Thiona Jaime', 1, '2025-07-25 22:53:02', '2025-07-25 22:54:28', '2025-07-26 00:54:28', NULL, NULL, NULL),
(8, 38, 17, '2507264BMlzJ79', '1500', '272.5', '1772.5', '227.5', '2000', NULL, NULL, '123456', '1311701970', 'Cynthya Bauer Zarco', 2, '2025-07-26 03:10:50', '2025-07-26 22:00:53', '2025-07-27 00:00:53', NULL, NULL, NULL),
(9, 21, 18, '250726AvX7SM39', '1999', '599.95', '2598.95', '1008401.05', '1011000', NULL, 'jghjgjg jhgjhgghjgjhg jhgjhgjh', NULL, NULL, NULL, 0, '2025-07-26 14:38:37', '2025-07-26 14:38:37', NULL, '876876fhgfhfg876', 'vbvcb gcbvcbvcbvc', NULL),
(10, 30, 18, '250726C8Vnja36', '2000', '600', '2600', '86400', '89000', NULL, NULL, NULL, NULL, NULL, 0, '2025-07-26 18:52:57', '2025-07-26 18:52:57', NULL, 'TU9fZjJzXoSg5GD94YYy2muvyHsztDh8Ye', 'Bitcoin', NULL),
(11, 21, 18, '250726TE6S8282', '1000', '550', '1550', '1006851.05', '1008401.05', NULL, 'ydfydfy dftdftd', NULL, NULL, NULL, 0, '2025-07-26 19:17:27', '2025-07-26 19:17:27', NULL, '1P4i1HJXHoJ9b6S2s9EyweGNUuuzZqzFNa', '4535', NULL),
(12, 21, 16, '250726FbxX6G55', '10000', '600', '10600', '996251.05', '1006851.05', NULL, 'fghsdg sgsfdg', '4324', '4234234', '23432423423', 2, '2025-07-26 19:17:58', '2025-07-26 22:00:40', '2025-07-27 00:00:40', NULL, NULL, NULL),
(13, 30, 18, '250726OJ17nH66', '300', '515', '815', '85585', '86400', NULL, 'From my investment', NULL, NULL, NULL, 2, '2025-07-26 19:34:00', '2025-07-26 22:00:34', '2025-07-27 00:00:34', '1FUu3zcAZT4YbBRvxeAo1EeBjURdhHkjkc', 'Bitcoin', NULL),
(14, 30, 17, '250726557xUA42', '344', '255.16', '599.16', '84985.84', '85585', NULL, 'Investment', '1234', '8080454602', 'Fredrick thiona', 2, '2025-07-26 19:37:07', '2025-07-26 22:00:21', '2025-07-27 00:00:21', NULL, NULL, NULL),
(15, 38, 17, '250728YDEj9p29', '1500', '272.5', '1772.5', '227.5', '2000', NULL, 'Retirando el dinero', '12345', '1311701970', 'Cynthya Bauer Zarco', 0, '2025-07-27 22:23:11', '2025-07-27 22:23:11', NULL, NULL, NULL, NULL),
(16, 30, 20, '250728AjeVw325', '500.00', '0', '500', '85900', '86400', NULL, NULL, 'Private', 'Private', 'universalMarketing', 0, '2025-07-28 13:50:07', '2025-07-28 13:50:07', NULL, NULL, NULL, NULL),
(17, 39, 18, '250730fQsSLv82', '5000', '750', '5750', '2502', '8252', NULL, NULL, NULL, NULL, NULL, 0, '2025-07-30 00:53:25', '2025-07-30 00:53:25', NULL, '13PGMCe14WzjZ3VXJtgs2qoEkUCYAj12FX', 'Bitcoin', NULL),
(18, 21, 23, '250731pJW8k845', '1000', '235', '1235', '1016616.05', '1017851.05', NULL, 'fdsfsd sfadasdasd', NULL, NULL, NULL, 0, '2025-07-31 17:09:53', '2025-07-31 17:09:53', NULL, NULL, '4535', NULL),
(19, 31, 22, '250731YX1Tvp65', '2500', '425', '2925', '182', '3107.00', NULL, NULL, NULL, NULL, NULL, 2, '2025-07-31 21:51:29', '2025-07-31 21:59:29', '2025-07-31 23:59:29', NULL, 'Tron TRC20', NULL),
(20, 31, 18, '250801MynWQz27', '2200', '610', '2810', '297', '3107', NULL, NULL, NULL, NULL, NULL, 1, '2025-07-31 22:12:50', '2025-08-25 23:40:06', '2025-08-26 01:40:06', NULL, 'Bitcoin', NULL),
(21, 44, 22, '250820RyqDHW79', '20000', '1000', '21000', '1576', '22576.00', NULL, NULL, NULL, NULL, NULL, 0, '2025-08-20 18:14:46', '2025-08-20 18:14:46', NULL, NULL, 'USTD', NULL),
(22, 30, 17, '250821JsfGMs39', '300', '254.5', '554.5', '85345.5', '85900', NULL, NULL, 'Dyfe355', '5764477467', 'John mark', 1, '2025-08-21 11:57:12', '2025-08-21 12:33:37', '2025-08-21 14:33:37', NULL, NULL, NULL),
(23, 43, 17, '2508211zQWWO80', '11000', '415', '11415', '4939', '16354.00', NULL, NULL, '000000', '62717623476', 'Smart Account', 1, '2025-08-21 12:01:37', '2025-08-21 12:33:30', '2025-08-21 14:33:30', NULL, NULL, NULL),
(24, 30, 20, '2508275wJOp061', '0.00', '0', '0', '85345.5', '85345.5', NULL, NULL, 'Private', 'Private', 'universalMarketing', 0, '2025-08-27 01:09:17', '2025-08-27 01:09:17', NULL, NULL, NULL, NULL),
(25, 30, 20, '250827axwlQw13', '500.00', '0', '500', '84845.5', '85345.5', NULL, NULL, 'Private', 'Private', 'universalMarketing', 0, '2025-08-27 14:44:28', '2025-08-27 14:44:28', NULL, NULL, NULL, NULL),
(26, 30, 20, '250827NyEVtg56', '0.00', '0', '0', '84845.5', '84845.5', NULL, NULL, 'Private', 'Private', 'universalMarketing', 1, '2025-08-27 14:45:06', '2025-09-27 05:08:59', '2025-09-27 07:08:59', NULL, NULL, NULL),
(27, 30, 18, '250927Vf86Is41', '500', '25', '525', '475', '1000.00', NULL, NULL, NULL, NULL, NULL, 1, '2025-09-26 22:31:45', '2025-09-27 05:07:31', '2025-09-27 07:07:31', NULL, 'Sfffd', NULL),
(28, 48, 18, '250927pyg35m89', '700', '35', '735', '765', '1500.00', NULL, NULL, NULL, NULL, NULL, 1, '2025-09-26 22:32:33', '2025-09-27 05:07:07', '2025-09-27 07:07:07', NULL, 'Bitcoin', NULL),
(29, 30, 20, '250928XOhvJ467', '0.00', '0', '0', '475', '475', NULL, NULL, 'Private', 'Private', 'universalMarketing', 0, '2025-09-28 05:23:54', '2025-09-28 05:23:54', NULL, NULL, NULL, NULL),
(30, 50, 20, '2510040r5JLL61', '0.00', '0', '0', '87493', '87493.00', NULL, NULL, 'Private', 'Private', 'universalMarketing', 0, '2025-10-04 18:03:48', '2025-10-04 18:03:48', NULL, NULL, NULL, NULL),
(31, 50, 17, '251004mQvMqU28', '50000', '1000', '51000', '36493', '87493', NULL, NULL, 'FIRNZAJJ', '53150007632', 'First National Bank', 0, '2025-10-04 20:21:43', '2025-10-04 20:21:43', NULL, NULL, NULL, NULL),
(32, 32, 17, '251008gd3tmQ51', '25000', '625', '25625', '170', '25795', NULL, 'Capitec bank\r\nSavings account\r\n1717988901', 'CABLZAJJ', '1717988901', 'Colin Motshweneng', 1, '2025-10-08 17:27:15', '2025-10-09 20:54:21', '2025-10-09 22:54:21', NULL, NULL, NULL),
(33, 30, 20, '260108dtjDiu32', '500.00', '0', '500', '99500', '100000', NULL, NULL, 'Private', 'Private', 'universalMarketing', 0, '2026-01-08 20:15:40', '2026-01-08 20:15:40', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_balances`
--
ALTER TABLE `admin_balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notify_id` (`notify_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `basic_settings`
--
ALTER TABLE `basic_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choses`
--
ALTER TABLE `choses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compounds`
--
ALTER TABLE `compounds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_stocks`
--
ALTER TABLE `default_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funds`
--
ALTER TABLE `funds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fund_logs`
--
ALTER TABLE `fund_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc`
--
ALTER TABLE `kyc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kyc_user` (`user_id`);

--
-- Indexes for table `latter_user`
--
ALTER TABLE `latter_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `letters`
--
ALTER TABLE `letters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `letter_user`
--
ALTER TABLE `letter_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `letter_user_letter_id_foreign` (`letter_id`),
  ADD KEY `letter_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `manual_banks`
--
ALTER TABLE `manual_banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manual_funds`
--
ALTER TABLE `manual_funds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manual_fund_logs`
--
ALTER TABLE `manual_fund_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manual_payments`
--
ALTER TABLE `manual_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manual_wallets`
--
ALTER TABLE `manual_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profits`
--
ALTER TABLE `profits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promos`
--
ALTER TABLE `promos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rebeat_logs`
--
ALTER TABLE `rebeat_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `references`
--
ALTER TABLE `references`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `repeats`
--
ALTER TABLE `repeats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statements`
--
ALTER TABLE `statements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_stock_unique` (`user_id`,`stock_id`),
  ADD KEY `fk_user_stock_stock_id` (`stock_id`);

--
-- Indexes for table `strategies`
--
ALTER TABLE `strategies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trades`
--
ALTER TABLE `trades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `fk_users_plan` (`plan_id`);

--
-- Indexes for table `user_balances`
--
ALTER TABLE `user_balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_balances`
--
ALTER TABLE `admin_balances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `basic_settings`
--
ALTER TABLE `basic_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `choses`
--
ALTER TABLE `choses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `compounds`
--
ALTER TABLE `compounds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `default_stocks`
--
ALTER TABLE `default_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `funds`
--
ALTER TABLE `funds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fund_logs`
--
ALTER TABLE `fund_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kyc`
--
ALTER TABLE `kyc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `latter_user`
--
ALTER TABLE `latter_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `letters`
--
ALTER TABLE `letters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `letter_user`
--
ALTER TABLE `letter_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `manual_banks`
--
ALTER TABLE `manual_banks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `manual_funds`
--
ALTER TABLE `manual_funds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `manual_fund_logs`
--
ALTER TABLE `manual_fund_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `manual_payments`
--
ALTER TABLE `manual_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `manual_wallets`
--
ALTER TABLE `manual_wallets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profits`
--
ALTER TABLE `profits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promos`
--
ALTER TABLE `promos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rebeat_logs`
--
ALTER TABLE `rebeat_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `references`
--
ALTER TABLE `references`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `repeats`
--
ALTER TABLE `repeats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `statements`
--
ALTER TABLE `statements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `strategies`
--
ALTER TABLE `strategies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trades`
--
ALTER TABLE `trades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `user_balances`
--
ALTER TABLE `user_balances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attachments`
--
ALTER TABLE `attachments`
  ADD CONSTRAINT `attachments_ibfk_1` FOREIGN KEY (`notify_id`) REFERENCES `notification` (`id`),
  ADD CONSTRAINT `attachments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `kyc`
--
ALTER TABLE `kyc`
  ADD CONSTRAINT `fk_kyc_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `letter_user`
--
ALTER TABLE `letter_user`
  ADD CONSTRAINT `letter_user_letter_id_foreign` FOREIGN KEY (`letter_id`) REFERENCES `letters` (`id`),
  ADD CONSTRAINT `letter_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `fk_user_stock_stock_id` FOREIGN KEY (`stock_id`) REFERENCES `default_stocks` (`id`),
  ADD CONSTRAINT `fk_user_stock_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `trades`
--
ALTER TABLE `trades`
  ADD CONSTRAINT `trades_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_plan` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
