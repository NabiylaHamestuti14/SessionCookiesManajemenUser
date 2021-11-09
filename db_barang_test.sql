-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2021 at 08:09 AM
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
-- Database: `db_barang_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

CREATE TABLE `distributor` (
  `idDistributor` int(11) NOT NULL,
  `Nama_distributor` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`idDistributor`, `Nama_distributor`) VALUES
(1, 'Mayora'),
(2, 'Indofood Sukses Makmur');

-- --------------------------------------------------------

--
-- Table structure for table `level_detail`
--

CREATE TABLE `level_detail` (
  `id_level` tinyint(4) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `level_detail`
--

INSERT INTO `level_detail` (`id_level`, `level`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `master_barang`
--

CREATE TABLE `master_barang` (
  `id_barang` int(3) NOT NULL,
  `Nama_barang` varchar(25) DEFAULT NULL,
  `Harga_satuan` int(5) DEFAULT NULL,
  `Pajak` int(5) DEFAULT NULL,
  `Diskon` int(5) DEFAULT NULL,
  `Distributor_idDistributor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master_barang`
--

INSERT INTO `master_barang` (`id_barang`, `Nama_barang`, `Harga_satuan`, `Pajak`, `Diskon`, `Distributor_idDistributor`) VALUES
(1, 'Indomie Goreng', 1250, 0, 0, 2),
(2, 'Indomie Kuah Soto', 1200, 0, 0, 2),
(3, 'Indomie Kuah Kare Ayam', 1200, 0, 0, 2),
(4, 'Malkiest Coklat', 6500, 0, 0, 1),
(5, 'Malkiest Keju', 6500, 0, 0, 1),
(6, 'Bengbeng', 1250, 0, 0, 2),
(7, 'Bumbu Soto', 3500, 0, 0, 2),
(8, 'Bumbu Nasi Goreng', 3500, 0, 0, 2),
(9, 'Bumbu Mie Goreng', 3500, 0, 0, 2),
(10, 'Energen Coklat', 1750, 0, 0, 1),
(11, 'Energen Kacang hijau', 1750, 0, 0, 1),
(12, 'Astor', 6500, 0, 0, 1),
(13, 'Kopiko 78', 8900, 0, 0, 1),
(14, 'Kopi Torabika', 1800, 0, 0, 1),
(15, 'Kecap Bango 175ml', 1000, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `idPembeli` int(11) NOT NULL,
  `Nama` varchar(45) DEFAULT NULL,
  `Alamat` varchar(45) DEFAULT NULL,
  `No_telp` varchar(45) DEFAULT NULL,
  `Tgl_lahir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`idPembeli`, `Nama`, `Alamat`, `No_telp`, `Tgl_lahir`) VALUES
(1, 'Ayu', 'Jember', '055887822', '2015-12-22'),
(2, 'Lintang', 'Banyuwangi', '085969786', '2010-12-22'),
(3, 'Kemukus', 'Jember', '0896899852', '2010-07-22'),
(4, 'Dani', 'Bondowoso', '085578548', '2003-01-12'),
(5, 'Sari', 'Lumajang', '08564855254', '2002-03-18');

-- --------------------------------------------------------

--
-- Table structure for table `trans_pembelian`
--

CREATE TABLE `trans_pembelian` (
  `id_trans` int(5) NOT NULL,
  `Pembeli_idPembeli` int(11) NOT NULL,
  `Master_barang_id_barang` int(3) NOT NULL,
  `tgl_pembelian` date DEFAULT NULL,
  `jumlah_beli` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trans_pembelian`
--

INSERT INTO `trans_pembelian` (`id_trans`, `Pembeli_idPembeli`, `Master_barang_id_barang`, `tgl_pembelian`, `jumlah_beli`) VALUES
(1, 1, 1, '2021-09-06', 5),
(2, 1, 2, '2021-09-06', 15),
(3, 1, 3, '2021-09-06', 15),
(4, 1, 2, '2021-09-07', 20),
(5, 2, 1, '2021-09-06', 15),
(6, 2, 2, '2021-09-06', 25),
(7, 2, 3, '2021-09-06', 25),
(8, 2, 4, '2021-09-06', 16),
(9, 2, 5, '2021-09-06', 10),
(10, 2, 6, '2021-09-06', 12),
(11, 3, 6, '2021-09-08', 15),
(12, 3, 7, '2021-09-08', 25),
(13, 3, 8, '2021-09-08', 15),
(14, 3, 9, '2021-09-08', 25),
(15, 3, 10, '2021-09-08', 25),
(16, 3, 1, '2021-09-08', 20),
(17, 3, 2, '2021-09-08', 15),
(18, 3, 3, '2021-09-08', 25),
(19, 3, 12, '2021-09-08', 29),
(20, 3, 15, '2021-09-08', 30);

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_fullname` varchar(100) NOT NULL,
  `level` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `user_email`, `user_password`, `user_fullname`, `level`) VALUES
(1, 'nbylhmstt@gmail.com', '123456', 'Nabiyla H', 2),
(4, 'admin@gmail.com', '1234', 'Admin', 1),
(7, 'bintang@gmail.com', '123123', 'Bintang Leonardo', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`idDistributor`);

--
-- Indexes for table `level_detail`
--
ALTER TABLE `level_detail`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `master_barang`
--
ALTER TABLE `master_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`idPembeli`);

--
-- Indexes for table `trans_pembelian`
--
ALTER TABLE `trans_pembelian`
  ADD PRIMARY KEY (`id_trans`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level` (`level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `distributor`
--
ALTER TABLE `distributor`
  MODIFY `idDistributor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_barang`
--
ALTER TABLE `master_barang`
  MODIFY `id_barang` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `idPembeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `trans_pembelian`
--
ALTER TABLE `trans_pembelian`
  MODIFY `id_trans` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD CONSTRAINT `user_detail_ibfk_1` FOREIGN KEY (`level`) REFERENCES `level_detail` (`id_level`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
