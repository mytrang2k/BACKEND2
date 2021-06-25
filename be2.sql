-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 17, 2019 at 05:37 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be2`
--
CREATE DATABASE IF NOT EXISTS `be2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `be2`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `parent_id`) VALUES
(1, 'SEIKO', 0),
(2, 'ORIENT', 0),
(3, 'CITIZEN', 0),
(4, 'CASIO', 0),
(5, 'TIMEX', 0),
(6, 'KLEIN', 0),
(7, 'FALCON', 0);

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

DROP TABLE IF EXISTS `category_product`;
CREATE TABLE IF NOT EXISTS `category_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`product_id`, `category_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 4),
(20, 4),
(21, 4),
(22, 4),
(23, 4),
(24, 4),
(25, 5),
(26, 5),
(27, 5),
(28, 5),
(29, 5),
(30, 5),
(31, 6),
(32, 6),
(33, 6),
(34, 6),
(35, 6),
(36, 6),
(37, 7),
(38, 7),
(39, 7),
(40, 7),
(41, 7),
(42, 7);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_product_id_foreign` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_11_21_004203_create_comments_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_price`, `product_description`, `product_image`, `created_at`, `updated_at`) VALUES
(1, 'Seiko 5 SNZG09K1 Luxe', '3800000.00', 'Case size 42 mm\r\nCase thickness 12 mm\r\nCase material Stainless steel\r\nWindow material Hardlex\r\nMovement Automatic 23 jewels\r\nBand Material leather calfskin\r\nOrigin Assembly by Malaysia\r\nwater resistant	100 m', 'SNZG09K1.jpg', NULL, NULL),
(2, 'Seiko SNKK27', '2900000.00', 'Case size 42 mm \r\nCase thickness 9 mm \r\nCase material Stainless steel \r\nWindow material Mineral \r\nMovement Quartz \r\nBand Material Stainless steel \r\nOrigin Made in Japan \r\nwater resistant	100 m', 'SNKK27.jpg', NULL, NULL),
(3, 'Seiko SRP704', '5500000.00', 'Case size 43 mm \r\nCase thickness 13 mm \r\nCase material Stainless steel \r\nWindow material Hardlex \r\nMovement Automatic \r\nBand Material Stainless steel \r\nOrigin Made in Japan \r\nwater resistant	100 m', 'SRP704.jpg', NULL, NULL),
(4, 'Seiko SUR251', '3215000.00', 'Case size 42 mm \r\nCase thickness 10 mm \r\nCase material Stainless steel \r\nDial Window material type Hardlex \r\nMovement Quartz Solar \r\nBand Material Leather calfskin \r\nOrigin Japan \r\nwater resistant	100 m', 'SUR251.jpg', NULL, NULL),
(5, 'Seiko SUR249', '3215000.00', 'Case size 42 mm \r\nCase thickness 10 mm \r\nCase material Stainless steel \r\nDial Window material type Hardlex \r\nMovement Quartz Solar \r\nBand Material Leather calfskin \r\nOrigin Japan \r\nwater resistant	100 m', 'SUR249.jpg', NULL, NULL),
(6, 'Seiko SUR148P1', '3400000.00', 'Case size 41 mm \r\nCase thickness 9 mm \r\nCase material Stainless steel Gold tone;\r\nDial Window material type Scratch Resistant Hardlex \r\nMovement Quartz \r\nBand Material Stainless steel Gold tone \r\nOrigin Japan \r\nwater resistant	100 m', 'SUR148P1.jpg', NULL, NULL),
(7, 'Orient FAG02003W0', '4700000.00', 'Case size 42 mm \r\nCase thickness 11.8 mm \r\nCase material Metal \r\nWindow material Stainless steel \r\nMovement Automatic \r\nBand Material leather calfskin \r\nOrigin Made in Japan \r\nwater resistant	50 m', 'FAG02003W0.jpg', NULL, NULL),
(8, 'Orient FAC08001T0', '4700000.00', 'Case size 42 mm \r\nCase thickness 11.8 mm \r\nCase material Metal \r\nWindow material Stainless steel \r\nMovement Automatic \r\nBand Material leather calfskin \r\nOrigin Made in Japan \r\nwater resistant	50 m', 'FAC08001T0.jpg', NULL, NULL),
(9, 'Orient FGW0100AW0', '2800000.00', 'Case size 38 mm \r\nCase thickness 7.5 mm \r\nCase material Stainless steel \r\nWindow material Anti reflective sapphire \r\nMovement Quartz \r\nBand Material leather calfskin \r\nOrigin MADE IN JAPAN \r\nwater resistant	30 m', 'FGW0100AW0.jpg', NULL, NULL),
(10, 'Orient FUNA1003B', '2700000.00', 'Case size 38 mm \r\nCase thickness 8 mm \r\nCase material Stainless steel \r\nWindow material Mineral \r\nMovement Quartz \r\nBand Material leather calfskin \r\nOrigin Made in Japan \r\nwater resistant	50 m', 'FUNA1003B.jpg', NULL, NULL),
(11, 'Orient FAC00009W0', '4600000.00', 'Case size 40 mm \r\nCase thickness 12 mm \r\nCase material Stainless steel \r\nWindow material Mineral \r\nMovement Automatic \r\nBand Material leather calfskin \r\nOrigin Made in Japan \r\nwater resistant	50 m', 'FAC00009W0.jpg', NULL, NULL),
(12, 'Orient Sun FET0T003T0', '7700000.00', 'Case size 42.5 mm \r\nCase thickness 15 mm \r\nCase material Stainless steel \r\nWindow material Synthetic sapphire \r\nMovement Automatic \r\nBand Material leather calfskin \r\nOrigin Japanese  \r\nwater resistant	100 m', 'FET0T003T0.jpg', NULL, NULL),
(13, 'Citizen NH8354-58A', '5200000.00', 'Case size 40 mm \r\nCase thickness 10 mm \r\nCase material Stainless steel \r\nWindow material Mineral \r\nMovement Automatic \r\nBand Material Stainless steel \r\nOrigin MADE IN JAPAN \r\nwater resistant	30 m', 'NH8354.jpg', NULL, NULL),
(14, 'Citizen NH8363-14A', '3600000.00', 'Case size 41 mm \r\nCase thickness 13 mm \r\nCase material Stainless steel \r\nWindow material Mineral \r\nMovement Automatic \r\nBand Material Calfskin \r\nOrigin Made in Japan \r\nwater resistant	50 m', 'NH8363.jpg', NULL, NULL),
(15, 'Citizen BL8140-55E', '4700000.00', 'Case size 42 mm \r\nCase thickness 11.5 mm \r\nCase material Stainless steel \r\nWindow material Synthetic sapphire \r\nMovement Quartz – Eco drive \r\nBand Material Stainless steel \r\nOrigin Japanese \r\nwater resistant	100 m', 'BL8140.jpg', NULL, NULL),
(16, 'Citizen AO9003-08E', '6770000.00', 'Case size 42 mm \r\nCase thickness 11 mm \r\nCase material Stainless steel \r\nWindow material Mineral \r\nMovement Quartz – Eco drive \r\nBand Material Synthetic leather \r\nOrigin Japanese \r\nwater resistant	50 m', 'AO9003.jpg', NULL, NULL),
(17, 'Citizen AU1060-51E', '5670000.00', 'Case size 40 mm \r\nCase thickness 8 mm \r\nCase material Stainless steel \r\nWindow material Mineral \r\nMovement Quartz \r\nBand Material Stainless steel \r\nOrigin Japanese \r\nwater resistant	50 m', 'AU1060.jpg', NULL, NULL),
(18, 'Citizen BI5002-06E', '3100000.00', 'Case size 39 mm \r\nCase thickness 8.5 mm \r\nCase material Stainless steel \r\nWindow material Mineral \r\nMovement Quartz \r\nBand Material leather calfskin \r\nOrigin Japanese \r\nwater resistant	50 m ', 'BI5002.jpg', NULL, NULL),
(19, 'Casio AEQ100W-1AV', '1250000.00', 'Case size 50 mm \r\nCase thickness 15.3 mm \r\nCase material Resin \r\nWindow material Mineral \r\nMovement Quartz \r\nBand Material Resin \r\nOrigin USA \r\nwater resistant	100 m', 'AEQ100W.jpg', NULL, NULL),
(20, 'Casio GA100L-2A', '3300000.00', 'Case size 51.2 mm \r\nCase thickness 16.9 mm \r\nCase material Blue Resin \r\nWindow material Scratch Resistant Mineral \r\nMovement Quartz \r\nBand Material Resin \r\nOrigin Made in Thailand \r\nwater resistant	200 m', 'GA100L.jpg', NULL, NULL),
(21, 'Casio AE1200WHD-1A', '900000.00', 'Case size 39.5 mm \r\nCase thickness 12.5 mm \r\nCase material Stainless steel \r\nWindow material Mineral \r\nMovement Quartz \r\nBand Material Stainless steel \r\nOrigin Made in Japan \r\nwater resistant	100 m', 'AE1200WHD.jpg', NULL, NULL),
(22, 'Casio MCW100H-4AV', '1400000.00', 'Case size 49.3 mm \r\nCase thickness 13 mm \r\nCase material Resin \r\nDial Window material type Resin Glass \r\nMovement Quartz \r\nBand Material Resin \r\nOrigin Japan \r\nwater resistant	200 m', 'MCW100H.jpg', NULL, NULL),
(23, 'Casio MTP4500D-1AV', '2220000.00', 'Case size 42 mm \r\nCase thickness 10 mm \r\nCase material Stainless steel \r\nDial Window material type Anti reflective Mineral \r\nMovement Quartz \r\nBand Material Stainless steel \r\nOrigin Japan \r\nwater resistant	100 m', 'MTP4500D.jpg', NULL, NULL),
(24, 'Casio MDV106-1A', '1905000.00', 'Case size 42 mm \r\nCase thickness 12 mm \r\nCase material Stainless steel \r\nDial Window material type Anti reflective Mineral \r\nMovement Quartz \r\nBand Material Resin \r\nOrigin Japanese quartz \r\nwater resistant	200 m', 'MDV106.jpg', NULL, NULL),
(25, 'Timex A300', '1600000.00', 'Case size 32 mm \r\nCase thickness 8 mm \r\nCase material Brass \r\nWindow material Mineral \r\nMovement Quartz \r\nBand Material Leather \r\nOrigin USA \r\nwater resistant	50 m', 'A300.jpg', NULL, NULL),
(26, 'Timex TW2P87700', '1900000.00', 'Case size 40 mm \r\nCase thickness 10 mm \r\nCase material Stainless steel \r\nWindow material Mineral \r\nMovement Quartz \r\nBand Material/calfskin \r\nOrigin USA \r\nwater resistant	50 m', 'TW2P87700.jpg', NULL, NULL),
(27, 'Timex T2P289', '1800000.00', 'Case size 40 mm \r\nCase thickness 10 mm \r\nCase material Stainless steel\r\nWindow material Mineral \r\nMovement Quartz \r\nBand Material Stainless steel \r\nOrigin USA \r\nwater resistant	50 m ', 'T2P289.jpg', NULL, NULL),
(28, 'Timex T2P450', '1950000.00', 'Case size 27 mm \r\nCase thickness 9 mm \r\nCase material Brass \r\nWindow material Mineral \r\nMovement Quartz \r\nBand Material Crocodile leather \r\nOrigin Made in USA \r\nwater resistant	50 m', 'T2P450.jpg', NULL, NULL),
(29, 'Timex T49905', '2800000.00', 'Case size 43 mm \r\nCase thickness 12 mm \r\nCase material Stainless steel \r\nWindow material Mineral \r\nMovement Quartz \r\nBand Material Calfskin \r\nOrigin USA \r\nwater resistant	100 m', 'T49905.jpg', NULL, NULL),
(30, 'Timex T2P381', '3800000.00', 'Case size 43 mm \r\nCase thickness 12 mm \r\nCase material Stainless steel \r\nDial Window material type Anti reflective Mineral \r\nMovement Quartz \r\nBand Material Brown Leather \r\nOrigin USA \r\nwater resistant	200 m', 'T2P381.jpg', NULL, NULL),
(31, 'Anne Klein 2435SVTT', '2600000.00', 'Case size 28 mm \r\nCase thickness 8 mm \r\nCase material Metal \r\nWindow material Mineral \r\nMovement Quartz \r\nBand Material alloy \r\nOrigin USA \r\nwater resistant	30 m', '2435SVTT.jpg', NULL, NULL),
(32, 'Anne Klein 2952LPRG', '3800000.00', 'Case size 28 mm * 32 mm \r\nCase thickness 8 mm \r\nCase material Stainless steel \r\nWindow material Mineral \r\nMovement Quartz \r\nBand Material Ceramic \r\nOrigin Assembly by USA \r\nwater resistant	50 m', '2952LPRG.jpg', NULL, NULL),
(33, 'Anne Klein 2628BKGB', '3800000.00', 'Case size 32 mm \r\nCase thickness 7.5 mm \r\nCase material Stainless steel \r\nWindow material Mineral \r\nMovement Quartz \r\nBand Material alloy \r\nOrigin USA \r\nwater resistant	50 m', '2628BKGB.jpg', NULL, NULL),
(34, 'Anne Klein 9442CHHY', '2300000.00', 'Case size 26 mm \r\nCase thickness 9 mm \r\nCase material Stainless steel \r\nWindow material Mineral \r\nMovement Quartz \r\nBand Material Leather \r\nOrigin USA \r\nwater resistant	50 m', '9442CHHY.jpg', NULL, NULL),
(35, 'Anne Klein 9918RGLP', '2300000.00', 'Case size 34 mm \r\nCase thickness 9 mm \r\nCase material Brass \r\nWindow material Mineral \r\nMovement Quartz \r\nBand Material Calfskin \r\nOrigin USA \r\nwater resistant	50 m', '9918RGLP.jpg', NULL, NULL),
(36, 'Anne Klein 2348LPDB', '2350000.00', 'Case size 32 mm \r\nCase thickness 8 mm \r\nCase material Stainless steel \r\nWindow material Mineral \r\nMovement Quartz \r\nBand Material Ceramic \r\nOrigin USA \r\nwater resistant	50 m', '2348LPDB.jpg', NULL, NULL),
(37, 'Falcon VZ89', '1100000.00', 'Case size 22 mm \r\nCase thickness 9 mm \r\nCase material Metal \r\nWindow material Mineral \r\nMovement Quartz \r\nBand Material leather calfskin \r\nOrigin Made in Japan \r\nwater resistant	50 m', 'VZ89.jpg', NULL, NULL),
(38, 'Falcon QA36', '984000.00', 'Case size 32 mm \r\nCase thickness 7 mm \r\nCase material Stainless steel \r\nWindow material acrylic resin \r\nMovement Quartz \r\nBand Material Synthetic leather belt type \r\nOrigin Made in Japan \r\nwater resistant	30 m', 'QA36.jpg', NULL, NULL),
(39, 'Falcon D020', '984000.00', 'Case size 35.5 mm \r\nCase thickness 9 mm \r\nCase material Stainless steel \r\nWindow material acrylic resin \r\nMovement Quartz \r\nBand Material Synthetic leather belt type \r\nOrigin Made in Japan \r\nwater resistant	30 m', 'D020.jpg', NULL, NULL),
(40, 'Falcon QA37', '907000.00', 'Case size 23 mm \r\nCase thickness 7 mm \r\nCase material Stainless steel \r\nWindow material acrylic resin \r\nMovement Quartz \r\nBand Material Synthetic leather belt type \r\nOrigin Made in Japan \r\nwater resistant	30 m', 'QA37.jpg', NULL, NULL),
(41, 'Falcon D021', '984000.00', 'Case size 35.5 mm \r\nCase thickness 9 mm \r\nCase material Stainless steel \r\nWindow material acrylic resin \r\nMovement Quartz \r\nBand Material Synthetic leather belt type \r\nOrigin Made in Japan \r\nwater resistant	30 m', 'D021.jpg', NULL, NULL),
(42, 'Falcon D026', '984000.00', 'Case size 38 mm \r\nCase thickness 9 mm \r\nCase material Stainless steel \r\nWindow material acrylic resin \r\nMovement Quartz \r\nBand Material Synthetic leather belt type \r\nOrigin Made in Japan \r\nwater resistant	30 m', 'D026.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'thanguyen', 'thainguyenv2018@gmail.com', NULL, '$2y$10$CNgv.KamOY9SHV7a2nT/C.fUxBDqgt6PfT.zZ8fsG0IZubKn6CO2C', '7wXKetLGfJZoXYAYtrq0h3UQBK1SOtoxaRYX6wB7gayyLQbThUR97Y4Viv7x', '2019-11-13 19:45:36', '2019-11-13 19:45:36', 1),
(2, 'thaidat', 'thai@gmail.com', NULL, '$2y$10$yRCgafynIEH0IJcfhr1SuuguUKi2ijFe1QIlweo95l7p9fWOezBXS', NULL, '2019-12-17 08:59:33', '2019-12-17 08:59:33', 0),
(3, 'thai', 'thainguyen@gmail.com', NULL, '$2y$10$sZNufpmznPOvPMCKEF5lnO5wvSE/9iUtu9JHuhhbDmAWrptcxkeh.', NULL, '2019-12-17 09:05:12', '2019-12-17 09:05:12', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
