-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2020 at 08:40 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookings`
--

-- --------------------------------------------------------

--
-- Table structure for table `booker`
--

CREATE TABLE `booker` (
  `Id_Booker` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Address` varchar(150) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `Id_Booking` int(11) NOT NULL,
  `Id_Booker` int(11) NOT NULL,
  `Id_Room` int(11) DEFAULT NULL,
  `Title` varchar(45) NOT NULL,
  `Date` date NOT NULL,
  `Notes` text DEFAULT NULL,
  `Start` time(4) NOT NULL,
  `Duration` time(4) NOT NULL,
  `Provisional` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`Id_Booking`, `Id_Booker`, `Id_Room`, `Title`, `Date`, `Notes`, `Start`, `Duration`, `Provisional`) VALUES
(12, 12, 12, 'solehin try', '2020-04-29', 'idk', '01:20:00.0000', '02:00:00.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `booking_facility`
--

CREATE TABLE `booking_facility` (
  `Id_Booking` int(11) NOT NULL,
  `Id_Facility` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `facility`
--

CREATE TABLE `facility` (
  `Id_Facility` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facility`
--

INSERT INTO `facility` (`Id_Facility`, `Name`, `Order`) VALUES
(1, 'A', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `iventori`
--

CREATE TABLE `iventori` (
  `ID Barang` int(11) NOT NULL,
  `Kategori Iventori` varchar(100) NOT NULL,
  `Nama Barang` varchar(100) NOT NULL,
  `Catatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booker`
--
ALTER TABLE `booker`
  ADD PRIMARY KEY (`Id_Booker`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`Id_Booking`);

--
-- Indexes for table `booking_facility`
--
ALTER TABLE `booking_facility`
  ADD PRIMARY KEY (`Id_Booking`,`Id_Facility`),
  ADD KEY `fk_booking_facility_facility_idx` (`Id_Facility`);

--
-- Indexes for table `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`Id_Facility`);

--
-- Indexes for table `iventori`
--
ALTER TABLE `iventori`
  ADD PRIMARY KEY (`ID Barang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booker`
--
ALTER TABLE `booker`
  MODIFY `Id_Booker` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `Id_Booking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `facility`
--
ALTER TABLE `facility`
  MODIFY `Id_Facility` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iventori`
--
ALTER TABLE `iventori`
  MODIFY `ID Barang` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
