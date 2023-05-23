-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2023 at 06:05 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `NUPTK` varchar(12) NOT NULL,
  `nama_guru` varchar(40) NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `jk` varchar(2) NOT NULL,
  `no_telp` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`NUPTK`, `nama_guru`, `Alamat`, `jk`, `no_telp`) VALUES
('1205', 'Pak Ade Aso', 'cimahi', 'L', '089878123231'),
('1208', 'Bu Fani', 'antapani', 'P', '089878123678'),
('1209', 'Pak Acep', 'kiaracondong', 'L', '089878123456'),
('1223', 'Pak Ashor', 'Bandung', 'L', '089878123876'),
('1277', 'Pak Alshar', 'Bandung', 'L', '089878123098'),
('1299', 'Pak Aldun', 'Bandung', 'L', '089878123776');

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `KD_MATPEL` varchar(12) NOT NULL,
  `Nama_pelajaran` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`KD_MATPEL`, `Nama_pelajaran`) VALUES
('1212345', 'B_ING'),
('141904', 'PBO'),
('17723', 'MTK'),
('265323', 'PPL'),
('778965', 'WEB');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `NIS` varchar(6) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `jk` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`NIS`, `nama`, `alamat`, `jk`) VALUES
('1230', 'Judika', 'Jakarta', 'L'),
('1233', 'Raffi', 'Bandung', 'L'),
('1235', 'ALBUDI', 'Bandung', 'L'),
('1237', 'ALHAITHAM', 'Bandung', 'L'),
('1238', 'AYAYA', 'Bandung', 'L'),
('1239', 'UCOK', 'Bandung', 'L');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`NUPTK`);

--
-- Indexes for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`KD_MATPEL`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`NIS`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
