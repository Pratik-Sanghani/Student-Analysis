-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2018 at 03:46 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `logintable`
--

CREATE TABLE `logintable` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `utype` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logintable`
--

INSERT INTO `logintable` (`username`, `password`, `utype`) VALUES
('divu@123', '1234', 'Student'),
('pk@123', '123', 'Student'),
('Pratik', '1234', 'Student'),
('pratik@123', '1234', 'Student'),
('pratik@1234', '123', 'Student'),
('pratik@12345', '12345', 'Student'),
('sagar@123', '123', 'Student'),
('Shyam', '1234', 'Professor');

-- --------------------------------------------------------

--
-- Table structure for table `markdata`
--

CREATE TABLE `markdata` (
  `enrollment` varchar(12) NOT NULL,
  `sub` varchar(100) NOT NULL,
  `grade` varchar(2) NOT NULL,
  `sem` int(11) NOT NULL,
  `gyear` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `markdata`
--

INSERT INTO `markdata` (`enrollment`, `sub`, `grade`, `sem`, `gyear`) VALUES
('null', 'Advanced Engineering Mathematics', 'BB', 3, 0),
('150210107030', 'DESIGN ENGINEERING - II A', 'AA', 5, 2019),
('null', 'Computer Organization', 'AB', 4, 0),
('150210107030', 'Project - I', 'AA', 7, 2019),
('150210107030', 'Artificial Intelligence', 'AA', 8, 2019),
('150210107019', 'Basic Electronics', 'AA', 2, 2019),
('150210107019', 'Advanced Java', 'AB', 6, 2019),
('150210107058', 'Communication Skills', 'AA', 1, 2019),
('150210107058', 'Advanced Engineering Mathematics', 'AA', 3, 2019),
('150210107058', 'Engineering Economics and Management', 'BC', 3, 2019),
('150210107058', 'Design Engineering - I A', 'AA', 3, 2019),
('150210107058', 'Calculus', 'AA', 1, 2019),
('150210107058', 'Elements of Mechanical Engineering', 'AB', 2, 2019);

-- --------------------------------------------------------

--
-- Table structure for table `profdata`
--

CREATE TABLE `profdata` (
  `username` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `branch` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profdata`
--

INSERT INTO `profdata` (`username`, `name`, `branch`) VALUES
('Shyam', 'Shyam Kanani', 'CE');

-- --------------------------------------------------------

--
-- Table structure for table `studentdata`
--

CREATE TABLE `studentdata` (
  `username` varchar(30) NOT NULL,
  `enrollment` text NOT NULL,
  `name` varchar(30) NOT NULL,
  `sem` int(11) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `gyear` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentdata`
--

INSERT INTO `studentdata` (`username`, `enrollment`, `name`, `sem`, `branch`, `gyear`) VALUES
('pratik@123', '150210107058', 'Pratik Sanghani', 6, 'CE', 2019),
('divu@123', '150210107034', 'Divyesh Makwana', 6, 'CE', 2019),
('pratik@1234', '150210107040', 'hgfgh', 6, 'jhg', 2019),
('pratik@12345', '150210107098', 'jjfh', 9, 'jjj', 2017),
('pk@123', '150210107030', 'Pinakin', 6, 'CE', 2019),
('sagar@123', '150210107019', 'Sagar Gohil', 6, 'CE', 2019);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logintable`
--
ALTER TABLE `logintable`
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `profdata`
--
ALTER TABLE `profdata`
  ADD UNIQUE KEY `username` (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
