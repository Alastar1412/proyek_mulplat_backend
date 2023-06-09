-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 11:28 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_proyek_mulplat`
--
CREATE DATABASE IF NOT EXISTS `db_proyek_mulplat` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_proyek_mulplat`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_06_09_120426_add_field_to_users_table', 1),
(7, '2023_06_09_121450_create_product_categories_table', 1),
(8, '2023_06_09_121856_create_products_table', 1),
(9, '2023_06_09_122221_create_product_galleries_table', 1),
(10, '2023_06_09_122438_create_transactions_table', 1),
(11, '2023_06_09_122810_create_transaction_items_table', 1),
(12, '2023_06_09_145749_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'authToken', '018b13b8253ce6f86bdfd46cacfa407619bdd0cb4525cac37fc74a612148c2fb', '[\"*\"]', NULL, NULL, '2023-06-09 08:35:37', '2023-06-09 08:35:37'),
(2, 'App\\Models\\User', 2, 'authToken', '04564ddc778150bf341c3e13e599a14ab3ef4d8421cfa8ef9c39e9fedff9a9ca', '[\"*\"]', NULL, NULL, '2023-06-09 08:36:04', '2023-06-09 08:36:04'),
(3, 'App\\Models\\User', 3, 'authToken', '08a71cebcb52e51fa8832de202075ec6dacda183619adfb2da12c59cacc3ed58', '[\"*\"]', NULL, NULL, '2023-06-09 08:37:03', '2023-06-09 08:37:03'),
(4, 'App\\Models\\User', 4, 'authToken', '50b30821422294f92872fe987817255c74f323ecdae6cae81307ba68c14ece57', '[\"*\"]', NULL, NULL, '2023-06-09 08:39:08', '2023-06-09 08:39:08'),
(5, 'App\\Models\\User', 5, 'authToken', '3b2b1a4604bb3253281720a71c5c6490d439fea6bf07d232adedad33920390dc', '[\"*\"]', NULL, NULL, '2023-06-09 08:40:55', '2023-06-09 08:40:55'),
(6, 'App\\Models\\User', 6, 'authToken', 'db5b1483cd29803fd7c13d3a588cb9c0d5e348ed10356c6b12d71fe509c18285', '[\"*\"]', NULL, NULL, '2023-06-09 09:20:00', '2023-06-09 09:20:00'),
(7, 'App\\Models\\User', 7, 'authToken', 'c0854c2c0fedbec2ef9801bf29bd14a9b477dbb89e1dcd4b83ee1476f840fc69', '[\"*\"]', NULL, NULL, '2023-06-09 09:34:38', '2023-06-09 09:34:38'),
(8, 'App\\Models\\User', 7, 'authToken', '4f7aaf98a7eba5a794c6e4aaf582567e9bf05e97b05fc41e7190ad344d1186b3', '[\"*\"]', NULL, NULL, '2023-06-09 09:47:26', '2023-06-09 09:47:26'),
(9, 'App\\Models\\User', 7, 'authToken', '713e0d3b5dcb9e7231f9b518eb5ee37db6af54862d679039b8cfddfdfda638c8', '[\"*\"]', NULL, NULL, '2023-06-09 09:57:13', '2023-06-09 09:57:13'),
(10, 'App\\Models\\User', 7, 'authToken', 'f57007b23d773bd5725dd9b8af6fd071ac50557e8f3de0af9586c359cfdcf994', '[\"*\"]', NULL, NULL, '2023-06-09 09:57:21', '2023-06-09 09:57:21'),
(11, 'App\\Models\\User', 8, 'authToken', '8990dff6ac2c401ed3fd80a129201b70e7495d2ecd064f17f64eb17b610bb927', '[\"*\"]', NULL, NULL, '2023-06-09 09:57:39', '2023-06-09 09:57:39'),
(12, 'App\\Models\\User', 8, 'authToken', 'a9297a90c14a30fff02d83b99ae153ee4af6c4ea800b9fea9021a47d5554b83e', '[\"*\"]', '2023-06-09 10:04:09', NULL, '2023-06-09 09:57:41', '2023-06-09 10:04:09'),
(14, 'App\\Models\\User', 8, 'authToken', 'e3543a94ad2a35b7d0b1fe472bf3a88adf47983520ee68fc898e2dd44d915f87', '[\"*\"]', '2023-06-09 12:30:45', NULL, '2023-06-09 10:25:32', '2023-06-09 12:30:45'),
(15, 'App\\Models\\User', 9, 'authToken', 'adbe6d66062a741454d02addf2b0394aa1187e76a7c0e66668305f2635aa621a', '[\"*\"]', NULL, NULL, '2023-06-09 12:58:24', '2023-06-09 12:58:24'),
(16, 'App\\Models\\User', 10, 'authToken', 'f01a5849c9bb8bf7d4ff87e12d76c4ffc6c40a6e505a9ce74e6654b6a9b01ed2', '[\"*\"]', NULL, NULL, '2023-06-09 13:00:42', '2023-06-09 13:00:42'),
(17, 'App\\Models\\User', 10, 'authToken', 'cba18623486a6cdc26cf4bd82d141c5e1afebd96b0ba57e5febc34cc5be1adcf', '[\"*\"]', NULL, NULL, '2023-06-09 13:07:35', '2023-06-09 13:07:35'),
(18, 'App\\Models\\User', 10, 'authToken', 'ff9544307a31fc2d47975ad222817f467ae2808b68a3dad5593234e4a44fb8a4', '[\"*\"]', NULL, NULL, '2023-06-09 13:07:49', '2023-06-09 13:07:49'),
(19, 'App\\Models\\User', 10, 'authToken', '769b1c324fda5f8cd9b4e0f107bc9a3578c2f254f9e258e71c0291c03fb4227e', '[\"*\"]', '2023-06-09 13:37:07', NULL, '2023-06-09 13:33:13', '2023-06-09 13:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` bigint(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `tags`, `categories_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Adidas NMD', 200.00, 'Ini adalah sepatu sport', NULL, 1, NULL, '2021-04-15 02:16:06', '2021-04-15 02:16:06'),
(2, 'Ultra 4D 5 Shoes', 285.00, 'When the adidas Ultraboost debuted back\r\nin 2015, it had an impact that spilled beyond\r\nthe world of running. For this version of t...', NULL, 5, NULL, '2021-04-15 10:17:22', '2021-04-15 10:27:20'),
(3, 'SL 20 Shoes', 123.00, 'These adidas SL20 Shoes will back your play. \r\nLightweight cushioning gives you a faster \r\npush-off and a snappy feel.', NULL, 5, NULL, '2021-04-15 10:18:19', '2021-04-15 10:39:03'),
(4, 'Ultra 4D 5 Shoes', 285.00, 'When the adidas Ultraboost debuted back \r\nin 2015, it had an impact that spilled beyond \r\nthe world of running.', NULL, 5, NULL, '2021-04-15 10:18:51', '2021-04-15 10:40:20'),
(5, 'Ultraboots 20 Shoes', 206.00, 'Wear your values on your feet with these adi\r\ndas running shoes. Rocking the wild colours \r\nshows you\'re not shy about standing out.', NULL, 5, NULL, '2021-04-15 10:19:08', '2021-04-15 10:43:19'),
(6, 'LEGO® SPORT SHOES', 92.00, 'These shoes keep kids comfortable through\r\nplaytime, whether that means running around\r\non building universes out of bricks.', NULL, 4, NULL, '2021-04-15 10:20:03', '2021-05-04 07:33:37'),
(7, 'Fortarun Running Shoes 2020', 34.00, 'Whether they\'re headed to school, day care\r\nor the playground with friends, send them\r\nout in all-day foot support with these adidas.', NULL, 4, NULL, '2021-04-15 10:21:05', '2021-05-04 07:36:17'),
(8, 'Supernove Running Shoes', 83.00, 'Two kinds of cushioning in the midsole give\r\nyou flexibility and responsiveness right where\r\nyou need them.', NULL, 4, NULL, '2021-04-15 10:22:10', '2021-05-04 07:37:14'),
(9, 'Faito Summer.RDY Tokyo Shoes', 76.00, 'Whether you\'re running out the front door to\r\nlog a few miles or want to bring a running-\r\ninspired style statement to your everyday.', NULL, 4, NULL, '2021-04-15 10:22:39', '2021-05-04 07:38:53'),
(10, 'DAME 7 SHOES', 125.00, 'Show up in big game style whether you\'re trying out for the team or challenging a friend to some one-on-one in the park.', NULL, 3, NULL, '2021-05-04 07:40:05', '2021-05-04 11:52:12'),
(11, 'Pro boots low shoes', 57.00, 'The superlight midsole features an innovative\r\ndrop-in that provides outstanding energy \r\nreturn every time you plant.', NULL, 3, NULL, '2021-05-04 07:40:30', '2021-05-04 11:55:13'),
(12, 'D.O.N ISSUE 2.0 Shoes', 111.00, 'These signature shoes from Mitchell and\r\nadidas Basketball feature graphics that\r\nhighlight the young All-Star\'s style.', NULL, 3, NULL, '2021-05-04 11:35:31', '2021-05-04 11:56:00'),
(13, 'Harden Vol. 4 Shoes', 137.00, 'Most guys are finished by late in the fourth\r\nquarter. That\'s when James Harden is just\r\ngetting started.', NULL, 3, NULL, '2021-05-04 11:36:51', '2021-05-04 11:56:57'),
(14, 'Terrex urban low  Hiking Shoes', 143.00, 'Unpaved trails and mixed surfaces are easy\r\nwhen you have the traction and support you\r\nneed. Casual enough for the daily commute.', NULL, 2, NULL, '2021-05-04 11:37:22', '2021-05-04 11:59:49'),
(15, 'TERREX EASTRAIL HIKING SHOES', 54.00, 'Built for a stable feel and confident traction\r\non wet, uneven terrain. Stack up the trail\r\nmiles in these lightweight hiking shoes', NULL, 2, NULL, '2021-05-04 11:38:04', '2021-05-04 12:10:09'),
(16, 'TERREX AX3 HIKING SHOES', 83.00, 'GORE-TEX Upper Mesh and synthetic uppers\r\nwill encase each foot in durable comfort. \r\nContinental Rubber Outs', NULL, 2, NULL, '2021-05-04 11:38:29', '2021-05-04 12:14:10'),
(17, 'TERREX TRAILMAKER HIKING SHOES', 34.00, 'The adidas Terrex Trailmaker Hiking Shoes\r\nblend responsive running-shoe design with\r\ntrail-shoe support.', NULL, 2, NULL, '2021-05-04 11:38:53', '2021-05-04 12:04:09');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Sport', NULL, '2021-04-15 02:15:27', '2021-04-15 02:15:27'),
(2, 'Hiking', NULL, '2021-04-15 02:15:33', '2021-04-15 02:15:33'),
(3, 'Basketball', NULL, '2021-04-15 10:09:12', '2021-04-15 10:09:12'),
(4, 'Training', NULL, '2021-04-15 10:12:34', '2021-04-15 10:21:21'),
(5, 'Running', NULL, '2021-04-15 10:12:44', '2021-04-15 10:12:44'),
(6, 'All Shoes', NULL, '2021-04-15 10:14:25', '2021-04-15 10:14:25');

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

DROP TABLE IF EXISTS `product_galleries`;
CREATE TABLE `product_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` double(8,2) NOT NULL DEFAULT 0.00,
  `shipping_price` double(8,2) NOT NULL DEFAULT 0.00,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MANUAL',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `users_id`, `address`, `total_price`, `shipping_price`, `status`, `payment`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 8, 'Kota Cimahi', 2000.00, 100.00, 'SUCCESS', 'MANUAL', NULL, '2021-04-15 02:11:14', '2021-04-15 02:11:52'),
(2, 2, 'Kota Cimahi', 2000.00, 100.00, 'PENDING', 'MANUAL', NULL, '2021-04-15 02:30:45', '2021-04-15 02:30:45'),
(3, 2, 'Kota Cimahi', 2000.00, 100.00, 'PENDING', 'MANUAL', NULL, '2021-04-15 02:32:37', '2021-04-15 02:32:37'),
(4, 3, 'Marsemoon', 206.00, 0.00, 'PENDING', 'MANUAL', NULL, '2021-05-05 04:53:30', '2021-05-05 04:53:30'),
(5, 3, 'Marsemoon', 200.00, 0.00, 'PENDING', 'MANUAL', NULL, '2021-05-05 04:54:07', '2021-05-05 04:54:07'),
(6, 8, 'Marsemoon', 285.00, 0.00, 'PENDING', 'MANUAL', NULL, '2021-05-05 05:19:05', '2021-05-05 05:19:05'),
(7, 3, 'Marsemoon', 215.00, 0.00, 'PENDING', 'MANUAL', NULL, '2021-05-05 05:44:39', '2021-05-05 05:44:39'),
(8, 3, 'Marsemoon', 285.00, 0.00, 'PENDING', 'MANUAL', NULL, '2021-05-05 05:48:44', '2021-05-05 05:48:44'),
(9, 8, 'Kota A', 2000.00, 1000.00, 'PENDING', 'MANUAL', NULL, '2023-06-09 12:30:45', '2023-06-09 12:30:45'),
(10, 10, 'Kota A', 2000.00, 1000.00, 'PENDING', 'MANUAL', NULL, '2023-06-09 13:37:07', '2023-06-09 13:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_items`
--

DROP TABLE IF EXISTS `transaction_items`;
CREATE TABLE `transaction_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) NOT NULL,
  `products_id` bigint(20) NOT NULL,
  `transactions_id` bigint(20) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_items`
--

INSERT INTO `transaction_items` (`id`, `users_id`, `products_id`, `transactions_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 2, '2021-04-15 02:11:14', '2021-04-15 02:11:14'),
(2, 2, 2, 1, 2, '2021-04-15 02:11:14', '2021-04-15 02:11:14'),
(3, 2, 3, 1, 2, '2021-04-15 02:11:14', '2021-04-15 02:11:14'),
(4, 2, 1, 2, 2, '2021-04-15 02:30:45', '2021-04-15 02:30:45'),
(5, 2, 2, 2, 2, '2021-04-15 02:30:45', '2021-04-15 02:30:45'),
(6, 2, 3, 2, 2, '2021-04-15 02:30:45', '2021-04-15 02:30:45'),
(7, 2, 1, 3, 2, '2021-04-15 02:32:37', '2021-04-15 02:32:37'),
(8, 3, 5, 4, 1, '2021-05-05 04:53:30', '2021-05-05 04:53:30'),
(9, 3, 1, 5, 1, '2021-05-05 04:54:07', '2021-05-05 04:54:07'),
(10, 3, 2, 6, 1, '2021-05-05 05:19:05', '2021-05-05 05:19:05'),
(11, 3, 6, 7, 1, '2021-05-05 05:44:39', '2021-05-05 05:44:39'),
(12, 3, 3, 7, 1, '2021-05-05 05:44:39', '2021-05-05 05:44:39'),
(13, 3, 2, 8, 1, '2021-05-05 05:48:44', '2021-05-05 05:48:44'),
(14, 8, 1, 9, 2, '2023-06-09 12:30:45', '2023-06-09 12:30:45'),
(15, 8, 2, 9, 2, '2023-06-09 12:30:45', '2023-06-09 12:30:45'),
(16, 8, 3, 9, 2, '2023-06-09 12:30:45', '2023-06-09 12:30:45'),
(17, 10, 1, 10, 2, '2023-06-09 13:37:07', '2023-06-09 13:37:07'),
(18, 10, 2, 10, 2, '2023-06-09 13:37:07', '2023-06-09 13:37:07'),
(19, 10, 3, 10, 2, '2023-06-09 13:37:07', '2023-06-09 13:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `phone`, `roles`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(8, 'Vinny', 'vin@gmail.com', 'vinnyCunny', '123456123', 'USER', NULL, '$2y$10$n.ADnKOqkGkjD04yVCiXWOwHyGHuJbTcN3bD867EQFSLsacqdaxAO', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 09:57:39', '2023-06-09 10:11:33'),
(10, 'Vinnya', 'vinya@gmail.com', 'vinnyaVunny', '0879546312', 'USER', NULL, '$2y$10$gBRqoNDv9FEPRmQcayOZb.XxBKNTFSl93I/qJmFoud76trOhW8ss6', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 13:00:42', '2023-06-09 13:36:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaction_items`
--
ALTER TABLE `transaction_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
