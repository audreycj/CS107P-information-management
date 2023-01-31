-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2021 at 06:19 PM
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
-- Table structure for table `tbl_pet`
--

CREATE TABLE `tbl_pet` (
  `Pet_ID` varchar(50) NOT NULL,
  `Pet_Name` varchar(50) NOT NULL,
  `Pet_Gender` varchar(50) NOT NULL,
  `Pet_Color` text NOT NULL,
  `Pet_Age` int(2) NOT NULL,
  `Pet_Type` varchar(50) NOT NULL,
  `Pet_Breed` varchar(50) NOT NULL,
  `Pet_Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pet`
--

INSERT INTO `tbl_pet` (`Pet_ID`, `Pet_Name`, `Pet_Gender`, `Pet_Color`, `Pet_Age`, `Pet_Type`, `Pet_Breed`, `Pet_Price`) VALUES
('1', 'Nymeria', 'female', '', 5, '', '', 0),
('2', 'Lee Tsu Non', 'male', '', 15, '', '', 0),
('3', 'Kelly Cally', 'female', '', 16, '', '', 0),
('2', 'Anne ann', '', '', 12, '', '', 0),
('1', 'Amenadiel', 'Female', '', 5, '', '', 0),
('4', 'Lucifer Morningstar', 'Male', '', 4, '', '', 0),
('1', 'Anna', 'Female', 'Pinkish White', 12, 'Dog', 'Husky', 2300.45),
('6', 'Mingcat', 'Male', 'Gray and White', 2, 'Cat', '', 0),
('7', 'Bella', 'Female', 'Calico (White, Black, Orange)', 5, 'Cat', '', 0),
('8', 'Kyoko', 'Female', 'White and Black', 2, 'Cat', '', 0),
('8', 'Hina', 'Male', 'Orange', 1, 'Cat', '', 0),
('10', 'Isabel', 'Female', 'Calico (Gray, White, Orange)', 1, 'Cat', '', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
