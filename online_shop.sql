-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Dec 13, 2023 at 09:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `productid` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(11) NOT NULL,
  `oid` varchar(50) NOT NULL,
  `ptitle` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `oid`, `ptitle`, `price`) VALUES
(1, '1', 'Casual Style ', '500'),
(2, '2', 'Casual Style ', '500'),
(3, '3', '5 Smart Formal Outfit', '1000'),
(4, '3', 'Wedding Formal Wear Suit', '990');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user`, `address`, `created_at`) VALUES
(1, '2', 'ttttrtrtret', '2020-12-09 18:40:05'),
(2, '2', 'ttttrtrtret', '2020-12-09 18:44:09'),
(3, '2', 'Keputih', '2023-12-13 06:27:42');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `img`, `category`, `created_at`) VALUES
(1, 'BAVINA MIDI DRESS ', '54.000', 'dress.jpg', 'Women', '2023-12-08 20:50:55'),
(2, 'Women Vneck Loose T-Shirt Premium Cotton', '55.000', 'vneck.jpg', 'Women', '2023-12-09 16:29:05'),
(3, 'HIGHWAIST RIPPED JEANS', '146.000', 'rip-jeans.jpg', 'Women', '2023-12-09 02:52:41'),
(4, 'Corey Basic Pants', '113.000', 'pants.jpg', 'Women', '2023-12-08 19:56:11'),
(5, 'Blouse Rajut Wanita - White', '269.000', 'blouse.jpg', 'Women', '2023-12-09 02:02:53'),
(6, 'MANGO - TANKTOP SAFFRON', '479.000', 'tanktop.jpg', 'Women', '2023-12-09 05:25:52'),
(7, 'Kemeja Katun Flanel Atasan Kotak Wanita', '99.000', 'flanel.jpg', 'Women', '2023-12-09 04:00:40'),
(8, 'Kemeja Oversize Polos - Maroon', '85.000', 'oversize.jpg', 'Women', '2023-12-09 10:45:45'),
(9, 'Combat Slim Olive - Cargo', '225.000', 'cargo.jpg', 'Mens', '2023-12-09 00:46:45'),
(10, 'JEANS DENIM SELVEDGE', '150.000', 'jeans.jpg', 'Mens', '2023-12-09 02:36:31'),
(11, 'Kaos Pocket Cotton Combed 24s', '65.000', 't-shirt.jpg', 'Mens', '2023-12-08 17:42:22'),
(12, 'Kemeja Pria Basic Polos Panjang Hitam', '114.000', 'shirt.jpg', 'Mens', '2023-12-09 15:42:17'),
(13, 'Celana Bahan Formal Slimfit', '213.000', 'formal.jpg', 'Mens', '2023-12-09 08:24:18'),
(14, 'Trucker Canvas Jacket Black', '199.000', 'jaket.jpg', 'Mens', '2023-12-09 01:54:40'),
(15, 'Boardshort Academica - Black', '85.000', 'short.jpg', 'Mens', '2023-12-09 15:20:29'),
(16, 'Polo Shirt Pria - Putih', '128.000', 'polo.jpg', 'Mens', '2023-12-09 05:58:23'),
(17, 'Kaos Anak Washed Unisex - Barbie Party', '45.000', 'k-tshirt.jpg', 'Kids', '2023-12-09 14:50:29'),
(18, 'Diora Tops Atasan Anak Perempuan', '145.000', 'k-tops.jpg', 'Kids', '2023-12-09 15:17:17'),
(19, 'Chinos Short Pants 5.0', '57.000', 'k-short.jpg', 'Kids', '2023-12-09 14:54:59'),
(20, 'Kemeja Anak Laki Laki Salur Stripe Panjang Putih ', '76.000', 'k-shirt.jpg', 'Kids', '2023-12-09 11:43:04'),
(21, 'Kaos Panjang Anak Laki Laki - BW Almon', '80.000', 'k-long.jpg', 'Kids', '2023-12-08 20:50:23'),
(22, 'Atasan Anak Perempuan Tanggung Milla Blouse', '95.000', 'k-blouse.jpg', 'Kids', '2023-12-09 04:02:45'),
(23, 'Oversize Pocket Jumper Sheep Bunny', '98.000', 'k-jumper.jpg', 'Kids', '2023-12-09 12:42:35'),
(24, 'Baju Anak Setelan Sleeveless', '39.000', 'k-sleeve.jpg', 'Kids', '2023-12-09 10:24:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `password`, `created_at`) VALUES
(2, 'Rman', 'raman@gmail.com', '7986568931', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-09 06:10:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
