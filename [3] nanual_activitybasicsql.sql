-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2021 at 08:37 AM
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
-- Database: `nanual_activitybasicsql`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_owner`
--

CREATE TABLE `tbl_owner` (
  `Owner_ID` varchar(5) DEFAULT NULL,
  `Owner_Name` varchar(50) DEFAULT NULL,
  `Owner_Address` varchar(255) DEFAULT NULL,
  `Owner_Gender` varchar(10) DEFAULT NULL,
  `Owner_Contact` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_owner`
--

INSERT INTO `tbl_owner` (`Owner_ID`, `Owner_Name`, `Owner_Address`, `Owner_Gender`, `Owner_Contact`) VALUES
('1', 'Cain', 'Davao City', 'Female', '2229614'),
('2', 'Gojo Satoru', 'Mati City', 'Male', '9123456789'),
('3', 'Kento Nanami', 'Davao City', 'Male', '9987654321'),
('4', 'Fushiguro Toji', 'Cebu City', 'Male', '9192837465');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pet`
--

CREATE TABLE `tbl_pet` (
  `Pet_ID` varchar(5) DEFAULT NULL,
  `Pet_Name` varchar(50) DEFAULT NULL,
  `Pet_Gender` varchar(10) DEFAULT NULL,
  `Pet_Color` varchar(50) DEFAULT NULL,
  `Pet_Age` int(11) DEFAULT NULL,
  `Pet_Type` varchar(50) DEFAULT NULL,
  `Pet_Breed` varchar(50) DEFAULT NULL,
  `Pet_Price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pet`
--

INSERT INTO `tbl_pet` (`Pet_ID`, `Pet_Name`, `Pet_Gender`, `Pet_Color`, `Pet_Age`, `Pet_Type`, `Pet_Breed`, `Pet_Price`) VALUES
('5', 'Luh Bee', 'Male', 'White and Orange', 10, 'Cat', 'Local', 2500.75),
('2', 'Digong', 'male', 'Black', 15, 'Dragon', 'Hydra', 10100.8),
('7', 'Digong', 'Male', 'Dark Grey', 3, 'Dog', 'Pitbull', 3110.25),
('8', 'Digong', 'Male', 'Brown', 10, 'Dog', 'Boxer, Labrador', 4300.5),
('9', 'Digong', 'Male', 'White', 10, 'Dog', 'Japanese Spitz', 5500.75),
('11', 'Digong', 'Male', 'White', 10, 'Dog', 'Local', 3400.35),
('10', 'Sushi', 'Male', 'Black, Brown, Orange, White', 3, 'Cat', 'Local', 5600.75);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pet_new`
--

CREATE TABLE `tbl_pet_new` (
  `Pet_ID` varchar(5) DEFAULT NULL,
  `Pet_Name` varchar(50) DEFAULT NULL,
  `Pet_Gender` varchar(10) DEFAULT NULL,
  `Pet_Color` varchar(50) DEFAULT NULL,
  `Pet_Age` int(11) DEFAULT NULL,
  `Pet_Type` varchar(50) DEFAULT NULL,
  `Pet_Breed` varchar(50) DEFAULT NULL,
  `Pet_Price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pet_new`
--

INSERT INTO `tbl_pet_new` (`Pet_ID`, `Pet_Name`, `Pet_Gender`, `Pet_Color`, `Pet_Age`, `Pet_Type`, `Pet_Breed`, `Pet_Price`) VALUES
('1', 'Anna', 'Female', 'Pinkish White', 12, 'Dog', 'Husky', 2300.45),
('2', 'Sophia', 'Female', 'Orange and White', 3, 'Cat', 'Local', 1000.45),
('3', 'Yaku', 'Female', 'White, Black, Orange', 1, 'Cat', 'Local', 1050.35),
('4', 'Cham-Cham', 'Female', 'White and Brown', 5, 'Dog', 'Local', 3250.25),
('5', 'Mingkay', 'Male', 'White and Orange', 10, 'Cat', 'Local', 2500.75),
('6', 'Cydee', 'Female', 'Brown', 1, 'Dog', 'Local', 5320.75),
('1', 'Nymeria', 'female', NULL, 5, NULL, NULL, NULL),
('2', 'Lee Tsu Non', 'male', NULL, 15, NULL, NULL, NULL),
('3', 'Kelly Cally', 'female', NULL, 16, NULL, NULL, NULL),
('4', 'Anne ann', NULL, NULL, 12, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pet_new_drop`
--

CREATE TABLE `tbl_pet_new_drop` (
  `Pet_ID` varchar(5) DEFAULT NULL,
  `Pet_Name` varchar(50) DEFAULT NULL,
  `Pet_Gender` varchar(10) DEFAULT NULL,
  `Pet_Color` varchar(50) DEFAULT NULL,
  `Pet_Age` int(11) DEFAULT NULL,
  `Pet_Type` varchar(50) DEFAULT NULL,
  `Pet_Breed` varchar(50) DEFAULT NULL,
  `Pet_Price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pet_new_drop`
--

INSERT INTO `tbl_pet_new_drop` (`Pet_ID`, `Pet_Name`, `Pet_Gender`, `Pet_Color`, `Pet_Age`, `Pet_Type`, `Pet_Breed`, `Pet_Price`) VALUES
('1', 'Anna', 'Female', 'Pinkish White', 12, 'Dog', 'Husky', 2300.45),
('2', 'Sophia', 'Female', 'Orange and White', 3, 'Cat', 'Local', 1000.45),
('3', 'Yaku', 'Female', 'White, Black, Orange', 1, 'Cat', 'Local', 1050.35),
('4', 'Cham-Cham', 'Female', 'White and Brown', 5, 'Dog', 'Local', 3250.25),
('5', 'Mingkay', 'Male', 'White and Orange', 10, 'Cat', 'Local', 2500.75),
('6', 'Cydee', 'Female', 'Brown', 1, 'Dog', 'Local', 5320.75),
('1', 'Nymeria', 'female', NULL, 5, NULL, NULL, NULL),
('2', 'Lee Tsu Non', 'male', NULL, 15, NULL, NULL, NULL),
('3', 'Kelly Cally', 'female', NULL, 16, NULL, NULL, NULL),
('4', 'Anne ann', NULL, NULL, 12, NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
