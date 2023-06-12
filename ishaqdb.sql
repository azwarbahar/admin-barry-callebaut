-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jun 2023 pada 12.54
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ishaqdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `nama`, `jabatan`, `email`, `password`, `foto`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Megawati', 'Administrator', 'admin@gmail.com', '$2y$10$FSGqIlBPsZ/RGBqJ251JxuDRh7fohLl3R8SLBDQ4qlyrl01ASUSra', 'image_1674557768.jpeg', 'Active', '2023-01-24 10:56:08', '2023-01-24 10:56:08'),
(2, 'Ishaq', 'Admin ka juga', 'ishaqfitto669@gmail.com', '$2y$10$xrfzBqOGTKhKymn/tKOGue6dsRoPNz94yPmgIX4wbvKO35EwqtzfK', 'image_1677834150.png', 'Active', '2023-03-03 09:02:30', '2023-03-03 09:02:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_inspeksi`
--

CREATE TABLE `tb_inspeksi` (
  `id` int(11) NOT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `tahun` varchar(255) DEFAULT NULL,
  `petani_id` varchar(255) DEFAULT NULL,
  `petugas_id` varchar(255) DEFAULT NULL,
  `a1` varchar(255) NOT NULL DEFAULT '0',
  `a2` varchar(255) NOT NULL DEFAULT '0',
  `a3` varchar(255) NOT NULL DEFAULT '0',
  `a4` varchar(255) NOT NULL DEFAULT '0',
  `a5` varchar(255) NOT NULL DEFAULT '0',
  `a6` varchar(255) NOT NULL DEFAULT '0',
  `a7` varchar(255) NOT NULL DEFAULT '0',
  `a8` varchar(255) NOT NULL DEFAULT '0',
  `a9` varchar(255) NOT NULL DEFAULT '0',
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_inspeksi`
--

INSERT INTO `tb_inspeksi` (`id`, `tanggal`, `tahun`, `petani_id`, `petugas_id`, `a1`, `a2`, `a3`, `a4`, `a5`, `a6`, `a7`, `a8`, `a9`, `foto`, `created_at`, `updated_at`) VALUES
(1, '2012-01-01', '2012', '4', '7', '2', '3', '4', '2', '2', '2', '3', '4', '3', 'photo_default.png', '2023-01-21 14:54:57', '2023-01-21 14:54:57'),
(2, '2012-01-01', '2012', '1', '7', '1', '1', '1', '1', '1', '1', '1', '1', '2', 'photo_default.png', '2023-01-21 19:41:53', '2023-01-21 19:41:53'),
(3, '2012-01-01', '2012', '3', '7', '2', '2', '2', '3', '3', '4', '5', '2', '2', 'photo_default.png', '2023-01-21 19:45:08', '2023-01-21 19:45:08'),
(4, '2012-01-01', '2012', '5', '7', '1', '1', '1', '2', '2', '1', '1', '1', '5', 'photo_default.png', '2023-01-21 19:47:54', '2023-01-21 19:47:54'),
(5, '2012-01-01', '2012', '6', '7', '2', '2', '4', '5', '2', '3', '3', '4', '5', 'photo_default.png', '2023-01-21 19:47:54', '2023-01-21 19:47:54'),
(7, '2023-01-14', '2023', '1', '7', '3', '3', '3', '5', '3', '3', '3', '4', '3', 'image_1676377914.jpg', '2023-02-14 12:31:54', '2023-02-14 12:31:54'),
(8, '2023-01-14', '2023', '8', '9', '2', '2', '2', '3', '2', '2', '3', '2', '2', 'image_1676379321.jpg', '2023-02-14 12:55:21', '2023-02-14 12:55:21'),
(9, '2023-01-14', '2023', '15', '10', '2', '3', '2', '3', '1', '3', '3', '3', '3', 'image_1676379555.jpg', '2023-02-14 12:59:15', '2023-02-14 12:59:15'),
(10, '2023-01-14', '2023', '9', '9', '2', '3', '3', '2', '3', '5', '2', '5', '4', 'image_1676379563.jpg', '2023-02-14 12:59:23', '2023-02-14 12:59:23'),
(11, '2023-01-14', '2023', '10', '9', '2', '4', '4', '3', '4', '3', '3', '4', '4', 'image_1676379689.jpg', '2023-02-14 13:01:29', '2023-02-14 13:01:29'),
(12, '2023-01-11', '2023', '21', '10', '3', '3', '3', '2', '2', '4', '5', '4', '2', 'image_1676379764.jpg', '2023-02-14 13:02:44', '2023-02-14 13:02:44'),
(13, '2023-01-14', '2023', '11', '9', '3', '3', '4', '4', '3', '3', '3', '3', '5', 'image_1676379833.jpg', '2023-02-14 13:03:53', '2023-02-14 13:03:53'),
(14, '2023-01-24', '2023', '22', '10', '5', '3', '1', '4', '2', '3', '5', '4', '5', 'image_1676379941.jpg', '2023-02-14 13:05:41', '2023-02-14 13:05:41'),
(15, '2023-01-09', '2023', '20', '10', '2', '3', '4', '5', '5', '4', '5', '4', '3', 'image_1676380057.jpg', '2023-02-14 13:07:37', '2023-02-14 13:07:37'),
(16, '2023-01-14', '2023', '40', '12', '3', '2', '3', '4', '2', '3', '3', '2', '2', 'image_1676380202.jpg', '2023-02-14 13:10:02', '2023-02-14 13:10:02'),
(17, '2023-01-14', '2023', '41', '12', '2', '3', '2', '2', '3', '3', '2', '2', '5', 'image_1676380361.jpg', '2023-02-14 13:12:41', '2023-02-14 13:12:41'),
(18, '2023-01-14', '2023', '28', '11', '1', '1', '1', '2', '2', '1', '1', '1', '2', 'image_1676380712.jpg', '2023-02-14 13:18:32', '2023-02-14 13:18:32'),
(19, '2023-01-17', '2023', '48', '14', '1', '1', '1', '1', '1', '1', '1', '1', '2', 'image_1676591665.jpg', '2023-02-16 23:54:25', '2023-02-16 23:54:25'),
(20, '2023-01-17', '2023', '49', '14', '2', '3', '4', '2', '2', '2', '3', '4', '3', 'image_1676591721.jpg', '2023-02-16 23:55:21', '2023-02-16 23:55:21'),
(21, '2023-01-17', '2023', '50', '14', '2', '2', '2', '3', '3', '4', '5', '2', '2', 'image_1676591784.jpg', '2023-02-16 23:56:24', '2023-02-16 23:56:24'),
(22, '2023-01-17', '2023', '51', '14', '1', '1', '1', '2', '2', '1', '1', '1', '5', 'image_1676591879.jpg', '2023-02-16 23:57:59', '2023-02-16 23:57:59'),
(23, '2023-01-17', '2023', '51', '14', '2', '2', '4', '5', '2', '3', '3', '4', '5', 'image_1676591933.jpg', '2023-02-16 23:58:53', '2023-02-16 23:58:53'),
(24, '2023-01-17', '2023', '52', '14', '2', '2', '4', '5', '2', '3', '3', '4', '5', 'image_1676592002.jpg', '2023-02-17 00:00:02', '2023-02-17 00:00:02'),
(25, '2023-01-17', '2023', '53', '14', '1', '1', '1', '2', '2', '1', '1', '1', '5', 'image_1676592097.jpg', '2023-02-17 00:01:37', '2023-02-17 00:01:37'),
(26, '2023-01-25', '2023', '63', '12', '2', '3', '2', '3', '2', '4', '5', '2', '4', 'image_1677425931.jpg', '2023-02-26 15:38:51', '2023-02-26 15:38:51'),
(27, '2022-11-06', '2022', '56', '9', '2', '3', '3', '3', '2', '3', '2', '3', '3', 'image_1677426111.jpg', '2023-02-26 15:41:51', '2023-02-26 15:41:51'),
(28, '2023-01-25', '2023', '64', '12', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'image_1677426203.jpg', '2023-02-26 15:43:23', '2023-02-26 15:43:23'),
(29, '2023-00-27', '2023', '58', '9', '2', '3', '2', '2', '2', '2', '1', '1', '1', 'image_1677426484.jpg', '2023-02-26 15:48:04', '2023-02-26 15:48:04'),
(30, '2023-00-11', '2023', '108', '9', '1', '2', '3', '1', '2', '2', '3', '3', '1', 'image_1677426660.jpg', '2023-02-26 15:51:00', '2023-02-26 15:51:00'),
(31, '2023-01-25', '2023', '115', '12', '2', '2', '1', '1', '1', '1', '2', '1', '1', 'image_1677426712.jpg', '2023-02-26 15:51:52', '2023-02-26 15:51:52'),
(32, '2023-01-07', '2023', '109', '9', '1', '1', '1', '2', '2', '1', '1', '1', '1', 'image_1677426855.jpg', '2023-02-26 15:54:15', '2023-02-26 15:54:15'),
(33, '2023-01-25', '2023', '116', '12', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'image_1677426937.jpg', '2023-02-26 15:55:37', '2023-02-26 15:55:37'),
(34, '2023-01-25', '2023', '54', '7', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'image_1677427261.jpg', '2023-02-26 16:01:01', '2023-02-26 16:01:01'),
(35, '2023-01-27', '2023', '59', '10', '2', '2', '2', '2', '3', '3', '1', '1', '1', 'image_1677427376.jpg', '2023-02-26 16:02:56', '2023-02-26 16:02:56'),
(36, '2023-01-25', '2023', '55', '7', '1', '1', '1', '1', '2', '1', '2', '1', '1', 'image_1677428188.jpg', '2023-02-26 16:16:28', '2023-02-26 16:16:28'),
(37, '2023-01-08', '2023', '60', '10', '2', '1', '1', '1', '2', '1', '1', '3', '1', 'image_1677428300.jpg', '2023-02-26 16:18:20', '2023-02-26 16:18:20'),
(38, '2023-01-25', '2023', '57', '7', '1', '1', '1', '1', '1', '1', '1', '2', '1', 'image_1677428388.jpg', '2023-02-26 16:19:48', '2023-02-26 16:19:48'),
(39, '2023-01-15', '2023', '110', '10', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'image_1677428535.jpg', '2023-02-26 16:22:15', '2023-02-26 16:22:15'),
(40, '2023-01-25', '2023', '106', '7', '1', '1', '1', '1', '1', '2', '1', '2', '1', 'image_1677428561.jpg', '2023-02-26 16:22:41', '2023-02-26 16:22:41'),
(41, '2023-01-25', '2023', '107', '7', '1', '2', '1', '2', '2', '2', '1', '1', '1', 'image_1677428718.jpg', '2023-02-26 16:25:18', '2023-02-26 16:25:18'),
(42, '2023-00-18', '2023', '111', '10', '2', '1', '1', '1', '1', '1', '1', '1', '1', 'image_1677428988.jpg', '2023-02-26 16:29:48', '2023-02-26 16:29:48'),
(43, '2023-01-25', '2023', '61', '11', '1', '1', '1', '1', '1', '1', '1', '1', '2', 'image_1677429023.jpg', '2023-02-26 16:30:23', '2023-02-26 16:30:23'),
(44, '2023-01-25', '2023', '62', '11', '1', '1', '1', '2', '2', '1', '2', '2', '1', 'image_1677429202.jpg', '2023-02-26 16:33:22', '2023-02-26 16:33:22'),
(45, '2023-00-30', '2023', '112', '10', '1', '2', '3', '2', '1', '1', '2', '2', '2', 'image_1677429247.jpg', '2023-02-26 16:34:07', '2023-02-26 16:34:07'),
(46, '2023-01-25', '2023', '113', '11', '2', '1', '1', '2', '2', '1', '1', '1', '2', 'image_1677429349.jpg', '2023-02-26 16:35:49', '2023-02-26 16:35:49'),
(47, '2023-01-25', '2023', '114', '11', '2', '1', '2', '1', '2', '1', '1', '2', '1', 'image_1677429475.jpg', '2023-02-26 16:37:55', '2023-02-26 16:37:55'),
(48, '2023-02-02', '2023', '54', '8', '2', '2', '2', '3', '3', '2', '2', '3', '3', 'image_1677735650.jpg', '2023-03-02 05:40:50', '2023-03-02 05:40:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `id` int(11) NOT NULL,
  `no_kepegawaian` varchar(255) DEFAULT NULL,
  `posisi` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `kontak` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `koordinator` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`id`, `no_kepegawaian`, `posisi`, `nama`, `kontak`, `alamat`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `username`, `password`, `foto`, `koordinator`, `created_at`, `updated_at`) VALUES
(1, 'IDEX218', 'Koordinator', 'Miswar Al-Kadri', '08123456789', 'Takatidung', 'Laki-laki', 'Pinrang', '1989-07-01', 'Ishaq', '$2y$10$P1s6O9LfY.F7myLdvUxo1Ow1C7M0AY9fFDLBnkU9BRyZ3yKKqPKeK', NULL, NULL, '2023-01-16 10:49:40', '2023-02-19 07:21:02'),
(7, 'IDEX009', 'Petugas', 'Maulid', '085299923978', 'Polewali', 'Laki-laki', 'Mombi', '2010-01-02', 'maulid', '$2y$10$K28ZGEyp6wacQ7BvS4QsxeOPtb2/X6bedGfXARZLyd3Qn7yF6y/Fy', 'image_1675862246.jpg', '1', '2023-01-17 02:26:02', '2023-02-08 13:35:53'),
(8, 'IDEX001', 'Koordinator', 'Kordinator ku', '085298882108', 'Polewali', 'Laki-laki', 'Takatidung', '1990-02-13', 'Miswar_kord', '$2y$10$RyqRnHTx7zp9NrlQVfzVU.UHqHZ2hPoR5GAxGoSLDNKHfW7.nrUVa', 'image_1677728759.jpg', NULL, '2023-01-24 12:22:00', '2023-03-02 03:45:59'),
(9, 'IDEX010', 'Petugas', 'Taslin', '082188171475', 'Piriang', 'Laki-laki', 'Piriang', '1971-07-30', 'Taslin_ff', '$2y$10$VFSchwAQqrpDMvWeHsPRe.b0Wbw07QcLXVxhU8eGaKT58X/zCvIGC', 'image_1677426912.jpg', '1', '2023-01-24 12:26:21', '2023-02-26 15:55:12'),
(10, 'IDEX011', 'Petugas', 'Abd. Kadir', '085255340899', 'Siratuang', 'Laki-laki', 'Siratuang', '1989-04-06', 'Kadir_ff', '$2y$10$.2TA3iuVZU16V.Nu/sJp5emKz7qNbVl//Zlk6gS8S3r4EMUh2AvC2', 'image_1675930346.jpg', '1', '2023-01-24 12:28:43', '2023-02-09 08:12:26'),
(11, 'IDEX012', 'Petugas', 'M. Husanri', '085280672357', 'Tubbi', 'Laki-laki', 'Tubbi', '1991-05-15', 'Sanri_ff', '$2y$10$UXFOaPENelsaF7SC4ya.muiUOmGjA4rxnXrXIcxSMvp6H1pktQNOu', 'photo_default.png', '1', '2023-01-25 11:46:04', '2023-01-25 11:46:04'),
(12, 'IDEX013', 'Petugas', 'Sadar', '082188318472', 'Leteang', 'Laki-laki', 'Leteang', '1970-08-07', 'Sadar_ff', '$2y$10$AidgEfGsS8wImn73iSW/LuyMmY2lH65HTMgCmjaDSPx/Co8U0w5Xi', 'photo_default.png', '1', '2023-01-25 11:47:46', '2023-01-25 11:47:46'),
(14, 'ID contoh', 'Petugas', 'Ishaq', '746980963806', 'Lapejang', 'Laki-laki', 'Lapejang', '1998-04-06', 'ishaq_ff', '$2y$10$ubzAPH4uKy9hCettbXyAv.K/ntU9Oj7Opa0JTxJfRheEDpxHVwg4m', 'image_1676592416.jpg', '8', '2023-02-16 23:49:08', '2023-02-17 00:06:56'),
(15, 'IDEX014', 'Petugas', 'Anhar Anas', '081347406470', 'Mapilli', 'Laki-laki', 'Mapilli', '1973-07-21', 'Anharanas_ff', '$2y$10$ZjVh77135v5Oe94GrTkGFunovNvdrU1exjey5nrPuKAzz83Wg0WDW', 'image_1677429359.jpg', '1', '2023-02-19 07:17:34', '2023-02-26 16:35:59'),
(16, 'IDEX019', 'Petugas', 'Samsul', '081355898781', 'Kunyi', 'Laki-laki', 'Kunyi', '1976-04-20', 'Samsul_ff', '$2y$10$VUJgg/KaOG/hg7ok2Na8VegeBN1UxfuLl6dHl.QE1GVnfHvURQtxq', 'photo_default.png', '1', '2023-02-19 07:27:48', '2023-02-19 07:27:48'),
(17, 'IDEX020', 'Petugas', 'Jupriadi', '082347152808', 'Lampa', 'Laki-laki', 'Lampa', '1995-04-20', 'Jupriadi_ff', '$2y$10$E.sfrHBz9XNf6JeWEG5orOlLtSGH/cc5WQqPFLnrY/HXzC5QcfkUq', 'photo_default.png', '1', '2023-02-19 10:01:55', '2023-02-19 10:05:18'),
(18, 'IDEX021', 'Petugas', 'M. Yunus', '082346157586', 'Lampa', 'Laki-laki', 'Mapilli', '1971-05-20', 'Yunus_ff', '$2y$10$6.D75UX2x0LDmipI48Nlh.W4/zwGD2.uwBV5PvQZziXhD6WoDGgH.', 'photo_default.png', '1', '2023-02-19 10:04:23', '2023-02-19 10:04:23'),
(19, 'IDEX022', 'Petugas', 'Firman Gani', '085242350092', 'Lampa', 'Laki-laki', 'Mapilli', '1993-05-12', 'Friman_ff', '$2y$10$pOH5RzvLsn8QRe5OwyohROl15597MyoEjSh5RrTNc6UaquGjn1RLy', 'photo_default.png', '1', '2023-02-19 11:39:52', '2023-02-19 11:39:52'),
(20, 'IDEX024', 'Petugas', 'Irwan Anas', '082190173991', 'Lampa', 'Laki-laki', 'Bonra', '1992-08-11', 'Irwan_ff', '$2y$10$zbw.6O3f70y.AojjJ3RO8.MqE9PvEMULQbMIcbK/OnPeXiwp.TZoS', 'photo_default.png', '1', '2023-02-19 11:41:37', '2023-02-19 11:41:37'),
(21, 'IDEX025', 'Petugas', 'Taslim', '081342651550', 'Mapilli', 'Laki-laki', 'Lampa', '1983-10-25', 'Taslim_ff', '$2y$10$bkO/SNY1etLHULt6xwRw4.jdqzBQEnW8AXnoMCw9lgfHgeTW/TMey', 'photo_default.png', '1', '2023-02-19 11:42:48', '2023-02-19 11:42:48'),
(22, 'IDEX026', 'Petugas', 'Salmon', '082192898067', 'Sumarorong', 'Laki-laki', 'Mamasa', '1983-02-16', 'Salmon_ff', '$2y$10$pwCOlfNkA2x48v0wkFDDbuKIhi.nyzvNhMuIqOHeWLYkV4s5Ftt6C', 'photo_default.png', '1', '2023-02-19 11:44:17', '2023-02-19 11:44:17'),
(23, 'IDEX027', 'Petugas', 'Tandi Karaeng', '08112047902', 'Mamasa', 'Laki-laki', 'Mamasa', '1984-11-04', 'Tandi_ff', '$2y$10$BTYC.EZr/RbPWyqeXwiqr.7IC88ILdDlQqNGlnjzG1SDbWZcHZd7a', 'photo_default.png', '1', '2023-02-19 11:45:39', '2023-02-19 11:45:39'),
(24, 'IDEX028', 'Petugas', 'Ashari', '081344218918', 'Polewali', 'Laki-laki', 'Mamasa', '1983-02-16', 'Ashari_ff', '$2y$10$U1xzjI7WoThouD4lZOAq1uvjrKKIKEnI5OLGOnwtCffLXB4qDbFPa', 'photo_default.png', '1', '2023-02-19 11:47:03', '2023-02-19 11:47:03'),
(25, 'IDEX029', 'Petugas', 'Daniel', '082349700927', 'Polewali', 'Laki-laki', 'Mamasa', '1993-02-16', 'Daniel_ff', '$2y$10$We1hY1I09BoY.cFqDHo1wOj9yR6/gnFxiiw1qD4cOqmnCFEj55qqC', 'photo_default.png', '1', '2023-02-19 12:36:05', '2023-02-19 12:36:05'),
(26, 'IDEX030', 'Petugas', 'Burhanuddin', '082349757419', 'Polewali', 'Laki-laki', 'Pariangan', '1988-06-26', 'Burhanuddin_ff', '$2y$10$YH0TmX2d7.hHCQCK./Nfq.5R2FdAiBSVTbFs4LZBzBuTqNfa2xqsW', 'photo_default.png', '1', '2023-02-19 12:38:00', '2023-02-19 12:38:00'),
(27, 'IDEX033', 'Petugas', 'Muh. Taqwansah', '085146248905', 'Lombok', 'Laki-laki', 'Polewali', '1992-06-05', 'Taqwansyah_ff', '$2y$10$gVIZ15bR.5.ACNZcoydDoe3zwllX5adMixyxW//o7GA.8ayhYhpOy', 'photo_default.png', '1', '2023-02-19 12:39:44', '2023-02-19 12:39:44'),
(28, 'IDEX037', 'Petugas', 'Wahyu', '082288628942', 'Polewali', 'Laki-laki', 'Manding', '1990-02-03', 'Wahyu_ff', '$2y$10$rVYFXySA4KgrjTfysGzNsukvAHMzJ3j9aYvRIbJlps8XE4gc99u.e', 'photo_default.png', '1', '2023-02-19 12:41:51', '2023-02-19 12:41:51'),
(29, 'IDEX038', 'Petugas', 'Rahmat', '082219158666', 'Bulo', 'Laki-laki', 'Bulo', '1987-03-16', 'Rahmat_ff', '$2y$10$.3IjtuHH06.O8nKBfWcwoO/ou3bGfwNT/YqxqngqkUYsDdN8B1b8i', 'photo_default.png', '1', '2023-02-19 12:43:27', '2023-02-19 12:43:27'),
(30, 'IDEX039', 'Petugas', 'Fadly Ardiansah', '085255259000', 'Makassar', 'Laki-laki', 'Polewali', '1987-04-12', 'Fadly_ff', '$2y$10$ORgPDkdO8it9Icyk76Z8Seh1BNy74Oi11s6oMv7Q/1ow8KLo9GAVq', 'photo_default.png', '1', '2023-02-19 12:44:40', '2023-02-19 12:44:40'),
(31, 'IDEX040', 'Petugas', 'Dani', '085342880226', 'Polewali', 'Laki-laki', 'Tutar', '1996-06-07', 'Dani_ff', '$2y$10$OBJ4AAs/NXYL05Kd9mO/RORfEdzgokwlm338SEgX8vUlZH3drkwxK', 'photo_default.png', '1', '2023-02-19 12:45:51', '2023-02-19 12:45:51'),
(32, 'IDEX041', 'Petugas', 'Alamsyah', '082273956911', 'Polewali', 'Laki-laki', 'Polmas', '1995-03-21', 'Alamsyah_ff', '$2y$10$c0c0yg5O7kL7KDbMx3K/0uot7ZvLXhnBHgEWozlCZncMULA4sfI5a', 'photo_default.png', '1', '2023-02-19 12:49:16', '2023-02-19 12:49:16'),
(33, 'IDEX042', 'Petugas', 'Yeyen', '082246132710', 'Kalimbua', 'Laki-laki', 'Kalimbua', '1997-04-05', 'Yeyen_ff', '$2y$10$7SMmyWnp96LFBjhk2Ki4FeiZF047FWT34Jtn.1F9epbPhLT73Qphi', 'photo_default.png', '1', '2023-02-19 12:50:20', '2023-02-19 12:50:20'),
(34, 'IDEX0006', 'Petugas', 'Awl', '00000', 'MAjene', 'Laki-laki', 'Smaata', '2023-03-01', 'Awl_ff', '$2y$10$4IxgyRorq/wFbyWI0MG/0u9UqzQLw5z/bx.XB2NWwVI7xiBeOxdqm', 'photo_default.png', '1', '2023-03-02 05:29:17', '2023-03-02 05:29:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_petani`
--

CREATE TABLE `tb_petani` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tanggal_sensus` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `id_petani` varchar(255) DEFAULT NULL,
  `kontak` varchar(255) DEFAULT NULL,
  `tanggal_lahir` varchar(255) DEFAULT NULL,
  `pendidikan` varchar(255) DEFAULT NULL,
  `kelompok` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kelurahan` varchar(255) DEFAULT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `jumlah_lahan` varchar(255) DEFAULT NULL,
  `luas_lahan` varchar(255) DEFAULT NULL,
  `kakau_lokal` varchar(255) DEFAULT NULL,
  `kakao_s1` varchar(255) DEFAULT NULL,
  `kakao_s2` varchar(255) DEFAULT NULL,
  `jarak_tanah` varchar(255) DEFAULT NULL,
  `hasil_panen` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `dokumentasi_sensus` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `petugas_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_petani`
--

INSERT INTO `tb_petani` (`id`, `nama`, `tanggal_sensus`, `jenis_kelamin`, `id_petani`, `kontak`, `tanggal_lahir`, `pendidikan`, `kelompok`, `alamat`, `kelurahan`, `kecamatan`, `jumlah_lahan`, `luas_lahan`, `kakau_lokal`, `kakao_s1`, `kakao_s2`, `jarak_tanah`, `hasil_panen`, `foto`, `dokumentasi_sensus`, `status`, `petugas_id`, `created_at`, `updated_at`) VALUES
(48, 'RASIDI', '2023-01-17', 'Laki-laki', 'IDPET0001', '85464905684509', '2023-01-17', 'Tamat SD', 'Mammesa', 'Lapejang', 'Lapejang', 'Tapango', '3', '5.6', '300', '34', '0', '5', '2000', NULL, 'image_1676592348.jpg', 'Suspended', '14', '2023-02-16 23:50:16', '2023-03-05 03:56:08'),
(49, 'ROHIM', '2023-01-17', 'Perempuan', 'IDPET0002', '857649567549', '2023-01-17', 'Tidak Sekolah', 'Sipatuo', 'Jalan poros siratuang ', 'LAPEJANG', 'TAPANGO', '2', '4', '50', '50', '0', '5', '2000', NULL, 'image_1676592648.jpg', 'Aktif', '14', '2023-02-16 23:51:05', '2023-03-05 03:56:08'),
(50, 'RUSLAN', '2022-08-07', 'Laki-laki', 'IDPET0003', '8474986745986', '1984-01-08', 'Tidak Sekolah', 'Mammesa', 'Jalan poros riso', 'LAPEJANG', 'TAPANGO', '2', '3', '50', '50', '0', '4', '1000', 'photo_default.png', 'image_1676592802.jpg', 'Aktif', '14', '2023-02-16 23:51:33', '2023-03-05 03:56:08'),
(52, 'SARMANI', '2022-09-11', 'Laki-laki', 'IDPET0005', '674987654', '1991-01-17', 'Tidak Sekolah', 'Mammesa', 'Siratuang', 'LAPEJANG', 'TAPANGO', '1', '2', '100', '30', '10', '4', '1000', 'photo_default.png', 'image_1676592951.jpg', 'Aktif', '14', '2023-02-16 23:52:37', '2023-03-05 03:56:08'),
(53, 'SAHRI', '2022-11-06', 'Laki-laki', 'IDPET0004', '58675986475698', '1985-01-05', 'Tidak Sekolah', 'Siaptuo', 'Talise', 'LAPEJANG', 'TAPANGO', '1', '2', '200', '0', '0', '4', '1000', 'photo_default.png', 'image_1676593065.jpg', 'Suspended', '14', '2023-02-17 00:00:43', '2023-03-05 03:56:08'),
(54, 'Suyanto', '1989-01-26', 'Laki-laki', 'IDPET0006', '0000', '1992-01-26', 'Tamat SMA/Sederajat', 'sahabat', 'luyo', 'Pussui', 'Luyo', '1', '0,5', '30', '20', '20', '4', '200', 'photo_default.png', 'image_1677427209.jpg', 'Aktif', '7', '2023-02-19 13:48:53', '2023-03-05 03:56:08'),
(55, 'Ali Amrin', '1993-01-27', 'Laki-laki', 'IDPET000', '0000', '1956-01-27', 'Tamat SMA/Sederajat', 'semoga jaya', 'pussui', 'Pussui', 'Luyo', '1', '0,5', '30', '20', '20', '4', '200', 'photo_default.png', 'image_1677428114.jpg', 'Suspended', '7', '2023-02-19 13:49:48', '2023-03-05 03:56:08'),
(56, 'M. Ruslan', '2022-11-06', 'Laki-laki', 'IDPET0397', '0000', '1987-01-26', 'Tidak Sekolah', 'Sipatuo', 'Jalan poros riso', 'Riso', 'Tapango', '3', '4', '300', '100', '300', '4', '2000', 'photo_default.png', 'image_1677426059.jpg', 'Aktif', '9', '2023-02-19 13:51:35', '2023-03-05 03:56:08'),
(57, 'Mupid', '1987-01-27', 'Laki-laki', 'IDPET0398', '0000', '1972-01-27', 'Tamat SMA/Sederajat', 'sumber jaya', 'riso', 'Riso', 'Tapango', '1', '0,5', '30', '20', '20', '3,5', '150', 'photo_default.png', 'image_1677428331.jpg', 'Suspended', '7', '2023-02-19 13:52:30', '2023-03-05 03:56:08'),
(58, 'Messy Kenedy', '2023-01-01', 'Laki-laki', 'IDPET0496', '0000', '1985-01-26', 'Tidak Sekolah', 'Sejahtera Bersama', 'Piriang', 'Tubbi', 'Tubbi Taramanu', '2', '2,4', '54', '132', '159', '4', '3000', 'image_1677426321.jpg', 'image_1677426429.jpg', 'Aktif', '9', '2023-02-19 13:55:06', '2023-03-05 03:56:08'),
(59, 'Mishar', '2023-00-03', 'Laki-laki', 'IDPET0497', '0000', '1984-01-26', 'Tidak Sekolah', 'Mammesa', 'Piriang tapiko', 'Tubbi', 'Tubbi Taramanu', '2', '2,3', '32', '340', '0', '0', '3000', 'photo_default.png', 'image_1677427303.jpg', 'Aktif', '10', '2023-02-19 13:57:22', '2023-03-05 03:56:08'),
(60, 'Riswanda', '2023-01-06', 'Laki-laki', 'IDPET0498', '0000', '1974-01-27', 'Tidak Sekolah', 'Sipatuo', 'Daala', 'Tubbi', 'Tubbi Taramanu', '2', '2,1', '300', '0', '0', '5', '1200', 'photo_default.png', 'image_1677428251.jpg', 'Suspended', '10', '2023-02-19 13:58:34', '2023-03-05 03:56:08'),
(61, 'Sodikin', '1975-01-27', 'Laki-laki', 'IDPET0523', '0000', '1978-01-27', 'Tamat SMA/Sederajat', 'semoga jaya', 'toloba', 'Taloba', 'Tubbi Taramanu', '1', '0,5', '40', '20', '20', '4', '200', 'photo_default.png', 'image_1677428995.jpg', 'Suspended', '11', '2023-02-19 13:59:45', '2023-03-05 03:56:08'),
(62, 'Sohib', '1990-01-27', 'Perempuan', 'IDPET0524', '0000', '1989-01-27', 'Tamat SMA/Sederajat', 'persaudaraan ', 'tubbi', 'Taloba', 'Tubbi Taramanu', '1', '0,5', '40', '30', '20', '4', '200', 'photo_default.png', 'image_1677429166.jpg', 'Suspended', '11', '2023-02-19 14:00:32', '2023-03-05 03:56:08'),
(63, 'M. Mashurin', '2023-00-26', 'Laki-laki', 'IDPET0672', '0000', '1983-02-17', 'Tamat SMA/Sederajat', 'harapan bersama', 'kunyi', 'Kelapa Dua', 'Anreapi', '1', '0.5', '70', '67', '28', '4', '500', 'photo_default.png', 'image_1677425829.jpg', 'Aktif', '12', '2023-02-19 14:01:29', '2023-03-05 03:56:08'),
(64, 'Meliyanti', '1986-01-26', 'Laki-laki', 'IDPET0673', '0000', '1995-01-26', 'Tamat SMA/Sederajat', 'kebersamaan ', 'pokko', 'Kelapa Dua', 'Anreapi', '1', '0,5', '80', '20', '15', '4', '400', 'photo_default.png', 'image_1677426139.jpg', 'Suspended', '12', '2023-02-19 14:02:16', '2023-03-05 03:56:08'),
(65, 'Heriyanto', NULL, NULL, 'IDPET0686', '0000', NULL, NULL, NULL, NULL, 'Kunyi', 'Anreapi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '15', '2023-02-19 14:03:14', '2023-02-19 14:03:14'),
(66, 'Junaini', NULL, NULL, 'IDPET0687', '0000', NULL, NULL, NULL, NULL, 'Kunyi', 'Anreapi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '15', '2023-02-19 14:03:55', '2023-02-19 14:03:55'),
(67, 'Kurni', NULL, NULL, 'IDPET0761', '0000', NULL, NULL, NULL, NULL, 'Duampanua', 'Anreapi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '16', '2023-02-19 14:05:34', '2023-02-19 14:05:34'),
(68, 'Supri', NULL, NULL, 'IDPET0762', '0000', NULL, NULL, NULL, NULL, 'Duampanua', 'Anreapi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '16', '2023-02-19 14:06:38', '2023-02-19 14:06:38'),
(69, 'Muhammad Arif', NULL, NULL, 'IDPET0821', '0000', NULL, NULL, NULL, NULL, 'Pulliwa', 'Bulo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '17', '2023-02-19 14:08:01', '2023-02-19 14:08:01'),
(70, 'Ibrohim', NULL, NULL, 'IDPET0823', '0000', NULL, NULL, NULL, NULL, 'Pulliwa', 'Bulo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '17', '2023-02-19 14:08:56', '2023-02-19 14:08:56'),
(71, 'Nasudin', NULL, NULL, 'IDPET0868', '0000', NULL, NULL, NULL, NULL, 'Landi Kanusuang', 'Bulo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '18', '2023-02-19 14:09:53', '2023-02-19 14:09:53'),
(72, 'Sugiyanto', NULL, NULL, 'IDPET0869', '0000', NULL, NULL, NULL, NULL, 'Landi Kanusuang', 'Bulo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '18', '2023-02-19 14:10:54', '2023-02-19 14:10:54'),
(73, 'Sarto', NULL, NULL, 'IDPET0920', '0000', NULL, NULL, NULL, NULL, 'Sumarrang', 'Campalagian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '19', '2023-02-19 14:12:11', '2023-02-19 14:12:11'),
(74, 'Endang Setiyowati', NULL, NULL, 'IDPET0923', '0000', NULL, NULL, NULL, NULL, 'Sumarrang', 'Campalagian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '19', '2023-02-19 14:13:15', '2023-02-19 14:13:15'),
(75, 'Agung Hermawan', NULL, NULL, 'IDPET0308', '0000', NULL, NULL, NULL, NULL, 'Batupanga Daala', 'Luyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '20', '2023-02-19 15:09:05', '2023-02-19 15:09:05'),
(76, 'Sarijan', NULL, NULL, 'IDPET0309', '0000', NULL, NULL, NULL, NULL, 'Batupanga Daala', 'Luyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '20', '2023-02-19 15:10:12', '2023-02-19 15:10:12'),
(77, 'Paimin', NULL, NULL, 'IDPET0322', '0000', NULL, NULL, NULL, NULL, 'Pussui Barat', 'Luyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '21', '2023-02-19 15:15:25', '2023-02-19 15:18:14'),
(78, 'Paidi', NULL, NULL, 'IDPET0323', '0000', NULL, NULL, NULL, NULL, 'Pussui Barat', 'Luyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '20', '2023-02-19 15:16:56', '2023-02-19 15:16:56'),
(79, 'Wahyudi', NULL, NULL, 'IDPET0343', '0000', NULL, NULL, NULL, NULL, 'Pussui Barat', 'Luyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '20', '2023-02-19 15:18:02', '2023-02-19 15:18:02'),
(80, 'Warsito', NULL, NULL, 'IDPET0344', '0000', NULL, NULL, NULL, NULL, 'Beroanging', 'Luyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '21', '2023-02-19 15:19:55', '2023-02-19 15:20:30'),
(81, 'Suanita', NULL, NULL, 'IDPET0350', '0000', NULL, NULL, NULL, NULL, 'Jambumalea', 'Tapango', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '22', '2023-02-19 15:21:18', '2023-02-19 15:21:18'),
(82, 'Tumijo', NULL, NULL, 'IDPET0351', '0000', NULL, NULL, NULL, NULL, 'Jambumalea', 'Tapango', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '22', '2023-02-19 15:21:59', '2023-02-19 15:21:59'),
(83, 'Tukiman', NULL, NULL, 'IDPET0', '0000', NULL, NULL, NULL, NULL, 'Tapango', 'Tapango', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '23', '2023-02-19 15:23:56', '2023-02-19 15:23:56'),
(84, 'Jiran', NULL, NULL, 'IDPET0372', '0000', NULL, NULL, NULL, NULL, 'Tapango', 'Tapango', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '23', '2023-02-19 15:24:27', '2023-02-19 15:24:27'),
(85, 'Ayuha', NULL, NULL, 'IDPET1280', '0000', NULL, NULL, NULL, NULL, 'Batupanga', 'Tubbi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '24', '2023-02-19 15:28:41', '2023-02-19 15:28:41'),
(86, 'Dedi Gunawan', NULL, NULL, 'IDPET1281', '0000', NULL, NULL, NULL, NULL, 'Batupanga', 'Tubbi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '24', '2023-02-19 15:29:29', '2023-02-19 15:29:29'),
(87, 'Enjen', NULL, NULL, 'IDPET1317', '0000', NULL, NULL, NULL, NULL, 'Sambaliwali', 'Luyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '25', '2023-02-19 15:30:50', '2023-02-19 15:30:50'),
(88, 'Kena', NULL, NULL, 'IDPET1', '0000', NULL, NULL, NULL, NULL, 'Sambaliwali', 'Luyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '25', '2023-02-19 15:31:28', '2023-02-19 15:31:28'),
(89, 'Mat Yasin', NULL, NULL, 'IDPET1338', '0000', NULL, NULL, NULL, NULL, 'Mambu', 'Luyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '26', '2023-02-19 15:32:25', '2023-02-19 15:32:25'),
(90, 'Muhaimin', NULL, NULL, 'IDPET1339', '0000', NULL, NULL, NULL, NULL, 'Mambu', 'Luyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '26', '2023-02-19 15:33:05', '2023-02-19 15:33:05'),
(91, 'Yahya Sudrajat', NULL, NULL, 'IDPET1434', '0000', NULL, NULL, NULL, NULL, 'Sattoko', 'Mapilli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '27', '2023-02-19 15:34:29', '2023-02-19 15:34:29'),
(92, 'Muklas', NULL, NULL, 'IDPET1435', '0000', NULL, NULL, NULL, NULL, 'Sattoko', 'Mapilli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '27', '2023-02-19 15:35:09', '2023-02-19 15:35:09'),
(93, 'Nurul Sapton', NULL, NULL, 'IDPET0382', '0000', NULL, NULL, NULL, NULL, 'Palatta', 'Tapango', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '28', '2023-02-19 18:02:26', '2023-02-19 18:02:26'),
(94, 'Pujiono', NULL, NULL, 'IDPET0383', '0000', NULL, NULL, NULL, NULL, 'Palatta', 'Tapango', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '28', '2023-02-19 18:03:19', '2023-02-19 18:03:19'),
(95, 'Pujiono', NULL, NULL, 'IDPET0383', '0000', NULL, NULL, NULL, NULL, 'Palatta', 'Tapango', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '28', '2023-02-19 18:03:19', '2023-02-19 18:03:19'),
(96, 'Aspuri', NULL, NULL, 'IDPET1450', '0000', NULL, NULL, NULL, NULL, 'Tapua', 'Matangnga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '29', '2023-02-19 18:05:02', '2023-02-19 18:05:02'),
(97, 'Dede Iskandar', NULL, NULL, 'IDPET1453', '0000', NULL, NULL, NULL, NULL, 'Tapua', 'Matangnga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '29', '2023-02-19 18:06:07', '2023-02-19 18:06:07'),
(98, 'Samaun', NULL, NULL, 'IDPET1464', '0000', NULL, NULL, NULL, NULL, 'Tuttula', 'Tapango', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '30', '2023-02-19 18:07:28', '2023-02-19 18:07:28'),
(99, 'Sarifuddin', NULL, NULL, 'IDPET1465', '0000', NULL, NULL, NULL, NULL, 'Tuttula', 'Tapango', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '30', '2023-02-19 18:09:16', '2023-02-19 18:09:16'),
(100, 'Zahrul Yadi', NULL, NULL, 'IDPET1473', '0000', NULL, NULL, NULL, NULL, 'Lapejang', 'Tapango', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '31', '2023-02-19 18:10:51', '2023-02-19 18:10:51'),
(101, 'Ahmad Zikir', NULL, NULL, 'IDPET1474', '0000', NULL, NULL, NULL, NULL, 'Lapejang', 'Tapango', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '31', '2023-02-19 18:11:40', '2023-02-19 18:11:40'),
(102, 'Ismail', NULL, NULL, 'IDPET1540', '0000', NULL, NULL, NULL, NULL, 'Ambopadang', 'Luyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '32', '2023-02-19 18:13:11', '2023-02-19 18:13:11'),
(103, 'Lahmuzi', NULL, NULL, 'IDPET1541', '0000', NULL, NULL, NULL, NULL, 'Ambopadang', 'Luyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '32', '2023-02-19 18:13:57', '2023-02-19 18:13:57'),
(104, 'Nurul Hadiansyah', NULL, NULL, 'IDPET2613', '0000', NULL, NULL, NULL, NULL, 'Riso', 'Tapango', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '33', '2023-02-19 18:15:44', '2023-02-19 18:15:44'),
(105, 'Saipul', NULL, NULL, 'IDPET2615', '0000', NULL, NULL, NULL, NULL, 'Riso', 'Tapango', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '33', '2023-02-19 18:16:21', '2023-02-19 18:16:21'),
(106, 'Suluh Rudito', '1965-01-27', 'Laki-laki', 'IDPET0052', '0000', '1973-01-27', 'Tamat SMA/Sederajat', 'saudara', 'mapilli', 'Tenggelang', 'Mapilli', '1', '0,5', '20', '30', '40', '4', '200', 'photo_default.png', 'image_1677428513.jpg', 'Suspended', '7', '2023-02-22 08:07:41', '2023-03-05 03:56:08'),
(107, 'Tugirin', '1983-01-27', 'Laki-laki', 'IDPET0053', '0000', '1981-01-27', 'Tamat SMA/Sederajat', 'sumber jaya', 'mapilli', 'Tenggelang', 'Mapilli', '1', '0,5', '40', '20', '20', '3', '150', 'photo_default.png', 'image_1677428685.jpg', 'Suspended', '7', '2023-02-22 08:08:14', '2023-03-05 03:56:08'),
(108, 'Achmad Fatoni', '2022-10-08', 'Laki-laki', 'TDPET0054', '0000', '1975-01-26', 'Tidak Sekolah', 'Mammesa', 'Tenggelang', 'Tenggelang', 'Mapilli', '1', '2', '132', '0', '27', '3,5', '3000', 'photo_default.png', 'image_1677426613.jpg', 'Aktif', '9', '2023-02-22 08:09:55', '2023-03-05 03:56:08'),
(109, 'Mahid', '2022-10-07', 'Laki-laki', 'IDPET0055', '0000', '1983-01-06', 'Tidak Sekolah', 'Milik bersama', 'Jalan poros tuttula', 'Tenggelang', 'Mapilli', '1', '3', '30', '120', '300', '4,4', '2000', 'image_1677426941.jpg', 'image_1677426808.jpg', 'Suspended', '9', '2023-02-22 08:10:40', '2023-03-05 03:56:08'),
(110, 'Hariadi', '2023-01-15', 'Laki-laki', 'IDPET0056', '0000', '1998-01-27', 'S1', 'Sipatuo', 'Silasila', 'Tenggelang', 'Mapilli', '3', '1,3', '122', '56', '48', '5', '1500', 'image_1677428549.jpg', 'image_1677428498.jpg', 'Suspended', '10', '2023-02-22 08:11:17', '2023-03-05 03:56:08'),
(111, 'Surono', '2023-00-02', 'Laki-laki', 'IDPET0056', '0000', '1999-01-27', 'Tamat SMA/Sederajat', 'Masogi ', 'Silasila', 'Tenggelang', 'Mapilli', '1', '0,8', '110', '0', '0', '4,5', '500', 'image_1677429004.jpg', 'image_1677428941.jpg', 'Suspended', '10', '2023-02-22 08:11:22', '2023-03-05 03:56:08'),
(112, 'Sunardi', '2023-00-04', 'Laki-laki', 'IDPET0057', '0000', '1994-01-27', 'Tamat SMA/Sederajat', 'Masogi', 'Silasila', 'Tenggelang', 'Mapilli', '2', '2,3', '48', '38', '132', '4', '1300', 'image_1677429087.jpg', 'image_1677429210.jpg', 'Aktif', '10', '2023-02-22 08:11:49', '2023-03-05 03:56:08'),
(113, 'Ahmad Asmani', '1984-01-27', 'Laki-laki', 'IDPET0058', '0000', '1995-01-27', 'Tamat SMA/Sederajat', 'makmur jaya', 'mapilli', 'Tenggelang', 'Mapilli', '1', '0,5', '40', '20', '20', '4', '200', 'photo_default.png', 'image_1677429314.jpg', 'Suspended', '11', '2023-02-22 08:12:37', '2023-03-05 03:56:08'),
(114, 'Dunyati', '1978-01-27', 'Laki-laki', 'IDPET059', '0000', '1991-01-27', 'Tamat SMA/Sederajat', 'satu hati', 'mapilli', 'Tenggelang', 'Mapilli', '1', '0,5', '40', '30', '20', '4', '120', 'photo_default.png', 'image_1677429446.jpg', 'Suspended', '11', '2023-02-22 08:14:55', '2023-03-05 03:56:08'),
(115, 'Nur hasim', '1997-01-26', 'Perempuan', 'IDPET0060', '0000', '1996-01-26', 'Tamat SMA/Sederajat', 'sumber jaya', 'jalan poros tenggelang', 'Tenggelang', 'Mapilli', '1', '0,5', '50', '33', '0', '4', '300', 'photo_default.png', 'image_1677426492.jpg', 'Suspended', '12', '2023-02-22 08:16:08', '2023-03-05 03:56:08'),
(116, 'Purwanto', '1992-01-26', 'Laki-laki', 'IDEPT0061', '0000', '1994-01-26', 'Tamat SMA/Sederajat', 'Sember jaya', 'jalan poros tenggelang', 'Tenggelang', 'Mapilli', '1', '0,5', '40', '30', '10', '4', '200', 'photo_default.png', 'image_1677426890.jpg', 'Suspended', '12', '2023-02-22 08:17:05', '2023-03-05 03:56:08'),
(117, 'Saidi', NULL, NULL, 'IDPET0062', '0000', NULL, NULL, NULL, NULL, 'Tenggelang', 'Mapilli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '15', '2023-02-22 08:17:34', '2023-02-22 08:17:34'),
(118, 'Siswanto', NULL, NULL, 'IDPET0063', '0000', NULL, NULL, NULL, NULL, 'Tenggelang', 'Mapilli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '15', '2023-02-22 08:18:30', '2023-02-22 08:18:30'),
(119, 'Sriyadi', NULL, NULL, 'IDPET0064', '0000', NULL, NULL, NULL, NULL, 'Tenggelang', 'Mapilli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '16', '2023-02-22 08:19:26', '2023-02-22 08:19:26'),
(120, 'Sulasto', NULL, NULL, 'IDPET0065', '0000', NULL, NULL, NULL, NULL, 'Tenggelang', 'Mapilli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '15', '2023-02-22 08:20:28', '2023-02-22 08:20:28'),
(121, 'Ishaq', NULL, NULL, 'IDPET0003', '00000', NULL, NULL, NULL, NULL, 'Kunyi', 'Binuang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'photo_default.png', NULL, 'Aktif', '24', '2023-03-02 05:27:13', '2023-03-02 05:27:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sensus`
--

CREATE TABLE `tb_sensus` (
  `id` int(11) NOT NULL,
  `petani_id` varchar(255) DEFAULT NULL,
  `petugas_id` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_sensus`
--

INSERT INTO `tb_sensus` (`id`, `petani_id`, `petugas_id`, `tanggal`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '2023-01-22', '2023-02-04 03:47:54', '2023-02-04 03:48:16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_inspeksi`
--
ALTER TABLE `tb_inspeksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_petani`
--
ALTER TABLE `tb_petani`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_sensus`
--
ALTER TABLE `tb_sensus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_inspeksi`
--
ALTER TABLE `tb_inspeksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `tb_petani`
--
ALTER TABLE `tb_petani`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT untuk tabel `tb_sensus`
--
ALTER TABLE `tb_sensus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
