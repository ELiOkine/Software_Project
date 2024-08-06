-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2024 at 07:39 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Database: `AJCsystem`
--

-- Table structure for table `admin`
--
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `photo`, `role`) VALUES
(1, 'Mayuri K', 'mayuri.infospace@gmail.com', '1234', '05profile.jpg', 'Dean'),
(2, 'John Doe', 'john.doe@university.edu', '1234', 'profile_john.jpg', 'Academic Chair'),
(3, 'Jane Smith', 'jane.smith@university.edu', '1234', 'profile_jane.jpg', 'JEC'),
(4, 'Michael Johnson', 'michael.johnson@university.edu', '1234', 'profile_michael.jpg', 'HOD');

-- Table structure for table `case_register`
--
DROP TABLE IF EXISTS `case_register`;
CREATE TABLE `case_register` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `case_no` varchar(20) NOT NULL,
  `Student_name` varchar(50) NOT NULL,
  `case_type` varchar(50) NOT NULL,
  `case_stage` varchar(50) NOT NULL,
  `legal_acts` varchar(50) NOT NULL,
  `evidence_found` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `filling_date` date NOT NULL,
  `hearing_date` date NOT NULL,
  `punishment` varchar(50) NOT NULL,
  `verdict` varchar(50) NOT NULL
  
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table `case_register`
--

INSERT INTO `case_register` (`id`, `title`, `case_no`, `client_name`, `case_type`, `case_stage`, `legal_acts`, `evidence_found`, `description`, `filling_date`, `hearing_date`, `punishment`, `verdict`) VALUES
(1, 'Academic Misconduct', 'AM1234', 'John Doe', 'Academic Dishonesty', 'Initial Review', 'Section 7.4', 'Unauthorized use of materials', 'Caught using unauthorized materials during exam', '2024-07-01', '2024-07-15', 'Suspension', 'Guilty'),
(2, 'Sexual Misconduct', 'SM5678', 'Jane Smith', 'Sexual Misconduct', 'Investigation', 'Section 10.16', 'Witness statements', 'Accused of sexual harassment', '2024-06-20', '2024-08-01', 'Expulsion', 'Pending'),
(3, 'Social Misconduct', 'FI9101', 'Alice Johnson', 'Social Misconduct', 'Hearing', 'Section 9.2', 'False documents', 'Provided false information to the university', '2024-05-10', '2024-07-25', 'Probation', 'Not Guilty'),
(4, 'Physical Violence', 'PV2345', 'Bob Brown', 'Social Misconduct', 'Hearing', 'Section 10.9', 'Video evidence', 'Involved in a fight on campus', '2024-04-15', '2024-08-10', 'Community Service', 'Guilty'),
(5, 'Harassment', 'H6789', 'Charlie Davis', 'Social Misconduct', 'Hearing', 'Section 10.11', 'Emails and texts', 'Accused of bullying and verbal abuse', '2024-03-05', '2024-07-30', 'Warning', 'Guilty');

-- Table structure for table `case_stage`
--
DROP TABLE IF EXISTS `case_stage`;
CREATE TABLE `case_stage` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL COMMENT '0-active,1-deactive'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table `case_stage`
--

INSERT INTO `case_stage` (`id`, `name`, `status`) VALUES
(1, 'Report Received', 'Pending'),
(2, 'Investigation', 'Pending'),
(3, 'Hearing', 'Pending'),
(4, 'Deliberation', 'Pending'),
(5, 'Verdict', 'Pending');

-- Table structure for table `case_types`
--
DROP TABLE IF EXISTS `case_types`;
CREATE TABLE `case_types` (
  `id` int(11) NOT NULL,
  `case_type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table `case_types`
--

INSERT INTO `case_types` (`id`, `case_type`) VALUES
(1, 'Social Misconduct'),
(2, 'Sexual Misconduct'),
(3, 'Academic Misconduct');

-- Table structure for table `students`
--
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int(8) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL COMMENT '0-active,1-deactive'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `gender`, `dob`, `email`, `mobile`, `address`, `status`) VALUES
(1, 'John Doe', 'Male', '1990-05-15', 'john.doe@example.com', '1234567890', '123 Main St, City, Country', '0'),
(10, 'Ava Garcia', 'Female', '1998-06-08', 'ava.garcia@example.com', '5678901234', '876 Elm St, Town, Country', '0');

-- Table structure for table `legal_acts`
--
DROP TABLE IF EXISTS `legal_acts`;
CREATE TABLE `legal_acts` (
  `id` int(11) NOT NULL,
  `act_name` varchar(100) NOT NULL,
  `status` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table `legal_acts`
--

INSERT INTO `legal_acts` (`id`, `act_name`, `status`) VALUES
(1, 'Section 10.16: Sexual misconduct', 0),
(2, 'Section 10.13: Responsibility to ensure mutual consent', 0),
(3, 'Section 12.11: Repeat Offender', 0),
(4, 'Section 9.2: Providing false information', 0),
(5, 'Section 7.5: Misrepresentation and cheating', 0),
(6, 'Section 10.15: Sexual assault without consent', 0),
(7, 'Section 10.13: Lack of consent due to impairment', 0),
(8, 'Section 12.6: Social misconduct', 0),
(9, 'Section 10.9: Physical violence against others', 0),
(10, 'Section 10.11: Harassment', 0),
(11, 'Section 7.4: Academic dishonesty', 0),
(12, 'Section 8.1: Prohibition on exchanging information or materials during an exam', 0),
(13, 'Section 8.2: Mobile phones and electronic devices', 0),
(14, 'Section 8.3: Discouraging or intimidating participants in an Exam Honour Code investigation', 0),
(15, 'Section 7.5: Condoning cheating, plagiarism, and falsification', 0),
(16, 'Section 10.16: Sexual Misconduct', 0),
(17, 'Section 8.5: Violating policies and regulations', 0),
(18, 'Section 9.4: Theft', 0),
(19, 'Section 7.4: Academic Dishonesty - Plagiarism', 0);

-- Indexes for dumped tables
--

-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

-- Indexes for table `case_register`
--
ALTER TABLE `case_register`
  ADD PRIMARY KEY (`id`);

-- Indexes for table `case_stage`
--
ALTER TABLE `case_stage`
  ADD PRIMARY KEY (`id`);

-- Indexes for table `case_types`
--
ALTER TABLE `case_types`
  ADD PRIMARY KEY (`id`);

-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

-- Indexes for table `legal_acts`
--
ALTER TABLE `legal_acts`
  ADD PRIMARY KEY (`id`);

-- AUTO_INCREMENT for dumped tables
--

-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

-- AUTO_INCREMENT for table `case_register`
--
ALTER TABLE `case_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

-- AUTO_INCREMENT for table `case_stage`
--
ALTER TABLE `case_stage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

-- AUTO_INCREMENT for table `case_types`
--
ALTER TABLE `case_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

-- AUTO_INCREMENT for table `legal_acts`
--
ALTER TABLE `legal_acts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;
