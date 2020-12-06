-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2020 at 10:01 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `Application_id` int(100) NOT NULL,
  `Student_id` varchar(255) NOT NULL,
  `Hostel_id` int(10) NOT NULL,
  `Application_status` tinyint(1) DEFAULT NULL,
  `Room_No` int(10) DEFAULT NULL,
  `Message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`Application_id`, `Student_id`, `Hostel_id`, `Application_status`, `Room_No`, `Message`) VALUES
(33, '1', 6, 0, 123, 'need room'),
(35, '12', 1, 1, 21, 'NEED ROOM!'),
(36, '2', 1, 1, 31, 'NEED ROOM'),
(37, '5', 6, 0, 0, 'NEED ROOM!'),
(38, '3', 6, 0, 0, 'NEED ROOM'),
(39, '40', 6, 0, 0, 'NEED ROOM!');

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `Hostel_id` int(10) NOT NULL,
  `Hostel_name` varchar(255) NOT NULL,
  `current_no_of_rooms` varchar(255) DEFAULT NULL,
  `No_of_rooms` varchar(255) DEFAULT NULL,
  `No_of_students` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`Hostel_id`, `Hostel_name`, `current_no_of_rooms`, `No_of_rooms`, `No_of_students`) VALUES
(1, 'A', NULL, '400', NULL),
(2, 'B', NULL, '400', NULL),
(3, 'C', NULL, '400', NULL),
(4, 'D', NULL, '400', NULL),
(5, 'E', NULL, '400', NULL),
(6, 'F', NULL, '400', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hostel_manager`
--

CREATE TABLE `hostel_manager` (
  `Hostel_man_id` int(10) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Username` varchar(255) NOT NULL,
  `Fname` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `Mob_no` varchar(255) NOT NULL,
  `Hostel_id` int(10) NOT NULL,
  `Pwd` longtext NOT NULL,
  `Isadmin` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel_manager`
--

INSERT INTO `hostel_manager` (`Hostel_man_id`, `Email`, `Username`, `Fname`, `Lname`, `Mob_no`, `Hostel_id`, `Pwd`, `Isadmin`) VALUES
(12, NULL, 'dhruv', 'dhruv', 'khara', '1234567890', 3, '$2y$10$yItEfbHe7EMszNBZ/foGs.ucu4Xzjj3zPLhfTC1aTzwZjdLAFmeDK', 1),
(126, 'dhruvkhara@gmail.com', 'Rutvik123', 'Dhruv', 'Khara', '+917977332920', 1, '$2y$10$1RK2uUAKtN3fjC0/9R4jtuUHgbskimOoG75MqDMVjsIHnAQHz8eDm', 0),
(127, 'dhruvkhara@gmail.com', 'Chriag', 'Dhruv', 'Khara', '+917977332920', 3, '$2y$10$lePpzo48CoZSsOrv4y/Xvurzkibv1Yvog9VepP/InRc.TzkfEx56C', 0);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `msg_id` int(10) NOT NULL,
  `sender_id` varchar(255) DEFAULT NULL,
  `receiver_id` varchar(255) DEFAULT NULL,
  `hostel_id` int(10) DEFAULT NULL,
  `subject_h` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `msg_date` varchar(255) DEFAULT NULL,
  `msg_time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`msg_id`, `sender_id`, `receiver_id`, `hostel_id`, `subject_h`, `message`, `msg_date`, `msg_time`) VALUES
(13, '40', '126', 1, '140000', 'WHY? so much', '2020-11-25', '07:06 AM'),
(14, '40', '125', 6, '140000', 'asfasfasfasfasf', '2020-11-25', '07:06 AM'),
(15, '40', '126', 1, 'ABCD', 'ABCD', '2020-11-25', '07:07 AM'),
(16, '40', '125', 6, 'ABCD', 'ABCD', '2020-11-25', '07:09 AM'),
(17, '40', '125', 6, '140000', 'fasfasfasfasf', '2020-11-25', '07:12 AM'),
(18, '2', '125', 6, 'cold water', 'please provide cold water', '2020-11-25', '09:23 AM'),
(19, '125', '4', 6, 'ok', 'done', '2020-11-25', '09:23 AM'),
(20, '125', '40', 6, 'cold water', 'DASDASDASDADA', '2020-11-25', '09:25 AM'),
(21, '126', '2', 1, 'cold water', 'DONE', '2020-11-25', '09:26 AM'),
(22, '2', '126', 1, 'cold water', 'NEED COLD WATER', '2020-11-25', '09:51 AM'),
(23, '125', '3', 6, 'COLD', 'DONE', '2020-11-25', '09:55 AM');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Room_id` int(10) NOT NULL,
  `Hostel_id` int(10) NOT NULL,
  `Room_No` int(10) NOT NULL,
  `Allocated` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Room_id`, `Hostel_id`, `Room_No`, `Allocated`) VALUES
(1, 6, 123, 1),
(2, 1, 11, 0),
(3, 1, 21, 1),
(4, 1, 21, 1),
(5, 1, 31, 1),
(6, 6, 1, 1),
(7, 6, 2, 1),
(8, 6, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_id` varchar(255) NOT NULL,
  `Fname` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `Mob_no` varchar(255) NOT NULL,
  `Dept` varchar(255) NOT NULL,
  `Year_of_study` varchar(255) NOT NULL,
  `Pwd` longtext NOT NULL,
  `Hostel_id` int(10) DEFAULT NULL,
  `Room_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_id`, `Fname`, `Lname`, `Mob_no`, `Dept`, `Year_of_study`, `Pwd`, `Hostel_id`, `Room_id`) VALUES
('1', 'Jay', 'Panchal', '1212121212', 'Comps', '2020', '$2y$10$lVBwtwlzK/q1.IPDwIneIeba/5rLHMMDtfBCYx11qZw7rHCGjE3J2', 6, 1),
('12', 'Harmish', 'Gothi', '1234567890', 'Comps', '2020', '$2y$10$DqBEXEj6BPhmCOzxQtb46OpiGFZpd1E6w.DHbaKrjuiZr4d46/fSi', 1, 4),
('2', 'Jimit', 'Mehta', '1234567890', 'Comps', '2020', '$2y$10$X2Tdi8iOPygJoYgIRHIPs.SVJobvgsEq8JnQjrMz4mNIM.moC9Xm2', 1, 5),
('3', 'Abhijeet', 'Kundu', '1234567890', 'Comps', '2020', '$2y$10$F9ZASIMopEXhnuER9f4sSu4dPWi9uRMrrWOpwi270lkYZxu4OJqOi', 6, 8),
('4', 'Raj', 'Mehta', '9876543210', 'Comps', '2020', '$2y$10$nTYJyOmW57OyeR8UqfxRl.eCawcqv3iyo1/xBVjRMlFLUEsYrR2ma', NULL, NULL),
('40', 'Dhruv', 'Khara', '+917977332920', 'Comps', '2020', '$2y$10$yItEfbHe7EMszNBZ/foGs.ucu4Xzjj3zPLhfTC1aTzwZjdLAFmeDK', 6, NULL),
('5', 'Harsh', 'Chauhan', '1212121212', 'Comps', '2020', '$2y$10$Dt4fKPvPEBsNBeWKjRJjHOm7v4nLPKL.DXqxYncU.dzCJNDTFcckC', 6, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`Application_id`),
  ADD KEY `Student_id` (`Student_id`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`Hostel_id`);

--
-- Indexes for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  ADD PRIMARY KEY (`Hostel_man_id`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `hostel_id` (`hostel_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Room_id`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_id`),
  ADD KEY `Hostel_id` (`Hostel_id`),
  ADD KEY `Room_id` (`Room_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `Application_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `hostel`
--
ALTER TABLE `hostel`
  MODIFY `Hostel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  MODIFY `Hostel_man_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `msg_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `Room_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `Application_ibfk_1` FOREIGN KEY (`Student_id`) REFERENCES `student` (`Student_id`),
  ADD CONSTRAINT `Application_ibfk_2` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`);

--
-- Constraints for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  ADD CONSTRAINT `Hostel_Manager_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `Message_ibfk_1` FOREIGN KEY (`hostel_id`) REFERENCES `hostel` (`Hostel_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `Room_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `Student_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`),
  ADD CONSTRAINT `Student_ibfk_2` FOREIGN KEY (`Room_id`) REFERENCES `room` (`Room_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
