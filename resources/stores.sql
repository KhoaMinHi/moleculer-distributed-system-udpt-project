-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 16, 2022 at 01:31 PM
-- Server version: 8.0.27
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopservice`
--

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
CREATE TABLE IF NOT EXISTS `stores` (
  `_id` varchar(36) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `code` int NOT NULL,
  `password` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `dayStart` datetime NOT NULL,
  `timeOpen` time NOT NULL,
  `timeClose` time NOT NULL,
  `productCategory` varchar(500) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `agreeTerm` tinyint(1) NOT NULL,
  `area` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `ward` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `longitude` float NOT NULL,
  `latitude` float NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`_id`, `name`, `phone`, `email`, `code`, `password`, `active`, `dayStart`, `timeOpen`, `timeClose`, `productCategory`, `logo`, `agreeTerm`, `area`, `province`, `district`, `ward`, `address`, `longitude`, `latitude`, `createAt`, `updateAt`) VALUES
('1f1de710-7fdf-4a83-b468-bccf4b8795a9', 'Thịt heo Hòa Thượng', '0336069401', 'mdm-project-2022@hotmail.com', 471362, 'k', 0, '2022-07-04 13:20:00', '04:24:00', '10:24:00', 'Thịt heo nạt', '', 1, '', 'Tỉnh Cao Bằng', 'Huyện Bảo Lạc', 'Thị trấn Bảo Lạc', 'ktx khu B, ĐHQG Tp Hồ Chí Minh', 0, 0, '2022-07-16 05:21:56', '2022-07-16 10:55:04');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
