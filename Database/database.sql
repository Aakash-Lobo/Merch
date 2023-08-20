-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2023 at 04:28 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `merch`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`, `status`, `date_created`) VALUES
(5, 'Men', 'Men&#039;s Apparels', 1, '2023-07-31 18:36:11'),
(6, 'Women', 'Women\'s Apparels', 1, '2023-07-31 18:36:11');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(30) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `default_delivery_address` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `firstname`, `lastname`, `gender`, `contact`, `email`, `password`, `default_delivery_address`, `date_created`) VALUES
(2, 'Aakash', 'Lobo', 'Male', '9837287382', 'aakash@gmail.com', 'a870c4012ce2eaa3b60a4c59cb786f76', '901/A, Dreams, Tulip Park, Mumbai', '2023-08-11 18:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` double NOT NULL,
  `price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `quantity`, `price`, `date_created`, `date_updated`) VALUES
(1, 1, 50, 2500, '2021-07-16 10:02:39', NULL),
(2, 2, 20, 3500, '2021-07-16 10:09:08', NULL),
(3, 3, 10, 2500, '2021-07-16 12:05:54', NULL),
(4, 4, 50, 1999.99, '2021-07-16 13:12:10', NULL),
(5, 7, 7, 10000, '2023-07-31 23:33:22', NULL),
(6, 8, 50, 700, '2023-08-01 00:17:59', NULL),
(7, 9, 50, 748, '2023-08-01 11:35:52', NULL),
(8, 10, 50, 500, '2023-08-01 11:38:35', NULL),
(9, 11, 50, 579, '2023-08-01 11:38:48', NULL),
(10, 12, 50, 549, '2023-08-01 11:41:59', NULL),
(11, 13, 50, 549, '2023-08-01 11:42:16', NULL),
(12, 14, 50, 490, '2023-08-01 11:42:35', NULL),
(13, 15, 50, 600, '2023-08-01 11:42:50', NULL),
(14, 19, 50, 1000, '2023-08-01 18:07:55', NULL),
(15, 17, 50, 800, '2023-08-01 18:08:38', NULL),
(16, 18, 50, 1200, '2023-08-01 18:08:55', NULL),
(17, 22, 50, 1000, '2023-08-01 18:09:22', NULL),
(18, 23, 50, 900, '2023-08-01 18:10:16', NULL),
(19, 16, 50, 900, '2023-08-01 18:10:51', NULL),
(20, 21, 50, 1000, '2023-08-01 18:11:08', NULL),
(21, 20, 50, 950, '2023-08-01 18:11:45', NULL),
(22, 24, 50, 2924, '2023-08-01 19:56:06', NULL),
(23, 25, 50, 2249, '2023-08-01 19:57:15', NULL),
(24, 26, 50, 936, '2023-08-01 19:58:07', NULL),
(25, 27, 50, 799, '2023-08-01 19:58:57', NULL),
(26, 28, 50, 2299, '2023-08-01 19:59:43', NULL),
(27, 29, 50, 1511, '2023-08-01 20:00:33', NULL),
(28, 31, 50, 2474, '2023-08-01 20:01:59', NULL),
(29, 32, 50, 560, '2023-08-01 20:56:16', NULL),
(30, 36, 50, 999, '2023-08-01 21:00:38', NULL),
(31, 39, 50, 799, '2023-08-01 21:00:53', NULL),
(32, 38, 50, 675, '2023-08-01 21:01:11', NULL),
(33, 34, 50, 567, '2023-08-01 21:01:24', NULL),
(34, 35, 50, 865, '2023-08-01 21:01:45', NULL),
(35, 37, 50, 866, '2023-08-01 21:02:02', NULL),
(36, 33, 50, 866, '2023-08-01 21:02:18', NULL),
(37, 43, 50, 1499, '2023-08-02 15:04:31', NULL),
(38, 44, 50, 2399, '2023-08-02 15:05:35', NULL),
(39, 40, 50, 695, '2023-08-02 15:10:57', NULL),
(40, 47, 50, 2349, '2023-08-02 15:14:07', NULL),
(41, 46, 50, 1325, '2023-08-02 15:14:21', NULL),
(42, 45, 50, 1500, '2023-08-02 15:14:54', NULL),
(43, 42, 50, 1436, '2023-08-02 15:15:30', NULL),
(44, 41, 50, 978, '2023-08-02 15:15:47', NULL),
(45, 50, 50, 1578, '2023-08-02 15:38:00', NULL),
(46, 55, 50, 2433, '2023-08-02 15:38:20', NULL),
(47, 48, 50, 3721, '2023-08-02 15:43:45', NULL),
(48, 52, 50, 3214, '2023-08-02 15:44:01', NULL),
(49, 54, 50, 4213, '2023-08-02 15:44:17', NULL),
(50, 53, 50, 5213, '2023-08-02 15:44:35', NULL),
(51, 51, 50, 5421, '2023-08-02 15:45:12', NULL),
(52, 49, 50, 3214, '2023-08-02 15:45:26', NULL),
(53, 61, 50, 475, '2023-08-02 16:57:56', NULL),
(54, 60, 50, 742, '2023-08-02 16:58:10', NULL),
(55, 59, 50, 935, '2023-08-02 16:58:24', NULL),
(56, 58, 50, 987, '2023-08-02 16:58:41', NULL),
(57, 57, 50, 1300, '2023-08-02 16:58:58', NULL),
(58, 56, 50, 2156, '2023-08-02 16:59:16', NULL),
(59, 67, 50, 498, '2023-08-02 17:10:11', NULL),
(60, 66, 50, 932, '2023-08-02 17:10:23', NULL),
(61, 65, 50, 742, '2023-08-02 17:10:38', NULL),
(62, 64, 50, 624, '2023-08-02 17:10:53', NULL),
(63, 63, 50, 545, '2023-08-02 17:11:11', NULL),
(65, 62, 50, 635, '2023-08-02 17:29:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `order_type` tinyint(1) NOT NULL COMMENT '1= pickup,2= deliver',
  `amount` double NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `client_name` varchar(40) NOT NULL,
  `mobile_no` int(10) NOT NULL,
  `card_number` int(12) NOT NULL,
  `card_name` varchar(40) NOT NULL,
  `card_expiry` varchar(11) DEFAULT NULL,
  `cvv` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `client_id`, `delivery_address`, `payment_method`, `order_type`, `amount`, `status`, `paid`, `date_created`, `date_updated`, `client_name`, `mobile_no`, `card_number`, `card_name`, `card_expiry`, `cvv`) VALUES
(9, 1, 'Sample Address', 'cod', 2, 1484, 2, 0, '2023-08-05 10:01:41', '2023-08-09 18:36:28', '', 0, 0, '', NULL, NULL),
(10, 1, 'Sample Address', 'cod', 2, 1436, 0, 0, '2023-08-05 10:02:38', NULL, '', 0, 0, '', NULL, NULL),
(16, 1, 'Sample Addressaaa', 'cod', 2, 567, 0, 0, '2023-08-06 20:10:31', NULL, 'aaa', 0, 0, '', NULL, NULL),
(17, 1, 'Sample Address111', 'cod', 2, 3214, 0, 0, '2023-08-06 20:13:26', NULL, 'qqq', 111, 111, 'qqq', NULL, NULL),
(18, 1, 'Sample Addressdff', 'cod', 2, 560, 0, 0, '2023-08-06 22:53:58', NULL, 'aaa', 342342, 32342, 'qqq', NULL, NULL),
(19, 2, '901/A, Dreams, Tulip Park, Mumbai', 'cod', 2, 549, 0, 0, '2023-08-11 19:21:01', NULL, 'Aakash Lobo', 2147483647, 2147483647, 'Aakash Lobo', '0', 4324),
(20, 2, '901/A, Dreams, Tulip Park, Mumbai', 'cod', 2, 935, 0, 0, '2023-08-11 19:24:12', NULL, 'Aakash Lobo', 2147483647, 2147483647, 'Aakash Lobo', '9', 777),
(21, 2, '901/A, Dreams, Tulip Park, Mumbai', 'cod', 2, 1000, 3, 1, '2023-08-11 19:35:17', '2023-08-11 19:39:46', 'Aakash Lobo', 2147483647, 2147483647, 'Aakash Lobo', '05/29', 444),
(22, 1, '901/A, Dreams, Tulip Park, Mumbai', 'online payment', 2, 3286, 0, 0, '2023-08-11 19:47:54', NULL, 'Aakash Lobo', 2147483647, 0, 'Aakash Lobo', '05/28', 666),
(23, 2, '901/A, Dreams, Tulip Park, Mumbai', 'cod', 2, 1000, 0, 0, '2023-08-20 14:48:29', NULL, '', 0, 0, '', NULL, NULL),
(24, 2, '901/A, Dreams, Tulip Park, Mumbai', 'online payment', 0, 549, 0, 0, '2023-08-20 16:26:05', NULL, '', 0, 0, '', NULL, NULL),
(25, 2, '901/A, Dreams, Tulip Park, Mumbai', 'online payment', 0, 549, 0, 0, '2023-08-20 16:26:10', NULL, '', 0, 0, '', NULL, NULL),
(33, 2, '901/A, Dreams, Tulip Park, Mumbai', 'online payment', 0, 748, 0, 0, '2023-08-20 16:50:56', NULL, '', 0, 0, '', '', 0),
(34, 2, '901/A, Dreams, Tulip Park, Mumbai', 'online payment', 0, 748, 0, 0, '2023-08-20 16:51:00', NULL, '', 0, 0, '', '', 0),
(35, 2, '901/A, Dreams, Tulip Park, Mumbai', 'online payment', 0, 748, 0, 0, '2023-08-20 16:51:59', NULL, 'Aakash Lobo', 2147483647, 0, '', '', 0),
(36, 2, '901/A, Dreams, Tulip Park, Mumbai', 'online payment', 0, 748, 0, 0, '2023-08-20 16:52:24', NULL, 'Aakash Lobo', 2147483647, 0, '', '', 0),
(43, 2, '901/A, Dreams, Tulip Park, Mumbai', 'online payment', 0, 700, 0, 0, '2023-08-20 18:09:53', NULL, 'Aditi', 43444, 0, '', '', 0),
(44, 2, '901/A, Dreams, Tulip Park, Mumbai', 'online payment', 0, 567, 0, 0, '2023-08-20 18:15:11', NULL, 'Aditi', 1111, 0, '', '', 0),
(47, 2, '901/A, Dreams, Tulip Park, Mumbai', 'online payment', 0, 545, 0, 0, '2023-08-20 18:18:12', NULL, '', 0, 0, '', '', 0),
(48, 2, '901/A, Dreams, Tulip Park, Mumbai', 'online payment', 0, 0, 0, 0, '2023-08-20 18:18:25', NULL, '', 0, 0, '', '', 0),
(49, 2, '901/A, Dreams, Tulip Park, Mumbai', 'online payment', 0, 0, 0, 0, '2023-08-20 18:18:33', NULL, 'Aditi', 111, 0, '', '', 0),
(50, 2, '901/A, Dreams, Tulip Park, Mumbai', 'online payment', 0, 748, 0, 0, '2023-08-20 18:33:21', NULL, '', 0, 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `product_id`, `quantity`, `price`, `total`) VALUES
(6, 6, 38, 1, 675, 675),
(9, 8, 56, 1, 2156, 2156),
(10, 9, 65, 2, 742, 1484),
(11, 10, 42, 1, 1436, 1436),
(12, 11, 43, 2, 1499, 2998),
(13, 12, 48, 1, 3721, 3721),
(14, 13, 46, 1, 1325, 1325),
(15, 14, 45, 1, 1500, 1500),
(16, 15, 35, 1, 865, 865),
(17, 16, 34, 1, 567, 567),
(18, 17, 49, 1, 3214, 3214),
(19, 18, 32, 1, 560, 560),
(20, 19, 13, 1, 549, 549),
(21, 20, 59, 1, 935, 935),
(22, 21, 10, 2, 500, 1000),
(23, 22, 28, 1, 2299, 2299),
(24, 22, 58, 1, 987, 987),
(25, 23, 21, 1, 1000, 1000),
(26, 24, 12, 1, 549, 549),
(27, 33, 9, 1, 748, 748),
(28, 40, 15, 1, 600, 600),
(29, 42, 12, 1, 549, 549),
(30, 43, 8, 1, 700, 700),
(31, 44, 34, 1, 567, 567),
(32, 45, 62, 1, 635, 635),
(33, 46, 62, 1, 635, 635),
(34, 47, 63, 1, 545, 545),
(35, 50, 9, 1, 748, 748);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `sub_category_id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `brand` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `title`, `brand`, `description`, `status`, `date_created`) VALUES
(8, 5, 4, 'The Lifestyle Co. Men Colourblocked Polo Collar Pure Cotton T-shirt', 'Roadster', 'Black and blue T-shirt for men&lt;br&gt;\r\nColourblocked&lt;br&gt;\r\nRegular length&lt;br&gt;\r\nPolo collar&lt;br&gt;\r\nShort, regular sleeves&lt;br&gt;\r\nKnitted pure cotton fabric&lt;br&gt;\r\nButton closure&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nRegular Fit&lt;br&gt;\r\nSize worn by the model: M&lt;br&gt;\r\nChest: 40\\&quot;&lt;br&gt;\r\nHeight: 6\\&#039;1\\&quot;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n100% Cotton&lt;br&gt;\r\nMachine Wash&lt;br&gt;', 1, '2023-08-01 00:05:10'),
(9, 5, 4, 'Varsity Printed Raglan Sleeves Oversized Cotton T-shirt', 'Maniac', 'Blue &amp; white t-shirt for men&lt;br&gt;\r\nVarsity printed&lt;br&gt;\r\nRegular length&lt;br&gt;\r\nPolo collar&lt;br&gt;\r\nThree-quarter, regular sleeves&lt;br&gt;\r\nKnitted cotton fabric&lt;br&gt;\r\nButton closure&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nOversized&lt;br&gt;\r\nThe model (height 6\\&#039;) is wearing a size M&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nCotton&lt;br&gt;\r\nMachine wash&lt;br&gt;', 1, '2023-08-01 11:28:33'),
(10, 5, 4, 'Men Coral & White Striped Polo Collar T-shirt', 'Roadster', 'Coral and white Tshirt for men&lt;br&gt;\r\nStriped&lt;br&gt;\r\nRegular length&lt;br&gt;\r\nPolo collar&lt;br&gt;\r\nShort, regular sleeves&lt;br&gt;\r\nKnitted cotton fabric&lt;br&gt;\r\nButton closure&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nRegular fit&lt;br&gt;\r\nSize worn by the model: M&lt;br&gt;\r\nChest: 38\\&quot;&lt;br&gt;\r\nHeight: 6\\&#039;1\\&quot;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n50% Cotton, 50% Polyester&lt;br&gt;\r\nMachine wash&lt;br&gt;', 1, '2023-08-01 11:37:31'),
(11, 5, 4, 'Men Blue Solid Polo Collar T-shirt', 'Harvard', 'Blue solid T-shirt&lt;br&gt;\r\nPolo collar&lt;br&gt;\r\nShort sleeves&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nThe model (height 6\\&#039;) is wearing a size M&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n60% Cotton and 40% polyester&lt;br&gt;\r\nMachine-wash&lt;br&gt;', 1, '2023-08-01 11:38:09'),
(12, 5, 4, 'Men Green Polo Collar Pure Cotton T-shirt', 'Harvard', 'Green Tshirt for men&lt;br&gt;\r\nSolid&lt;br&gt;\r\nRegular length&lt;br&gt;\r\nPolo collar&lt;br&gt;\r\nShort, regular sleeves&lt;br&gt;\r\nKnitted cotton fabric&lt;br&gt;\r\nButton closure&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nRegular Fit&lt;br&gt;\r\nThe model (height 6\\&#039;) is wearing a size M&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n60% Cotton, 40% Polyester&lt;br&gt;\r\nMachine wash&lt;br&gt;', 1, '2023-08-01 11:39:30'),
(13, 5, 4, 'Men Black Polo Collar Slim Fit T-shirt', 'encore by INVICTUS', 'Black Tshirt for men&lt;br&gt;\r\nSolid&lt;br&gt;\r\nRegular length&lt;br&gt;\r\nPolo collar&lt;br&gt;\r\nShort, regular sleeves&lt;br&gt;\r\nKnitted cotton fabric&lt;br&gt;\r\nButton closure&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nSlim Fit&lt;br&gt;\r\nSize worn by the model: M&lt;br&gt;\r\nChest: 39\\&quot;&lt;br&gt;\r\nHeight: 6\\&#039;1\\&quot;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n600% Cotton, 40%Polyester&lt;br&gt;\r\nMachine wash&lt;br&gt;', 1, '2023-08-01 11:40:08'),
(14, 5, 4, 'Camouflage Printed Antimicrobial Sports T-shirt', 'Technosport', 'Olive green sports t-shirt for men&lt;br&gt;\r\nCamouflage printed&lt;br&gt;\r\nRegular length&lt;br&gt;\r\nRound neck&lt;br&gt;\r\nShort, regular sleeves&lt;br&gt;\r\nKnitted polyester fabric&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nRegular Fit&lt;br&gt;\r\nThe model (height 6\\&#039;) is wearing a size M&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nPolyester&lt;br&gt;\r\nMachine Wash&lt;br&gt;', 1, '2023-08-01 11:40:42'),
(15, 5, 4, 'Typography Printed Pure Cotton Oversize T-shirt', 'Kook N Keech', 'Black T-shirt for men&lt;br&gt;\r\nTypography printed&lt;br&gt;\r\nRegular length&lt;br&gt;\r\nRound neck&lt;br&gt;\r\nShort, regular sleeves&lt;br&gt;\r\nWoven pure cotton fabric&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nOversize Fit&lt;br&gt;\r\nThe model (height 6\\&#039;) is wearing a size M&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n100% cotton&lt;br&gt;\r\nMachine wash&lt;br&gt;', 1, '2023-08-01 11:41:24'),
(16, 5, 8, 'Men Blue Straight Fit Light Fade Pure Cotton Jeans', 'Calvin Klein Jeans', 'Medium shade, light fade blue jeans&lt;br&gt;\r\nMid-rise&lt;br&gt;\r\nClean look&lt;br&gt;\r\nNon stretchable&lt;br&gt;\r\n5 pocket&lt;br&gt;\r\nLength: regular&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nStraight Fit&lt;br&gt;\r\nNon Stretchable&lt;br&gt;\r\nSize worn by the model: 32&lt;br&gt;\r\nWaist: 30\\&quot;&lt;br&gt;\r\nHips: 37\\&quot;&lt;br&gt;\r\nHeight: 6\\&#039;1\\&quot;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n100% Cotton&lt;br&gt;\r\nMachine-wash&lt;br&gt;', 1, '2023-08-01 17:58:48'),
(17, 5, 8, 'Men Anti Fit Light Fade Stretchable Mid-Rise Jeans', 'WROGN', 'Medium shade, light fade blue jeans&lt;br&gt;\r\nRegular fit, mid-rise&lt;br&gt;\r\nBrand Fit: anti&lt;br&gt;\r\nClean look&lt;br&gt;\r\nStretchable&lt;br&gt;\r\n5 pocket&lt;br&gt;\r\nLength: Regular&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nBrand Fit: Anti&lt;br&gt;\r\nRegular Fit&lt;br&gt;\r\nStretchable&lt;br&gt;\r\nSize worn by the model: 32&lt;br&gt;\r\nWaist: 32\\&quot;&lt;br&gt;\r\nHips: 37\\&quot;&lt;br&gt;\r\nHeight: 6\\&#039;2\\&quot;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n71% Cotton, 28% Polyester &amp; 1% Elastane&lt;br&gt;\r\nMachine Wash&lt;br&gt;', 1, '2023-08-01 17:59:29'),
(18, 5, 8, 'Men Black Slim Fit Stretchable Jeans', 'WROGN', 'Dark shade, no fade black jeans&lt;br&gt;\r\nSlim fit, mid-rise&lt;br&gt;\r\nClean look&lt;br&gt;\r\nStretchable&lt;br&gt;\r\n5 pocket&lt;br&gt;\r\nLength: regular&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\n&lt;br&gt;\r\nFit: Slim Fit&lt;br&gt;\r\nStretchable&lt;br&gt;\r\nThe model (height 6\\&#039;) is wearing a size 32&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n99% Cotton, 1% Elastane&lt;br&gt;\r\nMachine wash&lt;br&gt;', 1, '2023-08-01 18:00:10'),
(19, 5, 8, 'Lean Men Slim Fit Mid-Rise Light Fade Clean Look Stretchable Jeans', 'Oxemberg', 'Medium shade, light fade navy blue jeans&lt;br&gt;\r\nSlim fit, mid-rise&lt;br&gt;\r\nBrand Fit: lean&lt;br&gt;\r\nStretchable&lt;br&gt;\r\nWhiskers and chevrons&lt;br&gt;\r\n5 pocket&lt;br&gt;\r\nLength: regular&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nThe model (height 6\\&#039;) is wearing a size 32&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nElastane&lt;br&gt;\r\nMachine Wash&lt;br&gt;', 1, '2023-08-01 18:00:49'),
(20, 5, 8, 'Men Relaxed Fit Clean Look Stretchable Jeans', 'HIGHLANDER', 'Dark shade, no fade black jeans&lt;br&gt;\r\nRelaxed fit, mid-rise&lt;br&gt;\r\nClean look&lt;br&gt;\r\nStretchable&lt;br&gt;\r\n5 pocket&lt;br&gt;\r\nLength: Regular&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\n&lt;br&gt;\r\nFit: Relaxed Fit&lt;br&gt;\r\nStretchable&lt;br&gt;\r\nThe model (height 6\\&#039;) is wearing a size 32&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nCotton &amp; Elastane&lt;br&gt;\r\nMachine Wash&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-01 18:01:17'),
(21, 5, 8, 'Men Blue Tapered Fit Mid-Rise Clean Look Jeans', 'Mr Bowerbird', 'Light shade, no fade blue jeans&lt;br&gt;\r\nTapered fit, mid-rise&lt;br&gt;\r\nClean look&lt;br&gt;\r\nNon stretchable&lt;br&gt;\r\n5 pocket&lt;br&gt;\r\nLength: regular&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nFit: Tapered Fit&lt;br&gt;\r\nNon Stretchable&lt;br&gt;\r\nThe model (height 6\\&#039;) is wearing a size 32&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n98% Cotton 2% Elastane&lt;br&gt;\r\nMachine-wash&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-01 18:01:48'),
(22, 5, 8, 'Men Blue Light Fade Cropped Stretchable Jeans', 'The Indian Garage Co', 'Medium shade, light fade blue jeans&lt;br&gt;\r\nRegular fit, mid-rise&lt;br&gt;\r\nClean look&lt;br&gt;\r\nStretchable&lt;br&gt;\r\n5 pocket&lt;br&gt;\r\nLength: cropped&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\n&lt;br&gt;\r\nFit: Regular Fit&lt;br&gt;\r\nStretchable&lt;br&gt;\r\nThe model (height 6\\&#039;) is wearing a size 32&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nCotton Poly Lycra&lt;br&gt;\r\nMachine wash&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-01 18:02:30'),
(23, 5, 8, 'Men Blue Slim Fit Mid-Rise Light Fade Jeans', 'Louis Philippe Jeans', 'Light shade, light fade blue jeans&lt;br&gt;\r\nSlim fit, mid-rise&lt;br&gt;\r\nClean look&lt;br&gt;\r\nNon-stretchable&lt;br&gt;\r\n5 pockets&lt;br&gt;\r\nHas whiskers &amp; chevrons effect&lt;br&gt;\r\nLength: regular&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nFit: Slim Fit&lt;br&gt;\r\nNon-stretchable&lt;br&gt;\r\nThe model (height 6\\&#039;) is wearing a size 32&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nCotton&lt;br&gt;\r\nMachine wash, warm&lt;br&gt;', 1, '2023-08-01 18:03:15'),
(24, 5, 10, 'Men Black Solid C-Block Sneakers', 'Puma', 'A pair of round toe solid black sneakers, has regular styling,&lt;br&gt;\r\nLace-ups detail&lt;br&gt;\r\nSynthetic and mesh upper provides breathability &amp; durabilty&lt;br&gt;\r\nPUMA Logo&lt;br&gt;\r\nCushioned footbed&lt;br&gt;\r\nTextured and patterned rubber outsole for traction&lt;br&gt;\r\nWarranty: 3 months&lt;br&gt;\r\nWarranty provided by brand/manufacturer&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;About the Product&lt;/b&gt;&lt;br&gt;\r\nLook fantastic with the PUMA Shoes an all season favorite, perfect for leisure.&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nSynthetic &lt;br&gt;\r\nWipe with a clean, dry cloth to remove dust&lt;br&gt;', 1, '2023-08-01 19:55:37'),
(25, 5, 10, 'Men CALVIN Water-Friendly Memory Foam Insole Basics Sneakers', 'Solethreads', 'A pair of round toe olive green , grey &amp; black sneakers ,has regular styling,&lt;br&gt;\r\nLace- up detail&lt;br&gt;\r\nSynthetic leather upper&lt;br&gt;\r\nCushioned footbed&lt;br&gt;\r\nTextured and patterned outsole&lt;br&gt;\r\n&lt;b&gt;Features:&lt;/b&gt;&lt;br&gt;\r\nUpper Water-friendly premium Italian faux leather&lt;br&gt;\r\nOutsole ECOTREAD anti-skid Rubber sole&lt;br&gt;\r\nLining 3D knit RESPIMESH lining for breathability&lt;br&gt;\r\nInsole Ribbed memory foam insole for extra cushioning and comfort&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nSynthetic Leather&lt;br&gt;\r\nWipe with a clean, dry cloth to remove dust&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-01 19:56:55'),
(26, 5, 10, 'Men Brown Textured PU Sneakers', 'Roadster', 'A pair of round toe brown sneakers ,has regular styling,&lt;br&gt;\r\nLace-ups detail&lt;br&gt;\r\nPu upper&lt;br&gt;\r\nCushioned footbed&lt;br&gt;\r\nTextured and patterned outsole&lt;br&gt;\r\nWarranty: 1 month&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nPU&lt;br&gt;\r\nWipe with a clean, dry cloth to remove dust&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-01 19:57:50'),
(27, 5, 10, 'Men White Colourblocked Sneakers', 'El Paso', 'A pair of round toe white ,has regular styling,&lt;br&gt;\r\nLace-ups detail&lt;br&gt;\r\nupper&lt;br&gt;\r\nCushioned footbed&lt;br&gt;\r\nTextured and patterned outsole&lt;br&gt;\r\nWarranty: 3 months&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nComfort Fit size&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nAllow your pair of shoes to air and deodorize at regular basis use shoe bags to prevent any stains or mildew dust any dry dirt from the surface using a clean cloth do not use polish or shiner&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-01 19:58:39'),
(28, 5, 10, 'Men Textured Comfort Insole Basics Sneakers', 'Forca', 'A pair of round toe white &amp; blue sneakers ,has regular styling,&lt;br&gt;\r\nLace-ups detail&lt;br&gt;\r\nSynthetic upper&lt;br&gt;\r\nCushioned footbed&lt;br&gt;\r\nTextured and patterned outsole&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nSynthetic&lt;br&gt;\r\nWipe with a clean, dry cloth to remove dust', 1, '2023-08-01 19:59:29'),
(29, 5, 10, 'Men Colourblocked PU High-Top Sneakers', 'Red Tape', 'A pair of round toe black,white and red sneakers ,has high-top styling&lt;br&gt;\r\nLace-ups detail&lt;br&gt;\r\nPu upper material&lt;br&gt;\r\nCushioned footbed&lt;br&gt;\r\nTextured and patterned outsole&lt;br&gt;\r\nWarranty: 45 days&lt;br&gt;\r\nWarranty is provide by the brand / manufacturer&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nPU&lt;br&gt;\r\nWipe with clean cloth to remove dust&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-01 20:00:16'),
(30, 5, 10, 'Men Colourblocked Sneakers', 'Red Tape', 'A pair of round toe white,beige &amp; navy blue sneakers ,has regular styling&lt;br&gt;\r\nLace-ups detail&lt;br&gt;\r\nTextile upper&lt;br&gt;\r\nCushioned footbed&lt;br&gt;\r\nTextured and patterned outsole&lt;br&gt;\r\nWarranty: 45 days&lt;br&gt;\r\nWarranty provided by brand/manufacturer&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nTextile&lt;br&gt;\r\nWipe with a clean and dry cloth to remove dust&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-01 20:01:04'),
(31, 5, 10, 'Men Colourblocked C-Block Regular Sneakers', 'Puma', 'Product Design Details:&lt;br&gt;\r\nA pair of round toe grey, black, fluorescent green, and purple colourblocked sneakers, has regular styling&lt;br&gt;\r\nLace-ups detail&lt;br&gt;\r\nSynthetic and mesh upper provides breathability &amp; durabilty&lt;br&gt;\r\nCushioned footbed&lt;br&gt;\r\nTextured and patterned rubber outsole for traction&lt;br&gt;\r\nLow boot construction&lt;br&gt;\r\nPUMA Logo&lt;br&gt;\r\nWarranty: 3 months&lt;br&gt;\r\nWarranty provided by brand owner/manufacturer&lt;br&gt;\r\n&lt;b&gt;About the Product&lt;/b&gt;:&lt;br&gt;\r\nLook fantastic with the PUMA Shoes an all season favorite, perfect for leisure.&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nUpper Material: Synthetic and mesh&lt;br&gt;\r\nOutsole Material: Rubber&lt;br&gt;\r\nWipe with a clean dry cloth to remove dust&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-01 20:01:37'),
(32, 6, 11, 'Sania Women Black & Beige Floral Printed Top', 'Dream Beauty Fashion', 'Black and beige regular fitted top&lt;br&gt;\r\nFloral print&lt;br&gt;\r\nSquare neck, long, regular sleeves sleeves&lt;br&gt;\r\nKnitted&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nThe model (height 5\\&#039;8) is wearing a size S&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nPolyester&lt;br&gt;\r\nMachine Wash&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-01 20:55:44'),
(33, 6, 11, 'Women Black & White Striped Crepe Top', 'Selvia', 'Black and white regular regular top&lt;br&gt;\r\nVertical striped&lt;br&gt;\r\nRound neck, long, cuffed sleeves sleeves&lt;br&gt;\r\nKnitted crepe&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nThe model (height 5\\&#039;8) is wearing a size S&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nPolyester&lt;br&gt;\r\nHand wash&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-01 20:56:50'),
(34, 6, 11, 'Floral Print Peplum Top', 'KERI PERRY', 'Teal regular peplum top&lt;br&gt;\r\nFloral print&lt;br&gt;\r\nSquare neck, short, puff sleeves&lt;br&gt;\r\nWoven crepe&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nThe model (height 5\\&#039;8) is wearing a size S&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nPolyester&lt;br&gt;\r\nHand Wash&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-01 20:57:23'),
(35, 6, 11, 'Pink Floral Print Mandarin Collar Top', 'DressBerry', 'Pink regular a-line top&lt;br&gt;\r\nFloral print&lt;br&gt;\r\nMandarin collar, short, regular sleeves sleeves&lt;br&gt;\r\nEmbroidered detail&lt;br&gt;\r\nWoven dobby&lt;br&gt;\r\nButton closure&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nThe model (height 5\\&#039;8) is wearing a size S&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nDry clean only&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-01 20:58:00'),
(36, 6, 11, 'Acrylic Striped Top', 'her by invictus', 'Navy blue and white regular top&lt;br&gt;\r\nHorizontal stripes &lt;br&gt;\r\nRound neck, short, regular sleeves&lt;br&gt;\r\nKnitted&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\n&lt;br&gt;\r\nSize worn by the model: S&lt;br&gt;\r\nChest: 32\\&#039;\\&#039;&lt;br&gt;\r\nHeight: 5\\&#039;7\\&quot;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n100% Acrylic&lt;br&gt;\r\nMachine wash&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-01 20:58:32'),
(37, 6, 11, 'Tropical Print Top', 'SASSAFRAS', 'Green and beige regular top&lt;br&gt;\r\nTropical print&lt;br&gt;\r\nSquare neck, short, regular sleeves &lt;br&gt;\r\nWoven chiffon&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nThe model (height 5\\&#039;8) is wearing a size S&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n100% Polyester&lt;br&gt;\r\nMachine Wash&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-01 20:59:00'),
(38, 6, 11, 'Classy Black Geometric Top', 'STREET 9', 'Keep it chic when you step out donning this fashionable top. &lt;br&gt;\r\nDesigned with a lovely geometric pattern and round neck, &lt;br&gt;\r\nthis top looks beautiful. &lt;br&gt;\r\nClassy black shade&lt;br&gt;\r\nGeometric pattern&lt;br&gt;\r\nRound neck&lt;br&gt;\r\nLong puff sleeves&lt;br&gt;\r\nPolyester, machine wash&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nThe model (height 5\\&#039;8) is wearing a size S&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n100%Polyester&lt;br&gt;\r\nMachine wash&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-01 20:59:33'),
(39, 6, 11, 'Black Embellished Peplum Top', 'STREET 9', 'Black embellished knitted peplum top, &lt;br&gt;\r\nhas a V-neck, &lt;br&gt;\r\nshort sleeves, &lt;br&gt;\r\nconcealed zip closure&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nFitted&lt;br&gt;\r\nThe model (height 5\\&#039;8\\&quot;) is wearing a size S&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n100% polyester&lt;br&gt;\r\nDry-clean&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-01 21:00:07'),
(40, 6, 13, 'The Lifestyle Co. Women Blue Flared Mid-Rise Clean Look Stretchable Jeans', 'Roadster', 'Blue medium wash 5-pocket mid-rise jeans, clean look, light fade, has a button and zip closure, and waistband with belt loops&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nFlared&lt;br&gt;\r\nStretchable&lt;br&gt;\r\nThe model (height 5\\&#039;8\\&quot;) is wearing a size 28&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n98% Cotton 2% Elastane&lt;br&gt;\r\nMachine-wash&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-02 15:01:39'),
(41, 6, 13, 'Women Black Jean Straight Fit High-Rise Stretchable Jeans', 'Kotty', 'Dark shade, no fade black jeans&lt;br&gt;\r\nStraight fit, high-rise&lt;br&gt;\r\nBrand Fit: jean&lt;br&gt;\r\nClean look&lt;br&gt;\r\nStretchable&lt;br&gt;\r\n5 pocket&lt;br&gt;\r\nLength: regular&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nBrand Fit: Jean&lt;br&gt;\r\nFit: Straight Fit&lt;br&gt;\r\nStretchable&lt;br&gt;\r\nThe model (height 5\\&#039;8) is wearing a size 28&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n98% Cotton &amp; 2% Lycra&lt;br&gt;\r\nMachine wash&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-02 15:02:13'),
(42, 6, 13, 'Women Blue Flared High-Rise Clean Look Jeans', 'Kotty', 'Blue dark wash high-rise jeans,&lt;br&gt;\r\nclean look, no fade,&lt;br&gt;\r\nhas a button and zip closure&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nFlared&lt;br&gt;\r\nThe model (height 5\\&#039;8\\&quot;) is wearing a size 28&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nMaterial: Cotton&lt;br&gt;\r\nHand Wash&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-02 15:03:30'),
(43, 6, 13, 'Women Smart Wide Leg High-Rise Stretchable Cotton Jeans', 'BROADSTAR', 'Dark shade, no fade black jeans&lt;br&gt;\r\nWide leg, high-rise&lt;br&gt;\r\nBrand Fit: smart&lt;br&gt;\r\nClean look&lt;br&gt;\r\nStretchable&lt;br&gt;\r\n7 pockets&lt;br&gt;\r\nLength: cropped&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nBrand Fit: Smart&lt;br&gt;\r\nFit: Wide Leg&lt;br&gt;\r\nStretchable&lt;br&gt;\r\nThe model (height 5\\&#039;8) is wearing a size 28&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nCotton&lt;br&gt;\r\nMachine Wash&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-02 15:04:14'),
(44, 6, 13, 'Wide Leg High-Rise Stretchable Jeans', 'U.S. Polo Assn. Women', 'Light shade, no fade blue jeans&lt;br&gt;\r\nWide leg, high-rise&lt;br&gt;\r\nClean look&lt;br&gt;\r\nStretchable&lt;br&gt;\r\n5 pocket&lt;br&gt;\r\nLength: regular &lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nFit: Wide Leg&lt;br&gt;\r\nStretchable&lt;br&gt;\r\nThe model (height 5\\&#039;8) is wearing a size 28&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nCotton, Polyester &amp; Elastane&lt;br&gt;\r\nMachine Wash&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-02 15:05:17'),
(45, 6, 13, 'The Life Co. Women Straight Fit High-Rise Light Fade Stretchable Jeans', 'Roadster', 'Dark shade, light fade blue jeans&lt;br&gt;\r\nStraight fit, high-rise&lt;br&gt;\r\nClean look&lt;br&gt;\r\nStretchable&lt;br&gt;\r\n5 pocket&lt;br&gt;\r\nLength: regular&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nFit: Straight Fit&lt;br&gt;\r\nStretchable&lt;br&gt;\r\nThe model (height 5\\&#039;8) is wearing a size 28&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n79% Cotton, 19% Polyester and 2% Elasatne&lt;br&gt;\r\nMachine wash&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-02 15:06:21'),
(46, 6, 13, 'Women Navy Blue Solid Bootcut Stretchable Jeans', 'Roadster', 'Dark no fade navy blue jeans&lt;br&gt;\r\nBootcut, high-rise&lt;br&gt;\r\nClean look&lt;br&gt;\r\nStretchable&lt;br&gt;\r\n5 pocket&lt;br&gt;\r\nLength: regular&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\n&lt;br&gt;\r\nFit: Bootcut&lt;br&gt;\r\nStretchable&lt;br&gt;\r\nThe model (height 5\\&#039;8) is wearing a size 28&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n78.5% Cotton, 20.3% Polyester, 1.2% Elastane&lt;br&gt;\r\nMachine wash&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-02 15:12:06'),
(47, 6, 13, 'Women Stunning Blue High-Rise Bootcut Stretchable Jeans', 'Roadster', 'Rock any casual weekend party in these trendy jeans. &lt;br&gt;\r\nCrafted with a high-rise waist and regular length,&lt;br&gt; \r\nthese jeans will lend you a laid-back look. &lt;br&gt;\r\nStunning blue colour&lt;br&gt;\r\nBootcut fit&lt;br&gt;\r\nHigh-rise waist&lt;br&gt;\r\nRegular length&lt;br&gt;\r\nCotton, machine wash&lt;br&gt;\r\nTrend Alert&lt;br&gt;\r\nThe graduated flare lends an elevated stylish edge to your flared&lt;br&gt;\r\nand wide-legged denim. It gives you a super-sleek silhouette&lt;br&gt;\r\nand suits all body types.&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nFit: Bootcut&lt;br&gt;\r\nStretchable&lt;br&gt;\r\nThe model (height 5\\&#039;8) is wearing a size 28&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nCotton&lt;br&gt;\r\nMachine wash&lt;br&gt;', 1, '2023-08-02 15:13:41'),
(48, 6, 14, 'Women Shuffle Max V2 Sneakers', 'Puma', '&lt;b&gt;Special Technology:&lt;/b&gt;&lt;br&gt;\r\nSoftFoam+: PUMA\\&#039;s comfort sockliner for instant step-in&lt;br&gt;\r\nand long-lasting comfort that provides soft cushioning &lt;br&gt;\r\nevery step of your day&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Features:&lt;/b&gt;&lt;br&gt;\r\nA pair of round toe black sneakers ,has regular styling&lt;br&gt;\r\nLace-ups detail&lt;br&gt;\r\nSynthetic upper&lt;br&gt;\r\nSuede at the heel&lt;br&gt;\r\nPU heel flap&lt;br&gt;\r\nPerforation detail at toe&lt;br&gt;\r\nCushioned footbed&lt;br&gt;\r\nTextured and patterned outsole&lt;br&gt;\r\nWarranty: 3 months&lt;br&gt;\r\nWarranty provided by Brand/Manufacturer&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nSynthetic&lt;br&gt;\r\nWipe with a clean dry cloth to remove dust&lt;br&gt;', 1, '2023-08-02 15:26:03'),
(49, 6, 14, 'Black Sneakers', 'Puma', 'A pair of round toe black sneakers ,has regular styling,&lt;br&gt;\r\nLace-ups detail&lt;br&gt;\r\nMesh upper&lt;br&gt;\r\nCushioned footbed&lt;br&gt;\r\nTextured and patterned outsole&lt;br&gt;\r\nWarranty: 3 months&lt;br&gt;\r\nWarranty provided by brand/manufacturer&lt;br&gt;\r\nPRODUCT STORY : Introducing the Duke Men\\&#039;s Shoes, Propels you to greater milestones with its sleek, agile, functional design infused with pumas cutting edge technology. DETAILS : Heel type: Flat, Shoe width: Regular fit, EVA outsole&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nUpper Material : Mesh&lt;br&gt;\r\nSole Material : Rubber&lt;br&gt;\r\nWipe with a clean dry cloth to remove dust&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-02 15:26:42'),
(50, 6, 14, 'Women White Woven Design Sneakers', 'Red Tape', 'A pair of round toe white sneakers ,has regular styling,&lt;br&gt;\r\nLace-ups detail&lt;br&gt;\r\nSynthetic upper&lt;br&gt;\r\nCushioned footbed&lt;br&gt;\r\nTextured and patterned outsole&lt;br&gt;\r\nWarranty: 45 days&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nSynthetic PU Wipe with a clean, dry cloth to remove dust&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-02 15:27:15'),
(51, 6, 14, 'MAMG P Z Driving Shoes', 'PUMA Motorsport', 'A pair of round toe black solid driving shoes, has regular styling,&lt;br&gt;\r\nLace-ups detail&lt;br&gt;\r\nTextile upper&lt;br&gt;\r\nCushioned footbed&lt;br&gt;\r\nTextured and patterned outsole&lt;br&gt;\r\nSoft Foam+ sockliner for comfort&lt;br&gt;\r\nPUMA Cat Logo on the TPU piece on the midsole&lt;br&gt;\r\nMercedes-AMG PETRONAS F1 branding on the lateral side&lt;br&gt;\r\nMercedes-AMG PETRONAS medallion logo on the heel&lt;br&gt;\r\nPUMA Cat Logo on the heel tab&lt;br&gt;\r\nPUMA Logo No. 2 on the outsole tread&lt;br&gt;\r\nWarranty: 3 months&lt;br&gt;\r\nWarranty provided by brand/manufacturer&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;About the Product&lt;/b&gt;&lt;br&gt;\r\nThe brightness of high-intensity Zenon lights inspires this sleek&lt;br&gt; andclean ultra-low-profile kick with Mercedes-AMG PETRONAS.&lt;br&gt;\r\nReflective elements flash on the upper, and Soft Foam+ technology&lt;br&gt; provides next-level cushioning for every step.Recycled content: The&lt;br&gt; upper of this shoe is made with at least 20% recycled materials as a&lt;br&gt; step toward a better future .&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nTextile&lt;br&gt;\r\nWipe with a clean dry cloth to remove dust&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-02 15:30:10'),
(52, 6, 14, 'Women Pink Dunk Low SE Sneakers', 'Nike', 'A pair of round toe pink sneakers ,has regular styling,&lt;br&gt;\r\nLace-ups detail&lt;br&gt;\r\nLeather upper&lt;br&gt;\r\nCushioned footbed&lt;br&gt;\r\nTextured and patterned outsole&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nLeather&lt;br&gt;\r\nUse a branded leather conditioner to clean the product&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-02 15:34:30'),
(53, 6, 14, 'Women Black Solid Lightweight Sneakers', 'El Paso', 'A pair of round toe black sneakers ,has mid-top styling,&lt;br&gt;\r\nLace-ups detail&lt;br&gt;\r\nSynthetic upper&lt;br&gt;\r\nCushioned footbed&lt;br&gt;\r\nTextured and patterned outsole&lt;br&gt;\r\nWarranty: 3 months&lt;br&gt;\r\nWarranty provided by brand owner/manufacturer&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nUpper material: Synthetic&lt;br&gt;\r\nOutsole material: Rubber&lt;br&gt;\r\nWipe with clean, dry cloth to remove the dust&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-02 15:35:10'),
(54, 6, 14, 'Women Colourblocked Memory Foam Insole Sneakers', 'Solethreads', 'Women Colourblocked Memory Foam Insole Sneakers&lt;br&gt;\r\nA pair of round toe pink and brown sneakers ,has regular styling&lt;br&gt;\r\nLace-ups detail&lt;br&gt;\r\nSynthetic leather upper&lt;br&gt;\r\nCushioned footbed&lt;br&gt;\r\nTextured and patterned outsole&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nSynthetic leather&lt;br&gt;\r\nWipe with a clean and dry cloth to remove dust&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-02 15:35:51'),
(55, 6, 14, 'Women White & Blue Colourblocked Sneakers', 'Red Tape', 'A pair of round toe white sneakers ,has regular styling,&lt;br&gt;\r\nLace-ups detail&lt;br&gt;\r\nSynthetic upper&lt;br&gt;\r\nCushioned footbed&lt;br&gt;\r\nTextured and patterned outsole&lt;br&gt;\r\nWarranty: 45 days&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nSynthetic, PU&lt;br&gt;\r\nWipe with a clean, dry cloth to remove the dust&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-02 15:36:59'),
(56, 5, 9, 'Men Pure Cotton Slim Fit Striped Casual Shirt', 'Louis Philippe Sport', 'Navy blue vertical striped opaque casual shirt&lt;br&gt;\r\nSpread collar&lt;br&gt;\r\nButton placket&lt;br&gt;\r\n1 patch pocket&lt;br&gt;\r\nLong regular sleeves&lt;br&gt;\r\nCurved hem&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nFit: Slim Fit&lt;br&gt;\r\nThe model (height 6\\&#039;) is wearing a size 40&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n100% Cotton &lt;br&gt;\r\nMachine Wash&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-02 16:55:09'),
(57, 5, 9, 'Men Pure Cotton Solid Slim Fit Casual Shirt', 'Raymond', 'Blue solid opaque casual shirt&lt;br&gt;\r\nSpread collar&lt;br&gt;\r\nButton placket&lt;br&gt;\r\n1 patch pocket&lt;br&gt;\r\nLong regular sleeves&lt;br&gt;\r\nCurved hem&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nSlim Fit&lt;br&gt;\r\nSize worn by the model: 40&lt;br&gt;\r\nChest: 39\\&quot;&lt;br&gt;\r\nHeight: 6\\&#039;1\\&quot;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n100% Cotton&lt;br&gt;\r\nMachine Wash&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-02 16:55:42'),
(58, 5, 9, 'Men Black & Grey Shadow Check Sustainable Casual Shirt', 'Roadster', 'Black and grey shadow check casual shirt&lt;br&gt;\r\nSpread collar&lt;br&gt;\r\nButton placket&lt;br&gt;\r\n1 patch pocket&lt;br&gt;\r\nLong regular sleeves&lt;br&gt;\r\nCurved hem&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nRegular fit&lt;br&gt;\r\nThe model (height 6\\&#039;) is wearing a size 40&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n100% cotton&lt;br&gt;\r\nMachine-wash&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-02 16:56:10'),
(59, 5, 9, 'Classic Tartan Checks Opaque Pure Cotton Casual Shirt', 'High Star', 'Blue tartan checks opaque casual shirt&lt;br&gt;\r\nSpread collar&lt;br&gt;\r\nButton placket&lt;br&gt;\r\n1 patch pocket&lt;br&gt;\r\nLong regular sleeves&lt;br&gt;\r\nCurved hem&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nBrand Fit: Classic&lt;br&gt;\r\nFit: Regular Fit&lt;br&gt;\r\nThe model (height 6\\&#039;) is wearing a size 40&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n100% Cotton&lt;br&gt;\r\nMachine Wash&lt;br&gt;', 1, '2023-08-02 16:56:42'),
(60, 5, 9, 'Vertical Striped Slim Fit Opaque Cotton Casual Shirt', 'RARE RABBIT', 'Spread collar&lt;br&gt;\r\nButton placket&lt;br&gt;\r\n1 patch pocket&lt;br&gt;\r\nLong regular sleeves&lt;br&gt;\r\nCurved hem&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nFit: Slim Fit&lt;br&gt;\r\nThe model (height 6\\&#039;) is wearing a size 40&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nCotton &lt;br&gt;\r\nHand Wash&lt;br&gt;', 1, '2023-08-02 16:57:11'),
(61, 5, 9, 'Men Pure Cotton Slim Fit Opaque Checked Casual Shirt', 'WROGN', 'Blue checked opaque casual shirt&lt;br&gt;\r\nSpread collar&lt;br&gt;\r\nButton placket&lt;br&gt;\r\n1 patch pocket&lt;br&gt;\r\nLong regular sleeves&lt;br&gt;\r\nCurved hem&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nSlim Fit&lt;br&gt;\r\nSize worn by the model: M&lt;br&gt;\r\nChest: 40\\&quot;&lt;br&gt;\r\nHeight: 6\\&#039;1\\&quot;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n100% Cotton&lt;br&gt;\r\nMachine Wash&lt;br&gt;', 1, '2023-08-02 16:57:37'),
(62, 6, 12, 'Women Cream-Coloured Printed Cotton Oversized Pure Cotton T-shirt', 'DILLINGER', 'Cream-coloured T-shirt&lt;br&gt;\r\nGraphic printed&lt;br&gt;\r\nLongline length&lt;br&gt;\r\nRound neck&lt;br&gt;\r\nShort, regular sleeves&lt;br&gt;\r\nKnitted cotton fabric&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nLoose&lt;br&gt;\r\nThe model (height 5\\&#039;8) is wearing a size S&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n100% Cotton&lt;br&gt;\r\nMachine wash&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-02 17:07:02'),
(63, 6, 12, 'Women Red & White Typography Printed Pure Cotton Oversized T-shirt', 'DILLINGER', 'Red and white Tshirt for women&lt;br&gt;\r\nTypography printed&lt;br&gt;\r\nLongline length&lt;br&gt;\r\nRound neck&lt;br&gt;\r\nShort, regular sleeves&lt;br&gt;\r\nKnitted pure cotton fabric&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nOversized&lt;br&gt;\r\nSize worn by the model: S&lt;br&gt;\r\nChest: 32\\&quot;&lt;br&gt;\r\nHeight: 5\\&#039;8\\&quot;&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n100% Cotton&lt;br&gt;\r\nMachine wash&lt;br&gt;', 1, '2023-08-02 17:07:35'),
(64, 6, 12, 'Women Black Printed Loose Pure Cotton T-shirt', 'DILLINGER', 'Black Tshirt for women&lt;br&gt;\r\nGraphic printed&lt;br&gt;\r\nRegular length&lt;br&gt;\r\nRound neck&lt;br&gt;\r\nShort, regular sleeves&lt;br&gt;\r\nKnitted cotton fabric&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nLoose&lt;br&gt;\r\nThe model (height 5\\&#039;8) is wearing a size S&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\n100 % Cotton&lt;br&gt;\r\nMachine wash&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-02 17:08:02'),
(65, 6, 12, 'Women Black Conversational Printed Pure Cotton Oversized T-shirt', 'Difference of Opinion', 'Black and grey Tshirt for women&lt;br&gt;\r\nConversational printed&lt;br&gt;\r\nLongline length&lt;br&gt;\r\nRound neck&lt;br&gt;\r\nShort, regular sleeves&lt;br&gt;\r\nKnitted pure cotton fabric&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nLoose&lt;br&gt;\r\nThe model (height 5\\&#039;8) is wearing a size S&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nPure cotton&lt;br&gt;\r\nMachine wash&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;br&gt;', 1, '2023-08-02 17:08:38'),
(66, 6, 12, 'Women Blue & White Ombre-Dyed Round Neck T-shirt', 'Harvard', 'Blue and white dyed T-shirt&lt;br&gt;\r\nRound neck, short sleeves&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nThe model (height 5\\&#039;8\\&quot;) is wearing a size S&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nCotton&lt;br&gt;\r\nMachine-wash&lt;br&gt;', 1, '2023-08-02 17:09:26'),
(67, 6, 12, 'Women Teal Blue Solid Round Neck T-shirt', 'Harvard', '&lt;br&gt;\r\nTeal blue solid T-shirt, has a round neck, and short sleeves&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Size &amp; Fit&lt;/b&gt;&lt;br&gt;\r\nThe model (height 5\\&#039;8\\&quot;) is wearing a size S&lt;br&gt;\r\n&lt;br&gt;\r\n&lt;b&gt;Material &amp; Care&lt;/b&gt;&lt;br&gt;\r\nCotton and viscose rayon blend&lt;br&gt;\r\nMachine-wash&lt;br&gt;', 1, '2023-08-02 17:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `total_amount` double NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `order_id`, `total_amount`, `date_created`) VALUES
(1, 3, 8500, '2021-07-16 11:18:12'),
(4, 6, 675, '2023-08-02 17:58:47'),
(6, 8, 2156, '2023-08-04 00:25:02'),
(7, 9, 1484, '2023-08-05 10:01:41'),
(8, 10, 1436, '2023-08-05 10:02:38'),
(9, 11, 2998, '2023-08-06 19:49:48'),
(10, 12, 3721, '2023-08-06 19:51:48'),
(11, 13, 1325, '2023-08-06 19:55:46'),
(12, 14, 1500, '2023-08-06 19:57:36'),
(13, 15, 865, '2023-08-06 20:03:31'),
(14, 16, 567, '2023-08-06 20:10:31'),
(15, 17, 3214, '2023-08-06 20:13:26'),
(16, 18, 560, '2023-08-06 22:53:58'),
(17, 19, 549, '2023-08-11 19:21:01'),
(18, 20, 935, '2023-08-11 19:24:12'),
(19, 21, 1000, '2023-08-11 19:35:17'),
(20, 22, 3286, '2023-08-11 19:47:54'),
(21, 23, 1000, '2023-08-20 14:48:29'),
(22, 24, 549, '2023-08-20 16:26:05'),
(23, 33, 748, '2023-08-20 16:50:56'),
(24, 40, 600, '2023-08-20 18:02:31'),
(25, 42, 549, '2023-08-20 18:06:17'),
(26, 43, 700, '2023-08-20 18:09:53'),
(27, 44, 567, '2023-08-20 18:15:11'),
(28, 45, 635, '2023-08-20 18:15:50'),
(29, 46, 635, '2023-08-20 18:16:03'),
(30, 47, 545, '2023-08-20 18:18:12'),
(31, 50, 748, '2023-08-20 18:33:21');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(30) NOT NULL,
  `parent_id` int(30) NOT NULL,
  `sub_category` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `parent_id`, `sub_category`, `description`, `status`, `date_created`) VALUES
(1, 1, 'Programming', '&lt;p&gt;Sample Sub Category&lt;/p&gt;', 1, '2021-07-16 09:10:44'),
(2, 1, 'Grammar', '&lt;p&gt;Sample Sub 102&lt;/p&gt;', 1, '2021-07-16 09:11:05'),
(3, 2, 'Literary', '&lt;p&gt;Sample Sub 103&lt;/p&gt;', 1, '2021-07-16 09:11:36'),
(4, 5, 'T-shirts', '', 1, '2021-07-16 09:12:51'),
(5, 3, 'Fantasy', '&lt;p&gt;Sample Sub 105&lt;/p&gt;', 1, '2021-07-16 09:13:28'),
(6, 3, 'Action and Adventure', '&lt;p&gt;Sample Sub 106&lt;/p&gt;', 1, '2021-07-16 09:13:49'),
(7, 4, 'Sub Cat 101', '&lt;p&gt;Sample Sub 107&lt;/p&gt;', 1, '2021-07-16 11:34:22'),
(8, 5, 'Jeans', '', 1, '2023-07-31 18:39:13'),
(9, 5, 'Casual Shirts', '', 1, '2023-07-31 18:40:05'),
(10, 5, 'Casual Shoes', '', 1, '2023-07-31 18:40:31'),
(11, 6, 'Tops', '', 1, '2023-07-31 18:40:47'),
(12, 6, 'Tshirts', '', 1, '2023-07-31 18:42:02'),
(13, 6, 'Denim Jeans', '', 1, '2023-07-31 18:43:40'),
(14, 6, 'Shoes', '', 1, '2023-07-31 18:43:51');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Online Shopping'),
(6, 'short_name', 'Apparels'),
(11, 'logo', 'uploads/1626397500_book_logo.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1626397620_books.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07'),
(4, 'John', 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', NULL, NULL, 0, '2021-06-19 08:36:09', '2021-06-19 10:53:12'),
(5, 'Claire', 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', NULL, NULL, 0, '2021-06-19 10:01:51', '2021-06-19 12:03:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
