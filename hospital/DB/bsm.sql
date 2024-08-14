-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2024 at 06:52 PM
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
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '123456', '28-12-2024 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` varchar(30) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `appointmentDate`, `appointmentTime`, `postingDate`, `doctorStatus`, `updationDate`) VALUES
(16, 'Night duty', 10, '00000', '2024-05-01', '2:15 PM', '2024-04-30 23:00:00', 1, '2024-04-30 23:00:00'),
(17, 'Night duty', 10, '00001', '2024-05-01', '2:15 PM', '2024-04-30 23:00:00', 1, '2024-04-30 23:00:00'),
(18, 'Morning duty', 1, '00000', '2024-05-01', '3:15 PM', '2024-04-30 23:00:00', 1, '2024-04-30 23:00:00'),
(19, 'Morning duty', 4, '00002', '2024-05-01', '3:30 PM', '2024-04-30 23:00:00', 1, '2024-04-30 23:00:00'),
(20, 'Night duty', 10, '00000', '2024-05-01', '4:45 AM', '2024-04-30 23:00:00', 0, '2024-05-26 16:50:52'),
(21, 'Morning duty', 1, '00000', '2024-05-01', '11:15 AM', '2024-04-30 23:00:00', 0, '2024-04-30 23:00:00'),
(22, 'Morning duty', 1, '00001', '2024-05-01', '10:15 AM', '2024-04-30 23:00:00', 0, '2024-04-30 23:00:00'),
(23, 'Morning duty', 1, '00002', '2024-05-01', '11: AM', '2024-04-30 23:00:00', 0, '2024-04-30 23:00:00'),
(24, 'Morning duty', 0, '00003', '2024-05-01', '4:15 AM', '2024-04-30 23:00:00', 0, '2024-04-30 23:00:00'),
(25, 'Morning duty', 1, '00004', '2024-05-01', '8:15 AM', '2024-04-30 23:00:00', 0, '2024-04-30 23:00:00'),
(26, 'Morning duty', 1, '00003', '2024-05-01', '11:15 AM', '2024-04-30 23:00:00', 0, '2024-04-30 23:00:00'),
(27, 'Afternoon duty', 2, '00005', '2024-05-01', '12:30 PM', '2024-04-30 23:00:00', 0, '2024-04-30 23:00:00'),
(28, 'Afternoon duty', 2, '00006', '2024-05-01', '1:30 PM', '2024-04-30 23:00:00', 0, '2024-04-30 23:00:00'),
(29, 'Afternoon duty', 2, '00007', '2024-05-01', '2:30 PM', '2024-04-30 23:00:00', 0, '2024-04-30 23:00:00'),
(30, 'Afternoon duty', 0, '00008', '2024-05-01', '3:30 PM', '2024-04-30 23:00:00', 0, '2024-04-30 23:00:00'),
(31, 'Afternoon duty', 2, '00009', '2024-05-01', '4:30 PM', '2024-04-30 23:00:00', 0, '2024-04-30 23:00:00'),
(32, 'Afternoon duty', 2, '00008', '2024-05-01', '2:45 PM', '2024-04-30 23:00:00', 0, '2024-04-30 23:00:00'),
(33, 'Night duty', 3, '00010', '2024-05-01', '6:00 PM', '2024-04-30 23:00:00', 0, '2024-04-30 23:00:00'),
(35, 'Night duty', 3, '00012', '2024-05-01', '9:30 PM', '2024-04-30 23:00:00', 0, '2024-04-30 23:00:00'),
(36, 'Night duty', 3, '00013', '2024-05-01', '11:30 PM', '2024-04-30 23:00:00', 0, '2024-04-30 23:00:00'),
(37, 'Night duty', 3, '00014', '2024-05-01', '11:45 PM', '2024-04-30 23:00:00', 0, '2024-04-30 23:00:00'),
(38, 'Night duty', 3, '00011', '2024-05-01', '11:45 PM', '2024-04-30 23:00:00', 0, '2024-04-30 23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `doctorduty`
--

CREATE TABLE `doctorduty` (
  `id` int(11) NOT NULL,
  `duty` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorduty`
--

INSERT INTO `doctorduty` (`id`, `duty`, `creationDate`, `updationDate`) VALUES
(1, 'Morning duty', '2024-05-28 06:37:25', '2024-05-26 15:51:47'),
(2, 'Afternoon duty', '2024-05-28 06:38:12', '2024-05-26 15:51:55'),
(3, 'Night duty', '2024-05-28 06:38:48', '2024-05-26 15:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `duty` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `duty`, `doctorName`, `address`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Morning duty', 'Dr. Fauz Uthman', 'Biu General Hospital', 234810345989, 'doctor1@gmail.com', '123456', '2024-04-30 23:00:00', '2024-05-26 16:37:42'),
(2, 'Afternoon duty', 'Dr. Muhammad Nur', 'Biu General Hospital', 234810453222, 'doctor2@gmail.com', '123456', '2024-04-30 23:00:00', '2024-05-26 16:37:42'),
(3, 'Night duty', 'Dr. Musa Musa', 'Biu General Hospital', 234819900998, 'doctor3@gmail.com', '123456', '2024-04-30 23:00:00', '2024-05-26 16:37:42');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-05-05 21:46:25', NULL, 1),
(21, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-05-25 10:49:26', NULL, 1),
(22, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-05-25 19:29:16', NULL, 1),
(23, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-25 19:41:36', NULL, 0),
(24, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-25 19:41:39', NULL, 0),
(25, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-05-25 19:41:45', NULL, 1),
(26, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-25 20:16:38', NULL, 0),
(27, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-30 19:54:02', NULL, 0),
(28, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-30 19:58:52', NULL, 1),
(29, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-30 20:08:52', NULL, 1),
(30, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-30 20:20:29', NULL, 1),
(31, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-30 22:02:47', NULL, 1),
(32, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-30 22:26:36', NULL, 1),
(33, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-30 23:15:34', NULL, 1),
(34, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-06-06 20:57:30', NULL, 1),
(35, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-07 05:23:50', NULL, 1),
(36, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-15 17:49:38', NULL, 1),
(37, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-15 19:01:04', NULL, 1),
(38, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-15 19:08:03', NULL, 1),
(39, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-16 12:39:28', NULL, 1),
(40, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-16 12:42:50', NULL, 1),
(41, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-16 12:50:25', NULL, 1),
(42, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-16 13:08:33', NULL, 1),
(43, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-16 14:14:13', NULL, 1),
(44, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-16 14:17:38', NULL, 1),
(45, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-16 14:19:53', NULL, 1),
(46, 4, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-16 14:22:29', NULL, 1),
(47, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-16 14:23:26', NULL, 1),
(48, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-16 15:11:34', NULL, 1),
(49, 4, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-18 02:08:07', NULL, 1),
(50, 5, 'Mnur@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-18 16:56:55', NULL, 1),
(51, 4, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-18 18:07:07', NULL, 1),
(52, 4, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-20 18:07:14', NULL, 1),
(53, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-20 18:37:30', NULL, 1),
(54, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-23 19:26:40', NULL, 1),
(55, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-27 13:43:03', NULL, 1),
(56, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-27 15:05:24', NULL, 1),
(57, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-27 20:51:57', NULL, 1),
(58, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-28 18:18:12', NULL, 1),
(59, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 03:08:35', NULL, 1),
(60, NULL, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 03:11:51', NULL, 0),
(61, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 03:11:57', NULL, 1),
(62, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 03:46:26', NULL, 1),
(63, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 03:51:12', NULL, 1),
(64, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 03:51:40', NULL, 1),
(65, NULL, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 03:57:56', NULL, 0),
(66, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 03:58:01', NULL, 1),
(67, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 05:33:30', NULL, 1),
(68, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 06:17:27', NULL, 1),
(69, 4, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 06:28:00', NULL, 1),
(70, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 06:28:33', NULL, 1),
(71, 4, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 07:21:38', NULL, 1),
(72, 4, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 07:32:38', NULL, 1),
(73, 4, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 07:38:07', NULL, 1),
(74, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 08:34:51', NULL, 1),
(75, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 09:54:09', NULL, 1),
(76, 4, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 11:20:23', NULL, 1),
(77, NULL, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 12:45:44', NULL, 0),
(78, 1, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 12:45:55', NULL, 1),
(79, 2, 'Mnur@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 12:47:58', NULL, 1),
(80, 3, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 12:48:44', NULL, 1),
(81, NULL, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 14:13:23', NULL, 0),
(82, 1, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 14:13:28', NULL, 1),
(83, 1, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 18:45:29', NULL, 1),
(84, 1, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 03:10:25', NULL, 1),
(85, 1, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 03:14:48', NULL, 1),
(86, 1, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 03:16:37', NULL, 1),
(87, 1, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 03:22:44', NULL, 1),
(88, 2, 'Mnur@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 03:23:05', NULL, 1),
(89, 2, 'Mnur@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 03:24:56', NULL, 1),
(90, NULL, 'aj@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 03:30:45', NULL, 0),
(91, NULL, 'aj@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 03:30:50', NULL, 0),
(92, NULL, 'aj@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 03:31:04', NULL, 0),
(93, 3, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 03:31:40', NULL, 1),
(94, 3, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 03:34:59', NULL, 1),
(95, NULL, 'aj@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 04:36:19', NULL, 0),
(96, 3, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 04:36:25', NULL, 1),
(97, 1, 'doctor1@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-26 13:49:39', NULL, 1),
(98, 1, 'doctor1@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-26 14:23:59', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

CREATE TABLE `pharmacy` (
  `id` int(11) NOT NULL,
  `PharmName` varchar(100) DEFAULT NULL,
  `contactNo` int(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pharmacy`
--

INSERT INTO `pharmacy` (`id`, `PharmName`, `contactNo`, `address`, `email`, `password`, `creationDate`, `updateDate`) VALUES
(1, 'Usman Abdullahi', 903324899, 'General Hospital Biu', 'pharmacist@gmail.com', '123456', '2024-05-01 01:09:11', '2024-05-01 15:03:02');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacylog`
--

CREATE TABLE `pharmacylog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pharmacylog`
--

INSERT INTO `pharmacylog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 05:05:21', NULL, 0),
(2, 1, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 05:07:18', NULL, 1),
(3, 1, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 05:07:25', NULL, 1),
(4, 1, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 05:07:28', NULL, 1),
(5, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 05:09:47', NULL, 0),
(6, 1, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 05:10:15', NULL, 1),
(7, 1, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 05:51:27', NULL, 1),
(8, NULL, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 08:24:09', NULL, 0),
(9, 1, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 08:24:39', NULL, 1),
(10, 1, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 09:17:07', NULL, 1),
(11, 1, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 10:05:42', NULL, 1),
(12, 1, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 10:11:31', NULL, 1),
(13, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 18:47:22', NULL, 0),
(14, NULL, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 18:49:48', NULL, 0),
(15, NULL, 'Aj@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 18:50:20', NULL, 0),
(16, NULL, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 18:51:06', NULL, 0),
(17, NULL, 'aj@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 18:51:30', NULL, 0),
(18, NULL, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 18:51:36', NULL, 0),
(19, NULL, 'aj@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 18:52:07', NULL, 0),
(20, 1, 'aj@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 18:53:02', NULL, 1),
(21, 1, 'aj@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 03:35:51', NULL, 1),
(22, NULL, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 03:36:20', NULL, 0),
(23, 1, 'aj@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 04:37:09', NULL, 1),
(24, 1, 'pharmacist@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-26 14:03:28', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `subject`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'Maryam Usman', 'test@gmail.com', 252352352, 'Nice Job', '2024-06-29 19:03:08', 'Test Admin Remark', '2024-07-29 02:10:53', 1),
(4, 'Yunus', 'yunusisah123@gmail.com', 9033248408, ' love the site!!!!!', '2024-07-29 02:14:32', 'Done', '2024-07-29 02:18:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `docName` varchar(250) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalCon` mediumtext DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `PharmStatus` int(11) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `docName`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalCon`, `MedicalPres`, `PharmStatus`, `CreationDate`) VALUES
(2, 3, NULL, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', NULL, NULL, '2019-11-06 04:20:07'),
(3, 2, NULL, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', NULL, NULL, '2019-11-06 04:31:24'),
(4, 1, NULL, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', NULL, NULL, '2019-11-06 04:52:42'),
(5, 1, NULL, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', NULL, NULL, '2019-11-06 04:56:55'),
(6, 4, NULL, '90/120', '120', '56', '98 F', '#blood sugar high\r\n#Asthma problem', NULL, NULL, '2019-11-06 14:38:33'),
(7, 5, NULL, '80/120', '120', '85', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup', NULL, NULL, '2019-11-10 18:50:23'),
(8, 3, NULL, '1000', '10', '13', '0', 'having headache', NULL, NULL, '2021-05-05 21:49:39'),
(9, 3, NULL, '457', '21', '0', '0', 'FEVER', NULL, NULL, '2021-05-25 19:33:11'),
(10, 22, NULL, '20', '5', '70', '0', 'Panadol, Vitamin C, Glucose', NULL, NULL, '2021-07-16 15:04:46'),
(11, 23, NULL, '120', '10', '70', '37', 'Headache,fever', NULL, NULL, '2021-07-29 07:10:53'),
(12, 22, NULL, '20', '5', '13', '37', 'Pandol', NULL, NULL, '2021-07-16 15:07:45'),
(13, 23, NULL, '20', '5', '13', '0', 'hey', NULL, NULL, '2021-07-29 04:11:50'),
(14, 24, 'Dr. Musa Musa', '20', '10', '70', '30', 'Headache\r\n', 'hdgkyudwhdlu', 1, '2021-07-29 10:17:43'),
(15, 25, 'Dr. Musa Musa', '20', '5', '13', '30', 'good', 'fit', 1, '2021-07-29 10:15:54'),
(16, 25, 'Dr. Musa Musa', '20', '5', '70', '30', 'last', 'fever', 1, '2021-07-29 10:29:11');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientReg` varchar(50) NOT NULL,
  `PatientDept` varchar(50) NOT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(11) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `KinName` varchar(50) NOT NULL,
  `KinCon` varchar(50) NOT NULL,
  `kinRel` varchar(50) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `PatientName`, `PatientReg`, `PatientDept`, `PatientContno`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `KinName`, `KinCon`, `kinRel`, `CreationDate`, `UpdationDate`) VALUES
(26, 'OLA ADEKUNLE', '00000', 'Pediatrics Ward', 8104751573, 'male', '123 Main St, BIU LGA, Borno State, Nigeria', 25, 'NORMAL', 'SEUN ADEKUNLE', '0810751573', 'BROTHER', '2024-04-30 23:00:00', '2024-05-26 16:30:37'),
(27, 'YUNUSA ISAH', '00001', 'Surgical Ward', 9033248408, 'male', '456 Elm St, BIU LGA, Borno State, Nigeria', 23, 'NORMAL', 'YAKUB ISAH', '0810851573', 'BROTHER', '2024-04-30 23:00:00', '2024-05-26 16:32:33'),
(28, 'IDRIS ABDULLAHI', '00002', 'Medical Ward', 9055557785, 'male', '789 Maple St, BIU LGA, Borno State, Nigeria', 24, 'NORMAL', 'IDRIS AISHAT', '08104751573', 'SISTER', '2024-04-30 23:00:00', '2024-05-26 16:32:33'),
(29, 'OSANSANI AHMAD TIJJANI', '00003', 'Orthopedic Ward', 90977788909, 'male', '101 Pine St, BIU LGA, Borno State, Nigeria', 22, 'NORMAL', 'OSANSANI ABDULKABIR', '07098785432', 'BROTHER', '2024-04-30 23:00:00', '2024-05-26 16:32:33'),
(30, 'MARIAM AHMAD', '00004', 'Maternity Ward', 9087543278, 'female', '202 Oak St, BIU LGA, Borno State, Nigeria', 20, 'NORMAL', 'IDRIS AISHAT', '07098785789', 'SISTER', '2024-04-30 23:00:00', '2024-05-26 16:32:33'),
(31, 'RUKAYYA ADEGOKE', '00005', 'ICU Ward', 8141374845, 'female', '303 Cedar St, BIU LGA, Borno State, Nigeria', 22, 'NORMAL', 'ADEGOKE ZAINAB', '08099777879', 'SISTER', '2024-04-30 23:00:00', '2024-05-26 16:32:33'),
(32, 'MUHAMMAD AISHAT', '00006', 'Cardiology Ward', 9089787543, 'female', '404 Birch St, BIU LGA, Borno State, Nigeria', 18, 'ASMATIC PATIENT', 'YUSUF MUHAMMAD', '90134527890', 'BROTHER', '2024-04-30 23:00:00', '2024-05-26 16:32:33'),
(33, 'HUSSIEN BAKO', '00007', 'Oncology Ward', 9075432198, 'male', '505 Walnut St, BIU LGA, Borno State, Nigeria', 20, 'NORMAL', 'SADIQ BAKO', '08099775432', 'BROTHER', '2024-04-30 23:00:00', '2024-05-26 16:32:33'),
(34, 'AMINU ABDULLAHI', '00008', 'Neurology Ward', 917789085, 'male', '606 Chestnut St, BIU LGA, Borno State, Nigeria', 24, 'NORMAL', 'AMINU ZAINAB', '09177890543', 'SISTER', '2024-04-30 23:00:00', '2024-05-26 16:32:33'),
(35, 'IDRIS ABDULLAHI', '00009', 'Psychiatry Ward', 9055557790, 'male', '707 Spruce St, BIU LGA, Borno State, Nigeria', 21, 'NORMAL', 'IDRIS AISHAT', '0810851578', 'SISTER', '2024-04-30 23:00:00', '2024-05-26 16:32:33'),
(36, 'ADEKUNLE JOY ABIGAIL', '00010', 'Dermatology Ward', 903324878, 'female', '808 Fir St, BIU LGA, Borno State, Nigeria', 22, 'NORMAL', 'OLA ADEKUNLE', '08107515737', 'BROTHER', '2024-04-30 23:00:00', '2024-05-26 16:32:33'),
(37, 'JOY FELIX', '00011', 'Ophthalmology Ward', 9088757445, 'female', '909 Palm St, BIU LGA, Borno State, Nigeria', 23, 'NORMAL', ' ISAQ FELIX', '09087744445', 'BROTHER', '2024-04-30 23:00:00', '2024-05-26 16:32:33'),
(38, 'AISHAT IBRAHIM', '00012', 'ENT Ward', 9087543231, 'female', '1010 Bamboo St, BIU LGA, Borno State, Nigeria', 22, 'NORMAL', 'IBRAHIM MUSA', '08099778854', 'BROTHER', '2024-04-30 23:00:00', '2024-05-26 16:32:33'),
(39, 'MARIAM  YUSUF', '00013', 'Gastroenterology Ward', 9088775432, 'female', '1111 Redwood St, BIU LGA, Borno State, Nigeria', 25, 'NORMAL', 'MUHAMMAD MUSA', '08107515000', 'BROTHER', '2024-04-30 23:00:00', '2024-05-26 16:32:33'),
(40, 'OLA  AJIBOLA', '00014', 'Nephrology Ward', 8077889900, 'male', '1212 Cypress St, BIU LGA, Borno State, Nigeria', 18, 'NORMAL', 'OLUWADAMILOLA  AJIBOLA', '08099777800', 'SISTER', '2024-04-30 23:00:00', '2024-05-26 16:32:33');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatienttest`
--

CREATE TABLE `tblpatienttest` (
  `ID` int(10) NOT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatienttest`
--

INSERT INTO `tblpatienttest` (`ID`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Yunus Isah', 903324840, 'yuunx@gmail.com', 'Male', 'Biu', 12, 'Diabetics', '2024-07-07 06:24:14', '2024-05-26 14:57:51'),
(8, 'Fatima Umar', 903324840, 'test2@gmail.com', 'female', 'Biu', 23, 'Malaria', '2024-07-07 06:49:16', '2024-05-26 14:58:06'),
(9, 'Maryam Hassan', 903324840, 'work@gmail.com', 'female', 'Biu', 23, 'Typhod', '2024-07-07 06:52:29', '2024-05-26 14:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-05 21:43:18', NULL, 1),
(25, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-05-25 10:53:54', NULL, 0),
(26, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-05-25 19:34:21', NULL, 0),
(27, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-25 19:34:28', NULL, 1),
(28, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-25 19:44:52', NULL, 0),
(29, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-05-25 19:44:55', NULL, 0),
(30, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-05-25 19:45:06', NULL, 0),
(31, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-25 19:45:42', NULL, 0),
(32, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-25 19:48:23', NULL, 0),
(33, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-25 19:50:19', NULL, 1),
(34, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-30 19:46:47', NULL, 1),
(35, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-30 20:07:37', NULL, 0),
(36, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-30 20:07:46', NULL, 1),
(37, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-30 21:15:50', NULL, 1),
(38, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-30 22:11:16', NULL, 1),
(39, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-30 22:30:10', NULL, 1),
(40, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-30 23:14:21', NULL, 1),
(41, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-30 23:14:39', NULL, 1),
(42, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-30 23:15:47', NULL, 1),
(43, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-06-06 20:48:20', NULL, 1),
(44, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2024-07-05 02:22:30', NULL, 0),
(45, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2024-07-05 02:22:49', NULL, 0),
(46, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2024-07-05 02:23:47', NULL, 0),
(47, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2024-07-05 02:24:09', NULL, 0),
(48, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-07 05:21:54', NULL, 1),
(49, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-07 05:26:46', NULL, 1),
(50, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-07 06:36:51', NULL, 1),
(51, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-12 19:07:51', NULL, 1),
(52, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-12 20:19:57', NULL, 1),
(53, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-12 21:26:09', NULL, 1),
(54, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-14 17:40:11', NULL, 1),
(55, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-15 19:00:05', NULL, 1),
(56, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-15 19:04:00', NULL, 1),
(57, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-16 12:40:46', NULL, 1),
(58, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-16 13:05:24', NULL, 1),
(59, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-16 14:11:08', NULL, 1),
(60, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-16 14:14:51', NULL, 1),
(61, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-17 06:51:41', NULL, 1),
(62, NULL, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-20 18:22:37', NULL, 0),
(63, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-20 18:22:43', NULL, 1),
(64, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-20 18:37:45', NULL, 1),
(65, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-20 18:51:02', NULL, 1),
(66, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-23 17:41:23', NULL, 0),
(67, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-23 17:41:36', NULL, 0),
(68, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-23 17:46:33', NULL, 0),
(69, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-23 17:47:11', NULL, 1),
(70, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-23 19:17:53', NULL, 0),
(71, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-23 19:18:02', NULL, 0),
(72, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-23 19:19:00', NULL, 0),
(73, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-23 19:19:15', NULL, 0),
(74, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-23 19:20:24', NULL, 1),
(75, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-24 05:32:01', NULL, 1),
(76, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-27 13:18:10', NULL, 1),
(77, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-27 15:03:27', NULL, 1),
(78, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2024-07-27 20:40:07', NULL, 0),
(79, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-27 20:40:18', NULL, 1),
(80, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-27 20:50:42', NULL, 1),
(81, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-28 07:52:11', NULL, 1),
(82, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-28 08:12:32', NULL, 1),
(83, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-28 10:41:37', NULL, 1),
(84, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-28 18:15:07', NULL, 1),
(85, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 03:06:13', NULL, 0),
(86, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 03:06:26', NULL, 0),
(87, NULL, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 03:06:35', NULL, 0),
(88, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 03:06:44', NULL, 0),
(89, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 03:10:08', NULL, 0),
(90, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 03:10:50', NULL, 1),
(91, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 03:42:23', NULL, 0),
(92, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 03:42:28', NULL, 1),
(93, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 03:51:58', NULL, 1),
(94, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 03:57:37', NULL, 0),
(95, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 03:57:45', NULL, 1),
(96, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 10:55:46', NULL, 0),
(97, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 10:55:53', NULL, 1),
(98, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 12:49:46', NULL, 1),
(99, NULL, 'te@gmmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 17:11:37', NULL, 0),
(100, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 18:25:28', NULL, 1),
(101, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-29 18:58:03', NULL, 1),
(102, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 03:11:10', NULL, 1),
(103, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 03:15:05', NULL, 1),
(104, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 03:17:00', NULL, 1),
(105, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 03:23:27', NULL, 1),
(106, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 03:25:22', NULL, 1),
(107, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 03:33:18', NULL, 1),
(108, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 03:36:38', NULL, 1),
(109, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 04:24:15', NULL, 1),
(110, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2024-07-30 04:30:07', NULL, 0),
(111, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 04:30:20', NULL, 1),
(112, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2024-07-30 04:35:26', NULL, 0),
(113, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-30 04:35:36', NULL, 1),
(114, NULL, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-22 10:58:52', NULL, 0),
(115, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-22 11:05:11', NULL, 1),
(116, 11, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-26 12:22:29', NULL, 1),
(117, NULL, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-26 14:17:22', NULL, 0),
(118, NULL, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-26 14:17:32', NULL, 0),
(119, NULL, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-26 14:18:11', NULL, 0),
(120, NULL, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-26 14:19:52', NULL, 0),
(121, NULL, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-26 14:20:18', NULL, 0),
(122, 11, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-26 14:23:07', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(11, 'Musa Ahmed', 'Nassarawa Biu', 'Kano', 'male', 'user@gmail.com', '123456', '2024-07-28 12:35:29', '2024-05-26 14:47:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorduty`
--
ALTER TABLE `doctorduty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacylog`
--
ALTER TABLE `pharmacylog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatienttest`
--
ALTER TABLE `tblpatienttest`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `doctorduty`
--
ALTER TABLE `doctorduty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `pharmacy`
--
ALTER TABLE `pharmacy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pharmacylog`
--
ALTER TABLE `pharmacylog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tblpatienttest`
--
ALTER TABLE `tblpatienttest`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
