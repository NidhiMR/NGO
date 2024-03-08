-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2024 at 05:51 PM
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
-- Database: `ngo2`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `activity_id` varchar(20) NOT NULL,
  `NGO_id` varchar(20) NOT NULL,
  `branch_id` varchar(10) NOT NULL,
  `city` varchar(20) NOT NULL,
  `activity_name` varchar(100) NOT NULL,
  `Credits` int(10) DEFAULT NULL,
  `Details` varchar(100) NOT NULL,
  `Hours` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `charity`
--

CREATE TABLE `charity` (
  `ngo_id` varchar(20) NOT NULL,
  `branch_id` varchar(10) NOT NULL,
  `donour_id` varchar(20) NOT NULL,
  `amount` int(20) NOT NULL,
  `other` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `donor_id` varchar(20) NOT NULL,
  `Dname` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Age` int(10) NOT NULL,
  `Phone_no` int(10) NOT NULL,
  `Gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ngo`
--

CREATE TABLE `ngo` (
  `ngo_id` varchar(20) NOT NULL,
  `Ngo_name` varchar(20) NOT NULL,
  `branch_id` varchar(10) NOT NULL,
  `phone` int(10) NOT NULL,
  `Location` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`activity_id`,`NGO_id`,`branch_id`),
  ADD KEY `test2` (`NGO_id`);

--
-- Indexes for table `charity`
--
ALTER TABLE `charity`
  ADD PRIMARY KEY (`ngo_id`,`branch_id`,`donour_id`),
  ADD KEY `donor` (`donour_id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`donor_id`);

--
-- Indexes for table `ngo`
--
ALTER TABLE `ngo`
  ADD PRIMARY KEY (`ngo_id`,`Ngo_name`,`branch_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `test2` FOREIGN KEY (`NGO_id`) REFERENCES `ngo` (`ngo_id`);

--
-- Constraints for table `charity`
--
ALTER TABLE `charity`
  ADD CONSTRAINT `donor` FOREIGN KEY (`donour_id`) REFERENCES `donor` (`donor_id`),
  ADD CONSTRAINT `ngo` FOREIGN KEY (`ngo_id`) REFERENCES `ngo` (`ngo_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
