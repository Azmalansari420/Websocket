-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 06, 2025 at 09:29 AM
-- Server version: 10.11.14-MariaDB
-- PHP Version: 8.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tirangacab_mumbaitaj`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_records`
--

CREATE TABLE `activity_records` (
  `id` int(11) NOT NULL,
  `ip_addreass` text NOT NULL,
  `url` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_records`
--

INSERT INTO `activity_records` (`id`, `ip_addreass`, `url`, `date`, `time`, `admin_id`, `admin_username`, `admin_password`) VALUES
(1, '::1', 'http://localhost/mumbaitazapp/admin/dashboard', '2025-09-19', '12:45:58', 2, 'admin@gmail.com', 'admin'),
(2, '::1', 'http://localhost/mumbaitazapp/admin_con/site_setting/edit/1', '2025-09-19', '12:46:15', 2, 'admin@gmail.com', 'admin'),
(3, '::1', 'http://localhost/mumbaitazapp/admin_con/site_setting/edit/1', '2025-09-19', '12:46:24', 2, 'admin@gmail.com', 'admin'),
(4, '::1', 'http://localhost/mumbaitazapp/admin_con/site_setting/edit/1', '2025-09-19', '12:55:54', 2, 'admin@gmail.com', 'admin'),
(5, '::1', 'http://localhost/mumbaitazapp/admin_con/site_setting/edit/1', '2025-09-19', '12:57:51', 2, 'admin@gmail.com', 'admin'),
(6, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-19', '12:58:07', 2, 'admin@gmail.com', 'admin'),
(7, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/add', '2025-09-19', '12:59:42', 2, 'admin@gmail.com', 'admin'),
(8, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/add', '2025-09-19', '12:59:47', 2, 'admin@gmail.com', 'admin'),
(9, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/add', '2025-09-19', '13:00:57', 2, 'admin@gmail.com', 'admin'),
(10, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-19', '13:01:12', 2, 'admin@gmail.com', 'admin'),
(11, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-19', '13:01:39', 2, 'admin@gmail.com', 'admin'),
(12, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-19', '13:02:18', 2, 'admin@gmail.com', 'admin'),
(13, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-19', '13:02:27', 2, 'admin@gmail.com', 'admin'),
(14, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-19', '13:02:46', 2, 'admin@gmail.com', 'admin'),
(15, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/edit/177', '2025-09-19', '13:02:47', 2, 'admin@gmail.com', 'admin'),
(16, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-19', '13:02:48', 2, 'admin@gmail.com', 'admin'),
(17, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/edit/177', '2025-09-19', '13:03:33', 2, 'admin@gmail.com', 'admin'),
(18, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-19', '13:03:34', 2, 'admin@gmail.com', 'admin'),
(19, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/edit/176', '2025-09-19', '13:03:53', 2, 'admin@gmail.com', 'admin'),
(20, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-19', '13:03:55', 2, 'admin@gmail.com', 'admin'),
(21, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-19', '13:06:24', 2, 'admin@gmail.com', 'admin'),
(22, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-19', '13:08:39', 2, 'admin@gmail.com', 'admin'),
(23, '::1', 'http://localhost/mumbaitazapp/admin_con/game/listing', '2025-09-19', '13:08:41', 2, 'admin@gmail.com', 'admin'),
(24, '::1', 'http://localhost/mumbaitazapp/admin_con/game/listing', '2025-09-19', '13:09:01', 2, 'admin@gmail.com', 'admin'),
(25, '::1', 'http://localhost/mumbaitazapp/admin_con/game/listing', '2025-09-19', '13:09:18', 2, 'admin@gmail.com', 'admin'),
(26, '::1', 'http://localhost/mumbaitazapp/admin_con/game/edit/66', '2025-09-19', '13:09:19', 2, 'admin@gmail.com', 'admin'),
(27, '::1', 'http://localhost/mumbaitazapp/admin_con/game/listing', '2025-09-19', '13:09:20', 2, 'admin@gmail.com', 'admin'),
(28, '::1', 'http://localhost/mumbaitazapp/admin_con/game/edit/59', '2025-09-19', '13:09:31', 2, 'admin@gmail.com', 'admin'),
(29, '::1', 'http://localhost/mumbaitazapp/admin_con/game/listing', '2025-09-19', '13:09:36', 2, 'admin@gmail.com', 'admin'),
(30, '::1', 'http://localhost/mumbaitazapp/admin_con/game/edit/60', '2025-09-19', '13:09:50', 2, 'admin@gmail.com', 'admin'),
(31, '::1', 'http://localhost/mumbaitazapp/admin_con/game/listing', '2025-09-19', '13:09:55', 2, 'admin@gmail.com', 'admin'),
(32, '::1', 'http://localhost/mumbaitazapp/admin_con/game/edit/61', '2025-09-19', '13:10:01', 2, 'admin@gmail.com', 'admin'),
(33, '::1', 'http://localhost/mumbaitazapp/admin_con/game/listing', '2025-09-19', '13:10:05', 2, 'admin@gmail.com', 'admin'),
(34, '::1', 'http://localhost/mumbaitazapp/admin_con/game/edit/62', '2025-09-19', '13:10:06', 2, 'admin@gmail.com', 'admin'),
(35, '::1', 'http://localhost/mumbaitazapp/admin_con/game/listing', '2025-09-19', '13:10:09', 2, 'admin@gmail.com', 'admin'),
(36, '::1', 'http://localhost/mumbaitazapp/admin_con/game/edit/62', '2025-09-19', '13:10:19', 2, 'admin@gmail.com', 'admin'),
(37, '::1', 'http://localhost/mumbaitazapp/admin_con/game/listing', '2025-09-19', '13:10:23', 2, 'admin@gmail.com', 'admin'),
(38, '::1', 'http://localhost/mumbaitazapp/admin_con/game/listing', '2025-09-19', '13:10:50', 2, 'admin@gmail.com', 'admin'),
(39, '::1', 'http://localhost/mumbaitazapp/admin_con/game/listing', '2025-09-19', '13:15:10', 2, 'admin@gmail.com', 'admin'),
(40, '::1', 'http://localhost/mumbaitazapp/admin_con/game/listing', '2025-09-19', '13:16:02', 2, 'admin@gmail.com', 'admin'),
(41, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-19', '13:16:03', 2, 'admin@gmail.com', 'admin'),
(42, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-19', '13:16:20', 2, 'admin@gmail.com', 'admin'),
(43, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-19', '14:45:24', 2, 'admin@gmail.com', 'admin'),
(44, '::1', 'http://localhost/mumbaitazapp/admin_con/game/listing', '2025-09-19', '15:35:14', 2, 'admin@gmail.com', 'admin'),
(45, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-19', '15:35:17', 2, 'admin@gmail.com', 'admin'),
(46, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-19', '15:36:48', 2, 'admin@gmail.com', 'admin'),
(47, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-19', '15:37:27', 2, 'admin@gmail.com', 'admin'),
(48, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-19', '15:39:20', 2, 'admin@gmail.com', 'admin'),
(49, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/add', '2025-09-19', '15:39:27', 2, 'admin@gmail.com', 'admin'),
(50, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/add', '2025-09-19', '15:44:26', 2, 'admin@gmail.com', 'admin'),
(51, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/add', '2025-09-19', '15:44:35', 2, 'admin@gmail.com', 'admin'),
(52, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/add', '2025-09-19', '15:44:51', 2, 'admin@gmail.com', 'admin'),
(53, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/add', '2025-09-19', '15:45:01', 2, 'admin@gmail.com', 'admin'),
(54, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-19', '15:45:25', 2, 'admin@gmail.com', 'admin'),
(55, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/edit/169', '2025-09-19', '15:45:27', 2, 'admin@gmail.com', 'admin'),
(56, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-19', '15:45:36', 2, 'admin@gmail.com', 'admin'),
(57, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/edit/169', '2025-09-19', '15:47:05', 2, 'admin@gmail.com', 'admin'),
(58, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-19', '15:47:08', 2, 'admin@gmail.com', 'admin'),
(59, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/edit/169', '2025-09-19', '15:47:24', 2, 'admin@gmail.com', 'admin'),
(60, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-19', '15:47:26', 2, 'admin@gmail.com', 'admin'),
(61, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/edit/169', '2025-09-19', '15:47:29', 2, 'admin@gmail.com', 'admin'),
(62, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-19', '15:47:31', 2, 'admin@gmail.com', 'admin'),
(63, '::1', 'http://localhost/mumbaitazapp/admin_con/game/listing', '2025-09-20', '10:32:44', 2, 'admin@gmail.com', 'admin'),
(64, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '10:32:55', 2, 'admin@gmail.com', 'admin'),
(65, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '10:33:16', 2, 'admin@gmail.com', 'admin'),
(66, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '10:40:20', 2, 'admin@gmail.com', 'admin'),
(67, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '10:40:39', 2, 'admin@gmail.com', 'admin'),
(68, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-20', '10:40:41', 2, 'admin@gmail.com', 'admin'),
(69, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:44:28', 2, 'admin@gmail.com', 'admin'),
(70, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:44:46', 2, 'admin@gmail.com', 'admin'),
(71, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/add', '2025-09-20', '10:44:47', 2, 'admin@gmail.com', 'admin'),
(72, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:45:12', 2, 'admin@gmail.com', 'admin'),
(73, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/add', '2025-09-20', '10:45:21', 2, 'admin@gmail.com', 'admin'),
(74, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:45:27', 2, 'admin@gmail.com', 'admin'),
(75, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/add', '2025-09-20', '10:45:29', 2, 'admin@gmail.com', 'admin'),
(76, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:45:41', 2, 'admin@gmail.com', 'admin'),
(77, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:45:45', 2, 'admin@gmail.com', 'admin'),
(78, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:45:50', 2, 'admin@gmail.com', 'admin'),
(79, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:45:54', 2, 'admin@gmail.com', 'admin'),
(80, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:45:58', 2, 'admin@gmail.com', 'admin'),
(81, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:46:02', 2, 'admin@gmail.com', 'admin'),
(82, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:46:19', 2, 'admin@gmail.com', 'admin'),
(83, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:46:22', 2, 'admin@gmail.com', 'admin'),
(84, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:46:26', 2, 'admin@gmail.com', 'admin'),
(85, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:46:29', 2, 'admin@gmail.com', 'admin'),
(86, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:46:33', 2, 'admin@gmail.com', 'admin'),
(87, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:46:37', 2, 'admin@gmail.com', 'admin'),
(88, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:46:41', 2, 'admin@gmail.com', 'admin'),
(89, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:46:44', 2, 'admin@gmail.com', 'admin'),
(90, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:46:48', 2, 'admin@gmail.com', 'admin'),
(91, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:46:51', 2, 'admin@gmail.com', 'admin'),
(92, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:46:55', 2, 'admin@gmail.com', 'admin'),
(93, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:46:58', 2, 'admin@gmail.com', 'admin'),
(94, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:47:03', 2, 'admin@gmail.com', 'admin'),
(95, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:47:06', 2, 'admin@gmail.com', 'admin'),
(96, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:47:09', 2, 'admin@gmail.com', 'admin'),
(97, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:47:12', 2, 'admin@gmail.com', 'admin'),
(98, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:47:16', 2, 'admin@gmail.com', 'admin'),
(99, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/edit/25', '2025-09-20', '10:47:39', 2, 'admin@gmail.com', 'admin'),
(100, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:47:43', 2, 'admin@gmail.com', 'admin'),
(101, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:48:07', 2, 'admin@gmail.com', 'admin'),
(102, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:48:10', 2, 'admin@gmail.com', 'admin'),
(103, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:48:15', 2, 'admin@gmail.com', 'admin'),
(104, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:48:18', 2, 'admin@gmail.com', 'admin'),
(105, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:48:22', 2, 'admin@gmail.com', 'admin'),
(106, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:48:25', 2, 'admin@gmail.com', 'admin'),
(107, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:48:28', 2, 'admin@gmail.com', 'admin'),
(108, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:48:31', 2, 'admin@gmail.com', 'admin'),
(109, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:48:35', 2, 'admin@gmail.com', 'admin'),
(110, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:48:38', 2, 'admin@gmail.com', 'admin'),
(111, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:48:43', 2, 'admin@gmail.com', 'admin'),
(112, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:48:47', 2, 'admin@gmail.com', 'admin'),
(113, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:48:51', 2, 'admin@gmail.com', 'admin'),
(114, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:48:54', 2, 'admin@gmail.com', 'admin'),
(115, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:48:58', 2, 'admin@gmail.com', 'admin'),
(116, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:49:00', 2, 'admin@gmail.com', 'admin'),
(117, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:49:04', 2, 'admin@gmail.com', 'admin'),
(118, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:49:07', 2, 'admin@gmail.com', 'admin'),
(119, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:49:11', 2, 'admin@gmail.com', 'admin'),
(120, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:49:13', 2, 'admin@gmail.com', 'admin'),
(121, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:49:17', 2, 'admin@gmail.com', 'admin'),
(122, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:49:20', 2, 'admin@gmail.com', 'admin'),
(123, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:49:24', 2, 'admin@gmail.com', 'admin'),
(124, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:49:28', 2, 'admin@gmail.com', 'admin'),
(125, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:49:40', 2, 'admin@gmail.com', 'admin'),
(126, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-20', '10:50:20', 2, 'admin@gmail.com', 'admin'),
(127, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '10:50:27', 2, 'admin@gmail.com', 'admin'),
(128, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:50:39', 2, 'admin@gmail.com', 'admin'),
(129, '::1', 'http://localhost/mumbaitazapp/admin_con/game/listing', '2025-09-20', '10:50:41', 2, 'admin@gmail.com', 'admin'),
(130, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '10:50:42', 2, 'admin@gmail.com', 'admin'),
(131, '::1', 'http://localhost/mumbaitazapp/admin_con/game/listing', '2025-09-20', '10:50:43', 2, 'admin@gmail.com', 'admin'),
(132, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '10:50:44', 2, 'admin@gmail.com', 'admin'),
(133, '::1', 'http://localhost/mumbaitazapp/admin_con/game/listing', '2025-09-20', '10:50:45', 2, 'admin@gmail.com', 'admin'),
(134, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '10:50:49', 2, 'admin@gmail.com', 'admin'),
(135, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '10:51:03', 2, 'admin@gmail.com', 'admin'),
(136, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/add', '2025-09-20', '10:51:04', 2, 'admin@gmail.com', 'admin'),
(137, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '10:51:31', 2, 'admin@gmail.com', 'admin'),
(138, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/add', '2025-09-20', '10:51:32', 2, 'admin@gmail.com', 'admin'),
(139, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '10:51:39', 2, 'admin@gmail.com', 'admin'),
(140, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/add', '2025-09-20', '10:51:41', 2, 'admin@gmail.com', 'admin'),
(141, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '10:51:50', 2, 'admin@gmail.com', 'admin'),
(142, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/add', '2025-09-20', '10:51:53', 2, 'admin@gmail.com', 'admin'),
(143, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '10:51:58', 2, 'admin@gmail.com', 'admin'),
(144, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/add', '2025-09-20', '10:52:00', 2, 'admin@gmail.com', 'admin'),
(145, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '10:52:05', 2, 'admin@gmail.com', 'admin'),
(146, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/add', '2025-09-20', '10:52:06', 2, 'admin@gmail.com', 'admin'),
(147, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '10:52:12', 2, 'admin@gmail.com', 'admin'),
(148, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/add', '2025-09-20', '10:52:19', 2, 'admin@gmail.com', 'admin'),
(149, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '10:52:38', 2, 'admin@gmail.com', 'admin'),
(150, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/add', '2025-09-20', '10:52:40', 2, 'admin@gmail.com', 'admin'),
(151, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '10:52:48', 2, 'admin@gmail.com', 'admin'),
(152, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/add', '2025-09-20', '10:52:49', 2, 'admin@gmail.com', 'admin'),
(153, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '10:52:57', 2, 'admin@gmail.com', 'admin'),
(154, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/add', '2025-09-20', '10:52:58', 2, 'admin@gmail.com', 'admin'),
(155, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '10:53:10', 2, 'admin@gmail.com', 'admin'),
(156, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/add', '2025-09-20', '10:53:12', 2, 'admin@gmail.com', 'admin'),
(157, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '10:53:23', 2, 'admin@gmail.com', 'admin'),
(158, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/add', '2025-09-20', '10:53:25', 2, 'admin@gmail.com', 'admin'),
(159, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '10:53:32', 2, 'admin@gmail.com', 'admin'),
(160, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-20', '10:53:48', 2, 'admin@gmail.com', 'admin'),
(161, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-20', '10:54:21', 2, 'admin@gmail.com', 'admin'),
(162, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-20', '10:54:57', 2, 'admin@gmail.com', 'admin'),
(163, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '10:54:58', 2, 'admin@gmail.com', 'admin'),
(164, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '10:57:00', 2, 'admin@gmail.com', 'admin'),
(165, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '10:57:14', 2, 'admin@gmail.com', 'admin'),
(166, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '10:57:50', 2, 'admin@gmail.com', 'admin'),
(167, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:01:01', 2, 'admin@gmail.com', 'admin'),
(168, '::1', 'http://localhost/mumbaitazapp/admin_con/game/listing', '2025-09-20', '11:03:27', 2, 'admin@gmail.com', 'admin'),
(169, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '11:03:30', 2, 'admin@gmail.com', 'admin'),
(170, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/edit/48', '2025-09-20', '11:04:18', 2, 'admin@gmail.com', 'admin'),
(171, '::1', 'http://localhost/mumbaitazapp/admin_con/all_times/listing', '2025-09-20', '11:04:19', 2, 'admin@gmail.com', 'admin'),
(172, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '11:04:26', 2, 'admin@gmail.com', 'admin'),
(173, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/add', '2025-09-20', '11:04:27', 2, 'admin@gmail.com', 'admin'),
(174, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '11:04:28', 2, 'admin@gmail.com', 'admin'),
(175, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/edit/12', '2025-09-20', '11:04:29', 2, 'admin@gmail.com', 'admin'),
(176, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '11:04:30', 2, 'admin@gmail.com', 'admin'),
(177, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/edit/12', '2025-09-20', '11:04:40', 2, 'admin@gmail.com', 'admin'),
(178, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '11:04:44', 2, 'admin@gmail.com', 'admin'),
(179, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/edit/11', '2025-09-20', '11:04:46', 2, 'admin@gmail.com', 'admin'),
(180, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/edit/11', '2025-09-20', '11:05:13', 2, 'admin@gmail.com', 'admin'),
(181, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '11:05:17', 2, 'admin@gmail.com', 'admin'),
(182, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/edit/12', '2025-09-20', '11:05:26', 2, 'admin@gmail.com', 'admin'),
(183, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '11:05:30', 2, 'admin@gmail.com', 'admin'),
(184, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/edit/10', '2025-09-20', '11:05:37', 2, 'admin@gmail.com', 'admin'),
(185, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '11:05:38', 2, 'admin@gmail.com', 'admin'),
(186, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/edit/9', '2025-09-20', '11:05:40', 2, 'admin@gmail.com', 'admin'),
(187, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '11:05:41', 2, 'admin@gmail.com', 'admin'),
(188, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/edit/8', '2025-09-20', '11:05:43', 2, 'admin@gmail.com', 'admin'),
(189, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '11:05:44', 2, 'admin@gmail.com', 'admin'),
(190, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/edit/7', '2025-09-20', '11:05:45', 2, 'admin@gmail.com', 'admin'),
(191, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '11:05:46', 2, 'admin@gmail.com', 'admin'),
(192, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/edit/6', '2025-09-20', '11:05:48', 2, 'admin@gmail.com', 'admin'),
(193, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '11:05:49', 2, 'admin@gmail.com', 'admin'),
(194, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/edit/5', '2025-09-20', '11:05:51', 2, 'admin@gmail.com', 'admin'),
(195, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '11:05:52', 2, 'admin@gmail.com', 'admin'),
(196, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/edit/4', '2025-09-20', '11:05:54', 2, 'admin@gmail.com', 'admin'),
(197, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '11:05:54', 2, 'admin@gmail.com', 'admin'),
(198, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/edit/4', '2025-09-20', '11:05:56', 2, 'admin@gmail.com', 'admin'),
(199, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '11:05:57', 2, 'admin@gmail.com', 'admin'),
(200, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/edit/3', '2025-09-20', '11:05:59', 2, 'admin@gmail.com', 'admin'),
(201, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '11:06:00', 2, 'admin@gmail.com', 'admin'),
(202, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/edit/2', '2025-09-20', '11:06:02', 2, 'admin@gmail.com', 'admin'),
(203, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '11:06:03', 2, 'admin@gmail.com', 'admin'),
(204, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/edit/1', '2025-09-20', '11:06:04', 2, 'admin@gmail.com', 'admin'),
(205, '::1', 'http://localhost/mumbaitazapp/admin_con/game_times/listing', '2025-09-20', '11:06:05', 2, 'admin@gmail.com', 'admin'),
(206, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-20', '11:07:11', 2, 'admin@gmail.com', 'admin'),
(207, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:07:12', 2, 'admin@gmail.com', 'admin'),
(208, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:07:30', 2, 'admin@gmail.com', 'admin'),
(209, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:09:08', 2, 'admin@gmail.com', 'admin'),
(210, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:09:19', 2, 'admin@gmail.com', 'admin'),
(211, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:33:55', 2, 'admin@gmail.com', 'admin'),
(212, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:34:07', 2, 'admin@gmail.com', 'admin'),
(213, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:34:18', 2, 'admin@gmail.com', 'admin'),
(214, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:34:38', 2, 'admin@gmail.com', 'admin'),
(215, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:36:31', 2, 'admin@gmail.com', 'admin'),
(216, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:37:08', 2, 'admin@gmail.com', 'admin'),
(217, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:37:09', 2, 'admin@gmail.com', 'admin'),
(218, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:37:31', 2, 'admin@gmail.com', 'admin'),
(219, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:37:45', 2, 'admin@gmail.com', 'admin'),
(220, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:39:06', 2, 'admin@gmail.com', 'admin'),
(221, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:41:10', 2, 'admin@gmail.com', 'admin'),
(222, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:42:25', 2, 'admin@gmail.com', 'admin'),
(223, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:42:26', 2, 'admin@gmail.com', 'admin'),
(224, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:44:12', 2, 'admin@gmail.com', 'admin'),
(225, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:45:14', 2, 'admin@gmail.com', 'admin'),
(226, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:45:41', 2, 'admin@gmail.com', 'admin'),
(227, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:46:17', 2, 'admin@gmail.com', 'admin'),
(228, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:46:34', 2, 'admin@gmail.com', 'admin'),
(229, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:46:45', 2, 'admin@gmail.com', 'admin'),
(230, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:47:49', 2, 'admin@gmail.com', 'admin'),
(231, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:50:30', 2, 'admin@gmail.com', 'admin'),
(232, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:51:16', 2, 'admin@gmail.com', 'admin'),
(233, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:51:29', 2, 'admin@gmail.com', 'admin'),
(234, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:53:13', 2, 'admin@gmail.com', 'admin'),
(235, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:53:14', 2, 'admin@gmail.com', 'admin'),
(236, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '11:53:35', 2, 'admin@gmail.com', 'admin'),
(237, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-20', '11:54:58', 2, 'admin@gmail.com', 'admin'),
(238, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/1', '2025-09-20', '11:55:11', 2, 'admin@gmail.com', 'admin'),
(239, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/1', '2025-09-20', '11:55:24', 2, 'admin@gmail.com', 'admin'),
(240, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-20', '11:55:32', 2, 'admin@gmail.com', 'admin'),
(241, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/1', '2025-09-20', '11:55:51', 2, 'admin@gmail.com', 'admin'),
(242, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-20', '11:55:57', 2, 'admin@gmail.com', 'admin'),
(243, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-20', '11:56:38', 2, 'admin@gmail.com', 'admin'),
(244, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/1', '2025-09-20', '11:56:40', 2, 'admin@gmail.com', 'admin'),
(245, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/1', '2025-09-20', '11:56:53', 2, 'admin@gmail.com', 'admin'),
(246, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-20', '11:57:25', 2, 'admin@gmail.com', 'admin'),
(247, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/1', '2025-09-20', '11:58:53', 2, 'admin@gmail.com', 'admin'),
(248, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-20', '11:59:00', 2, 'admin@gmail.com', 'admin'),
(249, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/1', '2025-09-20', '12:00:00', 2, 'admin@gmail.com', 'admin'),
(250, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-20', '12:00:01', 2, 'admin@gmail.com', 'admin'),
(251, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/1', '2025-09-20', '12:00:07', 2, 'admin@gmail.com', 'admin'),
(252, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/1', '2025-09-20', '12:02:57', 2, 'admin@gmail.com', 'admin'),
(253, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-20', '12:03:05', 2, 'admin@gmail.com', 'admin'),
(254, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-20', '12:05:09', 2, 'admin@gmail.com', 'admin'),
(255, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/1', '2025-09-20', '12:05:10', 2, 'admin@gmail.com', 'admin'),
(256, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-20', '12:05:14', 2, 'admin@gmail.com', 'admin'),
(257, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/1', '2025-09-20', '12:05:25', 2, 'admin@gmail.com', 'admin'),
(258, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/1', '2025-09-20', '12:15:21', 2, 'admin@gmail.com', 'admin'),
(259, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/1', '2025-09-20', '12:16:13', 2, 'admin@gmail.com', 'admin'),
(260, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/1', '2025-09-20', '12:16:18', 2, 'admin@gmail.com', 'admin'),
(261, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/1', '2025-09-20', '12:16:36', 2, 'admin@gmail.com', 'admin'),
(262, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-20', '12:16:42', 2, 'admin@gmail.com', 'admin'),
(263, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-20', '12:16:46', 2, 'admin@gmail.com', 'admin'),
(264, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-20', '12:16:52', 2, 'admin@gmail.com', 'admin'),
(265, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/2', '2025-09-20', '12:17:11', 2, 'admin@gmail.com', 'admin'),
(266, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-20', '12:17:13', 2, 'admin@gmail.com', 'admin'),
(267, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-20', '12:17:33', 2, 'admin@gmail.com', 'admin'),
(268, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/2', '2025-09-20', '12:17:35', 2, 'admin@gmail.com', 'admin'),
(269, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-20', '12:17:37', 2, 'admin@gmail.com', 'admin'),
(270, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-20', '12:18:28', 2, 'admin@gmail.com', 'admin'),
(271, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/2', '2025-09-20', '12:18:34', 2, 'admin@gmail.com', 'admin'),
(272, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-20', '12:18:38', 2, 'admin@gmail.com', 'admin'),
(273, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/2', '2025-09-20', '12:18:42', 2, 'admin@gmail.com', 'admin'),
(274, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-20', '12:18:47', 2, 'admin@gmail.com', 'admin'),
(275, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/2', '2025-09-20', '12:18:50', 2, 'admin@gmail.com', 'admin'),
(276, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/1', '2025-09-20', '12:19:18', 2, 'admin@gmail.com', 'admin'),
(277, '::1', 'http://localhost/mumbaitazapp/admin_con/game/listing', '2025-09-22', '11:18:03', 2, 'admin@gmail.com', 'admin'),
(278, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '11:18:05', 2, 'admin@gmail.com', 'admin'),
(279, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/2', '2025-09-22', '11:18:10', 2, 'admin@gmail.com', 'admin'),
(280, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '11:18:16', 2, 'admin@gmail.com', 'admin'),
(281, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '15:23:33', 2, 'admin@gmail.com', 'admin'),
(282, '::1', 'http://localhost/mumbaitazapp/admin/dashboard', '2025-09-22', '15:29:53', 2, 'admin@gmail.com', 'admin'),
(283, '::1', 'http://localhost/mumbaitazapp/admin_con/game/listing', '2025-09-22', '15:29:55', 2, 'admin@gmail.com', 'admin'),
(284, '::1', 'http://localhost/mumbaitazapp/admin_con/game/edit/59', '2025-09-22', '15:29:57', 2, 'admin@gmail.com', 'admin'),
(285, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '15:33:31', 2, 'admin@gmail.com', 'admin'),
(286, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-22', '15:33:33', 2, 'admin@gmail.com', 'admin'),
(287, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '15:33:40', 2, 'admin@gmail.com', 'admin'),
(288, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/3', '2025-09-22', '15:49:37', 2, 'admin@gmail.com', 'admin'),
(289, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '15:49:39', 2, 'admin@gmail.com', 'admin'),
(290, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/3', '2025-09-22', '15:54:09', 2, 'admin@gmail.com', 'admin'),
(291, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '15:54:10', 2, 'admin@gmail.com', 'admin'),
(292, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/3', '2025-09-22', '15:54:17', 2, 'admin@gmail.com', 'admin'),
(293, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '15:54:18', 2, 'admin@gmail.com', 'admin'),
(294, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/3', '2025-09-22', '15:56:10', 2, 'admin@gmail.com', 'admin'),
(295, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '15:56:11', 2, 'admin@gmail.com', 'admin'),
(296, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/3', '2025-09-22', '15:56:18', 2, 'admin@gmail.com', 'admin'),
(297, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '15:56:20', 2, 'admin@gmail.com', 'admin'),
(298, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/3', '2025-09-22', '15:59:22', 2, 'admin@gmail.com', 'admin'),
(299, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '15:59:23', 2, 'admin@gmail.com', 'admin'),
(300, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/3', '2025-09-22', '16:00:04', 2, 'admin@gmail.com', 'admin'),
(301, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:00:05', 2, 'admin@gmail.com', 'admin'),
(302, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-22', '16:00:20', 2, 'admin@gmail.com', 'admin'),
(303, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:00:28', 2, 'admin@gmail.com', 'admin'),
(304, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/4', '2025-09-22', '16:04:43', 2, 'admin@gmail.com', 'admin'),
(305, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:04:45', 2, 'admin@gmail.com', 'admin'),
(306, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/3', '2025-09-22', '16:04:55', 2, 'admin@gmail.com', 'admin'),
(307, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:04:56', 2, 'admin@gmail.com', 'admin'),
(308, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/4', '2025-09-22', '16:09:24', 2, 'admin@gmail.com', 'admin'),
(309, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:09:26', 2, 'admin@gmail.com', 'admin'),
(310, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/4', '2025-09-22', '16:09:34', 2, 'admin@gmail.com', 'admin'),
(311, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:09:35', 2, 'admin@gmail.com', 'admin'),
(312, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/3', '2025-09-22', '16:09:42', 2, 'admin@gmail.com', 'admin'),
(313, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:09:43', 2, 'admin@gmail.com', 'admin'),
(314, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/4', '2025-09-22', '16:09:49', 2, 'admin@gmail.com', 'admin'),
(315, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:09:50', 2, 'admin@gmail.com', 'admin'),
(316, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/3', '2025-09-22', '16:13:00', 2, 'admin@gmail.com', 'admin'),
(317, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:13:01', 2, 'admin@gmail.com', 'admin'),
(318, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/4', '2025-09-22', '16:13:17', 2, 'admin@gmail.com', 'admin'),
(319, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:13:18', 2, 'admin@gmail.com', 'admin'),
(320, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:15:10', 2, 'admin@gmail.com', 'admin'),
(321, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/4', '2025-09-22', '16:15:12', 2, 'admin@gmail.com', 'admin'),
(322, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:15:13', 2, 'admin@gmail.com', 'admin'),
(323, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/4', '2025-09-22', '16:15:17', 2, 'admin@gmail.com', 'admin'),
(324, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:15:19', 2, 'admin@gmail.com', 'admin'),
(325, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:18:07', 2, 'admin@gmail.com', 'admin'),
(326, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/4', '2025-09-22', '16:18:08', 2, 'admin@gmail.com', 'admin'),
(327, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/4', '2025-09-22', '16:18:12', 2, 'admin@gmail.com', 'admin'),
(328, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/4', '2025-09-22', '16:18:44', 2, 'admin@gmail.com', 'admin'),
(329, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/4', '2025-09-22', '16:19:02', 2, 'admin@gmail.com', 'admin'),
(330, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/4', '2025-09-22', '16:19:07', 2, 'admin@gmail.com', 'admin'),
(331, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:20:32', 2, 'admin@gmail.com', 'admin'),
(332, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:21:04', 2, 'admin@gmail.com', 'admin'),
(333, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-22', '16:21:05', 2, 'admin@gmail.com', 'admin'),
(334, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:21:11', 2, 'admin@gmail.com', 'admin'),
(335, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/5', '2025-09-22', '16:28:02', 2, 'admin@gmail.com', 'admin'),
(336, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:28:03', 2, 'admin@gmail.com', 'admin'),
(337, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-22', '16:28:14', 2, 'admin@gmail.com', 'admin'),
(338, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:28:26', 2, 'admin@gmail.com', 'admin'),
(339, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:28:52', 2, 'admin@gmail.com', 'admin'),
(340, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-22', '16:28:58', 2, 'admin@gmail.com', 'admin'),
(341, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:29:04', 2, 'admin@gmail.com', 'admin'),
(342, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/7', '2025-09-22', '16:32:06', 2, 'admin@gmail.com', 'admin'),
(343, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:33:02', 2, 'admin@gmail.com', 'admin'),
(344, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/7', '2025-09-22', '16:36:16', 2, 'admin@gmail.com', 'admin'),
(345, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:36:17', 2, 'admin@gmail.com', 'admin'),
(346, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/7', '2025-09-22', '16:37:42', 2, 'admin@gmail.com', 'admin'),
(347, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:37:44', 2, 'admin@gmail.com', 'admin'),
(348, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/7', '2025-09-22', '16:38:19', 2, 'admin@gmail.com', 'admin'),
(349, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:38:20', 2, 'admin@gmail.com', 'admin'),
(350, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/7', '2025-09-22', '16:38:50', 2, 'admin@gmail.com', 'admin'),
(351, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:38:51', 2, 'admin@gmail.com', 'admin'),
(352, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/7', '2025-09-22', '16:39:02', 2, 'admin@gmail.com', 'admin'),
(353, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:39:03', 2, 'admin@gmail.com', 'admin'),
(354, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/7', '2025-09-22', '16:39:20', 2, 'admin@gmail.com', 'admin'),
(355, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:39:21', 2, 'admin@gmail.com', 'admin'),
(356, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/7', '2025-09-22', '16:42:13', 2, 'admin@gmail.com', 'admin'),
(357, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:42:14', 2, 'admin@gmail.com', 'admin'),
(358, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/6', '2025-09-22', '16:42:25', 2, 'admin@gmail.com', 'admin'),
(359, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:42:26', 2, 'admin@gmail.com', 'admin'),
(360, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/5', '2025-09-22', '16:42:35', 2, 'admin@gmail.com', 'admin'),
(361, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:42:36', 2, 'admin@gmail.com', 'admin'),
(362, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/3', '2025-09-22', '16:42:48', 2, 'admin@gmail.com', 'admin'),
(363, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:42:50', 2, 'admin@gmail.com', 'admin'),
(364, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/7', '2025-09-22', '16:43:30', 2, 'admin@gmail.com', 'admin'),
(365, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:43:31', 2, 'admin@gmail.com', 'admin'),
(366, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/7', '2025-09-22', '16:58:08', 2, 'admin@gmail.com', 'admin'),
(367, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:58:10', 2, 'admin@gmail.com', 'admin'),
(368, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/5', '2025-09-22', '16:59:24', 2, 'admin@gmail.com', 'admin'),
(369, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:59:26', 2, 'admin@gmail.com', 'admin'),
(370, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-22', '16:59:31', 2, 'admin@gmail.com', 'admin'),
(371, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:59:38', 2, 'admin@gmail.com', 'admin'),
(372, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/8', '2025-09-22', '16:59:54', 2, 'admin@gmail.com', 'admin'),
(373, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '16:59:56', 2, 'admin@gmail.com', 'admin'),
(374, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/7', '2025-09-22', '17:01:50', 2, 'admin@gmail.com', 'admin'),
(375, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '17:01:51', 2, 'admin@gmail.com', 'admin'),
(376, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/5', '2025-09-22', '17:02:01', 2, 'admin@gmail.com', 'admin'),
(377, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '17:02:02', 2, 'admin@gmail.com', 'admin'),
(378, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/8', '2025-09-22', '17:02:10', 2, 'admin@gmail.com', 'admin'),
(379, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '17:02:11', 2, 'admin@gmail.com', 'admin'),
(380, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/8', '2025-09-22', '17:02:36', 2, 'admin@gmail.com', 'admin'),
(381, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '17:02:37', 2, 'admin@gmail.com', 'admin'),
(382, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/8', '2025-09-22', '17:03:10', 2, 'admin@gmail.com', 'admin'),
(383, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '17:03:11', 2, 'admin@gmail.com', 'admin'),
(384, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/8', '2025-09-22', '17:04:54', 2, 'admin@gmail.com', 'admin'),
(385, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '17:04:55', 2, 'admin@gmail.com', 'admin'),
(386, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/5', '2025-09-22', '17:05:00', 2, 'admin@gmail.com', 'admin'),
(387, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '17:05:01', 2, 'admin@gmail.com', 'admin'),
(388, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/6', '2025-09-22', '17:11:23', 2, 'admin@gmail.com', 'admin'),
(389, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '17:11:24', 2, 'admin@gmail.com', 'admin'),
(390, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/5', '2025-09-22', '17:12:33', 2, 'admin@gmail.com', 'admin'),
(391, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '17:12:34', 2, 'admin@gmail.com', 'admin'),
(392, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/3', '2025-09-22', '17:13:45', 2, 'admin@gmail.com', 'admin');
INSERT INTO `activity_records` (`id`, `ip_addreass`, `url`, `date`, `time`, `admin_id`, `admin_username`, `admin_password`) VALUES
(393, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '17:13:46', 2, 'admin@gmail.com', 'admin'),
(394, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/3', '2025-09-22', '17:14:57', 2, 'admin@gmail.com', 'admin'),
(395, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '17:14:58', 2, 'admin@gmail.com', 'admin'),
(396, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/5', '2025-09-22', '17:16:30', 2, 'admin@gmail.com', 'admin'),
(397, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '17:16:36', 2, 'admin@gmail.com', 'admin'),
(398, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/6', '2025-09-22', '17:26:40', 2, 'admin@gmail.com', 'admin'),
(399, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '17:26:45', 2, 'admin@gmail.com', 'admin'),
(400, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/6', '2025-09-22', '17:28:40', 2, 'admin@gmail.com', 'admin'),
(401, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '17:28:41', 2, 'admin@gmail.com', 'admin'),
(402, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/6', '2025-09-22', '17:30:02', 2, 'admin@gmail.com', 'admin'),
(403, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '17:30:03', 2, 'admin@gmail.com', 'admin'),
(404, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/5', '2025-09-22', '17:33:36', 2, 'admin@gmail.com', 'admin'),
(405, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '17:33:38', 2, 'admin@gmail.com', 'admin'),
(406, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-22', '17:43:59', 2, 'admin@gmail.com', 'admin'),
(407, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '17:44:08', 2, 'admin@gmail.com', 'admin'),
(408, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/9', '2025-09-22', '17:48:23', 2, 'admin@gmail.com', 'admin'),
(409, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '17:48:26', 2, 'admin@gmail.com', 'admin'),
(410, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/6', '2025-09-22', '18:36:21', 2, 'admin@gmail.com', 'admin'),
(411, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '18:36:24', 2, 'admin@gmail.com', 'admin'),
(412, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/6', '2025-09-22', '18:36:31', 2, 'admin@gmail.com', 'admin'),
(413, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '18:36:34', 2, 'admin@gmail.com', 'admin'),
(414, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/7', '2025-09-22', '18:37:24', 2, 'admin@gmail.com', 'admin'),
(415, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '18:37:25', 2, 'admin@gmail.com', 'admin'),
(416, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/7', '2025-09-22', '18:38:09', 2, 'admin@gmail.com', 'admin'),
(417, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '18:38:11', 2, 'admin@gmail.com', 'admin'),
(418, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/6', '2025-09-22', '18:39:28', 2, 'admin@gmail.com', 'admin'),
(419, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-22', '18:39:29', 2, 'admin@gmail.com', 'admin'),
(420, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-23', '10:36:11', 2, 'admin@gmail.com', 'admin'),
(421, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-23', '11:00:52', 2, 'admin@gmail.com', 'admin'),
(422, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/9', '2025-09-23', '11:00:57', 2, 'admin@gmail.com', 'admin'),
(423, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-23', '11:01:00', 2, 'admin@gmail.com', 'admin'),
(424, '::1', 'http://localhost/mumbaitazapp/admin_con/number/edit/9', '2025-09-23', '11:02:27', 2, 'admin@gmail.com', 'admin'),
(425, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-23', '11:02:29', 2, 'admin@gmail.com', 'admin'),
(426, '::1', 'http://localhost/mumbaitazapp/admin_con/number/add', '2025-09-23', '11:02:40', 2, 'admin@gmail.com', 'admin'),
(427, '::1', 'http://localhost/mumbaitazapp/admin_con/number/listing', '2025-09-23', '11:02:46', 2, 'admin@gmail.com', 'admin'),
(428, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin/dashboard', '2025-09-23', '14:39:53', 2, 'admin@gmail.com', 'admin'),
(429, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/listing', '2025-09-23', '14:39:58', 2, 'admin@gmail.com', 'admin'),
(430, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/edit/10', '2025-09-23', '14:40:08', 2, 'admin@gmail.com', 'admin'),
(431, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/listing', '2025-09-23', '14:40:14', 2, 'admin@gmail.com', 'admin'),
(432, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/edit/10', '2025-09-23', '14:43:11', 2, 'admin@gmail.com', 'admin'),
(433, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/listing', '2025-09-23', '14:43:12', 2, 'admin@gmail.com', 'admin'),
(434, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/add', '2025-09-23', '14:43:29', 2, 'admin@gmail.com', 'admin'),
(435, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/listing', '2025-09-23', '14:43:35', 2, 'admin@gmail.com', 'admin'),
(436, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/edit/11', '2025-09-23', '14:46:33', 2, 'admin@gmail.com', 'admin'),
(437, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/listing', '2025-09-23', '14:46:34', 2, 'admin@gmail.com', 'admin'),
(438, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/edit/11', '2025-09-23', '14:47:38', 2, 'admin@gmail.com', 'admin'),
(439, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/listing', '2025-09-23', '14:47:39', 2, 'admin@gmail.com', 'admin'),
(440, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/edit/11', '2025-09-23', '14:48:09', 2, 'admin@gmail.com', 'admin'),
(441, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/listing', '2025-09-23', '14:48:11', 2, 'admin@gmail.com', 'admin'),
(442, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/add', '2025-09-23', '14:48:58', 2, 'admin@gmail.com', 'admin'),
(443, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/listing', '2025-09-23', '14:49:06', 2, 'admin@gmail.com', 'admin'),
(444, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/edit/12', '2025-09-23', '14:52:04', 2, 'admin@gmail.com', 'admin'),
(445, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/listing', '2025-09-23', '14:52:05', 2, 'admin@gmail.com', 'admin'),
(446, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/edit/12', '2025-09-23', '14:54:12', 2, 'admin@gmail.com', 'admin'),
(447, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/listing', '2025-09-23', '14:54:13', 2, 'admin@gmail.com', 'admin'),
(448, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/edit/12', '2025-09-23', '14:54:19', 2, 'admin@gmail.com', 'admin'),
(449, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/listing', '2025-09-23', '14:54:20', 2, 'admin@gmail.com', 'admin'),
(450, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/edit/12', '2025-09-23', '15:01:51', 2, 'admin@gmail.com', 'admin'),
(451, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/listing', '2025-09-23', '15:01:52', 2, 'admin@gmail.com', 'admin'),
(452, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/edit/12', '2025-09-23', '15:01:59', 2, 'admin@gmail.com', 'admin'),
(453, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/listing', '2025-09-23', '15:02:00', 2, 'admin@gmail.com', 'admin'),
(454, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/edit/12', '2025-09-23', '15:05:55', 2, 'admin@gmail.com', 'admin'),
(455, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/listing', '2025-09-23', '15:05:56', 2, 'admin@gmail.com', 'admin'),
(456, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/edit/12', '2025-09-23', '15:06:10', 2, 'admin@gmail.com', 'admin'),
(457, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/listing', '2025-09-23', '15:06:11', 2, 'admin@gmail.com', 'admin'),
(458, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/edit/12', '2025-09-23', '15:06:23', 2, 'admin@gmail.com', 'admin'),
(459, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/listing', '2025-09-23', '15:06:24', 2, 'admin@gmail.com', 'admin'),
(460, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/edit/12', '2025-09-23', '15:15:38', 2, 'admin@gmail.com', 'admin'),
(461, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/listing', '2025-09-23', '15:15:39', 2, 'admin@gmail.com', 'admin'),
(462, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/edit/12', '2025-09-23', '15:15:51', 2, 'admin@gmail.com', 'admin'),
(463, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/listing', '2025-09-23', '15:15:52', 2, 'admin@gmail.com', 'admin'),
(464, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/edit/12', '2025-09-23', '15:16:00', 2, 'admin@gmail.com', 'admin'),
(465, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/listing', '2025-09-23', '15:16:01', 2, 'admin@gmail.com', 'admin'),
(466, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/edit/12', '2025-09-23', '15:16:44', 2, 'admin@gmail.com', 'admin'),
(467, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/listing', '2025-09-23', '15:16:45', 2, 'admin@gmail.com', 'admin'),
(468, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/edit/12', '2025-09-23', '15:21:26', 2, 'admin@gmail.com', 'admin'),
(469, '192.168.1.19', 'http://192.168.1.19/mumbaitazapp/admin_con/number/listing', '2025-09-23', '15:21:30', 2, 'admin@gmail.com', 'admin'),
(470, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-23', '15:52:55', 2, 'admin@gmail.com', 'admin'),
(471, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '15:53:01', 2, 'admin@gmail.com', 'admin'),
(472, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/13', '2025-09-23', '16:03:17', 2, 'admin@gmail.com', 'admin'),
(473, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '16:03:18', 2, 'admin@gmail.com', 'admin'),
(474, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/13', '2025-09-23', '16:08:48', 2, 'admin@gmail.com', 'admin'),
(475, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '16:08:49', 2, 'admin@gmail.com', 'admin'),
(476, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/13', '2025-09-23', '16:09:02', 2, 'admin@gmail.com', 'admin'),
(477, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '16:09:03', 2, 'admin@gmail.com', 'admin'),
(478, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '16:09:15', 2, 'admin@gmail.com', 'admin'),
(479, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/13', '2025-09-23', '16:09:25', 2, 'admin@gmail.com', 'admin'),
(480, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '16:09:27', 2, 'admin@gmail.com', 'admin'),
(481, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/13', '2025-09-23', '16:09:36', 2, 'admin@gmail.com', 'admin'),
(482, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '16:09:37', 2, 'admin@gmail.com', 'admin'),
(483, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/13', '2025-09-23', '16:13:08', 2, 'admin@gmail.com', 'admin'),
(484, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '16:13:09', 2, 'admin@gmail.com', 'admin'),
(485, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/13', '2025-09-23', '16:14:12', 2, 'admin@gmail.com', 'admin'),
(486, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '16:14:13', 2, 'admin@gmail.com', 'admin'),
(487, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/13', '2025-09-23', '16:17:02', 2, 'admin@gmail.com', 'admin'),
(488, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '16:17:04', 2, 'admin@gmail.com', 'admin'),
(489, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/13', '2025-09-23', '16:17:26', 2, 'admin@gmail.com', 'admin'),
(490, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '16:17:27', 2, 'admin@gmail.com', 'admin'),
(491, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/13', '2025-09-23', '16:21:43', 2, 'admin@gmail.com', 'admin'),
(492, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '16:21:44', 2, 'admin@gmail.com', 'admin'),
(493, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/13', '2025-09-23', '16:24:23', 2, 'admin@gmail.com', 'admin'),
(494, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '16:24:24', 2, 'admin@gmail.com', 'admin'),
(495, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/13', '2025-09-23', '16:27:08', 2, 'admin@gmail.com', 'admin'),
(496, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '16:27:09', 2, 'admin@gmail.com', 'admin'),
(497, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/13', '2025-09-23', '16:32:11', 2, 'admin@gmail.com', 'admin'),
(498, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '16:32:13', 2, 'admin@gmail.com', 'admin'),
(499, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/12', '2025-09-23', '16:32:26', 2, 'admin@gmail.com', 'admin'),
(500, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '16:32:27', 2, 'admin@gmail.com', 'admin'),
(501, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/13', '2025-09-23', '16:38:47', 2, 'admin@gmail.com', 'admin'),
(502, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '16:38:48', 2, 'admin@gmail.com', 'admin'),
(503, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-23', '16:49:16', 2, 'admin@gmail.com', 'admin'),
(504, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '16:49:32', 2, 'admin@gmail.com', 'admin'),
(505, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-23', '16:49:50', 2, 'admin@gmail.com', 'admin'),
(506, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '16:50:28', 2, 'admin@gmail.com', 'admin'),
(507, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/15', '2025-09-23', '16:50:37', 2, 'admin@gmail.com', 'admin'),
(508, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '16:50:39', 2, 'admin@gmail.com', 'admin'),
(509, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/15', '2025-09-23', '16:50:51', 2, 'admin@gmail.com', 'admin'),
(510, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '16:50:52', 2, 'admin@gmail.com', 'admin'),
(511, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/14', '2025-09-23', '16:51:59', 2, 'admin@gmail.com', 'admin'),
(512, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '16:52:00', 2, 'admin@gmail.com', 'admin'),
(513, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/15', '2025-09-23', '16:54:25', 2, 'admin@gmail.com', 'admin'),
(514, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '16:54:28', 2, 'admin@gmail.com', 'admin'),
(515, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/15', '2025-09-23', '16:59:11', 2, 'admin@gmail.com', 'admin'),
(516, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '16:59:18', 2, 'admin@gmail.com', 'admin'),
(517, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/15', '2025-09-23', '17:02:00', 2, 'admin@gmail.com', 'admin'),
(518, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '17:02:01', 2, 'admin@gmail.com', 'admin'),
(519, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/14', '2025-09-23', '17:02:12', 2, 'admin@gmail.com', 'admin'),
(520, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '17:02:13', 2, 'admin@gmail.com', 'admin'),
(521, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/15', '2025-09-23', '17:15:35', 2, 'admin@gmail.com', 'admin'),
(522, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '17:15:36', 2, 'admin@gmail.com', 'admin'),
(523, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/14', '2025-09-23', '17:20:20', 2, 'admin@gmail.com', 'admin'),
(524, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '17:20:21', 2, 'admin@gmail.com', 'admin'),
(525, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin/dashboard', '2025-09-23', '17:23:50', 2, 'admin@gmail.com', 'admin'),
(526, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/all_times/listing', '2025-09-23', '17:24:09', 2, 'admin@gmail.com', 'admin'),
(527, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin/dashboard', '2025-09-23', '17:24:32', 2, 'admin@gmail.com', 'admin'),
(528, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-23', '17:24:37', 2, 'admin@gmail.com', 'admin'),
(529, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-23', '17:24:48', 2, 'admin@gmail.com', 'admin'),
(530, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '17:25:01', 2, 'admin@gmail.com', 'admin'),
(531, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '18:33:55', 2, 'admin@gmail.com', 'admin'),
(532, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/15', '2025-09-23', '18:33:58', 2, 'admin@gmail.com', 'admin'),
(533, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-23', '18:34:00', 2, 'admin@gmail.com', 'admin'),
(534, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-24', '10:25:30', 2, 'admin@gmail.com', 'admin'),
(535, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin/dashboard', '2025-09-24', '10:25:59', 2, 'admin@gmail.com', 'admin'),
(536, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/all_times/listing', '2025-09-24', '10:26:03', 2, 'admin@gmail.com', 'admin'),
(537, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/all_times/add', '2025-09-24', '10:26:04', 2, 'admin@gmail.com', 'admin'),
(538, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-24', '10:26:06', 2, 'admin@gmail.com', 'admin'),
(539, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-24', '10:26:07', 2, 'admin@gmail.com', 'admin'),
(540, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-24', '10:26:14', 2, 'admin@gmail.com', 'admin'),
(541, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-24', '11:38:28', 2, 'admin@gmail.com', 'admin'),
(542, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-24', '11:38:37', 2, 'admin@gmail.com', 'admin'),
(543, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-24', '11:38:46', 2, 'admin@gmail.com', 'admin'),
(544, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/17', '2025-09-24', '11:38:54', 2, 'admin@gmail.com', 'admin'),
(545, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-24', '11:38:56', 2, 'admin@gmail.com', 'admin'),
(546, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/17', '2025-09-24', '11:39:09', 2, 'admin@gmail.com', 'admin'),
(547, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-24', '11:39:10', 2, 'admin@gmail.com', 'admin'),
(548, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/17', '2025-09-24', '11:40:50', 2, 'admin@gmail.com', 'admin'),
(549, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-24', '11:40:51', 2, 'admin@gmail.com', 'admin'),
(550, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin/dashboard', '2025-09-25', '12:33:25', 2, 'admin@gmail.com', 'admin'),
(551, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-25', '12:33:34', 2, 'admin@gmail.com', 'admin'),
(552, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-25', '12:33:35', 2, 'admin@gmail.com', 'admin'),
(553, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-25', '12:33:36', 2, 'admin@gmail.com', 'admin'),
(554, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-25', '12:33:41', 2, 'admin@gmail.com', 'admin'),
(555, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin/dashboard', '2025-09-25', '12:37:55', 2, 'admin@gmail.com', 'admin'),
(556, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-25', '12:37:58', 2, 'admin@gmail.com', 'admin'),
(557, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-25', '12:38:00', 2, 'admin@gmail.com', 'admin'),
(558, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-25', '12:38:07', 2, 'admin@gmail.com', 'admin'),
(559, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin/dashboard', '2025-09-26', '15:42:18', 2, 'admin@gmail.com', 'admin'),
(560, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-26', '15:42:22', 2, 'admin@gmail.com', 'admin'),
(561, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-26', '15:42:26', 2, 'admin@gmail.com', 'admin'),
(562, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-26', '15:42:31', 2, 'admin@gmail.com', 'admin'),
(563, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-26', '15:42:38', 2, 'admin@gmail.com', 'admin'),
(564, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-26', '15:42:44', 2, 'admin@gmail.com', 'admin'),
(565, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/21', '2025-09-26', '16:57:51', 2, 'admin@gmail.com', 'admin'),
(566, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-26', '16:57:54', 2, 'admin@gmail.com', 'admin'),
(567, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-26', '17:49:17', 2, 'admin@gmail.com', 'admin'),
(568, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-26', '17:49:23', 2, 'admin@gmail.com', 'admin'),
(569, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-26', '18:25:11', 2, 'admin@gmail.com', 'admin'),
(570, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-26', '18:25:14', 2, 'admin@gmail.com', 'admin'),
(571, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin/dashboard', '2025-09-26', '18:26:53', 2, 'admin@gmail.com', 'admin'),
(572, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-26', '18:27:13', 2, 'admin@gmail.com', 'admin'),
(573, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-26', '18:29:38', 2, 'admin@gmail.com', 'admin'),
(574, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin/dashboard', '2025-09-26', '18:51:09', 2, 'admin@gmail.com', 'admin'),
(575, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-26', '18:51:28', 2, 'admin@gmail.com', 'admin'),
(576, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin/dashboard', '2025-09-26', '18:51:36', 2, 'admin@gmail.com', 'admin'),
(577, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-26', '19:17:41', 2, 'admin@gmail.com', 'admin'),
(578, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/game/add', '2025-09-26', '19:18:01', 2, 'admin@gmail.com', 'admin'),
(579, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-26', '19:18:23', 2, 'admin@gmail.com', 'admin'),
(580, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/game/edit/60', '2025-09-26', '19:19:13', 2, 'admin@gmail.com', 'admin'),
(581, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-26', '19:19:28', 2, 'admin@gmail.com', 'admin'),
(582, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/game/edit/61', '2025-09-26', '19:20:20', 2, 'admin@gmail.com', 'admin'),
(583, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-26', '19:20:37', 2, 'admin@gmail.com', 'admin'),
(584, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-26', '19:21:12', 2, 'admin@gmail.com', 'admin'),
(585, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-26', '19:21:42', 2, 'admin@gmail.com', 'admin'),
(586, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-26', '19:22:06', 2, 'admin@gmail.com', 'admin'),
(587, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-26', '19:22:08', 2, 'admin@gmail.com', 'admin'),
(588, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-26', '19:22:10', 2, 'admin@gmail.com', 'admin'),
(589, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-26', '19:22:12', 2, 'admin@gmail.com', 'admin'),
(590, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-26', '19:22:14', 2, 'admin@gmail.com', 'admin'),
(591, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-26', '19:22:15', 2, 'admin@gmail.com', 'admin'),
(592, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/game/add', '2025-09-26', '19:22:19', 2, 'admin@gmail.com', 'admin'),
(593, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-26', '19:22:31', 2, 'admin@gmail.com', 'admin'),
(594, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-26', '19:23:02', 2, 'admin@gmail.com', 'admin'),
(595, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-26', '19:23:12', 2, 'admin@gmail.com', 'admin'),
(596, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-26', '19:23:27', 2, 'admin@gmail.com', 'admin'),
(597, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/game/edit/68', '2025-09-26', '19:23:29', 2, 'admin@gmail.com', 'admin'),
(598, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/game/edit/68', '2025-09-26', '19:23:37', 2, 'admin@gmail.com', 'admin'),
(599, '122.162.150.75', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-26', '19:23:42', 2, 'admin@gmail.com', 'admin'),
(600, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin/dashboard', '2025-09-27', '10:38:27', 2, 'admin@gmail.com', 'admin'),
(601, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-27', '10:38:30', 2, 'admin@gmail.com', 'admin'),
(602, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-27', '10:38:32', 2, 'admin@gmail.com', 'admin'),
(603, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-27', '10:38:38', 2, 'admin@gmail.com', 'admin'),
(604, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-27', '10:38:42', 2, 'admin@gmail.com', 'admin'),
(605, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-27', '10:40:57', 2, 'admin@gmail.com', 'admin'),
(606, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-27', '10:41:22', 2, 'admin@gmail.com', 'admin'),
(607, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-27', '10:41:26', 2, 'admin@gmail.com', 'admin'),
(608, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-27', '10:41:27', 2, 'admin@gmail.com', 'admin'),
(609, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-27', '10:41:33', 2, 'admin@gmail.com', 'admin'),
(610, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-27', '10:41:40', 2, 'admin@gmail.com', 'admin'),
(611, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-27', '10:41:46', 2, 'admin@gmail.com', 'admin'),
(612, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-27', '10:42:17', 2, 'admin@gmail.com', 'admin'),
(613, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-27', '10:42:23', 2, 'admin@gmail.com', 'admin'),
(614, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/all_times/listing', '2025-09-27', '10:42:46', 2, 'admin@gmail.com', 'admin'),
(615, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-27', '10:42:50', 2, 'admin@gmail.com', 'admin'),
(616, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-27', '10:42:53', 2, 'admin@gmail.com', 'admin'),
(617, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/add', '2025-09-27', '10:42:54', 2, 'admin@gmail.com', 'admin'),
(618, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-27', '10:42:56', 2, 'admin@gmail.com', 'admin'),
(619, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-27', '10:43:02', 2, 'admin@gmail.com', 'admin'),
(620, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-27', '10:43:05', 2, 'admin@gmail.com', 'admin'),
(621, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-27', '10:43:06', 2, 'admin@gmail.com', 'admin'),
(622, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game/add', '2025-09-27', '10:43:09', 2, 'admin@gmail.com', 'admin'),
(623, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-27', '10:43:12', 2, 'admin@gmail.com', 'admin'),
(624, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-27', '10:43:16', 2, 'admin@gmail.com', 'admin'),
(625, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-27', '10:44:27', 2, 'admin@gmail.com', 'admin'),
(626, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-27', '10:44:35', 2, 'admin@gmail.com', 'admin'),
(627, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-27', '10:44:43', 2, 'admin@gmail.com', 'admin'),
(628, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/all_times/listing', '2025-09-27', '10:45:36', 2, 'admin@gmail.com', 'admin'),
(629, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-27', '10:45:37', 2, 'admin@gmail.com', 'admin'),
(630, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-27', '10:45:38', 2, 'admin@gmail.com', 'admin'),
(631, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/all_times/listing', '2025-09-27', '10:45:40', 2, 'admin@gmail.com', 'admin'),
(632, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/all_times/add', '2025-09-27', '10:45:42', 2, 'admin@gmail.com', 'admin'),
(633, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/all_times/listing', '2025-09-27', '10:45:50', 2, 'admin@gmail.com', 'admin'),
(634, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-27', '10:45:52', 2, 'admin@gmail.com', 'admin'),
(635, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game/add', '2025-09-27', '10:45:56', 2, 'admin@gmail.com', 'admin'),
(636, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-27', '10:45:59', 2, 'admin@gmail.com', 'admin'),
(637, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-27', '10:46:02', 2, 'admin@gmail.com', 'admin'),
(638, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/edit/12', '2025-09-27', '10:46:04', 2, 'admin@gmail.com', 'admin'),
(639, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-27', '10:46:11', 2, 'admin@gmail.com', 'admin'),
(640, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-27', '10:46:13', 2, 'admin@gmail.com', 'admin'),
(641, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-27', '10:46:15', 2, 'admin@gmail.com', 'admin'),
(642, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-27', '10:46:23', 2, 'admin@gmail.com', 'admin'),
(643, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-27', '10:55:24', 2, 'admin@gmail.com', 'admin'),
(644, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-27', '10:55:24', 2, 'admin@gmail.com', 'admin'),
(645, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/all_times/listing', '2025-09-27', '10:55:34', 2, 'admin@gmail.com', 'admin'),
(646, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin/dashboard', '2025-09-27', '10:55:35', 2, 'admin@gmail.com', 'admin'),
(647, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin/dashboard', '2025-09-27', '10:55:51', 2, 'admin@gmail.com', 'admin'),
(648, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/all_times/listing', '2025-09-27', '10:57:04', 2, 'admin@gmail.com', 'admin'),
(649, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-27', '10:57:05', 2, 'admin@gmail.com', 'admin'),
(650, '157.49.4.114', 'https://tirangacab.com/mumbaitaj/admin/dashboard', '2025-09-28', '15:23:22', 2, 'admin@gmail.com', 'admin'),
(651, '157.49.4.114', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-28', '15:23:30', 2, 'admin@gmail.com', 'admin'),
(652, '157.49.4.114', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-28', '15:23:31', 2, 'admin@gmail.com', 'admin'),
(653, '157.49.4.114', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-28', '15:23:41', 2, 'admin@gmail.com', 'admin'),
(654, '157.49.4.114', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-28', '15:25:12', 2, 'admin@gmail.com', 'admin'),
(655, '157.49.4.114', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-28', '15:25:27', 2, 'admin@gmail.com', 'admin'),
(656, '157.49.4.114', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-28', '15:25:42', 2, 'admin@gmail.com', 'admin'),
(657, '157.49.4.114', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-28', '15:25:42', 2, 'admin@gmail.com', 'admin'),
(658, '157.49.4.114', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-28', '15:25:43', 2, 'admin@gmail.com', 'admin'),
(659, '157.49.4.114', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-28', '15:25:44', 2, 'admin@gmail.com', 'admin'),
(660, '157.49.4.114', 'https://tirangacab.com/mumbaitaj/admin/dashboard', '2025-09-28', '15:25:45', 2, 'admin@gmail.com', 'admin'),
(661, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin/dashboard', '2025-09-29', '14:43:38', 2, 'admin@gmail.com', 'admin'),
(662, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-29', '14:43:41', 2, 'admin@gmail.com', 'admin'),
(663, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-29', '14:43:50', 2, 'admin@gmail.com', 'admin'),
(664, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-29', '14:43:59', 2, 'admin@gmail.com', 'admin'),
(665, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/30', '2025-09-29', '14:44:13', 2, 'admin@gmail.com', 'admin'),
(666, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-29', '14:44:24', 2, 'admin@gmail.com', 'admin'),
(667, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/30', '2025-09-29', '14:44:39', 2, 'admin@gmail.com', 'admin'),
(668, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-29', '14:44:45', 2, 'admin@gmail.com', 'admin'),
(669, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-29', '14:47:29', 2, 'admin@gmail.com', 'admin'),
(670, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-29', '14:47:34', 2, 'admin@gmail.com', 'admin'),
(671, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-29', '14:47:40', 2, 'admin@gmail.com', 'admin'),
(672, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-30', '14:44:22', 2, 'admin@gmail.com', 'admin'),
(673, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-30', '14:46:19', 2, 'admin@gmail.com', 'admin'),
(674, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/edit/7', '2025-09-30', '14:46:28', 2, 'admin@gmail.com', 'admin'),
(675, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-30', '14:46:44', 2, 'admin@gmail.com', 'admin'),
(676, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/add', '2025-09-30', '14:46:49', 2, 'admin@gmail.com', 'admin'),
(677, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-30', '14:46:59', 2, 'admin@gmail.com', 'admin'),
(678, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/all_times/listing', '2025-09-30', '14:47:07', 2, 'admin@gmail.com', 'admin'),
(679, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin/dashboard', '2025-09-30', '14:47:09', 2, 'admin@gmail.com', 'admin'),
(680, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/all_times/listing', '2025-09-30', '14:47:12', 2, 'admin@gmail.com', 'admin'),
(681, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin/dashboard', '2025-09-30', '14:49:48', 2, 'admin@gmail.com', 'admin'),
(682, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-30', '14:49:52', 2, 'admin@gmail.com', 'admin'),
(683, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin/dashboard', '2025-09-30', '14:50:12', 2, 'admin@gmail.com', 'admin'),
(684, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-30', '14:50:15', 2, 'admin@gmail.com', 'admin'),
(685, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game/add', '2025-09-30', '14:50:18', 2, 'admin@gmail.com', 'admin'),
(686, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-30', '14:50:28', 2, 'admin@gmail.com', 'admin'),
(687, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-30', '14:50:32', 2, 'admin@gmail.com', 'admin'),
(688, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/add', '2025-09-30', '14:50:37', 2, 'admin@gmail.com', 'admin'),
(689, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-30', '14:50:46', 2, 'admin@gmail.com', 'admin'),
(690, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-30', '14:50:49', 2, 'admin@gmail.com', 'admin'),
(691, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-30', '14:50:51', 2, 'admin@gmail.com', 'admin'),
(692, '122.162.145.53', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-30', '14:51:04', 2, 'admin@gmail.com', 'admin'),
(693, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-30', '14:53:35', 2, 'admin@gmail.com', 'admin'),
(694, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game/add', '2025-09-30', '14:53:36', 2, 'admin@gmail.com', 'admin'),
(695, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-30', '14:53:51', 2, 'admin@gmail.com', 'admin'),
(696, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-30', '14:54:35', 2, 'admin@gmail.com', 'admin'),
(697, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/add', '2025-09-30', '14:54:38', 2, 'admin@gmail.com', 'admin'),
(698, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-30', '14:54:55', 2, 'admin@gmail.com', 'admin'),
(699, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-30', '14:55:13', 2, 'admin@gmail.com', 'admin'),
(700, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-30', '14:55:26', 2, 'admin@gmail.com', 'admin'),
(701, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game/add', '2025-09-30', '14:55:27', 2, 'admin@gmail.com', 'admin'),
(702, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game/listing', '2025-09-30', '14:55:47', 2, 'admin@gmail.com', 'admin'),
(703, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-30', '14:55:53', 2, 'admin@gmail.com', 'admin'),
(704, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/add', '2025-09-30', '14:55:55', 2, 'admin@gmail.com', 'admin'),
(705, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-30', '14:56:08', 2, 'admin@gmail.com', 'admin'),
(706, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-30', '14:56:18', 2, 'admin@gmail.com', 'admin'),
(707, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/all_times/listing', '2025-09-30', '14:56:39', 2, 'admin@gmail.com', 'admin'),
(708, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-30', '14:56:50', 2, 'admin@gmail.com', 'admin'),
(709, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/edit/9', '2025-09-30', '14:56:58', 2, 'admin@gmail.com', 'admin'),
(710, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-30', '14:57:06', 2, 'admin@gmail.com', 'admin'),
(711, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/edit/10', '2025-09-30', '14:57:28', 2, 'admin@gmail.com', 'admin'),
(712, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-30', '14:57:36', 2, 'admin@gmail.com', 'admin'),
(713, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/edit/11', '2025-09-30', '14:57:44', 2, 'admin@gmail.com', 'admin'),
(714, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-30', '14:58:00', 2, 'admin@gmail.com', 'admin'),
(715, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/edit/12', '2025-09-30', '14:58:09', 2, 'admin@gmail.com', 'admin'),
(716, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-30', '14:58:21', 2, 'admin@gmail.com', 'admin'),
(717, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-30', '14:59:26', 2, 'admin@gmail.com', 'admin'),
(718, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-30', '15:02:15', 2, 'admin@gmail.com', 'admin'),
(719, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-30', '15:02:17', 2, 'admin@gmail.com', 'admin'),
(720, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-30', '15:02:21', 2, 'admin@gmail.com', 'admin'),
(721, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-30', '15:02:29', 2, 'admin@gmail.com', 'admin'),
(722, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-30', '15:02:34', 2, 'admin@gmail.com', 'admin'),
(723, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-30', '15:02:49', 2, 'admin@gmail.com', 'admin'),
(724, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-30', '15:03:01', 2, 'admin@gmail.com', 'admin'),
(725, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-30', '15:03:24', 2, 'admin@gmail.com', 'admin'),
(726, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-30', '15:04:01', 2, 'admin@gmail.com', 'admin'),
(727, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-30', '15:04:08', 2, 'admin@gmail.com', 'admin'),
(728, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-30', '15:04:19', 2, 'admin@gmail.com', 'admin'),
(729, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-30', '15:04:29', 2, 'admin@gmail.com', 'admin'),
(730, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-30', '15:04:38', 2, 'admin@gmail.com', 'admin'),
(731, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-30', '15:04:49', 2, 'admin@gmail.com', 'admin'),
(732, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-30', '15:05:01', 2, 'admin@gmail.com', 'admin'),
(733, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-30', '15:05:16', 2, 'admin@gmail.com', 'admin'),
(734, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-30', '15:05:28', 2, 'admin@gmail.com', 'admin'),
(735, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-30', '15:06:42', 2, 'admin@gmail.com', 'admin'),
(736, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-30', '15:06:53', 2, 'admin@gmail.com', 'admin'),
(737, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-30', '15:07:06', 2, 'admin@gmail.com', 'admin'),
(738, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-30', '15:07:18', 2, 'admin@gmail.com', 'admin'),
(739, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-30', '15:07:39', 2, 'admin@gmail.com', 'admin'),
(740, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-30', '15:07:50', 2, 'admin@gmail.com', 'admin'),
(741, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-09-30', '23:28:11', 2, 'admin@gmail.com', 'admin'),
(742, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-30', '23:28:16', 2, 'admin@gmail.com', 'admin'),
(743, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-30', '23:28:19', 2, 'admin@gmail.com', 'admin'),
(744, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-30', '23:28:30', 2, 'admin@gmail.com', 'admin'),
(745, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-09-30', '23:28:52', 2, 'admin@gmail.com', 'admin'),
(746, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-09-30', '23:29:06', 2, 'admin@gmail.com', 'admin'),
(747, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:30:46', 2, 'admin@gmail.com', 'admin'),
(748, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:30:50', 2, 'admin@gmail.com', 'admin'),
(749, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:31:32', 2, 'admin@gmail.com', 'admin'),
(750, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:31:47', 2, 'admin@gmail.com', 'admin'),
(751, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:32:00', 2, 'admin@gmail.com', 'admin');
INSERT INTO `activity_records` (`id`, `ip_addreass`, `url`, `date`, `time`, `admin_id`, `admin_username`, `admin_password`) VALUES
(752, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:32:16', 2, 'admin@gmail.com', 'admin'),
(753, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:32:30', 2, 'admin@gmail.com', 'admin'),
(754, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:32:33', 2, 'admin@gmail.com', 'admin'),
(755, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:32:46', 2, 'admin@gmail.com', 'admin'),
(756, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:32:57', 2, 'admin@gmail.com', 'admin'),
(757, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:33:09', 2, 'admin@gmail.com', 'admin'),
(758, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:33:11', 2, 'admin@gmail.com', 'admin'),
(759, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:33:23', 2, 'admin@gmail.com', 'admin'),
(760, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:33:33', 2, 'admin@gmail.com', 'admin'),
(761, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:33:48', 2, 'admin@gmail.com', 'admin'),
(762, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:33:54', 2, 'admin@gmail.com', 'admin'),
(763, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:34:06', 2, 'admin@gmail.com', 'admin'),
(764, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:34:12', 2, 'admin@gmail.com', 'admin'),
(765, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:34:27', 2, 'admin@gmail.com', 'admin'),
(766, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:34:32', 2, 'admin@gmail.com', 'admin'),
(767, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:34:42', 2, 'admin@gmail.com', 'admin'),
(768, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:34:48', 2, 'admin@gmail.com', 'admin'),
(769, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin/dashboard', '2025-10-02', '22:35:02', 2, 'admin@gmail.com', 'admin'),
(770, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:35:06', 2, 'admin@gmail.com', 'admin'),
(771, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:35:12', 2, 'admin@gmail.com', 'admin'),
(772, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:35:22', 2, 'admin@gmail.com', 'admin'),
(773, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:35:24', 2, 'admin@gmail.com', 'admin'),
(774, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:35:40', 2, 'admin@gmail.com', 'admin'),
(775, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:36:02', 2, 'admin@gmail.com', 'admin'),
(776, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:36:35', 2, 'admin@gmail.com', 'admin'),
(777, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:36:41', 2, 'admin@gmail.com', 'admin'),
(778, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:36:53', 2, 'admin@gmail.com', 'admin'),
(779, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:37:11', 2, 'admin@gmail.com', 'admin'),
(780, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:37:13', 2, 'admin@gmail.com', 'admin'),
(781, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:37:17', 2, 'admin@gmail.com', 'admin'),
(782, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:37:36', 2, 'admin@gmail.com', 'admin'),
(783, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:37:39', 2, 'admin@gmail.com', 'admin'),
(784, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:37:53', 2, 'admin@gmail.com', 'admin'),
(785, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:37:55', 2, 'admin@gmail.com', 'admin'),
(786, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:38:07', 2, 'admin@gmail.com', 'admin'),
(787, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:38:09', 2, 'admin@gmail.com', 'admin'),
(788, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:38:21', 2, 'admin@gmail.com', 'admin'),
(789, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:38:23', 2, 'admin@gmail.com', 'admin'),
(790, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:38:36', 2, 'admin@gmail.com', 'admin'),
(791, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/59', '2025-10-02', '22:39:14', 2, 'admin@gmail.com', 'admin'),
(792, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:39:30', 2, 'admin@gmail.com', 'admin'),
(793, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:39:45', 2, 'admin@gmail.com', 'admin'),
(794, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:40:34', 2, 'admin@gmail.com', 'admin'),
(795, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:40:46', 2, 'admin@gmail.com', 'admin'),
(796, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-10-02', '22:41:12', 2, 'admin@gmail.com', 'admin'),
(797, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/edit/9', '2025-10-02', '22:41:21', 2, 'admin@gmail.com', 'admin'),
(798, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-10-02', '22:41:26', 2, 'admin@gmail.com', 'admin'),
(799, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:41:31', 2, 'admin@gmail.com', 'admin'),
(800, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:41:38', 2, 'admin@gmail.com', 'admin'),
(801, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:41:59', 2, 'admin@gmail.com', 'admin'),
(802, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:42:11', 2, 'admin@gmail.com', 'admin'),
(803, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:42:18', 2, 'admin@gmail.com', 'admin'),
(804, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:42:32', 2, 'admin@gmail.com', 'admin'),
(805, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/all_times/listing', '2025-10-02', '22:43:02', 2, 'admin@gmail.com', 'admin'),
(806, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-10-02', '22:43:10', 2, 'admin@gmail.com', 'admin'),
(807, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/edit/12', '2025-10-02', '22:43:18', 2, 'admin@gmail.com', 'admin'),
(808, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/game_times/listing', '2025-10-02', '22:43:29', 2, 'admin@gmail.com', 'admin'),
(809, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:43:32', 2, 'admin@gmail.com', 'admin'),
(810, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/62', '2025-10-02', '22:43:36', 2, 'admin@gmail.com', 'admin'),
(811, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/edit/62', '2025-10-02', '22:43:46', 2, 'admin@gmail.com', 'admin'),
(812, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:43:48', 2, 'admin@gmail.com', 'admin'),
(813, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:43:55', 2, 'admin@gmail.com', 'admin'),
(814, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:43:59', 2, 'admin@gmail.com', 'admin'),
(815, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:44:22', 2, 'admin@gmail.com', 'admin'),
(816, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:44:33', 2, 'admin@gmail.com', 'admin'),
(817, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:44:48', 2, 'admin@gmail.com', 'admin'),
(818, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:44:50', 2, 'admin@gmail.com', 'admin'),
(819, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:44:59', 2, 'admin@gmail.com', 'admin'),
(820, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:45:01', 2, 'admin@gmail.com', 'admin'),
(821, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:45:10', 2, 'admin@gmail.com', 'admin'),
(822, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/add', '2025-10-02', '22:45:13', 2, 'admin@gmail.com', 'admin'),
(823, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-02', '22:45:27', 2, 'admin@gmail.com', 'admin'),
(824, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-03', '17:20:28', 2, 'admin@gmail.com', 'admin'),
(825, '122.162.146.39', 'https://tirangacab.com/mumbaitaj/admin_con/number/listing', '2025-10-04', '17:39:50', 2, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `all_times`
--

CREATE TABLE `all_times` (
  `id` int(11) NOT NULL,
  `time` time NOT NULL,
  `time_string` double DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `addeddate` datetime DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `all_times`
--

INSERT INTO `all_times` (`id`, `time`, `time_string`, `status`, `addeddate`, `modifieddate`) VALUES
(1, '00:00:00', 1758306600, '1', '2025-09-20 10:45:12', NULL),
(2, '00:30:00', 1758308400, '1', '2025-09-20 10:45:27', NULL),
(3, '01:00:00', 1758310200, '1', '2025-09-20 10:45:41', NULL),
(4, '01:30:00', 1758312000, '1', '2025-09-20 10:45:45', NULL),
(5, '02:00:00', 1758313800, '1', '2025-09-20 10:45:50', NULL),
(6, '02:30:00', 1758315600, '1', '2025-09-20 10:45:54', NULL),
(7, '03:00:00', 1758317400, '1', '2025-09-20 10:45:58', NULL),
(8, '03:30:00', 1758319200, '1', '2025-09-20 10:46:02', NULL),
(9, '04:00:00', 1758321000, '1', '2025-09-20 10:46:19', NULL),
(10, '04:30:00', 1758322800, '1', '2025-09-20 10:46:22', NULL),
(11, '05:00:00', 1758324600, '1', '2025-09-20 10:46:26', NULL),
(12, '05:30:00', 1758326400, '1', '2025-09-20 10:46:29', NULL),
(13, '06:00:00', 1758328200, '1', '2025-09-20 10:46:33', NULL),
(14, '06:30:00', 1758330000, '1', '2025-09-20 10:46:37', NULL),
(15, '07:00:00', 1758331800, '1', '2025-09-20 10:46:41', NULL),
(16, '07:30:00', 1758333600, '1', '2025-09-20 10:46:44', NULL),
(17, '08:00:00', 1758335400, '1', '2025-09-20 10:46:48', NULL),
(18, '08:30:00', 1758337200, '1', '2025-09-20 10:46:51', NULL),
(19, '09:00:00', 1758339000, '1', '2025-09-20 10:46:55', NULL),
(20, '09:30:00', 1758340800, '1', '2025-09-20 10:46:58', NULL),
(21, '10:00:00', 1758342600, '1', '2025-09-20 10:47:03', NULL),
(22, '10:30:00', 1758344400, '1', '2025-09-20 10:47:06', NULL),
(23, '11:00:00', 1758346200, '1', '2025-09-20 10:47:09', NULL),
(24, '11:30:00', 1758348000, '1', '2025-09-20 10:47:12', NULL),
(25, '12:00:00', 1758349800, '1', '2025-09-20 10:47:16', '2025-09-20 10:47:43'),
(26, '12:30:00', 1758351600, '1', '2025-09-20 10:48:10', NULL),
(27, '13:00:00', 1758353400, '1', '2025-09-20 10:48:15', NULL),
(28, '13:30:00', 1758355200, '1', '2025-09-20 10:48:18', NULL),
(29, '14:00:00', 1758357000, '1', '2025-09-20 10:48:22', NULL),
(30, '14:30:00', 1758358800, '1', '2025-09-20 10:48:25', NULL),
(31, '15:00:00', 1758360600, '1', '2025-09-20 10:48:28', NULL),
(32, '15:30:00', 1758362400, '1', '2025-09-20 10:48:31', NULL),
(33, '16:00:00', 1758364200, '1', '2025-09-20 10:48:34', NULL),
(34, '16:30:00', 1758366000, '1', '2025-09-20 10:48:37', NULL),
(35, '17:00:00', 1758367800, '1', '2025-09-20 10:48:43', NULL),
(36, '17:30:00', 1758369600, '1', '2025-09-20 10:48:47', NULL),
(37, '18:00:00', 1758371400, '1', '2025-09-20 10:48:51', NULL),
(38, '18:30:00', 1758373200, '1', '2025-09-20 10:48:53', NULL),
(39, '19:00:00', 1758375000, '1', '2025-09-20 10:48:57', NULL),
(40, '19:30:00', 1758376800, '1', '2025-09-20 10:49:00', NULL),
(41, '20:00:00', 1758378600, '1', '2025-09-20 10:49:04', NULL),
(42, '20:30:00', 1758380400, '1', '2025-09-20 10:49:07', NULL),
(43, '21:00:00', 1758382200, '1', '2025-09-20 10:49:11', NULL),
(44, '21:30:00', 1758384000, '1', '2025-09-20 10:49:13', NULL),
(45, '22:00:00', 1758385800, '1', '2025-09-20 10:49:17', NULL),
(46, '22:30:00', 1758387600, '1', '2025-09-20 10:49:20', NULL),
(47, '23:00:00', 1758389400, '1', '2025-09-20 10:49:24', NULL),
(48, '23:30:00', 1758391200, '1', '2025-09-20 10:49:28', '2025-09-20 11:04:19');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `status` int(11) NOT NULL,
  `addeddate` datetime NOT NULL,
  `modifieddate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `state_id`, `name`, `slug`, `status`, `addeddate`, `modifieddate`) VALUES
(1, 32, 'North and Middle Andaman', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 32, 'South Andaman', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 32, 'Nicobar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 'Adilabad', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 'Anantapur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 'Chittoor', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 1, 'East Godavari', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 1, 'Guntur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 1, 'Hyderabad', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 1, 'Kadapa', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 1, 'Karimnagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 1, 'Khammam', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 1, 'Krishna', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 1, 'Kurnool', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 1, 'Mahbubnagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 1, 'Medak', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 1, 'Nalgonda', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 1, 'Nellore', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 1, 'Nizamabad', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 1, 'Prakasam', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 1, 'Rangareddi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 1, 'Srikakulam', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 1, 'Vishakhapatnam', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 1, 'Vizianagaram', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 1, 'Warangal', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 1, 'West Godavari', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 3, 'Anjaw', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 3, 'Changlang', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 3, 'East Kameng', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 3, 'Lohit', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 3, 'Lower Subansiri', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 3, 'Papum Pare', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 3, 'Tirap', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 3, 'Dibang Valley', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 3, 'Upper Subansiri', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 3, 'West Kameng', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 2, 'Barpeta', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 2, 'Bongaigaon', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 2, 'Cachar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 2, 'Darrang', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 2, 'Dhemaji', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 2, 'Dhubri', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 2, 'Dibrugarh', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 2, 'Goalpara', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 2, 'Golaghat', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 2, 'Hailakandi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 2, 'Jorhat', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 2, 'Karbi Anglong', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 2, 'Karimganj', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 2, 'Kokrajhar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 2, 'Lakhimpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 2, 'Marigaon', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 2, 'Nagaon', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 2, 'Nalbari', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 2, 'North Cachar Hills', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 2, 'Sibsagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 2, 'Sonitpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 2, 'Tinsukia', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 4, 'Araria', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 4, 'Aurangabad', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 4, 'Banka', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 4, 'Begusarai', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 4, 'Bhagalpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 4, 'Bhojpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 4, 'Buxar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 4, 'Darbhanga', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 4, 'Purba Champaran', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 4, 'Gaya', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 4, 'Gopalganj', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 4, 'Jamui', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 4, 'Jehanabad', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 4, 'Khagaria', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 4, 'Kishanganj', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 4, 'Kaimur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 4, 'Katihar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 4, 'Lakhisarai', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 4, 'Madhubani', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 4, 'Munger', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 4, 'Madhepura', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 4, 'Muzaffarpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 4, 'Nalanda', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 4, 'Nawada', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 4, 'Patna', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 4, 'Purnia', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 4, 'Rohtas', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 4, 'Saharsa', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 4, 'Samastipur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 4, 'Sheohar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 4, 'Sheikhpura', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 4, 'Saran', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 4, 'Sitamarhi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 4, 'Supaul', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 4, 'Siwan', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 4, 'Vaishali', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 4, 'Pashchim Champaran', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 36, 'Bastar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 36, 'Bilaspur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 36, 'Dantewada', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 36, 'Dhamtari', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 36, 'Durg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 36, 'Jashpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 36, 'Janjgir-Champa', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 36, 'Korba', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 36, 'Koriya', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 36, 'Kanker', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 36, 'Kawardha', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 36, 'Mahasamund', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 36, 'Raigarh', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 36, 'Rajnandgaon', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 36, 'Raipur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 36, 'Surguja', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 29, 'Diu', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 29, 'Daman', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 25, 'Central Delhi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 25, 'East Delhi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 25, 'New Delhi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 25, 'North Delhi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 25, 'North East Delhi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 25, 'North West Delhi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 25, 'South Delhi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 25, 'South West Delhi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 25, 'West Delhi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 26, 'North Goa', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 26, 'South Goa', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 5, 'Ahmedabad', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 5, 'Amreli District', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 5, 'Anand', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 5, 'Banaskantha', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 5, 'Bharuch', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 5, 'Bhavnagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 5, 'Dahod', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 5, 'The Dangs', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 5, 'Gandhinagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 5, 'Jamnagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 5, 'Junagadh', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 5, 'Kutch', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 5, 'Kheda', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 5, 'Mehsana', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 5, 'Narmada', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 5, 'Navsari', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 5, 'Patan', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 5, 'Panchmahal', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 5, 'Porbandar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 5, 'Rajkot', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 5, 'Sabarkantha', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 5, 'Surendranagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 5, 'Surat', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 5, 'Vadodara', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 5, 'Valsad', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 6, 'Ambala', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 6, 'Bhiwani', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 6, 'Faridabad', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 6, 'Fatehabad', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 6, 'Gurgaon', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 6, 'Hissar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 6, 'Jhajjar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 6, 'Jind', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 6, 'Karnal', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 6, 'Kaithal', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 6, 'Kurukshetra', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 6, 'Mahendragarh', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 6, 'Mewat', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 6, 'Panchkula', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 6, 'Panipat', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 6, 'Rewari', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 6, 'Rohtak', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 6, 'Sirsa', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 6, 'Sonepat', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 6, 'Yamuna Nagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 6, 'Palwal', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 7, 'Bilaspur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 7, 'Chamba', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 7, 'Hamirpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 7, 'Kangra', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 7, 'Kinnaur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 7, 'Kulu', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 7, 'Lahaul and Spiti', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 7, 'Mandi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 7, 'Shimla', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 7, 'Sirmaur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 7, 'Solan', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 7, 'Una', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 8, 'Anantnag', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 8, 'Badgam', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 8, 'Bandipore', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 8, 'Baramula', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 8, 'Doda', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 8, 'Jammu', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 8, 'Kargil', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 8, 'Kathua', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 8, 'Kupwara', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 8, 'Leh', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 8, 'Poonch', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 8, 'Pulwama', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 8, 'Rajauri', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 8, 'Srinagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 8, 'Samba', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 8, 'Udhampur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 34, 'Bokaro', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 34, 'Chatra', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 34, 'Deoghar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 34, 'Dhanbad', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 34, 'Dumka', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 34, 'Purba Singhbhum', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 34, 'Garhwa', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 34, 'Giridih', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 34, 'Godda', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 34, 'Gumla', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 34, 'Hazaribagh', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 34, 'Koderma', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 34, 'Lohardaga', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 34, 'Pakur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 34, 'Palamu', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 34, 'Ranchi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 34, 'Sahibganj', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 34, 'Seraikela and Kharsawan', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 34, 'Pashchim Singhbhum', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 34, 'Ramgarh', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 9, 'Bidar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 9, 'Belgaum', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 9, 'Bijapur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 9, 'Bagalkot', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 9, 'Bellary', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 9, 'Bangalore Rural District', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 9, 'Bangalore Urban District', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 9, 'Chamarajnagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 9, 'Chikmagalur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 9, 'Chitradurga', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 9, 'Davanagere', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 9, 'Dharwad', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 9, 'Dakshina Kannada', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 9, 'Gadag', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 9, 'Gulbarga', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 9, 'Hassan', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 9, 'Haveri District', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 9, 'Kodagu', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 9, 'Kolar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 9, 'Koppal', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 9, 'Mandya', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 9, 'Mysore', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 9, 'Raichur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 9, 'Shimoga', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 9, 'Tumkur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 9, 'Udupi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 9, 'Uttara Kannada', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 9, 'Ramanagara', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 9, 'Chikballapur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 9, 'Yadagiri', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 10, 'Alappuzha', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 10, 'Ernakulam', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 10, 'Idukki', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 10, 'Kollam', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 10, 'Kannur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, 10, 'Kasaragod', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 10, 'Kottayam', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 10, 'Kozhikode', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 10, 'Malappuram', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, 10, 'Palakkad', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 10, 'Pathanamthitta', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 10, 'Thrissur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 10, 'Thiruvananthapuram', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 10, 'Wayanad', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 11, 'Alirajpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 11, 'Anuppur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 11, 'Ashok Nagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, 11, 'Balaghat', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 11, 'Barwani', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 11, 'Betul', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 11, 'Bhind', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, 11, 'Bhopal', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 11, 'Burhanpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 11, 'Chhatarpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 11, 'Chhindwara', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 11, 'Damoh', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 11, 'Datia', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 11, 'Dewas', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 11, 'Dhar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 11, 'Dindori', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 11, 'Guna', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 11, 'Gwalior', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 11, 'Harda', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 11, 'Hoshangabad', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 11, 'Indore', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 11, 'Jabalpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 11, 'Jhabua', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, 11, 'Katni', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 11, 'Khandwa', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 11, 'Khargone', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 11, 'Mandla', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 11, 'Mandsaur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 11, 'Morena', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 11, 'Narsinghpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 11, 'Neemuch', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 11, 'Panna', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 11, 'Rewa', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 11, 'Rajgarh', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 11, 'Ratlam', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 11, 'Raisen', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 11, 'Sagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 11, 'Satna', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 11, 'Sehore', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, 11, 'Seoni', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 11, 'Shahdol', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 11, 'Shajapur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 11, 'Sheopur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 11, 'Shivpuri', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, 11, 'Sidhi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 11, 'Singrauli', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, 11, 'Tikamgarh', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 11, 'Ujjain', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, 11, 'Umaria', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 11, 'Vidisha', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(313, 12, 'Ahmednagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, 12, 'Akola', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, 12, 'Amrawati', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 12, 'Aurangabad', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(317, 12, 'Bhandara', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, 12, 'Beed', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(319, 12, 'Buldhana', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, 12, 'Chandrapur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(321, 12, 'Dhule', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, 12, 'Gadchiroli', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, 12, 'Gondiya', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, 12, 'Hingoli', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(325, 12, 'Jalgaon', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(326, 12, 'Jalna', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, 12, 'Kolhapur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, 12, 'Latur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(329, 12, 'Mumbai City', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, 12, 'Mumbai suburban', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, 12, 'Nandurbar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 12, 'Nanded', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, 12, 'Nagpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(334, 12, 'Nashik', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, 12, 'Osmanabad', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 12, 'Parbhani', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, 12, 'Pune', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, 12, 'Raigad', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, 12, 'Ratnagiri', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, 12, 'Sindhudurg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 12, 'Sangli', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, 12, 'Solapur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 12, 'Satara', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, 12, 'Thane', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, 12, 'Wardha', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, 12, 'Washim', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 12, 'Yavatmal', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(348, 13, 'Bishnupur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, 13, 'Churachandpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 13, 'Chandel', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, 13, 'Imphal East', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, 13, 'Senapati', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, 13, 'Tamenglong', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(354, 13, 'Thoubal', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, 13, 'Ukhrul', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, 13, 'Imphal West', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, 14, 'East Garo Hills', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, 14, 'East Khasi Hills', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, 14, 'Jaintia Hills', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(360, 14, 'Ri-Bhoi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, 14, 'South Garo Hills', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(362, 14, 'West Garo Hills', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, 14, 'West Khasi Hills', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, 15, 'Aizawl', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, 15, 'Champhai', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, 15, 'Kolasib', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(367, 15, 'Lawngtlai', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, 15, 'Lunglei', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, 15, 'Mamit', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(370, 15, 'Saiha', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(371, 15, 'Serchhip', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(372, 16, 'Dimapur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(373, 16, 'Kohima', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(374, 16, 'Mokokchung', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(375, 16, 'Mon', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, 16, 'Phek', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(377, 16, 'Tuensang', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(378, 16, 'Wokha', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(379, 16, 'Zunheboto', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(380, 17, 'Angul', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(381, 17, 'Boudh', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(382, 17, 'Bhadrak', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(383, 17, 'Bolangir', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(384, 17, 'Bargarh', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(385, 17, 'Baleswar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(386, 17, 'Cuttack', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(387, 17, 'Debagarh', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(388, 17, 'Dhenkanal', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(389, 17, 'Ganjam', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(390, 17, 'Gajapati', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(391, 17, 'Jharsuguda', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, 17, 'Jajapur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(393, 17, 'Jagatsinghpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(394, 17, 'Khordha', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(395, 17, 'Kendujhar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(396, 17, 'Kalahandi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(397, 17, 'Kandhamal', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(398, 17, 'Koraput', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(399, 17, 'Kendrapara', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(400, 17, 'Malkangiri', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(401, 17, 'Mayurbhanj', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(402, 17, 'Nabarangpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(403, 17, 'Nuapada', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(404, 17, 'Nayagarh', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(405, 17, 'Puri', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(406, 17, 'Rayagada', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(407, 17, 'Sambalpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(408, 17, 'Subarnapur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(409, 17, 'Sundargarh', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(410, 27, 'Karaikal', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(411, 27, 'Mahe', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(412, 27, 'Puducherry', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(413, 27, 'Yanam', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(414, 18, 'Amritsar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(415, 18, 'Bathinda', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(416, 18, 'Firozpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(417, 18, 'Faridkot', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(418, 18, 'Fatehgarh Sahib', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(419, 18, 'Gurdaspur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(420, 18, 'Hoshiarpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(421, 18, 'Jalandhar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(422, 18, 'Kapurthala', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(423, 18, 'Ludhiana', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(424, 18, 'Mansa', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(425, 18, 'Moga', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(426, 18, 'Mukatsar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(427, 18, 'Nawan Shehar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(428, 18, 'Patiala', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(429, 18, 'Rupnagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(430, 18, 'Sangrur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(431, 19, 'Ajmer', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(432, 19, 'Alwar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(433, 19, 'Bikaner', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(434, 19, 'Barmer', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(435, 19, 'Banswara', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(436, 19, 'Bharatpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(437, 19, 'Baran', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(438, 19, 'Bundi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(439, 19, 'Bhilwara', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(440, 19, 'Churu', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(441, 19, 'Chittorgarh', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(442, 19, 'Dausa', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(443, 19, 'Dholpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(444, 19, 'Dungapur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(445, 19, 'Ganganagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(446, 19, 'Hanumangarh', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(447, 19, 'Juhnjhunun', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(448, 19, 'Jalore', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(449, 19, 'Jodhpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(450, 19, 'Jaipur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(451, 19, 'Jaisalmer', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(452, 19, 'Jhalawar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(453, 19, 'Karauli', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(454, 19, 'Kota', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(455, 19, 'Nagaur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(456, 19, 'Pali', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(457, 19, 'Pratapgarh', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(458, 19, 'Rajsamand', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(459, 19, 'Sikar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(460, 19, 'Sawai Madhopur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(461, 19, 'Sirohi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(462, 19, 'Tonk', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(463, 19, 'Udaipur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(464, 20, 'East Sikkim', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(465, 20, 'North Sikkim', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(466, 20, 'South Sikkim', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(467, 20, 'West Sikkim', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(468, 21, 'Ariyalur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(469, 21, 'Chennai', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(470, 21, 'Coimbatore', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(471, 21, 'Cuddalore', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(472, 21, 'Dharmapuri', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(473, 21, 'Dindigul', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(474, 21, 'Erode', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(475, 21, 'Kanchipuram', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(476, 21, 'Kanyakumari', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(477, 21, 'Karur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(478, 21, 'Madurai', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(479, 21, 'Nagapattinam', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(480, 21, 'The Nilgiris', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(481, 21, 'Namakkal', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(482, 21, 'Perambalur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(483, 21, 'Pudukkottai', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(484, 21, 'Ramanathapuram', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(485, 21, 'Salem', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(486, 21, 'Sivagangai', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(487, 21, 'Tiruppur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(488, 21, 'Tiruchirappalli', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(489, 21, 'Theni', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(490, 21, 'Tirunelveli', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(491, 21, 'Thanjavur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(492, 21, 'Thoothukudi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(493, 21, 'Thiruvallur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(494, 21, 'Thiruvarur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(495, 21, 'Tiruvannamalai', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(496, 21, 'Vellore', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(497, 21, 'Villupuram', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(498, 22, 'Dhalai', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(499, 22, 'North Tripura', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(500, 22, 'South Tripura', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(501, 22, 'West Tripura', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(502, 33, 'Almora', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(503, 33, 'Bageshwar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(504, 33, 'Chamoli', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(505, 33, 'Champawat', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(506, 33, 'Dehradun', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(507, 33, 'Haridwar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(508, 33, 'Nainital', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(509, 33, 'Pauri Garhwal', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(510, 33, 'Pithoragharh', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(511, 33, 'Rudraprayag', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(512, 33, 'Tehri Garhwal', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(513, 33, 'Udham Singh Nagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(514, 33, 'Uttarkashi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(515, 23, 'Agra', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(516, 23, 'Allahabad', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(517, 23, 'Aligarh', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(518, 23, 'Ambedkar Nagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(519, 23, 'Auraiya', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(520, 23, 'Azamgarh', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(521, 23, 'Barabanki', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(522, 23, 'Badaun', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(523, 23, 'Bagpat', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(524, 23, 'Bahraich', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(525, 23, 'Bijnor', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(526, 23, 'Ballia', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(527, 23, 'Banda', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(528, 23, 'Balrampur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(529, 23, 'Bareilly', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(530, 23, 'Basti', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(531, 23, 'Bulandshahr', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(532, 23, 'Chandauli', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(533, 23, 'Chitrakoot', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(534, 23, 'Deoria', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(535, 23, 'Etah', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(536, 23, 'Kanshiram Nagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(537, 23, 'Etawah', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(538, 23, 'Firozabad', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(539, 23, 'Farrukhabad', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(540, 23, 'Fatehpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(541, 23, 'Faizabad', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(542, 23, 'Gautam Buddha Nagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(543, 23, 'Gonda', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(544, 23, 'Ghazipur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(545, 23, 'Gorkakhpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(546, 23, 'Ghaziabad', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(547, 23, 'Hamirpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(548, 23, 'Hardoi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(549, 23, 'Mahamaya Nagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(550, 23, 'Jhansi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(551, 23, 'Jalaun', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(552, 23, 'Jyotiba Phule Nagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(553, 23, 'Jaunpur District', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(554, 23, 'Kanpur Dehat', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(555, 23, 'Kannauj', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(556, 23, 'Kanpur Nagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(557, 23, 'Kaushambi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(558, 23, 'Kushinagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(559, 23, 'Lalitpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(560, 23, 'Lakhimpur Kheri', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(561, 23, 'Lucknow', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(562, 23, 'Mau', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(563, 23, 'Meerut', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(564, 23, 'Maharajganj', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(565, 23, 'Mahoba', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(566, 23, 'Mirzapur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(567, 23, 'Moradabad', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(568, 23, 'Mainpuri', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(569, 23, 'Mathura', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(570, 23, 'Muzaffarnagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(571, 23, 'Pilibhit', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(572, 23, 'Pratapgarh', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(573, 23, 'Rampur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(574, 23, 'Rae Bareli', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(575, 23, 'Saharanpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(576, 23, 'Sitapur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(577, 23, 'Shahjahanpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(578, 23, 'Sant Kabir Nagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(579, 23, 'Siddharthnagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(580, 23, 'Sonbhadra', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(581, 23, 'Sant Ravidas Nagar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(582, 23, 'Sultanpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(583, 23, 'Shravasti', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(584, 23, 'Unnao', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(585, 23, 'Varanasi', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(586, 24, 'Birbhum', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(587, 24, 'Bankura', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(588, 24, 'Bardhaman', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(589, 24, 'Darjeeling', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(590, 24, 'Dakshin Dinajpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(591, 24, 'Hooghly', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(592, 24, 'Howrah', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(593, 24, 'Jalpaiguri', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(594, 24, 'Cooch Behar', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(595, 24, 'Kolkata', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(596, 24, 'Malda', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(597, 24, 'Midnapore', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(598, 24, 'Murshidabad', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(599, 24, 'Nadia', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(600, 24, 'North 24 Parganas', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(601, 24, 'South 24 Parganas', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(602, 24, 'Purulia', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(603, 24, 'Uttar Dinajpur', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `mobile` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `addeddate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `mobile`, `subject`, `message`, `addeddate`) VALUES
(1, 'wol 1', 'wol1@gmail.com', '123456789', 'Test', 'teste ete st', '2024-08-24 14:18:28');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `content` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `name`, `content`) VALUES
(1, 'About Us', ''),
(2, 'Privacy Policy', ''),
(3, 'Terms & Conditions', '');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `id` int(255) NOT NULL,
  `name` varchar(355) DEFAULT NULL,
  `image` text NOT NULL,
  `game_time` varchar(50) DEFAULT NULL,
  `status` varchar(355) DEFAULT NULL,
  `addeddate` datetime DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`id`, `name`, `image`, `game_time`, `status`, `addeddate`, `modifieddate`) VALUES
(59, 'Mumbai Taj', 'gali.jpg', '', '1', NULL, '2025-09-19 13:09:36'),
(60, 'Delhi King', 'gali.jpg', '', '1', NULL, '2025-09-19 13:09:55'),
(61, 'UP', 'gali.jpg', '', '1', NULL, '2025-09-19 13:10:05'),
(63, 'FARIDABAD', '', '', '1', NULL, NULL),
(64, 'GAZIYABAD', '', '', '1', NULL, NULL),
(65, 'GALI', '', '', '1', NULL, NULL),
(66, 'DISAWAR', '', '', '1', NULL, '2025-09-19 13:09:20'),
(67, 'Mumbai taz demo', '', NULL, '1', '2025-09-30 14:50:28', NULL),
(68, 'Delhi Bazar', '', NULL, '1', '2025-09-30 14:53:51', NULL),
(69, 'Shree Ganesh ', '', NULL, '1', '2025-09-30 14:55:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `game_times`
--

CREATE TABLE `game_times` (
  `id` int(11) NOT NULL,
  `game_id` int(50) NOT NULL,
  `game_time_id` int(50) NOT NULL,
  `gametime` time NOT NULL,
  `stringtime` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `addeddate` datetime DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `game_times`
--

INSERT INTO `game_times` (`id`, `game_id`, `game_time_id`, `gametime`, `stringtime`, `status`, `addeddate`, `modifieddate`) VALUES
(1, 59, 27, '13:00:00', '1758353400', '1', '2025-09-20 10:51:30', '2025-09-20 11:06:05'),
(2, 59, 29, '14:00:00', '1758357000', '1', '2025-09-20 10:51:39', '2025-09-20 11:06:03'),
(3, 59, 31, '15:00:00', '1758360600', '1', '2025-09-20 10:51:50', '2025-09-20 11:06:00'),
(4, 59, 33, '16:00:00', '1758364200', '1', '2025-09-20 10:51:58', '2025-09-20 11:05:57'),
(5, 59, 35, '17:00:00', '1758367800', '1', '2025-09-20 10:52:05', '2025-09-20 11:05:52'),
(6, 59, 37, '18:00:00', '1758371400', '1', '2025-09-20 10:52:12', '2025-09-20 11:05:49'),
(9, 63, 38, '18:30:00', '1758373200', '1', '2025-09-20 10:52:57', '2025-10-02 22:41:26'),
(10, 64, 45, '22:00:00', '1758385800', '1', '2025-09-20 10:53:10', '2025-09-30 14:57:36'),
(11, 65, 25, '12:00:00', '1758349800', '1', '2025-09-20 10:53:23', '2025-09-30 14:58:00'),
(12, 66, 13, '06:00:00', '1758328200', '1', '2025-09-20 10:53:32', '2025-10-02 22:43:29'),
(15, 68, 7, '03:00:00', '1758317400', '1', '2025-09-30 14:54:55', NULL),
(16, 69, 10, '04:30:00', '1758322800', '1', '2025-09-30 14:56:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `id` int(11) NOT NULL,
  `user_id` text NOT NULL,
  `device_id` text NOT NULL,
  `ip_address` text NOT NULL,
  `login_date` date NOT NULL,
  `login_time` time NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `logout_date` date DEFAULT NULL,
  `logout_time` time DEFAULT NULL,
  `login_status` int(11) NOT NULL COMMENT '0=login,1=logout,'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`id`, `user_id`, `device_id`, `ip_address`, `login_date`, `login_time`, `username`, `password`, `logout_date`, `logout_time`, `login_status`) VALUES
(16, '2', '68cd032e70ada::1', '::1', '2025-09-19', '12:45:58', 'admin@gmail.com', 'admin', NULL, NULL, 0),
(17, '2', '68d11e190dae0::1', '::1', '2025-09-22', '15:29:53', 'admin@gmail.com', 'admin', NULL, NULL, 0),
(18, '2', '68d2308c72011::1', '::1', '2025-09-23', '11:00:52', 'admin@gmail.com', 'admin', NULL, NULL, 0),
(19, '2', '68d263e0eaa23192.168.1.19', '192.168.1.19', '2025-09-23', '14:39:52', 'admin@gmail.com', 'admin', NULL, NULL, 0),
(20, '2', '68d28a4ec30a6122.162.150.75', '122.162.150.75', '2025-09-23', '17:23:50', 'admin@gmail.com', 'admin', NULL, NULL, 0),
(21, '2', '68d28a782e933122.162.150.75', '122.162.150.75', '2025-09-23', '17:24:32', 'admin@gmail.com', 'admin', NULL, NULL, 0),
(22, '2', '68d29abbaf500122.162.145.53', '122.162.145.53', '2025-09-23', '18:33:55', 'admin@gmail.com', 'admin', NULL, NULL, 0),
(23, '2', '68d379df8590d122.162.145.53', '122.162.145.53', '2025-09-24', '10:25:59', 'admin@gmail.com', 'admin', NULL, NULL, 0),
(24, '2', '68d38adc094d0122.162.145.53', '122.162.145.53', '2025-09-24', '11:38:28', 'admin@gmail.com', 'admin', NULL, NULL, 0),
(25, '2', '68d4e93db550d122.162.145.53', '122.162.145.53', '2025-09-25', '12:33:25', 'admin@gmail.com', 'admin', NULL, NULL, 0),
(26, '2', '68d4ea4b2c934122.162.145.53', '122.162.145.53', '2025-09-25', '12:37:55', 'admin@gmail.com', 'admin', NULL, NULL, 0),
(27, '2', '68d6670265a73122.162.145.53', '122.162.145.53', '2025-09-26', '15:42:18', 'admin@gmail.com', 'admin', NULL, NULL, 0),
(28, '2', '68d68d95174a0122.162.145.53', '122.162.145.53', '2025-09-26', '18:26:53', 'admin@gmail.com', 'admin', NULL, NULL, 0),
(29, '2', '68d69345bf55e122.162.150.75', '122.162.150.75', '2025-09-26', '18:51:09', 'admin@gmail.com', 'admin', NULL, NULL, 0),
(30, '2', '68d7714b3b0fc122.162.145.53', '122.162.145.53', '2025-09-27', '10:38:27', 'admin@gmail.com', 'admin', NULL, NULL, 0),
(31, '2', '68d90592c17c1157.49.4.114', '157.49.4.114', '2025-09-28', '15:23:22', 'admin@gmail.com', 'admin', NULL, NULL, 0),
(32, '2', '68da4dc2c00f8122.162.145.53', '122.162.145.53', '2025-09-29', '14:43:38', 'admin@gmail.com', 'admin', NULL, NULL, 0),
(33, '2', '68db9f6eabad0122.162.146.39', '122.162.146.39', '2025-09-30', '14:44:22', 'admin@gmail.com', 'admin', NULL, NULL, 0),
(34, '2', '68dba0b3ed7eb122.162.145.53', '122.162.145.53', '2025-09-30', '14:49:47', 'admin@gmail.com', 'admin', NULL, NULL, 0),
(35, '2', '68dba0cbaca3c122.162.145.53', '122.162.145.53', '2025-09-30', '14:50:11', 'admin@gmail.com', 'admin', NULL, NULL, 0),
(36, '2', '68deb0bde7d84122.162.146.39', '122.162.146.39', '2025-10-02', '22:35:01', 'admin@gmail.com', 'admin', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE `login_history` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `role` int(1) NOT NULL,
  `ip_address` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `device_id` text DEFAULT NULL,
  `firebase_token` longtext DEFAULT NULL,
  `access_token` text NOT NULL,
  `device` text NOT NULL,
  `status` int(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` text NOT NULL,
  `testkey` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meta_tags`
--

CREATE TABLE `meta_tags` (
  `id` int(11) NOT NULL,
  `page_name` varchar(150) DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_auther` varchar(150) DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `add_date_time` datetime DEFAULT NULL,
  `update_date_time` datetime DEFAULT NULL,
  `update_history` text DEFAULT NULL,
  `is_delete` int(2) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `type` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meta_tags`
--

INSERT INTO `meta_tags` (`id`, `page_name`, `meta_title`, `meta_auther`, `meta_keyword`, `meta_description`, `slug`, `add_date_time`, `update_date_time`, `update_history`, `is_delete`, `status`, `type`) VALUES
(12, NULL, NULL, NULL, NULL, NULL, 'ada', NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `multipleimage`
--

CREATE TABLE `multipleimage` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `multiple_image_json` text NOT NULL,
  `single_image` text NOT NULL,
  `multiple_images` text NOT NULL,
  `status` int(11) NOT NULL,
  `addeddate` text NOT NULL,
  `modifieddate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1=Notification,2=app notificatioon',
  `adddate` date NOT NULL,
  `title` text NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL,
  `addeddate` datetime NOT NULL,
  `modifieddate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `type`, `adddate`, `title`, `message`, `status`, `addeddate`, `modifieddate`) VALUES
(1, 1, '2024-09-17', 'Hello', 'Get 10% cashback for the next top up', 1, '2024-09-18 16:38:47', '2025-09-01 12:54:01'),
(2, 1, '2024-09-18', 'Free Cashback 15%', 'Get 15% cashback on your next purchase', 1, '2024-09-18 17:02:24', '2025-09-01 12:54:17'),
(3, 1, '2024-09-16', 'Hello', 'Get 10% cashback for the next top up', 1, '2024-09-18 16:38:47', '2025-09-04 14:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `notification_status`
--

CREATE TABLE `notification_status` (
  `id` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_status`
--

INSERT INTO `notification_status` (`id`, `notification_id`, `user_id`, `status`, `updated_at`) VALUES
(27, 3, 37, 1, '2025-01-23 13:23:39'),
(28, 2, 37, 1, '2025-01-23 13:23:40'),
(29, 1, 37, 1, '2025-01-23 13:23:41'),
(30, 4, 37, 1, '2025-01-24 10:26:12'),
(31, 4, 42, 1, '2025-02-13 07:25:48'),
(32, 1, 42, 1, '2025-02-13 07:27:13'),
(33, 2, 42, 1, '2025-02-13 07:27:21'),
(34, 3, 42, 1, '2025-02-13 07:27:25');

-- --------------------------------------------------------

--
-- Table structure for table `number`
--

CREATE TABLE `number` (
  `id` int(255) NOT NULL,
  `randno` text NOT NULL,
  `game_id` varchar(355) DEFAULT NULL,
  `game_time_id` int(50) NOT NULL,
  `gametime` time DEFAULT NULL,
  `stringtime` bigint(20) DEFAULT NULL,
  `year` varchar(355) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `date` varchar(50) NOT NULL,
  `number` varchar(355) DEFAULT NULL,
  `status` varchar(355) DEFAULT NULL,
  `create_on` date DEFAULT NULL,
  `addeddate` datetime DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `number`
--

INSERT INTO `number` (`id`, `randno`, `game_id`, `game_time_id`, `gametime`, `stringtime`, `year`, `month`, `date`, `number`, `status`, `create_on`, `addeddate`, `modifieddate`) VALUES
(1, '123654', '61', 29, '14:00:00', 1758357000, '2025', 'September', '', '50', '1', '2025-09-20', '2025-09-20 11:54:58', '2025-09-20 12:16:42'),
(2, '823654', '63', 31, '15:00:00', 1758360600, '2025', 'September', '', '22', '1', '2025-09-22', '2025-09-20 12:16:52', '2025-09-22 11:18:16'),
(3, '231045', '59', 27, '13:00:00', 1758353400, '2025', 'September', '', '50', '1', '2025-09-22', '2025-09-22 15:33:40', '2025-09-22 17:14:58'),
(5, '136378', '59', 29, '14:00:00', 1758357000, '2025', 'September', '', '77', '1', '2025-09-22', '2025-09-22 16:21:11', '2025-09-22 17:33:38'),
(6, '481448', '59', 31, '15:00:00', 1758360600, '2025', 'September', '', '76', '1', '2025-09-22', '2025-09-22 16:28:26', '2025-09-22 18:39:29'),
(7, '883952', '59', 33, '16:00:00', 1758364200, '2025', 'September', '', '43', '1', '2025-09-22', '2025-09-22 16:29:04', '2025-09-22 18:38:10'),
(8, '739762', '63', 31, '15:00:00', 1758360600, '2025', 'September', '', '23', '1', '2025-09-22', '2025-09-22 16:59:38', '2025-09-22 17:04:54'),
(9, '988099', '59', 35, '17:00:00', 1758367800, '2025', 'September', '', '78', '1', '2025-09-22', '2025-09-22 17:44:08', '2025-09-23 11:02:28'),
(10, '109502', '59', 27, '13:00:00', 1758353400, '2025', 'September', '', '56', '1', '2025-09-23', '2025-09-23 11:02:46', '2025-09-23 14:43:12'),
(11, '151440', '59', 29, '14:00:00', 1758357000, '2025', 'September', '', '23', '1', '2025-09-23', '2025-09-23 14:43:35', '2025-09-23 14:48:11'),
(12, '989852', '59', 31, '15:00:00', 1758360600, '2025', 'September', '', '36', '1', '2025-09-23', '2025-09-23 14:49:06', '2025-09-23 16:32:27'),
(13, '901640', '59', 29, '14:00:00', 1758357000, '2025', 'September', '', '66', '1', '2025-09-23', '2025-09-23 15:53:01', '2025-09-23 16:38:48'),
(14, '913193', '59', 33, '16:00:00', 1758364200, '2025', 'September', '', '50', '1', '2025-09-23', '2025-09-23 16:49:32', '2025-09-23 17:20:21'),
(15, '215183', '59', 35, '17:00:00', 1758367800, '2025', 'September', '', '58', '1', '2025-09-23', '2025-09-23 16:50:28', '2025-09-23 18:33:59'),
(16, '928489', '59', 27, '13:00:00', 1758353400, '2025', 'September', '', '22', '1', '2025-09-24', '2025-09-24 10:26:14', NULL),
(17, '950653', '59', 29, '14:00:00', 1758357000, '2025', 'September', '', '96', '1', '2025-09-24', '2025-09-24 11:38:45', '2025-09-24 11:40:51'),
(18, '826009', '59', 27, '13:00:00', 1758353400, '2025', 'September', '', '12', '1', '2025-09-25', '2025-09-25 12:33:41', NULL),
(19, '456613', '65', 35, '17:00:00', 1758367800, '2025', 'September', '', '23', '1', '2025-09-25', '2025-09-25 12:38:07', NULL),
(20, '212603', '59', 27, '13:00:00', 1758353400, '2025', 'September', '', '23', '1', '2025-09-26', '2025-09-26 15:42:31', NULL),
(21, '387174', '59', 29, '14:00:00', 1758357000, '2025', 'September', '', '25', '1', '2025-09-26', '2025-09-26 15:42:44', '2025-09-26 16:57:53'),
(23, '698928', '59', 27, '13:00:00', 1758353400, '2025', 'September', '', '10', '1', '2025-09-27', '2025-09-27 10:41:33', NULL),
(24, '393074', '59', 29, '14:00:00', 1758357000, '2025', 'September', '', '99', '1', '2025-09-27', '2025-09-27 10:41:45', NULL),
(25, '485082', '59', 31, '15:00:00', 1758360600, '2025', 'September', '', '63', '1', '2025-09-27', '2025-09-27 10:42:23', NULL),
(26, '245714', '59', 33, '16:00:00', 1758364200, '2025', 'September', '', '99', '1', '2025-09-27', '2025-09-27 10:44:43', NULL),
(27, '965450', '59', 35, '17:00:00', 1758367800, '2025', 'September', '', '22', '1', '2025-09-27', '2025-09-27 10:46:23', NULL),
(28, '190539', '59', 27, '13:00:00', 1758353400, '2025', 'September', '', '55', '1', '2025-09-28', '2025-09-28 15:23:41', NULL),
(29, '147831', '59', 29, '14:00:00', 1758357000, '2025', 'September', '', '98', '1', '2025-09-28', '2025-09-28 15:25:27', NULL),
(30, '154574', '59', 27, '13:00:00', 1758353400, '2025', 'September', '', '15', '1', '2025-09-29', '2025-09-29 14:43:58', '2025-09-29 14:44:45'),
(34, '750127', '59', 27, '13:00:00', 1758353400, '2025', 'September', '', '12', '1', '2025-09-30', '2025-09-30 15:04:19', NULL),
(35, '852148', '59', 29, '14:00:00', 1758357000, '2025', 'September', '', '54', '1', '2025-09-30', '2025-09-30 15:04:38', NULL),
(36, '225445', '59', 31, '15:00:00', 1758360600, '2025', 'September', '', '11', '1', '2025-09-30', '2025-09-30 15:05:01', NULL),
(37, '763340', '59', 33, '16:00:00', 1758364200, '2025', 'September', '', '55', '1', '2025-09-30', '2025-09-30 15:05:28', NULL),
(38, '788220', '59', 35, '17:00:00', 1758367800, '2025', 'September', '', '22', '1', '2025-09-30', '2025-09-30 15:06:53', NULL),
(39, '694612', '59', 37, '18:00:00', 1758371400, '2025', 'September', '', '44', '1', '2025-09-30', '2025-09-30 15:07:18', NULL),
(40, '327529', '59', 27, '13:00:00', 1758353400, '2025', 'September', '', '66', '1', '2025-09-30', '2025-09-30 23:28:30', NULL),
(41, '900731', '59', 27, '13:00:00', 1758353400, '2025', 'September', '', '22', '1', '2025-09-30', '2025-09-30 23:29:05', NULL),
(42, '701899', '59', 27, '13:00:00', 1758353400, '2025', 'October', '', '56', '1', '2025-10-02', '2025-10-02 22:31:31', NULL),
(43, '491052', '59', 29, '14:00:00', 1758357000, '2025', 'October', '', '65', '1', '2025-10-02', '2025-10-02 22:32:00', NULL),
(44, '474043', '59', 27, '13:00:00', 1758353400, '2025', 'October', '', '76', '1', '2025-10-01', '2025-10-02 22:32:30', NULL),
(45, '661892', '59', 29, '14:00:00', 1758357000, '2025', 'October', '', '87', '1', '2025-10-01', '2025-10-02 22:32:46', NULL),
(46, '336728', '59', 31, '15:00:00', 1758360600, '2025', 'October', '', '09', '1', '2025-10-01', '2025-10-02 22:33:09', NULL),
(47, '979153', '59', 33, '16:00:00', 1758364200, '2025', 'October', '', '07', '1', '2025-10-02', '2025-10-02 22:33:23', NULL),
(48, '903527', '59', 33, '16:00:00', 1758364200, '2025', 'October', '', '76', '1', '2025-10-01', '2025-10-02 22:33:48', NULL),
(49, '841179', '59', 31, '15:00:00', 1758360600, '2025', 'October', '', '33', '1', '2025-10-02', '2025-10-02 22:34:06', NULL),
(50, '540327', '59', 35, '17:00:00', 1758367800, '2025', 'October', '', '09', '1', '2025-10-01', '2025-10-02 22:34:27', NULL),
(51, '981002', '59', 35, '17:00:00', 1758367800, '2025', 'October', '', '61', '1', '2025-10-02', '2025-10-02 22:34:42', NULL),
(52, '445294', '59', 37, '18:00:00', 1758371400, '2025', 'October', '', '00', '1', '2025-10-01', '2025-10-02 22:35:22', NULL),
(53, '907996', '59', 37, '18:00:00', 1758371400, '2025', 'October', '', '65', '1', '2025-10-02', '2025-10-02 22:35:40', NULL),
(54, '101464', '63', 37, '18:00:00', 1758371400, '2025', 'October', '', '54', '1', '2025-10-01', '2025-10-02 22:36:35', NULL),
(55, '697307', '68', 7, '03:00:00', 1758317400, '2025', 'October', '', '03', '1', '2025-10-01', '2025-10-02 22:37:36', NULL),
(56, '331439', '69', 10, '04:30:00', 1758322800, '2025', 'October', '', '14', '1', '2025-10-01', '2025-10-02 22:37:53', NULL),
(57, '748646', '64', 45, '22:00:00', 1758385800, '2025', 'October', '', '59', '1', '2025-10-01', '2025-10-02 22:38:07', NULL),
(58, '739935', '65', 25, '12:00:00', 1758349800, '2025', 'October', '', '56', '1', '2025-10-01', '2025-10-02 22:38:21', NULL),
(61, '571716', '63', 38, '18:30:00', 1758373200, '2025', 'October', '', '54', '1', '2025-10-01', '2025-10-02 22:42:11', NULL),
(63, '201813', '66', 13, '06:00:00', 1758328200, '2025', 'October', '', '41', '1', '2025-10-01', '2025-10-02 22:44:22', NULL),
(64, '914185', '68', 7, '03:00:00', 1758317400, '2025', 'October', '', '68', '1', '2025-10-02', '2025-10-02 22:44:48', NULL),
(65, '852631', '69', 10, '04:30:00', 1758322800, '2025', 'October', '', '02', '1', '2025-10-02', '2025-10-02 22:44:59', NULL),
(66, '408038', '63', 38, '18:30:00', 1758373200, '2025', 'October', '', '63', '1', '2025-10-02', '2025-10-02 22:45:10', NULL),
(67, '534107', '64', 45, '22:00:00', 1758385800, '2025', 'October', '', '58', '1', '2025-10-02', '2025-10-02 22:45:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `role` int(11) NOT NULL COMMENT '1=user,2=vendor',
  `username` text NOT NULL,
  `slug` text NOT NULL,
  `mobile` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `status` int(11) NOT NULL,
  `addeddate` datetime NOT NULL,
  `modifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `role_access` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `addeddate` datetime NOT NULL,
  `modifieddate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `slug`, `role_access`, `status`, `addeddate`, `modifieddate`) VALUES
(4, 'ACCOUNTS TEAM', 'accounts-team', '{\"main_access\":[\"0\"],\"inner_access\":[[\"2\",\"4\"],[],[]]}', 1, '2024-07-30 13:21:07', '2024-07-30 16:17:16'),
(5, 'PRODUCTION TEAM', 'production-team', '{\"main_access\":[\"0\",\"1\",\"2\"],\"inner_access\":[[\"1\",\"2\",\"3\",\"4\"],[\"1\",\"2\",\"3\",\"4\"],[\"1\",\"2\",\"3\",\"4\"]]}', 1, '2024-07-30 13:21:20', '2024-07-30 17:42:01'),
(7, 'test', 'test', '{\"main_access\":[\"0\",\"1\",\"2\",\"7\"],\"inner_access\":[[\"1\",\"3\"],[\"1\",\"2\",\"3\",\"4\"],[\"1\",\"2\",\"3\"],[],[],[],[],[\"3\"]]}', 1, '2024-07-30 17:44:07', '2024-08-20 13:08:46');

-- --------------------------------------------------------

--
-- Table structure for table `site_setting`
--

CREATE TABLE `site_setting` (
  `id` int(11) NOT NULL,
  `logo` text NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `alt_mobile` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alt_email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `instagram` text NOT NULL,
  `youtube` text NOT NULL,
  `map` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_setting`
--

INSERT INTO `site_setting` (`id`, `logo`, `mobile`, `alt_mobile`, `email`, `alt_email`, `address`, `facebook`, `twitter`, `instagram`, `youtube`, `map`) VALUES
(1, '1758266183.jpg', '9856472360', '9586741023', 'email2@gmail.com', 'altemail2@gmail.com', 'your address', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30767295.116023116!2d60.946027684017714!3d19.722272265144735!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30635ff06b92b791%3A0xd78c4fa1854213a6!2sIndia!5e0!3m2!1sen!2sin!4v1713167102172!5m2!1sen!2sin\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `sub_title` text NOT NULL,
  `slug` text NOT NULL,
  `image` text NOT NULL,
  `content` text NOT NULL,
  `status` int(11) NOT NULL,
  `addeddate` datetime NOT NULL,
  `modifieddate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `sub_title`, `slug`, `image`, `content`, `status`, `addeddate`, `modifieddate`) VALUES
(4, 'dfr', 'wer', 'dfr', '1731483183.jpg', '<p>ewr</p>', 1, '2024-11-13 13:03:03', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` int(11) NOT NULL,
  `slug` text NOT NULL,
  `table_name` varchar(100) NOT NULL,
  `page_name` varchar(150) NOT NULL,
  `controller_name` varchar(150) NOT NULL,
  `p_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `country_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `addeddate` datetime NOT NULL,
  `modifieddate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `name`, `slug`, `country_id`, `status`, `addeddate`, `modifieddate`) VALUES
(1, 'ANDHRA PRADESH', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'ASSAM', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'ARUNACHAL PRADESH', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'BIHAR', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'GUJRAT', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'HARYANA', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'HIMACHAL PRADESH', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'JAMMU & KASHMIR', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'KARNATAKA', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'KERALA', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'MADHYA PRADESH', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'MAHARASHTRA', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'MANIPUR', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'MEGHALAYA', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'MIZORAM', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'NAGALAND', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'ORISSA', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'PUNJAB', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'RAJASTHAN', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'SIKKIM', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'TAMIL NADU', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'TRIPURA', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'UTTAR PRADESH', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'WEST BENGAL', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'DELHI', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'GOA', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'PONDICHERY', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'LAKSHDWEEP', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'DAMAN & DIU', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'DADRA & NAGAR', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'CHANDIGARH', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'ANDAMAN & NICOBAR', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'UTTARANCHAL', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'JHARKHAND', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'CHATTISGARH', '', 105, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1=admin,2=subadmin',
  `role` int(11) NOT NULL,
  `access` text NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `gender` text NOT NULL,
  `dob` text NOT NULL,
  `martial` text NOT NULL,
  `age` text NOT NULL,
  `country` text NOT NULL,
  `state` text NOT NULL,
  `hash_key` text DEFAULT NULL,
  `hash_expiry` datetime DEFAULT NULL,
  `status` int(11) NOT NULL,
  `addeddate` datetime DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `type`, `role`, `access`, `first_name`, `last_name`, `username`, `password`, `email`, `mobile`, `address`, `image`, `gender`, `dob`, `martial`, `age`, `country`, `state`, `hash_key`, `hash_expiry`, `status`, `addeddate`, `modifieddate`) VALUES
(1, 1, 0, '', 'Azmal', 'Ansari', 'azmal123', 'azmal123', 'admin@gmail.com', '46546', 'sfsfsdf sdefdsfs fsdf sdf', 'user2.jpg', 'male', '01/01/2022', 'single', '22', 'india', 'elhi', NULL, NULL, 1, NULL, NULL),
(2, 1, 0, '', 'Admin', 'Admin', 'admin@gmail.com', 'admin', 'admin123@gmail.com', '9582285215', 'delhi', '1724412456.png', 'male', '01/01/2022', 'single', '22', 'india', 'delhi', '6ef5a86a72d307d9d2df14306a26534f64236ca1887fb9ba0cff55e6e0a26390', '2024-08-30 13:34:00', 1, NULL, NULL),
(3, 1, 0, '', 'Wolverine', 'logen', 'azmal', 'azmal', 'wolverine@gmail.com', '897989', 'sfsfsdf sdefdsfs fsdf sdf', 'user3.jpg', 'male', '01/01/2022', 'single', '22', 'india', 'delhi', NULL, NULL, 1, NULL, NULL),
(4, 2, 8, '{\"main_access\":[\"0\",\"1\",\"2\",\"3\"],\"inner_access\":[[\"1\",\"2\",\"3\",\"4\"],[\"1\"],[\"4\"],[\"1\"],[],[]]}', '', '', 'azmal12345', 'azmal12345', '', '', '', '', '', '', '', '', '', '', NULL, NULL, 1, '2024-08-24 17:23:45', '2024-11-13 15:44:20');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `name` text NOT NULL,
  `position` text NOT NULL,
  `content` text NOT NULL,
  `status` int(11) NOT NULL,
  `addeddate` datetime NOT NULL,
  `modifieddate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `image`, `name`, `position`, `content`, `status`, `addeddate`, `modifieddate`) VALUES
(1, '1731493179.png', 'Spiderman', 'Client', '<p>Hello </p>', 1, '2024-08-24 18:07:24', '2024-11-13 15:49:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `role` int(10) NOT NULL COMMENT '1=user,2=vendor,3=driver',
  `wallet` float NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `dob` date DEFAULT NULL,
  `profile_image` text NOT NULL,
  `date_time` datetime NOT NULL,
  `status` int(10) NOT NULL,
  `addeddate` date DEFAULT NULL,
  `modifieddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `role`, `wallet`, `name`, `mobile`, `email`, `password`, `address`, `dob`, `profile_image`, `date_time`, `status`, `addeddate`, `modifieddate`) VALUES
(37, 1000, 1, 62346.1, 'User Panel', '1122334455', 'user@gmail.com', '123456', '132 Componey , Address India', '2025-08-14', '175127458837user_profile.png', '2024-11-05 12:43:30', 1, NULL, NULL),
(40, 1001, 2, 50, 'Vendor Panel', '123456789', 'vendor@gmail.com', '123456', 'New York City', '2025-06-16', '175067975440user_profile.png', '2025-01-20 11:12:03', 1, NULL, NULL),
(51, 1002, 3, 0, 'Driver Panel', '9876543210', 'driver@gmail.com', '123456', 'New York City', '2025-06-16', '175067975440user_profile.png', '2025-01-20 11:12:03', 1, NULL, NULL),
(52, 0, 2, 0, 'Spiderman', '01234645654', 'spiderman@gmail.com', '123456', '132 Componey , Address India', '2025-08-14', '1755153714.png', '0000-00-00 00:00:00', 1, '2025-08-14', '2025-08-14'),
(53, 0, 3, 0, 'Sumit', '7838132611', 'Sumitattri583@gmail.com', '123456', '132 Componey , Address India', '2025-08-14', '1755156508.png', '0000-00-00 00:00:00', 1, '2025-08-14', NULL),
(54, 1003, 1, 0, 'Sumit kumar', '9718777739', 'sumitucckumar@gmail.com', '123456789', '', NULL, 'user-profile.png', '2025-08-23 18:33:29', 1, NULL, NULL),
(55, 1004, 1, 0, 'Vinay kumar', '9289768159', 'vinayrajput02987@gmail.com', '12345678', '', NULL, 'user-profile.png', '2025-08-24 12:05:07', 1, NULL, NULL),
(56, 1005, 1, 0, 'Manish', '7210027477', 'manish.kumar828345@gmail.com', '7210027477', '', NULL, '175610707756user_profile.png', '2025-08-25 12:52:46', 1, NULL, NULL),
(57, 1006, 2, 0, 'Vinay Kumar', '7827160158', 'vinayrajput02987@gmail.com', '12345678', '', NULL, 'user-profile.png', '2025-08-25 19:54:12', 1, NULL, NULL),
(58, 1007, 1, 0, 'Prashant', '8882181814', 'pk086066@gmail.com', '9899292151', 'Rajokari new delhi  110038', '2004-04-01', 'user-profile.png', '2025-08-25 19:55:48', 1, NULL, '2025-08-26'),
(59, 1008, 1, 0, 'Azmal Ansari', '7838132622', 'azmal@gmail.com', '123456', '', NULL, 'user-profile.png', '2025-08-30 14:39:20', 1, NULL, NULL),
(60, 1009, 3, 0, 'Arwaz', '8340723693', 'arwaz@gmail.com', '123456', '', NULL, '1755156508.png', '2025-08-30 14:41:08', 1, NULL, NULL),
(61, 1010, 1, 0, 'Vinay Kumar', '7042531448', 'vinayrajput02987@gmail.com', '12345678', '', NULL, 'user-profile.png', '2025-08-30 17:52:09', 1, NULL, NULL),
(62, 1011, 1, 0, 'Manish Kumar', '7011005460', 'manish.kumar828345@gmail.com', '7011005460', '', NULL, 'user-profile.png', '2025-08-30 18:49:34', 1, NULL, NULL),
(63, 1012, 3, 0, 'Raghav', '9012345678', '123456@gmail.com', '987654321', '', NULL, '175656160863user_profile.png', '2025-08-30 19:14:26', 1, NULL, NULL),
(64, 1013, 1, 0, 'Ram Jamle', '+918817644195', 'jamleram516@gmail.com', '0987', '', '0000-00-00', 'user-profile.png', '2025-08-31 10:38:17', 1, NULL, NULL),
(65, 1014, 3, 0, 'Manish Kumar', '7895381083', 'manish.kumar828345@gmail.com', '7011005460', '', NULL, 'user-profile.png', '2025-08-31 11:13:30', 1, NULL, NULL),
(66, 1015, 2, 0, 'Sumit Kumar', '7303676748', 'Sumi.853296.kumar@gmail.com', '987654321', '', NULL, 'user-profile.png', '2025-08-31 18:22:07', 1, NULL, NULL),
(67, 1016, 1, 0, 'Amit Kumar', '9899292151', 'amit.kumar2771394@gmail.com', '987654321', '', NULL, 'user-profile.png', '2025-08-31 21:03:00', 1, NULL, NULL),
(68, 1017, 2, 0, 'Sumit Kumar', '9012345677', '123@gmail.com', '987654321', '', NULL, 'user-profile.png', '2025-09-01 12:15:45', 1, NULL, NULL),
(69, 1018, 1, 0, 'Prashant', 'pk086066@gmail.', 'pk086066@gmail.com', '9899292151', '', NULL, 'user-profile.png', '2025-09-01 13:02:30', 1, NULL, NULL),
(71, 1019, 2, 0, 'Prashant', 'pk086066@gmail.', 'pk086066@gmail.com', '9899292151', '', NULL, 'user-profile.png', '2025-09-01 17:47:37', 1, NULL, NULL),
(72, 1020, 1, 0, 'Sushil Barman', '+918768773878', 'sushilbarman328@gmail.com', '741255', '', '0000-00-00', 'user-profile.png', '2025-09-03 04:30:56', 1, NULL, NULL),
(73, 1021, 1, 0, 'Test', '8451089026', 'dev698323@gmail.com', 'wonderman1', '', NULL, 'user-profile.png', '2025-09-03 15:25:44', 1, NULL, NULL),
(74, 1022, 3, 0, 'Krishna', '9555699881', 'manish.kumar828345@gmail.com', '9555699881', '', '0000-00-00', 'user-profile.png', '2025-09-04 15:05:37', 1, NULL, '2025-09-04'),
(75, 1023, 2, 0, 'Asharam Gurjar', '9351207061', 'asharamgurjar547@gmail.com', 'gurjar76', '', NULL, 'user-profile.png', '2025-09-06 09:11:02', 1, NULL, NULL),
(76, 1024, 2, 0, 'Manish Kumar', '7303841489', 'manish.kumar828345@gmail.com', '7303841489', '', NULL, 'user-profile.png', '2025-09-08 15:01:49', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_history`
--

CREATE TABLE `user_history` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `add_type` int(11) NOT NULL COMMENT '1=play game, 2=add point, 3=game win amount,4=withdraw request,5=refund',
  `pay_mode` int(11) DEFAULT NULL COMMENT '	1=gpay,2=phone,3=paytm',
  `user_id` bigint(20) NOT NULL,
  `request_id` text NOT NULL,
  `amount` float NOT NULL,
  `balance` float NOT NULL,
  `message` text NOT NULL,
  `date_time` datetime NOT NULL,
  `add_date_time` datetime DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `user_history`
--

INSERT INTO `user_history` (`id`, `type`, `add_type`, `pay_mode`, `user_id`, `request_id`, `amount`, `balance`, `message`, `date_time`, `add_date_time`, `status`) VALUES
(1, 'debit', 1756555331, NULL, 37, '1', 48.19, 62657, 'Cab Booking', '2025-08-30 17:32:11', '2025-08-30 17:32:11', 1),
(2, 'debit', 1756908780, NULL, 37, '1', 174.19, 62482.8, 'Cab Booking', '2025-09-03 19:43:00', '2025-09-03 19:43:00', 1),
(3, 'debit', 1756908826, NULL, 37, '1', 136.75, 62346.1, 'Cab Booking', '2025-09-03 19:43:46', '2025-09-03 19:43:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_temp_register`
--

CREATE TABLE `user_temp_register` (
  `id` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `image` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `password` text NOT NULL,
  `state` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `gender` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '0=pending\r\n1=ok\r\n2=reject',
  `ip_address` text NOT NULL,
  `addeddate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_records`
--
ALTER TABLE `activity_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_times`
--
ALTER TABLE `all_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_times`
--
ALTER TABLE `game_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_history`
--
ALTER TABLE `login_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meta_tags`
--
ALTER TABLE `meta_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multipleimage`
--
ALTER TABLE `multipleimage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_status`
--
ALTER TABLE `notification_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_notification_user` (`notification_id`,`user_id`);

--
-- Indexes for table `number`
--
ALTER TABLE `number`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_history`
--
ALTER TABLE `user_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_temp_register`
--
ALTER TABLE `user_temp_register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_records`
--
ALTER TABLE `activity_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=826;

--
-- AUTO_INCREMENT for table `all_times`
--
ALTER TABLE `all_times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `game_times`
--
ALTER TABLE `game_times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `login_history`
--
ALTER TABLE `login_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meta_tags`
--
ALTER TABLE `meta_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `multipleimage`
--
ALTER TABLE `multipleimage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notification_status`
--
ALTER TABLE `notification_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `number`
--
ALTER TABLE `number`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `site_setting`
--
ALTER TABLE `site_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `user_history`
--
ALTER TABLE `user_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_temp_register`
--
ALTER TABLE `user_temp_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
