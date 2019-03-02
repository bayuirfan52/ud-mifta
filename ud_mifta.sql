-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 13 Des 2018 pada 01.01
-- Versi server: 10.1.30-MariaDB
-- Versi PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ud_mifta`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(20) NOT NULL,
  `id` int(5) NOT NULL,
  `nama_barang` varchar(30) CHARACTER SET utf8 NOT NULL,
  `stok` int(11) NOT NULL,
  `hg_modal` int(12) NOT NULL,
  `hg_grosir` int(12) NOT NULL,
  `hg_ecer` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `id`, `nama_barang`, `stok`, `hg_modal`, `hg_grosir`, `hg_ecer`) VALUES
(5, 201, 'Sabun', 20, 1000, 1000, 1000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `distributor`
--

CREATE TABLE `distributor` (
  `id` int(5) NOT NULL,
  `id_distributor` int(11) NOT NULL,
  `nama_distributor` varchar(25) NOT NULL,
  `perusahaan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `distributor`
--

INSERT INTO `distributor` (`id`, `id_distributor`, `nama_distributor`, `perusahaan`) VALUES
(111, 221, 'Erwin', 'PT JAYA'),
(222, 222, 'Naam', 'PT ina');

-- --------------------------------------------------------

--
-- Struktur dari tabel `faktur`
--

CREATE TABLE `faktur` (
  `no_faktur` int(20) NOT NULL,
  `tgl` date NOT NULL,
  `total` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(2) NOT NULL,
  `nama_karyawan` varchar(25) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id`, `nama_karyawan`, `alamat`) VALUES
(2, 'Aniss', 'Desa Dukuh'),
(3, 'fatkur', 'Desa Dukuh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `no_faktur` int(20) NOT NULL,
  `id_barang` int(20) NOT NULL,
  `jual_barang` enum('ecer','grosir') CHARACTER SET ucs2 NOT NULL,
  `jml_barang` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `proses`
--

CREATE TABLE `proses` (
  `id_barang` int(20) NOT NULL,
  `jenis` enum('Grosir','Eceran') NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `proses`
--

INSERT INTO `proses` (`id_barang`, `jenis`, `jumlah`) VALUES
(5, 'Grosir', 4),
(5, 'Grosir', 5),
(5, 'Grosir', 10),
(5, 'Eceran', 1),
(5, 'Eceran', 1),
(5, 'Eceran', 1),
(5, 'Eceran', 2),
(5, 'Grosir', 1),
(5, 'Grosir', 1),
(5, 'Grosir', 1),
(5, 'Grosir', 1),
(5, 'Grosir', 1),
(5, 'Grosir', 1),
(5, 'Grosir', 1),
(5, 'Grosir', 1),
(5, 'Grosir', 1),
(5, 'Grosir', 1),
(5, 'Grosir', 1),
(5, 'Grosir', 1),
(5, 'Grosir', 1),
(5, 'Grosir', 1),
(5, 'Grosir', 1),
(5, 'Grosir', 1),
(5, 'Grosir', 1),
(5, 'Grosir', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(2) NOT NULL,
  `username` varchar(20) CHARACTER SET utf16 NOT NULL,
  `password` varchar(20) CHARACTER SET utf32 NOT NULL,
  `status` enum('Karyawan','Pemilik') CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `status`) VALUES
(1, 'subagyo', '12345', 'Pemilik'),
(2, 'murtini', '12345', 'Karyawan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `faktur`
--
ALTER TABLE `faktur`
  ADD PRIMARY KEY (`no_faktur`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD KEY `no_faktur` (`no_faktur`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indeks untuk tabel `proses`
--
ALTER TABLE `proses`
  ADD KEY `id_barang` (`id_barang`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `faktur`
--
ALTER TABLE `faktur`
  MODIFY `no_faktur` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`no_faktur`) REFERENCES `faktur` (`no_faktur`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `proses`
--
ALTER TABLE `proses`
  ADD CONSTRAINT `proses_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
