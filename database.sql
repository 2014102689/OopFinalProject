-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2020 at 01:17 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_project_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Name` varchar(40) NOT NULL,
  `Address` varchar(40) NOT NULL,
  `Phone` bigint(10) NOT NULL,
  `Type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `itemNo` int(3) NOT NULL,
  `itemName` varchar(20) NOT NULL,
  `Price` int(4) NOT NULL,
  `Type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`itemNo`, `itemName`, `Price`, `Type`) VALUES
(1, 'Probin & Puso', 500, 'MEAL'),
(2, 'Isaw & Puso', 200, 'MEAL'),
(3, 'Pater & Sabaw', 400, 'MEAL'),
(4, 'Arozcaldo', 350, 'MEAL'),
(5, 'Chicken Skin with Pu', 600, 'MEAL'),
(6, 'Buko', 250, 'DRINK'),
(7, 'Choco-milk', 150, 'DRINK'),
(8, 'Lemon', 180, 'DRINK'),
(9, 'Melon', 250, 'DRINK'),
(10, 'Buko Pandan', 100, 'DRINK');

-- --------------------------------------------------------

--
-- Table structure for table `restaurantcustomer`
--

CREATE TABLE `restaurantcustomer` (
  `custName` varchar(20) NOT NULL,
  `custAddr` varchar(20) NOT NULL,
  `Phone` bigint(10) NOT NULL,
  `Meal` varchar(20) NOT NULL,
  `Drink` varchar(20) NOT NULL,
  `Price` int(7) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `roomNo` int(3) NOT NULL,
  `roomType` varchar(20) NOT NULL,
  `bedType` varchar(20) NOT NULL,
  `Price` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomNo`, `roomType`, `bedType`, `Price`) VALUES
(1, 'SUITE', 'QUEEN', 9500),
(2, 'DELUXE', 'KING', 7500),
(3, 'AC', 'KING', 8000),
(4, 'NON-AC', 'DOUBLE', 3500),
(5, 'SUITE', 'SINGLE', 5500),
(6, 'DELUXE', 'DOUBLE', 7000),
(7, 'AC', 'QUEEN', 6500),
(8, 'NON-AC', 'SINGLE', 5500);

-- --------------------------------------------------------

--
-- Table structure for table `roomcutomer`
--

CREATE TABLE `roomcutomer` (
  `name` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `roomtype` varchar(10) NOT NULL,
  `bedtype` varchar(20) NOT NULL,
  `price` int(7) NOT NULL,
  `status` int(11) NOT NULL,
  `roomno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`itemNo`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`roomNo`);

--
-- Indexes for table `roomcutomer`
--
ALTER TABLE `roomcutomer`
  ADD PRIMARY KEY (`roomno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `itemNo` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `roomNo` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roomcutomer`
--
ALTER TABLE `roomcutomer`
  MODIFY `roomno` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
