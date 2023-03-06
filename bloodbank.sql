-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2023 at 09:32 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `bloodrequest`
--

CREATE TABLE `bloodrequest` (
  `name` varchar(255) NOT NULL,
  `mobilenumber` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `bloodgroup` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bloodrequest`
--

INSERT INTO `bloodrequest` (`name`, `mobilenumber`, `email`, `bloodgroup`, `status`) VALUES
('Bikash', '637056122', 'Bikash@123.com', 'A+', 'completed'),
('kalia', '25698741563', 'bik@123.com', 'kkk', 'completed'),
('AKD', '258', 'mjn', 'B+', 'completed'),
('raja', '258', 'bik@123.com', 'A+', 'pending'),
('kalia', '9875487845', 'bik@123.com', 'B+', 'completed'),
('BIKASH DASH', '12345678990', 'bik@123.com', 'A+', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `father` varchar(255) NOT NULL,
  `mother` varchar(255) NOT NULL,
  `mobilenumber` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `bloodgroup` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`id`, `name`, `father`, `mother`, `mobilenumber`, `gender`, `email`, `bloodgroup`, `address`) VALUES
(1, 'BIKASH DASH', 'AK DASH', 'S DASH', '69857415298', 'Male', 'bik@123.com', 'A+', 'japur,odisha,india,755015'),
(2, 'dev', 'AK DASH', 'S DASH', '25698741563', 'Male', 'bik@123.com', 'A+', 'jajpur'),
(3, 'pradeep kumar ojha', 'Ramesh ojha', 's ojha', '9875481568', 'Male', 'p@123.com', 'O+', 'jajpur'),
(4, '', '', '', '', 'Male', '', 'A+', ''),
(5, 'juu', 'jjk', 'lll', '58745847899', 'Male', 'Bikash@123.com', 'A+', 'll;;');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `bloodgroup` varchar(255) NOT NULL,
  `bloodgroupunits` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`bloodgroup`, `bloodgroupunits`) VALUES
('A+', '100'),
('A-', '100'),
('B+', '100'),
('B-', '100'),
('O+', '100'),
('O-', '100'),
('AB+', '100'),
('AB-', '100');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
