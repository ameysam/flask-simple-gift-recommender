-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 03, 2020 at 01:10 PM
-- Server version: 10.1.41-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gift-recommender`
--

-- --------------------------------------------------------

--
-- Table structure for table `predictions`
--

CREATE TABLE `predictions` (
  `id` int(10) UNSIGNED NOT NULL,
  `age` tinyint(3) UNSIGNED NOT NULL,
  `gender` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `predictions`
--

INSERT INTO `predictions` (`id`, `age`, `gender`, `name`) VALUES
(1, 1, 1, '\"پستونک\",\"شیشه شیر\",\"ماین\",\"موتور\",\"شمشیر\"'),
(2, 1, 0, '\"پستونک\",\"عروسک\",\"شیشه شیر\",\"اسباب بازی\"'),
(3, 2, 1, '\"توپ\",\"دوچرخه\",\"لوازم تحریر\"'),
(4, 2, 0, '\"چادر\",\"لوازم تحریر\"'),
(5, 3, 1, '\"لباس\",\"تلفن همراه\",\"لپتاپ\",\"ماشین\",\"موتور\"'),
(6, 3, 0, '\"لباس\",\"ماشین\",\"تلفن همراه\",\"شوهر\",\"لپتاپ\"'),
(7, 4, 1, '\"پیرهن\",\"شلوار\",\"کت و شلوار\",\"جوراب\",\"پیژامه\"'),
(8, 4, 0, '\"روسری\",\"تیشرت\",\"لباس خواب\",\"کفش\",\"لوازم آرایشی\"'),
(9, 5, 1, '\"پیرهن\",\"شلوار\",\"کت و شلوار\",\"جوراب\",\"پیژامه\"'),
(10, 5, 0, '\"روسری\",\"تیشرت\",\"لباس خواب\",\"کفش\",\"لوازم آرایشی\"');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `predictions`
--
ALTER TABLE `predictions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `predictions`
--
ALTER TABLE `predictions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
