-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 16, 2024 at 06:43 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead`
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
(1, 'thesoftking', 'admin', '1498665028.png', 'admin@thesoftking.com', '$2y$10$rsDrYhqnerYVEKNfZXa8yO4Q0Rx.FKBsW6a9XlPts2fDBVZa/hhFe', '4RQzHke0gJsIojV7iDKQHVNwwH7USsOP9cv3IsnotBQdv5Wj4jA1wvbY5Zy4', NULL, '2017-06-29 02:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `admin_balances`
--

CREATE TABLE `admin_balances` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `balance_type` tinyint(4) NOT NULL,
  `balance` varchar(191) NOT NULL,
  `details` text NOT NULL,
  `charge` varchar(191) DEFAULT NULL,
  `new_balance` varchar(191) NOT NULL,
  `old_balance` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '9902.195', '0', 1, 0.00, 'GPseDxW8C7Mu', 1, 1, 1, '6LdFKSYUAAAAAJJfjbcLkq4YZVU9mJKZR9KRkakU', '6LdFKSYUAAAAAM0mPnEJFkfjj8G2TmTd-fg2D4dI', 'USD', '$', 'smtp', 'smtp.gmail.com', '465', 'hascmrpi@gmail.com', 'lrowxemhrmjarcon', 'ssl', NULL, '2024-07-13 17:08:35');

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
(1, 'Hourly', '1', '2017-06-12 18:25:25', '2017-06-12 18:25:25'),
(2, 'Daily', '24', '2017-06-12 18:31:33', '2017-06-12 18:33:14'),
(3, 'Weekly', '168', '2017-06-12 18:33:30', '2017-06-12 18:33:30'),
(4, 'Monthly', '720', '2017-06-12 18:35:58', '2017-06-12 18:36:30');

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
(1, 'EURUSD', 0.00, 'FX:EURUSD', 1, 'wallet_TD7CYVPPYA', 20.20, '2024-07-07 19:46:23', '2024-07-14 00:14:39'),
(2, 'BTCUSD', 0.00, 'COINBASE:BTCUSD', 0, 'wallet_7GUUMP7KKP', 40.20, '2024-07-07 19:46:23', '2024-07-07 19:46:23');

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
  `charge` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
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
  `fix` varchar(100) DEFAULT NULL,
  `percent` varchar(100) DEFAULT NULL,
  `btc_amo` varchar(100) DEFAULT NULL,
  `btc_acc` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `title`, `logo`, `color`, `favicon`, `address`, `email`, `number`, `top_one`, `top_two`, `facebook`, `twitter`, `linkedin`, `google_plus`, `youtube`, `about_text`, `footer_bottom_text`, `created_at`, `updated_at`) VALUES
(1, 'Softking HYIP', 'logo.png', '181d28', '1496686053.png', '11/3 Garden Street, Ring Road, Shyamoli, Dhaka', 'admin@rexbd.net', '+88-01716-441700', 'INNOVATIVE TRADE TOOLS', 'ARE ALREADY HERE AT YOUR FINGERTIPS', 'http://www.facebook.com/thesoftking', 'http://www.twitter/thesoftking', 'http://linkdin.com/thesoftking', 'http://plus.google.com/thesoftking', 'http://youtube.com/thesoftking', '<p>Welcome to Softking HYIP, your premier destination for top-tier investment services and seamless loan solutions. We pride ourselves on offering innovative financial products designed to meet the diverse needs of our esteemed clients. Our commitment to excellence and personalized service has earned us a reputation for reliability and success in the financial markets.</p><p>Our clients consistently praise us for our dedication, expertise, and the remarkable results we deliver. We offer a range of investment services with a guaranteed 100% return on investment (ROI), leveraging cutting-edge trading strategies and in-depth market analysis. Our team of experienced professionals is committed to guiding you through the complexities of the financial world, ensuring that your investments yield the highest returns.</p><p>At Softking HYIP, we believe in fostering long-term relationships built on trust and transparency. Our seamless loan solutions are designed to provide the financial support you need to capitalize on investment opportunities and achieve your financial goals. We are more than just an investment platform; we are your partners in financial success.</p><p>Join us at Softking HYIP and experience the confidence of investing with a trusted and innovative partner. Let us help you navigate the financial markets and secure a prosperous future.</p>', '© All copyright Reserved.', NULL, '2024-07-15 10:54:06');

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
(1, 'failed txt record', 'hgvjhgkjkjhkhkjhkhk', '2024-07-14 01:36:55', '2024-07-14 01:36:55'),
(2, 'failed txt record', 'dsfdsfsd fdsfsd fdsf sdf sdfd', '2024-07-14 01:38:42', '2024-07-14 01:38:42'),
(3, 'failed txt record', 'ewqe wqeqweqw eqweqwew', '2024-07-14 01:45:58', '2024-07-14 01:45:58');

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
(1, 1, 21, NULL, NULL),
(2, 2, 21, NULL, NULL),
(3, 3, 21, NULL, NULL);

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
(1, 'Sonali bank', 'Hasan Rahmnan', '54542121233256554454', '5585965825412522', '2000', '200000', '200', '2.5', 1, '2017-06-23 08:06:34', '2017-06-26 05:32:43'),
(2, 'first bank Airtel', 'Fast Bank', '3088154504', '0', '20000', '200000', '200', '3.0', 0, '2017-06-23 08:14:03', '2024-07-12 22:31:31'),
(3, 'Agroni Bank', 'Abir Khan', '7412589632541', '456236598521452', '2000', '100000', '500', '2.5', 1, '2017-06-23 08:18:44', '2017-06-26 05:33:02'),
(4, 'Naira Bank', 'Naira Rahman', '4522365241252', '5214225365212253', '2000', '500000', '400', '2.5', 1, '2017-06-24 18:40:23', '2024-07-13 19:00:55');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manual_payments`
--

INSERT INTO `manual_payments` (`id`, `title`, `method_time`, `method_fix`, `method_percent`, `method_min`, `method_max`, `status`, `created_at`, `updated_at`) VALUES
(16, 'Bank payment', '2', '500', '0', '10000', '100000', 1, '2017-06-14 22:55:29', '2017-07-01 19:16:21'),
(17, 'Mobile Banking', '1', '0', '2.5', '200', '2000', 1, '2017-06-14 23:12:05', '2017-07-01 19:16:26'),
(18, 'Bitcoin', '1', '0', '5', '5000', '50000', 1, '2017-06-24 18:52:16', '2017-07-01 19:16:31'),
(19, 'Perfect Money', '1', '200', '3', '32000', '320000', 0, '2017-06-27 02:54:47', '2024-07-14 03:02:55'),
(20, 'Upgrade', '0', '0', '0', '0', '100000000', 0, '2017-06-27 02:54:47', '2017-07-01 19:14:28');

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
(1, 'Alice bob', '1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa', 'Bitcoin', '0.01', '10', '0.5', '2', 0, '2024-06-18 07:43:13', '2024-07-13 19:11:50'),
(2, 'Bob', '0xde0B295669a9FD93d5F28D9Ec85E40f4cb697BAe', 'Ethereum', '0.1', '50', '1', '1.5', 1, '2024-06-18 07:43:13', '2024-06-18 07:43:13'),
(3, 'Charlie', '3J98t1WpEZ73CNmQviecrnyiWrnqRhWNLy', 'Bitcoin', '0.02', '20', '0.7', '1.8', 1, '2024-06-18 07:43:13', '2024-06-18 07:43:13'),
(4, 'Dave', '0x742d35Cc6634C0532925a3b844Bc454e4438f44e', 'Ethereum', '0.05', '100', '2', '1.2', 1, '2024-06-18 07:43:13', '2024-07-12 20:25:36'),
(5, 'Eve', 'bc1qw508d6qe9gqsv2k5r3zarvary0c5xw7kzss0k', 'Bitcoin', '0.03', '30', '1', '2.5', 1, '2024-06-18 07:43:13', '2024-06-18 07:43:13');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(15, '2017_06_12_181403_create_funds_table', 7),
(16, '2017_06_12_235725_create_compounds_table', 8),
(22, '2017_06_13_103236_create_deposits_table', 9),
(23, '2017_06_13_114907_create_repeats_table', 9),
(25, '2017_06_14_044451_create_user_balances_table', 10),
(26, '2017_06_14_151819_create_rebeat_logs_table', 11),
(28, '2017_06_14_165531_create_fund_logs_table', 12),
(29, '2017_06_15_171929_create_withdraws_table', 13),
(30, '2017_06_16_045611_create_references_table', 14),
(32, '2017_06_16_050737_create_admin_balances_table', 15),
(33, '2017_06_18_071547_create_letters_table', 16),
(34, '2017_06_18_071731_create_letter_user_table', 16),
(35, '2017_06_19_072304_create_strategies_table', 17),
(36, '2017_06_19_140553_create_pages_table', 18),
(37, '2024_06_17_055557_add_additional_fields_to_users_table', 19);

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

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `about` longblob NOT NULL,
  `faq` blob NOT NULL,
  `document` blob NOT NULL,
  `bankbook` blob NOT NULL,
  `terms` blob NOT NULL,
  `privacy` blob NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `about`, `faq`, `document`, `bankbook`, `terms`, `privacy`, `created_at`, `updated_at`) VALUES
(1, 0x3c7020636c6173733d22703122207374796c653d226d617267696e2d626f74746f6d3a203070783b20666f6e742d76617269616e742d6e756d657269633a206e6f726d616c3b20666f6e742d76617269616e742d656173742d617369616e3a206e6f726d616c3b20666f6e742d76617269616e742d616c7465726e617465733a206e6f726d616c3b20666f6e742d6b65726e696e673a206175746f3b20666f6e742d6f70746963616c2d73697a696e673a206175746f3b20666f6e742d666561747572652d73657474696e67733a206e6f726d616c3b20666f6e742d766172696174696f6e2d73657474696e67733a206e6f726d616c3b20666f6e742d76617269616e742d706f736974696f6e3a206e6f726d616c3b20666f6e742d737472657463683a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b20636f6c6f723a2072676228302c20302c2030293b223e3c666f6e7420666163653d22636f7572696572206e657722207374796c653d22222073697a653d2236223e4f75722053746f72793f3c2f666f6e743e3c2f703e3c6834207374796c653d226d617267696e2d626f74746f6d3a203070783b20666f6e742d76617269616e742d6e756d657269633a206e6f726d616c3b20666f6e742d76617269616e742d656173742d617369616e3a206e6f726d616c3b20666f6e742d76617269616e742d616c7465726e617465733a206e6f726d616c3b20666f6e742d6b65726e696e673a206175746f3b20666f6e742d6f70746963616c2d73697a696e673a206175746f3b20666f6e742d666561747572652d73657474696e67733a206e6f726d616c3b20666f6e742d766172696174696f6e2d73657474696e67733a206e6f726d616c3b20666f6e742d76617269616e742d706f736974696f6e3a206e6f726d616c3b20666f6e742d737472657463683a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b20636f6c6f723a2072676228302c20302c2030293b223e3c7370616e207374796c653d22636f6c6f723a207267622835352c2036322c203734293b20746578742d616c69676e3a206a7573746966793b223e3c666f6e742073697a653d223422207374796c653d222220666163653d2267656f72676961223e4f75722073746f727920626567616e2077697468206120766973696f6e20746f207265766f6c7574696f6e697a6520686f7720696e766573746d656e747320617265206d616e616765642c2064726976656e20627920612070617373696f6e20666f7220656d706f776572696e6720696e646976696475616c7320746f20616368696576652074686569722066696e616e6369616c20647265616d732e20466f756e646564205b582079656172732061676f5d2c2077652073746172746564206173206120736d616c6c207465616d2064656469636174656420746f2064656c69766572696e6720706572736f6e616c697a656420696e766573746d656e7420736f6c7574696f6e73207769746820696e7465677269747920616e64207472616e73706172656e63792e204f766572207468652079656172732c20776520686176652067726f776e20696e746f2061207472757374656420706172746e65722c2067756964696e67206f757220636c69656e7473207468726f756768206d61726b657420666c756374756174696f6e7320616e642066696e616e6369616c20636f6d706c65786974696573207769746820756e7761766572696e6720636f6d6d69746d656e742e204f7572206a6f75726e657920697320646566696e656420627920696e6e6f766174696f6e2c20636c69656e742d63656e747269636974792c20616e6420612072656c656e746c6573732070757273756974206f6620657863656c6c656e636520696e20696e766573746d656e74206d616e6167656d656e742e3c2f666f6e743e3c2f7370616e3e3c2f68343e3c626c6f636b71756f7465207374796c653d226d617267696e3a20302030203020343070783b20626f726465723a206e6f6e653b2070616464696e673a203070783b223e3c626c6f636b71756f7465207374796c653d226d617267696e3a20302030203020343070783b20626f726465723a206e6f6e653b2070616464696e673a203070783b223e3c7370616e207374796c653d22636f6c6f723a2072676228302c20302c2030293b20746578742d616c69676e3a206a7573746966793b223e3c646976207374796c653d22746578742d616c69676e3a206a7573746966793b223e3c7020636c6173733d22703122207374796c653d226d617267696e2d626f74746f6d3a203070783b20666f6e742d76617269616e742d6e756d657269633a206e6f726d616c3b20666f6e742d76617269616e742d656173742d617369616e3a206e6f726d616c3b20666f6e742d76617269616e742d616c7465726e617465733a206e6f726d616c3b20666f6e742d6b65726e696e673a206175746f3b20666f6e742d6f70746963616c2d73697a696e673a206175746f3b20666f6e742d666561747572652d73657474696e67733a206e6f726d616c3b20666f6e742d766172696174696f6e2d73657474696e67733a206e6f726d616c3b20666f6e742d76617269616e742d706f736974696f6e3a206e6f726d616c3b20666f6e742d737472657463683a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b20746578742d616c69676e3a2073746172743b223e3c666f6e74207374796c653d222220666163653d22636f7572696572206e6577222073697a653d2236223e4d697373696f6e20616e6420566973696f6e3f3c2f666f6e743e3c2f703e3c2f6469763e3c2f7370616e3e3c2f626c6f636b71756f74653e3c626c6f636b71756f7465207374796c653d226d617267696e3a20302030203020343070783b20626f726465723a206e6f6e653b2070616464696e673a203070783b223e3c68343e3c666f6e7420666163653d2267656f72676961222073697a653d2234223e4f7572206d697373696f6e20697320746f20656d706f77657220636c69656e7473207769746820706572736f6e616c697a656420696e766573746d656e74207374726174656769657320746861742070726f6d6f74652066696e616e6369616c2067726f77746820616e642073656375726974792c2067756964656420627920696e7465677269747920616e64206578706572746973652e20576520656e766973696f6e206265636f6d696e6720746865207072656d6965722070726f7669646572206f6620696e6e6f76617469766520696e766573746d656e7420736f6c7574696f6e732c2072656e6f776e656420666f72206f757220636f6d6d69746d656e7420746f20657863656c6c656e63652c206574686963616c207072616374696365732c20616e6420636c69656e7420737563636573732e3c2f666f6e743e3c2f68343e3c626c6f636b71756f7465207374796c653d226d617267696e3a20302030203020343070783b20626f726465723a206e6f6e653b2070616464696e673a203070783b223e3c626c6f636b71756f7465207374796c653d226d617267696e3a20302030203020343070783b20626f726465723a206e6f6e653b2070616464696e673a203070783b223e3c626c6f636b71756f7465207374796c653d226d617267696e3a20302030203020343070783b20626f726465723a206e6f6e653b2070616464696e673a203070783b223e3c626c6f636b71756f7465207374796c653d226d617267696e3a20302030203020343070783b20626f726465723a206e6f6e653b2070616464696e673a203070783b223e3c626c6f636b71756f7465207374796c653d226d617267696e3a20302030203020343070783b20626f726465723a206e6f6e653b2070616464696e673a203070783b223e3c626c6f636b71756f7465207374796c653d226d617267696e3a20302030203020343070783b20626f726465723a206e6f6e653b2070616464696e673a203070783b223e3c626c6f636b71756f7465207374796c653d226d617267696e3a20302030203020343070783b20626f726465723a206e6f6e653b2070616464696e673a203070783b223e3c7370616e207374796c653d22636f6c6f723a2072676228302c20302c2030293b20746578742d616c69676e3a206a7573746966793b223e3c646976207374796c653d22746578742d616c69676e3a206a7573746966793b223e3c7020636c6173733d22703122207374796c653d22666f6e742d73697a653a20313370783b206d617267696e2d626f74746f6d3a203070783b20666f6e742d76617269616e742d6e756d657269633a206e6f726d616c3b20666f6e742d76617269616e742d656173742d617369616e3a206e6f726d616c3b20666f6e742d76617269616e742d616c7465726e617465733a206e6f726d616c3b20666f6e742d6b65726e696e673a206175746f3b20666f6e742d6f70746963616c2d73697a696e673a206175746f3b20666f6e742d666561747572652d73657474696e67733a206e6f726d616c3b20666f6e742d766172696174696f6e2d73657474696e67733a206e6f726d616c3b20666f6e742d76617269616e742d706f736974696f6e3a206e6f726d616c3b20666f6e742d737472657463683a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b20746578742d616c69676e3a2073746172743b223e3c666f6e7420666163653d2267656f72676961223e3c62723e3c2f666f6e743e3c2f703e3c2f6469763e3c2f7370616e3e3c2f626c6f636b71756f74653e3c2f626c6f636b71756f74653e3c2f626c6f636b71756f74653e3c2f626c6f636b71756f74653e3c2f626c6f636b71756f74653e3c2f626c6f636b71756f74653e3c2f626c6f636b71756f74653e3c2f626c6f636b71756f74653e3c2f626c6f636b71756f74653e3c7370616e207374796c653d22636f6c6f723a2072676228302c20302c2030293b20746578742d616c69676e3a206a7573746966793b223e3c646976207374796c653d22746578742d616c69676e3a206a7573746966793b223e3c7020636c6173733d22703122207374796c653d226d617267696e2d626f74746f6d3a203070783b20666f6e742d76617269616e742d6e756d657269633a206e6f726d616c3b20666f6e742d76617269616e742d656173742d617369616e3a206e6f726d616c3b20666f6e742d76617269616e742d616c7465726e617465733a206e6f726d616c3b20666f6e742d6b65726e696e673a206175746f3b20666f6e742d6f70746963616c2d73697a696e673a206175746f3b20666f6e742d666561747572652d73657474696e67733a206e6f726d616c3b20666f6e742d766172696174696f6e2d73657474696e67733a206e6f726d616c3b20666f6e742d76617269616e742d706f736974696f6e3a206e6f726d616c3b20666f6e742d737472657463683a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b20746578742d616c69676e3a2073746172743b223e3c666f6e742073697a653d223622207374796c653d222220666163653d22636f7572696572206e6577223e436f72652056616c7565733f3c2f666f6e743e3c2f703e3c6834207374796c653d226d617267696e2d626f74746f6d3a203070783b20666f6e742d76617269616e742d6e756d657269633a206e6f726d616c3b20666f6e742d76617269616e742d656173742d617369616e3a206e6f726d616c3b20666f6e742d76617269616e742d616c7465726e617465733a206e6f726d616c3b20666f6e742d6b65726e696e673a206175746f3b20666f6e742d6f70746963616c2d73697a696e673a206175746f3b20666f6e742d666561747572652d73657474696e67733a206e6f726d616c3b20666f6e742d766172696174696f6e2d73657474696e67733a206e6f726d616c3b20666f6e742d76617269616e742d706f736974696f6e3a206e6f726d616c3b20666f6e742d737472657463683a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b223e3c666f6e7420666163653d2267656f7267696122207374796c653d22222073697a653d2234223e417420746865206865617274206f66206f757220636f6d70616e792061726520636f72652076616c756573207468617420646566696e652077686f2077652061726520616e6420686f77207765206f7065726174652e20496e7465677269747920677569646573206576657279206465636973696f6e2c20656e737572696e67207472616e73706172656e637920616e642074727573742077697468206f757220636c69656e747320616e6420706172746e6572732e20496e6e6f766174696f6e2064726976657320757320746f20636f6e74696e75616c6c7920696d70726f766520616e6420616461707420746f207468652064796e616d6963206c616e647363617065206f6620696e766573746d656e74206d616e6167656d656e742e20436c69656e742d63656e7472696369747920697320706172616d6f756e74e280947765207072696f726974697a6520756e6465727374616e64696e6720616e64206d656574696e672074686520756e69717565206e65656473206f66206561636820696e646976696475616c2077652073657276652e20436f6c6c61626f726174696f6e206675656c73206f757220737563636573732c20666f73746572696e67207465616d776f726b20616e6420736861726564206578706572746973652077697468696e206f7572206f7267616e697a6174696f6e2e204163636f756e746162696c69747920686f6c647320757320746f207468652068696768657374207374616e64617264732c20656e737572696e672077652064656c69766572206f6e206f75722070726f6d6973657320776974682064696c6967656e636520616e6420726573706f6e736962696c6974792e2054686573652076616c75657320636f6c6c6563746976656c7920696e7370697265206f7572206461696c7920616374696f6e7320616e6420646566696e65206f757220636f6d6d69746d656e7420746f20657863656c6c656e636520696e2065766572797468696e6720776520646f2e3c2f666f6e743e3c62723e3c2f68343e3c6834207374796c653d226d617267696e2d626f74746f6d3a203070783b20666f6e742d76617269616e742d6e756d657269633a206e6f726d616c3b20666f6e742d76617269616e742d656173742d617369616e3a206e6f726d616c3b20666f6e742d76617269616e742d616c7465726e617465733a206e6f726d616c3b20666f6e742d6b65726e696e673a206175746f3b20666f6e742d6f70746963616c2d73697a696e673a206175746f3b20666f6e742d666561747572652d73657474696e67733a206e6f726d616c3b20666f6e742d766172696174696f6e2d73657474696e67733a206e6f726d616c3b20666f6e742d76617269616e742d706f736974696f6e3a206e6f726d616c3b20666f6e742d737472657463683a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b223e3c666f6e7420666163653d2267656f7267696122207374796c653d22666f6e742d73697a653a20313370783b223e3c62723e3c2f666f6e743e3c2f68343e3c2f6469763e3c2f7370616e3e3c626c6f636b71756f7465207374796c653d226d617267696e3a20302030203020343070783b20626f726465723a206e6f6e653b2070616464696e673a203070783b223e3c7370616e207374796c653d22636f6c6f723a2072676228302c20302c2030293b20746578742d616c69676e3a206a7573746966793b223e3c646976207374796c653d22746578742d616c69676e3a206a7573746966793b223e3c6834207374796c653d226d617267696e2d626f74746f6d3a203070783b20666f6e742d76617269616e742d6e756d657269633a206e6f726d616c3b20666f6e742d76617269616e742d656173742d617369616e3a206e6f726d616c3b20666f6e742d76617269616e742d616c7465726e617465733a206e6f726d616c3b20666f6e742d6b65726e696e673a206175746f3b20666f6e742d6f70746963616c2d73697a696e673a206175746f3b20666f6e742d666561747572652d73657474696e67733a206e6f726d616c3b20666f6e742d766172696174696f6e2d73657474696e67733a206e6f726d616c3b20666f6e742d76617269616e742d706f736974696f6e3a206e6f726d616c3b20666f6e742d737472657463683a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b223e3c7020636c6173733d22703122207374796c653d226d617267696e2d626f74746f6d3a203070783b20666f6e742d76617269616e742d6e756d657269633a206e6f726d616c3b20666f6e742d76617269616e742d656173742d617369616e3a206e6f726d616c3b20666f6e742d76617269616e742d616c7465726e617465733a206e6f726d616c3b20666f6e742d6b65726e696e673a206175746f3b20666f6e742d6f70746963616c2d73697a696e673a206175746f3b20666f6e742d666561747572652d73657474696e67733a206e6f726d616c3b20666f6e742d766172696174696f6e2d73657474696e67733a206e6f726d616c3b20666f6e742d76617269616e742d706f736974696f6e3a206e6f726d616c3b20666f6e742d737472657463683a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b20636f6c6f723a2072676228302c20302c2030293b20746578742d616c69676e3a2073746172743b223e3c666f6e742073697a653d223622207374796c653d222220666163653d22636f7572696572206e6577223e416368696576656d656e743f3c2f666f6e743e3c2f703e3c2f68343e3c2f6469763e3c2f7370616e3e3c68343e3c7370616e207374796c653d22636f6c6f723a2072676228302c20302c2030293b20746578742d616c69676e3a206a7573746966793b223e3c666f6e742073697a653d223422207374796c653d222220666163653d2267656f72676961223e5468726f7567686f7574206f7572206a6f75726e65792c2077652776652063656c65627261746564207369676e69666963616e74206d696c6573746f6e657320616e64206163636f6d706c6973686d656e74732074686174207265666c656374206f75722064656469636174696f6e20746f20636c69656e74207375636365737320616e6420696e6e6f766174696f6e20696e20696e766573746d656e74206d616e6167656d656e742e20546865736520616368696576656d656e747320696e636c75646520657870616e64696e67206f757220636c69656e7420626173652c206c61756e6368696e6720696e6e6f7661746976652066696e616e6369616c2070726f64756374732c206561726e696e6720696e647573747279207265636f676e6974696f6e20666f7220657863656c6c656e63652c20616e6420636f6e73697374656e746c792064656c69766572696e6720657863657074696f6e616c2072657475726e73206f6e20696e766573746d656e742e2045616368206d696c6573746f6e65207265696e666f72636573206f757220636f6d6d69746d656e7420746f2073757270617373696e67206578706563746174696f6e7320616e642073657474696e67206e6577207374616e646172647320696e207468652066696e616e6369616c20736572766963657320696e6475737472792e3c2f666f6e743e3c2f7370616e3e3c2f68343e3c626c6f636b71756f7465207374796c653d226d617267696e3a20302030203020343070783b20626f726465723a206e6f6e653b2070616464696e673a203070783b223e3c7370616e207374796c653d22636f6c6f723a2072676228302c20302c2030293b20746578742d616c69676e3a206a7573746966793b223e3c646976207374796c653d22746578742d616c69676e3a206a7573746966793b223e3c6834207374796c653d226d617267696e2d626f74746f6d3a203070783b20666f6e742d76617269616e742d6e756d657269633a206e6f726d616c3b20666f6e742d76617269616e742d656173742d617369616e3a206e6f726d616c3b20666f6e742d76617269616e742d616c7465726e617465733a206e6f726d616c3b20666f6e742d6b65726e696e673a206175746f3b20666f6e742d6f70746963616c2d73697a696e673a206175746f3b20666f6e742d666561747572652d73657474696e67733a206e6f726d616c3b20666f6e742d766172696174696f6e2d73657474696e67733a206e6f726d616c3b20666f6e742d76617269616e742d706f736974696f6e3a206e6f726d616c3b20666f6e742d737472657463683a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b223e3c6834207374796c653d22666f6e742d73697a653a20313370783b206d617267696e2d626f74746f6d3a203070783b20666f6e742d76617269616e742d6e756d657269633a206e6f726d616c3b20666f6e742d76617269616e742d656173742d617369616e3a206e6f726d616c3b20666f6e742d76617269616e742d616c7465726e617465733a206e6f726d616c3b20666f6e742d6b65726e696e673a206175746f3b20666f6e742d6f70746963616c2d73697a696e673a206175746f3b20666f6e742d666561747572652d73657474696e67733a206e6f726d616c3b20666f6e742d766172696174696f6e2d73657474696e67733a206e6f726d616c3b20666f6e742d76617269616e742d706f736974696f6e3a206e6f726d616c3b20666f6e742d737472657463683a206e6f726d616c3b206c696e652d6865696768743a206e6f726d616c3b20636f6c6f723a2072676228302c20302c2030293b223e3c666f6e7420666163653d2267656f72676961223e3c62723e3c2f666f6e743e3c2f68343e3c2f68343e3c2f6469763e3c2f7370616e3e3c2f626c6f636b71756f74653e3c2f626c6f636b71756f74653e3c626c6f636b71756f7465207374796c653d226d617267696e3a20302030203020343070783b20626f726465723a206e6f6e653b2070616464696e673a203070783b223e3c626c6f636b71756f7465207374796c653d226d617267696e3a20302030203020343070783b20626f726465723a206e6f6e653b2070616464696e673a203070783b223e3c626c6f636b71756f7465207374796c653d226d617267696e3a20302030203020343070783b20626f726465723a206e6f6e653b2070616464696e673a203070783b223e3c626c6f636b71756f7465207374796c653d226d617267696e3a20302030203020343070783b20626f726465723a206e6f6e653b2070616464696e673a203070783b223e3c626c6f636b71756f7465207374796c653d226d617267696e3a20302030203020343070783b20626f726465723a206e6f6e653b2070616464696e673a203070783b223e3c626c6f636b71756f7465207374796c653d226d617267696e3a20302030203020343070783b20626f726465723a206e6f6e653b2070616464696e673a203070783b223e3c626c6f636b71756f7465207374796c653d226d617267696e3a20302030203020343070783b20626f726465723a206e6f6e653b2070616464696e673a203070783b223e3c2f626c6f636b71756f74653e3c2f626c6f636b71756f74653e3c2f626c6f636b71756f74653e3c2f626c6f636b71756f74653e3c2f626c6f636b71756f74653e3c2f626c6f636b71756f74653e3c2f626c6f636b71756f74653e, 0x3c646976207374796c653d226d617267696e3a203070782031342e333930367078203070782032382e3739363970783b2070616464696e673a203070783b2077696474683a203433362e37393770783b20666c6f61743a206c6566743b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b223e3c6832207374796c653d226d617267696e3a203070782030707820313070783b2070616464696e673a203070783b206c696e652d6865696768743a20323470783b20666f6e742d66616d696c793a204461757068696e506c61696e3b20666f6e742d73697a653a20323470783b223e57686174206973204c6f72656d20497073756d3f3c2f68323e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b223e3c7374726f6e67207374796c653d226d617267696e3a203070783b2070616464696e673a203070783b223e4c6f72656d20497073756d3c2f7374726f6e673e266e6273703b69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e20497420686173207375727669766564206e6f74206f6e6c7920666976652063656e7475726965732c2062757420616c736f20746865206c65617020696e746f20656c656374726f6e6963207479706573657474696e672c2072656d61696e696e6720657373656e7469616c6c7920756e6368616e6765642e2049742077617320706f70756c61726973656420696e207468652031393630732077697468207468652072656c65617365206f66204c657472617365742073686565747320636f6e7461696e696e67204c6f72656d20497073756d2070617373616765732c20616e64206d6f726520726563656e746c792077697468206465736b746f70207075626c697368696e6720736f667477617265206c696b6520416c64757320506167654d616b657220696e636c7564696e672076657273696f6e73206f66204c6f72656d20497073756d2e3c2f703e3c2f6469763e3c646976207374796c653d226d617267696e3a203070782032382e373936397078203070782031342e3339303670783b2070616464696e673a203070783b2077696474683a203433362e37393770783b20666c6f61743a2072696768743b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b223e3c6832207374796c653d226d617267696e3a203070782030707820313070783b2070616464696e673a203070783b206c696e652d6865696768743a20323470783b20666f6e742d66616d696c793a204461757068696e506c61696e3b20666f6e742d73697a653a20323470783b223e57687920646f207765207573652069743f3c2f68323e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f703e3c2f6469763e3c6272207374796c653d226d617267696e3a203070783b2070616464696e673a203070783b20636c6561723a20626f74683b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b20746578742d616c69676e3a2063656e7465723b223e3c646976207374796c653d226d617267696e3a203070782031342e333930367078203070782032382e3739363970783b2070616464696e673a203070783b2077696474683a203433362e37393770783b20666c6f61743a206c6566743b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b223e3c6832207374796c653d226d617267696e3a203070782030707820313070783b2070616464696e673a203070783b206c696e652d6865696768743a20323470783b20666f6e742d66616d696c793a204461757068696e506c61696e3b20666f6e742d73697a653a20323470783b223e576865726520646f657320697420636f6d652066726f6d3f3c2f68323e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b223e436f6e747261727920746f20706f70756c61722062656c6965662c204c6f72656d20497073756d206973206e6f742073696d706c792072616e646f6d20746578742e2049742068617320726f6f747320696e2061207069656365206f6620636c6173736963616c204c6174696e206c6974657261747572652066726f6d2034352042432c206d616b696e67206974206f7665722032303030207965617273206f6c642e2052696368617264204d63436c696e746f636b2c2061204c6174696e2070726f666573736f722061742048616d7064656e2d5379646e657920436f6c6c65676520696e2056697267696e69612c206c6f6f6b6564207570206f6e65206f6620746865206d6f7265206f627363757265204c6174696e20776f7264732c20636f6e73656374657475722c2066726f6d2061204c6f72656d20497073756d20706173736167652c20616e6420676f696e67207468726f75676820746865206369746573206f662074686520776f726420696e20636c6173736963616c206c6974657261747572652c20646973636f76657265642074686520756e646f75627461626c6520736f757263652e204c6f72656d20497073756d20636f6d65732066726f6d2073656374696f6e7320312e31302e333220616e6420312e31302e3333206f66202264652046696e6962757320426f6e6f72756d206574204d616c6f72756d2220285468652045787472656d6573206f6620476f6f6420616e64204576696c292062792043696365726f2c207772697474656e20696e2034352042432e205468697320626f6f6b2069732061207472656174697365206f6e20746865207468656f7279206f66206574686963732c207665727920706f70756c617220647572696e67207468652052656e61697373616e63652e20546865206669727374206c696e65206f66204c6f72656d20497073756d2c20224c6f72656d20697073756d20646f6c6f722073697420616d65742e2e222c20636f6d65732066726f6d2061206c696e6520696e2073656374696f6e20312e31302e33322e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b223e546865207374616e64617264206368756e6b206f66204c6f72656d20497073756d20757365642073696e63652074686520313530307320697320726570726f64756365642062656c6f7720666f722074686f736520696e74657265737465642e2053656374696f6e7320312e31302e333220616e6420312e31302e33332066726f6d202264652046696e6962757320426f6e6f72756d206574204d616c6f72756d222062792043696365726f2061726520616c736f20726570726f647563656420696e207468656972206578616374206f726967696e616c20666f726d2c206163636f6d70616e69656420627920456e676c6973682076657273696f6e732066726f6d207468652031393134207472616e736c6174696f6e20627920482e205261636b68616d2e3c2f703e3c2f6469763e3c646976207374796c653d226d617267696e3a203070782032382e373936397078203070782031342e3339303670783b2070616464696e673a203070783b2077696474683a203433362e37393770783b20666c6f61743a2072696768743b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b223e3c6832207374796c653d226d617267696e3a203070782030707820313070783b2070616464696e673a203070783b206c696e652d6865696768743a20323470783b20666f6e742d66616d696c793a204461757068696e506c61696e3b20666f6e742d73697a653a20323470783b223e57686572652063616e20492067657420736f6d653f3c2f68323e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b223e546865726520617265206d616e7920766172696174696f6e73206f66207061737361676573206f66204c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f6e20696e20736f6d6520666f726d2c20627920696e6a65637465642068756d6f75722c206f722072616e646f6d6973656420776f72647320776869636820646f6e2774206c6f6f6b206576656e20736c696768746c792062656c69657661626c652e20496620796f752061726520676f696e6720746f2075736520612070617373616765206f66204c6f72656d20497073756d2c20796f75206e65656420746f20626520737572652074686572652069736e277420616e797468696e6720656d62617272617373696e672068696464656e20696e20746865206d6964646c65206f6620746578742e20416c6c20746865204c6f72656d20497073756d2067656e657261746f7273206f6e2074686520496e7465726e65742074656e6420746f2072657065617420707265646566696e6564206368756e6b73206173206e65636573736172792c206d616b696e6720746869732074686520666972737420747275652067656e657261746f72206f6e2074686520496e7465726e65742e204974207573657320612064696374696f6e617279206f66206f76657220323030204c6174696e20776f7264732c20636f6d62696e6564207769746820612068616e6466756c206f66206d6f64656c2073656e74656e636520737472756374757265732c20746f2067656e6572617465204c6f72656d20497073756d207768696368206c6f6f6b7320726561736f6e61626c652e205468652067656e657261746564204c6f72656d20497073756d206973207468657265666f726520616c7761797320667265652066726f6d2072657065746974696f6e2c20696e6a65637465642068756d6f75722c206f72206e6f6e2d636861726163746572697374696320776f726473206574632e3c2f703e3c2f6469763e, 0x3c646976207374796c653d226d617267696e3a203070782031342e333930367078203070782032382e3739363970783b2070616464696e673a203070783b2077696474683a203433362e37393770783b20666c6f61743a206c6566743b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b223e3c6832207374796c653d226d617267696e3a203070782030707820313070783b2070616464696e673a203070783b206c696e652d6865696768743a20323470783b20666f6e742d66616d696c793a204461757068696e506c61696e3b20666f6e742d73697a653a20323470783b223e57686174206973204c6f72656d20497073756d3f3c2f68323e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b223e3c7374726f6e67207374796c653d226d617267696e3a203070783b2070616464696e673a203070783b223e4c6f72656d20497073756d3c2f7374726f6e673e266e6273703b69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e20497420686173207375727669766564206e6f74206f6e6c7920666976652063656e7475726965732c2062757420616c736f20746865206c65617020696e746f20656c656374726f6e6963207479706573657474696e672c2072656d61696e696e6720657373656e7469616c6c7920756e6368616e6765642e2049742077617320706f70756c61726973656420696e207468652031393630732077697468207468652072656c65617365206f66204c657472617365742073686565747320636f6e7461696e696e67204c6f72656d20497073756d2070617373616765732c20616e64206d6f726520726563656e746c792077697468206465736b746f70207075626c697368696e6720736f667477617265206c696b6520416c64757320506167654d616b657220696e636c7564696e672076657273696f6e73206f66204c6f72656d20497073756d2e3c2f703e3c2f6469763e3c646976207374796c653d226d617267696e3a203070782032382e373936397078203070782031342e3339303670783b2070616464696e673a203070783b2077696474683a203433362e37393770783b20666c6f61743a2072696768743b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b223e3c6832207374796c653d226d617267696e3a203070782030707820313070783b2070616464696e673a203070783b206c696e652d6865696768743a20323470783b20666f6e742d66616d696c793a204461757068696e506c61696e3b20666f6e742d73697a653a20323470783b223e57687920646f207765207573652069743f3c2f68323e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f703e3c2f6469763e3c6272207374796c653d226d617267696e3a203070783b2070616464696e673a203070783b20636c6561723a20626f74683b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b20746578742d616c69676e3a2063656e7465723b223e3c646976207374796c653d226d617267696e3a203070782031342e333930367078203070782032382e3739363970783b2070616464696e673a203070783b2077696474683a203433362e37393770783b20666c6f61743a206c6566743b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b223e3c6832207374796c653d226d617267696e3a203070782030707820313070783b2070616464696e673a203070783b206c696e652d6865696768743a20323470783b20666f6e742d66616d696c793a204461757068696e506c61696e3b20666f6e742d73697a653a20323470783b223e576865726520646f657320697420636f6d652066726f6d3f3c2f68323e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b223e436f6e747261727920746f20706f70756c61722062656c6965662c204c6f72656d20497073756d206973206e6f742073696d706c792072616e646f6d20746578742e2049742068617320726f6f747320696e2061207069656365206f6620636c6173736963616c204c6174696e206c6974657261747572652066726f6d2034352042432c206d616b696e67206974206f7665722032303030207965617273206f6c642e2052696368617264204d63436c696e746f636b2c2061204c6174696e2070726f666573736f722061742048616d7064656e2d5379646e657920436f6c6c65676520696e2056697267696e69612c206c6f6f6b6564207570206f6e65206f6620746865206d6f7265206f627363757265204c6174696e20776f7264732c20636f6e73656374657475722c2066726f6d2061204c6f72656d20497073756d20706173736167652c20616e6420676f696e67207468726f75676820746865206369746573206f662074686520776f726420696e20636c6173736963616c206c6974657261747572652c20646973636f76657265642074686520756e646f75627461626c6520736f757263652e204c6f72656d20497073756d20636f6d65732066726f6d2073656374696f6e7320312e31302e333220616e6420312e31302e3333206f66202264652046696e6962757320426f6e6f72756d206574204d616c6f72756d2220285468652045787472656d6573206f6620476f6f6420616e64204576696c292062792043696365726f2c207772697474656e20696e2034352042432e205468697320626f6f6b2069732061207472656174697365206f6e20746865207468656f7279206f66206574686963732c207665727920706f70756c617220647572696e67207468652052656e61697373616e63652e20546865206669727374206c696e65206f66204c6f72656d20497073756d2c20224c6f72656d20697073756d20646f6c6f722073697420616d65742e2e222c20636f6d65732066726f6d2061206c696e6520696e2073656374696f6e20312e31302e33322e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b223e546865207374616e64617264206368756e6b206f66204c6f72656d20497073756d20757365642073696e63652074686520313530307320697320726570726f64756365642062656c6f7720666f722074686f736520696e74657265737465642e2053656374696f6e7320312e31302e333220616e6420312e31302e33332066726f6d202264652046696e6962757320426f6e6f72756d206574204d616c6f72756d222062792043696365726f2061726520616c736f20726570726f647563656420696e207468656972206578616374206f726967696e616c20666f726d2c206163636f6d70616e69656420627920456e676c6973682076657273696f6e732066726f6d207468652031393134207472616e736c6174696f6e20627920482e205261636b68616d2e3c2f703e3c2f6469763e3c646976207374796c653d226d617267696e3a203070782032382e373936397078203070782031342e3339303670783b2070616464696e673a203070783b2077696474683a203433362e37393770783b20666c6f61743a2072696768743b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b223e3c6832207374796c653d226d617267696e3a203070782030707820313070783b2070616464696e673a203070783b206c696e652d6865696768743a20323470783b20666f6e742d66616d696c793a204461757068696e506c61696e3b20666f6e742d73697a653a20323470783b223e57686572652063616e20492067657420736f6d653f3c2f68323e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b223e546865726520617265206d616e7920766172696174696f6e73206f66207061737361676573206f66204c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f6e20696e20736f6d6520666f726d2c20627920696e6a65637465642068756d6f75722c206f722072616e646f6d6973656420776f72647320776869636820646f6e2774206c6f6f6b206576656e20736c696768746c792062656c69657661626c652e20496620796f752061726520676f696e6720746f2075736520612070617373616765206f66204c6f72656d20497073756d2c20796f75206e65656420746f20626520737572652074686572652069736e277420616e797468696e6720656d62617272617373696e672068696464656e20696e20746865206d6964646c65206f6620746578742e20416c6c20746865204c6f72656d20497073756d2067656e657261746f7273206f6e2074686520496e7465726e65742074656e6420746f2072657065617420707265646566696e6564206368756e6b73206173206e65636573736172792c206d616b696e6720746869732074686520666972737420747275652067656e657261746f72206f6e2074686520496e7465726e65742e204974207573657320612064696374696f6e617279206f66206f76657220323030204c6174696e20776f7264732c20636f6d62696e6564207769746820612068616e6466756c206f66206d6f64656c2073656e74656e636520737472756374757265732c20746f2067656e6572617465204c6f72656d20497073756d207768696368206c6f6f6b7320726561736f6e61626c652e205468652067656e657261746564204c6f72656d20497073756d206973207468657265666f726520616c7761797320667265652066726f6d2072657065746974696f6e2c20696e6a65637465642068756d6f75722c206f72206e6f6e2d636861726163746572697374696320776f726473206574632e3c2f703e3c2f6469763e, 0x3c646976207374796c653d226d617267696e3a203070782031342e333930367078203070782032382e3739363970783b2070616464696e673a203070783b2077696474683a203433362e37393770783b20666c6f61743a206c6566743b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b223e3c6832207374796c653d226d617267696e3a203070782030707820313070783b2070616464696e673a203070783b206c696e652d6865696768743a20323470783b20666f6e742d66616d696c793a204461757068696e506c61696e3b20666f6e742d73697a653a20323470783b223e57686174206973204c6f72656d20497073756d3f3c2f68323e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b223e3c7374726f6e67207374796c653d226d617267696e3a203070783b2070616464696e673a203070783b223e4c6f72656d20497073756d3c2f7374726f6e673e266e6273703b69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e20497420686173207375727669766564206e6f74206f6e6c7920666976652063656e7475726965732c2062757420616c736f20746865206c65617020696e746f20656c656374726f6e6963207479706573657474696e672c2072656d61696e696e6720657373656e7469616c6c7920756e6368616e6765642e2049742077617320706f70756c61726973656420696e207468652031393630732077697468207468652072656c65617365206f66204c657472617365742073686565747320636f6e7461696e696e67204c6f72656d20497073756d2070617373616765732c20616e64206d6f726520726563656e746c792077697468206465736b746f70207075626c697368696e6720736f667477617265206c696b6520416c64757320506167654d616b657220696e636c7564696e672076657273696f6e73206f66204c6f72656d20497073756d2e3c2f703e3c2f6469763e3c646976207374796c653d226d617267696e3a203070782032382e373936397078203070782031342e3339303670783b2070616464696e673a203070783b2077696474683a203433362e37393770783b20666c6f61743a2072696768743b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b223e3c6832207374796c653d226d617267696e3a203070782030707820313070783b2070616464696e673a203070783b206c696e652d6865696768743a20323470783b20666f6e742d66616d696c793a204461757068696e506c61696e3b20666f6e742d73697a653a20323470783b223e57687920646f207765207573652069743f3c2f68323e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f703e3c2f6469763e3c6272207374796c653d226d617267696e3a203070783b2070616464696e673a203070783b20636c6561723a20626f74683b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b20746578742d616c69676e3a2063656e7465723b223e3c646976207374796c653d226d617267696e3a203070782031342e333930367078203070782032382e3739363970783b2070616464696e673a203070783b2077696474683a203433362e37393770783b20666c6f61743a206c6566743b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b223e3c6832207374796c653d226d617267696e3a203070782030707820313070783b2070616464696e673a203070783b206c696e652d6865696768743a20323470783b20666f6e742d66616d696c793a204461757068696e506c61696e3b20666f6e742d73697a653a20323470783b223e576865726520646f657320697420636f6d652066726f6d3f3c2f68323e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b223e436f6e747261727920746f20706f70756c61722062656c6965662c204c6f72656d20497073756d206973206e6f742073696d706c792072616e646f6d20746578742e2049742068617320726f6f747320696e2061207069656365206f6620636c6173736963616c204c6174696e206c6974657261747572652066726f6d2034352042432c206d616b696e67206974206f7665722032303030207965617273206f6c642e2052696368617264204d63436c696e746f636b2c2061204c6174696e2070726f666573736f722061742048616d7064656e2d5379646e657920436f6c6c65676520696e2056697267696e69612c206c6f6f6b6564207570206f6e65206f6620746865206d6f7265206f627363757265204c6174696e20776f7264732c20636f6e73656374657475722c2066726f6d2061204c6f72656d20497073756d20706173736167652c20616e6420676f696e67207468726f75676820746865206369746573206f662074686520776f726420696e20636c6173736963616c206c6974657261747572652c20646973636f76657265642074686520756e646f75627461626c6520736f757263652e204c6f72656d20497073756d20636f6d65732066726f6d2073656374696f6e7320312e31302e333220616e6420312e31302e3333206f66202264652046696e6962757320426f6e6f72756d206574204d616c6f72756d2220285468652045787472656d6573206f6620476f6f6420616e64204576696c292062792043696365726f2c207772697474656e20696e2034352042432e205468697320626f6f6b2069732061207472656174697365206f6e20746865207468656f7279206f66206574686963732c207665727920706f70756c617220647572696e67207468652052656e61697373616e63652e20546865206669727374206c696e65206f66204c6f72656d20497073756d2c20224c6f72656d20697073756d20646f6c6f722073697420616d65742e2e222c20636f6d65732066726f6d2061206c696e6520696e2073656374696f6e20312e31302e33322e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b223e546865207374616e64617264206368756e6b206f66204c6f72656d20497073756d20757365642073696e63652074686520313530307320697320726570726f64756365642062656c6f7720666f722074686f736520696e74657265737465642e2053656374696f6e7320312e31302e333220616e6420312e31302e33332066726f6d202264652046696e6962757320426f6e6f72756d206574204d616c6f72756d222062792043696365726f2061726520616c736f20726570726f647563656420696e207468656972206578616374206f726967696e616c20666f726d2c206163636f6d70616e69656420627920456e676c6973682076657273696f6e732066726f6d207468652031393134207472616e736c6174696f6e20627920482e205261636b68616d2e3c2f703e3c2f6469763e3c646976207374796c653d226d617267696e3a203070782032382e373936397078203070782031342e3339303670783b2070616464696e673a203070783b2077696474683a203433362e37393770783b20666c6f61743a2072696768743b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b223e3c6832207374796c653d226d617267696e3a203070782030707820313070783b2070616464696e673a203070783b206c696e652d6865696768743a20323470783b20666f6e742d66616d696c793a204461757068696e506c61696e3b20666f6e742d73697a653a20323470783b223e57686572652063616e20492067657420736f6d653f3c2f68323e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b223e546865726520617265206d616e7920766172696174696f6e73206f66207061737361676573206f66204c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f6e20696e20736f6d6520666f726d2c20627920696e6a65637465642068756d6f75722c206f722072616e646f6d6973656420776f72647320776869636820646f6e2774206c6f6f6b206576656e20736c696768746c792062656c69657661626c652e20496620796f752061726520676f696e6720746f2075736520612070617373616765206f66204c6f72656d20497073756d2c20796f75206e65656420746f20626520737572652074686572652069736e277420616e797468696e6720656d62617272617373696e672068696464656e20696e20746865206d6964646c65206f6620746578742e20416c6c20746865204c6f72656d20497073756d2067656e657261746f7273206f6e2074686520496e7465726e65742074656e6420746f2072657065617420707265646566696e6564206368756e6b73206173206e65636573736172792c206d616b696e6720746869732074686520666972737420747275652067656e657261746f72206f6e2074686520496e7465726e65742e204974207573657320612064696374696f6e617279206f66206f76657220323030204c6174696e20776f7264732c20636f6d62696e6564207769746820612068616e6466756c206f66206d6f64656c2073656e74656e636520737472756374757265732c20746f2067656e6572617465204c6f72656d20497073756d207768696368206c6f6f6b7320726561736f6e61626c652e205468652067656e657261746564204c6f72656d20497073756d206973207468657265666f726520616c7761797320667265652066726f6d2072657065746974696f6e2c20696e6a65637465642068756d6f75722c206f72206e6f6e2d636861726163746572697374696320776f726473206574632e3c2f703e3c2f6469763e, 0x3c646976207374796c653d226d617267696e3a203070782031342e333930367078203070782032382e3739363970783b2070616464696e673a203070783b2077696474683a203433362e37393770783b20666c6f61743a206c6566743b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a2022206f70656e3d22222073616e73222c3d222220617269616c2c3d22222073616e732d73657269663b3d222220666f6e742d73697a653a3d222220313470783b223d22223e3c6832207374796c653d226d617267696e3a203070782030707820313070783b2070616464696e673a203070783b206c696e652d6865696768743a20323470783b20666f6e742d66616d696c793a204461757068696e506c61696e3b20666f6e742d73697a653a20323470783b223e4f75722053746f72793f3c2f68323e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b223e4f75722073746f727920626567616e2077697468206120766973696f6e20746f207265766f6c7574696f6e697a6520686f7720696e766573746d656e747320617265206d616e616765642c2064726976656e20627920612070617373696f6e20666f7220656d706f776572696e6720696e646976696475616c7320746f20616368696576652074686569722066696e616e6369616c20647265616d732e20466f756e646564205b582079656172732061676f5d2c2077652073746172746564206173206120736d616c6c207465616d2064656469636174656420746f2064656c69766572696e6720706572736f6e616c697a656420696e766573746d656e7420736f6c7574696f6e73207769746820696e7465677269747920616e64207472616e73706172656e63792e204f766572207468652079656172732c20776520686176652067726f776e20696e746f2061207472757374656420706172746e65722c2067756964696e67206f757220636c69656e7473207468726f756768206d61726b657420666c756374756174696f6e7320616e642066696e616e6369616c20636f6d706c65786974696573207769746820756e7761766572696e6720636f6d6d69746d656e742e204f7572206a6f75726e657920697320646566696e656420627920696e6e6f766174696f6e2c20636c69656e742d63656e747269636974792c20616e6420612072656c656e746c6573732070757273756974206f6620657863656c6c656e636520696e20696e766573746d656e74206d616e6167656d656e742e3c62723e3c2f703e3c2f6469763e3c646976207374796c653d226d617267696e3a203070782032382e373936397078203070782031342e3339303670783b2070616464696e673a203070783b2077696474683a203433362e37393770783b20666c6f61743a2072696768743b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a2022206f70656e3d22222073616e73222c3d222220617269616c2c3d22222073616e732d73657269663b3d222220666f6e742d73697a653a3d222220313470783b223d22223e3c6832207374796c653d226d617267696e3a203070782030707820313070783b2070616464696e673a203070783b206c696e652d6865696768743a20323470783b20666f6e742d66616d696c793a204461757068696e506c61696e3b20666f6e742d73697a653a20323470783b223e4d697373696f6e20616e6420566973696f6e3f3c2f68323e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b223e4f7572206d697373696f6e20697320746f20656d706f77657220636c69656e7473207769746820706572736f6e616c697a656420696e766573746d656e74207374726174656769657320746861742070726f6d6f74652066696e616e6369616c2067726f77746820616e642073656375726974792c2067756964656420627920696e7465677269747920616e64206578706572746973652e20576520656e766973696f6e206265636f6d696e6720746865207072656d6965722070726f7669646572206f6620696e6e6f76617469766520696e766573746d656e7420736f6c7574696f6e732c2072656e6f776e656420666f72206f757220636f6d6d69746d656e7420746f20657863656c6c656e63652c206574686963616c207072616374696365732c20616e6420636c69656e7420737563636573732e3c62723e3c2f703e3c2f6469763e3c646976207374796c653d226d617267696e3a203070782031342e333930367078203070782032382e3739363970783b2070616464696e673a203070783b2077696474683a203433362e37393770783b20666c6f61743a206c6566743b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a2022206f70656e3d22222073616e73222c3d222220617269616c2c3d22222073616e732d73657269663b3d222220666f6e742d73697a653a3d222220313470783b223d22223e3c6832207374796c653d226d617267696e3a203070782030707820313070783b2070616464696e673a203070783b206c696e652d6865696768743a20323470783b20666f6e742d66616d696c793a204461757068696e506c61696e3b20666f6e742d73697a653a20323470783b223e436f72652056616c7565733f3c2f68323e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b223e417420746865206865617274206f66206f757220636f6d70616e792061726520636f72652076616c756573207468617420646566696e652077686f2077652061726520616e6420686f77207765206f7065726174652e20496e7465677269747920677569646573206576657279206465636973696f6e2c20656e737572696e67207472616e73706172656e637920616e642074727573742077697468206f757220636c69656e747320616e6420706172746e6572732e20496e6e6f766174696f6e2064726976657320757320746f20636f6e74696e75616c6c7920696d70726f766520616e6420616461707420746f207468652064796e616d6963206c616e647363617065206f6620696e766573746d656e74206d616e6167656d656e742e20436c69656e742d63656e7472696369747920697320706172616d6f756e74e280947765207072696f726974697a6520756e6465727374616e64696e6720616e64206d656574696e672074686520756e69717565206e65656473206f66206561636820696e646976696475616c2077652073657276652e20436f6c6c61626f726174696f6e206675656c73206f757220737563636573732c20666f73746572696e67207465616d776f726b20616e6420736861726564206578706572746973652077697468696e206f7572206f7267616e697a6174696f6e2e204163636f756e746162696c69747920686f6c647320757320746f207468652068696768657374207374616e64617264732c20656e737572696e672077652064656c69766572206f6e206f75722070726f6d6973657320776974682064696c6967656e636520616e6420726573706f6e736962696c6974792e2054686573652076616c75657320636f6c6c6563746976656c7920696e7370697265206f7572206461696c7920616374696f6e7320616e6420646566696e65206f757220636f6d6d69746d656e7420746f20657863656c6c656e636520696e2065766572797468696e6720776520646f2e3c62723e3c2f703e3c2f6469763e3c646976207374796c653d226d617267696e3a203070782032382e373936397078203070782031342e3339303670783b2070616464696e673a203070783b2077696474683a203433362e37393770783b20666c6f61743a2072696768743b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a2022206f70656e3d22222073616e73222c3d222220617269616c2c3d22222073616e732d73657269663b3d222220666f6e742d73697a653a3d222220313470783b223d22223e3c6832207374796c653d226d617267696e3a203070782030707820313070783b2070616464696e673a203070783b206c696e652d6865696768743a20323470783b20666f6e742d66616d696c793a204461757068696e506c61696e3b20666f6e742d73697a653a20323470783b223e416368696576656d656e743f3c2f68323e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b223e5468726f7567686f7574206f7572206a6f75726e65792c2077652776652063656c65627261746564207369676e69666963616e74206d696c6573746f6e657320616e64206163636f6d706c6973686d656e74732074686174207265666c656374206f75722064656469636174696f6e20746f20636c69656e74207375636365737320616e6420696e6e6f766174696f6e20696e20696e766573746d656e74206d616e6167656d656e742e20546865736520616368696576656d656e747320696e636c75646520657870616e64696e67206f757220636c69656e7420626173652c206c61756e6368696e6720696e6e6f7661746976652066696e616e6369616c2070726f64756374732c206561726e696e6720696e647573747279207265636f676e6974696f6e20666f7220657863656c6c656e63652c20616e6420636f6e73697374656e746c792064656c69766572696e6720657863657074696f6e616c2072657475726e73206f6e20696e766573746d656e742e2045616368206d696c6573746f6e65207265696e666f72636573206f757220636f6d6d69746d656e7420746f2073757270617373696e67206578706563746174696f6e7320616e642073657474696e67206e6577207374616e646172647320696e207468652066696e616e6369616c20736572766963657320696e6475737472792e3c62723e3c2f703e3c2f6469763e, 0x3c646976207374796c653d226d617267696e3a203070782031342e333930367078203070782032382e3739363970783b2070616464696e673a203070783b2077696474683a203433362e37393770783b20666c6f61743a206c6566743b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b223e3c6832207374796c653d226d617267696e3a203070782030707820313070783b2070616464696e673a203070783b206c696e652d6865696768743a20323470783b20666f6e742d66616d696c793a204461757068696e506c61696e3b20666f6e742d73697a653a20323470783b223e57686174206973204c6f72656d20497073756d3f3c2f68323e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b223e3c7374726f6e67207374796c653d226d617267696e3a203070783b2070616464696e673a203070783b223e4c6f72656d20497073756d3c2f7374726f6e673e266e6273703b69732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e6475737472792e204c6f72656d20497073756d20686173206265656e2074686520696e6475737472792773207374616e646172642064756d6d79207465787420657665722073696e6365207468652031353030732c207768656e20616e20756e6b6e6f776e207072696e74657220746f6f6b20612067616c6c6579206f66207479706520616e6420736372616d626c656420697420746f206d616b65206120747970652073706563696d656e20626f6f6b2e20497420686173207375727669766564206e6f74206f6e6c7920666976652063656e7475726965732c2062757420616c736f20746865206c65617020696e746f20656c656374726f6e6963207479706573657474696e672c2072656d61696e696e6720657373656e7469616c6c7920756e6368616e6765642e2049742077617320706f70756c61726973656420696e207468652031393630732077697468207468652072656c65617365206f66204c657472617365742073686565747320636f6e7461696e696e67204c6f72656d20497073756d2070617373616765732c20616e64206d6f726520726563656e746c792077697468206465736b746f70207075626c697368696e6720736f667477617265206c696b6520416c64757320506167654d616b657220696e636c7564696e672076657273696f6e73206f66204c6f72656d20497073756d2e3c2f703e3c2f6469763e3c646976207374796c653d226d617267696e3a203070782032382e373936397078203070782031342e3339303670783b2070616464696e673a203070783b2077696474683a203433362e37393770783b20666c6f61743a2072696768743b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b223e3c6832207374796c653d226d617267696e3a203070782030707820313070783b2070616464696e673a203070783b206c696e652d6865696768743a20323470783b20666f6e742d66616d696c793a204461757068696e506c61696e3b20666f6e742d73697a653a20323470783b223e57687920646f207765207573652069743f3c2f68323e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b223e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e204d616e79206465736b746f70207075626c697368696e67207061636b6167657320616e6420776562207061676520656469746f7273206e6f7720757365204c6f72656d20497073756d2061732074686569722064656661756c74206d6f64656c20746578742c20616e6420612073656172636820666f7220276c6f72656d20697073756d272077696c6c20756e636f766572206d616e7920776562207369746573207374696c6c20696e20746865697220696e66616e63792e20566172696f75732076657273696f6e7320686176652065766f6c766564206f766572207468652079656172732c20736f6d6574696d6573206279206163636964656e742c20736f6d6574696d6573206f6e20707572706f73652028696e6a65637465642068756d6f757220616e6420746865206c696b65292e3c2f703e3c2f6469763e3c6272207374796c653d226d617267696e3a203070783b2070616464696e673a203070783b20636c6561723a20626f74683b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b20746578742d616c69676e3a2063656e7465723b223e3c646976207374796c653d226d617267696e3a203070782031342e333930367078203070782032382e3739363970783b2070616464696e673a203070783b2077696474683a203433362e37393770783b20666c6f61743a206c6566743b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b223e3c6832207374796c653d226d617267696e3a203070782030707820313070783b2070616464696e673a203070783b206c696e652d6865696768743a20323470783b20666f6e742d66616d696c793a204461757068696e506c61696e3b20666f6e742d73697a653a20323470783b223e576865726520646f657320697420636f6d652066726f6d3f3c2f68323e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b223e436f6e747261727920746f20706f70756c61722062656c6965662c204c6f72656d20497073756d206973206e6f742073696d706c792072616e646f6d20746578742e2049742068617320726f6f747320696e2061207069656365206f6620636c6173736963616c204c6174696e206c6974657261747572652066726f6d2034352042432c206d616b696e67206974206f7665722032303030207965617273206f6c642e2052696368617264204d63436c696e746f636b2c2061204c6174696e2070726f666573736f722061742048616d7064656e2d5379646e657920436f6c6c65676520696e2056697267696e69612c206c6f6f6b6564207570206f6e65206f6620746865206d6f7265206f627363757265204c6174696e20776f7264732c20636f6e73656374657475722c2066726f6d2061204c6f72656d20497073756d20706173736167652c20616e6420676f696e67207468726f75676820746865206369746573206f662074686520776f726420696e20636c6173736963616c206c6974657261747572652c20646973636f76657265642074686520756e646f75627461626c6520736f757263652e204c6f72656d20497073756d20636f6d65732066726f6d2073656374696f6e7320312e31302e333220616e6420312e31302e3333206f66202264652046696e6962757320426f6e6f72756d206574204d616c6f72756d2220285468652045787472656d6573206f6620476f6f6420616e64204576696c292062792043696365726f2c207772697474656e20696e2034352042432e205468697320626f6f6b2069732061207472656174697365206f6e20746865207468656f7279206f66206574686963732c207665727920706f70756c617220647572696e67207468652052656e61697373616e63652e20546865206669727374206c696e65206f66204c6f72656d20497073756d2c20224c6f72656d20697073756d20646f6c6f722073697420616d65742e2e222c20636f6d65732066726f6d2061206c696e6520696e2073656374696f6e20312e31302e33322e3c2f703e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b223e546865207374616e64617264206368756e6b206f66204c6f72656d20497073756d20757365642073696e63652074686520313530307320697320726570726f64756365642062656c6f7720666f722074686f736520696e74657265737465642e2053656374696f6e7320312e31302e333220616e6420312e31302e33332066726f6d202264652046696e6962757320426f6e6f72756d206574204d616c6f72756d222062792043696365726f2061726520616c736f20726570726f647563656420696e207468656972206578616374206f726967696e616c20666f726d2c206163636f6d70616e69656420627920456e676c6973682076657273696f6e732066726f6d207468652031393134207472616e736c6174696f6e20627920482e205261636b68616d2e3c2f703e3c2f6469763e3c646976207374796c653d226d617267696e3a203070782032382e373936397078203070782031342e3339303670783b2070616464696e673a203070783b2077696474683a203433362e37393770783b20666c6f61743a2072696768743b20636f6c6f723a2072676228302c20302c2030293b20666f6e742d66616d696c793a202671756f743b4f70656e2053616e732671756f743b2c20417269616c2c2073616e732d73657269663b20666f6e742d73697a653a20313470783b223e3c6832207374796c653d226d617267696e3a203070782030707820313070783b2070616464696e673a203070783b206c696e652d6865696768743a20323470783b20666f6e742d66616d696c793a204461757068696e506c61696e3b20666f6e742d73697a653a20323470783b223e57686572652063616e20492067657420736f6d653f3c2f68323e3c70207374796c653d226d617267696e2d626f74746f6d3a20313570783b2070616464696e673a203070783b20746578742d616c69676e3a206a7573746966793b223e546865726520617265206d616e7920766172696174696f6e73206f66207061737361676573206f66204c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f6e20696e20736f6d6520666f726d2c20627920696e6a65637465642068756d6f75722c206f722072616e646f6d6973656420776f72647320776869636820646f6e2774206c6f6f6b206576656e20736c696768746c792062656c69657661626c652e20496620796f752061726520676f696e6720746f2075736520612070617373616765206f66204c6f72656d20497073756d2c20796f75206e65656420746f20626520737572652074686572652069736e277420616e797468696e6720656d62617272617373696e672068696464656e20696e20746865206d6964646c65206f6620746578742e20416c6c20746865204c6f72656d20497073756d2067656e657261746f7273206f6e2074686520496e7465726e65742074656e6420746f2072657065617420707265646566696e6564206368756e6b73206173206e65636573736172792c206d616b696e6720746869732074686520666972737420747275652067656e657261746f72206f6e2074686520496e7465726e65742e204974207573657320612064696374696f6e617279206f66206f76657220323030204c6174696e20776f7264732c20636f6d62696e6564207769746820612068616e6466756c206f66206d6f64656c2073656e74656e636520737472756374757265732c20746f2067656e6572617465204c6f72656d20497073756d207768696368206c6f6f6b7320726561736f6e61626c652e205468652067656e657261746564204c6f72656d20497073756d206973207468657265666f726520616c7761797320667265652066726f6d2072657065746974696f6e2c20696e6a65637465642068756d6f75722c206f72206e6f6e2d636861726163746572697374696320776f726473206574632e3c2f703e3c2f6469763e, NULL, '2024-07-15 14:43:12');

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
('hasan02@gmail.com', '$2y$10$DMiLA/9WavO982FvzyCpeOcrqXjJD.gAcJWSuDeCQf5I1mjm3AVm6', '2017-08-08 20:24:08');

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
(10, NULL, 8, '17208872796692a7ef423b9.png', '2024-07-13 21:14:39', '2024-07-13 21:14:39');

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
(1, 'Starter', '1497870966.png', '500', '75000', '150', 1, 3, 1, '2017-06-13 22:25:33', '2017-08-26 18:50:03', 0.00),
(2, 'Silver', '1497871022.png', '75000', '100000', '200', 1, 3, 1, '2017-06-13 22:37:42', '2017-06-29 02:56:57', 0.00),
(3, 'Gold', '1497871033.png', '100000', '1250000', '3', 100, 1, 1, '2017-06-13 22:41:00', '2017-07-01 19:05:54', 1200030.00),
(4, 'Platinum', '1498497137.png', '1250000', '1500000', '160', 1, 4, 0, '2017-06-13 22:41:54', '2017-06-29 02:54:03', 150000.00),
(5, 'Starter', '1497870966.png', '500', '75000', '150', 1, 1, 1, '2017-06-13 22:25:33', '2017-08-26 18:50:03', 0.00);

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

-- --------------------------------------------------------

--
-- Table structure for table `repeats`
--

CREATE TABLE `repeats` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `deposit_id` int(11) NOT NULL,
  `repeat_time` datetime NOT NULL,
  `made_time` datetime DEFAULT NULL,
  `rebeat` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
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

--
-- Dumping data for table `strategies`
--

INSERT INTO `strategies` (`id`, `title`, `image`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Registered company', '1497857432.png', 'ULTRACONCEPT NETWORK is a registered Nigerian company that provides profit for investors.', '2017-06-19 07:30:32', '2017-06-25 00:42:22'),
(3, 'Automatic processes', '1497857603.png', 'Automated platform of the company allows our clients to make deposits and receive timely payments.', '2017-06-19 07:33:23', '2017-06-19 07:33:23'),
(4, 'Technology', '1497857691.png', 'Technical engineers and analysts of our company developed a unique and more importantly comfortable platform.', '2017-06-19 07:34:51', '2017-06-19 07:34:51'),
(5, 'Profitable strategies', '1497857725.png', 'The company offers three types of investments.', '2017-06-19 07:35:25', '2017-06-19 07:35:25'),
(6, 'Support service', '1497857758.png', 'Customer support service is available 24/7 and ready to answer any your questions and solve any your problem.', '2017-06-19 07:35:58', '2017-06-19 07:35:58'),
(7, 'Career program', '1497857777.png', 'In addition to this, the company has developed special marketing solutions.', '2017-06-19 07:36:17', '2017-06-19 07:36:17');

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
  `ID_Number` varchar(191) DEFAULT NULL,
  `profit` decimal(8,2) NOT NULL DEFAULT 0.00,
  `bonus` decimal(8,2) NOT NULL DEFAULT 10.00,
  `reference_bonus` decimal(8,2) NOT NULL DEFAULT 10.00,
  `currency` varchar(2) NOT NULL DEFAULT '$',
  `plan_id` int(10) UNSIGNED DEFAULT NULL,
  `trade` tinyint(1) DEFAULT 0,
  `trade_start` datetime DEFAULT NULL,
  `trade_stop` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `country`, `zip`, `phone`, `address`, `amount`, `reference`, `under_reference`, `password`, `remember_token`, `verifyToken`, `status`, `block_status`, `block_at`, `created_at`, `updated_at`, `ID_Number`, `profit`, `bonus`, `reference_bonus`, `currency`, `plan_id`, `trade`, `trade_start`, `trade_stop`) VALUES
(6, 'Eromosele 🤑✌️', 'maryderek1101@gmail.com', 'user-default.png', 'South Africa', '3213123', '08084909120', 'asdasd sdasdas asdasd asdasdas dfdsfdsfds', '2408', 'yCmyIzmshbtR', 'GPseDxW8C7Mu', '$2y$10$jTZfz4KmDyKdTe.6K.1XEuoaePUg3ggtLdmWDnfJJyhS9tZuytxWW', 'KWXpZAF4qoCshGKAqULfvNWDO3WuahLX9RWvfgxrmwVB1Kff1VudkLauzJ8D', 'JxlJzBtLHwpYA4Fe5KngA0zLYgb2QzuEx6HIqIbA', 1, 0, NULL, '2024-06-17 05:03:42', '2024-07-16 21:12:21', '32323223232323', 3612.00, 10.00, 110.00, '$', 1, 1, NULL, NULL),
(21, 'Odemilin Eromosele', 'goodluckodemilin@gmail.com', '1720393890.jpeg', 'Nigeria', '123123', '08106243856', 'No 36 Warri\r\nBlock 3', '0', 'GsK0JEiIHFTD', 'yCmyIzmshbtR', '$2y$10$xEJSo5XihDkddNVlKT/s0.WzEZPjJ0N1FlMQGE51HQ9ZGEe/rO8tu', 'l0ua8R0IaiSSAqAQWwJ03Aw9iuhqDIfbGT7m5SavQUz9KjzaTeQvSYNIrXwL', 'XXp5LFYmZIzYFGnkxL2ya3UeF8BjEpsnz9BWnJKP', 0, 0, '2024-07-14 04:38:42', '2024-07-01 20:35:50', '2024-07-14 03:38:48', '13423324223', 0.00, 10.00, 10.00, '$', NULL, 1, '2024-07-14 04:35:05', '2024-07-14 04:38:31');

-- --------------------------------------------------------

--
-- Table structure for table `user_balances`
--

CREATE TABLE `user_balances` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `balance_type` tinyint(4) NOT NULL,
  `details` text NOT NULL,
  `balance` varchar(191) NOT NULL,
  `charge` varchar(100) DEFAULT NULL,
  `new_balance` varchar(191) NOT NULL,
  `old_balance` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_balances`
--

INSERT INTO `user_balances` (`id`, `user_id`, `balance_type`, `details`, `balance`, `charge`, `new_balance`, `old_balance`, `created_at`, `updated_at`) VALUES
(2, 6, 8, 'Add Fund via Sonali bank Transaction ID : # 240617L3m5bx47', '2000', '250', '2000', '0', '2024-06-18 08:23:22', '2024-06-18 08:23:22'),
(3, 6, 8, 'Add Fund via Sonali bank Transaction ID : # 240617L3m5bx47', '2000', '250', '4000', '2000', '2024-06-18 11:54:11', '2024-06-18 11:54:11'),
(4, 6, 4, 'Withdraw ID : # 240629LOYhJS96 .  Withdraw By : Mobile Banking', '200', '5', '3795', '4000', '2024-06-29 17:40:20', '2024-06-29 17:40:20'),
(5, 6, 4, 'Withdraw ID : # 2406297FAcBe25 .  Withdraw By : Upgrade', '0.00', '0', '3795', '3795', '2024-06-29 19:52:51', '2024-06-29 19:52:51'),
(6, 6, 8, 'Add Fund via first bank Airtel Transaction ID : # 240618Q5hNQe49', '13', '1.195', '2408', '2395', '2024-07-13 17:08:35', '2024-07-13 17:08:35');

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
  `acc_name` varchar(191) NOT NULL,
  `acc_number` varchar(191) NOT NULL,
  `acc_code` varchar(191) NOT NULL,
  `new_balance` varchar(191) NOT NULL,
  `old_balance` varchar(191) NOT NULL,
  `message` text DEFAULT NULL,
  `made_date` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `funds`
--
ALTER TABLE `funds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fund_logs`
--
ALTER TABLE `fund_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `latter_user`
--
ALTER TABLE `latter_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `letters`
--
ALTER TABLE `letters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `letter_user`
--
ALTER TABLE `letter_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `manual_banks`
--
ALTER TABLE `manual_banks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `manual_funds`
--
ALTER TABLE `manual_funds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `manual_fund_logs`
--
ALTER TABLE `manual_fund_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `manual_payments`
--
ALTER TABLE `manual_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `strategies`
--
ALTER TABLE `strategies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_balances`
--
ALTER TABLE `user_balances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
