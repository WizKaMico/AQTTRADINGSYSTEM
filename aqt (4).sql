-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2023 at 07:12 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aqt`
--

-- --------------------------------------------------------

--
-- Table structure for table `auto_mail_history`
--

CREATE TABLE `auto_mail_history` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `date_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auto_mail_history`
--

INSERT INTO `auto_mail_history` (`id`, `email`, `status`, `date_time`) VALUES
(1, 'TRICORE012@GMAIL.COM', 'SEND', '2022-12-20'),
(2, 'abbygailsevilla@gmail.com', 'SEND', '2022-12-20'),
(3, 'manzonmarkjerwin@gmail.com', 'SEND', '2022-12-20'),
(4, 'jerwin0521@gmail.com', 'SEND', '2022-12-20'),
(5, 'TRICORE012@GMAIL.COM', 'SEND', '2022-12-20'),
(6, 'abbygailsevilla@gmail.com', 'SEND', '2022-12-20'),
(7, 'manzonmarkjerwin@gmail.com', 'SEND', '2022-12-20'),
(8, 'jerwin0521@gmail.com', 'SEND', '2022-12-20');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `user_id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `province` varchar(250) NOT NULL,
  `code` int(50) NOT NULL,
  `status` varchar(250) NOT NULL,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`user_id`, `email`, `password`, `name`, `address`, `city`, `province`, `code`, `status`, `date_created`) VALUES
(1, 'tricore012@gmail.com', 'baff8366006e6317ee48cd8a29056c8e', 'Gerald Mico ', '10 U206', 'Cuyapo', 'Nueva Ecija', 93760, 'VALID', '2022-12-19');

-- --------------------------------------------------------

--
-- Table structure for table `delete_history`
--

CREATE TABLE `delete_history` (
  `id` int(11) NOT NULL,
  `sku` varchar(250) NOT NULL,
  `product_name` text NOT NULL,
  `price` int(100) NOT NULL,
  `qty` int(100) NOT NULL,
  `photo` text NOT NULL,
  `date_created` date NOT NULL,
  `deleted_by` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delete_history`
--

INSERT INTO `delete_history` (`id`, `sku`, `product_name`, `price`, `qty`, `photo`, `date_created`, `deleted_by`) VALUES
(1, '769601', 'Rite n Lite Beverage Juice 250ml', 250, 900, '', '2022-09-09', 1),
(2, '695484', 'Rite n Lite Beverage Juice 450ml', 500, 200, '', '2022-09-09', 1),
(3, '889790', 'Rite n Lite Beverage Juice 500ml', 30, 100, '', '2022-09-09', 1),
(4, '743987', 'Rite n Lite Beverage Juice 750ml', 50, 20, '', '2022-09-17', 1),
(5, '668619', 'Rite n Lite Beverage Juice 350ml', 100, 50, '', '2022-09-07', 1),
(6, '668619', 'Rite n Lite Beverage Juice 350ml', 100, 50, '', '2022-09-07', 1),
(7, '695484', 'Rite n Lite Beverage Juice 450ml', 500, 200, '', '2022-09-09', 1),
(8, '934529', 'Rite n Lite HotDog Juice 250ml', 250, 500, '', '2022-09-09', 3);

-- --------------------------------------------------------

--
-- Table structure for table `email_security`
--

CREATE TABLE `email_security` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` int(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `date_attemp` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_security`
--

INSERT INTO `email_security` (`id`, `user_id`, `code`, `status`, `date_attemp`) VALUES
(1, 1, 948628, 'USED', '2022-09-07'),
(2, 1, 684427, 'USED', '2022-09-07'),
(3, 1, 789306, 'USED', '2022-09-07'),
(4, 1, 894103, 'USED', '2022-09-07'),
(5, 1, 730763, 'USED', '2022-09-07'),
(6, 1, 816975, 'USED', '2022-09-07'),
(7, 1, 966044, 'USED', '2022-09-07'),
(8, 1, 887094, 'USED', '2022-09-07'),
(9, 2, 829019, 'USED', '2022-09-07'),
(10, 1, 771015, 'USED', '2022-09-08'),
(11, 1, 795775, 'USED', '2022-09-08'),
(12, 1, 768340, 'USED', '2022-09-08'),
(13, 1, 772277, 'USED', '2022-09-09'),
(14, 1, 785491, 'USED', '2022-09-09'),
(15, 1, 959706, 'USED', '2022-09-09'),
(16, 1, 871673, 'USED', '2022-09-09'),
(17, 1, 769958, 'USED', '2022-09-09'),
(18, 1, 941395, 'USED', '2022-09-09'),
(19, 1, 698801, 'USED', '2022-09-09'),
(20, 1, 786874, 'USED', '2022-09-09'),
(21, 1, 770893, 'USED', '2022-09-17'),
(22, 1, 733326, 'USED', '2022-09-17'),
(23, 1, 742309, 'USED', '2022-09-17'),
(24, 1, 994710, 'USED', '2022-09-17'),
(25, 1, 918253, 'USED', '2022-09-17'),
(26, 1, 944091, 'USED', '2022-09-17'),
(27, 1, 729878, 'USED', '2022-09-17'),
(28, 1, 903777, 'USED', '2022-09-17'),
(29, 1, 707386, 'USED', '2022-09-17'),
(30, 1, 718912, 'USED', '2022-09-17'),
(31, 1, 919881, 'UNUSED', '2022-09-17'),
(32, 1, 755869, 'UNUSED', '2022-09-17'),
(33, 1, 875274, 'UNUSED', '2022-09-17'),
(34, 1, 790537, 'USED', '2022-09-17'),
(35, 1, 856912, 'USED', '2022-09-20'),
(36, 1, 901621, 'USED', '2022-09-20'),
(37, 1, 678913, 'USED', '2022-09-20'),
(38, 1, 808064, 'USED', '2022-09-20'),
(39, 1, 674193, 'USED', '2022-09-20'),
(40, 1, 889098, 'USED', '2022-09-21'),
(41, 1, 871113, 'USED', '2022-09-21'),
(42, 1, 877095, 'USED', '2022-09-21'),
(43, 1, 842732, 'USED', '2022-09-21'),
(44, 1, 782032, 'UNUSED', '2022-09-23'),
(45, 1, 939991, 'USED', '2022-09-27'),
(46, 3, 755544, 'USED', '2022-10-04'),
(47, 3, 880369, 'USED', '2022-10-04'),
(48, 3, 977082, 'USED', '2022-10-04'),
(49, 3, 912683, 'USED', '2022-10-13'),
(50, 3, 835128, 'USED', '2022-10-13'),
(51, 3, 716154, 'USED', '2022-10-13'),
(52, 3, 730696, 'USED', '2022-10-17'),
(53, 3, 699948, 'USED', '2022-10-17'),
(54, 3, 722034, 'USED', '2022-10-22'),
(55, 3, 825459, 'USED', '2022-11-14'),
(56, 1, 760621, 'USED', '2022-11-17'),
(57, 3, 690692, 'USED', '2022-11-17'),
(58, 3, 766339, 'USED', '2022-11-18'),
(59, 1, 887495, 'USED', '2022-11-18'),
(60, 1, 789997, 'USED', '2022-11-18'),
(61, 1, 943511, 'USED', '2022-11-18'),
(62, 1, 708566, 'USED', '2022-11-22'),
(63, 1, 940297, 'USED', '2022-11-23'),
(64, 1, 692738, 'USED', '2022-12-02'),
(65, 1, 941823, 'USED', '2022-12-02'),
(66, 1, 765380, 'USED', '2022-12-17'),
(67, 1, 705575, 'USED', '2022-12-19'),
(68, 1, 965932, 'USED', '2022-12-19'),
(69, 1, 813232, 'USED', '2022-12-19'),
(70, 1, 865813, 'UNUSED', '2022-12-20');

-- --------------------------------------------------------

--
-- Table structure for table `lazada_activation`
--

CREATE TABLE `lazada_activation` (
  `id` int(11) NOT NULL,
  `app_key` varchar(250) NOT NULL,
  `app_secret` varchar(250) NOT NULL,
  `user_token` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lazada_activation`
--

INSERT INTO `lazada_activation` (`id`, `app_key`, `app_secret`, `user_token`) VALUES
(1, '112362', 'ul1KggPKX9ket383dlQwmBhfxKZ3w4o6', '50000600518Vt5dqMkUAoHvVmqeg4l1c6733fcWGkUExqhZEBw6rywFHIr2eoNYD');

-- --------------------------------------------------------

--
-- Table structure for table `lazada_login`
--

CREATE TABLE `lazada_login` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lazada_login`
--

INSERT INTO `lazada_login` (`id`, `email`, `password`) VALUES
(1, 'LzdOp_PH_test@163.com', '@Light101213');

-- --------------------------------------------------------

--
-- Table structure for table `lazada_offline_product`
--

CREATE TABLE `lazada_offline_product` (
  `id` int(11) NOT NULL,
  `sku` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` int(60) NOT NULL,
  `qty` int(60) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lazada_offline_product`
--

INSERT INTO `lazada_offline_product` (`id`, `sku`, `name`, `price`, `qty`, `photo`) VALUES
(1, '3267878885', 'POCO C40 Global Version (3+32GB)', 250, 50, 'https://ph-live.slatic.net/p/036443b31ab9b5d6f375083bd648e4fe.jpg'),
(2, '3268001192', 'POCO M4 PRO Global Version (6+128GB)', 0, 0, 'https://ph-live.slatic.net/p/779b193883f78f866626b677a41fd170.jpg'),
(3, '3240047037', 'Samsung Galaxy M12 (4+64GB)', 0, 0, 'https://ph-live.slatic.net/p/3ecbe9b9c8d289c2d869f34a47e473ca.jpg'),
(4, '3232324459', 'PerySmith Stand Mixer EasyCooking Series PS5500 5.5L 1200W', 0, 0, 'https://ph-live.slatic.net/p/aee5927941b552ce95107bb14cfbe9be.jpg'),
(5, '3232296429', 'HAN RIVER Air Fryer 3.5L', 0, 0, 'https://ph-live.slatic.net/p/2c990d8790428d4184ae5e4e73d3827f.jpg'),
(6, '2353892350', 'Rite ‘n Lite+ Plus Assorted Flavors Soda 250ml 1 Case (24pcs)', 0, 0, 'https://ph-live.slatic.net/p/7af13dc71b0f17c68d14b26001162cee.jpg'),
(7, '2060548631', 'Rite ‘n Lite Custom Flavors Case 250ml 1 Case (24pcs)', 0, 0, 'https://ph-live.slatic.net/p/9a9bc28f8784eb0079ad9362fde98c2d.jpg'),
(8, '2059649820', 'Rite ‘n Lite Assorted Family Pack 250ml 1 Case (24pcs)', 0, 0, 'https://ph-live.slatic.net/p/4cf78b38d34ee02b7b310581774aecac.jpg'),
(9, '1918893900', 'Rite ‘n Lite Plus+ Green Apple + Tea Soda Value Pack 250ml (16pcs)', 0, 0, 'https://ph-live.slatic.net/p/98fee78e7de1492885e13fda5ea53636.jpg'),
(10, '1830258254', 'Otap big - Biscuits in tub 3L', 0, 0, 'https://ph-live.slatic.net/p/07229a32c5718fc52a9f2a07609307ed.jpg'),
(11, '1830296103', 'Iced Gems - Biscuits in tub 2L', 0, 0, 'https://ph-live.slatic.net/p/5a901105255b17dd4f23f94a6d1b6c33.jpg'),
(12, '1826370200', 'Puto Seko - Biscuits in tub 2L', 0, 0, 'https://ph-live.slatic.net/p/08e109c72cc7abc2c9ac232d24a74a47.jpg'),
(13, '1826365216', 'Pilipit Biscuits - Biscuits in tub 3L', 0, 0, 'https://ph-live.slatic.net/p/43bd53ad69de2433f8282ca87fcbe944.jpg'),
(14, '1826358237', 'Mamon Tostado Biscuits - Biscuits in tub 2L', 0, 0, 'https://ph-live.slatic.net/p/3385750c56e78aa45f123e0b80a07e2e.jpg'),
(15, '1826259744', 'Egg Cracklets - Biscuits in tub 3L', 0, 0, 'https://ph-live.slatic.net/p/40e62472478fc8d1712ce6f36a978318.jpg'),
(16, '1826395015', 'Buttered Toast - Biscuits in tub 3L', 0, 0, 'https://ph-live.slatic.net/p/88cb3816ee5905c8cb29f39f59aebc3b.jpg'),
(17, '1826323352', 'Butter Cookies Biscuits - Biscuits in tub 2.5L', 0, 0, 'https://ph-live.slatic.net/p/113cffbe00c2e94a15f7ef1ee20d6fc5.jpg'),
(18, '1709666713', 'AQT High Quality Clear Packaging Tape 2 Inches x 200m (2\"x200m)', 0, 0, 'https://ph-live.slatic.net/p/7d20fa4d165837ad293f8bec6b836d25.jpg'),
(19, '1392774709', 'Rite ‘n Lite Special Pack', 0, 0, 'https://ph-live.slatic.net/p/55c3cdfb925128b76ceb1aa64924be0b.jpg'),
(20, '1304714295', 'Rite ‘n Lite Peach 250ml', 0, 0, 'https://ph-live.slatic.net/p/f7847b56050346598cfdeccf2df56165.jpg'),
(21, '1304670783', 'Rite ‘n Lite Root Beer 250ml', 0, 0, 'https://ph-live.slatic.net/p/1a453319647654828dd860cd0cc29e94.jpg'),
(22, '1304678321', 'Rite ‘n Lite Cucumber 250ml', 0, 0, 'https://ph-live.slatic.net/p/214e249f2ed59b998ea0578b63f40c2c.jpg'),
(23, '1304626079', 'Rite ‘n Lite Orange 250ml', 0, 0, 'https://ph-live.slatic.net/p/a03bd8db8da81ece98dd6f51f4cea449.jpg'),
(24, '1304548605', 'Rite ‘n Lite Lemon-Lime 250ml', 0, 0, 'https://ph-live.slatic.net/p/ce9e2eb950baa5ef91e06bde1038aaa7.jpg'),
(25, '1304560163', 'Rite ‘n Lite Lemon 250ml', 0, 0, 'https://ph-live.slatic.net/p/e14f04686a64fd9a2d8f3facb790018d.jpg'),
(26, '1276556510', 'Rite ‘n Lite Plus+ Calamansi + Ginger + Honey Soda 250ml', 0, 0, 'https://ph-live.slatic.net/p/3328c77baaad6adbf59741b88b95d37a.jpg'),
(27, '1276536579', 'Rite ‘n Lite Plus+ Green Apple + Tea Soda 250ml', 0, 0, 'https://ph-live.slatic.net/p/0ade11d6c5333ac986b46586bcdf6cd5.jpg'),
(28, '1276542196', 'Rite ‘n Lite Plus+ Lychee + Rose Soda 250ml', 0, 0, 'https://ph-live.slatic.net/p/44049f39f7dffd609622e57aa38b3409.jpg'),
(29, '1241986090', 'Rite ‘n Lite Assorted Flavor Soda 250ml 1 Case (24pcs)', 0, 0, 'https://ph-live.slatic.net/p/0d197760ec2561eedf3697a656c444cf.jpg'),
(30, '1093204494', 'Rite ‘n Lite Peach Soda 250ml x 24 (1 Case)', 0, 0, 'https://ph-live.slatic.net/p/331958bcd3ea068e9dabea7879080d55.jpg'),
(31, '1093212368', 'Rite ‘n Lite Orange Soda 250ml x 24 (1 Case)', 0, 0, 'https://ph-live.slatic.net/p/377d252361f53857c5caa12537d3870b.jpg'),
(32, '1093186467', 'Rite ‘n Lite Cucumber Soda 250ml x 24 (1 Case)', 0, 0, 'https://ph-live.slatic.net/p/139c96621ba4205acb8e5b7558e0dd2a.jpg'),
(33, '1092824598', 'Rite ‘n Lite Root Beer Soda 250ml x 24 (1 Case)', 0, 0, 'https://ph-live.slatic.net/p/53d533348ecc56024ed70c17521dab41.jpg'),
(34, '1092638306', 'Rite ï¿½n Lite Lemon-Lime Soda 250ml x 24 (1 Case)', 250, 50, 'https://ph-live.slatic.net/p/cc7d76103e4c24e84290f36b47b7f10b.jpg'),
(35, '1092608551', 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (1 Case)', 250, 20, 'https://ph-live.slatic.net/p/1dda56c86a06fb21f02553babb67fbb8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `lazada_product_update_history`
--

CREATE TABLE `lazada_product_update_history` (
  `id` int(11) NOT NULL,
  `prod_id` int(10) NOT NULL,
  `old_name` text NOT NULL,
  `new_name` text NOT NULL,
  `old_price` int(50) NOT NULL,
  `new_price` int(50) NOT NULL,
  `old_qty` int(50) NOT NULL,
  `new_qty` int(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `overall` varchar(60) NOT NULL,
  `date_updated` date NOT NULL,
  `updated_by` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lazada_product_update_history`
--

INSERT INTO `lazada_product_update_history` (`id`, `prod_id`, `old_name`, `new_name`, `old_price`, `new_price`, `old_qty`, `new_qty`, `type`, `overall`, `date_updated`, `updated_by`) VALUES
(7, 35, 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (1 Case)', 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (1 Case)', 0, 250, 0, 50, 'RESTOCK', '50', '2022-11-23', 0),
(8, 34, 'Rite ï¿½n Lite Lemon-Lime Soda 250ml x 24 (1 Case)', 'Rite ï¿½n Lite Lemon-Lime Soda 250ml x 24 (1 Case)', 0, 250, 0, 50, 'RESTOCK', '50', '2022-11-23', 0),
(9, 35, 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (1 Case)', 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (1 Case)', 250, 250, 50, 20, 'SOLD', '30', '2022-11-23', 0),
(10, 35, 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (1 Case)', 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (1 Case)', 250, 250, 30, 10, 'SOLD', '20', '2022-11-23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `photo_history`
--

CREATE TABLE `photo_history` (
  `id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `previous` text NOT NULL,
  `replaced_by` text NOT NULL,
  `updated_by` int(10) NOT NULL,
  `date_updated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_store`
--

CREATE TABLE `product_store` (
  `pwid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `wid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_store`
--

INSERT INTO `product_store` (`pwid`, `pid`, `wid`) VALUES
(1, 3, 1),
(2, 4, 1),
(3, 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_update_history`
--

CREATE TABLE `product_update_history` (
  `id` int(11) NOT NULL,
  `prod_id` int(10) NOT NULL,
  `old_name` text NOT NULL,
  `new_name` text NOT NULL,
  `old_price` int(50) NOT NULL,
  `new_price` int(50) NOT NULL,
  `old_qty` int(50) NOT NULL,
  `new_qty` int(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `overall` varchar(60) NOT NULL,
  `date_updated` date NOT NULL,
  `updated_by` int(10) NOT NULL,
  `expiration_date` date NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_update_history`
--

INSERT INTO `product_update_history` (`id`, `prod_id`, `old_name`, `new_name`, `old_price`, `new_price`, `old_qty`, `new_qty`, `type`, `overall`, `date_updated`, `updated_by`, `expiration_date`, `description`) VALUES
(1, 1, 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (1 Case)', 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (1 Case)', 500, 550, 250, 250, 'PRICE INCREASE', '0', '2022-11-23', 1, '0000-00-00', ''),
(2, 1, 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (1 Case)', 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (1 Case)', 550, 500, 250, 250, 'PRICE DECREASE', '0', '2022-11-23', 1, '0000-00-00', ''),
(3, 1, 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (1 Case)', 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (1 Case)', 500, 500, 250, 300, 'RESTOCK', '550', '2022-11-23', 1, '0000-00-00', ''),
(4, 1, 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (1 Case)', 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (1 Case)', 500, 500, 550, 550, 'SOLD', '0', '2022-11-23', 1, '0000-00-00', ''),
(5, 1, 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (1 Case)', 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (1 Case)', 500, 500, 0, 50, 'RESTOCK', '50', '2022-11-23', 1, '0000-00-00', ''),
(6, 1, 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (1 Case)', 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (1 Case)', 500, 500, 50, 45, 'SOLD', '5', '2022-11-23', 1, '0000-00-00', ''),
(7, 1, 'POCO C40 Global Version (3+32GB)', 'POCO C40 Global Version (3+32GB)', 0, 250, 0, 50, 'RESTOCK', '50', '2022-11-23', 0, '0000-00-00', ''),
(8, 3, 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (2 Case)', 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (2 Case)', 150, 150, 250, 150, 'SOLD', '100', '2022-11-23', 1, '0000-00-00', ''),
(9, 3, 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (2 Case)', 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (2 Case)', 150, 150, 100, 100, 'RESTOCK', '200', '2022-12-02', 1, '0000-00-00', ''),
(10, 3, 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (2 Case)', 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (2 Case)', 150, 150, 200, 25, 'SOLD', '175', '2022-12-17', 1, '0000-00-00', ''),
(11, 3, 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (2 Case)', 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (2 Case)', 150, 150, 175, 175, 'SOLD', '0', '2022-12-17', 1, '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `shopee_activation`
--

CREATE TABLE `shopee_activation` (
  `id` int(11) NOT NULL,
  `shop_id` text NOT NULL,
  `access_token` text NOT NULL,
  `credential` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopee_activation`
--

INSERT INTO `shopee_activation` (`id`, `shop_id`, `access_token`, `credential`) VALUES
(1, '63644', '5969616968485767784b624a4f57794e', 'SHOP_INFO');

-- --------------------------------------------------------

--
-- Table structure for table `shopee_category`
--

CREATE TABLE `shopee_category` (
  `scid` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_id` int(100) NOT NULL,
  `category_pre_order_dts` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopee_category`
--

INSERT INTO `shopee_category` (`scid`, `category_name`, `category_id`, `category_pre_order_dts`) VALUES
(1, '100008 - Health/Others', 100008, '7 - 30'),
(2, '100021 - Fashion Accessories/Rings', 100021, '7 - 30'),
(3, '100022 - Fashion Accessories/Earrings', 100022, '7 - 30'),
(4, '100023 - Fashion Accessories/Scarves & Shawls', 100023, '7 - 30'),
(5, '100024 - Fashion Accessories/Gloves', 100024, '7 - 30'),
(6, '100026 - Fashion Accessories/Bracelets & Bangles', 100026, '7 - 30'),
(7, '100027 - Fashion Accessories/Anklets', 100027, '7 - 30'),
(8, '100028 - Fashion Accessories/Hats & Caps', 100028, '7 - 30'),
(9, '100029 - Fashion Accessories/Necklaces', 100029, '7 - 30'),
(10, '100032 - Fashion Accessories/Belts', 100032, '7 - 30'),
(11, '100033 - Fashion Accessories/Neckties, Bow Ties & Cravats', 100033, '7 - 30'),
(12, '100035 - Fashion Accessories/Accessories Sets & Packages', 100035, '7 - 30'),
(13, '100036 - Fashion Accessories/Others', 100036, '7 - 30'),
(14, '100043 - Home Appliances/Batteries', 100043, '7 - 30'),
(15, '100045 - Home Appliances/Remote Controls', 100045, '7 - 30'),
(16, '100046 - Home Appliances/Others', 100046, '7 - 30'),
(17, '100047 - Men Clothes/Jeans', 100047, '7 - 30'),
(18, '100049 - Men Clothes/Sweaters & Cardigans', 100049, '7 - 30'),
(19, '100053 - Men Clothes/Shorts', 100053, '7 - 30'),
(20, '100056 - Men Clothes/Sleepwear', 100056, '7 - 30'),
(21, '100057 - Men Clothes/Sets', 100057, '7 - 30'),
(22, '100059 - Men Clothes/Costumes', 100059, '7 - 30'),
(23, '100060 - Men Clothes/Occupational Attire', 100060, '7 - 30'),
(24, '100061 - Men Clothes/Others', 100061, '7 - 30'),
(25, '100062 - Men Clothes/Socks', 100062, '7 - 30'),
(26, '100064 - Men Shoes/Sneakers', 100064, '7 - 30'),
(27, '100065 - Men Shoes/Slip Ons & Mules', 100065, '7 - 30'),
(28, '100066 - Men Shoes/Loafers & Boat Shoes', 100066, '7 - 30'),
(29, '100067 - Men Shoes/Oxfords & Lace-Ups', 100067, '7 - 30'),
(30, '100070 - Men Shoes/Others', 100070, '7 - 30'),
(31, '100071 - Mobile & Gadgets/Sim Cards', 100071, '7 - 30'),
(32, '100072 - Mobile & Gadgets/Tablets', 100072, '7 - 30'),
(33, '100073 - Mobile & Gadgets/Mobile Phones', 100073, '7 - 30'),
(34, '100076 - Mobile & Gadgets/Walkie Talkies', 100076, '7 - 30'),
(35, '100077 - Mobile & Gadgets/Others', 100077, '7 - 30'),
(36, '100083 - Muslim Fashion/Sets', 100083, '7 - 30'),
(37, '100084 - Muslim Fashion/Others', 100084, '7 - 30'),
(38, '100085 - Travel & Luggage/Luggage', 100085, '7 - 30'),
(39, '100088 - Travel & Luggage/Others', 100088, '7 - 30'),
(40, '100089 - Women Bags/Backpacks', 100089, '7 - 30'),
(41, '100091 - Women Bags/Clutches & Wristlets', 100091, '7 - 30'),
(42, '100092 - Women Bags/Waist Bags & Chest Bags', 100092, '7 - 30'),
(43, '100093 - Women Bags/Tote Bags', 100093, '7 - 30'),
(44, '100094 - Women Bags/Top-handle Bags', 100094, '7 - 30'),
(45, '100095 - Women Bags/Crossbody & Shoulder Bags', 100095, '7 - 30'),
(46, '100098 - Women Bags/Others', 100098, '7 - 30'),
(47, '100102 - Women Clothes/Skirts', 100102, '7 - 30'),
(48, '100103 - Women Clothes/Jeans', 100103, '7 - 30'),
(49, '100104 - Women Clothes/Dresses', 100104, '7 - 30'),
(50, '100105 - Women Clothes/Wedding Dresses', 100105, '7 - 30'),
(51, '100108 - Women Clothes/Sweaters & Cardigans', 100108, '7 - 30'),
(52, '100115 - Women Clothes/Costumes', 100115, '7 - 30'),
(53, '100116 - Women Clothes/Others', 100116, '7 - 30'),
(54, '100557 - Women Shoes/Sneakers', 100557, '7 - 30'),
(55, '100559 - Women Shoes/Heels', 100559, '7 - 30'),
(56, '100560 - Women Shoes/Wedges', 100560, '7 - 30'),
(57, '100563 - Women Shoes/Others', 100563, '7 - 30'),
(58, '100564 - Men Bags/Backpacks', 100564, '7 - 30'),
(59, '100566 - Men Bags/Tote Bags', 100566, '7 - 30'),
(60, '100567 - Men Bags/Briefcases', 100567, '7 - 30'),
(61, '100568 - Men Bags/Clutches', 100568, '7 - 30'),
(62, '100569 - Men Bags/Waist Bags & Chest Bags', 100569, '7 - 30'),
(63, '100570 - Men Bags/Crossbody & Shoulder Bags', 100570, '7 - 30'),
(64, '100572 - Men Bags/Others', 100572, '7 - 30'),
(65, '100573 - Watches/Women Watches', 100573, '7 - 30'),
(66, '100574 - Watches/Men Watches', 100574, '7 - 30'),
(67, '100575 - Watches/Set & Couple Watches', 100575, '7 - 30'),
(68, '100577 - Watches/Others', 100577, '7 - 30'),
(69, '100578 - Audio/Earphones, Headphones & Headsets', 100578, '7 - 30'),
(70, '100580 - Audio/Microphones', 100580, '7 - 30'),
(71, '100581 - Audio/Amplifiers & Mixers', 100581, '7 - 30'),
(72, '100583 - Audio/Audio & Video Cables & Converters', 100583, '7 - 30'),
(73, '100584 - Audio/Others', 100584, '7 - 30'),
(74, '100656 - Food & Beverage/Gift Set & Hampers', 100656, '7 - 30'),
(75, '100657 - Food & Beverage/Others', 100657, '7 - 30'),
(76, '100661 - Beauty/Perfumes & Fragrances', 100661, '7 - 30'),
(77, '100665 - Beauty/Beauty Sets & Packages', 100665, '7 - 30'),
(78, '100666 - Beauty/Others', 100666, '7 - 30'),
(79, '100673 - Pets/Others', 100673, '7 - 30'),
(80, '100685 - Mom & Baby/Gift Sets & Packages', 100685, '7 - 30'),
(81, '100686 - Mom & Baby/Others', 100686, '7 - 30'),
(82, '100688 - Baby & Kids Fashion/Baby Mittens & Footwear', 100688, '7 - 30'),
(83, '100694 - Baby & Kids Fashion/Others', 100694, '7 - 30'),
(84, '100696 - Gaming & Consoles/Console Accessories', 100696, '7 - 30'),
(85, '100698 - Gaming & Consoles/Others', 100698, '7 - 30'),
(86, '100701 - Cameras & Drones/Lenses', 100701, '7 - 30'),
(87, '100705 - Cameras & Drones/Drones', 100705, '7 - 30'),
(88, '100706 - Cameras & Drones/Drone Accessories', 100706, '7 - 30'),
(89, '100707 - Cameras & Drones/Others', 100707, '7 - 30'),
(90, '100712 - Home & Living/Hand Warmers, Hot Water Bags & Ice Bags', 100712, '7 - 30'),
(91, '100719 - Home & Living/Lighting', 100719, '7 - 30'),
(92, '100723 - Home & Living/Fengshui & Religious Supplies', 100723, '7 - 30'),
(93, '100724 - Home & Living/Others', 100724, '7 - 30'),
(94, '100729 - Sports & Outdoors/Others', 100729, '7 - 30'),
(95, '100736 - Stationery/Others', 100736, '7 - 30'),
(96, '100740 - Hobbies & Collections/CD, DVD & Bluray', 100740, '7 - 30'),
(97, '100742 - Hobbies & Collections/Vinyl Records', 100742, '7 - 30'),
(98, '100743 - Hobbies & Collections/Photo Albums', 100743, '7 - 30'),
(99, '100744 - Hobbies & Collections/Needlework', 100744, '7 - 30'),
(100, '100745 - Hobbies & Collections/Others', 100745, '7 - 30'),
(101, '100753 - Automobiles/Automotive Keychains & Key Covers', 100753, '7 - 30'),
(102, '100754 - Automobiles/Others', 100754, '7 - 30'),
(103, '100755 - Motorcycles/Motorcycles', 100755, '7 - 30'),
(104, '100758 - Motorcycles/Motorcycle Helmets & Accessories', 100758, '7 - 30'),
(105, '100759 - Motorcycles/Others', 100759, '7 - 30'),
(106, '100763 - Tickets, Vouchers & Services/Utilities', 100763, '7 - 30'),
(107, '100766 - Tickets, Vouchers & Services/Transport', 100766, '7 - 30'),
(108, '100767 - Tickets, Vouchers & Services/Lessons & Workshops', 100767, '7 - 30'),
(109, '100770 - Tickets, Vouchers & Services/E-Money', 100770, '7 - 30'),
(110, '100771 - Tickets, Vouchers & Services/Real Estate', 100771, '7 - 30'),
(111, '100772 - Tickets, Vouchers & Services/Gaming & App Stores', 100772, '7 - 30'),
(112, '100773 - Tickets, Vouchers & Services/Streaming', 100773, '7 - 30'),
(113, '100775 - Tickets, Vouchers & Services/Others', 100775, '7 - 30'),
(114, '100778 - Books & Magazines/E-Books', 100778, '7 - 30'),
(115, '100779 - Books & Magazines/Others', 100779, '7 - 30'),
(116, '101933 - Computers & Accessories/Monitors', 101933, '7 - 30'),
(117, '101937 - Computers & Accessories/Softwares', 101937, '7 - 30'),
(118, '101942 - Computers & Accessories/Laptops', 101942, '7 - 30'),
(119, '101943 - Computers & Accessories/Others', 101943, '7 - 30'),
(120, '100003 - Health/Food Supplement/Weight Management', 100003, '7 - 30'),
(121, '100004 - Health/Food Supplement/Beauty Supplements', 100004, '7 - 30'),
(122, '100005 - Health/Food Supplement/Fitness', 100005, '7 - 30'),
(123, '100006 - Health/Food Supplement/Well Being', 100006, '7 - 30'),
(124, '100007 - Health/Food Supplement/Others', 100007, '7 - 30'),
(125, '100119 - Health/Medical Supplies/Over-the-counter Medicine', 100119, '7 - 30'),
(126, '100120 - Health/Medical Supplies/Traditional Medicine', 100120, '7 - 30'),
(127, '100122 - Health/Medical Supplies/Scale & Body Fat Analyzers', 100122, '7 - 30'),
(128, '100123 - Health/Medical Supplies/Nasal Care', 100123, '7 - 30'),
(129, '100125 - Health/Medical Supplies/Stethoscopes', 100125, '7 - 30'),
(130, '100126 - Health/Medical Supplies/Pain Relievers', 100126, '7 - 30'),
(131, '100127 - Health/Medical Supplies/Laboratory Tools', 100127, '7 - 30'),
(132, '100128 - Health/Medical Supplies/Medical Gloves & Masks', 100128, '7 - 30'),
(133, '100130 - Health/Medical Supplies/Others', 100130, '7 - 30'),
(134, '100131 - Health/Personal Care/Hand Sanitizers', 100131, '7 - 30'),
(135, '100133 - Health/Personal Care/Ear Care', 100133, '7 - 30'),
(136, '100135 - Health/Personal Care/Adult Diapers & Incontinence', 100135, '7 - 30'),
(137, '100137 - Health/Personal Care/Massage & Therapy Devices', 100137, '7 - 30'),
(138, '100138 - Health/Personal Care/Insect Repellents', 100138, '7 - 30'),
(139, '100139 - Health/Personal Care/Others', 100139, '7 - 30'),
(140, '100140 - Health/Sexual Wellness/Condoms', 100140, '7 - 30'),
(141, '100141 - Health/Sexual Wellness/Lubricants', 100141, '7 - 30'),
(142, '100142 - Health/Sexual Wellness/Sex Toys', 100142, '7 - 30'),
(143, '100143 - Health/Sexual Wellness/Performance Enhancement', 100143, '7 - 30'),
(144, '100144 - Health/Sexual Wellness/Others', 100144, '7 - 30'),
(145, '100145 - Fashion Accessories/Hair Accessories/Headbands', 100145, '7 - 30'),
(146, '100146 - Fashion Accessories/Hair Accessories/Hair Ties, Ribbons & Scrunchies', 100146, '7 - 30'),
(147, '100147 - Fashion Accessories/Hair Accessories/Hair Clips & Hair Pins', 100147, '7 - 30'),
(148, '100148 - Fashion Accessories/Hair Accessories/Wigs & Extensions', 100148, '7 - 30'),
(149, '100149 - Fashion Accessories/Hair Accessories/Headpieces, Tiaras & Flower Crowns', 100149, '7 - 30'),
(150, '100150 - Fashion Accessories/Hair Accessories/Others', 100150, '7 - 30'),
(151, '100151 - Fashion Accessories/Eyewear/Sunglasses', 100151, '7 - 30'),
(152, '100152 - Fashion Accessories/Eyewear/Frames & Glasses', 100152, '7 - 30'),
(153, '100153 - Fashion Accessories/Eyewear/Eyewear Cases & Accessories', 100153, '7 - 30'),
(154, '100154 - Fashion Accessories/Eyewear/Others', 100154, '7 - 30'),
(155, '100155 - Fashion Accessories/Investment Precious Metals/Platinum & K Gold', 100155, '7 - 30'),
(156, '100156 - Fashion Accessories/Investment Precious Metals/Silver', 100156, '7 - 30'),
(157, '100157 - Fashion Accessories/Investment Precious Metals/Diamond', 100157, '7 - 30'),
(158, '100158 - Fashion Accessories/Investment Precious Metals/Jade', 100158, '7 - 30'),
(159, '100159 - Fashion Accessories/Investment Precious Metals/Others', 100159, '7 - 30'),
(160, '100160 - Fashion Accessories/Additional Accessories/Brooches & Pins', 100160, '7 - 30'),
(161, '100161 - Fashion Accessories/Additional Accessories/Patches', 100161, '7 - 30'),
(162, '100162 - Fashion Accessories/Additional Accessories/Charms, Pendants & Ornaments', 100162, '7 - 30'),
(163, '100163 - Fashion Accessories/Additional Accessories/Cufflinks', 100163, '7 - 30'),
(164, '100164 - Fashion Accessories/Additional Accessories/Tattoos', 100164, '7 - 30'),
(165, '100165 - Fashion Accessories/Additional Accessories/Masks', 100165, '7 - 30'),
(166, '100166 - Fashion Accessories/Additional Accessories/Handkerchiefs', 100166, '7 - 30'),
(167, '100167 - Fashion Accessories/Additional Accessories/Others', 100167, '7 - 30'),
(168, '100168 - Home Appliances/Projectors & Accessories/Projectors & Projector Screens', 100168, '7 - 30'),
(169, '100169 - Home Appliances/Projectors & Accessories/Pointers', 100169, '7 - 30'),
(170, '100170 - Home Appliances/Projectors & Accessories/Others', 100170, '7 - 30'),
(171, '100171 - Home Appliances/Small Household Appliances/Foot Baths & Spas', 100171, '7 - 30'),
(172, '100172 - Home Appliances/Small Household Appliances/Water Flossers', 100172, '7 - 30'),
(173, '100173 - Home Appliances/Small Household Appliances/Sewing Machines & Accessories', 100173, '7 - 30'),
(174, '100175 - Home Appliances/Small Household Appliances/Irons & Steamers', 100175, '7 - 30'),
(175, '100177 - Home Appliances/Small Household Appliances/Vacuum Cleaners & Floor Care Appliances', 100177, '7 - 30'),
(176, '100178 - Home Appliances/Small Household Appliances/Others', 100178, '7 - 30'),
(177, '100180 - Home Appliances/Large Household Appliances/Water Heaters', 100180, '7 - 30'),
(178, '100182 - Home Appliances/Large Household Appliances/Futon & Shoe Dryers', 100182, '7 - 30'),
(179, '100183 - Home Appliances/Large Household Appliances/Heaters', 100183, '7 - 30'),
(180, '100184 - Home Appliances/Large Household Appliances/Others', 100184, '7 - 30'),
(181, '100185 - Home Appliances/TVs & Accessories/TVs', 100185, '7 - 30'),
(182, '100186 - Home Appliances/TVs & Accessories/TV Antennas', 100186, '7 - 30'),
(183, '100187 - Home Appliances/TVs & Accessories/TV Boxes & Receivers', 100187, '7 - 30'),
(184, '100188 - Home Appliances/TVs & Accessories/TV Brackets', 100188, '7 - 30'),
(185, '100189 - Home Appliances/TVs & Accessories/Others', 100189, '7 - 30'),
(186, '100190 - Home Appliances/Kitchen Appliances/Water Filters, Coolers & Dispensers', 100190, '7 - 30'),
(187, '100191 - Home Appliances/Kitchen Appliances/Kettles', 100191, '7 - 30'),
(188, '100192 - Home Appliances/Kitchen Appliances/Wine Fridges', 100192, '7 - 30'),
(189, '100193 - Home Appliances/Kitchen Appliances/Juicers, Blenders & Soya Bean Machines', 100193, '7 - 30'),
(190, '100194 - Home Appliances/Kitchen Appliances/Coffee Machines & Accessories', 100194, '7 - 30'),
(191, '100195 - Home Appliances/Kitchen Appliances/Mixers', 100195, '7 - 30'),
(192, '100196 - Home Appliances/Kitchen Appliances/Dishwashers', 100196, '7 - 30'),
(193, '100197 - Home Appliances/Kitchen Appliances/Stoves, Hobs & Gas Regulators', 100197, '7 - 30'),
(194, '100198 - Home Appliances/Kitchen Appliances/Air Fryers', 100198, '7 - 30'),
(195, '100199 - Home Appliances/Kitchen Appliances/Deep Fryers', 100199, '7 - 30'),
(196, '100200 - Home Appliances/Kitchen Appliances/Microwaves', 100200, '7 - 30'),
(197, '100201 - Home Appliances/Kitchen Appliances/Ovens', 100201, '7 - 30'),
(198, '100202 - Home Appliances/Kitchen Appliances/Toasters', 100202, '7 - 30'),
(199, '100203 - Home Appliances/Kitchen Appliances/Food Processors & Meat Grinders', 100203, '7 - 30'),
(200, '100204 - Home Appliances/Kitchen Appliances/Multi-function Cookers', 100204, '7 - 30'),
(201, '100205 - Home Appliances/Kitchen Appliances/Pressure Cookers', 100205, '7 - 30'),
(202, '100206 - Home Appliances/Kitchen Appliances/Slow Cookers & Sous Vide Machines', 100206, '7 - 30'),
(203, '100207 - Home Appliances/Kitchen Appliances/Rice Cookers', 100207, '7 - 30'),
(204, '100209 - Home Appliances/Kitchen Appliances/Refrigerators', 100209, '7 - 30'),
(205, '100210 - Home Appliances/Kitchen Appliances/Freezers', 100210, '7 - 30'),
(206, '100211 - Home Appliances/Kitchen Appliances/Hoods', 100211, '7 - 30'),
(207, '100212 - Home Appliances/Kitchen Appliances/Others', 100212, '7 - 30'),
(208, '100213 - Home Appliances/Electrical Circuitry & Parts/Electric Sockets & Extension Cords', 100213, '7 - 30'),
(209, '100214 - Home Appliances/Electrical Circuitry & Parts/Electrical Safety', 100214, '7 - 30'),
(210, '100215 - Home Appliances/Electrical Circuitry & Parts/Electricity Savers', 100215, '7 - 30'),
(211, '100216 - Home Appliances/Electrical Circuitry & Parts/Doorbells', 100216, '7 - 30'),
(212, '100217 - Home Appliances/Electrical Circuitry & Parts/Switches', 100217, '7 - 30'),
(213, '100218 - Home Appliances/Electrical Circuitry & Parts/House Alarms', 100218, '7 - 30'),
(214, '100219 - Home Appliances/Electrical Circuitry & Parts/Lightning Protection', 100219, '7 - 30'),
(215, '100220 - Home Appliances/Electrical Circuitry & Parts/Others', 100220, '7 - 30'),
(216, '100221 - Home Appliances/E-Cigarettes/Pods & Mods', 100221, '7 - 30'),
(217, '100222 - Home Appliances/E-Cigarettes/Liquids', 100222, '7 - 30'),
(218, '100223 - Home Appliances/E-Cigarettes/Tanks & Atomizers', 100223, '7 - 30'),
(219, '100224 - Home Appliances/E-Cigarettes/Kits', 100224, '7 - 30'),
(220, '100225 - Home Appliances/E-Cigarettes/Others', 100225, '7 - 30'),
(221, '100226 - Men Clothes/Hoodies & Sweatshirts/Hoodies', 100226, '7 - 30'),
(222, '100227 - Men Clothes/Hoodies & Sweatshirts/Sweatshirts', 100227, '7 - 30'),
(223, '100228 - Men Clothes/Hoodies & Sweatshirts/Others', 100228, '7 - 30'),
(224, '100229 - Men Clothes/Jackets, Coats & Vests/Winter Jackets & Coats', 100229, '7 - 30'),
(225, '100230 - Men Clothes/Jackets, Coats & Vests/Jackets', 100230, '7 - 30'),
(226, '100231 - Men Clothes/Jackets, Coats & Vests/Vests', 100231, '7 - 30'),
(227, '100232 - Men Clothes/Jackets, Coats & Vests/Others', 100232, '7 - 30'),
(228, '100233 - Men Clothes/Suits/Suit Sets', 100233, '7 - 30'),
(229, '100234 - Men Clothes/Suits/Suit Jackets & Blazers', 100234, '7 - 30'),
(230, '100235 - Men Clothes/Suits/Suit Pants', 100235, '7 - 30'),
(231, '100236 - Men Clothes/Suits/Suit Vests & Waistcoats', 100236, '7 - 30'),
(232, '100237 - Men Clothes/Suits/Others', 100237, '7 - 30'),
(233, '100238 - Men Clothes/Pants/Cargo', 100238, '7 - 30'),
(234, '100239 - Men Clothes/Pants/Joggers', 100239, '7 - 30'),
(235, '100240 - Men Clothes/Pants/Pants', 100240, '7 - 30'),
(236, '100241 - Men Clothes/Pants/Others', 100241, '7 - 30'),
(237, '100242 - Men Clothes/Tops/Shirts', 100242, '7 - 30'),
(238, '100243 - Men Clothes/Tops/Polo Shirts', 100243, '7 - 30'),
(239, '100244 - Men Clothes/Tops/T-Shirts', 100244, '7 - 30'),
(240, '100245 - Men Clothes/Tops/Tanks', 100245, '7 - 30'),
(241, '100246 - Men Clothes/Tops/Others', 100246, '7 - 30'),
(242, '100247 - Men Clothes/Innerwear & Underwear/Underwear', 100247, '7 - 30'),
(243, '100248 - Men Clothes/Innerwear & Underwear/Undershirts', 100248, '7 - 30'),
(244, '100249 - Men Clothes/Innerwear & Underwear/Thermal Innerwear', 100249, '7 - 30'),
(245, '100250 - Men Clothes/Innerwear & Underwear/Others', 100250, '7 - 30'),
(246, '100251 - Men Clothes/Traditional Wear/Tops', 100251, '7 - 30'),
(247, '100252 - Men Clothes/Traditional Wear/Bottoms', 100252, '7 - 30'),
(248, '100253 - Men Clothes/Traditional Wear/Sets', 100253, '7 - 30'),
(249, '100254 - Men Clothes/Traditional Wear/Others', 100254, '7 - 30'),
(250, '100255 - Men Shoes/Boots/Fashion Boots', 100255, '7 - 30'),
(251, '100256 - Men Shoes/Boots/Rain Boots', 100256, '7 - 30'),
(252, '100257 - Men Shoes/Boots/Safety Boots', 100257, '7 - 30'),
(253, '100258 - Men Shoes/Boots/Others', 100258, '7 - 30'),
(254, '100259 - Men Shoes/Sandals & Flip Flops/Flip Flops', 100259, '7 - 30'),
(255, '100260 - Men Shoes/Sandals & Flip Flops/Sandals', 100260, '7 - 30'),
(256, '100261 - Men Shoes/Sandals & Flip Flops/Indoor Slippers', 100261, '7 - 30'),
(257, '100262 - Men Shoes/Sandals & Flip Flops/Health Slippers', 100262, '7 - 30'),
(258, '100263 - Men Shoes/Sandals & Flip Flops/Others', 100263, '7 - 30'),
(259, '100264 - Men Shoes/Shoe Care & Accessories/Shoe Care & Cleaning Tools', 100264, '7 - 30'),
(260, '100265 - Men Shoes/Shoe Care & Accessories/Shoe Deodorizers', 100265, '7 - 30'),
(261, '100266 - Men Shoes/Shoe Care & Accessories/Shoe Laces', 100266, '7 - 30'),
(262, '100267 - Men Shoes/Shoe Care & Accessories/Shoe Horns & Trees', 100267, '7 - 30'),
(263, '100268 - Men Shoes/Shoe Care & Accessories/Shoe Insoles', 100268, '7 - 30'),
(264, '100269 - Men Shoes/Shoe Care & Accessories/Others', 100269, '7 - 30'),
(265, '100270 - Mobile & Gadgets/Wearable Devices/Smartwatches & Fitness Trackers', 100270, '7 - 30'),
(266, '100271 - Mobile & Gadgets/Wearable Devices/VR Devices', 100271, '7 - 30'),
(267, '100272 - Mobile & Gadgets/Wearable Devices/GPS Trackers', 100272, '7 - 30'),
(268, '100273 - Mobile & Gadgets/Wearable Devices/Others', 100273, '7 - 30'),
(269, '100275 - Mobile & Gadgets/Accessories/Mobile Lens', 100275, '7 - 30'),
(270, '100276 - Mobile & Gadgets/Accessories/Mobile Flashes & Selfie Lights', 100276, '7 - 30'),
(271, '100277 - Mobile & Gadgets/Accessories/USB & Mobile Fans', 100277, '7 - 30'),
(272, '100278 - Mobile & Gadgets/Accessories/Stylus', 100278, '7 - 30'),
(273, '100279 - Mobile & Gadgets/Accessories/Phone Grips', 100279, '7 - 30'),
(274, '100280 - Mobile & Gadgets/Accessories/Phone Straps & Keychains', 100280, '7 - 30'),
(275, '100281 - Mobile & Gadgets/Accessories/Memory Cards', 100281, '7 - 30'),
(276, '100282 - Mobile & Gadgets/Accessories/Casting Devices', 100282, '7 - 30'),
(277, '100283 - Mobile & Gadgets/Accessories/Mobile Pouches', 100283, '7 - 30'),
(278, '100285 - Mobile & Gadgets/Accessories/USB & Mobile Lights', 100285, '7 - 30'),
(279, '100286 - Mobile & Gadgets/Accessories/Pocket Wifi', 100286, '7 - 30'),
(280, '100288 - Mobile & Gadgets/Accessories/Wearable Accessories', 100288, '7 - 30'),
(281, '100289 - Mobile & Gadgets/Accessories/Screen Protectors', 100289, '7 - 30'),
(282, '100291 - Mobile & Gadgets/Accessories/Others', 100291, '7 - 30'),
(283, '100294 - Muslim Fashion/Women Muslim Wear/Muslimah Sports Apparels', 100294, '7 - 30'),
(284, '100295 - Muslim Fashion/Women Muslim Wear/Muslimah Swimwear', 100295, '7 - 30'),
(285, '100299 - Muslim Fashion/Women Muslim Wear/Others', 100299, '7 - 30'),
(286, '100300 - Muslim Fashion/Prayer Attire & Equipment/Prayer Sets', 100300, '7 - 30'),
(287, '100301 - Muslim Fashion/Prayer Attire & Equipment/Prayer Mats', 100301, '7 - 30'),
(288, '100302 - Muslim Fashion/Prayer Attire & Equipment/Peci, Songkok & Kopiah', 100302, '7 - 30'),
(289, '100303 - Muslim Fashion/Prayer Attire & Equipment/Telekung', 100303, '7 - 30'),
(290, '100304 - Muslim Fashion/Prayer Attire & Equipment/Telekung Travel', 100304, '7 - 30'),
(291, '100305 - Muslim Fashion/Prayer Attire & Equipment/Others', 100305, '7 - 30'),
(292, '100306 - Muslim Fashion/Men Muslim Wear/Tops', 100306, '7 - 30'),
(293, '100307 - Muslim Fashion/Men Muslim Wear/Robe & Jubah', 100307, '7 - 30'),
(294, '100308 - Muslim Fashion/Men Muslim Wear/Pants', 100308, '7 - 30'),
(295, '100309 - Muslim Fashion/Men Muslim Wear/Sarong', 100309, '7 - 30'),
(296, '100310 - Muslim Fashion/Men Muslim Wear/Baju Melayu', 100310, '7 - 30'),
(297, '100311 - Muslim Fashion/Men Muslim Wear/Others', 100311, '7 - 30'),
(298, '100313 - Muslim Fashion/Kid Muslim Wear/Boy\'s Muslim Attire', 100313, '7 - 30'),
(299, '100314 - Muslim Fashion/Kid Muslim Wear/Others', 100314, '7 - 30'),
(300, '100315 - Muslim Fashion/Outerwear/Vests', 100315, '7 - 30'),
(301, '100316 - Muslim Fashion/Outerwear/Jackets', 100316, '7 - 30'),
(302, '100317 - Muslim Fashion/Outerwear/Coats', 100317, '7 - 30'),
(303, '100318 - Muslim Fashion/Outerwear/Cardigans', 100318, '7 - 30'),
(304, '100319 - Muslim Fashion/Outerwear/Others', 100319, '7 - 30'),
(305, '100320 - Travel & Luggage/Travel Bags/Duffel & Weekender Bags', 100320, '7 - 30'),
(306, '100321 - Travel & Luggage/Travel Bags/Foldable Bags', 100321, '7 - 30'),
(307, '100322 - Travel & Luggage/Travel Bags/Drawstring Bags', 100322, '7 - 30'),
(308, '100323 - Travel & Luggage/Travel Bags/Others', 100323, '7 - 30'),
(309, '100324 - Travel & Luggage/Travel Accessories/Passport Holders & Covers', 100324, '7 - 30'),
(310, '100325 - Travel & Luggage/Travel Accessories/Travel Organizers', 100325, '7 - 30'),
(311, '100326 - Travel & Luggage/Travel Accessories/Luggage Protectors & Covers', 100326, '7 - 30'),
(312, '100327 - Travel & Luggage/Travel Accessories/Luggage Tags', 100327, '7 - 30'),
(313, '100328 - Travel & Luggage/Travel Accessories/Luggage Straps', 100328, '7 - 30'),
(314, '100329 - Travel & Luggage/Travel Accessories/Luggage Locks', 100329, '7 - 30'),
(315, '100330 - Travel & Luggage/Travel Accessories/Luggage Scales', 100330, '7 - 30'),
(316, '100331 - Travel & Luggage/Travel Accessories/Travel Pillows & Eye Covers', 100331, '7 - 30'),
(317, '100332 - Travel & Luggage/Travel Accessories/Travel Size Bottles & Containers', 100332, '7 - 30'),
(318, '100333 - Travel & Luggage/Travel Accessories/Others', 100333, '7 - 30'),
(319, '100334 - Women Bags/Laptop Bags/Laptop Bags & Cases', 100334, '7 - 30'),
(320, '100335 - Women Bags/Laptop Bags/Laptop Sleeves', 100335, '7 - 30'),
(321, '100336 - Women Bags/Laptop Bags/Laptop Backpacks', 100336, '7 - 30'),
(322, '100337 - Women Bags/Laptop Bags/Others', 100337, '7 - 30'),
(323, '100338 - Women Bags/Wallets/Card Holders', 100338, '7 - 30'),
(324, '100339 - Women Bags/Wallets/Coin Holders & Purses', 100339, '7 - 30'),
(325, '100340 - Women Bags/Wallets/Phone & Key Wallets', 100340, '7 - 30'),
(326, '100341 - Women Bags/Wallets/Bifold & Trifold Wallets', 100341, '7 - 30'),
(327, '100342 - Women Bags/Wallets/Long Wallets', 100342, '7 - 30'),
(328, '100343 - Women Bags/Wallets/Others', 100343, '7 - 30'),
(329, '100344 - Women Bags/Bag Accessories/Bag Straps', 100344, '7 - 30'),
(330, '100345 - Women Bags/Bag Accessories/Bag Holders', 100345, '7 - 30'),
(331, '100346 - Women Bags/Bag Accessories/Charms & Twillies', 100346, '7 - 30'),
(332, '100347 - Women Bags/Bag Accessories/Bag Organizers', 100347, '7 - 30'),
(333, '100348 - Women Bags/Bag Accessories/Cleaning & Care Equipment', 100348, '7 - 30'),
(334, '100349 - Women Bags/Bag Accessories/Others', 100349, '7 - 30'),
(335, '100350 - Women Clothes/Tops/Tanks & Camisoles', 100350, '7 - 30'),
(336, '100351 - Women Clothes/Tops/Tube Tops', 100351, '7 - 30'),
(337, '100352 - Women Clothes/Tops/T-shirts', 100352, '7 - 30'),
(338, '100353 - Women Clothes/Tops/Shirts & Blouses', 100353, '7 - 30'),
(339, '100354 - Women Clothes/Tops/Polo Shirts', 100354, '7 - 30'),
(340, '100355 - Women Clothes/Tops/Bodysuits', 100355, '7 - 30'),
(341, '100356 - Women Clothes/Tops/Others', 100356, '7 - 30'),
(342, '100357 - Women Clothes/Pants & Leggings/Leggings & Treggings', 100357, '7 - 30'),
(343, '100358 - Women Clothes/Pants & Leggings/Pants', 100358, '7 - 30'),
(344, '100359 - Women Clothes/Pants & Leggings/Others', 100359, '7 - 30'),
(345, '100360 - Women Clothes/Shorts/Shorts', 100360, '7 - 30'),
(346, '100361 - Women Clothes/Shorts/Skorts', 100361, '7 - 30'),
(347, '100362 - Women Clothes/Shorts/Others', 100362, '7 - 30'),
(348, '100363 - Women Clothes/Jumpsuits, Playsuits & Overalls/Jumpsuits', 100363, '7 - 30'),
(349, '100364 - Women Clothes/Jumpsuits, Playsuits & Overalls/Playsuits', 100364, '7 - 30'),
(350, '100365 - Women Clothes/Jumpsuits, Playsuits & Overalls/Overalls', 100365, '7 - 30'),
(351, '100366 - Women Clothes/Jumpsuits, Playsuits & Overalls/Others', 100366, '7 - 30'),
(352, '100367 - Women Clothes/Jackets, Coats & Vests/Winter Jackets & Coats', 100367, '7 - 30'),
(353, '100368 - Women Clothes/Jackets, Coats & Vests/Capes', 100368, '7 - 30'),
(354, '100369 - Women Clothes/Jackets, Coats & Vests/Blazers', 100369, '7 - 30'),
(355, '100370 - Women Clothes/Jackets, Coats & Vests/Jackets', 100370, '7 - 30'),
(356, '100371 - Women Clothes/Jackets, Coats & Vests/Vests', 100371, '7 - 30'),
(357, '100372 - Women Clothes/Jackets, Coats & Vests/Others', 100372, '7 - 30'),
(358, '100373 - Women Clothes/Hoodies & Sweatshirts/Sweatshirts', 100373, '7 - 30'),
(359, '100374 - Women Clothes/Hoodies & Sweatshirts/Hoodies', 100374, '7 - 30'),
(360, '100375 - Women Clothes/Hoodies & Sweatshirts/Others', 100375, '7 - 30'),
(361, '100376 - Women Clothes/Sets/Couple Sets', 100376, '7 - 30'),
(362, '100377 - Women Clothes/Sets/Family Sets', 100377, '7 - 30'),
(363, '100378 - Women Clothes/Sets/Individual Sets', 100378, '7 - 30'),
(364, '100379 - Women Clothes/Sets/Others', 100379, '7 - 30'),
(365, '100380 - Women Clothes/Lingerie & Underwear/Sets', 100380, '7 - 30'),
(366, '100381 - Women Clothes/Lingerie & Underwear/Bras', 100381, '7 - 30'),
(367, '100382 - Women Clothes/Lingerie & Underwear/Panties', 100382, '7 - 30'),
(368, '100383 - Women Clothes/Lingerie & Underwear/Thermal Innerwear', 100383, '7 - 30'),
(369, '100385 - Women Clothes/Lingerie & Underwear/Shapewear', 100385, '7 - 30'),
(370, '100386 - Women Clothes/Lingerie & Underwear/Safety Pants', 100386, '7 - 30'),
(371, '100387 - Women Clothes/Lingerie & Underwear/Sexy Lingerie', 100387, '7 - 30'),
(372, '100388 - Women Clothes/Lingerie & Underwear/Others', 100388, '7 - 30'),
(373, '100389 - Women Clothes/Sleepwear & Pajamas/Pajamas', 100389, '7 - 30'),
(374, '100390 - Women Clothes/Sleepwear & Pajamas/Night Dresses', 100390, '7 - 30'),
(375, '100391 - Women Clothes/Sleepwear & Pajamas/Kimonos & Robes', 100391, '7 - 30'),
(376, '100392 - Women Clothes/Sleepwear & Pajamas/Others', 100392, '7 - 30'),
(377, '100393 - Women Clothes/Maternity Wear/Nursing Bras', 100393, '7 - 30'),
(378, '100394 - Women Clothes/Maternity Wear/Maternity Dresses', 100394, '7 - 30'),
(379, '100395 - Women Clothes/Maternity Wear/Maternity Tops', 100395, '7 - 30'),
(380, '100396 - Women Clothes/Maternity Wear/Breastfeeding Wear', 100396, '7 - 30'),
(381, '100397 - Women Clothes/Maternity Wear/Maternity Sets', 100397, '7 - 30'),
(382, '100398 - Women Clothes/Maternity Wear/Maternity Bottoms', 100398, '7 - 30'),
(383, '100399 - Women Clothes/Maternity Wear/Others', 100399, '7 - 30'),
(384, '100400 - Women Clothes/Traditional Wear/Tops', 100400, '7 - 30'),
(385, '100401 - Women Clothes/Traditional Wear/Bottoms', 100401, '7 - 30'),
(386, '100402 - Women Clothes/Traditional Wear/Sets', 100402, '7 - 30'),
(387, '100403 - Women Clothes/Traditional Wear/Dresses', 100403, '7 - 30'),
(388, '100404 - Women Clothes/Traditional Wear/Others', 100404, '7 - 30'),
(389, '100407 - Women Clothes/Fabric/Cotton', 100407, '7 - 30'),
(390, '100408 - Women Clothes/Fabric/Wool', 100408, '7 - 30'),
(391, '100409 - Women Clothes/Fabric/Velvet, Silk & Satin', 100409, '7 - 30'),
(392, '100410 - Women Clothes/Fabric/Leather', 100410, '7 - 30'),
(393, '100411 - Women Clothes/Fabric/Vinyl & Nylon', 100411, '7 - 30'),
(394, '100412 - Women Clothes/Fabric/Denim', 100412, '7 - 30'),
(395, '100413 - Women Clothes/Fabric/Canvas', 100413, '7 - 30'),
(396, '100416 - Women Clothes/Fabric/Others', 100416, '7 - 30'),
(397, '100417 - Women Clothes/Socks & Stockings/Socks', 100417, '7 - 30'),
(398, '100418 - Women Clothes/Socks & Stockings/Pantyhose', 100418, '7 - 30'),
(399, '100419 - Women Clothes/Socks & Stockings/Others', 100419, '7 - 30'),
(400, '100585 - Women Shoes/Boots/Rain Boots', 100585, '7 - 30'),
(401, '100586 - Women Shoes/Boots/Fashion Boots', 100586, '7 - 30'),
(402, '100587 - Women Shoes/Boots/Others', 100587, '7 - 30'),
(403, '100588 - Women Shoes/Flats/Ballet Flats', 100588, '7 - 30'),
(404, '100589 - Women Shoes/Flats/Loafers & Boat Shoes', 100589, '7 - 30'),
(405, '100590 - Women Shoes/Flats/Oxfords & Lace-Ups', 100590, '7 - 30'),
(406, '100591 - Women Shoes/Flats/Slip Ons, Mary Janes & Mules', 100591, '7 - 30'),
(407, '100592 - Women Shoes/Flats/Others', 100592, '7 - 30'),
(408, '100593 - Women Shoes/Flat Sandals & Flip Flops/Flat Sandals', 100593, '7 - 30'),
(409, '100594 - Women Shoes/Flat Sandals & Flip Flops/Flip Flops', 100594, '7 - 30'),
(410, '100595 - Women Shoes/Flat Sandals & Flip Flops/Health Slippers', 100595, '7 - 30'),
(411, '100596 - Women Shoes/Flat Sandals & Flip Flops/Indoor Slippers', 100596, '7 - 30'),
(412, '100597 - Women Shoes/Flat Sandals & Flip Flops/Others', 100597, '7 - 30'),
(413, '100598 - Women Shoes/Shoe Care & Accessories/Shoe Deodorizers', 100598, '7 - 30'),
(414, '100599 - Women Shoes/Shoe Care & Accessories/Insoles & Heel Liners', 100599, '7 - 30'),
(415, '100600 - Women Shoes/Shoe Care & Accessories/Shoe Horns & Trees', 100600, '7 - 30'),
(416, '100601 - Women Shoes/Shoe Care & Accessories/Shoe Care & Cleaning Tools', 100601, '7 - 30'),
(417, '100602 - Women Shoes/Shoe Care & Accessories/Shoe Laces', 100602, '7 - 30'),
(418, '100603 - Women Shoes/Shoe Care & Accessories/Others', 100603, '7 - 30'),
(419, '100604 - Men Bags/Laptop Bags/Laptop Bags & Cases', 100604, '7 - 30'),
(420, '100605 - Men Bags/Laptop Bags/Laptop Sleeves', 100605, '7 - 30'),
(421, '100606 - Men Bags/Laptop Bags/Laptop Backpacks', 100606, '7 - 30'),
(422, '100607 - Men Bags/Laptop Bags/Others', 100607, '7 - 30'),
(423, '100608 - Men Bags/Wallets/Card Holders', 100608, '7 - 30'),
(424, '100609 - Men Bags/Wallets/Coin Holders & Purses', 100609, '7 - 30'),
(425, '100610 - Men Bags/Wallets/Phone & Key Wallets', 100610, '7 - 30'),
(426, '100611 - Men Bags/Wallets/Bifold & Trifold Wallets', 100611, '7 - 30'),
(427, '100612 - Men Bags/Wallets/Long Wallets', 100612, '7 - 30'),
(428, '100613 - Men Bags/Wallets/Others', 100613, '7 - 30'),
(429, '100614 - Watches/Watches Accessories/Straps', 100614, '7 - 30'),
(430, '100615 - Watches/Watches Accessories/Service Tools', 100615, '7 - 30'),
(431, '100616 - Watches/Watches Accessories/Buckles', 100616, '7 - 30'),
(432, '100617 - Watches/Watches Accessories/Batteries', 100617, '7 - 30'),
(433, '100618 - Watches/Watches Accessories/Boxes', 100618, '7 - 30'),
(434, '100619 - Watches/Watches Accessories/Others', 100619, '7 - 30'),
(435, '100620 - Audio/Media Players/MP3 & MP4 Players', 100620, '7 - 30'),
(436, '100621 - Audio/Media Players/CD, DVD, & Blu-ray Players', 100621, '7 - 30'),
(437, '100622 - Audio/Media Players/Voice Recorders', 100622, '7 - 30'),
(438, '100623 - Audio/Media Players/Radio & Cassette Players', 100623, '7 - 30'),
(439, '100624 - Audio/Media Players/Others', 100624, '7 - 30'),
(440, '100625 - Audio/Home Audio & Speakers/Speakers', 100625, '7 - 30'),
(441, '100626 - Audio/Home Audio & Speakers/Home Theater Systems', 100626, '7 - 30'),
(442, '100627 - Audio/Home Audio & Speakers/AV Receivers', 100627, '7 - 30'),
(443, '100628 - Audio/Home Audio & Speakers/Others', 100628, '7 - 30'),
(444, '100780 - Food & Beverage/Convenience / Ready-to-eat/Cooked Food', 100780, '7 - 30'),
(445, '100781 - Food & Beverage/Convenience / Ready-to-eat/Others', 100781, '7 - 30'),
(446, '100782 - Food & Beverage/Convenience / Ready-to-eat/Instant Rice & Porridge', 100782, '7 - 30'),
(447, '100783 - Food & Beverage/Convenience / Ready-to-eat/Instant Hotpot', 100783, '7 - 30'),
(448, '100784 - Food & Beverage/Convenience / Ready-to-eat/Instant Noodles', 100784, '7 - 30'),
(449, '100785 - Food & Beverage/Snacks/Sweets & Candies', 100785, '7 - 30'),
(450, '100786 - Food & Beverage/Snacks/Chocolate', 100786, '7 - 30'),
(451, '100787 - Food & Beverage/Snacks/Biscuits, Cookies & Wafers', 100787, '7 - 30'),
(452, '100788 - Food & Beverage/Snacks/Chips & Crisps', 100788, '7 - 30'),
(453, '100789 - Food & Beverage/Snacks/Seeds', 100789, '7 - 30'),
(454, '100790 - Food & Beverage/Snacks/Popcorn', 100790, '7 - 30'),
(455, '100791 - Food & Beverage/Snacks/Seaweed', 100791, '7 - 30'),
(456, '100792 - Food & Beverage/Snacks/Nuts', 100792, '7 - 30'),
(457, '100793 - Food & Beverage/Snacks/Others', 100793, '7 - 30'),
(458, '100794 - Food & Beverage/Snacks/Pudding, Jellies & Marshmallow', 100794, '7 - 30'),
(459, '100797 - Food & Beverage/Food Staples/Noodles', 100797, '7 - 30'),
(460, '100798 - Food & Beverage/Food Staples/Rice', 100798, '7 - 30'),
(461, '100799 - Food & Beverage/Food Staples/Pasta', 100799, '7 - 30'),
(462, '100800 - Food & Beverage/Food Staples/Others', 100800, '7 - 30'),
(463, '100802 - Food & Beverage/Food Staples/Preserved Vegetables', 100802, '7 - 30'),
(464, '100803 - Food & Beverage/Cooking Essentials/Oil', 100803, '7 - 30'),
(465, '100805 - Food & Beverage/Cooking Essentials/Sugar', 100805, '7 - 30'),
(466, '100806 - Food & Beverage/Cooking Essentials/Sweetener', 100806, '7 - 30'),
(467, '100807 - Food & Beverage/Cooking Essentials/Stock, Gravy & Instant Soup', 100807, '7 - 30'),
(468, '100808 - Food & Beverage/Cooking Essentials/Cooking Paste & Kit', 100808, '7 - 30'),
(469, '100809 - Food & Beverage/Cooking Essentials/Flavour Enhancers', 100809, '7 - 30'),
(470, '100810 - Food & Beverage/Cooking Essentials/Flour Coating', 100810, '7 - 30'),
(471, '100811 - Food & Beverage/Cooking Essentials/Others', 100811, '7 - 30'),
(472, '100812 - Food & Beverage/Baking Needs/Baking Flavoring', 100812, '7 - 30'),
(473, '100813 - Food & Beverage/Baking Needs/Baking Powder & Soda', 100813, '7 - 30'),
(474, '100814 - Food & Beverage/Baking Needs/Baking Premix Flour', 100814, '7 - 30'),
(475, '100815 - Food & Beverage/Baking Needs/Flour', 100815, '7 - 30'),
(476, '100816 - Food & Beverage/Baking Needs/Food Coloring', 100816, '7 - 30'),
(477, '100817 - Food & Beverage/Baking Needs/Baking decoration', 100817, '7 - 30'),
(478, '100818 - Food & Beverage/Baking Needs/Others', 100818, '7 - 30'),
(479, '100819 - Food & Beverage/Breakfast Cereals & Spread/Honey & Maple Syrups', 100819, '7 - 30'),
(480, '100820 - Food & Beverage/Breakfast Cereals & Spread/Jam & Spread', 100820, '7 - 30'),
(481, '100821 - Food & Beverage/Breakfast Cereals & Spread/Cereal, Granola & Oats', 100821, '7 - 30'),
(482, '100822 - Food & Beverage/Breakfast Cereals & Spread/Breakfast Bar', 100822, '7 - 30'),
(483, '100823 - Food & Beverage/Breakfast Cereals & Spread/Others', 100823, '7 - 30'),
(484, '100824 - Food & Beverage/Beverages/Coffee', 100824, '7 - 30'),
(485, '100825 - Food & Beverage/Beverages/Tea & Tea Bags', 100825, '7 - 30'),
(486, '100826 - Food & Beverage/Beverages/Chocolate Drinks', 100826, '7 - 30'),
(487, '100827 - Food & Beverage/Beverages/Energy & Isotonic Drinks', 100827, '7 - 30'),
(488, '100828 - Food & Beverage/Beverages/Water', 100828, '7 - 30'),
(489, '100829 - Food & Beverage/Beverages/Juice & Juice Vinegar', 100829, '7 - 30'),
(490, '100830 - Food & Beverage/Beverages/Cordial & Syrups', 100830, '7 - 30'),
(491, '100831 - Food & Beverage/Beverages/Carbonated Drinks & Tonics', 100831, '7 - 30'),
(492, '100832 - Food & Beverage/Beverages/Powdered Drink Mixes', 100832, '7 - 30'),
(493, '100833 - Food & Beverage/Beverages/Dessert Drink', 100833, '7 - 30'),
(494, '100834 - Food & Beverage/Beverages/Traditional & Herbal Drinks', 100834, '7 - 30'),
(495, '100835 - Food & Beverage/Beverages/Drink Toppings', 100835, '7 - 30'),
(496, '100836 - Food & Beverage/Beverages/Non-dairy Milk', 100836, '7 - 30'),
(497, '100837 - Food & Beverage/Beverages/Others', 100837, '7 - 30'),
(498, '100839 - Food & Beverage/Dairy & Eggs/Yogurt & Cultured Milk', 100839, '7 - 30'),
(499, '100840 - Food & Beverage/Dairy & Eggs/Creamers', 100840, '7 - 30'),
(500, '100841 - Food & Beverage/Dairy & Eggs/Butter & Margarine', 100841, '7 - 30'),
(501, '100842 - Food & Beverage/Dairy & Eggs/Cheese & Cheese Powder', 100842, '7 - 30'),
(502, '100843 - Food & Beverage/Dairy & Eggs/Ice cream', 100843, '7 - 30'),
(503, '100844 - Food & Beverage/Dairy & Eggs/Eggs', 100844, '7 - 30'),
(504, '100845 - Food & Beverage/Dairy & Eggs/Beancurd', 100845, '7 - 30'),
(505, '100846 - Food & Beverage/Dairy & Eggs/Others', 100846, '7 - 30'),
(506, '100849 - Food & Beverage/Fresh & Frozen Food/Vegetarian Meat', 100849, '7 - 30'),
(507, '100850 - Food & Beverage/Fresh & Frozen Food/Others', 100850, '7 - 30'),
(508, '102071 - Food & Beverage/Fresh & Frozen Food/Vegetables/Cabbage & Brussel Sprouts', 102071, '7 - 30'),
(509, '102072 - Food & Beverage/Fresh & Frozen Food/Vegetables/Fresh Herbs', 102072, '7 - 30'),
(510, '102073 - Food & Beverage/Fresh & Frozen Food/Vegetables/Leafy Vegetables', 102073, '7 - 30'),
(511, '102074 - Food & Beverage/Fresh & Frozen Food/Vegetables/Brinjals, Gourds & Squashes', 102074, '7 - 30'),
(512, '102075 - Food & Beverage/Fresh & Frozen Food/Vegetables/Broccoli & Cauliflowers', 102075, '7 - 30'),
(513, '102076 - Food & Beverage/Fresh & Frozen Food/Vegetables/Chilli & Capsicum', 102076, '7 - 30'),
(514, '102077 - Food & Beverage/Fresh & Frozen Food/Vegetables/Garlic, Ginger & Onion', 102077, '7 - 30'),
(515, '102078 - Food & Beverage/Fresh & Frozen Food/Vegetables/Peas, Beans, Nuts & Corn', 102078, '7 - 30'),
(516, '102079 - Food & Beverage/Fresh & Frozen Food/Vegetables/Root & Stem Vegetables', 102079, '7 - 30'),
(517, '102080 - Food & Beverage/Fresh & Frozen Food/Vegetables/Sprouts', 102080, '7 - 30'),
(518, '102081 - Food & Beverage/Fresh & Frozen Food/Vegetables/Salads Vegetables', 102081, '7 - 30'),
(519, '102082 - Food & Beverage/Fresh & Frozen Food/Vegetables/Pre-cut & Assorted Vegetable Set', 102082, '7 - 30'),
(520, '102083 - Food & Beverage/Fresh & Frozen Food/Vegetables/Others', 102083, '7 - 30'),
(521, '102084 - Food & Beverage/Fresh & Frozen Food/Fruits/Apples & Pears', 102084, '7 - 30'),
(522, '102085 - Food & Beverage/Fresh & Frozen Food/Fruits/Bananas', 102085, '7 - 30'),
(523, '102086 - Food & Beverage/Fresh & Frozen Food/Fruits/Berries', 102086, '7 - 30'),
(524, '102087 - Food & Beverage/Fresh & Frozen Food/Fruits/Citrus', 102087, '7 - 30'),
(525, '102088 - Food & Beverage/Fresh & Frozen Food/Fruits/Grapes', 102088, '7 - 30'),
(526, '102089 - Food & Beverage/Fresh & Frozen Food/Fruits/Melons', 102089, '7 - 30'),
(527, '102090 - Food & Beverage/Fresh & Frozen Food/Fruits/Stonefruits', 102090, '7 - 30'),
(528, '102091 - Food & Beverage/Fresh & Frozen Food/Fruits/Tropical & Exotic Fruits', 102091, '7 - 30'),
(529, '102092 - Food & Beverage/Fresh & Frozen Food/Fruits/Pre-cut & Assorted Fruit Set', 102092, '7 - 30'),
(530, '102093 - Food & Beverage/Fresh & Frozen Food/Fruits/Others', 102093, '7 - 30'),
(531, '100853 - Food & Beverage/Fresh & Frozen Food/Mushroom', 100853, '7 - 30'),
(532, '100854 - Food & Beverage/Fresh & Frozen Food/Frozen Processed Food', 100854, '7 - 30'),
(533, '100855 - Food & Beverage/Fresh & Frozen Food/Processed Meat & Seafood', 100855, '7 - 30'),
(534, '100856 - Food & Beverage/Bakery/Breads', 100856, '7 - 30'),
(535, '100857 - Food & Beverage/Bakery/Cakes & Pies', 100857, '7 - 30'),
(536, '100858 - Food & Beverage/Bakery/Pastry', 100858, '7 - 30'),
(537, '100859 - Food & Beverage/Bakery/Others', 100859, '7 - 30'),
(538, '100860 - Food & Beverage/Alcoholic Beverages/Beer & Cider', 100860, '7 - 30'),
(539, '100861 - Food & Beverage/Alcoholic Beverages/Wine & Champagne', 100861, '7 - 30'),
(540, '100862 - Food & Beverage/Alcoholic Beverages/Liquor & Spirits', 100862, '7 - 30'),
(541, '100863 - Food & Beverage/Alcoholic Beverages/Sake, Soju & Umeshu', 100863, '7 - 30'),
(542, '100864 - Food & Beverage/Alcoholic Beverages/Others', 100864, '7 - 30'),
(543, '100868 - Beauty/Hand, Foot & Nail Care/Others', 100868, '7 - 30'),
(544, '100869 - Beauty/Hair Care/Shampoo', 100869, '7 - 30'),
(545, '100870 - Beauty/Hair Care/Hair Colour', 100870, '7 - 30'),
(546, '100871 - Beauty/Hair Care/Hair Treatment', 100871, '7 - 30'),
(547, '100872 - Beauty/Hair Care/Hair and Scalp Conditioner', 100872, '7 - 30'),
(548, '100873 - Beauty/Hair Care/Hair Styling', 100873, '7 - 30'),
(549, '100874 - Beauty/Hair Care/Others', 100874, '7 - 30'),
(550, '100875 - Beauty/Men\'s Care/Bath & Body Care', 100875, '7 - 30'),
(551, '100878 - Beauty/Men\'s Care/Hair Care', 100878, '7 - 30'),
(552, '100879 - Beauty/Men\'s Care/Others', 100879, '7 - 30'),
(553, '100880 - Beauty/Makeup/Others', 100880, '7 - 30'),
(554, '100884 - Beauty/Makeup/Makeup Removers', 100884, '7 - 30'),
(555, '100887 - Beauty/Beauty Tools/Body Slimming Tools', 100887, '7 - 30'),
(556, '100888 - Beauty/Beauty Tools/Hair Removal Tools', 100888, '7 - 30'),
(557, '100890 - Beauty/Beauty Tools/Others', 100890, '7 - 30'),
(558, '100891 - Beauty/Skincare/Facial Cleanser', 100891, '7 - 30'),
(559, '100892 - Beauty/Skincare/Toner', 100892, '7 - 30'),
(560, '100893 - Beauty/Skincare/Facial Moisturizer', 100893, '7 - 30'),
(561, '100894 - Beauty/Skincare/Facial Oil', 100894, '7 - 30'),
(562, '100895 - Beauty/Skincare/Facial Mist', 100895, '7 - 30'),
(563, '100896 - Beauty/Skincare/Facial Serum & Essence', 100896, '7 - 30'),
(564, '100897 - Beauty/Skincare/Face Scrub & Peel', 100897, '7 - 30'),
(565, '100898 - Beauty/Skincare/Face Mask & Packs', 100898, '7 - 30'),
(566, '100901 - Beauty/Skincare/Face Sunscreen', 100901, '7 - 30'),
(567, '100902 - Beauty/Skincare/After Sun Face Care', 100902, '7 - 30'),
(568, '100903 - Beauty/Skincare/Blotting Paper', 100903, '7 - 30'),
(569, '100904 - Beauty/Skincare/Acne Treatment', 100904, '7 - 30'),
(570, '100905 - Beauty/Skincare/Others', 100905, '7 - 30'),
(571, '102003 - Beauty/Bath & Body Care/Body Wash & Soap', 102003, '7 - 30'),
(572, '102004 - Beauty/Bath & Body Care/Body Scrub & Peel', 102004, '7 - 30'),
(573, '102005 - Beauty/Bath & Body Care/Body Masks', 102005, '7 - 30'),
(574, '102006 - Beauty/Bath & Body Care/Body Oil', 102006, '7 - 30'),
(575, '102007 - Beauty/Bath & Body Care/Body Cream, Lotion & Butter', 102007, '7 - 30'),
(576, '102008 - Beauty/Bath & Body Care/Body Deodorants', 102008, '7 - 30'),
(577, '102009 - Beauty/Bath & Body Care/Massage Oil', 102009, '7 - 30'),
(578, '102010 - Beauty/Bath & Body Care/Hair Removal Cream & Wax', 102010, '7 - 30'),
(579, '102012 - Beauty/Bath & Body Care/Breast Care', 102012, '7 - 30'),
(580, '102013 - Beauty/Bath & Body Care/Others', 102013, '7 - 30'),
(581, '100906 - Pets/Pet Food/Dog Food', 100906, '7 - 30'),
(582, '100907 - Pets/Pet Food/Dog Treats', 100907, '7 - 30'),
(583, '100908 - Pets/Pet Food/Cat Food', 100908, '7 - 30'),
(584, '100909 - Pets/Pet Food/Cat Treats', 100909, '7 - 30'),
(585, '100910 - Pets/Pet Food/Small Pet Food', 100910, '7 - 30'),
(586, '100911 - Pets/Pet Food/Small Pet Treats', 100911, '7 - 30'),
(587, '100912 - Pets/Pet Food/Aquarium Pet Food', 100912, '7 - 30'),
(588, '100913 - Pets/Pet Food/Bird Feed', 100913, '7 - 30'),
(589, '100914 - Pets/Pet Food/Reptile Food', 100914, '7 - 30'),
(590, '100915 - Pets/Pet Food/Others', 100915, '7 - 30'),
(591, '100916 - Pets/Pet Accessories/Bowls & Feeders', 100916, '7 - 30'),
(592, '100917 - Pets/Pet Accessories/Travel Essentials', 100917, '7 - 30'),
(593, '100918 - Pets/Pet Accessories/Leashes, Collars, Harnesses & Muzzles', 100918, '7 - 30'),
(594, '100921 - Pets/Pet Accessories/Aquarium Needs', 100921, '7 - 30'),
(595, '100922 - Pets/Pet Accessories/Others', 100922, '7 - 30'),
(596, '100923 - Pets/Litter & Toilet/Cat Litter & Boxes', 100923, '7 - 30'),
(597, '100924 - Pets/Litter & Toilet/Small Pet Bedding & Litter', 100924, '7 - 30'),
(598, '100925 - Pets/Litter & Toilet/Diapers', 100925, '7 - 30'),
(599, '100926 - Pets/Litter & Toilet/Dog Training Pads & Trays', 100926, '7 - 30'),
(600, '100927 - Pets/Litter & Toilet/Poop Bags & Scoopers', 100927, '7 - 30'),
(601, '100928 - Pets/Litter & Toilet/Others', 100928, '7 - 30'),
(602, '100929 - Pets/Pet Grooming/Hair Care', 100929, '7 - 30'),
(603, '100930 - Pets/Pet Grooming/Oral Care', 100930, '7 - 30'),
(604, '100931 - Pets/Pet Grooming/Claw Care', 100931, '7 - 30'),
(605, '100932 - Pets/Pet Grooming/Others', 100932, '7 - 30'),
(606, '100933 - Pets/Pet Clothing & Accessories/Pet Clothing', 100933, '7 - 30'),
(607, '100934 - Pets/Pet Clothing & Accessories/Wet Weather Gear', 100934, '7 - 30'),
(608, '100935 - Pets/Pet Clothing & Accessories/Boots, Socks & Paw Protectors', 100935, '7 - 30'),
(609, '100936 - Pets/Pet Clothing & Accessories/Neck Accessories', 100936, '7 - 30'),
(610, '100937 - Pets/Pet Clothing & Accessories/Eyewear', 100937, '7 - 30'),
(611, '100938 - Pets/Pet Clothing & Accessories/Hair Accessories', 100938, '7 - 30'),
(612, '100939 - Pets/Pet Clothing & Accessories/Hats', 100939, '7 - 30'),
(613, '100940 - Pets/Pet Clothing & Accessories/Others', 100940, '7 - 30'),
(614, '100941 - Pets/Pet Healthcare/Anti Fleas & Ticks', 100941, '7 - 30'),
(615, '100942 - Pets/Pet Healthcare/Medication', 100942, '7 - 30'),
(616, '100943 - Pets/Pet Healthcare/Others', 100943, '7 - 30'),
(617, '100944 - Pets/Pet Healthcare/Vitamins & Supplements', 100944, '7 - 30'),
(618, '100945 - Mom & Baby/Baby Travel Essentials/Baby Carrier', 100945, '7 - 30'),
(619, '100946 - Mom & Baby/Baby Travel Essentials/Strollers & Travel Systems', 100946, '7 - 30'),
(620, '100947 - Mom & Baby/Baby Travel Essentials/Stroller Accessories', 100947, '7 - 30'),
(621, '100948 - Mom & Baby/Baby Travel Essentials/Car & Motorbike Seats', 100948, '7 - 30'),
(622, '100949 - Mom & Baby/Baby Travel Essentials/Car & Motorbike Seats Accessories', 100949, '7 - 30'),
(623, '100950 - Mom & Baby/Baby Travel Essentials/Diaper Bags', 100950, '7 - 30'),
(624, '100951 - Mom & Baby/Baby Travel Essentials/Child Harnesses & Leashes', 100951, '7 - 30'),
(625, '100952 - Mom & Baby/Baby Travel Essentials/Others', 100952, '7 - 30'),
(626, '100955 - Mom & Baby/Feeding Essentials/Highchairs & Booster Seats', 100955, '7 - 30'),
(627, '100957 - Mom & Baby/Feeding Essentials/Bibs', 100957, '7 - 30'),
(628, '100958 - Mom & Baby/Feeding Essentials/Pacifiers', 100958, '7 - 30'),
(629, '100959 - Mom & Baby/Feeding Essentials/Food Processors', 100959, '7 - 30'),
(630, '100960 - Mom & Baby/Feeding Essentials/Others', 100960, '7 - 30'),
(631, '100961 - Mom & Baby/Maternity Accessories/Supporting Belts', 100961, '7 - 30'),
(632, '100962 - Mom & Baby/Maternity Accessories/Maternity Pillows', 100962, '7 - 30'),
(633, '100963 - Mom & Baby/Maternity Accessories/Others', 100963, '7 - 30'),
(634, '100964 - Mom & Baby/Maternity Healthcare/Maternity Milk', 100964, '7 - 30'),
(635, '100965 - Mom & Baby/Maternity Healthcare/Maternity Vitamins & Supplement', 100965, '7 - 30'),
(636, '100966 - Mom & Baby/Maternity Healthcare/Moisturizers & Creams', 100966, '7 - 30'),
(637, '100967 - Mom & Baby/Maternity Healthcare/Others', 100967, '7 - 30'),
(638, '100968 - Mom & Baby/Bath & Body Care/Bathing Tubs & Seats', 100968, '7 - 30'),
(639, '100969 - Mom & Baby/Bath & Body Care/Bath Robes, Towels & Wash Cloths', 100969, '7 - 30'),
(640, '100970 - Mom & Baby/Bath & Body Care/Shower Caps', 100970, '7 - 30'),
(641, '100971 - Mom & Baby/Bath & Body Care/Bathing Tools & Accessories', 100971, '7 - 30'),
(642, '100972 - Mom & Baby/Bath & Body Care/Hair Care & Body Wash', 100972, '7 - 30'),
(643, '100973 - Mom & Baby/Bath & Body Care/Baby Colognes & Fragrances', 100973, '7 - 30'),
(644, '100974 - Mom & Baby/Bath & Body Care/Baby Grooming Tools', 100974, '7 - 30'),
(645, '100975 - Mom & Baby/Bath & Body Care/Wipes', 100975, '7 - 30'),
(646, '100976 - Mom & Baby/Bath & Body Care/Baby Laundry Detergent', 100976, '7 - 30'),
(647, '100977 - Mom & Baby/Bath & Body Care/Others', 100977, '7 - 30'),
(648, '100978 - Mom & Baby/Nursery/Cribs & Cradles & Beds', 100978, '7 - 30'),
(649, '100979 - Mom & Baby/Nursery/Bouncers, Rockers & Jumpers', 100979, '7 - 30'),
(650, '100980 - Mom & Baby/Nursery/Walkers', 100980, '7 - 30'),
(651, '100982 - Mom & Baby/Nursery/Storage & Organization', 100982, '7 - 30'),
(652, '100983 - Mom & Baby/Nursery/Others', 100983, '7 - 30'),
(653, '100984 - Mom & Baby/Baby Safety/Monitors', 100984, '7 - 30'),
(654, '100985 - Mom & Baby/Baby Safety/Mosquito Netting', 100985, '7 - 30'),
(655, '100986 - Mom & Baby/Baby Safety/Bumpers, Rails & Guards', 100986, '7 - 30'),
(656, '100987 - Mom & Baby/Baby Safety/Edge & Corner Guards', 100987, '7 - 30'),
(657, '100988 - Mom & Baby/Baby Safety/Baby Gates & Doorways', 100988, '7 - 30'),
(658, '100989 - Mom & Baby/Baby Safety/Safety Locks & Straps', 100989, '7 - 30'),
(659, '100990 - Mom & Baby/Baby Safety/Others', 100990, '7 - 30'),
(660, '100991 - Mom & Baby/Milk Formula & Baby Food/Milk Formula', 100991, '7 - 30');
INSERT INTO `shopee_category` (`scid`, `category_name`, `category_id`, `category_pre_order_dts`) VALUES
(661, '100992 - Mom & Baby/Milk Formula & Baby Food/Baby Porridge, Puree & Cereal', 100992, '7 - 30'),
(662, '100993 - Mom & Baby/Milk Formula & Baby Food/Baby Snack', 100993, '7 - 30'),
(663, '100994 - Mom & Baby/Milk Formula & Baby Food/Others', 100994, '7 - 30'),
(664, '100995 - Mom & Baby/Baby Healthcare/Baby Vitamins & Supplements', 100995, '7 - 30'),
(665, '100996 - Mom & Baby/Baby Healthcare/Nasal Care', 100996, '7 - 30'),
(666, '100998 - Mom & Baby/Baby Healthcare/Baby Oral Care', 100998, '7 - 30'),
(667, '100999 - Mom & Baby/Baby Healthcare/Sun Care', 100999, '7 - 30'),
(668, '101000 - Mom & Baby/Baby Healthcare/Others', 101000, '7 - 30'),
(669, '101001 - Mom & Baby/Diapering & Potty/Changing Pads & Kits', 101001, '7 - 30'),
(670, '101002 - Mom & Baby/Diapering & Potty/Potty Training & Commode Chairs', 101002, '7 - 30'),
(671, '101003 - Mom & Baby/Diapering & Potty/Disposable Diapers', 101003, '7 - 30'),
(672, '101004 - Mom & Baby/Diapering & Potty/Cloth Diapers & Accessories', 101004, '7 - 30'),
(673, '101005 - Mom & Baby/Diapering & Potty/Others', 101005, '7 - 30'),
(674, '101007 - Mom & Baby/Toys/Block Toys', 101007, '7 - 30'),
(675, '101009 - Mom & Baby/Toys/Pretend Play', 101009, '7 - 30'),
(676, '101010 - Mom & Baby/Toys/Toy Vehicles', 101010, '7 - 30'),
(677, '101013 - Mom & Baby/Toys/Robot Toys', 101013, '7 - 30'),
(678, '101014 - Mom & Baby/Toys/Slime & Squishy Toys', 101014, '7 - 30'),
(679, '101015 - Mom & Baby/Toys/Others', 101015, '7 - 30'),
(680, '101016 - Baby & Kids Fashion/Baby Clothes/Regular Outerwear', 101016, '7 - 30'),
(681, '101017 - Baby & Kids Fashion/Baby Clothes/Winter Outerwear', 101017, '7 - 30'),
(682, '101018 - Baby & Kids Fashion/Baby Clothes/Dresses', 101018, '7 - 30'),
(683, '101020 - Baby & Kids Fashion/Baby Clothes/Sleepwear', 101020, '7 - 30'),
(684, '101021 - Baby & Kids Fashion/Baby Clothes/Tops', 101021, '7 - 30'),
(685, '101022 - Baby & Kids Fashion/Baby Clothes/Bodysuits & Jumpsuits', 101022, '7 - 30'),
(686, '101023 - Baby & Kids Fashion/Baby Clothes/Sets', 101023, '7 - 30'),
(687, '101024 - Baby & Kids Fashion/Baby Clothes/Swimwear', 101024, '7 - 30'),
(688, '101025 - Baby & Kids Fashion/Baby Clothes/Others', 101025, '7 - 30'),
(689, '101027 - Baby & Kids Fashion/Baby & Kids Accessories/Hats & Caps', 101027, '7 - 30'),
(690, '101028 - Baby & Kids Fashion/Baby & Kids Accessories/Eyewear', 101028, '7 - 30'),
(691, '101029 - Baby & Kids Fashion/Baby & Kids Accessories/Hair Accessories', 101029, '7 - 30'),
(692, '101030 - Baby & Kids Fashion/Baby & Kids Accessories/Gloves', 101030, '7 - 30'),
(693, '101031 - Baby & Kids Fashion/Baby & Kids Accessories/Belts', 101031, '7 - 30'),
(694, '101032 - Baby & Kids Fashion/Baby & Kids Accessories/Socks', 101032, '7 - 30'),
(695, '101033 - Baby & Kids Fashion/Baby & Kids Accessories/Scarves', 101033, '7 - 30'),
(696, '101034 - Baby & Kids Fashion/Baby & Kids Accessories/Watches', 101034, '7 - 30'),
(697, '101037 - Baby & Kids Fashion/Baby & Kids Accessories/Earmuffs', 101037, '7 - 30'),
(698, '101038 - Baby & Kids Fashion/Baby & Kids Accessories/Others', 101038, '7 - 30'),
(699, '101039 - Baby & Kids Fashion/Boy Clothes/Costumes', 101039, '7 - 30'),
(700, '101040 - Baby & Kids Fashion/Boy Clothes/Underwear & Innerwear', 101040, '7 - 30'),
(701, '101041 - Baby & Kids Fashion/Boy Clothes/Sleepwear', 101041, '7 - 30'),
(702, '101042 - Baby & Kids Fashion/Boy Clothes/Swimwear', 101042, '7 - 30'),
(703, '101046 - Baby & Kids Fashion/Boy Clothes/Suits & Sets', 101046, '7 - 30'),
(704, '101047 - Baby & Kids Fashion/Boy Clothes/Others', 101047, '7 - 30'),
(705, '101048 - Baby & Kids Fashion/Girl Clothes/Costumes', 101048, '7 - 30'),
(706, '101049 - Baby & Kids Fashion/Girl Clothes/Underwear & Innerwear', 101049, '7 - 30'),
(707, '101050 - Baby & Kids Fashion/Girl Clothes/Sleepwear', 101050, '7 - 30'),
(708, '101051 - Baby & Kids Fashion/Girl Clothes/Swimwear', 101051, '7 - 30'),
(709, '101055 - Baby & Kids Fashion/Girl Clothes/Rompers & Jumpsuits', 101055, '7 - 30'),
(710, '101056 - Baby & Kids Fashion/Girl Clothes/Dresses', 101056, '7 - 30'),
(711, '101057 - Baby & Kids Fashion/Girl Clothes/Suits & Sets', 101057, '7 - 30'),
(712, '101058 - Baby & Kids Fashion/Girl Clothes/Others', 101058, '7 - 30'),
(713, '101059 - Baby & Kids Fashion/Boy Shoes/Boots', 101059, '7 - 30'),
(714, '101060 - Baby & Kids Fashion/Boy Shoes/Sandals', 101060, '7 - 30'),
(715, '101061 - Baby & Kids Fashion/Boy Shoes/Sneakers', 101061, '7 - 30'),
(716, '101062 - Baby & Kids Fashion/Boy Shoes/Flip Flops', 101062, '7 - 30'),
(717, '101063 - Baby & Kids Fashion/Boy Shoes/Formal Shoes', 101063, '7 - 30'),
(718, '101064 - Baby & Kids Fashion/Boy Shoes/Loafers', 101064, '7 - 30'),
(719, '101065 - Baby & Kids Fashion/Boy Shoes/Others', 101065, '7 - 30'),
(720, '101066 - Baby & Kids Fashion/Girl Shoes/Boots', 101066, '7 - 30'),
(721, '101067 - Baby & Kids Fashion/Girl Shoes/Sandals', 101067, '7 - 30'),
(722, '101068 - Baby & Kids Fashion/Girl Shoes/Sneakers', 101068, '7 - 30'),
(723, '101069 - Baby & Kids Fashion/Girl Shoes/Loafers', 101069, '7 - 30'),
(724, '101070 - Baby & Kids Fashion/Girl Shoes/Flip Flops', 101070, '7 - 30'),
(725, '101071 - Baby & Kids Fashion/Girl Shoes/Flats', 101071, '7 - 30'),
(726, '101072 - Baby & Kids Fashion/Girl Shoes/Others', 101072, '7 - 30'),
(727, '101073 - Gaming & Consoles/Console Machines/Playstation', 101073, '7 - 30'),
(728, '101074 - Gaming & Consoles/Console Machines/Xbox', 101074, '7 - 30'),
(729, '101075 - Gaming & Consoles/Console Machines/Wii', 101075, '7 - 30'),
(730, '101076 - Gaming & Consoles/Console Machines/Nintendo DS', 101076, '7 - 30'),
(731, '101077 - Gaming & Consoles/Console Machines/Gameboy', 101077, '7 - 30'),
(732, '101078 - Gaming & Consoles/Console Machines/Switch', 101078, '7 - 30'),
(733, '101079 - Gaming & Consoles/Console Machines/PS Vita', 101079, '7 - 30'),
(734, '101080 - Gaming & Consoles/Console Machines/PSP', 101080, '7 - 30'),
(735, '101081 - Gaming & Consoles/Console Machines/Others', 101081, '7 - 30'),
(736, '101082 - Gaming & Consoles/Video Games/Playstation', 101082, '7 - 30'),
(737, '101083 - Gaming & Consoles/Video Games/Xbox', 101083, '7 - 30'),
(738, '101084 - Gaming & Consoles/Video Games/Wii', 101084, '7 - 30'),
(739, '101085 - Gaming & Consoles/Video Games/Nintendo DS', 101085, '7 - 30'),
(740, '101086 - Gaming & Consoles/Video Games/Gameboy', 101086, '7 - 30'),
(741, '101087 - Gaming & Consoles/Video Games/Switch', 101087, '7 - 30'),
(742, '101088 - Gaming & Consoles/Video Games/PS Vita', 101088, '7 - 30'),
(743, '101089 - Gaming & Consoles/Video Games/PSP', 101089, '7 - 30'),
(744, '101090 - Gaming & Consoles/Video Games/PC Game', 101090, '7 - 30'),
(745, '101091 - Gaming & Consoles/Video Games/Others', 101091, '7 - 30'),
(746, '101092 - Cameras & Drones/Cameras/Point & Shoot', 101092, '7 - 30'),
(747, '101093 - Cameras & Drones/Cameras/Mirrorless Cameras', 101093, '7 - 30'),
(748, '101094 - Cameras & Drones/Cameras/Action Cameras', 101094, '7 - 30'),
(749, '101095 - Cameras & Drones/Cameras/Video Camcorders', 101095, '7 - 30'),
(750, '101096 - Cameras & Drones/Cameras/Instant Cameras', 101096, '7 - 30'),
(751, '101097 - Cameras & Drones/Cameras/Analog Cameras', 101097, '7 - 30'),
(752, '101098 - Cameras & Drones/Cameras/DSLRs', 101098, '7 - 30'),
(753, '101099 - Cameras & Drones/Cameras/Others', 101099, '7 - 30'),
(754, '101100 - Cameras & Drones/Security Cameras & Systems/CCTV Security Cameras', 101100, '7 - 30'),
(755, '101101 - Cameras & Drones/Security Cameras & Systems/DVRs', 101101, '7 - 30'),
(756, '101102 - Cameras & Drones/Security Cameras & Systems/Dummy Cameras', 101102, '7 - 30'),
(757, '101103 - Cameras & Drones/Security Cameras & Systems/Spy Cameras', 101103, '7 - 30'),
(758, '101104 - Cameras & Drones/Security Cameras & Systems/Others', 101104, '7 - 30'),
(759, '101105 - Cameras & Drones/Lens Accessories/Lens Mount & Adaptors', 101105, '7 - 30'),
(760, '101106 - Cameras & Drones/Lens Accessories/Lens Caps', 101106, '7 - 30'),
(761, '101107 - Cameras & Drones/Lens Accessories/Filters', 101107, '7 - 30'),
(762, '101108 - Cameras & Drones/Lens Accessories/Lens Hoods', 101108, '7 - 30'),
(763, '101109 - Cameras & Drones/Lens Accessories/Others', 101109, '7 - 30'),
(764, '101110 - Cameras & Drones/Camera Accessories/Flashes', 101110, '7 - 30'),
(765, '101112 - Cameras & Drones/Camera Accessories/Gimbals & Stabilizers', 101112, '7 - 30'),
(766, '101113 - Cameras & Drones/Camera Accessories/Lighting & Studio Equipments', 101113, '7 - 30'),
(767, '101114 - Cameras & Drones/Camera Accessories/Photo Films & Papers', 101114, '7 - 30'),
(768, '101115 - Cameras & Drones/Camera Accessories/Photo Printers', 101115, '7 - 30'),
(769, '101116 - Cameras & Drones/Camera Accessories/Camera Cases & Bags', 101116, '7 - 30'),
(770, '101117 - Cameras & Drones/Camera Accessories/Battery Chargers', 101117, '7 - 30'),
(771, '101118 - Cameras & Drones/Camera Accessories/Batteries & Battery Grips', 101118, '7 - 30'),
(772, '101119 - Cameras & Drones/Camera Accessories/Tripods, Monopods, & Accessories', 101119, '7 - 30'),
(773, '101120 - Cameras & Drones/Camera Accessories/Others', 101120, '7 - 30'),
(774, '101121 - Cameras & Drones/Camera Care/Dry Boxes & Cabinets', 101121, '7 - 30'),
(775, '101122 - Cameras & Drones/Camera Care/Cleaning Kit', 101122, '7 - 30'),
(776, '101123 - Cameras & Drones/Camera Care/Silica Gel', 101123, '7 - 30'),
(777, '101124 - Cameras & Drones/Camera Care/Blowers', 101124, '7 - 30'),
(778, '101125 - Cameras & Drones/Camera Care/Lenspens & Brushes', 101125, '7 - 30'),
(779, '101126 - Cameras & Drones/Camera Care/Others', 101126, '7 - 30'),
(780, '101127 - Home & Living/Home Fragrance & Aromatherapy/Air Fresheners & Home Fragrance', 101127, '7 - 30'),
(781, '101128 - Home & Living/Home Fragrance & Aromatherapy/Essential Oils', 101128, '7 - 30'),
(782, '101129 - Home & Living/Home Fragrance & Aromatherapy/Diffusers, Humidifiers & Oil Burners', 101129, '7 - 30'),
(783, '101130 - Home & Living/Home Fragrance & Aromatherapy/Others', 101130, '7 - 30'),
(784, '101131 - Home & Living/Bathrooms/Toilet Bowls, Seats & Covers', 101131, '7 - 30'),
(785, '101132 - Home & Living/Bathrooms/Toothbrush Holders & Toothpaste Dispensers', 101132, '7 - 30'),
(786, '101133 - Home & Living/Bathrooms/Soap Dispensers, Holders & Boxes', 101133, '7 - 30'),
(787, '101134 - Home & Living/Bathrooms/Bathroom Racks & Cabinets', 101134, '7 - 30'),
(788, '101135 - Home & Living/Bathrooms/Bathtubs', 101135, '7 - 30'),
(789, '101137 - Home & Living/Bathrooms/Showerheads & Bidet Sprays', 101137, '7 - 30'),
(790, '101138 - Home & Living/Bathrooms/Bath Brushes & Loofahs', 101138, '7 - 30'),
(791, '101139 - Home & Living/Bathrooms/Shower Curtains', 101139, '7 - 30'),
(792, '101140 - Home & Living/Bathrooms/Shower Seats & Commodes', 101140, '7 - 30'),
(793, '101141 - Home & Living/Bathrooms/Safety Handles', 101141, '7 - 30'),
(794, '101142 - Home & Living/Bathrooms/Shower Caps', 101142, '7 - 30'),
(795, '101143 - Home & Living/Bathrooms/Others', 101143, '7 - 30'),
(796, '101144 - Home & Living/Bedding/Cooling Mats', 101144, '7 - 30'),
(797, '101145 - Home & Living/Bedding/Mattress Protectors & Toppers', 101145, '7 - 30'),
(798, '101146 - Home & Living/Bedding/Blankets, Comforters & Quilts', 101146, '7 - 30'),
(799, '101147 - Home & Living/Bedding/Pillows', 101147, '7 - 30'),
(800, '101148 - Home & Living/Bedding/Bedsheets, Pillowcases & Bolster Cases', 101148, '7 - 30'),
(801, '101149 - Home & Living/Bedding/Matresses', 101149, '7 - 30'),
(802, '101150 - Home & Living/Bedding/Mosquito Nets', 101150, '7 - 30'),
(803, '101151 - Home & Living/Bedding/Bolsters', 101151, '7 - 30'),
(804, '101152 - Home & Living/Bedding/Others', 101152, '7 - 30'),
(805, '101153 - Home & Living/Decoration/Flowers', 101153, '7 - 30'),
(806, '101154 - Home & Living/Decoration/Furniture & Appliance Covers', 101154, '7 - 30'),
(807, '101155 - Home & Living/Decoration/Curtains & Blinds', 101155, '7 - 30'),
(808, '101156 - Home & Living/Decoration/Photo Frames & Wall Decoration', 101156, '7 - 30'),
(809, '101157 - Home & Living/Decoration/Wallpapers & Wall Stickers', 101157, '7 - 30'),
(810, '101158 - Home & Living/Decoration/Clocks', 101158, '7 - 30'),
(811, '101159 - Home & Living/Decoration/Floor Mats', 101159, '7 - 30'),
(812, '101160 - Home & Living/Decoration/Carpets & Rugs', 101160, '7 - 30'),
(813, '101161 - Home & Living/Decoration/Vases & Vessels', 101161, '7 - 30'),
(814, '101162 - Home & Living/Decoration/Candles & Candleholders', 101162, '7 - 30'),
(815, '101163 - Home & Living/Decoration/Mirrors', 101163, '7 - 30'),
(816, '101164 - Home & Living/Decoration/Table Cloths', 101164, '7 - 30'),
(817, '101165 - Home & Living/Decoration/Others', 101165, '7 - 30'),
(818, '101166 - Home & Living/Furniture/Cushions', 101166, '7 - 30'),
(819, '101167 - Home & Living/Furniture/Doorstoppers', 101167, '7 - 30'),
(820, '101168 - Home & Living/Furniture/Bed Frames & Headboards', 101168, '7 - 30'),
(821, '101169 - Home & Living/Furniture/Desks & Tables', 101169, '7 - 30'),
(822, '101170 - Home & Living/Furniture/Wardrobes', 101170, '7 - 30'),
(823, '101171 - Home & Living/Furniture/Benches, Chairs & Stools', 101171, '7 - 30'),
(824, '101172 - Home & Living/Furniture/Sofas', 101172, '7 - 30'),
(825, '101173 - Home & Living/Furniture/Cupboards & Cabinets', 101173, '7 - 30'),
(826, '101174 - Home & Living/Furniture/Shelves & Racks', 101174, '7 - 30'),
(827, '101175 - Home & Living/Furniture/Others', 101175, '7 - 30'),
(828, '101176 - Home & Living/Gardening/Plants', 101176, '7 - 30'),
(829, '101177 - Home & Living/Gardening/Garden Decorations', 101177, '7 - 30'),
(830, '101178 - Home & Living/Gardening/Garden Soils & Growing Media', 101178, '7 - 30'),
(831, '101179 - Home & Living/Gardening/Fertilizer', 101179, '7 - 30'),
(832, '101180 - Home & Living/Gardening/Seeds & Bulbs', 101180, '7 - 30'),
(833, '101181 - Home & Living/Gardening/Pots & Planters', 101181, '7 - 30'),
(834, '101182 - Home & Living/Gardening/Irrigation Systems', 101182, '7 - 30'),
(835, '101183 - Home & Living/Gardening/Gardening Tools', 101183, '7 - 30'),
(836, '101184 - Home & Living/Gardening/Others', 101184, '7 - 30'),
(837, '101185 - Home & Living/Gardening/Lawn Mowers', 101185, '7 - 30'),
(838, '101186 - Home & Living/Tools & Home Improvement/Industrial Adhesives & Tapes', 101186, '7 - 30'),
(839, '101187 - Home & Living/Tools & Home Improvement/Protective Gloves, Goggles & Masks', 101187, '7 - 30'),
(840, '101188 - Home & Living/Tools & Home Improvement/Sinks & Water Taps', 101188, '7 - 30'),
(841, '101189 - Home & Living/Tools & Home Improvement/Roofing & Flooring', 101189, '7 - 30'),
(842, '101190 - Home & Living/Tools & Home Improvement/Wall Paints & Coatings', 101190, '7 - 30'),
(843, '101192 - Home & Living/Tools & Home Improvement/Water Pumps, Parts & Accessories', 101192, '7 - 30'),
(844, '101193 - Home & Living/Tools & Home Improvement/Air Pumps, Parts & Accessories', 101193, '7 - 30'),
(845, '101194 - Home & Living/Tools & Home Improvement/Ladders', 101194, '7 - 30'),
(846, '101195 - Home & Living/Tools & Home Improvement/Trollies', 101195, '7 - 30'),
(847, '101196 - Home & Living/Tools & Home Improvement/Shades, Awnings & Tarpaulins', 101196, '7 - 30'),
(848, '101197 - Home & Living/Tools & Home Improvement/Construction Materials', 101197, '7 - 30'),
(849, '101198 - Home & Living/Tools & Home Improvement/Doors & Windows', 101198, '7 - 30'),
(850, '101199 - Home & Living/Tools & Home Improvement/Others', 101199, '7 - 30'),
(851, '101200 - Home & Living/Home Care Supplies/Clotheslines & Drying Racks', 101200, '7 - 30'),
(852, '101201 - Home & Living/Home Care Supplies/Cleaning Brushes', 101201, '7 - 30'),
(853, '101202 - Home & Living/Home Care Supplies/Brooms', 101202, '7 - 30'),
(854, '101203 - Home & Living/Home Care Supplies/Dusters', 101203, '7 - 30'),
(855, '101204 - Home & Living/Home Care Supplies/Mops', 101204, '7 - 30'),
(856, '101205 - Home & Living/Home Care Supplies/Basins, Buckets & Water Dippers', 101205, '7 - 30'),
(857, '101206 - Home & Living/Home Care Supplies/Sponges & Scouring Pads', 101206, '7 - 30'),
(858, '101207 - Home & Living/Home Care Supplies/Trash & Recycling Bins', 101207, '7 - 30'),
(859, '101208 - Home & Living/Home Care Supplies/Plastic Bags & Trash Bags', 101208, '7 - 30'),
(860, '101209 - Home & Living/Home Care Supplies/Cleaning Cloths', 101209, '7 - 30'),
(861, '101210 - Home & Living/Home Care Supplies/Pest & Weed Control', 101210, '7 - 30'),
(862, '101211 - Home & Living/Home Care Supplies/Tissue & Paper Towels', 101211, '7 - 30'),
(863, '101212 - Home & Living/Home Care Supplies/Toilet Paper', 101212, '7 - 30'),
(864, '101213 - Home & Living/Home Care Supplies/Cleaning Agents', 101213, '7 - 30'),
(865, '101215 - Home & Living/Home Care Supplies/Others', 101215, '7 - 30'),
(866, '101216 - Home & Living/Kitchenware/Grills & Accessories', 101216, '7 - 30'),
(867, '101217 - Home & Living/Kitchenware/Bakewares & Decorations', 101217, '7 - 30'),
(868, '101218 - Home & Living/Kitchenware/Pans', 101218, '7 - 30'),
(869, '101219 - Home & Living/Kitchenware/Pots', 101219, '7 - 30'),
(870, '101220 - Home & Living/Kitchenware/Food Storage', 101220, '7 - 30'),
(871, '101221 - Home & Living/Kitchenware/Cling Wrap', 101221, '7 - 30'),
(872, '101222 - Home & Living/Kitchenware/Aluminium Foil', 101222, '7 - 30'),
(873, '101223 - Home & Living/Kitchenware/Tea, Coffee & Bartending Equipments', 101223, '7 - 30'),
(874, '101224 - Home & Living/Kitchenware/Kitchen Racks', 101224, '7 - 30'),
(875, '101225 - Home & Living/Kitchenware/Aprons & Kitchen Gloves', 101225, '7 - 30'),
(876, '101226 - Home & Living/Kitchenware/Spatulas & Cooking Tweezers', 101226, '7 - 30'),
(877, '101227 - Home & Living/Kitchenware/Chopping Boards', 101227, '7 - 30'),
(878, '101228 - Home & Living/Kitchenware/Knives & Kitchen Scissors', 101228, '7 - 30'),
(879, '101229 - Home & Living/Kitchenware/Whisks & Beaters', 101229, '7 - 30'),
(880, '101230 - Home & Living/Kitchenware/Can & Bottle Openers', 101230, '7 - 30'),
(881, '101231 - Home & Living/Kitchenware/Measuring Glasses & Spoons', 101231, '7 - 30'),
(882, '101232 - Home & Living/Kitchenware/Strainers', 101232, '7 - 30'),
(883, '101233 - Home & Living/Kitchenware/Graters, Peelers & Cutters', 101233, '7 - 30'),
(884, '101234 - Home & Living/Kitchenware/Kitchen Weighing Scales', 101234, '7 - 30'),
(885, '101235 - Home & Living/Kitchenware/Sealers', 101235, '7 - 30'),
(886, '101236 - Home & Living/Kitchenware/Lighters, Matches & Fire Starters', 101236, '7 - 30'),
(887, '101237 - Home & Living/Kitchenware/Others', 101237, '7 - 30'),
(888, '101238 - Home & Living/Dinnerware/Jugs, Pitchers & Accessories', 101238, '7 - 30'),
(889, '101239 - Home & Living/Dinnerware/Tea Pots & Sets', 101239, '7 - 30'),
(890, '101240 - Home & Living/Dinnerware/Cups, Mugs & Glasses', 101240, '7 - 30'),
(891, '101241 - Home & Living/Dinnerware/Water Bottles & Accessories', 101241, '7 - 30'),
(892, '101242 - Home & Living/Dinnerware/Bowls', 101242, '7 - 30'),
(893, '101243 - Home & Living/Dinnerware/Plates', 101243, '7 - 30'),
(894, '101244 - Home & Living/Dinnerware/Cutleries', 101244, '7 - 30'),
(895, '101245 - Home & Living/Dinnerware/Straws', 101245, '7 - 30'),
(896, '101246 - Home & Living/Dinnerware/Food Covers', 101246, '7 - 30'),
(897, '101247 - Home & Living/Dinnerware/Placemats & Coasters', 101247, '7 - 30'),
(898, '101248 - Home & Living/Dinnerware/Others', 101248, '7 - 30'),
(899, '101249 - Home & Living/Safety & Security/Safes', 101249, '7 - 30'),
(900, '101250 - Home & Living/Safety & Security/Fire Fighting Equipments', 101250, '7 - 30'),
(901, '101251 - Home & Living/Safety & Security/Door Hardware & Locks', 101251, '7 - 30'),
(902, '101252 - Home & Living/Safety & Security/Others', 101252, '7 - 30'),
(903, '101253 - Home & Living/Home Organizers/Hangers & Pegs', 101253, '7 - 30'),
(904, '101254 - Home & Living/Home Organizers/Storage Boxes, Bags & Baskets', 101254, '7 - 30'),
(905, '101255 - Home & Living/Home Organizers/Shoe Storage Boxes', 101255, '7 - 30'),
(906, '101256 - Home & Living/Home Organizers/Hooks', 101256, '7 - 30'),
(907, '101257 - Home & Living/Home Organizers/Laundry Bags & Baskets', 101257, '7 - 30'),
(908, '101258 - Home & Living/Home Organizers/Desk Organizers', 101258, '7 - 30'),
(909, '101259 - Home & Living/Home Organizers/Wardrobe Organizers', 101259, '7 - 30'),
(910, '101260 - Home & Living/Home Organizers/Jewelry Organizers', 101260, '7 - 30'),
(911, '101261 - Home & Living/Home Organizers/Tissue Holders', 101261, '7 - 30'),
(912, '101262 - Home & Living/Home Organizers/Others', 101262, '7 - 30'),
(913, '101263 - Home & Living/Party Supplies/Balloons', 101263, '7 - 30'),
(914, '101264 - Home & Living/Party Supplies/Wooden Clips', 101264, '7 - 30'),
(915, '101265 - Home & Living/Party Supplies/Backdrops & Banners', 101265, '7 - 30'),
(916, '101266 - Home & Living/Party Supplies/Cards', 101266, '7 - 30'),
(917, '101267 - Home & Living/Party Supplies/Disposable Tableware', 101267, '7 - 30'),
(918, '101268 - Home & Living/Party Supplies/Party Hats & Masks', 101268, '7 - 30'),
(919, '101269 - Home & Living/Party Supplies/Sashes', 101269, '7 - 30'),
(920, '101270 - Home & Living/Party Supplies/Others', 101270, '7 - 30'),
(921, '101274 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Rock Climbing', 101274, '7 - 30'),
(922, '101285 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Baseball & Softball', 101285, '7 - 30'),
(923, '101286 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Squash', 101286, '7 - 30'),
(924, '101288 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Rugby', 101288, '7 - 30'),
(925, '101289 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Billiards', 101289, '7 - 30'),
(926, '101290 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Surfing & Wakeboarding', 101290, '7 - 30'),
(927, '101291 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Ice Skating & Winter Sports', 101291, '7 - 30'),
(928, '101293 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Boating', 101293, '7 - 30'),
(929, '101296 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Darts', 101296, '7 - 30'),
(930, '101297 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Others', 101297, '7 - 30'),
(931, '101298 - Sports & Outdoors/Sports Footwear/Basketball Shoes', 101298, '7 - 30'),
(932, '101299 - Sports & Outdoors/Sports Footwear/Running Shoes', 101299, '7 - 30'),
(933, '101300 - Sports & Outdoors/Sports Footwear/Training Shoes', 101300, '7 - 30'),
(934, '101301 - Sports & Outdoors/Sports Footwear/Tennis Shoes', 101301, '7 - 30'),
(935, '101302 - Sports & Outdoors/Sports Footwear/Volleyball Shoes', 101302, '7 - 30'),
(936, '101303 - Sports & Outdoors/Sports Footwear/Badminton Shoes', 101303, '7 - 30'),
(937, '101304 - Sports & Outdoors/Sports Footwear/Futsal Shoes', 101304, '7 - 30'),
(938, '101305 - Sports & Outdoors/Sports Footwear/Hiking Shoes', 101305, '7 - 30'),
(939, '101306 - Sports & Outdoors/Sports Footwear/Soccer Shoes', 101306, '7 - 30'),
(940, '101307 - Sports & Outdoors/Sports Footwear/Kid\'s Sport Shoes', 101307, '7 - 30'),
(941, '101308 - Sports & Outdoors/Sports Footwear/Others', 101308, '7 - 30'),
(942, '101309 - Sports & Outdoors/Sports & Outdoor Apparels/Sets', 101309, '7 - 30'),
(943, '101310 - Sports & Outdoors/Sports & Outdoor Apparels/Jackets', 101310, '7 - 30'),
(944, '101311 - Sports & Outdoors/Sports & Outdoor Apparels/Tops', 101311, '7 - 30'),
(945, '101312 - Sports & Outdoors/Sports & Outdoor Apparels/Jerseys', 101312, '7 - 30'),
(946, '101313 - Sports & Outdoors/Sports & Outdoor Apparels/Bottoms', 101313, '7 - 30'),
(947, '101315 - Sports & Outdoors/Sports & Outdoor Apparels/Sports Bras', 101315, '7 - 30'),
(948, '101316 - Sports & Outdoors/Sports & Outdoor Apparels/Kid\'s Sports Apparel', 101316, '7 - 30'),
(949, '101317 - Sports & Outdoors/Sports & Outdoor Apparels/Others', 101317, '7 - 30'),
(950, '101318 - Sports & Outdoors/Sports & Outdoor Accessories/Stopwatches & Pedometers', 101318, '7 - 30'),
(951, '101319 - Sports & Outdoors/Sports & Outdoor Accessories/Shoe Bags', 101319, '7 - 30'),
(952, '101320 - Sports & Outdoors/Sports & Outdoor Accessories/Sports Wristbands', 101320, '7 - 30'),
(953, '101321 - Sports & Outdoors/Sports & Outdoor Accessories/Sports Headbands', 101321, '7 - 30'),
(954, '101322 - Sports & Outdoors/Sports & Outdoor Accessories/Sports & Outdoor Hats', 101322, '7 - 30'),
(955, '101323 - Sports & Outdoors/Sports & Outdoor Accessories/Dry Bags', 101323, '7 - 30'),
(956, '101324 - Sports & Outdoors/Sports & Outdoor Accessories/Rain Coats', 101324, '7 - 30'),
(957, '101325 - Sports & Outdoors/Sports & Outdoor Accessories/Umbrellas', 101325, '7 - 30'),
(958, '101326 - Sports & Outdoors/Sports & Outdoor Accessories/Mouthguards & Sport Tapes', 101326, '7 - 30'),
(959, '101327 - Sports & Outdoors/Sports & Outdoor Accessories/Training Equipments', 101327, '7 - 30'),
(960, '101328 - Sports & Outdoors/Sports & Outdoor Accessories/Gym Protective Gears', 101328, '7 - 30'),
(961, '101329 - Sports & Outdoors/Sports & Outdoor Accessories/Others', 101329, '7 - 30'),
(962, '101330 - Stationery/Gift & Wrapping/Gift Wrappers', 101330, '7 - 30'),
(963, '101331 - Stationery/Gift & Wrapping/Gift Boxes', 101331, '7 - 30'),
(964, '101332 - Stationery/Gift & Wrapping/Gift Bags', 101332, '7 - 30'),
(965, '101333 - Stationery/Gift & Wrapping/Ribbons', 101333, '7 - 30'),
(966, '101334 - Stationery/Gift & Wrapping/Bubble Wraps', 101334, '7 - 30'),
(967, '101335 - Stationery/Gift & Wrapping/Carton Boxes', 101335, '7 - 30'),
(968, '101336 - Stationery/Gift & Wrapping/Others', 101336, '7 - 30'),
(969, '101337 - Stationery/Writing & Correction/Pens & Inks', 101337, '7 - 30'),
(970, '101338 - Stationery/Writing & Correction/Pencils', 101338, '7 - 30'),
(971, '101339 - Stationery/Writing & Correction/Eraser & Correction Supplies', 101339, '7 - 30'),
(972, '101340 - Stationery/Writing & Correction/Markers', 101340, '7 - 30'),
(973, '101341 - Stationery/Writing & Correction/Highlighters', 101341, '7 - 30'),
(974, '101342 - Stationery/Writing & Correction/Others', 101342, '7 - 30'),
(975, '101343 - Stationery/School & Office Equipment/Writing Boards & Board Stands', 101343, '7 - 30'),
(976, '101344 - Stationery/School & Office Equipment/Calculators', 101344, '7 - 30'),
(977, '101345 - Stationery/School & Office Equipment/Pen Knives & Paper Cutters', 101345, '7 - 30'),
(978, '101346 - Stationery/School & Office Equipment/Strings & Tapes', 101346, '7 - 30'),
(979, '101347 - Stationery/School & Office Equipment/Glues', 101347, '7 - 30'),
(980, '101348 - Stationery/School & Office Equipment/Label Printers', 101348, '7 - 30'),
(981, '101349 - Stationery/School & Office Equipment/Lanyards & Name Tags', 101349, '7 - 30'),
(982, '101350 - Stationery/School & Office Equipment/Clips, Pins & Tacks', 101350, '7 - 30'),
(983, '101351 - Stationery/School & Office Equipment/Hole Punchers', 101351, '7 - 30'),
(984, '101352 - Stationery/School & Office Equipment/Scissors', 101352, '7 - 30'),
(985, '101353 - Stationery/School & Office Equipment/Ink Stamps & Pads', 101353, '7 - 30'),
(986, '101354 - Stationery/School & Office Equipment/Staplers & Staples', 101354, '7 - 30'),
(987, '101355 - Stationery/School & Office Equipment/Calendars', 101355, '7 - 30'),
(988, '101356 - Stationery/School & Office Equipment/Folders, Paper Organizers & Accessories', 101356, '7 - 30'),
(989, '101357 - Stationery/School & Office Equipment/Rulers, Protractors & Stencils', 101357, '7 - 30'),
(990, '101358 - Stationery/School & Office Equipment/Sharpeners', 101358, '7 - 30'),
(991, '101359 - Stationery/School & Office Equipment/Pencil Cases', 101359, '7 - 30'),
(992, '101360 - Stationery/School & Office Equipment/Others', 101360, '7 - 30'),
(993, '101361 - Stationery/Art Supplies/Color Pencils', 101361, '7 - 30'),
(994, '101362 - Stationery/Art Supplies/Crayons & Pastels', 101362, '7 - 30'),
(995, '101363 - Stationery/Art Supplies/Water & Poster Colours', 101363, '7 - 30'),
(996, '101364 - Stationery/Art Supplies/Oil Paint', 101364, '7 - 30'),
(997, '101365 - Stationery/Art Supplies/Acrylic Paint', 101365, '7 - 30'),
(998, '101366 - Stationery/Art Supplies/Paint Brushes', 101366, '7 - 30'),
(999, '101367 - Stationery/Art Supplies/Paint Palettes', 101367, '7 - 30'),
(1000, '101368 - Stationery/Art Supplies/Canvases & Easels', 101368, '7 - 30'),
(1001, '101369 - Stationery/Art Supplies/Sketch Books', 101369, '7 - 30'),
(1002, '101370 - Stationery/Art Supplies/Others', 101370, '7 - 30'),
(1003, '101371 - Stationery/Notebooks & Papers/Bookmarks', 101371, '7 - 30'),
(1004, '101372 - Stationery/Notebooks & Papers/Book Covers', 101372, '7 - 30'),
(1005, '101373 - Stationery/Notebooks & Papers/Thermal Paper & Continuous Paper', 101373, '7 - 30'),
(1006, '101374 - Stationery/Notebooks & Papers/Printing & Photocopy Paper', 101374, '7 - 30'),
(1007, '101375 - Stationery/Notebooks & Papers/Loose Leaf', 101375, '7 - 30'),
(1008, '101376 - Stationery/Notebooks & Papers/Memo & Sticky Notes', 101376, '7 - 30'),
(1009, '101377 - Stationery/Notebooks & Papers/Art Paper & Boards', 101377, '7 - 30'),
(1010, '101378 - Stationery/Notebooks & Papers/Notebooks & Notepads', 101378, '7 - 30'),
(1011, '101379 - Stationery/Notebooks & Papers/Labels & Stickers', 101379, '7 - 30'),
(1012, '101380 - Stationery/Notebooks & Papers/Others', 101380, '7 - 30'),
(1013, '101381 - Stationery/Letters & Envelopes/Envelopes & Angpao', 101381, '7 - 30'),
(1014, '101382 - Stationery/Letters & Envelopes/Post Cards', 101382, '7 - 30'),
(1015, '101383 - Stationery/Letters & Envelopes/Postage Stamps & Duty Stamps', 101383, '7 - 30'),
(1016, '101384 - Stationery/Letters & Envelopes/Others', 101384, '7 - 30'),
(1017, '101385 - Hobbies & Collections/Collectible Items/Action Figurines', 101385, '7 - 30'),
(1018, '101386 - Hobbies & Collections/Collectible Items/Statues & Sculptures', 101386, '7 - 30'),
(1019, '101387 - Hobbies & Collections/Collectible Items/Mecha Models & Diecast', 101387, '7 - 30'),
(1020, '101388 - Hobbies & Collections/Collectible Items/Vehicle Models & Diecast', 101388, '7 - 30'),
(1021, '101389 - Hobbies & Collections/Collectible Items/Stones & Minerals', 101389, '7 - 30'),
(1022, '101390 - Hobbies & Collections/Collectible Items/Idol Collectibles', 101390, '7 - 30'),
(1023, '101391 - Hobbies & Collections/Collectible Items/Sports Collectibles', 101391, '7 - 30'),
(1024, '101392 - Hobbies & Collections/Collectible Items/Anime & Manga Collectibles', 101392, '7 - 30'),
(1025, '101393 - Hobbies & Collections/Collectible Items/Coins & Bank Notes', 101393, '7 - 30'),
(1026, '101394 - Hobbies & Collections/Collectible Items/Others', 101394, '7 - 30'),
(1027, '101395 - Hobbies & Collections/Souvenirs/Hand Fans', 101395, '7 - 30'),
(1028, '101396 - Hobbies & Collections/Souvenirs/Keychains', 101396, '7 - 30'),
(1029, '101397 - Hobbies & Collections/Souvenirs/Coin Banks', 101397, '7 - 30'),
(1030, '101398 - Hobbies & Collections/Souvenirs/Fridge Magnets', 101398, '7 - 30'),
(1031, '101399 - Hobbies & Collections/Souvenirs/Others', 101399, '7 - 30'),
(1032, '101400 - Hobbies & Collections/Toys & Games/Dice, Board & Card Games', 101400, '7 - 30'),
(1033, '101401 - Hobbies & Collections/Toys & Games/Magic Toys', 101401, '7 - 30'),
(1034, '101402 - Hobbies & Collections/Toys & Games/Prank Toys', 101402, '7 - 30'),
(1035, '101403 - Hobbies & Collections/Toys & Games/Rubik\'s Cubes', 101403, '7 - 30'),
(1036, '101404 - Hobbies & Collections/Toys & Games/Spinning Tops', 101404, '7 - 30'),
(1037, '101405 - Hobbies & Collections/Toys & Games/Kendamas', 101405, '7 - 30'),
(1038, '101406 - Hobbies & Collections/Toys & Games/Yo-yos', 101406, '7 - 30'),
(1039, '101407 - Hobbies & Collections/Toys & Games/Remote Control Toys & Accessories', 101407, '7 - 30'),
(1040, '101408 - Hobbies & Collections/Toys & Games/Capsule Toys', 101408, '7 - 30'),
(1041, '101409 - Hobbies & Collections/Toys & Games/Others', 101409, '7 - 30'),
(1042, '101410 - Hobbies & Collections/Musical Instruments & Accessories/Keyboards & Pianos', 101410, '7 - 30'),
(1043, '101411 - Hobbies & Collections/Musical Instruments & Accessories/Percussion Instruments', 101411, '7 - 30'),
(1044, '101412 - Hobbies & Collections/Musical Instruments & Accessories/Wind Instruments', 101412, '7 - 30'),
(1045, '101413 - Hobbies & Collections/Musical Instruments & Accessories/Music Accessories', 101413, '7 - 30'),
(1046, '101414 - Hobbies & Collections/Musical Instruments & Accessories/Others', 101414, '7 - 30'),
(1047, '101415 - Automobiles/Automobile Interior Accessories/Navigation & AV Receivers', 101415, '7 - 30'),
(1048, '101416 - Automobiles/Automobile Interior Accessories/Amplifiers, Speakers & Subwoofers', 101416, '7 - 30'),
(1049, '101417 - Automobiles/Automobile Interior Accessories/Organizers & Compartments', 101417, '7 - 30'),
(1050, '101418 - Automobiles/Automobile Interior Accessories/Perfumes, Air Fresheners & Purifiers', 101418, '7 - 30'),
(1051, '101419 - Automobiles/Automobile Interior Accessories/Carpets & Mats', 101419, '7 - 30'),
(1052, '101420 - Automobiles/Automobile Interior Accessories/Seat Headrests & Back Supports', 101420, '7 - 30'),
(1053, '101421 - Automobiles/Automobile Interior Accessories/Car Mattresses', 101421, '7 - 30'),
(1054, '101422 - Automobiles/Automobile Interior Accessories/Steering Wheels & Covers', 101422, '7 - 30'),
(1055, '101423 - Automobiles/Automobile Interior Accessories/Seats & Seat Covers', 101423, '7 - 30'),
(1056, '101424 - Automobiles/Automobile Interior Accessories/Phone Holders', 101424, '7 - 30'),
(1057, '101425 - Automobiles/Automobile Interior Accessories/USB Chargers, FM & Bluetooth Transmitters', 101425, '7 - 30'),
(1058, '101426 - Automobiles/Automobile Interior Accessories/Pedals & Gear Sticks', 101426, '7 - 30'),
(1059, '101427 - Automobiles/Automobile Interior Accessories/Sun Shields & Dash Covers', 101427, '7 - 30'),
(1060, '101428 - Automobiles/Automobile Interior Accessories/Locks & Security', 101428, '7 - 30'),
(1061, '101429 - Automobiles/Automobile Interior Accessories/Camcorders & Parking Cameras', 101429, '7 - 30'),
(1062, '101430 - Automobiles/Automobile Interior Accessories/HUD, Speedometers & Gauges', 101430, '7 - 30'),
(1063, '101431 - Automobiles/Automobile Interior Accessories/Others', 101431, '7 - 30'),
(1064, '101432 - Automobiles/Automobile Exterior Accessories/Garnish', 101432, '7 - 30'),
(1065, '101433 - Automobiles/Automobile Exterior Accessories/Antennas', 101433, '7 - 30'),
(1066, '101434 - Automobiles/Automobile Exterior Accessories/Covers', 101434, '7 - 30'),
(1067, '101435 - Automobiles/Automobile Exterior Accessories/Stickers, Logos & Emblems', 101435, '7 - 30'),
(1068, '101436 - Automobiles/Automobile Exterior Accessories/Mud Flaps & Splash Guards', 101436, '7 - 30'),
(1069, '101437 - Automobiles/Automobile Exterior Accessories/Sill Plates', 101437, '7 - 30'),
(1070, '101438 - Automobiles/Automobile Exterior Accessories/Gutters', 101438, '7 - 30'),
(1071, '101439 - Automobiles/Automobile Exterior Accessories/Horns & Accessories', 101439, '7 - 30'),
(1072, '101440 - Automobiles/Automobile Exterior Accessories/Mirrors & Accessories', 101440, '7 - 30'),
(1073, '101441 - Automobiles/Automobile Exterior Accessories/License Plate Accessories', 101441, '7 - 30'),
(1074, '101442 - Automobiles/Automobile Exterior Accessories/Others', 101442, '7 - 30'),
(1075, '101443 - Automobiles/Automobile Spare Parts/Body, Frame & Bumpers', 101443, '7 - 30'),
(1076, '101444 - Automobiles/Automobile Spare Parts/Windshield Wipers & Washers', 101444, '7 - 30'),
(1077, '101445 - Automobiles/Automobile Spare Parts/Exhaust & Emissions', 101445, '7 - 30'),
(1078, '101446 - Automobiles/Automobile Spare Parts/Wheels, Rims & Accessories', 101446, '7 - 30'),
(1079, '101447 - Automobiles/Automobile Spare Parts/Tires & Accessories', 101447, '7 - 30'),
(1080, '101448 - Automobiles/Automobile Spare Parts/Shocks, Struts & Suspension', 101448, '7 - 30'),
(1081, '101449 - Automobiles/Automobile Spare Parts/Radiators, Engine Cooling & Climate Control', 101449, '7 - 30'),
(1082, '101450 - Automobiles/Automobile Spare Parts/Drivetrain, Transmission & Clutches', 101450, '7 - 30'),
(1083, '101451 - Automobiles/Automobile Spare Parts/Bearing & Seals', 101451, '7 - 30'),
(1084, '101453 - Automobiles/Automobile Spare Parts/Brake System', 101453, '7 - 30'),
(1085, '101454 - Automobiles/Automobile Spare Parts/Belts, Hoses & Pulleys', 101454, '7 - 30'),
(1086, '101456 - Automobiles/Automobile Spare Parts/Fuel System', 101456, '7 - 30'),
(1087, '101457 - Automobiles/Automobile Spare Parts/Others', 101457, '7 - 30'),
(1088, '101458 - Automobiles/Automotive Tools/Test, Diagnostic & Repair Tools', 101458, '7 - 30'),
(1089, '101459 - Automobiles/Automotive Tools/Tire Pressure Detectors', 101459, '7 - 30'),
(1090, '101460 - Automobiles/Automotive Tools/Others', 101460, '7 - 30'),
(1091, '101461 - Automobiles/Automotive Care/Wash & Waxes', 101461, '7 - 30'),
(1092, '101462 - Automobiles/Automotive Care/Glass Care & Water Repellents', 101462, '7 - 30'),
(1093, '101463 - Automobiles/Automotive Care/Interior Care', 101463, '7 - 30'),
(1094, '101464 - Automobiles/Automotive Care/Tire & Wheel Care', 101464, '7 - 30'),
(1095, '101465 - Automobiles/Automotive Care/Polish, Coating & Sealants', 101465, '7 - 30'),
(1096, '101466 - Automobiles/Automotive Care/Others', 101466, '7 - 30'),
(1097, '101467 - Automobiles/Automotive Oils & Lubes/Oils', 101467, '7 - 30'),
(1098, '101468 - Automobiles/Automotive Oils & Lubes/Fuel Additives & Savers', 101468, '7 - 30'),
(1099, '101469 - Automobiles/Automotive Oils & Lubes/Greases & Lubricants', 101469, '7 - 30'),
(1100, '101470 - Automobiles/Automotive Oils & Lubes/Antifreezes & Coolants', 101470, '7 - 30'),
(1101, '101472 - Automobiles/Automotive Oils & Lubes/Others', 101472, '7 - 30'),
(1102, '101473 - Motorcycles/Motorcycle Accessories/Carpets', 101473, '7 - 30'),
(1103, '101474 - Motorcycles/Motorcycle Accessories/Speedometers, Odometers & Gauges', 101474, '7 - 30'),
(1104, '101475 - Motorcycles/Motorcycle Accessories/Covers', 101475, '7 - 30'),
(1105, '101476 - Motorcycles/Motorcycle Accessories/Stickers, Logos & Emblems', 101476, '7 - 30'),
(1106, '101477 - Motorcycles/Motorcycle Accessories/Seats & Seat Covers', 101477, '7 - 30'),
(1107, '101478 - Motorcycles/Motorcycle Accessories/Mirrors & Accessories', 101478, '7 - 30'),
(1108, '101479 - Motorcycles/Motorcycle Accessories/Locks & Security', 101479, '7 - 30'),
(1109, '101480 - Motorcycles/Motorcycle Accessories/Boxes & Cases', 101480, '7 - 30'),
(1110, '101481 - Motorcycles/Motorcycle Accessories/Phone Holders', 101481, '7 - 30'),
(1111, '101482 - Motorcycles/Motorcycle Accessories/Mud Flaps & Splash Guards', 101482, '7 - 30'),
(1112, '101483 - Motorcycles/Motorcycle Accessories/Others', 101483, '7 - 30'),
(1113, '101485 - Motorcycles/Motorcycle Spare Parts/Fuel System', 101485, '7 - 30'),
(1114, '101486 - Motorcycles/Motorcycle Spare Parts/Brake System', 101486, '7 - 30'),
(1115, '101487 - Motorcycles/Motorcycle Spare Parts/Shocks, Struts & Suspension', 101487, '7 - 30'),
(1116, '101489 - Motorcycles/Motorcycle Spare Parts/Batteries & Accessories', 101489, '7 - 30'),
(1117, '101490 - Motorcycles/Motorcycle Spare Parts/Horns & Accessories', 101490, '7 - 30'),
(1118, '101491 - Motorcycles/Motorcycle Spare Parts/Cables & Tubes', 101491, '7 - 30'),
(1119, '101492 - Motorcycles/Motorcycle Spare Parts/Body & Frame', 101492, '7 - 30'),
(1120, '101493 - Motorcycles/Motorcycle Spare Parts/Exhaust & Emissions', 101493, '7 - 30'),
(1121, '101494 - Motorcycles/Motorcycle Spare Parts/Wheels, Rims & Accessories', 101494, '7 - 30'),
(1122, '101495 - Motorcycles/Motorcycle Spare Parts/Tires & Accessories', 101495, '7 - 30'),
(1123, '101496 - Motorcycles/Motorcycle Spare Parts/Lighting', 101496, '7 - 30'),
(1124, '101497 - Motorcycles/Motorcycle Spare Parts/Others', 101497, '7 - 30'),
(1125, '101498 - Tickets, Vouchers & Services/Events & Attractions/Theme Parks & Attractions', 101498, '7 - 30'),
(1126, '101499 - Tickets, Vouchers & Services/Events & Attractions/Events, Fairs & Conferences', 101499, '7 - 30'),
(1127, '101500 - Tickets, Vouchers & Services/Events & Attractions/Movies', 101500, '7 - 30'),
(1128, '101501 - Tickets, Vouchers & Services/Events & Attractions/Concerts & Exhibitions', 101501, '7 - 30'),
(1129, '101502 - Tickets, Vouchers & Services/Events & Attractions/Others', 101502, '7 - 30'),
(1130, '101503 - Tickets, Vouchers & Services/F&B/Dine-in & Takeaway', 101503, '7 - 30'),
(1131, '101504 - Tickets, Vouchers & Services/F&B/Food Delivery', 101504, '7 - 30'),
(1132, '101505 - Tickets, Vouchers & Services/F&B/Others', 101505, '7 - 30'),
(1133, '101506 - Tickets, Vouchers & Services/Shopping/Malls & Department Stores', 101506, '7 - 30'),
(1134, '101507 - Tickets, Vouchers & Services/Shopping/Supermarkets', 101507, '7 - 30'),
(1135, '101508 - Tickets, Vouchers & Services/Shopping/Others', 101508, '7 - 30'),
(1136, '101509 - Tickets, Vouchers & Services/Services/Housekeeping', 101509, '7 - 30'),
(1137, '101510 - Tickets, Vouchers & Services/Services/Delivery & Moving', 101510, '7 - 30'),
(1138, '101511 - Tickets, Vouchers & Services/Services/Insurance', 101511, '7 - 30'),
(1139, '101512 - Tickets, Vouchers & Services/Services/Air-Conditioning Servicing', 101512, '7 - 30'),
(1140, '101513 - Tickets, Vouchers & Services/Services/Photography & Printing', 101513, '7 - 30'),
(1141, '101514 - Tickets, Vouchers & Services/Services/Others', 101514, '7 - 30'),
(1142, '102036 - Tickets, Vouchers & Services/Services/Design', 102036, '7 - 30'),
(1143, '101515 - Tickets, Vouchers & Services/Beauty & Wellness/Health', 101515, '7 - 30'),
(1144, '101516 - Tickets, Vouchers & Services/Beauty & Wellness/Dental', 101516, '7 - 30'),
(1145, '101517 - Tickets, Vouchers & Services/Beauty & Wellness/Fitness', 101517, '7 - 30'),
(1146, '101518 - Tickets, Vouchers & Services/Beauty & Wellness/Hair', 101518, '7 - 30'),
(1147, '101519 - Tickets, Vouchers & Services/Beauty & Wellness/Spa & Massage', 101519, '7 - 30'),
(1148, '101520 - Tickets, Vouchers & Services/Beauty & Wellness/Others', 101520, '7 - 30'),
(1149, '101521 - Tickets, Vouchers & Services/Telco/Internet & Cable TV', 101521, '7 - 30'),
(1150, '101522 - Tickets, Vouchers & Services/Telco/Mobile Data', 101522, '7 - 30'),
(1151, '101523 - Tickets, Vouchers & Services/Telco/Mobile Top-ups & Pre-paid', 101523, '7 - 30'),
(1152, '101524 - Tickets, Vouchers & Services/Telco/Others', 101524, '7 - 30'),
(1153, '101525 - Tickets, Vouchers & Services/Travel/Accommodation', 101525, '7 - 30'),
(1154, '101526 - Tickets, Vouchers & Services/Travel/Hot Springs', 101526, '7 - 30'),
(1155, '101527 - Tickets, Vouchers & Services/Travel/Flights', 101527, '7 - 30'),
(1156, '101528 - Tickets, Vouchers & Services/Travel/Trains', 101528, '7 - 30'),
(1157, '101529 - Tickets, Vouchers & Services/Travel/Buses', 101529, '7 - 30'),
(1158, '101530 - Tickets, Vouchers & Services/Travel/Car Rentals', 101530, '7 - 30'),
(1159, '101531 - Tickets, Vouchers & Services/Travel/Tour & Packages', 101531, '7 - 30'),
(1160, '101532 - Tickets, Vouchers & Services/Travel/Others', 101532, '7 - 30'),
(1161, '101533 - Tickets, Vouchers & Services/Shopee/Shopee Official', 101533, '7 - 30'),
(1162, '101534 - Tickets, Vouchers & Services/Shopee/Shopee Paid Ads Credits', 101534, '7 - 30'),
(1163, '101535 - Tickets, Vouchers & Services/Shopee/Others', 101535, '7 - 30'),
(1164, '101536 - Books & Magazines/Magazines & Newspaper/Business', 101536, '7 - 30'),
(1165, '101537 - Books & Magazines/Magazines & Newspaper/Lifestyle', 101537, '7 - 30'),
(1166, '101538 - Books & Magazines/Magazines & Newspaper/Teenager', 101538, '7 - 30'),
(1167, '101539 - Books & Magazines/Magazines & Newspaper/Others', 101539, '7 - 30'),
(1168, '101540 - Books & Magazines/Books/Comics & Manga', 101540, '7 - 30'),
(1169, '101541 - Books & Magazines/Books/Children\'s Books', 101541, '7 - 30'),
(1170, '101542 - Books & Magazines/Books/Agriculture, Forestry & Fishery', 101542, '7 - 30'),
(1171, '101543 - Books & Magazines/Books/Adult\'s Books', 101543, '7 - 30'),
(1172, '101544 - Books & Magazines/Books/Arts, Design & Photography', 101544, '7 - 30'),
(1173, '101545 - Books & Magazines/Books/Recipes & Cooking', 101545, '7 - 30'),
(1174, '101546 - Books & Magazines/Books/Business & Investment', 101546, '7 - 30'),
(1175, '101547 - Books & Magazines/Books/Politics, Law & Social Sciences', 101547, '7 - 30'),
(1176, '101548 - Books & Magazines/Books/Computers & Technology', 101548, '7 - 30'),
(1177, '101549 - Books & Magazines/Books/Health, Fitness & Dieting', 101549, '7 - 30'),
(1178, '101550 - Books & Magazines/Books/Travel & Tourism', 101550, '7 - 30'),
(1179, '101551 - Books & Magazines/Books/Language Learning & Dictionaries', 101551, '7 - 30'),
(1180, '101552 - Books & Magazines/Books/Hobbies', 101552, '7 - 30'),
(1181, '101553 - Books & Magazines/Books/LGBTQ+ Literature', 101553, '7 - 30'),
(1182, '101554 - Books & Magazines/Books/Light Novels', 101554, '7 - 30'),
(1183, '101555 - Books & Magazines/Books/Classic Literature', 101555, '7 - 30'),
(1184, '101556 - Books & Magazines/Books/Fantasy', 101556, '7 - 30'),
(1185, '101557 - Books & Magazines/Books/Action, Crime & Thrillers', 101557, '7 - 30'),
(1186, '101558 - Books & Magazines/Books/Romance', 101558, '7 - 30'),
(1187, '101559 - Books & Magazines/Books/Biography & Memoirs', 101559, '7 - 30'),
(1188, '101560 - Books & Magazines/Books/Science & Maths', 101560, '7 - 30'),
(1189, '101561 - Books & Magazines/Books/Medical', 101561, '7 - 30'),
(1190, '101562 - Books & Magazines/Books/Parenting & Family', 101562, '7 - 30'),
(1191, '101563 - Books & Magazines/Books/Psychology & Relationships', 101563, '7 - 30'),
(1192, '101564 - Books & Magazines/Books/Religion & Philosophy', 101564, '7 - 30'),
(1193, '101565 - Books & Magazines/Books/History & Cultures', 101565, '7 - 30'),
(1194, '101566 - Books & Magazines/Books/Careers, Self Help & Personal Development', 101566, '7 - 30'),
(1195, '101567 - Books & Magazines/Books/Horoscopes', 101567, '7 - 30'),
(1196, '101568 - Books & Magazines/Books/Education & School', 101568, '7 - 30'),
(1197, '101569 - Books & Magazines/Books/Sticker & Colouring Books', 101569, '7 - 30'),
(1198, '101570 - Books & Magazines/Books/Music', 101570, '7 - 30'),
(1199, '101571 - Books & Magazines/Books/Baby & Soft Books', 101571, '7 - 30'),
(1200, '101572 - Books & Magazines/Books/Audio Books', 101572, '7 - 30'),
(1201, '101573 - Books & Magazines/Books/Others', 101573, '7 - 30'),
(1202, '101944 - Computers & Accessories/Desktop Computers/Desktop PC', 101944, '7 - 30'),
(1203, '101945 - Computers & Accessories/Desktop Computers/Mini PC', 101945, '7 - 30'),
(1204, '101946 - Computers & Accessories/Desktop Computers/Server PC', 101946, '7 - 30'),
(1205, '101947 - Computers & Accessories/Desktop Computers/All-in-One Desktops', 101947, '7 - 30'),
(1206, '101948 - Computers & Accessories/Desktop Computers/Others', 101948, '7 - 30'),
(1207, '101949 - Computers & Accessories/Desktop & Laptop Components/Fans & Heatsinks', 101949, '7 - 30'),
(1208, '101950 - Computers & Accessories/Desktop & Laptop Components/Processors', 101950, '7 - 30'),
(1209, '101951 - Computers & Accessories/Desktop & Laptop Components/Motherboards', 101951, '7 - 30'),
(1210, '101952 - Computers & Accessories/Desktop & Laptop Components/Graphics Cards', 101952, '7 - 30'),
(1211, '101953 - Computers & Accessories/Desktop & Laptop Components/Thermal Paste', 101953, '7 - 30'),
(1212, '101954 - Computers & Accessories/Desktop & Laptop Components/Power Supply Units', 101954, '7 - 30'),
(1213, '101955 - Computers & Accessories/Desktop & Laptop Components/RAM', 101955, '7 - 30'),
(1214, '101956 - Computers & Accessories/Desktop & Laptop Components/UPS & Stabilizers', 101956, '7 - 30'),
(1215, '101957 - Computers & Accessories/Desktop & Laptop Components/PC Cases', 101957, '7 - 30'),
(1216, '101958 - Computers & Accessories/Desktop & Laptop Components/Optical Drives', 101958, '7 - 30'),
(1217, '101959 - Computers & Accessories/Desktop & Laptop Components/Sound Cards', 101959, '7 - 30'),
(1218, '101960 - Computers & Accessories/Desktop & Laptop Components/Others', 101960, '7 - 30'),
(1219, '101961 - Computers & Accessories/Data Storage/Hard Drives', 101961, '7 - 30'),
(1220, '101962 - Computers & Accessories/Data Storage/SSD', 101962, '7 - 30'),
(1221, '101963 - Computers & Accessories/Data Storage/Network Attached Storage (NAS)', 101963, '7 - 30'),
(1222, '101964 - Computers & Accessories/Data Storage/Flash Drives & OTG', 101964, '7 - 30'),
(1223, '101965 - Computers & Accessories/Data Storage/Hard Disk Casings & Dockings', 101965, '7 - 30'),
(1224, '101966 - Computers & Accessories/Data Storage/Compact Discs', 101966, '7 - 30'),
(1225, '101967 - Computers & Accessories/Data Storage/Others', 101967, '7 - 30'),
(1226, '101968 - Computers & Accessories/Network Components/Modems & Wireless Routers', 101968, '7 - 30'),
(1227, '101969 - Computers & Accessories/Network Components/Repeaters', 101969, '7 - 30'),
(1228, '101970 - Computers & Accessories/Network Components/Wireless Adapters & Network Cards', 101970, '7 - 30'),
(1229, '101971 - Computers & Accessories/Network Components/Powerline Adapters', 101971, '7 - 30'),
(1230, '101972 - Computers & Accessories/Network Components/Network Switches & PoE', 101972, '7 - 30'),
(1231, '101973 - Computers & Accessories/Network Components/Network Cables & Connectors', 101973, '7 - 30'),
(1232, '101974 - Computers & Accessories/Network Components/KVM Switches', 101974, '7 - 30'),
(1233, '101975 - Computers & Accessories/Network Components/Print Servers', 101975, '7 - 30'),
(1234, '101976 - Computers & Accessories/Network Components/Others', 101976, '7 - 30'),
(1235, '101977 - Computers & Accessories/Office Equipment/Typewriters', 101977, '7 - 30'),
(1236, '101978 - Computers & Accessories/Office Equipment/Absence Machines', 101978, '7 - 30'),
(1237, '101979 - Computers & Accessories/Office Equipment/Paper Shredders', 101979, '7 - 30'),
(1238, '101980 - Computers & Accessories/Office Equipment/Money Counters', 101980, '7 - 30'),
(1239, '101981 - Computers & Accessories/Office Equipment/Others', 101981, '7 - 30'),
(1240, '101982 - Computers & Accessories/Printers & Scanners/Printers, Scanners & Photocopy Machines', 101982, '7 - 30'),
(1241, '101983 - Computers & Accessories/Printers & Scanners/Thermal & Barcode Printers', 101983, '7 - 30'),
(1242, '101984 - Computers & Accessories/Printers & Scanners/Inks & Toners', 101984, '7 - 30'),
(1243, '101985 - Computers & Accessories/Printers & Scanners/3D Printers', 101985, '7 - 30'),
(1244, '101986 - Computers & Accessories/Printers & Scanners/Others', 101986, '7 - 30');
INSERT INTO `shopee_category` (`scid`, `category_name`, `category_id`, `category_pre_order_dts`) VALUES
(1245, '101987 - Computers & Accessories/Peripherals & Accessories/USB Hubs & Card Readers', 101987, '7 - 30'),
(1246, '101988 - Computers & Accessories/Peripherals & Accessories/Webcams', 101988, '7 - 30'),
(1247, '101989 - Computers & Accessories/Peripherals & Accessories/Laptop Skins & Covers', 101989, '7 - 30'),
(1248, '101990 - Computers & Accessories/Peripherals & Accessories/Cooling Pads', 101990, '7 - 30'),
(1249, '101991 - Computers & Accessories/Peripherals & Accessories/Laptop Stands & Foldable Laptop Desks', 101991, '7 - 30'),
(1250, '101992 - Computers & Accessories/Peripherals & Accessories/Keyboard & Trackpad Covers', 101992, '7 - 30'),
(1251, '101993 - Computers & Accessories/Peripherals & Accessories/Laptop Batteries', 101993, '7 - 30'),
(1252, '101994 - Computers & Accessories/Peripherals & Accessories/Laptop Chargers & Adaptors', 101994, '7 - 30'),
(1253, '101995 - Computers & Accessories/Peripherals & Accessories/Video Conference Devices', 101995, '7 - 30'),
(1254, '101996 - Computers & Accessories/Peripherals & Accessories/Mouse Pads', 101996, '7 - 30'),
(1255, '101997 - Computers & Accessories/Peripherals & Accessories/Others', 101997, '7 - 30'),
(1256, '101998 - Computers & Accessories/Keyboards & Mice/Mice', 101998, '7 - 30'),
(1257, '101999 - Computers & Accessories/Keyboards & Mice/Keyboards', 101999, '7 - 30'),
(1258, '102000 - Computers & Accessories/Keyboards & Mice/Drawing Tablets', 102000, '7 - 30'),
(1259, '102001 - Computers & Accessories/Keyboards & Mice/Others', 102001, '7 - 30'),
(1260, '100420 - Health/Medical Supplies/Health Monitors & Tests/Blood Pressure Monitors', 100420, '7 - 30'),
(1261, '100421 - Health/Medical Supplies/Health Monitors & Tests/Blood Glucose Monitors', 100421, '7 - 30'),
(1262, '100422 - Health/Medical Supplies/Health Monitors & Tests/Pulse Oximeters', 100422, '7 - 30'),
(1263, '100423 - Health/Medical Supplies/Health Monitors & Tests/Thermometers', 100423, '7 - 30'),
(1264, '100424 - Health/Medical Supplies/Health Monitors & Tests/Others', 100424, '7 - 30'),
(1265, '100425 - Health/Medical Supplies/First Aid Supplies/Plasters & Bandages', 100425, '7 - 30'),
(1266, '100426 - Health/Medical Supplies/First Aid Supplies/First Aid Accessories', 100426, '7 - 30'),
(1267, '100427 - Health/Medical Supplies/First Aid Supplies/Ointments & Creams', 100427, '7 - 30'),
(1268, '100428 - Health/Medical Supplies/First Aid Supplies/Medical Antiseptics & Disinfectants', 100428, '7 - 30'),
(1269, '100429 - Health/Medical Supplies/First Aid Supplies/Others', 100429, '7 - 30'),
(1270, '100430 - Health/Medical Supplies/Injury & Disability Support/Walking Aids', 100430, '7 - 30'),
(1271, '100431 - Health/Medical Supplies/Injury & Disability Support/Wheelchairs', 100431, '7 - 30'),
(1272, '100432 - Health/Medical Supplies/Injury & Disability Support/Braces & Supports', 100432, '7 - 30'),
(1273, '100433 - Health/Medical Supplies/Injury & Disability Support/Hearing Aids', 100433, '7 - 30'),
(1274, '100434 - Health/Medical Supplies/Injury & Disability Support/Others', 100434, '7 - 30'),
(1275, '100435 - Health/Personal Care/Eye Care/Contact lens', 100435, '7 - 30'),
(1276, '100436 - Health/Personal Care/Eye Care/Lens Solutions & Eyedrops', 100436, '7 - 30'),
(1277, '100437 - Health/Personal Care/Eye Care/Others', 100437, '7 - 30'),
(1278, '100438 - Health/Personal Care/Oral Care/Manual Toothbrushes', 100438, '7 - 30'),
(1279, '100439 - Health/Personal Care/Oral Care/Electric Toothbrushes & Accessories', 100439, '7 - 30'),
(1280, '100440 - Health/Personal Care/Oral Care/Toothpastes', 100440, '7 - 30'),
(1281, '100441 - Health/Personal Care/Oral Care/Dental Floss', 100441, '7 - 30'),
(1282, '100442 - Health/Personal Care/Oral Care/Mouth Wash', 100442, '7 - 30'),
(1283, '100443 - Health/Personal Care/Oral Care/Denture Care', 100443, '7 - 30'),
(1284, '100444 - Health/Personal Care/Oral Care/Teeth Whitening', 100444, '7 - 30'),
(1285, '100445 - Health/Personal Care/Oral Care/Orthodontic Accessories', 100445, '7 - 30'),
(1286, '100446 - Health/Personal Care/Oral Care/Others', 100446, '7 - 30'),
(1287, '100447 - Health/Personal Care/Feminine Care/Sanitary Napkins & Panty Liners', 100447, '7 - 30'),
(1288, '100448 - Health/Personal Care/Feminine Care/Tampons', 100448, '7 - 30'),
(1289, '100449 - Health/Personal Care/Feminine Care/Pregnancy & Fertility Tests', 100449, '7 - 30'),
(1290, '100450 - Health/Personal Care/Feminine Care/Menstrual Cup', 100450, '7 - 30'),
(1291, '100451 - Health/Personal Care/Feminine Care/Feminine Wash', 100451, '7 - 30'),
(1292, '100452 - Health/Personal Care/Feminine Care/Vaginal Cream', 100452, '7 - 30'),
(1293, '100453 - Health/Personal Care/Feminine Care/Others', 100453, '7 - 30'),
(1294, '100454 - Home Appliances/Small Household Appliances/Telephones/Corded Phones', 100454, '7 - 30'),
(1295, '100455 - Home Appliances/Small Household Appliances/Telephones/Cordless Phones', 100455, '7 - 30'),
(1296, '100456 - Home Appliances/Small Household Appliances/Telephones/Fax Machines', 100456, '7 - 30'),
(1297, '100457 - Home Appliances/Small Household Appliances/Telephones/Others', 100457, '7 - 30'),
(1298, '100458 - Home Appliances/Small Household Appliances/Air Treatment/Purifiers', 100458, '7 - 30'),
(1299, '100459 - Home Appliances/Small Household Appliances/Air Treatment/Dehumidifiers', 100459, '7 - 30'),
(1300, '100460 - Home Appliances/Small Household Appliances/Air Treatment/Others', 100460, '7 - 30'),
(1301, '100461 - Home Appliances/Large Household Appliances/Washing Machines & Dryers/Washing Machines', 100461, '7 - 30'),
(1302, '100462 - Home Appliances/Large Household Appliances/Washing Machines & Dryers/Laundry Dryers', 100462, '7 - 30'),
(1303, '100463 - Home Appliances/Large Household Appliances/Washing Machines & Dryers/Others', 100463, '7 - 30'),
(1304, '100464 - Home Appliances/Large Household Appliances/Cooling/Air-Conditioners', 100464, '7 - 30'),
(1305, '100465 - Home Appliances/Large Household Appliances/Cooling/Air Coolers & Portable Aircons', 100465, '7 - 30'),
(1306, '100466 - Home Appliances/Large Household Appliances/Cooling/Fans', 100466, '7 - 30'),
(1307, '100467 - Home Appliances/Large Household Appliances/Cooling/Others', 100467, '7 - 30'),
(1308, '100468 - Home Appliances/Kitchen Appliances/Specialty Cookware/Waffle & Crepe Makers', 100468, '7 - 30'),
(1309, '100469 - Home Appliances/Kitchen Appliances/Specialty Cookware/Egg Boilers', 100469, '7 - 30'),
(1310, '100470 - Home Appliances/Kitchen Appliances/Specialty Cookware/Bread Makers', 100470, '7 - 30'),
(1311, '100471 - Home Appliances/Kitchen Appliances/Specialty Cookware/Takoyaki Makers', 100471, '7 - 30'),
(1312, '100472 - Home Appliances/Kitchen Appliances/Specialty Cookware/Dessert Machine', 100472, '7 - 30'),
(1313, '100473 - Home Appliances/Kitchen Appliances/Specialty Cookware/Soda Makers', 100473, '7 - 30'),
(1314, '100474 - Home Appliances/Kitchen Appliances/Specialty Cookware/Others', 100474, '7 - 30'),
(1315, '100475 - Mobile & Gadgets/Accessories/Selfie Accessories/Selfie Sticks', 100475, '7 - 30'),
(1316, '100476 - Mobile & Gadgets/Accessories/Selfie Accessories/Lazypods', 100476, '7 - 30'),
(1317, '100477 - Mobile & Gadgets/Accessories/Selfie Accessories/Remote Shutters', 100477, '7 - 30'),
(1318, '100478 - Mobile & Gadgets/Accessories/Selfie Accessories/Others', 100478, '7 - 30'),
(1319, '100479 - Mobile & Gadgets/Accessories/Cables, Chargers & Converters/Cable Cases, Protectors, & Winde', 100479, '7 - 30'),
(1320, '100480 - Mobile & Gadgets/Accessories/Cables, Chargers & Converters/Travel Adaptors', 100480, '7 - 30'),
(1321, '100481 - Mobile & Gadgets/Accessories/Cables, Chargers & Converters/Mobile Cables & Converters', 100481, '7 - 30'),
(1322, '100482 - Mobile & Gadgets/Accessories/Cables, Chargers & Converters/Chargers', 100482, '7 - 30'),
(1323, '100483 - Mobile & Gadgets/Accessories/Cables, Chargers & Converters/Docks & Stands', 100483, '7 - 30'),
(1324, '100484 - Mobile & Gadgets/Accessories/Cables, Chargers & Converters/Others', 100484, '7 - 30'),
(1325, '100485 - Mobile & Gadgets/Accessories/Powerbanks & Batteries/Batteries', 100485, '7 - 30'),
(1326, '100486 - Mobile & Gadgets/Accessories/Powerbanks & Batteries/Powerbanks', 100486, '7 - 30'),
(1327, '100487 - Mobile & Gadgets/Accessories/Powerbanks & Batteries/Powercases', 100487, '7 - 30'),
(1328, '100488 - Mobile & Gadgets/Accessories/Powerbanks & Batteries/Others', 100488, '7 - 30'),
(1329, '100489 - Mobile & Gadgets/Accessories/Cases, Covers, & Skins/Tablet Cases, Covers, & Skins', 100489, '7 - 30'),
(1330, '100490 - Mobile & Gadgets/Accessories/Cases, Covers, & Skins/Phone Cases, Covers, & Skins', 100490, '7 - 30'),
(1331, '100491 - Mobile & Gadgets/Accessories/Cases, Covers, & Skins/Others', 100491, '7 - 30'),
(1332, '100492 - Muslim Fashion/Women Muslim Wear/Veils/Khimar', 100492, '7 - 30'),
(1333, '100493 - Muslim Fashion/Women Muslim Wear/Veils/Instant Hijab', 100493, '7 - 30'),
(1334, '100494 - Muslim Fashion/Women Muslim Wear/Veils/Square Hijab', 100494, '7 - 30'),
(1335, '100495 - Muslim Fashion/Women Muslim Wear/Veils/Pashmina', 100495, '7 - 30'),
(1336, '100497 - Muslim Fashion/Women Muslim Wear/Veils/Others', 100497, '7 - 30'),
(1337, '100498 - Muslim Fashion/Women Muslim Wear/Accessories/Socks', 100498, '7 - 30'),
(1338, '100499 - Muslim Fashion/Women Muslim Wear/Accessories/Handsocks', 100499, '7 - 30'),
(1339, '100500 - Muslim Fashion/Women Muslim Wear/Accessories/Others', 100500, '7 - 30'),
(1340, '100501 - Muslim Fashion/Women Muslim Wear/Top/Tunic', 100501, '7 - 30'),
(1341, '100502 - Muslim Fashion/Women Muslim Wear/Top/Shirts, Blouses & Inner Blouses', 100502, '7 - 30'),
(1342, '100503 - Muslim Fashion/Women Muslim Wear/Top/Nursing Blouse', 100503, '7 - 30'),
(1343, '100504 - Muslim Fashion/Women Muslim Wear/Top/Others', 100504, '7 - 30'),
(1344, '100505 - Muslim Fashion/Women Muslim Wear/Dresses/Robe & Jubah', 100505, '7 - 30'),
(1345, '100506 - Muslim Fashion/Women Muslim Wear/Dresses/Abaya Cloak', 100506, '7 - 30'),
(1346, '100507 - Muslim Fashion/Women Muslim Wear/Dresses/Nursing Jubah', 100507, '7 - 30'),
(1347, '100508 - Muslim Fashion/Women Muslim Wear/Dresses/Kaftan', 100508, '7 - 30'),
(1348, '100509 - Muslim Fashion/Women Muslim Wear/Dresses/Baju Kelawar', 100509, '7 - 30'),
(1349, '100510 - Muslim Fashion/Women Muslim Wear/Dresses/Baju Kurung', 100510, '7 - 30'),
(1350, '100511 - Muslim Fashion/Women Muslim Wear/Dresses/Set Warda', 100511, '7 - 30'),
(1351, '100512 - Muslim Fashion/Women Muslim Wear/Dresses/Jumpsuits', 100512, '7 - 30'),
(1352, '100513 - Muslim Fashion/Women Muslim Wear/Dresses/Others', 100513, '7 - 30'),
(1353, '100514 - Muslim Fashion/Women Muslim Wear/Bottoms/Skirt', 100514, '7 - 30'),
(1354, '100515 - Muslim Fashion/Women Muslim Wear/Bottoms/Pants', 100515, '7 - 30'),
(1355, '100516 - Muslim Fashion/Women Muslim Wear/Bottoms/Leggings', 100516, '7 - 30'),
(1356, '100517 - Muslim Fashion/Women Muslim Wear/Bottoms/Palazzo', 100517, '7 - 30'),
(1357, '100518 - Muslim Fashion/Women Muslim Wear/Bottoms/Others', 100518, '7 - 30'),
(1358, '100519 - Muslim Fashion/Kid Muslim Wear/Girl\'s Muslim Attire/Veils', 100519, '7 - 30'),
(1359, '100520 - Muslim Fashion/Kid Muslim Wear/Girl\'s Muslim Attire/Telekung', 100520, '7 - 30'),
(1360, '100521 - Muslim Fashion/Kid Muslim Wear/Girl\'s Muslim Attire/Attire Piece & Sets', 100521, '7 - 30'),
(1361, '100522 - Muslim Fashion/Kid Muslim Wear/Girl\'s Muslim Attire/Others', 100522, '7 - 30'),
(1362, '100523 - Women Clothes/Lingerie & Underwear/Bra Accessories/Straps', 100523, '7 - 30'),
(1363, '100524 - Women Clothes/Lingerie & Underwear/Bra Accessories/Paddings', 100524, '7 - 30'),
(1364, '100525 - Women Clothes/Lingerie & Underwear/Bra Accessories/Nipple Stickers', 100525, '7 - 30'),
(1365, '100526 - Women Clothes/Lingerie & Underwear/Bra Accessories/Others', 100526, '7 - 30'),
(1366, '101574 - Food & Beverage/Snacks/Dried Snacks/Meat Jerky and Bakkwa', 101574, '7 - 30'),
(1367, '101575 - Food & Beverage/Snacks/Dried Snacks/Dried Fruits', 101575, '7 - 30'),
(1368, '101576 - Food & Beverage/Snacks/Dried Snacks/Meat Floss', 101576, '7 - 30'),
(1369, '101577 - Food & Beverage/Snacks/Dried Snacks/Seafood Snacks', 101577, '7 - 30'),
(1370, '101578 - Food & Beverage/Snacks/Dried Snacks/Others', 101578, '7 - 30'),
(1371, '101579 - Food & Beverage/Food Staples/Dried Goods/Beans & Grains', 101579, '7 - 30'),
(1372, '101580 - Food & Beverage/Food Staples/Dried Goods/Dried Seafood', 101580, '7 - 30'),
(1373, '101581 - Food & Beverage/Food Staples/Dried Goods/Traditional Herbs', 101581, '7 - 30'),
(1374, '101582 - Food & Beverage/Food Staples/Dried Goods/Others', 101582, '7 - 30'),
(1375, '101583 - Food & Beverage/Food Staples/Canned Food/Canned Fruits', 101583, '7 - 30'),
(1376, '102024 - Food & Beverage/Food Staples/Canned Food/Canned Meat', 102024, '7 - 30'),
(1377, '102025 - Food & Beverage/Food Staples/Canned Food/Canned Seafood', 102025, '7 - 30'),
(1378, '102026 - Food & Beverage/Food Staples/Canned Food/Canned Vegetables', 102026, '7 - 30'),
(1379, '102027 - Food & Beverage/Food Staples/Canned Food/Canned Soup', 102027, '7 - 30'),
(1380, '102028 - Food & Beverage/Food Staples/Canned Food/Others', 102028, '7 - 30'),
(1381, '101584 - Food & Beverage/Cooking Essentials/Seasonings & Condiments/Pepper', 101584, '7 - 30'),
(1382, '101585 - Food & Beverage/Cooking Essentials/Seasonings & Condiments/Salt', 101585, '7 - 30'),
(1383, '101586 - Food & Beverage/Cooking Essentials/Seasonings & Condiments/Herbs & Spices', 101586, '7 - 30'),
(1384, '101587 - Food & Beverage/Cooking Essentials/Seasonings & Condiments/Sauce', 101587, '7 - 30'),
(1385, '101588 - Food & Beverage/Cooking Essentials/Seasonings & Condiments/Chilli & Sambal', 101588, '7 - 30'),
(1386, '101589 - Food & Beverage/Cooking Essentials/Seasonings & Condiments/Vinegar', 101589, '7 - 30'),
(1387, '101590 - Food & Beverage/Cooking Essentials/Seasonings & Condiments/Cooking Wine', 101590, '7 - 30'),
(1388, '101591 - Food & Beverage/Cooking Essentials/Seasonings & Condiments/Dressing', 101591, '7 - 30'),
(1389, '101592 - Food & Beverage/Cooking Essentials/Seasonings & Condiments/Others', 101592, '7 - 30'),
(1390, '101593 - Food & Beverage/Dairy & Eggs/Milk/Fresh Milk', 101593, '7 - 30'),
(1391, '101594 - Food & Beverage/Dairy & Eggs/Milk/UHT Milk', 101594, '7 - 30'),
(1392, '101595 - Food & Beverage/Dairy & Eggs/Milk/Condensed & Evaporated Milk', 101595, '7 - 30'),
(1393, '101596 - Food & Beverage/Dairy & Eggs/Milk/Powdered Milk', 101596, '7 - 30'),
(1394, '101597 - Food & Beverage/Dairy & Eggs/Milk/Others', 101597, '7 - 30'),
(1395, '101598 - Food & Beverage/Fresh & Frozen Food/Meat/Beef', 101598, '7 - 30'),
(1396, '101599 - Food & Beverage/Fresh & Frozen Food/Meat/Poultry', 101599, '7 - 30'),
(1397, '101600 - Food & Beverage/Fresh & Frozen Food/Meat/Pork', 101600, '7 - 30'),
(1398, '101601 - Food & Beverage/Fresh & Frozen Food/Meat/Lamb', 101601, '7 - 30'),
(1399, '101602 - Food & Beverage/Fresh & Frozen Food/Meat/Others', 101602, '7 - 30'),
(1400, '101603 - Food & Beverage/Fresh & Frozen Food/Seafood/Fish', 101603, '7 - 30'),
(1401, '101604 - Food & Beverage/Fresh & Frozen Food/Seafood/Prawn', 101604, '7 - 30'),
(1402, '101605 - Food & Beverage/Fresh & Frozen Food/Seafood/Crab', 101605, '7 - 30'),
(1403, '101606 - Food & Beverage/Fresh & Frozen Food/Seafood/Others', 101606, '7 - 30'),
(1404, '101607 - Beauty/Hand, Foot & Nail Care/Hand Care/Hand Masks', 101607, '7 - 30'),
(1405, '101608 - Beauty/Hand, Foot & Nail Care/Hand Care/Lotion, Cream & Scrubs', 101608, '7 - 30'),
(1406, '101609 - Beauty/Hand, Foot & Nail Care/Hand Care/Hand Washes', 101609, '7 - 30'),
(1407, '101610 - Beauty/Hand, Foot & Nail Care/Hand Care/Others', 101610, '7 - 30'),
(1408, '101611 - Beauty/Hand, Foot & Nail Care/Foot Care/Foot Deodorant', 101611, '7 - 30'),
(1409, '101612 - Beauty/Hand, Foot & Nail Care/Foot Care/Foot Masks', 101612, '7 - 30'),
(1410, '101613 - Beauty/Hand, Foot & Nail Care/Foot Care/Lotion, Cream & Scrubs', 101613, '7 - 30'),
(1411, '101614 - Beauty/Hand, Foot & Nail Care/Foot Care/Others', 101614, '7 - 30'),
(1412, '101615 - Beauty/Hand, Foot & Nail Care/Nail Care/Base & Top Coat', 101615, '7 - 30'),
(1413, '102029 - Beauty/Hand, Foot & Nail Care/Nail Care/Nail Polish', 102029, '7 - 30'),
(1414, '102030 - Beauty/Hand, Foot & Nail Care/Nail Care/Nail Polish Remover', 102030, '7 - 30'),
(1415, '102031 - Beauty/Hand, Foot & Nail Care/Nail Care/Nail Treatment', 102031, '7 - 30'),
(1416, '102032 - Beauty/Hand, Foot & Nail Care/Nail Care/Artificial Nail', 102032, '7 - 30'),
(1417, '102033 - Beauty/Hand, Foot & Nail Care/Nail Care/Nail Art & Sticker', 102033, '7 - 30'),
(1418, '102034 - Beauty/Hand, Foot & Nail Care/Nail Care/Manicure Tools & Devices', 102034, '7 - 30'),
(1419, '102035 - Beauty/Hand, Foot & Nail Care/Nail Care/Others', 102035, '7 - 30'),
(1420, '101616 - Beauty/Men\'s Care/Skincare/Facial Cleanser', 101616, '7 - 30'),
(1421, '101617 - Beauty/Men\'s Care/Skincare/Moisturizer & Treatment', 101617, '7 - 30'),
(1422, '101618 - Beauty/Men\'s Care/Skincare/Others', 101618, '7 - 30'),
(1423, '101619 - Beauty/Men\'s Care/Shaving & Grooming/Aftershave', 101619, '7 - 30'),
(1424, '101620 - Beauty/Men\'s Care/Shaving & Grooming/Creams, Foams & Gels', 101620, '7 - 30'),
(1425, '101621 - Beauty/Men\'s Care/Shaving & Grooming/Razors & Blades', 101621, '7 - 30'),
(1426, '101622 - Beauty/Men\'s Care/Shaving & Grooming/Shavers', 101622, '7 - 30'),
(1427, '101623 - Beauty/Men\'s Care/Shaving & Grooming/Shaving Brushes', 101623, '7 - 30'),
(1428, '101624 - Beauty/Men\'s Care/Shaving & Grooming/Trimmers, Clippers & Multi-functional Groomers', 101624, '7 - 30'),
(1429, '101625 - Beauty/Men\'s Care/Shaving & Grooming/Shaving Accessories', 101625, '7 - 30'),
(1430, '101626 - Beauty/Men\'s Care/Shaving & Grooming/Others', 101626, '7 - 30'),
(1431, '101627 - Beauty/Makeup/Face/Makeup Base & Primer', 101627, '7 - 30'),
(1432, '101628 - Beauty/Makeup/Face/Foundation', 101628, '7 - 30'),
(1433, '101629 - Beauty/Makeup/Face/BB & CC Cream', 101629, '7 - 30'),
(1434, '101630 - Beauty/Makeup/Face/Powder', 101630, '7 - 30'),
(1435, '101631 - Beauty/Makeup/Face/Concealer & Corrector', 101631, '7 - 30'),
(1436, '101632 - Beauty/Makeup/Face/Bronzer,Contour & Highlighter', 101632, '7 - 30'),
(1437, '101633 - Beauty/Makeup/Face/Setting & Finishing Spray', 101633, '7 - 30'),
(1438, '101634 - Beauty/Makeup/Face/Blush', 101634, '7 - 30'),
(1439, '101635 - Beauty/Makeup/Face/Others', 101635, '7 - 30'),
(1440, '101636 - Beauty/Makeup/Eyes/Eyeshadow', 101636, '7 - 30'),
(1441, '101637 - Beauty/Makeup/Eyes/Eye Primer', 101637, '7 - 30'),
(1442, '101638 - Beauty/Makeup/Eyes/Eyeliner', 101638, '7 - 30'),
(1443, '101639 - Beauty/Makeup/Eyes/Mascara', 101639, '7 - 30'),
(1444, '101640 - Beauty/Makeup/Eyes/Eyebrows', 101640, '7 - 30'),
(1445, '101641 - Beauty/Makeup/Eyes/Others', 101641, '7 - 30'),
(1446, '101642 - Beauty/Makeup/Lips/Lipstick', 101642, '7 - 30'),
(1447, '101643 - Beauty/Makeup/Lips/Lip Gloss', 101643, '7 - 30'),
(1448, '101644 - Beauty/Makeup/Lips/Lip Liner', 101644, '7 - 30'),
(1449, '101645 - Beauty/Makeup/Lips/Lip Tint & Stain', 101645, '7 - 30'),
(1450, '101646 - Beauty/Makeup/Lips/Lip Plumper', 101646, '7 - 30'),
(1451, '101647 - Beauty/Makeup/Lips/Others', 101647, '7 - 30'),
(1452, '101648 - Beauty/Beauty Tools/Makeup Accessories/Others', 101648, '7 - 30'),
(1453, '101649 - Beauty/Beauty Tools/Makeup Accessories/Cotton Pads and Buds', 101649, '7 - 30'),
(1454, '101650 - Beauty/Beauty Tools/Makeup Accessories/Makeup Bags & Organizers', 101650, '7 - 30'),
(1455, '101651 - Beauty/Beauty Tools/Makeup Accessories/Mirrors', 101651, '7 - 30'),
(1456, '101652 - Beauty/Beauty Tools/Makeup Accessories/Makeup Brush Cleaners', 101652, '7 - 30'),
(1457, '101653 - Beauty/Beauty Tools/Makeup Accessories/Makeup Brushes', 101653, '7 - 30'),
(1458, '101654 - Beauty/Beauty Tools/Makeup Accessories/Sponges & Applicators', 101654, '7 - 30'),
(1459, '101655 - Beauty/Beauty Tools/Makeup Accessories/Eyelash Curlers', 101655, '7 - 30'),
(1460, '101656 - Beauty/Beauty Tools/Makeup Accessories/Eyebrow Templates', 101656, '7 - 30'),
(1461, '101657 - Beauty/Beauty Tools/Makeup Accessories/False Eyelashes', 101657, '7 - 30'),
(1462, '101658 - Beauty/Beauty Tools/Makeup Accessories/Eyelid Tape & Glue', 101658, '7 - 30'),
(1463, '101659 - Beauty/Beauty Tools/Makeup Accessories/Pencil Sharpeners', 101659, '7 - 30'),
(1464, '101660 - Beauty/Beauty Tools/Facial Care Tools/Facial Steamers', 101660, '7 - 30'),
(1465, '101661 - Beauty/Beauty Tools/Facial Care Tools/Facial Slimming & Massage Tools', 101661, '7 - 30'),
(1466, '101662 - Beauty/Beauty Tools/Facial Care Tools/Facial Cleansing Tools', 101662, '7 - 30'),
(1467, '101663 - Beauty/Beauty Tools/Facial Care Tools/Others', 101663, '7 - 30'),
(1468, '101664 - Beauty/Beauty Tools/Hair Tools/Brushes & Combs', 101664, '7 - 30'),
(1469, '101665 - Beauty/Beauty Tools/Hair Tools/Hair Dryers', 101665, '7 - 30'),
(1470, '101666 - Beauty/Beauty Tools/Hair Tools/Hair Styling Appliances', 101666, '7 - 30'),
(1471, '101667 - Beauty/Beauty Tools/Hair Tools/Heatless Styling Tools', 101667, '7 - 30'),
(1472, '101668 - Beauty/Beauty Tools/Hair Tools/Others', 101668, '7 - 30'),
(1473, '101669 - Beauty/Skincare/Eye Treatment/Eye Cream', 101669, '7 - 30'),
(1474, '101670 - Beauty/Skincare/Eye Treatment/Eye Mask & Packs', 101670, '7 - 30'),
(1475, '101671 - Beauty/Skincare/Eye Treatment/Eyebrow & Eyelash Serum', 101671, '7 - 30'),
(1476, '101672 - Beauty/Skincare/Eye Treatment/Others', 101672, '7 - 30'),
(1477, '101673 - Beauty/Skincare/Lip Treatment/Lip Balm', 101673, '7 - 30'),
(1478, '101674 - Beauty/Skincare/Lip Treatment/Lip Scrub & Exfoliator', 101674, '7 - 30'),
(1479, '101675 - Beauty/Skincare/Lip Treatment/Lip Mask', 101675, '7 - 30'),
(1480, '101676 - Beauty/Skincare/Lip Treatment/Others', 101676, '7 - 30'),
(1481, '102014 - Beauty/Bath & Body Care/Sun Care/Body Sunscreen & After Sun', 102014, '7 - 30'),
(1482, '102015 - Beauty/Bath & Body Care/Sun Care/Tanning Oil & Self Tanners', 102015, '7 - 30'),
(1483, '102016 - Beauty/Bath & Body Care/Sun Care/Others', 102016, '7 - 30'),
(1484, '101678 - Pets/Pet Accessories/Toys/Small Pet Toys', 101678, '7 - 30'),
(1485, '101679 - Pets/Pet Accessories/Toys/Bird Toys', 101679, '7 - 30'),
(1486, '101680 - Pets/Pet Accessories/Toys/Others', 101680, '7 - 30'),
(1487, '101681 - Pets/Pet Accessories/Pet Furniture/Beds & Mats', 101681, '7 - 30'),
(1488, '101682 - Pets/Pet Accessories/Pet Furniture/Houses', 101682, '7 - 30'),
(1489, '101683 - Pets/Pet Accessories/Pet Furniture/Habitats & Accessories', 101683, '7 - 30'),
(1490, '101684 - Pets/Pet Accessories/Pet Furniture/Cages & Crates', 101684, '7 - 30'),
(1491, '101685 - Pets/Pet Accessories/Pet Furniture/Scratching Pads & Posts', 101685, '7 - 30'),
(1492, '101686 - Pets/Pet Accessories/Pet Furniture/Others', 101686, '7 - 30'),
(1493, '101691 - Mom & Baby/Feeding Essentials/Bottle-feeding/Bottle Cooler Bag', 101691, '7 - 30'),
(1494, '101692 - Mom & Baby/Feeding Essentials/Bottle-feeding/Bottles & Bottle accessories', 101692, '7 - 30'),
(1495, '101693 - Mom & Baby/Feeding Essentials/Bottle-feeding/Bottle Cleansing', 101693, '7 - 30'),
(1496, '101694 - Mom & Baby/Feeding Essentials/Bottle-feeding/Warmers', 101694, '7 - 30'),
(1497, '101695 - Mom & Baby/Feeding Essentials/Bottle-feeding/Sterilizers', 101695, '7 - 30'),
(1498, '101696 - Mom & Baby/Feeding Essentials/Bottle-feeding/Others', 101696, '7 - 30'),
(1499, '101697 - Mom & Baby/Feeding Essentials/Breastfeeding/Breast Pump & Accessories', 101697, '7 - 30'),
(1500, '101698 - Mom & Baby/Feeding Essentials/Breastfeeding/Breast Pads, Shells & Shields', 101698, '7 - 30'),
(1501, '101699 - Mom & Baby/Feeding Essentials/Breastfeeding/Nursing Covers', 101699, '7 - 30'),
(1502, '101700 - Mom & Baby/Feeding Essentials/Breastfeeding/Breastmilk Storage Bags', 101700, '7 - 30'),
(1503, '101701 - Mom & Baby/Feeding Essentials/Breastfeeding/Others', 101701, '7 - 30'),
(1504, '101702 - Mom & Baby/Feeding Essentials/Utensils/Baby Cups', 101702, '7 - 30'),
(1505, '101703 - Mom & Baby/Feeding Essentials/Utensils/Baby Tableware', 101703, '7 - 30'),
(1506, '101704 - Mom & Baby/Feeding Essentials/Utensils/Baby Food Containers', 101704, '7 - 30'),
(1507, '101705 - Mom & Baby/Feeding Essentials/Utensils/Others', 101705, '7 - 30'),
(1508, '101706 - Mom & Baby/Nursery/Mattresses & Bedding/Blankets & Wrappers', 101706, '7 - 30'),
(1509, '101707 - Mom & Baby/Nursery/Mattresses & Bedding/Pillows & Bolsters', 101707, '7 - 30'),
(1510, '101708 - Mom & Baby/Nursery/Mattresses & Bedding/Bedsheets', 101708, '7 - 30'),
(1511, '101709 - Mom & Baby/Nursery/Mattresses & Bedding/Others', 101709, '7 - 30'),
(1512, '101710 - Mom & Baby/Baby Healthcare/Baby Skincare/Lotion & Creams', 101710, '7 - 30'),
(1513, '101711 - Mom & Baby/Baby Healthcare/Baby Skincare/Oils', 101711, '7 - 30'),
(1514, '101712 - Mom & Baby/Baby Healthcare/Baby Skincare/Powders', 101712, '7 - 30'),
(1515, '101713 - Mom & Baby/Baby Healthcare/Baby Skincare/Others', 101713, '7 - 30'),
(1516, '101714 - Mom & Baby/Toys/Baby & Toddler Toys/Playgym & Playmats', 101714, '7 - 30'),
(1517, '101715 - Mom & Baby/Toys/Baby & Toddler Toys/Playards & Playpens', 101715, '7 - 30'),
(1518, '101716 - Mom & Baby/Toys/Baby & Toddler Toys/Bath Toys', 101716, '7 - 30'),
(1519, '101717 - Mom & Baby/Toys/Baby & Toddler Toys/Crib Mobiles & Rattles', 101717, '7 - 30'),
(1520, '101718 - Mom & Baby/Toys/Baby & Toddler Toys/Teethers', 101718, '7 - 30'),
(1521, '101719 - Mom & Baby/Toys/Baby & Toddler Toys/Others', 101719, '7 - 30'),
(1522, '101720 - Mom & Baby/Toys/Dolls & Stuffed Toys/Dolls & Accessories', 101720, '7 - 30'),
(1523, '101721 - Mom & Baby/Toys/Dolls & Stuffed Toys/Doll Houses & Accessories', 101721, '7 - 30'),
(1524, '101722 - Mom & Baby/Toys/Dolls & Stuffed Toys/Stuffed Toys', 101722, '7 - 30'),
(1525, '101723 - Mom & Baby/Toys/Dolls & Stuffed Toys/Others', 101723, '7 - 30'),
(1526, '101724 - Mom & Baby/Toys/Sports & Outdoor Play/Bicycles, Scooters & Ride-ons', 101724, '7 - 30'),
(1527, '101725 - Mom & Baby/Toys/Sports & Outdoor Play/Inflatables & Slides', 101725, '7 - 30'),
(1528, '101726 - Mom & Baby/Toys/Sports & Outdoor Play/Play Tents, Tunnels & Ball Pits', 101726, '7 - 30'),
(1529, '101727 - Mom & Baby/Toys/Sports & Outdoor Play/Pool, Water & Sand Toys', 101727, '7 - 30'),
(1530, '101728 - Mom & Baby/Toys/Sports & Outdoor Play/Blasters & Toy Guns', 101728, '7 - 30'),
(1531, '101729 - Mom & Baby/Toys/Sports & Outdoor Play/Sports Toys', 101729, '7 - 30'),
(1532, '101730 - Mom & Baby/Toys/Sports & Outdoor Play/Flying Toys, Kites & Wind Spinners', 101730, '7 - 30'),
(1533, '101731 - Mom & Baby/Toys/Sports & Outdoor Play/Others', 101731, '7 - 30'),
(1534, '101732 - Mom & Baby/Toys/Educational Toys/Arts & Crafts', 101732, '7 - 30'),
(1535, '101733 - Mom & Baby/Toys/Educational Toys/Math Toys', 101733, '7 - 30'),
(1536, '101734 - Mom & Baby/Toys/Educational Toys/Science & Tech Toys', 101734, '7 - 30'),
(1537, '101735 - Mom & Baby/Toys/Educational Toys/Shape Sorters', 101735, '7 - 30'),
(1538, '101736 - Mom & Baby/Toys/Educational Toys/Puzzles', 101736, '7 - 30'),
(1539, '101737 - Mom & Baby/Toys/Educational Toys/Musical Toys', 101737, '7 - 30'),
(1540, '101738 - Mom & Baby/Toys/Educational Toys/Toy Tablets & Computers', 101738, '7 - 30'),
(1541, '101739 - Mom & Baby/Toys/Educational Toys/Others', 101739, '7 - 30'),
(1542, '101740 - Baby & Kids Fashion/Baby Clothes/Bottoms/Pants & Leggings', 101740, '7 - 30'),
(1543, '101741 - Baby & Kids Fashion/Baby Clothes/Bottoms/Shorts', 101741, '7 - 30'),
(1544, '101742 - Baby & Kids Fashion/Baby Clothes/Bottoms/Skirts', 101742, '7 - 30'),
(1545, '101743 - Baby & Kids Fashion/Baby Clothes/Bottoms/Others', 101743, '7 - 30'),
(1546, '101744 - Baby & Kids Fashion/Baby & Kids Accessories/Bags & Luggage/Backpacks', 101744, '7 - 30'),
(1547, '101745 - Baby & Kids Fashion/Baby & Kids Accessories/Bags & Luggage/Crossbody & Shoulder Bags', 101745, '7 - 30'),
(1548, '101746 - Baby & Kids Fashion/Baby & Kids Accessories/Bags & Luggage/Trolley Bags', 101746, '7 - 30'),
(1549, '101747 - Baby & Kids Fashion/Baby & Kids Accessories/Bags & Luggage/Wallets', 101747, '7 - 30'),
(1550, '101748 - Baby & Kids Fashion/Baby & Kids Accessories/Bags & Luggage/Others', 101748, '7 - 30'),
(1551, '101749 - Baby & Kids Fashion/Baby & Kids Accessories/Jewelry/Bracelets', 101749, '7 - 30'),
(1552, '101750 - Baby & Kids Fashion/Baby & Kids Accessories/Jewelry/Earrings', 101750, '7 - 30'),
(1553, '101751 - Baby & Kids Fashion/Baby & Kids Accessories/Jewelry/Necklaces', 101751, '7 - 30'),
(1554, '101752 - Baby & Kids Fashion/Baby & Kids Accessories/Jewelry/Rings', 101752, '7 - 30'),
(1555, '101753 - Baby & Kids Fashion/Baby & Kids Accessories/Jewelry/Others', 101753, '7 - 30'),
(1556, '101754 - Baby & Kids Fashion/Baby & Kids Accessories/Rain Gear/Raincoats', 101754, '7 - 30'),
(1557, '101755 - Baby & Kids Fashion/Baby & Kids Accessories/Rain Gear/Rain Boots', 101755, '7 - 30'),
(1558, '101756 - Baby & Kids Fashion/Baby & Kids Accessories/Rain Gear/Others', 101756, '7 - 30'),
(1559, '101757 - Baby & Kids Fashion/Boy Clothes/Tops/T-shirts', 101757, '7 - 30'),
(1560, '101758 - Baby & Kids Fashion/Boy Clothes/Tops/Polo Shirts', 101758, '7 - 30'),
(1561, '101759 - Baby & Kids Fashion/Boy Clothes/Tops/Shirts', 101759, '7 - 30'),
(1562, '101760 - Baby & Kids Fashion/Boy Clothes/Tops/Others', 101760, '7 - 30'),
(1563, '101761 - Baby & Kids Fashion/Boy Clothes/Outerwear/Regular Jackets & Coats', 101761, '7 - 30'),
(1564, '101762 - Baby & Kids Fashion/Boy Clothes/Outerwear/Winter Outerwear', 101762, '7 - 30'),
(1565, '101763 - Baby & Kids Fashion/Boy Clothes/Outerwear/Vests', 101763, '7 - 30'),
(1566, '101764 - Baby & Kids Fashion/Boy Clothes/Outerwear/Sweaters & Cardigans', 101764, '7 - 30'),
(1567, '101765 - Baby & Kids Fashion/Boy Clothes/Outerwear/Blazers', 101765, '7 - 30'),
(1568, '101766 - Baby & Kids Fashion/Boy Clothes/Outerwear/Hoodies', 101766, '7 - 30'),
(1569, '101767 - Baby & Kids Fashion/Boy Clothes/Outerwear/Others', 101767, '7 - 30'),
(1570, '101768 - Baby & Kids Fashion/Boy Clothes/Bottoms/Jeans', 101768, '7 - 30'),
(1571, '101769 - Baby & Kids Fashion/Boy Clothes/Bottoms/Pants', 101769, '7 - 30'),
(1572, '101770 - Baby & Kids Fashion/Boy Clothes/Bottoms/Shorts', 101770, '7 - 30'),
(1573, '101771 - Baby & Kids Fashion/Boy Clothes/Bottoms/Overalls', 101771, '7 - 30'),
(1574, '101772 - Baby & Kids Fashion/Boy Clothes/Bottoms/Others', 101772, '7 - 30'),
(1575, '101773 - Baby & Kids Fashion/Girl Clothes/Tops/T-shirts', 101773, '7 - 30'),
(1576, '101774 - Baby & Kids Fashion/Girl Clothes/Tops/Polo Shirts', 101774, '7 - 30'),
(1577, '101775 - Baby & Kids Fashion/Girl Clothes/Tops/Shirts & Blouses', 101775, '7 - 30'),
(1578, '101776 - Baby & Kids Fashion/Girl Clothes/Tops/Others', 101776, '7 - 30'),
(1579, '101777 - Baby & Kids Fashion/Girl Clothes/Outerwear/Regular Jackets & Coats', 101777, '7 - 30'),
(1580, '101778 - Baby & Kids Fashion/Girl Clothes/Outerwear/Winter Outerwear', 101778, '7 - 30'),
(1581, '101779 - Baby & Kids Fashion/Girl Clothes/Outerwear/Vests', 101779, '7 - 30'),
(1582, '101780 - Baby & Kids Fashion/Girl Clothes/Outerwear/Sweaters & Cardigans', 101780, '7 - 30'),
(1583, '101781 - Baby & Kids Fashion/Girl Clothes/Outerwear/Blazers', 101781, '7 - 30'),
(1584, '101782 - Baby & Kids Fashion/Girl Clothes/Outerwear/Hoodies', 101782, '7 - 30'),
(1585, '101783 - Baby & Kids Fashion/Girl Clothes/Outerwear/Others', 101783, '7 - 30'),
(1586, '101784 - Baby & Kids Fashion/Girl Clothes/Bottoms/Jeans', 101784, '7 - 30'),
(1587, '101785 - Baby & Kids Fashion/Girl Clothes/Bottoms/Pants', 101785, '7 - 30'),
(1588, '101786 - Baby & Kids Fashion/Girl Clothes/Bottoms/Shorts', 101786, '7 - 30'),
(1589, '101787 - Baby & Kids Fashion/Girl Clothes/Bottoms/Skirts', 101787, '7 - 30'),
(1590, '101788 - Baby & Kids Fashion/Girl Clothes/Bottoms/Leggings', 101788, '7 - 30'),
(1591, '101789 - Baby & Kids Fashion/Girl Clothes/Bottoms/Others', 101789, '7 - 30'),
(1592, '102021 - Cameras & Drones/Camera Accessories/Flash Accessories/Flash Triggers', 102021, '7 - 30'),
(1593, '102022 - Cameras & Drones/Camera Accessories/Flash Accessories/Flash Diffusers', 102022, '7 - 30'),
(1594, '102023 - Cameras & Drones/Camera Accessories/Flash Accessories/Others', 102023, '7 - 30'),
(1595, '101790 - Home & Living/Bathrooms/Towels & Bathrobes/Bath Towels', 101790, '7 - 30'),
(1596, '101791 - Home & Living/Bathrooms/Towels & Bathrobes/Face & Hand Towels', 101791, '7 - 30'),
(1597, '101792 - Home & Living/Bathrooms/Towels & Bathrobes/Bath Robes', 101792, '7 - 30'),
(1598, '101793 - Home & Living/Bathrooms/Towels & Bathrobes/Others', 101793, '7 - 30'),
(1599, '101794 - Home & Living/Tools & Home Improvement/Tools/Tool Boxes', 101794, '7 - 30'),
(1600, '101795 - Home & Living/Tools & Home Improvement/Tools/Measuring Tapes', 101795, '7 - 30'),
(1601, '101796 - Home & Living/Tools & Home Improvement/Tools/Spanner Sets', 101796, '7 - 30'),
(1602, '101797 - Home & Living/Tools & Home Improvement/Tools/Hammers', 101797, '7 - 30'),
(1603, '101798 - Home & Living/Tools & Home Improvement/Tools/Pliers', 101798, '7 - 30'),
(1604, '101799 - Home & Living/Tools & Home Improvement/Tools/Nails, Screws & Fasteners', 101799, '7 - 30'),
(1605, '101800 - Home & Living/Tools & Home Improvement/Tools/Drills, Screwdrivers & Accessories', 101800, '7 - 30'),
(1606, '101801 - Home & Living/Tools & Home Improvement/Tools/Saws, Cut-off Machines & Grinders', 101801, '7 - 30'),
(1607, '101802 - Home & Living/Tools & Home Improvement/Tools/Pressure Washers', 101802, '7 - 30'),
(1608, '101803 - Home & Living/Tools & Home Improvement/Tools/Power Generators', 101803, '7 - 30'),
(1609, '101804 - Home & Living/Tools & Home Improvement/Tools/Electrical Testers & Multimeters', 101804, '7 - 30'),
(1610, '101805 - Home & Living/Tools & Home Improvement/Tools/Levels & Measuring Wheels', 101805, '7 - 30'),
(1611, '101806 - Home & Living/Tools & Home Improvement/Tools/Rangefinders', 101806, '7 - 30'),
(1612, '101807 - Home & Living/Tools & Home Improvement/Tools/Air Compressors', 101807, '7 - 30'),
(1613, '101808 - Home & Living/Tools & Home Improvement/Tools/Sandpaper, Power Sanders & Accessories', 101808, '7 - 30'),
(1614, '101809 - Home & Living/Tools & Home Improvement/Tools/Power Welding Tools', 101809, '7 - 30'),
(1615, '101810 - Home & Living/Tools & Home Improvement/Tools/Blowers', 101810, '7 - 30'),
(1616, '101811 - Home & Living/Tools & Home Improvement/Tools/Others', 101811, '7 - 30'),
(1617, '101812 - Home & Living/Home Care Supplies/Laundry Care/Fabric Fragrances', 101812, '7 - 30'),
(1618, '101813 - Home & Living/Home Care Supplies/Laundry Care/Fabric Conditioners & Softeners', 101813, '7 - 30'),
(1619, '101814 - Home & Living/Home Care Supplies/Laundry Care/Detergents', 101814, '7 - 30'),
(1620, '101815 - Home & Living/Home Care Supplies/Laundry Care/Others', 101815, '7 - 30'),
(1621, '101816 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Fishing/Fishing Hooks', 101816, '7 - 30'),
(1622, '101817 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Fishing/Fishing Rods & Reels', 101817, '7 - 30'),
(1623, '101818 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Fishing/Fish Finders', 101818, '7 - 30'),
(1624, '101819 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Fishing/Fishing Lines', 101819, '7 - 30'),
(1625, '101820 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Fishing/Lures & Baits', 101820, '7 - 30'),
(1626, '101821 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Fishing/Fishing Bags', 101821, '7 - 30'),
(1627, '101822 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Fishing/Fishing Nets', 101822, '7 - 30'),
(1628, '101823 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Fishing/Others', 101823, '7 - 30'),
(1629, '101824 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Cycling/Bicycles', 101824, '7 - 30'),
(1630, '101825 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Cycling/Bicycle Parts & Accessorie', 101825, '7 - 30'),
(1631, '101826 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Cycling/Cycling Helmets', 101826, '7 - 30'),
(1632, '101827 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Cycling/Others', 101827, '7 - 30'),
(1633, '101828 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Camping & Hiking/Camping Cookware', 101828, '7 - 30'),
(1634, '101829 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Camping & Hiking/Camping Lamps & F', 101829, '7 - 30'),
(1635, '101830 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Camping & Hiking/Tents & Tent Acce', 101830, '7 - 30'),
(1636, '101831 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Camping & Hiking/Sleeping Bags', 101831, '7 - 30'),
(1637, '101832 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Camping & Hiking/Binoculars, Monoc', 101832, '7 - 30'),
(1638, '101833 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Camping & Hiking/Compasses', 101833, '7 - 30'),
(1639, '101834 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Camping & Hiking/Camping Knives & ', 101834, '7 - 30'),
(1640, '101835 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Camping & Hiking/Hammocks', 101835, '7 - 30'),
(1641, '101836 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Camping & Hiking/Hiking Sticks', 101836, '7 - 30'),
(1642, '101837 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Camping & Hiking/Picnic Mats & Bas', 101837, '7 - 30'),
(1643, '101838 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Camping & Hiking/Others', 101838, '7 - 30'),
(1644, '101839 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Boardsports/Skateboards & Roller B', 101839, '7 - 30'),
(1645, '101840 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Boardsports/Scooters & Unicycles', 101840, '7 - 30'),
(1646, '101841 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Boardsports/Segways & Hoverboards', 101841, '7 - 30'),
(1647, '101842 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Boardsports/Helmets & Protective G', 101842, '7 - 30'),
(1648, '101843 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Boardsports/Others', 101843, '7 - 30'),
(1649, '101847 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Soccer, Futsal & Sepak Takraw/Ball', 101847, '7 - 30'),
(1650, '101848 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Soccer, Futsal & Sepak Takraw/Goal', 101848, '7 - 30'),
(1651, '101849 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Soccer, Futsal & Sepak Takraw/Goal', 101849, '7 - 30'),
(1652, '101850 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Soccer, Futsal & Sepak Takraw/Othe', 101850, '7 - 30'),
(1653, '101851 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Basketball/Basket Balls', 101851, '7 - 30'),
(1654, '101852 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Basketball/Basketball Rings', 101852, '7 - 30'),
(1655, '101853 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Basketball/Others', 101853, '7 - 30'),
(1656, '101854 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Volleyball/Volley Balls', 101854, '7 - 30'),
(1657, '101855 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Volleyball/Volley Nets', 101855, '7 - 30'),
(1658, '101856 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Volleyball/Others', 101856, '7 - 30'),
(1659, '101857 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Badminton/Badminton Rackets', 101857, '7 - 30'),
(1660, '101858 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Badminton/Shuttlecocks', 101858, '7 - 30'),
(1661, '101859 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Badminton/Badminton Nets', 101859, '7 - 30'),
(1662, '101860 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Badminton/Others', 101860, '7 - 30'),
(1663, '101861 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Tennis/Tennis Rackets', 101861, '7 - 30'),
(1664, '101862 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Tennis/Tennis Balls', 101862, '7 - 30'),
(1665, '101863 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Tennis/Tennis Nets', 101863, '7 - 30'),
(1666, '101864 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Tennis/Others', 101864, '7 - 30'),
(1667, '101865 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Table Tennis/Table Tennis Balls', 101865, '7 - 30'),
(1668, '101866 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Table Tennis/Table Tennis Bats', 101866, '7 - 30'),
(1669, '101867 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Table Tennis/Table Tennis Nets', 101867, '7 - 30'),
(1670, '101868 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Table Tennis/Others', 101868, '7 - 30'),
(1671, '101869 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Boxing & Martial Arts/Punching Bag', 101869, '7 - 30'),
(1672, '101870 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Boxing & Martial Arts/Martial Arts', 101870, '7 - 30'),
(1673, '101871 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Boxing & Martial Arts/Gloves, Wrap', 101871, '7 - 30'),
(1674, '101872 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Boxing & Martial Arts/Others', 101872, '7 - 30'),
(1675, '101873 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Golf/Golf Balls', 101873, '7 - 30'),
(1676, '101874 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Golf/Golf Clubs', 101874, '7 - 30'),
(1677, '101875 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Golf/Gears &Training Equipment', 101875, '7 - 30'),
(1678, '101876 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Golf/Golf Bags & Organizers', 101876, '7 - 30'),
(1679, '101877 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Golf/Others', 101877, '7 - 30'),
(1680, '101878 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Swimming & Diving/Swimming Caps', 101878, '7 - 30'),
(1681, '101879 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Swimming & Diving/Swimming Goggles', 101879, '7 - 30'),
(1682, '101880 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Swimming & Diving/Swimming Boards', 101880, '7 - 30'),
(1683, '101881 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Swimming & Diving/Diving Flashligh', 101881, '7 - 30'),
(1684, '101882 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Swimming & Diving/Diving Masks', 101882, '7 - 30'),
(1685, '101883 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Swimming & Diving/Flippers', 101883, '7 - 30'),
(1686, '101884 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Swimming & Diving/Life Jackets', 101884, '7 - 30'),
(1687, '101885 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Swimming & Diving/Others', 101885, '7 - 30'),
(1688, '101886 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Yoga & Pilates/Yoga Mats', 101886, '7 - 30'),
(1689, '101887 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Yoga & Pilates/Yoga Blocks, Rings ', 101887, '7 - 30'),
(1690, '101888 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Yoga & Pilates/Resistance Bands', 101888, '7 - 30'),
(1691, '101889 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Yoga & Pilates/Others', 101889, '7 - 30'),
(1692, '101890 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Fitness Equipment/Weight Training', 101890, '7 - 30'),
(1693, '101891 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Fitness Equipment/Skipping Ropes', 101891, '7 - 30'),
(1694, '101892 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Fitness Equipment/Gym Balls', 101892, '7 - 30'),
(1695, '101893 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Fitness Equipment/Fitness Machines', 101893, '7 - 30'),
(1696, '101894 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Fitness Equipment/Ab Rollers', 101894, '7 - 30'),
(1697, '101895 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Fitness Equipment/Pull Up & Push U', 101895, '7 - 30'),
(1698, '101896 - Sports & Outdoors/Sports & Outdoor Recreation Equipments/Fitness Equipment/Others', 101896, '7 - 30'),
(1699, '101897 - Sports & Outdoors/Sports & Outdoor Apparels/Swimming Attire/Swimming Trunks', 101897, '7 - 30'),
(1700, '101898 - Sports & Outdoors/Sports & Outdoor Apparels/Swimming Attire/Bikini Sets', 101898, '7 - 30'),
(1701, '101899 - Sports & Outdoors/Sports & Outdoor Apparels/Swimming Attire/One-Piece Swimsuits', 101899, '7 - 30'),
(1702, '101900 - Sports & Outdoors/Sports & Outdoor Apparels/Swimming Attire/Rash Guards', 101900, '7 - 30'),
(1703, '101901 - Sports & Outdoors/Sports & Outdoor Apparels/Swimming Attire/Others', 101901, '7 - 30'),
(1704, '102018 - Hobbies & Collections/Musical Instruments & Accessories/String Instruments/Ukuleles', 102018, '7 - 30'),
(1705, '102019 - Hobbies & Collections/Musical Instruments & Accessories/String Instruments/Guitars & Bass G', 102019, '7 - 30'),
(1706, '102020 - Hobbies & Collections/Musical Instruments & Accessories/String Instruments/Others', 102020, '7 - 30'),
(1707, '101902 - Automobiles/Automobile Spare Parts/Engine Parts/Pistons', 101902, '7 - 30'),
(1708, '101903 - Automobiles/Automobile Spare Parts/Engine Parts/Air Filters', 101903, '7 - 30'),
(1709, '101904 - Automobiles/Automobile Spare Parts/Engine Parts/Oil Filters', 101904, '7 - 30'),
(1710, '101905 - Automobiles/Automobile Spare Parts/Engine Parts/Others', 101905, '7 - 30'),
(1711, '101907 - Automobiles/Automobile Spare Parts/Electronics/Batteries & Accessories', 101907, '7 - 30'),
(1712, '101908 - Automobiles/Automobile Spare Parts/Electronics/Lighting', 101908, '7 - 30'),
(1713, '101909 - Automobiles/Automobile Spare Parts/Electronics/Others', 101909, '7 - 30'),
(1714, '101910 - Automobiles/Automotive Oils & Lubes/Automotive Fluids/Brake Fluids', 101910, '7 - 30'),
(1715, '101911 - Automobiles/Automotive Oils & Lubes/Automotive Fluids/Transmissions Fluids', 101911, '7 - 30'),
(1716, '101912 - Automobiles/Automotive Oils & Lubes/Automotive Fluids/Others', 101912, '7 - 30'),
(1717, '101913 - Motorcycles/Motorcycle Spare Parts/Ignition & Engine Parts/Radiators', 101913, '7 - 30'),
(1718, '101914 - Motorcycles/Motorcycle Spare Parts/Ignition & Engine Parts/Pistons', 101914, '7 - 30'),
(1719, '101915 - Motorcycles/Motorcycle Spare Parts/Ignition & Engine Parts/CDI & ECU', 101915, '7 - 30'),
(1720, '101916 - Motorcycles/Motorcycle Spare Parts/Ignition & Engine Parts/Spark Plugs', 101916, '7 - 30'),
(1721, '101917 - Motorcycles/Motorcycle Spare Parts/Ignition & Engine Parts/Ignition Coils', 101917, '7 - 30'),
(1722, '101918 - Motorcycles/Motorcycle Spare Parts/Ignition & Engine Parts/V-Belts', 101918, '7 - 30'),
(1723, '101919 - Motorcycles/Motorcycle Spare Parts/Ignition & Engine Parts/Air Filters', 101919, '7 - 30'),
(1724, '101920 - Motorcycles/Motorcycle Spare Parts/Ignition & Engine Parts/Others', 101920, '7 - 30'),
(1725, '101921 - Motorcycles/Motorcycle Spare Parts/Drivetrain, Transmission & Clutches/Chains & Gears', 101921, '7 - 30'),
(1726, '101922 - Motorcycles/Motorcycle Spare Parts/Drivetrain, Transmission & Clutches/Clutches', 101922, '7 - 30'),
(1727, '101923 - Motorcycles/Motorcycle Spare Parts/Drivetrain, Transmission & Clutches/Bearings', 101923, '7 - 30'),
(1728, '101924 - Motorcycles/Motorcycle Spare Parts/Drivetrain, Transmission & Clutches/Others', 101924, '7 - 30'),
(1729, '100527 - Muslim Fashion/Women Muslim Wear/Veils/Hijab Accessories/Inner Hijab', 100527, '7 - 30'),
(1730, '100528 - Muslim Fashion/Women Muslim Wear/Veils/Hijab Accessories/Hijab Pin', 100528, '7 - 30'),
(1731, '100529 - Muslim Fashion/Women Muslim Wear/Veils/Hijab Accessories/Others', 100529, '7 - 30'),
(1732, '101925 - Pets/Pet Accessories/Toys/Dog & Cat Toys/Sticks & Chasers', 101925, '7 - 30'),
(1733, '101926 - Pets/Pet Accessories/Toys/Dog & Cat Toys/Chew, Bones & Balls', 101926, '7 - 30'),
(1734, '101927 - Pets/Pet Accessories/Toys/Dog & Cat Toys/Frisbees', 101927, '7 - 30'),
(1735, '101928 - Pets/Pet Accessories/Toys/Dog & Cat Toys/Others', 101928, '7 - 30'),
(1736, '101929 - Automobiles/Automobile Spare Parts/Electronics/Ignition/Ignition Coils', 101929, '7 - 30'),
(1737, '101930 - Automobiles/Automobile Spare Parts/Electronics/Ignition/Spark Plugs', 101930, '7 - 30'),
(1738, '101931 - Automobiles/Automobile Spare Parts/Electronics/Ignition/Others', 101931, '7 - 30');

-- --------------------------------------------------------

--
-- Table structure for table `shopee_convert`
--

CREATE TABLE `shopee_convert` (
  `sh_id` int(11) NOT NULL,
  `prod_id` int(10) NOT NULL,
  `category` int(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_description` text NOT NULL,
  `parent_sku` varchar(200) NOT NULL,
  `variation_integration_no` int(100) NOT NULL,
  `variation_name1` varchar(14) NOT NULL,
  `option_variation_1` varchar(20) NOT NULL,
  `image_per_variation` text NOT NULL,
  `variation_name2` varchar(14) NOT NULL,
  `option_variation_2` varchar(20) NOT NULL,
  `price` int(100) NOT NULL,
  `stock` int(100) NOT NULL,
  `sku` varchar(200) NOT NULL,
  `cover_image` text NOT NULL,
  `item_image_1` text NOT NULL,
  `item_image_2` text NOT NULL,
  `item_image_3` text NOT NULL,
  `item_image_4` text NOT NULL,
  `item_image_5` text NOT NULL,
  `item_image_6` text NOT NULL,
  `item_image_7` text NOT NULL,
  `item_image_8` text NOT NULL,
  `weight` int(100) NOT NULL,
  `length` int(100) NOT NULL,
  `width` int(100) NOT NULL,
  `height` int(100) NOT NULL,
  `sample_channel_1` varchar(50) NOT NULL,
  `sample_channel_2` varchar(50) NOT NULL,
  `sample_channel_3` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopee_convert`
--

INSERT INTO `shopee_convert` (`sh_id`, `prod_id`, `category`, `product_name`, `product_description`, `parent_sku`, `variation_integration_no`, `variation_name1`, `option_variation_1`, `image_per_variation`, `variation_name2`, `option_variation_2`, `price`, `stock`, `sku`, `cover_image`, `item_image_1`, `item_image_2`, `item_image_3`, `item_image_4`, `item_image_5`, `item_image_6`, `item_image_7`, `item_image_8`, `weight`, `length`, `width`, `height`, `sample_channel_1`, `sample_channel_2`, `sample_channel_3`) VALUES
(1, 3, 101584, 'Rite n Lite Beverage Juice 350ml', '', '668619', 0, '', '', 'http://localhost/AQT/pages/FRAME/upload/1662664476.png', '', '', 100, 50, '668619', 'http://localhost/AQT/pages/FRAME/upload/1662664476.png', 'http://localhost/AQT/pages/FRAME/upload/1662664476.png', 'http://localhost/AQT/pages/FRAME/upload/1662664476.png', 'http://localhost/AQT/pages/FRAME/upload/1662664476.png', 'http://localhost/AQT/pages/FRAME/upload/1662664476.png', 'http://localhost/AQT/pages/FRAME/upload/1662664476.png', 'http://localhost/AQT/pages/FRAME/upload/1662664476.png', 'http://localhost/AQT/pages/FRAME/upload/1662664476.png', 'http://localhost/AQT/pages/FRAME/upload/1662664476.png', 10, 2, 2, 2, 'On', 'On', 'On'),
(2, 4, 100026, 'Rite n Lite Beverage Juice 450ml', '', '695484', 0, '', '', 'http://localhost/AQT/pages/FRAME/upload/1662676512.png', '', '', 500, 200, '695484', 'http://localhost/AQT/pages/FRAME/upload/1662676512.png', 'http://localhost/AQT/pages/FRAME/upload/1662676512.png', 'http://localhost/AQT/pages/FRAME/upload/1662676512.png', 'http://localhost/AQT/pages/FRAME/upload/1662676512.png', 'http://localhost/AQT/pages/FRAME/upload/1662676512.png', 'http://localhost/AQT/pages/FRAME/upload/1662676512.png', 'http://localhost/AQT/pages/FRAME/upload/1662676512.png', 'http://localhost/AQT/pages/FRAME/upload/1662676512.png', 'http://localhost/AQT/pages/FRAME/upload/1662676512.png', 2, 2, 2, 2, 'On', 'On', 'On'),
(3, 7, 100008, 'Rite n Lite Beverage Juice 750ml', '', '743987', 0, '', '', 'http://localhost/AQT/pages/FRAME/upload/1663363603.png', '', '', 50, 20, '743987', 'http://localhost/AQT/pages/FRAME/upload/1663363603.png', 'http://localhost/AQT/pages/FRAME/upload/1663363603.png', 'http://localhost/AQT/pages/FRAME/upload/1663363603.png', 'http://localhost/AQT/pages/FRAME/upload/1663363603.png', 'http://localhost/AQT/pages/FRAME/upload/1663363603.png', 'http://localhost/AQT/pages/FRAME/upload/1663363603.png', 'http://localhost/AQT/pages/FRAME/upload/1663363603.png', 'http://localhost/AQT/pages/FRAME/upload/1663363603.png', 'http://localhost/AQT/pages/FRAME/upload/1663363603.png', 2, 2, 2, 2, 'On', 'On', 'On'),
(4, 1, 100029, 'Rite n Lite Beverage Juice 250ml', '', '769601', 0, '', '', 'http://localhost/AQT/pages/FRAME/upload/1662661972.png', '', '', 250, 900, '769601', 'http://localhost/AQT/pages/FRAME/upload/1662661972.png', 'http://localhost/AQT/pages/FRAME/upload/1662661972.png', 'http://localhost/AQT/pages/FRAME/upload/1662661972.png', 'http://localhost/AQT/pages/FRAME/upload/1662661972.png', 'http://localhost/AQT/pages/FRAME/upload/1662661972.png', 'http://localhost/AQT/pages/FRAME/upload/1662661972.png', 'http://localhost/AQT/pages/FRAME/upload/1662661972.png', 'http://localhost/AQT/pages/FRAME/upload/1662661972.png', 'http://localhost/AQT/pages/FRAME/upload/1662661972.png', 2, 2, 2, 2, 'On', 'On', 'On'),
(5, 2, 100024, 'Rite n Lite Beverage Juice 150ml', '', '828958', 0, '', '', 'http://localhost/AQT/pages/FRAME/upload/1662662910.png', '', '', 20, 100, '828958', 'http://localhost/AQT/pages/FRAME/upload/1662662910.png', 'http://localhost/AQT/pages/FRAME/upload/1662662910.png', 'http://localhost/AQT/pages/FRAME/upload/1662662910.png', 'http://localhost/AQT/pages/FRAME/upload/1662662910.png', 'http://localhost/AQT/pages/FRAME/upload/1662662910.png', 'http://localhost/AQT/pages/FRAME/upload/1662662910.png', 'http://localhost/AQT/pages/FRAME/upload/1662662910.png', 'http://localhost/AQT/pages/FRAME/upload/1662662910.png', 'http://localhost/AQT/pages/FRAME/upload/1662662910.png', 2, 2, 2, 2, 'On', 'On', 'On'),
(6, 5, 0, 'Rite n Lite Beverage Juice 500ml', '', '889790', 0, '', '', 'http://localhost/AQT/pages/FRAME/upload/1662718057.png', '', '', 30, 100, '889790', 'http://localhost/AQT/pages/FRAME/upload/1662718057.png', 'http://localhost/AQT/pages/FRAME/upload/1662718057.png', 'http://localhost/AQT/pages/FRAME/upload/1662718057.png', 'http://localhost/AQT/pages/FRAME/upload/1662718057.png', 'http://localhost/AQT/pages/FRAME/upload/1662718057.png', 'http://localhost/AQT/pages/FRAME/upload/1662718057.png', 'http://localhost/AQT/pages/FRAME/upload/1662718057.png', 'http://localhost/AQT/pages/FRAME/upload/1662718057.png', 'http://localhost/AQT/pages/FRAME/upload/1662718057.png', 0, 0, 0, 0, 'On', 'On', 'On');

-- --------------------------------------------------------

--
-- Table structure for table `shopee_login`
--

CREATE TABLE `shopee_login` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopee_login`
--

INSERT INTO `shopee_login` (`id`, `email`, `password`) VALUES
(1, 'tricore012@gmail.com', '@Light101213');

-- --------------------------------------------------------

--
-- Table structure for table `shopee_product`
--

CREATE TABLE `shopee_product` (
  `id` int(11) NOT NULL,
  `product_id` varchar(250) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `price` int(60) NOT NULL,
  `qty` int(60) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopee_product`
--

INSERT INTO `shopee_product` (`id`, `product_id`, `product_name`, `price`, `qty`, `photo`) VALUES
(1, '21332437325', 'HAN RIVER Air Fryer 3.5L', 0, 0, 'https://cf.shopee.ph/file/01bfe06ddb5808430eabbabcaaa51934'),
(2, '19632436203', 'Samsung Galaxy M12 (4+64GB)', 0, 0, 'https://cf.shopee.ph/file/f74cc69d2ecb91a6bde1e7510ce4483a'),
(3, '18832436788', 'PerySmith Stand Mixer EasyCooking Series PS5500 5.5L 1200W', 0, 0, 'https://cf.shopee.ph/file/0f7f2f9d81a25985304fbc4bd7185c8a'),
(4, '17181626015', 'POCO C40 Global Version (3+32GB)', 0, 0, 'https://cf.shopee.ph/file/527102fbab0636aa9293e934d441ab47'),
(5, '11397455085', 'POCO M4 PRO Global Version (6+128GB)', 0, 0, 'https://cf.shopee.ph/file/8dc0e38b9d5a0234f090daccfd437452'),
(6, '8630862936', 'Jacobina Biscuits - Biscuits in tub 2L', 0, 0, 'https://cf.shopee.ph/file/d46dea6d1eb7f7f9374e30e2ca60689b'),
(7, '8630859399', 'Pilipit Biscuits - Biscuits in tub 3L', 0, 0, 'https://cf.shopee.ph/file/bdddd107a316ba481d057cc3929625c6'),
(8, '8430852209', 'Apas Biscuits - Biscuits in tub 2L', 0, 0, 'https://cf.shopee.ph/file/dcb807c1d0f2bb38e0158ab966649b8e'),
(9, '8330863187', 'Mamon Tostado Biscuits - Biscuits in tub 2.5L', 0, 0, 'https://cf.shopee.ph/file/199416fbdb7bce114aa122d871bc22ab'),
(10, '8330859795', 'Puto Seko - Biscuits in tub 2L', 0, 0, 'https://cf.shopee.ph/file/51cf147c2884fcdfd06900f424e0bcbe'),
(11, '8330858679', 'Egg Cracklets - Biscuits in tub 3L', 0, 0, 'https://cf.shopee.ph/file/7db2f90255fb6b90e70fa78194e4317d'),
(12, '8230854183', 'Butter Cookies Biscuits - Biscuits in tub 2.5L', 0, 0, 'https://cf.shopee.ph/file/240ba146041e7f4b689987eba3049571'),
(13, '8130858127', 'Buttered Toast - Biscuits in tub 3L', 0, 0, 'https://cf.shopee.ph/file/621ccea1addf1d4d4f58df588dff4dd7'),
(14, '6683089937', 'Yummy Otap - Biscuits in tub 3L', 0, 0, 'https://cf.shopee.ph/file/9bd778bfd9028df9d64624bc29d61382'),
(15, '6244261171', 'Rite ‘n Lite Carbonated Drink 250ml x 24', 0, 0, 'https://cf.shopee.ph/file/dadc8d5a766b76ae48da56f35d40c384'),
(16, '5283096425', 'Puto Seko Mix - Biscuits in tub 2L', 0, 0, 'https://cf.shopee.ph/file/40eda5ce19c5e67af53d9f6f0a38c36b'),
(17, '5061786340', 'Rite \'n Lite Special Pack (7 pcs)', 0, 0, 'https://cf.shopee.ph/file/4b4785388e814658b467ca8ca72209c2'),
(18, '5056444007', 'Rite \'n Lite Carbonated Drink 250ml', 0, 0, 'https://cf.shopee.ph/file/552a453f20f14eea07fa960c140a17ce'),
(19, '4656443434', 'Rite ‘n Lite Plus+ Carbonated Drink 250ml', 0, 0, 'https://cf.shopee.ph/file/1482bbc49c728a26c8ec4bde23e4abef'),
(20, '3483192324', 'Iced Gems - Biscuits in tub 2L', 200, 50, 'https://cf.shopee.ph/file/255f63a3717b0ec0697eac1d6db61d59');

-- --------------------------------------------------------

--
-- Table structure for table `shopee_product_update_history`
--

CREATE TABLE `shopee_product_update_history` (
  `id` int(11) NOT NULL,
  `prod_id` int(10) NOT NULL,
  `old_name` text NOT NULL,
  `new_name` text NOT NULL,
  `old_price` int(50) NOT NULL,
  `new_price` int(50) NOT NULL,
  `old_qty` int(50) NOT NULL,
  `new_qty` int(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `overall` varchar(60) NOT NULL,
  `date_updated` date NOT NULL,
  `updated_by` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopee_product_update_history`
--

INSERT INTO `shopee_product_update_history` (`id`, `prod_id`, `old_name`, `new_name`, `old_price`, `new_price`, `old_qty`, `new_qty`, `type`, `overall`, `date_updated`, `updated_by`) VALUES
(7, 20, 'Iced Gems - Biscuits in tub 2L', 'Iced Gems - Biscuits in tub 2L', 0, 0, 0, 200, 'RESTOCK', '200', '2022-11-23', 0),
(8, 20, 'Iced Gems - Biscuits in tub 2L', 'Iced Gems - Biscuits in tub 2L', 0, 200, 200, 200, 'PRICE INCREASE', '0', '2022-11-23', 0),
(9, 20, 'Iced Gems - Biscuits in tub 2L', 'Iced Gems - Biscuits in tub 2L', 200, 200, 200, 100, 'SOLD', '100', '2022-11-23', 0),
(10, 20, 'Iced Gems - Biscuits in tub 2L', 'Iced Gems - Biscuits in tub 2L', 200, 200, 100, 50, 'SOLD', '50', '2022-11-23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `suc_login`
--

CREATE TABLE `suc_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `country` varchar(250) NOT NULL,
  `region` varchar(250) NOT NULL,
  `ip` varchar(250) NOT NULL,
  `postal` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `loc` varchar(250) NOT NULL,
  `date_login` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suc_login`
--

INSERT INTO `suc_login` (`id`, `user_id`, `country`, `region`, `ip`, `postal`, `city`, `loc`, `date_login`) VALUES
(1, 1, 'PH', 'Metro Manila', '158.62.37.122', '1106', 'Quezon City', '14.6626,121.0112', '2022-09-07'),
(2, 1, 'PH', 'Metro Manila', '158.62.37.122', '1106', 'Quezon City', '14.6626,121.0112', '2022-09-07'),
(3, 1, 'PH', 'Metro Manila', '158.62.37.122', '1106', 'Quezon City', '14.6626,121.0112', '2022-09-07'),
(4, 1, 'PH', 'Metro Manila', '158.62.37.122', '1106', 'Quezon City', '14.6626,121.0112', '2022-09-07'),
(5, 1, 'PH', 'Metro Manila', '158.62.37.122', '1106', 'Quezon City', '14.6626,121.0112', '2022-09-07'),
(6, 1, 'PH', 'Metro Manila', '158.62.37.122', '1106', 'Quezon City', '14.6626,121.0112', '2022-09-07'),
(7, 2, 'PH', 'Metro Manila', '158.62.37.122', '1106', 'Quezon City', '14.6626,121.0112', '2022-09-07'),
(8, 1, 'PH', 'Metro Manila', '158.62.37.122', '1106', 'Quezon City', '14.6626,121.0112', '2022-09-08'),
(9, 1, 'PH', 'Metro Manila', '158.62.37.122', '1106', 'Quezon City', '14.6626,121.0112', '2022-09-08'),
(10, 1, 'PH', 'Metro Manila', '158.62.37.122', '1106', 'Quezon City', '14.6626,121.0112', '2022-09-08'),
(11, 1, 'PH', 'Metro Manila', '158.62.37.122', '1106', 'Quezon City', '14.6626,121.0112', '2022-09-09'),
(12, 1, 'PH', 'Metro Manila', '158.62.37.122', '1106', 'Quezon City', '14.6626,121.0112', '2022-09-09'),
(13, 1, 'PH', 'Metro Manila', '158.62.37.122', '1106', 'Quezon City', '14.6626,121.0112', '2022-09-09'),
(14, 1, 'PH', 'Metro Manila', '158.62.37.122', '1106', 'Quezon City', '14.6626,121.0112', '2022-09-09'),
(15, 1, 'PH', 'Metro Manila', '158.62.37.122', '1106', 'Quezon City', '14.6626,121.0112', '2022-09-09'),
(16, 1, 'PH', 'Metro Manila', '158.62.37.122', '1106', 'Quezon City', '14.6626,121.0112', '2022-09-09'),
(17, 1, 'PH', 'Metro Manila', '158.62.37.122', '1106', 'Quezon City', '14.6626,121.0112', '2022-09-09'),
(18, 1, 'PH', 'Metro Manila', '158.62.37.122', '1106', 'Quezon City', '14.6626,121.0112', '2022-09-09'),
(19, 1, 'PH', 'Metro Manila', '158.62.37.122', '1106', 'Quezon City', '14.6626,121.0112', '2022-09-17'),
(20, 1, 'PH', 'Metro Manila', '158.62.37.122', '1106', 'Quezon City', '14.6626,121.0112', '2022-09-17'),
(21, 1, 'PH', 'Metro Manila', '158.62.37.122', '1106', 'Quezon City', '14.6626,121.0112', '2022-09-20'),
(22, 1, 'PH', 'Metro Manila', '158.62.37.122', '1106', 'Quezon City', '14.6626,121.0112', '2022-09-20'),
(23, 1, 'PH', 'Metro Manila', '158.62.37.122', '1106', 'Quezon City', '14.6626,121.0112', '2022-09-20'),
(24, 1, 'PH', 'Metro Manila', '158.62.37.122', '1106', 'Quezon City', '14.6626,121.0112', '2022-09-20'),
(25, 1, 'PH', 'Metro Manila', '158.62.37.122', '1106', 'Quezon City', '14.6626,121.0112', '2022-09-20'),
(26, 1, 'PH', 'Metro Manila', '158.62.37.122', '1103', 'Quezon City', '14.6304,121.0328', '2022-09-21'),
(27, 1, 'PH', 'Metro Manila', '158.62.37.122', '1103', 'Quezon City', '14.6304,121.0328', '2022-09-21'),
(28, 1, 'PH', 'Metro Manila', '158.62.37.122', '1103', 'Quezon City', '14.6304,121.0328', '2022-09-21'),
(29, 1, 'PH', 'Metro Manila', '158.62.37.122', '1103', 'Quezon City', '14.6304,121.0328', '2022-09-21'),
(30, 1, 'SG', 'Singapore', '194.163.39.45', '018989', 'Singapore', '1.2897,103.8501', '2022-09-27'),
(31, 3, 'SG', 'Singapore', '194.163.39.45', '018989', 'Singapore', '1.2897,103.8501', '2022-10-04'),
(32, 3, 'SG', 'Singapore', '194.163.39.45', '018989', 'Singapore', '1.2897,103.8501', '2022-10-04'),
(33, 3, 'SG', 'Singapore', '194.163.39.45', '018989', 'Singapore', '1.2897,103.8501', '2022-10-04'),
(34, 3, 'SG', 'Singapore', '194.163.39.45', '018989', 'Singapore', '1.2897,103.8501', '2022-10-13'),
(35, 3, 'SG', 'Singapore', '194.163.39.45', '018989', 'Singapore', '1.2897,103.8501', '2022-10-13'),
(36, 3, 'SG', 'Singapore', '194.163.39.45', '018989', 'Singapore', '1.2897,103.8501', '2022-10-13'),
(37, 3, 'SG', 'Singapore', '194.163.39.45', '018989', 'Singapore', '1.2897,103.8501', '2022-10-17'),
(38, 3, 'SG', 'Singapore', '194.163.39.45', '018989', 'Singapore', '1.2897,103.8501', '2022-10-17'),
(39, 3, 'SG', 'Singapore', '194.163.39.45', '018989', 'Singapore', '1.2897,103.8501', '2022-10-22'),
(40, 3, 'SG', 'Singapore', '194.163.39.45', '018989', 'Singapore', '1.2897,103.8501', '2022-11-14'),
(41, 1, 'SG', 'Singapore', '194.163.39.45', '018989', 'Singapore', '1.2897,103.8501', '2022-11-17'),
(42, 3, 'SG', 'Singapore', '194.163.39.45', '018989', 'Singapore', '1.2897,103.8501', '2022-11-17'),
(43, 3, 'SG', 'Singapore', '194.163.39.45', '018989', 'Singapore', '1.2897,103.8501', '2022-11-18'),
(44, 1, 'SG', 'Singapore', '194.163.39.45', '018989', 'Singapore', '1.2897,103.8501', '2022-11-18'),
(45, 1, 'PH', 'Metro Manila', '158.62.41.179', '0860', 'Quezon City', '14.6466,121.0509', '2022-11-18'),
(46, 1, 'PH', 'Metro Manila', '158.62.41.179', '0860', 'Quezon City', '14.6466,121.0509', '2022-11-18'),
(47, 1, 'PH', 'Metro Manila', '110.54.159.228', '4502', 'Quezon City', '14.7758,120.9958', '2022-11-22'),
(48, 1, 'PH', 'Metro Manila', '110.54.159.228', '4502', 'Quezon City', '14.7758,120.9958', '2022-11-23'),
(49, 1, 'PH', 'Metro Manila', '158.62.35.235', '1408', 'Quezon City', '14.6736,121.0229', '2022-12-02'),
(50, 1, 'PH', 'Metro Manila', '158.62.35.235', '1408', 'Quezon City', '14.6736,121.0229', '2022-12-02'),
(51, 1, 'PH', 'Metro Manila', '158.62.35.197', '1408', 'Quezon City', '14.6736,121.0229', '2022-12-17'),
(52, 1, 'PH', 'Metro Manila', '158.62.35.197', '1408', 'Quezon City', '14.6736,121.0229', '2022-12-19'),
(53, 1, 'PH', 'Metro Manila', '158.62.35.197', '1408', 'Quezon City', '14.6736,121.0229', '2022-12-19'),
(54, 1, 'PH', 'Metro Manila', '158.62.35.197', '1408', 'Quezon City', '14.6736,121.0229', '2022-12-20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_audit`
--

CREATE TABLE `tbl_audit` (
  `id` int(11) NOT NULL,
  `user_id` int(50) NOT NULL,
  `activity` varchar(500) NOT NULL,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_audit`
--

INSERT INTO `tbl_audit` (`id`, `user_id`, `activity`, `date_created`) VALUES
(1, 1, 'PRODUCTS', '2022-11-23'),
(2, 1, 'PRODUCTS', '2022-11-23'),
(3, 1, 'LAZADA', '2022-11-23'),
(4, 1, 'LAZADA', '2022-11-23'),
(5, 1, 'PRODUCTS', '2022-11-23'),
(6, 1, 'PRODUCTS', '2022-11-23'),
(7, 1, 'ADDED A PRODUCT', '2022-11-23'),
(8, 1, 'PRODUCTS', '2022-11-23'),
(9, 1, 'PRODUCTS', '2022-11-23'),
(10, 1, 'PRODUCTS', '2022-11-23'),
(11, 1, 'PRODUCTS', '2022-11-23'),
(12, 1, 'CHANGED PRODUCT DETAILS PROD.ID:1', '2022-11-23'),
(13, 1, 'CHANGED PRODUCT DETAILS PROD.ID:1', '2022-11-23'),
(14, 1, 'CHANGED PRODUCT DETAILS PROD.ID:1', '2022-11-23'),
(15, 1, 'CHANGED PRODUCT DETAILS PROD.ID:1', '2022-11-23'),
(16, 1, 'CHANGED PRODUCT DETAILS PROD.ID:1', '2022-11-23'),
(17, 1, 'CHANGED PRODUCT DETAILS PROD.ID:1', '2022-11-23'),
(18, 1, 'SHOPEEC', '2022-11-23'),
(19, 1, 'PRODUCTS', '2022-11-23'),
(20, 1, 'MY ACCOUNT', '2022-11-23'),
(21, 1, 'PRODUCTS', '2022-11-23'),
(22, 1, 'PRODUCTS', '2022-11-23'),
(23, 1, 'PRODUCTS', '2022-11-23'),
(24, 1, 'PRODUCTS', '2022-11-23'),
(25, 1, 'PRODUCTS', '2022-11-23'),
(26, 1, 'PRODUCTS', '2022-11-23'),
(27, 1, 'PRODUCTS', '2022-11-23'),
(28, 1, 'PRODUCTS', '2022-11-23'),
(29, 1, 'LAZADA', '2022-11-23'),
(30, 1, 'ADDED A PRODUCT', '2022-11-23'),
(31, 1, 'PRODUCTS', '2022-11-23'),
(32, 1, 'LAZADA', '2022-11-23'),
(33, 1, 'PRODUCTS', '2022-11-23'),
(34, 1, 'PRODUCTS', '2022-11-23'),
(35, 1, 'PRODUCTS', '2022-11-23'),
(36, 1, 'MY ACCOUNT', '2022-11-23'),
(37, 1, 'DASHBOARD', '2022-11-23'),
(38, 1, 'PRODUCTS', '2022-11-23'),
(39, 1, 'LAZADA', '2022-11-23'),
(40, 1, 'SHOPEEC', '2022-11-23'),
(41, 1, 'PRODUCTS', '2022-11-23'),
(42, 1, 'PRODUCTS', '2022-11-23'),
(43, 1, 'PRODUCTS', '2022-11-23'),
(44, 1, 'PRODUCTS', '2022-11-23'),
(45, 1, 'PRODUCTS', '2022-11-23'),
(46, 1, 'PRODUCTS', '2022-11-23'),
(47, 1, 'PRODUCTS', '2022-11-23'),
(48, 1, 'PRODUCTS', '2022-11-23'),
(49, 1, 'LAZADA', '2022-11-23'),
(50, 1, 'PRODUCTS', '2022-11-23'),
(51, 1, 'PRODUCTS', '2022-11-23'),
(52, 1, 'PRODUCTS', '2022-11-23'),
(53, 1, 'LAZADA', '2022-11-23'),
(54, 1, 'SHOPEEC', '2022-11-23'),
(55, 1, 'LAZADA', '2022-11-23'),
(56, 1, 'PRODUCTS', '2022-11-23'),
(57, 1, 'PRODUCTS', '2022-11-23'),
(58, 1, 'PRODUCTS', '2022-11-23'),
(59, 1, 'MY ACCOUNT', '2022-11-23'),
(60, 1, 'MY ACCOUNT', '2022-11-23'),
(61, 1, 'MY ACCOUNT', '2022-11-23'),
(62, 1, 'DASHBOARD', '2022-11-23'),
(63, 1, 'PRODUCTS', '2022-11-23'),
(64, 1, 'LAZADA', '2022-11-23'),
(65, 1, 'LAZADA', '2022-11-23'),
(66, 1, 'LAZADA', '2022-11-23'),
(67, 1, 'LAZADA', '2022-11-23'),
(68, 1, 'LAZADA', '2022-11-23'),
(69, 1, 'LAZADA', '2022-11-23'),
(70, 1, 'LAZADA', '2022-11-23'),
(71, 1, 'LAZADA', '2022-11-23'),
(72, 1, 'LAZADA', '2022-11-23'),
(73, 1, 'LAZADA', '2022-11-23'),
(74, 1, 'LAZADA', '2022-11-23'),
(75, 0, 'CHANGED PRODUCT LAZADA DETAILS PROD.ID:1', '2022-11-23'),
(76, 1, 'LAZADA', '2022-11-23'),
(77, 0, 'CHANGED PRODUCT LAZADA DETAILS PROD.ID:35', '2022-11-23'),
(78, 1, 'LAZADA', '2022-11-23'),
(79, 1, 'LAZADA', '2022-11-23'),
(80, 0, 'CHANGED PRODUCT LAZADA DETAILS PROD.ID:34', '2022-11-23'),
(81, 1, 'LAZADA', '2022-11-23'),
(82, 1, 'LAZADA', '2022-11-23'),
(83, 1, 'LAZADA', '2022-11-23'),
(84, 1, 'LAZADA', '2022-11-23'),
(85, 1, 'LAZADA', '2022-11-23'),
(86, 1, 'LAZADA', '2022-11-23'),
(87, 1, 'LAZADA', '2022-11-23'),
(88, 1, 'LAZADA', '2022-11-23'),
(89, 1, 'SHOPEEC', '2022-11-23'),
(90, 1, 'SHOPEEC', '2022-11-23'),
(91, 1, 'SHOPEEC', '2022-11-23'),
(92, 1, 'SHOPEEC', '2022-11-23'),
(93, 0, 'CHANGED PRODUCT LAZADA DETAILS PROD.ID:20', '2022-11-23'),
(94, 1, 'SHOPEEC', '2022-11-23'),
(95, 1, 'SHOPEEC', '2022-11-23'),
(96, 1, 'SHOPEEC', '2022-11-23'),
(97, 1, 'SHOPEEC', '2022-11-23'),
(98, 0, 'CHANGED PRODUCT LAZADA DETAILS PROD.ID:20', '2022-11-23'),
(99, 1, 'MY ACCOUNT', '2022-11-23'),
(100, 1, 'DASHBOARD', '2022-11-23'),
(101, 1, 'DASHBOARD', '2022-11-23'),
(102, 1, 'DASHBOARD', '2022-11-23'),
(103, 1, 'DASHBOARD', '2022-11-23'),
(104, 1, 'PRODUCTS', '2022-11-23'),
(105, 1, 'LAZADA', '2022-11-23'),
(106, 0, 'CHANGED PRODUCT LAZADA DETAILS PROD.ID:35', '2022-11-23'),
(107, 1, 'LAZADA', '2022-11-23'),
(108, 1, 'SHOPEEC', '2022-11-23'),
(109, 0, 'CHANGED PRODUCT LAZADA DETAILS PROD.ID:20', '2022-11-23'),
(110, 1, 'DASHBOARD', '2022-11-23'),
(111, 1, 'DASHBOARD', '2022-11-23'),
(112, 1, 'DASHBOARD', '2022-11-23'),
(113, 1, 'DASHBOARD', '2022-11-23'),
(114, 1, 'DASHBOARD', '2022-11-23'),
(115, 1, 'DASHBOARD', '2022-11-23'),
(116, 1, 'DASHBOARD', '2022-11-23'),
(117, 1, 'DASHBOARD', '2022-11-23'),
(118, 1, 'DASHBOARD', '2022-11-23'),
(119, 1, 'DASHBOARD', '2022-11-23'),
(120, 1, 'DASHBOARD', '2022-11-23'),
(121, 1, 'DASHBOARD', '2022-11-23'),
(122, 1, 'DASHBOARD', '2022-11-23'),
(123, 1, 'DASHBOARD', '2022-11-23'),
(124, 1, 'PRODUCTS', '2022-11-23'),
(125, 1, 'ADDED A PRODUCT', '2022-11-23'),
(126, 1, 'PRODUCTS', '2022-11-23'),
(127, 1, 'CHANGED PRODUCT DETAILS PROD.ID:3', '2022-11-23'),
(128, 1, 'DASHBOARD', '2022-11-23'),
(129, 1, 'MY ACCOUNT', '2022-11-23'),
(130, 1, 'PRODUCTS', '2022-11-23'),
(131, 1, 'LAZADA', '2022-11-23'),
(132, 0, 'CHANGED PRODUCT LAZADA DETAILS PROD.ID:35', '2022-11-23'),
(133, 1, 'SHOPEEC', '2022-11-23'),
(134, 0, 'CHANGED PRODUCT LAZADA DETAILS PROD.ID:20', '2022-11-23'),
(135, 1, 'DASHBOARD', '2022-11-23'),
(136, 1, 'LOGGED IN FOR VERIFICATION', '2022-11-23'),
(137, 1, 'LOGIN VERIED CODE', '2022-11-23'),
(138, 1, 'DASHBOARD', '2022-11-23'),
(139, 1, 'MY ACCOUNT', '2022-11-23'),
(140, 1, 'PRODUCTS', '2022-11-23'),
(141, 1, 'LAZADA', '2022-11-23'),
(142, 1, 'LAZADA', '2022-11-23'),
(143, 1, 'DASHBOARD', '2022-11-23'),
(144, 1, 'DASHBOARD', '2022-11-23'),
(145, 1, 'PRODUCTS', '2022-11-23'),
(146, 1, 'LAZADA', '2022-11-23'),
(147, 1, 'SHOPEEC', '2022-11-23'),
(148, 1, 'SHOPEE', '2022-11-23'),
(149, 1, 'SHOPEE', '2022-11-23'),
(150, 1, 'LAZADA', '2022-11-23'),
(151, 1, 'LAZADA', '2022-11-23'),
(152, 1, 'DASHBOARD', '2022-11-23'),
(153, 1, 'LOGGED IN FOR VERIFICATION', '2022-12-02'),
(154, 1, 'LOGIN VERIED CODE', '2022-12-02'),
(155, 1, 'DASHBOARD', '2022-12-02'),
(156, 1, 'DASHBOARD', '2022-12-02'),
(157, 1, 'DASHBOARD', '2022-12-02'),
(158, 1, 'DASHBOARD', '2022-12-02'),
(159, 1, 'DASHBOARD', '2022-12-02'),
(160, 1, 'DASHBOARD', '2022-12-02'),
(161, 1, 'MY ACCOUNT', '2022-12-02'),
(162, 1, 'PRODUCTS', '2022-12-02'),
(163, 1, 'LAZADA', '2022-12-02'),
(164, 1, 'PRODUCTS', '2022-12-02'),
(165, 1, 'PRODUCTS', '2022-12-02'),
(166, 1, 'PRODUCTS', '2022-12-02'),
(167, 1, 'PRODUCTS', '2022-12-02'),
(168, 1, 'CHANGED PRODUCT DETAILS PROD.ID:3', '2022-12-02'),
(169, 1, 'PRODUCTS', '2022-12-02'),
(170, 1, 'PRODUCTS', '2022-12-02'),
(171, 1, 'PRODUCTS', '2022-12-02'),
(172, 1, 'DASHBOARD', '2022-12-02'),
(173, 1, 'DASHBOARD', '2022-12-02'),
(174, 1, 'DASHBOARD', '2022-12-02'),
(175, 1, 'DASHBOARD', '2022-12-02'),
(176, 1, 'DASHBOARD', '2022-12-02'),
(177, 1, 'PRODUCTS', '2022-12-02'),
(178, 1, 'LOGGED IN FOR VERIFICATION', '2022-12-02'),
(179, 1, 'LOGIN VERIED CODE', '2022-12-02'),
(180, 1, 'DASHBOARD', '2022-12-02'),
(181, 1, 'DASHBOARD', '2022-12-02'),
(182, 1, 'MY ACCOUNT', '2022-12-02'),
(183, 1, 'PRODUCTS', '2022-12-02'),
(184, 1, 'PRODUCTS', '2022-12-02'),
(185, 1, 'PRODUCTS', '2022-12-02'),
(186, 1, 'PRODUCTS', '2022-12-02'),
(187, 1, 'PRODUCTS', '2022-12-02'),
(188, 1, 'PRODUCTS', '2022-12-02'),
(189, 1, 'PRODUCTS', '2022-12-02'),
(190, 1, 'PRODUCTS', '2022-12-02'),
(191, 1, 'LAZADA', '2022-12-02'),
(192, 1, 'SHOPEEC', '2022-12-02'),
(193, 1, 'SHOPEEC', '2022-12-02'),
(194, 1, 'SHOPEE', '2022-12-02'),
(195, 1, 'LAZADA', '2022-12-02'),
(196, 1, 'LAZADA', '2022-12-02'),
(197, 1, 'LAZADA', '2022-12-02'),
(198, 1, 'SHOPEE', '2022-12-02'),
(199, 1, 'SHOPEE', '2022-12-02'),
(200, 1, 'DASHBOARD', '2022-12-02'),
(201, 1, 'PRODUCTS', '2022-12-02'),
(202, 1, 'DASHBOARD', '2022-12-02'),
(203, 1, 'DASHBOARD', '2022-12-02'),
(204, 1, 'DASHBOARD', '2022-12-02'),
(205, 1, 'MY ACCOUNT', '2022-12-02'),
(206, 1, 'PRODUCTS', '2022-12-02'),
(207, 1, 'LAZADA', '2022-12-02'),
(208, 1, 'SHOPEEC', '2022-12-02'),
(209, 1, 'SHOPEEC', '2022-12-02'),
(210, 1, 'SHOPEEC', '2022-12-02'),
(211, 1, 'DASHBOARD', '2022-12-02'),
(212, 1, 'DASHBOARD', '2022-12-02'),
(213, 1, 'PRODUCTS', '2022-12-02'),
(214, 1, 'LOGGED IN FOR VERIFICATION', '2022-12-17'),
(215, 1, 'LOGIN VERIED CODE', '2022-12-17'),
(216, 1, 'DASHBOARD', '2022-12-17'),
(217, 1, 'MY ACCOUNT', '2022-12-17'),
(218, 1, 'PRODUCTS', '2022-12-17'),
(219, 1, 'PRODUCTS', '2022-12-17'),
(220, 1, 'MY ACCOUNT', '2022-12-17'),
(221, 1, 'PRODUCTS', '2022-12-17'),
(222, 1, 'PRODUCTS', '2022-12-17'),
(223, 1, 'PRODUCTS', '2022-12-17'),
(224, 1, 'PRODUCTS', '2022-12-17'),
(225, 1, 'PRODUCTS', '2022-12-17'),
(226, 1, 'PRODUCTS', '2022-12-17'),
(227, 1, 'PRODUCTS', '2022-12-17'),
(228, 0, 'ADDED A PRODUCT', '2022-12-17'),
(229, 1, 'PRODUCTS', '2022-12-17'),
(230, 1, 'PRODUCTS', '2022-12-17'),
(231, 0, 'ADDED A PRODUCT', '2022-12-17'),
(232, 1, 'PRODUCTS', '2022-12-17'),
(233, 1, 'PRODUCTS', '2022-12-17'),
(234, 1, 'PRODUCTS', '2022-12-17'),
(235, 0, 'ADDED A PRODUCT', '2022-12-17'),
(236, 1, 'PRODUCTS', '2022-12-17'),
(237, 1, 'PRODUCTS', '2022-12-17'),
(238, 1, 'PRODUCTS', '2022-12-17'),
(239, 1, 'PRODUCTS', '2022-12-17'),
(240, 1, 'CHANGED PRODUCT DETAILS PROD.ID:3', '2022-12-17'),
(241, 1, 'PRODUCTS', '2022-12-17'),
(242, 1, 'CHANGED PRODUCT DETAILS PROD.ID:3', '2022-12-17'),
(243, 1, 'PRODUCTS', '2022-12-17'),
(244, 1, 'PRODUCTS', '2022-12-17'),
(245, 1, 'PRODUCTS', '2022-12-17'),
(246, 1, 'PRODUCTS', '2022-12-17'),
(247, 1, 'PRODUCTS', '2022-12-17'),
(248, 1, 'PRODUCTS', '2022-12-17'),
(249, 1, 'PRODUCTS', '2022-12-17'),
(250, 1, 'PRODUCTS', '2022-12-17'),
(251, 1, 'PRODUCTS', '2022-12-17'),
(252, 1, 'PRODUCTS', '2022-12-17'),
(253, 1, 'PRODUCTS', '2022-12-17'),
(254, 1, 'PRODUCTS', '2022-12-17'),
(255, 1, 'PRODUCTS', '2022-12-17'),
(256, 1, 'PRODUCTS', '2022-12-17'),
(257, 1, 'PRODUCTS', '2022-12-17'),
(258, 1, 'PRODUCTS', '2022-12-17'),
(259, 1, 'PRODUCTS', '2022-12-17'),
(260, 1, 'PRODUCTS', '2022-12-17'),
(261, 1, 'PRODUCTS', '2022-12-17'),
(262, 1, 'PRODUCTS', '2022-12-17'),
(263, 1, 'PRODUCTS', '2022-12-17'),
(264, 1, 'PRODUCTS', '2022-12-17'),
(265, 1, 'PRODUCTS', '2022-12-17'),
(266, 1, 'PRODUCTS', '2022-12-17'),
(267, 1, 'PRODUCTS', '2022-12-17'),
(268, 1, 'PRODUCTS', '2022-12-17'),
(269, 1, 'PRODUCTS', '2022-12-17'),
(270, 1, 'PRODUCTS', '2022-12-17'),
(271, 1, 'PRODUCTS', '2022-12-17'),
(272, 1, 'PRODUCTS', '2022-12-17'),
(273, 1, 'PRODUCTS', '2022-12-17'),
(274, 1, 'PRODUCTS', '2022-12-17'),
(275, 1, 'PRODUCTS', '2022-12-17'),
(276, 1, 'PRODUCTS', '2022-12-17'),
(277, 1, 'PRODUCTS', '2022-12-17'),
(278, 1, 'PRODUCTS', '2022-12-17'),
(279, 1, 'PRODUCTS', '2022-12-17'),
(280, 1, 'PRODUCTS', '2022-12-17'),
(281, 1, 'PRODUCTS', '2022-12-17'),
(282, 1, 'PRODUCTS', '2022-12-17'),
(283, 1, 'PRODUCTS', '2022-12-18'),
(284, 1, 'PRODUCTS', '2022-12-18'),
(285, 1, 'PRODUCTS', '2022-12-18'),
(286, 1, 'PRODUCTS', '2022-12-18'),
(287, 1, 'PRODUCTS', '2022-12-18'),
(288, 1, 'DASHBOARD', '2022-12-18'),
(289, 1, 'MY ACCOUNT', '2022-12-18'),
(290, 1, 'PRODUCTS', '2022-12-18'),
(291, 1, 'PRODUCTS', '2022-12-18'),
(292, 1, 'PRODUCTS', '2022-12-18'),
(293, 1, 'PRODUCTS', '2022-12-18'),
(294, 1, 'PRODUCTS', '2022-12-18'),
(295, 1, 'PRODUCTS', '2022-12-18'),
(296, 1, 'PRODUCTS', '2022-12-18'),
(297, 1, 'PRODUCTS', '2022-12-18'),
(298, 1, 'PRODUCTS', '2022-12-18'),
(299, 1, 'PRODUCTS', '2022-12-18'),
(300, 1, 'PRODUCTS', '2022-12-18'),
(301, 1, 'PRODUCTS', '2022-12-18'),
(302, 1, 'LAZADA', '2022-12-18'),
(303, 1, 'SHOPEEC', '2022-12-18'),
(304, 1, 'LAZADA', '2022-12-18'),
(305, 1, 'SHOPEEC', '2022-12-18'),
(306, 1, 'PRODUCTS', '2022-12-18'),
(307, 1, 'PRODUCTS', '2022-12-18'),
(308, 1, 'PRODUCTS', '2022-12-18'),
(309, 0, 'ADDED A PRODUCT', '2022-12-18'),
(310, 1, 'PRODUCTS', '2022-12-18'),
(311, 1, 'PRODUCTS', '2022-12-18'),
(312, 1, 'PRODUCTS', '2022-12-18'),
(313, 1, 'PRODUCTS', '2022-12-18'),
(314, 1, 'PRODUCTS', '2022-12-18'),
(315, 1, 'PRODUCTS', '2022-12-18'),
(316, 1, 'PRODUCTS', '2022-12-18'),
(317, 1, 'PRODUCTS', '2022-12-18'),
(318, 1, 'PRODUCTS', '2022-12-18'),
(319, 1, 'PRODUCTS', '2022-12-18'),
(320, 1, 'PRODUCTS', '2022-12-18'),
(321, 1, 'PRODUCTS', '2022-12-18'),
(322, 1, 'PRODUCTS', '2022-12-18'),
(323, 1, 'PRODUCTS', '2022-12-18'),
(324, 1, 'DASHBOARD', '2022-12-18'),
(325, 1, 'PRODUCTS', '2022-12-18'),
(326, 1, 'DASHBOARD', '2022-12-18'),
(327, 1, 'PRODUCTS', '2022-12-18'),
(328, 1, 'DASHBOARD', '2022-12-18'),
(329, 1, 'DASHBOARD', '2022-12-18'),
(330, 1, 'DASHBOARD', '2022-12-18'),
(331, 1, 'DASHBOARD', '2022-12-18'),
(332, 1, 'DASHBOARD', '2022-12-18'),
(333, 1, 'DASHBOARD', '2022-12-18'),
(334, 1, 'DASHBOARD', '2022-12-18'),
(335, 1, 'DASHBOARD', '2022-12-18'),
(336, 1, 'DASHBOARD', '2022-12-18'),
(337, 1, 'DASHBOARD', '2022-12-18'),
(338, 1, 'DASHBOARD', '2022-12-18'),
(339, 1, 'DASHBOARD', '2022-12-18'),
(340, 1, 'DASHBOARD', '2022-12-18'),
(341, 1, 'DASHBOARD', '2022-12-18'),
(342, 1, 'DASHBOARD', '2022-12-18'),
(343, 1, 'DASHBOARD', '2022-12-18'),
(344, 1, 'DASHBOARD', '2022-12-18'),
(345, 1, 'DASHBOARD', '2022-12-18'),
(346, 1, 'DASHBOARD', '2022-12-18'),
(347, 1, 'DASHBOARD', '2022-12-18'),
(348, 1, 'DASHBOARD', '2022-12-18'),
(349, 1, 'DASHBOARD', '2022-12-18'),
(350, 1, 'DASHBOARD', '2022-12-18'),
(351, 1, 'DASHBOARD', '2022-12-18'),
(352, 1, 'DASHBOARD', '2022-12-18'),
(353, 1, 'DASHBOARD', '2022-12-18'),
(354, 1, 'DASHBOARD', '2022-12-18'),
(355, 1, 'DASHBOARD', '2022-12-18'),
(356, 1, 'DASHBOARD', '2022-12-18'),
(357, 1, 'DASHBOARD', '2022-12-18'),
(358, 1, 'DASHBOARD', '2022-12-18'),
(359, 1, 'DASHBOARD', '2022-12-18'),
(360, 1, 'DASHBOARD', '2022-12-18'),
(361, 1, 'DASHBOARD', '2022-12-18'),
(362, 1, 'DASHBOARD', '2022-12-18'),
(363, 1, 'DASHBOARD', '2022-12-18'),
(364, 1, 'DASHBOARD', '2022-12-18'),
(365, 1, 'DASHBOARD', '2022-12-18'),
(366, 1, 'DASHBOARD', '2022-12-18'),
(367, 1, 'PRODUCTS', '2022-12-18'),
(368, 1, 'LOGGED IN FOR VERIFICATION', '2022-12-19'),
(369, 1, 'LOGIN VERIED CODE', '2022-12-19'),
(370, 1, 'DASHBOARD', '2022-12-19'),
(371, 1, 'DASHBOARD', '2022-12-19'),
(372, 1, 'DASHBOARD', '2022-12-19'),
(373, 1, 'DASHBOARD', '2022-12-19'),
(374, 1, 'PRODUCTS', '2022-12-19'),
(375, 1, 'PRODUCTS', '2022-12-19'),
(376, 1, 'PRODUCTS', '2022-12-19'),
(377, 1, 'DASHBOARD', '2022-12-19'),
(378, 1, 'LOGGED IN FOR VERIFICATION', '2022-12-19'),
(379, 1, 'LOGIN VERIED CODE', '2022-12-19'),
(380, 1, 'DASHBOARD', '2022-12-19'),
(381, 1, 'DASHBOARD', '2022-12-19'),
(382, 1, 'MY ACCOUNT', '2022-12-19'),
(383, 1, 'DASHBOARD', '2022-12-19'),
(384, 1, 'PRODUCTS', '2022-12-19'),
(385, 1, 'LOGGED IN FOR VERIFICATION', '2022-12-19'),
(386, 1, 'LOGGED IN FOR VERIFICATION', '2022-12-20'),
(387, 1, 'LOGIN VERIED CODE', '2022-12-20'),
(388, 1, 'DASHBOARD', '2022-12-20'),
(389, 1, 'DASHBOARD', '2022-12-20'),
(390, 1, 'DASHBOARD', '2022-12-20'),
(391, 1, 'DASHBOARD', '2022-12-20'),
(392, 1, 'DASHBOARD', '2022-12-20'),
(393, 1, 'PRODUCTS', '2022-12-20'),
(394, 1, 'PRODUCTS', '2022-12-20'),
(395, 1, 'PRODUCTS', '2022-12-20'),
(396, 1, 'PRODUCTS', '2022-12-20'),
(397, 1, 'PRODUCTS', '2022-12-20'),
(398, 1, 'PRODUCTS', '2022-12-20'),
(399, 1, 'PRODUCTS', '2022-12-20'),
(400, 1, 'PRODUCTS', '2022-12-20'),
(401, 1, 'PRODUCTS', '2022-12-20'),
(402, 1, 'PRODUCTS', '2022-12-20'),
(403, 1, 'PRODUCTS', '2022-12-20'),
(404, 1, 'PRODUCTS', '2022-12-20'),
(405, 1, 'PRODUCTS', '2022-12-20'),
(406, 1, 'PRODUCTS', '2022-12-20'),
(407, 1, 'DASHBOARD', '2022-12-20'),
(408, 1, 'DASHBOARD', '2022-12-20'),
(409, 1, 'DASHBOARD', '2022-12-20'),
(410, 1, 'DASHBOARD', '2022-12-20'),
(411, 1, 'PRODUCTS', '2022-12-20'),
(412, 1, 'PRODUCTS', '2022-12-20'),
(413, 1, 'PRODUCTS', '2022-12-20'),
(414, 1, 'PRODUCTS', '2022-12-20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id`, `product_id`, `quantity`, `member_id`) VALUES
(1, 2, 3, 2),
(6, 2, 10, 1),
(7, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category`) VALUES
(1, 'SHIRT'),
(2, 'PHONE'),
(3, 'I DONT KNOW'),
(4, 'BISCUITS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `name` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `order_at` datetime NOT NULL,
  `code` int(50) NOT NULL,
  `email` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `customer_id`, `amount`, `name`, `payment_type`, `order_status`, `order_at`, `code`, `email`) VALUES
(1, 2, 400, 'Gerald Mico Mico devcore', 'PICKUP', 'COMPLETE', '2022-12-02 01:57:41', 95022, 'tricore012@gmail.com'),
(2, 2, 1850, 'Gerald Mico', 'PICKUP', 'PENDING', '2022-12-02 02:21:02', 86874, 'tricore012@gmail.com'),
(3, 2, 850, 'Rey Allen', 'PICKUP', 'COMPLETE', '2022-12-02 11:11:31', 79825, 'tricore012@gmail.com'),
(4, 2, 400, 'Bitplay Adventure Strap for Wander Case', 'PICKUP', 'PENDING', '2022-12-04 09:55:42', 69770, 'tricore012@gmail.com'),
(5, 1, 1450, 'Gerald Mico Mico devcore', '--CHOOSE PAYMENT TYPE--', 'PENDING', '2022-12-16 21:03:39', 70581, 'tricore012@gmail.com'),
(6, 1, 600, 'Gerald Mico Mico devcore', 'PICKUP', 'PENDING', '2022-12-16 21:19:15', 81658, 'tricore012@gmail.com'),
(7, 1, 900, 'Gerald Mico Mico devcore', 'PICKUP', 'PENDING', '2022-12-16 21:49:39', 86326, 'tricore012@gmail.com'),
(8, 1, 300, 'Gerald Mico Mico devcore', 'PICKUP', 'PENDING', '2022-12-17 12:36:49', 86630, 'tricore012@gmail.com'),
(9, 1, 300, 'Gerald Mico Mico devcore', 'PICKUP', 'PENDING', '2022-12-17 12:37:34', 75157, 'tricore012@gmail.com'),
(10, 1, 300, 'Gerald Mico Mico devcore', 'PICKUP', 'PENDING', '2022-12-17 12:42:58', 85157, 'tricore012@gmail.com'),
(11, 1, 1200, 'Gerald Mico Mico devcore', 'PICKUP', 'PENDING', '2022-12-17 13:51:58', 78423, 'tricore012@gmail.com'),
(12, 1, 1500, 'Gerald Mico ', 'PICKUP', 'PENDING', '2022-12-19 15:10:06', 74954, 'tricore012@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_item`
--

CREATE TABLE `tbl_order_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_price` double NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order_item`
--

INSERT INTO `tbl_order_item` (`id`, `order_id`, `product_id`, `item_price`, `quantity`) VALUES
(1, 1, 2, 100, 4),
(2, 2, 2, 100, 4),
(3, 2, 3, 150, 3),
(4, 2, 1, 500, 2),
(5, 3, 2, 100, 4),
(6, 3, 3, 150, 3),
(7, 4, 2, 100, 4),
(8, 5, 3, 150, 3),
(9, 5, 1, 500, 2),
(10, 6, 3, 150, 4),
(11, 7, 3, 150, 4),
(12, 7, 2, 100, 3),
(13, 8, 2, 100, 3),
(14, 9, 2, 100, 3),
(15, 10, 2, 100, 3),
(16, 11, 2, 100, 7),
(17, 11, 1, 500, 1),
(18, 12, 1, 500, 1),
(19, 12, 2, 100, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_response` text NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `code` varchar(250) NOT NULL,
  `name` text NOT NULL,
  `price` varchar(50) NOT NULL,
  `qty` int(100) NOT NULL,
  `photo` text NOT NULL,
  `expiration_date` date NOT NULL,
  `date_created` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `size` varchar(250) NOT NULL,
  `status` int(10) NOT NULL,
  `category` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `rstat` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `code`, `name`, `price`, `qty`, `photo`, `expiration_date`, `date_created`, `created_by`, `size`, `status`, `category`, `description`, `rstat`) VALUES
(1, '992919', 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (1 Case)', '500', 5, 'upload/1669132986.png', '2023-11-20', '2022-11-23', 1, '10 ml', 0, 'SHIRT', 'this is a test\r\nthis is a test\r\nthis is a test\r\nthis is a test\r\nthis is a test\r\nthis is a test', ''),
(2, '794565', 'Rite ï¿½n Lite Cucumber Soda 250ml x 24 (1 Case)', '100', 250, 'upload/1669134073.png', '2023-06-23', '2022-11-23', 1, 'NA', 0, 'PHONE', 'THIS IS THE TEST OF THE PHONE ', ''),
(3, '695769', 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (2 Case)', '150', 0, 'upload/1669139655.png', '2023-05-30', '2022-11-23', 1, '10 ml', 0, 'SHIRT', 'this is a test\r\nthis is a test\r\nthis is a test\r\nthis is a test\r\nthis is a test\r\nthis is a test', ''),
(5, '939880', 'Rite ï¿½n Lite Lemon Soda 250ml x 30 (1 Case)', '200', 10, 'upload/1671285120.png', '2022-12-15', '2022-12-17', 1, '10 ml', 0, 'SHIRT', 'this is a test\r\nthis is a test\r\nthis is a test\r\nthis is a test\r\nthis is a test\r\nthis is a test', ''),
(6, '868245', 'Rite ï¿½n Lite Lemon Soda 250ml x 24 (5 Case)', '250', 20, 'upload/1671327033.png', '2022-12-20', '2022-12-18', 0, '10 ml', 0, 'SHIRT', 'this is a test\r\nthis is a test\r\nthis is a test\r\nthis is a test\r\nthis is a test\r\nthis is a test', 'EXPIRED');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_size`
--

CREATE TABLE `tbl_size` (
  `size_id` int(11) NOT NULL,
  `size` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_size`
--

INSERT INTO `tbl_size` (`size_id`, `size`) VALUES
(1, '10 ml'),
(2, 'Small'),
(3, 'NA'),
(4, 'Large'),
(5, 'THIS IS A TEST SIZE');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `code` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `fullname`, `email`, `password`, `code`) VALUES
(1, 'MICO S FACISTOL', 'TRICORE012@GMAIL.COM', '21232f297a57a5a743894a0e4a801fc3', 'd41d8cd98f00b204e9800998ecf8427e'),
(2, 'Gerald Mico Facistol', 'abbygailsevilla@gmail.com', '4eeda563b4805b3eb4b02254c0b18ec7', 'd41d8cd98f00b204e9800998ecf8427e'),
(3, 'Mark Jerwin Manzon', 'manzonmarkjerwin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'd41d8cd98f00b204e9800998ecf8427e'),
(4, 'Chan Flores', 'jerwin0521@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'd41d8cd98f00b204e9800998ecf8427e');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_stocking`
--

CREATE TABLE `warehouse_stocking` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(50) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warehouse_stocking`
--

INSERT INTO `warehouse_stocking` (`id`, `pid`, `quantity`, `status`) VALUES
(1, 3, 200, 'INTRANSIT'),
(2, 7, 250, 'INTRANSIT');

-- --------------------------------------------------------

--
-- Table structure for table `ware_house`
--

CREATE TABLE `ware_house` (
  `wid` int(11) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `street_address` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `province` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ware_house`
--

INSERT INTO `ware_house` (`wid`, `company_name`, `street_address`, `city`, `province`) VALUES
(1, 'COMPANY A', 'Tarraville Subdivision Novaliches', 'Metro Manila', 'Quezon City'),
(2, 'COMPANY B', 'Capitol Compound', 'Bulacan', 'Malolos');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auto_mail_history`
--
ALTER TABLE `auto_mail_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `delete_history`
--
ALTER TABLE `delete_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_security`
--
ALTER TABLE `email_security`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lazada_activation`
--
ALTER TABLE `lazada_activation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lazada_login`
--
ALTER TABLE `lazada_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lazada_offline_product`
--
ALTER TABLE `lazada_offline_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lazada_product_update_history`
--
ALTER TABLE `lazada_product_update_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photo_history`
--
ALTER TABLE `photo_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_store`
--
ALTER TABLE `product_store`
  ADD PRIMARY KEY (`pwid`);

--
-- Indexes for table `product_update_history`
--
ALTER TABLE `product_update_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopee_activation`
--
ALTER TABLE `shopee_activation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopee_category`
--
ALTER TABLE `shopee_category`
  ADD PRIMARY KEY (`scid`);

--
-- Indexes for table `shopee_convert`
--
ALTER TABLE `shopee_convert`
  ADD PRIMARY KEY (`sh_id`);

--
-- Indexes for table `shopee_login`
--
ALTER TABLE `shopee_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopee_product`
--
ALTER TABLE `shopee_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopee_product_update_history`
--
ALTER TABLE `shopee_product_update_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suc_login`
--
ALTER TABLE `suc_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_audit`
--
ALTER TABLE `tbl_audit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order_item`
--
ALTER TABLE `tbl_order_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `warehouse_stocking`
--
ALTER TABLE `warehouse_stocking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ware_house`
--
ALTER TABLE `ware_house`
  ADD PRIMARY KEY (`wid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auto_mail_history`
--
ALTER TABLE `auto_mail_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delete_history`
--
ALTER TABLE `delete_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `email_security`
--
ALTER TABLE `email_security`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `lazada_activation`
--
ALTER TABLE `lazada_activation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lazada_login`
--
ALTER TABLE `lazada_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lazada_offline_product`
--
ALTER TABLE `lazada_offline_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `lazada_product_update_history`
--
ALTER TABLE `lazada_product_update_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `photo_history`
--
ALTER TABLE `photo_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_store`
--
ALTER TABLE `product_store`
  MODIFY `pwid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_update_history`
--
ALTER TABLE `product_update_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `shopee_activation`
--
ALTER TABLE `shopee_activation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shopee_category`
--
ALTER TABLE `shopee_category`
  MODIFY `scid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1739;

--
-- AUTO_INCREMENT for table `shopee_convert`
--
ALTER TABLE `shopee_convert`
  MODIFY `sh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shopee_login`
--
ALTER TABLE `shopee_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shopee_product`
--
ALTER TABLE `shopee_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `shopee_product_update_history`
--
ALTER TABLE `shopee_product_update_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `suc_login`
--
ALTER TABLE `suc_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tbl_audit`
--
ALTER TABLE `tbl_audit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=415;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_order_item`
--
ALTER TABLE `tbl_order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `warehouse_stocking`
--
ALTER TABLE `warehouse_stocking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ware_house`
--
ALTER TABLE `ware_house`
  MODIFY `wid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
