-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2022 at 09:43 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(3, 'Charles Lim', 'choylim06@gmail.com', '$2y$10$afIt3cRTY.l1p/Mr/dK7DeUqhDtp0w2ra/hvOagd1oIg04wLeQ9.a', '0');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(15, 'AMD'),
(16, 'Asus'),
(17, 'Asrock'),
(18, 'Gigabyte'),
(19, 'Intel'),
(20, 'MSI'),
(21, 'Nvidia'),
(22, 'Zotac'),
(23, 'Corsair'),
(24, 'HyperX'),
(25, 'Kingston'),
(26, 'Seagate'),
(27, 'Western Digital'),
(28, 'Apple'),
(29, 'Alienware'),
(30, 'Dell'),
(31, 'HP'),
(32, 'Lenovo'),
(33, 'LG'),
(34, 'Philips'),
(35, 'Samsung'),
(36, 'Logitech'),
(37, 'Microsoft'),
(38, 'Razer'),
(39, 'Roccat'),
(40, 'Steelseries'),
(41, 'Cooler Master'),
(42, 'Fractal'),
(43, 'Lian Li'),
(44, 'Phanteks'),
(45, 'Acer');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(16, 'CPU'),
(17, 'GPU'),
(18, 'Motherboard'),
(19, 'Ram / Memory'),
(20, 'HDD'),
(21, 'SSD'),
(22, 'PSU'),
(23, 'Monitor'),
(24, 'Mouse'),
(25, 'Keyboard'),
(26, 'Chassis'),
(27, 'Laptop');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 17, 16, 'Asus GeForce GT 730', 3199, 5000, 'Asus GeForce GT 730', '1657521946_Asus - Geforce GT730 - 3199.jpg', 'asus, gpu'),
(2, 17, 16, 'Asus GTX 1050 Ti 4G', 11599, 5000, 'Asus GTX 1050 Ti 4G', '1657521976_Asus - GTX 1050 Ti 4G - 11599.jpg', 'asus, gpu'),
(3, 17, 16, 'Asus Nvidia GeForce GTX 1050', 35499, 5000, 'Asus Nvidia GeForce GTX 1050', '1657522014_Asus - Nvidia Geforce Gtx 1050 - 35499.jpg', 'asus, gpu'),
(4, 17, 16, 'Asus ROG Strix GTX 1060', 39799, 5000, 'gpu', '1657522053_Asus - Rog Strix GTX 1060 - 39799.jpg', 'asus, gpu'),
(5, 17, 16, 'Asus ROG Strix GTX 1070', 51999, 5000, 'gpu', '1657522077_ASUS - ROG Strix GTX 1070 - 51999.jpg', 'asus, gpu'),
(6, 17, 16, 'ASUS Strix GTX 1080 Ti 11GB', 7000, 5000, 'gpu', '1657522119_Asus Strix - GTX 1080 Ti 11GB - 7000.jpg', 'asus, gpu'),
(7, 17, 18, 'Gigabyte GeForce 1660 Ti', 16999, 5000, 'gpu', '1657522152_Gigabyte - geforce 1660 Ti - 16999.jpg', 'gigabyte, gpu'),
(8, 17, 18, 'Gigabyte GeForce GTX 1050 Ti 4G', 11999, 5000, 'gpu', '1657522190_Gigabyte - Geforce GTX 1050 Ti 4G - 11999.jpg', 'gigabyte, gpu'),
(9, 17, 18, 'Gigabyte Geforce GTX 1050 Ti OC', 11999, 5000, 'gpu', '1657522234_Gigabyte - Geforce GTX 1050 Ti OC - 11999.jpg', 'gigabyte, gpu'),
(10, 17, 18, 'Gigabyte GeForce RXT 3070 Ti Gaming', 52995, 5000, 'gpu', '1657522267_Gigabyte - Geforce RTX 3070 Ti Gaming - 52995.jpg', 'gigabyte, gpu'),
(11, 17, 18, 'Gigabyte RTX 3060', 31999, 5000, 'gpu', '1657522296_Gigabyte - RTX 3060 - 31999.jpg', 'gigabyte, gpu'),
(12, 17, 20, 'MSI GeForce GTX 1050 Ti Gaming', 10399, 5000, 'gpu', '1657522329_MSI - Geforce GTX 1050 Ti Gaming - 10399.jpg', 'msi, gpu'),
(13, 17, 20, 'MSI GT 710 2GD3H', 2999, 5000, 'gpu', '1657522366_MSI - GT 710 2GD3H -2999.jpg', 'msi, gpu'),
(14, 17, 20, 'MSI Radeon RX 6400 Aero ITX', 13499, 5000, 'MSI', '1657522403_MSI - Radeon RX 6400 Aero ITX - 13499.jpg', 'msi, gpu'),
(15, 17, 20, 'MSI VGA GTX 970 Gaming', 1485, 5000, 'gpu', '1657522441_MSI - VGA GTX970 Gaming - 1485.jpg', 'msi, gpu'),
(16, 17, 20, 'MSI GeForce GT 730', 6299, 5000, 'gpu', '1657522472_MSI GeForce GT 730 - 6299.jpg', 'msi, gpu'),
(17, 17, 21, 'Nvidia GeForce GTX 1660 Super Gaming', 7200, 5000, 'gpu', '1657522520_Nvidia - Geforce gtx 1660 Super Gaming - 7200.jpg', 'nvidia, gpu'),
(18, 17, 21, 'Nvidia Geforce RTX 2080 Ti Founder Edition', 149930, 5000, 'gpu', '1657522549_NVIDIa - Geforce Rtx 2080 Ti - 149930.jpg', 'nvidia, gpu'),
(19, 17, 21, 'Nvidia GeForce GTX 1650 GP', 14599, 5000, 'gpu', '1657522584_Nvidia - Geforece GTX 1650 GP - 14599.jpg', 'nvidia, gpu'),
(20, 17, 21, 'Nvidia GeForce GTX 560', 1599, 5000, 'gpu', '1657522610_Nvidia - GTX 560 Gefroce - 1599.jpg', 'nvidia, gpu'),
(21, 17, 22, 'Zotac GeForce GTX 650', 2590, 5000, 'gpu', '1657522644_Zotac - geforce gtx 650 - 2590.jpg', 'zotac, gpu'),
(22, 17, 22, 'Zotac GeForce 750 Ti', 9599, 5000, 'gpu', '1657522706_ZOTAC - Geforce gtx 750 Ti - 9599.jpg', 'zotac, gpu'),
(23, 17, 22, 'Zotac GeForce GTX 1050 Ti Mini', 10599, 5000, 'gpui', '1657522743_ZOtac - Geforce gtx 1050 Ti Mini - 10599.jpg', 'zotac, gpu'),
(24, 17, 22, 'Zotac GeForce GTX 1060 AMP', 25699, 5000, 'gpu', '1657522779_Zotac - Geforce GTX 1060 AMP - 25699.jpg', 'zotac, gpu'),
(25, 17, 22, 'Zotac GeForce RTX 3070', 41900, 5000, 'gpu', '1657522815_ZOTAC - Geforce RTX 3070 - 41900.jpg', 'zotac, gpu'),
(26, 17, 22, 'Zotac GeForce GTX 950', 899, 5000, 'gpu', '1657522859_Zotac - Geforece Gtx 950 - 899.jpg', 'zotac, gpu'),
(27, 17, 22, 'Zotac GeForce GTX 1050 Ti OC', 9995, 5000, 'gpu', '1657522913_Zotac - Geforece GTX 1050 Ti OC - 9995.jpg', 'zotac, gpu'),
(28, 17, 22, 'Zotac RTX 3080 Apocalypse ', 3740, 5000, 'gpu', '1657522954_ZOTAC - RTX 3080 Apocalypse OC - 37500.jpg', 'zotac, gpu'),
(29, 17, 22, 'Zotac RTX 3070 Twin Edge', 35995, 5000, 'gpu', '1657522993_ZOTAC - RTX 3070 Twin Endge - 35995.jpg', 'zotac, gpu'),
(30, 16, 15, 'AMD Ryzen 3 1200', 4899, 5000, 'CPU', '1657523190_AMD - Ryzen 3 1200 Quad-Core 3.1GHz 8M Socket AM4 - 4899.jpg', 'cpu, amd, ryzen, ryzen 3'),
(31, 16, 15, 'AMD Ryzen 3 3200G', 9625, 5000, 'cpu', '1657523225_AMD - RYZEN 3 3200G 4-Core 3.6 GHz Socket AM4 - 9625.jpg', 'cpu, amd, ryzen, ryzen 3'),
(32, 16, 15, 'AMD Ryzen 5 1600X', 5899, 5000, 'cpui', '1657523271_AMD - Ryzen 5 1600X 3.2 GHz Six-Core CPU Processor Socket AM4 - 5899.jpg', 'cpu, amd, ryzen, ryzen 5'),
(33, 16, 15, 'AMD Ryzen 5 5500', 10180, 5000, 'cpu', '1657523304_AMD - Ryzen 5 5500  6 Cores 12 Threads AM4 CPU Socket - 10180.49.jpg', 'cpu, amd, ryzen, ryzen 5'),
(34, 16, 15, 'AMD Ryzen 5 5600G', 12799, 5000, 'cpu', '1657523342_AMD - Ryzen 5 5600G  Hexa Cores 4.4 GHz AM4 Socket - 12,799.jpg', 'cpu, amd, ryzen, ryzen 5'),
(35, 16, 15, 'AMD Ryzen 7 3700X', 17599, 5000, 'cpu', '1657523384_AMD - Ryzen 7 3700X Processor 8 Core 16 Thread Socket AM4 - 17599.jpg', 'cpu, amd, ryzen, ryzen 7'),
(36, 16, 15, 'AMD Ryzen 7 5700G', 16599, 5000, 'cpu', '1657523416_AMD - Ryzen 7 5700G 8-Core 16-Thread Processor - 16599.jpg', 'cpu, amd, ryzen, ryzen 7'),
(37, 16, 15, 'AMD Ryzen 9 5900X', 22999, 5000, 'cpuy', '1657523452_AMD - Ryzen 9 5900X 12 - Core 3.7 GHz Socket AM4 - 22999.49.jpg', 'cpu, amd, ryzen, ryzen 9'),
(38, 16, 19, 'Intel Core i3-6100', 499, 5000, 'cpu', '1657523500_Intel - Core i3-6100 2 Cores 3.6GHz - 499.jpg', 'cpu, intel, i3'),
(39, 16, 19, 'Intel Core i3-7100', 5499, 5000, 'cpu', '1657523541_Intel - Core i3-7100 2 Cores 3.9GHz 5499.jpg', 'cpu, intel, i3'),
(40, 16, 19, 'Intel Core i3-8100', 5599, 5000, 'cpu', '1657523572_Intel - Core i3-8100 4 Cores 3.6 GHz - 5599.jpg', 'cpu, intel, i3'),
(41, 16, 19, 'Intel Core i3-9100', 5750, 5000, 'cpu', '1657523611_Intel - Core i3-9100 4 Cores 3.6GHz - 5750.png', 'cpu, intel, i3'),
(42, 16, 19, 'Intel Core i3-10100', 5999, 5000, 'cpu', '1657523643_Intel - Core i3-10100 4 Cores 3.6 GHz - 5999.jpg', 'cpu, intel, i3'),
(43, 16, 19, 'Intel Core i3-12100', 6199, 5000, 'cpu', '1657523675_Intel - Core i3-12100 4 Cores 3.3GHz - 6199.jpg', 'cpu, intel, i3'),
(44, 16, 19, 'Intel Core i5-6400', 6450, 5000, 'cpu', '1657523712_Intel - Core i5-6400 4 Cores 2.7 GHz - 6450.jpg', 'cpu, intel, i5'),
(45, 16, 19, 'Intel Core i5-7400', 7999, 5000, 'cpu', '1657523753_Intel - Core i5-7400 4 Cores 3GHz - 7999.jpg', 'cpu, intel, i5'),
(46, 16, 19, 'Intel Core i5-8400', 8250, 5000, 'cpu', '1657523786_Intel - Core i5-8400 6 Cores 2.8GHz - 8250.jpg', 'cpu, intel, i5'),
(47, 16, 19, 'Intel Core i5-9400', 8450, 5000, 'cpu', '1657523839_Intel - Core i5-9400 6 Cores 2.9 GHz - 8450.jpg', 'cpu, intel, i5'),
(48, 16, 19, 'Intel Core i5-10400', 8999, 5000, 'cpu', '1657523876_Intel - Core i5-10400 6 Cores 2.9GHz - 8999.jpg', 'cpu, intel, i5'),
(49, 16, 19, 'Intel Core i5-11400', 9950, 5000, 'cpu', '1657523912_Intel - Core i5-11400 6 Cores 2.6GHz - 9950.jpg', 'cpu, intel, i5'),
(50, 16, 19, 'Intel Core i5-12400', 11499, 5000, 'cpu', '1657523956_Intel - Core i5-12400 6 Cores 2.5GHz - 11499.jpg', 'cpu, intel, i5'),
(51, 16, 19, 'Intel Core i7-6700K', 16850, 5000, 'cpu', '1657524002_Intel - Core i7 - 6700K 4 Cores 4GHz - 16850.jpg', 'cpu, intel, i7'),
(52, 16, 19, 'Intel Core i7-7700K', 17850, 5000, 'cpu', '1657524034_Intel - Core i7-7700K 4 Cores 4.2GHz - 17850.jpg', 'cpu, intel, i7'),
(53, 16, 19, 'Intel Core i7-8700K', 19850, 5000, 'cpu', '1657524076_Intel - Core i7-8700K 6 Cores 3.7 - 19850.jpg', 'cpu, intel, i7'),
(54, 16, 19, 'Intel Core i7-9700K', 20999, 5000, 'cpu', '1657524115_Intel - Core i7-9700K - 8 Cores 3.6GHz - 20999.jpg', 'cpu, intel, i7'),
(55, 16, 19, 'Intel Core i7-10700K', 21999, 5000, 'cpu', '1657524144_Intel - Core i7-10700K 8 Cores 5.1GHz - 21999.jpg', 'cpu, intel, i7'),
(56, 16, 19, 'Intel Core i7-11700K', 23850, 5000, 'CPU', '1657524185_intel - Core i7-11700K 8 Cores 5GHz - 23850.jpg', 'cpu, intel, i7'),
(57, 16, 19, 'Intel Core i7-12700K', 24970, 5000, 'CPU', '1657524229_Intel - Core i7-12700K 12 Cores 5GHz - 24970.png', 'cpu, intel, i7'),
(58, 16, 19, 'Intel Core i9-9900K', 25990, 5000, 'CPU', '1657524294_Intel - Core i9-9900K 8-Core 5GHz - 29999.jpg', 'cpu, intel, i9'),
(59, 16, 19, 'Intel Core i9-10900K', 26700, 5000, 'CPU', '1657524336_Intel - Core i9-10900K 10-Core 3.7GHz - 26700.jpg', 'cpu, intel, i9'),
(60, 16, 19, 'Intel Core i9-11900K', 32000, 5000, 'CPU', '1657524374_Intel - Core i9-11900K 8 Cores 5.3GHz - 32000.jpg', 'cpu, intel, i9'),
(61, 16, 19, 'Intel Core i9-12900K', 38999, 5000, 'CPU', '1657524402_Intel - Core i9-12900K 5.5GHz - 38999.jpg', 'cpu, intel, i9'),
(62, 18, 17, 'Asrock B450 Steel Legend', 5999, 5000, 'motherboard', '1657524521_Asrock - b450 Steel Legend - 5999.jpg', 'motherboard, asrock'),
(63, 18, 17, 'Asrock B450 Steel Legend 500', 5549, 5000, 'MOTHERBOARD', '1657524556_Asrock - b450 Steel Legend 500 - 5549.jpg', 'motherboard, asrock'),
(64, 18, 17, 'Asrock B450M Steel Legend', 6499, 5000, 'MOTHERBOARD', '1657524595_Asrock - b450M Steel Legend - 6499.jpg', 'motherboard, asrock'),
(65, 18, 17, 'Asrock B550 PG Riptide', 8999, 5000, 'MOTHERBOARD', '1657524654_Asrock - b550 PG Riptide - 8999.jpg', 'motherboard, asrock'),
(66, 18, 17, 'Asrock B550M', 4799, 5000, 'asda', '1657524701_Asrock - b550M - 4799.jpg', 'motherboard, asrock'),
(67, 18, 17, 'Asrock B550M-HDV', 4999, 5000, 'motherboard', '1657524726_Asrock - b550M-HDV - 4999.jpg', 'motherboard, asrock'),
(68, 18, 17, 'Asrock B560M Steel Legend', 12395, 5000, 'motherboard', '1657524771_Asrock - b560M Steel Legend - 12395.jpg', 'motherboard, asrock'),
(69, 18, 17, 'Asrock FM2A88M-HD ', 2495, 5000, '5000 p', '1657524841_Asrock - FM2a88M-HD - 2495.jpg', 'motherboard, asrock'),
(70, 18, 17, 'Asrock H510 Pro', 12870, 5000, '5000 p', '1657524866_Asrock - h510 PRO - 12870.jpg', 'motherboard, asrock'),
(71, 18, 16, 'Asus B150M Pro Gaming', 4299, 5000, '5000 p', '1657524905_Asus - b150M Pro gaming - 4299.jpg', 'motherboard, asus'),
(72, 18, 16, 'Asus B250 Mining Expert', 23399, 5000, '5000 p', '1657524937_Asus - b250 Mining Expert - 23399.jpg', 'motherboard, asus'),
(73, 18, 16, 'Asus H170 Pro Gaming', 7150, 5000, '5000 p', '1657524979_Asus - h170 pro gaming - 7150.jpg', 'motherboard, asus'),
(74, 18, 16, 'Asus Maximus VI Hero', 5799, 5000, '5000 p', '1657525009_Asus - Maximus vi hero - 5799.jpg', 'motherboard, asus'),
(75, 18, 16, 'Asus Maximus VII Hero', 19999, 5000, '5000 p', '1657525039_Asus - maximus VII hero - 19999.jpg', 'motherboard, asus'),
(76, 18, 16, 'Asus Maximus VIII Hero', 25000, 5000, '5000 p', '1657525066_Asus - maximus viii hero - 25000.jpg', 'motherboard, asus'),
(77, 18, 16, 'Asus Maximus VIII Hero Alpha', 23999, 5000, '5000 p', '1657525091_asus - maximus viii hero alpha - 23999.jpg', 'motherboard, asus'),
(78, 18, 16, 'Asus Prime A320M-K ', 2650, 5000, '5000 p', '1657525122_Asus - Prime A320M-K - 2650.jpg', 'motherboard, asus'),
(79, 18, 16, 'Asus Prime B450M-A', 4699, 5000, '5000 p', '1657525142_Asus - Prime b450M-A - 4699.jpg', 'motherboard, asus'),
(80, 18, 16, 'Asus ROG Maximus IX Code', 8000, 5000, '5000 p', '1657525178_Asus - Rog Maximus ix Code - 8000.jpg', 'motherboard, asus'),
(81, 18, 16, 'Asus ROG Strix B250F Gaming', 7499, 5000, '5000 p', '1657525211_Asus - Rog Strix b250F Gaming - 7499.jpg', 'motherboard, asus'),
(82, 18, 16, 'Asus Z170 Pro Gaming', 6999, 5000, '5000 p', '1657525238_Asus - z170 pro gaming - 6999.jpg', 'motherboard, asus'),
(83, 18, 18, 'Gigabyte Aorus Elite B450M', 5599, 5000, '5000 p', '1657525278_Gigabyte - aorus elite b450m - 5599.jpg', 'motherboard, gigabyte'),
(84, 18, 18, 'Gigabyte B450 Aorus Pro Wifi', 7610, 5000, '5000 p', '1657525307_Gigabyte - B450 Aorus Pro Wifi - 7610.jpg', 'motherboard, gigabyte'),
(85, 18, 18, 'Gigabyte GA-H81M-DS2', 1899, 5000, '5000 p', '1657525333_Gigabyte - GA-H81M-DS2 - 1899.jpg', 'motherboard, gigabyte'),
(86, 18, 18, 'Gigabyte GA-Z170X Gaming 5', 4499, 5000, '5000 p', '1657525374_Gigabyte - Ga-Z170X Gaming 5 - 4499.jpg', 'motherboard, gigabyte'),
(87, 18, 18, 'Gigabyte TRX40 Aorus XTREAM STRX AMD', 120999, 5000, '5000 p', '1657525418_Gigabyte - trx40 aorus xtrem Strx amd - 120999.jpg', 'motherboard, gigabyte'),
(88, 18, 18, 'Gigabyte Vision D-P B550', 13999, 5000, '5000 p', '1657525450_Gigabyte - vision d-p b550 - 13999.jpg', 'motherboard, gigabyte'),
(89, 18, 20, 'MSI A68HM Gaming', 1479, 5000, '5000 p', '1657525508_MSI - A68Hm Gaming - 1479.jpg', 'motherboard, msi'),
(90, 18, 20, 'MSI A320M-A Pro Max', 2800, 5000, '5000 p', '1657525539_MSI - A320M-A Pro Max - 2800.jpg', 'motherboard, msi'),
(91, 18, 20, 'MSI B250M Gaming Pro', 4000, 5000, '5000 p', '1657525571_MSI - b250m Gaming pro - 4000.jpg', 'motherboard, msi'),
(92, 18, 20, 'MSI B250M Mortar', 3250, 5000, '5000 p', '1657525606_MSI - B250M Mortar - 3250.jpg', 'motherboard, msi'),
(93, 18, 20, 'MSI B450 Mortar Max', 3999, 5000, '5000 p', '1657525629_MSI - b450 Mortar Max - 3999.jpg', 'motherboard, msi'),
(94, 18, 20, 'MSI B450 Tomahawk Max', 5239, 5000, '5000 p', '1657525657_MSI - B450 Tomahawk Max - 5239.jpg', 'motherboard, msi'),
(95, 18, 20, 'MSI B550 Tomahawk AMD', 9200, 5000, '5000 p', '1657525681_MSI - b550 Tomahawk AMD - 9200.jpg', 'motherboard, msi'),
(96, 18, 20, 'MSI B550M Mortar Wifi', 7650, 5000, '5000 p', '1657525716_MSI - b550M Mortar Wifi - 7650.jpg', 'motherboard, msi'),
(97, 18, 20, 'MSI Creator TRX40 AMD STRX4 PCIE', 105999, 5000, '5000 p', '1657525736_Msi - creator trx40 AMD strx4 pcie - 105999.jpg', 'motherboard, msi'),
(98, 18, 20, 'MSI Pro B460M-A', 3995, 5000, '5000 p', '1657525769_MSI - Pro b460M-A - 3995.jpg', 'motherboard, msi'),
(99, 18, 20, 'MSI Pro H510M-A', 4199, 5000, '5000 p', '1657525793_msi - pro h510M-A - 4199.jpg', 'motherboard, msi'),
(100, 20, 26, 'Seagate 1TB HDD SATA', 1399, 5000, '5000 p', '1657525980_Seagate 1TB HDD Sata - 1399.jpg', 'storage, hdd, seagate'),
(101, 20, 26, 'Seagate HDD 320GB', 599, 5000, '5000 p', '1657526002_Seagate Desktop HDD 320Gb - 599.jpg', 'storage, hdd, seagate'),
(102, 20, 27, 'Western Digital Blue 1TB', 1699, 5000, '5000 p', '1657526026_Western Digital Blue 1TB - 1699.jpg', 'storage, hdd, western digital'),
(103, 20, 27, 'Western Digital Blue 6TB', 8249, 5000, '5000 p', '1657526053_Western Digital Blue 6tb - 8249.jpg', 'storage, hdd, western digital'),
(104, 20, 27, 'Western Digital Purple 1TB', 2599, 5000, '5000 p', '1657526083_Western Digital Purple 1TB - 2599.jpg', 'storage, hdd, western digital'),
(105, 20, 27, 'Western Digital SATA 1TB Blue', 3040, 5000, '5000 p', '1657526107_Western Digital SATA 1TB Blue - 3040.jpg', 'storage, hdd, western digital'),
(106, 19, 23, 'Corsair Dominator Platinum RGB (2x16GB) DDR4', 10995, 5000, '5000 p', '1657527535_Corsair - Dominator Platinum RGB (2x 16GB) DDR4 - 10995.jpg', 'ram, corsair, memory'),
(107, 19, 23, 'Corsair Vengeance 16GB DDR4', 3999, 5000, '5000 p', '1657527559_Corsair - Vengeance 16GB DDR4 - 3999.jpg', 'ram, corsair, memory'),
(108, 19, 23, 'Corsair Vengeance 32GB DDR4', 2999, 5000, '5000 p', '1657527592_Corsair - Vengeance 32GB DDR4 3200Mhz - 2999.jpg', 'ram, corsair, memory'),
(109, 19, 23, 'Corsair Vengeance LPX 32GB DDR4', 4590, 5000, '5000 p', '1657527619_Corsair - Vengeance LPX 32GB DDR4 - 4590.jpg', 'ram, corsair, memory'),
(110, 19, 23, 'Corsair Vengeance RGB Pro 16GB DDR4', 5199, 5000, '5000 p', '1657527658_Corsair - Vengeance RGB Pro 16GB DDR4 - 5199.jpg', 'ram, corsair, memory'),
(111, 19, 23, 'Corsair Vengeance RGB RT (2x8GB) DDR4', 5099, 5000, '5000 p', '1657527697_Corsair - Vengeance RGB RT (2x 8GB) DDR4 - 5099.jpg', 'ram, corsair, memory'),
(112, 19, 18, 'Gigabyte Aorus RGB DDR4 16GB', 6910, 5000, '5000 p', '1657527757_Gigabyte - aorus RGB DDR4 16GB - 6199.jpg', 'ram, gigabyte, memory'),
(113, 19, 18, 'Gigabyte RGB 16GB DDR4', 6199, 5000, '5000 p', '1657527789_Gigabyte - RGB 16GB DDR4 - 6910.jpg', 'ram, gigabyte, memory'),
(114, 19, 24, 'HyperX Impact DDR4 16GB', 2290, 5000, '5000 p', '1657527814_HpyerX Impact DDR4 16GB - 2990.jpg', 'ram, hyperx, memory'),
(115, 19, 24, 'HyperX Fury DDR3 4GB White', 1099, 5000, '5000 p', '1657527846_HyperX - Fury DDR3 4GB White - 1099.jpg', 'ram, hyperx, memory'),
(116, 19, 24, 'HyperX Fury DDR3 8GB Blue', 2290, 5000, '5000 p', '1657527886_HyperX - Fury DDR3 8GB Blue - 2290.jpg', 'ram, hyperx, memory'),
(117, 19, 24, 'HyperX Fury DDR3 8GB Red', 1500, 5000, '5000 p', '1657527920_HyperX - Fury DDR3 8GB Red - 1500.jpg', 'ram, hyperx, memory'),
(118, 19, 24, 'HyperX Fury DDR3 8GB White', 1290, 5000, '5000 p', '1657527951_Hyperx - Fury DDR3 8GB White - 1290.jpg', 'ram, hyperx, memory'),
(119, 19, 24, 'HyperX Fury DDR3 16GB Blue', 5590, 5000, '5000 p', '1657527996_HyperX - Fury DDR3 16GB Blue - 5590.jpg', 'ram, hyperx, memory'),
(120, 19, 24, 'HyperX Fury DDR4 8GB Black', 5000, 5000, '5000 p', '1657528028_HyperX - Fury DDR4 8GB Black - 1450.jpg', '1450'),
(121, 19, 24, 'HyperX Fury DDR4 16GB Black', 4999, 5000, '5000 p', '1657528060_HyperX - Fury DDR4 16GB Black - 4999.jpg', 'ram, hyperx, memory'),
(122, 19, 24, 'HyperX Impact DDR4 8GB', 5799, 5000, '5000 p', '1657528140_HyperX - Impact DDR4 8GB - 5799.jpg', 'ram, hyperx, memory'),
(123, 19, 25, 'Kingston Fury Beast 8GB', 2499, 5799, '5799', '1657528175_Kingston - Fury Beast 8GB - 2499.jpg', 'ram, kingston, memory'),
(124, 19, 25, 'Kingston RAM DDR2 2GB', 499, 5000, '5000 p', '1657528214_Kingston - RAM DDR2 2GB - 499.jpg', 'ram, kingston, memory'),
(125, 19, 25, 'Kingston RAM DDR2 4GB', 1099, 5000, '5000 p', '1657528240_Kingston - RAM DDR2 4GB - 1099.jpg', 'ram, kingston, memory'),
(126, 19, 25, 'Kingston RAM DDR3 4GB', 1299, 5000, '5000 p', '1657528264_Kingston - RAM DDR3 4GB - 1299.jpg', 'ram, kingston, memory'),
(127, 19, 25, 'Kingston RAM DDR3 8GB', 1449, 5000, '5000 p', '1657528290_Kingston - RAM DDR3 8GB - 1449.jpg', 'ram, kingston, memory'),
(128, 23, 29, 'Alienware 34 inch OLED', 65999, 5000, '5000 p ', '1657529193_Alienware - 34 inch OLED - 65999.jpg', 'monitor, alienware'),
(129, 23, 28, 'Apple Pro Display', 250000, 5000, '5000 p ', '1657529373_Apple - Pro Display - 250000.jpg', 'monitor, apple'),
(130, 23, 16, 'Asus ROG Swift ', 100000, 5000, '5000 p ', '1657529404_Asus - ROG Swift - 100000.jpg', 'monitor, asus'),
(131, 23, 30, 'Dell 24 inch', 15000, 5000, '5000 p ', '1657529435_Dell - 24 inch - 15000.jpg', 'monitor, dell'),
(132, 23, 30, 'Dell Ultra Sharp 27 inch 4k Monitor', 31900, 5000, '5000 p ', '1657529479_Dell - Ultra Sharp 27 4k Monitor - 31900.jpg', 'monitor, dell'),
(133, 23, 30, 'Dell Ultra Sharp 27 inch 4k Premier Color Monitor', 81250, 5000, '5000 p ', '1657529547_Dell - Ultra Sharp 27 4k Premier Color Monitor - 81250.jpg', 'monitor, dell'),
(134, 23, 31, 'HP 24Mh 23.8 inch Display', 10000, 5000, '5000 p ', '1657529595_HP - 24mh 23.8 Inch Display - 10000.jpg', 'monitor, hp'),
(135, 23, 31, 'HP E27m G4 Monitor', 24750, 5000, '5000 p ', '1657529628_HP - E27m G4 Monitor - 24750.jpg', 'monitor, hp'),
(136, 23, 33, 'Lenovo Think Vision', 14000, 5000, '5000 p ', '1657529657_Lenovo - Think Vision - 14000.jpg', 'monitor, lenovo'),
(137, 23, 33, 'LG OLED Evo', 72500, 5000, '5000 p ', '1657529688_LG - OLED Evo - 72500.jpg', 'Monitor, lg'),
(138, 23, 34, 'Philips Brilliance ', 19999, 5000, '5000 p ', '1657529726_Philips - Brillance - 19999.jpg', 'monitor, philips'),
(139, 23, 34, 'Philips View Sonic Elite', 34950, 5000, '5000 p ', '1657529759_ViewSonic - Elite - 34950.jpg', 'monitor, philips'),
(140, 21, 25, 'Kingston A400 SATA 120GB', 1388, 5000, '5000 p ', '1657541317_Kingston - A400 Sata 120GB - 1388.jpg', 'ssd, kingston, memory'),
(141, 21, 25, 'Kingston A400 SATA SSD 240GB', 1299, 5000, '5000 p ', '1657541385_Kingston - A400 SAta SSD 240GB - 1299.jpg', 'ssd, kingston, memory, storage'),
(142, 21, 25, 'Kingston A400 SATA SSD 480GB', 1599, 5000, '5000 p', '1657541419_Kingston - A400 Sata SSD 480 GB - 1599.jpg', 'ssd, kingston, memory, storage'),
(143, 21, 35, 'Samsung 970 Evo 500GB', 6000, 5000, '5000 p', '1657541458_Samsung - 970 Evo M.2 500GB - 6000.jpg', 'ssd, samsung, storage'),
(144, 21, 35, 'Samsung 970 Evo Plus 1TB', 9995, 5000, '5000 p', '1657541511_Samsung - 970 Evo Plus 1TB - 9995.jpg', 'ssd, samsung, storage'),
(145, 21, 35, 'Samsung Evo 860 500GB', 3999, 5000, '5000 p', '1657541544_Samsung - EVO 860 500GB - 3999.jpg', 'ssd, samsung, storage'),
(146, 21, 35, 'Samsung Evo 860 SATA', 1520, 5000, '5000 p', '1657541574_Samsung - Evo 860 SATA - 1520.jpg', 'ssd, samsung, storage'),
(147, 21, 35, 'Samsung Evo 860 SATA 250GB', 2000, 5000, '5000 p', '1657541603_Samsung - Evo 860 SATA 250GB - 2000.jpg', 'ssd, samsung, storage'),
(148, 21, 27, 'Western Digital Green SATA SSD 480GB', 3599, 5000, '5000 p', '1657541641_Western Digital - Green SATA 480GB - 3599.jpg', 'ssd, western digital, storage'),
(149, 21, 27, 'Western Digital Green SATA SSD 120GB', 999, 5000, '5000 p', '1657541675_Western Digital - Green SATA SSD 120GB - 999.jpg', 'ssd, western digital, storage'),
(150, 22, 23, 'Corsair CV750', 3795, 5000, '5000 p', '1657541840_Corsair - CV Series CV750 - 3795.jpg', 'psu, power, corsair'),
(151, 22, 23, 'Corsair CV550 Bronze', 3500, 5000, '5000 p', '1657541888_Corsair - CV550 Bronze - 3500.jpg', 'psu, power, corsair'),
(152, 22, 23, 'Corsair CV650 Gaming', 4500, 5000, '5000 p', '1657541917_Corsair - CV650 Gaming - 4500.jpg', 'psu, power, corsair'),
(153, 22, 23, 'Corsair CX650M', 4499, 5000, '5000 p', '1657541953_Corsair - CX Series Cx650M - 4499.jpg', 'psu, power, corsair'),
(154, 22, 23, 'Corsair CX650', 5950, 5000, '5000 p', '1657541993_Corsair - CX650M - 5950.jpg', 'psu, power, corsair'),
(155, 22, 18, 'Gigabyte Aorus GP 750W', 5499, 5000, '5000 p', '1657542025_Gigabyte - Aorus GP 750W - 5499.jpg', 'psu, power, gigabyte'),
(156, 22, 18, 'Gigabyte P450B Bronze', 2499, 5000, '5000 p', '1657542153_Gigabyte - P450B Bronze - 2499.jpg', 'psu, power, gigabyte'),
(157, 22, 18, 'Gigabyte P550B', 2885, 5000, '5000 p', '1657542184_Gigabyte - P550B - 2885.jpg', 'psu, power, gigabyte'),
(158, 22, 18, 'Gigabyte P650 Bronze', 2879, 5000, '5000 p', '1657542222_Gigabyte - P650 Bronze - 2879.jpg', 'psu, power, gigabyte'),
(159, 22, 18, 'Gigabyte P750GM', 5495, 5000, '5000 p', '1657542256_Gigabyte - P750GM - 5495.jpg', 'psu, power, gigabyte'),
(160, 22, 18, 'Gigabyte UD1000GM', 8399, 5000, '5000 p', '1657542281_Gigabyte - UD1000GM - 8399.jpg', 'psu, power, gigabyte'),
(161, 24, 23, 'Corsair Scimitar RGB Elite', 3565, 5000, '5000 p', '1657542452_Corsair - Scimitar RGB Elite - 3565.jpg', 'mouse, corsair'),
(162, 24, 24, 'HyperX Pulse Fire Haste', 1999, 5000, '5000 p', '1657542494_HyperX - Pulse Fire Haste - 1999.jpg', 'mouse, hyperx'),
(163, 24, 36, 'Logitech Ergo M575', 2499, 5000, '5000 p', '1657542526_Logitech - Ergo M575 - 2499.jpg', 'mouse, logitech'),
(164, 24, 36, 'Logitech G203 Hero Light Sync', 1499, 5000, '5000 p', '1657542561_Logitech - G203 Hero Light Sync - 1499.jpg', 'mouse, logitech'),
(165, 24, 36, 'Logitech MX Master 3 Wireless', 4999, 5000, '5000 p', '1657542590_Logitech - MX Master 3 Wireless - 4999.jpg', 'mouse, logitech'),
(166, 24, 37, 'Microsoft Bluetooth Ergonomic', 1550, 5000, '5000 p', '1657542627_Microsoft - Bluetooth Ergonomic - 1550.jpg', 'mouse, microsoft'),
(167, 24, 37, 'Microsoft Surface Mobile', 899, 5000, '5000 p', '1657542656_Microsoft - Surface Mobile - 899.jpg', 'mouse, microsoft'),
(168, 24, 37, 'Microsoft Vertical Mouse', 5750, 5000, '5000 p', '1657542700_Microsoft - Vertical Mouse - 5750.jpg', 'mouse, microsoft'),
(169, 24, 38, 'Razer Basilisk', 4999, 5000, '5000 p', '1657542725_Razer - Basilisk - 4999.jpg', 'mouse, razer'),
(170, 24, 38, 'Razer Pro Click Mini', 3999, 5000, '5000 p', '1657542764_Razer - Pro Click Mini - 3999.jpg', 'mouse, razer'),
(171, 24, 38, 'Razer Pro Click Wireless', 5249, 5000, '5000 p', '1657542797_Razer - Pro Click Wireless - 5249.jpg', 'mouse, razer'),
(172, 24, 38, 'Razer Viper Ultimate', 3499, 5000, '5000 p', '1657542821_Razer - Viper Ultimate - 3499.jpg', 'mouse, razer'),
(173, 24, 38, 'Razer Viper V2 Pro', 7499, 5000, '5000 p', '1657542867_Razer - Viper V2 Pro - 7499.jpg', 'mouse, razer'),
(174, 24, 39, 'Roccat Madz Catz', 4999, 5000, '5000 p', '1657542893_Roccat - Madz Catz - 4999.jpg', 'mouse, Roccat'),
(175, 24, 39, 'Roccat Rocca Kone XP RGB', 4499, 5000, '5000 p', '1657542917_ROCCAT - Rocca Kone XP RGB - 4499.jpg', 'mouse, Roccat'),
(177, 25, 28, 'Apple Magic Keyboard', 4990, 5000, '5000 p', '1657543371_Apple - Magic Keyboard - 4990.jpg', 'keyboard, apple'),
(178, 25, 16, 'Asus ROG Falchion Wireless', 74999, 5000, '5000 p', '1657543406_Asus - ROG Falchion Wireless - 7499.jpg', 'keyboard, asus'),
(179, 25, 23, 'Corsair K95 RGB Platinum XT ', 8549, 5000, '5000 p', '1657543455_Corsair - K95 RGB Platinum XT - 8549.jpg', 'keyboard, corsair'),
(180, 25, 23, 'Corsair Strafe RGB MK2', 7490, 5000, '5000 p', '1657543495_Corsair - Strafe RGB MK.2 - 7481.jpg', 'keyboard, corsair'),
(181, 25, 36, 'Logitech Ergo K860 Wireless', 10199, 5000, '5000 p', '1657543552_Logitech - Ergo k860 wireless - 10199.jpg', 'keyboard, logitech'),
(182, 25, 36, 'Logitech K480', 1389, 5000, '5000 p', '1657543577_Logitech - K480 - 1389.jpg', 'keyboard, logitech'),
(183, 25, 36, 'Logitech MX Keys Mini', 6899, 5000, '5000 p', '1657543608_Logitech - MX Keys Mini - 6899.jpg', 'keyboard, logitech'),
(184, 25, 36, 'Logitech Pop Keys', 4589, 5000, '5000 p', '1657543634_Logitech - Pop keys - 4589.jpg', 'keyboard, logitech'),
(185, 25, 38, 'Razer Huntsman Elite', 12999, 5000, '5000 p', '1657543666_Razer - Huntsman Elite - 12999.jpg', 'keyboard, razer'),
(186, 25, 38, 'Razer Huntsman Tournament Edition', 3999, 5000, '5000 p', '1657543696_Razer - Huntsman Tournament Edition - 3999.jpg', 'keyboard, razer'),
(187, 25, 38, 'Razer Pro Type Ultra', 7950, 5000, '5000 p', '1657543748_Razer - Pro Type Ultra - 7950.jpg', 'keyboard, razer'),
(188, 25, 40, 'Steelseries Apex Pro 9699', 9699, 5000, '5000 p', '1657543808_Steelseries - Apex Pro - 9699.jpg', 'keyboard, steelseries'),
(189, 25, 40, 'Steelseries ENTR Mechanical Keyboard', 4730, 5000, '5000 p', '1657543835_Steelseries - ENTR Mechanical Keyoard - 4730.jpg', 'keyboard, steelseries'),
(190, 25, 40, 'Steelseries Stream Keyboard Wireless', 2250, 5000, '5000 p', '1657543860_Steelseries - Stream Keyboard wireless - 2250.jpg', 'keyboard, steelseries'),
(191, 26, 41, 'Cooler Master HAF 700 EVO', 32650, 5000, '5000 p', '1657544119_Cooler Master - HAF 700 EVO - 32650.jpg', 'chassis'),
(192, 26, 23, 'Corsair iCue 4000X RGB', 7249, 5000, '5000 p', '1657544163_Corsair - iCue 4000X RGB - 7249.jpg', 'chassis'),
(193, 26, 42, 'Fractal Define 7', 10830, 5000, '5000 p', '1657544189_Fractal - Define 7 - 10830.jpg', 'chassis'),
(194, 26, 42, 'Fractal Meshify', 9050, 5000, '5000 p', '1657544212_Fractal - Meshify - 9050.jpg', 'chassis'),
(195, 26, 42, 'Fractal Meshify Compact', 9050, 5000, '5000 p', '1657544236_Fractal - Meshify Compact - 9050.jpg', 'chassis'),
(196, 26, 43, 'Lian Li O11 Air Mini', 12199, 5000, '5000 p', '1657544262_Lian - Li O11 Air Mini - 12199.jpg', 'chassis'),
(197, 26, 43, 'Lian Li Q58', 7850, 5000, '5000 p', '1657544298_Lian - Li Q58 - 7850.jpg', 'chassis'),
(198, 26, 43, 'Lian Li H7 Flow', 8450, 5000, '5000 p', '1657544322_Lian- Li H7 Flow - 8450.jpg', 'chassis'),
(199, 26, 44, 'Phanteks Eclipse P500A', 7850, 5000, '5000 p', '1657544350_Phanteks - Eclipse P500A - 7850.jpg', 'chassis'),
(200, 26, 44, 'Phanteks Evolve Shift 2 Air Mini', 6650, 5000, '5000 p', '1657544384_Phanteks - Evolv Shift 2 Air Mini - 6650.jpg', 'chassis'),
(201, 27, 45, 'Acer Aspire 3', 24000, 5000, '5000 p', '1657694757_Acer Aspire 3 24k.png', 'laptop, acer'),
(202, 27, 45, 'Acer Aspire 5 A513', 23000, 5000, '5000 p', '1657694784_Acer Aspire 5 A513 23k.png', 'laptop, acer'),
(203, 27, 45, 'Acer Aspire 5 A514', 27000, 5000, '5000 p', '1657694812_Acer Aspire 5 A514 27k.png', 'laptop, acer'),
(204, 27, 45, 'Acer Aspire A314', 21000, 5000, '5000 p', '1657694837_Acer Aspire A314 21k.png', 'laptop, acer'),
(205, 27, 45, 'Acer Nitro 5', 50000, 5000, '5000 p', '1657694863_Acer Nitro 5 50k.jpeg', 'laptop, acer'),
(206, 27, 45, 'Acer Nitro 5 AN515 57', 53000, 5000, '5000 p', '1657694902_Acer Nitro 5 AN515 57 53k.jpeg', 'laptop, acer'),
(207, 27, 45, 'Acer Nitro AN515', 56000, 5000, '5000 p', '1657694931_Acer Nitro AN515 56k.jpeg', 'laptop, acer'),
(208, 27, 45, 'Acer Predator Helios 300', 62000, 5000, '5000 p', '1657694959_Acer Predator Helios 300 62k.jpg', 'laptop, acer'),
(209, 27, 45, 'Acer Swift 3 SF314', 38000, 5000, '5000 p', '1657694987_Acer Swift 3 SF314 38k.png', 'laptop, acer'),
(210, 27, 45, 'Acer Swift 3 SF314-43', 39000, 5000, '5000 p', '1657695014_Acer Swift 3 SF314-43 39k.jpeg', 'laptop, acer'),
(211, 27, 16, 'Asus ChromeBook C223', 16000, 5000, '5000 p', '1657695082_Asus ChromeBook C223 16k.jpg', 'laptop, asus'),
(212, 27, 16, 'Asus ChromeBook C423', 17000, 5000, '5000 p', '1657695109_Asus Chromebook C423 17k.jpg', 'laptop, asus'),
(213, 27, 16, 'Asus ChromeBook CX1', 9000, 5000, '5000 p', '1657695152_Asus ChromeBook CX1 9k.jpg', 'laptop, asus'),
(214, 27, 16, 'Asus ChromeBook Flip C214', 25000, 5000, '5000 p', '1657695191_Asus Chromebook Flip C214 25k.jpg', 'laptop, asus'),
(215, 27, 16, 'Asus ChromeBook Flip CX5', 40000, 5000, '5000 p', '1657695223_Asus Chromebook Flip CX5 40k.jpg', 'laptop, asus'),
(216, 27, 16, 'Asus Expert Book P3540', 42000, 5000, '5000 p', '1657695252_Asus Expert Book P3540 42k.jpg', 'laptop, asus'),
(217, 27, 16, 'Asus Expert Book B7', 50000, 5000, '5000 p', '1657695284_Asus Expertbook B7 50k.jpg', 'laptop, asus'),
(218, 27, 16, 'Asus Expert Book B9', 52000, 5000, '5000 p', '1657695308_Asus ExpertBook B9 52k.jpg', 'laptop, asus'),
(219, 27, 16, 'Asus Expert Book L2', 40000, 5000, '5000 p', '1657695333_Asus ExpertBook L2 40k.jpg', 'laptop, asus'),
(220, 27, 16, 'Asus Expert Book', 34000, 5000, '5000 p', '1657695354_Asus Expertbook P2 34k.jpg', 'laptop, asus'),
(221, 27, 30, 'Dell Alienware X17', 158000, 5000, '5000 p', '1657695639_Dell Alienware X17 158k.jpg', 'laptop, dell'),
(222, 27, 30, 'Dell Inspiron 13 7000', 20000, 5000, '5000 p', '1657695678_Dell Inspiron 13 7000 20k.jpg', 'laptop, dell'),
(223, 27, 30, 'Dell Inspiron 14', 40000, 5000, '5000 p', '1657695713_Dell Inspiron 14 40k.jpg', 'laptop, dell'),
(224, 27, 30, 'Dell Inspiron 15 3505', 54000, 5000, '5000 p', '1657695745_Dell Inspiron 15 3505 54k.jpg', 'laptop, dell'),
(225, 27, 30, 'Dell Inspiron 15 5000', 75000, 5000, '5000 p', '1657695774_Dell Inspiron 15 5000 75k.jpg', 'laptop, dell'),
(226, 27, 30, 'Dell Latitude E6420', 17000, 5000, '5000 p', '1657695797_Dell Latitude E6420 17k.jpg', 'laptop, dell'),
(227, 27, 30, 'Dell Precision 5510', 168000, 5000, '5000 p', '1657695828_Dell Precision 5510 168k.jpg', 'laptop, dell'),
(228, 27, 30, 'Dell Vostro 3510', 29000, 5000, '5000 p', '1657695852_Dell Vostro 3510 29k.jpg', 'laptop, dell'),
(229, 27, 30, 'Dell XPS 13', 34000, 5000, '5000 p', '1657695873_Dell XPS 13 34k.jpg', 'laptop, dell'),
(230, 27, 30, 'Dell XPS 15', 118000, 5000, '5000 p', '1657695892_Dell XPS 15 118k.jpg', 'laptop, dell'),
(231, 27, 31, 'HP 65705B', 16000, 5000, '5000 p', '1657696901_HP 6570B 16k.png', 'laptop, hp'),
(232, 27, 31, 'HP Envy 15', 59000, 5000, '5000 p', '1657696959_HP Envy 15 59k.jpg', 'laptop, hp'),
(233, 27, 31, 'HP Envy 15 x360', 60000, 5000, '5000 p', '1657696980_HP Envy 15 x360 60k.jpg', 'laptop, hp'),
(234, 27, 31, 'HP Pro Book 450 G5', 29000, 5000, '5000 p', '1657697032_HP ProBook 450 G5 29k.png', 'laptop, hp'),
(235, 27, 31, 'HP Pro book 450 G8', 46000, 5000, '5000 p', '1657697058_HP ProBook 450 G8 46k.jpg', 'laptop, hp'),
(236, 27, 32, 'Lenovo Ideapad 1', 36000, 5000, '5000 p', '1657697328_Lenovo Ideapad 1 36k.jpg', 'laptop, lenovo'),
(237, 27, 32, 'Lenovo Ideapad 1i', 19000, 5000, '5000 p', '1657697371_LEnovo Ideapad 1i 19k.jpg', 'laptop, lenovo'),
(238, 27, 32, 'Lenovo Ideapad Slim3', 32000, 5000, '5000 p', '1657697398_Lenovo Ideapad Slim3  32k.jpg', 'laptop, lenovo'),
(239, 27, 32, 'Lenovo Legion 5i Gen7', 89000, 5000, '5000 p', '1657697426_Lenovo Legion 5i  Gen7 89k.jpg', 'laptop, lenovo'),
(240, 27, 32, 'Lenovo Thinkbook 14', 52000, 5000, '5000 p', '1657697448_Lenovo Thinkbook 14 52k.jpg', 'laptop, lenovo'),
(241, 27, 32, 'Lenovo Thinkpad L14', 53000, 5000, '5000 p', '1657697472_Lenovo Thinkpad L14 53k.jpg', 'laptop, lenovo'),
(242, 27, 32, 'Lenovo Thinkpad P15', 65000, 5000, '5000 p', '1657697500_Lenovo Thinkpad P15 65k.jpg', 'laptop, lenovo'),
(243, 27, 32, 'Lenovo Thinkpad T15p', 85000, 5000, '5000 p', '1657697520_Lenovo Thinkpad T15p 85k.jpg', 'laptop, lenovo'),
(244, 27, 32, 'Lenovo Thinkpad 14', 75000, 5000, '5000 p', '1657697540_Lenovo Thinkpad14 75k.jpg', 'laptop, lenovo'),
(245, 27, 32, 'Lenovo Thinkpad Carbon', 90000, 5000, '5000 p', '1657697558_Lenovo ThinkpadCarbon 90k.jpg', 'laptop, lenovo'),
(246, 27, 20, 'MSI Creator Pro M16', 122000, 5000, '5000 p', '1657697606_MSI CREATORPRO M16 122K.jpg', 'laptop, msi'),
(247, 27, 20, 'MSI GE 66 Dragon Shield', 94000, 5000, '5000 p', '1657697627_MSI GE 66 DRAGONSHIELD 94K.jpg', 'laptop, msi'),
(248, 27, 20, 'MSI GE77 Raider', 186000, 5000, '5000 p', '1657697840_MSI GE77 RAIDER 186K.jpg', 'laptop, msi'),
(249, 27, 20, 'MSI Katana GF76', 93000, 5000, '5000 p', '1657697871_MSI KATANA GF76 93K.jpg', 'laptop, msi'),
(250, 27, 20, 'MSI Prestige 14', 80000, 5000, '5000 p', '1657697895_MSI PRESTIGE 14 80K.jpg', 'laptop, msi'),
(251, 27, 20, 'MSI Prestige 15', 82000, 5000, '5000 p', '1657697917_MSI PRESTIGE 15 82K.jpg', 'laptop, msi'),
(252, 27, 20, 'MSI Pulse GL66', 99000, 5000, '5000 p', '1657697944_MSI PULSE GL66 99K.jpg', 'laptop, msi'),
(253, 27, 20, 'MSI Stealth GS66', 138000, 5000, '5000 p', '1657697971_MSI STEALTH GS66 138K.jpg', 'laptop, msi'),
(254, 27, 20, 'MSI Sword 15', 74000, 5000, '5000 p', '1657698005_MSI SWORD 15 74K.jpg', 'laptop, msi'),
(255, 27, 20, 'MSI Vector', 150000, 5000, '5000 p', '1657698034_MSI VECTOR GP76 150K.jpg', 'laptop, msi');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
