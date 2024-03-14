-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2024 at 03:31 PM
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
-- Database: `ngo`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `activity_id` varchar(20) NOT NULL,
  `Activity_Name` varchar(20) NOT NULL,
  `ngo_id` varchar(20) DEFAULT NULL,
  `branch_id` varchar(20) DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  `hrs` int(11) DEFAULT NULL,
  `details` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`activity_id`, `Activity_Name`, `ngo_id`, `branch_id`, `credits`, `hrs`, `details`) VALUES
('1', 'Forest Regeneration', '100', '134', 3, 24, 'Forest Regeneration'),
('2', 'Animal Rescue and Re', '101', '23', 1, 12, 'Animal Rescue and Re'),
('3', 'Children\'s Education', '102', '345', NULL, 12, ' Children\'s Educatio'),
('4', 'Fundraiser Run', NULL, NULL, NULL, NULL, 'Fundraiser Run'),
('5', 'Elderly Care ', '103', '297', 4, 30, ' Elderly Care ');

-- --------------------------------------------------------

--
-- Table structure for table `charity`
--

CREATE TABLE `charity` (
  `charity_id` varchar(20) NOT NULL,
  `ngo_id` varchar(20) DEFAULT NULL,
  `branch_id` varchar(20) DEFAULT NULL,
  `donor_id` varchar(20) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `other` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `charity`
--

INSERT INTO `charity` (`charity_id`, `ngo_id`, `branch_id`, `donor_id`, `amount`, `other`) VALUES
('9000', '100', '134', '1012', 1000, NULL),
('9010', '101', '23', '1013', 900, NULL),
('9011', '100', '3099', '1013', 760, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `donor_id` varchar(20) NOT NULL,
  `donor_name` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`donor_id`, `donor_name`, `city`, `age`, `phone`, `gender`) VALUES
('1012', 'Krithi M R', 'Bangalore', 21, 887438223, 'F'),
('1013', 'Aakash', 'Mumbai', 26, 746926494, 'M'),
('1101', 'Nidhi M R', 'Bangalore', 18, 829765662, 'F');

-- --------------------------------------------------------

--
-- Table structure for table `ngo`
--

CREATE TABLE `ngo` (
  `ngo_id` varchar(20) NOT NULL,
  `ngo_name` varchar(20) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ngo`
--

INSERT INTO `ngo` (`ngo_id`, `ngo_name`, `phone`) VALUES
('100', 'Save Green', 756379284),
('101', 'Cupa Bangalore', 736352748),
('102', 'NMGCT', 736584644),
('103', 'VTVO', 987654324);

-- --------------------------------------------------------

--
-- Table structure for table `ngo_location`
--

CREATE TABLE `ngo_location` (
  `branch_id` varchar(20) NOT NULL,
  `ngo_id` varchar(20) NOT NULL,
  `city` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ngo_location`
--

INSERT INTO `ngo_location` (`branch_id`, `ngo_id`, `city`) VALUES
('134', '100', 'Bangalore'),
('3099', '100', 'Mumbai'),
('23', '101', 'Bangalore'),
('345', '102', 'Bangalore'),
('297', '103', 'Bangalore');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `ngo_id` (`ngo_id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `charity`
--
ALTER TABLE `charity`
  ADD PRIMARY KEY (`charity_id`),
  ADD KEY `ngo_id` (`ngo_id`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `donor_id` (`donor_id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`donor_id`),
  ADD KEY `donor_id` (`donor_id`);

--
-- Indexes for table `ngo`
--
ALTER TABLE `ngo`
  ADD PRIMARY KEY (`ngo_id`),
  ADD KEY `ngo_id` (`ngo_id`);

--
-- Indexes for table `ngo_location`
--
ALTER TABLE `ngo_location`
  ADD PRIMARY KEY (`ngo_id`,`branch_id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_ibfk_1` FOREIGN KEY (`ngo_id`) REFERENCES `ngo` (`ngo_id`),
  ADD CONSTRAINT `activities_ibfk_2` FOREIGN KEY (`branch_id`) REFERENCES `ngo_location` (`branch_id`);

--
-- Constraints for table `charity`
--
ALTER TABLE `charity`
  ADD CONSTRAINT `charity_ibfk_1` FOREIGN KEY (`ngo_id`) REFERENCES `ngo` (`ngo_id`),
  ADD CONSTRAINT `charity_ibfk_2` FOREIGN KEY (`branch_id`) REFERENCES `ngo_location` (`branch_id`),
  ADD CONSTRAINT `charity_ibfk_3` FOREIGN KEY (`donor_id`) REFERENCES `donor` (`donor_id`);

--
-- Constraints for table `ngo_location`
--
ALTER TABLE `ngo_location`
  ADD CONSTRAINT `ngo_location_ibfk_1` FOREIGN KEY (`ngo_id`) REFERENCES `ngo` (`ngo_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
