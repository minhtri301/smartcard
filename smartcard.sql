-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 27, 2023 at 04:04 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hinamecard2`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint UNSIGNED NOT NULL,
  `log_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint UNSIGNED DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `batch_uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(3, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 02:44:26', '2023-06-06 02:44:26'),
(4, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 166, 'App\\Models\\Customer', 13, '{\"delete\": \"166\"}', NULL, '2023-06-06 03:01:20', '2023-06-06 03:01:20'),
(5, 'home-card-update', 'Đã cập nhật ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 168, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 03:04:58', '2023-06-06 03:04:58'),
(6, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 169, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 03:07:16', '2023-06-06 03:07:16'),
(7, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 169, 'App\\Models\\Customer', 13, '{\"delete\": \"169\"}', NULL, '2023-06-06 03:08:41', '2023-06-06 03:08:41'),
(8, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 170, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 03:08:50', '2023-06-06 03:08:50'),
(9, 'home-card-update', 'Đã cập nhật ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 170, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 03:10:02', '2023-06-06 03:10:02'),
(10, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 03:11:04', '2023-06-06 03:11:04'),
(11, 'home-card-update', 'Đã cập nhật ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 167, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 03:12:05', '2023-06-06 03:12:05'),
(12, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 03:12:36', '2023-06-06 03:12:36'),
(13, 'user-create', 'Thêm mới người dùng thành công', 'App\\Models\\Customer', NULL, 31, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 03:19:09', '2023-06-06 03:19:09'),
(14, 'user-delete', 'Xóa người dùng thành công', 'App\\Models\\Customer', NULL, 31, 'App\\Models\\User', 10, '{\"delete\": \"31\"}', NULL, '2023-06-06 03:21:25', '2023-06-06 03:21:25'),
(15, 'user-update', 'Cập nhật người dùng thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 03:29:15', '2023-06-06 03:29:15'),
(16, 'admin-create', 'Thêm mới Admin thành công', 'App\\Models\\User', NULL, 31, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 03:32:00', '2023-06-06 03:32:00'),
(17, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 31, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 03:35:50', '2023-06-06 03:35:50'),
(18, 'admin-delete', 'Xóa Admin thành công', 'App\\Models\\User', NULL, 31, 'App\\Models\\User', 10, '{\"delete\": \"31\"}', NULL, '2023-06-06 03:36:02', '2023-06-06 03:36:02'),
(20, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 30, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 03:39:37', '2023-06-06 03:39:37'),
(21, 'admin-group-create', 'Thêm nhóm người dùng thành công', 'App\\Models\\Categories', NULL, 67, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 03:46:16', '2023-06-06 03:46:16'),
(22, 'admin-group-update', 'Cập nhật nhóm người dùng thành công', 'App\\Models\\Categories', NULL, 67, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 03:46:35', '2023-06-06 03:46:35'),
(23, 'admin-group-delete', 'Xóa nhóm người dùng thành công', 'App\\Models\\Categories', NULL, 67, 'App\\Models\\User', 10, '{\"delete\": \"67\"}', NULL, '2023-06-06 03:47:07', '2023-06-06 03:47:07'),
(24, 'admin-app-create', 'Thêm mới ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 41, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 03:49:55', '2023-06-06 03:49:55'),
(25, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 1, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 03:52:09', '2023-06-06 03:52:09'),
(26, 'admin-app-delete', 'Xóa ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 40, 'App\\Models\\User', 10, '{\"delete\": \"40\"}', NULL, '2023-06-06 03:52:22', '2023-06-06 03:52:22'),
(27, 'admin-app-create', 'Thêm mới ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 42, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 03:53:59', '2023-06-06 03:53:59'),
(28, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 168, 'App\\Models\\Customer', 13, '{\"delete\": \"168\"}', NULL, '2023-06-06 04:13:15', '2023-06-06 04:13:15'),
(29, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 170, 'App\\Models\\Customer', 13, '{\"delete\": \"170\"}', NULL, '2023-06-06 04:13:17', '2023-06-06 04:13:17'),
(30, 'user-update', 'Cập nhật người dùng thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 04:21:38', '2023-06-06 04:21:38'),
(31, 'user-update', 'Cập nhật người dùng thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 04:41:20', '2023-06-06 04:41:20'),
(32, 'user-update', 'Cập nhật người dùng thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 04:41:43', '2023-06-06 04:41:43'),
(33, 'user-update', 'Cập nhật người dùng thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 06:41:11', '2023-06-06 06:41:11'),
(34, 'user-update', 'Cập nhật người dùng thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 06:42:51', '2023-06-06 06:42:51'),
(35, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 06:45:29', '2023-06-06 06:45:29'),
(36, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 171, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 06:45:47', '2023-06-06 06:45:47'),
(37, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 172, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 06:45:54', '2023-06-06 06:45:54'),
(38, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 173, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 06:58:19', '2023-06-06 06:58:19'),
(39, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 174, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 06:58:29', '2023-06-06 06:58:29'),
(40, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 175, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 06:59:29', '2023-06-06 06:59:29'),
(41, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 176, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 06:59:51', '2023-06-06 06:59:51'),
(42, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 177, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 07:00:00', '2023-06-06 07:00:00'),
(43, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 178, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 07:00:11', '2023-06-06 07:00:11'),
(44, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 179, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 07:00:17', '2023-06-06 07:00:17'),
(45, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 180, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 07:00:25', '2023-06-06 07:00:25'),
(46, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 181, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 07:01:03', '2023-06-06 07:01:03'),
(47, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 167, 'App\\Models\\Customer', 13, '{\"delete\": \"167\"}', NULL, '2023-06-06 07:01:09', '2023-06-06 07:01:09'),
(48, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 179, 'App\\Models\\Customer', 13, '{\"delete\": \"179\"}', NULL, '2023-06-06 07:01:14', '2023-06-06 07:01:14'),
(49, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 181, 'App\\Models\\Customer', 13, '{\"delete\": \"181\"}', NULL, '2023-06-06 07:01:17', '2023-06-06 07:01:17'),
(50, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 180, 'App\\Models\\Customer', 13, '{\"delete\": \"180\"}', NULL, '2023-06-06 07:01:20', '2023-06-06 07:01:20'),
(51, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 178, 'App\\Models\\Customer', 13, '{\"delete\": \"178\"}', NULL, '2023-06-06 07:02:08', '2023-06-06 07:02:08'),
(52, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 182, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 07:02:13', '2023-06-06 07:02:13'),
(53, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 183, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 07:02:17', '2023-06-06 07:02:17'),
(54, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 182, 'App\\Models\\Customer', 13, '{\"delete\": \"182\"}', NULL, '2023-06-06 07:14:44', '2023-06-06 07:14:44'),
(55, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 177, 'App\\Models\\Customer', 13, '{\"delete\": \"177\"}', NULL, '2023-06-06 07:14:46', '2023-06-06 07:14:46'),
(56, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 183, 'App\\Models\\Customer', 13, '{\"delete\": \"183\"}', NULL, '2023-06-06 07:14:48', '2023-06-06 07:14:48'),
(57, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 174, 'App\\Models\\Customer', 13, '{\"delete\": \"174\"}', NULL, '2023-06-06 07:14:50', '2023-06-06 07:14:50'),
(58, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 173, 'App\\Models\\Customer', 13, '{\"delete\": \"173\"}', NULL, '2023-06-06 07:14:52', '2023-06-06 07:14:52'),
(59, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 171, 'App\\Models\\Customer', 13, '{\"delete\": \"171\"}', NULL, '2023-06-06 07:14:54', '2023-06-06 07:14:54'),
(60, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 184, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 07:23:33', '2023-06-06 07:23:33'),
(61, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 185, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 07:23:40', '2023-06-06 07:23:40'),
(62, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 186, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 07:24:32', '2023-06-06 07:24:32'),
(63, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 187, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 07:24:39', '2023-06-06 07:24:39'),
(64, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 187, 'App\\Models\\Customer', 13, '{\"delete\": \"187\"}', NULL, '2023-06-06 07:24:44', '2023-06-06 07:24:44'),
(65, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 185, 'App\\Models\\Customer', 13, '{\"delete\": \"185\"}', NULL, '2023-06-06 07:24:46', '2023-06-06 07:24:46'),
(66, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 188, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 07:24:51', '2023-06-06 07:24:51'),
(67, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 189, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 07:25:27', '2023-06-06 07:25:27'),
(68, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 190, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 07:36:56', '2023-06-06 07:36:56'),
(69, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 191, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 07:41:15', '2023-06-06 07:41:15'),
(70, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 192, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 08:36:44', '2023-06-06 08:36:44'),
(71, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 193, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 08:54:00', '2023-06-06 08:54:00'),
(72, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 194, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 09:01:02', '2023-06-06 09:01:02'),
(73, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 195, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 09:02:18', '2023-06-06 09:02:18'),
(74, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 196, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 09:02:24', '2023-06-06 09:02:24'),
(75, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 197, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 09:02:27', '2023-06-06 09:02:27'),
(76, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 198, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 09:02:31', '2023-06-06 09:02:31'),
(77, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 199, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 09:02:36', '2023-06-06 09:02:36'),
(78, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 200, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 09:02:40', '2023-06-06 09:02:40'),
(79, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 201, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 09:09:22', '2023-06-06 09:09:22'),
(80, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 202, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 09:11:27', '2023-06-06 09:11:27'),
(81, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 203, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 09:11:51', '2023-06-06 09:11:51'),
(82, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 204, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 09:13:18', '2023-06-06 09:13:18'),
(83, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 205, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 09:34:27', '2023-06-06 09:34:27'),
(84, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 206, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 09:34:43', '2023-06-06 09:34:43'),
(85, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 207, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 09:42:01', '2023-06-06 09:42:01'),
(86, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 208, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 09:42:29', '2023-06-06 09:42:29'),
(87, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 209, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 09:42:54', '2023-06-06 09:42:54'),
(88, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 210, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 09:42:55', '2023-06-06 09:42:55'),
(89, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 211, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 09:43:02', '2023-06-06 09:43:02'),
(90, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 212, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 09:44:36', '2023-06-06 09:44:36'),
(91, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 213, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 09:50:45', '2023-06-06 09:50:45'),
(92, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 212, 'App\\Models\\Customer', 13, '{\"delete\": \"212\"}', NULL, '2023-06-06 09:50:49', '2023-06-06 09:50:49'),
(93, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 214, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 09:52:47', '2023-06-06 09:52:47'),
(94, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 215, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 09:59:01', '2023-06-06 09:59:01'),
(95, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 216, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 10:00:29', '2023-06-06 10:00:29'),
(96, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 217, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 10:00:44', '2023-06-06 10:00:44'),
(97, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 218, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 10:07:15', '2023-06-06 10:07:15'),
(98, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 219, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 10:09:19', '2023-06-06 10:09:19'),
(99, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 220, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 10:09:33', '2023-06-06 10:09:33'),
(100, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 221, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 10:09:40', '2023-06-06 10:09:40'),
(101, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 222, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 10:09:45', '2023-06-06 10:09:45'),
(102, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 223, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 10:11:36', '2023-06-06 10:11:36'),
(103, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 223, 'App\\Models\\Customer', 13, '{\"delete\": \"223\"}', NULL, '2023-06-06 10:11:38', '2023-06-06 10:11:38'),
(104, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 224, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 10:23:16', '2023-06-06 10:23:16'),
(105, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 225, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 10:26:33', '2023-06-06 10:26:33'),
(106, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 226, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 10:28:18', '2023-06-06 10:28:18'),
(107, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 227, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 10:28:46', '2023-06-06 10:28:46'),
(108, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 228, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 10:31:23', '2023-06-06 10:31:23'),
(109, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 227, 'App\\Models\\Customer', 13, '{\"delete\": \"227\"}', NULL, '2023-06-06 15:35:08', '2023-06-06 15:35:08'),
(110, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 15:39:00', '2023-06-06 15:39:00'),
(111, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 229, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 15:48:48', '2023-06-06 15:48:48'),
(112, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 230, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 15:52:01', '2023-06-06 15:52:01'),
(113, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 30, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 16:47:05', '2023-06-06 16:47:05'),
(114, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 30, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 16:47:17', '2023-06-06 16:47:17'),
(115, 'user-update', 'Cập nhật người dùng thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 16:53:53', '2023-06-06 16:53:53'),
(116, 'user-update', 'Cập nhật người dùng thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 16:54:01', '2023-06-06 16:54:01'),
(117, 'user-update', 'Cập nhật người dùng thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 16:56:25', '2023-06-06 16:56:25'),
(118, 'user-update', 'Cập nhật người dùng thành công', 'App\\Models\\Customer', NULL, 30, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 16:56:31', '2023-06-06 16:56:31'),
(119, 'user-create', 'Thêm mới người dùng thành công', 'App\\Models\\Customer', NULL, 32, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 16:57:07', '2023-06-06 16:57:07'),
(120, 'user-update', 'Cập nhật người dùng thành công', 'App\\Models\\Customer', NULL, 32, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-06 16:57:14', '2023-06-06 16:57:14'),
(121, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 231, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 01:22:40', '2023-06-07 01:22:40'),
(122, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 232, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 01:23:29', '2023-06-07 01:23:29'),
(123, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 232, 'App\\Models\\Customer', 13, '{\"delete\": \"232\"}', NULL, '2023-06-07 01:24:03', '2023-06-07 01:24:03'),
(124, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 231, 'App\\Models\\Customer', 13, '{\"delete\": \"231\"}', NULL, '2023-06-07 01:24:05', '2023-06-07 01:24:05'),
(125, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 230, 'App\\Models\\Customer', 13, '{\"delete\": \"230\"}', NULL, '2023-06-07 01:24:08', '2023-06-07 01:24:08'),
(126, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 229, 'App\\Models\\Customer', 13, '{\"delete\": \"229\"}', NULL, '2023-06-07 01:24:11', '2023-06-07 01:24:11'),
(127, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 01:25:02', '2023-06-07 01:25:02'),
(128, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 228, 'App\\Models\\Customer', 13, '{\"delete\": \"228\"}', NULL, '2023-06-07 01:25:36', '2023-06-07 01:25:36'),
(129, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 226, 'App\\Models\\Customer', 13, '{\"delete\": \"226\"}', NULL, '2023-06-07 01:25:38', '2023-06-07 01:25:38'),
(130, 'admin-group-update', 'Cập nhật nhóm người dùng thành công', 'App\\Models\\Categories', NULL, 57, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 01:26:24', '2023-06-07 01:26:24'),
(131, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 233, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 03:31:34', '2023-06-07 03:31:34'),
(132, 'home-card-update', 'Đã cập nhật ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 233, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 03:31:53', '2023-06-07 03:31:53'),
(133, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 234, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 04:14:08', '2023-06-07 04:14:08'),
(134, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 235, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 04:14:27', '2023-06-07 04:14:27'),
(135, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 236, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 04:45:49', '2023-06-07 04:45:49'),
(136, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 237, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 05:01:23', '2023-06-07 05:01:23'),
(137, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 238, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 06:33:25', '2023-06-07 06:33:25'),
(138, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 239, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 06:33:50', '2023-06-07 06:33:50'),
(139, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 238, 'App\\Models\\Customer', 13, '{\"delete\": \"238\"}', NULL, '2023-06-07 06:34:16', '2023-06-07 06:34:16'),
(140, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 235, 'App\\Models\\Customer', 13, '{\"delete\": \"235\"}', NULL, '2023-06-07 06:34:18', '2023-06-07 06:34:18'),
(141, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 224, 'App\\Models\\Customer', 13, '{\"delete\": \"224\"}', NULL, '2023-06-07 06:34:21', '2023-06-07 06:34:21'),
(142, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 237, 'App\\Models\\Customer', 13, '{\"delete\": \"237\"}', NULL, '2023-06-07 06:34:24', '2023-06-07 06:34:24'),
(143, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 239, 'App\\Models\\Customer', 13, '{\"delete\": \"239\"}', NULL, '2023-06-07 06:34:26', '2023-06-07 06:34:26'),
(144, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 236, 'App\\Models\\Customer', 13, '{\"delete\": \"236\"}', NULL, '2023-06-07 06:34:31', '2023-06-07 06:34:31'),
(145, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 240, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 06:40:27', '2023-06-07 06:40:27'),
(146, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 06:50:52', '2023-06-07 06:50:52'),
(147, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 241, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 06:51:36', '2023-06-07 06:51:36'),
(148, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 242, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 06:54:05', '2023-06-07 06:54:05'),
(149, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 243, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 06:54:36', '2023-06-07 06:54:36'),
(150, 'admin-app-delete', 'Xóa ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 42, 'App\\Models\\User', 10, '{\"delete\": \"42\"}', NULL, '2023-06-07 06:54:52', '2023-06-07 06:54:52'),
(151, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 14, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 07:04:29', '2023-06-07 07:04:29'),
(152, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 14, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 07:13:46', '2023-06-07 07:13:46'),
(153, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 244, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 07:14:52', '2023-06-07 07:14:52'),
(154, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 245, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 07:16:41', '2023-06-07 07:16:41'),
(155, 'admin-group-create', 'Thêm nhóm người dùng thành công', 'App\\Models\\Categories', NULL, 68, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 07:20:58', '2023-06-07 07:20:58'),
(156, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 30, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 07:24:51', '2023-06-07 07:24:51'),
(157, 'user-create', 'Thêm mới người dùng thành công', 'App\\Models\\Customer', NULL, 33, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 08:02:40', '2023-06-07 08:02:40'),
(158, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 241, 'App\\Models\\Customer', 13, '{\"delete\": \"241\"}', NULL, '2023-06-07 08:40:45', '2023-06-07 08:40:45'),
(159, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 240, 'App\\Models\\Customer', 13, '{\"delete\": \"240\"}', NULL, '2023-06-07 08:40:48', '2023-06-07 08:40:48'),
(160, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 234, 'App\\Models\\Customer', 13, '{\"delete\": \"234\"}', NULL, '2023-06-07 08:40:51', '2023-06-07 08:40:51'),
(161, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 233, 'App\\Models\\Customer', 13, '{\"delete\": \"233\"}', NULL, '2023-06-07 08:40:55', '2023-06-07 08:40:55'),
(162, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 14, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 08:41:24', '2023-06-07 08:41:24'),
(163, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 22, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 08:43:50', '2023-06-07 08:43:50'),
(164, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 29, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 08:45:08', '2023-06-07 08:45:08'),
(165, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 08:57:27', '2023-06-07 08:57:27'),
(166, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 09:00:56', '2023-06-07 09:00:56'),
(167, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 09:04:07', '2023-06-07 09:04:07'),
(168, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 30, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 09:15:16', '2023-06-07 09:15:16'),
(169, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 09:20:07', '2023-06-07 09:20:07'),
(170, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 09:20:18', '2023-06-07 09:20:18'),
(171, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 09:27:11', '2023-06-07 09:27:11'),
(172, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 09:27:34', '2023-06-07 09:27:34'),
(173, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 09:28:04', '2023-06-07 09:28:04'),
(174, 'admin-group-delete', 'Xóa nhóm người dùng thành công', 'App\\Models\\Categories', NULL, 68, 'App\\Models\\User', 10, '{\"delete\": \"68\"}', NULL, '2023-06-07 09:31:51', '2023-06-07 09:31:51'),
(175, 'admin-create', 'Thêm mới Admin thành công', 'App\\Models\\User', NULL, 32, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 09:49:20', '2023-06-07 09:49:20'),
(176, 'admin-group-update', 'Cập nhật nhóm người dùng thành công', 'App\\Models\\Categories', NULL, 55, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-07 16:38:10', '2023-06-07 16:38:10'),
(177, 'user-update', 'Cập nhật người dùng thành công', 'App\\Models\\Customer', NULL, 33, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-08 07:28:01', '2023-06-08 07:28:01'),
(178, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 14, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-08 07:41:27', '2023-06-08 07:41:27'),
(179, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 14, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 01:28:15', '2023-06-09 01:28:15'),
(180, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 246, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 01:41:06', '2023-06-09 01:41:06'),
(181, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 247, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 01:41:16', '2023-06-09 01:41:16'),
(182, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 248, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 01:49:33', '2023-06-09 01:49:33'),
(183, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 249, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 01:49:49', '2023-06-09 01:49:49'),
(184, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 248, 'App\\Models\\Customer', 14, '{\"delete\": \"248\"}', NULL, '2023-06-09 01:51:39', '2023-06-09 01:51:39'),
(185, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 249, 'App\\Models\\Customer', 14, '{\"delete\": \"249\"}', NULL, '2023-06-09 01:51:42', '2023-06-09 01:51:42'),
(186, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 246, 'App\\Models\\Customer', 14, '{\"delete\": \"246\"}', NULL, '2023-06-09 01:51:46', '2023-06-09 01:51:46'),
(187, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 14, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 01:52:13', '2023-06-09 01:52:13'),
(188, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 1, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 02:19:18', '2023-06-09 02:19:18'),
(189, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 10, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 02:42:26', '2023-06-09 02:42:26'),
(190, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 250, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 02:42:41', '2023-06-09 02:42:41'),
(191, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 30, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 02:44:29', '2023-06-09 02:44:29'),
(192, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 6, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 02:44:54', '2023-06-09 02:44:54'),
(193, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 251, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 02:45:05', '2023-06-09 02:45:05'),
(194, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 30, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 02:45:29', '2023-06-09 02:45:29'),
(195, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 7, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 02:46:30', '2023-06-09 02:46:30'),
(196, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 8, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 02:47:17', '2023-06-09 02:47:17'),
(197, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 9, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 02:48:15', '2023-06-09 02:48:15'),
(198, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 11, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 02:49:35', '2023-06-09 02:49:35'),
(199, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 12, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 02:50:18', '2023-06-09 02:50:18'),
(200, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 13, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 02:51:21', '2023-06-09 02:51:21'),
(201, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 14, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 02:52:13', '2023-06-09 02:52:13'),
(202, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 15, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 02:52:45', '2023-06-09 02:52:45'),
(203, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 16, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 02:53:16', '2023-06-09 02:53:16'),
(204, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 17, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 02:53:53', '2023-06-09 02:53:53'),
(205, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 18, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 02:54:36', '2023-06-09 02:54:36'),
(206, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 19, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 02:55:19', '2023-06-09 02:55:19'),
(207, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 20, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 02:55:56', '2023-06-09 02:55:56'),
(208, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 21, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 02:56:40', '2023-06-09 02:56:40'),
(209, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 3, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 02:59:45', '2023-06-09 02:59:45'),
(210, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 252, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:00:08', '2023-06-09 03:00:08'),
(211, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 3, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:01:26', '2023-06-09 03:01:26'),
(212, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 3, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:03:23', '2023-06-09 03:03:23'),
(213, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 22, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:04:20', '2023-06-09 03:04:20'),
(214, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 253, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:04:51', '2023-06-09 03:04:51'),
(215, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 254, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:05:17', '2023-06-09 03:05:17'),
(216, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 23, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:06:10', '2023-06-09 03:06:10'),
(217, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 4, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:07:00', '2023-06-09 03:07:00'),
(218, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 24, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:07:34', '2023-06-09 03:07:34'),
(219, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 25, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:08:16', '2023-06-09 03:08:16'),
(220, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 26, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:08:51', '2023-06-09 03:08:51'),
(221, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 27, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:09:20', '2023-06-09 03:09:20'),
(222, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 28, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:09:49', '2023-06-09 03:09:49'),
(223, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 29, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:10:39', '2023-06-09 03:10:39'),
(224, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 30, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:11:09', '2023-06-09 03:11:09'),
(225, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 31, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:11:40', '2023-06-09 03:11:40'),
(226, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 32, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:12:12', '2023-06-09 03:12:12'),
(227, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 33, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:12:41', '2023-06-09 03:12:41'),
(228, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 254, 'App\\Models\\Customer', 14, '{\"delete\": \"254\"}', NULL, '2023-06-09 03:15:19', '2023-06-09 03:15:19'),
(229, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 251, 'App\\Models\\Customer', 14, '{\"delete\": \"251\"}', NULL, '2023-06-09 03:15:42', '2023-06-09 03:15:42'),
(230, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 250, 'App\\Models\\Customer', 14, '{\"delete\": \"250\"}', NULL, '2023-06-09 03:16:39', '2023-06-09 03:16:39'),
(231, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 243, 'App\\Models\\Customer', 14, '{\"delete\": \"243\"}', NULL, '2023-06-09 03:16:43', '2023-06-09 03:16:43'),
(232, 'admin-app-create', 'Thêm mới ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 43, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:28:56', '2023-06-09 03:28:56'),
(233, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 255, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:30:58', '2023-06-09 03:30:58'),
(234, 'admin-app-delete', 'Xóa ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 43, 'App\\Models\\User', 10, '{\"delete\": \"43\"}', NULL, '2023-06-09 03:32:40', '2023-06-09 03:32:40'),
(235, 'admin-app-create', 'Thêm mới ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 44, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:41:53', '2023-06-09 03:41:53'),
(236, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 256, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:42:14', '2023-06-09 03:42:14'),
(237, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 257, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:42:55', '2023-06-09 03:42:55'),
(238, 'admin-app-delete', 'Xóa ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 44, 'App\\Models\\User', 10, '{\"delete\": \"44\"}', NULL, '2023-06-09 03:43:01', '2023-06-09 03:43:01'),
(239, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 258, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:43:18', '2023-06-09 03:43:18'),
(240, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 259, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:43:26', '2023-06-09 03:43:26'),
(241, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 260, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:43:35', '2023-06-09 03:43:35'),
(242, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 261, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:43:38', '2023-06-09 03:43:38'),
(243, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 262, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:43:49', '2023-06-09 03:43:49'),
(244, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 263, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:43:54', '2023-06-09 03:43:54'),
(245, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 264, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:43:57', '2023-06-09 03:43:57'),
(246, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 265, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:44:03', '2023-06-09 03:44:03');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(247, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 266, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:44:07', '2023-06-09 03:44:07'),
(248, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 267, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:47:07', '2023-06-09 03:47:07'),
(249, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 267, 'App\\Models\\Customer', 14, '{\"delete\": \"267\"}', NULL, '2023-06-09 03:48:32', '2023-06-09 03:48:32'),
(250, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 266, 'App\\Models\\Customer', 14, '{\"delete\": \"266\"}', NULL, '2023-06-09 03:48:34', '2023-06-09 03:48:34'),
(251, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 265, 'App\\Models\\Customer', 14, '{\"delete\": \"265\"}', NULL, '2023-06-09 03:48:36', '2023-06-09 03:48:36'),
(252, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 262, 'App\\Models\\Customer', 14, '{\"delete\": \"262\"}', NULL, '2023-06-09 03:48:39', '2023-06-09 03:48:39'),
(253, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 260, 'App\\Models\\Customer', 14, '{\"delete\": \"260\"}', NULL, '2023-06-09 03:48:41', '2023-06-09 03:48:41'),
(254, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 259, 'App\\Models\\Customer', 14, '{\"delete\": \"259\"}', NULL, '2023-06-09 03:48:42', '2023-06-09 03:48:42'),
(255, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 258, 'App\\Models\\Customer', 14, '{\"delete\": \"258\"}', NULL, '2023-06-09 03:48:45', '2023-06-09 03:48:45'),
(256, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 261, 'App\\Models\\Customer', 14, '{\"delete\": \"261\"}', NULL, '2023-06-09 03:48:47', '2023-06-09 03:48:47'),
(257, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 263, 'App\\Models\\Customer', 14, '{\"delete\": \"263\"}', NULL, '2023-06-09 03:48:48', '2023-06-09 03:48:48'),
(258, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 264, 'App\\Models\\Customer', 14, '{\"delete\": \"264\"}', NULL, '2023-06-09 03:48:55', '2023-06-09 03:48:55'),
(259, 'admin-app-create', 'Thêm mới ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 45, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:49:28', '2023-06-09 03:49:28'),
(260, 'admin-app-delete', 'Xóa ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 45, 'App\\Models\\User', 10, '{\"delete\": \"45\"}', NULL, '2023-06-09 03:49:31', '2023-06-09 03:49:31'),
(261, 'admin-app-create', 'Thêm mới ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 46, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:49:54', '2023-06-09 03:49:54'),
(262, 'admin-app-delete', 'Xóa ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 46, 'App\\Models\\User', 10, '{\"delete\": \"46\"}', NULL, '2023-06-09 03:50:13', '2023-06-09 03:50:13'),
(263, 'admin-app-create', 'Thêm mới ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 47, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:51:59', '2023-06-09 03:51:59'),
(264, 'admin-app-delete', 'Xóa ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 47, 'App\\Models\\User', 10, '{\"deleteIcon\": \"47\"}', NULL, '2023-06-09 03:52:09', '2023-06-09 03:52:09'),
(265, 'admin-app-create', 'Thêm mới ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 48, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:53:26', '2023-06-09 03:53:26'),
(266, 'admin-app-delete', 'Xóa ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 48, 'App\\Models\\User', 10, '{\"deleteIcon\": \"48\"}', NULL, '2023-06-09 03:53:29', '2023-06-09 03:53:29'),
(267, 'admin-app-create', 'Thêm mới ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 49, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:55:10', '2023-06-09 03:55:10'),
(268, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 268, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:55:35', '2023-06-09 03:55:35'),
(269, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 269, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:55:41', '2023-06-09 03:55:41'),
(270, 'admin-app-create', 'Thêm mới ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 50, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 03:56:54', '2023-06-09 03:56:54'),
(271, 'user-delete', 'Xóa người dùng thành công', 'App\\Models\\Customer', NULL, 30, 'App\\Models\\User', 10, '{\"delete\": \"30\"}', NULL, '2023-06-09 04:42:59', '2023-06-09 04:42:59'),
(272, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 270, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 04:48:51', '2023-06-09 04:48:51'),
(273, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 271, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 04:48:57', '2023-06-09 04:48:57'),
(274, 'admin-app-delete', 'Xóa ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 50, 'App\\Models\\User', 10, '{\"deleteIcon\": \"50\", \"delete-customer-icon\": [270, 271]}', NULL, '2023-06-09 04:49:07', '2023-06-09 04:49:07'),
(275, 'admin-app-create', 'Thêm mới ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 51, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 04:51:32', '2023-06-09 04:51:32'),
(276, 'admin-app-delete', 'Xóa ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 51, 'App\\Models\\User', 10, '{\"deleteIcon\": \"51\", \"delete-customer-icon\": []}', NULL, '2023-06-09 04:51:39', '2023-06-09 04:51:39'),
(277, 'admin-app-create', 'Thêm mới ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 52, 'App\\Models\\User', 10, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 04:52:42', '2023-06-09 04:52:42'),
(278, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 272, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 04:56:37', '2023-06-09 04:56:37'),
(279, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 273, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 04:56:48', '2023-06-09 04:56:48'),
(280, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 274, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 04:57:00', '2023-06-09 04:57:00'),
(281, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 275, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 04:59:06', '2023-06-09 04:59:06'),
(282, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 276, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 04:59:10', '2023-06-09 04:59:10'),
(283, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 277, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 06:44:14', '2023-06-09 06:44:14'),
(284, 'admin-app-delete', 'Xóa ứng dụng thành công', 'App\\Models\\Information_icon', NULL, 52, 'App\\Models\\User', 10, '{\"deleteIcon\": \"52\", \"delete-customer-icon\": [277]}', NULL, '2023-06-09 06:44:19', '2023-06-09 06:44:19'),
(285, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 225, 'App\\Models\\Customer', 13, '{\"delete\": \"225\"}', NULL, '2023-06-09 07:38:55', '2023-06-09 07:38:55'),
(286, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 07:43:29', '2023-06-09 07:43:29'),
(287, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 07:50:27', '2023-06-09 07:50:27'),
(288, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 07:53:24', '2023-06-09 07:53:24'),
(289, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 278, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 07:57:46', '2023-06-09 07:57:46'),
(290, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 279, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 07:57:47', '2023-06-09 07:57:47'),
(291, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 279, 'App\\Models\\Customer', 13, '{\"delete\": \"279\"}', NULL, '2023-06-09 07:57:53', '2023-06-09 07:57:53'),
(292, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 278, 'App\\Models\\Customer', 13, '{\"delete\": \"278\"}', NULL, '2023-06-09 07:57:55', '2023-06-09 07:57:55'),
(293, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 280, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 07:58:08', '2023-06-09 07:58:08'),
(294, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 281, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 07:58:30', '2023-06-09 07:58:30'),
(295, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 222, 'App\\Models\\Customer', 13, '{\"delete\": \"222\"}', NULL, '2023-06-09 07:58:33', '2023-06-09 07:58:33'),
(296, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 282, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 07:59:10', '2023-06-09 07:59:10'),
(297, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 09:36:03', '2023-06-09 09:36:03'),
(298, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 09:36:29', '2023-06-09 09:36:29'),
(299, 'home-card-update', 'Đã cập nhật ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 221, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 09:46:30', '2023-06-09 09:46:30'),
(300, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 09:47:52', '2023-06-09 09:47:52'),
(301, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-09 09:51:25', '2023-06-09 09:51:25'),
(302, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 283, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-12 01:35:50', '2023-06-12 01:35:50'),
(303, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 284, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-12 02:24:31', '2023-06-12 02:24:31'),
(304, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 285, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-12 02:25:12', '2023-06-12 02:25:12'),
(305, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 286, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-12 02:27:20', '2023-06-12 02:27:20'),
(306, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 286, 'App\\Models\\Customer', 13, '{\"delete\": \"286\"}', NULL, '2023-06-12 02:28:32', '2023-06-12 02:28:32'),
(307, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 285, 'App\\Models\\Customer', 13, '{\"delete\": \"285\"}', NULL, '2023-06-12 02:28:34', '2023-06-12 02:28:34'),
(308, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 284, 'App\\Models\\Customer', 13, '{\"delete\": \"284\"}', NULL, '2023-06-12 02:28:36', '2023-06-12 02:28:36'),
(309, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 283, 'App\\Models\\Customer', 13, '{\"delete\": \"283\"}', NULL, '2023-06-12 02:28:39', '2023-06-12 02:28:39'),
(310, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 282, 'App\\Models\\Customer', 13, '{\"delete\": \"282\"}', NULL, '2023-06-12 02:28:41', '2023-06-12 02:28:41'),
(311, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 281, 'App\\Models\\Customer', 13, '{\"delete\": \"281\"}', NULL, '2023-06-12 02:28:43', '2023-06-12 02:28:43'),
(312, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 280, 'App\\Models\\Customer', 13, '{\"delete\": \"280\"}', NULL, '2023-06-12 02:28:45', '2023-06-12 02:28:45'),
(313, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 287, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-12 02:33:34', '2023-06-12 02:33:34'),
(314, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 288, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-12 02:47:18', '2023-06-12 02:47:18'),
(315, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 289, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-12 02:47:36', '2023-06-12 02:47:36'),
(316, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 289, 'App\\Models\\Customer', 13, '{\"delete\": \"289\"}', NULL, '2023-06-12 02:50:48', '2023-06-12 02:50:48'),
(317, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-12 03:08:26', '2023-06-12 03:08:26'),
(318, 'home-card-delete', 'Đã xóa ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 288, 'App\\Models\\Customer', 13, '{\"delete\": \"288\"}', NULL, '2023-06-12 18:13:49', '2023-06-12 18:13:49'),
(319, 'admin-delete', 'Xóa Admin thành công', 'App\\Models\\User', NULL, 10, 'App\\Models\\User', 10, '{\"delete\": \"10\"}', NULL, '2023-06-12 18:18:04', '2023-06-12 18:18:04'),
(320, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 1, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-12 18:45:08', '2023-06-12 18:45:08'),
(321, 'user-delete', 'Xóa người dùng thành công', 'App\\Models\\Customer', NULL, 33, 'App\\Models\\User', 1, '{\"delete\": \"33\"}', NULL, '2023-06-12 19:03:56', '2023-06-12 19:03:56'),
(322, 'user-update', 'Cập nhật người dùng thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-12 19:04:52', '2023-06-12 19:04:52'),
(323, 'user-update', 'Cập nhật người dùng thành công', 'App\\Models\\Customer', NULL, 14, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-12 19:06:24', '2023-06-12 19:06:24'),
(324, 'user-update', 'Cập nhật người dùng thành công', 'App\\Models\\Customer', NULL, 14, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 03:04:00', '2023-06-13 03:04:00'),
(325, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 1, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 03:54:26', '2023-06-13 03:54:26'),
(326, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 1, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 03:55:22', '2023-06-13 03:55:22'),
(327, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 1, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 03:55:37', '2023-06-13 03:55:37'),
(328, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 1, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 03:59:59', '2023-06-13 03:59:59'),
(329, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 1, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 04:01:33', '2023-06-13 04:01:33'),
(330, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 1, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 04:02:25', '2023-06-13 04:02:25'),
(331, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 1, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 04:02:37', '2023-06-13 04:02:37'),
(332, 'admin-create', 'Thêm mới Admin thành công', 'App\\Models\\User', NULL, 2, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 04:25:04', '2023-06-13 04:25:04'),
(333, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 2, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 04:35:14', '2023-06-13 04:35:14'),
(334, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 1, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 04:35:24', '2023-06-13 04:35:24'),
(335, 'admin-create', 'Thêm mới Admin thành công', 'App\\Models\\User', NULL, 3, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 06:25:31', '2023-06-13 06:25:31'),
(336, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 3, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 06:28:01', '2023-06-13 06:28:01'),
(337, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 3, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 06:28:11', '2023-06-13 06:28:11'),
(338, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 3, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 06:43:44', '2023-06-13 06:43:44'),
(339, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 3, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 06:44:19', '2023-06-13 06:44:19'),
(340, 'user-delete', 'Xóa người dùng thành công', 'App\\Models\\Customer', NULL, 16, 'App\\Models\\User', 1, '{\"delete\": \"16\"}', NULL, '2023-06-13 07:30:15', '2023-06-13 07:30:15'),
(341, 'user-create', 'Thêm mới người dùng thành công', 'App\\Models\\Customer', NULL, 17, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 07:30:24', '2023-06-13 07:30:24'),
(342, 'user-create', 'Thêm mới người dùng thành công', 'App\\Models\\Customer', NULL, 18, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 08:53:30', '2023-06-13 08:53:30'),
(343, 'user-update', 'Cập nhật người dùng thành công', 'App\\Models\\Customer', NULL, 14, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 08:54:39', '2023-06-13 08:54:39'),
(344, 'user-update', 'Cập nhật người dùng thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 08:54:47', '2023-06-13 08:54:47'),
(345, 'user-update', 'Cập nhật người dùng thành công', 'App\\Models\\Customer', NULL, 18, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 08:54:58', '2023-06-13 08:54:58'),
(346, 'user-delete', 'Xóa người dùng thành công', 'App\\Models\\Customer', NULL, 18, 'App\\Models\\User', 1, '{\"delete\": \"18\"}', NULL, '2023-06-13 08:57:32', '2023-06-13 08:57:32'),
(347, 'user-update', 'Cập nhật người dùng thành công', 'App\\Models\\Customer', NULL, 14, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 08:57:47', '2023-06-13 08:57:47'),
(348, 'admin-delete', 'Xóa Admin thành công', 'App\\Models\\User', NULL, 3, 'App\\Models\\User', 1, '{\"delete\": \"3\"}', NULL, '2023-06-13 08:58:02', '2023-06-13 08:58:02'),
(349, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 1, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 09:00:17', '2023-06-13 09:00:17'),
(350, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 1, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 09:00:31', '2023-06-13 09:00:31'),
(351, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 2, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 09:00:50', '2023-06-13 09:00:50'),
(352, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 1, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 09:01:28', '2023-06-13 09:01:28'),
(353, 'admin-app-create', 'Thêm mới ứng dụng thành công', 'App\\Models\\Apps', NULL, 34, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 09:18:11', '2023-06-13 09:18:11'),
(354, 'admin-app-create', 'Thêm mới ứng dụng thành công', 'App\\Models\\Apps', NULL, 32, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 09:56:48', '2023-06-13 09:56:48'),
(355, 'admin-app-delete', 'Xóa ứng dụng thành công', 'App\\Models\\Apps', NULL, 32, 'App\\Models\\User', 1, '{\"deleteIcon\": \"32\"}', NULL, '2023-06-13 10:19:49', '2023-06-13 10:19:49'),
(356, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Apps', NULL, 31, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 10:25:05', '2023-06-13 10:25:05'),
(357, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Apps', NULL, 31, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 10:25:15', '2023-06-13 10:25:15'),
(358, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Apps', NULL, 31, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 10:27:27', '2023-06-13 10:27:27'),
(359, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Apps', NULL, 31, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 10:28:45', '2023-06-13 10:28:45'),
(360, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Apps', NULL, 31, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 14:34:31', '2023-06-13 14:34:31'),
(361, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Apps', NULL, 31, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 14:34:31', '2023-06-13 14:34:31'),
(362, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Apps', NULL, 31, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 14:36:34', '2023-06-13 14:36:34'),
(363, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Apps', NULL, 31, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 14:37:31', '2023-06-13 14:37:31'),
(364, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Apps', NULL, 31, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 14:38:48', '2023-06-13 14:38:48'),
(365, 'home-card-create', 'Đã thêm ứng dụng thành công', 'App\\Models\\Customer_has_icon', NULL, 288, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 14:51:21', '2023-06-13 14:51:21'),
(366, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 1, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 14:56:09', '2023-06-13 14:56:09'),
(367, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 2, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 14:58:07', '2023-06-13 14:58:07'),
(368, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 3, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 14:59:22', '2023-06-13 14:59:22'),
(369, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 1, 'App\\Models\\Customer', 14, '{\"delete\": \"1\"}', NULL, '2023-06-13 15:05:24', '2023-06-13 15:05:24'),
(370, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 2, 'App\\Models\\Customer', 14, '{\"delete\": \"2\"}', NULL, '2023-06-13 15:05:31', '2023-06-13 15:05:31'),
(371, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 4, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 15:06:17', '2023-06-13 15:06:17'),
(372, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 4, 'App\\Models\\Customer', 14, '{\"delete\": \"4\"}', NULL, '2023-06-13 15:06:25', '2023-06-13 15:06:25'),
(373, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 3, 'App\\Models\\Customer', 14, '{\"delete\": \"3\"}', NULL, '2023-06-13 15:06:35', '2023-06-13 15:06:35'),
(374, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 5, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 15:10:28', '2023-06-13 15:10:28'),
(375, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 6, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 15:10:42', '2023-06-13 15:10:42'),
(376, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 7, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 15:12:32', '2023-06-13 15:12:32'),
(377, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 8, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 15:13:06', '2023-06-13 15:13:06'),
(378, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 9, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 15:19:29', '2023-06-13 15:19:29'),
(379, 'home-card-update', 'Đã cập nhật ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 9, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 15:42:27', '2023-06-13 15:42:27'),
(380, 'home-card-update', 'Đã cập nhật ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 9, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 15:42:33', '2023-06-13 15:42:33'),
(381, 'home-card-update', 'Đã cập nhật ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 9, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 15:42:39', '2023-06-13 15:42:39'),
(382, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 14, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 16:06:01', '2023-06-13 16:06:01'),
(383, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 14, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 16:06:57', '2023-06-13 16:06:57'),
(384, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 14, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 16:07:06', '2023-06-13 16:07:06'),
(385, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 14, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 16:14:54', '2023-06-13 16:14:54'),
(386, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 14, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 16:15:02', '2023-06-13 16:15:02'),
(387, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 14, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 16:15:31', '2023-06-13 16:15:31'),
(388, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 14, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 16:17:24', '2023-06-13 16:17:24'),
(389, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 14, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 16:19:05', '2023-06-13 16:19:05'),
(390, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 17:10:52', '2023-06-13 17:10:52'),
(391, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 10, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-13 17:39:31', '2023-06-13 17:39:31'),
(392, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-14 01:47:44', '2023-06-14 01:47:44'),
(393, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 11, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-14 01:58:26', '2023-06-14 01:58:26'),
(394, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 12, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-14 01:59:49', '2023-06-14 01:59:49'),
(395, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-14 02:00:02', '2023-06-14 02:00:02'),
(396, 'home-card-update', 'Đã cập nhật ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 11, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-14 03:06:08', '2023-06-14 03:06:08'),
(397, 'home-card-update', 'Đã cập nhật ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 11, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-14 03:06:18', '2023-06-14 03:06:18'),
(398, 'home-card-update', 'Đã cập nhật ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 11, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-14 03:06:27', '2023-06-14 03:06:27'),
(399, 'home-card-update', 'Đã cập nhật ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 11, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-14 03:06:36', '2023-06-14 03:06:36'),
(400, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 14, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-14 03:20:35', '2023-06-14 03:20:35'),
(401, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 15, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-14 03:21:33', '2023-06-14 03:21:33'),
(402, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 14, 'App\\Models\\Customer', 13, '{\"delete\": \"14\"}', NULL, '2023-06-14 03:21:36', '2023-06-14 03:21:36'),
(403, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 16, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-14 03:26:18', '2023-06-14 03:26:18'),
(404, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 17, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-15 06:44:26', '2023-06-15 06:44:26'),
(405, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 17, 'App\\Models\\Customer', 13, '{\"delete\": \"17\"}', NULL, '2023-06-15 06:44:28', '2023-06-15 06:44:28'),
(406, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 18, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-15 06:54:14', '2023-06-15 06:54:14'),
(407, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 12, 'App\\Models\\Customer', 13, '{\"delete\": \"12\"}', NULL, '2023-06-15 07:27:36', '2023-06-15 07:27:36'),
(408, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 13, 'App\\Models\\Customer', 13, '{\"delete\": \"13\"}', NULL, '2023-06-15 07:27:38', '2023-06-15 07:27:38'),
(409, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 16, 'App\\Models\\Customer', 13, '{\"delete\": \"16\"}', NULL, '2023-06-15 07:27:41', '2023-06-15 07:27:41'),
(410, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 15, 'App\\Models\\Customer', 13, '{\"delete\": \"15\"}', NULL, '2023-06-15 07:27:43', '2023-06-15 07:27:43'),
(411, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 18, 'App\\Models\\Customer', 13, '{\"delete\": \"18\"}', NULL, '2023-06-15 07:27:50', '2023-06-15 07:27:50'),
(412, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 11, 'App\\Models\\Customer', 13, '{\"delete\": \"11\"}', NULL, '2023-06-15 07:29:06', '2023-06-15 07:29:06'),
(413, 'user-update', 'Cập nhật người dùng thành công', 'App\\Models\\Customer', NULL, 14, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-15 07:31:40', '2023-06-15 07:31:40'),
(414, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 11, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-16 08:55:43', '2023-06-16 08:55:43'),
(415, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 12, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-16 08:55:49', '2023-06-16 08:55:49'),
(416, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-16 08:55:54', '2023-06-16 08:55:54'),
(417, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 14, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-16 08:56:00', '2023-06-16 08:56:00'),
(418, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 15, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-16 08:56:07', '2023-06-16 08:56:07'),
(419, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 16, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-16 08:56:13', '2023-06-16 08:56:13'),
(420, 'home-card-update', 'Đã cập nhật ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 11, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-19 04:32:45', '2023-06-19 04:32:45'),
(421, 'home-card-update', 'Đã cập nhật ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-19 04:37:35', '2023-06-19 04:37:35'),
(422, 'home-card-update', 'Đã cập nhật ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-19 04:40:51', '2023-06-19 04:40:51'),
(423, 'home-card-update', 'Đã cập nhật ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-19 04:41:56', '2023-06-19 04:41:56'),
(424, 'home-card-update', 'Đã cập nhật ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 12, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-19 04:44:19', '2023-06-19 04:44:19'),
(425, 'home-card-update', 'Đã cập nhật ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 14, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-19 04:44:40', '2023-06-19 04:44:40'),
(426, 'home-card-update', 'Đã cập nhật ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 11, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-19 04:45:24', '2023-06-19 04:45:24'),
(427, 'admin-create', 'Thêm mới Admin thành công', 'App\\Models\\User', NULL, 4, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-19 07:04:17', '2023-06-19 07:04:17'),
(428, 'admin-delete', 'Xóa Admin thành công', 'App\\Models\\User', NULL, 3, 'App\\Models\\User', 1, '{\"delete\": \"3\"}', NULL, '2023-06-19 07:04:39', '2023-06-19 07:04:39'),
(429, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 4, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-19 07:07:55', '2023-06-19 07:07:55'),
(430, 'admin-group-create', 'Thêm nhóm người dùng thành công', 'App\\Models\\Categories', NULL, 69, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-19 07:25:02', '2023-06-19 07:25:02'),
(431, 'admin-group-update', 'Cập nhật nhóm người dùng thành công', 'App\\Models\\Categories', NULL, 69, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-19 07:28:18', '2023-06-19 07:28:18'),
(432, 'admin-group-update', 'Cập nhật nhóm người dùng thành công', 'App\\Models\\Categories', NULL, 69, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-19 07:28:33', '2023-06-19 07:28:33'),
(433, 'admin-group-update', 'Cập nhật nhóm người dùng thành công', 'App\\Models\\Categories', NULL, 57, 'App\\Models\\User', 4, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-19 07:57:43', '2023-06-19 07:57:43'),
(434, 'admin-group-update', 'Cập nhật nhóm người dùng thành công', 'App\\Models\\Categories', NULL, 57, 'App\\Models\\User', 4, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-19 07:58:10', '2023-06-19 07:58:10'),
(435, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 4, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-19 08:01:34', '2023-06-19 08:01:34'),
(436, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 2, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-19 08:02:30', '2023-06-19 08:02:30'),
(437, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 2, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-19 08:02:30', '2023-06-19 08:02:30'),
(438, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 2, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-19 08:02:30', '2023-06-19 08:02:30'),
(439, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 2, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-19 08:02:30', '2023-06-19 08:02:30'),
(440, 'admin-group-create', 'Thêm nhóm người dùng thành công', 'App\\Models\\Categories', NULL, 70, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-20 03:58:52', '2023-06-20 03:58:52'),
(441, 'user-update', 'Cập nhật người dùng thành công', 'App\\Models\\Customer', NULL, 14, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-20 04:24:08', '2023-06-20 04:24:08'),
(442, 'admin-group-update', 'Cập nhật nhóm người dùng thành công', 'App\\Models\\Categories', NULL, 70, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-20 09:39:35', '2023-06-20 09:39:35'),
(443, 'admin-group-update', 'Cập nhật nhóm người dùng thành công', 'App\\Models\\Categories', NULL, 70, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-20 09:39:48', '2023-06-20 09:39:48'),
(444, 'admin-group-update', 'Cập nhật nhóm người dùng thành công', 'App\\Models\\Categories', NULL, 70, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-20 09:40:02', '2023-06-20 09:40:02'),
(445, 'admin-group-update', 'Cập nhật nhóm người dùng thành công', 'App\\Models\\Categories', NULL, 69, 'App\\Models\\User', 4, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-20 09:49:40', '2023-06-20 09:49:40'),
(446, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-22 04:28:28', '2023-06-22 04:28:28'),
(447, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-22 04:28:35', '2023-06-22 04:28:35'),
(448, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-22 04:28:42', '2023-06-22 04:28:42'),
(449, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-22 04:33:19', '2023-06-22 04:33:19'),
(450, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-22 04:35:45', '2023-06-22 04:35:45'),
(451, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-22 04:40:48', '2023-06-22 04:40:48'),
(452, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 17, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-22 09:50:45', '2023-06-22 09:50:45'),
(453, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 1, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-23 03:43:11', '2023-06-23 03:43:11'),
(454, 'admin-group-create', 'Thêm nhóm người dùng thành công', 'App\\Models\\Categories', NULL, 71, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-28 08:13:51', '2023-06-28 08:13:51'),
(455, 'admin-group-delete', 'Xóa nhóm người dùng thành công', 'App\\Models\\Categories', NULL, 71, 'App\\Models\\User', 1, '{\"delete\": \"71\"}', NULL, '2023-06-28 08:13:59', '2023-06-28 08:13:59'),
(456, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-28 10:08:03', '2023-06-28 10:08:03'),
(457, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 18, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-29 10:17:56', '2023-06-29 10:17:56'),
(458, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 19, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-29 10:18:12', '2023-06-29 10:18:12'),
(459, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 11, 'App\\Models\\Customer', 13, '{\"delete\": \"11\"}', NULL, '2023-06-29 10:18:47', '2023-06-29 10:18:47'),
(460, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 15, 'App\\Models\\Customer', 13, '{\"delete\": \"15\"}', NULL, '2023-06-29 10:18:49', '2023-06-29 10:18:49'),
(461, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 12, 'App\\Models\\Customer', 13, '{\"delete\": \"12\"}', NULL, '2023-06-29 10:18:52', '2023-06-29 10:18:52'),
(462, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 13, 'App\\Models\\Customer', 13, '{\"delete\": \"13\"}', NULL, '2023-06-29 10:18:53', '2023-06-29 10:18:53'),
(463, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 14, 'App\\Models\\Customer', 13, '{\"delete\": \"14\"}', NULL, '2023-06-29 10:18:55', '2023-06-29 10:18:55'),
(464, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 16, 'App\\Models\\Customer', 13, '{\"delete\": \"16\"}', NULL, '2023-06-29 10:18:56', '2023-06-29 10:18:56'),
(465, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 17, 'App\\Models\\Customer', 13, '{\"delete\": \"17\"}', NULL, '2023-06-29 10:18:58', '2023-06-29 10:18:58'),
(466, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 20, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-29 10:19:12', '2023-06-29 10:19:12'),
(467, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 21, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-29 10:19:41', '2023-06-29 10:19:41'),
(468, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 22, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-29 10:20:16', '2023-06-29 10:20:16'),
(469, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-06-29 10:20:51', '2023-06-29 10:20:51'),
(470, 'admin-group-update', 'Cập nhật nhóm người dùng thành công', 'App\\Models\\Categories', NULL, 69, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-07-06 04:07:59', '2023-07-06 04:07:59'),
(471, 'user-update', 'Cập nhật người dùng thành công', 'App\\Models\\Customer', NULL, 14, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-07-10 02:15:00', '2023-07-10 02:15:00'),
(472, 'user-update', 'Cập nhật người dùng thành công', 'App\\Models\\Customer', NULL, 14, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-07-10 02:15:18', '2023-07-10 02:15:18'),
(473, 'user-create', 'Thêm mới người dùng thành công', 'App\\Models\\Customer', NULL, 15, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-07-10 03:28:19', '2023-07-10 03:28:19'),
(474, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 14, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-07-10 06:52:36', '2023-07-10 06:52:36'),
(475, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 23, 'App\\Models\\Customer', 14, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-07-10 06:53:21', '2023-07-10 06:53:21'),
(476, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 24, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-16 06:35:19', '2023-08-16 06:35:19'),
(477, 'home-card-update', 'Đã cập nhật ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 21, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-16 08:28:21', '2023-08-16 08:28:21'),
(478, 'home-information-update', 'Cập nhật thông tin thành công', 'App\\Models\\Customer', NULL, 13, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-16 08:46:36', '2023-08-16 08:46:36'),
(479, 'home-card-update', 'Đã cập nhật ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 24, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-16 08:51:07', '2023-08-16 08:51:07'),
(480, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 22, 'App\\Models\\Customer', 13, '{\"delete\": \"22\"}', NULL, '2023-08-16 08:59:15', '2023-08-16 08:59:15'),
(481, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 24, 'App\\Models\\Customer', 13, '{\"delete\": \"24\"}', NULL, '2023-08-16 08:59:17', '2023-08-16 08:59:17'),
(482, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 20, 'App\\Models\\Customer', 13, '{\"delete\": \"20\"}', NULL, '2023-08-16 08:59:19', '2023-08-16 08:59:19'),
(483, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 19, 'App\\Models\\Customer', 13, '{\"delete\": \"19\"}', NULL, '2023-08-16 08:59:21', '2023-08-16 08:59:21'),
(484, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 21, 'App\\Models\\Customer', 13, '{\"delete\": \"21\"}', NULL, '2023-08-16 08:59:24', '2023-08-16 08:59:24'),
(485, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 18, 'App\\Models\\Customer', 13, '{\"delete\": \"18\"}', NULL, '2023-08-16 08:59:26', '2023-08-16 08:59:26'),
(486, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 25, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-16 08:59:36', '2023-08-16 08:59:36'),
(487, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 26, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-16 08:59:59', '2023-08-16 08:59:59'),
(488, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 27, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-16 09:00:08', '2023-08-16 09:00:08'),
(489, 'home-card-update', 'Đã cập nhật ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 27, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-16 09:00:18', '2023-08-16 09:00:18'),
(490, 'home-card-update', 'Đã cập nhật ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 27, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-16 09:00:27', '2023-08-16 09:00:27'),
(491, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 28, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-16 09:10:38', '2023-08-16 09:10:38'),
(492, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 2, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-16 15:13:46', '2023-08-16 15:13:46'),
(493, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 2, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-16 15:30:08', '2023-08-16 15:30:08'),
(494, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 2, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-16 15:30:30', '2023-08-16 15:30:30'),
(495, 'admin-delete', 'Xóa Admin thành công', 'App\\Models\\User', NULL, 4, 'App\\Models\\User', 1, '{\"delete\": \"4\"}', NULL, '2023-08-18 07:44:04', '2023-08-18 07:44:04');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(496, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 29, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-19 02:26:40', '2023-08-19 02:26:40'),
(497, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 25, 'App\\Models\\Customer', 13, '{\"delete\": \"25\"}', NULL, '2023-08-19 02:27:03', '2023-08-19 02:27:03'),
(498, 'admin-group-create', 'Thêm nhóm người dùng thành công', 'App\\Models\\Categories', NULL, 72, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-25 07:17:00', '2023-08-25 07:17:00'),
(499, 'admin-group-update', 'Cập nhật nhóm người dùng thành công', 'App\\Models\\Categories', NULL, 70, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-25 07:25:13', '2023-08-25 07:25:13'),
(500, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Apps', NULL, 31, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-25 09:26:03', '2023-08-25 09:26:03'),
(501, 'admin-group-update', 'Cập nhật nhóm người dùng thành công', 'App\\Models\\Categories', NULL, 72, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-25 10:01:25', '2023-08-25 10:01:25'),
(502, 'admin-group-create', 'Thêm nhóm người dùng thành công', 'App\\Models\\Group', NULL, 1, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-25 11:26:43', '2023-08-25 11:26:43'),
(503, 'admin-group-create', 'Thêm nhóm người dùng thành công', 'App\\Models\\Group', NULL, 2, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-25 12:35:06', '2023-08-25 12:35:06'),
(504, 'admin-group-update', 'Cập nhật nhóm người dùng thành công', 'App\\Models\\Categories', NULL, 72, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-25 12:35:49', '2023-08-25 12:35:49'),
(505, 'admin-app-update', 'Cập nhật ứng dụng thành công', 'App\\Models\\Apps', NULL, 31, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 03:39:12', '2023-08-26 03:39:12'),
(506, 'admin-app-create', 'Thêm mới ứng dụng thành công', 'App\\Models\\Apps', NULL, 32, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 03:39:23', '2023-08-26 03:39:23'),
(507, 'admin-app-delete', 'Xóa ứng dụng thành công', 'App\\Models\\Apps', NULL, 32, 'App\\Models\\User', 1, '{\"deleteIcon\": \"32\"}', NULL, '2023-08-26 03:39:46', '2023-08-26 03:39:46'),
(508, 'admin-group-create', 'Thêm nhóm người dùng thành công', 'App\\Models\\Group', NULL, 3, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 03:55:38', '2023-08-26 03:55:38'),
(509, 'admin-group-create', 'Thêm nhóm người dùng thành công', 'App\\Models\\Group', NULL, 4, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 03:56:03', '2023-08-26 03:56:03'),
(510, 'admin-group-create', 'Thêm nhóm người dùng thành công', 'App\\Models\\Group', NULL, 5, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 04:09:40', '2023-08-26 04:09:40'),
(511, 'admin-group-update', 'Cập nhật nhóm người dùng thành công', 'App\\Models\\Group', NULL, 5, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 05:00:11', '2023-08-26 05:00:11'),
(512, 'admin-group-update', 'Cập nhật nhóm người dùng thành công', 'App\\Models\\Group', NULL, 5, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 05:00:36', '2023-08-26 05:00:36'),
(513, 'admin-group-update', 'Cập nhật nhóm người dùng thành công', 'App\\Models\\Group', NULL, 5, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 05:01:43', '2023-08-26 05:01:43'),
(514, 'admin-group-create', 'Thêm nhóm người dùng thành công', 'App\\Models\\Group', NULL, 6, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 05:04:27', '2023-08-26 05:04:27'),
(515, 'admin-group-delete', 'Xóa nhóm người dùng thành công', 'App\\Models\\Group', NULL, 6, 'App\\Models\\User', 1, '{\"delete\": \"6\"}', NULL, '2023-08-26 05:04:34', '2023-08-26 05:04:34'),
(516, 'admin-group-update', 'Cập nhật nhóm người dùng thành công', 'App\\Models\\Group', NULL, 5, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 05:07:48', '2023-08-26 05:07:48'),
(517, 'admin-group-update', 'Cập nhật nhóm người dùng thành công', 'App\\Models\\Group', NULL, 5, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 05:09:00', '2023-08-26 05:09:00'),
(518, 'admin-group-update', 'Cập nhật nhóm người dùng thành công', 'App\\Models\\Group', NULL, 5, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 05:09:54', '2023-08-26 05:09:54'),
(519, 'admin-group-update', 'Cập nhật nhóm người dùng thành công', 'App\\Models\\Group', NULL, 5, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 05:10:29', '2023-08-26 05:10:29'),
(520, 'admin-group-update', 'Cập nhật nhóm người dùng thành công', 'App\\Models\\Group', NULL, 5, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 05:11:38', '2023-08-26 05:11:38'),
(521, 'admin-group-update', 'Cập nhật nhóm người dùng thành công', 'App\\Models\\Group', NULL, 5, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 05:11:46', '2023-08-26 05:11:46'),
(522, 'admin-group-create', 'Thêm nhóm người dùng thành công', 'App\\Models\\Group', NULL, 7, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 05:12:41', '2023-08-26 05:12:41'),
(523, 'admin-group-delete', 'Xóa nhóm người dùng thành công', 'App\\Models\\Group', NULL, 7, 'App\\Models\\User', 1, '{\"delete\": \"7\"}', NULL, '2023-08-26 05:12:50', '2023-08-26 05:12:50'),
(524, 'admin-group-update', 'Cập nhật nhóm người dùng thành công', 'App\\Models\\Group', NULL, 5, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 05:13:12', '2023-08-26 05:13:12'),
(525, 'user-update', 'Cập nhật người dùng thành công', 'App\\Models\\Customer', NULL, 15, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 05:42:55', '2023-08-26 05:42:55'),
(526, 'user-delete', 'Xóa người dùng thành công', 'App\\Models\\Customer', NULL, 15, 'App\\Models\\User', 1, '{\"delete\": \"15\"}', NULL, '2023-08-26 05:43:04', '2023-08-26 05:43:04'),
(527, 'admin-create', 'Thêm mới Admin thành công', 'App\\Models\\User', NULL, 5, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 05:57:26', '2023-08-26 05:57:26'),
(528, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 2, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 05:59:49', '2023-08-26 05:59:49'),
(529, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 2, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 05:59:57', '2023-08-26 05:59:57'),
(530, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 2, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 06:00:03', '2023-08-26 06:00:03'),
(531, 'admin-update', 'Cập nhật Admin thành công', 'App\\Models\\User', NULL, 2, 'App\\Models\\User', 1, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 06:00:04', '2023-08-26 06:00:04'),
(532, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 30, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 06:11:11', '2023-08-26 06:11:11'),
(533, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 28, 'App\\Models\\Customer', 13, '{\"delete\": \"28\"}', NULL, '2023-08-26 06:11:32', '2023-08-26 06:11:32'),
(534, 'cus-add-app', 'Đã thêm ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 31, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 06:11:43', '2023-08-26 06:11:43'),
(535, 'cus-delete-app', 'Đã xóa ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 31, 'App\\Models\\Customer', 13, '{\"delete\": \"31\"}', NULL, '2023-08-26 06:11:47', '2023-08-26 06:11:47'),
(536, 'home-card-update', 'Đã cập nhật ứng dụng thành công', 'App\\Models\\CustomerApps', NULL, 30, 'App\\Models\\Customer', 13, '{\"ip\": \"127.0.0.1\"}', NULL, '2023-08-26 06:23:03', '2023-08-26 06:23:03');

-- --------------------------------------------------------

--
-- Table structure for table `apps`
--

CREATE TABLE `apps` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apps`
--

INSERT INTO `apps` (`id`, `name`, `type`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Số điện thoại', 'phone', '/ckfinder/uploads/images/Admin/Icon_App/Group%20(4).png', '2023-05-17 21:19:46', '2023-06-08 19:19:18'),
(2, 'VietcomBank', 'bank', '/ckfinder/uploads/images/Admin/Icon_App/Group%209718.png', '2023-05-17 21:19:46', '2023-06-08 20:03:23'),
(3, 'MB Bank', 'bank', '/ckfinder/uploads/images/Admin/Icon_App/image%20156%20(1).png', '2023-05-17 21:19:46', '2023-06-08 20:07:00'),
(4, 'Zalo', 'phone', '/ckfinder/uploads/images/Admin/Icon_App/image%20151%20(2).png', '2023-05-23 03:26:03', '2023-06-08 19:44:54'),
(5, 'Tiktok', 'link', '/ckfinder/uploads/images/Admin/Icon_App/Group%20(5).png', '2023-05-23 03:27:14', '2023-06-08 19:46:30'),
(6, 'Youtube', 'link', '/ckfinder/uploads/images/Admin/Icon_App/02_YouTube%20(1).png', '2023-05-23 03:27:55', '2023-06-08 19:47:17'),
(7, 'Instagram', 'link', '/ckfinder/uploads/images/Admin/Icon_App/instagram%201%20(1).png', '2023-05-23 03:28:22', '2023-06-08 19:48:15'),
(8, 'Facebook', 'link', '/ckfinder/uploads/images/Admin/Icon_App/Layer%202.png', '2023-05-23 03:29:26', '2023-06-08 19:42:26'),
(9, 'Linkedln', 'link', '/ckfinder/uploads/images/Admin/Icon_App/linkedin%20(1).png', '2023-05-23 03:30:24', '2023-06-08 19:49:35'),
(10, 'Telegram', 'phone', '/ckfinder/uploads/images/Admin/Icon_App/telegram%20(1)%201%20(1).png', '2023-05-23 03:30:59', '2023-06-08 19:50:18'),
(11, 'Whatsapp', 'phone', '/ckfinder/uploads/images/Admin/Icon_App/whatsapp%201%20(1).png', '2023-05-23 18:26:30', '2023-06-08 19:51:21'),
(12, 'Messenger', 'link', '/ckfinder/uploads/images/Admin/Icon_App/logo%20(1).png', '2023-05-23 18:27:08', '2023-06-08 19:52:13'),
(13, 'Line', 'phone', '/ckfinder/uploads/images/Admin/Icon_App/24_line%20(1).png', '2023-05-23 18:27:37', '2023-06-08 19:52:45'),
(14, 'Wechat', 'phone', '/ckfinder/uploads/images/Admin/Icon_App/28_we%20chat%20(1).png', '2023-05-23 18:28:39', '2023-06-08 19:53:16'),
(15, 'Mail', 'phone', '/ckfinder/uploads/images/Admin/Icon_App/30%20(1).png', '2023-05-23 18:29:00', '2023-06-08 19:53:53'),
(16, 'Địa chỉ', 'link', '/ckfinder/uploads/images/Admin/Icon_App/map%20(5)%201%20(1).png', '2023-05-23 18:29:22', '2023-06-08 19:54:36'),
(17, 'Tiki', 'link', '/ckfinder/uploads/images/Admin/Icon_App/Group%209716%20(1).png', '2023-05-23 18:29:42', '2023-06-08 19:55:19'),
(18, 'Shopee', 'link', '/ckfinder/uploads/images/Admin/Icon_App/Group%209717%20(1).png', '2023-05-23 18:30:08', '2023-06-08 19:55:56'),
(19, 'Lazada', 'link', '/ckfinder/uploads/images/Admin/Icon_App/Group%209720%20(1).png', '2023-05-23 18:30:25', '2023-06-08 19:56:40'),
(20, 'Vietinbank', 'bank', '/ckfinder/uploads/images/Admin/Icon_App/Group%209718%20(1).png', '2023-05-23 18:30:51', '2023-06-08 20:04:20'),
(21, 'Techcombank', 'bank', '/ckfinder/uploads/images/Admin/Icon_App/image%20155%20(1).png', '2023-05-23 18:31:23', '2023-06-08 20:06:10'),
(22, 'VP Bank', 'bank', '/ckfinder/uploads/images/Admin/Icon_App/image%20157%20(1).png', '2023-05-23 18:31:53', '2023-06-08 20:07:34'),
(23, 'ACB Bank', 'bank', '/ckfinder/uploads/images/Admin/Icon_App/Group%209721.png', '2023-05-23 18:32:07', '2023-06-08 20:08:16'),
(24, 'TP Bank', 'bank', '/ckfinder/uploads/images/Admin/Icon_App/Rectangle%204328%20(12).png', '2023-05-23 18:32:51', '2023-06-08 20:08:51'),
(25, 'VIB Bank', 'bank', '/ckfinder/uploads/images/Admin/Icon_App/Rectangle%204328%20(13).png', '2023-05-23 18:33:08', '2023-06-08 20:09:20'),
(26, 'BIDV', 'bank', '/ckfinder/uploads/images/Admin/Icon_App/Rectangle%204328%20(14).png', '2023-05-23 18:33:22', '2023-06-08 20:09:49'),
(27, 'Momo', 'phone', '/ckfinder/uploads/images/Admin/Icon_App/Rectangle%204328%20(15).png', '2023-05-23 18:34:00', '2023-06-08 20:10:39'),
(28, 'ZaloPay', 'phone', '/ckfinder/uploads/images/Admin/Icon_App/Rectangle%204328%20(16).png', '2023-05-23 18:34:18', '2023-06-08 20:11:09'),
(29, 'Viettel Money', 'bank', '/ckfinder/uploads/images/Admin/Icon_App/Group%209722.png', '2023-05-23 18:34:35', '2023-06-08 20:11:40'),
(30, 'Shopee Pay', 'bank', '/ckfinder/uploads/images/Admin/Icon_App/Rectangle%204328%20(17).png', '2023-05-23 18:34:59', '2023-06-08 20:12:12'),
(31, 'VN Pay', 'bank', '/ckfinder/uploads/images/Admin/Icon_App/Rectangle%204328%20(18).png', '2023-05-23 18:35:15', '2023-06-13 10:25:15');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` int NOT NULL,
  `date` date DEFAULT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint DEFAULT NULL,
  `statistical` int DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_schema` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `users_id`, `date`, `image`, `title`, `link`, `status`, `statistical`, `meta_description`, `meta_keyword`, `meta_schema`, `created_at`, `updated_at`) VALUES
(55, 'Cá nhân', 'ca-nhan', 0, '2023-05-12', '/ckfinder/uploads/images/Admin/Banner/Rectangle%204327.png', '{\"1\":\"C\\u00f4ng ty ABC\",\"1684823860747\":\"C\\u1ea3m \\u01a1n b\\u1ea1n \\u0111\\u00e3 mua h\\u00e0ng!\"}', 'https://www.facebook.com/', 1, 1, NULL, NULL, NULL, '2023-05-12 07:58:44', '2023-07-06 03:55:23'),
(57, 'Doanh nghiệp', 'doanh-nghiep', 1, '2023-05-16', '/ckfinder/uploads/images/Admin/Rectangle%204327.png', '{\"1\":\"C\\u00f4ng ty ABC\",\"1685342342965\":\"C\\u1ea3m \\u01a1n b\\u1ea1n \\u0111\\u00e3 mua h\\u00e0ng!\",\"1687161457505\":\"C\\u1ea3m \\u01a1n\"}', 'https://www.youtube.com/watch?v=4Yhk1sXTNgU', 1, 8, NULL, NULL, NULL, '2023-05-12 08:21:48', '2023-07-06 09:35:33'),
(69, 'Testnhosmm', 'testnhosmm', 1, '2023-06-11', '/ckfinder/uploads/images/Admin/Banner/Rectangle%204327.png', '{\"1687159687570\":\"abc\",\"1687159690348\":\"esd\"}', 'https://www.facebook.com/', 0, 20, NULL, NULL, NULL, '2023-06-19 07:25:02', '2023-07-06 04:08:45'),
(70, 'Công đoàn', 'cong-doan', 1, '2023-06-20', '/ckfinder/uploads/images/Admin/logo_web.png', '{\"1687233510268\":\"C\\u00f4ng \\u0111o\\u00e0n\",\"1687233518230\":\"Ch\\u00e0o m\\u1eebng b\\u1ea1n \\u0111\\u1ebfn v\\u1edbi ch\\u00fang t\\u00f4i\"}', NULL, 1, NULL, NULL, NULL, NULL, '2023-06-20 03:58:52', '2023-08-25 07:25:13'),
(72, 'a', 'a', 1, '2023-08-25', NULL, 'null', NULL, 0, NULL, NULL, NULL, NULL, '2023-08-25 07:17:00', '2023-08-25 07:17:00');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `type` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `email`, `content`, `address`, `status`, `type`, `created_at`, `updated_at`) VALUES
(36, 'ádas', '0774097832', 'minhtri@gmail.com', 'aaaaaaaa', 'áda', 1, NULL, '2023-06-27 08:32:40', '2023-06-28 07:48:21'),
(37, 'ádas', '0774097832', 'minht@gmail.com', 'aaaa', 'áda', 1, NULL, '2023-06-27 08:32:59', '2023-06-28 07:47:17'),
(38, 'ádas', '0774097832', 'ư@gmail.com', 'aaaaaaaaa', 'áda', 1, NULL, '2023-06-27 08:34:48', '2023-08-25 07:01:18'),
(39, 'ádas', '0774097832', 'minhtri@gmail.com', 'aaaaa', 'áda', 0, NULL, '2023-06-27 08:35:01', '2023-06-27 08:35:01'),
(46, NULL, NULL, 'minhtri@gmail.com', NULL, NULL, 1, 'email', '2023-06-28 08:52:55', '2023-06-28 08:57:13'),
(48, NULL, NULL, 'minhtri@gmail.com', NULL, NULL, NULL, 'email', '2023-06-28 08:55:18', '2023-06-28 08:55:18'),
(49, NULL, NULL, 'minhtri@gmail.com', NULL, NULL, NULL, 'email', '2023-06-28 08:57:39', '2023-06-28 08:57:39'),
(50, 'ádas', '0774097832', 'minhtri@gmail.com', 'aaaaaaaaaaa', 'áda', 0, 'contact', '2023-06-28 08:58:25', '2023-06-28 08:58:25'),
(51, NULL, NULL, 'minhtri@gmail.com', NULL, NULL, NULL, 'email', '2023-06-29 03:15:41', '2023-06-29 03:15:41'),
(52, NULL, NULL, 'admin@gmail.com', NULL, NULL, NULL, 'email', '2023-07-10 05:02:35', '2023-07-10 05:02:35');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` bigint UNSIGNED NOT NULL,
  `group_id` int NOT NULL,
  `user_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `login_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_cover` text COLLATE utf8mb4_unicode_ci,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT NULL,
  `check` int DEFAULT NULL,
  `meta_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `group_id`, `user_name`, `password`, `date`, `login_code`, `login_link`, `slug`, `image`, `image_cover`, `name`, `phone`, `title`, `status`, `check`, `meta_title`, `created_at`, `updated_at`) VALUES
(13, 3, 'minhtri123', '$2y$10$V6NWx0jkirNE6DGriY8J7uGcsUm89pTO7Tbqh/maRlwd.a22T62VS', '2023-05-24', 'R-T-F-Q-Z-N', 'https://hinamecard2.me/minhtri123', 'minhtri123', '/ckfinder/uploads/images/Admin/Image-Customer/hinh-nen-4k-dep-nhat-cho-may-tinh-va-dien-thoai34-scaled.jpg', '/ckfinder/uploads/images/Admin/Image-cover-customer/hinh-nen-dep-ve-thanh-pho-new-york-8.jpg', 'Nguyễn Văn Minh Trí', '0774097832', 'Xin chào các bạn', 1, 1, 'Nguyễn Văn Minh Trí', '2023-05-24 02:35:10', '2023-08-26 06:03:12'),
(14, 4, 'minhtri', '$2y$10$KDidqJdtIB7.MnroR.5Hn.B/AWiREbU0q9BFkGxZzHVDKZgmk3Zmu', '2023-05-24', 'O-R-D-V-M-H', 'https://hinamecard2.me/minhtri', 'minhtri-2', '/ckfinder/uploads/images/Admin/Image-customer/baymax.jpg', '/ckfinder/uploads/images/Admin/Image-cover-customer/hinh-nen-4k-dep-nhat-cho-may-tinh-va-dien-thoai34-scaled.jpg', 'Nguyễn Văn Trí Minh', '0774097833', 'Xin chào các bạn !!!', 0, 1, 'Nguyễn Văn Trí Minh', '2023-05-24 02:40:00', '2023-07-10 06:52:36');

-- --------------------------------------------------------

--
-- Table structure for table `customer_apps`
--

CREATE TABLE `customer_apps` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `app_id` bigint UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `position` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_apps`
--

INSERT INTO `customer_apps` (`id`, `customer_id`, `app_id`, `content`, `position`, `created_at`, `updated_at`) VALUES
(5, 14, 4, '0787541909', 0, '2023-06-13 15:10:28', '2023-07-10 06:53:07'),
(6, 14, 6, 'https://www.youtube.com/watch?v=omIfphz5dU8', 1, '2023-06-13 15:10:42', '2023-07-10 06:53:07'),
(7, 14, 7, 'https://www.instagram.com/', 6, '2023-06-13 15:12:32', '2023-07-10 06:53:37'),
(8, 14, 2, '23423442342342', 2, '2023-06-13 15:13:06', '2023-07-10 06:53:07'),
(9, 14, 5, 'https://www.tiktok.com/', 3, '2023-06-13 15:19:29', '2023-07-10 06:53:12'),
(10, 14, 11, '0774097833', 4, '2023-06-13 17:39:31', '2023-07-10 06:53:12'),
(23, 14, 10, NULL, 5, '2023-07-10 06:53:21', '2023-07-10 06:53:37'),
(26, 13, 6, 'https://www.youtube.com/', 0, '2023-08-16 08:59:58', '2023-08-19 02:27:00'),
(27, 13, 2, '0774097832', 3, '2023-08-16 09:00:08', '2023-08-19 02:26:58'),
(29, 13, 8, NULL, 2, '2023-08-19 02:26:40', '2023-08-26 06:22:52'),
(30, 13, 4, '0774093333', 1, '2023-08-26 06:11:11', '2023-08-26 06:23:03');

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `link` text COLLATE utf8mb4_unicode_ci,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT NULL,
  `statistical` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`id`, `name`, `image`, `link`, `title`, `status`, `statistical`, `created_at`, `updated_at`) VALUES
(3, 'Doanh nghiệp', '/ckfinder/uploads/images/Admin/Rectangle%204327.png', 'https://www.youtube.com/', 'null', 1, NULL, '2023-08-26 03:55:38', '2023-08-26 03:55:38'),
(4, 'Cá nhân', '/ckfinder/uploads/images/Admin/7776j736.jpg', 'https://www.youtube.com/', 'null', 1, NULL, '2023-08-26 03:56:03', '2023-08-26 03:56:03'),
(5, 'Nguyễn Văn Minh Trí', '/ckfinder/uploads/images/Admin/g0sgjmne%20(2).png', 'https://www.youtube.com/', '{\"1693022978643\":\"a\"}', 0, NULL, '2023-08-26 04:09:40', '2023-08-26 05:13:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_17_015440_create_jobs_table', 1),
(6, '2023_04_17_015723_create_settings_table', 1),
(7, '2023_04_18_170821_create_categories_table', 1),
(8, '2023_04_19_110638_create_permission_tables', 1),
(9, '2023_05_05_103228_create_notifications_table', 1),
(10, '2023_05_05_111757_create_user_notify_table', 1),
(11, '2023_05_10_151047_create_customer_table', 1),
(12, '2023_05_17_085046_create_information_table', 2),
(13, '2023_05_17_094145_create_customer_table', 3),
(14, '2023_05_17_094646_create_information_table', 4),
(15, '2023_05_18_110559_create_information_icon_table', 5),
(16, '2023_05_18_113734_create_customer_has_icon_table', 6),
(17, '2023_05_29_153426_create_demo_table', 7),
(18, '2023_05_29_160446__create_addcategories_table', 8),
(19, '2023_06_06_085948_create_activity_log_table', 9),
(20, '2023_06_06_085949_add_event_column_to_activity_log_table', 9),
(21, '2023_06_06_085950_add_batch_uuid_column_to_activity_log_table', 9),
(22, '2023_06_07_230526_create_settings_table', 10),
(23, '2023_06_13_015544_create_permission_tables', 11),
(24, '2023_06_13_162446_create_apps_table', 12),
(25, '2023_06_13_163301_create_customer_has_apps_table', 13),
(27, '2023_06_13_163730_create_customer_apps_table', 14),
(28, '2023_07_06_145151_create_visit_log_table', 15),
(29, '2023_08_25_141204_create_group_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(10, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_page` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `route` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title_h1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_schema` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `type`, `lang`, `name_page`, `route`, `content`, `image`, `banner`, `title_h1`, `meta_title`, `meta_description`, `meta_keyword`, `meta_schema`, `created_at`, `updated_at`) VALUES
(1, 'home', NULL, 'Trang chủ', 'home.page.index', '{\"header\":{\"image\":\"\\/ckfinder\\/uploads\\/images\\/Admin\\/Banner\\/Screenshot%202023-08-25%20133556.jpg\",\"title1\":\"Danh Thi\\u1ebfp Th\\u00f4ng Minh Hinamecard\",\"title2\":\"Qu\\u00e0 T\\u1eb7ng Kh\\u00e1ch H\\u00e0ng T\\u1ed1i \\u01afu Cho Doanh Nghi\\u1ec7p\",\"title3\":\"Theo Xu H\\u01b0\\u1edbng Hi\\u1ec7n \\u0110\\u1ea1i\",\"link\":\"http:\\/\\/hinamecard2.me\\/\"},\"about\":{\"image\":\"\\/ckfinder\\/uploads\\/images\\/Admin\\/Banner\\/twobannerright.gif\",\"title\":\"Hinamecard\",\"text\":\"<p>HINAMECARD l&agrave; danh thi\\u1ebfp th&ocirc;ng minh (hay c&ograve;n g\\u1ecdi l&agrave; danh thi\\u1ebfp k\\u1ef9 thu\\u1eadt s\\u1ed1) h&agrave;ng \\u0111\\u1ea7u Vi\\u1ec7t Nam, cung c\\u1ea5p n\\u1ec1n t\\u1ea3ng t&iacute;ch h\\u1ee3p t\\u1ea5t c\\u1ea3 th&ocirc;ng tin li&ecirc;n h\\u1ec7 m&agrave; ng\\u01b0\\u1eddi d&ugrave;ng s\\u1eed d\\u1ee5ng \\u0111\\u1ec3 Trao \\u0110\\u1ed5i v&agrave; K\\u1ebft N\\u1ed1i. Thay th\\u1ebf ho&agrave;n to&agrave;n danh thi\\u1ebfp gi\\u1ea5y th&ocirc;ng th\\u01b0\\u1eddng v\\u1edbi nhi\\u1ec1u t&iacute;nh n\\u0103ng \\u01b0u vi\\u1ec7t v&agrave; h\\u1eefu &iacute;ch.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>\\u26a1\\ufe0f Kh&ocirc;ng y&ecirc;u c\\u1ea7u \\u1ee9ng d\\u1ee5ng h\\u1ed7 tr\\u1ee3&nbsp;<\\/p>\\r\\n\\r\\n<p>\\ud83d\\ude04 D\\u1ec5 d&agrave;ng thay \\u0111\\u1ed5i v&agrave; c\\u1eadp nh\\u1eadt th&ocirc;ng tin<\\/p>\\r\\n\\r\\n<p>\\ud83d\\ude0e T\\u1ea1o \\u1ea5n t\\u01b0\\u1ee3ng v\\u1edbi \\u0111\\u1ed1i ph\\u01b0\\u01a1ng trong l\\u1ea7n g\\u1eb7p m\\u1eb7t \\u0111\\u1ea7u ti&ecirc;n<\\/p>\\r\\n\\r\\n<p>\\u2728 Ti\\u1ebft ki\\u1ec7m th\\u1eddi gian, chi ph&iacute; v&agrave; th&acirc;n thi\\u1ec7n v\\u1edbi m&ocirc;i tr\\u01b0\\u1eddng<\\/p>\\r\\n\\r\\n<p>\\ud83d\\udcf1 T\\u01b0\\u01a1ng th&iacute;ch v\\u1edbi c&aacute;c d&ograve;ng \\u0111i\\u1ec7n tho\\u1ea1i th&ocirc;ng minh \\u0111ang ph\\u1ed5 bi\\u1ebfn hi\\u1ec7n nay*<\\/p>\\r\\n\\r\\n<p>\\ud83d\\udd12 Kh&ocirc;ng y&ecirc;u c\\u1ea7u cung c\\u1ea5p quy\\u1ec1n truy c\\u1eadp v&agrave; m\\u1eadt kh\\u1ea9u c&aacute;c trang m\\u1ea1ng x&atilde; h\\u1ed9i<\\/p>\"},\"feature\":{\"1687917256360\":{\"image\":\"\\/ckfinder\\/uploads\\/images\\/Admin\\/logo-feature\\/6172533.gif\",\"title\":\"Cho ph\\u00e9p thay \\u0111\\u1ed5i \\u1ea3nh \\u0111\\u1ea1i di\\u1ec7n, th\\u00eam m\\u00f4 t\\u1ea3 ng\\u1eafn v\\u1ec1 b\\u1ea3n th\\u00e2n.\",\"image2\":\"\\/ckfinder\\/uploads\\/images\\/Admin\\/logo-feature\\/8121259.gif\",\"title2\":\"Cho ph\\u00e9p \\u0111\\u1ed1i t\\u00e1c l\\u01b0u l\\u1ea1i th\\u00f4ng tin b\\u1eb1ng ch\\u1ee9c n\\u0103ng \\u201cL\\u01afU LI\\u00caN L\\u1ea0C\\u201d\"},\"1687917783243\":{\"image\":\"\\/ckfinder\\/uploads\\/images\\/Admin\\/logo-feature\\/7920891.gif\",\"title\":\"Cho ph\\u00e9p th\\u00eam h\\u1ea7u h\\u1ebft c\\u00e1c trang m\\u1ea1ng x\\u00e3 h\\u1ed9i \\u0111ang c\\u00f3 hi\\u1ec7n nay\",\"image2\":\"\\/ckfinder\\/uploads\\/images\\/Admin\\/logo-feature\\/6569158.gif\",\"title2\":\"Cho ph\\u00e9p s\\u1eafp x\\u1ebfp c\\u00e1c th\\u00f4ng tin m\\u1ed9t c\\u00e1ch thu\\u1eadn ti\\u1ec7n v\\u00e0 d\\u1ec5 d\\u00e0ng.\"}},\"product\":{\"1687920459518\":{\"image\":\"\\/ckfinder\\/uploads\\/images\\/Admin\\/Image-product\\/card1.png\",\"name\":\"Danh Thi\\u1ebfp M17\",\"link\":\"https:\\/\\/hinamecard.com\\/san-pham\\/danh-thiep-m17\\/\",\"price\":\"199.000\\u20ab\",\"old_price\":\"299.000\\u20ab\"},\"1687926567026\":{\"image\":\"\\/ckfinder\\/uploads\\/images\\/Admin\\/Image-product\\/card2.png\",\"name\":\"Danh Thi\\u1ebfp M19\",\"link\":\"https:\\/\\/hinamecard.com\\/san-pham\\/danh-thiep-m16\\/\",\"price\":\"199.000\\u20ab\",\"old_price\":\"299.000\\u20ab\"},\"1687926569052\":{\"image\":\"\\/ckfinder\\/uploads\\/images\\/Admin\\/Image-product\\/card3.png\",\"name\":\"Danh Thi\\u1ebfp M20\",\"link\":\"https:\\/\\/hinamecard.com\\/san-pham\\/danh-thiep-m14\\/\",\"price\":\"199.000\\u20ab\",\"old_price\":\"299.000\\u20ab\"}},\"previews\":{\"1687922010413\":{\"image\":\"\\/ckfinder\\/uploads\\/images\\/Admin\\/Banner\\/testimonials-2.jpg\",\"name\":\"minh tr\\u00ed\",\"role\":\"ng\\u01b0\\u1eddi d\\u00f9ng\",\"text\":\"T\\u1eeb l\\u00fac d\\u00f9ng danh thi\\u1ebfp Hinamecard l\\u00e0m qu\\u00e0 t\\u1eb7ng cho h\\u1ecdc vi\\u00ean, ch\\u00fang t\\u00f4i \\u0111\\u00e3 c\\u00f3 th\\u00eam nhi\\u1ec1u h\\u1ecdc vi\\u00ean m\\u1edbi nh\\u1edd s\\u1ef1 k\\u1ebft n\\u1ed1i c\\u1ee7a h\\u1ecdc vi\\u00ean \\u0111\\u1ebfn ng\\u01b0\\u1eddi quen c\\u1ee7a h\\u1ecd.\"},\"1687922580533\":{\"image\":\"\\/ckfinder\\/uploads\\/images\\/Admin\\/Banner\\/testimonials-4.jpg\",\"name\":\"nguy\\u1ec5n v\\u0103n h\\u00f9ng\",\"role\":\"ng\\u01b0\\u1eddi d\\u00f9ng\",\"text\":\"T\\u1eeb l\\u00fac chuy\\u1ec3n qua qu\\u00e0 t\\u1eb7ng danh thi\\u1ebfp Hinamecard m\\u00ecnh \\u0111\\u00e3 x\\u00e2y d\\u1ef1ng \\u0111\\u01b0\\u1ee3c h\\u01a1n 1500 ng\\u01b0\\u1eddi gi\\u1edbi thi\\u1ec7u s\\u1ea3n ph\\u1ea9m cho spa c\\u1ee7a m\\u00ecnh v\\u00e0 gi\\u00fap m\\u00ecnh c\\u00f3 l\\u01b0\\u1ee3ng kh\\u00e1ch h\\u00e0ng \\u1ed5n \\u0111\\u1ecbnh.\"},\"1687926927932\":{\"image\":\"\\/ckfinder\\/uploads\\/images\\/Admin\\/Banner\\/testimonials-5.jpg\",\"name\":\"nguy\\u1ec5n v\\u0103n khoa\",\"role\":\"doanh nghi\\u1ec7p\",\"text\":\"Nh\\u1edd Hinamecard m\\u00e0 ph\\u00f2ng kinh doanh c\\u1ee7a ch\\u00fang t\\u00f4i \\u0111\\u1ea1t doanh s\\u1ed1 v\\u01b0\\u1ee3t m\\u1ee9c mong \\u0111\\u1ee3i v\\u00e0 x\\u00e2y d\\u1ef1ng \\u0111\\u01b0\\u1ee3c m\\u1ed9t l\\u01b0\\u1ee3ng kh\\u00e1ch h\\u00e0ng ti\\u1ec1m n\\u0103ng m\\u1edbi \\u1ed5n \\u0111\\u1ecbnh. ng\\u00e0nh b\\u1ea3o hi\\u1ec3m c\\u1ee7a ch\\u00fang t\\u00f4i c\\u1ea7n s\\u1ef1 uy t\\u00edn tin t\\u01b0\\u1edfng n\\u00ean khi kh\\u00e1ch h\\u00e0ng \\u0111\\u01b0\\u1ee3c kh\\u00e1ch h\\u00e0ng c\\u0169 gi\\u1edbi thi\\u1ec7u h\\u1ecd \\u0111\\u00e3 tin t\\u01b0\\u1edfng h\\u01a1n r\\u1ea5t nhi\\u1ec1u.\"}}}', '/ckfinder/uploads/images/Admin/sticker1.png', NULL, NULL, 'sMarT.card', 'sMarT.card', 'sMarT.card', NULL, '2022-08-30 18:23:41', '2023-08-25 06:36:37');

-- --------------------------------------------------------

--
-- Table structure for table `page_sub`
--

CREATE TABLE `page_sub` (
  `id` bigint UNSIGNED NOT NULL,
  `name_page` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title_h1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_schema` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_sub`
--

INSERT INTO `page_sub` (`id`, `name_page`, `slug`, `content`, `image`, `banner`, `title_h1`, `meta_title`, `meta_description`, `meta_keyword`, `meta_schema`, `created_at`, `updated_at`) VALUES
(1, 'Chính sách bảo mật', 'chinh-sach-bao-mat', '<h1 style=\"text-align: center;\">Ch&iacute;nh s&aacute;ch bảo mật</h1>\r\n\r\n<p align=\"center\"><b>Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n</b></p>\r\n\r\n<ol>\r\n	<li><b>Mục đích và phạm vi thu th&acirc;̣p</b></li>\r\n</ol>\r\n\r\n<p>Việc thu thập dữ liệu chủ yếu tr&ecirc;n website hinamecard.com bao gồm: email, điện thoại, t&ecirc;n đăng nhập, mật khẩu đăng nhập, địa chỉ kh&aacute;ch h&agrave;ng (th&agrave;nh vi&ecirc;n). Đ&acirc;y l&agrave; c&aacute;c th&ocirc;ng tin m&agrave; hinamecard.com c&acirc;̀n thành vi&ecirc;n cung c&acirc;́p bắt bu&ocirc;̣c khi đăng ký sử dụng dịch vụ và đ&ecirc;̉ hinamecard.com li&ecirc;n h&ecirc;̣ xác nh&acirc;̣n khi khách hàng đăng ký sử dụng dịch vụ tr&ecirc;n website nhằm đảm bảo quy&ecirc;̀n lợi cho người ti&ecirc;u dùng.</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh giao dịch thanh to&aacute;n tại website hinamecard.com, chúng t&ocirc;i chỉ lưu giữ th&ocirc;ng tin chi tiết về đơn h&agrave;ng đ&atilde; thanh to&aacute;n của th&agrave;nh vi&ecirc;n, c&aacute;c th&ocirc;ng tin về số t&agrave;i khoản ng&acirc;n h&agrave;ng của th&agrave;nh vi&ecirc;n sẽ kh&ocirc;ng được lưu giữ.</p>\r\n\r\n<p>C&aacute;c th&agrave;nh vi&ecirc;n sẽ tự chịu tr&aacute;ch nhiệm về bảo mật v&agrave; lưu giữ mọi hoạt động sử dụng dịch vụ dưới t&ecirc;n đăng k&yacute;, mật khẩu v&agrave; hộp thư điện tử của m&igrave;nh. Ngo&agrave;i ra, th&agrave;nh vi&ecirc;n c&oacute; tr&aacute;ch nhiệm th&ocirc;ng b&aacute;o kịp thời cho webiste hinamecard.com v&ecirc;̀ những hành vi sử dụng trái phép, lạm dụng, vi phạm bảo m&acirc;̣t, lưu giữ t&ecirc;n đăng ký và m&acirc;̣t kh&acirc;̉u của b&ecirc;n thứ ba đ&ecirc;̉ có bi&ecirc;̣n pháp giải quy&ecirc;́t phù hợp.</p>\r\n\r\n<ol>\r\n	<li><b>Phạm vi sử dụng th&ocirc;ng tin</b></li>\r\n</ol>\r\n\r\n<p>C&ocirc;ng ty sử dụng th&ocirc;ng tin th&agrave;nh vi&ecirc;n cung cấp để:</p>\r\n\r\n<ul>\r\n	<li>Cung cấp c&aacute;c dịch vụ đến th&agrave;nh vi&ecirc;n;</li>\r\n	<li>Gửi h&agrave;ng h&oacute;a theo địa chỉ th&agrave;nh vi&ecirc;n mua cung cấp;</li>\r\n	<li>Gửi th&ocirc;ng tin quảng c&aacute;o, khuyến mại nếu th&agrave;nh vi&ecirc;n chấp nhận điều khoản n&agrave;y trong khi đăng k&yacute;;</li>\r\n	<li>Gửi c&aacute;c th&ocirc;ng b&aacute;o về c&aacute;c hoạt động trao đổi th&ocirc;ng tin giữa th&agrave;nh vi&ecirc;n v&agrave; website hinamecard.com</li>\r\n	<li>Ngăn ngừa c&aacute;c hoạt động ph&aacute; hủy t&agrave;i khoản người d&ugrave;ng của th&agrave;nh vi&ecirc;n hoặc c&aacute;c hoạt động giả mạo th&agrave;nh vi&ecirc;n;</li>\r\n	<li>Li&ecirc;n lạc v&agrave; giải quyết với th&agrave;nh vi&ecirc;n trong những trường hợp đặc biệt;</li>\r\n	<li>Kh&ocirc;ng sử dụng th&ocirc;ng tin c&aacute; nh&acirc;n của th&agrave;nh vi&ecirc;n ngo&agrave;i mục đ&iacute;ch x&aacute;c nhận v&agrave; li&ecirc;n hệ c&oacute; li&ecirc;n quan đến giao dịch tại hinamecard.com</li>\r\n	<li>Trong trường hợp c&oacute; y&ecirc;u cầu của ph&aacute;p luật: C&ocirc;ng ty c&oacute; tr&aacute;ch nhiệm hợp t&aacute;c cung cấp th&ocirc;ng tin c&aacute; nh&acirc;n th&agrave;nh vi&ecirc;n khi c&oacute; y&ecirc;u cầu từ cơ quan tư ph&aacute;p bao gồm: Viện kiểm s&aacute;t, t&ograve;a &aacute;n, cơ quan c&ocirc;ng an điều tra li&ecirc;n quan đến h&agrave;nh vi vi phạm ph&aacute;p luật n&agrave;o đ&oacute; của kh&aacute;ch h&agrave;ng. Ngo&agrave;i ra, kh&ocirc;ng ai c&oacute; quyền x&acirc;m phạm v&agrave;o th&ocirc;ng tin c&aacute; nh&acirc;n của th&agrave;nh vi&ecirc;n.</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li><b>Thời gian lưu trữ th&ocirc;ng tin</b></li>\r\n</ol>\r\n\r\n<p>Dữ liệu c&aacute; nh&acirc;n của th&agrave;nh vi&ecirc;n sẽ được lưu trữ cho đến khi c&oacute; y&ecirc;u cầu hủy bỏ hoặc tự th&agrave;nh vi&ecirc;n đăng nhập v&agrave; thực hiện hủy bỏ. C&ograve;n lại trong mọi trường hợp th&ocirc;ng tin c&aacute; nh&acirc;n th&agrave;nh vi&ecirc;n sẽ được bảo mật tr&ecirc;n m&aacute;y chủ của hinamecard.com</p>\r\n\r\n<ol>\r\n	<li><b>Phương tiện v&agrave; c&ocirc;ng cụ để người d&ugrave;ng tiếp cận v&agrave; chỉnh sửa dữ liệu c&aacute; nh&acirc;n của m&igrave;nh</b>.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>Th&agrave;nh vi&ecirc;n c&oacute; quyền tự kiểm tra, cập nhật, điều chỉnh hoặc hủy bỏ th&ocirc;ng tin c&aacute; nh&acirc;n của m&igrave;nh bằng c&aacute;ch đăng nhập v&agrave;o t&agrave;i khoản v&agrave; chỉnh sửa th&ocirc;ng tin c&aacute; nh&acirc;n hoặc y&ecirc;u cầu hinamecard.com thực hi&ecirc;̣n vi&ecirc;̣c này;</li>\r\n	<li>Th&agrave;nh vi&ecirc;n c&oacute; quyền gửi khiếu nại về chất lượng h&agrave;ng h&oacute;a, thời gian giao h&agrave;ng đến Ban quản trị của website hinamecard.com. Khi ti&ecirc;́p nh&acirc;̣n những phản h&ocirc;̀i này, hinamecard.com sẽ xác nh&acirc;̣n lại th&ocirc;ng tin, trường hợp đúng như phản ánh của thành vi&ecirc;n tùy theo mức đ&ocirc;̣, hinamecard.com sẽ có những bi&ecirc;̣n pháp xử lý kịp thời.</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li><b>Cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n kh&aacute;ch h&agrave;ng</b></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>Th&ocirc;ng tin c&aacute; nh&acirc;n của th&agrave;nh vi&ecirc;n tr&ecirc;n hinamecard.com được hinamecard.com cam kết bảo mật tuyệt đối theo ch&iacute;nh s&aacute;ch bảo vệ th&ocirc;ng tin c&aacute; nh&acirc;n của hinamecard.com. Việc thu thập v&agrave; sử dụng th&ocirc;ng tin của mỗi th&agrave;nh vi&ecirc;n chỉ được thực hiện khi c&oacute; sự đồng &yacute; của kh&aacute;ch h&agrave;ng đ&oacute; trừ những trường hợp ph&aacute;p luật c&oacute; quy định kh&aacute;c;</li>\r\n	<li>Kh&ocirc;ng sử dụng, kh&ocirc;ng chuyển giao, cung cấp hay tiết lộ cho b&ecirc;n thứ 3 n&agrave;o về th&ocirc;ng tin c&aacute; nh&acirc;n của th&agrave;nh vi&ecirc;n khi kh&ocirc;ng c&oacute; sự cho ph&eacute;p đồng &yacute; từ th&agrave;nh vi&ecirc;n;</li>\r\n	<li>Trong trường hợp m&aacute;y chủ lưu trữ th&ocirc;ng tin bị hacker tấn c&ocirc;ng dẫn đến mất m&aacute;t dữ liệu c&aacute; nh&acirc;n th&agrave;nh vi&ecirc;n, hinamecard.com sẽ c&oacute; tr&aacute;ch nhiệm th&ocirc;ng b&aacute;o vụ việc cho cơ quan chức năng điều tra xử l&yacute; kịp thời v&agrave; th&ocirc;ng b&aacute;o cho th&agrave;nh vi&ecirc;n được biết;</li>\r\n	<li>Bảo mật tuyệt đối mọi th&ocirc;ng tin giao dịch trực tuyến của th&agrave;nh vi&ecirc;n bao gồm th&ocirc;ng tin h&oacute;a đơn kế to&aacute;n chứng từ số h&oacute;a tr&ecirc;n hinamecard.com</li>\r\n	<li>Ban quản l&yacute; hinamecard.com y&ecirc;u cầu c&aacute;c c&aacute; nh&acirc;n khi đăng k&yacute;/mua h&agrave;ng l&agrave; Th&agrave;nh vi&ecirc;n, phải cung cấp đầy đủ th&ocirc;ng tin c&aacute; nh&acirc;n c&oacute; li&ecirc;n quan như: Họ v&agrave; t&ecirc;n, địa chỉ li&ecirc;n lạc, email, số chứng minh nh&acirc;n d&acirc;n, điện thoại, số t&agrave;i khoản, số thẻ thanh to&aacute;n &hellip;., v&agrave; chịu tr&aacute;ch nhiệm về t&iacute;nh ph&aacute;p l&yacute; của những th&ocirc;ng tin tr&ecirc;n. Ban quản l&yacute; hinamecard.com kh&ocirc;ng chịu tr&aacute;ch nhiệm cũng như kh&ocirc;ng giải quyết mọi khiếu nại c&oacute; li&ecirc;n quan đến quyền lợi của th&agrave;nh vi&ecirc;n đ&oacute; nếu x&eacute;t thấy tất cả th&ocirc;ng tin c&aacute; nh&acirc;n của th&agrave;nh vi&ecirc;n đ&oacute; cung cấp khi đăng k&yacute; ban đầu l&agrave; kh&ocirc;ng ch&iacute;nh x&aacute;c.</li>\r\n</ul>', '/ckfinder/uploads/images/Admin/Banner/trang-dau.png', NULL, NULL, 'Chính sách bảo mật', 'Chính sách bảo mật', 'Chính sách bảo mật', 'Hinamecard - Chính sách bảo mật', '2023-06-08 08:42:18', '2023-07-10 04:59:45'),
(4, 'Điều khoản dịch vụ', 'dieu-khoan-dich-vu', '<h1 style=\"text-align: center;\">Ch&iacute;nh S&aacute;ch Giao H&agrave;ng</h1>\r\n\r\n<p>hinamecard.com lu&ocirc;n hướng đến việc cung cấp dịch vụ vận chuyển tốt nhất với mức ph&iacute; cạnh tranh cho tất cả c&aacute;c đơn h&agrave;ng m&agrave; qu&yacute; kh&aacute;ch đặt với ch&uacute;ng t&ocirc;i. Ch&uacute;ng t&ocirc;i hỗ trợ giao h&agrave;ng tr&ecirc;n to&agrave;n quốc với ch&iacute;nh s&aacute;ch giao h&agrave;ng cụ thể như sau:</p>\r\n\r\n<p><b>1, Ph&iacute; giao h&agrave;ng tại cửa h&agrave;ng (Đại l&yacute;):</b></p>\r\n\r\n<p>hinamecard.com &aacute;p dụng mức ph&iacute; giao h&agrave;ng theo chi ph&iacute; đ&atilde; được k&yacute; với b&ecirc;n đối t&aacute;c chịu tr&aacute;ch nhiệm vận chuyển, giao nhận cho tất cả c&aacute;c đơn h&agrave;ng được đặt th&agrave;nh c&ocirc;ng.</p>\r\n\r\n<p>Đối với kh&aacute;ch h&agrave;ng ở c&aacute;c Tỉnh, Th&agrave;nh phố c&oacute; cửa h&agrave;ng của c&ocirc;ng ty, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh gửi giao h&agrave;ng tận nơi cho Kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><b>2, Thời gian giao h&agrave;ng:</b></p>\r\n\r\n<p>hinamecard.com sẽ y&ecirc;u cầu b&ecirc;n vận chuyển h&agrave;ng giao h&agrave;ng cho kh&aacute;ch h&agrave;ng trong thời gian thỏa thuận khi qu&yacute; kh&aacute;ch thực hiện đầy đủ c&aacute;c thủ tục đặt h&agrave;ng. Thời gian vận chuyển h&agrave;ng thường mất &iacute;t nhất 5 &ndash; 7 ng&agrave;y l&agrave;m việc (kh&ocirc;ng t&iacute;nh thứ bảy, chủ nhật hay c&aacute;c ng&agrave;y lễ tết).</p>\r\n\r\n<p>Trong trường hợp qu&yacute; kh&aacute;ch chọn h&igrave;nh thức thanh toàn bằng thẻ t&iacute;n dụng, thời gian xử l&yacute; đơn h&agrave;ng sẽ được t&iacute;nh từ khi hinamecard.com nhận được thanh to&aacute;n ho&agrave;n tất của qu&yacute; kh&aacute;ch. Xin lưu &yacute; rằng hinamecard.com bảo lưu quyền thay đổi thời gian giao h&agrave;ng m&agrave; kh&ocirc;ng cần b&aacute;o trước trong trường hợp chịu ảnh hưởng của thi&ecirc;n tai hoặc c&aacute;c sự kiện đặc biệt kh&aacute;c.</p>\r\n\r\n<p>Đơn h&agrave;ng của qu&yacute; kh&aacute;ch sẽ được giao tối đa trong 2 lần (trường hợp lần đầu giao h&agrave;ng kh&ocirc;ng th&agrave;nh c&ocirc;ng, sẽ c&oacute; nh&acirc;n vi&ecirc;n li&ecirc;n hệ để sắp xếp lịch giao h&agrave;ng lần 2 với qu&yacute; kh&aacute;ch. Ch&uacute;ng t&ocirc;i sẽ cố gắng li&ecirc;n hệ lại trong 2 ng&agrave;y l&agrave;m việc tiếp theo (qua tin nhắn hoặc gọi trực tiếp), trong trường hợp vẫn kh&ocirc;ng thể li&ecirc;n lạc lại được hoặc kh&ocirc;ng nhận được bất k&igrave; phản hồi n&agrave;o từ ph&iacute;a qu&yacute; kh&aacute;ch, đơn h&agrave;ng sẽ kh&ocirc;ng c&ograve;n hiệu lực.</p>\r\n\r\n<p>Để kiểm tra th&ocirc;ng tin hoặc t&igrave;nh trạng đơn h&agrave;ng của qu&yacute; kh&aacute;ch, xin vui lòng li&ecirc;n hệ với bộ phận Chăm s&oacute;c kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Khi h&agrave;ng được chuyển giao đến qu&yacute; kh&aacute;ch, xin vui l&ograve;ng ho&agrave;n tất việc thanh to&aacute;n v&agrave; k&yacute; x&aacute;c nhận với nh&acirc;n vi&ecirc;n giao h&agrave;ng trước, sau đ&oacute; qu&yacute; kh&aacute;ch vui l&ograve;ng kiểm tra nếu sản phẩm c&oacute; bất kỳ lỗi hay khiếm khuyết n&agrave;o. Xin qu&yacute; kh&aacute;ch vui l&ograve;ng giữ lại bi&ecirc;n lại vận chuyển để kiểm tra.</p>', '/ckfinder/uploads/images/Admin/Banner/trang-dau.png', NULL, NULL, 'Điều khoản dịch vụ', 'Điều khoản dịch vụ', 'Điều khoản dịch vụ', NULL, '2023-06-29 03:29:06', '2023-06-29 03:29:06'),
(5, 'Chính sách đổi trả', 'chinh-sach-doi-tra', '<h1 style=\"text-align: center;\">Ch&iacute;nh S&aacute;ch Bảo H&agrave;nh/ Đổi Trả H&agrave;ng</h1>\r\n\r\n<h2><b>1. Chính sách bảo hành</b></h2>\r\n\r\n<p>Khách hàng có th&ecirc;̉ trực ti&ecirc;́p li&ecirc;n h&ecirc;̣ bảo hành và khi&ecirc;́u nại v&ecirc;̀ dịch vụ tại các địa chỉ sau của hinamecard.com</p>\r\n\r\n<p>Email: hinamecard.ztm@gmai</p>\r\n\r\n<p>Đi&ecirc;̣n thoại: 0987405795</p>\r\n\r\n<p>Thời gian phục vụ: từ 8:30 đ&ecirc;́n 17:30 các ngày từ thứ Hai đ&ecirc;́n thứ Bảy, kh&ocirc;ng tính Chủ Nh&acirc;̣t và các ngày l&ecirc;̃ T&ecirc;́t.</p>\r\n\r\n<p>Quý khách có th&ecirc;̉ thực hi&ecirc;̣n bảo hành khi sử dụng dịch vụ của hinamecard.com</p>\r\n\r\n<p>Quy trình bảo hành: Khi c&acirc;̀n bảo hành, h&ocirc;̃ trợ dịch vụ, khách hàng sẽ li&ecirc;n h&ecirc;̣ với các trung t&acirc;m bảo hành, h&ocirc;̃ trợ của chúng t&ocirc;i. Các nh&acirc;n vi&ecirc;n chăm sóc khách hàng của chúng t&ocirc;i sẽ tư v&acirc;́n h&ocirc;̃ trợ khách hàng v&ecirc;̀ quy trình bảo hành, h&ocirc;̃ trợ dịch vụ. Khi nh&acirc;̣n được th&ocirc;ng tin bảo hành của dịch vụ mà khách hàng y&ecirc;u c&acirc;̀u, b&ocirc;̣ ph&acirc;̣n kỹ thu&acirc;̣t của hinamecard.com sẽ h&ocirc;̃ trợ khắc phục sự c&ocirc;́ cho khách hàng trong vòng 24h qua đi&ecirc;̣n thoại, email hoặc h&ocirc;̃ trợ trực ti&ecirc;́p qua teamviewer.</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i sẽ thực hiện c&aacute;c bước tiếp theo để kiểm&nbsp;tra chất lượng dịch vụ và ti&ecirc;́n hành bảo hành hoặc hoàn ti&ecirc;̀n theo y&ecirc;u c&acirc;̀u của quý khách.</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i sẽ ho&agrave;n trả tiền cho kh&aacute;ch h&agrave;ng theo h&igrave;nh thức kh&aacute;ch h&agrave;ng thanh to&aacute;n.</p>\r\n\r\n<ul>\r\n	<li>Nếu kh&aacute;ch h&agrave;ng thanh to&aacute;n qua chuyển khoản, ch&uacute;ng t&ocirc;i ho&agrave;n trả tiền theo t&agrave;i khoản đ&atilde; thanh to&aacute;n đ&uacute;ng bằng số tiền m&agrave; kh&aacute;ch h&agrave;ng mua dịch vụ đó;</li>\r\n	<li>Nếu kh&aacute;ch h&agrave;ng thanh to&aacute;n tại c&ocirc;ng ty đề nghị kh&aacute;ch h&agrave;ng đến c&ocirc;ng ty để nhận lại tiền (Nh&acirc;n vi&ecirc;n h&ocirc;̃ trợ sẽ li&ecirc;n h&ecirc;̣ với khách hàng đ&ecirc;̉ đặt lịch hẹn)</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><b>2. Các trường hợp bảo hành/ Đ&ocirc;̉i trả</b></h2>\r\n\r\n<p>T&acirc;́t cả các dịch vụ được mua từ hinamecard.com sẽ được bảo hành, h&ocirc;̃ trợ tùy theo loại hình dịch vụ sử dụng mà thời gian bảo hành có thời hạn dài ngắn khác nhau.</p>\r\n\r\n<p>Đ&ocirc;́i với sản ph&acirc;̉m/ dịch vụ c&acirc;̀n bảo hành/ h&ocirc;̃ trợ, khách hàng sẽ trực ti&ecirc;́p li&ecirc;n h&ecirc;̣ với chúng t&ocirc;i đ&ecirc;̉ nh&acirc;̣n được h&ocirc;̃ trợ t&ocirc;́t nh&acirc;́t.</p>\r\n\r\n<p>Chúng t&ocirc;i chỉ kh&ocirc;ng ch&acirc;́p nh&acirc;̣n bảo hành, h&ocirc;̃ trợ trong các trường hợp như: Thi&ecirc;n tai, địch họa g&acirc;y cách trở hoặc phá hủy hoặc tắc nghẽn hoặc dừng k&ecirc;́t n&ocirc;́i đ&ecirc;́n trung t&acirc;m dữ li&ecirc;̣u của khách hàng, sự c&ocirc;́ m&acirc;́t đi&ecirc;̣n tr&ecirc;n di&ecirc;̣n r&ocirc;̣ng, sự c&ocirc;́ đứt cáp vi&ecirc;̃n th&ocirc;ng g&acirc;y tắc nghẽn hoặc ngừng k&ecirc;́t n&ocirc;́i vi&ecirc;̃n th&ocirc;ng, Internet đ&ecirc;́n trung t&acirc;m dữ li&ecirc;̣u của khách hàng.</p>\r\n\r\n<p align=\"center\"><b>Bi&ecirc;̣n pháp, Cơ ch&ecirc;́ và Quy trình Giải quy&ecirc;́t tranh ch&acirc;́p, khi&ecirc;́u nại</b></p>\r\n\r\n<p>Th&agrave;nh vi&ecirc;n đồng &yacute; v&agrave; tu&acirc;n thủ rằng, khi Th&agrave;nh vi&ecirc;n được hinamecard.com cung cấp t&agrave;i khoản để sử dụng một phần hoặc to&agrave;n bộ sản phẩm hinamecard.com, th&igrave; bất kỳ tranh chấp ph&aacute;t sinh trong qu&aacute; tr&igrave;nh sử dụng của Th&agrave;nh vi&ecirc;n sẽ được giải quyết theo ph&aacute;p luật hiện h&agrave;nh của nước Cộng H&ograve;a X&atilde; Hội Chủ Nghĩa Việt Nam.</p>\r\n\r\n<p>Bất kỳ khiếu nại n&agrave;o ph&aacute;t sinh trong qu&aacute; tr&igrave;nh thanh to&aacute;n v&agrave; sử dụng hinamecard.com phải được gửi đến bộ phận hỗ trợ hinamecard.com ngay sau khi xảy ra sự kiện ph&aacute;t sinh khiếu nại. hinamecard.com sẽ l&agrave; nơi trung gian giải quyết tranh chấp giữa Th&agrave;nh vi&ecirc;n với nhau. hinamecard.com sẽ căn cứ từng trường hợp cụ thể để c&oacute; phương &aacute;n giải quyết cho ph&ugrave; hợp. Khi thực hiện quyền khiếu nại, người khiếu nại c&oacute; nghĩa vụ cung cấp c&aacute;c giấy tờ, bằng chứng, căn cứ c&oacute; li&ecirc;n quan đến việc khiếu nại v&agrave; phải chịu tr&aacute;ch nhiệm về nội dung khiếu nại, giấy tờ, bằng chứng, căn cứ do m&igrave;nh cung cấp theo quy định Ph&aacute;p luật.</p>\r\n\r\n<p>Quy tr&igrave;nh giải quyết khiếu nại được đăng tải tr&ecirc;n website sản phẩm.</p>\r\n\r\n<p>hinamecard.com chỉ hỗ trợ, giải quyết khiếu nại, tố c&aacute;o của bạn trong trường hợp bạn đ&atilde; ghi đầy đủ, trung thực v&agrave; ch&iacute;nh x&aacute;c th&ocirc;ng tin khi đăng k&iacute; t&agrave;i khoản.</p>\r\n\r\n<p>Đối với tranh chấp giữa Th&agrave;nh vi&ecirc;n hinamecard.com với nhau hoặc giữa Th&agrave;nh vi&ecirc;n với hinamecard.com, chúng t&ocirc;i sẽ căn cứ log hệ thống để giải quyết. Theo đ&oacute;, hinamecard.com sẽ bảo vệ quyền lợi tối đa c&oacute; thể cho Người Sử Dụng đăng k&iacute; đầy đủ th&ocirc;ng tin theo quy định.</p>\r\n\r\n<p>Th&agrave;nh vi&ecirc;n đồng &yacute; bảo vệ, bồi ho&agrave;n v&agrave; loại trừ hinamecard.com khỏi những nghĩa vụ ph&aacute;p l&yacute;, tố tụng, tổn thất, chi ph&iacute; bao gồm nhưng kh&ocirc;ng giới hạn &aacute;n ph&iacute;, chi ph&iacute; luật sư, chuy&ecirc;n gia tư vấn c&oacute; li&ecirc;n quan đến việc giải quyết hoặc ph&aacute;t sinh từ sự vi phạm của Th&agrave;nh vi&ecirc;n trong qu&aacute; tr&igrave;nh sử dụng dịch vụ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Địa chỉ tiếp nhận hỗ trợ:</p>\r\n\r\n<p>Email: hinamecard.ztm@gmail.</p>\r\n\r\n<p>Đi&ecirc;̣n thoại: 0383236087</p>\r\n\r\n<p align=\"center\"><b>Quy tr&igrave;nh giải quyết tranh chấp v&agrave; khiếu nại</b></p>\r\n\r\n<ul>\r\n	<li>Bước 1: Tiếp nhận: Nhận y&ecirc;u cầu giải quyết khiếu nại của th&agrave;nh vi&ecirc;n (gọi l&agrave; &ldquo;người khiếu nại&rdquo;), kiểm tra th&ocirc;ng tin khiếu nại để thực hiện tiếp nhận hay từ chối.</li>\r\n	<li>Bước 2: Xử l&yacute; khiếu nại: Thu thập th&ocirc;ng tin, h&igrave;nh ảnh chứng cứ từ c&aacute;c b&ecirc;n li&ecirc;n quan.</li>\r\n	<li>Bước 3: Ho&agrave;n tất khiếu nại: X&aacute;c nhận kết quả, đưa ra c&aacute;c h&igrave;nh thức xử l&yacute; đối với từng vi phạm v&agrave; tiến h&agrave;nh đ&oacute;ng khiếu nại.</li>\r\n</ul>\r\n\r\n<p align=\"center\"><b>Phương thức thanh to&aacute;n</b></p>\r\n\r\n<p>Tại hinamecard.com, vi&ecirc;̣c mua các gói dịch vụ trực tuy&ecirc;́n trở n&ecirc;n th&acirc;̣t d&ecirc;̃ dàng với các hình thức thanh toán ti&ecirc;̣n lợi v&agrave; linh hoạt thanh to&aacute;n bằng thẻ ATM nội địa.</p>\r\n\r\n<p><b>Hướng d&acirc;̃n chi ti&ecirc;́t cách thức thanh toán</b></p>\r\n\r\n<p><strong><i>3. Thanh to&aacute;n bằng thẻ ATM nội địa</i></strong></p>\r\n\r\n<p>Đối với kh&aacute;ch h&agrave;ng thanh to&aacute;n qua.</p>\r\n\r\n<p>Điều kiện để chọn h&igrave;nh thức thanh to&aacute;n ATM l&agrave; thẻ của qu&yacute; kh&aacute;ch đ&atilde; được đăng k&yacute; sử dụng online banking. Hinamecard.com hiện hỗ trợ thanh to&aacute;n bằng thẻ ATM cho ng&acirc;n h&agrave;ng:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ngay sau khi nhận được đơn h&agrave;ng, hinamecard.com sẽ kiểm tra giao dịch thanh to&aacute;n. Nếu giao dịch th&agrave;nh c&ocirc;ng, hinamecard.com sẽ tiến h&agrave;nh thực hiện đơn h&agrave;ng ngay v&agrave; giao h&agrave;ng trong thời gian quy định</p>', '/ckfinder/uploads/images/Admin/Banner/trang-dau.png', NULL, NULL, 'Chính sách đổi trả', 'Chính sách đổi trả', 'Chính sách đổi trả', NULL, '2023-06-29 03:30:15', '2023-06-29 03:30:15'),
(6, 'Hướng dẫn sử dụng', 'huong-dan-su-dung', '<h1 style=\"text-align: center;\">Hướng Dẫn Sử Dụng Danh Thiếp Th&ocirc;ng Minh&nbsp;<strong>HINAMECARD</strong></h1>\r\n\r\n<p>Với&nbsp;<a href=\"https://hinamecard.com/\">Danh thiếp th&ocirc;ng minh HINAMECARD</a>, việc chia sẻ th&ocirc;ng tin cho bạn b&egrave;, đối t&aacute;c đ&atilde; trở n&ecirc;n nhanh ch&oacute;ng v&agrave; dễ d&agrave;ng hơn bao giờ hết. Với&nbsp;&ldquo;c&ocirc;ng nghệ một chạm&rdquo;&nbsp;bạn c&oacute; thể chia sẻ tất cả th&ocirc;ng tin m&agrave; bạn muốn như Số điện thoại, Email, Zalo, Facebook,&hellip;​</p>\r\n\r\n<p><strong>K&iacute;ch hoạt v&agrave; sử dụng Danh thiếp&nbsp;th&ocirc;ng minh</strong>&nbsp;<strong>HINAMECARD</strong>&nbsp;nhanh gọn<strong>&nbsp;&ldquo;trong 5 ph&uacute;t với 5 bước đơn giản&rdquo;:</strong></p>\r\n\r\n<p><img alt=\"\" decoding=\"async\" height=\"687\" src=\"https://hinamecard.com/wp-content/uploads/2023/05/huong-dan-su-dung-106.jpg\" width=\"1380\" /></p>\r\n\r\n<h2><u><b>Bước 1: Đăng k&yacute; t&agrave;i khoản HINAMECARD</b></u></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ndash; Scan m&atilde; QR code ở mặt sau thẻ để tiến h&agrave;nh đăng k&yacute; th&ocirc;ng tin t&agrave;i khoản c&aacute; nh&acirc;n tr&ecirc;n hệ thống của HINAMECARD.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ndash; Điền đầy đủ c&aacute;c th&ocirc;ng tin v&agrave;o trang Đăng k&yacute; t&agrave;i khoản HINAMECARD theo hướng dẫn cụ thể sau:</p>\r\n\r\n<p><img alt=\"\" decoding=\"async\" height=\"710\" src=\"https://hinamecard.com/wp-content/uploads/2023/05/huong-dan-su-dung-106-1.jpg\" width=\"1285\" /></p>\r\n\r\n<p>&ndash; Sau khi điền đầy đủ th&ocirc;ng tin cho&nbsp;danh thiếp th&ocirc;ng minh HINAMECARD, c&aacute;c bạn đăng nhập hệ thống HINAMECARD để k&iacute;ch hoạt v&agrave; sử dụng danh thiếp th&ocirc;ng minh nh&eacute;:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" decoding=\"async\" height=\"715\" src=\"https://hinamecard.com/wp-content/uploads/2023/05/huong-dan-su-dung-106-2.jpg\" width=\"1283\" /></p>\r\n\r\n<h2><u><b>Bước 2: Chỉnh sửa trang c&aacute; nh&acirc;n HINAMECARD</b></u></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ndash; Vẻ bề ngo&agrave;i lu&ocirc;n lu&ocirc;n l&agrave; thứ rất quan trọng. C&aacute;c bạn h&atilde;y tạo cho m&igrave;nh một vẻ ngo&agrave;i HINAMECARD thật cool ngầu nh&eacute; 😉</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" decoding=\"async\" height=\"723\" src=\"https://hinamecard.com/wp-content/uploads/2023/05/huong-dan-su-dung-106-3.jpg\" width=\"1312\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><b><u>Bước 3: Chỉnh sửa v&agrave; quản l&yacute; link</u>&nbsp;&nbsp;&nbsp;</b></h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ndash; Tiếp theo, để th&ecirc;m v&agrave;o danh thiếp th&ocirc;ng minh HINAMECARD c&aacute;c th&ocirc;ng tin mạng x&atilde; hội Facebook, Zalo, Instagram, TikTok &hellip; C&aacute;c bạn đến phần QUẢN L&Yacute; LINK, chọn &ldquo;Th&ecirc;m Link&rdquo;. Hệ thống thẻ HINAMECARD sẽ cho bạn chọn loại t&agrave;i khoản v&agrave; th&ecirc;m đường link ph&ugrave; hợp.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" decoding=\"async\" src=\"https://hinamecard.com/wp-content/uploads/2023/05/huong-dan-su-dung-106-4.jpg\" /><img alt=\"\" decoding=\"async\" src=\"https://hinamecard.com/wp-content/uploads/2023/05/huong-dan-su-dung-106-5.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><u><b>Hướng dẫn c&aacute;ch lấy link c&aacute;c mạng x&atilde; hội:</b></u></h1>\r\n\r\n<h3><b>1. Facebook:</b><br />\r\n&ndash; Truy cập v&agrave;o trang c&aacute; nh&acirc;n của bạn, chọn n&uacute;t &ldquo;&hellip;&rdquo; ⮕ &ldquo;Sao ch&eacute;p li&ecirc;n kết&rdquo; v&agrave; d&aacute;n v&agrave;o &ocirc; trống để th&ecirc;m Link Facebook cho card visit th&ocirc;ng minh HINAMECARD của bạn.</h3>\r\n\r\n<p><img alt=\"\" decoding=\"async\" src=\"https://hinamecard.com/wp-content/uploads/2023/05/huong-dan-su-dung-106-6.jpg\" /></p>\r\n\r\n<h3><b>2. Instagram:</b><br />\r\n&ndash; C&aacute;c bạn chỉ cần copy hoặc điền t&ecirc;n người d&ugrave;ng của m&igrave;nh v&agrave;o &ocirc; trống để th&ecirc;m link v&agrave;o card visit th&ocirc;ng minh HINAMECARD.</h3>\r\n\r\n<p><img alt=\"\" decoding=\"async\" src=\"https://hinamecard.com/wp-content/uploads/2023/05/huong-dan-su-dung-106-7.jpg\" /></p>\r\n\r\n<h3><b>3. Youtube:</b><br />\r\n&ndash; Truy cập v&agrave;o k&ecirc;nh Youtube của bạn, chọn n&uacute;t &ldquo;&hellip;&rdquo; ⮕ &ldquo;Chia sẻ&rdquo; ⮕ &ldquo;Sao ch&eacute;p đường dẫn&rdquo; v&agrave; d&aacute;n v&agrave;o &ocirc; trống để th&ecirc;m Link v&agrave;o danh thiếp th&ocirc;ng minh HINAMECARD.</h3>\r\n\r\n<p><img alt=\"\" decoding=\"async\" src=\"https://hinamecard.com/wp-content/uploads/2023/05/huong-dan-su-dung-106-8.jpg\" /></p>\r\n\r\n<h3><b>4. TikTok:<br />\r\n&ndash;&nbsp;</b>Truy cập v&agrave;o k&ecirc;nh TikTok của bạn, chọn n&uacute;t &ldquo;&hellip;&rdquo; ⮕ &ldquo;Chia sẻ hồ sơ&rdquo; ⮕ &ldquo;Sao ch&eacute;p li&ecirc;n kết&rdquo; v&agrave; d&aacute;n v&agrave;o &ocirc; trống để th&ecirc;m Link v&agrave;o thẻ HINAMECARD.</h3>\r\n\r\n<p><img alt=\"\" decoding=\"async\" src=\"https://hinamecard.com/wp-content/uploads/2023/05/huong-dan-su-dung-106-9.jpg\" /></p>\r\n\r\n<h3><b>5. LinkedIn:<br />\r\n&ndash;&nbsp;</b>&nbsp;Truy cập v&agrave;o trang c&aacute; nh&acirc;n LinkedIn&nbsp;của bạn, chọn n&uacute;t &ldquo;&hellip;&rdquo; ⮕&nbsp;&ldquo;Chia sẻ hồ sơ&rdquo; v&agrave; d&aacute;n v&agrave;o &ocirc; trống&nbsp;để th&ecirc;m Link v&agrave;o thẻ HINAMECARD.</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" decoding=\"async\" src=\"https://hinamecard.com/wp-content/uploads/2023/05/huong-dan-su-dung-106-10.jpg\" /></p>\r\n\r\n<h3><b>6. Spotify:<br />\r\n&ndash;</b>&nbsp;Truy cập v&agrave;o b&agrave;i h&aacute;t/playlist&nbsp;m&agrave;&nbsp;bạn y&ecirc;u th&iacute;ch, chọn n&uacute;t &ldquo;&hellip;&rdquo; ⮕&nbsp;&ldquo;Chia sẻ&rdquo; ⮕&nbsp;&ldquo;Sao ch&eacute;p li&ecirc;n kết&rdquo; v&agrave; d&aacute;n v&agrave;o &ocirc; trống để th&ecirc;m Link v&agrave;o danh thiếp&nbsp;th&ocirc;ng minh HINAMECARD.</h3>\r\n\r\n<p><img alt=\"\" decoding=\"async\" src=\"https://hinamecard.com/wp-content/uploads/2023/05/huong-dan-su-dung-106-11.jpg\" /></p>\r\n\r\n<h3><b>7. Nh&uacute;ng Youtube:</b><br />\r\n&ndash; Truy cập video Youtube m&agrave; bạn muốn chia sẻ, chọn n&uacute;t &ldquo;Chia sẻ&rdquo; ⮕ &ldquo;Sao ch&eacute;p đường dẫn&rdquo; v&agrave; d&aacute;n v&agrave;o &ocirc; trống để th&ecirc;m video cho thẻ HINAMECARD.</h3>\r\n\r\n<p><img alt=\"\" decoding=\"async\" src=\"https://hinamecard.com/wp-content/uploads/2023/05/huong-dan-su-dung-106-12.jpg\" /></p>\r\n\r\n<h3><b>7. C&aacute; nh&acirc;n ho&aacute; đường Link:<br />\r\n&ndash;</b>&nbsp;Truy cập t&iacute;nh năng &ldquo;Đường Link Kh&aacute;c ( N&acirc;ng Cao )&rdquo;, &ldquo;Mi&ecirc;u tả đường li&ecirc;n kết&rdquo; ⮕&nbsp;&ldquo;Nhập đường dẫn li&ecirc;n kết&rdquo;&nbsp;⮕&nbsp;&ldquo;Th&ecirc;m ảnh&rdquo;.</h3>\r\n\r\n<p><img alt=\"\" decoding=\"async\" src=\"https://hinamecard.com/wp-content/uploads/2023/05/huong-dan-su-dung-106-13.jpg\" /></p>\r\n\r\n<p><b>8. Số T&agrave;i Khoản Ng&acirc;n H&agrave;ng:<br />\r\n&ndash;&nbsp;</b>Truy cập t&iacute;nh năng &ldquo;T&agrave;i Khoản Ng&acirc;n H&agrave;ng&rdquo;, chọn ng&acirc;n h&agrave;ng m&agrave; bạn muốn chia sẻ ⮕ nhập th&ocirc;ng tin số t&agrave;i khoản ng&acirc;n h&agrave;ng cho thẻ HINAMECARD.</p>\r\n\r\n<p><img alt=\"\" decoding=\"async\" src=\"https://hinamecard.com/wp-content/uploads/2023/05/huong-dan-su-dung-106-14.jpg\" /></p>\r\n\r\n<p>Ngo&agrave;i c&aacute;c trang mạng x&atilde; hội tr&ecirc;n, danh thiếp th&ocirc;ng minh HINAMECARD c&ograve;n c&oacute; thể cho bạn chia sẻ rất nhiều th&ocirc;ng tin kh&aacute;c: Email, Số điện thoại, Zalo, V&iacute; Momo&hellip;</p>\r\n\r\n<p><img alt=\"\" decoding=\"async\" src=\"https://hinamecard.com/wp-content/uploads/2023/05/huong-dan-su-dung-106-15.jpg\" /></p>\r\n\r\n<p>Hơn thế nữa, bạn c&ograve;n c&oacute; thể t&ugrave;y chỉnh thứ tự ưu ti&ecirc;n, chỉnh sửa v&agrave; x&oacute;a link của c&aacute;c t&agrave;i khoản mạng x&atilde; hội của bạn bằng c&aacute;c thao t&aacute;c cực k&igrave; đơn giản 😉</p>\r\n\r\n<p><img alt=\"\" decoding=\"async\" src=\"https://hinamecard.com/wp-content/uploads/2023/05/huong-dan-su-dung-106-16.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><u><b>Bước 4: C&aacute; nh&acirc;n h&oacute;a t&agrave;i khoản HINAMECARD</b></u></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Để tạo được ấn tượng đặc biệt, bạn cần phải c&oacute; &ldquo;chất&rdquo; ri&ecirc;ng. V&agrave; danh thiếp th&ocirc;ng minh HINAMECARD sẽ cung cấp cho bạn điều đ&oacute;.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; t&iacute;nh năng được c&aacute;c người d&ugrave;ng rất y&ecirc;u th&iacute;ch, cho ph&eacute;p bạn c&oacute; thể t&ugrave;y chỉnh m&agrave;u sắc trang c&aacute; nh&acirc;n, gi&uacute;p bạn x&acirc;y dựng &ldquo;thương hiệu c&aacute; nh&acirc;n&rdquo; thật nổi bật 😎</p>\r\n\r\n<p><img alt=\"\" decoding=\"async\" src=\"https://hinamecard.com/wp-content/uploads/2023/05/huong-dan-su-dung-106-17.jpg\" /></p>\r\n\r\n<p>Sau khi ho&agrave;n tất, đừng qu&ecirc;n lưu th&ocirc;ng tin để HINAMECARD cập nhật lại giao diện cho m&igrave;nh nh&eacute;.</p>\r\n\r\n<p><img alt=\"\" decoding=\"async\" src=\"https://hinamecard.com/wp-content/uploads/2023/05/huong-dan-su-dung-106-18.jpg\" /></p>\r\n\r\n<h1><u><b>Bước 5: Ho&agrave;n th&agrave;nh k&iacute;ch hoạt v&agrave; sử dụng danh thiếp&nbsp;th&ocirc;ng minh</b></u></h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>H&atilde;y c&ugrave;ng xem lại v&agrave; kiểm tra xem c&ograve;n thiếu g&igrave; kh&ocirc;ng nh&eacute;!</p>\r\n\r\n<p><img alt=\"\" decoding=\"async\" src=\"https://hinamecard.com/wp-content/uploads/2023/05/huong-dan-su-dung-106-19.jpg\" /></p>\r\n\r\n<p>Vậy l&agrave; bạn đ&atilde; k&iacute;ch hoạt th&agrave;nh c&ocirc;ng danh thiếp th&ocirc;ng minh HINAMECARD d&agrave;nh cho ri&ecirc;ng m&igrave;nh rồi đấy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><b><u>Vị tr&iacute; sử dụng t&iacute;nh năng &ldquo;Chạm&rdquo;</u></b></p>\r\n\r\n<p>&ndash; V&igrave; vị tr&iacute; t&iacute;ch hợp t&iacute;nh năng&nbsp;&rdquo; Chạm &rdquo;&nbsp;của mỗi d&ograve;ng điện thoại sẽ kh&aacute;c nhau, xin vui l&ograve;ng lưu &yacute; c&aacute;c vị tr&iacute; dưới đ&acirc;y để sử dụng t&iacute;nh&nbsp;năng &rdquo; Chạm &rdquo; tr&ecirc;n điện thoại của bạn nh&eacute; 😉</p>\r\n\r\n<p>+ iPhone: Vị tr&iacute; chạm sẽ l&agrave; ph&iacute;a tr&ecirc;n điện thoại.</p>\r\n\r\n<p>+ Hệ điều h&agrave;nh Android: Vị tr&iacute; chạm sẽ l&agrave; ở giữa mặt sau điện thoại hoặc kế b&ecirc;n camera.</p>\r\n\r\n<p><img alt=\"\" decoding=\"async\" src=\"https://hinamecard.com/wp-content/uploads/2023/05/huong-dan-su-dung-106-20.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><b><u>C&aacute;ch bật t&iacute;nh năng &ldquo;Chạm&rdquo; NFC với c&aacute;c d&ograve;ng m&aacute;y</u></b></p>\r\n\r\n<h1><u><b>D&agrave;nh cho d&ograve;ng iPhone 7-X đ&atilde; cập nhật iOS 14 trở l&ecirc;n:</b></u></h1>\r\n\r\n<p>&ndash; Bạn vui l&ograve;ng truy cập v&agrave;o C&agrave;i Đặt, ở đ&acirc;y bạn h&atilde;y chọn &rdquo;Trung T&acirc;m Điều Khiển&rdquo;&nbsp;⮕ th&ecirc;m t&iacute;nh năng&nbsp;&rdquo;Đầu đọc thẻ NFC&rdquo;. Sau đ&oacute;, bạn chỉ cần k&eacute;o thanh c&ocirc;ng cụ xuống v&agrave; nhấp v&agrave;o icon như h&igrave;nh th&igrave; sẽ sử dụng được t&iacute;nh năng chạm thẻ nh&eacute; 😄.</p>\r\n\r\n<p><img alt=\"\" decoding=\"async\" src=\"https://hinamecard.com/wp-content/uploads/2023/05/huong-dan-su-dung-106-21.jpg\" /></p>\r\n\r\n<h1><u><b>D&agrave;nh cho c&aacute;c d&ograve;ng m&aacute;y thuộc hệ điều h&agrave;nh Android&nbsp;tương th&iacute;ch với NFC:</b></u></h1>\r\n\r\n<p>&ndash; Bạn vui l&ograve;ng truy cập v&agrave;o C&agrave;i Đặt, ở đ&acirc;y bạn h&atilde;y chọn &rdquo;Kết Nối&rdquo; hoặc t&igrave;m kiếm với từ kho&aacute; &ldquo;NFC&rdquo;&nbsp;⮕ chọn &rdquo;C&agrave;i đặt&nbsp;NFC&rdquo;&nbsp;⮕ Chạm v&agrave;o ph&iacute;m Tắt/Mở NFC. Sau đ&oacute;, bạn đ&atilde; c&oacute; thể&nbsp;sử dụng được t&iacute;nh năng chạm thẻ nh&eacute; 😄.</p>\r\n\r\n<p><img alt=\"\" decoding=\"async\" src=\"https://hinamecard.com/wp-content/uploads/2023/05/huong-dan-su-dung-106-22.jpg\" /></p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh sử dụng, nếu c&aacute;c bạn c&oacute; kh&oacute; khăn v&agrave; thắc mắc, đừng ngần ngại li&ecirc;n hệ HINAMECARD team qua:email hinamecard.ztm@gmail hoặc gọi đến SĐT/Zalo:0987405795 để được tư vấn v&agrave; hỗ trợ nh&eacute;.</p>\r\n\r\n<p>&nbsp;</p>', '/ckfinder/uploads/images/Admin/Banner/trang-dau.png', NULL, NULL, 'Hướng dẫn sử dụng', 'Hướng dẫn sử dụng', 'Hướng dẫn sử dụng', NULL, '2023-06-29 03:31:34', '2023-06-29 08:01:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Quản lý quản trị', 'web', NULL, NULL, '2023-06-12 19:34:35', '2023-06-12 19:34:35'),
(2, 'Quản lý người dùng', 'web', '', NULL, '2023-06-12 19:34:42', '2023-06-12 19:34:42'),
(3, 'Quản lý nhóm người dùng', 'web', '', NULL, '2023-06-12 19:35:05', '2023-06-12 19:35:05'),
(4, 'Quản lý ứng dụng', 'web', '', NULL, '2023-06-12 19:35:12', '2023-06-12 19:35:12'),
(5, 'Liên hệ', 'web', '', NULL, '2023-06-12 19:35:18', '2023-06-12 19:35:18'),
(6, 'Cài đặt', 'web', '', NULL, '2023-06-12 19:35:24', '2023-06-12 19:35:24'),
(8, 'Trang mới', 'web', '', NULL, '2023-06-12 19:48:46', '2023-06-12 19:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'Chủ sở hữu', 'web', '', '2023-06-12 19:48:05', '2023-06-12 19:48:05'),
(2, 'Admin', 'web', '', '2023-06-12 19:48:34', '2023-08-26 05:55:09'),
(10, 'Quản lý khách hàng', 'web', NULL, '2023-08-26 05:54:17', '2023-08-26 05:54:17');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(8, 1),
(3, 2),
(5, 2),
(6, 2),
(8, 2),
(2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `type`, `content`, `meta`, `created_at`, `updated_at`) VALUES
(1, 'general', '{\"favicon\":\"\\/ckfinder\\/uploads\\/images\\/Admin\\/lkcwy7z2.png\",\"logo\":\"\\/ckfinder\\/uploads\\/images\\/Admin\\/lkcwy7z2.png\",\"logo_web\":\"\\/ckfinder\\/uploads\\/images\\/Admin\\/lkcwy7z2.png\",\"company\":\"sMarT.card\",\"address\":\"Thanh Kh\\u00ea, X\\u00e3 Ti\\u00ean Ch\\u00e2u, Huy\\u1ec7n Ti\\u00ean Ph\\u01b0\\u1edbc, T\\u1ec9nh Qu\\u1ea3ng Nam, Vi\\u1ec7t Nam\",\"phone\":\"0774097832\",\"email\":\"smart.card@gmail\",\"website\":\"https:\\/\\/smart.card.com\",\"social\":{\"twitter\":\"https:\\/\\/twitter.com\\/login\",\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\",\"skype\":null,\"Linkedin\":null,\"zalo\":\"https:\\/\\/chat.zalo.me\\/\",\"youtube\":null},\"site_title\":\"sMarT.card\",\"site_description\":\"sMarT.card\",\"site_keyword\":\"sMarT.card\"}', NULL, '2023-06-08 01:35:58', '2023-08-25 08:16:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `date`, `name`, `title`, `status`, `image`, `password`, `remember_token`, `level`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-06-01', 'Super Admin', 'ADMIN', 1, '/ckfinder/uploads/images/Admin/Image-Admin/hinh-nen-4k-dep-nhat-cho-may-tinh-va-dien-thoai34-scaled.jpg', '$2y$10$uvyvKv4OZ/tkSgZw65ZxvuB48PPxmI0AsM3460fU6EFvaU5mpuOXW', 's96Om5sz8BynPSGLWR8vu1lWwcnS8mfsNnNKVJrHrlxbfijtglOOqadpy6SQ', 1, '2023-06-12 18:29:21', '2023-06-23 03:43:10'),
(2, 'admin2', '2023-06-13', 'Admin', 'Admin Test', 1, '/ckfinder/uploads/images/Admin/Image-Customer/Untitled-1.jpg', '$2y$10$TciixziUxf79ZKCnsI5W8.MR/y5HTqipnYKkK4qdTQh2LGjaP7772', NULL, NULL, '2023-06-13 04:25:04', '2023-08-26 06:00:04'),
(5, 'admin3', '2023-08-26', 'Admin3', 'Quản lý', 1, '/ckfinder/uploads/images/Admin/Image-Admin/j9rtgq4a.png', '$2y$10$vtQWGYcNID20mJQghxYDyOJDY2NQr5/rr7x5sfExND/XXf/xmb2FO', NULL, NULL, '2023-08-26 05:57:26', '2023-08-26 05:57:26');

-- --------------------------------------------------------

--
-- Table structure for table `user_notify`
--

CREATE TABLE `user_notify` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `file` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visit_log`
--

CREATE TABLE `visit_log` (
  `id` bigint UNSIGNED NOT NULL,
  `ip` text COLLATE utf8mb4_unicode_ci,
  `browser` text COLLATE utf8mb4_unicode_ci,
  `os` text COLLATE utf8mb4_unicode_ci,
  `user` text COLLATE utf8mb4_unicode_ci,
  `country` text COLLATE utf8mb4_unicode_ci,
  `region` text COLLATE utf8mb4_unicode_ci,
  `city` text COLLATE utf8mb4_unicode_ci,
  `zip` text COLLATE utf8mb4_unicode_ci,
  `timezone` text COLLATE utf8mb4_unicode_ci,
  `lt,ln` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visit_log`
--

INSERT INTO `visit_log` (`id`, `ip`, `browser`, `os`, `user`, `country`, `region`, `city`, `zip`, `timezone`, `lt,ln`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.0', 'Edge', 'Windows', 'admin', 'United States', NULL, 'New Haven', '06510', 'America/New_York', NULL, '2023-07-06 08:24:21', '2023-07-06 08:24:21'),
(7, '14.174.104.94', 'Edge', 'Windows', NULL, 'Vietnam', 'Da Nang', 'Da Nang', '', 'Asia/Ho_Chi_Minh', ',108.2215', '2023-07-06 08:44:48', '2023-07-06 08:44:48'),
(8, '14.174.104.94', 'Edge', 'Windows', NULL, 'Vietnam', 'Da Nang', 'Da Nang', '', 'Asia/Ho_Chi_Minh', ',108.2215', '2023-07-06 08:45:09', '2023-07-06 08:45:09'),
(9, '14.174.104.94', 'Edge', 'Windows', NULL, 'Vietnam', 'Da Nang', 'Da Nang', '', 'Asia/Ho_Chi_Minh', ',108.2215', '2023-07-06 08:46:03', '2023-07-06 08:46:03'),
(10, '14.174.104.94', 'Edge', 'Windows', NULL, 'Vietnam', 'Da Nang', 'Da Nang', '', 'Asia/Ho_Chi_Minh', ',108.2215', '2023-07-06 08:46:13', '2023-07-06 08:46:13'),
(11, '14.174.104.94', 'Edge', 'Windows', NULL, 'Vietnam', 'Da Nang', 'Da Nang', '', 'Asia/Ho_Chi_Minh', ',108.2215', '2023-07-06 08:46:18', '2023-07-06 08:46:18'),
(12, '14.174.104.94', 'Edge', 'Windows', NULL, 'Vietnam', 'Da Nang', 'Da Nang', '', 'Asia/Ho_Chi_Minh', ',108.2215', '2023-07-06 08:46:34', '2023-07-06 08:46:34'),
(13, '14.174.104.94', 'Edge', 'Windows', NULL, 'Vietnam', 'Da Nang', 'Da Nang', '', 'Asia/Ho_Chi_Minh', ',108.2215', '2023-07-06 08:49:45', '2023-07-06 08:49:45'),
(14, '14.174.104.94', 'Edge', 'Windows', NULL, 'Vietnam', 'Da Nang', 'Da Nang', '', 'Asia/Ho_Chi_Minh', ',108.2215', '2023-07-06 08:50:28', '2023-07-06 08:50:28'),
(15, '14.174.104.94', 'Edge', 'Windows', NULL, 'Vietnam', 'Da Nang', 'Da Nang', '', 'Asia/Ho_Chi_Minh', ',108.2215', '2023-07-06 08:50:31', '2023-07-06 08:50:31'),
(16, '14.174.104.94', 'Edge', 'Windows', NULL, 'Vietnam', 'Da Nang', 'Da Nang', '', 'Asia/Ho_Chi_Minh', ',108.2215', '2023-07-06 08:50:48', '2023-07-06 08:50:48'),
(17, '14.174.104.94', 'Edge', 'Windows', NULL, 'Vietnam', 'Da Nang', 'Da Nang', '', 'Asia/Ho_Chi_Minh', ',108.2215', '2023-07-06 08:50:57', '2023-07-06 08:50:57'),
(18, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-06 09:16:26', '2023-07-06 09:16:26'),
(19, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-06 09:17:38', '2023-07-06 09:17:38'),
(20, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-06 09:35:31', '2023-07-06 09:35:31'),
(21, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-06 09:35:33', '2023-07-06 09:35:33'),
(22, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-06 09:42:50', '2023-07-06 09:42:50'),
(23, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-07 09:02:35', '2023-07-07 09:02:35'),
(24, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:13:38', '2023-07-10 02:13:38'),
(25, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:14:24', '2023-07-10 02:14:24'),
(26, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:14:29', '2023-07-10 02:14:29'),
(27, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:14:35', '2023-07-10 02:14:35'),
(28, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:14:41', '2023-07-10 02:14:41'),
(29, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:15:04', '2023-07-10 02:15:04'),
(30, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:15:08', '2023-07-10 02:15:08'),
(31, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:15:21', '2023-07-10 02:15:21'),
(32, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:15:32', '2023-07-10 02:15:32'),
(33, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:15:32', '2023-07-10 02:15:32'),
(34, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:15:47', '2023-07-10 02:15:47'),
(35, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:15:52', '2023-07-10 02:15:52'),
(36, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:15:54', '2023-07-10 02:15:54'),
(37, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:15:55', '2023-07-10 02:15:55'),
(38, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:15:56', '2023-07-10 02:15:56'),
(39, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:16:06', '2023-07-10 02:16:06'),
(40, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:16:21', '2023-07-10 02:16:21'),
(41, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:16:23', '2023-07-10 02:16:23'),
(42, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:16:29', '2023-07-10 02:16:29'),
(43, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:16:47', '2023-07-10 02:16:47'),
(44, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:16:56', '2023-07-10 02:16:56'),
(45, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:17:02', '2023-07-10 02:17:02'),
(46, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:17:05', '2023-07-10 02:17:05'),
(47, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:17:07', '2023-07-10 02:17:07'),
(48, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:17:08', '2023-07-10 02:17:08'),
(49, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:17:10', '2023-07-10 02:17:10'),
(50, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:17:11', '2023-07-10 02:17:11'),
(51, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:17:16', '2023-07-10 02:17:16'),
(52, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:17:18', '2023-07-10 02:17:18'),
(53, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:17:20', '2023-07-10 02:17:20'),
(54, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:17:22', '2023-07-10 02:17:22'),
(55, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:17:27', '2023-07-10 02:17:27'),
(56, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:17:39', '2023-07-10 02:17:39'),
(57, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:17:42', '2023-07-10 02:17:42'),
(58, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:17:44', '2023-07-10 02:17:44'),
(59, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:17:48', '2023-07-10 02:17:48'),
(60, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:17:51', '2023-07-10 02:17:51'),
(61, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:18:01', '2023-07-10 02:18:01'),
(62, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:18:03', '2023-07-10 02:18:03'),
(63, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:18:04', '2023-07-10 02:18:04'),
(64, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:18:06', '2023-07-10 02:18:06'),
(65, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:18:06', '2023-07-10 02:18:06'),
(66, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:22:38', '2023-07-10 02:22:38'),
(67, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:22:44', '2023-07-10 02:22:44'),
(68, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:23:05', '2023-07-10 02:23:05'),
(69, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:23:10', '2023-07-10 02:23:10'),
(70, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:23:11', '2023-07-10 02:23:11'),
(71, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:23:28', '2023-07-10 02:23:28'),
(72, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:23:29', '2023-07-10 02:23:29'),
(73, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 02:27:13', '2023-07-10 02:27:13'),
(74, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:23:31', '2023-07-10 03:23:31'),
(75, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:23:39', '2023-07-10 03:23:39'),
(76, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:23:41', '2023-07-10 03:23:41'),
(77, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:23:44', '2023-07-10 03:23:44'),
(78, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:23:47', '2023-07-10 03:23:47'),
(79, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:23:50', '2023-07-10 03:23:50'),
(80, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:23:52', '2023-07-10 03:23:52'),
(81, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:23:53', '2023-07-10 03:23:53'),
(82, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:23:54', '2023-07-10 03:23:54'),
(83, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:23:56', '2023-07-10 03:23:56'),
(84, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:27:34', '2023-07-10 03:27:34'),
(85, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:27:37', '2023-07-10 03:27:37'),
(86, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:27:39', '2023-07-10 03:27:39'),
(87, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:27:41', '2023-07-10 03:27:41'),
(88, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:27:46', '2023-07-10 03:27:46'),
(89, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:27:47', '2023-07-10 03:27:47'),
(90, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:28:24', '2023-07-10 03:28:24'),
(91, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:28:28', '2023-07-10 03:28:28'),
(92, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:28:38', '2023-07-10 03:28:38'),
(93, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:28:40', '2023-07-10 03:28:40'),
(94, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:28:41', '2023-07-10 03:28:41'),
(95, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:28:42', '2023-07-10 03:28:42'),
(96, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:28:44', '2023-07-10 03:28:44'),
(97, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:30:06', '2023-07-10 03:30:06'),
(98, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:30:12', '2023-07-10 03:30:12'),
(99, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:30:17', '2023-07-10 03:30:17'),
(100, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:30:18', '2023-07-10 03:30:18'),
(101, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:30:19', '2023-07-10 03:30:19'),
(102, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:30:22', '2023-07-10 03:30:22'),
(103, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:30:24', '2023-07-10 03:30:24'),
(104, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:30:26', '2023-07-10 03:30:26'),
(105, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:30:30', '2023-07-10 03:30:30'),
(106, '127.0.0.0', 'Edge', 'Windows', 'minhtri12345', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:30:31', '2023-07-10 03:30:31'),
(107, '127.0.0.0', 'Edge', 'Windows', 'minhtri12345', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:30:33', '2023-07-10 03:30:33'),
(108, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:30:33', '2023-07-10 03:30:33'),
(109, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:30:36', '2023-07-10 03:30:36'),
(110, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:30:38', '2023-07-10 03:30:38'),
(111, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:30:40', '2023-07-10 03:30:40'),
(112, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:30:42', '2023-07-10 03:30:42'),
(113, '127.0.0.0', 'Edge', 'Windows', 'minhtri12345', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:30:42', '2023-07-10 03:30:42'),
(114, '127.0.0.0', 'Edge', 'Windows', 'minhtri12345', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:30:46', '2023-07-10 03:30:46'),
(115, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:30:46', '2023-07-10 03:30:46'),
(116, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:30:48', '2023-07-10 03:30:48'),
(117, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:33:19', '2023-07-10 03:33:19'),
(118, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:33:24', '2023-07-10 03:33:24'),
(119, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:33:29', '2023-07-10 03:33:29'),
(120, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:33:59', '2023-07-10 03:33:59'),
(121, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:34:03', '2023-07-10 03:34:03'),
(122, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:35:19', '2023-07-10 03:35:19'),
(123, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:35:45', '2023-07-10 03:35:45'),
(124, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:35:47', '2023-07-10 03:35:47'),
(125, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:36:03', '2023-07-10 03:36:03'),
(126, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:36:35', '2023-07-10 03:36:35'),
(127, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:36:38', '2023-07-10 03:36:38'),
(128, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:36:41', '2023-07-10 03:36:41'),
(129, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:36:42', '2023-07-10 03:36:42'),
(130, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:36:44', '2023-07-10 03:36:44'),
(131, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:36:49', '2023-07-10 03:36:49'),
(132, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:36:51', '2023-07-10 03:36:51'),
(133, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:36:53', '2023-07-10 03:36:53'),
(134, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:36:59', '2023-07-10 03:36:59'),
(135, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:37:04', '2023-07-10 03:37:04'),
(136, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:37:09', '2023-07-10 03:37:09'),
(137, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:37:11', '2023-07-10 03:37:11'),
(138, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:37:13', '2023-07-10 03:37:13'),
(139, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:37:16', '2023-07-10 03:37:16'),
(140, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:37:16', '2023-07-10 03:37:16'),
(141, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:37:18', '2023-07-10 03:37:18'),
(142, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:37:18', '2023-07-10 03:37:18'),
(143, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:37:26', '2023-07-10 03:37:26'),
(144, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:37:27', '2023-07-10 03:37:27'),
(145, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:37:30', '2023-07-10 03:37:30'),
(146, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:37:32', '2023-07-10 03:37:32'),
(147, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:37:34', '2023-07-10 03:37:34'),
(148, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:37:35', '2023-07-10 03:37:35'),
(149, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:37:36', '2023-07-10 03:37:36'),
(150, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:37:37', '2023-07-10 03:37:37'),
(151, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:37:37', '2023-07-10 03:37:37'),
(152, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:39:33', '2023-07-10 03:39:33'),
(153, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:39:44', '2023-07-10 03:39:44'),
(154, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:40:06', '2023-07-10 03:40:06'),
(155, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:40:07', '2023-07-10 03:40:07'),
(156, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:40:08', '2023-07-10 03:40:08'),
(157, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:40:08', '2023-07-10 03:40:08'),
(158, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:40:11', '2023-07-10 03:40:11'),
(159, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:40:13', '2023-07-10 03:40:13'),
(160, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:40:14', '2023-07-10 03:40:14'),
(161, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:40:18', '2023-07-10 03:40:18'),
(162, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:40:22', '2023-07-10 03:40:22'),
(163, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:40:27', '2023-07-10 03:40:27'),
(164, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:45:18', '2023-07-10 03:45:18'),
(165, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 03:45:24', '2023-07-10 03:45:24'),
(166, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:26:15', '2023-07-10 04:26:15'),
(167, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:27:20', '2023-07-10 04:27:20'),
(168, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:28:21', '2023-07-10 04:28:21'),
(169, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:29:16', '2023-07-10 04:29:16'),
(170, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:29:22', '2023-07-10 04:29:22'),
(171, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:30:10', '2023-07-10 04:30:10'),
(172, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:42:37', '2023-07-10 04:42:37'),
(173, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:42:39', '2023-07-10 04:42:39'),
(174, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:43:25', '2023-07-10 04:43:25'),
(175, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:44:02', '2023-07-10 04:44:02'),
(176, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:46:47', '2023-07-10 04:46:47'),
(177, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:48:06', '2023-07-10 04:48:06'),
(178, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:48:11', '2023-07-10 04:48:11'),
(179, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:48:34', '2023-07-10 04:48:34'),
(180, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:48:35', '2023-07-10 04:48:35'),
(181, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:48:37', '2023-07-10 04:48:37'),
(182, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:48:39', '2023-07-10 04:48:39'),
(183, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:48:40', '2023-07-10 04:48:40'),
(184, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:48:41', '2023-07-10 04:48:41'),
(185, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:48:52', '2023-07-10 04:48:52'),
(186, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:48:52', '2023-07-10 04:48:52'),
(187, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:49:07', '2023-07-10 04:49:07'),
(188, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:49:08', '2023-07-10 04:49:08'),
(189, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:49:10', '2023-07-10 04:49:10'),
(190, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:49:11', '2023-07-10 04:49:11'),
(191, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:49:12', '2023-07-10 04:49:12'),
(192, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:49:16', '2023-07-10 04:49:16'),
(193, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:49:17', '2023-07-10 04:49:17'),
(194, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:49:18', '2023-07-10 04:49:18'),
(195, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:49:20', '2023-07-10 04:49:20'),
(196, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:49:21', '2023-07-10 04:49:21'),
(197, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:49:24', '2023-07-10 04:49:24'),
(198, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:49:27', '2023-07-10 04:49:27'),
(199, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:49:31', '2023-07-10 04:49:31'),
(200, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:49:34', '2023-07-10 04:49:34'),
(201, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:49:47', '2023-07-10 04:49:47'),
(202, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:49:52', '2023-07-10 04:49:52'),
(203, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:49:53', '2023-07-10 04:49:53'),
(204, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:49:55', '2023-07-10 04:49:55'),
(205, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:50:29', '2023-07-10 04:50:29'),
(206, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:50:31', '2023-07-10 04:50:31'),
(207, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:50:33', '2023-07-10 04:50:33'),
(208, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:50:34', '2023-07-10 04:50:34'),
(209, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:50:35', '2023-07-10 04:50:35'),
(210, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:50:37', '2023-07-10 04:50:37'),
(211, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:50:37', '2023-07-10 04:50:37'),
(212, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:51:56', '2023-07-10 04:51:56'),
(213, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:51:59', '2023-07-10 04:51:59'),
(214, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:52:03', '2023-07-10 04:52:03'),
(215, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:53:07', '2023-07-10 04:53:07'),
(216, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:53:09', '2023-07-10 04:53:09'),
(217, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:53:16', '2023-07-10 04:53:16'),
(218, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:53:18', '2023-07-10 04:53:18'),
(219, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:53:19', '2023-07-10 04:53:19'),
(220, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:53:19', '2023-07-10 04:53:19'),
(221, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:53:21', '2023-07-10 04:53:21'),
(222, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:53:21', '2023-07-10 04:53:21'),
(223, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:58:58', '2023-07-10 04:58:58'),
(224, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:59:02', '2023-07-10 04:59:02'),
(225, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:59:04', '2023-07-10 04:59:04'),
(226, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:59:05', '2023-07-10 04:59:05'),
(227, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:59:07', '2023-07-10 04:59:07'),
(228, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:59:09', '2023-07-10 04:59:09'),
(229, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:59:25', '2023-07-10 04:59:25'),
(230, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:59:34', '2023-07-10 04:59:34'),
(231, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 04:59:47', '2023-07-10 04:59:47'),
(232, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 05:00:39', '2023-07-10 05:00:39'),
(233, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 05:00:51', '2023-07-10 05:00:51'),
(234, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 05:01:19', '2023-07-10 05:01:19'),
(235, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 05:01:23', '2023-07-10 05:01:23'),
(236, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 05:01:26', '2023-07-10 05:01:26'),
(237, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 05:01:33', '2023-07-10 05:01:33'),
(238, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 05:02:35', '2023-07-10 05:02:35'),
(239, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 05:02:35', '2023-07-10 05:02:35'),
(240, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 05:07:43', '2023-07-10 05:07:43'),
(241, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 05:07:45', '2023-07-10 05:07:45'),
(242, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 05:07:49', '2023-07-10 05:07:49'),
(243, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 05:07:54', '2023-07-10 05:07:54'),
(244, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 05:08:13', '2023-07-10 05:08:13'),
(245, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 05:08:45', '2023-07-10 05:08:45'),
(246, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 05:08:48', '2023-07-10 05:08:48'),
(247, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 05:08:55', '2023-07-10 05:08:55'),
(248, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 05:08:59', '2023-07-10 05:08:59'),
(249, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 05:09:04', '2023-07-10 05:09:04'),
(250, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 05:11:43', '2023-07-10 05:11:43'),
(251, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 05:12:21', '2023-07-10 05:12:21'),
(252, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 05:12:21', '2023-07-10 05:12:21'),
(253, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 05:12:21', '2023-07-10 05:12:21'),
(254, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 05:12:26', '2023-07-10 05:12:26'),
(255, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:42:53', '2023-07-10 06:42:53'),
(256, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:43:07', '2023-07-10 06:43:07'),
(257, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:43:12', '2023-07-10 06:43:12'),
(258, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:43:14', '2023-07-10 06:43:14'),
(259, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:44:57', '2023-07-10 06:44:57'),
(260, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:45:00', '2023-07-10 06:45:00'),
(261, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:46:49', '2023-07-10 06:46:49'),
(262, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:47:11', '2023-07-10 06:47:11'),
(263, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:47:15', '2023-07-10 06:47:15'),
(264, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:47:19', '2023-07-10 06:47:19'),
(265, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:47:22', '2023-07-10 06:47:22'),
(266, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:47:25', '2023-07-10 06:47:25'),
(267, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:47:44', '2023-07-10 06:47:44'),
(268, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:47:46', '2023-07-10 06:47:46'),
(269, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:48:06', '2023-07-10 06:48:06'),
(270, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:48:19', '2023-07-10 06:48:19'),
(271, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:48:39', '2023-07-10 06:48:39'),
(272, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:48:42', '2023-07-10 06:48:42'),
(273, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:48:45', '2023-07-10 06:48:45'),
(274, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:48:48', '2023-07-10 06:48:48'),
(275, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:49:43', '2023-07-10 06:49:43'),
(276, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:49:47', '2023-07-10 06:49:47'),
(277, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:51:36', '2023-07-10 06:51:36'),
(278, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:51:44', '2023-07-10 06:51:44'),
(279, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:51:49', '2023-07-10 06:51:49'),
(280, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:51:59', '2023-07-10 06:51:59'),
(281, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:52:02', '2023-07-10 06:52:02'),
(282, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:52:05', '2023-07-10 06:52:05'),
(283, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:52:07', '2023-07-10 06:52:07'),
(284, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:52:09', '2023-07-10 06:52:09'),
(285, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:52:10', '2023-07-10 06:52:10'),
(286, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:52:14', '2023-07-10 06:52:14');
INSERT INTO `visit_log` (`id`, `ip`, `browser`, `os`, `user`, `country`, `region`, `city`, `zip`, `timezone`, `lt,ln`, `created_at`, `updated_at`) VALUES
(287, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:52:15', '2023-07-10 06:52:15'),
(288, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:52:25', '2023-07-10 06:52:25'),
(289, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:52:25', '2023-07-10 06:52:25'),
(290, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:52:28', '2023-07-10 06:52:28'),
(291, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:52:36', '2023-07-10 06:52:36'),
(292, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:52:36', '2023-07-10 06:52:36'),
(293, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:52:40', '2023-07-10 06:52:40'),
(294, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:52:42', '2023-07-10 06:52:42'),
(295, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:52:53', '2023-07-10 06:52:53'),
(296, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:52:59', '2023-07-10 06:52:59'),
(297, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:53:01', '2023-07-10 06:53:01'),
(298, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:53:01', '2023-07-10 06:53:01'),
(299, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:53:05', '2023-07-10 06:53:05'),
(300, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:53:07', '2023-07-10 06:53:07'),
(301, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:53:09', '2023-07-10 06:53:09'),
(302, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:53:12', '2023-07-10 06:53:12'),
(303, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:53:14', '2023-07-10 06:53:14'),
(304, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:53:18', '2023-07-10 06:53:18'),
(305, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:53:21', '2023-07-10 06:53:21'),
(306, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:53:27', '2023-07-10 06:53:27'),
(307, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:53:30', '2023-07-10 06:53:30'),
(308, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:53:33', '2023-07-10 06:53:33'),
(309, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:53:37', '2023-07-10 06:53:37'),
(310, '127.0.0.0', 'Edge', 'Windows', 'minhtri', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-10 06:53:42', '2023-07-10 06:53:42'),
(311, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-17 03:53:54', '2023-07-17 03:53:54'),
(312, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-17 03:53:54', '2023-07-17 03:53:54'),
(313, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-17 04:05:53', '2023-07-17 04:05:53'),
(314, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-17 04:06:18', '2023-07-17 04:06:18'),
(315, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-07-20 03:59:46', '2023-07-20 03:59:46'),
(316, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-15 07:43:30', '2023-08-15 07:43:30'),
(317, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:26:57', '2023-08-16 06:26:57'),
(318, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:30:06', '2023-08-16 06:30:06'),
(319, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:30:12', '2023-08-16 06:30:12'),
(320, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:30:14', '2023-08-16 06:30:14'),
(321, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:30:14', '2023-08-16 06:30:14'),
(322, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:30:15', '2023-08-16 06:30:15'),
(323, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:30:18', '2023-08-16 06:30:18'),
(324, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:30:21', '2023-08-16 06:30:21'),
(325, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:30:24', '2023-08-16 06:30:24'),
(326, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:30:27', '2023-08-16 06:30:27'),
(327, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:31:08', '2023-08-16 06:31:08'),
(328, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:31:13', '2023-08-16 06:31:13'),
(329, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:31:37', '2023-08-16 06:31:37'),
(330, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:31:48', '2023-08-16 06:31:48'),
(331, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:32:08', '2023-08-16 06:32:08'),
(332, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:33:24', '2023-08-16 06:33:24'),
(333, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:33:46', '2023-08-16 06:33:46'),
(334, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:33:51', '2023-08-16 06:33:51'),
(335, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:33:55', '2023-08-16 06:33:55'),
(336, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:33:58', '2023-08-16 06:33:58'),
(337, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:34:01', '2023-08-16 06:34:01'),
(338, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:34:02', '2023-08-16 06:34:02'),
(339, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:34:08', '2023-08-16 06:34:08'),
(340, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:34:12', '2023-08-16 06:34:12'),
(341, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:34:14', '2023-08-16 06:34:14'),
(342, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:34:32', '2023-08-16 06:34:32'),
(343, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:34:38', '2023-08-16 06:34:38'),
(344, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:34:46', '2023-08-16 06:34:46'),
(345, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:35:19', '2023-08-16 06:35:19'),
(346, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:35:24', '2023-08-16 06:35:24'),
(347, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:35:35', '2023-08-16 06:35:35'),
(348, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:35:50', '2023-08-16 06:35:50'),
(349, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:36:02', '2023-08-16 06:36:02'),
(350, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:36:06', '2023-08-16 06:36:06'),
(351, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:36:14', '2023-08-16 06:36:14'),
(352, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:36:17', '2023-08-16 06:36:17'),
(353, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:36:20', '2023-08-16 06:36:20'),
(354, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:36:22', '2023-08-16 06:36:22'),
(355, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:36:25', '2023-08-16 06:36:25'),
(356, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:36:28', '2023-08-16 06:36:28'),
(357, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:36:29', '2023-08-16 06:36:29'),
(358, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:36:38', '2023-08-16 06:36:38'),
(359, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:36:39', '2023-08-16 06:36:39'),
(360, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:36:40', '2023-08-16 06:36:40'),
(361, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:36:41', '2023-08-16 06:36:41'),
(362, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:36:44', '2023-08-16 06:36:44'),
(363, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:36:46', '2023-08-16 06:36:46'),
(364, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:36:47', '2023-08-16 06:36:47'),
(365, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:36:49', '2023-08-16 06:36:49'),
(366, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:36:59', '2023-08-16 06:36:59'),
(367, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:37:04', '2023-08-16 06:37:04'),
(368, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:37:06', '2023-08-16 06:37:06'),
(369, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:37:10', '2023-08-16 06:37:10'),
(370, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:37:11', '2023-08-16 06:37:11'),
(371, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:37:17', '2023-08-16 06:37:17'),
(372, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:37:21', '2023-08-16 06:37:21'),
(373, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:37:28', '2023-08-16 06:37:28'),
(374, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 06:37:31', '2023-08-16 06:37:31'),
(375, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 07:23:08', '2023-08-16 07:23:08'),
(376, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 07:29:49', '2023-08-16 07:29:49'),
(377, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 07:29:53', '2023-08-16 07:29:53'),
(378, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 07:29:58', '2023-08-16 07:29:58'),
(379, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 07:29:59', '2023-08-16 07:29:59'),
(380, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 07:30:01', '2023-08-16 07:30:01'),
(381, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 07:30:25', '2023-08-16 07:30:25'),
(382, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 07:30:33', '2023-08-16 07:30:33'),
(383, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 07:30:37', '2023-08-16 07:30:37'),
(384, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 07:33:43', '2023-08-16 07:33:43'),
(385, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 07:33:53', '2023-08-16 07:33:53'),
(386, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 07:34:07', '2023-08-16 07:34:07'),
(387, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 07:34:30', '2023-08-16 07:34:30'),
(388, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 07:36:22', '2023-08-16 07:36:22'),
(389, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 07:36:26', '2023-08-16 07:36:26'),
(390, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 07:36:29', '2023-08-16 07:36:29'),
(391, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:28:16', '2023-08-16 08:28:16'),
(392, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:28:20', '2023-08-16 08:28:20'),
(393, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:28:30', '2023-08-16 08:28:30'),
(394, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:28:33', '2023-08-16 08:28:33'),
(395, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:44:10', '2023-08-16 08:44:10'),
(396, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:44:17', '2023-08-16 08:44:17'),
(397, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:46:22', '2023-08-16 08:46:22'),
(398, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:46:30', '2023-08-16 08:46:30'),
(399, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:46:36', '2023-08-16 08:46:36'),
(400, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:46:37', '2023-08-16 08:46:37'),
(401, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:46:40', '2023-08-16 08:46:40'),
(402, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:46:58', '2023-08-16 08:46:58'),
(403, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:47:09', '2023-08-16 08:47:09'),
(404, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:47:39', '2023-08-16 08:47:39'),
(405, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:47:49', '2023-08-16 08:47:49'),
(406, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:47:53', '2023-08-16 08:47:53'),
(407, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:50:28', '2023-08-16 08:50:28'),
(408, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:50:42', '2023-08-16 08:50:42'),
(409, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:51:07', '2023-08-16 08:51:07'),
(410, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:51:11', '2023-08-16 08:51:11'),
(411, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:52:35', '2023-08-16 08:52:35'),
(412, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:59:12', '2023-08-16 08:59:12'),
(413, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:59:15', '2023-08-16 08:59:15'),
(414, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:59:17', '2023-08-16 08:59:17'),
(415, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:59:19', '2023-08-16 08:59:19'),
(416, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:59:21', '2023-08-16 08:59:21'),
(417, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:59:24', '2023-08-16 08:59:24'),
(418, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:59:26', '2023-08-16 08:59:26'),
(419, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:59:36', '2023-08-16 08:59:36'),
(420, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:59:46', '2023-08-16 08:59:46'),
(421, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 08:59:58', '2023-08-16 08:59:58'),
(422, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:00:08', '2023-08-16 09:00:08'),
(423, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:00:16', '2023-08-16 09:00:16'),
(424, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:00:18', '2023-08-16 09:00:18'),
(425, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:00:21', '2023-08-16 09:00:21'),
(426, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:00:27', '2023-08-16 09:00:27'),
(427, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:02:32', '2023-08-16 09:02:32'),
(428, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:02:35', '2023-08-16 09:02:35'),
(429, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:02:50', '2023-08-16 09:02:50'),
(430, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:04:59', '2023-08-16 09:04:59'),
(431, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:05:08', '2023-08-16 09:05:08'),
(432, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:05:09', '2023-08-16 09:05:09'),
(433, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:07:01', '2023-08-16 09:07:01'),
(434, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:10:28', '2023-08-16 09:10:28'),
(435, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:10:33', '2023-08-16 09:10:33'),
(436, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:10:38', '2023-08-16 09:10:38'),
(437, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:10:52', '2023-08-16 09:10:52'),
(438, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:10:57', '2023-08-16 09:10:57'),
(439, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:11:00', '2023-08-16 09:11:00'),
(440, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:12:00', '2023-08-16 09:12:00'),
(441, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:14:15', '2023-08-16 09:14:15'),
(442, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:18:06', '2023-08-16 09:18:06'),
(443, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:18:18', '2023-08-16 09:18:18'),
(444, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:18:26', '2023-08-16 09:18:26'),
(445, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:28:11', '2023-08-16 09:28:11'),
(446, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:29:42', '2023-08-16 09:29:42'),
(447, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:29:54', '2023-08-16 09:29:54'),
(448, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:29:57', '2023-08-16 09:29:57'),
(449, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:30:14', '2023-08-16 09:30:14'),
(450, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:30:27', '2023-08-16 09:30:27'),
(451, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:30:32', '2023-08-16 09:30:32'),
(452, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:31:29', '2023-08-16 09:31:29'),
(453, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:40:28', '2023-08-16 09:40:28'),
(454, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:40:31', '2023-08-16 09:40:31'),
(455, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:40:37', '2023-08-16 09:40:37'),
(456, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:41:19', '2023-08-16 09:41:19'),
(457, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:42:17', '2023-08-16 09:42:17'),
(458, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:42:19', '2023-08-16 09:42:19'),
(459, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:43:10', '2023-08-16 09:43:10'),
(460, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:43:12', '2023-08-16 09:43:12'),
(461, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:43:22', '2023-08-16 09:43:22'),
(462, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:44:55', '2023-08-16 09:44:55'),
(463, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:45:17', '2023-08-16 09:45:17'),
(464, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:45:32', '2023-08-16 09:45:32'),
(465, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:45:40', '2023-08-16 09:45:40'),
(466, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:46:55', '2023-08-16 09:46:55'),
(467, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:48:33', '2023-08-16 09:48:33'),
(468, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:48:33', '2023-08-16 09:48:33'),
(469, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:48:45', '2023-08-16 09:48:45'),
(470, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:48:55', '2023-08-16 09:48:55'),
(471, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:49:03', '2023-08-16 09:49:03'),
(472, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:49:04', '2023-08-16 09:49:04'),
(473, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:49:09', '2023-08-16 09:49:09'),
(474, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:49:12', '2023-08-16 09:49:12'),
(475, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:50:40', '2023-08-16 09:50:40'),
(476, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:51:45', '2023-08-16 09:51:45'),
(477, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 09:51:51', '2023-08-16 09:51:51'),
(478, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-16 13:41:09', '2023-08-16 13:41:09'),
(479, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-17 04:05:33', '2023-08-17 04:05:33'),
(480, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-17 04:05:33', '2023-08-17 04:05:33'),
(481, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-17 04:05:35', '2023-08-17 04:05:35'),
(482, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-19 02:25:50', '2023-08-19 02:25:50'),
(483, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-19 02:25:57', '2023-08-19 02:25:57'),
(484, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-19 02:26:11', '2023-08-19 02:26:11'),
(485, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-19 02:26:15', '2023-08-19 02:26:15'),
(486, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-19 02:26:16', '2023-08-19 02:26:16'),
(487, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-19 02:26:20', '2023-08-19 02:26:20'),
(488, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-19 02:26:40', '2023-08-19 02:26:40'),
(489, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-19 02:26:58', '2023-08-19 02:26:58'),
(490, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-19 02:27:00', '2023-08-19 02:27:00'),
(491, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-19 02:27:03', '2023-08-19 02:27:03'),
(492, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-19 02:27:07', '2023-08-19 02:27:07'),
(493, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-19 02:27:32', '2023-08-19 02:27:32'),
(494, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-19 02:28:47', '2023-08-19 02:28:47'),
(495, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-19 02:28:47', '2023-08-19 02:28:47'),
(496, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-24 08:01:13', '2023-08-24 08:01:13'),
(497, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 03:46:40', '2023-08-25 03:46:40'),
(498, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 03:46:40', '2023-08-25 03:46:40'),
(499, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 05:32:57', '2023-08-25 05:32:57'),
(500, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 05:39:32', '2023-08-25 05:39:32'),
(501, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 06:12:45', '2023-08-25 06:12:45'),
(502, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 06:13:18', '2023-08-25 06:13:18'),
(503, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 06:18:15', '2023-08-25 06:18:15'),
(504, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 06:18:30', '2023-08-25 06:18:30'),
(505, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 06:18:49', '2023-08-25 06:18:49'),
(506, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 06:18:51', '2023-08-25 06:18:51'),
(507, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 06:18:52', '2023-08-25 06:18:52'),
(508, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 06:18:56', '2023-08-25 06:18:56'),
(509, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 06:18:56', '2023-08-25 06:18:56'),
(510, '127.0.0.0', 'Edge', 'iOS', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 06:19:23', '2023-08-25 06:19:23'),
(511, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 06:20:08', '2023-08-25 06:20:08'),
(512, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 06:25:21', '2023-08-25 06:25:21'),
(513, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 06:28:08', '2023-08-25 06:28:08'),
(514, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 06:28:43', '2023-08-25 06:28:43'),
(515, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 06:29:05', '2023-08-25 06:29:05'),
(516, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 06:36:39', '2023-08-25 06:36:39'),
(517, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 06:42:54', '2023-08-25 06:42:54'),
(518, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 06:43:05', '2023-08-25 06:43:05'),
(519, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 06:43:17', '2023-08-25 06:43:17'),
(520, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 06:44:18', '2023-08-25 06:44:18'),
(521, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 07:17:34', '2023-08-25 07:17:34'),
(522, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 07:18:36', '2023-08-25 07:18:36'),
(523, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 07:18:46', '2023-08-25 07:18:46'),
(524, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 07:18:47', '2023-08-25 07:18:47'),
(525, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 07:18:48', '2023-08-25 07:18:48'),
(526, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 07:18:50', '2023-08-25 07:18:50'),
(527, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 07:19:14', '2023-08-25 07:19:14'),
(528, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 07:19:41', '2023-08-25 07:19:41'),
(529, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 07:19:53', '2023-08-25 07:19:53'),
(530, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 07:20:34', '2023-08-25 07:20:34'),
(531, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 07:25:00', '2023-08-25 07:25:00'),
(532, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 07:25:16', '2023-08-25 07:25:16'),
(533, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 07:25:18', '2023-08-25 07:25:18'),
(534, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 07:25:27', '2023-08-25 07:25:27'),
(535, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 07:25:32', '2023-08-25 07:25:32'),
(536, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 07:25:40', '2023-08-25 07:25:40'),
(537, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 08:16:43', '2023-08-25 08:16:43'),
(538, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-25 08:17:52', '2023-08-25 08:17:52'),
(539, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 03:20:53', '2023-08-26 03:20:53'),
(540, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 03:37:26', '2023-08-26 03:37:26'),
(541, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 03:40:38', '2023-08-26 03:40:38'),
(542, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 03:40:43', '2023-08-26 03:40:43'),
(543, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 03:40:43', '2023-08-26 03:40:43'),
(544, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:02:11', '2023-08-26 06:02:11'),
(545, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:02:24', '2023-08-26 06:02:24'),
(546, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:02:42', '2023-08-26 06:02:42'),
(547, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:02:54', '2023-08-26 06:02:54'),
(548, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:02:55', '2023-08-26 06:02:55'),
(549, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:02:56', '2023-08-26 06:02:56'),
(550, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:02:58', '2023-08-26 06:02:58'),
(551, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:03:04', '2023-08-26 06:03:04'),
(552, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:03:04', '2023-08-26 06:03:04'),
(553, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:03:12', '2023-08-26 06:03:12'),
(554, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:03:12', '2023-08-26 06:03:12'),
(555, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:03:14', '2023-08-26 06:03:14'),
(556, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:03:24', '2023-08-26 06:03:24'),
(557, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:04:25', '2023-08-26 06:04:25'),
(558, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:04:36', '2023-08-26 06:04:36'),
(559, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:04:54', '2023-08-26 06:04:54');
INSERT INTO `visit_log` (`id`, `ip`, `browser`, `os`, `user`, `country`, `region`, `city`, `zip`, `timezone`, `lt,ln`, `created_at`, `updated_at`) VALUES
(560, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:08:42', '2023-08-26 06:08:42'),
(561, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:08:44', '2023-08-26 06:08:44'),
(562, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:08:44', '2023-08-26 06:08:44'),
(563, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:09:07', '2023-08-26 06:09:07'),
(564, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:10:01', '2023-08-26 06:10:01'),
(565, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:10:04', '2023-08-26 06:10:04'),
(566, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:10:05', '2023-08-26 06:10:05'),
(567, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:10:07', '2023-08-26 06:10:07'),
(568, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:10:10', '2023-08-26 06:10:10'),
(569, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:11:04', '2023-08-26 06:11:04'),
(570, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:11:11', '2023-08-26 06:11:11'),
(571, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:11:13', '2023-08-26 06:11:13'),
(572, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:11:32', '2023-08-26 06:11:32'),
(573, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:11:42', '2023-08-26 06:11:42'),
(574, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:11:47', '2023-08-26 06:11:47'),
(575, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:11:50', '2023-08-26 06:11:50'),
(576, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:11:54', '2023-08-26 06:11:54'),
(577, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:15:02', '2023-08-26 06:15:02'),
(578, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:20:22', '2023-08-26 06:20:22'),
(579, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:20:40', '2023-08-26 06:20:40'),
(580, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:21:01', '2023-08-26 06:21:01'),
(581, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:21:45', '2023-08-26 06:21:45'),
(582, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:22:37', '2023-08-26 06:22:37'),
(583, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:22:46', '2023-08-26 06:22:46'),
(584, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:22:52', '2023-08-26 06:22:52'),
(585, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:23:00', '2023-08-26 06:23:00'),
(586, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:23:03', '2023-08-26 06:23:03'),
(587, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:23:05', '2023-08-26 06:23:05'),
(588, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:25:30', '2023-08-26 06:25:30'),
(589, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:26:46', '2023-08-26 06:26:46'),
(590, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:27:14', '2023-08-26 06:27:14'),
(591, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:27:36', '2023-08-26 06:27:36'),
(592, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:28:39', '2023-08-26 06:28:39'),
(593, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:28:55', '2023-08-26 06:28:55'),
(594, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:30:38', '2023-08-26 06:30:38'),
(595, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:31:29', '2023-08-26 06:31:29'),
(596, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:31:46', '2023-08-26 06:31:46'),
(597, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:33:00', '2023-08-26 06:33:00'),
(598, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:36:35', '2023-08-26 06:36:35'),
(599, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:36:57', '2023-08-26 06:36:57'),
(600, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:37:10', '2023-08-26 06:37:10'),
(601, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:37:29', '2023-08-26 06:37:29'),
(602, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 06:37:37', '2023-08-26 06:37:37'),
(603, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:13:24', '2023-08-26 08:13:24'),
(604, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:14:03', '2023-08-26 08:14:03'),
(605, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:14:19', '2023-08-26 08:14:19'),
(606, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:15:06', '2023-08-26 08:15:06'),
(607, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:15:15', '2023-08-26 08:15:15'),
(608, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:16:07', '2023-08-26 08:16:07'),
(609, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:17:22', '2023-08-26 08:17:22'),
(610, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:19:34', '2023-08-26 08:19:34'),
(611, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:19:56', '2023-08-26 08:19:56'),
(612, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:21:11', '2023-08-26 08:21:11'),
(613, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:21:18', '2023-08-26 08:21:18'),
(614, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:21:18', '2023-08-26 08:21:18'),
(615, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:21:18', '2023-08-26 08:21:18'),
(616, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:22:02', '2023-08-26 08:22:02'),
(617, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:27:06', '2023-08-26 08:27:06'),
(618, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:27:09', '2023-08-26 08:27:09'),
(619, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:28:15', '2023-08-26 08:28:15'),
(620, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:28:23', '2023-08-26 08:28:23'),
(621, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:29:01', '2023-08-26 08:29:01'),
(622, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:30:12', '2023-08-26 08:30:12'),
(623, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:30:36', '2023-08-26 08:30:36'),
(624, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:31:42', '2023-08-26 08:31:42'),
(625, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:33:20', '2023-08-26 08:33:20'),
(626, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:37:54', '2023-08-26 08:37:54'),
(627, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:38:54', '2023-08-26 08:38:54'),
(628, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:39:02', '2023-08-26 08:39:02'),
(629, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:39:25', '2023-08-26 08:39:25'),
(630, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:40:27', '2023-08-26 08:40:27'),
(631, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:40:36', '2023-08-26 08:40:36'),
(632, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:40:54', '2023-08-26 08:40:54'),
(633, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:41:14', '2023-08-26 08:41:14'),
(634, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:41:34', '2023-08-26 08:41:34'),
(635, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:41:46', '2023-08-26 08:41:46'),
(636, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:41:53', '2023-08-26 08:41:53'),
(637, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:42:35', '2023-08-26 08:42:35'),
(638, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:42:44', '2023-08-26 08:42:44'),
(639, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:43:06', '2023-08-26 08:43:06'),
(640, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:43:14', '2023-08-26 08:43:14'),
(641, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:43:58', '2023-08-26 08:43:58'),
(642, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:46:58', '2023-08-26 08:46:58'),
(643, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:47:14', '2023-08-26 08:47:14'),
(644, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:47:20', '2023-08-26 08:47:20'),
(645, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:47:26', '2023-08-26 08:47:26'),
(646, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:47:41', '2023-08-26 08:47:41'),
(647, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:48:03', '2023-08-26 08:48:03'),
(648, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:48:21', '2023-08-26 08:48:21'),
(649, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:48:26', '2023-08-26 08:48:26'),
(650, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:49:20', '2023-08-26 08:49:20'),
(651, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:49:31', '2023-08-26 08:49:31'),
(652, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:50:53', '2023-08-26 08:50:53'),
(653, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:50:59', '2023-08-26 08:50:59'),
(654, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:52:07', '2023-08-26 08:52:07'),
(655, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:52:35', '2023-08-26 08:52:35'),
(656, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:52:50', '2023-08-26 08:52:50'),
(657, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:54:00', '2023-08-26 08:54:00'),
(658, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:54:22', '2023-08-26 08:54:22'),
(659, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:54:30', '2023-08-26 08:54:30'),
(660, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:55:05', '2023-08-26 08:55:05'),
(661, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:55:18', '2023-08-26 08:55:18'),
(662, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:55:18', '2023-08-26 08:55:18'),
(663, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:55:18', '2023-08-26 08:55:18'),
(664, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:55:51', '2023-08-26 08:55:51'),
(665, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:55:58', '2023-08-26 08:55:58'),
(666, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:56:04', '2023-08-26 08:56:04'),
(667, '127.0.0.0', 'Edge', 'Windows', 'minhtri123', 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 08:57:08', '2023-08-26 08:57:08'),
(668, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:26:22', '2023-08-26 13:26:22'),
(669, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:27:07', '2023-08-26 13:27:07'),
(670, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:27:44', '2023-08-26 13:27:44'),
(671, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:28:24', '2023-08-26 13:28:24'),
(672, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:28:49', '2023-08-26 13:28:49'),
(673, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:29:38', '2023-08-26 13:29:38'),
(674, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:30:30', '2023-08-26 13:30:30'),
(675, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:30:37', '2023-08-26 13:30:37'),
(676, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:31:11', '2023-08-26 13:31:11'),
(677, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:31:25', '2023-08-26 13:31:25'),
(678, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:31:38', '2023-08-26 13:31:38'),
(679, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:31:55', '2023-08-26 13:31:55'),
(680, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:32:38', '2023-08-26 13:32:38'),
(681, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:35:43', '2023-08-26 13:35:43'),
(682, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:36:28', '2023-08-26 13:36:28'),
(683, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:37:21', '2023-08-26 13:37:21'),
(684, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:40:21', '2023-08-26 13:40:21'),
(685, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:41:18', '2023-08-26 13:41:18'),
(686, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:41:58', '2023-08-26 13:41:58'),
(687, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:42:38', '2023-08-26 13:42:38'),
(688, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:43:19', '2023-08-26 13:43:19'),
(689, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:44:33', '2023-08-26 13:44:33'),
(690, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:45:14', '2023-08-26 13:45:14'),
(691, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:46:24', '2023-08-26 13:46:24'),
(692, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:46:36', '2023-08-26 13:46:36'),
(693, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:47:42', '2023-08-26 13:47:42'),
(694, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:47:59', '2023-08-26 13:47:59'),
(695, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:48:10', '2023-08-26 13:48:10'),
(696, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:49:12', '2023-08-26 13:49:12'),
(697, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:49:24', '2023-08-26 13:49:24'),
(698, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-26 13:49:30', '2023-08-26 13:49:30'),
(699, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-27 02:21:56', '2023-08-27 02:21:56'),
(700, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-27 02:21:56', '2023-08-27 02:21:56'),
(701, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-27 02:21:56', '2023-08-27 02:21:56'),
(702, '127.0.0.0', 'Edge', 'Windows', NULL, 'United States', 'New Haven', 'New Haven', '06510', 'America/New_York', '41.31,-72.92', '2023-08-27 04:03:26', '2023-08-27 04:03:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `categories` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_apps`
--
ALTER TABLE `customer_apps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_apps_customer_id_foreign` (`customer_id`),
  ADD KEY `customer_apps_app_id_foreign` (`app_id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_sub`
--
ALTER TABLE `page_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `users` ADD FULLTEXT KEY `search` (`name`);

--
-- Indexes for table `user_notify`
--
ALTER TABLE `user_notify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visit_log`
--
ALTER TABLE `visit_log`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=537;

--
-- AUTO_INCREMENT for table `apps`
--
ALTER TABLE `apps`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customer_apps`
--
ALTER TABLE `customer_apps`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `page_sub`
--
ALTER TABLE `page_sub`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_notify`
--
ALTER TABLE `user_notify`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visit_log`
--
ALTER TABLE `visit_log`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=703;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_apps`
--
ALTER TABLE `customer_apps`
  ADD CONSTRAINT `customer_apps_app_id_foreign` FOREIGN KEY (`app_id`) REFERENCES `apps` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customer_apps_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
