-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2025 at 07:50 PM
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
-- Database: `attendence_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendence_details`
--

CREATE TABLE `attendence_details` (
  `faculty_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `on_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_allotement`
--

CREATE TABLE `course_allotement` (
  `faculty_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_allotment`
--

CREATE TABLE `course_allotment` (
  `faculty_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_allotment`
--

INSERT INTO `course_allotment` (`faculty_id`, `course_id`, `session_id`) VALUES
(1, 0, 1),
(1, 1, 1),
(1, 3, 2),
(1, 4, 2),
(2, 2, 2),
(2, 3, 1),
(2, 4, 2),
(2, 5, 1),
(3, 0, 1),
(3, 4, 1),
(3, 4, 2),
(3, 5, 2),
(4, 3, 1),
(4, 3, 2),
(4, 5, 1),
(4, 5, 2),
(5, 0, 2),
(5, 3, 1),
(5, 4, 1),
(5, 4, 2),
(6, 1, 2),
(6, 2, 1),
(6, 2, 2),
(6, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_details`
--

CREATE TABLE `course_details` (
  `id` int(11) NOT NULL,
  `code_no` varchar(20) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_details`
--

INSERT INTO `course_details` (`id`, `code_no`, `title`, `credit`) VALUES
(49, 'CS101', 'Introduction to Programming', 4),
(50, 'CS102', 'Data Structures', 4),
(51, 'CS103', 'Database Management Systems', 4),
(52, 'CS104', 'Computer Networks', 4),
(53, 'CS105', 'Operating Systems', 4),
(54, 'CS106', 'Software Engineering', 3);

-- --------------------------------------------------------

--
-- Table structure for table `course_registration`
--

CREATE TABLE `course_registration` (
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_registration`
--

INSERT INTO `course_registration` (`student_id`, `course_id`, `session_id`) VALUES
(1, 1, 1),
(1, 3, 2),
(1, 4, 1),
(1, 4, 2),
(2, 1, 1),
(2, 1, 2),
(2, 4, 1),
(2, 4, 2),
(3, 1, 1),
(3, 1, 2),
(3, 4, 2),
(3, 5, 1),
(4, 0, 1),
(4, 2, 1),
(4, 3, 2),
(4, 4, 2),
(5, 2, 1),
(5, 2, 2),
(5, 3, 2),
(5, 5, 1),
(6, 1, 1),
(6, 1, 2),
(6, 3, 2),
(6, 4, 1),
(7, 0, 2),
(7, 2, 2),
(7, 3, 1),
(7, 5, 1),
(8, 0, 1),
(8, 0, 2),
(8, 1, 2),
(8, 4, 1),
(9, 0, 1),
(9, 1, 2),
(9, 2, 2),
(9, 4, 1),
(10, 0, 2),
(10, 2, 1),
(10, 2, 2),
(10, 3, 1),
(11, 2, 1),
(11, 2, 2),
(11, 3, 1),
(11, 5, 2),
(12, 0, 1),
(12, 1, 1),
(12, 4, 2),
(12, 5, 2),
(13, 1, 1),
(13, 2, 1),
(13, 4, 2),
(13, 5, 2),
(14, 0, 1),
(14, 1, 1),
(14, 1, 2),
(14, 2, 2),
(15, 2, 1),
(15, 2, 2),
(15, 4, 1),
(15, 4, 2),
(16, 0, 1),
(16, 2, 2),
(16, 3, 1),
(16, 5, 2),
(17, 1, 1),
(17, 1, 2),
(17, 3, 1),
(17, 5, 2),
(18, 0, 1),
(18, 2, 2),
(18, 3, 1),
(18, 5, 2),
(19, 1, 1),
(19, 1, 2),
(19, 2, 1),
(19, 3, 2),
(20, 2, 1),
(20, 2, 2),
(20, 3, 1),
(20, 3, 2),
(21, 0, 1),
(21, 2, 1),
(21, 2, 2),
(21, 3, 2),
(22, 0, 1),
(22, 4, 2),
(22, 5, 1),
(22, 5, 2),
(23, 1, 1),
(23, 1, 2),
(23, 4, 2),
(23, 5, 1),
(24, 0, 1),
(24, 1, 2),
(24, 5, 1),
(24, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_details`
--

CREATE TABLE `faculty_details` (
  `id` int(11) NOT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_details`
--

INSERT INTO `faculty_details` (`id`, `user_name`, `name`, `password`) VALUES
(49, 'ajayk', 'Ajay Kumar', 'pass123'),
(50, 'nehas', 'Neha Sharma', 'neha@123'),
(51, 'rgupta', 'Rajeev Gupta', 'raj@321'),
(52, 'smita', 'Smita Das', 'smita@456'),
(53, 'pjoshi', 'Pooja Joshi', 'pj1234'),
(54, 'manishv', 'Manish Verma', 'manish@789');

-- --------------------------------------------------------

--
-- Table structure for table `session_details`
--

CREATE TABLE `session_details` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `term` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session_details`
--

INSERT INTO `session_details` (`id`, `year`, `term`) VALUES
(51, 2022, 'Fall Semester'),
(49, 2022, 'Spring Semester'),
(50, 2022, 'Summer Semester'),
(52, 2022, 'Winter Semester'),
(53, 2023, 'Spring Semester'),
(54, 2023, 'Summer Semester');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `id` int(11) NOT NULL,
  `roll_no` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`id`, `roll_no`, `name`) VALUES
(121, 'CSB21001', 'Pankaj Saini'),
(123, 'CSB21003', 'Jiya Chaudhary'),
(124, 'CSB21004', 'SWAPNIL DEB'),
(125, 'CSB21005', 'AONEK AMARTYA KHYON HAZARIKA'),
(126, 'CSB21006', 'ANTARIP LAHKAR'),
(127, 'CSB21007', 'GURVINDRA SINGH'),
(128, 'CSB21008', 'DEBANGANA SAHA'),
(129, 'CSB21009', 'PRANAY BHARAT GAIKWAD'),
(130, 'CSB21010', 'ROMIT KUMAR'),
(131, 'CSB21011', 'TAMANNA NEGER'),
(132, 'CSB21012', 'ARNAB CHAKRABORTY'),
(133, 'CSM21001', 'UTTARA SAHA'),
(134, 'CSM21002', 'PROBAL DEEP SAIKIA'),
(135, 'CSM21003', 'SUBHROJIT SAIKIA'),
(136, 'CSM21004', 'GURLEEN KAUR'),
(137, 'CSM21005', 'RACHNA HARALKA'),
(138, 'CSM21006', 'CHITRANKANA BHOWMIK'),
(139, 'CSM21007', 'HRITTIK BARUAH'),
(140, 'CSM21008', 'PRAGYANUR SAIKIA'),
(141, 'CSM21009', 'BIKRAM PAPANJYA'),
(142, 'CSM21010', 'SHABBIR HUSSAIN'),
(143, 'CSM21011', 'ANUPAM BISWAS'),
(145, 'CSB21013', 'GEETANSHI SINGH'),
(147, 'CSB21014', 'Yash Tyagi');

-- --------------------------------------------------------

--
-- Table structure for table `tab1`
--

CREATE TABLE `tab1` (
  `id` int(11) NOT NULL,
  `roll_no` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tab2`
--

CREATE TABLE `tab2` (
  `id` int(11) NOT NULL,
  `col2` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tab3`
--

CREATE TABLE `tab3` (
  `id` int(11) NOT NULL,
  `col2` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tab4`
--

CREATE TABLE `tab4` (
  `id` int(11) NOT NULL,
  `col2` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$tn1oqjqZiEyOS3xuTrsvfuJpNW.cP5AgyV4qn0/uXEKq3OMDTj2Fa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendence_details`
--
ALTER TABLE `attendence_details`
  ADD PRIMARY KEY (`faculty_id`,`course_id`,`session_id`,`student_id`,`on_date`,`status`);

--
-- Indexes for table `course_allotement`
--
ALTER TABLE `course_allotement`
  ADD PRIMARY KEY (`faculty_id`,`course_id`,`session_id`);

--
-- Indexes for table `course_allotment`
--
ALTER TABLE `course_allotment`
  ADD PRIMARY KEY (`faculty_id`,`course_id`,`session_id`);

--
-- Indexes for table `course_details`
--
ALTER TABLE `course_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code_no` (`code_no`);

--
-- Indexes for table `course_registration`
--
ALTER TABLE `course_registration`
  ADD PRIMARY KEY (`student_id`,`course_id`,`session_id`);

--
-- Indexes for table `faculty_details`
--
ALTER TABLE `faculty_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `session_details`
--
ALTER TABLE `session_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `year` (`year`,`term`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roll_no` (`roll_no`);

--
-- Indexes for table `tab1`
--
ALTER TABLE `tab1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roll_no` (`roll_no`);

--
-- Indexes for table `tab2`
--
ALTER TABLE `tab2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab3`
--
ALTER TABLE `tab3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab4`
--
ALTER TABLE `tab4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_details`
--
ALTER TABLE `course_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `faculty_details`
--
ALTER TABLE `faculty_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `session_details`
--
ALTER TABLE `session_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `tab1`
--
ALTER TABLE `tab1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tab2`
--
ALTER TABLE `tab2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tab3`
--
ALTER TABLE `tab3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tab4`
--
ALTER TABLE `tab4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
