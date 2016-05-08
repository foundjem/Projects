-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 13, 2015 at 11:53 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admininfo`
--

CREATE TABLE IF NOT EXISTS `admininfo` (
  `USERNAME` varchar(40) NOT NULL,
  `PASSWORD` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admininfo`
--

INSERT INTO `admininfo` (`USERNAME`, `PASSWORD`) VALUES
('adminkjhosp', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE IF NOT EXISTS `bill` (
  `BillNo` int(11) NOT NULL AUTO_INCREMENT,
  `Amount` int(11) NOT NULL,
  `PID` int(10) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`BillNo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`BillNo`, `Amount`, `PID`, `Date`) VALUES
(1, 2000, 8, '2015-10-13');

-- --------------------------------------------------------

--
-- Table structure for table `doctorinfo`
--

CREATE TABLE IF NOT EXISTS `doctorinfo` (
  `DID` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(54) NOT NULL,
  `mname` varchar(54) NOT NULL,
  `lname` varchar(54) NOT NULL,
  `address` varchar(99) NOT NULL,
  `city` varchar(18) NOT NULL,
  `state` varchar(63) NOT NULL,
  `pincode` int(11) NOT NULL,
  `degree` varchar(54) NOT NULL,
  `college` varchar(45) NOT NULL,
  `year` int(11) NOT NULL,
  `Experience` varchar(500) NOT NULL,
  `NOY` varchar(4) NOT NULL,
  `Password` text NOT NULL,
  PRIMARY KEY (`DID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `doctorinfo`
--

INSERT INTO `doctorinfo` (`DID`, `fname`, `mname`, `lname`, `address`, `city`, `state`, `pincode`, `degree`, `college`, `year`, `Experience`, `NOY`, `Password`) VALUES
(6, 'Vivek', 'Balachandran', 'cc', 'New Panvel', 'Navi Mumbai', 'Maharastra', 0, 'MBBS', 'KEM', 2013, 'Leelavati Hospital', '6', 'iamvivek'),
(7, 'Mihir', '', 'Joshi', 'VidyaVihar', 'Mumbai', 'Maharastra', 0, 'BDS', 'KEM', 2014, 'Jaslok,Surgeon', '2', 'iammihir'),
(9, 'Darshan', 'Pankaj', 'Shah', 'Kandivali', 'Mumbai', 'Maharastra', 0, 'BDS', 'KEM', 2011, 'Fortis Hospital, Mulund, Consultant doctor', '4', 'iamdarshan'),
(10, 'Viral', '', 'Pasad', 'Mulund(East)', 'Mumbai', 'Maharastra', 400081, 'MDS', 'KEM', 2010, 'Fortis Hospital, Mulund, Consultant doctor', '3', '');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `FName` varchar(25) NOT NULL,
  `MName` varchar(25) NOT NULL,
  `LName` varchar(25) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `Age` int(11) NOT NULL,
  `Residential` text NOT NULL,
  `Mobile_No` text NOT NULL,
  `Office_No` text NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Blood_Group` varchar(4) NOT NULL,
  `Height_in_cm` int(3) NOT NULL,
  `Weight_in_kg` int(3) NOT NULL,
  `Allergy` varchar(50) NOT NULL,
  `PastHistory` varchar(200) NOT NULL,
  `PID` int(11) NOT NULL AUTO_INCREMENT,
  `Last_visit` date NOT NULL,
  `Gender` text NOT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`FName`, `MName`, `LName`, `Address`, `DOB`, `Age`, `Residential`, `Mobile_No`, `Office_No`, `Email`, `Blood_Group`, `Height_in_cm`, `Weight_in_kg`, `Allergy`, `PastHistory`, `PID`, `Last_visit`, `Gender`) VALUES
('Darshan', 'Pankaj', 'Shah', 'Kandivali', '1995-01-01', 20, '11111111', '2222222222', '33333333', 'dps@dfl.com', 'B+', 178, 80, 'Dust', 'Pneumonia', 6, '2015-10-11', 'Male'),
('Kritik', '', '', 'Thane', '1995-09-06', 20, '', '', '', 'kgkritik6@gmail.com', 'B+', 170, 67, '', 'Eye Surgery ', 7, '0000-00-00', 'Male'),
('Mohit', '', 'Shetty', 'Sion', '1995-08-30', 20, '9665989622', '', '', 'mohit.shetty@somaiya.edu', 'B+', 170, 60, 'None', 'None', 8, '0000-00-00', 'Male'),
('Sanat', 'Jayantilal', 'Kondhol', 'Goregaon', '2001-10-04', 14, '9987886511', '', '', 'skondhol@somaiya.edu', 'B+', 170, 60, 'Darshan', 'AIDS', 9, '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE IF NOT EXISTS `prescription` (
  `PID` int(11) NOT NULL,
  `DID` int(11) NOT NULL,
  `Prescription` text NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`PID`, `DID`, `Prescription`, `Date`) VALUES
(6, 6, 'Paracetamol\r\nBenadril', '2015-10-13'),
(5, 6, 'clotrimazole', '2015-10-13'),
(6, 6, 'viagra', '2015-10-13');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `Staff_ID` varchar(40) NOT NULL,
  `Password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Staff_ID`, `Password`) VALUES
('33221100', 'iamreceptionist');
