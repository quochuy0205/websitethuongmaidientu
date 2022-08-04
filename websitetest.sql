-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2022 at 08:24 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `websitetest`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(45, 'Phone', 'phone', '2022-07-07 06:14:57', '2022-07-18 06:08:01'),
(46, 'Camera', 'camera', '2022-07-07 06:15:44', '2022-07-07 06:15:44'),
(47, 'Watch', 'watch', '2022-07-07 06:16:06', '2022-07-18 06:07:54'),
(48, 'Machine', 'machine', '2022-07-07 06:26:17', '2022-07-18 06:07:47'),
(49, 'Television', 'television', '2022-07-18 06:09:47', '2022-07-18 06:09:47');

-- --------------------------------------------------------

--
-- Table structure for table `category_news`
--

CREATE TABLE `category_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_news`
--

INSERT INTO `category_news` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', 'samsung', '2022-06-20 12:05:11', '2022-06-20 12:05:11'),
(2, 'Oppo', 'oppo', '2022-06-28 05:14:21', '2022-06-28 05:14:21'),
(3, 'Apple', 'apple', '2022-07-19 06:07:51', '2022-07-19 06:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '45,46,47,48', 6, '2022-06-09 12:37:22', '2022-06-20 18:06:58');

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'KID SMART WATCHES', 'BEAUTIFUL', '59.99', 'http://127.0.0.1:8000/shop', '1658061810.jpg', 1, '2022-07-17 05:43:30', '2022-07-17 05:43:30'),
(2, 'SMART CAMERA', 'SALE PRICE!!!', '100', 'http://127.0.0.1:8000/shop', '1658061870.jpg', 1, '2022-07-17 05:44:30', '2022-07-17 05:44:30');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_05_06_021537_create_sessions_table', 1),
(7, '2022_05_06_122307_create_categories_table', 1),
(8, '2022_05_06_122335_create_products_table', 1),
(9, '2022_05_19_000856_create_home_sliders_table', 1),
(10, '2022_05_26_071506_create_home_categories_table', 1),
(11, '2022_05_28_083115_create_sales_table', 1),
(12, '2022_06_05_135755_create_coupons_table', 1),
(13, '2022_06_06_122006_create_orders_table', 1),
(14, '2022_06_06_122027_create_order_items_table', 1),
(15, '2022_06_06_122041_create_shippings_table', 1),
(16, '2022_06_06_122056_create_transactions_table', 1),
(17, '2022_06_09_001928_add_delivered_canceled_date_to_orders_table', 1),
(18, '2022_06_09_013855_add_rstatus_to_order_items_table', 1),
(19, '2022_06_09_014147_create_reviews_table', 1),
(20, '2022_06_09_081311_create_contacts_table', 1),
(21, '2022_06_10_120611_create_category_news_table', 1),
(22, '2022_06_20_113824_create_news_table', 2),
(25, '2022_07_01_114433_create_profiles_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_news_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `slug`, `short_description`, `description`, `image`, `category_news_id`, `created_at`, `updated_at`) VALUES
(4, ' MacBook Air M2 scores high in the test with outstanding performance', 'macbook-air-m2-scores-high-in-the-test-with-outstanding-performance', '<p>MACBOOK</p>', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\"><span class=\"Y2IQFc\" lang=\"en\" style=\"font-family: arial, helvetica, sans-serif;\">The results also confirm that the MacBook Air M2 outperforms the base Mac Pro Tower model with an 8-core Intel Xeon W processor despite its nearly $5,000 lower price tag. While that\'s not an \"Apple\" vs. \"Apple\" comparison, it\'s still a testament to the impressive performance of Apple silicon chips in more affordable Macs.</span></pre>', '1657517578.jpg', 1, '2022-07-10 22:32:58', '2022-07-19 06:07:33'),
(5, ' Start the new week with Galaxy A53 online discount extremely hot, the discount of millions', 'start-the-new-week-with-galaxy-a53-online-discount-extremely-hot-the-discount-of-millions', '<p>GALAXYA53</p>', '<div id=\"tw-target-text-container\" class=\"tw-ta-container F0azHf tw-nfl\" tabindex=\"0\">\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\"><span class=\"Y2IQFc\" lang=\"en\" style=\"font-family: arial, helvetica, sans-serif;\">Galaxy A53 is equipped with a Super AMOLED panel with a screen size of up to 6.5 inches that provides colorful, high-contrast images, optimized energy consumption and a full and comprehensive display space. Possessing Full HD + resolution (1080 x 2400 Pixels) helps the image to be displayed in sharp, high detail, giving you a realistic feeling on each entertainment task when experiencing through this machine.</span></pre>\n</div>\n<div class=\"iYB33c\">\n<div id=\"tw-tmenu\" class=\"tw-menu\"></div>\n</div>', '1657517650.jpg', 1, '2022-07-10 22:34:10', '2022-07-19 06:06:44'),
(6, ' How special characters on iPhone you should know to have more \'cute\' messages', 'how-special-characters-on-iphone-you-should-know-to-have-more-cute-messages', '<p>Apple</p>', '<div id=\"tw-target-text-container\" class=\"tw-ta-container F0azHf tw-nfl\" tabindex=\"0\">\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\"><span class=\"Y2IQFc\" lang=\"en\" style=\"font-family: arial, helvetica, sans-serif;\">On the regular iPhone keyboard, you\'ll only have simple letters in the Latin alphabet. There is a difference that if you own special characters, you will be able to have more soulful messages and texts. This brings many impressive things to the opponent. And in this article, I will show you how to own a special character set on iPhone that few users know about.</span></pre>\n</div>\n<div class=\"iYB33c\">\n<div id=\"tw-tmenu\" class=\"tw-menu\"></div>\n</div>', '1658236162.jpg', 3, '2022-07-19 06:09:22', '2022-07-19 06:09:22'),
(7, 'Samsung maintains its position as the top phone manufacturer globally', 'samsung-maintains-its-position-as-the-top-phone-manufacturer-globally', '<p>Samsung</p>', '<div id=\"tw-target-text-container\" class=\"tw-ta-container F0azHf tw-nfl\" tabindex=\"0\">\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\"><span class=\"Y2IQFc\" lang=\"en\" style=\"font-family: arial, helvetica, sans-serif;\">Samsung maintains its position as the top phone maker globally with a 21% market share, thanks in part to strong sales of the Galaxy A series.</span></pre>\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Translation\"><span class=\"Y2IQFc\" lang=\"en\" style=\"font-family: arial, helvetica, sans-serif;\"><br>Apple still maintains its second largest market share among all phone manufacturers with 17% thanks to continued high demand for the iPhone 13 series. Xiaomi, OPPO and Vivo ranked third, fourth and fifth respectively. . Sales in the second quarter of Chinese companies declined, with a share of 14% (Xiaomi), 10% (OPPO) and 9% (Vivo) of the global market, respectively.</span></pre>\n</div>\n<div class=\"iYB33c\">\n<div id=\"tw-tmenu\" class=\"tw-menu\"></div>\n</div>', '1658236288.jpg', 1, '2022-07-19 06:11:28', '2022-07-19 06:11:28');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_table` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `delivered_table`, `canceled_date`) VALUES
(1, 2, '1.00', '0.00', '0.21', '1.21', 'Huy2', 'Huy2', '1234566790', 'huytv8x8@gmail.com', 'test1', 'test1', 'TrÃ  Vinh', 'Travinh', 'VietNam', '8412', 'delivered', 0, '2022-06-19 06:14:05', '2022-06-19 06:14:05', NULL, NULL),
(2, 2, '800.00', '0.00', '168.00', '968.00', 'Huy', 'Huy', '0913817212', 'teddytv29@gmail.com', 'TV', NULL, 'Tra Vinh', 'Tra Vinh', 'VN', '768', 'delivered', 0, '2022-06-23 20:00:42', '2022-06-23 20:00:42', NULL, NULL),
(3, 2, '1000.00', '0.00', '210.00', '1210.00', 'Huy', 'Huy', '123456789', 'teddytv29@gmail.com', 'TV', 'TV', 'Tra Vinh', 'Tra Vinh', 'VN', '121', 'delivered', 0, '2022-06-23 20:35:11', '2022-06-23 21:04:59', '2022-06-24', NULL),
(4, 4, '1000.00', '0.00', '210.00', '1210.00', 'Huy', 'Huy', '0913817216', 'huytv8x8@gmail.com', 'TV', 'TV', 'Tra Vinh', 'Tra Vinh', 'VN', '12100', 'delivered', 0, '2022-06-23 20:38:33', '2022-06-23 21:05:01', '2022-06-24', NULL),
(5, 3, '1000.00', '0.00', '210.00', '1210.00', 'huy', 'huy', '0913816215', 'teddytv29@gmail.com', 'k4p1', 'k4p1', 'Tra Vinh', 'Tra Vinh', 'VietNam', '12100', 'ordered', 0, '2022-06-23 20:44:10', '2022-06-23 20:44:10', NULL, NULL),
(6, 4, '800.00', '0.00', '168.00', '968.00', 'huy', 'huy', '0912817216', 'huytv8x8@gmail.com', 'k4p1', 'k4p1', 'Tra Vinh', 'Tra Vinh', 'VietNam', '12100', 'ordered', 0, '2022-06-23 20:56:19', '2022-06-23 20:56:19', NULL, NULL),
(7, 2, '12.00', '0.00', '2.52', '14.52', 'huy', 'huy', '0913817216', 'teddytv29@gmail.com', 'k4p1', 'k4p1', 'Tra Vinh', 'Tra Vinh', 'VietNam', '12100', 'ordered', 0, '2022-06-23 23:37:35', '2022-06-23 23:37:35', NULL, NULL),
(8, 2, '2000.00', '0.00', '420.00', '2420.00', 'Huy', 'Quoc', '0812276763', 'user@user.com', 'k4 P1', 'K5 P3', 'Tra Vinh', 'Tra Vinh', 'Viet Nam', '12100', 'ordered', 0, '2022-07-01 05:49:48', '2022-07-01 05:49:48', NULL, NULL),
(9, 2, '1000.00', '0.00', '210.00', '1210.00', 'Huy', 'Quá»‘c', '0812276763', 'user@user.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 3 PhÆ°á»ng 2', 'TrÃ  Vi', 'TrÃ  Vinh', 'Viá»‡t Nam', '12100', 'ordered', 0, '2022-07-03 21:39:07', '2022-07-03 21:39:07', NULL, NULL),
(10, 2, '1000.00', '0.00', '210.00', '1210.00', 'Huy', 'Quá»‘c', '0812276763', 'user@user.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 3 PhÆ°á»ng 2', 'TrÃ  Vi', 'TrÃ  Vinh', 'Viá»‡t Nam', '12100', 'ordered', 0, '2022-07-03 21:39:47', '2022-07-03 21:39:47', NULL, NULL),
(11, 4, '1000.00', '0.00', '210.00', '1210.00', 'Quá»‘c', 'Huy', '0812276762', 'huytv8x8@gmail.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 3 PhÆ°á»ng 2', 'TrÃ  Vinh', 'TrÃ  Vinh', 'Viá»‡t Nam', '12100', 'ordered', 0, '2022-07-04 06:10:13', '2022-07-04 06:10:13', NULL, NULL),
(12, 4, '800.00', '0.00', '168.00', '968.00', 'Quá»‘c', 'Huy', '0812276762', 'huytv8x8@gmail.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 3 PhÆ°á»ng 2', 'TrÃ  Vinh', 'TrÃ  Vinh', 'Viá»‡t Nam', '12100', 'ordered', 0, '2022-07-04 06:12:39', '2022-07-04 06:12:39', NULL, NULL),
(13, 3, '1000.00', '0.00', '210.00', '1210.00', 'Quá»‘c', 'Huy', '0812276763', 'teddytv29@gmail.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 5 PhÆ°á»ng 2', 'TrÃ  Vinh', 'TrÃ  Vinh', 'Viá»‡t Name', '12100', 'ordered', 0, '2022-07-04 06:14:10', '2022-07-04 06:14:10', NULL, NULL),
(14, 4, '2000.00', '0.00', '420.00', '2420.00', 'Quá»‘c', 'Huy', '0812276762', 'huytv8x8@gmail.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 3 PhÆ°á»ng 2', 'TrÃ  Vinh', 'TrÃ  Vinh', 'Viá»‡t Nam', '12100', 'delivered', 0, '2022-07-04 06:47:44', '2022-07-05 20:08:23', '2022-07-06', NULL),
(15, 2, '10000.00', '0.00', '2100.00', '12100.00', 'Huy', 'Quá»‘c', '0812276763', 'user@user.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 3 PhÆ°á»ng 2', 'TrÃ  Vi', 'TrÃ  Vinh', 'Viá»‡t Nam', '12100', 'delivered', 0, '2022-07-07 06:36:40', '2022-07-07 06:37:17', '2022-07-07', NULL),
(16, 2, '30000.00', '0.00', '6300.00', '36300.00', 'Huy', 'Quá»‘c', '0812276763', 'user@user.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 3 PhÆ°á»ng 2', 'TrÃ  Vi', 'TrÃ  Vinh', 'Viá»‡t Nam', '12100', 'ordered', 0, '2022-07-07 06:57:04', '2022-07-07 06:57:04', NULL, NULL),
(17, 2, '70000.00', '0.00', '14700.00', '84700.00', 'Huy', 'Quá»‘c', '0812276763', 'user@user.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 3 PhÆ°á»ng 2', 'TrÃ  Vi', 'TrÃ  Vinh', 'Viá»‡t Nam', '12100', 'delivered', 0, '2022-07-07 19:28:32', '2022-07-07 19:31:58', '2022-07-08', NULL),
(18, 3, '30000.00', '0.00', '6300.00', '36300.00', 'Quá»‘c', 'Huy', '0812276763', 'teddytv29@gmail.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 5 PhÆ°á»ng 2', 'TrÃ  Vinh', 'TrÃ  Vinh', 'Viá»‡t Name', '12100', 'ordered', 0, '2022-07-07 19:30:32', '2022-07-07 19:30:32', NULL, NULL),
(19, 2, '10000.00', '0.00', '2100.00', '12100.00', 'Huy', 'Quá»‘c', '0812276763', 'user@user.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 3 PhÆ°á»ng 2', 'TrÃ  Vi', 'TrÃ  Vinh', 'Viá»‡t Nam', '12100', 'ordered', 0, '2022-07-08 20:15:42', '2022-07-08 20:15:42', NULL, NULL),
(20, 2, '10000.00', '0.00', '2100.00', '12100.00', 'Huy', 'Quá»‘c', '0812276763', 'user@user.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 3 PhÆ°á»ng 2', 'TrÃ  Vi', 'TrÃ  Vinh', 'Viá»‡t Nam', '12100', 'ordered', 0, '2022-07-08 20:16:06', '2022-07-08 20:16:06', NULL, NULL),
(21, 2, '10000.00', '0.00', '2100.00', '12100.00', 'Huy', 'Quá»‘c', '0812276763', 'user@user.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 3 PhÆ°á»ng 2', 'TrÃ  Vi', 'TrÃ  Vinh', 'Viá»‡t Nam', '12100', 'ordered', 0, '2022-07-08 20:16:48', '2022-07-08 20:16:48', NULL, NULL),
(22, 2, '80000.00', '0.00', '16800.00', '96800.00', 'Huy', 'Quá»‘c', '0812276763', 'user@user.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 3 PhÆ°á»ng 2', 'TrÃ  Vi', 'TrÃ  Vinh', 'Viá»‡t Nam', '12100', 'ordered', 0, '2022-07-08 20:19:21', '2022-07-08 20:19:21', NULL, NULL),
(23, 2, '80000.00', '0.00', '16800.00', '96800.00', 'Huy', 'Quá»‘c', '0812276763', 'user@user.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 3 PhÆ°á»ng 2', 'TrÃ  Vi', 'TrÃ  Vinh', 'Viá»‡t Nam', '12100', 'ordered', 0, '2022-07-08 20:20:01', '2022-07-08 20:20:01', NULL, NULL),
(24, 2, '80000.00', '0.00', '16800.00', '96800.00', 'Huy', 'Quá»‘c', '0812276763', 'user@user.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 3 PhÆ°á»ng 2', 'TrÃ  Vi', 'TrÃ  Vinh', 'Viá»‡t Nam', '12100', 'ordered', 0, '2022-07-08 20:20:32', '2022-07-08 20:20:32', NULL, NULL),
(25, 2, '70000.00', '0.00', '14700.00', '84700.00', 'Huy', 'Quá»‘c', '0812276763', 'user@user.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 3 PhÆ°á»ng 2', 'TrÃ  Vi', 'TrÃ  Vinh', 'Viá»‡t Nam', '12100', 'ordered', 0, '2022-07-08 20:22:13', '2022-07-08 20:22:13', NULL, NULL),
(26, 2, '70000.00', '0.00', '14700.00', '84700.00', 'Huy', 'Quá»‘c', '0812276763', 'user@user.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 3 PhÆ°á»ng 2', 'TrÃ  Vi', 'TrÃ  Vinh', 'Viá»‡t Nam', '12100', 'ordered', 0, '2022-07-08 20:24:41', '2022-07-08 20:24:41', NULL, NULL),
(27, 2, '10000.00', '0.00', '2100.00', '12100.00', 'Huy', 'Quá»‘c', '0812276763', 'user@user.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 3 PhÆ°á»ng 2', 'TrÃ  Vi', 'TrÃ  Vinh', 'Viá»‡t Nam', '12100', 'ordered', 0, '2022-07-09 18:58:32', '2022-07-09 18:58:32', NULL, NULL),
(28, 2, '10000.00', '0.00', '2100.00', '12100.00', 'Huy', 'Quá»‘c', '0812276763', 'user@user.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 3 PhÆ°á»ng 2', 'TrÃ  Vinh', 'TrÃ  Vinh', 'Viá»‡t Nam', '12100', 'delivered', 0, '2022-07-10 00:56:45', '2022-07-10 00:57:34', '2022-07-10', NULL),
(29, 2, '70000.00', '0.00', '14700.00', '84700.00', 'Huy', 'Quá»‘c', '0812276763', 'user@user.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 3 PhÆ°á»ng 2', 'TrÃ  Vi', 'TrÃ  Vinh', 'Viá»‡t Nam', '12100', 'ordered', 0, '2022-07-10 22:43:55', '2022-07-10 22:43:55', NULL, NULL),
(30, 2, '70000.00', '0.00', '14700.00', '84700.00', 'Huy', 'Quá»‘c', '0812276763', 'user@user.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 3 PhÆ°á»ng 2', 'TrÃ  Vi', 'TrÃ  Vinh', 'Viá»‡t Nam', '12100', 'delivered', 0, '2022-07-14 18:27:51', '2022-07-14 18:28:38', '2022-07-15', NULL),
(31, 3, '100.00', '0.00', '21.00', '121.00', 'Quá»‘c', 'Huy', '0812276763', 'teddytv29@gmail.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 5 PhÆ°á»ng 2', 'TrÃ  Vinh', 'TrÃ  Vinh', 'Viá»‡t Name', '12100', 'ordered', 0, '2022-07-19 06:04:17', '2022-07-19 06:04:17', NULL, NULL),
(32, 4, '200.00', '0.00', '42.00', '242.00', 'Quá»‘c', 'Huy', '0812276762', 'huytv8x8@gmail.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 3 PhÆ°á»ng 2', 'TrÃ  Vinh', 'TrÃ  Vinh', 'Viá»‡t Nam', '12100', 'ordered', 0, '2022-07-19 17:28:44', '2022-07-19 17:28:44', NULL, NULL),
(33, 4, '150.00', '0.00', '31.50', '181.50', 'Quá»‘c', 'Huy', '0812276762', 'huytv8x8@gmail.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 3 PhÆ°á»ng 2', 'TrÃ  Vinh', 'TrÃ  Vinh', 'Viá»‡t Nam', '12100', 'ordered', 0, '2022-07-19 20:44:35', '2022-07-19 20:44:35', NULL, NULL),
(34, 4, '250.00', '0.00', '52.50', '302.50', 'Quá»‘c', 'Huy', '0812276762', 'huytv8x8@gmail.com', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 3 PhÆ°á»ng 2', 'TrÃ  Vinh', 'TrÃ  Vinh', 'Viá»‡t Nam', '12100', 'delivered', 0, '2022-07-19 20:45:40', '2022-07-19 20:46:30', '2022-07-20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `rstatus`) VALUES
(15, 13, 15, '10000.00', '1.00', '2022-07-07 06:36:40', '2022-07-07 06:39:48', 1),
(16, 15, 16, '30000.00', '1.00', '2022-07-07 06:57:04', '2022-07-07 06:57:04', 0),
(17, 14, 17, '70000.00', '1.00', '2022-07-07 19:28:32', '2022-07-07 19:32:29', 1),
(18, 15, 18, '30000.00', '1.00', '2022-07-07 19:30:32', '2022-07-07 19:30:32', 0),
(19, 13, 19, '10000.00', '1.00', '2022-07-08 20:15:42', '2022-07-08 20:15:42', 0),
(20, 13, 20, '10000.00', '1.00', '2022-07-08 20:16:06', '2022-07-08 20:16:06', 0),
(21, 13, 21, '10000.00', '1.00', '2022-07-08 20:16:48', '2022-07-08 20:16:48', 0),
(22, 13, 22, '10000.00', '1.00', '2022-07-08 20:19:21', '2022-07-08 20:19:21', 0),
(23, 14, 22, '70000.00', '1.00', '2022-07-08 20:19:21', '2022-07-08 20:19:21', 0),
(24, 13, 23, '10000.00', '1.00', '2022-07-08 20:20:01', '2022-07-08 20:20:01', 0),
(25, 14, 23, '70000.00', '1.00', '2022-07-08 20:20:01', '2022-07-08 20:20:01', 0),
(26, 13, 24, '10000.00', '1.00', '2022-07-08 20:20:32', '2022-07-08 20:20:32', 0),
(27, 14, 24, '70000.00', '1.00', '2022-07-08 20:20:32', '2022-07-08 20:20:32', 0),
(28, 14, 25, '70000.00', '1.00', '2022-07-08 20:22:13', '2022-07-08 20:22:13', 0),
(29, 14, 26, '70000.00', '1.00', '2022-07-08 20:24:41', '2022-07-08 20:24:41', 0),
(30, 13, 27, '10000.00', '1.00', '2022-07-09 18:58:32', '2022-07-09 18:58:32', 0),
(31, 13, 28, '10000.00', '1.00', '2022-07-10 00:56:45', '2022-07-10 00:56:45', 0),
(32, 14, 29, '70000.00', '1.00', '2022-07-10 22:43:55', '2022-07-10 22:43:55', 0),
(33, 14, 30, '70000.00', '1.00', '2022-07-14 18:27:51', '2022-07-14 18:29:23', 1),
(34, 17, 31, '100.00', '1.00', '2022-07-19 06:04:17', '2022-07-19 06:04:17', 0),
(35, 18, 32, '200.00', '1.00', '2022-07-19 17:28:44', '2022-07-19 17:28:44', 0),
(36, 13, 33, '150.00', '1.00', '2022-07-19 20:44:35', '2022-07-19 20:44:35', 0),
(37, 14, 34, '250.00', '1.00', '2022-07-19 20:45:40', '2022-07-19 20:47:33', 1);

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
-- Table structure for table `producers`
--

CREATE TABLE `producers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `producers`
--

INSERT INTO `producers` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(5, 'Samsung', 'samsung', '2022-07-07 06:16:14', '2022-07-07 06:16:14'),
(6, 'Panasonic', 'panasonic', '2022-07-07 06:16:21', '2022-07-07 06:16:21'),
(7, 'Sony', 'sony', '2022-07-07 06:16:39', '2022-07-07 06:16:39'),
(8, 'Apple', 'apple', '2022-07-18 06:08:11', '2022-07-18 06:08:11');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(13,2) NOT NULL,
  `sale_price` decimal(13,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `producer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `producer_id`, `created_at`, `updated_at`) VALUES
(13, 'Camera 360', 'camera-360', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Báº£n dá»‹ch\"><span class=\"Y2IQFc\" lang=\"en\" style=\"font-family: arial, helvetica, sans-serif;\">Fast shipping</span></pre>', '<ul>\n<li>2MP Robot IP Camera with 4-way rotation</li>\n<li>Compression standard H.264/MJPEG - 2.0 megapixel resolution</li>\n<li>&nbsp;3.6mm/4mm . lens</li>\n<li>&nbsp;Infrared 5m</li>\n</ul>\n<p>&nbsp;</p>', '150.00', '100.00', 'camera', 'instock', 0, 10, '1657199903.jpg', NULL, 46, 7, '2022-07-07 06:18:23', '2022-07-18 06:01:30'),
(14, 'Vivo Y15s', 'vivo-y15s', '<p>Warranty&nbsp;genuine phone 1 year</p>', '<ul>\n<li class=\"short-descr-col-1\"><span style=\"font-family: arial, helvetica, sans-serif;\">The powerful A15 Bionic handles the task well, the game experience is smooth</span></li>\n<li class=\"short-descr-col-1\"><span style=\"font-family: arial, helvetica, sans-serif;\">Super Retina XDR screen&nbsp;with ProMotion displays sharp, true colors</span></li>\n<li class=\"short-descr-col-1\"><span style=\"font-family: arial, helvetica, sans-serif;\">Screen refresh rate up to 120Hz, smooth touch and smooth gameplay</span></li>\n<li class=\"short-descr-col-1\">\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Báº£n dá»‹ch\"><span class=\"Y2IQFc\" lang=\"en\" style=\"font-family: arial, helvetica, sans-serif;\">Triple 12MP camera system: Tele, Wide and UltraWide cameras elevate photography</span></pre>\n</li>\n<li class=\"short-descr-col-1\"><span style=\"font-family: arial, helvetica, sans-serif;\">The 12MP front camera takes sharp, natural-looking selfies</span></li>\n</ul>', '250.00', '200.00', 'dienthoai', 'instock', 0, 100, '1657200225.jpg', NULL, 45, 5, '2022-07-07 06:23:45', '2022-07-18 05:59:52'),
(15, 'Hitachi CV-SF202', 'hitachi-cv-sf202', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Báº£n dá»‹ch\"><span class=\"Y2IQFc\" lang=\"en\" style=\"font-family: arial, helvetica, sans-serif;\">Buy with Audio, get an extra 10% off when ordering</span></pre>', '<ul>\n<li class=\"short-descr-col-1\">\n<div class=\"QmZWSe\">\n<div class=\"DHcWmd\">Powerful 2000W power quick dust cleaning</div>\n</div>\n</li>\n<li class=\"short-descr-col-1\">Dust capacity &nbsp;1.6 liters no need to change many times</li>\n<li class=\"short-descr-col-1\">Hepa and Nano Titanium filter&nbsp;helps to deodorize, antibacterial</li>\n<li class=\"short-descr-col-1\">Flexible rotating floor nozzle,&nbsp;utility slot suction head</li>\n<li class=\"short-descr-col-1\">Metal extension hose and 5m cord length easy to go away</li>\n<li class=\"short-descr-col-1\">Wheels and handles are convenient to move to many locations</li>\n</ul>', '300.00', '250.00', 'mayhutbui', 'instock', 0, 12, '1657200356.jpg', NULL, 48, 6, '2022-07-07 06:25:56', '2022-07-18 06:10:04'),
(16, 'Android Tivi Sony 4K 43 inch KD-43X75 VN', 'android-tivi-sony-4k-43-inch-kd-43x75-vn', '<p>Free Premium service pack on Galaxy Play app</p>', '<ul>\n<li class=\"short-descr-col-1\">\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Báº£n dá»‹ch\"><span class=\"Y2IQFc\" lang=\"en\" style=\"font-family: arial, helvetica, sans-serif;\">Sony TVs with 4K resolution display images 4 times sharper than Full HD</span></pre>\n</li>\n<li class=\"short-descr-col-1\"><span style=\"font-family: arial, helvetica, sans-serif;\">X1 4K HDR Processor reduces noise, improves image quality</span></li>\n<li class=\"short-descr-col-1\"><span style=\"font-family: arial, helvetica, sans-serif;\">Direct LED Frame Dimming technology&nbsp;increasing contrast for images</span></li>\n<li class=\"short-descr-col-1\"><span style=\"font-family: arial, helvetica, sans-serif;\">Support&nbsp;HDR10, HLG increase image detail, pure white, deep black</span></li>\n<li class=\"short-descr-col-1\"><span style=\"font-family: arial, helvetica, sans-serif;\">XR200 technology, Auto mode for smooth fast moving images</span></li>\n<li class=\"short-descr-col-1\">\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Báº£n dá»‹ch\"><span class=\"Y2IQFc\" lang=\"en\" style=\"font-family: arial, helvetica, sans-serif;\">Enjoy immersive surround sound with&nbsp;Dolby Audio technology</span></pre>\n</li>\n</ul>', '500.00', '469.00', 'TV', 'instock', 0, 10, '1657200453.jpg', NULL, 49, 6, '2022-07-07 06:27:33', '2022-07-18 06:12:22'),
(17, 'X-Box', 'x-box', '<p>Xbox One X Controller new Version - Xbox Core Wireless Controller Series X/S Hybrid Pad</p>', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Báº£n dá»‹ch\"><span class=\"Y2IQFc\" lang=\"en\" style=\"font-family: arial, helvetica, sans-serif;\">The new Microsoft Xbox Wireless Controller is manufactured by Microsoft and is suitable for users of the new Xbox Series X, Xbox Series S game consoles. The product connects wirelessly, so gamers will definitely feel very comfortable and experience like playing on a real Xbox.\nThe newly redesigned version adds an enhanced Share button for users to easily share game content. Users will easily connect this new controller to Xbox Series X|S game consoles, Xbox One, and devices running Windows 10 and Android operating systems. Microsoft said it will support iOS in the future.\nInside the box includes:\nMicrosoft Xbox Wireless Controller &ndash; Xbox Series X, Xbox Series S.\nUser manual\nTay now has 3 new colors: Carbon Black- Robot White-Shock Blue</span></pre>', '100.00', '80.00', 'x-box', 'instock', 1, 100, '1658148797.jpg', NULL, 48, 7, '2022-07-18 05:53:17', '2022-07-18 06:09:20'),
(18, 'Apple Watch S3 GPS 42mm', 'apple-watch-s3-gps-42mm', '<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Báº£n dá»‹ch\"><span class=\"Y2IQFc\" lang=\"en\"><span style=\"font-family: arial, helvetica, sans-serif;\">Install free apps and software.</span><br><br></span></pre>', '<p>Operating system: watchOS</p>\n<pre class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Báº£n dá»‹ch\"><span class=\"Y2IQFc\" lang=\"en\" style=\"font-family: arial, helvetica, sans-serif;\">Compatible operating systems: iOS<br><br>CPU: Apple S3<br></span></pre>\n<pre class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Báº£n dá»‹ch\"><span class=\"Y2IQFc\" lang=\"en\" style=\"font-family: arial, helvetica, sans-serif;\">Internal memory: 8GB<br></span></pre>\n<div id=\"tw-target-text-container\" class=\"tw-ta-container F0azHf tw-nfl\" tabindex=\"0\">\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Báº£n dá»‹ch\"><span class=\"Y2IQFc\" lang=\"en\"><span style=\"font-family: arial, helvetica, sans-serif;\">Screen technology: OLED Retina display with Force Touch</span><br><span style=\"font-family: arial, helvetica, sans-serif;\"><br>Screen size: 42mm</span><br></span></pre>\n</div>\n<div class=\"iYB33c\">\n<div id=\"tw-tmenu\" class=\"tw-menu\"></div>\n</div>\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Báº£n dá»‹ch\"><span class=\"Y2IQFc\" lang=\"en\"><br><br></span></pre>\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Báº£n dá»‹ch\"><span class=\"Y2IQFc\" lang=\"en\">&nbsp;</span></pre>', '200.00', '180.00', 'apple-watch', 'instock', 0, 12, '1658149636.jpg', NULL, 47, 8, '2022-07-18 06:07:16', '2022-07-18 06:08:37');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `firstname`, `lastname`, `image`, `mobile`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 2, 'Huy', 'Quá»‘c', '1656679987.jpg', '0812276763', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 3 PhÆ°á»ng 2', 'TrÃ  Vi', 'TrÃ  Vinh', 'Viá»‡t Nam', '12100', '2022-07-01 05:44:27', '2022-07-01 05:53:07'),
(2, 4, 'Quá»‘c', 'Huy', '1656940197.jpg', '0812276762', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 3 PhÆ°á»ng 2', 'TrÃ  Vinh', 'TrÃ  Vinh', 'Viá»‡t Nam', '12100', '2022-07-04 06:08:24', '2022-07-04 06:09:57'),
(3, 3, 'Quá»‘c', 'Huy', NULL, '0812276763', 'KhÃ³m 4 PhÆ°á»ng 1', 'KhÃ³m 5 PhÆ°á»ng 2', 'TrÃ  Vinh', 'TrÃ  Vinh', 'Viá»‡t Name', '12100', '2022-07-04 06:13:24', '2022-07-04 06:14:02');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `comment`, `order_item_id`, `created_at`, `updated_at`) VALUES
(1, 5, 'Äáº¹p', 15, '2022-07-07 06:39:48', '2022-07-07 06:39:48'),
(2, 5, 'Ä‘áº¹p', 17, '2022-07-07 19:32:29', '2022-07-07 19:32:29'),
(3, 4, 'Nice!', 33, '2022-07-14 18:29:23', '2022-07-14 18:29:23'),
(4, 5, 'Nice', 37, '2022-07-19 20:47:33', '2022-07-19 20:47:33');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2022-06-20 15:08:20', 1, '2022-06-15 13:33:54', '2022-06-30 13:33:54');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('KImuqjZYjvuCqu0lsxtPETK9GK0keKgJhxkCssqd', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmFVMldnY0FYc3RyZlA5bVJMTm9xdktaMUk1bHA5Yk1DVW84eW1CMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1659432071),
('tiQnZHEGs5E3DrGc05XdZIWx3j1cxnHfgX9Lef8n', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiYnBsOFR1dllZNmxhdXVZR2hBdzFlWWIxalBLVmZNQ3F0NUJpUVVqWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjU6InV0eXBlIjtzOjM6IkFETSI7fQ==', 1658289246);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'cod', 'pending', '2022-06-19 06:14:05', '2022-06-19 06:14:05'),
(2, 2, 2, 'card', 'approved', '2022-06-23 20:00:46', '2022-06-23 20:00:46'),
(3, 2, 3, 'cod', 'pending', '2022-06-23 20:35:11', '2022-06-23 20:35:11'),
(4, 4, 4, 'cod', 'pending', '2022-06-23 20:38:33', '2022-06-23 20:38:33'),
(5, 3, 5, 'cod', 'pending', '2022-06-23 20:44:10', '2022-06-23 20:44:10'),
(6, 4, 6, 'cod', 'pending', '2022-06-23 20:56:19', '2022-06-23 20:56:19'),
(7, 2, 7, 'cod', 'pending', '2022-06-23 23:37:35', '2022-06-23 23:37:35'),
(8, 2, 8, 'cod', 'pending', '2022-07-01 05:49:48', '2022-07-01 05:49:48'),
(9, 2, 9, 'cod', 'pending', '2022-07-03 21:39:07', '2022-07-03 21:39:07'),
(10, 2, 10, 'cod', 'pending', '2022-07-03 21:39:47', '2022-07-03 21:39:47'),
(11, 4, 11, 'cod', 'pending', '2022-07-04 06:10:13', '2022-07-04 06:10:13'),
(12, 4, 12, 'cod', 'pending', '2022-07-04 06:12:39', '2022-07-04 06:12:39'),
(13, 3, 13, 'cod', 'pending', '2022-07-04 06:14:10', '2022-07-04 06:14:10'),
(14, 4, 14, 'cod', 'pending', '2022-07-04 06:47:44', '2022-07-04 06:47:44'),
(15, 2, 15, 'cod', 'pending', '2022-07-07 06:36:40', '2022-07-07 06:36:40'),
(16, 2, 16, 'card', 'approved', '2022-07-07 06:57:08', '2022-07-07 06:57:08'),
(17, 2, 17, 'card', 'approved', '2022-07-07 19:28:36', '2022-07-07 19:28:36'),
(18, 3, 18, 'cod', 'pending', '2022-07-07 19:30:32', '2022-07-07 19:30:32'),
(19, 2, 24, 'card', 'approved', '2022-07-08 20:20:35', '2022-07-08 20:20:35'),
(20, 2, 26, 'card', 'approved', '2022-07-08 20:24:45', '2022-07-08 20:24:45'),
(21, 2, 27, 'cod', 'pending', '2022-07-09 18:58:32', '2022-07-09 18:58:32'),
(22, 2, 28, 'cod', 'pending', '2022-07-10 00:56:45', '2022-07-10 00:56:45'),
(23, 2, 29, 'cod', 'pending', '2022-07-10 22:43:55', '2022-07-10 22:43:55'),
(24, 2, 30, 'cod', 'pending', '2022-07-14 18:27:51', '2022-07-14 18:27:51'),
(25, 3, 31, 'card', 'approved', '2022-07-19 06:04:21', '2022-07-19 06:04:21'),
(26, 4, 32, 'cod', 'pending', '2022-07-19 17:28:44', '2022-07-19 17:28:44'),
(27, 4, 33, 'cod', 'pending', '2022-07-19 20:44:35', '2022-07-19 20:44:35'),
(28, 4, 34, 'card', 'approved', '2022-07-19 20:45:44', '2022-07-19 20:45:44');

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$O.UYJSbsHboCHrqpCp1LduFO2Sy.ve4Ihs9Ux97L77lhpbEYsvqEq', NULL, NULL, NULL, NULL, NULL, NULL, 'ADM', '2022-06-19 05:38:39', '2022-06-19 05:38:39'),
(2, 'user', 'user@user.com', NULL, '$2y$10$PIs6mSVprk97B1ZYc7EED.J7mBgW5lBrGZJeO.B04isPA5iMVsq0a', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-06-19 06:13:27', '2022-06-19 06:13:27'),
(3, 'Quoc Huy', 'teddytv29@gmail.com', NULL, '$2y$10$hxXkAjY0nfupx25Y6Fzkw.CiVrKw4/Ld2REWljieKu.lzh018r23m', NULL, NULL, NULL, 'XBQqlUTVuV7LwSOD073h7xbhdHJvnHL667Tq8enaz1lHgpfnBwlbbXnAXZ9h', NULL, NULL, 'USR', '2022-06-20 18:13:06', '2022-07-17 05:37:48'),
(4, 'huy', 'huytv8x8@gmail.com', NULL, '$2y$10$e.EeAmXoXR9Y7mc20m8bjejRQ5qlgh6eOZaZ/cy5tYafDKBIO/Oue', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-06-20 19:09:51', '2022-06-20 19:09:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `category_news`
--
ALTER TABLE `category_news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_news_name_unique` (`name`),
  ADD UNIQUE KEY `category_news_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_category_news_id_foreign` (`category_news_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

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
-- Indexes for table `producers`
--
ALTER TABLE `producers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `producers_name_unique` (`name`),
  ADD UNIQUE KEY `producers_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_producer_id_foreign` (`producer_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `category_news`
--
ALTER TABLE `category_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `producers`
--
ALTER TABLE `producers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_category_news_id_foreign` FOREIGN KEY (`category_news_id`) REFERENCES `category_news` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_producer_id_foreign` FOREIGN KEY (`producer_id`) REFERENCES `producers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
