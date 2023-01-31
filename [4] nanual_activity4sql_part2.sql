-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2021 at 04:34 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nanual_activity4sql_part2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_breed`
--

CREATE TABLE `tbl_breed` (
  `breed_id` int(8) NOT NULL,
  `breed_name` varchar(20) NOT NULL,
  `type_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gender`
--

CREATE TABLE `tbl_gender` (
  `Gender_ID` int(8) NOT NULL,
  `Gender_title` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_owner`
--

CREATE TABLE `tbl_owner` (
  `owner_id` int(8) NOT NULL,
  `owner_name` varchar(20) DEFAULT NULL,
  `owner_age` int(2) DEFAULT NULL,
  `Gender_ID` int(8) DEFAULT NULL,
  `owner_address` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pet`
--

CREATE TABLE `tbl_pet` (
  `pet_id` int(8) NOT NULL,
  `owner_id` int(8) DEFAULT NULL,
  `pet_name` varchar(20) DEFAULT NULL,
  `pet_age` int(2) DEFAULT NULL,
  `pet_gender` int(8) DEFAULT NULL,
  `pet_price` double(12,2) DEFAULT NULL,
  `pet_breed` int(8) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type`
--

CREATE TABLE `tbl_type` (
  `type_id` int(8) NOT NULL,
  `type_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_breed`
--
ALTER TABLE `tbl_breed`
  ADD PRIMARY KEY (`breed_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `tbl_gender`
--
ALTER TABLE `tbl_gender`
  ADD PRIMARY KEY (`Gender_ID`);

--
-- Indexes for table `tbl_owner`
--
ALTER TABLE `tbl_owner`
  ADD PRIMARY KEY (`owner_id`),
  ADD KEY `Gender_ID` (`Gender_ID`);

--
-- Indexes for table `tbl_pet`
--
ALTER TABLE `tbl_pet`
  ADD PRIMARY KEY (`pet_id`),
  ADD KEY `pet_breed` (`pet_breed`),
  ADD KEY `owner_id` (`owner_id`),
  ADD KEY `pet_gender` (`pet_gender`);

--
-- Indexes for table `tbl_type`
--
ALTER TABLE `tbl_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_breed`
--
ALTER TABLE `tbl_breed`
  ADD CONSTRAINT `tbl_breed_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `tbl_type` (`type_id`);

--
-- Constraints for table `tbl_owner`
--
ALTER TABLE `tbl_owner`
  ADD CONSTRAINT `tbl_owner_ibfk_1` FOREIGN KEY (`Gender_ID`) REFERENCES `tbl_gender` (`Gender_ID`);

--
-- Constraints for table `tbl_pet`
--
ALTER TABLE `tbl_pet`
  ADD CONSTRAINT `tbl_pet_ibfk_1` FOREIGN KEY (`pet_breed`) REFERENCES `tbl_breed` (`breed_id`),
  ADD CONSTRAINT `tbl_pet_ibfk_2` FOREIGN KEY (`owner_id`) REFERENCES `tbl_owner` (`owner_id`),
  ADD CONSTRAINT `tbl_pet_ibfk_3` FOREIGN KEY (`pet_gender`) REFERENCES `tbl_gender` (`Gender_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
