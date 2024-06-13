-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 13, 2024 at 03:24 AM
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
-- Database: `sah`
--

-- --------------------------------------------------------

--
-- Table structure for table `kontakt`
--

CREATE TABLE `kontakt` (
  `id` int(11) NOT NULL,
  `imeprezime` varchar(45) NOT NULL,
  `datum` date NOT NULL,
  `iskustvo` int(1) NOT NULL,
  `fide` int(1) NOT NULL,
  `slika` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kontakt`
--

INSERT INTO `kontakt` (`id`, `imeprezime`, `datum`, `iskustvo`, `fide`, `slika`) VALUES
(5, 'jedbi', '2024-06-04', 2, 5, 'image.png'),
(6, 'Fre', '2024-06-29', 1, 2, 'Screenshot 2024-04-11 180454.p');

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `korisnickoIme` varchar(32) NOT NULL,
  `lozinka` varchar(255) NOT NULL,
  `adminornot` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `korisnickoIme`, `lozinka`, `adminornot`) VALUES
(1, 'Lovro', '$2y$10$G5zgLXJeHofihDG/ljC/TOX5ynu845vXdR3yDLvasMJ.0cLuDE4Ji', 1),
(3, 'Bokkkk', '$2y$10$LUd4MZOm8T2ZqdXnssFlRO5kfLKBoUUpRyweU5Rx/qnw2URCrS0H.', 0),
(7, 'Bokkkkic', '$2y$10$DyoskwXXCKKTVU4qbcrf0u.Y9MXg8BZlJLzCELpHlyWYv8Jeij.46', 0),
(8, 'Bokic', '$2y$10$eyQ1cnOwe3KkdzakCPy7JOnXxKBC.sPu0mSqWFPK6NOjsuXizIR7.', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kontakt`
--
ALTER TABLE `kontakt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `korisnickoIme` (`korisnickoIme`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kontakt`
--
ALTER TABLE `kontakt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
