-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 05 Apr 2017 pada 06.02
-- Versi Server: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `barang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `databarang`
--

CREATE TABLE IF NOT EXISTS `databarang` (
`kode_barang` int(5) NOT NULL,
  `nama_barang` varchar(15) NOT NULL,
  `satuan_barang` text NOT NULL,
  `harga_barang` int(15) NOT NULL,
  `pt_asal` text NOT NULL,
  `kodewil_asal` int(5) NOT NULL,
  `pt_tujuan` text NOT NULL,
  `kodewil_tujuan` int(5) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data untuk tabel `databarang`
--

INSERT INTO `databarang` (`kode_barang`, `nama_barang`, `satuan_barang`, `harga_barang`, `pt_asal`, `kodewil_asal`, `pt_tujuan`, `kodewil_tujuan`) VALUES
(9, 'Samsung', 'PC', 5000, 'Ladyrock', 10, 'Union', 1001),
(10, 'Lenovo', 'PC', 1000, 'Ladyrock', 10, 'Mitra kencana', 300),
(11, 'Acer', 'HP', 200, 'Mitra Kencana', 300, 'Union', 1001),
(12, 'Lenovo', 'HP', 1000, 'Makmur Sejahtera', 101, 'Juara Satu', 104),
(13, 'Asus', 'PC', 1000, 'Juara Satu', 104, 'Lady Rock', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `databarang`
--
ALTER TABLE `databarang`
 ADD PRIMARY KEY (`kode_barang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `databarang`
--
ALTER TABLE `databarang`
MODIFY `kode_barang` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
