-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th8 25, 2021 lúc 03:34 PM
-- Phiên bản máy phục vụ: 5.7.21
-- Phiên bản PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `snack_store_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `thumbnail` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `title_seo` text COLLATE utf8mb4_unicode_ci,
  `keyword_seo` text COLLATE utf8mb4_unicode_ci,
  `description_seo` text COLLATE utf8mb4_unicode_ci,
  `h1_seo` text COLLATE utf8mb4_unicode_ci,
  `h2_seo` text COLLATE utf8mb4_unicode_ci,
  `h3_seo` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `type` enum('page','product','blog') COLLATE utf8mb4_unicode_ci DEFAULT 'page',
  `images` text COLLATE utf8mb4_unicode_ci,
  `background` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `content`, `thumbnail`, `url`, `title_seo`, `keyword_seo`, `description_seo`, `h1_seo`, `h2_seo`, `h3_seo`, `created_at`, `updated_at`, `status`, `type`, `images`, `background`) VALUES
(1, 'B.A STORE', 'test', '<p>TEST</p>', 'upload/logo/My_Post.png', '', 'test', 'test', 'test', 'test', 'test', 'test', '2021-08-11 08:29:50', '2021-08-23 08:53:13', 1, 'page', '[]', NULL),
(2, 'Contact', 'test', '<p>test 123</p>', NULL, '', 'test', 'test', 'test', 'test', 'test', 'test', '2021-08-11 08:30:21', '2021-08-23 08:53:16', 1, 'page', '\"\"', NULL),
(5, 'Spain', 'Olé! Bienvenido a España! This SnackCrate comes from the home of the running of the bulls. Unique flavors abound with selections ranging from Chupa Chups, Fried Egg Chips, and Spicy Mangoes!', '<p>123</p>', 'upload/category/SC_Crate_Spain_Premium_Drink_041619.png', 'contact-coppy', 'test', 'test', 'test', 'test', 'test', 'test', '2021-08-16 09:03:27', '2021-08-17 08:42:24', 1, 'product', '[]', 'rgb(103, 72, 216)'),
(4, 'Hawaii', 'Aloha! This tropical SnackCrate features the snacks of the 50th state. Flavors such as Kona Coffee, Pineapple, and Li Hing Mui abound as well as snacks influenced by Japan, China and the Pacific Islands.', '<p>123</p>', 'upload/category/SC_Crate_Hawaii_Premium_Drink_010919_600x600-2.png', 'hawaii', 'test', 'test', 'test', 'test', 'test', 'test', '2021-08-16 08:42:55', '2021-08-17 09:01:40', 1, 'product', '[]', '#ffb412'),
(6, 'Hawaii coppy', 'Aloha! This tropical SnackCrate features the snacks of the 50th state. Flavors such as Kona Coffee, Pineapple, and Li Hing Mui abound as well as snacks influenced by Japan, China and the Pacific Islands.', '<div class=\"btgrid\">\n<div class=\"row row-1\">\n<div class=\"col-12 col-md-6\">\n<div class=\"content\">\n<p>Col 1 content area</p>\n</div>\n</div>\n\n<div class=\"col-12 col-md-6\">\n<div class=\"content\">\n<p>Col 2 content area</p>\n</div>\n</div>\n</div>\n</div>\n\n<p>&nbsp;</p>', 'upload/category/SC_Crate_Hawaii_Premium_Drink_010919_600x600-2.png', 'hawaii-coppy', 'test', 'test', 'test', 'test', 'test', 'test', '2021-08-18 01:44:47', '2021-08-18 02:00:25', 1, 'page', '[]', '#ffb412'),
(7, 'about', 'test', '<div class=\"btgrid\">\n<div class=\"row row-1\">\n<div class=\"col-12 col-md-6\">\n<div class=\"content\">\n<p style=\"text-align: center;\"><img alt=\"\" src=\"upload/logo/My_Post.png\" style=\"width: 300px; height: 300px;\" /></p>\n</div>\n</div>\n\n<div class=\"col-12 col-md-6\">\n<div class=\"content\">\n<h1 class=\"title font-weight-bold \"><span style=\"color:#e74c3c;\"><strong>B.A Store</strong></span></h1>\n\n<h3 class=\"descprtion\"><strong>We were established in 2021, specializing in providing cakes, snacks, soft drinks all over Vietnam</strong></h3>\n</div>\n</div>\n</div>\n</div>\n\n<p>&nbsp;</p>', NULL, 'about', 'test', 'test', 'test', 'test', 'test', 'test', '2021-08-18 05:16:59', '2021-08-18 05:24:31', 1, 'page', '\"\"', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fullname` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `fullname`, `email`, `tel`, `content`, `created_at`, `updated_at`) VALUES
(1, '123', '123', '123', '123', '2021-08-23 02:52:03', '2021-08-23 02:52:03'),
(2, 'test', 'test', 'test', 'test', '2021-08-23 07:50:21', '2021-08-23 07:50:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_08_09_084722_add_role_column_users', 2),
(7, '2021_08_11_151910_create_categories_table', 3),
(8, '2021_08_11_170748_add_column_status_categories', 4),
(9, '2021_08_12_060217_add_type_column_categories', 5),
(10, '2021_08_12_085456_add_images_column_categories', 6),
(11, '2021_08_14_060313_create_ui_table', 7),
(12, '2021_08_14_061956_add_layout_column', 8),
(13, '2021_08_15_052547_create_products_table', 9),
(16, '2021_08_17_153900_add_background_column', 10),
(18, '2021_08_21_121408_add_price_column', 11),
(19, '2021_08_23_094539_create_contacts_table', 12),
(20, '2021_08_24_131552_create_orders_table', 13),
(26, '2021_08_24_132254_create_orders_detail__table', 14),
(29, '2021_08_24_154104_create_jobs_table', 15),
(30, '2021_08_25_150229_create_posts_table', 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fullname` text COLLATE utf8mb4_unicode_ci,
  `tel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `total_price` double(8,2) DEFAULT NULL,
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `fullname`, `tel`, `email`, `address`, `total_price`, `charge_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 06:46:29', '2021-08-24 06:46:29'),
(2, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 06:54:27', '2021-08-24 06:54:27'),
(3, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 06:55:10', '2021-08-24 06:55:10'),
(4, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 06:55:54', '2021-08-24 06:55:54'),
(5, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 06:57:42', '2021-08-24 06:57:42'),
(6, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 06:57:59', '2021-08-24 06:57:59'),
(7, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 06:58:36', '2021-08-24 06:58:36'),
(8, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 06:59:33', '2021-08-24 06:59:33'),
(9, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 06:59:42', '2021-08-24 06:59:42'),
(10, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 07:01:42', '2021-08-24 07:01:42'),
(11, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 07:02:30', '2021-08-24 07:02:30'),
(12, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 07:03:09', '2021-08-24 07:03:09'),
(13, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 07:06:30', '2021-08-24 07:06:30'),
(14, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 07:07:17', '2021-08-24 07:07:17'),
(15, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 07:07:35', '2021-08-24 07:07:35'),
(16, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 07:07:52', '2021-08-24 07:07:52'),
(17, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 07:08:10', '2021-08-24 07:08:10'),
(18, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 07:08:29', '2021-08-24 07:08:29'),
(19, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 07:08:47', '2021-08-24 07:08:47'),
(20, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 07:09:51', '2021-08-24 07:09:51'),
(21, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 07:10:08', '2021-08-24 07:10:08'),
(22, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 07:10:41', '2021-08-24 07:10:41'),
(23, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 07:11:06', '2021-08-24 07:11:06'),
(24, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 07:11:15', '2021-08-24 07:11:15'),
(25, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 07:12:07', '2021-08-24 07:12:07'),
(26, '123', '123', '123', '123', NULL, NULL, 0, '2021-08-24 07:12:14', '2021-08-24 07:12:14'),
(27, 'test', 'test', 'test', 'test', NULL, NULL, 0, '2021-08-24 07:12:42', '2021-08-24 07:12:42'),
(28, 'test', 'test', 'test', 'test', 1.44, NULL, 0, '2021-08-24 07:13:44', '2021-08-24 07:13:46'),
(29, 'test', 'test', 'test', 'test', 1.44, NULL, 0, '2021-08-24 07:14:09', '2021-08-24 07:14:10'),
(30, 'test', 'test', 'test', 'test', 1.44, NULL, 0, '2021-08-24 07:15:14', '2021-08-24 07:15:16'),
(31, 'test', 'test', 'test', 'test', 1.44, NULL, 0, '2021-08-24 07:15:26', '2021-08-24 07:15:27'),
(32, 'test', 'test', 'test', 'test', 1.44, 'ch_3JS0PnLAXRfbOAk505Z8taXa', 0, '2021-08-24 07:15:44', '2021-08-24 07:15:46'),
(33, 'test', 'test', 'test', 'test', 1.44, 'ch_3JS0R3LAXRfbOAk51LxYS9bd', 0, '2021-08-24 07:17:03', '2021-08-24 07:17:04'),
(34, 'testt', 'test', 'test', 'test', 1.44, 'ch_3JS0UzLAXRfbOAk50HxbdI8Y', 0, '2021-08-24 07:21:07', '2021-08-24 07:21:08'),
(35, 'test', 'test', 'test', 'test', 1.44, 'ch_3JS0VMLAXRfbOAk508S3issQ', 0, '2021-08-24 07:21:30', '2021-08-24 07:21:31'),
(36, 'test', 'test', 'test', 'test', 1.44, 'ch_3JS0XdLAXRfbOAk50ICVOsDs', 0, '2021-08-24 07:23:51', '2021-08-24 07:23:52'),
(37, 'test', 'test', 'test', 'test', 1.44, 'ch_3JS0a8LAXRfbOAk50QRpShe8', 0, '2021-08-24 07:26:25', '2021-08-24 07:26:26'),
(38, 'test', 'test', 'quoctienphamm@gmail.com', '123456', NULL, NULL, 0, '2021-08-24 08:56:29', '2021-08-24 08:56:29'),
(39, 'test', 'test', 'quoctienphamm@gmail.com', '123456', NULL, NULL, 0, '2021-08-24 08:56:35', '2021-08-24 08:56:35'),
(40, 'test', 'test', 'quoctienphamm@gmail.com', '123456', NULL, NULL, 0, '2021-08-24 08:56:43', '2021-08-24 08:56:43'),
(41, 'test', 'test', 'quoctienphamm@gmail.com', '123456', NULL, NULL, 0, '2021-08-24 08:57:29', '2021-08-24 08:57:29'),
(42, 'test', 'test', 'quoctienphamm@gmail.com', '123456', NULL, NULL, 0, '2021-08-24 08:59:49', '2021-08-24 08:59:49'),
(43, 'test', 'test', 'quoctienphamm@gmail.com', '123', NULL, NULL, 0, '2021-08-24 09:01:39', '2021-08-24 09:01:39'),
(44, 'test', 'test', 'quoctienphamm@gmail.com', '123', NULL, NULL, 0, '2021-08-24 09:04:35', '2021-08-24 09:04:35'),
(45, 'test', 'test', 'quoctienphamm@gmail.com', '123', NULL, NULL, 0, '2021-08-24 09:05:54', '2021-08-24 09:05:54'),
(46, 'test', 'test', 'quoctienphamm@gmail.com', '123', NULL, NULL, 0, '2021-08-24 09:07:16', '2021-08-24 09:07:16'),
(47, 'test', 'test', 'quoctienphamm@gmail.com', '123', 0.48, 'ch_3JS2BtLAXRfbOAk51Rsbp3Wc', 0, '2021-08-24 09:09:30', '2021-08-24 09:09:35'),
(48, 'test', 'test', 'quoctienphamm@gmail.com', '123456', 0.00, 'ch_3JS2JLLAXRfbOAk51ROlcljE', 0, '2021-08-24 09:17:12', '2021-08-24 09:17:31'),
(49, 'test', 'test', 'quoctienphamm@gmail.com', 'test', 0.24, 'ch_3JS2LzLAXRfbOAk51J7UYjgh', 0, '2021-08-24 09:19:57', '2021-08-24 09:19:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_detail`
--

DROP TABLE IF EXISTS `orders_detail`;
CREATE TABLE IF NOT EXISTS `orders_detail` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `quantity` int(11) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_detail_order_id_foreign` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders_detail`
--

INSERT INTO `orders_detail` (`id`, `order_id`, `product_id`, `title`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 28, 1, 'Ahi Tuna Jerky (21g)', 6, 0.24, '2021-08-24 07:13:46', '2021-08-24 07:13:46'),
(2, 28, 3, 'Caramel Corn (57g)', 5, 0.00, '2021-08-24 07:13:46', '2021-08-24 07:13:46'),
(3, 28, 2, 'White Rabbit Creamy Candy (180g)', 5, 0.00, '2021-08-24 07:13:46', '2021-08-24 07:13:46'),
(4, 29, 1, 'Ahi Tuna Jerky (21g)', 6, 0.24, '2021-08-24 07:14:10', '2021-08-24 07:14:10'),
(5, 29, 3, 'Caramel Corn (57g)', 5, 0.00, '2021-08-24 07:14:10', '2021-08-24 07:14:10'),
(6, 29, 2, 'White Rabbit Creamy Candy (180g)', 5, 0.00, '2021-08-24 07:14:10', '2021-08-24 07:14:10'),
(7, 30, 1, 'Ahi Tuna Jerky (21g)', 6, 0.24, '2021-08-24 07:15:16', '2021-08-24 07:15:16'),
(8, 30, 3, 'Caramel Corn (57g)', 5, 0.00, '2021-08-24 07:15:16', '2021-08-24 07:15:16'),
(9, 30, 2, 'White Rabbit Creamy Candy (180g)', 5, 0.00, '2021-08-24 07:15:16', '2021-08-24 07:15:16'),
(10, 31, 1, 'Ahi Tuna Jerky (21g)', 6, 0.24, '2021-08-24 07:15:27', '2021-08-24 07:15:27'),
(11, 31, 3, 'Caramel Corn (57g)', 5, 0.00, '2021-08-24 07:15:27', '2021-08-24 07:15:27'),
(12, 31, 2, 'White Rabbit Creamy Candy (180g)', 5, 0.00, '2021-08-24 07:15:27', '2021-08-24 07:15:27'),
(13, 32, 1, 'Ahi Tuna Jerky (21g)', 6, 0.24, '2021-08-24 07:15:46', '2021-08-24 07:15:46'),
(14, 32, 3, 'Caramel Corn (57g)', 5, 0.00, '2021-08-24 07:15:46', '2021-08-24 07:15:46'),
(15, 32, 2, 'White Rabbit Creamy Candy (180g)', 5, 0.00, '2021-08-24 07:15:46', '2021-08-24 07:15:46'),
(16, 33, 1, 'Ahi Tuna Jerky (21g)', 6, 0.24, '2021-08-24 07:17:03', '2021-08-24 07:17:03'),
(17, 33, 3, 'Caramel Corn (57g)', 5, 0.00, '2021-08-24 07:17:03', '2021-08-24 07:17:03'),
(18, 33, 2, 'White Rabbit Creamy Candy (180g)', 5, 0.00, '2021-08-24 07:17:03', '2021-08-24 07:17:03'),
(19, 34, 1, 'Ahi Tuna Jerky (21g)', 6, 0.24, '2021-08-24 07:21:07', '2021-08-24 07:21:07'),
(20, 34, 3, 'Caramel Corn (57g)', 5, 0.00, '2021-08-24 07:21:07', '2021-08-24 07:21:07'),
(21, 34, 2, 'White Rabbit Creamy Candy (180g)', 5, 0.00, '2021-08-24 07:21:07', '2021-08-24 07:21:07'),
(22, 35, 1, 'Ahi Tuna Jerky (21g)', 6, 0.24, '2021-08-24 07:21:30', '2021-08-24 07:21:30'),
(23, 35, 3, 'Caramel Corn (57g)', 5, 0.00, '2021-08-24 07:21:30', '2021-08-24 07:21:30'),
(24, 35, 2, 'White Rabbit Creamy Candy (180g)', 5, 0.00, '2021-08-24 07:21:30', '2021-08-24 07:21:30'),
(25, 36, 1, 'Ahi Tuna Jerky (21g)', 6, 0.24, '2021-08-24 07:23:51', '2021-08-24 07:23:51'),
(26, 36, 3, 'Caramel Corn (57g)', 5, 0.00, '2021-08-24 07:23:51', '2021-08-24 07:23:51'),
(27, 36, 2, 'White Rabbit Creamy Candy (180g)', 5, 0.00, '2021-08-24 07:23:51', '2021-08-24 07:23:51'),
(28, 37, 1, 'Ahi Tuna Jerky (21g)', 6, 0.24, '2021-08-24 07:26:25', '2021-08-24 07:26:25'),
(29, 37, 3, 'Caramel Corn (57g)', 5, 0.00, '2021-08-24 07:26:25', '2021-08-24 07:26:25'),
(30, 37, 2, 'White Rabbit Creamy Candy (180g)', 5, 0.00, '2021-08-24 07:26:25', '2021-08-24 07:26:25'),
(31, 38, 1, 'Ahi Tuna Jerky (21g)', 2, 0.24, '2021-08-24 08:56:29', '2021-08-24 08:56:29'),
(32, 38, 3, 'Caramel Corn (57g)', 3, 0.00, '2021-08-24 08:56:29', '2021-08-24 08:56:29'),
(33, 38, 2, 'White Rabbit Creamy Candy (180g)', 4, 0.00, '2021-08-24 08:56:29', '2021-08-24 08:56:29'),
(34, 39, 1, 'Ahi Tuna Jerky (21g)', 2, 0.24, '2021-08-24 08:56:35', '2021-08-24 08:56:35'),
(35, 39, 3, 'Caramel Corn (57g)', 3, 0.00, '2021-08-24 08:56:35', '2021-08-24 08:56:35'),
(36, 39, 2, 'White Rabbit Creamy Candy (180g)', 4, 0.00, '2021-08-24 08:56:35', '2021-08-24 08:56:35'),
(37, 40, 1, 'Ahi Tuna Jerky (21g)', 2, 0.24, '2021-08-24 08:56:43', '2021-08-24 08:56:43'),
(38, 40, 3, 'Caramel Corn (57g)', 3, 0.00, '2021-08-24 08:56:43', '2021-08-24 08:56:43'),
(39, 40, 2, 'White Rabbit Creamy Candy (180g)', 4, 0.00, '2021-08-24 08:56:43', '2021-08-24 08:56:43'),
(40, 41, 1, 'Ahi Tuna Jerky (21g)', 2, 0.24, '2021-08-24 08:57:29', '2021-08-24 08:57:29'),
(41, 41, 3, 'Caramel Corn (57g)', 3, 0.00, '2021-08-24 08:57:29', '2021-08-24 08:57:29'),
(42, 41, 2, 'White Rabbit Creamy Candy (180g)', 4, 0.00, '2021-08-24 08:57:29', '2021-08-24 08:57:29'),
(43, 42, 1, 'Ahi Tuna Jerky (21g)', 2, 0.24, '2021-08-24 08:59:49', '2021-08-24 08:59:49'),
(44, 42, 3, 'Caramel Corn (57g)', 3, 0.00, '2021-08-24 08:59:49', '2021-08-24 08:59:49'),
(45, 42, 2, 'White Rabbit Creamy Candy (180g)', 4, 0.00, '2021-08-24 08:59:49', '2021-08-24 08:59:49'),
(46, 43, 1, 'Ahi Tuna Jerky (21g)', 2, 0.24, '2021-08-24 09:01:39', '2021-08-24 09:01:39'),
(47, 43, 3, 'Caramel Corn (57g)', 3, 0.00, '2021-08-24 09:01:39', '2021-08-24 09:01:39'),
(48, 43, 2, 'White Rabbit Creamy Candy (180g)', 4, 0.00, '2021-08-24 09:01:39', '2021-08-24 09:01:39'),
(49, 44, 1, 'Ahi Tuna Jerky (21g)', 2, 0.24, '2021-08-24 09:04:35', '2021-08-24 09:04:35'),
(50, 44, 3, 'Caramel Corn (57g)', 3, 0.00, '2021-08-24 09:04:35', '2021-08-24 09:04:35'),
(51, 44, 2, 'White Rabbit Creamy Candy (180g)', 4, 0.00, '2021-08-24 09:04:35', '2021-08-24 09:04:35'),
(52, 45, 1, 'Ahi Tuna Jerky (21g)', 2, 0.24, '2021-08-24 09:05:54', '2021-08-24 09:05:54'),
(53, 45, 3, 'Caramel Corn (57g)', 3, 0.00, '2021-08-24 09:05:54', '2021-08-24 09:05:54'),
(54, 45, 2, 'White Rabbit Creamy Candy (180g)', 4, 0.00, '2021-08-24 09:05:54', '2021-08-24 09:05:54'),
(55, 46, 1, 'Ahi Tuna Jerky (21g)', 2, 0.24, '2021-08-24 09:07:16', '2021-08-24 09:07:16'),
(56, 46, 3, 'Caramel Corn (57g)', 3, 0.00, '2021-08-24 09:07:16', '2021-08-24 09:07:16'),
(57, 46, 2, 'White Rabbit Creamy Candy (180g)', 4, 0.00, '2021-08-24 09:07:16', '2021-08-24 09:07:16'),
(58, 47, 1, 'Ahi Tuna Jerky (21g)', 2, 0.24, '2021-08-24 09:09:30', '2021-08-24 09:09:30'),
(59, 47, 3, 'Caramel Corn (57g)', 3, 0.00, '2021-08-24 09:09:30', '2021-08-24 09:09:30'),
(60, 47, 2, 'White Rabbit Creamy Candy (180g)', 4, 0.00, '2021-08-24 09:09:30', '2021-08-24 09:09:30'),
(61, 48, 3, 'Caramel Corn (57g)', 1, 0.00, '2021-08-24 09:17:12', '2021-08-24 09:17:12'),
(62, 49, 1, 'Ahi Tuna Jerky (21g)', 1, 0.24, '2021-08-24 09:19:57', '2021-08-24 09:19:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(32, 'App\\User', 11, 'authToken', 'bfe23f761cbe83b26cf8043beffdf4716b4b6aa7948585fee125690e709e051d', '[\"*\"]', '2021-08-25 08:30:20', '2021-08-25 07:58:33', '2021-08-25 08:30:20'),
(27, 'App\\User', 11, 'authToken', '5528cfe8c8808665ed0270598deac18ba5ac45f335248f22633a9baf3bcd1280', '[\"*\"]', NULL, '2021-08-21 00:16:50', '2021-08-21 00:16:50'),
(26, 'App\\User', 11, 'authToken', '077ca00a27cfd8403db18996adedadcf62c2c984565cbdb9598d44c7851613bd', '[\"*\"]', NULL, '2021-08-21 00:00:34', '2021-08-21 00:00:34'),
(25, 'App\\User', 11, 'authToken', '70973b2e8f8c25bb6a422cec4e364af174f541823a5b88474b1d49f371a501cc', '[\"*\"]', NULL, '2021-08-21 00:00:33', '2021-08-21 00:00:33'),
(24, 'App\\User', 11, 'authToken', '9c60bc747001f72c66be6265f6725eff4b6de0c33e7ad8212a8d0a7b7f42d553', '[\"*\"]', NULL, '2021-08-20 11:45:47', '2021-08-20 11:45:47'),
(20, 'App\\User', 11, 'authToken', 'bdb73be3796ac063b4f43c5d5c12fd9f1dc4b863d5ff3be92ee4043da5a4790b', '[\"*\"]', '2021-08-10 01:47:49', '2021-08-10 01:33:35', '2021-08-10 01:47:49'),
(19, 'App\\User', 11, 'authToken', 'a4f120b2834fc7fbbc24e18892e7a9d0e3fb9f9365a73441e9b9e3463f60b76b', '[\"*\"]', '2021-08-10 01:15:45', '2021-08-10 01:15:39', '2021-08-10 01:15:45'),
(17, 'App\\User', 11, 'authToken', 'c83ded5a541d30e7a34dad272c0ad33687ca29e8d332be37ee0c34e76e69bd2a', '[\"*\"]', '2021-08-09 08:03:28', '2021-08-09 07:37:15', '2021-08-09 08:03:28'),
(18, 'App\\User', 11, 'authToken', '083f4f757c5953da921fd08cb5440ca7b8455f4ae773a4ad006afd1b863360b2', '[\"*\"]', '2021-08-22 23:25:01', '2021-08-09 08:27:07', '2021-08-22 23:25:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `thumbnail` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `title_seo` text COLLATE utf8mb4_unicode_ci,
  `keyword_seo` text COLLATE utf8mb4_unicode_ci,
  `description_seo` text COLLATE utf8mb4_unicode_ci,
  `h1_seo` text COLLATE utf8mb4_unicode_ci,
  `h2_seo` text COLLATE utf8mb4_unicode_ci,
  `h3_seo` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT '0',
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `content`, `thumbnail`, `url`, `title_seo`, `keyword_seo`, `description_seo`, `h1_seo`, `h2_seo`, `h3_seo`, `status`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'August coupon up to 70%', 'test', '<p>test</p>', 'upload/gift.png', 'august-coupon-up-to-70', 'test', 'test', 'test', 'test', 'test', 'test', 1, NULL, '2021-08-25 08:10:52', '2021-08-25 08:30:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `thumbnail` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `title_seo` text COLLATE utf8mb4_unicode_ci,
  `keyword_seo` text COLLATE utf8mb4_unicode_ci,
  `description_seo` text COLLATE utf8mb4_unicode_ci,
  `h1_seo` text COLLATE utf8mb4_unicode_ci,
  `h2_seo` text COLLATE utf8mb4_unicode_ci,
  `h3_seo` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `popular_1` int(11) NOT NULL DEFAULT '0',
  `popular_2` int(11) NOT NULL DEFAULT '0',
  `popular_3` int(11) NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `category_id_1` int(11) DEFAULT NULL,
  `category_id_2` int(11) DEFAULT NULL,
  `category_id_3` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` double(8,2) DEFAULT '0.00',
  `price_sale` double(8,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `content`, `thumbnail`, `url`, `title_seo`, `keyword_seo`, `description_seo`, `h1_seo`, `h2_seo`, `h3_seo`, `status`, `popular_1`, `popular_2`, `popular_3`, `images`, `category_id_1`, `category_id_2`, `category_id_3`, `created_at`, `updated_at`, `price`, `price_sale`) VALUES
(1, 'Ahi Tuna Jerky (21g)', 'Wild-caught Hawaiian tuna is marinated in teriyaki seasoning, then dried to make this savory treat. A fishy twist on an American classic.', '<p>test</p>', 'upload/products/KAIMANA-TERIYAKI-01_600x600.png', 'ahi-tuna-jerky-21g', 'test', 'test', 'test', 'test', 'test', 'test', 1, 0, 0, 0, '[\"upload/products/WhiteRabbit-min.png\",\"upload/products/ISLAND-PRINCESS-CARAMEL-CORN-01_600x600.png\"]', 4, NULL, 18, '2021-08-14 22:31:33', '2021-08-21 22:32:49', 0.25, 0.24),
(3, 'Caramel Corn (57g)', 'Sweet and crunchy caramel corn mixed with decadent chocolate covered popcorn bites. A sweet combination that will make your mouth water.', '<p>test</p>', 'upload/products/ISLAND-PRINCESS-CARAMEL-CORN-01_600x600.png', 'caramel-corn-57g', 'test', 'test', 'test', 'test', 'test', 'test', 1, 0, 0, 0, '[]', 4, NULL, 18, '2021-08-16 20:49:56', '2021-08-18 01:37:37', 0.00, 0.00),
(2, 'White Rabbit Creamy Candy (180g)', 'Light and sweet milk chews made with whole milk powder. The inner wrapper is made of edible rice paper.', '<p>test</p>', 'upload/products/WhiteRabbit-min.png', 'white-rabbit-creamy-candy-180g', 'test', 'test', 'test', 'test', 'test', 'test', 1, 0, 0, 0, '[]', 4, NULL, 18, '2021-08-14 23:11:19', '2021-08-18 01:37:44', 0.00, 0.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ui`
--

DROP TABLE IF EXISTS `ui`;
CREATE TABLE IF NOT EXISTS `ui` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `layout` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ui`
--

INSERT INTO `ui` (`id`, `name`, `value`, `type`, `created_at`, `updated_at`, `layout`) VALUES
(54, 'logo', '{\"url\":\"\",\"value\":\"upload/logo/My_Post.png\"}', 'image', '2021-08-20 10:37:00', '2021-08-20 10:37:00', 'page'),
(34, 'website', '[{\"id\":1,\"title\":\"B.A STORE\",\"description\":\"test\",\"content\":\"<p>TEST</p>\",\"thumbnail\":\"upload/products/congnghedanhbong.com/congnghedanhbong_com.png\",\"url\":null,\"title_seo\":\"test\",\"keyword_seo\":\"test\",\"description_seo\":\"test\",\"h1_seo\":\"test\",\"h2_seo\":\"test\",\"h3_seo\":\"test\",\"created_at\":\"2021-08-11 15:29:50\",\"updated_at\":\"2021-08-16 15:35:39\",\"status\":1,\"type\":\"page\",\"images\":\"[]\"}]', 'position', '2021-08-15 21:19:46', '2021-08-20 10:37:00', 'page'),
(35, 'contact', '[{\"id\":2,\"title\":\"Contact\",\"description\":\"test\",\"content\":\"<p>test 123</p>\",\"thumbnail\":\"upload/1z0m_1494825650995.jpg\",\"url\":null,\"title_seo\":\"test\",\"keyword_seo\":\"test\",\"description_seo\":\"test\",\"h1_seo\":\"test\",\"h2_seo\":\"test\",\"h3_seo\":\"test\",\"created_at\":\"2021-08-11 15:30:21\",\"updated_at\":\"2021-08-16 04:17:06\",\"status\":1,\"type\":\"page\",\"images\":\"\\\"\\\"\"}]', 'position', '2021-08-15 21:19:46', '2021-08-20 10:37:00', 'page'),
(39, 'fav_icon', '{\"url\":\"\",\"value\":\"upload/logo/My_Post.png\"}', 'image', '2021-08-16 01:35:26', '2021-08-20 10:37:00', 'page'),
(53, 'copyright1', '{\"url\":\"\",\"value\":\"123\"}', 'text', '2021-08-19 23:31:21', '2021-08-23 08:48:34', 'default'),
(28, 'sort', '[{\"id\":5,\"title\":\"Spain\",\"description\":\"Olé! Bienvenido a España! This SnackCrate comes from the home of the running of the bulls. Unique flavors abound with selections ranging from Chupa Chups, Fried Egg Chips, and Spicy Mangoes!\",\"content\":\"<p>123</p>\",\"thumbnail\":\"upload/category/SC_Crate_Spain_Premium_Drink_041619.png\",\"url\":\"contact-coppy\",\"title_seo\":\"test\",\"keyword_seo\":\"test\",\"description_seo\":\"test\",\"h1_seo\":\"test\",\"h2_seo\":\"test\",\"h3_seo\":\"test\",\"created_at\":\"2021-08-16 16:03:27\",\"updated_at\":\"2021-08-17 15:42:24\",\"status\":1,\"type\":\"product\",\"images\":\"[]\",\"background\":\"rgb(103, 72, 216)\"},{\"id\":4,\"title\":\"Hawaii\",\"description\":\"Aloha! This tropical SnackCrate features the snacks of the 50th state. Flavors such as Kona Coffee, Pineapple, and Li Hing Mui abound as well as snacks influenced by Japan, China and the Pacific Islands.\",\"content\":\"<p>123</p>\",\"thumbnail\":\"upload/category/SC_Crate_Hawaii_Premium_Drink_010919_600x600-2.png\",\"url\":\"hawaii\",\"title_seo\":\"test\",\"keyword_seo\":\"test\",\"description_seo\":\"test\",\"h1_seo\":\"test\",\"h2_seo\":\"test\",\"h3_seo\":\"test\",\"created_at\":\"2021-08-16 15:42:55\",\"updated_at\":\"2021-08-17 16:01:40\",\"status\":1,\"type\":\"product\",\"images\":\"[]\",\"background\":\"#ffb412\"}]', 'position', '2021-08-14 06:36:27', '2021-08-23 08:48:32', 'default'),
(29, 'image', '{\"url\":\"\",\"value\":\"\"}', 'image', '2021-08-14 06:36:28', '2021-08-16 08:58:37', 'default'),
(30, 'title', '{\"url\":\"\",\"value\":\"\"}', 'text', '2021-08-14 06:36:28', '2021-08-16 08:58:37', 'default'),
(31, 'textarea', '{\"url\":\"\",\"value\":\"\"}', 'textarea', '2021-08-14 06:36:28', '2021-08-16 08:58:37', 'default'),
(32, 'editor', '{\"url\":\"\",\"value\":\"\"}', 'editor', '2021-08-14 06:36:28', '2021-08-16 08:58:37', 'default'),
(40, 'popular', '[{\"id\":5,\"title\":\"Spain\",\"description\":\"Olé! Bienvenido a España! This SnackCrate comes from the home of the running of the bulls. Unique flavors abound with selections ranging from Chupa Chups, Fried Egg Chips, and Spicy Mangoes!\",\"content\":\"<p>123</p>\",\"thumbnail\":\"upload/category/SC_Crate_Spain_Premium_Drink_041619.png\",\"url\":\"contact-coppy\",\"title_seo\":\"test\",\"keyword_seo\":\"test\",\"description_seo\":\"test\",\"h1_seo\":\"test\",\"h2_seo\":\"test\",\"h3_seo\":\"test\",\"created_at\":\"2021-08-16 16:03:27\",\"updated_at\":\"2021-08-17 15:42:24\",\"status\":1,\"type\":\"product\",\"images\":\"[]\",\"background\":\"rgb(103, 72, 216)\"},{\"id\":4,\"title\":\"Hawaii\",\"description\":\"Aloha! This tropical SnackCrate features the snacks of the 50th state. Flavors such as Kona Coffee, Pineapple, and Li Hing Mui abound as well as snacks influenced by Japan, China and the Pacific Islands.\",\"content\":\"<p>123</p>\",\"thumbnail\":\"upload/category/SC_Crate_Hawaii_Premium_Drink_010919_600x600-2.png\",\"url\":\"hawaii\",\"title_seo\":\"test\",\"keyword_seo\":\"test\",\"description_seo\":\"test\",\"h1_seo\":\"test\",\"h2_seo\":\"test\",\"h3_seo\":\"test\",\"created_at\":\"2021-08-16 15:42:55\",\"updated_at\":\"2021-08-17 16:01:40\",\"status\":1,\"type\":\"product\",\"images\":\"[]\",\"background\":\"#ffb412\"}]', 'position', '2021-08-16 09:09:10', '2021-08-23 08:48:32', 'default'),
(41, 'address_footer', '{\"url\":\"\",\"value\":\"Address: Nguyen Kiem street, Phu Nhuan dictrict, HCM city\"}', 'text', '2021-08-19 22:49:09', '2021-08-23 08:48:32', 'default'),
(42, 'facebook', '{\"url\":\"\",\"value\":\"https://www.facebook.com/pharmacyfull10\"}', 'text', '2021-08-19 22:53:08', '2021-08-23 08:48:32', 'default'),
(43, 'instagram', '{\"url\":\"\",\"value\":\"https://www.facebook.com/pharmacyfull10\"}', 'text', '2021-08-19 22:53:08', '2021-08-23 08:48:33', 'default'),
(44, 'linkedin', '{\"url\":\"\",\"value\":\"https://www.facebook.com/pharmacyfull10\"}', 'text', '2021-08-19 22:53:09', '2021-08-23 08:48:33', 'default'),
(38, 'slider', '[{\"thumbnail\":\"upload/sliders/ShopHeader_GummiesGalore_NoType_021319-1.png\",\"heading\":{\"url\":\"https://www.snackcrate.com/product-tag/gummies/\",\"color\":\"rgb(103, 72, 216)\",\"title\":\"Gummies\",\"description\":\"It looks like Haribo and Friends are having a party, and you’re invited! If you’re dedicated to all things nummy and gummy, this is the box for you!\"}},{\"thumbnail\":\"upload/sliders/shopheader_bogo.png\",\"heading\":{\"title\":\"Buy One Get One\",\"description\":\"Delicious deals from ever corner of the globe!\",\"url\":\"https://www.snackcrate.com/product-tag/bogo/\",\"color\":\"rgb(125, 44, 139)\"}},{\"thumbnail\":\"upload/sliders/ShopHeader_Cadbury_011619.png\",\"heading\":{\"title\":\"Cadbury\",\"description\":\"Explore the wonderful creations of Britain’s infamous chocolatier.\",\"url\":\"https://www.snackcrate.com/product-tag/cadbury/\",\"color\":\"rgb(80, 0, 165)\"}},{\"thumbnail\":\"upload/sliders/ShopHeader_CookiesandCakes_021319.png\",\"heading\":{\"title\":\"Cookies and Cakes ?\",\"description\":\"Ditch the oven for your pastry-lovin’; from our pantry to yours, a selection of baked delights that’re completely out-of-sight!\",\"color\":\"rgb(139, 57, 29)\",\"url\":\"https://www.snackcrate.com/product-tag/cookies-and-cakes/\"}}]', 'images', '2021-08-15 23:04:17', '2021-08-20 10:37:00', 'page'),
(49, 'copyright', '{\"url\":\"\",\"value\":\"Copyright 2021 All Rights Reserved B.A STORE \"}', 'text', '2021-08-19 23:23:13', '2021-08-23 08:48:33', 'default'),
(46, 'messenger', '{\"url\":\"\",\"value\":\"https://www.facebook.com/pharmacyfull10\"}', 'text', '2021-08-19 22:53:09', '2021-08-23 08:48:33', 'default'),
(48, 'whatsapp', '{\"url\":\"\",\"value\":\"https://www.facebook.com/pharmacyfull10\"}', 'text', '2021-08-19 23:08:17', '2021-08-23 08:48:33', 'default');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fullname` text COLLATE utf8mb4_unicode_ci,
  `gender` text COLLATE utf8mb4_unicode_ci,
  `birthday` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `fullname`, `gender`, `birthday`, `address`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(11, 'Pham Quoc Tien', '1', NULL, 'Test', 'quoctienphamm@gmail.com', NULL, '$2y$10$qQTIBq.9CB7BNGsE9GCGV.fuQctYsuf9zFQ6XnPr0uleIuIJs03lS', NULL, '2021-08-09 00:31:20', '2021-08-09 00:31:20', 'admin'),
(12, 'asd', '1', NULL, 'asd', 'asd@gmail.com', NULL, '$2y$10$cBUSSM7VQriZLWzniHWfIuz1ylTPXOtr43X72wmBt0V52E3NVfyu.', NULL, '2021-08-09 00:53:35', '2021-08-09 00:53:35', 'user');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
