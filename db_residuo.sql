-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2021 at 11:14 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_residuo`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoria_residuo`
--

CREATE TABLE `categoria_residuo` (
  `id` int(11) NOT NULL,
  `nombre_residuo` varchar(64) NOT NULL,
  `categoria` varchar(64) NOT NULL,
  `reciclable` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categoria_residuo`
--

INSERT INTO `categoria_residuo` (`id`, `nombre_residuo`, `categoria`, `reciclable`) VALUES
(1, 'water_bottle', 'other', 'NO'),
(2, 'nipple', 'other', 'NO'),
(3, 'pop_bottle', 'other', 'NO'),
(4, 'beer_bottle', 'other', 'NO'),
(5, 'bubble', 'other', 'NO'),
(6, 'water_bottle', 'plastic', 'SI'),
(7, 'nipple', 'other', 'NO'),
(8, 'pop_bottle', 'plastic', 'SI'),
(9, 'beer_bottle', 'plastic', 'SI'),
(10, 'bubble', 'other', 'NO'),
(11, 'water_bottle', 'plastic', 'SI'),
(12, 'nipple', 'other', 'NO'),
(13, 'pop_bottle', 'plastic', 'SI'),
(14, 'beer_bottle', 'plastic', 'SI'),
(15, 'bubble', 'other', 'NO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria_residuo`
--
ALTER TABLE `categoria_residuo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria_residuo`
--
ALTER TABLE `categoria_residuo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
