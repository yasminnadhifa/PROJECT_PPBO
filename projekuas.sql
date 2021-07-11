-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2021 at 08:31 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekuas`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `nip` varchar(15) NOT NULL,
  `nama_pegawai` varchar(50) NOT NULL,
  `instansi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`nip`, `nama_pegawai`, `instansi`) VALUES
('HI834', 'Yayas', 'Dinas Sosial'),
('LI115', 'Aulia R', 'Dinas Parawisata'),
('PI114', 'Yasmin Nadhifa', 'Dinas Parawisata'),
('PI115', 'Raja Raihan', 'Dinas Parawisata'),
('PI135', 'Hartanto S', 'Dinas Kesehatan'),
('TI116', 'Wanda Trisnahayu', 'Dinas Perhubungan'),
('TI798', 'Melki Abyan', 'Dinas Kesehatan'),
('TI882', 'Popo', 'Dinas Kesehatan'),
('TI893', 'Aka ', 'Dinas Perhubungan'),
('YI573', 'Bagas S', 'Dinas Kesehatan'),
('YI993', 'Acha', 'Dinas Parawisata'),
('ZI893', 'Angkasa', 'Dinas Kesehatan'),
('ZI903', 'Jihan Hanifa', 'Dinas Kesehatan');

-- --------------------------------------------------------

--
-- Table structure for table `perjalanan`
--

CREATE TABLE `perjalanan` (
  `nip` varchar(25) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `instansi` varchar(100) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `lama_perjalanan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perjalanan`
--

INSERT INTO `perjalanan` (`nip`, `nama_pegawai`, `instansi`, `nama_kota`, `provinsi`, `lama_perjalanan`) VALUES
('PI115', 'Raja Raihan', 'Dinas Parawisata', 'Jakarta', '3 hari', 'DKI Jakarta');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `perjalanan`
--
ALTER TABLE `perjalanan`
  ADD PRIMARY KEY (`nip`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
