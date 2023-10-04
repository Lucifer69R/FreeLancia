-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2023 at 03:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freelancia`
--

-- --------------------------------------------------------

--
-- Table structure for table `application_table`
--

CREATE TABLE `application_table` (
  `aid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `Applicant_name` varchar(10) NOT NULL,
  `Project_Name` varchar(40) NOT NULL,
  `Company_Name` varchar(40) NOT NULL,
  `Estimated_Charge` float NOT NULL,
  `Project_status` text NOT NULL DEFAULT '\'Approved/Pending\'',
  `dt` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `approve_table`
--

CREATE TABLE `approve_table` (
  `apid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `Project_Name` text NOT NULL,
  `Applicant_Name` text NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_profile_table`
--

CREATE TABLE `company_profile_table` (
  `sid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `Company_name` varchar(20) NOT NULL,
  `company_photo` mediumblob NOT NULL,
  `Address` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `linkedin` varchar(30) NOT NULL,
  `upi_id` varchar(30) NOT NULL,
  `company_website` varchar(30) NOT NULL,
  `review` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_post_table`
--

CREATE TABLE `job_post_table` (
  `Postid` int(5) NOT NULL,
  `Company_Name` varchar(10) NOT NULL,
  `Project_Name` varchar(10) NOT NULL,
  `demo_project` mediumblob NOT NULL,
  `Project_description` text NOT NULL,
  `duration` varchar(10) NOT NULL,
  `skills` text NOT NULL,
  `deadline` text NOT NULL,
  `dt` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loginlogs`
--

CREATE TABLE `loginlogs` (
  `id` int(11) NOT NULL,
  `IpAddress` varbinary(16) NOT NULL,
  `TryTime` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review_table`
--

CREATE TABLE `review_table` (
  `rid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `Applicant_name` text NOT NULL,
  `Company_name` text NOT NULL,
  `review` int(1) NOT NULL,
  `feedback` text NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signup_table`
--

CREATE TABLE `signup_table` (
  `sid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(15) NOT NULL DEFAULT 'Freelancer',
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup_table`
--

INSERT INTO `signup_table` (`sid`, `username`, `email`, `password`, `user_type`, `dt`) VALUES
(82, 'F_nilay4', 'popnilay@gmail.com', '$2y$10$NDLHWCKT3w8EWSmCn/DNNux3b.Y0pkKkwyqCaf5TAXzoBhvd0ruo6', 'Freelancer', '2023-09-05 03:11:31'),
(83, 'F_Nilay40', 'freelanciateam@gmail.com', '$2y$10$QSIZIG9kcYephfbqubhST.gsHmd5LEYNtPgpGHDrW7bnFdR/sX44a', 'Freelancer', '2023-09-05 03:37:20'),
(84, 'C_Chhanda33', 'nilayb698@gmail.com', '$2y$10$lIUOfJeIfgt5pn2yG/KFTeu3qaSS7HlqniF2o.ZYHBI8eP1T0EEXC', 'Client', '2023-09-05 14:42:27'),
(85, 'F_nilay44', 'ftnilay@gmail.com', '$2y$10$exgtblqJjshCCUIbEa/3DO0reoe9DV1JYakzH4IvqhQ7XgXoZrnLq', 'Freelancer', '2023-09-05 23:33:18'),
(86, 'F_nilay48', 'developernilay@gmail.com', '$2y$10$CNMmVmnI6812.oXaSdX1YehltFzNdpTX1.o.EooocmR2iLqYYUkW2', 'Freelancer', '2023-09-24 21:20:58');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_table`
--

CREATE TABLE `subscription_table` (
  `subid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `Company_name` text NOT NULL,
  `Subscription` varchar(8) NOT NULL,
  `transaction_id` varchar(30) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_profile_table`
--

CREATE TABLE `user_profile_table` (
  `sid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `Name` text NOT NULL,
  `user_photo` mediumblob NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `10th_result` float NOT NULL,
  `12th_result` float NOT NULL,
  `ug` varchar(10) NOT NULL,
  `pg` varchar(10) NOT NULL,
  `skills` text NOT NULL,
  `experience` text NOT NULL,
  `linkedin` varchar(30) NOT NULL,
  `upi_id` varchar(30) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approve_table`
--
ALTER TABLE `approve_table`
  ADD PRIMARY KEY (`apid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `company_profile_table`
--
ALTER TABLE `company_profile_table`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `loginlogs`
--
ALTER TABLE `loginlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_table`
--
ALTER TABLE `review_table`
  ADD PRIMARY KEY (`rid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `signup_table`
--
ALTER TABLE `signup_table`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `subscription_table`
--
ALTER TABLE `subscription_table`
  ADD PRIMARY KEY (`subid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_profile_table`
--
ALTER TABLE `user_profile_table`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `approve_table`
--
ALTER TABLE `approve_table`
  MODIFY `apid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_profile_table`
--
ALTER TABLE `company_profile_table`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loginlogs`
--
ALTER TABLE `loginlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `review_table`
--
ALTER TABLE `review_table`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `signup_table`
--
ALTER TABLE `signup_table`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `subscription_table`
--
ALTER TABLE `subscription_table`
  MODIFY `subid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_profile_table`
--
ALTER TABLE `user_profile_table`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
