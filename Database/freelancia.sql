-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Aug 25, 2023 at 05:36 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET FOREIGN_KEY_CHECKS=0;
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
CREATE DATABASE IF NOT EXISTS `freelancia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `freelancia`;

-- --------------------------------------------------------

--
-- Table structure for table `application_table`
--
-- Creation: Aug 25, 2023 at 08:58 AM
--

DROP TABLE IF EXISTS `application_table`;
CREATE TABLE IF NOT EXISTS `application_table` (
  `aid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `Applicant_name` varchar(10) NOT NULL,
  `Project_Name` varchar(40) NOT NULL,
  `Company_Name` varchar(40) NOT NULL,
  `Estimated_Charge` float NOT NULL,
  `Project_status` text NOT NULL DEFAULT '\'Approved/Pending\'',
  `dt` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `application_table`:
--

--
-- Truncate table before insert `application_table`
--

TRUNCATE TABLE `application_table`;
-- --------------------------------------------------------

--
-- Table structure for table `approve_table`
--
-- Creation: Aug 25, 2023 at 08:58 AM
--

DROP TABLE IF EXISTS `approve_table`;
CREATE TABLE IF NOT EXISTS `approve_table` (
  `apid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `Project_Name` text NOT NULL,
  `Applicant_Name` text NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`apid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `approve_table`:
--

--
-- Truncate table before insert `approve_table`
--

TRUNCATE TABLE `approve_table`;
-- --------------------------------------------------------

--
-- Table structure for table `company_profile_table`
--
-- Creation: Aug 25, 2023 at 08:58 AM
--

DROP TABLE IF EXISTS `company_profile_table`;
CREATE TABLE IF NOT EXISTS `company_profile_table` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `Company_name` varchar(20) NOT NULL,
  `company_photo` mediumblob NOT NULL,
  `Address` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `linkedin` varchar(30) NOT NULL,
  `upi_id` varchar(30) NOT NULL,
  `company_website` varchar(30) NOT NULL,
  `review` int(1) NOT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `company_profile_table`:
--

--
-- Truncate table before insert `company_profile_table`
--

TRUNCATE TABLE `company_profile_table`;
-- --------------------------------------------------------

--
-- Table structure for table `job_post_table`
--
-- Creation: Aug 25, 2023 at 08:58 AM
--

DROP TABLE IF EXISTS `job_post_table`;
CREATE TABLE IF NOT EXISTS `job_post_table` (
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

--
-- RELATIONSHIPS FOR TABLE `job_post_table`:
--

--
-- Truncate table before insert `job_post_table`
--

TRUNCATE TABLE `job_post_table`;
-- --------------------------------------------------------

--
-- Table structure for table `review_table`
--
-- Creation: Aug 25, 2023 at 08:58 AM
--

DROP TABLE IF EXISTS `review_table`;
CREATE TABLE IF NOT EXISTS `review_table` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `Applicant_name` text NOT NULL,
  `Company_name` text NOT NULL,
  `review` int(1) NOT NULL,
  `feedback` text NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`rid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `review_table`:
--

--
-- Truncate table before insert `review_table`
--

TRUNCATE TABLE `review_table`;
-- --------------------------------------------------------

--
-- Table structure for table `signup_table`
--
-- Creation: Aug 25, 2023 at 08:58 AM
--

DROP TABLE IF EXISTS `signup_table`;
CREATE TABLE IF NOT EXISTS `signup_table` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `user_type` varchar(15) NOT NULL DEFAULT 'Freelancer',
  `dt` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`sid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `signup_table`:
--

--
-- Truncate table before insert `signup_table`
--

TRUNCATE TABLE `signup_table`;
-- --------------------------------------------------------

--
-- Table structure for table `subscription_table`
--
-- Creation: Aug 25, 2023 at 08:58 AM
--

DROP TABLE IF EXISTS `subscription_table`;
CREATE TABLE IF NOT EXISTS `subscription_table` (
  `subid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `Company_name` text NOT NULL,
  `Subscription` varchar(8) NOT NULL,
  `transaction_id` varchar(30) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`subid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `subscription_table`:
--

--
-- Truncate table before insert `subscription_table`
--

TRUNCATE TABLE `subscription_table`;
-- --------------------------------------------------------

--
-- Table structure for table `user_profile_table`
--
-- Creation: Aug 25, 2023 at 08:58 AM
--

DROP TABLE IF EXISTS `user_profile_table`;
CREATE TABLE IF NOT EXISTS `user_profile_table` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
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
  `dt` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`sid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `user_profile_table`:
--

--
-- Truncate table before insert `user_profile_table`
--

TRUNCATE TABLE `user_profile_table`;

--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for table application_table
--

--
-- Truncate table before insert `pma__column_info`
--

TRUNCATE TABLE `pma__column_info`;
--
-- Truncate table before insert `pma__table_uiprefs`
--

TRUNCATE TABLE `pma__table_uiprefs`;
--
-- Truncate table before insert `pma__tracking`
--

TRUNCATE TABLE `pma__tracking`;
--
-- Metadata for table approve_table
--

--
-- Truncate table before insert `pma__column_info`
--

TRUNCATE TABLE `pma__column_info`;
--
-- Truncate table before insert `pma__table_uiprefs`
--

TRUNCATE TABLE `pma__table_uiprefs`;
--
-- Truncate table before insert `pma__tracking`
--

TRUNCATE TABLE `pma__tracking`;
--
-- Metadata for table company_profile_table
--

--
-- Truncate table before insert `pma__column_info`
--

TRUNCATE TABLE `pma__column_info`;
--
-- Truncate table before insert `pma__table_uiprefs`
--

TRUNCATE TABLE `pma__table_uiprefs`;
--
-- Truncate table before insert `pma__tracking`
--

TRUNCATE TABLE `pma__tracking`;
--
-- Metadata for table job_post_table
--

--
-- Truncate table before insert `pma__column_info`
--

TRUNCATE TABLE `pma__column_info`;
--
-- Truncate table before insert `pma__table_uiprefs`
--

TRUNCATE TABLE `pma__table_uiprefs`;
--
-- Truncate table before insert `pma__tracking`
--

TRUNCATE TABLE `pma__tracking`;
--
-- Metadata for table review_table
--

--
-- Truncate table before insert `pma__column_info`
--

TRUNCATE TABLE `pma__column_info`;
--
-- Truncate table before insert `pma__table_uiprefs`
--

TRUNCATE TABLE `pma__table_uiprefs`;
--
-- Truncate table before insert `pma__tracking`
--

TRUNCATE TABLE `pma__tracking`;
--
-- Metadata for table signup_table
--

--
-- Truncate table before insert `pma__column_info`
--

TRUNCATE TABLE `pma__column_info`;
--
-- Truncate table before insert `pma__table_uiprefs`
--

TRUNCATE TABLE `pma__table_uiprefs`;
--
-- Truncate table before insert `pma__tracking`
--

TRUNCATE TABLE `pma__tracking`;
--
-- Metadata for table subscription_table
--

--
-- Truncate table before insert `pma__column_info`
--

TRUNCATE TABLE `pma__column_info`;
--
-- Truncate table before insert `pma__table_uiprefs`
--

TRUNCATE TABLE `pma__table_uiprefs`;
--
-- Truncate table before insert `pma__tracking`
--

TRUNCATE TABLE `pma__tracking`;
--
-- Metadata for table user_profile_table
--

--
-- Truncate table before insert `pma__column_info`
--

TRUNCATE TABLE `pma__column_info`;
--
-- Truncate table before insert `pma__table_uiprefs`
--

TRUNCATE TABLE `pma__table_uiprefs`;
--
-- Truncate table before insert `pma__tracking`
--

TRUNCATE TABLE `pma__tracking`;
--
-- Metadata for database freelancia
--

--
-- Truncate table before insert `pma__bookmark`
--

TRUNCATE TABLE `pma__bookmark`;
--
-- Truncate table before insert `pma__relation`
--

TRUNCATE TABLE `pma__relation`;
--
-- Truncate table before insert `pma__savedsearches`
--

TRUNCATE TABLE `pma__savedsearches`;
--
-- Truncate table before insert `pma__central_columns`
--

TRUNCATE TABLE `pma__central_columns`;SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
