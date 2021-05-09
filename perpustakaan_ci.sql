-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2021 at 02:05 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_anggota`
--

CREATE TABLE `tabel_anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama_anggota` varchar(100) NOT NULL,
  `kelas` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_anggota`
--

INSERT INTO `tabel_anggota` (`id_anggota`, `nama_anggota`, `kelas`, `jenis_kelamin`, `no_hp`, `alamat`) VALUES
(1, 'Hilda Liasti', 'XI RPL 2', 'Perempuan', '085703148807', 'Padaemut'),
(2, 'Dewi Novita Sari', 'XI RPL 2', 'Perempuan', '085703288786', 'padaemut'),
(3, 'Nabila Cahyani', 'XI RPL 2', 'Perempuan', '083116677022', 'langensari'),
(4, 'Ayu Rustriningsih', 'XI RPL 2', 'Perempuan', '087825172600', 'langensari'),
(5, 'aira', 'XI RPL 2', 'perempuan', '085782920199', 'ciamis');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_buku`
--

CREATE TABLE `tabel_buku` (
  `id_buku` int(15) NOT NULL,
  `nama_buku` varchar(100) NOT NULL,
  `jenis_buku` enum('fiksi','non fiksi','','') NOT NULL,
  `penulis_buku` varchar(50) NOT NULL,
  `penerbit_buku` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_buku`
--

INSERT INTO `tabel_buku` (`id_buku`, `nama_buku`, `jenis_buku`, `penulis_buku`, `penerbit_buku`) VALUES
(1, 'surat cinta untuk starla', 'non fiksi', 'hilda', 'PT. Garuda'),
(2, 'matematika kls XI', 'fiksi', 'dewi', 'erlanggga');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_peminjaman`
--

CREATE TABLE `tabel_peminjaman` (
  `id_peminjam` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(25) NOT NULL,
  `nama_buku` varchar(100) NOT NULL,
  `tgl_pinjam` varchar(11) NOT NULL,
  `tgl_kembali` varchar(11) NOT NULL,
  `tgl_pengembalian` varchar(25) NOT NULL,
  `telat` varchar(50) NOT NULL,
  `denda` varchar(25) NOT NULL,
  `jumlah_pinjam` int(100) NOT NULL,
  `petugas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_peminjaman`
--

INSERT INTO `tabel_peminjaman` (`id_peminjam`, `nama`, `kelas`, `nama_buku`, `tgl_pinjam`, `tgl_kembali`, `tgl_pengembalian`, `telat`, `denda`, `jumlah_pinjam`, `petugas`) VALUES
(1, 'hilda liasti', 'XI RPL 2', 'matematika', '04 05 2021', '28 05 2021', '31 05 2021', '3 hari', ' Rp.6000', 1, 'ibu.Heny wahyu rahayu');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_user`
--

CREATE TABLE `tabel_user` (
  `id_user` int(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `alamat_user` varchar(50) NOT NULL,
  `no_hp` varchar(25) NOT NULL,
  `level` enum('pengurus','pengguna','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_user`
--

INSERT INTO `tabel_user` (`id_user`, `username`, `password`, `nama_user`, `alamat_user`, `no_hp`, `level`) VALUES
(3, 'admin', '12345', 'admin', 'padaemut', '085703148807', 'pengurus'),
(4, 'pengguna', '123', 'admin', 'langensari', '085723456654', 'pengguna');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_anggota`
--
ALTER TABLE `tabel_anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `tabel_buku`
--
ALTER TABLE `tabel_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `tabel_peminjaman`
--
ALTER TABLE `tabel_peminjaman`
  ADD PRIMARY KEY (`id_peminjam`);

--
-- Indexes for table `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_anggota`
--
ALTER TABLE `tabel_anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tabel_buku`
--
ALTER TABLE `tabel_buku`
  MODIFY `id_buku` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tabel_peminjaman`
--
ALTER TABLE `tabel_peminjaman`
  MODIFY `id_peminjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tabel_user`
--
ALTER TABLE `tabel_user`
  MODIFY `id_user` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
