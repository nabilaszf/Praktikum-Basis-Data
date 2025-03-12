-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2025 at 04:07 PM
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
-- Database: `universitas`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NPM` char(10) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Prodi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NPM`, `Nama`, `Prodi`) VALUES
('2430506058', 'Nabila Firlina', 'Teknologi Informasi'),
('2430506059', 'Altaaf Anfino', 'Teknik Sipil'),
('2430506060', 'Javier Anfino', 'Teknik Sipil');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `Kode` int(11) NOT NULL,
  `Nama_Matkul` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`Kode`, `Nama_Matkul`) VALUES
(1, 'Kalkulus Lanjut'),
(2, 'Kalkulus Dasar'),
(3, 'Fisika Lanjut'),
(4, 'Algoritma Pemrograman');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `NPM` char(10) NOT NULL,
  `Kode` int(11) NOT NULL,
  `Nilai_Matkul` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`NPM`, `Kode`, `Nilai_Matkul`) VALUES
('2430506058', 1, 90.00),
('2430506058', 2, 90.00),
('2430506059', 1, 100.00),
('2430506059', 2, 85.00),
('2430506060', 1, 85.00),
('2430506060', 2, 95.00),
('2430506058', 3, 80.00),
('2430506059', 3, 90.00),
('2430506059', 4, 80.00),
('2430506060', 4, 100.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NPM`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`Kode`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD KEY `NPM` (`NPM`),
  ADD KEY `Kode` (`Kode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `Kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `Kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`NPM`) REFERENCES `mahasiswa` (`NPM`),
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`Kode`) REFERENCES `mata_kuliah` (`Kode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
