-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2023 at 10:56 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accusr`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `market_id` int(11) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `l_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_varified_at` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT '1',
  `remember_token` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `is_deleted` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `market_id`, `f_name`, `l_name`, `email`, `email_varified_at`, `mobile`, `gender`, `password`, `role`, `remember_token`, `status`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'Germany', 'admin@vodafone.com', NULL, NULL, NULL, '123', 1, NULL, 1, 0, '2023-03-20 17:34:00', '2023-06-06 10:43:20'),
(2, 3, 'Admin-India', 'India', 'admin-india@vodafone.com', NULL, NULL, NULL, '123', 1, NULL, 1, 0, '2023-03-20 17:34:00', '2023-06-06 10:43:28'),
(3, 1, 'Admin', 'Super', 'super.admin@vodafone.com', NULL, NULL, NULL, '123', 0, NULL, 1, 0, '2023-03-20 17:34:00', '2023-06-06 10:57:34');

-- --------------------------------------------------------

--
-- Table structure for table `connects`
--

CREATE TABLE `connects` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `server_id` int(11) DEFAULT NULL,
  `market_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `connects`
--

INSERT INTO `connects` (`id`, `role_id`, `server_id`, `market_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '2023-04-12 10:51:16', '2023-04-12 10:51:16'),
(2, 2, 2, 1, 1, '2023-04-12 11:03:29', '2023-04-12 11:03:29'),
(3, 3, 2, 1, 1, '2023-05-23 06:25:45', '2023-05-23 06:25:45'),
(4, 3, 3, 1, 1, '2023-05-25 09:56:19', '2023-05-25 09:56:19'),
(5, 4, 2, 1, 1, '2023-05-25 11:46:07', '2023-05-25 11:46:07');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `expire_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `user_id`, `file`, `password`, `status`, `expire_at`, `created_at`, `updated_at`) VALUES
(1, 1, '181241-20230427-abc123.pdf', '296523', 1, NULL, '2023-04-27 12:42:41', '2023-04-27 12:42:41'),
(2, 1, '182548-20230427-abc123.pdf', '118977', 1, NULL, '2023-04-27 12:55:48', '2023-04-27 12:55:48'),
(3, 1, '223934-20230427-abc123.pdf', '943935', 1, NULL, '2023-04-27 17:09:34', '2023-04-27 17:09:34'),
(4, 1, '224201-20230427-abc123.pdf', '379504', 1, NULL, '2023-04-27 17:12:01', '2023-04-27 17:12:01'),
(5, 1, '224543-20230427-abc123.pdf', '397165', 1, NULL, '2023-04-27 17:15:43', '2023-04-27 17:15:43'),
(6, 1, '224654-20230427-abc123.pdf', '738467', 1, NULL, '2023-04-27 17:16:54', '2023-04-27 17:16:54'),
(7, 1, '224804-20230427-abc123.pdf', '323114', 1, NULL, '2023-04-27 17:18:04', '2023-04-27 17:18:04'),
(8, 1, '224932-20230427-abc123.pdf', '635573', 1, NULL, '2023-04-27 17:19:32', '2023-04-27 17:19:32'),
(9, 1, '225047-20230427-abc123.pdf', '291036', 1, NULL, '2023-04-27 17:20:47', '2023-04-27 17:20:47'),
(10, 1, '231038-20230427-abc123.pdf', '746631', 1, NULL, '2023-04-27 17:40:38', '2023-04-27 17:40:38'),
(11, 1, '231130-20230427-abc123.pdf', '586994', 1, NULL, '2023-04-27 17:41:30', '2023-04-27 17:41:30'),
(12, 1, '231255-20230427-abc123.pdf', '571960', 1, NULL, '2023-04-27 17:42:55', '2023-04-27 17:42:55'),
(13, 1, '232350-20230427-abc123.pdf', '749858', 1, NULL, '2023-04-27 17:53:50', '2023-04-27 17:53:50'),
(14, 1, '232446-20230427-abc123.pdf', '491966', 1, NULL, '2023-04-27 17:54:46', '2023-04-27 17:54:46'),
(15, 1, '232627-20230427-abc123.pdf', '247851', 1, NULL, '2023-04-27 17:56:27', '2023-04-27 17:56:27'),
(16, 1, '232708-20230427-abc123.pdf', '286521', 1, NULL, '2023-04-27 17:57:08', '2023-04-27 17:57:08'),
(17, 1, '232900-20230427-abc123.pdf', '947010', 1, NULL, '2023-04-27 17:59:00', '2023-04-27 17:59:00'),
(18, 1, '234338-20230427-abc123.pdf', '166295', 1, NULL, '2023-04-27 18:13:38', '2023-04-27 18:13:38'),
(19, 1, '', '', 1, NULL, '2023-04-27 18:26:28', '2023-04-27 18:26:28'),
(20, 1, '', '', 1, NULL, '2023-04-27 18:35:19', '2023-04-27 18:35:19'),
(21, 1, '', '', 1, NULL, '2023-04-27 18:40:09', '2023-04-27 18:40:09'),
(22, 1, '', '', 1, NULL, '2023-04-27 18:42:13', '2023-04-27 18:42:13'),
(23, 1, '', '', 1, NULL, '2023-04-27 18:43:14', '2023-04-27 18:43:14'),
(24, 1, '002150-20230428-abc123.pdf', '675479', 1, NULL, '2023-04-27 18:51:50', '2023-04-27 18:51:50'),
(25, 1, '132806-20230428-abc123.pdf', '962841', 1, NULL, '2023-04-28 07:58:06', '2023-04-28 07:58:06'),
(26, 1, '135320-20230428-abc123.pdf', '357918', 1, NULL, '2023-04-28 08:23:20', '2023-04-28 08:23:20'),
(27, 1, '222432-20230503-abc123.pdf', '121647', 1, NULL, '2023-05-03 16:54:32', '2023-05-03 16:54:32'),
(28, 1, '233657-20230503-abc123.pdf', '770373', 1, NULL, '2023-05-03 18:06:57', '2023-05-03 18:06:57'),
(29, 1, '101508-20230504-abc123.pdf', '797559', 1, NULL, '2023-05-04 04:45:08', '2023-05-04 04:45:08'),
(30, 1, '101616-20230504-abc123.pdf', '344781', 1, NULL, '2023-05-04 04:46:16', '2023-05-04 04:46:16'),
(31, 1, '125407-20230504-abc123.pdf', '715827', 1, NULL, '2023-05-04 07:24:07', '2023-05-04 07:24:07'),
(32, 1, '132725-20230504-abc123.pdf', '900860', 1, NULL, '2023-05-04 07:57:25', '2023-05-04 07:57:25'),
(33, 1, '132751-20230504-abc123.pdf', '722451', 1, NULL, '2023-05-04 07:57:52', '2023-05-04 07:57:52'),
(34, 1, '133141-20230504-abc123.pdf', '726782', 1, NULL, '2023-05-04 08:01:41', '2023-05-04 08:01:41'),
(35, 3, '140225-20230504-pqr123.pdf', '440588', 1, NULL, '2023-05-04 08:32:25', '2023-05-04 08:32:25'),
(36, 3, '140731-20230504-pqr123.pdf', '660598', 1, NULL, '2023-05-04 08:37:31', '2023-05-04 08:37:31'),
(37, 1, '141224-20230504-abc123.pdf', '180806', 1, NULL, '2023-05-04 08:42:24', '2023-05-04 08:42:24'),
(38, 1, '141953-20230504-abc123.pdf', '311971', 1, NULL, '2023-05-04 08:49:53', '2023-05-04 08:49:53'),
(39, 1, '144245-20230504-abc123.pdf', '906298', 1, NULL, '2023-05-04 09:12:45', '2023-05-04 09:12:45'),
(40, 3, '144613-20230504-pqr123.pdf', '424485', 1, NULL, '2023-05-04 09:16:13', '2023-05-04 09:16:13'),
(41, 1, '144901-20230504-abc123.pdf', '308392', 1, NULL, '2023-05-04 09:19:01', '2023-05-04 09:19:01'),
(42, 1, '104548-20230505-abc123.pdf', '756821', 1, NULL, '2023-05-05 05:15:48', '2023-05-05 05:15:48'),
(43, 1, '105034-20230505-abc123.pdf', '806895', 1, NULL, '2023-05-05 05:20:34', '2023-05-05 05:20:34'),
(44, 1, '111343-20230505-abc123.pdf', '135511', 1, NULL, '2023-05-05 05:43:43', '2023-05-05 05:43:43'),
(45, 1, '112135-20230505-abc123.pdf', '659773', 1, NULL, '2023-05-05 05:51:35', '2023-05-05 05:51:35'),
(46, 1, '112642-20230505-abc123.pdf', '815024', 1, NULL, '2023-05-05 05:56:42', '2023-05-05 05:56:42'),
(47, 3, '163627-20230505-pqr123.pdf', '403517', 1, NULL, '2023-05-05 11:06:27', '2023-05-05 11:06:27'),
(48, 1, '175127-20230519-abc123.pdf', '792510', 1, NULL, '2023-05-19 12:21:27', '2023-05-19 12:21:27'),
(49, 3, '162308-20230608-pqr123.pdf', '631534', 1, NULL, '2023-06-08 10:53:08', '2023-06-08 10:53:08'),
(50, 3, '132618-20230621-pqr123.pdf', '959625', 1, NULL, '2023-06-21 07:56:19', '2023-06-21 07:56:19'),
(51, 3, '105147-20230921-pqr123.pdf', '121034', 1, NULL, '2023-09-21 05:21:47', '2023-09-21 05:21:47'),
(52, 3, '124248-20230921-pqr123.pdf', '370675', 1, NULL, '2023-09-21 07:12:48', '2023-09-21 07:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `grants`
--

CREATE TABLE `grants` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `server_id` int(11) DEFAULT NULL,
  `server_user_id` int(11) DEFAULT NULL,
  `market_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grants`
--

INSERT INTO `grants` (`id`, `user_id`, `role_id`, `server_id`, `server_user_id`, `market_id`, `status`, `created_at`, `updated_at`) VALUES
(11, 1, 1, NULL, NULL, 1, 1, '2023-04-12 10:48:06', '2023-04-12 10:48:06'),
(12, 3, NULL, 3, 5, 1, 0, '2023-04-26 10:51:49', '2023-04-26 10:51:49'),
(13, 3, NULL, 2, 4, 1, 1, '2023-04-26 11:12:31', '2023-05-04 04:58:38'),
(14, 3, NULL, 1, 1, 1, 1, '2023-04-26 11:18:14', '2023-04-26 11:22:02'),
(15, 25, NULL, 2, 4, 1, 0, '2023-04-26 11:39:23', '2023-04-26 11:39:23'),
(16, 25, NULL, 3, 5, 1, 1, '2023-04-28 05:09:16', '2023-05-31 05:34:04'),
(17, 25, NULL, 6, 8, 1, 1, '2023-04-28 05:13:04', '2023-05-04 04:58:24'),
(21, 2, NULL, 2, 4, 1, 1, '2023-04-28 06:21:14', '2023-05-04 04:58:18'),
(25, 2, NULL, 1, 1, 1, 1, '2023-04-28 09:08:48', '2023-05-04 04:58:09'),
(26, 3, NULL, 11, 16, 1, 1, '2023-05-03 12:16:24', '2023-05-04 06:34:01'),
(27, 2, NULL, 11, 16, 1, 1, '2023-05-03 15:22:52', '2023-05-04 06:33:54'),
(28, 2, NULL, 8, 10, 1, 1, '2023-05-03 17:55:51', '2023-05-04 04:57:56'),
(29, 3, NULL, 10, 20, 1, 1, '2023-05-04 08:37:02', '2023-05-04 08:37:13'),
(30, 2, 1, NULL, NULL, 1, 1, '2023-05-23 06:13:13', '2023-05-23 06:13:13'),
(32, 28, NULL, 2, 4, 1, 0, '2023-05-25 08:14:16', '2023-05-25 08:14:16'),
(33, 28, 1, NULL, NULL, 1, 1, '2023-05-25 08:14:16', '2023-05-25 08:14:16'),
(34, 29, NULL, 8, 10, 1, 1, '2023-05-25 08:36:50', '2023-05-25 08:39:40'),
(35, 29, 1, NULL, NULL, 1, 1, '2023-05-25 08:36:50', '2023-05-25 08:36:50'),
(36, 29, NULL, 6, 8, 1, 1, '2023-05-25 08:40:33', '2023-05-25 08:40:49'),
(37, 30, NULL, 1, 1, 1, 1, '2023-05-25 11:42:54', '2023-05-25 11:45:01'),
(38, 30, 2, NULL, NULL, 1, 1, '2023-05-25 11:42:54', '2023-05-25 11:42:54'),
(39, 31, 2, NULL, NULL, 1, 1, '2023-06-02 13:55:39', '2023-06-02 13:55:39'),
(40, 35, 3, NULL, NULL, 3, 1, '2023-06-08 07:38:24', '2023-06-08 07:38:24'),
(41, 36, NULL, 1, 1, 1, 0, '2023-06-19 12:25:38', '2023-06-19 12:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ticket` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `id` int(11) NOT NULL,
  `host` varchar(255) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mails`
--

INSERT INTO `mails` (`id`, `host`, `port`, `user_name`, `password`, `sender`, `status`, `created_at`, `updated_at`) VALUES
(1, '195.232.244.151', 25, NULL, NULL, 'accrobot08.live008i@vodafone.com', 1, '2023-03-25 07:47:50', '2023-06-08 10:53:11'),
(2, 'smtp.gmail.com', 587, 'sraafey2k14@gmail.com', 'hvpmuodnbtriltvv', 'sraafey2k14@gmail.com', 0, '2023-03-25 07:50:20', '2023-04-05 06:10:07');

-- --------------------------------------------------------

--
-- Table structure for table `markets`
--

CREATE TABLE `markets` (
  `id` int(11) NOT NULL,
  `market` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `markets`
--

INSERT INTO `markets` (`id`, `market`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Germany', 1, '2023-02-01 10:27:54', '2023-04-28 10:02:51'),
(2, 'USA', 1, '2023-02-01 10:27:54', '2023-02-01 10:27:54'),
(3, 'India', 1, '2023-02-08 05:52:28', '2023-04-28 10:05:32'),
(4, 'Ireland', 1, '2023-02-08 05:52:28', '2023-02-08 05:52:28'),
(5, 'Poland', 1, '2023-02-08 05:52:58', '2023-02-08 05:52:58'),
(6, 'Australia', 1, '2023-02-08 05:52:58', '2023-02-16 08:33:58');

-- --------------------------------------------------------

--
-- Table structure for table `password_encryption`
--

CREATE TABLE `password_encryption` (
  `id` int(11) NOT NULL,
  `source_server_id` int(11) DEFAULT NULL,
  `source_user_id` int(11) DEFAULT NULL,
  `source_account_type` int(11) DEFAULT NULL,
  `target_server_id` int(11) DEFAULT NULL,
  `target_user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '1',
  `encrypt_key` varchar(255) DEFAULT NULL,
  `secure_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `password_encryption`
--

INSERT INTO `password_encryption` (`id`, `source_server_id`, `source_user_id`, `source_account_type`, `target_server_id`, `target_user_id`, `created_at`, `updated_at`, `status`, `encrypt_key`, `secure_key`) VALUES
(48, 13, 28, 1, 11, 19, '2023-05-19 12:08:00', '2023-05-19 12:08:00', 1, 'yAdTtW2eMF9307Ds3hiidEwupTW3e6AHAsYUMMcrgnd28ogdWVIqd4zuJmUcfatfWPOimpjO3lTF09uYb56g%2FgwioMakFJpINK%2B6TeLBGE8M2uqkmnJRXAO1pQgppozXq5IGaz7w9qYCUg5Z4qRM9seBzg%3D%3D', '7b50df193d'),
(49, 1, 1, 2, 2, 4, '2023-06-08 09:54:55', '2023-06-08 09:54:55', 1, '7Esmvo91YEM%2BKR2UHMOIzJ43dBdJetUFlcWz20tVJui90LWddSeBkZAJqvxIFFXHTNufqp4RdTBGZxW9iL2K56Chl6arWC2gJ1ij5qSB2mH2h%2FNc0slhze1CKbl4pVyVb8lzjt%2B1qSTSDvye6GBQNfO8', '0cce14270b'),
(52, 18, 35, 1, 16, 30, '2023-06-20 10:32:04', '2023-06-20 10:32:04', 1, 'AKNU%2FdLxbp3raxll8YUcQJNWPES9k9OsZhiZ%2F7OeSKFy273NFGBb9qdKUaljX%2B6UZM4AbtG2QVA%2FXMqho1Ga3eaGMO7iGtvlBmsSknr1b9emLh%2FajGKXSXV%2F9V%2BULJ3Ssxzaz8eSwGr7GcTUuRi7jI8%3D', 'b426598a98'),
(53, 6, 8, 2, 8, 10, '2023-07-18 07:07:35', '2023-07-18 07:07:35', 1, '58swr214ZQx87lrqpu%2Fxr8ws1gOBY8NiXeZ09MXAfR6SowZVncWZDIWAZJ9enlzdbgvy283IdH5D64T4thMefW1J%2FcS11xDimlVvH6n%2BdWSKTYS2Bc75Ojmr4NHYMpQqkh2hH3Qx5zaiyM2ip0gWqDfn27LafRmg', 'fa67b72eb8'),
(54, 14, 37, 1, 16, 30, '2023-09-21 06:29:09', '2023-09-21 06:29:09', 1, '%2Bdx5Mm1Z54mat5UB9S3oammug%2BuU6XGBDuovDOwZIPqhUUG98oUydYUpyBZyx84I8%2BM8HiIvzdPlVqkLUlAMctFYJG5fujOOyxwtXj3MhiJ3lVzxfVciN8N4jLQBJ36zYqgBkNHS%2FBIDSgXGD6y2dRo%3D', '1372015a39');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `market_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `department_id`, `market_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Database', NULL, 1, 1, '2023-04-12 10:46:38', '2023-04-12 10:46:38'),
(2, 'Middleware', NULL, 1, 1, '2023-04-12 10:49:41', '2023-04-12 10:49:41'),
(3, 'Testing', NULL, 1, 1, '2023-05-23 06:22:57', '2023-05-25 07:41:27'),
(4, 'test2', NULL, 1, 1, '2023-05-25 11:45:49', '2023-05-25 11:45:49'),
(5, 'testing-india', NULL, 3, 1, '2023-06-08 07:40:19', '2023-06-08 07:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `role_requests`
--

CREATE TABLE `role_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `market_id` int(11) DEFAULT NULL,
  `is_approved` int(11) DEFAULT '0',
  `is_pending` int(11) DEFAULT '1',
  `is_declined` int(11) DEFAULT '0',
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_requests`
--

INSERT INTO `role_requests` (`id`, `user_id`, `role_id`, `market_id`, `is_approved`, `is_pending`, `is_declined`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 0, 1, 0, NULL, '2023-05-03 18:07:28', '2023-05-03 18:07:28');

-- --------------------------------------------------------

--
-- Table structure for table `servers`
--

CREATE TABLE `servers` (
  `id` int(11) NOT NULL,
  `market_id` int(11) DEFAULT NULL,
  `host_name` varchar(255) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `os_type` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `secure_key` varchar(255) DEFAULT NULL,
  `password_expires_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `servers`
--

INSERT INTO `servers` (`id`, `market_id`, `host_name`, `port`, `os_type`, `ip_address`, `password`, `secure_key`, `password_expires_at`, `status`, `created_at`, `updated_at`) VALUES
(6, 1, 'vg6672yw', NULL, 'windows', '195.233.238.119', 'DcFFJoHao3BeL1Z9fXIAXp%2FLSw%3D%3D', '2ec91cbbc7', NULL, 1, '2023-03-20 17:52:47', '2023-05-04 20:00:36'),
(8, 1, 'vgssh3hr', NULL, NULL, '195.233.238.110', NULL, NULL, NULL, 1, '2023-04-28 09:33:50', '2023-04-28 09:33:50'),
(10, 1, 'votstehr', NULL, NULL, '10.97.102.108', NULL, NULL, NULL, 1, '2023-05-02 08:34:39', '2023-05-02 08:34:39'),
(14, 1, 'uppsala2', NULL, NULL, '195.233.238.7', NULL, NULL, NULL, 1, '2023-05-05 10:57:52', '2023-05-05 10:57:52'),
(16, 1, 'vgg218yr', NULL, NULL, '139.47.187.171', NULL, NULL, NULL, 1, '2023-05-25 11:52:16', '2023-05-25 11:52:16'),
(18, 1, 'vg6670yw', NULL, NULL, '139.47.169.69', NULL, NULL, NULL, 1, '2023-06-19 12:51:26', '2023-06-19 12:51:26'),
(21, 1, 'vg4044yr', NULL, NULL, '176.125.21.14', NULL, NULL, NULL, 1, '2023-09-21 07:08:48', '2023-09-21 07:08:48');

-- --------------------------------------------------------

--
-- Table structure for table `server_users`
--

CREATE TABLE `server_users` (
  `id` int(11) NOT NULL,
  `server_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user` varchar(22) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `secure_key` varchar(255) DEFAULT NULL,
  `last_password_changed` timestamp NULL DEFAULT NULL,
  `password_rotation_period` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_users`
--

INSERT INTO `server_users` (`id`, `server_id`, `user_id`, `user`, `password`, `secure_key`, `last_password_changed`, `password_rotation_period`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'sakhtar', 'NKFIBmjy4mCDt7FmxJnI7tl7dQdUkQ%3D%3D', '200feca0ca', NULL, NULL, 1, '2023-03-20 18:11:33', '2023-05-03 18:08:48'),
(4, 2, 1, 'vshete', 'Ga1QRY7%2FqFsPFQfjifKXBrm2Htt%2Bog%3D%3D', '5e4b515b5c', NULL, NULL, 1, '2023-03-25 13:36:29', '2023-04-26 11:07:15'),
(5, 3, 1, 'vshete', 'NKFIBmjy4mCDt7FmxJnI7tl7dQdUkQ%3D%3D', '200feca0ca', NULL, NULL, 1, '2023-03-20 18:11:33', '2023-04-13 15:18:50'),
(6, 4, 1, 'vshete', 'Ga1QRY7%2FqFsPFQfjifKXBrm2Htt%2Bog%3D%3D', '5e4b515b5c', NULL, NULL, 0, '2023-03-25 13:36:29', '2023-04-13 15:28:36'),
(7, 5, 1, 'techvi01', 'NKFIBmjy4mCDt7FmxJnI7tl7dQdUkQ%3D%3D', '200feca0ca', NULL, NULL, 1, '2023-03-20 18:11:33', '2023-04-13 15:26:59'),
(8, 6, 1, 'acc-techvi02', 'Ga1QRY7%2FqFsPFQfjifKXBrm2Htt%2Bog%3D%3D', '5e4b515b5c', NULL, NULL, 1, '2023-03-25 13:36:29', '2023-04-29 18:33:46'),
(9, 7, 3, 'osm', 'kst%2BFfNCZUElaJn7HGot85qSSmabAQ%3D%3D', '5356b0746b', NULL, NULL, 0, '2023-04-28 09:21:04', '2023-04-28 09:21:04'),
(10, 8, 1, 'sraafey', 'L23Gb%2B4Iy6pW1wYZQkYtGA%3D%3D', '80bf519108', NULL, NULL, 1, '2023-04-28 10:59:00', '2023-05-04 06:04:57'),
(15, 10, 1, 'sraafey123', 'VyIrJs9ebYgY83ZUH3OioYaCHQ%3D%3D', 'f176471e01', NULL, NULL, 1, '2023-05-02 17:49:06', '2023-05-04 06:07:43'),
(19, 11, 1, 'testing1', 'Ar3Wc%2FGBZzgJQzVITFyCMFwSb6BtnrxFSy4%3D', 'b87e3b9973', NULL, NULL, 1, '2023-05-03 06:11:14', '2023-05-03 06:12:54'),
(21, 9, 1, 'testing2', 'xdF3YCUBGnOpbocJ%2BUSWT%2F%2BQMhgbPpi8esc%3D', '0fd4750f17', NULL, NULL, 1, '2023-05-04 08:48:32', '2023-05-04 08:49:26'),
(22, 11, 3, 'accusr', 'uIA7CJor0ju0R0495OvDE9sAIQWyslo%3D', '69df751781', NULL, NULL, 1, '2023-05-04 13:39:12', '2023-05-04 13:40:06'),
(23, 1, 1, 'sraafey', 'MHYc6lNFyU1eYnpkdfTnOpxGIA%3D%3D', 'ff144175fa', '2023-05-18 22:00:00', 90, 0, '2023-05-04 20:06:18', '2023-05-23 05:41:49'),
(24, 12, 3, 'accusr', '62kzYj6nqedquGABT0sbzNHZWBBYHqh%2B', '12cf212973', NULL, NULL, 1, '2023-05-05 05:06:50', '2023-05-05 05:07:34'),
(28, 13, 1, 'accusr', NULL, NULL, NULL, NULL, 0, '2023-05-19 11:55:46', '2023-05-19 11:55:46'),
(29, 15, 29, 'accusr', 'Nu40a3vklO19fsAwRnsIklRWzaieoVBT', '577908a6e6', '2023-02-25 23:00:00', 90, 1, '2023-05-25 08:45:27', '2023-05-25 09:04:19'),
(30, 16, 30, 'accusr', '6BKhoWk%2Fu05Zan16wUWYWpqk68yXLoVw', '2027d82419', '2023-02-25 23:00:00', 90, 1, '2023-05-25 11:53:13', '2023-05-25 11:59:20'),
(31, 17, 36, 'qq_testing', NULL, NULL, NULL, NULL, 0, '2023-06-19 11:29:29', '2023-06-19 11:29:29'),
(32, 17, 36, 'qq_testing_1', NULL, NULL, NULL, NULL, 0, '2023-06-19 11:30:30', '2023-06-19 11:30:30'),
(33, 17, 36, 'qq_testing_2', NULL, NULL, NULL, NULL, 0, '2023-06-19 12:16:26', '2023-06-19 12:16:26'),
(34, 17, 36, 'qq_testing_3', NULL, NULL, NULL, NULL, 0, '2023-06-19 12:20:52', '2023-06-19 12:20:52'),
(35, 18, 3, 'accapp', NULL, NULL, NULL, NULL, 2, '2023-06-19 12:53:43', '2023-06-19 12:56:11'),
(36, 19, 3, 'accusr', NULL, NULL, NULL, NULL, 0, '2023-06-19 13:01:50', '2023-06-19 13:01:50'),
(37, 14, 3, 'vshete', NULL, NULL, NULL, NULL, 2, '2023-09-21 05:25:07', '2023-09-21 05:52:47'),
(38, 16, 3, 'vshete', NULL, NULL, NULL, NULL, 2, '2023-09-21 05:50:45', '2023-09-21 05:52:37'),
(41, 21, 3, 'vshete', 'Yr8EzMFcxFdFeF5F9ipr0MV5ZInDs9pd', 'f97717e9de', '2023-09-19 22:00:00', 30, 1, '2023-09-21 07:09:18', '2023-09-21 07:11:27');

-- --------------------------------------------------------

--
-- Table structure for table `show_hide_columns`
--

CREATE TABLE `show_hide_columns` (
  `id` int(11) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `column_0` tinyint(1) DEFAULT NULL,
  `column_1` tinyint(1) DEFAULT NULL,
  `column_2` tinyint(1) DEFAULT NULL,
  `column_3` tinyint(1) DEFAULT NULL,
  `column_4` tinyint(1) DEFAULT NULL,
  `column_5` tinyint(1) DEFAULT NULL,
  `column_6` tinyint(1) DEFAULT NULL,
  `column_7` tinyint(1) DEFAULT NULL,
  `column_8` tinyint(1) DEFAULT NULL,
  `column_9` tinyint(1) DEFAULT NULL,
  `column_10` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `show_hide_columns`
--

INSERT INTO `show_hide_columns` (`id`, `table_name`, `column_0`, `column_1`, `column_2`, `column_3`, `column_4`, `column_5`, `column_6`, `column_7`, `column_8`, `column_9`, `column_10`) VALUES
(1, 'server_users', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'users', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0),
(3, 'roles', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1),
(4, 'servers', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(5, 'password_encryption', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `unix_id` varchar(255) DEFAULT NULL,
  `market_id` int(11) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `l_name` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_varified_at` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT '0' COMMENT '0:- Normal user, 1:- Standard user',
  `password` varchar(255) DEFAULT NULL,
  `password_expires_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_deleted` int(11) DEFAULT '0',
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `unix_id`, `market_id`, `f_name`, `l_name`, `gender`, `email`, `email_varified_at`, `mobile`, `type`, `password`, `password_expires_at`, `status`, `is_active`, `is_deleted`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'abc123', 1, 'Sushil', 'Gujar', NULL, 'sushil.gurjar@vodafone.com', NULL, NULL, 1, '$2y$10$RxSba5FP3AfzfWuKJY3oTeUgGiVT2nyYgylP23UqVaDgKdP9cWZXC', NULL, 1, 1, 0, NULL, '2023-03-20 17:37:29', '2023-06-06 10:38:27'),
(2, 'xyz123', 1, 'Adnan', '', NULL, 'adnan@vodafone.com', NULL, NULL, 0, '$2y$10$RxSba5FP3AfzfWuKJY3oTeUgGiVT2nyYgylP23UqVaDgKdP9cWZXC', NULL, 1, 1, 0, NULL, '2023-03-20 17:39:38', '2023-05-25 08:35:15'),
(3, 'pqr123', 1, 'Vishal', 'Shete', NULL, 'vishal.shete@vodafone.com', NULL, NULL, 1, '$2y$10$RxSba5FP3AfzfWuKJY3oTeUgGiVT2nyYgylP23UqVaDgKdP9cWZXC', NULL, 1, 1, 0, NULL, '2023-03-20 17:40:47', '2023-05-24 10:07:40'),
(25, '133', 1, 'Komal', 'Naikwadi', NULL, 'komal.naikwadi@vodafone.com', NULL, NULL, 0, '$2y$10$RxSba5FP3AfzfWuKJY3oTeUgGiVT2nyYgylP23UqVaDgKdP9cWZXC', NULL, 1, 1, 0, NULL, '2023-03-25 09:28:44', '2023-05-02 05:12:47'),
(26, '123456', 1, 'Krupakaran', 'V', NULL, 'krupakaran.v@vodafone.com', NULL, NULL, 0, '$2y$10$AHhyIOHch8KhG8zZAtjZAecVtAuqIytg6DC2V8VrEmxvas8Ka02di', NULL, 1, 1, 0, NULL, '2023-05-05 10:01:04', '2023-05-05 10:19:22'),
(27, '123456', 1, 'Purnima', 'Sharma', NULL, 'purnima.sharma02@vodafone.com', NULL, NULL, 0, '$2y$10$JnQJ5Q0rUBB27v2DmpEK8uQnAz.PMHt4NKjNHnY15jcpNg1LDqh.i', NULL, 1, 1, 0, NULL, '2023-05-05 10:09:32', '2023-05-05 10:19:01'),
(29, '123456', 1, 'Rajnish', 'Pandey', NULL, 'rajnish.pandey@vodafone.com', NULL, NULL, 0, '520', NULL, 1, 1, 0, NULL, '2023-05-25 08:36:50', '2023-05-25 10:53:31'),
(33, '123456', 3, 'john', 'phillips', NULL, 'john.phillips@vodafone.com', NULL, NULL, 0, '$2y$10$97RddKxzA4XlS/WeVOiot.Bd4bKvqhzeTEu/Ye7Tq5ZiiU.CLXRq.', NULL, 1, 1, 0, NULL, '2023-06-06 11:10:47', '2023-06-06 11:10:47'),
(34, '123456', 3, 'john1', 'phillips', NULL, 'john1.phillips@vodafone.com', NULL, NULL, 0, '$2y$10$dxRhDp9AkT/40I8MDjC6JuiuiCUAC8JQbqKSXEUa5RoowB8UFkeRW', NULL, 1, 1, 0, NULL, '2023-06-08 07:35:40', '2023-06-08 07:35:40'),
(35, '123456', 3, 'john2', 'phillips', NULL, 'john2.phillips@vodafone.com', NULL, NULL, 0, '$2y$10$x/HTF3kOGCbx.wGJQ6OuCeMJUrZP7d1Bs9IFabEwQHrziJIaoPozu', NULL, 1, 1, 0, NULL, '2023-06-08 07:38:24', '2023-06-08 07:38:24'),
(36, '123456', 1, 'shoaib', 'raafey', NULL, 'shoaib.akhtar@vodafone.com', NULL, NULL, 0, '$2y$10$ASt.rH8EXR6j2jhVNpDU5O7XfBT8X9lsFjjfKi8HmHxmqb1vA/OUi', NULL, 1, 1, 0, NULL, '2023-06-19 11:24:17', '2023-06-19 11:24:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `connects`
--
ALTER TABLE `connects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grants`
--
ALTER TABLE `grants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `markets`
--
ALTER TABLE `markets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_encryption`
--
ALTER TABLE `password_encryption`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_requests`
--
ALTER TABLE `role_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_users`
--
ALTER TABLE `server_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `show_hide_columns`
--
ALTER TABLE `show_hide_columns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `connects`
--
ALTER TABLE `connects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `grants`
--
ALTER TABLE `grants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `markets`
--
ALTER TABLE `markets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `password_encryption`
--
ALTER TABLE `password_encryption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `role_requests`
--
ALTER TABLE `role_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `servers`
--
ALTER TABLE `servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `server_users`
--
ALTER TABLE `server_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `show_hide_columns`
--
ALTER TABLE `show_hide_columns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
