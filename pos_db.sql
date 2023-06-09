-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2023 at 07:41 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode`, `nama`, `harga`) VALUES
(1001, 'Chitato BBQ 100 Normal', 10000),
(1002, 'Oreo Normal', 15000),
(1003, 'Potabee Kentang Goreng', 12000),
(1004, 'Cheetoz BBQ', 16000),
(1005, 'Indomie Kari', 2500);

-- --------------------------------------------------------

--
-- Table structure for table `kartu_debit`
--

CREATE TABLE `kartu_debit` (
  `id` int(11) NOT NULL,
  `bank` varchar(11) NOT NULL,
  `nomor_kartu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kartu_debit`
--

INSERT INTO `kartu_debit` (`id`, `bank`, `nomor_kartu`) VALUES
(3, 'Mandiri', '0313210213'),
(15, 'Mandiri', '124124141');

-- --------------------------------------------------------

--
-- Table structure for table `kas`
--

CREATE TABLE `kas` (
  `id` int(11) NOT NULL,
  `dibayar` float NOT NULL,
  `kembalian` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kas`
--

INSERT INTO `kas` (`id`, `dibayar`, `kembalian`) VALUES
(2, 20000, 10000),
(11, 30000, 3000),
(13, 60000, 1000),
(14, 60000, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `pln`
--

CREATE TABLE `pln` (
  `kode` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nominal` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pln`
--

INSERT INTO `pln` (`kode`, `nama`, `nominal`) VALUES
(3001, 'TOKEN PLN 20000', 20000),
(3002, 'TOKEN PLN 50000', 50000),
(3003, 'TOKEN PLN 100000', 100000),
(3004, 'TOKEN PLN 150000', 150000),
(3005, 'TOKEN PLN 200000', 200000),
(3006, 'TOKEN PLN 300000', 300000),
(3007, 'TOKEN PLN 400000', 400000),
(3008, 'TOKEN PLN 500000', 500000);

-- --------------------------------------------------------

--
-- Table structure for table `pulsa`
--

CREATE TABLE `pulsa` (
  `kode` int(11) NOT NULL,
  `operator` varchar(50) NOT NULL,
  `nominal` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pulsa`
--

INSERT INTO `pulsa` (`kode`, `operator`, `nominal`) VALUES
(2001, 'Telkomsel', 25000),
(2002, 'Telkomsel', 50000),
(2003, 'Telkomsel', 100000),
(2004, 'XL', 25000),
(2005, 'XL', 50000),
(2006, 'XL', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `qris`
--

CREATE TABLE `qris` (
  `id` int(11) NOT NULL,
  `konten` varchar(100) NOT NULL,
  `request_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `qris`
--

INSERT INTO `qris` (`id`, `konten`, `request_date`) VALUES
(7, 'uZVlc8qBykRUUixCt4SC98qyZUBEWE', '2023-06-08 00:44:10'),
(8, 'djdu9n09NUuVznC8WSk0nN0HltBinpEa7Hj2Yu8Sy5WkSoWK5nlp6FwnV5vTK92Q4Hog428SvOspPNU5WSDpJ8h7Z5wx30juN5LM', '2023-06-08 00:44:56'),
(9, 'CRvCCUw1p9f0WKTyjM5kPyCNnmPo4XjduP5lcqHRJ338hCPU4EYO28WVEYN3GKHEr6s2rPxyPf0b4cek3sBJLSqAnQyDNgcoQzbw', '2023-06-08 12:01:40'),
(16, 'UtONNcJfDbcGAhbpHLvUCuMzkCbqMhFGeDikwUpw7nq149TBmaf7w7uKYpYZSgZgvFAwrKyR3oljtslfcytdEdbu8CTSHTXe5wVU', '2023-06-08 12:38:31');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `waktu_pembayaran` datetime NOT NULL,
  `total_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `waktu_pembayaran`, `total_harga`) VALUES
(2, '2023-06-08 00:19:46', 10000),
(3, '2023-06-08 00:36:02', 10000),
(4, '2023-06-08 00:42:12', 10000),
(5, '2023-06-08 00:42:56', 10000),
(6, '2023-06-08 00:43:39', 10000),
(7, '2023-06-08 00:44:13', 10000),
(8, '2023-06-08 00:45:00', 15000),
(9, '2023-06-08 12:01:42', 59000),
(10, '2023-06-08 12:03:38', 59000),
(11, '2023-06-08 12:04:15', 27000),
(12, '2023-06-08 12:04:38', 22000),
(13, '2023-06-08 12:32:53', 59000),
(14, '2023-06-08 12:35:34', 59000),
(15, '2023-06-08 12:37:26', 59000),
(16, '2023-06-08 12:38:34', 59000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_barang`
--

CREATE TABLE `transaksi_barang` (
  `id` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `kode_makanan` int(11) DEFAULT NULL,
  `kode_pln` int(11) DEFAULT NULL,
  `kode_pulsa` int(11) DEFAULT NULL,
  `jumlah_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi_barang`
--

INSERT INTO `transaksi_barang` (`id`, `id_transaksi`, `kode_makanan`, `kode_pln`, `kode_pulsa`, `jumlah_barang`) VALUES
(1, 14, 1001, NULL, NULL, 1),
(2, 14, NULL, 3001, NULL, 1),
(3, 14, NULL, NULL, 2001, 1),
(4, 15, 1001, NULL, NULL, 1),
(5, 15, NULL, NULL, 2001, 1),
(6, 15, NULL, 3001, NULL, 1),
(7, 16, 1001, NULL, NULL, 1),
(8, 16, NULL, NULL, 2001, 1),
(9, 16, NULL, 3001, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`id`, `username`, `password`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `kartu_debit`
--
ALTER TABLE `kartu_debit`
  ADD KEY `kd_fk` (`id`);

--
-- Indexes for table `kas`
--
ALTER TABLE `kas`
  ADD KEY `kas_fk` (`id`);

--
-- Indexes for table `pln`
--
ALTER TABLE `pln`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `pulsa`
--
ALTER TABLE `pulsa`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `qris`
--
ALTER TABLE `qris`
  ADD KEY `qris_fk` (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_barang`
--
ALTER TABLE `transaksi_barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_barang_ibfk_1` (`id_transaksi`),
  ADD KEY `transaksi_barang_ibfk_2` (`kode_makanan`),
  ADD KEY `transaksi_barang_ibfk_3` (`kode_pln`),
  ADD KEY `transaksi_barang_ibfk_4` (`kode_pulsa`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- AUTO_INCREMENT for table `pln`
--
ALTER TABLE `pln`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3010;

--
-- AUTO_INCREMENT for table `pulsa`
--
ALTER TABLE `pulsa`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20046;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transaksi_barang`
--
ALTER TABLE `transaksi_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kartu_debit`
--
ALTER TABLE `kartu_debit`
  ADD CONSTRAINT `kd_fk` FOREIGN KEY (`id`) REFERENCES `transaksi` (`id`);

--
-- Constraints for table `kas`
--
ALTER TABLE `kas`
  ADD CONSTRAINT `kas_fk` FOREIGN KEY (`id`) REFERENCES `transaksi` (`id`);

--
-- Constraints for table `qris`
--
ALTER TABLE `qris`
  ADD CONSTRAINT `qris_fk` FOREIGN KEY (`id`) REFERENCES `transaksi` (`id`);

--
-- Constraints for table `transaksi_barang`
--
ALTER TABLE `transaksi_barang`
  ADD CONSTRAINT `transaksi_barang_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id`),
  ADD CONSTRAINT `transaksi_barang_ibfk_2` FOREIGN KEY (`kode_makanan`) REFERENCES `barang` (`kode`),
  ADD CONSTRAINT `transaksi_barang_ibfk_3` FOREIGN KEY (`kode_pln`) REFERENCES `pln` (`kode`),
  ADD CONSTRAINT `transaksi_barang_ibfk_4` FOREIGN KEY (`kode_pulsa`) REFERENCES `pulsa` (`kode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
