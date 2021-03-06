-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2019 at 06:29 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laravel_siswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_01_30_171157_create_table_kelas', 1),
(2, '2019_01_31_095657_create_table_user', 2),
(3, '2019_01_31_121640_create_table_user', 3);

-- --------------------------------------------------------

--
-- Table structure for table `t_kelas`
--

CREATE TABLE `t_kelas` (
  `id_kelas` int(10) UNSIGNED NOT NULL,
  `nama_kelas` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_kelas`
--

INSERT INTO `t_kelas` (`id_kelas`, `nama_kelas`, `jurusan`, `created_at`, `updated_at`) VALUES
(1, 'XII-RPL1', 'Rekayasa Perangkat Lunak', NULL, NULL),
(2, 'XII-RPL2', 'Rekayasa Perangkat Lunak', NULL, NULL),
(3, 'X TKJ-1', 'Teknik Komputer Jaringan', '2019-01-30 21:07:10', '2019-02-02 02:11:08'),
(4, 'X RPL-1', 'Rekayasa Perangkat Lunak', '2019-02-07 01:20:03', '2019-02-07 01:20:03'),
(5, 'XI RPL-1', 'Rekayasa Perangkat Lunak', '2019-02-07 01:20:20', '2019-02-07 01:20:20'),
(6, 'X AK-1', 'Akuntansi', '2019-02-07 01:20:55', '2019-02-07 01:20:55'),
(7, 'XI -AK-1', 'Akuntansi', '2019-02-07 01:21:17', '2019-02-07 01:21:17'),
(8, 'XII AK-1', 'Akuntansi', '2019-02-07 01:21:28', '2019-02-07 01:21:28'),
(9, 'X MUL-1', 'Multimedia', '2019-02-07 01:21:46', '2019-02-07 01:21:46'),
(10, 'XI MUL-1', 'Multimedia', '2019-02-07 01:22:06', '2019-02-07 01:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `t_login`
--

CREATE TABLE `t_login` (
  `id_login` int(10) UNSIGNED NOT NULL,
  `nama_user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_login`
--

INSERT INTO `t_login` (`id_login`, `nama_user`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '$2y$10$4Nq5ZYamVa21Q/ajKXhAgeHj6hVDrSL5V13EPnjE6tEfYAN8hYH9W', 'nRrSWszfQyNMNyAYQaIXcGezC93o9rBCtLnrpqoeXUs8YvRCdUQoVWX156Tq', '2019-01-31 05:30:20', '2019-01-31 05:30:20');

-- --------------------------------------------------------

--
-- Table structure for table `t_siswa`
--

CREATE TABLE `t_siswa` (
  `nis` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `foto` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_siswa`
--

INSERT INTO `t_siswa` (`nis`, `nama_lengkap`, `jenis_kelamin`, `alamat`, `no_telp`, `id_kelas`, `created_at`, `updated_at`, `foto`) VALUES
(123456, 'Silma Syilviani', 'P', 'BANDUNG', '085923231709', 7, '2019-02-07 01:23:25', '2019-02-07 01:27:53', '123456.jpg'),
(656546, 'Lulu', 'P', 'bdg', '0876123616', 1, '2019-02-07 01:28:27', '2019-02-07 01:28:27', '656546.jpg'),
(7656567, 'Lili', 'L', 'Bandung', '07615161', 4, '2019-02-07 01:26:36', '2019-02-07 01:26:36', '7656567.jpg'),
(10515273, 'Silma Syilviani Nugraha', 'P', 'bdg', '085923231709', 2, '2019-02-02 02:10:17', '2019-02-02 02:10:17', '10515273.jpg'),
(12342343, 'Lany', 'L', 'bdg', '037832424', 8, '2019-02-07 01:24:46', '2019-02-07 01:24:46', '12342343.jpg'),
(35133324, 'Lala', 'P', 'bdg', '08171637271', 9, '2019-02-07 01:26:02', '2019-02-07 01:26:02', '35133324.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_kelas`
--
ALTER TABLE `t_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `t_login`
--
ALTER TABLE `t_login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `t_siswa`
--
ALTER TABLE `t_siswa`
  ADD PRIMARY KEY (`nis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_kelas`
--
ALTER TABLE `t_kelas`
  MODIFY `id_kelas` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `t_login`
--
ALTER TABLE `t_login`
  MODIFY `id_login` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
