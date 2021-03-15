-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2021 at 04:59 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kamusku`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kamus`
--

CREATE TABLE `tbl_kamus` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kamus`
--

INSERT INTO `tbl_kamus` (`id`, `nama`, `keterangan`) VALUES
(4, 'Tisa', 'Sesosok perempuan yang mempunyai jiwa yang gimana ya haduhhh wkkwk'),
(5, 'Syafana', 'Emmmm sudah lupaa :\"'),
(6, 'Igasoma', 'Udah biasa aja sihh'),
(7, 'Nida', 'Nyaman sih tapi udah ada yang punya :\"'),
(8, 'Recha', 'Baik sih tapi baiknya ke semua orang, alhamdulillah'),
(9, 'Billa', 'Baik tapi dah lama ga komunikasi hehe gada kontaknya juga'),
(10, 'Rahma', 'Baik tapi sudah ada yang punya deh kayaknya'),
(11, 'Caca', 'Ini cantik rumahnya depan rumahku dan orang tua sering bercandain kalau mau dijodohin wkwk'),
(12, 'Jodoh', 'Untukmu jaga diri baik-baik disana :)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_kamus`
--
ALTER TABLE `tbl_kamus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_kamus`
--
ALTER TABLE `tbl_kamus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
