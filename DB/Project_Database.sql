-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2025 at 06:47 PM
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
-- Database: `darshil_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `member_data`
--

CREATE TABLE `member_data` (
  `m_Id` int(3) NOT NULL,
  `f_nm` varchar(50) NOT NULL,
  `l_nm` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pho_num` int(10) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `m_plan` enum('monthly','quarterly','yearly') NOT NULL,
  `payment` enum('cash','upi','card') NOT NULL,
  `password` int(8) NOT NULL,
  `cn_pass` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member_data`
--

INSERT INTO `member_data` (`m_Id`, `f_nm`, `l_nm`, `email`, `pho_num`, `age`, `gender`, `m_plan`, `payment`, `password`, `cn_pass`) VALUES
(1, 'Darshil', 'Barad', 'dbarad350@rku.ac.in', 2147483647, 21, 'male', 'monthly', 'cash', 88888888, 88888888),
(4, 'jeet', 'jindra', 'tabaw64856@yonlis.com', 2147483647, 20, 'female', 'quarterly', 'upi', 66666666, 66666666);

-- --------------------------------------------------------

--
-- Table structure for table `member_login`
--

CREATE TABLE `member_login` (
  `Id` int(2) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` int(8) NOT NULL,
  `log_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member_login`
--

INSERT INTO `member_login` (`Id`, `username`, `pass`, `log_time`) VALUES
(2, 'Darshil', 88888888, '2025-12-06 17:45:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member_data`
--
ALTER TABLE `member_data`
  ADD PRIMARY KEY (`m_Id`);

--
-- Indexes for table `member_login`
--
ALTER TABLE `member_login`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member_data`
--
ALTER TABLE `member_data`
  MODIFY `m_Id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `member_login`
--
ALTER TABLE `member_login`
  MODIFY `Id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
