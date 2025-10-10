-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2025 at 02:51 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `triangacabapp`
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
(1, '::1', 'http://localhost/triangacabapp/admin/dashboard', '2025-06-23', '15:37:56', 2, 'admin@gmail.com', 'admin'),
(2, '::1', 'http://localhost/triangacabapp/admin_con/site_setting/edit/1', '2025-06-23', '15:38:18', 2, 'admin@gmail.com', 'admin'),
(3, '::1', 'http://localhost/triangacabapp/admin_con/site_setting/edit/1', '2025-06-23', '15:38:22', 2, 'admin@gmail.com', 'admin'),
(4, '::1', 'http://localhost/triangacabapp/admin_con/site_setting/edit/1', '2025-06-23', '18:30:25', 2, 'admin@gmail.com', 'admin'),
(5, '::1', 'http://localhost/triangacabapp/admin/dashboard', '2025-08-14', '11:20:24', 2, 'admin@gmail.com', 'admin'),
(6, '::1', 'http://localhost/triangacabapp/admin/dashboard', '2025-08-14', '11:22:39', 2, 'admin@gmail.com', 'admin'),
(7, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/listing', '2025-08-14', '11:22:40', 2, 'admin@gmail.com', 'admin'),
(8, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/add', '2025-08-14', '11:23:36', 2, 'admin@gmail.com', 'admin'),
(9, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/add', '2025-08-14', '11:24:15', 2, 'admin@gmail.com', 'admin'),
(10, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/listing', '2025-08-14', '11:24:34', 2, 'admin@gmail.com', 'admin'),
(11, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/listing', '2025-08-14', '11:25:08', 2, 'admin@gmail.com', 'admin'),
(12, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/edit/45', '2025-08-14', '11:25:10', 2, 'admin@gmail.com', 'admin'),
(13, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/edit/45', '2025-08-14', '11:25:35', 2, 'admin@gmail.com', 'admin'),
(14, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/edit/45', '2025-08-14', '11:25:41', 2, 'admin@gmail.com', 'admin'),
(15, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/listing', '2025-08-14', '11:25:42', 2, 'admin@gmail.com', 'admin'),
(16, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/listing', '2025-08-14', '11:25:53', 2, 'admin@gmail.com', 'admin'),
(17, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/listing', '2025-08-14', '11:27:29', 2, 'admin@gmail.com', 'admin'),
(18, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-14', '11:27:44', 2, 'admin@gmail.com', 'admin'),
(19, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-14', '11:30:19', 2, 'admin@gmail.com', 'admin'),
(20, '::1', 'http://localhost/triangacabapp/admin_con/car_name/add', '2025-08-14', '11:30:20', 2, 'admin@gmail.com', 'admin'),
(21, '::1', 'http://localhost/triangacabapp/admin_con/car_name/add', '2025-08-14', '11:30:36', 2, 'admin@gmail.com', 'admin'),
(22, '::1', 'http://localhost/triangacabapp/admin_con/car_name/add', '2025-08-14', '11:30:46', 2, 'admin@gmail.com', 'admin'),
(23, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-14', '11:33:48', 2, 'admin@gmail.com', 'admin'),
(24, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-14', '11:34:48', 2, 'admin@gmail.com', 'admin'),
(25, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-14', '11:35:00', 2, 'admin@gmail.com', 'admin'),
(26, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-14', '11:35:45', 2, 'admin@gmail.com', 'admin'),
(27, '::1', 'http://localhost/triangacabapp/admin_con/car_name/edit/7', '2025-08-14', '11:35:50', 2, 'admin@gmail.com', 'admin'),
(28, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-14', '11:35:52', 2, 'admin@gmail.com', 'admin'),
(29, '::1', 'http://localhost/triangacabapp/admin_con/car_name/edit/7', '2025-08-14', '11:35:55', 2, 'admin@gmail.com', 'admin'),
(30, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-14', '11:36:30', 2, 'admin@gmail.com', 'admin'),
(31, '::1', 'http://localhost/triangacabapp/admin_con/car_name/edit/6', '2025-08-14', '11:36:58', 2, 'admin@gmail.com', 'admin'),
(32, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-14', '11:37:03', 2, 'admin@gmail.com', 'admin'),
(33, '::1', 'http://localhost/triangacabapp/admin_con/car_name/edit/5', '2025-08-14', '11:37:23', 2, 'admin@gmail.com', 'admin'),
(34, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-14', '11:37:27', 2, 'admin@gmail.com', 'admin'),
(35, '::1', 'http://localhost/triangacabapp/admin_con/car_name/edit/4', '2025-08-14', '11:37:45', 2, 'admin@gmail.com', 'admin'),
(36, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-14', '11:37:49', 2, 'admin@gmail.com', 'admin'),
(37, '::1', 'http://localhost/triangacabapp/admin_con/car_name/edit/3', '2025-08-14', '11:37:51', 2, 'admin@gmail.com', 'admin'),
(38, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-14', '11:38:11', 2, 'admin@gmail.com', 'admin'),
(39, '::1', 'http://localhost/triangacabapp/admin_con/car_name/edit/2', '2025-08-14', '11:38:30', 2, 'admin@gmail.com', 'admin'),
(40, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-14', '11:38:34', 2, 'admin@gmail.com', 'admin'),
(41, '::1', 'http://localhost/triangacabapp/admin_con/car_name/edit/1', '2025-08-14', '11:38:36', 2, 'admin@gmail.com', 'admin'),
(42, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-14', '11:38:54', 2, 'admin@gmail.com', 'admin'),
(43, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-14', '11:59:11', 2, 'admin@gmail.com', 'admin'),
(44, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-14', '11:59:18', 2, 'admin@gmail.com', 'admin'),
(45, '::1', 'http://localhost/triangacabapp/admin_con/vendors/listing', '2025-08-14', '12:00:02', 2, 'admin@gmail.com', 'admin'),
(46, '::1', 'http://localhost/triangacabapp/admin_con/vendors/listing', '2025-08-14', '12:04:14', 2, 'admin@gmail.com', 'admin'),
(47, '::1', 'http://localhost/triangacabapp/admin_con/vendors/listing', '2025-08-14', '12:04:50', 2, 'admin@gmail.com', 'admin'),
(48, '::1', 'http://localhost/triangacabapp/admin_con/vendors/listing', '2025-08-14', '12:05:18', 2, 'admin@gmail.com', 'admin'),
(49, '::1', 'http://localhost/triangacabapp/admin_con/vendors/edit/40', '2025-08-14', '12:05:36', 2, 'admin@gmail.com', 'admin'),
(50, '::1', 'http://localhost/triangacabapp/admin_con/vendors/edit/40', '2025-08-14', '12:07:18', 2, 'admin@gmail.com', 'admin'),
(51, '::1', 'http://localhost/triangacabapp/admin_con/vendors/listing', '2025-08-14', '12:07:21', 2, 'admin@gmail.com', 'admin'),
(52, '::1', 'http://localhost/triangacabapp/admin_con/vendors/add', '2025-08-14', '12:07:22', 2, 'admin@gmail.com', 'admin'),
(53, '::1', 'http://localhost/triangacabapp/admin_con/vendors/listing', '2025-08-14', '12:08:59', 2, 'admin@gmail.com', 'admin'),
(54, '::1', 'http://localhost/triangacabapp/admin_con/vendors/listing', '2025-08-14', '12:09:50', 2, 'admin@gmail.com', 'admin'),
(55, '::1', 'http://localhost/triangacabapp/admin_con/vendors/edit/52', '2025-08-14', '12:09:51', 2, 'admin@gmail.com', 'admin'),
(56, '::1', 'http://localhost/triangacabapp/admin_con/vendors/listing', '2025-08-14', '12:09:54', 2, 'admin@gmail.com', 'admin'),
(57, '::1', 'http://localhost/triangacabapp/admin_con/vendors/edit/52', '2025-08-14', '12:10:59', 2, 'admin@gmail.com', 'admin'),
(58, '::1', 'http://localhost/triangacabapp/admin_con/vendors/edit/52', '2025-08-14', '12:11:18', 2, 'admin@gmail.com', 'admin'),
(59, '::1', 'http://localhost/triangacabapp/admin_con/vendors/listing', '2025-08-14', '12:11:25', 2, 'admin@gmail.com', 'admin'),
(60, '::1', 'http://localhost/triangacabapp/admin_con/vendors/edit/52', '2025-08-14', '12:11:26', 2, 'admin@gmail.com', 'admin'),
(61, '::1', 'http://localhost/triangacabapp/admin_con/vendors/listing', '2025-08-14', '12:11:54', 2, 'admin@gmail.com', 'admin'),
(62, '::1', 'http://localhost/triangacabapp/admin_con/vendors/edit/52', '2025-08-14', '12:11:56', 2, 'admin@gmail.com', 'admin'),
(63, '::1', 'http://localhost/triangacabapp/admin_con/vendors/listing', '2025-08-14', '12:11:58', 2, 'admin@gmail.com', 'admin'),
(64, '::1', 'http://localhost/triangacabapp/admin_con/vendors/edit/52', '2025-08-14', '12:11:59', 2, 'admin@gmail.com', 'admin'),
(65, '::1', 'http://localhost/triangacabapp/admin_con/vendors/listing', '2025-08-14', '12:12:07', 2, 'admin@gmail.com', 'admin'),
(66, '::1', 'http://localhost/triangacabapp/admin_con/vendors/edit/52', '2025-08-14', '12:14:32', 2, 'admin@gmail.com', 'admin'),
(67, '::1', 'http://localhost/triangacabapp/admin_con/vendors/listing', '2025-08-14', '12:14:38', 2, 'admin@gmail.com', 'admin'),
(68, '::1', 'http://localhost/triangacabapp/admin_con/vendors/listing', '2025-08-14', '12:15:55', 2, 'admin@gmail.com', 'admin'),
(69, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-14', '12:15:56', 2, 'admin@gmail.com', 'admin'),
(70, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-14', '12:16:14', 2, 'admin@gmail.com', 'admin'),
(71, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-14', '12:16:35', 2, 'admin@gmail.com', 'admin'),
(72, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-14', '12:16:58', 2, 'admin@gmail.com', 'admin'),
(73, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-14', '12:18:50', 2, 'admin@gmail.com', 'admin'),
(74, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-14', '12:19:03', 2, 'admin@gmail.com', 'admin'),
(75, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-14', '12:19:49', 2, 'admin@gmail.com', 'admin'),
(76, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:19:55', 2, 'admin@gmail.com', 'admin'),
(77, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:20:28', 2, 'admin@gmail.com', 'admin'),
(78, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:20:51', 2, 'admin@gmail.com', 'admin'),
(79, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:21:26', 2, 'admin@gmail.com', 'admin'),
(80, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:21:56', 2, 'admin@gmail.com', 'admin'),
(81, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:26:45', 2, 'admin@gmail.com', 'admin'),
(82, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:27:30', 2, 'admin@gmail.com', 'admin'),
(83, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:30:10', 2, 'admin@gmail.com', 'admin'),
(84, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:30:22', 2, 'admin@gmail.com', 'admin'),
(85, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:30:46', 2, 'admin@gmail.com', 'admin'),
(86, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:31:16', 2, 'admin@gmail.com', 'admin'),
(87, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:31:41', 2, 'admin@gmail.com', 'admin'),
(88, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:32:13', 2, 'admin@gmail.com', 'admin'),
(89, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:33:36', 2, 'admin@gmail.com', 'admin'),
(90, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:33:59', 2, 'admin@gmail.com', 'admin'),
(91, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:34:24', 2, 'admin@gmail.com', 'admin'),
(92, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:34:44', 2, 'admin@gmail.com', 'admin'),
(93, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:34:53', 2, 'admin@gmail.com', 'admin'),
(94, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:36:01', 2, 'admin@gmail.com', 'admin'),
(95, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:36:23', 2, 'admin@gmail.com', 'admin'),
(96, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-14', '12:36:28', 2, 'admin@gmail.com', 'admin'),
(97, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-14', '12:37:03', 2, 'admin@gmail.com', 'admin'),
(98, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:37:07', 2, 'admin@gmail.com', 'admin'),
(99, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:38:01', 2, 'admin@gmail.com', 'admin'),
(100, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-14', '12:38:06', 2, 'admin@gmail.com', 'admin'),
(101, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/1', '2025-08-14', '12:38:16', 2, 'admin@gmail.com', 'admin'),
(102, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-14', '12:38:19', 2, 'admin@gmail.com', 'admin'),
(103, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/1', '2025-08-14', '12:38:45', 2, 'admin@gmail.com', 'admin'),
(104, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-14', '12:38:49', 2, 'admin@gmail.com', 'admin'),
(105, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:38:51', 2, 'admin@gmail.com', 'admin'),
(106, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:40:27', 2, 'admin@gmail.com', 'admin'),
(107, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:40:50', 2, 'admin@gmail.com', 'admin'),
(108, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-14', '12:41:00', 2, 'admin@gmail.com', 'admin'),
(109, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-14', '12:41:05', 2, 'admin@gmail.com', 'admin'),
(110, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/1', '2025-08-14', '12:41:19', 2, 'admin@gmail.com', 'admin'),
(111, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-14', '12:41:29', 2, 'admin@gmail.com', 'admin'),
(112, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-14', '12:41:50', 2, 'admin@gmail.com', 'admin'),
(113, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-14', '12:42:56', 2, 'admin@gmail.com', 'admin'),
(114, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-14', '12:57:23', 2, 'admin@gmail.com', 'admin'),
(115, '::1', 'http://localhost/triangacabapp/admin_con/drivers/listing', '2025-08-14', '12:57:24', 2, 'admin@gmail.com', 'admin'),
(116, '::1', 'http://localhost/triangacabapp/admin_con/drivers/listing', '2025-08-14', '12:57:56', 2, 'admin@gmail.com', 'admin'),
(117, '::1', 'http://localhost/triangacabapp/admin_con/drivers/add', '2025-08-14', '12:57:59', 2, 'admin@gmail.com', 'admin'),
(118, '::1', 'http://localhost/triangacabapp/admin_con/drivers/listing', '2025-08-14', '12:58:28', 2, 'admin@gmail.com', 'admin'),
(119, '::1', 'http://localhost/triangacabapp/admin_con/drivers/listing', '2025-08-14', '12:58:38', 2, 'admin@gmail.com', 'admin'),
(120, '::1', 'http://localhost/triangacabapp/admin_con/drivers/listing', '2025-08-14', '12:58:50', 2, 'admin@gmail.com', 'admin'),
(121, '::1', 'http://localhost/triangacabapp/admin_con/drivers/listing', '2025-08-14', '13:00:21', 2, 'admin@gmail.com', 'admin'),
(122, '::1', 'http://localhost/triangacabapp/admin_con/users/listing', '2025-08-14', '13:00:22', 2, 'admin@gmail.com', 'admin'),
(123, '::1', 'http://localhost/triangacabapp/admin_con/users/listing', '2025-08-14', '13:00:38', 2, 'admin@gmail.com', 'admin'),
(124, '::1', 'http://localhost/triangacabapp/admin_con/users/add', '2025-08-14', '13:00:42', 2, 'admin@gmail.com', 'admin'),
(125, '::1', 'http://localhost/triangacabapp/admin_con/users/listing', '2025-08-14', '13:00:44', 2, 'admin@gmail.com', 'admin'),
(126, '::1', 'http://localhost/triangacabapp/admin_con/users/listing', '2025-08-14', '13:17:12', 2, 'admin@gmail.com', 'admin'),
(127, '::1', 'http://localhost/triangacabapp/admin_con/users/listing', '2025-08-14', '13:17:27', 2, 'admin@gmail.com', 'admin'),
(128, '::1', 'http://localhost/triangacabapp/admin_con/users/listing', '2025-08-14', '13:17:33', 2, 'admin@gmail.com', 'admin'),
(129, '::1', 'http://localhost/triangacabapp/admin_con/users/listing', '2025-08-14', '15:54:23', 2, 'admin@gmail.com', 'admin'),
(130, '::1', 'http://localhost/triangacabapp/admin_con/users/listing', '2025-08-16', '10:24:49', 2, 'admin@gmail.com', 'admin'),
(131, '::1', 'http://localhost/triangacabapp/admin_con/users/listing', '2025-08-16', '13:17:48', 2, 'admin@gmail.com', 'admin'),
(132, '::1', 'http://localhost/triangacabapp/admin_con/users/listing', '2025-08-16', '13:17:51', 2, 'admin@gmail.com', 'admin'),
(133, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-16', '13:18:07', 2, 'admin@gmail.com', 'admin'),
(134, '::1', 'http://localhost/triangacabapp/admin_con/car_name/edit/7', '2025-08-16', '13:18:11', 2, 'admin@gmail.com', 'admin'),
(135, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-16', '13:18:13', 2, 'admin@gmail.com', 'admin'),
(136, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-16', '13:19:07', 2, 'admin@gmail.com', 'admin'),
(137, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-16', '13:21:06', 2, 'admin@gmail.com', 'admin'),
(138, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-16', '14:38:38', 2, 'admin@gmail.com', 'admin'),
(139, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/listing', '2025-08-16', '14:38:56', 2, 'admin@gmail.com', 'admin'),
(140, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/listing', '2025-08-16', '14:39:35', 2, 'admin@gmail.com', 'admin'),
(141, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/listing', '2025-08-16', '14:40:58', 2, 'admin@gmail.com', 'admin'),
(142, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/listing', '2025-08-16', '14:41:09', 2, 'admin@gmail.com', 'admin'),
(143, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/add', '2025-08-16', '14:47:19', 2, 'admin@gmail.com', 'admin'),
(144, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/add', '2025-08-16', '14:47:39', 2, 'admin@gmail.com', 'admin'),
(145, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/add', '2025-08-16', '14:47:58', 2, 'admin@gmail.com', 'admin'),
(146, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/add', '2025-08-16', '14:48:03', 2, 'admin@gmail.com', 'admin'),
(147, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/add', '2025-08-16', '14:48:10', 2, 'admin@gmail.com', 'admin'),
(148, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/listing', '2025-08-16', '14:48:51', 2, 'admin@gmail.com', 'admin'),
(149, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/listing', '2025-08-16', '14:50:06', 2, 'admin@gmail.com', 'admin'),
(150, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/edit/76', '2025-08-16', '14:50:37', 2, 'admin@gmail.com', 'admin'),
(151, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/edit/76', '2025-08-16', '14:51:07', 2, 'admin@gmail.com', 'admin'),
(152, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/listing', '2025-08-16', '14:51:09', 2, 'admin@gmail.com', 'admin'),
(153, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/edit/71', '2025-08-16', '14:51:11', 2, 'admin@gmail.com', 'admin'),
(154, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/listing', '2025-08-16', '14:51:13', 2, 'admin@gmail.com', 'admin'),
(155, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/edit/61', '2025-08-16', '14:51:16', 2, 'admin@gmail.com', 'admin'),
(156, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/listing', '2025-08-16', '14:51:17', 2, 'admin@gmail.com', 'admin'),
(157, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/edit/50', '2025-08-16', '14:51:20', 2, 'admin@gmail.com', 'admin'),
(158, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/listing', '2025-08-16', '14:51:23', 2, 'admin@gmail.com', 'admin'),
(159, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/listing', '2025-08-16', '14:52:59', 2, 'admin@gmail.com', 'admin'),
(160, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/listing', '2025-08-16', '15:00:54', 2, 'admin@gmail.com', 'admin'),
(161, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/listing', '2025-08-16', '15:01:19', 2, 'admin@gmail.com', 'admin'),
(162, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-16', '15:01:21', 2, 'admin@gmail.com', 'admin'),
(163, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-16', '15:01:56', 2, 'admin@gmail.com', 'admin'),
(164, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-16', '15:02:21', 2, 'admin@gmail.com', 'admin'),
(165, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-16', '15:03:09', 2, 'admin@gmail.com', 'admin'),
(166, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-16', '15:03:22', 2, 'admin@gmail.com', 'admin'),
(167, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/edit/9', '2025-08-16', '15:03:26', 2, 'admin@gmail.com', 'admin'),
(168, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-16', '15:03:29', 2, 'admin@gmail.com', 'admin'),
(169, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-16', '15:03:45', 2, 'admin@gmail.com', 'admin'),
(170, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-16', '15:07:10', 2, 'admin@gmail.com', 'admin'),
(171, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/add', '2025-08-16', '15:07:11', 2, 'admin@gmail.com', 'admin'),
(172, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-16', '15:07:23', 2, 'admin@gmail.com', 'admin'),
(173, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/edit/11', '2025-08-16', '15:07:52', 2, 'admin@gmail.com', 'admin'),
(174, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-16', '15:08:03', 2, 'admin@gmail.com', 'admin'),
(175, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-16', '15:08:44', 2, 'admin@gmail.com', 'admin'),
(176, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/listing', '2025-08-16', '15:08:52', 2, 'admin@gmail.com', 'admin'),
(177, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-16', '15:08:59', 2, 'admin@gmail.com', 'admin'),
(178, '::1', 'http://localhost/triangacabapp/admin_con/car_name/add', '2025-08-16', '15:10:11', 2, 'admin@gmail.com', 'admin'),
(179, '::1', 'http://localhost/triangacabapp/admin_con/car_name/add', '2025-08-16', '15:12:02', 2, 'admin@gmail.com', 'admin'),
(180, '::1', 'http://localhost/triangacabapp/admin_con/car_name/add', '2025-08-16', '15:14:47', 2, 'admin@gmail.com', 'admin'),
(181, '::1', 'http://localhost/triangacabapp/admin_con/car_name/add', '2025-08-16', '15:14:57', 2, 'admin@gmail.com', 'admin'),
(182, '::1', 'http://localhost/triangacabapp/admin_con/car_name/add', '2025-08-16', '15:15:50', 2, 'admin@gmail.com', 'admin'),
(183, '::1', 'http://localhost/triangacabapp/admin_con/car_name/add', '2025-08-16', '15:17:00', 2, 'admin@gmail.com', 'admin'),
(184, '::1', 'http://localhost/triangacabapp/admin_con/car_name/add', '2025-08-16', '15:17:32', 2, 'admin@gmail.com', 'admin'),
(185, '::1', 'http://localhost/triangacabapp/admin_con/car_name/add', '2025-08-16', '15:18:00', 2, 'admin@gmail.com', 'admin'),
(186, '::1', 'http://localhost/triangacabapp/admin_con/car_name/add', '2025-08-16', '15:18:15', 2, 'admin@gmail.com', 'admin'),
(187, '::1', 'http://localhost/triangacabapp/admin_con/car_name/add', '2025-08-16', '15:19:04', 2, 'admin@gmail.com', 'admin'),
(188, '::1', 'http://localhost/triangacabapp/admin_con/car_name/add', '2025-08-16', '15:19:35', 2, 'admin@gmail.com', 'admin'),
(189, '::1', 'http://localhost/triangacabapp/admin_con/car_name/add', '2025-08-16', '15:20:50', 2, 'admin@gmail.com', 'admin'),
(190, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-16', '15:21:29', 2, 'admin@gmail.com', 'admin'),
(191, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-16', '15:22:55', 2, 'admin@gmail.com', 'admin'),
(192, '::1', 'http://localhost/triangacabapp/admin_con/car_name/edit/77', '2025-08-16', '15:23:18', 2, 'admin@gmail.com', 'admin'),
(193, '::1', 'http://localhost/triangacabapp/admin_con/car_name/edit/77', '2025-08-16', '15:23:38', 2, 'admin@gmail.com', 'admin'),
(194, '::1', 'http://localhost/triangacabapp/admin_con/car_name/edit/77', '2025-08-16', '15:23:50', 2, 'admin@gmail.com', 'admin'),
(195, '::1', 'http://localhost/triangacabapp/admin_con/car_name/edit/77', '2025-08-16', '15:23:56', 2, 'admin@gmail.com', 'admin'),
(196, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-16', '15:24:36', 2, 'admin@gmail.com', 'admin'),
(197, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/listing', '2025-08-16', '15:25:20', 2, 'admin@gmail.com', 'admin'),
(198, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-16', '15:25:28', 2, 'admin@gmail.com', 'admin'),
(199, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/listing', '2025-08-16', '15:27:16', 2, 'admin@gmail.com', 'admin'),
(200, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/listing', '2025-08-16', '15:29:17', 2, 'admin@gmail.com', 'admin'),
(201, '::1', 'http://localhost/triangacabapp/admin_con/carsbrand/listing', '2025-08-16', '15:29:31', 2, 'admin@gmail.com', 'admin'),
(202, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-16', '15:29:34', 2, 'admin@gmail.com', 'admin'),
(203, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-16', '15:29:39', 2, 'admin@gmail.com', 'admin'),
(204, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-16', '15:33:43', 2, 'admin@gmail.com', 'admin'),
(205, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-16', '15:34:54', 2, 'admin@gmail.com', 'admin'),
(206, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-16', '15:34:58', 2, 'admin@gmail.com', 'admin'),
(207, '::1', 'http://localhost/triangacabapp/admin_con/car_name/edit/77', '2025-08-16', '15:35:00', 2, 'admin@gmail.com', 'admin'),
(208, '::1', 'http://localhost/triangacabapp/admin_con/car_name/edit/77', '2025-08-16', '15:35:46', 2, 'admin@gmail.com', 'admin'),
(209, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-16', '15:35:49', 2, 'admin@gmail.com', 'admin'),
(210, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-16', '15:35:58', 2, 'admin@gmail.com', 'admin'),
(211, '::1', 'http://localhost/triangacabapp/admin_con/car_name/edit/77', '2025-08-16', '15:36:02', 2, 'admin@gmail.com', 'admin'),
(212, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-16', '15:36:04', 2, 'admin@gmail.com', 'admin'),
(213, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-16', '15:36:05', 2, 'admin@gmail.com', 'admin'),
(214, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-16', '15:36:17', 2, 'admin@gmail.com', 'admin'),
(215, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-16', '15:37:33', 2, 'admin@gmail.com', 'admin'),
(216, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-16', '16:19:43', 2, 'admin@gmail.com', 'admin'),
(217, '::1', 'http://localhost/triangacabapp/admin_con/vendors/listing', '2025-08-16', '16:19:45', 2, 'admin@gmail.com', 'admin'),
(218, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-16', '16:19:46', 2, 'admin@gmail.com', 'admin'),
(219, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-16', '16:20:49', 2, 'admin@gmail.com', 'admin'),
(220, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-16', '16:20:50', 2, 'admin@gmail.com', 'admin'),
(221, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-16', '16:21:35', 2, 'admin@gmail.com', 'admin'),
(222, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-16', '16:23:06', 2, 'admin@gmail.com', 'admin'),
(223, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-16', '16:24:03', 2, 'admin@gmail.com', 'admin'),
(224, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/1', '2025-08-16', '16:25:35', 2, 'admin@gmail.com', 'admin'),
(225, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/1', '2025-08-16', '16:26:02', 2, 'admin@gmail.com', 'admin'),
(226, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/1', '2025-08-18', '10:21:42', 2, 'admin@gmail.com', 'admin'),
(227, '::1', 'http://localhost/triangacabapp/admin_con/users/listing', '2025-08-18', '10:24:41', 2, 'admin@gmail.com', 'admin'),
(228, '::1', 'http://localhost/triangacabapp/admin_con/users/listing', '2025-08-18', '10:32:58', 2, 'admin@gmail.com', 'admin'),
(229, '::1', 'http://localhost/triangacabapp/admin_con/users/listing', '2025-08-18', '15:14:26', 2, 'admin@gmail.com', 'admin'),
(230, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-18', '15:14:28', 2, 'admin@gmail.com', 'admin'),
(231, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/add', '2025-08-18', '15:14:45', 2, 'admin@gmail.com', 'admin'),
(232, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/add', '2025-08-18', '15:15:51', 2, 'admin@gmail.com', 'admin'),
(233, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-18', '15:15:53', 2, 'admin@gmail.com', 'admin'),
(234, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/edit/1', '2025-08-18', '15:15:56', 2, 'admin@gmail.com', 'admin'),
(235, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-18', '15:15:57', 2, 'admin@gmail.com', 'admin'),
(236, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/edit/1', '2025-08-18', '15:16:00', 2, 'admin@gmail.com', 'admin'),
(237, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-18', '15:16:07', 2, 'admin@gmail.com', 'admin'),
(238, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/edit/2', '2025-08-18', '15:16:09', 2, 'admin@gmail.com', 'admin'),
(239, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-18', '15:16:19', 2, 'admin@gmail.com', 'admin'),
(240, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/edit/10', '2025-08-18', '15:16:21', 2, 'admin@gmail.com', 'admin'),
(241, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-18', '15:16:24', 2, 'admin@gmail.com', 'admin'),
(242, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/edit/9', '2025-08-18', '15:16:25', 2, 'admin@gmail.com', 'admin'),
(243, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-18', '15:16:29', 2, 'admin@gmail.com', 'admin'),
(244, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/edit/8', '2025-08-18', '15:16:30', 2, 'admin@gmail.com', 'admin'),
(245, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-18', '15:16:33', 2, 'admin@gmail.com', 'admin'),
(246, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/edit/5', '2025-08-18', '15:16:35', 2, 'admin@gmail.com', 'admin'),
(247, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-18', '15:16:38', 2, 'admin@gmail.com', 'admin'),
(248, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/edit/4', '2025-08-18', '15:16:39', 2, 'admin@gmail.com', 'admin'),
(249, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-18', '15:16:43', 2, 'admin@gmail.com', 'admin'),
(250, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/edit/3', '2025-08-18', '15:16:45', 2, 'admin@gmail.com', 'admin'),
(251, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-18', '15:16:49', 2, 'admin@gmail.com', 'admin'),
(252, '::1', 'http://localhost/triangacabapp/admin_con/car_name/listing', '2025-08-18', '15:41:18', 2, 'admin@gmail.com', 'admin'),
(253, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-18', '16:06:49', 2, 'admin@gmail.com', 'admin'),
(254, '::1', 'http://localhost/triangacabapp/admin/dashboard', '2025-08-19', '11:38:41', 2, 'admin@gmail.com', 'admin'),
(255, '::1', 'http://localhost/triangacabapp/admin_con/users/listing', '2025-08-19', '11:38:43', 2, 'admin@gmail.com', 'admin'),
(256, '::1', 'http://localhost/triangacabapp/admin/dashboard', '2025-08-20', '12:51:28', 2, 'admin@gmail.com', 'admin'),
(257, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/listing', '2025-08-20', '12:51:31', 2, 'admin@gmail.com', 'admin'),
(258, '::1', 'http://localhost/triangacabapp/admin_con/car_type_master/edit/11', '2025-08-20', '12:51:38', 2, 'admin@gmail.com', 'admin'),
(259, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-20', '12:54:32', 2, 'admin@gmail.com', 'admin'),
(260, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-20', '12:54:35', 2, 'admin@gmail.com', 'admin'),
(261, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-20', '12:54:47', 2, 'admin@gmail.com', 'admin'),
(262, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/2', '2025-08-20', '15:36:32', 2, 'admin@gmail.com', 'admin'),
(263, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/listing', '2025-08-20', '15:36:43', 2, 'admin@gmail.com', 'admin'),
(264, '::1', 'http://localhost/triangacabapp/admin_con/vendor_cars/edit/1', '2025-08-20', '15:36:46', 2, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `request_id` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` text NOT NULL,
  `user_mobile` text NOT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `car_number` text DEFAULT NULL,
  `trip_type` int(11) DEFAULT NULL COMMENT '1=''local''\r\n2=''outstation'',\r\n3=''airport''',
  `sub_trip` int(11) DEFAULT NULL COMMENT '1=''oneway'',\r\n2=''round'',\r\n3=''localrental''',
  `from_location` text NOT NULL,
  `to_location` text NOT NULL,
  `total_distance` text NOT NULL,
  `total_distance_meter` text NOT NULL,
  `total_duration` text NOT NULL,
  `total_duration_value` text NOT NULL,
  `pickup_location` text DEFAULT NULL,
  `pickup_lat` decimal(10,8) DEFAULT NULL,
  `pickup_lng` decimal(11,8) DEFAULT NULL,
  `pickup_date_time` datetime DEFAULT NULL,
  `drop_location` text DEFAULT NULL,
  `drop_lat` decimal(10,8) DEFAULT NULL,
  `drop_lng` decimal(11,8) DEFAULT NULL,
  `return_date_time` datetime DEFAULT NULL,
  `car_type_master` int(11) DEFAULT NULL,
  `car_id` int(11) NOT NULL,
  `amount` text NOT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0 = ''Search'',\r\n1= ''confirmed''\r\n2=''driver Assign'',\r\n3=''completed'',\r\n4=''cancelled''',
  `accepted_at` datetime DEFAULT NULL,
  `fare` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `completed_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `request_id`, `user_id`, `username`, `user_mobile`, `driver_id`, `car_number`, `trip_type`, `sub_trip`, `from_location`, `to_location`, `total_distance`, `total_distance_meter`, `total_duration`, `total_duration_value`, `pickup_location`, `pickup_lat`, `pickup_lng`, `pickup_date_time`, `drop_location`, `drop_lat`, `drop_lng`, `return_date_time`, `car_type_master`, `car_id`, `amount`, `status`, `accepted_at`, `fare`, `created_at`, `completed_at`) VALUES
(2, '175550192437', 37, '', '', NULL, NULL, 1, 0, '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 'Rohini Sector 13, Sector 13, Rohini, Delhi, India', '16.1', '16128', '29', '', '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 28.62289310, 77.08861750, '2025-08-18 12:55:24', 'Rohini Sector 13, Sector 13, Rohini, Delhi, India', 28.72205170, 77.12847200, NULL, NULL, 0, '', 0, NULL, NULL, '2025-08-18 07:25:26', NULL),
(3, '175550205037', 37, '', '', NULL, NULL, 1, 0, '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 'Rohini Sector 13, Sector 13, Rohini, Delhi, India', '16.1', '16128', '29', '', '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 28.62289310, 77.08861750, '2025-08-18 12:57:30', 'Rohini Sector 13, Sector 13, Rohini, Delhi, India', 28.72205170, 77.12847200, NULL, NULL, 0, '', 0, NULL, NULL, '2025-08-18 07:27:31', NULL),
(4, '175550211637', 37, '', '', NULL, NULL, 1, 0, '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 'Mumbai Central, Mumbai, Maharashtra, India', '1', '1373844', '23', '', '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 28.62289310, 77.08861750, '2025-08-18 12:58:36', 'Mumbai Central, Mumbai, Maharashtra, India', 18.96902470, 72.82052920, NULL, NULL, 0, '', 0, NULL, NULL, '2025-08-18 07:28:38', NULL),
(5, '175550229637', 37, '', '', NULL, NULL, 1, 0, '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 'Mumbai Central, Mumbai, Maharashtra, India', '1,374 km', '1373844', '23 hours 22 mins', '84147', '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 28.62289310, 77.08861750, '2025-08-18 13:01:36', 'Mumbai Central, Mumbai, Maharashtra, India', 18.96962540, 72.81930800, NULL, NULL, 0, '', 0, NULL, NULL, '2025-08-18 07:31:38', NULL),
(6, '175550242537', 37, '', '', NULL, NULL, 1, 0, '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 'Peera Garhi Chowk, Ekta Enclave, Peeragarhi Village, Paschim Vihar, Delhi', '8.2 km', '8221', '18 mins', '1109', '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 28.62289310, 77.08861750, '2025-08-18 13:03:45', 'Peera Garhi Chowk, Ekta Enclave, Peeragarhi Village, Paschim Vihar, Delhi', 28.67949810, 77.09370340, NULL, NULL, 0, '', 0, NULL, NULL, '2025-08-18 07:33:47', NULL),
(7, '175550269837', 37, '', '', NULL, NULL, 1, 0, '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 'Mangolpuri, Delhi, India', '9.8 km', '9776', '20 mins', '1174', '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 28.62289310, 77.08861750, '2025-08-18 13:08:18', 'Mangolpuri, Delhi, India', 28.69238090, 77.09168990, NULL, NULL, 1, '', 0, '2025-08-20 14:57:14', NULL, '2025-08-18 07:38:20', NULL),
(8, '175550375637', 37, '', '', NULL, NULL, 2, 1, '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 'Rohini Court Complex, Block D, Sector 14, Rohini, Delhi, India', '13.8 km', '13823', '24 mins', '1455', '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 28.62289310, 77.08861750, '2025-08-14 15:25:00', 'Rohini Court Complex, Block D, Sector 14, Rohini, Delhi, India', 28.70720940, 77.13193280, '0000-00-00 00:00:00', NULL, 0, '', 0, NULL, NULL, '2025-08-18 07:55:59', NULL),
(9, '175550383637', 37, '', '', NULL, NULL, 2, 2, '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 'Rohini Court Complex, Block D, Sector 14, Rohini, Delhi, India', '13.8 km', '13823', '24 mins', '1455', '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 28.62289310, 77.08861750, '2025-08-14 15:25:00', 'Rohini Court Complex, Block D, Sector 14, Rohini, Delhi, India', 28.70720940, 77.13193280, '2025-08-29 13:31:00', NULL, 0, '', 0, NULL, NULL, '2025-08-18 07:57:18', NULL),
(10, '175550390637', 37, '', '', NULL, NULL, 1, 0, '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 'Mumbai Central, Mumbai, Maharashtra, India', '1,374 km', '1373844', '23 hours 22 mins', '84147', '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 28.62289310, 77.08861750, '2025-08-18 13:28:26', 'Mumbai Central, Mumbai, Maharashtra, India', 18.96902470, 72.82052920, '0000-00-00 00:00:00', NULL, 0, '', 0, NULL, NULL, '2025-08-18 07:58:29', NULL),
(11, '175550857037', 37, '', '', NULL, NULL, 2, 2, '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 'Uttam Nagar, Delhi, India', '4.1 km', '4065', '14 mins', '854', '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 28.62289310, 77.08861750, '2025-08-13 17:45:00', 'Uttam Nagar, Delhi, India', 28.61955740, 77.05499010, '2025-08-21 02:47:00', NULL, 0, '', 0, NULL, NULL, '2025-08-18 09:16:12', NULL),
(12, '175551291237', 37, '', '', NULL, NULL, 1, 0, '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 'Rohini Sector 13, Sector 13, Rohini, Delhi, India', '16.1 km', '16128', '29 mins', '1757', '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 28.62289310, 77.08861750, '2025-08-18 15:58:32', 'Rohini Sector 13, Sector 13, Rohini, Delhi, India', 28.72205170, 77.12847200, '0000-00-00 00:00:00', NULL, 0, '241.92', 1, NULL, NULL, '2025-08-18 10:28:33', NULL),
(13, '175551999537', 37, '', '', NULL, NULL, 1, 0, '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 'Rohini Sector 13, Sector 13, Rohini, Delhi, India', '16.1 km', '16128', '29 mins', '1757', '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 28.62289310, 77.08861750, '2025-08-18 17:56:35', 'Rohini Sector 13, Sector 13, Rohini, Delhi, India', 28.72205170, 77.12847200, '0000-00-00 00:00:00', NULL, 0, '177.41', 1, NULL, NULL, '2025-08-18 12:26:37', NULL),
(14, '175552127737', 37, '', '', 51, NULL, 1, 0, '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 'Perakam, Kerala, India', '2,445 km', '2444726', '1 day 19 hours', '156175', '28-B, near back Side To District Park, Block B 3A, Janakpuri, New Delhi, Delhi, 110058, India', 28.62289310, 77.08861750, '2025-08-18 18:17:57', 'Perakam, Kerala, India', 10.60004650, 76.02468450, '0000-00-00 00:00:00', NULL, 1, '26891.99', 3, '2025-08-20 17:04:51', NULL, '2025-08-18 12:47:59', '2025-08-20 17:05:02'),
(15, '175567447037', 37, '', '', NULL, NULL, 1, 0, 'RZ-116, Indra Park, Ram Datt Enclave, Uttam Nagar, Delhi, 110059, India', 'Uttam Nagar, Delhi, India', '4.9 km', '4888', '14 mins', '838', 'RZ-116, Indra Park, Ram Datt Enclave, Uttam Nagar, Delhi, 110059, India', 28.60825640, 77.09480530, '2025-08-20 12:51:10', 'Uttam Nagar, Delhi, India', 28.61955740, 77.05499010, '0000-00-00 00:00:00', NULL, 0, '24.44', 1, NULL, NULL, '2025-08-20 07:21:12', NULL),
(16, '175567677737', 37, '', '', NULL, NULL, 1, 0, 'RZ-116, Indra Park, Ram Datt Enclave, Uttam Nagar, Delhi, 110059, India', 'Peera Garhi Chowk, Ekta Enclave, Peeragarhi Village, Paschim Vihar, Delhi', '10.3 km', '10289', '20 mins', '1225', 'RZ-116, Indra Park, Ram Datt Enclave, Uttam Nagar, Delhi, 110059, India', 28.60825640, 77.09480530, '2025-08-20 13:29:37', 'Peera Garhi Chowk, Ekta Enclave, Peeragarhi Village, Paschim Vihar, Delhi', 28.67954260, 77.09462060, '0000-00-00 00:00:00', NULL, 0, '', 0, NULL, NULL, '2025-08-20 07:59:38', NULL),
(17, '175567681137', 37, '', '', 51, NULL, 1, 0, 'RZ-116, Indra Park, Ram Datt Enclave, Uttam Nagar, Delhi, 110059, India', 'Mumbai, Maharashtra, India', '1,376 km', '1376237', '23 hours 17 mins', '83828', 'RZ-116, Indra Park, Ram Datt Enclave, Uttam Nagar, Delhi, 110059, India', 28.60825640, 77.09480530, '2025-08-20 13:30:11', 'Mumbai, Maharashtra, India', 18.95819340, 72.83207290, '0000-00-00 00:00:00', NULL, 1, '15138.61', 3, '2025-08-20 17:01:08', NULL, '2025-08-20 08:00:13', '2025-08-20 17:04:16'),
(18, '175568310937', 37, 'azmal', '54665156213', 51, NULL, 1, 0, 'Vijay Vihar, Rohini, Delhi, India', 'Uttam Nagar East, Uttam Nagar, Delhi, India', '14.6 km', '14634', '37 mins', '2207', 'Vijay Vihar, Rohini, Delhi, India', 28.71366970, 77.09817430, '2025-08-20 15:15:09', 'Uttam Nagar East, Uttam Nagar, Delhi, India', 28.61903470, 77.06400160, '0000-00-00 00:00:00', NULL, 1, '160.97', 3, '2025-08-20 16:24:32', NULL, '2025-08-20 09:45:11', '2025-08-20 17:00:13'),
(19, '175568317337', 37, '', '', NULL, NULL, 1, 0, 'E Block, Avantika, Pocket E, Sector 1, Rohini, Delhi, India', 'Janakpuri District Center, Janakpuri, Delhi, India', '9.8 km', '9803', '21 mins', '1250', 'E Block, Avantika, Pocket E, Sector 1, Rohini, Delhi, India', 28.70603360, 77.09511720, '2025-08-20 15:16:13', 'Janakpuri District Center, Janakpuri, Delhi, India', 28.62955380, 77.08018990, '0000-00-00 00:00:00', NULL, 0, '49.02', 1, NULL, NULL, '2025-08-20 09:46:15', NULL),
(20, '175568983237', 37, '', '', NULL, NULL, 1, 0, 'Peera Garhi Chowk, Ekta Enclave, Peeragarhi Village, Paschim Vihar, Delhi', 'Y- Block Road, Block W, Mangolpur Khurd, Mangolpuri, Delhi, India', '3.4 km', '3399', '9 mins', '540', 'Peera Garhi Chowk, Ekta Enclave, Peeragarhi Village, Paschim Vihar, Delhi', 28.67949810, 77.09370340, '2025-08-20 17:07:12', 'Y- Block Road, Block W, Mangolpur Khurd, Mangolpuri, Delhi, India', 28.70099400, 77.08664880, '0000-00-00 00:00:00', NULL, 0, '37.39', 1, NULL, NULL, '2025-08-20 11:37:15', NULL),
(21, '175569022937', 37, '', '', 51, NULL, 1, 0, 'RZ-116, Indra Park, Ram Datt Enclave, Uttam Nagar, Delhi, 110059, India', 'Tilak Nagar, Delhi, India', '4.6 km', '4637', '15 mins', '893', 'RZ-116, Indra Park, Ram Datt Enclave, Uttam Nagar, Delhi, 110059, India', 28.60825640, 77.09480530, '2025-08-20 17:13:49', 'Tilak Nagar, Delhi, India', 28.63893150, 77.08668110, '0000-00-00 00:00:00', 4, 1, '51.01', 3, '2025-08-20 17:22:42', NULL, '2025-08-20 11:43:51', '2025-08-20 17:47:17'),
(22, '175569219437', 37, 'User Panel', '1122334455', 51, 'DF45V1234', 1, 0, 'Uttam Nagar East, Uttam Nagar, Delhi, India', 'Sector-24, Rohini, Delhi, India', '16.8 km', '16760', '40 mins', '2398', 'Uttam Nagar East, Uttam Nagar, Delhi, India', 28.61903470, 77.06400160, '2025-08-20 17:46:34', 'Sector-24, Rohini, Delhi, India', 28.72845230, 77.08810340, '0000-00-00 00:00:00', 4, 1, '184.36', 3, '2025-08-20 17:47:20', NULL, '2025-08-20 12:16:36', '2025-08-20 17:47:48');

-- --------------------------------------------------------

--
-- Table structure for table `booking_complete_otp`
--

CREATE TABLE `booking_complete_otp` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `mobile` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = Active, 2 = Used',
  `created_at` datetime DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_complete_otp`
--

INSERT INTO `booking_complete_otp` (`id`, `booking_id`, `otp`, `mobile`, `status`, `created_at`, `verified_at`) VALUES
(1, 18, '4811', '1122334455', 2, '2025-08-20 17:00:05', NULL),
(3, 17, '6583', '1122334455', 2, '2025-08-20 17:04:09', NULL),
(4, 14, '6030', '1122334455', 2, '2025-08-20 17:04:55', NULL),
(5, 21, '5523', '1122334455', 2, '2025-08-20 17:47:12', NULL),
(6, 22, '1490', '1122334455', 2, '2025-08-20 17:47:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `booking_history`
--

CREATE TABLE `booking_history` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `addeddate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_notifications`
--

CREATE TABLE `booking_notifications` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0 COMMENT '0=new,1=accept,2=reject,3=complete',
  `accepted_driver_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `completed_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_notifications`
--

INSERT INTO `booking_notifications` (`id`, `driver_id`, `booking_id`, `title`, `message`, `status`, `accepted_driver_id`, `created_at`, `completed_at`) VALUES
(1, 51, 13, 'New Booking Available', 'A new booking request is available for your car type.', 0, 0, '2025-08-18 18:17:34', NULL),
(5, 51, 14, 'New Booking Available', 'A new booking request is available for your car type.', 3, 51, '2025-08-18 18:21:30', '2025-08-20 17:05:02'),
(7, 51, 17, 'New Booking Available', 'A new booking request is available for your car type.', 3, 51, '2025-08-20 13:35:18', '2025-08-20 17:04:16'),
(8, 51, 18, 'New Booking Available', 'A new booking request is available for your car type.', 3, 51, '2025-08-20 15:15:24', '2025-08-20 17:00:13'),
(9, 51, 20, 'New Booking Available', 'A new booking request is available for your car type.', 0, 0, '2025-08-20 17:07:33', NULL),
(10, 51, 21, 'New Booking Available', 'A new booking request is available for your car type.', 3, 51, '2025-08-20 17:16:28', '2025-08-20 17:47:17'),
(11, 51, 22, 'New Booking Available', 'A new booking request is available for your car type.', 3, 51, '2025-08-20 17:46:51', '2025-08-20 17:47:48');

-- --------------------------------------------------------

--
-- Table structure for table `car_brand`
--

CREATE TABLE `car_brand` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `car_type_id` varchar(350) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `addeddate` datetime DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `car_brand`
--

INSERT INTO `car_brand` (`id`, `name`, `slug`, `car_type_id`, `status`, `addeddate`, `modifieddate`) VALUES
(50, 'Hyundai', 'hyundai', '1', 1, NULL, '2025-08-16 14:51:22'),
(51, 'Mahindra', NULL, '1', 1, NULL, NULL),
(52, 'Honda', NULL, '1', 1, NULL, NULL),
(54, 'Maruti Suzuki', NULL, '1', 1, NULL, NULL),
(55, 'Toyota', NULL, '1', 1, NULL, NULL),
(56, 'Toyota', NULL, '2', 1, NULL, NULL),
(57, 'Maruti Suzuki', NULL, '2', 1, NULL, NULL),
(58, 'Honda', NULL, '2', 1, NULL, NULL),
(59, 'Mahindra', NULL, '2', 1, NULL, NULL),
(60, 'Hyundai', NULL, '2', 1, NULL, NULL),
(61, 'Toyota', NULL, '3', 1, NULL, NULL),
(62, 'Maruti Suzuki', NULL, '3', 1, NULL, NULL),
(63, 'Honda', NULL, '3', 1, NULL, NULL),
(64, 'Mahindra', NULL, '3', 1, NULL, NULL),
(65, 'Hyundai', NULL, '3', 1, NULL, NULL),
(66, 'Toyota', NULL, '4', 1, NULL, NULL),
(67, 'Maruti Suzuki', NULL, '4', 1, NULL, NULL),
(68, 'Honda', NULL, '4', 1, NULL, NULL),
(69, 'Mahindra', NULL, '4', 1, NULL, NULL),
(70, 'Hyundai', NULL, '4', 1, NULL, NULL),
(71, 'BOLERO', NULL, '3', 1, NULL, NULL),
(73, 'Tempo Traveller', NULL, '8', 1, NULL, NULL),
(74, 'Tempo Traveller', NULL, '9', 1, NULL, NULL),
(75, 'Tempo Traveller', NULL, '10', 1, NULL, NULL),
(76, 'Tempo Traveller', NULL, '11', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `car_name`
--

CREATE TABLE `car_name` (
  `id` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `car_type_id` varchar(350) DEFAULT NULL,
  `car_brand_id` varchar(350) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `addeddate` datetime DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `car_name`
--

INSERT INTO `car_name` (`id`, `image`, `name`, `slug`, `car_type_id`, `car_brand_id`, `status`, `addeddate`, `modifieddate`) VALUES
(16, NULL, 'xcent', NULL, '2', '16', 1, NULL, NULL),
(17, NULL, 'Baleno', NULL, '1', '21', 1, NULL, NULL),
(18, NULL, 'Dzire', NULL, '2', '18', 1, NULL, NULL),
(19, NULL, 'i20', NULL, '1', '50', 1, NULL, NULL),
(20, NULL, 'Swift', NULL, '1', '21', 1, NULL, NULL),
(21, NULL, 'Vitara Brezza', NULL, '1', '21', 1, NULL, NULL),
(22, NULL, 'Altroz', NULL, '1', '39', 1, NULL, NULL),
(23, NULL, 'Aura', NULL, '2', '16', 1, NULL, NULL),
(24, NULL, 'Ertiga', NULL, '3', '20', 1, NULL, NULL),
(25, NULL, 'Ciaz', NULL, '2', '18', 1, NULL, NULL),
(26, NULL, 'Go', NULL, '1', '42', 1, NULL, NULL),
(27, NULL, 'i10', NULL, '1', '50', 1, NULL, NULL),
(28, NULL, 'i10', NULL, '1', '50', 1, NULL, NULL),
(29, NULL, 'Ignis', NULL, '1', '21', 1, NULL, NULL),
(30, NULL, 'Ignis', NULL, '1', '21', 1, NULL, NULL),
(31, NULL, 'KUV100', NULL, '1', '51', 1, NULL, NULL),
(32, NULL, 'Polo', NULL, '1', '46', 1, NULL, NULL),
(33, NULL, 'Triber', NULL, '3', '25', 1, NULL, NULL),
(34, NULL, 'Venue', NULL, '1', '50', 1, NULL, NULL),
(35, NULL, 'Amaze', NULL, '2', '17', 1, NULL, NULL),
(36, NULL, 'Celerio', NULL, '1', '21', 1, NULL, NULL),
(37, NULL, 'Jazz', NULL, '1', '52', 1, NULL, NULL),
(38, NULL, 'kwid', NULL, '1', '27', 1, NULL, NULL),
(39, NULL, 'Tiago', NULL, '1', '39', 1, NULL, NULL),
(40, NULL, 'Verna', NULL, '2', '16', 1, NULL, NULL),
(41, NULL, 'Wagon R', NULL, '1', '21', 1, NULL, NULL),
(42, NULL, 'Tigor', NULL, '2', '38', 1, NULL, NULL),
(43, NULL, 'Glanza', NULL, '2', '53', 1, NULL, NULL),
(44, NULL, 'Santro', NULL, '1', '50', 1, NULL, NULL),
(45, NULL, 'Figo', NULL, '1', '24', 1, NULL, NULL),
(46, NULL, 'City', NULL, '2', '17', 1, NULL, NULL),
(47, NULL, 'Duster', NULL, '3', '25', 1, NULL, NULL),
(48, NULL, 'kuv100', NULL, '3', '43', 1, NULL, NULL),
(49, NULL, 'Alto 800', NULL, '1', '21', 1, NULL, NULL),
(50, NULL, 'Innova', NULL, '4', '15', 1, NULL, NULL),
(51, NULL, 'Crysta', NULL, '4', '15', 1, NULL, NULL),
(52, NULL, 'Alto', NULL, '1', '54', 1, NULL, NULL),
(53, NULL, 'Swift', NULL, '1', '54', 1, NULL, NULL),
(54, NULL, 'Baleno', NULL, '1', '54', 1, NULL, NULL),
(55, NULL, 'Celerio', NULL, '1', '54', 1, NULL, NULL),
(56, NULL, 'Etios Liva', NULL, '1', '55', 1, NULL, NULL),
(57, NULL, 'I10', NULL, '1', '50', 1, NULL, NULL),
(58, NULL, 'I20', NULL, '1', '50', 1, NULL, NULL),
(59, NULL, 'Swift Dzire', NULL, '2', '57', 1, NULL, NULL),
(60, NULL, 'SX4', NULL, '2', '57', 1, NULL, NULL),
(61, NULL, 'Ciaz', NULL, '2', '57', 1, NULL, NULL),
(62, NULL, 'Aura', NULL, '2', '60', 1, NULL, NULL),
(63, NULL, 'Xcent', NULL, '2', '60', 1, NULL, NULL),
(64, NULL, 'Amaze', NULL, '2', '58', 1, NULL, NULL),
(65, NULL, 'Etios', NULL, '2', '56', 1, NULL, NULL),
(66, NULL, 'Ertiga', NULL, '3', '62', 1, NULL, NULL),
(68, NULL, 'Mobilio', NULL, '3', '63', 1, NULL, NULL),
(69, NULL, 'Innova', NULL, '4', '66', 1, NULL, NULL),
(70, NULL, 'Innova Crysta', NULL, '4', '66', 1, NULL, NULL),
(71, NULL, 'Marazzo', NULL, '4', '69', 1, NULL, NULL),
(72, NULL, 'XUV 500', NULL, '4', '69', 1, NULL, NULL),
(73, NULL, 'Force', NULL, '8', '73', 1, NULL, NULL),
(74, NULL, 'Force', NULL, '9', '74', 1, NULL, NULL),
(75, NULL, 'Force', NULL, '10', '75', 1, NULL, NULL),
(76, NULL, 'Force', NULL, '11', '76', 1, NULL, NULL),
(77, '', 'Bolero', 'bolero', '3', '71', 1, NULL, '2025-08-16 15:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `car_otp_verification`
--

CREATE TABLE `car_otp_verification` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `vendor_cars_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `car_master_type` int(11) NOT NULL,
  `car_number` varchar(20) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `status` int(11) NOT NULL COMMENT '1=send,2=verified',
  `verified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_otp_verification`
--

INSERT INTO `car_otp_verification` (`id`, `vendor_id`, `vendor_cars_id`, `driver_id`, `car_master_type`, `car_number`, `otp`, `created_at`, `status`, `verified_at`) VALUES
(5, 40, 1, 51, 0, 'DF45V1234', '2856', '2025-08-08 18:22:27', 2, '2025-08-08 18:24:51'),
(7, 40, 1, 51, 0, 'DF45V1234', '6677', '2025-08-08 18:26:11', 2, '2025-08-08 18:27:25'),
(8, 40, 1, 51, 0, 'DF45V1234', '3772', '2025-08-08 18:28:56', 2, '2025-08-08 18:29:12'),
(9, 40, 2, 51, 0, 'DF12354', '2747', '2025-08-08 18:29:26', 2, '2025-08-08 18:29:33'),
(10, 40, 1, 51, 0, 'DF45V1234', '6873', '2025-08-14 13:19:12', 2, '2025-08-14 13:19:37'),
(11, 40, 1, 51, 0, 'DF45V1234', '9749', '2025-08-14 13:30:57', 2, '2025-08-14 13:31:11'),
(12, 40, 1, 51, 0, 'DF45V1234', '5945', '2025-08-14 13:31:43', 2, '2025-08-14 13:31:56'),
(15, 40, 2, 51, 0, 'DF12354', '2702', '2025-08-14 15:18:25', 2, NULL),
(16, 40, 1, 51, 0, 'DF45V1234', '8311', '2025-08-14 15:20:13', 2, NULL),
(17, 40, 2, 51, 0, 'DF12354', '7621', '2025-08-14 15:28:05', 2, '2025-08-14 15:28:16'),
(18, 40, 1, 51, 0, 'DF45V1234', '4161', '2025-08-14 15:24:15', 2, NULL),
(19, 40, 1, 51, 0, 'DF45V1234', '2460', '2025-08-14 15:33:50', 2, '2025-08-14 15:33:58'),
(20, 40, 1, 51, 0, 'DF45V1234', '5842', '2025-08-14 15:38:57', 2, '2025-08-14 15:39:02'),
(21, 40, 2, 51, 0, 'DF12354', '7234', '2025-08-14 15:41:49', 2, '2025-08-14 15:41:54'),
(22, 40, 1, 51, 0, 'DF45V1234', '2712', '2025-08-14 15:43:14', 2, '2025-08-14 15:43:19'),
(23, 40, 1, 51, 0, 'DF45V1234', '9150', '2025-08-14 15:51:10', 2, '2025-08-14 15:51:14'),
(24, 40, 1, 51, 0, 'DF45V1234', '3686', '2025-08-14 15:52:32', 2, '2025-08-14 15:52:47'),
(25, 40, 1, 51, 0, 'DF45V1234', '2756', '2025-08-18 14:50:49', 2, '2025-08-18 14:50:54'),
(26, 40, 1, 51, 0, 'DF45V1234', '6268', '2025-08-18 14:52:59', 2, '2025-08-18 14:53:04'),
(27, 40, 1, 51, 4, 'DF45V1234', '5688', '2025-08-18 18:15:00', 2, '2025-08-18 18:15:58'),
(28, 40, 2, 51, 2, 'DF12354', '2653', '2025-08-20 11:00:43', 2, '2025-08-20 11:00:47'),
(29, 40, 1, 51, 4, 'DF45V1234', '3797', '2025-08-20 12:15:35', 2, '2025-08-20 12:15:41'),
(30, 40, 1, 51, 4, 'DF45V1234', '5484', '2025-08-20 12:34:06', 2, '2025-08-20 12:34:55'),
(31, 40, 2, 51, 2, 'DF12354', '9855', '2025-08-20 12:43:51', 2, '2025-08-20 12:43:55'),
(32, 40, 1, 51, 4, 'DF45V1234', '7154', '2025-08-20 12:47:44', 2, '2025-08-20 12:48:01'),
(33, 40, 1, 51, 4, 'DF45V1234', '3207', '2025-08-20 13:18:46', 2, '2025-08-20 13:18:50');

-- --------------------------------------------------------

--
-- Table structure for table `car_type_master`
--

CREATE TABLE `car_type_master` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `popup_message` text DEFAULT NULL,
  `per_km_charge` text DEFAULT NULL,
  `per_min_charge` text DEFAULT NULL,
  `waiting_time_charge` text DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `addeddate` datetime DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `car_type_master`
--

INSERT INTO `car_type_master` (`id`, `name`, `slug`, `image`, `description`, `popup_message`, `per_km_charge`, `per_min_charge`, `waiting_time_charge`, `status`, `addeddate`, `modifieddate`) VALUES
(1, 'Hatchback', 'hatchback', '1617341676i20.jfif', 'Indica, Swift or Similar', '&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Vehicle and fuel charges included&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Driver Night Charges included&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;5% GST Extra&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Included Kilometers will start from pickup location&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Driver allowance includes driver&amp;#39;s stay, food and night charges&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Toll and state tax excluded&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Parking charges extra if applicable&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;AC will remain switched off in hilly areas where its use is restricted by government regulations.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;For round trip booking, Kilometers will count from pickup location to pickup location&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;One day means one calendar day (from midnight 12 to midnight 12).&lt;/p&gt;\r\n\r\n&lt;p&gt;-The final amount will depend on actual travelled distance and days.&lt;/p&gt;\r\n\r\n&lt;p&gt;-Maximum permissible waiting time before pick up is 1Hr. After which extra waiting charges of Rs. 200/Hr would be applicable.&lt;/p&gt;', '5', '12', '10', 1, NULL, '2025-08-18 15:16:07'),
(2, 'Sedan', 'sedan', '1617342000xcent1.png', 'Dzire, Etios or Similar', '&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Vehicle and fuel charges included&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Driver Night Charges included&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;5% GST Extra&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Included Kilometers will start from pickup location&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Driver allowance includes driver&amp;#39;s stay, food and night charges&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Toll and state tax excluded&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Parking charges extra if applicable&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;AC will remain switched off in hilly areas where its use is restricted by government regulations.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;For round trip booking, Kilometers will count from pickup location to pickup location&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;One day means one calendar day (from midnight 12 to midnight 12).&lt;/p&gt;\r\n\r\n&lt;p&gt;-The final amount will depend on actual travelled distance and days.&lt;/p&gt;\r\n\r\n&lt;p&gt;-Maximum permissible waiting time before pick up is 1Hr. After which extra waiting charges of Rs. 200/Hr would be applicable.&lt;/p&gt;', '12', '10', '10', 1, NULL, '2025-08-18 15:16:19'),
(3, 'SUV', 'suv', '1617342273mobilo.jfif', 'Xylo, Ertiga or Similar', '&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Vehicle and fuel charges included&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Driver Night Charges included&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;5% GST Extra&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Included Kilometers will start from pickup location&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Driver allowance includes driver&amp;#39;s stay, food and night charges&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Toll and state tax excluded&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Parking charges extra if applicable&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;AC will remain switched off in hilly areas where its use is restricted by government regulations.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;For round trip booking, Kilometers will count from pickup location to pickup location&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;One day means one calendar day (from midnight 12 to midnight 12).&lt;/p&gt;\r\n\r\n&lt;p&gt;-The final amount will depend on actual travelled distance and days.&lt;/p&gt;\r\n\r\n&lt;p&gt;-Maximum permissible waiting time before pick up is 1Hr. After which extra waiting charges of Rs. 200/Hr would be applicable.&lt;/p&gt;', '10', '10', '10', 1, NULL, '2025-08-18 15:16:49'),
(4, 'Innova/MPV', 'innovampv', '1616669845suv (1).png', 'Innova, Marazzo, Crysta', '&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Vehicle and fuel charges included&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Driver Night Charges included&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;5% GST Extra&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Included Kilometers will start from pickup location&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Driver allowance includes driver&amp;#39;s stay, food and night charges&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Toll and state tax excluded&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Parking charges extra if applicable&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;AC will remain switched off in hilly areas where its use is restricted by government regulations.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;For round trip booking, Kilometers will count from pickup location to pickup location&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;One day means one calendar day (from midnight 12 to midnight 12).&lt;/p&gt;\r\n\r\n&lt;p&gt;-The final amount will depend on actual travelled distance and days.&lt;/p&gt;\r\n\r\n&lt;p&gt;-Maximum permissible waiting time before pick up is 1Hr. After which extra waiting charges of Rs. 200/Hr would be applicable.&lt;/p&gt;', '11', '10', '10', 1, NULL, '2025-08-18 15:16:43'),
(5, 'Crysta', 'crysta', '16691868122375645OTv3DZSV.jpg', 'Innova Crysta', '&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Vehicle and fuel charges included&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Driver Night Charges included&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;5% GST Extra&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Included Kilometers will start from pickup location&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Driver allowance includes driver&amp;#39;s stay, food and night charges&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Toll and state tax excluded&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Parking charges extra if applicable&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;AC will remain switched off in hilly areas where its use is restricted by government regulations.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;For round trip booking, Kilometers will count from pickup location to pickup location&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;One day means one calendar day (from midnight 12 to midnight 12).&lt;/p&gt;\r\n\r\n&lt;p&gt;-The final amount will depend on actual travelled distance and days.&lt;/p&gt;\r\n\r\n&lt;p&gt;-Maximum permissible waiting time before pick up is 1Hr. After which extra waiting charges of Rs. 200/Hr would be applicable.&lt;/p&gt;', '15', '10', '10', 1, NULL, '2025-08-18 15:16:38'),
(8, '12 Seater', '12-seater', '167152377939311112-force_motors_traveller.jpg', 'Tempo Traveller', '&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Vehicle and fuel charges included&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Driver Night Charges included&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;5% GST Extra&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Included Kilometers will start from pickup location&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Driver allowance includes driver&amp;#39;s stay, food and night charges&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Toll and state tax excluded&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Parking charges extra if applicable&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;AC will remain switched off in hilly areas where its use is restricted by government regulations.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;For round trip booking, Kilometers will count from pickup location to pickup location&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;One day means one calendar day (from midnight 12 to midnight 12).&lt;/p&gt;\r\n\r\n&lt;p&gt;-The final amount will depend on actual travelled distance and days.&lt;/p&gt;\r\n\r\n&lt;p&gt;-Maximum permissible waiting time before pick up is 1Hr. After which extra waiting charges of Rs. 200/Hr would be applicable.&lt;/p&gt;', '8', '10', '10', 1, NULL, '2025-08-18 15:16:33'),
(9, '16 Seater', '16-seater', '167152382939311112-force_motors_traveller.jpg', 'Tempo Traveller', '&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Vehicle and fuel charges included&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Driver Night Charges included&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;5% GST Extra&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Included Kilometers will start from pickup location&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Driver allowance includes driver&amp;#39;s stay, food and night charges&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Toll and state tax excluded&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Parking charges extra if applicable&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;AC will remain switched off in hilly areas where its use is restricted by government regulations.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;For round trip booking, Kilometers will count from pickup location to pickup location&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;One day means one calendar day (from midnight 12 to midnight 12).&lt;/p&gt;\r\n\r\n&lt;p&gt;-The final amount will depend on actual travelled distance and days.&lt;/p&gt;\r\n\r\n&lt;p&gt;-Maximum permissible waiting time before pick up is 1Hr. After which extra waiting charges of Rs. 200/Hr would be applicable.&lt;/p&gt;', '6', '10', '10', 1, NULL, '2025-08-18 15:16:29'),
(10, '20 Seater', '20-seater', '167152385439311112-force_motors_traveller.jpg', 'Tempo Traveller', '&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Vehicle and fuel charges included&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Driver Night Charges included&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;5% GST Extra&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Included Kilometers will start from pickup location&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Driver allowance includes driver&amp;#39;s stay, food and night charges&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Toll and state tax excluded&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Parking charges extra if applicable&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;AC will remain switched off in hilly areas where its use is restricted by government regulations.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;For round trip booking, Kilometers will count from pickup location to pickup location&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;One day means one calendar day (from midnight 12 to midnight 12).&lt;/p&gt;\r\n\r\n&lt;p&gt;-The final amount will depend on actual travelled distance and days.&lt;/p&gt;\r\n\r\n&lt;p&gt;-Maximum permissible waiting time before pick up is 1Hr. After which extra waiting charges of Rs. 200/Hr would be applicable.&lt;/p&gt;', '22', '10', '10', 1, NULL, '2025-08-18 15:16:24'),
(11, '26 Seater', '26-seater', '167152387339311112-force_motors_traveller.jpg', 'Tempo Traveller', '&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Vehicle and fuel charges included&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Driver Night Charges included&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;5% GST Extra&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Included Kilometers will start from pickup location&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Driver allowance includes driver&amp;#39;s stay, food and night charges&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Toll and state tax excluded&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;Parking charges extra if applicable&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;AC will remain switched off in hilly areas where its use is restricted by government regulations.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;For round trip booking, Kilometers will count from pickup location to pickup location&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;-&amp;nbsp;&lt;/strong&gt;One day means one calendar day (from midnight 12 to midnight 12).&lt;/p&gt;\r\n\r\n&lt;p&gt;-The final amount will depend on actual travelled distance and days.&lt;/p&gt;\r\n\r\n&lt;p&gt;-Maximum permissible waiting time before pick up is 1Hr. After which extra waiting charges of Rs. 200/Hr would be applicable.&lt;/p&gt;', '25', '10', '10', 1, NULL, '2025-08-16 15:08:03');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
-- Table structure for table `driver_car_history`
--

CREATE TABLE `driver_car_history` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `vendor_cars_id` int(11) NOT NULL,
  `car_master_type` int(11) NOT NULL,
  `car_number` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '1=active,2=inactive',
  `latitude` text NOT NULL,
  `longitude` text NOT NULL,
  `assigned_at` datetime NOT NULL,
  `unassigned_at` datetime DEFAULT NULL,
  `last_lat` decimal(10,8) DEFAULT NULL,
  `last_lng` decimal(11,8) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_car_history`
--

INSERT INTO `driver_car_history` (`id`, `driver_id`, `vendor_cars_id`, `car_master_type`, `car_number`, `status`, `latitude`, `longitude`, `assigned_at`, `unassigned_at`, `last_lat`, `last_lng`, `last_updated`, `last_update`) VALUES
(1, 51, 1, 0, 'DF45V1234', 2, '', '', '2025-08-14 13:31:11', '2025-08-14 13:31:56', NULL, NULL, NULL, NULL),
(2, 51, 1, 0, 'DF45V1234', 2, '', '', '2025-08-14 15:09:31', '2025-08-14 15:11:20', NULL, NULL, NULL, NULL),
(3, 51, 2, 0, 'DF12354', 2, '', '', '2025-08-14 15:18:37', '2025-08-14 15:19:54', NULL, NULL, NULL, NULL),
(4, 51, 1, 0, 'DF45V1234', 2, '', '', '2025-08-14 15:21:34', '2025-08-14 15:22:45', NULL, NULL, NULL, NULL),
(5, 51, 2, 0, 'DF12354', 2, '', '', '2025-08-14 15:23:06', '2025-08-14 15:24:07', NULL, NULL, NULL, NULL),
(6, 51, 1, 0, 'DF45V1234', 2, '', '', '2025-08-14 15:24:25', '2025-08-14 15:27:57', NULL, NULL, NULL, NULL),
(7, 51, 2, 0, 'DF12354', 2, '', '', '2025-08-14 15:28:16', '2025-08-14 15:33:35', NULL, NULL, NULL, NULL),
(8, 51, 1, 0, 'DF45V1234', 2, '', '', '2025-08-14 15:33:58', '2025-08-14 15:38:00', NULL, NULL, NULL, NULL),
(9, 51, 1, 0, 'DF45V1234', 2, '', '', '2025-08-14 15:39:02', '2025-08-14 15:39:08', NULL, NULL, NULL, NULL),
(10, 51, 2, 0, 'DF12354', 2, '', '', '2025-08-14 15:41:54', '2025-08-14 15:41:58', NULL, NULL, NULL, NULL),
(11, 51, 1, 0, 'DF45V1234', 2, '', '', '2025-08-14 15:43:19', '2025-08-14 15:43:29', NULL, NULL, NULL, NULL),
(12, 51, 1, 0, 'DF45V1234', 2, '', '', '2025-08-14 15:51:14', '2025-08-14 15:51:21', NULL, NULL, NULL, NULL),
(13, 51, 1, 0, 'DF45V1234', 2, '', '', '2025-08-14 15:52:47', '2025-08-14 16:18:50', NULL, NULL, NULL, NULL),
(14, 51, 1, 0, 'DF45V1234', 2, '', '', '2025-08-18 14:50:54', '2025-08-18 14:52:01', NULL, NULL, NULL, NULL),
(15, 51, 1, 0, 'DF45V1234', 2, '', '', '2025-08-18 14:53:04', '2025-08-18 18:13:43', NULL, NULL, NULL, NULL),
(16, 51, 1, 4, 'DF45V1234', 2, '', '', '2025-08-18 18:15:58', '2025-08-20 10:56:24', NULL, NULL, NULL, NULL),
(17, 51, 2, 2, 'DF12354', 2, '', '', '2025-08-20 11:00:47', '2025-08-20 11:00:59', NULL, NULL, NULL, NULL),
(18, 51, 1, 4, 'DF45V1234', 2, '', '', '2025-08-20 12:15:41', '2025-08-20 12:33:59', NULL, NULL, NULL, NULL),
(19, 51, 1, 4, 'DF45V1234', 2, '28.6192501', '77.0686672', '2025-08-20 12:34:55', '2025-08-20 12:37:03', NULL, NULL, NULL, NULL),
(20, 51, 2, 2, 'DF12354', 2, '28.6192501', '77.0686672', '2025-08-20 12:43:55', '2025-08-20 12:47:22', NULL, NULL, NULL, NULL),
(21, 51, 1, 4, 'DF45V1234', 2, '28.6192501', '77.0686672', '2025-08-20 12:48:01', '2025-08-20 13:17:43', NULL, NULL, NULL, NULL),
(22, 51, 1, 4, 'DF45V1234', 1, '28.6192501', '77.0686672', '2025-08-20 13:18:50', NULL, NULL, NULL, NULL, '2025-08-20 17:47:20');

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
(16, '2', '6859277ca6885::1', '::1', '2025-06-23', '15:37:56', 'admin@gmail.com', 'admin', '2025-08-16', '12:39:39', 1),
(17, '2', '689d7920d0614::1', '::1', '2025-08-14', '11:20:24', 'admin@gmail.com', 'admin', '2025-08-16', '12:39:39', 1),
(18, '2', '68a037a7aaaf1::1', '::1', '2025-08-16', '13:17:51', 'admin@gmail.com', 'admin', NULL, NULL, 0),
(19, '2', '68a2f5f9c7c84::1', '::1', '2025-08-18', '15:14:25', 'admin@gmail.com', 'admin', NULL, NULL, 0),
(20, '2', '68a414e931efb::1', '::1', '2025-08-19', '11:38:41', 'admin@gmail.com', 'admin', NULL, NULL, 0),
(21, '2', '68a5777826d02::1', '::1', '2025-08-20', '12:51:28', 'admin@gmail.com', 'admin', NULL, NULL, 0);

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
  `firebase_token` text DEFAULT NULL,
  `access_token` text NOT NULL,
  `device` text NOT NULL,
  `status` int(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` text NOT NULL,
  `testkey` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `login_history`
--

INSERT INTO `login_history` (`id`, `user_id`, `role`, `ip_address`, `date`, `time`, `device_id`, `firebase_token`, `access_token`, `device`, `status`, `password`, `mobile`, `testkey`) VALUES
(3, '48', 1, '::1', '2025-06-23', '16:41:57', '685933a76e34a', '1945295833', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVFWjJsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dsUmVXVlRVWGhOUTFKWVRVVndXa3hyWjNkU2VrNWpUREkxZVZGNVNYTkpiV2gyWkZoS2VrbHFiekJQUTNkcFdrZEdNRnBXT1RCaFZ6RnNTV3B2YVUxcVFYbE9VekIzVG1rd2VVMTVRWGhPYW04d1RWUnZNVTU1U1hOSmJrcDJZa2RWYVU5cFNYaEphWGRwV2tkV01tRlhUbXhZTW14clNXcHZhVTVxWnpGUFZFMTZXVlJqTWxwVVRUQlpVMG81', '', 0, '$2y$10$W0JY.H0G3/nrC', '', ''),
(4, '49', 1, '::1', '2025-06-23', '16:43:29', '685933a76e34a', '660816764', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVFYTJsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dsUmVXVlRVWGhOUTFKWVkzcG9lVlJJU25kVmJUbDZUR3N4YmtscGQybGhSemt4WTI1TmFVOXFVVFJNUTBwcldWaFNiRmd6VW5CaVYxVnBUMmxKZVUxRVNURk1WRUV5VEZSSmVrbEVSVEpQYWxGNlQycEpOVWxwZDJsamJUbHpXbE5KTmtscVJXbE1RMHByV2xoYWNGa3lWbVpoVjFGcFQybEpNazlFVlRWTmVrNW9UbnBhYkUxNlVtaEpiakE5', '', 0, '$2y$10$Ws8rLrpRos.Mg', '', ''),
(5, '50', 1, '::1', '2025-06-23', '16:46:42', '685933a76e34a', '366973806', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVVUVdsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1cxR2EySlhiSFZKYVhkcFlVYzVNV051VFdsUGFsRTBURU5LYTFsWVVteFlNMUp3WWxkVmFVOXBTWGxOUkVreFRGUkJNa3hVU1hwSlJFVXlUMnBSTWs5cVVYbEphWGRwWTIwNWMxcFRTVFpKYWtWcFRFTkthMXBZV25CWk1sWm1ZVmRSYVU5cFNUSlBSRlUxVFhwT2FFNTZXbXhOZWxKb1NXNHdQUT09', '', 0, 'admin', '', ''),
(6, '40', 1, '::1', '2025-06-23', '16:50:51', '685933a76e34a', '1986584534', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVFUVdsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDVwTUhsTmVVRjRUbXB2TVUxRWJ6Rk5VMGx6U1c1S2RtSkhWV2xQYVVsNFNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWN4VDFSTmVsbFVZekphVkUwd1dWTktPUT09', '', 0, '123456', '', ''),
(7, '40', 1, '::1', '2025-06-23', '16:54:51', '685933a76e34a', '527994133', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVFUVdsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDVwTUhsTmVVRjRUbXB2TVU1RWJ6Rk5VMGx6U1c1S2RtSkhWV2xQYVVsNFNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWN4VDFSTmVsbFVZekphVkUwd1dWTktPUT09', '', 0, '123456', '', ''),
(8, '37', 1, '::1', '2025-06-30', '12:47:46', '68623a13df3ed', '1157715841', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTE2WTJsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDVwTUhwTlEwRjRUV3B2TUU1NmJ6Qk9hVWx6U1c1S2RtSkhWV2xQYVVsNFNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWN5VFdwT2FFMVVUbXRhYWs1c1drTktPUT09', '', 0, '123456', '', ''),
(9, '40', 2, '::1', '2025-06-30', '12:59:12', '68623a13df3ed', '1731484960', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVFUVdsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDVwTUhwTlEwRjRUV3B2TVU5VWIzaE5hVWx6U1c1S2RtSkhWV2xQYVVsNVNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWN5VFdwT2FFMVVUbXRhYWs1c1drTktPUT09', '', 0, '123456', '', ''),
(10, '37', 1, '::1', '2025-06-30', '14:36:34', '68623a13df3ed', '1182135424', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTE2WTJsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDVwTUhwTlEwRjRUa1J2ZWs1cWIzcE9RMGx6U1c1S2RtSkhWV2xQYVVsNFNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWN5VFdwT2FFMVVUbXRhYWs1c1drTktPUT09', '', 0, '123456', '', ''),
(11, '37', 1, '::1', '2025-06-30', '14:36:36', '68623a13df3ed', '1295860313', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTE2WTJsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDVwTUhwTlEwRjRUa1J2ZWs1cWIzcE9hVWx6U1c1S2RtSkhWV2xQYVVsNFNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWN5VFdwT2FFMVVUbXRhYWs1c1drTktPUT09', '', 0, '123456', '', ''),
(12, '40', 2, '::1', '2025-06-30', '15:14:09', '68623a13df3ed', '24692036', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVFUVdsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDVwTUhwTlEwRjRUbFJ2ZUU1RWIzZFBVMGx6U1c1S2RtSkhWV2xQYVVsNVNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWN5VFdwT2FFMVVUbXRhYWs1c1drTktPUT09', '', 0, '123456', '', ''),
(13, '37', 1, '::1', '2025-06-30', '15:17:26', '68623a13df3ed', '704256048', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTE2WTJsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDVwTUhwTlEwRjRUbFJ2ZUU1NmIzbE9hVWx6U1c1S2RtSkhWV2xQYVVsNFNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWN5VFdwT2FFMVVUbXRhYWs1c1drTktPUT09', '', 0, '123456', '', ''),
(14, '40', 2, '::1', '2025-06-30', '15:18:49', '68623a13df3ed', '1364709250', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVFUVdsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDVwTUhwTlEwRjRUbFJ2ZUU5RWJ6QlBVMGx6U1c1S2RtSkhWV2xQYVVsNVNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWN5VFdwT2FFMVVUbXRhYWs1c1drTktPUT09', '', 0, '123456', '', ''),
(15, '37', 1, '::1', '2025-06-30', '15:18:56', '68623a13df3ed', '703925251', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTE2WTJsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDVwTUhwTlEwRjRUbFJ2ZUU5RWJ6Rk9hVWx6U1c1S2RtSkhWV2xQYVVsNFNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWN5VFdwT2FFMVVUbXRhYWs1c1drTktPUT09', '', 0, '123456', '', ''),
(16, '40', 2, '::1', '2025-06-30', '15:35:01', '68623a13df3ed', '22198545', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVFUVdsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDVwTUhwTlEwRjRUbFJ2ZWs1VWIzZE5VMGx6U1c1S2RtSkhWV2xQYVVsNVNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWN5VFdwT2FFMVVUbXRhYWs1c1drTktPUT09', '', 0, '123456', '', ''),
(17, '40', 2, '::1', '2025-07-01', '12:04:21', '68623a13df3ed', '1673063257', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVFUVdsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDU1TUhkTlUwRjRUV3B2ZDA1RWIzbE5VMGx6U1c1S2RtSkhWV2xQYVVsNVNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWN5VFdwT2FFMVVUbXRhYWs1c1drTktPUT09', '', 0, '123456', '', ''),
(18, '37', 1, '::1', '2025-07-02', '12:55:09', '6864ded130df0', '2038256095', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTE2WTJsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDU1TUhkTmFVRjRUV3B2TVU1VWIzZFBVMGx6U1c1S2RtSkhWV2xQYVVsNFNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWN5VGtkU2JGcEVSWHBOUjFKdFRVTktPUT09', '', 0, '123456', '', ''),
(19, '40', 2, '::1', '2025-07-08', '16:39:11', '68623a13df3ed', '1962212479', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVFUVdsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDU1TUhkUFEwRjRUbXB2ZWs5VWIzaE5VMGx6U1c1S2RtSkhWV2xQYVVsNVNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWN5VFdwT2FFMVVUbXRhYWs1c1drTktPUT09', '', 0, '123456', '', ''),
(20, '37', 1, '::1', '2025-07-08', '16:39:18', '68623a13df3ed', '241866848', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTE2WTJsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDU1TUhkUFEwRjRUbXB2ZWs5VWIzaFBRMGx6U1c1S2RtSkhWV2xQYVVsNFNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWN5VFdwT2FFMVVUbXRhYWs1c1drTktPUT09', '', 0, '123456', '', ''),
(21, '40', 2, '::1', '2025-08-06', '12:09:56', '6892f8b9a2b29', '1166292404', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVFUVdsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhkT2FVRjRUV3B2ZDA5VWJ6Rk9hVWx6U1c1S2RtSkhWV2xQYVVsNVNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWMxVFcxWk5GbHFiR2hOYlVsNVQxTktPUT09', '', 0, '123456', '', ''),
(22, '37', 1, '::1', '2025-08-06', '12:45:23', '68930109540c0', '1027027091', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTE2WTJsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhkT2FVRjRUV3B2TUU1VWIzbE5lVWx6U1c1S2RtSkhWV2xQYVVsNFNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWMxVFhwQmVFMUVhekZPUkVKcVRVTktPUT09', '', 0, '123456', '', ''),
(23, '40', 2, '::1', '2025-08-06', '13:13:11', '6892f8b9a2b29', '822195657', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVFUVdsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhkT2FVRjRUWHB2ZUUxNmIzaE5VMGx6U1c1S2RtSkhWV2xQYVVsNVNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWMxVFcxWk5GbHFiR2hOYlVsNVQxTktPUT09', '', 0, '123456', '', ''),
(24, '51', 3, '::1', '2025-08-06', '13:28:26', '6892f8b9a2b29', '927203542', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVVUldsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhkT2FVRjRUWHB2ZVU5RWIzbE9hVWx6U1c1S2RtSkhWV2xQYVVsNlNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWMxVFcxWk5GbHFiR2hOYlVsNVQxTktPUT09', '', 0, '123456', '', ''),
(25, '51', 3, '::1', '2025-08-06', '13:29:13', '6892f8b9a2b29', '1488679795', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVVUldsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhkT2FVRjRUWHB2ZVU5VWIzaE5lVWx6U1c1S2RtSkhWV2xQYVVsNlNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWMxVFcxWk5GbHFiR2hOYlVsNVQxTktPUT09', '', 0, '123456', '', ''),
(26, '37', 1, '::1', '2025-08-06', '16:28:25', '6892f8b9a2b29', '193351671', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTE2WTJsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhkT2FVRjRUbXB2ZVU5RWIzbE9VMGx6U1c1S2RtSkhWV2xQYVVsNFNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWMxVFcxWk5GbHFiR2hOYlVsNVQxTktPUT09', '', 0, '123456', '', ''),
(27, '51', 3, '::1', '2025-08-07', '11:18:03', '6892f8b9a2b29', '213410604', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVVUldsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhkT2VVRjRUVlJ2ZUU5RWIzZE5lVWx6U1c1S2RtSkhWV2xQYVVsNlNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWMxVFcxWk5GbHFiR2hOYlVsNVQxTktPUT09', '', 0, '123456', '', ''),
(28, '40', 2, '::1', '2025-08-07', '11:34:52', '6892f8b9a2b29', '1785165827', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVFUVdsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhkT2VVRjRUVlJ2ZWs1RWJ6Rk5hVWx6U1c1S2RtSkhWV2xQYVVsNVNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWMxVFcxWk5GbHFiR2hOYlVsNVQxTktPUT09', '', 0, '123456', '', ''),
(29, '40', 2, '::1', '2025-08-07', '13:05:00', '6892f8b9a2b29', '826310984', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVFUVdsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhkT2VVRjRUWHB2ZDA1VWIzZE5RMGx6U1c1S2RtSkhWV2xQYVVsNVNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWMxVFcxWk5GbHFiR2hOYlVsNVQxTktPUT09', '', 0, '123456', '', ''),
(30, '40', 2, '::1', '2025-08-08', '12:13:13', '6892f8b9a2b29', '1403086625', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVFUVdsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhkUFEwRjRUV3B2ZUUxNmIzaE5lVWx6U1c1S2RtSkhWV2xQYVVsNVNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWMxVFcxWk5GbHFiR2hOYlVsNVQxTktPUT09', '', 0, '123456', '', ''),
(31, '51', 3, '::1', '2025-08-08', '17:58:42', '6892f8b9a2b29', '65982163', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVVUldsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhkUFEwRjRUbnB2TVU5RWJ6Qk5hVWx6U1c1S2RtSkhWV2xQYVVsNlNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWMxVFcxWk5GbHFiR2hOYlVsNVQxTktPUT09', '', 0, '123456', '', ''),
(32, '37', 1, '::1', '2025-08-14', '11:31:12', '6892f8b9a2b29', '227688657', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTE2WTJsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhoT1EwRjRUVlJ2ZWsxVWIzaE5hVWx6U1c1S2RtSkhWV2xQYVVsNFNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWMxVFcxWk5GbHFiR2hOYlVsNVQxTktPUT09', '', 0, '123456', '', ''),
(33, '40', 2, '::1', '2025-08-14', '11:33:17', '689d7c23d0b97', '1497328121', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVFUVdsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhoT1EwRjRUVlJ2ZWsxNmIzaE9lVWx6U1c1S2RtSkhWV2xQYVVsNVNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWMxV2tSa2FrMXFUbXROUjBrMVRubEtPUT09', '', 0, '123456', '', ''),
(34, '40', 2, '::1', '2025-08-14', '11:57:49', '689d7c23d0b97', '538159238', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVFUVdsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhoT1EwRjRUVlJ2TVU1NmJ6QlBVMGx6U1c1S2RtSkhWV2xQYVVsNVNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWMxV2tSa2FrMXFUbXROUjBrMVRubEtPUT09', '', 0, '123456', '', ''),
(35, '40', 2, '::1', '2025-08-14', '13:01:53', '689d7c23d0b97', '1376148009', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVFUVdsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhoT1EwRjRUWHB2ZDAxVWJ6Rk5lVWx6U1c1S2RtSkhWV2xQYVVsNVNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWMxV2tSa2FrMXFUbXROUjBrMVRubEtPUT09', '', 0, '123456', '', ''),
(36, '51', 3, '::1', '2025-08-14', '13:18:55', '689d7c23d0b97', '539993365', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVVUldsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhoT1EwRjRUWHB2ZUU5RWJ6Rk9VMGx6U1c1S2RtSkhWV2xQYVVsNlNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWMxV2tSa2FrMXFUbXROUjBrMVRubEtPUT09', '', 0, '123456', '', ''),
(37, '40', 2, '::1', '2025-08-14', '15:52:18', '689db8d8692d1', '897636438', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVFUVdsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhoT1EwRjRUbFJ2TVUxcWIzaFBRMGx6U1c1S2RtSkhWV2xQYVVsNVNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWMxV2tkSk5GcEVaekpQVkVwclRWTktPUT09', '', 0, '123456', '', ''),
(38, '40', 2, '::1', '2025-08-16', '13:23:25', '6892f8b9a2b29', '1745664096', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVFUVdsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhoT2FVRjRUWHB2ZVUxNmIzbE9VMGx6U1c1S2RtSkhWV2xQYVVsNVNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWMxVFcxWk5GbHFiR2hOYlVsNVQxTktPUT09', '', 0, '123456', '', ''),
(39, '40', 2, '::1', '2025-08-16', '15:45:25', '6892f8b9a2b29', '926857987', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVFUVdsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhoT2FVRjRUbFJ2TUU1VWIzbE9VMGx6U1c1S2RtSkhWV2xQYVVsNVNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWMxVFcxWk5GbHFiR2hOYlVsNVQxTktPUT09', '', 0, '123456', '', ''),
(40, '37', 1, '::1', '2025-08-18', '10:26:27', '6892f8b9a2b29', '1544308767', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTE2WTJsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhoUFEwRjRUVVJ2ZVU1cWIzbE9lVWx6U1c1S2RtSkhWV2xQYVVsNFNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWMxVFcxWk5GbHFiR2hOYlVsNVQxTktPUT09', '', 0, '123456', '', ''),
(41, '51', 3, '::1', '2025-08-18', '14:49:55', '68a2f0256d711', '510277546', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVVUldsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhoUFEwRjRUa1J2TUU5VWJ6Rk9VMGx6U1c1S2RtSkhWV2xQYVVsNlNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWhvVFcxWmQwMXFWVEphUkdONFRWTktPUT09', '', 0, '123456', '', ''),
(42, '40', 2, '::1', '2025-08-18', '14:50:17', '68a2f0256d711', '797713713', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVFUVdsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhoUFEwRjRUa1J2TVUxRWIzaE9lVWx6U1c1S2RtSkhWV2xQYVVsNVNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWhvVFcxWmQwMXFWVEphUkdONFRWTktPUT09', '', 0, '123456', '', ''),
(43, '51', 3, '::1', '2025-08-18', '14:50:43', '68a2f0256d711', '1240080864', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVVUldsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhoUFEwRjRUa1J2TVUxRWJ6Qk5lVWx6U1c1S2RtSkhWV2xQYVVsNlNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWhvVFcxWmQwMXFWVEphUkdONFRWTktPUT09', '', 0, '123456', '', ''),
(44, '40', 2, '::1', '2025-08-18', '15:39:38', '68a2f0256d711', '1949163248', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVFUVdsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhoUFEwRjRUbFJ2ZWs5VWIzcFBRMGx6U1c1S2RtSkhWV2xQYVVsNVNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWhvVFcxWmQwMXFWVEphUkdONFRWTktPUT09', '', 0, '123456', '', ''),
(45, '37', 1, '::1', '2025-08-18', '17:56:24', '6892f8b9a2b29', '852150814', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTE2WTJsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhoUFEwRjRUbnB2TVU1cWIzbE9RMGx6U1c1S2RtSkhWV2xQYVVsNFNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWMxVFcxWk5GbHFiR2hOYlVsNVQxTktPUT09', '', 0, '123456', '', ''),
(46, '51', 3, '::1', '2025-08-18', '18:09:52', '68a2f0256d711', '688347445', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVVUldsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhoUFEwRjRUMFJ2ZDA5VWJ6Rk5hVWx6U1c1S2RtSkhWV2xQYVVsNlNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWhvVFcxWmQwMXFWVEphUkdONFRWTktPUT09', '', 0, '123456', '', ''),
(47, '37', 1, '::1', '2025-08-18', '18:17:46', '68a320f1d09e2', '60729525', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTE2WTJsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhoUFEwRjRUMFJ2ZUU1NmJ6Qk9hVWx6U1c1S2RtSkhWV2xQYVVsNFNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWhvVFhwSmQxcHFSbXROUkd4c1RXbEtPUT09', '', 0, '123456', '', ''),
(48, '51', 3, '::1', '2025-08-18', '18:40:45', '68a320f1d09e2', '1207932675', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVVUldsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhoUFEwRjRUMFJ2TUUxRWJ6Qk9VMGx6U1c1S2RtSkhWV2xQYVVsNlNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWhvVFhwSmQxcHFSbXROUkd4c1RXbEtPUT09', '', 0, '123456', '', ''),
(49, '51', 3, '::1', '2025-08-20', '10:46:42', '6892f8b9a2b29', '1489795659', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVVUldsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhsTlEwRjRUVVJ2TUU1cWJ6Qk5hVWx6U1c1S2RtSkhWV2xQYVVsNlNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWMxVFcxWk5GbHFiR2hOYlVsNVQxTktPUT09', '', 0, '123456', '', ''),
(50, '40', 2, '::1', '2025-08-20', '12:49:16', '6892f8b9a2b29', '12158476', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVFUVdsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhsTlEwRjRUV3B2TUU5VWIzaE9hVWx6U1c1S2RtSkhWV2xQYVVsNVNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWMxVFcxWk5GbHFiR2hOYlVsNVQxTktPUT09', '', 0, '123456', '', ''),
(51, '37', 1, '::1', '2025-08-20', '12:50:49', '6892f8b9a2b29', '504157846', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTE2WTJsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhsTlEwRjRUV3B2TVUxRWJ6QlBVMGx6U1c1S2RtSkhWV2xQYVVsNFNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWMxVFcxWk5GbHFiR2hOYlVsNVQxTktPUT09', '', 0, '123456', '', ''),
(52, '51', 3, '::1', '2025-08-20', '12:54:10', '6892f8b9a2b29', '2100637181', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTVVUldsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhsTlEwRjRUV3B2TVU1RWIzaE5RMGx6U1c1S2RtSkhWV2xQYVVsNlNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWMxVFcxWk5GbHFiR2hOYlVsNVQxTktPUT09', '', 1, '123456', '', ''),
(53, '37', 1, '::1', '2025-08-20', '13:29:09', '68a5804aa4715', '1559284018', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTE2WTJsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhsTlEwRjRUWHB2ZVU5VWIzZFBVMGx6U1c1S2RtSkhWV2xQYVVsNFNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWhvVGxSbmQwNUhSbWhPUkdONFRsTktPUT09', '', 1, '123456', '', ''),
(54, '37', 1, '::1', '2025-08-20', '15:14:44', '68a5990b49500', '982840990', 'WlhsS01XTXlWbmxZTW14clNXcHZhVTE2WTJsTVEwcDNXVmhPZW1ReU9YbGFRMGsyU1dwRmVVMTZVVEZPYVVselNXMW9kbVJZU25wSmFtOHdUME4zYVZwSFJqQmFWamt3WVZjeGJFbHFiMmxOYWtGNVRsTXdkMDlETUhsTlEwRjRUbFJ2ZUU1RWJ6Qk9RMGx6U1c1S2RtSkhWV2xQYVVsNFNXbDNhVnBIVmpKaFYwNXNXREpzYTBscWIybE9hbWhvVGxSck5VMUhTVEJQVkZWM1RVTktPUT09', '', 1, '123456', '', '');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `method` enum('cash','upi','card','wallet') DEFAULT NULL,
  `status` enum('pending','success','failed') DEFAULT 'pending',
  `transaction_id` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `rides_tracking`
--

CREATE TABLE `rides_tracking` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `lat` decimal(10,8) DEFAULT NULL,
  `lng` decimal(11,8) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
(1, '1750673302.png', '9856472360', '9586741023', 'email2@gmail.com', 'altemail2@gmail.com', 'your address', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30767295.116023116!2d60.946027684017714!3d19.722272265144735!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30635ff06b92b791%3A0xd78c4fa1854213a6!2sIndia!5e0!3m2!1sen!2sin!4v1713167102172!5m2!1sen!2sin\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(37, 1000, 1, 62980, 'User Panel', '1122334455', 'user@gmail.com', '123456', '', NULL, '175127458837user_profile.png', '2024-11-05 12:43:30', 1, NULL, NULL),
(40, 1001, 2, 50, 'Vendor Panel', '123456789', 'vendor@gmail.com', '123456', 'New York City', '2025-06-16', '175067975440user_profile.png', '2025-01-20 11:12:03', 1, NULL, NULL),
(51, 1002, 3, 0, 'Driver Panel', '9876543210', 'driver@gmail.com', '123456', 'New York City', '2025-06-16', '175067975440user_profile.png', '2025-01-20 11:12:03', 1, NULL, NULL),
(52, 0, 2, 0, 'Spiderman', '01234645654', 'spiderman@gmail.com', '123456', '132 Componey , Address India', '2025-08-14', '1755153714.png', '0000-00-00 00:00:00', 1, '2025-08-14', '2025-08-14'),
(53, 0, 3, 0, 'Sumit', '7838132611', 'Sumitattri583@gmail.com', '123456', '132 Componey , Address India', '2025-08-14', '1755156508.png', '0000-00-00 00:00:00', 1, '2025-08-14', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_history`
--

INSERT INTO `user_history` (`id`, `type`, `add_type`, `pay_mode`, `user_id`, `request_id`, `amount`, `balance`, `message`, `date_time`, `add_date_time`, `status`) VALUES
(28, 'debit', 1, NULL, 37, '1737614114', 10, 150545, 'Jodi Game Play in SHREE GANESH', '2025-01-23 12:05:14', '2025-01-23 12:05:14', 1),
(29, 'credit', 3, NULL, 37, '1737614166', 950, 151495, 'Game Win in SHREE GANESH (05)', '2025-01-23 12:06:06', '2025-01-23 12:06:06', 1),
(30, 'debit', 1, NULL, 37, '1737614316', 20, 151475, 'Harup Game Play in SHREE GANESH', '2025-01-23 12:08:36', '2025-01-23 12:08:36', 1),
(31, 'credit', 3, NULL, 37, '1737614402', 950, 152425, 'Game Win in SHREE GANESH (05)', '2025-01-23 12:10:02', '2025-01-23 12:10:02', 1),
(32, 'credit', 3, NULL, 37, '1737614402', 950, 153375, 'Game Win in SHREE GANESH Ander (01)', '2025-01-23 12:10:02', '2025-01-23 12:10:02', 1),
(33, 'debit', 4, NULL, 37, '1737616347', 3500, 149875, 'Withdraw Amount', '2025-01-23 12:42:27', '2025-01-23 12:42:27', 1),
(34, 'debit', 4, NULL, 37, '1737616348', 3500, 146375, 'Withdraw Amount', '2025-01-23 12:42:28', '2025-01-23 12:42:28', 1),
(35, 'debit', 4, NULL, 37, '1737616353', 3500, 142875, 'Withdraw Amount', '2025-01-23 12:42:33', '2025-01-23 12:42:33', 1),
(36, 'debit', 4, NULL, 37, '1737616354', 3500, 139375, 'Withdraw Amount', '2025-01-23 12:42:34', '2025-01-23 12:42:34', 1),
(37, 'debit', 4, NULL, 37, '1737616354', 3500, 135875, 'Withdraw Amount', '2025-01-23 12:42:35', '2025-01-23 12:42:35', 1),
(38, 'debit', 4, NULL, 37, '1737616355', 3500, 132375, 'Withdraw Amount', '2025-01-23 12:42:35', '2025-01-23 12:42:35', 1),
(39, 'debit', 4, NULL, 37, '1737616355', 3500, 128875, 'Withdraw Amount', '2025-01-23 12:42:35', '2025-01-23 12:42:35', 1),
(40, 'debit', 4, NULL, 37, '1737616355', 3500, 125375, 'Withdraw Amount', '2025-01-23 12:42:35', '2025-01-23 12:42:35', 1),
(41, 'debit', 4, NULL, 37, '1737616360', 3500, 121875, 'Withdraw Amount', '2025-01-23 12:42:40', '2025-01-23 12:42:40', 1),
(42, 'debit', 4, NULL, 37, '1737616381', 3500, 118375, 'Withdraw Amount', '2025-01-23 12:43:01', '2025-01-23 12:43:01', 1),
(43, 'debit', 4, NULL, 37, '1737616440', 1000, 117375, 'Withdraw Amount', '2025-01-23 12:44:01', '2025-01-23 12:44:01', 1),
(44, 'debit', 4, NULL, 37, '1737617124', 500, 116875, 'Withdraw Amount', '2025-01-23 12:55:24', '2025-01-23 12:55:24', 1),
(45, 'credit', 5, NULL, 37, '1737617124', 500, 117375, 'Withdraw Amount Refund', '2025-01-23 12:55:33', '2025-01-23 12:55:33', 1),
(46, 'debit', 4, NULL, 37, '1737617168', 3500, 113875, 'Withdraw Amount', '2025-01-23 12:56:08', '2025-01-23 12:56:08', 1),
(47, 'debit', 1, NULL, 37, '1737631077', 10, 113865, 'Copy Paste Game Play in GAZIABAD', '2025-01-23 16:47:57', '2025-01-23 16:47:57', 1),
(48, 'debit', 1, NULL, 37, '1737631115', 20, 113845, 'Copy Paste Game Play in GAZIABAD', '2025-01-23 16:48:35', '2025-01-23 16:48:35', 1),
(49, 'debit', 1, NULL, 37, '1737631170', 45, 113800, 'Copy Paste Game Play in GAZIABAD', '2025-01-23 16:49:30', '2025-01-23 16:49:30', 1),
(50, 'debit', 1, NULL, 41, '1737632144', 10, 40, 'Jodi Game Play in FARIDABAD', '2025-01-23 17:05:44', '2025-01-23 17:05:44', 1),
(51, 'debit', 1, NULL, 37, '1737633062', 30, 113770, 'Jodi Game Play in SHREE GANESH', '2025-01-23 17:21:02', '2025-01-23 17:21:02', 1),
(52, 'debit', 1, NULL, 37, '1737634147', 20, 113750, 'Jodi Game Play in SHREE GANESH', '2025-01-23 17:39:07', '2025-01-23 17:39:07', 1),
(53, 'debit', 1, NULL, 37, '1737700070', 1200, 112550, 'Number to Number Game Play in SHREE GANESH', '2025-01-24 11:57:50', '2025-01-24 11:57:50', 1),
(54, 'debit', 1, NULL, 37, '1737708619', 30, 112520, 'Harup Game Play in DISAWAR', '2025-01-24 14:20:19', '2025-01-24 14:20:19', 1),
(55, 'debit', 1, NULL, 37, '1737708636', 10, 112510, 'Jodi Game Play in DISAWAR', '2025-01-24 14:20:36', '2025-01-24 14:20:36', 1),
(56, 'debit', 1, NULL, 37, '1737709689', 20, 112490, 'Harup Game Play in SHREE GANESH', '2025-01-24 14:38:09', '2025-01-24 14:38:09', 1),
(57, 'debit', 1, NULL, 37, '1737710767', 10, 112480, 'Jodi Game Play in SHREE GANESH', '2025-01-24 14:56:07', '2025-01-24 14:56:07', 1),
(58, 'debit', 1, NULL, 37, '1737713449', 50000, 62480, 'Jodi Game Play in GALI', '2025-01-24 15:40:49', '2025-01-24 15:40:49', 1),
(59, 'credit', 2, NULL, 37, '1737709251', 500, 62980, 'Add Point', '2025-01-24 15:51:36', '2025-01-24 15:51:36', 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `vendor_cars`
--

CREATE TABLE `vendor_cars` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `car_brand_id` int(11) NOT NULL,
  `car_model_id` int(11) NOT NULL,
  `car_name_id` int(11) NOT NULL,
  `car_master_type` int(11) DEFAULT NULL,
  `car_number` text NOT NULL,
  `car_mfg_year` text NOT NULL,
  `car_perkm_price` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '0-pending/1=accept/2=reject',
  `reject_msg` text DEFAULT NULL,
  `addeddate` datetime NOT NULL,
  `modifieddate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_cars`
--

INSERT INTO `vendor_cars` (`id`, `vendor_id`, `car_brand_id`, `car_model_id`, `car_name_id`, `car_master_type`, `car_number`, `car_mfg_year`, `car_perkm_price`, `status`, `reject_msg`, `addeddate`, `modifieddate`) VALUES
(1, 40, 0, 50, 51, 4, 'DF45V1234', '2011', '', 0, '4 pic cahiey car ki', '2025-08-18 17:51:57', '2025-08-14 12:41:29'),
(2, 40, 0, 50, 18, 2, 'DF12354', '2020', '10', 1, '', '2025-08-18 17:52:05', '2025-08-20 15:36:43');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_cars_document`
--

CREATE TABLE `vendor_cars_document` (
  `id` int(11) NOT NULL,
  `vendor_cars_id` int(11) NOT NULL,
  `registration_certificate` text NOT NULL,
  `fitness_certificate` text NOT NULL,
  `insurance` text NOT NULL,
  `pollution` text NOT NULL,
  `permit_local` text NOT NULL,
  `permit_national` text NOT NULL,
  `vehicle_pics` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_cars_document`
--

INSERT INTO `vendor_cars_document` (`id`, `vendor_cars_id`, `registration_certificate`, `fitness_certificate`, `insurance`, `pollution`, `permit_local`, `permit_national`, `vehicle_pics`) VALUES
(1, 1, '1754655430_56.webp', '1754655430_57.png', '1754655430_58.webp', '1754655430_Ahmedabad.png', '1754655430_Bangalore.png', '1754655430_Chennai.png', '[\"1754655430_Delhi.png\"]'),
(2, 2, '1754649775_9.webp', '1754649775_11.webp', '1754649775_12.webp', '1754649775_3.webp', '1754649775_14.webp', '1754655356_Bangalore.png', '[\"1754655295_9.webp\",\"1754655295_10.webp\",\"1754655295_11.webp\",\"1754655333_7.webp\"]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_records`
--
ALTER TABLE `activity_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `driver_id` (`driver_id`);

--
-- Indexes for table `booking_complete_otp`
--
ALTER TABLE `booking_complete_otp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `booking_history`
--
ALTER TABLE `booking_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_notifications`
--
ALTER TABLE `booking_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_brand`
--
ALTER TABLE `car_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_name`
--
ALTER TABLE `car_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_otp_verification`
--
ALTER TABLE `car_otp_verification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_type_master`
--
ALTER TABLE `car_type_master`
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
-- Indexes for table `driver_car_history`
--
ALTER TABLE `driver_car_history`
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
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rides_tracking`
--
ALTER TABLE `rides_tracking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `driver_id` (`driver_id`);

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
-- Indexes for table `vendor_cars`
--
ALTER TABLE `vendor_cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_cars_document`
--
ALTER TABLE `vendor_cars_document`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_records`
--
ALTER TABLE `activity_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `booking_complete_otp`
--
ALTER TABLE `booking_complete_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `booking_history`
--
ALTER TABLE `booking_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_notifications`
--
ALTER TABLE `booking_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `car_brand`
--
ALTER TABLE `car_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `car_name`
--
ALTER TABLE `car_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `car_otp_verification`
--
ALTER TABLE `car_otp_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `car_type_master`
--
ALTER TABLE `car_type_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- AUTO_INCREMENT for table `driver_car_history`
--
ALTER TABLE `driver_car_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `login_history`
--
ALTER TABLE `login_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

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
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rides_tracking`
--
ALTER TABLE `rides_tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `user_history`
--
ALTER TABLE `user_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `user_temp_register`
--
ALTER TABLE `user_temp_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vendor_cars`
--
ALTER TABLE `vendor_cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vendor_cars_document`
--
ALTER TABLE `vendor_cars_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`),
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `rides_tracking`
--
ALTER TABLE `rides_tracking`
  ADD CONSTRAINT `rides_tracking_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`),
  ADD CONSTRAINT `rides_tracking_ibfk_2` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
