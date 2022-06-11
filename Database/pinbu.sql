-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2021 at 02:56 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pinbu`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `nama`, `email`, `username`, `password`) VALUES
(4, 'Muhammad Taufik Hidayanto', 'hid09h@gmail.com', 'hid', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `ID_Anggota` varchar(100) NOT NULL,
  `Nama` varchar(100) DEFAULT NULL,
  `Tempat_lahir` varchar(100) DEFAULT NULL,
  `Tanggal_lahir` varchar(100) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Status` char(3) DEFAULT NULL,
  `WN` varchar(100) NOT NULL,
  `Aktif` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`ID_Anggota`, `Nama`, `Tempat_lahir`, `Tanggal_lahir`, `Gender`, `Status`, `WN`, `Aktif`) VALUES
('12345', 'Muhammad Taufik Hidayanto', 'Jakarta', '2001-05-23', 'Laki-laki', 'MHS', 'WNI', 'Aktif'),
('123456', 'Taufik', 'Jakarta', '2021-05-17', 'Laki-laki', 'MHS', 'WNA', 'Aktif'),
('1234567', 'Dewiii', 'Jambi', '2003-04-01', 'Perempuan', 'MHS', 'WNI', 'Aktif'),
('12345678', 'Yanto', 'Jakarta', '2021-05-17', 'Laki-laki', 'PNS', 'WNA', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `ID_Buku` varchar(100) NOT NULL,
  `Judul` varchar(100) DEFAULT NULL,
  `Pengarang` varchar(100) DEFAULT NULL,
  `Penerbit` varchar(100) DEFAULT NULL,
  `Genre` char(3) DEFAULT NULL,
  `Tahun` varchar(100) DEFAULT NULL,
  `gambar` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`ID_Buku`, `Judul`, `Pengarang`, `Penerbit`, `Genre`, `Tahun`, `gambar`, `status`) VALUES
('12345', 'Harry Potter', 'J.K Rowling', 'Bloomsbury Publishing', 'FAN', '2007-07-21', 'Harry_potter_deathly_hallows_US.jpg', 'Ada'),
('123456', 'Novel Bumi', 'Tere Liye', 'Gramedia Pustaka Utama', 'FIK', '2014-01-16', '220px-Bumi_(sampul).jpg', 'Ada');

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail` int(11) NOT NULL,
  `id_transaksi` int(100) DEFAULT NULL,
  `id_buku` varchar(100) DEFAULT NULL,
  `tgl_pinjam` varchar(100) DEFAULT NULL,
  `tgl_kembali` varchar(100) NOT NULL,
  `qty` int(10) DEFAULT NULL,
  `stat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail`, `id_transaksi`, `id_buku`, `tgl_pinjam`, `tgl_kembali`, `qty`, `stat`) VALUES
(25, 1624323363, '12345', '22-06-2021', '29-06-2021', 2, 'Sudah Kembali');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `kd_genre` char(3) NOT NULL,
  `Genre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`kd_genre`, `Genre`) VALUES
('BIO', 'Biografi'),
('ENS', 'Ensiklopedia'),
('FAN', 'Fantasi'),
('FIK', 'Fiksi'),
('FIL', 'Filsafat'),
('HMR', 'Humor'),
('HRR', 'Horror'),
('JUR', 'Jurnal'),
('KMS', 'Kamus'),
('MTR', 'Misteri'),
('PTL', 'Petualangan'),
('RMC', 'Romance'),
('SCI', 'Sci-Fi');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `kd_status` char(3) NOT NULL,
  `Status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`kd_status`, `Status`) VALUES
('MHS', 'Mahasiswa'),
('PNS', 'PNS');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(100) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pembeli` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `waktu`, `pembeli`) VALUES
(1624323363, '2021-06-22 00:56:03', 'Retno Astia Faradita');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`ID_Anggota`),
  ADD KEY `fk_status` (`Status`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`ID_Buku`),
  ADD KEY `fk_genre` (`Genre`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `fk_buku` (`id_buku`),
  ADD KEY `fk_transaksi` (`id_transaksi`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`kd_genre`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`kd_status`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `fk_status` FOREIGN KEY (`Status`) REFERENCES `status` (`kd_status`);

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `fk_genre` FOREIGN KEY (`Genre`) REFERENCES `genre` (`kd_genre`);

--
-- Constraints for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `fk_buku` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`ID_Buku`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_transaksi` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
