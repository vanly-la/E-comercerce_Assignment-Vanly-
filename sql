-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2019 at 08:07 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_color`
--

CREATE TABLE IF NOT EXISTS `tb_color` (
  `id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `color_img` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_color`
--

INSERT INTO `tb_color` (`id`, `pro_id`, `color_img`) VALUES
(1, 1, 'https://gd4.alicdn.com/imgextra/i2/1850052508/O1CN01snQanR1UOhrzxSaHC_!!1850052508.jpg_500x500.jpg'),
(2, 1, 'https://gd4.alicdn.com/imgextra/i4/1850052508/O1CN01o79awZ1UOhs2ZtaDo_!!1850052508.jpg_500x500.jpg'),
(3, 1, 'https://gd3.alicdn.com/imgextra/i3/1850052508/O1CN0193Dmrh1UOhrsYgXef_!!1850052508.jpg_500x500.jpg'),
(4, 2, 'https://gd2.alicdn.com/imgextra/i1/2167729122/O1CN01D9oEyo2HFvPBGvBh1_!!2167729122.jpg_500x500.jpg'),
(5, 2, 'https://gd4.alicdn.com/imgextra/i1/2167729122/O1CN012qB0zQ2HFvPBGxnon_!!2167729122.jpg_500x500.jpg'),
(6, 2, 'https://gd2.alicdn.com/imgextra/i3/2167729122/O1CN01Km3uTC2HFvPBGw3kT_!!2167729122.jpg_500x500.jpg'),
(7, 4, 'https://gd2.alicdn.com/imgextra/i3/2167729122/O1CN01Km3uTC2HFvPBGw3kT_!!2167729122.jpg_500x500.jpg'),
(9, 4, 'https://gd2.alicdn.com/imgextra/i1/2167729122/O1CN01D9oEyo2HFvPBGvBh1_!!2167729122.jpg_500x500.jpg'),
(10, 4, 'https://gd4.alicdn.com/imgextra/i1/2167729122/O1CN012qB0zQ2HFvPBGxnon_!!2167729122.jpg_500x500.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_main_menu`
--

CREATE TABLE IF NOT EXISTS `tb_main_menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(50) NOT NULL,
  `menu_icon` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_main_menu`
--

INSERT INTO `tb_main_menu` (`menu_id`, `menu_name`, `menu_icon`) VALUES
(1, 'Watch', 'icofont-apple-watch'),
(2, 'Shoe', 'icofont-sandals-male'),
(3, 'Pants', 'icofont-karate'),
(4, 'Bag', 'icofont-school-bag'),
(5, 'Baby Clothes', 'icofont-baby-cloth'),
(6, 'Baby Bottle', 'icofont-baby-milk-bottle');

-- --------------------------------------------------------

--
-- Table structure for table `tb_products`
--

CREATE TABLE IF NOT EXISTS `tb_products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sizeID` int(11) NOT NULL,
  `colorID` int(11) NOT NULL,
  `status_id` varchar(50) NOT NULL,
  `pro_img` varchar(250) NOT NULL,
  `code` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `title` varchar(250) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_products`
--

INSERT INTO `tb_products` (`id`, `category_id`, `sizeID`, `colorID`, `status_id`, `pro_img`, `code`, `price`, `title`, `qty`) VALUES
(1, 1, 1, 1, '1', 'https://gd3.alicdn.com/imgextra/i1/1850052508/O1CN01tPnSzg1UOhs2ZuFlC_!!1850052508.jpg_500x500.jpg', 'BW893391', 25, 'Avocado small fresh belt girl watch', 2),
(2, 1, 2, 2, '2', 'https://myfashion2017.s3.amazonaws.com/thum/Thefashion_20161209120655-812428.JPG', 'CS093900', 12, 'Avocado small fresh belt girl watch', 3),
(3, 1, 1, 1, '3', 'https://myfashion2017.s3.amazonaws.com/thum/Thefashion_20170218103704-162483.JPG', 'BW893391', 25, 'Avocado small fresh belt girl watch', 2),
(4, 2, 2, 4, '1', 'https://gd4.alicdn.com/imgextra/i3/0/O1CN01gyuFtW2HFvPCFJLvX_!!0-item_pic.jpg_500x500.jpg', 'CS093900', 12, 'Mens shoes spring new mens canvas shoes sports casual shoes Korean version', 3),
(5, 2, 1, 1, '2', 'https://gd4.alicdn.com/imgextra/i4/1801150033/O1CN01AkcVd51C79aaKzKu0_!!1801150033.jpg_500x500.jpg', 'BW901729', 15, 'summer new Korean version of the wild open toe sandals with a buckle stiletto heels fashion', 3),
(6, 2, 1, 6, '3', 'https://img.alicdn.com/imgextra/i1/2934628378/O1CN01UnghgZ2BlAn1RETmr_!!2934628378.jpg_500x500.jpg', 'BW883932', 30, 'Examination watch couple models one male and one female pair junior high school students', 2),
(7, 3, 3, 3, '3', 'https://myfashion2017.s3.amazonaws.com/thum/Thefashion_20161212133741-382778.JPG', 'BW883932', 13.5, 'apanese summer men''s casual pants', 2),
(8, 1, 1, 1, '1', 'https://gd3.alicdn.com/imgextra/i3/2697197072/O1CN013srLdi2271W5amKUH_!!2697197072.jpg_500x500.jpg', 'BW893391', 25, 'Avocado small fresh belt girl watch', 2),
(9, 1, 1, 1, '1', 'https://gd4.alicdn.com/imgextra/i4/2697197072/O1CN01JXmxCU2271WYNSSeL_!!2697197072.jpg_500x500.jpg\r\n', 'BW893391', 25, 'Avocado small fresh belt girl watch', 2),
(10, 1, 1, 1, '1', 'https://gd3.alicdn.com/imgextra/i3/227389375/O1CN01pu4QKi2J7nfAGhjKj_!!227389375.jpg_500x500.jpg', 'BW893391', 39, 'Avocado small fresh belt girl watch', 2),
(11, 1, 1, 1, '1', 'https://myfashion2017.s3.amazonaws.com/thum/Thefashion_20190811163702-055627.JPG', 'BW893391', 25, 'Avocado small fresh belt girl watch', 2),
(12, 2, 1, 1, '2', 'https://img.alicdn.com/imgextra/i3/1741365870/O1CN01mbeqfx1tEVSVd15Xd_!!1741365870.jpg_500x500.jpg', 'BW901729', 15, 'summer new Korean version of the wild open toe sandals with a buckle stiletto heels fashion', 3),
(13, 2, 1, 6, '3', 'https://img.alicdn.com/imgextra/i3/3460191115/O1CN01q9o7us1K6iA8W5YZ8_!!0-item_pic.jpg_500x500.jpg', 'BW883932', 30, 'Examination watch couple models one male and one female pair junior high school students', 2),
(14, 2, 1, 1, '2', 'https://img.alicdn.com/imgextra/i1/2934628378/O1CN01UnghgZ2BlAn1RETmr_!!2934628378.jpg_500x500.jpg', 'BW901729', 15, 'summer new Korean version of the wild open toe sandals with a buckle stiletto heels fashion', 3),
(15, 2, 1, 6, '3', 'https://img.alicdn.com/imgextra/i3/1741365870/O1CN01sKRoaU1tEVSUGL63O_!!1741365870.jpg_500x500.jpg', 'BW883932', 30, 'Examination watch couple models one male and one female pair junior high school students', 2),
(16, 2, 1, 1, '2', 'https://img.alicdn.com/imgextra/i1/1664678747/O1CN01uK3vqc2EUAtiOa1Xw_!!0-item_pic.jpg_500x500.jpg', 'BW901729', 15, 'summer new Korean version of the wild open toe sandals with a buckle stiletto heels fashion', 3),
(17, 2, 1, 1, '2', 'https://img.alicdn.com/imgextra/i2/1664678747/O1CN01vvUaIn2EUAtoeL14C_!!0-item_pic.jpg_500x500.jpg', 'BW901729', 15, 'summer new Korean version of the wild open toe sandals with a buckle stiletto heels fashion', 3),
(18, 2, 1, 6, '3', 'https://img.alicdn.com/imgextra/i3/3460191115/TB2pXQ8jRjTBKNjSZFNXXasFXXa_!!3460191115.jpg_500x500.jpg', 'BW883932', 30, 'Examination watch couple models one male and one female pair junior high school students', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_size`
--

CREATE TABLE IF NOT EXISTS `tb_size` (
  `id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `size_value` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_size`
--

INSERT INTO `tb_size` (`id`, `pro_id`, `size_value`) VALUES
(1, 1, 'S'),
(2, 1, 'M');

-- --------------------------------------------------------

--
-- Table structure for table `tb_status`
--

CREATE TABLE IF NOT EXISTS `tb_status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_status`
--

INSERT INTO `tb_status` (`status_id`, `status_name`) VALUES
(1, 'New Arrival'),
(2, 'Popularity'),
(3, 'Instock');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `username`, `password`) VALUES
(8, 'vanlyla', '3f931c18b44ac93ac5b4b6c653f7c0b0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_color`
--
ALTER TABLE `tb_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_main_menu`
--
ALTER TABLE `tb_main_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tb_products`
--
ALTER TABLE `tb_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_size`
--
ALTER TABLE `tb_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_status`
--
ALTER TABLE `tb_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_color`
--
ALTER TABLE `tb_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tb_main_menu`
--
ALTER TABLE `tb_main_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tb_products`
--
ALTER TABLE `tb_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tb_size`
--
ALTER TABLE `tb_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_status`
--
ALTER TABLE `tb_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
