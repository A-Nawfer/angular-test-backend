-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2023 at 11:08 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angulartest`
--

-- --------------------------------------------------------

--
-- Table structure for table `testdata`
--

CREATE TABLE `testdata` (
  `id` int(6) NOT NULL,
  `itemName` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` varchar(50) NOT NULL,
  `subcategory` varchar(50) NOT NULL,
  `price` decimal(14,2) NOT NULL,
  `lastUpdated` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testdata`
--

INSERT INTO `testdata` (`id`, `itemName`, `description`, `category`, `subcategory`, `price`, `lastUpdated`) VALUES
(100000, 'Samsung Galaxy S22', 'A Smartphone by Samsung', 'Electronics', 'Mobile Phones', '269000.00', '2023-04-09'),
(100001, 'Apple iPhone 13 Pro - 128GB', 'The Apple iPhone 13 Pro is the perfect phone for any lifestyle', 'Electronics', 'Mobile Phones', '337999.00', '2023-04-11'),
(100002, 'Apple MacBook Air Laptop', 'Apple M1 Chip, (13 Inch , 8GB RAM, 512GB SSD Storage)', 'Electronics', 'Computers', '349999.00', '2023-04-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `testdata`
--
ALTER TABLE `testdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `testdata`
--
ALTER TABLE `testdata`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100013;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
