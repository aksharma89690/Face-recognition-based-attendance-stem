-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 05, 2019 at 08:51 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vidattendence`
--
CREATE DATABASE `vidattendence` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `vidattendence`;

-- --------------------------------------------------------

--
-- Table structure for table `att`
--

CREATE TABLE IF NOT EXISTS `att` (
  `name` varchar(50) NOT NULL,
  `adate` varchar(50) NOT NULL,
  `pstatus` varchar(50) NOT NULL,
  `ptime` varchar(50) NOT NULL,
  UNIQUE KEY `name` (`name`,`adate`,`ptime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `att`
--

INSERT INTO `att` (`name`, `adate`, `pstatus`, `ptime`) VALUES
('abc8', '05/04/2019', 'p', '14:09:00'),
('abc8', '05/04/2019', 'p', '14:13:34');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--



CREATE TABLE IF NOT EXISTS `student` (
  `sid` varchar(100) DEFAULT NULL,
  `Student_Name` varchar(100) DEFAULT NULL,
  `Student_Std` varchar(100) DEFAULT NULL,
  `phoneno` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `Student_Name`, `Student_Std`, `phoneno`, `email`) VALUES

('1565410035', 'pranika', 'COMPS(B.E)', '9654106940', 'prnika27@gmil.com');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`username`, `password`) VALUES
('a', 'a'),
('b', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--
