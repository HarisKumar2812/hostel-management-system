-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 09, 2025 at 11:28 PM
-- Server version: 10.11.11-MariaDB
-- PHP Version: 8.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reshist_homs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `fullname`, `email`, `updationDate`) VALUES
(1, 'admin', 'd00f5d5217896fb7fd601412cb890830', 'HMS', 'admin@mail.com', '2024-08-12 12:10:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblca`
--

CREATE TABLE `tblca` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `department` varchar(220) NOT NULL,
  `email` varchar(55) NOT NULL,
  `statas` int(11) NOT NULL DEFAULT 1,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblca`
--

INSERT INTO `tblca` (`id`, `UserName`, `Password`, `fullname`, `department`, `email`, `status`, `updationDate`) VALUES
(1, 'sivaperumal', 'd00f5d5217896fb7fd601412cb890830', 'HMS', 'informationtechnology', 'sivaperumal@mail.com', 1, '2024-07-30 19:29:22'),
(2, 'usha', 'd00f5d5217896fb7fd601412cb890830', 'HMS', 'csbs', 'usha@mail.com', 1, '2024-06-30 06:46:23'),
(4, 'lali', 'd00f5d5217896fb7fd601412cb890830', 'HMS', 'aids', 'slit@mail.com', 1, '2025-02-06 02:19:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(1, 'Information Technology', 'IT', 'HMSIT', '2024-02-08 05:21:20'),
(2, 'Computer Science Engineering', 'CSE', 'HMSCSE', '2024-02-08 05:21:44'),
(3, 'Computer Science and Business System', 'CSBS', 'HMSCSBS', '2024-02-08 05:22:13'),
(4, 'Artificial Science and Data Science', 'AIDS', 'HMSAIDS', '2024-02-08 05:23:07'),
(5, 'Mechanical Engineering ', 'MECH', 'HMSMECH', '2024-02-08 05:23:47'),
(6, 'Electronics and Communication Engineering', 'ECE', 'HMSECE', '2024-02-08 05:24:26'),
(7, 'Electrical and Electronic Engineering', 'EEE', 'HMSEEE', '2024-02-08 05:24:47'),
(8, 'Civil Engineering', 'Civil', 'HMSCIVIL', '2024-02-08 05:25:39'),
(9, 'Master of Business Administration ', 'MBA', 'HMSMBA', '2024-02-09 10:03:41');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `ca` varchar(220) DEFAULT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Statas` int(11) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `ca`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(13, '2K21IT44', 'Reshi', 'S T', '2k21it44@kiot.ac.in', '2a449cbc1980494b0e86de30334ac641', 'Male', '2004-06-17', 'InformationTechnology', 'sivaperumal', 'Netaji Nagar, Attur', 'Salem', 'India', '9842778900', 1, '2024-02-09 12:32:12'),
(14, '2K21IT63', 'Yogeswari', 'R', '2k21it63@kiot.ac.in', 'd00f5d5217896fb7fd601412cb890830', 'Female', '2004-06-17', 'csbs', 'usha', 'Attur', 'Salem', 'India', '9842778900', 1, '2024-02-09 12:32:12'),
(15, '2K21IT17', 'Gayathri', 'J M', '2k21it17@kiot.ac.in', '2f87be6fc730b2666571aa2183abbb28', 'Female', '2004-06-17', 'aids', 'lali', 'Attur', 'Salem', 'India', '9842778900', 1, '2024-02-09 12:32:12'),
(16, '2K21IT37', 'Merinkanth', 'N', '2k21it37@kiot.ac.in', '3dd1a2760829ed6f66dd0b6c999e9e44', 'Male', '2004-04-01', 'Information Technology', NULL, 'Pallipalayam Erode Tamilnadu', 'Erode', 'India', '9842778900', 1, '2024-07-30 11:17:41'),
(167, '636102', '09842778900', 'Reshi', 'streshi17@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'Female', '2025-01-22', 'aids', NULL, '123F,Nethaji Nagar vinaiyagapuram attur', 'Attur', 'India', '9443427247', 1, '2025-01-20 08:45:54');

-- --------------------------------------------------------

--
-- Table structure for table `tblhod`
--

CREATE TABLE `tblhod` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `department` varchar(220) NOT NULL,
  `email` varchar(55) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblhod`
--

INSERT INTO `tblhod` (`id`, `UserName`, `Password`, `fullname`, `department`, `email`, `status`, `updationDate`) VALUES
(1, 'hodit', 'd00f5d5217896fb7fd601412cb890830', 'HMS', 'informationtechnology', 'sivaperumal@mail.com', 1, '2024-07-30 19:30:41'),
(2, 'hodcsbs', 'd00f5d5217896fb7fd601412cb890830', 'HMS', 'csbs', 'usha@mail.com', 1, '2024-04-21 11:15:24'),
(4, 'hodaids', 'd00f5d5217896fb7fd601412cb890830', 'HMS', 'aids', 'slit@mail.com', 1, '2024-04-21 11:15:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `outtime` time NOT NULL,
  `intime` time NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `caremark` varchar(220) DEFAULT NULL,
  `hodremark` varchar(220) DEFAULT NULL,
  `vpremark` varchar(220) DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `caRemarkDate` varchar(120) NOT NULL,
  `hodRemarkDate` varchar(120) NOT NULL,
  `vpRemarkDate` varchar(120) NOT NULL,
  `Status` int(11) NOT NULL,
  `hodStatus` int(11) NOT NULL DEFAULT 0,
  `caStatus` int(11) NOT NULL DEFAULT 0,
  `vpStatus` int(11) NOT NULL DEFAULT 0,
  `isRead` int(11) NOT NULL,
  `caIsread` int(11) NOT NULL,
  `hodIsread` int(11) NOT NULL,
  `vpIsread` int(11) NOT NULL,
  `empid` int(11) DEFAULT NULL,
  `dept` varchar(220) NOT NULL,
  `ca` varchar(220) NOT NULL,
  `scanoutime` time DEFAULT NULL,
  `scanintime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `outtime`, `intime`, `Description`, `PostingDate`, `AdminRemark`, `caremark`, `hodremark`, `vpremark`, `AdminRemarkDate`, `caRemarkDate`, `hodRemarkDate`, `vpRemarkDate`, `Status`, `hodstatus`, `castatus`, `vpstatus`, `IsRead`, `caIsread`, `hodIsread`, `vpIsread`, `empid`, `dept`, `ca`, `scanouttime`, `scanintime`) VALUES
(90, 'Out Pass', '2024-07-30', '2024-07-30', '22:26:00', '22:30:00', 'It is For Checking', '2024-07-30 11:26:41', 'Not Ok ', NULL, NULL, NULL, '2024-07-30 22:27:42 ', '', '', '', 2, 4, 4, 4, 1, 0, 0, 0, 13, 'InformationTechnology', 'sivaperumal', NULL, NULL),
(91, 'Home Pass', '2024-07-30', '2024-07-30', '22:32:00', '22:39:00', 'It is for checking Home Pass', '2024-07-30 11:32:21', 'Done You may go', 'Ok Verified', 'HOD Approved', 'Approved All the Best', '2024-07-30 22:33:08 ', '2024-07-30 22:33:59 ', '2024-07-30 22:35:07 ', '2024-07-30 22:36:17 ', 1, 1, 1, 1, 1, 1, 1, 0, 14, 'csbs', 'usha', NULL, NULL),
(92, 'Pass Extender', '2024-07-30', '2024-07-30', '22:39:00', '22:42:00', 'It is an extender for the Pass I have Applied Before ', '2024-07-30 11:38:29', '102030', NULL, NULL, NULL, '2024-08-05 16:08:22 ', '', '', '', 1, 4, 4, 4, 1, 0, 0, 0, 14, 'csbs', 'usha', NULL, NULL),
(95, 'Out Pass', '2024-07-31', '2024-07-31', '07:10:00', '07:13:00', 'This is for demo', '2024-07-30 20:10:41', 'Ok You are approved ', NULL, NULL, NULL, '2024-07-31 7:13:10 ', '', '', '', 1, 4, 4, 4, 1, 0, 0, 0, 13, 'InformationTechnology', 'sivaperumal', NULL, NULL),
(96, 'Home Pass', '2024-07-31', '2024-07-31', '07:15:00', '07:18:00', 'Ok', '2024-07-30 20:15:04', 'Is ok ', 'it is CA', 'HIOD', 'VP', '2024-07-31 7:16:13 ', '2024-07-31 7:17:00 ', '2024-07-31 7:17:21 ', '2024-07-31 7:18:13 ', 1, 1, 1, 1, 1, 1, 1, 0, 13, 'InformationTechnology', 'sivaperumal', NULL, NULL),
(97, 'Out Pass', '2024-08-10', '2024-08-10', '21:40:00', '21:45:00', 'Ok', '2024-08-10 10:37:14', 'Ok', NULL, NULL, NULL, '2024-08-10 21:38:12 ', '', '', '', 1, 4, 4, 4, 1, 0, 0, 0, 14, 'csbs', 'usha', '09:20:32', '13:10:32'),
(98, 'Out Pass', '2024-08-12', '2024-08-11', '21:46:00', '21:45:00', 'Jj', '2024-08-10 10:43:59', 'hiii', NULL, NULL, NULL, '2024-08-10 21:45:35 ', '', '', '', 1, 4, 4, 4, 1, 0, 0, 0, 14, 'csbs', 'usha', '17:40:32', '21:57:32'),
(107, 'Out Pass', '2024-08-14', '2024-08-13', '04:24:00', '04:00:06', 'Yesss', '2024-08-13 04:24:57', 'Yess', NULL, NULL, NULL, '2024-08-13 15:26:16 ', '', '', '', 1, 4, 4, 4, 1, 0, 0, 0, 13, 'InformationTechnology', 'sivaperumal', '11:57:32', '15:57:32'),
(110, 'Home Pass', '2024-08-23', '2024-08-21', '04:00:00', '16:00:00', 'Permission for RTO Work', '2024-08-21 22:33:48', 'Ok All The Best', 'Ok Carry On', NULL, NULL, '2024-08-22 9:34:42 ', '2024-08-22 9:36:39 ', '', '', 1, 1, 1, 1, 1, 1, 1, 0, 13, 'InformationTechnology', 'sivaperumal', '14:57:32', '15:44:03'),
(111, 'Out Pass', '2024-08-22', '2024-08-22', '12:18:00', '16:00:00', 'm', '2024-08-22 01:02:20', 'm', NULL, NULL, NULL, '2024-08-22 12:03:16 ', '', '', '', 1, 4, 4, 4, 1, 0, 0, 0, 14, 'csbs', 'usha', '12:05:42', '12:18:51'),
(112, 'Out Pass', '2024-09-02', '2024-09-01', '09:00:00', '21:41:00', 'i an going out', '2024-09-02 08:39:29', 'yes', NULL, NULL, NULL, '2024-09-02 19:40:21 ', '', '', '', 1, 4, 4, 4, 1, 0, 0, 0, 13, 'InformationTechnology', 'sivaperumal', NULL, NULL),
(113, 'Out Pass', '2024-09-02', '2024-09-01', '09:00:00', '21:50:00', 'yes', '2024-09-02 08:48:07', 's', NULL, NULL, NULL, '2024-09-02 19:48:42 ', '', '', '', 1, 4, 4, 4, 1, 0, 0, 0, 14, 'csbs', 'usha', '19:52:36', '21:12:58'),
(114, 'Home Pass', '2024-09-03', '2024-09-02', '21:49:00', '21:55:00', 'going home', '2024-09-02 08:53:39', 'ss', 'ss', 's', 's', '2024-09-02 19:54:16 ', '2024-09-02 19:56:56 ', '2024-09-02 21:04:21 ', '2024-09-02 21:05:50 ', 1, 1, 1, 1, 1, 1, 1, 0, 14, 'csbs', 'usha', NULL, NULL),
(115, 'Home Pass', '2024-09-02', '2024-09-02', '21:07:00', '23:07:00', 'home', '2024-09-02 10:07:41', 's', 's', 's', 'P', '2024-09-02 21:08:23 ', '2024-09-02 21:09:48 ', '2024-09-02 21:10:24 ', '2025-02-03 12:16:21 ', 1, 1, 1, 1, 1, 1, 1, 0, 14, 'csbs', 'usha', NULL, NULL),
(116, 'Out Pass', '2024-09-20', '2024-09-20', '13:40:00', '17:43:00', 'Check', '2024-09-23 02:39:38', 'Ok', NULL, NULL, NULL, '2024-09-23 13:40:35 ', '', '', '', 1, 4, 4, 4, 1, 0, 0, 0, 13, 'InformationTechnology', 'sivaperumal', '13:42:03', '13:48:40'),
(117, 'Out Pass', '2024-09-23', '2024-09-23', '14:20:00', '17:20:00', 'chech', '2024-09-23 03:20:49', 'ok', NULL, NULL, NULL, '2024-09-23 14:21:44 ', '', '', '', 1, 4, 4, 4, 1, 0, 0, 0, 13, 'InformationTechnology', 'sivaperumal', '14:22:16', NULL),
(118, 'Home Pass', '2024-09-24', '2024-09-24', '11:49:00', '03:49:00', 'Check', '2024-09-24 00:49:58', 'Ok', 'DOne', 'Ok', 'Ok', '2024-09-24 11:51:16 ', '2024-09-24 11:51:55 ', '2024-09-24 11:52:12 ', '2024-09-24 11:52:27 ', 1, 1, 1, 1, 1, 1, 1, 0, 13, 'InformationTechnology', 'sivaperumal', NULL, NULL),
(119, 'Home Pass', '2024-09-25', '2024-09-24', '11:56:00', '17:00:00', 'Check', '2024-09-24 00:56:32', 'Ok', 'Ok', 'Ok', 'Ok', '2024-09-24 11:57:04 ', '2024-09-24 11:57:25 ', '2024-09-24 11:57:47 ', '2024-09-24 11:58:08 ', 1, 1, 1, 1, 1, 1, 1, 0, 13, 'InformationTechnology', 'sivaperumal', '11:58:22', NULL),
(120, 'Home Pass', '2024-09-27', '2024-09-26', '12:02:00', '09:02:00', 'cgeck', '2024-09-26 01:03:10', 'ok', 'ok', 'v', 'g', '2024-09-26 12:03:51 ', '2024-09-26 12:04:24 ', '2024-09-26 12:04:44 ', '2024-09-26 12:04:58 ', 1, 1, 1, 1, 1, 1, 1, 0, 13, 'InformationTechnology', 'sivaperumal', '12:05:26', NULL),
(121, 'Out Pass', '2025-01-04', '2025-01-04', '17:21:00', '17:21:00', 'Coffee adika poran ', '2025-01-04 11:52:08', 'Ok', NULL, NULL, NULL, '2025-01-17 1:22:48 ', '', '', '', 1, 4, 4, 4, 1, 0, 0, 0, 13, 'InformationTechnology', 'sivaperumal', NULL, NULL),
(122, 'Home Pass', '2025-01-19', '2025-01-19', '12:59:00', '14:30:00', 'Js', '2025-01-19 07:29:01', 'App', 'Ok', NULL, NULL, '2025-02-03 10:21:19 ', '2025-02-03 10:22:33 ', '', '', 1, 1, 1, 0, 1, 1, 0, 0, 13, 'InformationTechnology', 'sivaperumal', NULL, NULL),
(123, 'Out Pass', '2025-01-27', '2025-01-27', '11:00:00', '12:00:00', 'Nalla saapadu saapda poran sir ', '2025-01-27 06:19:05', 'Ok nala sapdu', NULL, NULL, NULL, '2025-01-27 11:52:14 ', '', '', '', 1, 4, 4, 4, 1, 0, 0, 0, 13, 'InformationTechnology', 'sivaperumal', '11:53:45', NULL),
(124, 'Out Pass', '2025-01-28', '2025-01-27', '15:25:00', '15:31:00', 'Check', '2025-01-27 10:01:45', 'Ok', NULL, NULL, NULL, '2025-01-27 15:33:15 ', '', '', '', 1, 4, 4, 4, 1, 0, 0, 0, 13, 'InformationTechnology', 'sivaperumal', NULL, NULL),
(125, 'Home Pass', '2025-02-04', '2025-02-04', '14:54:00', '16:54:00', 'Check', '2025-02-04 09:24:47', NULL, NULL, NULL, NULL, NULL, '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 13, 'InformationTechnology', 'sivaperumal', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `Leavetype` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleaveType` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(14, 'Out Pass', 'Checking', '2024-02-08 06:30:59'),
(15, 'Home Pass', 'Going for Home', '2024-02-10 03:51:07'),
(16, 'Pass Extender', 'To Extend the Pass Time ', '2024-02-13 11:45:04');

-- --------------------------------------------------------

--
-- Table structure for table `tblvp`
--

CREATE TABLE `tblvp` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `department` varchar(220) NOT NULL,
  `email` varchar(55) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvp`
--

INSERT INTO `tblvp` (`id`, `UserName`, `Password`, `fullname`, `department`, `email`, `status`, `updationDate`) VALUES
(1, 'Principal', 'd00f5d5217896fb7fd601412cb890830', 'HMS', 'all', 'principal@mail.com', 1, '2024-02-25 08:39:49'),
(2, 'VP', 'd00f5d5217896fb7fd601412cb890830', 'HMS', 'all', 'vp@mail.com', 1, '2024-08-22 03:57:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblwarden`
--

CREATE TABLE `tblwarden` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `department` varchar(220) NOT NULL,
  `email` varchar(55) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `updationdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblwarden`
--

INSERT INTO `tblwarden` (`id`, `UserName`, `Password`, `fullname`, `department`, `email`, `status`, `updationDate`) VALUES
(1, 'sivaperumal', 'd00f5d5217896fb7fd601412cb890830', 'HMS', 'informationtechnology', 'sivaperumal@mail.com', 1, '2024-02-20 23:59:24'),
(2, 'usha', 'd00f5d5217896fb7fd601412cb890830', 'HMS', 'csbs', 'usha@mail.com', 1, '2024-02-20 23:59:28'),
(4, 'lali', 'd00f5d5217896fb7fd601412cb890830', 'HMS', 'aids', 'slit@mail.com', 1, '2024-02-20 23:59:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblca`
--
ALTER TABLE `tblca`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhod`
--
ALTER TABLE `tblhod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvp`
--
ALTER TABLE `tblvp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwarden`
--
ALTER TABLE `tblwarden`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblca`
--
ALTER TABLE `tblca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `tblhod`
--
ALTER TABLE `tblhod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblvp`
--
ALTER TABLE `tblvp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblwarden`
--
ALTER TABLE `tblwarden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
