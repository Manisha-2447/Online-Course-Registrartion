-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2021 at 05:26 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.3.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinecourseregistration`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Slno` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Slno`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-05-2018 03:31:37 PM');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseCode` varchar(255) DEFAULT NULL,
  `courseName` varchar(255) NOT NULL,
  `noofSeats` int(11) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT current_timestamp(),
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseCode`, `courseName`, `noofSeats`, `creationDate`, `updationDate`, `id`) VALUES
('SS002', 'Classical Sociological Theory (SS)', 99, '2020-11-09 05:45:43', '0000-00-00 00:00:00', NULL),
('SS001', 'Computational Social Science (SS)', 10, '2020-09-18 04:15:00', '0000-00-00 00:00:00', NULL),
('CS002', 'Convolutional Neural Networks (CS)', 1, '2020-02-11 17:52:25', '0000-00-00 00:00:00', NULL),
('CS001', 'Deep Learning (CS)', 10, '2020-02-11 17:39:10', '0000-00-00 00:00:00', NULL),
('LL001', 'First Step Korean (LL)', 8, '2020-03-11 04:24:00', '0000-00-00 00:00:00', NULL),
('AH002', 'Introduction to Ableton Live (AH)', 5, '2020-05-18 03:45:00', '0000-00-00 00:00:00', NULL),
('AH001', 'Introduction to Typography (AH)', 27, '2020-01-01 02:15:00', '0000-00-00 00:00:00', NULL),
('LL002', 'Learn Spanish 101 (LL)', 9, '2020-11-11 03:15:00', '0000-00-00 00:00:00', NULL),
('ML002', 'Matrix Algebra (ML)', 5, '2020-05-12 04:45:15', '0000-00-00 00:00:00', NULL),
('ML001', 'Precalculus through Data and Modelling (ML)', 20, '2020-02-11 18:47:25', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courseenrolls`
--

CREATE TABLE `courseenrolls` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `department` varchar(5) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `enrollDate` timestamp NULL DEFAULT current_timestamp(),
  `pincode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courseenrolls`
--

INSERT INTO `courseenrolls` (`id`, `studentRegno`, `department`, `level`, `course`, `enrollDate`, `pincode`) VALUES
(1, 'SS11', 'CS', 'BEGINNER', 'Convolutional Neural Networks (CS)', '2020-12-02 06:00:51', 715948),
(2, 'SS11', 'AH', 'ADVANCED', 'Introduction to Ableton Live (AH)', '2020-12-23 14:04:12', 715948),
(3, 'SS11', 'CS', 'ADVANCED', 'Convolutional Neural Networks (CS)', '2020-12-24 07:21:25', 715948),
(4, 'SS11', 'SS', 'BEGINNER', 'Computational Social Science (SS)', '2020-12-24 07:28:28', 715948),
(5, 'SS11', 'AH', 'ADVANCED', 'Introduction to Typography (AH)', '2020-12-24 07:38:06', 715948),
(6, 'SS11', 'AH', 'BEGINNER', 'Introduction to Typography (AH)', '2020-12-24 07:45:58', 715948),
(7, 'SS11', 'AH', 'ADVANCED', 'Introduction to Ableton Live (AH)', '2020-12-24 07:57:17', 715948),
(8, 'SS01', 'AH', 'BEGINNER', 'Introduction to Ableton Live (AH)', '2021-01-30 15:40:23', 715951),
(9, 'SS01', 'LL', 'ADVANCED', 'First Step Korean (LL)', '2021-02-06 15:53:58', 715951);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` varchar(20) NOT NULL,
  `department` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`) VALUES
('AH', 'Arts and Humanities'),
('CS', 'Computer Science'),
('LL', 'Language Learning'),
('ML', 'Math and Logic'),
('SS', 'Social Sciences');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level`) VALUES
(3, 'ADVANCED'),
(1, 'BEGINNER'),
(2, 'INTERMEDIATE');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `item_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `txn_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_amount` float(10,2) NOT NULL,
  `currency_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentRegno` varchar(255) NOT NULL,
  `studentPhoto` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `creationdate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentRegno`, `studentPhoto`, `password`, `studentName`, `creationdate`, `updationDate`, `pincode`) VALUES
('SS01', NULL, 'f925916e2754e5e03f75dd58a5733251', 'John', '2020-12-25 05:50:51', '', 715951),
('SS02', '', 'f925916e2754e5e03f75dd58a5733251', 'Manisha', '2020-12-11 19:48:03', '', 715941),
('SS04', NULL, 'f925916e2754e5e03f75dd58a5733251', 'Shwetha', '2020-12-01 04:15:00', ' ', 715942),
('SS05', NULL, 'f925916e2754e5e03f75dd58a5733251', 'Rohit', '2020-12-12 04:20:00', ' ', 715943),
('SS06', NULL, 'f925916e2754e5e03f75dd58a5733251', 'Deeksha', '2020-12-07 05:24:00', ' ', 715944),
('SS07', NULL, 'f925916e2754e5e03f75dd58a5733251', 'Shruti', '2020-12-05 05:45:00', ' ', 715945),
('SS08', NULL, 'f925916e2754e5e03f75dd58a5733251', 'Adithya', '2020-12-16 03:15:00', ' ', 715946),
('SS09', NULL, 'f925916e2754e5e03f75dd58a5733251', 'Uday', '2020-12-20 13:15:00', ' ', 715947),
('SS10', NULL, 'f925916e2754e5e03f75dd58a5733251', 'Sanvi', '2020-12-12 12:21:00', ' ', 715949),
('SS11', NULL, 'f925916e2754e5e03f75dd58a5733251', 'Michael', '2017-02-11 19:38:32', NULL, 715948),
('SS12', NULL, 'f925916e2754e5e03f75dd58a5733251', 'Vaishnav', '2020-11-26 11:04:18', NULL, 715950);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `studentRegno`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, '10806121', 0x3a3a3100000000000000000000000000, '2020-11-26 10:36:57', '0000-00-00 00:00:00', 1),
(2, '10806121', 0x3a3a3100000000000000000000000000, '2020-11-26 10:45:45', '2020-11-26 10:45:45', 1),
(3, '10806121', 0x3a3a3100000000000000000000000000, '2020-11-26 10:58:55', '0000-00-00 00:00:00', 1),
(4, '10806121', 0x3a3a3100000000000000000000000000, '2020-11-28 11:56:14', '2020-11-28 11:56:14', 1),
(5, '10806121', 0x3a3a3100000000000000000000000000, '2020-11-29 08:28:25', '2020-11-29 08:28:25', 1),
(6, '10806121', 0x3a3a3100000000000000000000000000, '2020-12-01 08:51:57', '2020-12-01 08:51:57', 1),
(7, '10806121', 0x3a3a3100000000000000000000000000, '2020-12-02 02:05:06', '0000-00-00 00:00:00', 1),
(8, 'SS11', 0x3a3a3100000000000000000000000000, '2020-12-02 02:30:44', '0000-00-00 00:00:00', 1),
(9, 'SS11', 0x3a3a3100000000000000000000000000, '2020-12-02 02:34:21', '0000-00-00 00:00:00', 1),
(10, 'SS11', 0x3a3a3100000000000000000000000000, '2020-12-02 02:40:37', '0000-00-00 00:00:00', 1),
(11, 'SS11', 0x3a3a3100000000000000000000000000, '2020-12-02 02:59:45', '0000-00-00 00:00:00', 1),
(12, 'SS11', 0x3a3a3100000000000000000000000000, '2020-12-02 03:02:16', '0000-00-00 00:00:00', 1),
(13, 'SS11', 0x3a3a3100000000000000000000000000, '2020-12-02 03:21:28', '2020-12-02 03:21:28', 1),
(14, 'SS11', 0x3a3a3100000000000000000000000000, '2020-12-02 03:54:33', '0000-00-00 00:00:00', 1),
(15, 'SS07', 0x3a3a3100000000000000000000000000, '2020-12-02 03:56:14', '0000-00-00 00:00:00', 1),
(16, 'SS11', 0x3a3a3100000000000000000000000000, '2020-12-02 05:28:58', '0000-00-00 00:00:00', 1),
(17, 'SS11', 0x3a3a3100000000000000000000000000, '2020-12-02 05:59:14', '0000-00-00 00:00:00', 1),
(18, 'SS11', 0x3a3a3100000000000000000000000000, '2020-12-02 07:27:23', '2020-12-02 07:27:23', 1),
(19, 'SS11', 0x3a3a3100000000000000000000000000, '2020-12-23 13:53:44', '0000-00-00 00:00:00', 1),
(20, 'SS11', 0x3a3a3100000000000000000000000000, '2020-12-23 13:56:32', '2020-12-23 13:56:32', 1),
(21, 'SS11', 0x3a3a3100000000000000000000000000, '2020-12-24 07:20:10', '2020-12-24 07:20:10', 1),
(22, 'SS01', 0x3a3a3100000000000000000000000000, '2021-01-30 15:39:19', '0000-00-00 00:00:00', 1),
(23, 'SS01', 0x3a3a3100000000000000000000000000, '2021-02-06 15:51:59', '0000-00-00 00:00:00', 1),
(24, 'SS01', 0x3a3a3100000000000000000000000000, '2021-07-03 15:19:54', '0000-00-00 00:00:00', 1),
(25, 'SS01', 0x3a3a3100000000000000000000000000, '2021-07-03 15:20:31', '2021-07-03 15:20:31', 1),
(26, 'SS04', 0x3a3a3100000000000000000000000000, '2021-07-03 15:21:41', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseName`);

--
-- Indexes for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`level`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentRegno`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
