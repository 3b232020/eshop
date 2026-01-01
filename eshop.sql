-- Adminer 5.3.0 MySQL 5.7.11 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

USE `eshop`;

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-f7202261069331ac66c41a8e3aa5e5d7',	'i:1;',	1767301132),
('laravel-cache-f7202261069331ac66c41a8e3aa5e5d7:timer',	'i:1767301132;',	1767301132);

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `cart_items`;
CREATE TABLE `cart_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cart_items` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1,	1,	1,	NULL,	NULL),
(2,	1,	2,	NULL,	NULL),
(3,	1,	3,	NULL,	NULL),
(4,	2,	2,	NULL,	NULL),
(5,	2,	3,	NULL,	NULL),
(6,	2,	4,	NULL,	NULL),
(7,	3,	10,	NULL,	NULL),
(8,	3,	11,	NULL,	NULL),
(9,	3,	14,	NULL,	NULL);

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1,	'書籍',	NULL,	NULL),
(2,	'服飾',	NULL,	NULL),
(3,	'3C',	NULL,	NULL),
(4,	'公仔',	NULL,	NULL),
(5,	'家電',	NULL,	NULL);

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'0001_01_01_000000_create_users_table',	1),
(2,	'0001_01_01_000001_create_cache_table',	1),
(3,	'0001_01_01_000002_create_jobs_table',	1),
(4,	'2025_09_02_075243_add_two_factor_columns_to_users_table',	1),
(5,	'2026_01_01_164940_create_staff_table',	1),
(6,	'2026_01_01_165138_create_categories_table',	1),
(7,	'2026_01_01_165223_create_products_table',	1),
(8,	'2026_01_01_165303_create_cart_items_table',	1),
(9,	'2026_01_01_165340_create_orders_table',	1),
(10,	'2026_01_01_165414_create_order_items_table',	1);

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1,	1,	NULL,	NULL),
(2,	1,	NULL,	NULL),
(3,	1,	NULL,	NULL),
(4,	2,	NULL,	NULL),
(5,	2,	NULL,	NULL),
(6,	2,	NULL,	NULL),
(7,	3,	NULL,	NULL),
(8,	3,	NULL,	NULL),
(9,	3,	NULL,	NULL);

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1,	1,	1,	1,	NULL,	NULL),
(2,	1,	2,	1,	NULL,	NULL),
(3,	1,	3,	1,	NULL,	NULL),
(4,	2,	4,	1,	NULL,	NULL),
(5,	2,	5,	1,	NULL,	NULL),
(6,	2,	6,	1,	NULL,	NULL),
(7,	3,	7,	1,	NULL,	NULL),
(8,	3,	8,	1,	NULL,	NULL),
(9,	3,	9,	1,	NULL,	NULL),
(10,	4,	10,	1,	NULL,	NULL),
(11,	4,	11,	1,	NULL,	NULL),
(12,	4,	13,	1,	NULL,	NULL),
(13,	5,	15,	1,	NULL,	NULL),
(14,	5,	16,	1,	NULL,	NULL),
(15,	5,	12,	1,	NULL,	NULL),
(16,	6,	14,	1,	NULL,	NULL),
(17,	6,	17,	1,	NULL,	NULL),
(18,	6,	18,	1,	NULL,	NULL),
(19,	7,	19,	1,	NULL,	NULL),
(20,	7,	20,	1,	NULL,	NULL),
(21,	7,	21,	1,	NULL,	NULL),
(22,	8,	22,	1,	NULL,	NULL),
(23,	8,	23,	1,	NULL,	NULL),
(24,	8,	24,	1,	NULL,	NULL),
(26,	9,	2,	2,	NULL,	NULL),
(27,	9,	3,	1,	NULL,	NULL),
(28,	9,	6,	1,	NULL,	NULL);

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `products` (`id`, `name`, `category_id`, `price`, `created_at`, `updated_at`) VALUES
(1,	'小紅帽',	1,	100,	NULL,	NULL),
(2,	'大紅帽',	1,	110,	NULL,	NULL),
(3,	'醜小鴨',	1,	100,	NULL,	NULL),
(4,	'漂亮小鴨',	1,	120,	NULL,	NULL),
(5,	'喜洋洋',	1,	100,	NULL,	NULL),
(6,	'短上衣',	2,	100,	NULL,	NULL),
(7,	'白襯衫',	2,	150,	NULL,	NULL),
(8,	'短黑褲',	2,	200,	NULL,	NULL),
(9,	'長黑褲',	2,	300,	NULL,	NULL),
(10,	'長黑衣',	2,	300,	NULL,	NULL),
(11,	'智慧手機',	3,	7000,	NULL,	NULL),
(12,	'筆電',	3,	10000,	NULL,	NULL),
(13,	'桌機',	3,	10000,	NULL,	NULL),
(14,	'智慧手錶',	3,	9000,	NULL,	NULL),
(15,	'智慧手環',	3,	10000,	NULL,	NULL),
(16,	'企鵝',	4,	200,	NULL,	NULL),
(17,	'大象',	4,	130,	NULL,	NULL),
(18,	'小象',	4,	100,	NULL,	NULL),
(19,	'大西瓜',	4,	200,	NULL,	NULL),
(20,	'小紅西瓜',	4,	100,	NULL,	NULL),
(21,	'小冰箱',	5,	3000,	NULL,	NULL),
(22,	'智慧冰箱',	5,	20000,	NULL,	NULL),
(23,	'電視',	5,	8000,	NULL,	NULL),
(24,	'廚餘機',	5,	9999,	NULL,	NULL),
(25,	'掃地機器人',	5,	11000,	NULL,	NULL);

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('pD9EDt8bf4uTYmS2HNmPM52zlq700W3z3tyxKkBl',	3,	'::1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0',	'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic1RRRHFJY0dUbkx6bG1EMFZnRENIY0cxMnZidmNmalhpV1VXZVNZRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6OToiZGFzaGJvYXJkIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mzt9',	1767301099);

DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `staff_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1,	'Willy',	'111@gmail.com',	NULL,	'$2y$12$frCGVlFQG4tjZoeXTf5gNeNLf2G8q0dmnawmz036MAmWlWAjD8p3C',	NULL,	NULL,	NULL,	NULL,	'2026-01-01 12:56:04',	'2026-01-01 12:56:04'),
(2,	'123',	'222@gmail.com',	NULL,	'$2y$12$qsp2MatCraIrlldl6.vGO.Oc9W105C52mzlcJ/pJfRIwOkqjQ6xr6',	NULL,	NULL,	NULL,	NULL,	'2026-01-01 12:57:21',	'2026-01-01 12:57:21'),
(3,	'333',	'333@gmail.com',	NULL,	'$2y$12$OOqxV.l7osAwbkGq02HOpOc.VDSD9oC1CleocCwL4g.r0RreYGqW6',	NULL,	NULL,	NULL,	NULL,	'2026-01-01 12:58:19',	'2026-01-01 12:58:19');

-- 2026-01-01 21:39:43 UTC
