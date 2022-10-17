-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 17, 2022 at 03:38 PM
-- Server version: 10.5.15-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u323720655_danrino`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Norris Parker II', 'admin@gmail.com', '2022-06-28 16:20:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lNom6hddswwMU8lBzCcVTmgCj3usn7bfyTGQMBxq0vJP6ZkzYH0LxV06lCDo', '2022-06-28 16:20:00', '2022-06-28 16:20:00'),
(2, 'Kory Labadie', 'admin2@gmail.com', '2022-06-28 17:02:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PrANFljAXu', '2022-06-28 17:02:14', '2022-06-28 17:02:14'),
(4, 'Henriette Dietrich', 'admin3@gmail.com', '2022-06-28 17:06:46', '12345678', '1fTyZh5ffr', '2022-06-28 17:06:46', '2022-06-28 17:06:46');

-- --------------------------------------------------------

--
-- Table structure for table `ajit`
--

CREATE TABLE `ajit` (
  `ID` int(11) NOT NULL,
  `ClientID` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MetaDashboard` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MetaInbox` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Website` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ajit`
--

INSERT INTO `ajit` (`ID`, `ClientID`, `MetaDashboard`, `MetaInbox`, `Website`) VALUES
(1, '01SHR', 'https://business.facebook.com/latest/home?asset_id=731721720370383&nav_ref=pages_classic_isolated_section', 'https://business.facebook.com/latest/inbox/all?nav_ref=pages_classic_isolated_section&mailbox_id=731721720370383&selected_item_id=340282366841710300949128273992625683115', 'https://www.shreeacupressure.com/'),
(2, '02SYG', 'https://business.facebook.com/latest/home?asset_id=109960757359179&nav_ref=pages_classic_isolated_section', 'https://business.facebook.com/latest/inbox/all?nav_ref=pages_classic_isolated_section', 'https://sygnustech.com/');

-- --------------------------------------------------------

--
-- Table structure for table `Content`
--

CREATE TABLE `Content` (
  `contentID` int(11) NOT NULL,
  `websiteID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Content`
--

INSERT INTO `Content` (`contentID`, `websiteID`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ContentJunction`
--

CREATE TABLE `ContentJunction` (
  `content_junctionID` int(11) NOT NULL,
  `pageID` int(11) DEFAULT NULL,
  `content_typeID` int(11) DEFAULT NULL,
  `page_deatilsID` int(11) DEFAULT NULL,
  `contentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ContentTypes`
--

CREATE TABLE `ContentTypes` (
  `content_typeID` int(11) NOT NULL,
  `content_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ContentTypes`
--

INSERT INTO `ContentTypes` (`content_typeID`, `content_type`) VALUES
(1, 'Services');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Headings`
--

CREATE TABLE `Headings` (
  `headingID` int(11) NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Headings`
--

INSERT INTO `Headings` (`headingID`, `heading`, `heading_type`) VALUES
(1, 'Our Services', 'Heading'),
(2, 'service 1', 'list'),
(3, 'service 2', 'list');

-- --------------------------------------------------------

--
-- Table structure for table `Images`
--

CREATE TABLE `Images` (
  `imageID` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_alt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Images`
--

INSERT INTO `Images` (`imageID`, `image`, `image_title`, `image_link`, `image_alt`, `image_type`) VALUES
(1, 'img 1', NULL, NULL, NULL, NULL),
(2, 'image 2', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `listing`
--

CREATE TABLE `listing` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `id` int(11) NOT NULL,
  `listing_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `listing_order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing`
--

INSERT INTO `listing` (`user_id`, `id`, `listing_name`, `listing_order_id`) VALUES
(2, 6, 'DESS', NULL),
(2, 7, 'DESS', NULL),
(2, 8, 'DESS', 'order_JqVR7Bxki5qBqb'),
(2, 9, 'DESS', NULL),
(2, 10, 'DESS', 'order_JqVVYwmY7IQkCt'),
(2, 11, 'DESS T@', 'order_JqvoX0DFEL4AdO');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_06_28_212432_create_admins_table', 2),
(7, '2019_05_03_000001_create_customer_columns', 3),
(8, '2019_05_03_000002_create_subscriptions_table', 3),
(9, '2019_05_03_000003_create_subscription_items_table', 3),
(10, '2022_07_03_074744_create_plans_table', 4),
(11, '2022_07_03_142333_create_products_table', 5),
(12, '2022_07_03_161939_create_orders_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `razorpay_payment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpay_signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(10,2) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'created',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_id`, `order_id`, `razorpay_payment_id`, `razorpay_signature`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(10, 2, 2, 'order_JqVPTbx6doDXbI', 'pay_JqVPvT9wmO6xkY', '13d89b841caeca49b166ffbf5c4587777237af5feb1408e2f2fff14c492eb669', 1.00, 'paid', '2022-07-07 08:45:46', '2022-07-07 08:46:16'),
(11, 2, 2, 'order_JqVR7Bxki5qBqb', 'pay_JqVRG9ePwD2qsj', '8c215e4f88b1efa45fb9f2dd49cb7ccb25b06ee5fe590d8fea63594dd3834e0f', 1.00, 'paid', '2022-07-07 08:47:19', '2022-07-07 08:47:32'),
(12, 2, 2, 'order_JqVSEtAyhjkH3M', NULL, NULL, 1.00, 'created', '2022-07-07 08:48:23', '2022-07-07 08:48:23'),
(13, 2, 2, 'order_JqVVYwmY7IQkCt', 'pay_JqVVjZJOCilmDb', 'a89842f9cad7a9f3fad6c9739cf5c52a973dd944f383d5c2c8f607b6a9aee67d', 1.00, 'paid', '2022-07-07 08:51:32', '2022-07-07 08:51:47'),
(14, 2, 2, 'order_JqXhPgugHAaQn3', NULL, NULL, 1.00, 'created', '2022-07-07 11:00:08', '2022-07-07 11:00:08'),
(15, 2, 2, 'order_JqXmE5BtKGWjYK', NULL, NULL, 1.00, 'created', '2022-07-07 11:04:41', '2022-07-07 11:04:41'),
(16, 2, 2, 'order_JqXsZ49YvMOVVn', NULL, NULL, 1.00, 'created', '2022-07-07 11:10:41', '2022-07-07 11:10:41'),
(17, 2, 2, 'order_JqXsineumV1ttN', NULL, NULL, 1.00, 'created', '2022-07-07 11:10:50', '2022-07-07 11:10:50'),
(18, 2, 2, 'order_JqXuYiKUJ1my87', NULL, NULL, 1.00, 'created', '2022-07-07 11:12:34', '2022-07-07 11:12:34'),
(19, 2, 2, 'order_JqXwipEIwE1Amf', NULL, NULL, 1.00, 'created', '2022-07-07 11:14:37', '2022-07-07 11:14:37'),
(20, 2, 2, 'order_JqXwvQF24xb7QK', NULL, NULL, 1.00, 'created', '2022-07-07 11:14:49', '2022-07-07 11:14:49'),
(21, 2, 2, 'order_JqXxKhSt05xGnM', NULL, NULL, 1.00, 'created', '2022-07-07 11:15:12', '2022-07-07 11:15:12'),
(22, 2, 2, 'order_JqYBLkAXpgV4lz', NULL, NULL, 1.00, 'created', '2022-07-07 11:28:28', '2022-07-07 11:28:28'),
(23, 2, 2, 'order_JqYCIEWPyY0GkI', NULL, NULL, 1.00, 'created', '2022-07-07 11:29:22', '2022-07-07 11:29:22'),
(24, 2, 2, 'order_JqYD8hWpNX13sO', NULL, NULL, 1.00, 'created', '2022-07-07 11:30:10', '2022-07-07 11:30:10'),
(25, 2, 2, 'order_JqYICVBeivsbSF', NULL, NULL, 1.00, 'created', '2022-07-07 11:34:57', '2022-07-07 11:34:57'),
(26, 2, 2, 'order_JqYMnyBH8QuXUo', NULL, NULL, 1.00, 'created', '2022-07-07 11:39:19', '2022-07-07 11:39:19'),
(27, 2, 2, 'order_JqYaWmE4xwrWCe', NULL, NULL, 1.00, 'created', '2022-07-07 11:52:18', '2022-07-07 11:52:18'),
(28, 2, 2, 'order_JqYabZcaPkReXM', NULL, NULL, 1.00, 'created', '2022-07-07 11:52:23', '2022-07-07 11:52:23'),
(29, 2, 2, 'order_JqYcY3IEO0yMNY', NULL, NULL, 1.00, 'created', '2022-07-07 11:54:13', '2022-07-07 11:54:13'),
(30, 2, 2, 'order_JqYgIhym4Qk5Y1', NULL, NULL, 1.00, 'created', '2022-07-07 11:57:46', '2022-07-07 11:57:46'),
(31, 2, 2, 'order_JqYgRFWw9MPJnk', NULL, NULL, 1.00, 'created', '2022-07-07 11:57:54', '2022-07-07 11:57:54'),
(32, 2, 2, 'order_JqYi8EwdeTRluC', NULL, NULL, 1.00, 'created', '2022-07-07 11:59:30', '2022-07-07 11:59:30'),
(33, 2, 2, 'order_JqYl505KNWOYhY', NULL, NULL, 1.00, 'created', '2022-07-07 12:02:18', '2022-07-07 12:02:18'),
(34, 2, 2, 'order_JqYnT48ZB4TMkJ', NULL, NULL, 1.00, 'created', '2022-07-07 12:04:33', '2022-07-07 12:04:33'),
(35, 2, 2, 'order_JqYntAJ8ZCn6Jf', NULL, NULL, 1.00, 'created', '2022-07-07 12:04:57', '2022-07-07 12:04:57'),
(36, 2, 2, 'order_JqgBo0QZLlex7x', NULL, NULL, 1.00, 'created', '2022-07-07 19:18:27', '2022-07-07 19:18:27'),
(37, 2, 2, 'order_JqgCgQlaJcVhMh', NULL, NULL, 1.00, 'created', '2022-07-07 19:19:16', '2022-07-07 19:19:16'),
(38, 2, 2, 'order_JqgDPkCsWnNJPH', NULL, NULL, 1.00, 'created', '2022-07-07 19:19:58', '2022-07-07 19:19:58'),
(39, 2, 2, 'order_JqgDY14tyf2hKe', NULL, NULL, 1.00, 'created', '2022-07-07 19:20:05', '2022-07-07 19:20:05'),
(40, 2, 2, 'order_JqgH4zQvn8LrSC', NULL, NULL, 1.00, 'created', '2022-07-07 19:23:26', '2022-07-07 19:23:26'),
(41, 2, 2, 'order_JqgHNHCY8srwLe', NULL, NULL, 1.00, 'created', '2022-07-07 19:23:43', '2022-07-07 19:23:43'),
(42, 2, 2, 'order_JqgHuEs0zzr7dN', NULL, NULL, 1.00, 'created', '2022-07-07 19:24:13', '2022-07-07 19:24:13'),
(43, 2, 2, 'order_JqgI1Ok2YHXepJ', NULL, NULL, 1.00, 'created', '2022-07-07 19:24:20', '2022-07-07 19:24:20'),
(44, 2, 2, 'order_JqgIbfPZSpI9V5', NULL, NULL, 1.00, 'created', '2022-07-07 19:24:53', '2022-07-07 19:24:53'),
(45, 2, 2, 'order_JqgJIZV2LpXWQh', NULL, NULL, 1.00, 'created', '2022-07-07 19:25:32', '2022-07-07 19:25:32'),
(46, 2, 2, 'order_JqgJoQzLHNtDby', NULL, NULL, 1.00, 'created', '2022-07-07 19:26:01', '2022-07-07 19:26:01'),
(47, 2, 2, 'order_JqgLMzoffrXYeC', NULL, NULL, 1.00, 'created', '2022-07-07 19:27:30', '2022-07-07 19:27:30'),
(48, 2, 2, 'order_JqgLX0ij31i0pV', NULL, NULL, 1.00, 'created', '2022-07-07 19:27:39', '2022-07-07 19:27:39'),
(49, 2, 2, 'order_JqgLgkjcF7Gjka', NULL, NULL, 1.00, 'created', '2022-07-07 19:27:48', '2022-07-07 19:27:48'),
(50, 2, 2, 'order_JqgPXc41tvSRUj', NULL, NULL, 1.00, 'created', '2022-07-07 19:31:27', '2022-07-07 19:31:27'),
(51, 2, 2, 'order_JqgT25KKrPJ384', NULL, NULL, 1.00, 'created', '2022-07-07 19:34:45', '2022-07-07 19:34:45'),
(52, 2, 2, 'order_JqgUQ2ZOpevWg6', NULL, NULL, 1.00, 'created', '2022-07-07 19:36:04', '2022-07-07 19:36:04'),
(53, 2, 2, 'order_JqgUbYhk2p6scT', NULL, NULL, 1.00, 'created', '2022-07-07 19:36:14', '2022-07-07 19:36:14'),
(54, 2, 2, 'order_JqgVwTNR0kqHfe', NULL, NULL, 1.00, 'created', '2022-07-07 19:37:30', '2022-07-07 19:37:30'),
(55, 2, 2, 'order_JqgWL240fboVi6', NULL, NULL, 1.00, 'created', '2022-07-07 19:37:53', '2022-07-07 19:37:53'),
(56, 2, 2, 'order_JqgWV9bjLsHccp', NULL, NULL, 1.00, 'created', '2022-07-07 19:38:02', '2022-07-07 19:38:02'),
(57, 2, 2, 'order_JqgXCC3ozMrX24', NULL, NULL, 1.00, 'created', '2022-07-07 19:38:41', '2022-07-07 19:38:41'),
(58, 2, 2, 'order_JqgcKEOIGHQljT', NULL, NULL, 1.00, 'created', '2022-07-07 19:43:33', '2022-07-07 19:43:33'),
(59, 2, 2, 'order_JqgdLC1E9Q0yZ6', NULL, NULL, 1.00, 'created', '2022-07-07 19:44:30', '2022-07-07 19:44:30'),
(60, 2, 2, 'order_Jqgdm0CAsqFBHv', NULL, NULL, 1.00, 'created', '2022-07-07 19:44:55', '2022-07-07 19:44:55'),
(61, 2, 2, 'order_JqgesGNq1yx7BQ', NULL, NULL, 1.00, 'created', '2022-07-07 19:45:58', '2022-07-07 19:45:58'),
(62, 2, 2, 'order_JqgfLvBOrHJ5FW', NULL, NULL, 1.00, 'created', '2022-07-07 19:46:25', '2022-07-07 19:46:25'),
(63, 2, 2, 'order_Jqgh1pS8YNFIjV', NULL, NULL, 1.00, 'created', '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(64, 2, 2, 'order_JqghujVSPSwT88', NULL, NULL, 1.00, 'created', '2022-07-07 19:48:50', '2022-07-07 19:48:50'),
(65, 2, 2, 'order_JqgjZwwDrsJm8m', NULL, NULL, 1.00, 'created', '2022-07-07 19:50:25', '2022-07-07 19:50:25'),
(66, 2, 2, 'order_JqgkBJlk6oC5BM', NULL, NULL, 1.00, 'created', '2022-07-07 19:50:59', '2022-07-07 19:50:59'),
(67, 2, 2, 'order_JqgkevLWBw0hnc', NULL, NULL, 1.00, 'created', '2022-07-07 19:51:26', '2022-07-07 19:51:26'),
(68, 2, 2, 'order_JqgkjDGK8DGA95', NULL, NULL, 1.00, 'created', '2022-07-07 19:51:30', '2022-07-07 19:51:30'),
(69, 2, 2, 'order_JqglDKIvGPycru', NULL, NULL, 1.00, 'created', '2022-07-07 19:51:58', '2022-07-07 19:51:58'),
(70, 2, 2, 'order_JqglOKKJ6gvjDI', NULL, NULL, 1.00, 'created', '2022-07-07 19:52:08', '2022-07-07 19:52:08'),
(71, 2, 2, 'order_Jqglqqt9U0riaA', NULL, NULL, 1.00, 'created', '2022-07-07 19:52:34', '2022-07-07 19:52:34'),
(72, 2, 2, 'order_JqpUUvTQ169a7h', NULL, NULL, 1.00, 'created', '2022-07-08 09:54:24', '2022-07-08 09:54:24'),
(73, 2, 2, 'order_JqpVCe6Ei1fntE', NULL, NULL, 1.00, 'created', '2022-07-08 09:55:04', '2022-07-08 09:55:04'),
(74, 2, 1, 'order_JqphUBFL1rOR2M', NULL, NULL, 1000.00, 'created', '2022-07-08 10:06:42', '2022-07-08 10:06:42'),
(75, 2, 1, 'order_JqphnHZDX3gp31', NULL, NULL, 1000.00, 'created', '2022-07-08 10:06:59', '2022-07-08 10:06:59'),
(76, 2, 1, 'order_JqpjtBKPfScI4Q', NULL, NULL, 1000.00, 'created', '2022-07-08 10:08:58', '2022-07-08 10:08:58'),
(77, 2, 1, 'order_JqqB96miORpGFl', NULL, NULL, 1000.00, 'created', '2022-07-08 10:34:47', '2022-07-08 10:34:47'),
(78, 2, 1, 'order_JqqB9AyfpdMIvT', NULL, NULL, 1000.00, 'created', '2022-07-08 10:34:47', '2022-07-08 10:34:47'),
(79, 2, 1, 'order_Jqu11SI7Ax1P2B', NULL, NULL, 1000.00, 'created', '2022-07-08 14:19:58', '2022-07-08 14:19:58'),
(80, 2, 1, 'order_Jqu2z9kpdfbZwC', NULL, NULL, 1000.00, 'created', '2022-07-08 14:21:50', '2022-07-08 14:21:50'),
(81, 2, 2, 'order_Jqu38ImvBDrwn2', NULL, NULL, 1.00, 'created', '2022-07-08 14:21:58', '2022-07-08 14:21:58'),
(82, 2, 2, 'order_Jqu5PAO8Gkvn9o', NULL, NULL, 1.00, 'created', '2022-07-08 14:24:07', '2022-07-08 14:24:07'),
(83, 2, 2, 'order_Jqu64s0cmLdVDs', NULL, NULL, 1.00, 'created', '2022-07-08 14:24:45', '2022-07-08 14:24:45'),
(84, 2, 2, 'order_Jqu7rPzS3aCEAo', NULL, NULL, 1.00, 'created', '2022-07-08 14:26:26', '2022-07-08 14:26:26'),
(85, 2, 2, 'order_Jqu7uwrXKWBYmN', NULL, NULL, 1.00, 'created', '2022-07-08 14:26:30', '2022-07-08 14:26:30'),
(86, 2, 2, 'order_Jqu8ko1ST76pfS', NULL, NULL, 1.00, 'created', '2022-07-08 14:27:17', '2022-07-08 14:27:17'),
(87, 2, 2, 'order_JquADPXxd3SDAJ', NULL, NULL, 1.00, 'created', '2022-07-08 14:28:40', '2022-07-08 14:28:40'),
(88, 2, 2, 'order_JquBZxJBfVbUdq', NULL, NULL, 1.00, 'created', '2022-07-08 14:29:58', '2022-07-08 14:29:58'),
(89, 2, 2, 'order_JquBk2FHORnL29', NULL, NULL, 1.00, 'created', '2022-07-08 14:30:07', '2022-07-08 14:30:07'),
(90, 2, 2, 'order_JquEhtaq1G5B0r', NULL, NULL, 1.00, 'created', '2022-07-08 14:32:55', '2022-07-08 14:32:55'),
(91, 2, 2, 'order_JquF6cKtVbZRDj', 'pay_Jqvjen74p2TtUO', '64f87a5e6360bd2097c5ad55173cef51a80e5f417ba57ffe33f6b28b389f9d80', 1.00, 'paid', '2022-07-08 14:33:18', '2022-07-08 16:01:00'),
(92, 2, 2, 'order_JqvktN5Bg78Khx', 'pay_JqvlHuwjjaWzAu', 'c523c2c56f43a089aa71449694bb57186ae4550fa604a45f77548f3e62d852ed', 1.00, 'paid', '2022-07-08 16:02:05', '2022-07-08 16:02:32'),
(93, 2, 2, 'order_JqvmQEDYEojb2l', NULL, NULL, 1.00, 'created', '2022-07-08 16:03:32', '2022-07-08 16:03:32'),
(94, 2, 2, 'order_JqvoX0DFEL4AdO', 'pay_JqvolOY4oogAch', '8aa3a6c22241bb1ec37f274b09d0d61f5a987df3f9a8fd99bb43387167c1ca39', 1.00, 'paid', '2022-07-08 16:05:32', '2022-07-08 16:05:50'),
(95, 2, 2, 'order_JqwLDzVvzItlUk', NULL, NULL, 1.00, 'created', '2022-07-08 16:36:29', '2022-07-08 16:36:29'),
(96, 2, 2, 'order_JqwOQWivCIh663', NULL, NULL, 1.00, 'created', '2022-07-08 16:39:31', '2022-07-08 16:39:31'),
(97, 2, 2, 'order_JqwOgnpNtsZBwU', NULL, NULL, 1.00, 'created', '2022-07-08 16:39:46', '2022-07-08 16:39:46'),
(98, 2, 2, 'order_JqwRKuanhRYcxz', NULL, NULL, 1.00, 'created', '2022-07-08 16:42:16', '2022-07-08 16:42:16'),
(99, 2, 2, 'order_JqwRW3RL8Vfq5z', NULL, NULL, 1.00, 'created', '2022-07-08 16:42:26', '2022-07-08 16:42:26'),
(100, 2, 2, 'order_JqwSMRQcvJ0UzF', NULL, NULL, 1.00, 'created', '2022-07-08 16:43:14', '2022-07-08 16:43:14'),
(101, 2, 2, 'order_JqwSa1PSRvRezT', NULL, NULL, 1.00, 'created', '2022-07-08 16:43:27', '2022-07-08 16:43:27'),
(102, 2, 2, 'order_JqwTNzGiEASZDw', NULL, NULL, 1.00, 'created', '2022-07-08 16:44:12', '2022-07-08 16:44:12'),
(103, 2, 2, 'order_JqwUDA81laI3qk', NULL, NULL, 1.00, 'created', '2022-07-08 16:44:59', '2022-07-08 16:44:59'),
(104, 2, 2, 'order_JqwUyBOboPK00A', NULL, NULL, 1.00, 'created', '2022-07-08 16:45:42', '2022-07-08 16:45:42'),
(105, 2, 2, 'order_JqwVVVw5aLJXAh', NULL, NULL, 1.00, 'created', '2022-07-08 16:46:13', '2022-07-08 16:46:13'),
(106, 2, 2, 'order_JqwVwd6ZX8QdHF', NULL, NULL, 1.00, 'created', '2022-07-08 16:46:38', '2022-07-08 16:46:38'),
(107, 2, 2, 'order_JqwW1HQ0NaoYhl', NULL, NULL, 1.00, 'created', '2022-07-08 16:46:42', '2022-07-08 16:46:42'),
(108, 2, 2, 'order_JqwXMvA321jZk2', NULL, NULL, 1.00, 'created', '2022-07-08 16:47:59', '2022-07-08 16:47:59'),
(109, 2, 2, 'order_JqwYDZTMnQT8an', NULL, NULL, 1.00, 'created', '2022-07-08 16:48:47', '2022-07-08 16:48:47'),
(110, 2, 2, 'order_JqwYy1tNxaJDis', NULL, NULL, 1.00, 'created', '2022-07-08 16:49:29', '2022-07-08 16:49:29'),
(111, 2, 2, 'order_JqwZt8ooxMFCTZ', NULL, NULL, 1.00, 'created', '2022-07-08 16:50:22', '2022-07-08 16:50:22'),
(112, 2, 2, 'order_JqwZz9r4pIgNf3', NULL, NULL, 1.00, 'created', '2022-07-08 16:50:27', '2022-07-08 16:50:27'),
(113, 2, 2, 'order_Jqwa3TcG3LK5Ow', NULL, NULL, 1.00, 'created', '2022-07-08 16:50:31', '2022-07-08 16:50:31'),
(114, 2, 2, 'order_JqwaquTCKAj4wx', NULL, NULL, 1.00, 'created', '2022-07-08 16:51:16', '2022-07-08 16:51:16'),
(115, 2, 2, 'order_JqwbUnsMBNgdjY', NULL, NULL, 1.00, 'created', '2022-07-08 16:51:53', '2022-07-08 16:51:53'),
(116, 2, 2, 'order_Jqwbi2zJvz5VzD', NULL, NULL, 1.00, 'created', '2022-07-08 16:52:05', '2022-07-08 16:52:05'),
(117, 2, 2, 'order_JqwcCIVkDR71JR', NULL, NULL, 1.00, 'created', '2022-07-08 16:52:33', '2022-07-08 16:52:33'),
(118, 2, 2, 'order_JqwcY2P74DCrVe', NULL, NULL, 1.00, 'created', '2022-07-08 16:52:53', '2022-07-08 16:52:53'),
(119, 2, 2, 'order_JqwciBSSr75fdM', NULL, NULL, 1.00, 'created', '2022-07-08 16:53:02', '2022-07-08 16:53:02'),
(120, 2, 2, 'order_JqwcqQZv2MgNeN', NULL, NULL, 1.00, 'created', '2022-07-08 16:53:10', '2022-07-08 16:53:10'),
(121, 2, 2, 'order_JqwdUVZBFkohNz', NULL, NULL, 1.00, 'created', '2022-07-08 16:53:46', '2022-07-08 16:53:46'),
(122, 2, 2, 'order_JqwdhDUabWUsag', NULL, NULL, 1.00, 'created', '2022-07-08 16:53:58', '2022-07-08 16:53:58'),
(123, 2, 2, 'order_JrTSXUHVkMdbmu', NULL, NULL, 1.00, 'created', '2022-07-10 01:00:18', '2022-07-10 01:00:18'),
(124, 2, 2, 'order_JrTTEv5Pz7w1pO', NULL, NULL, 1.00, 'created', '2022-07-10 01:00:57', '2022-07-10 01:00:57'),
(125, 2, 2, 'order_JrTTM2Lp08MIrt', NULL, NULL, 1.00, 'created', '2022-07-10 01:01:04', '2022-07-10 01:01:04'),
(126, 2, 2, 'order_JrTTmRJWGjEfws', NULL, NULL, 1.00, 'created', '2022-07-10 01:01:28', '2022-07-10 01:01:28'),
(127, 2, 2, 'order_JrTUduNdNv6WKr', NULL, NULL, 1.00, 'created', '2022-07-10 01:02:17', '2022-07-10 01:02:17'),
(128, 2, 2, 'order_JrTV6Oi4Dj68I2', NULL, NULL, 1.00, 'created', '2022-07-10 01:02:43', '2022-07-10 01:02:43'),
(129, 2, 2, 'order_JrTWgKK5cfldoL', NULL, NULL, 1.00, 'created', '2022-07-10 01:04:13', '2022-07-10 01:04:13'),
(130, 2, 2, 'order_JrTWl6XHAv1VjA', NULL, NULL, 1.00, 'created', '2022-07-10 01:04:17', '2022-07-10 01:04:17'),
(131, 2, 2, 'order_JrTaWsXgJMokSZ', NULL, NULL, 1.00, 'created', '2022-07-10 01:07:51', '2022-07-10 01:07:51'),
(132, 2, 2, 'order_JrTb2TkWYtbIYX', NULL, NULL, 1.00, 'created', '2022-07-10 01:08:20', '2022-07-10 01:08:20'),
(133, 2, 2, 'order_JrTbSslnfOImeL', NULL, NULL, 1.00, 'created', '2022-07-10 01:08:45', '2022-07-10 01:08:45'),
(134, 2, 2, 'order_JrTbuOO8Qkpbjt', NULL, NULL, 1.00, 'created', '2022-07-10 01:09:10', '2022-07-10 01:09:10'),
(135, 2, 2, 'order_JrTdG9rByxBpcn', NULL, NULL, 1.00, 'created', '2022-07-10 01:10:26', '2022-07-10 01:10:26'),
(136, 2, 2, 'order_JrTeYqdIoFv0cv', NULL, NULL, 1.00, 'created', '2022-07-10 01:11:40', '2022-07-10 01:11:40'),
(137, 2, 2, 'order_JrTgFMjDT0H4El', NULL, NULL, 1.00, 'created', '2022-07-10 01:13:16', '2022-07-10 01:13:16'),
(138, 2, 2, 'order_JrThNX5qGFdnDV', NULL, NULL, 1.00, 'created', '2022-07-10 01:14:20', '2022-07-10 01:14:20'),
(139, 2, 2, 'order_JrThvFgSJaHe9c', NULL, NULL, 1.00, 'created', '2022-07-10 01:14:51', '2022-07-10 01:14:51'),
(140, 2, 2, 'order_JrTj3G2Exvggpf', NULL, NULL, 1.00, 'created', '2022-07-10 01:15:55', '2022-07-10 01:15:55'),
(141, 2, 2, 'order_JrToyJlbeJZ4xF', NULL, NULL, 1.00, 'created', '2022-07-10 01:21:32', '2022-07-10 01:21:32'),
(142, 2, 2, 'order_JrTqlgY0Rw66Rg', NULL, NULL, 1.00, 'created', '2022-07-10 01:23:14', '2022-07-10 01:23:14'),
(143, 2, 2, 'order_JrTrpWdOT0HTPN', NULL, NULL, 1.00, 'created', '2022-07-10 01:24:14', '2022-07-10 01:24:14'),
(144, 2, 2, 'order_JrTs6Eg4UvoFhs', NULL, NULL, 1.00, 'created', '2022-07-10 01:24:29', '2022-07-10 01:24:29'),
(145, 2, 2, 'order_JrTsTZeqwEg2Rg', NULL, NULL, 1.00, 'created', '2022-07-10 01:24:51', '2022-07-10 01:24:51'),
(146, 2, 2, 'order_JrTsiGIYLJICUh', NULL, NULL, 1.00, 'created', '2022-07-10 01:25:04', '2022-07-10 01:25:04'),
(147, 2, 2, 'order_JrTsu3GG7HlqnP', NULL, NULL, 1.00, 'created', '2022-07-10 01:25:15', '2022-07-10 01:25:15'),
(148, 2, 2, 'order_JrTvQDyVsHBRUl', NULL, NULL, 1.00, 'created', '2022-07-10 01:27:38', '2022-07-10 01:27:38'),
(149, 2, 2, 'order_JrTx6dG5j3HzeT', NULL, NULL, 1.00, 'created', '2022-07-10 01:29:14', '2022-07-10 01:29:14'),
(150, 2, 2, 'order_JrTxSCgO9bjmla', NULL, NULL, 1.00, 'created', '2022-07-10 01:29:33', '2022-07-10 01:29:33'),
(151, 2, 2, 'order_JrTyakaFKX0LA9', NULL, NULL, 1.00, 'created', '2022-07-10 01:30:38', '2022-07-10 01:30:38'),
(152, 2, 2, 'order_JrU2UOSmC5z6ID', NULL, NULL, 1.00, 'created', '2022-07-10 01:34:19', '2022-07-10 01:34:19'),
(153, 2, 2, 'order_JrU3yTl7v6PM06', NULL, NULL, 1.00, 'created', '2022-07-10 01:35:44', '2022-07-10 01:35:44'),
(154, 2, 2, 'order_JrU4rwjW3HkTxo', NULL, NULL, 1.00, 'created', '2022-07-10 01:36:35', '2022-07-10 01:36:35'),
(155, 2, 2, 'order_JrU5Iua7oEklsz', NULL, NULL, 1.00, 'created', '2022-07-10 01:36:59', '2022-07-10 01:36:59'),
(156, 2, 2, 'order_JrU6Bdl0z1CRzh', NULL, NULL, 1.00, 'created', '2022-07-10 01:37:50', '2022-07-10 01:37:50'),
(157, 2, 2, 'order_JrUBnrDT1Gfpk9', NULL, NULL, 1.00, 'created', '2022-07-10 01:43:09', '2022-07-10 01:43:09'),
(158, 2, 2, 'order_JrUCYNRKlk0eM0', NULL, NULL, 1.00, 'created', '2022-07-10 01:43:51', '2022-07-10 01:43:51'),
(159, 2, 2, 'order_JrUJb3Fi2Dfsze', NULL, NULL, 1.00, 'created', '2022-07-10 01:50:31', '2022-07-10 01:50:31'),
(160, 2, 2, 'order_JrUJozzMwGPiIS', NULL, NULL, 1.00, 'created', '2022-07-10 01:50:44', '2022-07-10 01:50:44'),
(161, 2, 2, 'order_JrUKEWUgRvA86L', NULL, NULL, 1.00, 'created', '2022-07-10 01:51:07', '2022-07-10 01:51:07'),
(162, 2, 2, 'order_JrUKbEfFdacTGl', NULL, NULL, 1.00, 'created', '2022-07-10 01:51:28', '2022-07-10 01:51:28'),
(163, 2, 2, 'order_JrULNbOh1itVZg', NULL, NULL, 1.00, 'created', '2022-07-10 01:52:12', '2022-07-10 01:52:12'),
(164, 2, 2, 'order_JrUMvB6KIVNODC', NULL, NULL, 1.00, 'created', '2022-07-10 01:53:40', '2022-07-10 01:53:40'),
(165, 2, 2, 'order_JrUNN87OVWXFeV', NULL, NULL, 1.00, 'created', '2022-07-10 01:54:06', '2022-07-10 01:54:06'),
(166, 2, 2, 'order_JrUNbSpYz0GuxF', NULL, NULL, 1.00, 'created', '2022-07-10 01:54:19', '2022-07-10 01:54:19'),
(167, 2, 2, 'order_JrUNpRvNh8BuoZ', NULL, NULL, 1.00, 'created', '2022-07-10 01:54:32', '2022-07-10 01:54:32'),
(168, 2, 2, 'order_JrUOPl0UVc58PS', NULL, NULL, 1.00, 'created', '2022-07-10 01:55:05', '2022-07-10 01:55:05'),
(169, 2, 2, 'order_JrUOaV0LnUnfS3', NULL, NULL, 1.00, 'created', '2022-07-10 01:55:15', '2022-07-10 01:55:15'),
(170, 2, 2, 'order_JrUP8FiicNJRxI', NULL, NULL, 1.00, 'created', '2022-07-10 01:55:46', '2022-07-10 01:55:46'),
(171, 2, 2, 'order_JrUPJlSL8Nw4yc', NULL, NULL, 1.00, 'created', '2022-07-10 01:55:56', '2022-07-10 01:55:56'),
(172, 2, 2, 'order_JrUPs3RO6UHocu', NULL, NULL, 1.00, 'created', '2022-07-10 01:56:28', '2022-07-10 01:56:28'),
(173, 2, 2, 'order_JrUQ5yhBp55311', NULL, NULL, 1.00, 'created', '2022-07-10 01:56:40', '2022-07-10 01:56:40'),
(174, 2, 2, 'order_JrUQa9mxiQf6WG', NULL, NULL, 1.00, 'created', '2022-07-10 01:57:08', '2022-07-10 01:57:08'),
(175, 2, 2, 'order_JrUQlcnQ33Ex5z', NULL, NULL, 1.00, 'created', '2022-07-10 01:57:19', '2022-07-10 01:57:19'),
(176, 2, 2, 'order_JrURj5AS6YNDjf', NULL, NULL, 1.00, 'created', '2022-07-10 01:58:13', '2022-07-10 01:58:13'),
(177, 2, 2, 'order_JrURxe7m9Q8YSZ', NULL, NULL, 1.00, 'created', '2022-07-10 01:58:26', '2022-07-10 01:58:26'),
(178, 2, 2, 'order_JrUSNx0YUO3xp0', NULL, NULL, 1.00, 'created', '2022-07-10 01:58:50', '2022-07-10 01:58:50'),
(179, 2, 2, 'order_JrUSYe0TYNXr9Z', NULL, NULL, 1.00, 'created', '2022-07-10 01:59:00', '2022-07-10 01:59:00'),
(180, 2, 2, 'order_JrUSk7rLFgUb4Q', NULL, NULL, 1.00, 'created', '2022-07-10 01:59:11', '2022-07-10 01:59:11'),
(181, 2, 2, 'order_JrUTSrvQZFBgRU', NULL, NULL, 1.00, 'created', '2022-07-10 01:59:52', '2022-07-10 01:59:52'),
(182, 2, 2, 'order_JrUTfCHkJ8yPqa', NULL, NULL, 1.00, 'created', '2022-07-10 02:00:03', '2022-07-10 02:00:03'),
(183, 2, 2, 'order_JrUUEk6WtMvnqL', NULL, NULL, 1.00, 'created', '2022-07-10 02:00:36', '2022-07-10 02:00:36'),
(184, 2, 2, 'order_JrWVmhlez2DWDJ', NULL, NULL, 1.00, 'created', '2022-07-10 03:59:27', '2022-07-10 03:59:27'),
(185, 2, 2, 'order_JrWWXnZEr84l2q', NULL, NULL, 1.00, 'created', '2022-07-10 04:00:10', '2022-07-10 04:00:10'),
(186, 2, 2, 'order_JrWXNYUw6ZQXh7', NULL, NULL, 1.00, 'created', '2022-07-10 04:00:57', '2022-07-10 04:00:57'),
(187, 2, 2, 'order_JrWXx9gmTUbo7Z', NULL, NULL, 1.00, 'created', '2022-07-10 04:01:30', '2022-07-10 04:01:30'),
(188, 2, 2, 'order_JrWZ0SNwLDlLEn', NULL, NULL, 1.00, 'created', '2022-07-10 04:02:30', '2022-07-10 04:02:30'),
(189, 2, 2, 'order_JrWZFPj907irpc', NULL, NULL, 1.00, 'created', '2022-07-10 04:02:43', '2022-07-10 04:02:43'),
(190, 2, 2, 'order_JrWZn45inHy32j', NULL, NULL, 1.00, 'created', '2022-07-10 04:03:14', '2022-07-10 04:03:14'),
(191, 2, 2, 'order_JrWaHQhNqpp4Au', NULL, NULL, 1.00, 'created', '2022-07-10 04:03:42', '2022-07-10 04:03:42'),
(192, 2, 2, 'order_JrWamzX0XFXp9X', NULL, NULL, 1.00, 'created', '2022-07-10 04:04:11', '2022-07-10 04:04:11'),
(193, 2, 2, 'order_JrWckp8DT6IDSM', NULL, NULL, 1.00, 'created', '2022-07-10 04:06:03', '2022-07-10 04:06:03'),
(194, 2, 2, 'order_JrWeEhWxe0qfWP', NULL, NULL, 1.00, 'created', '2022-07-10 04:07:27', '2022-07-10 04:07:27'),
(195, 2, 2, 'order_JrWedXyeHf6qIp', NULL, NULL, 1.00, 'created', '2022-07-10 04:07:50', '2022-07-10 04:07:50'),
(196, 2, 2, 'order_JrWew1flG7Xbvx', NULL, NULL, 1.00, 'created', '2022-07-10 04:08:06', '2022-07-10 04:08:06'),
(197, 2, 2, 'order_JrWfvZuNnyTUpw', NULL, NULL, 1.00, 'created', '2022-07-10 04:09:03', '2022-07-10 04:09:03'),
(198, 2, 2, 'order_JrWh9TVTESTie4', NULL, NULL, 1.00, 'created', '2022-07-10 04:10:12', '2022-07-10 04:10:12'),
(199, 2, 2, 'order_JrWhcp0UTEHS6c', NULL, NULL, 1.00, 'created', '2022-07-10 04:10:39', '2022-07-10 04:10:39'),
(200, 2, 2, 'order_JrWiEn0jchivGV', NULL, NULL, 1.00, 'created', '2022-07-10 04:11:14', '2022-07-10 04:11:14'),
(201, 2, 2, 'order_JrWissA5GhQdVr', NULL, NULL, 1.00, 'created', '2022-07-10 04:11:51', '2022-07-10 04:11:51'),
(202, 2, 2, 'order_JrWjxbqFI4q8A1', NULL, NULL, 1.00, 'created', '2022-07-10 04:12:52', '2022-07-10 04:12:52'),
(203, 2, 2, 'order_JrWkAQCiEP1PDI', NULL, NULL, 1.00, 'created', '2022-07-10 04:13:04', '2022-07-10 04:13:04'),
(204, 2, 2, 'order_JrWkda5yK5Qw3Y', NULL, NULL, 1.00, 'created', '2022-07-10 04:13:30', '2022-07-10 04:13:30'),
(205, 2, 2, 'order_JrWknZTBGIcooV', NULL, NULL, 1.00, 'created', '2022-07-10 04:13:40', '2022-07-10 04:13:40'),
(206, 2, 2, 'order_JrWnURagIyqjvH', NULL, NULL, 1.00, 'created', '2022-07-10 04:16:12', '2022-07-10 04:16:12'),
(207, 2, 2, 'order_JrWpDMOMpsudco', NULL, NULL, 1.00, 'created', '2022-07-10 04:17:50', '2022-07-10 04:17:50'),
(208, 2, 2, 'order_JrWpU3kkItvME9', NULL, NULL, 1.00, 'created', '2022-07-10 04:18:06', '2022-07-10 04:18:06'),
(209, 2, 2, 'order_JrWpqjcHHvHQXy', NULL, NULL, 1.00, 'created', '2022-07-10 04:18:26', '2022-07-10 04:18:26'),
(210, 2, 2, 'order_JrWqMIHzDydcZY', NULL, NULL, 1.00, 'created', '2022-07-10 04:18:55', '2022-07-10 04:18:55'),
(211, 2, 2, 'order_JrWqkfoPVaPEyT', NULL, NULL, 1.00, 'created', '2022-07-10 04:19:18', '2022-07-10 04:19:18'),
(212, 2, 2, 'order_JrWrQQT27VzF5C', NULL, NULL, 1.00, 'created', '2022-07-10 04:19:56', '2022-07-10 04:19:56'),
(213, 2, 2, 'order_JrWtQ68DbIJCrJ', NULL, NULL, 1.00, 'created', '2022-07-10 04:21:49', '2022-07-10 04:21:49'),
(214, 2, 2, 'order_JrWycra24OpQb9', NULL, NULL, 1.00, 'created', '2022-07-10 04:26:45', '2022-07-10 04:26:45'),
(215, 2, 2, 'order_JrWyxlsNXixYlZ', NULL, NULL, 1.00, 'created', '2022-07-10 04:27:04', '2022-07-10 04:27:04'),
(216, 2, 2, 'order_JrX1hGVs4PozYd', NULL, NULL, 1.00, 'created', '2022-07-10 04:29:39', '2022-07-10 04:29:39'),
(217, 2, 2, 'order_JrX2rDDX6KXi90', NULL, NULL, 1.00, 'created', '2022-07-10 04:30:45', '2022-07-10 04:30:45'),
(218, 2, 2, 'order_JrX6Wq5LukGr7c', NULL, NULL, 1.00, 'created', '2022-07-10 04:34:14', '2022-07-10 04:34:14'),
(219, 2, 2, 'order_JrX6oc2RBg7nrj', NULL, NULL, 1.00, 'created', '2022-07-10 04:34:30', '2022-07-10 04:34:30'),
(220, 2, 2, 'order_JrX799KV5JoyoF', NULL, NULL, 1.00, 'created', '2022-07-10 04:34:49', '2022-07-10 04:34:49'),
(221, 2, 2, 'order_JrX7Vl2WJS2ZzE', NULL, NULL, 1.00, 'created', '2022-07-10 04:35:10', '2022-07-10 04:35:10'),
(222, 2, 2, 'order_JrZTZVqf4HGZfP', NULL, NULL, 1.00, 'created', '2022-07-10 06:53:26', '2022-07-10 06:53:26'),
(223, 2, 2, 'order_JrZTxIm7Zscb9X', NULL, NULL, 1.00, 'created', '2022-07-10 06:53:48', '2022-07-10 06:53:48'),
(224, 2, 2, 'order_JrZUbOAYbgz9Dz', NULL, NULL, 1.00, 'created', '2022-07-10 06:54:24', '2022-07-10 06:54:24'),
(225, 2, 2, 'order_JrZVACdX2lo6gi', NULL, NULL, 1.00, 'created', '2022-07-10 06:54:56', '2022-07-10 06:54:56'),
(226, 2, 2, 'order_JrZVGoeG60J98p', NULL, NULL, 1.00, 'created', '2022-07-10 06:55:02', '2022-07-10 06:55:02'),
(227, 2, 2, 'order_JrZY3BeyqxkDMH', NULL, NULL, 1.00, 'created', '2022-07-10 06:57:40', '2022-07-10 06:57:40'),
(228, 2, 2, 'order_JrZYJ7L1Lvkmih', NULL, NULL, 1.00, 'created', '2022-07-10 06:57:55', '2022-07-10 06:57:55'),
(229, 2, 2, 'order_JrZYWT1tSZqOL4', NULL, NULL, 1.00, 'created', '2022-07-10 06:58:07', '2022-07-10 06:58:07'),
(230, 2, 2, 'order_JrZc8XXdYAFU5Q', NULL, NULL, 1.00, 'created', '2022-07-10 07:01:32', '2022-07-10 07:01:32'),
(231, 2, 2, 'order_JrZeCP5ONUId5J', NULL, NULL, 1.00, 'created', '2022-07-10 07:03:30', '2022-07-10 07:03:30'),
(232, 2, 2, 'order_JrZeXEaoZLfsn0', NULL, NULL, 1.00, 'created', '2022-07-10 07:03:49', '2022-07-10 07:03:49'),
(233, 2, 2, 'order_JrZfRIb7fOeruR', NULL, NULL, 1.00, 'created', '2022-07-10 07:04:40', '2022-07-10 07:04:40'),
(234, 2, 2, 'order_JrZfWgOCdNL45g', NULL, NULL, 1.00, 'created', '2022-07-10 07:04:45', '2022-07-10 07:04:45'),
(235, 2, 2, 'order_JrZfxH8QiBiDQf', NULL, NULL, 1.00, 'created', '2022-07-10 07:05:09', '2022-07-10 07:05:09'),
(236, 2, 2, 'order_JrZgL62ltu49Hh', NULL, NULL, 1.00, 'created', '2022-07-10 07:05:31', '2022-07-10 07:05:31'),
(237, 2, 2, 'order_JrZgbe5WVJ8wbI', NULL, NULL, 1.00, 'created', '2022-07-10 07:05:46', '2022-07-10 07:05:46'),
(238, 2, 2, 'order_JrZhfVw7EAdOSs', NULL, NULL, 1.00, 'created', '2022-07-10 07:06:47', '2022-07-10 07:06:47'),
(239, 2, 2, 'order_JrZi8katP63vjI', NULL, NULL, 1.00, 'created', '2022-07-10 07:07:13', '2022-07-10 07:07:13'),
(240, 2, 2, 'order_JrZiIsOSIRZREd', NULL, NULL, 1.00, 'created', '2022-07-10 07:07:23', '2022-07-10 07:07:23'),
(241, 2, 2, 'order_JrZinWFgzEaF9A', NULL, NULL, 1.00, 'created', '2022-07-10 07:07:51', '2022-07-10 07:07:51'),
(242, 2, 2, 'order_Js0JRLd7DWIgom', NULL, NULL, 1.00, 'created', '2022-07-11 09:08:34', '2022-07-11 09:08:34'),
(243, 2, 2, 'order_Juo0GQC4hLqX7d', NULL, NULL, 1.00, 'created', '2022-07-18 11:03:06', '2022-07-18 11:03:06'),
(244, 2, 2, 'order_JwRWgATRNTtj2K', NULL, NULL, 1.00, 'created', '2022-07-22 14:21:51', '2022-07-22 14:21:51'),
(245, 2, 2, 'order_KLM8KTLqp5AR40', NULL, NULL, 1.00, 'created', '2022-09-23 13:20:22', '2022-09-23 13:20:22'),
(246, 2, 2, 'order_KPfLtHu9FE8Oi8', NULL, NULL, 1.00, 'created', '2022-10-04 10:44:23', '2022-10-04 10:44:23'),
(247, 2, 2, 'order_KPfMH0aOD8bqim', 'pay_KPfMSs0K9iSF4t', '08ab999340839de1bd4691798f0dfeaf7e32fda64b80180ddb3116393c8ddf46', 1.00, 'paid', '2022-10-04 10:44:45', '2022-10-04 10:45:08'),
(248, 2, 2, 'order_KPfOMzk2cpkwjR', 'pay_KPfPNoX36k7CRo', 'f8eda39c0e9e309347d55fdb3e5dcdc248759273f4fdca40c18ab1bd86beed3f', 1.00, 'paid', '2022-10-04 10:46:44', '2022-10-04 10:47:47'),
(249, 2, 2, 'order_KPfQ5tqPNjibHj', 'pay_KPfRI9XYMySOaN', '397492676bc42142607966dbc095c700ab6811b638f289eea71135792730610d', 1.00, 'paid', '2022-10-04 10:48:22', '2022-10-04 10:49:39'),
(250, 2, 2, 'order_KUsMFn7QZQb8nb', 'pay_KUsMjMSOuFAsFl', '8dfe4aa072e8b8e626d902f93549b98c01cd1b4f28428f1d5cc11a870b3223d1', 1.00, 'paid', '2022-10-17 14:42:45', '2022-10-17 14:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `PageDeatils`
--

CREATE TABLE `PageDeatils` (
  `page_detailsID` int(11) NOT NULL,
  `imageID` int(11) DEFAULT NULL,
  `headingID` int(11) DEFAULT NULL,
  `paraID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Pages`
--

CREATE TABLE `Pages` (
  `pageID` int(11) NOT NULL,
  `page_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_m_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_m_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_m_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Pages`
--

INSERT INTO `Pages` (`pageID`, `page_title`, `page_subtitle`, `page_m_desc`, `page_m_title`, `page_m_keywords`) VALUES
(1, 'Home', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Para`
--

CREATE TABLE `Para` (
  `paraID` int(11) NOT NULL,
  `para` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `para_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Para`
--

INSERT INTO `Para` (`paraID`, `para`, `para_type`) VALUES
(1, 'para 1', 'one'),
(2, 'para 2', 'one'),
(3, 'para 3', 'main ');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `title`, `identifier`, `stripe_id`, `created_at`, `updated_at`) VALUES
(1, 'Registration', 'Registration', 'price_1LHNRcSDobAepx4qmriMMUBW', '2022-07-03 07:53:16', '2022-07-03 07:53:16');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'registration', 1000.00, NULL, NULL),
(2, 'test_registration', 1.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`) VALUES
(2, 'Danrino', 'dess.danrino@gmail.com', NULL, '$2y$10$oTNYFubL7bj3.9H8awe9IelX8K2DcWBkEoV58hcnmZHgPGCeYfPbm', '20Bbx1IKZCBGBBE3m7xoJwJHJXgaMDY5TxteTTtGUH2CUPQ898eoHepMIF0o', '2022-06-30 07:09:13', '2022-06-30 07:09:13', NULL, NULL, NULL, NULL),
(3, 'Ajit', 'dess.ajit@gmail.com', NULL, '$2y$10$DUWtgg3rMdzDcRAD8If86OOHvg7sTjhR22GotrZLfBZL38ySrAck6', 'wWKL5VMTVsrCziGoJGbDop6Xr0ioW688KOOUBKMZmbshz0rRygLAv1cmCliF', '2022-06-30 07:09:46', '2022-06-30 07:09:46', NULL, NULL, NULL, NULL),
(4, 'Tushar', 'dess.tushar@gmail.com', NULL, '$2y$10$8ZdpEMwRQUQpr9aF.Dn.n.9C.Ju2i5rbdkCtc4TYmHTx3NEBchRFe', 'pjeTlTB6BFRHzlDoVKYYFhiW9Sx5cmi2epwXdrgt0nLwbVYAAL38DLJUiNym', '2022-06-30 07:10:17', '2022-06-30 07:10:17', NULL, NULL, NULL, NULL),
(5, 'DESS', 'danrino95@gmail.com', NULL, '$2y$10$DOOmrTERzahf365wMHqxau9iEvxv5kHr3v8e0DbNGCpLjt4gLb.Iy', NULL, '2022-09-27 10:22:40', '2022-09-27 10:22:40', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Website`
--

CREATE TABLE `Website` (
  `websiteID` int(11) NOT NULL,
  `website_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_clientID` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Website`
--

INSERT INTO `Website` (`websiteID`, `website_name`, `website_clientID`) VALUES
(1, 'DESS', '00DESS');

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
-- Indexes for table `ajit`
--
ALTER TABLE `ajit`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Content`
--
ALTER TABLE `Content`
  ADD PRIMARY KEY (`contentID`),
  ADD KEY `FK_websiteID` (`websiteID`);

--
-- Indexes for table `ContentJunction`
--
ALTER TABLE `ContentJunction`
  ADD PRIMARY KEY (`content_junctionID`),
  ADD KEY `FK_page_deatilsID` (`page_deatilsID`),
  ADD KEY `FK_pageID` (`pageID`),
  ADD KEY `FK_content_typeID` (`content_typeID`),
  ADD KEY `FK_contentOD` (`contentID`);

--
-- Indexes for table `ContentTypes`
--
ALTER TABLE `ContentTypes`
  ADD PRIMARY KEY (`content_typeID`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `Headings`
--
ALTER TABLE `Headings`
  ADD PRIMARY KEY (`headingID`);

--
-- Indexes for table `Images`
--
ALTER TABLE `Images`
  ADD PRIMARY KEY (`imageID`);

--
-- Indexes for table `listing`
--
ALTER TABLE `listing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_listing_user_id` (`user_id`),
  ADD KEY `FK_listing_order_id` (`listing_order_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id` (`order_id`),
  ADD KEY `FK_user_id` (`user_id`),
  ADD KEY `FK_product_id` (`product_id`);

--
-- Indexes for table `PageDeatils`
--
ALTER TABLE `PageDeatils`
  ADD PRIMARY KEY (`page_detailsID`),
  ADD KEY `FK_imageID` (`imageID`),
  ADD KEY `FK_headingID` (`headingID`),
  ADD KEY `FK_paraID` (`paraID`);

--
-- Indexes for table `Pages`
--
ALTER TABLE `Pages`
  ADD PRIMARY KEY (`pageID`);

--
-- Indexes for table `Para`
--
ALTER TABLE `Para`
  ADD PRIMARY KEY (`paraID`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_stripe_id_unique` (`stripe_id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_price_unique` (`subscription_id`,`stripe_price`),
  ADD UNIQUE KEY `subscription_items_stripe_id_unique` (`stripe_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `Website`
--
ALTER TABLE `Website`
  ADD PRIMARY KEY (`websiteID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ajit`
--
ALTER TABLE `ajit`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Content`
--
ALTER TABLE `Content`
  MODIFY `contentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ContentJunction`
--
ALTER TABLE `ContentJunction`
  MODIFY `content_junctionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ContentTypes`
--
ALTER TABLE `ContentTypes`
  MODIFY `content_typeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Headings`
--
ALTER TABLE `Headings`
  MODIFY `headingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Images`
--
ALTER TABLE `Images`
  MODIFY `imageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `listing`
--
ALTER TABLE `listing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `PageDeatils`
--
ALTER TABLE `PageDeatils`
  MODIFY `page_detailsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Pages`
--
ALTER TABLE `Pages`
  MODIFY `pageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Para`
--
ALTER TABLE `Para`
  MODIFY `paraID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Website`
--
ALTER TABLE `Website`
  MODIFY `websiteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Content`
--
ALTER TABLE `Content`
  ADD CONSTRAINT `FK_websiteID` FOREIGN KEY (`websiteID`) REFERENCES `Website` (`websiteID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `ContentJunction`
--
ALTER TABLE `ContentJunction`
  ADD CONSTRAINT `FK_contentOD` FOREIGN KEY (`contentID`) REFERENCES `Content` (`contentID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_content_typeID` FOREIGN KEY (`content_typeID`) REFERENCES `ContentTypes` (`content_typeID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_pageID` FOREIGN KEY (`pageID`) REFERENCES `Pages` (`pageID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_page_deatilsID` FOREIGN KEY (`page_deatilsID`) REFERENCES `PageDeatils` (`page_detailsID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `listing`
--
ALTER TABLE `listing`
  ADD CONSTRAINT `FK_listing_order_id` FOREIGN KEY (`listing_order_id`) REFERENCES `orders` (`order_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_listing_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `PageDeatils`
--
ALTER TABLE `PageDeatils`
  ADD CONSTRAINT `FK_headingID` FOREIGN KEY (`headingID`) REFERENCES `Headings` (`headingID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_imageID` FOREIGN KEY (`imageID`) REFERENCES `Images` (`imageID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_paraID` FOREIGN KEY (`paraID`) REFERENCES `Para` (`paraID`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
