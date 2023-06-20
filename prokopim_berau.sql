-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2023 at 01:31 PM
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
-- Database: `prokopim_berau`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_judul` varchar(225) NOT NULL,
  `agenda_slug` varchar(225) NOT NULL,
  `agenda_tanggal` date NOT NULL,
  `agenda_jam` time NOT NULL,
  `agenda_lokasi` varchar(225) NOT NULL,
  `agenda_petugas` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`agenda_id`, `agenda_judul`, `agenda_slug`, `agenda_tanggal`, `agenda_jam`, `agenda_lokasi`, `agenda_petugas`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'scsc23', 'scsc23', '2023-06-19', '22:44:00', 'scsc33', 'ascsac44', '2023-06-18 08:15:03', '2023-06-18 08:25:29', '2023-06-18 08:25:29'),
(2, 'dfsdfsdf', 'dfsdfsdf', '2023-06-20', '04:04:00', 'rwerew', 'fsfsd', '2023-06-18 08:30:00', '2023-06-18 08:30:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `berita_id` int(11) NOT NULL,
  `berita_judul` varchar(200) NOT NULL,
  `berita_slug` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`berita_id`, `berita_judul`, `berita_slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Kesehatan', 'kesehatan', '2023-06-17 02:36:10', '2023-06-17 03:18:17', NULL),
(2, 'Agama2', 'agama2', '2023-06-17 02:36:37', '2023-06-17 03:17:51', '2023-06-17 03:17:51'),
(3, 'Agama', 'agama', '2023-06-17 03:18:13', '2023-06-17 03:18:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `berita_detail`
--

CREATE TABLE `berita_detail` (
  `berita_detail_id` int(11) NOT NULL,
  `berita_id` int(11) NOT NULL,
  `berita_detail_judul` varchar(200) NOT NULL,
  `berita_detail_slug` varchar(200) NOT NULL,
  `berita_detail_gambar` varchar(200) NOT NULL,
  `berita_detail_isi` text NOT NULL,
  `berita_detail_dibaca` int(11) NOT NULL,
  `berita_detail_editor` varchar(200) NOT NULL,
  `berita_detail_rep` varchar(200) NOT NULL,
  `berita_detail_foto` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita_detail`
--

INSERT INTO `berita_detail` (`berita_detail_id`, `berita_id`, `berita_detail_judul`, `berita_detail_slug`, `berita_detail_gambar`, `berita_detail_isi`, `berita_detail_dibaca`, `berita_detail_editor`, `berita_detail_rep`, `berita_detail_foto`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Mencoba54', 'mencoba54', '1686991269_0e3d6ae3d22a50008ec7.jpg', '<p>dvvdfvdfvfvdf dfv dfv dfv dfv dfv fd 23</p>', 0, 'ddfsd23', 'dfsd32', 'ggtg32', '2023-06-17 03:41:09', '2023-06-17 04:25:30', '2023-06-17 04:25:30'),
(2, 3, 'Coba', 'coba', '1686993992_554fdeb74b8ceb4b8ea7.jpg', '<p>sdfsdf dfdsfdsf sdf sdfsd f sdf sdf sd</p>', 0, 'dvdv', 'sdd', 'vvd', '2023-06-17 04:26:32', '2023-06-17 04:26:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `berita_foto`
--

CREATE TABLE `berita_foto` (
  `berita_foto_id` int(11) NOT NULL,
  `berita_foto_judul` varchar(200) NOT NULL,
  `berita_foto_slug` varchar(200) NOT NULL,
  `berita_foto_gambar` varchar(200) NOT NULL,
  `berita_foto_deskripsi` text NOT NULL,
  `berita_foto_fotografer` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita_foto`
--

INSERT INTO `berita_foto` (`berita_foto_id`, `berita_foto_judul`, `berita_foto_slug`, `berita_foto_gambar`, `berita_foto_deskripsi`, `berita_foto_fotografer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'fgdfgfd', '', '', '<p>dfgfdg dfg dfg fd g</p>', 'gdfgdf', '2023-06-18 05:31:44', '2023-06-18 05:31:44', '2023-06-26 17:32:11'),
(2, 'gfdgfdgf', 'gfdgfdgf', '1687084382_e6d3c4d8b7f449532504.jpg', '<p>&nbsp;fgfdgfdg fg fdg fdg fdg</p>', 'sfgfdg', '2023-06-18 05:33:02', '2023-06-18 05:33:02', '2023-06-05 17:44:49'),
(3, 'fdfgfdg f 44', 'fdfgfdg-f-44', '1687085135_3989525789b937eebc64.jpg', '<p>dfgdfgfdg dgdfgfg fdg 44</p>', 'dfgfdg 44', '2023-06-18 05:45:11', '2023-06-18 05:45:35', NULL),
(4, 'sdfsdf', 'sdfsdf', '1687085160_7795cac2b3537a18cd3f.jpg', '<p>sdf sdfdsfdsf</p>', 'sdfdfds', '2023-06-18 05:46:00', '2023-06-18 05:46:28', '2023-06-18 05:46:28');

-- --------------------------------------------------------

--
-- Table structure for table `berita_kategori`
--

CREATE TABLE `berita_kategori` (
  `berita_kategori_id` int(11) NOT NULL,
  `berita_kategori_judul` varchar(200) NOT NULL,
  `berita_kategori_slug` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `download_id` int(11) NOT NULL,
  `download_judul` varchar(200) NOT NULL,
  `download_slug` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`download_id`, `download_judul`, `download_slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'dasdsad45', 'dasdsad45', '2023-06-18 22:28:46', '2023-06-18 22:42:52', '2023-06-18 22:42:52'),
(2, 'sdfdfd23', 'sdfdfd23', '2023-06-18 22:43:03', '2023-06-19 06:27:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `download_detail`
--

CREATE TABLE `download_detail` (
  `download_detail_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  `download_detail_judul` varchar(200) NOT NULL,
  `download_detail_slug` varchar(200) NOT NULL,
  `download_detail_ukuran` varchar(200) NOT NULL,
  `download_detail_ext` varchar(20) NOT NULL,
  `download_detail_file` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `download_detail`
--

INSERT INTO `download_detail` (`download_detail_id`, `download_id`, `download_detail_judul`, `download_detail_slug`, `download_detail_ukuran`, `download_detail_ext`, `download_detail_file`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'dfsdfsd', '', '', '', '', '2023-06-19 06:31:37', '2023-06-19 06:31:37', '2023-06-11 18:34:34'),
(2, 0, 'sdfdsf55', '', '', '', '', '2023-06-19 06:32:07', '2023-06-19 06:48:21', '2023-06-05 00:00:00'),
(3, 0, 'ghfghfg', '', '', '', '', '2023-06-19 06:32:45', '2023-06-19 06:32:45', '1900-01-01 00:00:00'),
(4, 2, 'sdfdsf55', '', '', '', '', '2023-06-19 06:34:23', '2023-06-19 06:51:01', '2023-06-19 06:51:01'),
(5, 2, 'dfsdf', '', '', '', '', '2023-06-19 06:51:13', '2023-06-20 03:16:43', '2023-06-20 03:16:43'),
(6, 2, 'efewfef', '', '', '', '1687247277_73f54d87961f1028abef.pdf', '2023-06-20 02:47:57', '2023-06-20 03:16:40', '2023-06-20 03:16:40'),
(7, 2, 'sdfdsf34', 'sdfdsf34', '161396', '', '1687247464_bcee62438a813a55a5de.pdf', '2023-06-20 02:51:04', '2023-06-20 03:16:36', '2023-06-20 03:16:36'),
(8, 2, 'sdff54', 'sdff54', '722810', '', '1687247552_6cfcca0619cb5a78618e.pdf', '2023-06-20 02:52:32', '2023-06-20 03:16:33', '2023-06-20 03:16:33'),
(9, 2, 'sdfsd33', 'sdfsd33', '215346', 'pdf', '1687248890_d23af42796e3ebf90d9d.pdf', '2023-06-20 03:14:50', '2023-06-20 03:14:50', NULL),
(10, 2, 'vbvb55', 'vbvb55', '330099', 'pdf', '1687249692_7293bcc36436743364f5.pdf', '2023-06-20 03:17:07', '2023-06-20 03:28:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galeri_kegiatan`
--

CREATE TABLE `galeri_kegiatan` (
  `galeri_kegiatan_id` int(11) NOT NULL,
  `galeri_kegiatan_judul` varchar(200) NOT NULL,
  `galeri_kegiatan_slug` varchar(200) NOT NULL,
  `galeri_kegiatan_fotografer` varchar(200) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `galeri_kegiatan`
--

INSERT INTO `galeri_kegiatan` (`galeri_kegiatan_id`, `galeri_kegiatan_judul`, `galeri_kegiatan_slug`, `galeri_kegiatan_fotografer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Menacr45', 'menac', 'ddfsd34', '2023-06-18', '2023-06-18 04:43:45', '2023-06-18 04:43:45'),
(2, 'Mosgo', 'mosgo', 'ade', '2023-06-18', '2023-06-18 04:44:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galeri_kegiatan_foto`
--

CREATE TABLE `galeri_kegiatan_foto` (
  `galeri_kegiatan_foto_id` int(11) NOT NULL,
  `galeri_kegiatan_id` int(11) NOT NULL,
  `galeri_kegiatan_foto_file` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `galeri_kegiatan_foto`
--

INSERT INTO `galeri_kegiatan_foto` (`galeri_kegiatan_foto_id`, `galeri_kegiatan_id`, `galeri_kegiatan_foto_file`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '1687081315_53237d7adfa6e5e753ac.jpeg', '2023-06-18 04:21:25', '2023-06-18 04:43:08', '2023-06-18 04:43:08'),
(2, 1, '1687081418_22baeb070b49c948052a.png', '2023-06-18 04:43:38', '2023-06-18 04:43:38', NULL),
(3, 2, '1687081466_c173eb529f070c11da35.png', '2023-06-18 04:44:26', '2023-06-18 04:44:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_judul` varchar(200) NOT NULL,
  `kategori_slug` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_judul`, `kategori_slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Coba23', 'coba23', '2023-06-17 07:06:56', '2023-06-20 00:42:01', NULL),
(2, 'mas3', 'mas3', '2023-06-17 07:07:27', '2023-06-17 08:32:31', '2023-06-17 08:32:31'),
(3, 'vv44', 'vv44', '2023-06-20 00:44:13', '2023-06-20 00:44:24', '2023-06-20 00:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `kontak_id` int(11) NOT NULL,
  `kontak_nama` varchar(200) NOT NULL,
  `kontak_pekerjaan` varchar(100) NOT NULL,
  `kontak_telp` varchar(25) NOT NULL,
  `kontak_file` varchar(200) NOT NULL,
  `kontak_alamat` varchar(200) NOT NULL,
  `kontak_email` varchar(200) NOT NULL,
  `kontak_komentar` text NOT NULL,
  `kontak_sebagai` tinyint(1) NOT NULL COMMENT '1: user, 2:admin',
  `kontak_show` tinyint(1) NOT NULL,
  `kontak_id_parent` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `pegawai_id` int(11) NOT NULL,
  `pegawai_foto` varchar(150) NOT NULL,
  `pegawai_nama` varchar(150) NOT NULL,
  `pegawai_gelar_depan` varchar(50) NOT NULL,
  `pegawai_gelar_belakang` varchar(50) NOT NULL,
  `pegawai_jabatan` varchar(100) NOT NULL,
  `pegawai_telp` varchar(25) NOT NULL,
  `pegawai_email` varchar(100) NOT NULL,
  `pegawai_tempat_lahir` varchar(80) NOT NULL,
  `pegawai_tgl_lahir` date NOT NULL,
  `pegawai_pangkat` varchar(80) NOT NULL,
  `pegawai_pendidikan_terakhir` varchar(80) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`pegawai_id`, `pegawai_foto`, `pegawai_nama`, `pegawai_gelar_depan`, `pegawai_gelar_belakang`, `pegawai_jabatan`, `pegawai_telp`, `pegawai_email`, `pegawai_tempat_lahir`, `pegawai_tgl_lahir`, `pegawai_pangkat`, `pegawai_pendidikan_terakhir`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'foto', 'Unggul', '', 'S.ST., M.T', '-', '453543', 'unggul@gmail.cc', 'Tulungagung', '1991-08-23', '-', 'S2', '2023-04-05 17:13:45', '2023-04-05 17:13:45', '2023-04-05 17:13:45');

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `pengaturan_id` int(11) NOT NULL,
  `pengaturan_logo_header` varchar(200) NOT NULL,
  `pengaturan_favicon` varchar(200) NOT NULL,
  `pengaturan_alamat` varchar(200) NOT NULL,
  `pengaturan_telp` varchar(25) NOT NULL,
  `pengaturan_fax` varchar(30) NOT NULL,
  `pengaturan_email` varchar(200) NOT NULL,
  `pengaturan_website` varchar(200) NOT NULL,
  `pengaturan_facebook` varchar(200) NOT NULL,
  `pengaturan_twitter` varchar(200) NOT NULL,
  `pengaturan_instagram` varchar(200) NOT NULL,
  `pengaturan_footer` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`pengaturan_id`, `pengaturan_logo_header`, `pengaturan_favicon`, `pengaturan_alamat`, `pengaturan_telp`, `pengaturan_fax`, `pengaturan_email`, `pengaturan_website`, `pengaturan_facebook`, `pengaturan_twitter`, `pengaturan_instagram`, `pengaturan_footer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1639190447_bc39c1adbbaaac247d20.png', '1639190447_83875e538042b6bbf6c5.png', 'treter43', '0865113', '0865113', 'wdwd@fdfd.df', 'jjhjkk', 'treter', 'treter', 'treter', 'treter', '2023-04-05 15:02:24', '2023-06-20 06:28:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `penghargaan`
--

CREATE TABLE `penghargaan` (
  `penghargaan_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `penghargaan_judul` varchar(200) NOT NULL,
  `penghargaan_slug` varchar(200) NOT NULL,
  `penghargaan_gambar` varchar(200) NOT NULL,
  `penghargaan_isi` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penghargaan`
--

INSERT INTO `penghargaan` (`penghargaan_id`, `kategori_id`, `penghargaan_judul`, `penghargaan_slug`, `penghargaan_gambar`, `penghargaan_isi`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'vdvdvs', 'vdvdvs', '1687241974_b5ea9292c7cd5309a98b.jpg', '<p>sdvdsvdvd dvdvdsv</p>', '2023-06-20 01:19:34', '2023-06-20 01:38:40', '2023-06-20 01:38:40'),
(2, 1, 'ffdgfdgd', 'ffdgfdgd', '1687243140_4d9710df2727b16e1f55.jpg', '<p>vcbvcbcvbvcb</p>', '2023-06-20 01:39:00', '2023-06-20 01:40:17', '2023-06-20 01:40:17'),
(3, 1, 'dvsdvd', 'dvsdvd', '1687243232_4cba12e0a4cae8ba09b2.jpg', '<p>dvsdvdsv</p>', '2023-06-20 01:40:32', '2023-06-20 01:41:21', '2023-06-20 01:41:21'),
(4, 1, 'dvsdvd44d', 'dvsdvd44d', '1687243329_1b6bdef1e75ae654be0d.jpg', '<p>dvsdvdxcv5vv45sv</p>', '2023-06-20 01:41:03', '2023-06-20 01:42:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung`
--

CREATE TABLE `pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_ip` varchar(50) NOT NULL,
  `pengunjung_browser` varchar(100) NOT NULL,
  `pengunjung_os` varchar(100) NOT NULL,
  `pengunjung_sistem_operasi` varchar(225) NOT NULL,
  `pengunjung_tgl` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengunjung`
--

INSERT INTO `pengunjung` (`pengunjung_id`, `pengunjung_ip`, `pengunjung_browser`, `pengunjung_os`, `pengunjung_sistem_operasi`, `pengunjung_tgl`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '::1', 'Firefox', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '2023-04-09', '2023-04-09 09:51:01', '2023-04-09 09:51:01', '0000-00-00 00:00:00'),
(2, '::1', 'Firefox', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '2023-04-09', '2023-04-09 12:27:54', '2023-04-09 12:27:54', NULL),
(3, '::1', 'Firefox', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', '2023-06-16', '2023-06-16 22:21:44', '2023-06-16 22:21:44', NULL),
(4, '::1', 'Firefox', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', '2023-06-17', '2023-06-17 02:03:15', '2023-06-17 02:03:15', NULL),
(5, '::1', 'Firefox', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', '2023-06-18', '2023-06-18 00:06:30', '2023-06-18 00:06:30', NULL),
(6, '::1', 'Firefox', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', '2023-06-19', '2023-06-19 06:25:59', '2023-06-19 06:25:59', NULL),
(7, '::1', 'Firefox', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', '2023-06-20', '2023-06-20 00:34:56', '2023-06-20 00:34:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pidato_detail`
--

CREATE TABLE `pidato_detail` (
  `pidato_detail_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `pidato_detail_judul` varchar(200) NOT NULL,
  `pidato_detail_slug` varchar(200) NOT NULL,
  `pidato_detail_tgl_acara` date NOT NULL,
  `pidato_detail_tempat` varchar(100) NOT NULL,
  `pidato_detail_file` varchar(225) NOT NULL,
  `pidato_detail_ext` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pidato_detail`
--

INSERT INTO `pidato_detail` (`pidato_detail_id`, `kategori_id`, `pidato_detail_judul`, `pidato_detail_slug`, `pidato_detail_tgl_acara`, `pidato_detail_tempat`, `pidato_detail_file`, `pidato_detail_ext`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'coba4', 'coba4', '2023-06-20', 'dvdvdvtt4', '', '', '2023-06-18 00:26:41', '2023-06-18 01:42:36', '2023-06-18 01:42:36'),
(2, 1, 'hghh', 'hghh', '2023-06-29', 'fghfgh', '', '', '2023-06-18 01:43:51', '2023-06-18 01:43:51', NULL),
(3, 1, 'Pro22', 'pro22', '2023-06-20', 'Kos', '1687257542_f9b533bd98d4ef8b11e0.pdf', 'pdf', '2023-06-20 05:21:44', '2023-06-20 05:39:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pidato_pantun`
--

CREATE TABLE `pidato_pantun` (
  `pidato_pantun_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `pidato_detail_id` int(11) NOT NULL,
  `pidato_pantun_isi` text NOT NULL,
  `pidato_pantun_dibaca` int(8) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pidato_pantun`
--

INSERT INTO `pidato_pantun` (`pidato_pantun_id`, `kategori_id`, `pidato_detail_id`, `pidato_pantun_isi`, `pidato_pantun_dibaca`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 0, '<p>hsjdfhjsdhfjkdshfjk sjdf j</p>\r\n<p>skjdfhkjdsfhjdshfjdshfkj</p>\r\n<p>skdjfhkjdshfjkdshfj</p>', 0, '2023-06-18 02:35:44', '2023-06-18 02:35:44', NULL),
(2, 1, 2, '<p>dfjdsfkhdskhf sdjfhkjdsfhkjsd</p>\r\n<p>ksjdfhjkdshf kjdfhkjdshfk</p>\r\n<p>ksjdfhjkdshfkjshf jkshdjfkhdsjkf</p>\r\n<p>dsfsdf454</p>', 0, '2023-06-18 02:36:26', '2023-06-18 02:50:17', NULL),
(3, 1, 2, '<p>hfhfghgfhgfh</p>', 0, '2023-06-18 02:50:29', '2023-06-18 02:50:29', NULL),
(4, 1, 2, '<p>fghfghg fghfghg hgfh</p>', 0, '2023-06-18 02:50:38', '2023-06-18 02:51:48', '2023-06-18 02:51:48');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `profil_id` int(11) NOT NULL,
  `profil_judul` varchar(200) NOT NULL,
  `profil_slug` varchar(200) NOT NULL,
  `profil_isi` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`profil_id`, `profil_judul`, `profil_slug`, `profil_isi`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'sdf54', 'sdf54', '<p>sdd d d d d ddffdfdf45</p>', '2023-06-17 06:24:46', '2023-06-17 06:27:49', '2023-06-17 06:27:49'),
(2, 'bnvbn', 'bnvbn', '<p>vbnvbnbvv vbnbvnvb</p>', '2023-06-17 06:27:59', '2023-06-17 06:27:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sekretariat`
--

CREATE TABLE `sekretariat` (
  `sekretariat_id` int(11) NOT NULL,
  `sekretariat_judul` varchar(200) NOT NULL,
  `sekretariat_slug` varchar(200) NOT NULL,
  `sekretariat_isi` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sekretariat`
--

INSERT INTO `sekretariat` (`sekretariat_id`, `sekretariat_judul`, `sekretariat_slug`, `sekretariat_isi`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'coba23', 'coba23', '<p>dfsjdnfjksdnf sjkdf sdf33</p>', '2023-06-17 05:41:00', '2023-06-17 05:51:19', '2023-06-17 05:51:19'),
(2, 'vdv', 'vdv', '<p>sdvbgg bgb fgb gfb</p>', '2023-06-17 05:57:12', '2023-06-20 03:34:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_judul_1` varchar(225) NOT NULL,
  `slider_judul_2` varchar(225) NOT NULL,
  `slider_gambar` varchar(225) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_judul_1`, `slider_judul_2`, `slider_gambar`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'dsvd', 'vsdvdsv', '1687243814_dcadc0791696a0e617bd.jpg', '2023-06-20 01:50:14', '2023-06-20 01:50:56', '2023-06-20 01:50:56'),
(2, 'dsvd34f', 'vsdvdsv34g', '1687243870_bc6b7683801f4ac4da29.jpg', '2023-06-20 01:50:33', '2023-06-20 01:51:10', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `pegawai_id` int(11) NOT NULL,
  `users_name` varchar(80) NOT NULL,
  `users_password` varchar(100) NOT NULL,
  `users_salt` varchar(50) NOT NULL,
  `users_level` tinyint(4) NOT NULL,
  `users_foto` varchar(100) NOT NULL,
  `users_lastlogin` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `users_lastip` varchar(15) NOT NULL,
  `users_created` datetime NOT NULL,
  `users_updated` datetime NOT NULL,
  `users_deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `pegawai_id`, `users_name`, `users_password`, `users_salt`, `users_level`, `users_foto`, `users_lastlogin`, `users_lastip`, `users_created`, `users_updated`, `users_deleted`) VALUES
(1, 1, 'admin', '$2y$10$lTDAkGROmqfxcOPH2Bstu.EytCm3ivFdjQW76zS1UwxXcue/ZVSBG', '#CFie5X_JIYcu^&mM9f+k$tlv', 1, 'hacker.png', '2023-06-19 23:23:07', '::1', '2023-04-05 17:12:04', '2023-06-20 06:23:07', NULL),
(2, 2, 'admin2', '$2y$10$lTDAkGROmqfxcOPH2Bstu.EytCm3ivFdjQW76zS1UwxXcue/ZVSBG', '#CFie5X_JIYcu^&mM9f+k$tlv', 1, 'hacker_1.png', '2023-06-17 13:59:57', '', '2023-04-05 19:01:07', '2023-04-05 19:01:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usersonline`
--

CREATE TABLE `usersonline` (
  `usersonline_id` int(11) NOT NULL,
  `usersonline_timestamp` varchar(100) NOT NULL,
  `usersonline_ip` varchar(100) NOT NULL,
  `usersonline_file` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usersonline`
--

INSERT INTO `usersonline` (`usersonline_id`, `usersonline_timestamp`, `usersonline_ip`, `usersonline_file`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1681052029', '::1', '/index.php/auth', '2023-04-09 09:53:49', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(2, '1681053722', '::1', '/index.php/auth/check_login', '2023-04-09 10:22:02', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(3, '1681053722', '::1', '/index.php/auth', '2023-04-09 10:22:02', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(4, '1681053741', '::1', '/index.php/auth/check_login', '2023-04-09 10:22:21', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(5, '1681053741', '::1', '/index.php/auth', '2023-04-09 10:22:21', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(6, '1681054267', '::1', '/index.php/auth', '2023-04-09 10:31:07', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(7, '1681054270', '::1', '/index.php/auth/check_login', '2023-04-09 10:31:10', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(8, '1681054270', '::1', '/index.php/auth', '2023-04-09 10:31:10', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(9, '1681054751', '::1', '/index.php/auth', '2023-04-09 10:39:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(10, '1681054753', '::1', '/index.php/auth/check_login', '2023-04-09 10:39:13', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(11, '1681055552', '::1', '/index.php/auth/check_login', '2023-04-09 10:52:32', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(12, '1681055552', '::1', '/index.php/nimda/home', '2023-04-09 10:52:32', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(13, '1681061274', '::1', '/index.php/nimda/home', '2023-04-09 12:27:54', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(14, '1681061339', '::1', '/index.php/nimda/home', '2023-04-09 12:28:59', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(15, '1681061403', '::1', '/index.php/nimda/home', '2023-04-09 12:30:03', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(16, '1681061428', '::1', '/index.php/nimda/home', '2023-04-09 12:30:28', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(17, '1681061439', '::1', '/index.php/nimda/home', '2023-04-09 12:30:39', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(18, '1681061515', '::1', '/index.php/nimda/home', '2023-04-09 12:31:55', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(19, '1681061539', '::1', '/index.php/nimda/home', '2023-04-09 12:32:19', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(20, '1681061588', '::1', '/index.php/nimda/home', '2023-04-09 12:33:08', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(21, '1681061626', '::1', '/index.php/nimda/home', '2023-04-09 12:33:46', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(22, '1681061744', '::1', '/index.php/nimda/home', '2023-04-09 12:35:44', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(23, '1686972104', '::1', '/index.php/auth', '2023-06-16 22:21:44', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(24, '1686973601', '::1', '/index.php/auth', '2023-06-16 22:46:41', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(25, '1686973754', '::1', '/index.php/auth', '2023-06-16 22:49:14', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(26, '1686973773', '::1', '/index.php/auth/check_login', '2023-06-16 22:49:33', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(27, '1686973773', '::1', '/index.php/nimda/home', '2023-06-16 22:49:33', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(28, '1686974682', '::1', '/index.php/nimda/kategori/index/berita', '2023-06-16 23:04:42', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(29, '1686985395', '::1', '/index.php', '2023-06-17 02:03:15', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(30, '1686985403', '::1', '/index.php/auth', '2023-06-17 02:03:23', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(31, '1686985406', '::1', '/index.php/auth/check_login', '2023-06-17 02:03:26', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(32, '1686985406', '::1', '/index.php/nimda/home', '2023-06-17 02:03:26', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(33, '1686985410', '::1', '/index.php/nimda/kategori/index/berita', '2023-06-17 02:03:30', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(34, '1686985761', '::1', '/index.php', '2023-06-17 02:09:21', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(35, '1686985906', '::1', '/index.php/nimda/kategori/index/berita', '2023-06-17 02:11:46', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(36, '1686985940', '::1', '/index.php/nimda/berita', '2023-06-17 02:12:20', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(37, '1686985946', '::1', '/index.php/nimda/berita/add', '2023-06-17 02:12:26', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(38, '1686985950', '::1', '/index.php/nimda/kategori/index/berita', '2023-06-17 02:12:30', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(39, '1686985951', '::1', '/index.php/nimda/berita', '2023-06-17 02:12:31', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(40, '1686986089', '::1', '/index.php/nimda/berita', '2023-06-17 02:14:49', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(41, '1686986093', '::1', '/index.php/nimda/berita/kategori', '2023-06-17 02:14:53', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(42, '1686986834', '::1', '/index.php/nimda/berita/kategori', '2023-06-17 02:27:14', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(43, '1686986856', '::1', '/index.php/nimda/berita/kategori', '2023-06-17 02:27:36', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(44, '1686986865', '::1', '/index.php/nimda/berita', '2023-06-17 02:27:45', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(45, '1686986905', '::1', '/index.php/nimda/berita/kategori', '2023-06-17 02:28:25', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(46, '1686986907', '::1', '/index.php/nimda/berita', '2023-06-17 02:28:27', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(47, '1686986909', '::1', '/index.php/nimda/berita/kategori', '2023-06-17 02:28:29', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(48, '1686986934', '::1', '/index.php/nimda/berita/kategori', '2023-06-17 02:28:54', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(49, '1686987124', '::1', '/index.php/nimda/berita/kategori', '2023-06-17 02:32:04', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(50, '1686987208', '::1', '/index.php/nimda/berita/kategori', '2023-06-17 02:33:28', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(51, '1686987366', '::1', '/index.php/nimda/berita/kategori', '2023-06-17 02:36:06', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(52, '1686987370', '::1', '/index.php/nimda/berita/savekategori', '2023-06-17 02:36:10', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(53, '1686987370', '::1', '/index.php/nimda/berita/kategori/', '2023-06-17 02:36:10', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(54, '1686987397', '::1', '/index.php/nimda/berita/savekategori', '2023-06-17 02:36:37', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(55, '1686987397', '::1', '/index.php/nimda/berita/kategori/', '2023-06-17 02:36:37', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(56, '1686987510', '::1', '/index.php/nimda/berita/kategori/', '2023-06-17 02:38:30', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(57, '1686987578', '::1', '/index.php/nimda/berita/kategori/', '2023-06-17 02:39:38', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(58, '1686987594', '::1', '/index.php/nimda/berita/kategori/', '2023-06-17 02:39:54', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(59, '1686987980', '::1', '/index.php/nimda/berita/kategori_edit/2', '2023-06-17 02:46:20', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(60, '1686988049', '::1', '/index.php/nimda/berita/kategori_edit/2', '2023-06-17 02:47:29', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(61, '1686988118', '::1', '/index.php/nimda/berita/kategori_edit/2', '2023-06-17 02:48:38', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(62, '1686988154', '::1', '/index.php/nimda/berita/kategori_edit/2', '2023-06-17 02:49:14', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(63, '1686988155', '::1', '/index.php/nimda/berita/kategori/', '2023-06-17 02:49:15', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(64, '1686988157', '::1', '/index.php/nimda/berita/kategori_edit/2', '2023-06-17 02:49:17', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(65, '1686988164', '::1', '/index.php/nimda/berita/kategori/', '2023-06-17 02:49:24', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(66, '1686989249', '::1', '/index.php/nimda/berita/kategori_edit/2', '2023-06-17 03:07:29', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(67, '1686989349', '::1', '/index.php/nimda/berita/kategori_edit/2', '2023-06-17 03:09:09', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(68, '1686989604', '::1', '/index.php/nimda/berita/kategori_edit/2', '2023-06-17 03:13:24', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(69, '1686989606', '::1', '/index.php/nimda/berita/kategori_update', '2023-06-17 03:13:26', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(70, '1686989606', '::1', '/index.php/nimda/berita/kategori/', '2023-06-17 03:13:26', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(71, '1686989799', '::1', '/index.php/nimda/berita/kategori_edit/1', '2023-06-17 03:16:39', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(72, '1686989801', '::1', '/index.php/nimda/berita/kategori_update', '2023-06-17 03:16:41', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(73, '1686989801', '::1', '/index.php/nimda/berita/kategori/', '2023-06-17 03:16:41', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(74, '1686989871', '::1', '/index.php/nimda/berita/kategori_delete/2', '2023-06-17 03:17:51', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(75, '1686989871', '::1', '/index.php/nimda/berita/kategori/', '2023-06-17 03:17:51', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(76, '1686989893', '::1', '/index.php/nimda/berita/savekategori', '2023-06-17 03:18:13', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(77, '1686989893', '::1', '/index.php/nimda/berita/kategori/', '2023-06-17 03:18:13', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(78, '1686989896', '::1', '/index.php/nimda/berita/kategori_edit/1', '2023-06-17 03:18:16', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(79, '1686989897', '::1', '/index.php/nimda/berita/kategori_update', '2023-06-17 03:18:17', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(80, '1686989897', '::1', '/index.php/nimda/berita/kategori/', '2023-06-17 03:18:17', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(81, '1686989912', '::1', '/index.php/nimda/berita', '2023-06-17 03:18:32', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(82, '1686989957', '::1', '/index.php/nimda/berita/add', '2023-06-17 03:19:17', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(83, '1686990039', '::1', '/index.php/nimda/berita', '2023-06-17 03:20:39', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(84, '1686990044', '::1', '/index.php/nimda/berita/kategori', '2023-06-17 03:20:44', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(85, '1686990046', '::1', '/index.php/nimda/berita/add', '2023-06-17 03:20:46', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(86, '1686990048', '::1', '/index.php/nimda/berita', '2023-06-17 03:20:48', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(87, '1686990049', '::1', '/index.php/nimda/berita/add', '2023-06-17 03:20:49', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(88, '1686990051', '::1', '/index.php/nimda/berita', '2023-06-17 03:20:51', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(89, '1686990053', '::1', '/index.php/nimda/berita/add', '2023-06-17 03:20:53', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(90, '1686990112', '::1', '/index.php/nimda/berita/add', '2023-06-17 03:21:52', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(91, '1686990131', '::1', '/index.php/nimda/berita/add', '2023-06-17 03:22:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(92, '1686990721', '::1', '/index.php/nimda/berita/add', '2023-06-17 03:32:01', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(93, '1686990761', '::1', '/index.php/nimda/berita/add', '2023-06-17 03:32:41', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(94, '1686991216', '::1', '/index.php/nimda/berita/add', '2023-06-17 03:40:16', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(95, '1686991269', '::1', '/index.php/nimda/berita/save', '2023-06-17 03:41:09', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(96, '1686991269', '::1', '/index.php/nimda/berita', '2023-06-17 03:41:09', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(97, '1686991483', '::1', '/index.php/nimda/berita', '2023-06-17 03:44:43', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(98, '1686991549', '::1', '/index.php/nimda/berita', '2023-06-17 03:45:49', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(99, '1686991556', '::1', '/index.php/nimda/berita/edit/1', '2023-06-17 03:45:56', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(100, '1686991826', '::1', '/index.php/nimda/berita/edit/1', '2023-06-17 03:50:26', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(101, '1686992311', '::1', '/index.php/nimda/berita/edit/1', '2023-06-17 03:58:31', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(102, '1686993510', '::1', '/index.php/nimda/berita/edit/1', '2023-06-17 04:18:30', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(103, '1686993862', '::1', '/index.php/nimda/berita/edit/1', '2023-06-17 04:24:22', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(104, '1686993875', '::1', '/index.php/nimda/berita/update/1', '2023-06-17 04:24:35', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(105, '1686993875', '::1', '/index.php/nimda/berita', '2023-06-17 04:24:35', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(106, '1686993880', '::1', '/index.php/nimda/berita/edit/1', '2023-06-17 04:24:40', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(107, '1686993893', '::1', '/index.php/nimda/berita', '2023-06-17 04:24:53', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(108, '1686993922', '::1', '/index.php/nimda/berita', '2023-06-17 04:25:22', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(109, '1686993930', '::1', '/index.php/nimda/berita/delete/1', '2023-06-17 04:25:30', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(110, '1686993930', '::1', '/index.php/nimda/berita', '2023-06-17 04:25:30', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(111, '1686993952', '::1', '/index.php/nimda/berita/add', '2023-06-17 04:25:52', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(112, '1686993992', '::1', '/index.php/nimda/berita/save', '2023-06-17 04:26:32', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(113, '1686993992', '::1', '/index.php/nimda/berita', '2023-06-17 04:26:32', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(114, '1686997169', '::1', '/index.php/nimda/berita', '2023-06-17 05:19:29', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(115, '1686998073', '::1', '/index.php/nimda/sekretariat', '2023-06-17 05:34:33', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(116, '1686998155', '::1', '/index.php/nimda/sekretariat', '2023-06-17 05:35:55', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(117, '1686998174', '::1', '/index.php/nimda/sekretariat/add', '2023-06-17 05:36:14', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(118, '1686998283', '::1', '/index.php/nimda/sekretariat/add', '2023-06-17 05:38:03', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(119, '1686998292', '::1', '/index.php/nimda/sekretariat/add', '2023-06-17 05:38:12', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(120, '1686998294', '::1', '/index.php/nimda/sekretariat', '2023-06-17 05:38:14', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(121, '1686998298', '::1', '/index.php/nimda/sekretariat/add', '2023-06-17 05:38:18', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(122, '1686998319', '::1', '/index.php/nimda/sekretariat/add', '2023-06-17 05:38:39', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(123, '1686998321', '::1', '/index.php/nimda/sekretariat', '2023-06-17 05:38:41', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(124, '1686998323', '::1', '/index.php/nimda/sekretariat/add', '2023-06-17 05:38:43', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(125, '1686998444', '::1', '/index.php/nimda/sekretariat/add', '2023-06-17 05:40:44', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(126, '1686998460', '::1', '/index.php/nimda/sekretariat/save', '2023-06-17 05:41:00', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(127, '1686998460', '::1', '/index.php/nimda/sekretariat', '2023-06-17 05:41:00', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(128, '1686998632', '::1', '/index.php/nimda/sekretariat/edit/1', '2023-06-17 05:43:52', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(129, '1686999037', '::1', '/index.php/nimda/sekretariat/update/1', '2023-06-17 05:50:37', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(130, '1686999037', '::1', '/index.php/nimda/sekretariat', '2023-06-17 05:50:37', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(131, '1686999039', '::1', '/index.php/nimda/sekretariat/edit/1', '2023-06-17 05:50:39', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(132, '1686999042', '::1', '/index.php/nimda/sekretariat', '2023-06-17 05:50:42', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(133, '1686999077', '::1', '/index.php/nimda/sekretariat', '2023-06-17 05:51:17', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(134, '1686999079', '::1', '/index.php/nimda/sekretariat/delete/1', '2023-06-17 05:51:19', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(135, '1686999079', '::1', '/index.php/nimda/sekretariat', '2023-06-17 05:51:19', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(136, '1686999420', '::1', '/index.php/nimda/sekretariat', '2023-06-17 05:57:00', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(137, '1686999428', '::1', '/index.php/nimda/sekretariat/add', '2023-06-17 05:57:08', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(138, '1686999432', '::1', '/index.php/nimda/sekretariat/save', '2023-06-17 05:57:12', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(139, '1686999432', '::1', '/index.php/nimda/sekretariat', '2023-06-17 05:57:12', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(140, '1687000810', '::1', '/index.php/nimda/sekretariat', '2023-06-17 06:20:10', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(141, '1687000813', '::1', '/index.php/nimda/profil', '2023-06-17 06:20:13', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(142, '1687000849', '::1', '/index.php/nimda/profil/add', '2023-06-17 06:20:49', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(143, '1687000991', '::1', '/index.php/nimda/profil/add', '2023-06-17 06:23:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(144, '1687001086', '::1', '/index.php/nimda/profil/save', '2023-06-17 06:24:46', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(145, '1687001086', '::1', '/index.php/nimda/profil', '2023-06-17 06:24:46', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(146, '1687001145', '::1', '/index.php/nimda/profil', '2023-06-17 06:25:45', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(147, '1687001153', '::1', '/index.php/nimda/profil/edit/1', '2023-06-17 06:25:53', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(148, '1687001157', '::1', '/index.php/nimda/profil', '2023-06-17 06:25:57', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(149, '1687001214', '::1', '/index.php/nimda/profil', '2023-06-17 06:26:54', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(150, '1687001215', '::1', '/index.php/nimda/profil/edit/1', '2023-06-17 06:26:55', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(151, '1687001256', '::1', '/index.php/nimda/profil/update/1', '2023-06-17 06:27:36', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(152, '1687001256', '::1', '/index.php/nimda/profil', '2023-06-17 06:27:36', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(153, '1687001258', '::1', '/index.php/nimda/profil/edit/1', '2023-06-17 06:27:38', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(154, '1687001261', '::1', '/index.php/nimda/profil', '2023-06-17 06:27:41', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(155, '1687001269', '::1', '/index.php/nimda/profil/delete/1', '2023-06-17 06:27:49', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(156, '1687001269', '::1', '/index.php/nimda/profil', '2023-06-17 06:27:49', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(157, '1687001274', '::1', '/index.php/nimda/profil/add', '2023-06-17 06:27:54', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(158, '1687001279', '::1', '/index.php/nimda/profil/save', '2023-06-17 06:27:59', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(159, '1687001279', '::1', '/index.php/nimda/profil', '2023-06-17 06:27:59', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(160, '1687002341', '::1', '/index.php/nimda/profil', '2023-06-17 06:45:41', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(161, '1687002662', '::1', '/index.php/nimda/pidato/kategori', '2023-06-17 06:51:02', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(162, '1687002710', '::1', '/index.php/nimda/pidato/kategori', '2023-06-17 06:51:50', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(163, '1687003516', '::1', '/index.php/nimda/pidato/kategori', '2023-06-17 07:05:16', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(164, '1687003616', '::1', '/index.php/nimda/pidato/savekategori', '2023-06-17 07:06:56', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(165, '1687003618', '::1', '/index.php/nimda/pidato/kategori', '2023-06-17 07:06:58', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(166, '1687003641', '::1', '/index.php/nimda/pidato/kategori', '2023-06-17 07:07:21', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(167, '1687003647', '::1', '/index.php/nimda/pidato/savekategori', '2023-06-17 07:07:27', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(168, '1687003647', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 07:07:27', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(169, '1687007868', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 08:17:48', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(170, '1687007885', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 08:18:05', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(171, '1687007967', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 08:19:27', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(172, '1687007970', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:19:30', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(173, '1687007971', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 08:19:31', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(174, '1687008020', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:20:20', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(175, '1687008023', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 08:20:23', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(176, '1687008104', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:21:44', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(177, '1687008118', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:21:58', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(178, '1687008144', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:22:24', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(179, '1687008214', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:23:34', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(180, '1687008244', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:24:04', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(181, '1687008305', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:25:05', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(182, '1687008315', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:25:15', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(183, '1687008317', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:25:17', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(184, '1687008338', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:25:38', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(185, '1687008368', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:26:08', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(186, '1687008384', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 08:26:24', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(187, '1687008384', '::1', '/index.php/nimda/pidato/kategori', '2023-06-17 08:26:24', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(188, '1687008386', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 08:26:26', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(189, '1687008386', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:26:26', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(190, '1687008400', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:26:40', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(191, '1687008414', '::1', '/index.php/nimda/berita/kategori_update', '2023-06-17 08:26:54', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(192, '1687008414', '::1', '/index.php/nimda/berita/kategori_edit/', '2023-06-17 08:26:54', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(193, '1687008416', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:26:56', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(194, '1687008483', '::1', '/index.php/nimda/berita/kategori_update', '2023-06-17 08:28:03', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(195, '1687008483', '::1', '/index.php/nimda/berita/kategori_edit/', '2023-06-17 08:28:03', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(196, '1687008485', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:28:05', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(197, '1687008491', '::1', '/index.php/nimda/berita/kategori_update', '2023-06-17 08:28:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(198, '1687008491', '::1', '/index.php/nimda/berita/kategori_edit/', '2023-06-17 08:28:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(199, '1687008494', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:28:14', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(200, '1687008508', '::1', '/index.php/nimda/berita/kategori_update', '2023-06-17 08:28:28', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(201, '1687008508', '::1', '/index.php/nimda/berita/kategori_edit/', '2023-06-17 08:28:28', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(202, '1687008510', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:28:30', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(203, '1687008513', '::1', '/index.php/nimda/berita/kategori_update', '2023-06-17 08:28:33', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(204, '1687008513', '::1', '/index.php/nimda/berita/kategori_edit/', '2023-06-17 08:28:33', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(205, '1687008514', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:28:34', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(206, '1687008538', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:28:58', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(207, '1687008540', '::1', '/index.php/nimda/pidato/kategori_update', '2023-06-17 08:29:00', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(208, '1687008591', '::1', '/index.php/nimda/pidato/kategori_update', '2023-06-17 08:29:51', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(209, '1687008648', '::1', '/index.php/nimda/pidato/kategori_update', '2023-06-17 08:30:48', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(210, '1687008670', '::1', '/index.php/nimda/pidato/kategori_update', '2023-06-17 08:31:10', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(211, '1687008670', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 08:31:10', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(212, '1687008692', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 08:31:32', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(213, '1687008694', '::1', '/index.php/nimda/pidato/kategori_edit/2', '2023-06-17 08:31:34', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(214, '1687008697', '::1', '/index.php/nimda/pidato/kategori_update', '2023-06-17 08:31:37', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(215, '1687008697', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 08:31:37', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(216, '1687008751', '::1', '/index.php/nimda/pidato/kategori_delete/2', '2023-06-17 08:32:31', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(217, '1687008751', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 08:32:31', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(218, '1687008765', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:32:45', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(219, '1687008958', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:35:58', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(220, '1687009029', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:37:09', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(221, '1687009099', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:38:19', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(222, '1687009156', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:39:16', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(223, '1687009160', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:39:20', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(224, '1687009167', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:39:27', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(225, '1687009272', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:41:12', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(226, '1687009273', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:41:13', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(227, '1687009329', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:42:09', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(228, '1687009363', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:42:43', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(229, '1687009416', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:43:36', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(230, '1687009417', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:43:37', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(231, '1687009417', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:43:37', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(232, '1687009418', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:43:38', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(233, '1687009418', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:43:38', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(234, '1687009418', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:43:38', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(235, '1687009418', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:43:38', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(236, '1687009479', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:44:39', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(237, '1687009528', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:45:28', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(238, '1687009542', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:45:42', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(239, '1687009622', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:47:02', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(240, '1687009623', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:47:03', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(241, '1687009623', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:47:03', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(242, '1687009624', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:47:04', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(243, '1687009624', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:47:04', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(244, '1687009625', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:47:05', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(245, '1687009661', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:47:41', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(246, '1687009698', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:48:18', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(247, '1687009720', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:48:40', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(248, '1687009721', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:48:41', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(249, '1687009721', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:48:41', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(250, '1687009721', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:48:41', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(251, '1687009721', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:48:41', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(252, '1687009728', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:48:48', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(253, '1687009798', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 08:49:58', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(254, '1687009799', '::1', '/index.php/nimda/pidato/kategori_edit/2', '2023-06-17 08:49:59', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(255, '1687009805', '::1', '/index.php/nimda/pidato/kategori_edit/2', '2023-06-17 08:50:05', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(256, '1687009810', '::1', '/index.php/nimda/home', '2023-06-17 08:50:10', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(257, '1687009818', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:50:18', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(258, '1687009965', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:52:45', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(259, '1687010001', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:53:21', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(260, '1687010027', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:53:47', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(261, '1687010081', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:54:41', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(262, '1687010082', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:54:42', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(263, '1687010085', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:54:45', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(264, '1687010099', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:54:59', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(265, '1687010114', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:55:14', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(266, '1687010184', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:56:24', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(267, '1687010209', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:56:49', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(268, '1687010250', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:57:30', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(269, '1687010268', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:57:48', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(270, '1687010414', '::1', '/index.php/nimda/pengaturan', '2023-06-17 09:00:14', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(271, '1687010430', '::1', '/index.php/nimda/pengaturan/update/1', '2023-06-17 09:00:30', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(272, '1687010430', '::1', '/index.php/nimda/pengaturan/', '2023-06-17 09:00:30', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(273, '1687010441', '::1', '/index.php/nimda/pengaturan/update/1', '2023-06-17 09:00:41', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(274, '1687010441', '::1', '/index.php/nimda/pengaturan/', '2023-06-17 09:00:41', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(275, '1687010456', '::1', '/index.php/nimda/pidato/kategori', '2023-06-17 09:00:56', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(276, '1687010532', '::1', '/index.php/nimda/pidato/kategori', '2023-06-17 09:02:12', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(277, '1687010538', '::1', '/index.php/nimda/pidato/kategori', '2023-06-17 09:02:18', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(278, '1687010541', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 09:02:21', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(279, '1687010555', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 09:02:35', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(280, '1687010567', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 09:02:47', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(281, '1687010585', '::1', '/index.php/auth/logout', '2023-06-17 09:03:05', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(282, '1687010585', '::1', '/index.php/', '2023-06-17 09:03:05', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(283, '1687010594', '::1', '/index.php/auth', '2023-06-17 09:03:14', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(284, '1687010622', '::1', '/index.php/auth', '2023-06-17 09:03:42', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(285, '1687010624', '::1', '/index.php/auth', '2023-06-17 09:03:44', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(286, '1687010639', '::1', '/index.php/auth', '2023-06-17 09:03:59', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(287, '1687010706', '::1', '/index.php/auth', '2023-06-17 09:05:06', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(288, '1687010718', '::1', '/index.php/auth/check_login', '2023-06-17 09:05:18', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(289, '1687010727', '::1', '/index.php/auth', '2023-06-17 09:05:27', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(290, '1687010730', '::1', '/index.php/auth/check_login', '2023-06-17 09:05:30', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(291, '1687014169', '::1', '/index.php/auth/check_login', '2023-06-17 10:02:49', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(292, '1687014169', '::1', '/index.php/nimda/home', '2023-06-17 10:02:49', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(293, '1687014192', '::1', '/index.php/nimda/home', '2023-06-17 10:03:12', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(294, '1687014203', '::1', '/index.php/nimda/home', '2023-06-17 10:03:23', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(295, '1687015116', '::1', '/index.php/nimda/home', '2023-06-17 10:18:36', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(296, '1687015122', '::1', '/index.php/nimda/profil', '2023-06-17 10:18:42', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(297, '1687015156', '::1', '/index.php/nimda/profil', '2023-06-17 10:19:16', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(298, '1687015162', '::1', '/index.php/nimda/pengaturan', '2023-06-17 10:19:22', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(299, '1687015169', '::1', '/index.php/nimda/profil', '2023-06-17 10:19:29', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(300, '1687015175', '::1', '/index.php/nimda/profil', '2023-06-17 10:19:35', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(301, '1687060061', '::1', '/index.php/auth', '2023-06-17 22:47:41', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(302, '1687060065', '::1', '/index.php/auth/check_login', '2023-06-17 22:47:45', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(303, '1687060066', '::1', '/index.php/nimda/home', '2023-06-17 22:47:46', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(304, '1687060361', '::1', '/index.php/nimda/pidato/kategori', '2023-06-17 22:52:41', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(305, '1687060367', '::1', '/index.php/nimda/pidato/kategori', '2023-06-17 22:52:47', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(306, '1687064790', '::1', '/index.php/nimda/pidato/add', '2023-06-18 00:06:30', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(307, '1687065024', '::1', '/index.php/nimda/pidato/add', '2023-06-18 00:10:24', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(308, '1687065458', '::1', '/index.php/nimda/pidato/add', '2023-06-18 00:17:38', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(309, '1687065888', '::1', '/index.php/nimda/pidato/add', '2023-06-18 00:24:48', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(310, '1687066001', '::1', '/index.php/nimda/pidato/save', '2023-06-18 00:26:41', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(311, '1687066001', '::1', '/index.php/nimda/pidato', '2023-06-18 00:26:41', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(312, '1687066055', '::1', '/index.php/nimda/pidato', '2023-06-18 00:27:35', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(313, '1687066099', '::1', '/index.php/nimda/pidato', '2023-06-18 00:28:19', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(314, '1687066199', '::1', '/index.php/nimda/pidato', '2023-06-18 00:29:59', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(315, '1687066247', '::1', '/index.php/nimda/pidato', '2023-06-18 00:30:47', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(316, '1687066310', '::1', '/index.php/nimda/pidato', '2023-06-18 00:31:50', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(317, '1687066321', '::1', '/index.php/nimda/pidato', '2023-06-18 00:32:01', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(318, '1687066330', '::1', '/index.php/nimda/pidato', '2023-06-18 00:32:10', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(319, '1687066363', '::1', '/index.php/nimda/pidato', '2023-06-18 00:32:43', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(320, '1687066366', '::1', '/index.php/nimda/pidato', '2023-06-18 00:32:46', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(321, '1687066382', '::1', '/index.php/nimda/pidato', '2023-06-18 00:33:02', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(322, '1687066691', '::1', '/index.php/nimda/pidato/edit/1', '2023-06-18 00:38:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(323, '1687067114', '::1', '/index.php/nimda/pidato/edit/1', '2023-06-18 00:45:14', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(324, '1687070420', '::1', '/index.php/nimda/pidato/update/1', '2023-06-18 01:40:20', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(325, '1687070481', '::1', '/index.php/nimda/pidato/update/1', '2023-06-18 01:41:21', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(326, '1687070482', '::1', '/index.php/nimda/pidato', '2023-06-18 01:41:22', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(327, '1687070485', '::1', '/index.php/nimda/pidato/edit/1', '2023-06-18 01:41:25', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(328, '1687070489', '::1', '/index.php/nimda/pidato', '2023-06-18 01:41:29', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(329, '1687070552', '::1', '/index.php/nimda/pidato', '2023-06-18 01:42:32', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(330, '1687070556', '::1', '/index.php/nimda/pidato/delete/1', '2023-06-18 01:42:36', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(331, '1687070556', '::1', '/index.php/nimda/pidato', '2023-06-18 01:42:36', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(332, '1687070560', '::1', '/index.php/nimda/pidato/add', '2023-06-18 01:42:40', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(333, '1687070572', '::1', '/index.php/nimda/pidato/save', '2023-06-18 01:42:52', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(334, '1687070611', '::1', '/index.php/nimda/pidato/save', '2023-06-18 01:43:31', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(335, '1687070611', '::1', '/index.php/nimda/pidato/add', '2023-06-18 01:43:31', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(336, '1687070622', '::1', '/index.php/nimda/pidato/add', '2023-06-18 01:43:42', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(337, '1687070631', '::1', '/index.php/nimda/pidato/save', '2023-06-18 01:43:51', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(338, '1687070631', '::1', '/index.php/nimda/pidato', '2023-06-18 01:43:51', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(339, '1687070718', '::1', '/index.php/nimda/pidato', '2023-06-18 01:45:18', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(340, '1687070739', '::1', '/index.php/nimda/pidato', '2023-06-18 01:45:39', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(341, '1687070749', '::1', '/index.php/nimda/pidato', '2023-06-18 01:45:49', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(342, '1687070762', '::1', '/index.php/nimda/pidato', '2023-06-18 01:46:02', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(343, '1687071386', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 01:56:26', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(344, '1687072809', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:20:09', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(345, '1687072933', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:22:13', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(346, '1687072951', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:22:31', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(347, '1687072957', '::1', '/index.php/nimda/pidato', '2023-06-18 02:22:37', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(348, '1687072959', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:22:39', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(349, '1687073020', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:23:40', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(350, '1687073074', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:24:34', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(351, '1687073316', '::1', '/index.php/nimda/pidato/pantun_add/2', '2023-06-18 02:28:36', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(352, '1687073373', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:29:33', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(353, '1687073396', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:29:56', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(354, '1687073397', '::1', '/index.php/nimda/pidato/pantun_add/2', '2023-06-18 02:29:57', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(355, '1687073400', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:30:00', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(356, '1687073402', '::1', '/index.php/nimda/pidato/pantun_add/2', '2023-06-18 02:30:02', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(357, '1687073407', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:30:07', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(358, '1687073416', '::1', '/index.php/nimda/pidato/pantun_add/2', '2023-06-18 02:30:16', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(359, '1687073418', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:30:18', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(360, '1687073496', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:31:36', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(361, '1687073498', '::1', '/index.php/nimda/pidato/pantun_add/2', '2023-06-18 02:31:38', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(362, '1687073500', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:31:40', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(363, '1687073502', '::1', '/index.php/nimda/pidato', '2023-06-18 02:31:42', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(364, '1687073505', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:31:45', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(365, '1687073510', '::1', '/index.php/nimda/pidato/pantun_add/2', '2023-06-18 02:31:50', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(366, '1687073720', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:35:20', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(367, '1687073735', '::1', '/index.php/nimda/pidato/pantun_add/2', '2023-06-18 02:35:35', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(368, '1687073744', '::1', '/index.php/nimda/pidato/pantun_save/2', '2023-06-18 02:35:44', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(369, '1687073744', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:35:44', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(370, '1687073778', '::1', '/index.php/nimda/pidato/pantun_add/2', '2023-06-18 02:36:18', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(371, '1687073786', '::1', '/index.php/nimda/pidato/pantun_save/2', '2023-06-18 02:36:26', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(372, '1687073787', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:36:27', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(373, '1687073883', '::1', '/index.php/nimda/pidato/add', '2023-06-18 02:38:03', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(374, '1687073884', '::1', '/index.php/nimda/pidato', '2023-06-18 02:38:04', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(375, '1687073886', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:38:06', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(376, '1687074114', '::1', '/index.php/nimda/pidato/pantun_edit/2/2', '2023-06-18 02:41:54', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(377, '1687074131', '::1', '/index.php/nimda/pidato/pantun_edit/2/2', '2023-06-18 02:42:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(378, '1687074155', '::1', '/index.php/nimda/pidato/pantun_edit/2/2', '2023-06-18 02:42:35', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(379, '1687074165', '::1', '/index.php/nimda/pidato/pantun_edit/2/2', '2023-06-18 02:42:45', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(380, '1687074193', '::1', '/index.php/nimda/pidato/pantun_edit/2/2', '2023-06-18 02:43:13', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(381, '1687074217', '::1', '/index.php/nimda/pidato/pantun_edit/2/2', '2023-06-18 02:43:37', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(382, '1687074219', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:43:39', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(383, '1687074221', '::1', '/index.php/nimda/pidato/pantun_edit/2/2', '2023-06-18 02:43:41', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(384, '1687074611', '::1', '/index.php/nimda/pidato/pantun_edit/2/2', '2023-06-18 02:50:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(385, '1687074617', '::1', '/index.php/nimda/pidato/pantun_update/2/2', '2023-06-18 02:50:17', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(386, '1687074617', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:50:17', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(387, '1687074626', '::1', '/index.php/nimda/pidato/pantun_add/2', '2023-06-18 02:50:26', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(388, '1687074629', '::1', '/index.php/nimda/pidato/pantun_save/2', '2023-06-18 02:50:29', '2023-06-20 06:28:54', '2023-06-20 06:28:54');
INSERT INTO `usersonline` (`usersonline_id`, `usersonline_timestamp`, `usersonline_ip`, `usersonline_file`, `created_at`, `updated_at`, `deleted_at`) VALUES
(389, '1687074629', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:50:29', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(390, '1687074634', '::1', '/index.php/nimda/pidato/pantun_add/2', '2023-06-18 02:50:34', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(391, '1687074638', '::1', '/index.php/nimda/pidato/pantun_save/2', '2023-06-18 02:50:38', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(392, '1687074639', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:50:39', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(393, '1687074704', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:51:44', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(394, '1687074708', '::1', '/index.php/nimda/pidato/pantun_delete/2/4', '2023-06-18 02:51:48', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(395, '1687074708', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:51:48', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(396, '1687074716', '::1', '/index.php/nimda/pidato', '2023-06-18 02:51:56', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(397, '1687074861', '::1', '/index.php/nimda/pidato', '2023-06-18 02:54:21', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(398, '1687074869', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:54:29', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(399, '1687075070', '::1', '/index.php/nimda/pidato', '2023-06-18 02:57:50', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(400, '1687075142', '::1', '/index.php/nimda/pidato', '2023-06-18 02:59:02', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(401, '1687075156', '::1', '/index.php/nimda/pidato', '2023-06-18 02:59:16', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(402, '1687075224', '::1', '/index.php/nimda/pidato', '2023-06-18 03:00:24', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(403, '1687075233', '::1', '/index.php/nimda/pidato', '2023-06-18 03:00:33', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(404, '1687075243', '::1', '/index.php/nimda/pidato', '2023-06-18 03:00:43', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(405, '1687075244', '::1', '/index.php/nimda/pidato', '2023-06-18 03:00:44', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(406, '1687075253', '::1', '/index.php/nimda/pidato', '2023-06-18 03:00:53', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(407, '1687075344', '::1', '/index.php/nimda/pidato', '2023-06-18 03:02:24', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(408, '1687075358', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 03:02:38', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(409, '1687075365', '::1', '/index.php/nimda/pidato', '2023-06-18 03:02:45', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(410, '1687075370', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 03:02:50', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(411, '1687077761', '::1', '/index.php/nimda/galeri', '2023-06-18 03:42:41', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(412, '1687077763', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 03:42:43', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(413, '1687077805', '::1', '/index.php/nimda/galeri', '2023-06-18 03:43:25', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(414, '1687078408', '::1', '/index.php/nimda/galeri', '2023-06-18 03:53:28', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(415, '1687078450', '::1', '/index.php/nimda/galeri', '2023-06-18 03:54:10', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(416, '1687078475', '::1', '/index.php/nimda/galeri', '2023-06-18 03:54:35', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(417, '1687078526', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 03:55:26', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(418, '1687078605', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-18 03:56:45', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(419, '1687078621', '::1', '/index.php/nimda/galeri_kegiatan/add', '2023-06-18 03:57:01', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(420, '1687078766', '::1', '/index.php/nimda/galeri_kegiatan/add', '2023-06-18 03:59:26', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(421, '1687078802', '::1', '/index.php/nimda/galeri_kegiatan/add', '2023-06-18 04:00:02', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(422, '1687079042', '::1', '/index.php/nimda/galeri_kegiatan/save', '2023-06-18 04:04:02', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(423, '1687079042', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-18 04:04:02', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(424, '1687079156', '::1', '/index.php/nimda/galeri_kegiatan/edit/1', '2023-06-18 04:05:56', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(425, '1687079179', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-18 04:06:19', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(426, '1687079184', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:06:24', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(427, '1687079606', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:13:26', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(428, '1687079619', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:13:39', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(429, '1687079626', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:13:46', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(430, '1687079628', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-18 04:13:48', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(431, '1687079631', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:13:51', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(432, '1687079668', '::1', '/index.php/nimda/galeri_kegiatan/addDetail/1', '2023-06-18 04:14:28', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(433, '1687079706', '::1', '/index.php/nimda/galeri_kegiatan/addDetail/1', '2023-06-18 04:15:06', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(434, '1687079898', '::1', '/index.php/nimda/galeri_kegiatan/addDetail/1', '2023-06-18 04:18:18', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(435, '1687079919', '::1', '/index.php/nimda/galeri_kegiatan/addDetail/1', '2023-06-18 04:18:39', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(436, '1687080044', '::1', '/index.php/nimda/galeri_kegiatan/addDetail/1', '2023-06-18 04:20:44', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(437, '1687080085', '::1', '/index.php/nimda/galeri_kegiatan/saveDetail/1', '2023-06-18 04:21:25', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(438, '1687080085', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:21:25', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(439, '1687080118', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-18 04:21:58', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(440, '1687080188', '::1', '/index.php/nimda/galeri_kegiatan/edit/1', '2023-06-18 04:23:08', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(441, '1687080368', '::1', '/index.php/nimda/galeri_kegiatan/edit/1', '2023-06-18 04:26:08', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(442, '1687080393', '::1', '/index.php/nimda/galeri_kegiatan/edit/1', '2023-06-18 04:26:33', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(443, '1687080546', '::1', '/index.php/nimda/galeri_kegiatan/edit/1', '2023-06-18 04:29:06', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(444, '1687080551', '::1', '/index.php/nimda/galeri_kegiatan/update/1', '2023-06-18 04:29:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(445, '1687080573', '::1', '/index.php/nimda/galeri_kegiatan/update/1', '2023-06-18 04:29:33', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(446, '1687080573', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-18 04:29:33', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(447, '1687080595', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:29:55', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(448, '1687080600', '::1', '/index.php/nimda/galeri_kegiatan/editDetail/1/1', '2023-06-18 04:30:00', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(449, '1687081002', '::1', '/index.php/nimda/galeri_kegiatan/editDetail/1/1', '2023-06-18 04:36:42', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(450, '1687081022', '::1', '/index.php/nimda/galeri_kegiatan/editDetail/1/1', '2023-06-18 04:37:02', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(451, '1687081034', '::1', '/index.php/nimda/galeri_kegiatan/editDetail/1/1', '2023-06-18 04:37:14', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(452, '1687081036', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:37:16', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(453, '1687081039', '::1', '/index.php/nimda/galeri_kegiatan/editDetail/1/1', '2023-06-18 04:37:19', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(454, '1687081074', '::1', '/index.php/nimda/galeri_kegiatan/editDetail/1/1', '2023-06-18 04:37:54', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(455, '1687081098', '::1', '/index.php/nimda/galeri_kegiatan/editDetail/1/1', '2023-06-18 04:38:18', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(456, '1687081099', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:38:19', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(457, '1687081105', '::1', '/index.php/nimda/galeri_kegiatan/editDetail/1/1', '2023-06-18 04:38:25', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(458, '1687081238', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:40:38', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(459, '1687081291', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:41:31', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(460, '1687081292', '::1', '/index.php/nimda/galeri_kegiatan/editDetail/1/1', '2023-06-18 04:41:32', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(461, '1687081315', '::1', '/index.php/nimda/galeri_kegiatan/updateDetail/1/1', '2023-06-18 04:41:55', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(462, '1687081315', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:41:55', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(463, '1687081385', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:43:05', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(464, '1687081388', '::1', '/index.php/nimda/galeri_kegiatan/deleteDetail/1/1', '2023-06-18 04:43:08', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(465, '1687081388', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:43:08', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(466, '1687081392', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-18 04:43:12', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(467, '1687081401', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:43:21', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(468, '1687081402', '::1', '/index.php/nimda/galeri_kegiatan/addDetail/1', '2023-06-18 04:43:22', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(469, '1687081418', '::1', '/index.php/nimda/galeri_kegiatan/saveDetail/1', '2023-06-18 04:43:38', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(470, '1687081418', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:43:38', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(471, '1687081422', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-18 04:43:42', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(472, '1687081425', '::1', '/index.php/nimda/galeri_kegiatan/delete/1', '2023-06-18 04:43:45', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(473, '1687081425', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-18 04:43:45', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(474, '1687081436', '::1', '/index.php/nimda/galeri_kegiatan/add', '2023-06-18 04:43:56', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(475, '1687081448', '::1', '/index.php/nimda/galeri_kegiatan/save', '2023-06-18 04:44:08', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(476, '1687081448', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-18 04:44:08', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(477, '1687081451', '::1', '/index.php/nimda/galeri_kegiatan/detail/2', '2023-06-18 04:44:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(478, '1687081452', '::1', '/index.php/nimda/galeri_kegiatan/addDetail/2', '2023-06-18 04:44:12', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(479, '1687081466', '::1', '/index.php/nimda/galeri_kegiatan/saveDetail/2', '2023-06-18 04:44:26', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(480, '1687081466', '::1', '/index.php/nimda/galeri_kegiatan/detail/2', '2023-06-18 04:44:26', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(481, '1687083204', '::1', '/index.php/nimda/galeri_kegiatan/detail/2', '2023-06-18 05:13:24', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(482, '1687083221', '::1', '/index.php/nimda/galeri_kegiatan/detail/2', '2023-06-18 05:13:41', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(483, '1687083631', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:20:31', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(484, '1687083724', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:22:04', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(485, '1687083991', '::1', '/index.php/nimda/berita_foto/add', '2023-06-18 05:26:31', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(486, '1687084170', '::1', '/index.php/nimda/berita_foto/add', '2023-06-18 05:29:30', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(487, '1687084185', '::1', '/index.php/nimda/berita_foto/save', '2023-06-18 05:29:45', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(488, '1687084219', '::1', '/index.php/nimda/berita_foto/save', '2023-06-18 05:30:19', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(489, '1687084219', '::1', '/index.php/nimda/berita_foto/add', '2023-06-18 05:30:19', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(490, '1687084230', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:30:30', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(491, '1687084233', '::1', '/index.php/nimda/berita_foto/add', '2023-06-18 05:30:33', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(492, '1687084256', '::1', '/index.php/nimda/berita_foto/save', '2023-06-18 05:30:56', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(493, '1687084256', '::1', '/index.php/nimda/berita_foto/add', '2023-06-18 05:30:56', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(494, '1687084304', '::1', '/index.php/nimda/berita_foto/save', '2023-06-18 05:31:44', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(495, '1687084305', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:31:45', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(496, '1687084362', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:32:42', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(497, '1687084365', '::1', '/index.php/nimda/berita_foto/add', '2023-06-18 05:32:45', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(498, '1687084382', '::1', '/index.php/nimda/berita_foto/save', '2023-06-18 05:33:02', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(499, '1687084382', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:33:02', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(500, '1687084432', '::1', '/index.php/nimda/users', '2023-06-18 05:33:52', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(501, '1687084433', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:33:53', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(502, '1687084436', '::1', '/index.php/nimda/kontak', '2023-06-18 05:33:56', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(503, '1687084437', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:33:57', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(504, '1687084439', '::1', '/index.php/nimda/pengaturan', '2023-06-18 05:33:59', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(505, '1687084453', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:34:13', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(506, '1687084738', '::1', '/index.php/nimda/berita_foto/edit/2', '2023-06-18 05:38:58', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(507, '1687085019', '::1', '/index.php/nimda/berita_foto/edit/2', '2023-06-18 05:43:39', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(508, '1687085042', '::1', '/index.php/nimda/berita_foto/update/2', '2023-06-18 05:44:02', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(509, '1687085056', '::1', '/index.php/nimda/berita_foto/update/2', '2023-06-18 05:44:16', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(510, '1687085094', '::1', '/index.php/nimda/berita_foto/edit/2', '2023-06-18 05:44:54', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(511, '1687085094', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:44:54', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(512, '1687085097', '::1', '/index.php/nimda/berita_foto/add', '2023-06-18 05:44:57', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(513, '1687085111', '::1', '/index.php/nimda/berita_foto/save', '2023-06-18 05:45:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(514, '1687085111', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:45:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(515, '1687085113', '::1', '/index.php/nimda/berita_foto/edit/3', '2023-06-18 05:45:13', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(516, '1687085135', '::1', '/index.php/nimda/berita_foto/update/3', '2023-06-18 05:45:35', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(517, '1687085136', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:45:36', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(518, '1687085137', '::1', '/index.php/nimda/berita_foto/edit/3', '2023-06-18 05:45:37', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(519, '1687085142', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:45:42', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(520, '1687085145', '::1', '/index.php/nimda/berita_foto/add', '2023-06-18 05:45:45', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(521, '1687085160', '::1', '/index.php/nimda/berita_foto/save', '2023-06-18 05:46:00', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(522, '1687085160', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:46:00', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(523, '1687085178', '::1', '/index.php/nimda/berita_foto/delete/4', '2023-06-18 05:46:18', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(524, '1687085188', '::1', '/index.php/nimda/berita_foto/delete/4', '2023-06-18 05:46:28', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(525, '1687085188', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:46:28', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(526, '1687085191', '::1', '/index.php/nimda/berita_foto/edit/3', '2023-06-18 05:46:31', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(527, '1687085195', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:46:35', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(528, '1687089274', '::1', '/index.php/nimda/berita_foto', '2023-06-18 06:54:34', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(529, '1687089280', '::1', '/index.php/nimda/berita_foto/edit/3', '2023-06-18 06:54:40', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(530, '1687089284', '::1', '/index.php/nimda/berita_foto', '2023-06-18 06:54:44', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(531, '1687089724', '::1', '/index.php/nimda/video_kegiatan', '2023-06-18 07:02:04', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(532, '1687089731', '::1', '/index.php/nimda/video_kegiatan/add', '2023-06-18 07:02:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(533, '1687089882', '::1', '/index.php/nimda/video_kegiatan/add', '2023-06-18 07:04:42', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(534, '1687089947', '::1', '/index.php/nimda/video_kegiatan/add', '2023-06-18 07:05:47', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(535, '1687090181', '::1', '/index.php/nimda/video_kegiatan/add', '2023-06-18 07:09:41', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(536, '1687090272', '::1', '/index.php/nimda/video_kegiatan/save', '2023-06-18 07:11:12', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(537, '1687090273', '::1', '/index.php/nimda/video_kegiatan', '2023-06-18 07:11:13', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(538, '1687090276', '::1', '/index.php/nimda/video_kegiatan/edit/1', '2023-06-18 07:11:16', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(539, '1687090481', '::1', '/index.php/nimda/video_kegiatan/edit/1', '2023-06-18 07:14:41', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(540, '1687090604', '::1', '/index.php/nimda/video_kegiatan/edit/1', '2023-06-18 07:16:44', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(541, '1687090624', '::1', '/index.php/nimda/video_kegiatan/update/1', '2023-06-18 07:17:04', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(542, '1687090624', '::1', '/index.php/nimda/video_kegiatan', '2023-06-18 07:17:04', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(543, '1687090626', '::1', '/index.php/nimda/video_kegiatan/edit/1', '2023-06-18 07:17:06', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(544, '1687090630', '::1', '/index.php/nimda/video_kegiatan', '2023-06-18 07:17:10', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(545, '1687090649', '::1', '/index.php/nimda/video_kegiatan', '2023-06-18 07:17:29', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(546, '1687090651', '::1', '/index.php/nimda/video_kegiatan/delete/1', '2023-06-18 07:17:31', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(547, '1687090651', '::1', '/index.php/nimda/video_kegiatan', '2023-06-18 07:17:31', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(548, '1687090657', '::1', '/index.php/nimda/video_kegiatan/add', '2023-06-18 07:17:37', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(549, '1687090673', '::1', '/index.php/nimda/video_kegiatan/save', '2023-06-18 07:17:53', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(550, '1687090673', '::1', '/index.php/nimda/video_kegiatan', '2023-06-18 07:17:53', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(551, '1687092671', '::1', '/index.php/nimda/video_kegiatan', '2023-06-18 07:51:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(552, '1687092973', '::1', '/index.php/nimda/agenda', '2023-06-18 07:56:13', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(553, '1687093127', '::1', '/index.php/nimda/agenda', '2023-06-18 07:58:47', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(554, '1687093145', '::1', '/index.php/nimda/agenda/add', '2023-06-18 07:59:05', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(555, '1687093228', '::1', '/index.php/nimda/agenda/add', '2023-06-18 08:00:28', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(556, '1687093401', '::1', '/index.php/nimda/agenda/add', '2023-06-18 08:03:21', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(557, '1687093636', '::1', '/index.php/nimda/agenda/add', '2023-06-18 08:07:16', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(558, '1687094103', '::1', '/index.php/nimda/agenda/save', '2023-06-18 08:15:03', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(559, '1687094104', '::1', '/index.php/nimda/agenda', '2023-06-18 08:15:04', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(560, '1687094123', '::1', '/index.php/nimda/agenda/edit/1', '2023-06-18 08:15:23', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(561, '1687094376', '::1', '/index.php/nimda/agenda', '2023-06-18 08:19:36', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(562, '1687094379', '::1', '/index.php/nimda/agenda/add', '2023-06-18 08:19:39', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(563, '1687094489', '::1', '/index.php/nimda/agenda/add', '2023-06-18 08:21:29', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(564, '1687094495', '::1', '/index.php/nimda/agenda', '2023-06-18 08:21:35', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(565, '1687094542', '::1', '/index.php/nimda/agenda/edit/1', '2023-06-18 08:22:22', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(566, '1687094701', '::1', '/index.php/nimda/agenda/edit/1', '2023-06-18 08:25:01', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(567, '1687094713', '::1', '/index.php/nimda/agenda/update/1', '2023-06-18 08:25:13', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(568, '1687094713', '::1', '/index.php/nimda/agenda', '2023-06-18 08:25:13', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(569, '1687094716', '::1', '/index.php/nimda/agenda/edit/1', '2023-06-18 08:25:16', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(570, '1687094719', '::1', '/index.php/nimda/agenda', '2023-06-18 08:25:19', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(571, '1687094729', '::1', '/index.php/nimda/agenda/delete/1', '2023-06-18 08:25:29', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(572, '1687094729', '::1', '/index.php/nimda/agenda', '2023-06-18 08:25:29', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(573, '1687094991', '::1', '/index.php/nimda/agenda/add', '2023-06-18 08:29:51', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(574, '1687095000', '::1', '/index.php/nimda/agenda/save', '2023-06-18 08:30:00', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(575, '1687095000', '::1', '/index.php/nimda/agenda', '2023-06-18 08:30:00', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(576, '1687142331', '::1', '/index.php', '2023-06-18 21:38:51', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(577, '1687142331', '::1', '/index.php/auth/', '2023-06-18 21:38:51', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(578, '1687142336', '::1', '/index.php', '2023-06-18 21:38:56', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(579, '1687142336', '::1', '/index.php/auth/', '2023-06-18 21:38:56', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(580, '1687142342', '::1', '/index.php/auth/check_login', '2023-06-18 21:39:02', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(581, '1687142388', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-18 21:39:48', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(582, '1687144400', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-18 22:13:20', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(583, '1687144442', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-18 22:14:02', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(584, '1687144478', '::1', '/index.php/nimda/download', '2023-06-18 22:14:38', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(585, '1687144539', '::1', '/index.php/nimda/download', '2023-06-18 22:15:39', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(586, '1687144540', '::1', '/index.php/nimda/download', '2023-06-18 22:15:40', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(587, '1687144563', '::1', '/index.php/nimda/download', '2023-06-18 22:16:03', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(588, '1687144573', '::1', '/index.php/nimda/download/add', '2023-06-18 22:16:13', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(589, '1687145132', '::1', '/index.php/nimda/download/add', '2023-06-18 22:25:32', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(590, '1687145254', '::1', '/index.php/nimda/download/add', '2023-06-18 22:27:34', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(591, '1687145284', '::1', '/index.php/nimda/download/add', '2023-06-18 22:28:04', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(592, '1687145318', '::1', '/index.php/nimda/download/add', '2023-06-18 22:28:38', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(593, '1687145320', '::1', '/index.php/nimda/download', '2023-06-18 22:28:40', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(594, '1687145324', '::1', '/index.php/nimda/download/add', '2023-06-18 22:28:44', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(595, '1687145326', '::1', '/index.php/nimda/download/save', '2023-06-18 22:28:46', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(596, '1687145326', '::1', '/index.php/nimda/download', '2023-06-18 22:28:46', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(597, '1687145355', '::1', '/index.php/nimda/download', '2023-06-18 22:29:15', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(598, '1687145604', '::1', '/index.php/nimda/download/edit/1', '2023-06-18 22:33:24', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(599, '1687145993', '::1', '/index.php/nimda/download/edit/1', '2023-06-18 22:39:53', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(600, '1687146008', '::1', '/index.php/nimda/download/edit/1', '2023-06-18 22:40:08', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(601, '1687146012', '::1', '/index.php/nimda/download/update/1', '2023-06-18 22:40:12', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(602, '1687146136', '::1', '/index.php/nimda/download/update/1', '2023-06-18 22:42:16', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(603, '1687146136', '::1', '/index.php/nimda/download', '2023-06-18 22:42:16', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(604, '1687146169', '::1', '/index.php/nimda/download', '2023-06-18 22:42:49', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(605, '1687146172', '::1', '/index.php/nimda/download/delete/1', '2023-06-18 22:42:52', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(606, '1687146173', '::1', '/index.php/nimda/download', '2023-06-18 22:42:53', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(607, '1687146179', '::1', '/index.php/nimda/download/add', '2023-06-18 22:42:59', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(608, '1687146183', '::1', '/index.php/nimda/download/save', '2023-06-18 22:43:03', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(609, '1687146183', '::1', '/index.php/nimda/download', '2023-06-18 22:43:03', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(610, '1687146461', '::1', '/index.php/nimda/download/detail/2', '2023-06-18 22:47:41', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(611, '1687146739', '::1', '/index.php/nimda/download/detail/2', '2023-06-18 22:52:19', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(612, '1687146840', '::1', '/index.php/nimda/download/detail/2', '2023-06-18 22:54:00', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(613, '1687146880', '::1', '/index.php/nimda/download/detail/2', '2023-06-18 22:54:40', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(614, '1687146950', '::1', '/index.php/nimda/download/detail/2', '2023-06-18 22:55:50', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(615, '1687146961', '::1', '/index.php/nimda/download/detail/2', '2023-06-18 22:56:01', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(616, '1687146972', '::1', '/index.php/nimda/download/detail/2', '2023-06-18 22:56:12', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(617, '1687146991', '::1', '/index.php/nimda/download/detail/2', '2023-06-18 22:56:31', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(618, '1687147141', '::1', '/index.php/nimda/download/detail_add/2', '2023-06-18 22:59:01', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(619, '1687147179', '::1', '/index.php/nimda/download/detail/2', '2023-06-18 22:59:39', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(620, '1687147218', '::1', '/index.php/nimda/download/detail/2', '2023-06-18 23:00:18', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(621, '1687147219', '::1', '/index.php/nimda/download/detail_add/2', '2023-06-18 23:00:19', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(622, '1687147224', '::1', '/index.php/nimda/download/detail/2', '2023-06-18 23:00:24', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(623, '1687147226', '::1', '/index.php/nimda/download/detail_add/2', '2023-06-18 23:00:26', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(624, '1687147266', '::1', '/index.php/nimda/download/detail_add/2', '2023-06-18 23:01:06', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(625, '1687147712', '::1', '/index.php/nimda/download/detail/2', '2023-06-18 23:08:32', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(626, '1687147730', '::1', '/index.php/nimda/download/detail/2', '2023-06-18 23:08:50', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(627, '1687147731', '::1', '/index.php/nimda/download/detail_add/2', '2023-06-18 23:08:51', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(628, '1687147734', '::1', '/index.php/nimda/download/detail/2', '2023-06-18 23:08:54', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(629, '1687147735', '::1', '/index.php/nimda/download/detail_add/2', '2023-06-18 23:08:55', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(630, '1687173959', '::1', '/index.php', '2023-06-19 06:25:59', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(631, '1687173959', '::1', '/index.php/auth/', '2023-06-19 06:25:59', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(632, '1687174005', '::1', '/index.php/auth/check_login', '2023-06-19 06:26:45', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(633, '1687174015', '::1', '/index.php/nimda/pengaturan', '2023-06-19 06:26:55', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(634, '1687174022', '::1', '/index.php/nimda/download', '2023-06-19 06:27:02', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(635, '1687174027', '::1', '/index.php/nimda/download/edit/2', '2023-06-19 06:27:07', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(636, '1687174031', '::1', '/index.php/nimda/download/update/2', '2023-06-19 06:27:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(637, '1687174031', '::1', '/index.php/nimda/download', '2023-06-19 06:27:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(638, '1687174044', '::1', '/index.php/nimda/download/detail/2', '2023-06-19 06:27:24', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(639, '1687174050', '::1', '/index.php/nimda/download/detail_add/2', '2023-06-19 06:27:30', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(640, '1687174067', '::1', '/index.php/nimda/download/detail/2', '2023-06-19 06:27:47', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(641, '1687174076', '::1', '/index.php/nimda/download/detail_add/2', '2023-06-19 06:27:56', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(642, '1687174227', '::1', '/index.php/nimda/download/detail/2', '2023-06-19 06:30:27', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(643, '1687174294', '::1', '/index.php/nimda/download/detail/2', '2023-06-19 06:31:34', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(644, '1687174294', '::1', '/index.php/nimda/download/detail_add/2', '2023-06-19 06:31:34', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(645, '1687174297', '::1', '/index.php/nimda/download/detail_save/2', '2023-06-19 06:31:37', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(646, '1687174297', '::1', '/index.php/nimda/download/detail/2', '2023-06-19 06:31:37', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(647, '1687174324', '::1', '/index.php/nimda/download/detail_add/2', '2023-06-19 06:32:04', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(648, '1687174327', '::1', '/index.php/nimda/download/detail_save/2', '2023-06-19 06:32:07', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(649, '1687174327', '::1', '/index.php/nimda/download/detail/2', '2023-06-19 06:32:07', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(650, '1687174335', '::1', '/index.php/nimda/download/detail_add/2', '2023-06-19 06:32:15', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(651, '1687174362', '::1', '/index.php/nimda/download/detail_add/2', '2023-06-19 06:32:42', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(652, '1687174365', '::1', '/index.php/nimda/download/detail_save/2', '2023-06-19 06:32:45', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(653, '1687174365', '::1', '/index.php/nimda/download/detail/2', '2023-06-19 06:32:45', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(654, '1687174403', '::1', '/index.php/nimda/download/detail_add/2', '2023-06-19 06:33:23', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(655, '1687174403', '::1', '/index.php/nimda/download/detail_add/2', '2023-06-19 06:33:23', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(656, '1687174407', '::1', '/index.php/nimda/download/detail_save/2', '2023-06-19 06:33:27', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(657, '1687174463', '::1', '/index.php/nimda/download/detail_save/2', '2023-06-19 06:34:23', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(658, '1687174463', '::1', '/index.php/nimda/download/detail/2', '2023-06-19 06:34:23', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(659, '1687174811', '::1', '/index.php/nimda/download/detail/2', '2023-06-19 06:40:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(660, '1687174837', '::1', '/index.php/nimda/download/detail/2', '2023-06-19 06:40:37', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(661, '1687174838', '::1', '/index.php/nimda/download/detail_edit/2/4', '2023-06-19 06:40:38', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(662, '1687174865', '::1', '/index.php/nimda/download/detail_edit/2/4', '2023-06-19 06:41:05', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(663, '1687174907', '::1', '/index.php/nimda/download/detail_edit/2/4', '2023-06-19 06:41:47', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(664, '1687175103', '::1', '/index.php/nimda/download/detail_edit/2/4', '2023-06-19 06:45:03', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(665, '1687175112', '::1', '/index.php/nimda/download/detail_update/2/2', '2023-06-19 06:45:12', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(666, '1687175138', '::1', '/index.php/nimda/download/detail_edit/2/4', '2023-06-19 06:45:38', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(667, '1687175144', '::1', '/index.php/nimda/download/detail_edit/2/4', '2023-06-19 06:45:44', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(668, '1687175168', '::1', '/index.php/nimda/download/detail_update/2/2', '2023-06-19 06:46:08', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(669, '1687175208', '::1', '/index.php/nimda/download/detail_edit/2/4', '2023-06-19 06:46:48', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(670, '1687175209', '::1', '/index.php/nimda/download/detail_edit/2/4', '2023-06-19 06:46:49', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(671, '1687175211', '::1', '/index.php/nimda/download/detail_update/2/2', '2023-06-19 06:46:51', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(672, '1687175211', '::1', '/index.php/nimda/download/detail/2', '2023-06-19 06:46:51', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(673, '1687175214', '::1', '/index.php/nimda/download/detail_edit/2/4', '2023-06-19 06:46:54', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(674, '1687175216', '::1', '/index.php/nimda/download/detail_update/2/2', '2023-06-19 06:46:56', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(675, '1687175217', '::1', '/index.php/nimda/download/detail/2', '2023-06-19 06:46:57', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(676, '1687175291', '::1', '/index.php/nimda/download/detail_edit/2/4', '2023-06-19 06:48:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(677, '1687175293', '::1', '/index.php/nimda/download/detail_update/2/2', '2023-06-19 06:48:13', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(678, '1687175293', '::1', '/index.php/nimda/download/detail/2', '2023-06-19 06:48:13', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(679, '1687175299', '::1', '/index.php/nimda/download/detail_edit/2/4', '2023-06-19 06:48:19', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(680, '1687175301', '::1', '/index.php/nimda/download/detail_update/2/2', '2023-06-19 06:48:21', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(681, '1687175301', '::1', '/index.php/nimda/download/detail/2', '2023-06-19 06:48:21', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(682, '1687175341', '::1', '/index.php/nimda/download/detail_edit/2/4', '2023-06-19 06:49:01', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(683, '1687175346', '::1', '/index.php/nimda/download/detail/2', '2023-06-19 06:49:06', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(684, '1687175348', '::1', '/index.php/nimda/download/detail_add/2', '2023-06-19 06:49:08', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(685, '1687175349', '::1', '/index.php/nimda/download/detail/2', '2023-06-19 06:49:09', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(686, '1687175403', '::1', '/index.php/nimda/download/detail_edit/2/4', '2023-06-19 06:50:03', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(687, '1687175405', '::1', '/index.php/nimda/download/detail_update/2/4', '2023-06-19 06:50:05', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(688, '1687175405', '::1', '/index.php/nimda/download/detail/2', '2023-06-19 06:50:05', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(689, '1687175458', '::1', '/index.php/nimda/download/detail/2', '2023-06-19 06:50:58', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(690, '1687175461', '::1', '/index.php/nimda/download/detail_delete/2/4', '2023-06-19 06:51:01', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(691, '1687175461', '::1', '/index.php/nimda/download/detail/2', '2023-06-19 06:51:01', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(692, '1687175470', '::1', '/index.php/nimda/download/detail_add/2', '2023-06-19 06:51:10', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(693, '1687175473', '::1', '/index.php/nimda/download/detail_save/2', '2023-06-19 06:51:13', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(694, '1687175473', '::1', '/index.php/nimda/download/detail/2', '2023-06-19 06:51:13', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(695, '1687236654', '::1', '/index.php', '2023-06-19 23:50:54', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(696, '1687236654', '::1', '/index.php/auth/', '2023-06-19 23:50:54', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(697, '1687236657', '::1', '/index.php/auth/check_login', '2023-06-19 23:50:57', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(698, '1687236663', '::1', '/index.php/nimda/pengaturan', '2023-06-19 23:51:03', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(699, '1687239296', '::1', '/index.php/nimda/pengaturan', '2023-06-20 00:34:56', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(700, '1687239308', '::1', '/index.php/nimda/penghargaan/kategori', '2023-06-20 00:35:08', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(701, '1687239371', '::1', '/index.php/nimda/penghargaan/kategori', '2023-06-20 00:36:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(702, '1687239385', '::1', '/index.php/nimda/penghargaan/kategori', '2023-06-20 00:36:25', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(703, '1687239389', '::1', '/index.php/nimda/penghargaan/kategori', '2023-06-20 00:36:29', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(704, '1687239530', '::1', '/index.php/nimda/penghargaan/kategori', '2023-06-20 00:38:50', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(705, '1687239669', '::1', '/index.php/nimda/penghargaan/kategori', '2023-06-20 00:41:09', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(706, '1687239673', '::1', '/index.php/nimda/penghargaan/kategori_edit/1', '2023-06-20 00:41:13', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(707, '1687239715', '::1', '/index.php/nimda/penghargaan/kategori_edit/1', '2023-06-20 00:41:55', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(708, '1687239721', '::1', '/index.php/nimda/penghargaan/kategori_update', '2023-06-20 00:42:01', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(709, '1687239721', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-20 00:42:01', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(710, '1687239731', '::1', '/index.php/nimda/penghargaan/kategori', '2023-06-20 00:42:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(711, '1687239844', '::1', '/index.php/nimda/penghargaan/kategori', '2023-06-20 00:44:04', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(712, '1687239853', '::1', '/index.php/nimda/penghargaan/savekategori', '2023-06-20 00:44:13', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(713, '1687239853', '::1', '/index.php/nimda/penghargaan/kategori/', '2023-06-20 00:44:13', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(714, '1687239857', '::1', '/index.php/nimda/penghargaan/kategori_edit/3', '2023-06-20 00:44:17', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(715, '1687239859', '::1', '/index.php/nimda/penghargaan/kategori_update', '2023-06-20 00:44:19', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(716, '1687239859', '::1', '/index.php/nimda/penghargaan/kategori/', '2023-06-20 00:44:19', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(717, '1687239864', '::1', '/index.php/nimda/penghargaan/kategori_delete/3', '2023-06-20 00:44:24', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(718, '1687239864', '::1', '/index.php/nimda/penghargaan/kategori/', '2023-06-20 00:44:24', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(719, '1687239876', '::1', '/index.php/nimda/penghargaan', '2023-06-20 00:44:36', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(720, '1687240124', '::1', '/index.php/nimda/penghargaan', '2023-06-20 00:48:44', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(721, '1687240303', '::1', '/index.php/nimda/penghargaan', '2023-06-20 00:51:43', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(722, '1687240312', '::1', '/index.php/nimda/penghargaan/add', '2023-06-20 00:51:52', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(723, '1687240493', '::1', '/index.php/nimda/penghargaan/add', '2023-06-20 00:54:53', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(724, '1687241956', '::1', '/index.php/nimda/penghargaan/add', '2023-06-20 01:19:16', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(725, '1687241974', '::1', '/index.php/nimda/penghargaan/save', '2023-06-20 01:19:34', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(726, '1687241974', '::1', '/index.php/nimda/penghargaan', '2023-06-20 01:19:34', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(727, '1687242010', '::1', '/index.php/nimda/penghargaan', '2023-06-20 01:20:10', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(728, '1687242018', '::1', '/index.php/nimda/penghargaan/edit/1', '2023-06-20 01:20:18', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(729, '1687242913', '::1', '/index.php/nimda/penghargaan/edit/1', '2023-06-20 01:35:13', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(730, '1687242938', '::1', '/index.php/nimda/penghargaan/edit/1', '2023-06-20 01:35:38', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(731, '1687242951', '::1', '/index.php/nimda/penghargaan/edit/1', '2023-06-20 01:35:51', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(732, '1687242969', '::1', '/index.php/nimda/penghargaan/update/1', '2023-06-20 01:36:09', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(733, '1687243076', '::1', '/index.php/nimda/penghargaan/update/1', '2023-06-20 01:37:56', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(734, '1687243117', '::1', '/index.php/nimda/penghargaan/', '2023-06-20 01:38:37', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(735, '1687243120', '::1', '/index.php/nimda/penghargaan/delete/1', '2023-06-20 01:38:40', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(736, '1687243120', '::1', '/index.php/nimda/penghargaan', '2023-06-20 01:38:40', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(737, '1687243124', '::1', '/index.php/nimda/penghargaan/add', '2023-06-20 01:38:44', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(738, '1687243140', '::1', '/index.php/nimda/penghargaan/save', '2023-06-20 01:39:00', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(739, '1687243140', '::1', '/index.php/nimda/penghargaan', '2023-06-20 01:39:00', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(740, '1687243142', '::1', '/index.php/nimda/penghargaan/edit/2', '2023-06-20 01:39:02', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(741, '1687243155', '::1', '/index.php/nimda/penghargaan/update/2', '2023-06-20 01:39:15', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(742, '1687243209', '::1', '/index.php/nimda/penghargaan/edit/2', '2023-06-20 01:40:09', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(743, '1687243212', '::1', '/index.php/nimda/penghargaan/edit/2', '2023-06-20 01:40:12', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(744, '1687243215', '::1', '/index.php/nimda/penghargaan', '2023-06-20 01:40:15', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(745, '1687243217', '::1', '/index.php/nimda/penghargaan/delete/2', '2023-06-20 01:40:17', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(746, '1687243217', '::1', '/index.php/nimda/penghargaan', '2023-06-20 01:40:17', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(747, '1687243222', '::1', '/index.php/nimda/penghargaan/add', '2023-06-20 01:40:22', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(748, '1687243232', '::1', '/index.php/nimda/penghargaan/save', '2023-06-20 01:40:32', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(749, '1687243232', '::1', '/index.php/nimda/penghargaan', '2023-06-20 01:40:32', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(750, '1687243234', '::1', '/index.php/nimda/penghargaan/edit/3', '2023-06-20 01:40:34', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(751, '1687243246', '::1', '/index.php/nimda/penghargaan/update/3', '2023-06-20 01:40:46', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(752, '1687243246', '::1', '/index.php/nimda/penghargaan/edit/3', '2023-06-20 01:40:46', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(753, '1687243263', '::1', '/index.php/nimda/penghargaan/update/3', '2023-06-20 01:41:03', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(754, '1687243263', '::1', '/index.php/nimda/penghargaan', '2023-06-20 01:41:03', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(755, '1687243270', '::1', '/index.php/nimda/penghargaan/edit/3', '2023-06-20 01:41:10', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(756, '1687243273', '::1', '/index.php/nimda/penghargaan', '2023-06-20 01:41:13', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(757, '1687243275', '::1', '/index.php/nimda/penghargaan/edit/4', '2023-06-20 01:41:15', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(758, '1687243277', '::1', '/index.php/nimda/penghargaan', '2023-06-20 01:41:17', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(759, '1687243281', '::1', '/index.php/nimda/penghargaan/delete/3', '2023-06-20 01:41:21', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(760, '1687243281', '::1', '/index.php/nimda/penghargaan', '2023-06-20 01:41:21', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(761, '1687243317', '::1', '/index.php/nimda/penghargaan', '2023-06-20 01:41:57', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(762, '1687243318', '::1', '/index.php/nimda/penghargaan/edit/4', '2023-06-20 01:41:58', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(763, '1687243329', '::1', '/index.php/nimda/penghargaan/update/4', '2023-06-20 01:42:09', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(764, '1687243329', '::1', '/index.php/nimda/penghargaan', '2023-06-20 01:42:09', '2023-06-20 06:28:54', '2023-06-20 06:28:54');
INSERT INTO `usersonline` (`usersonline_id`, `usersonline_timestamp`, `usersonline_ip`, `usersonline_file`, `created_at`, `updated_at`, `deleted_at`) VALUES
(765, '1687243331', '::1', '/index.php/nimda/penghargaan/edit/4', '2023-06-20 01:42:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(766, '1687243335', '::1', '/index.php/nimda/penghargaan', '2023-06-20 01:42:15', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(767, '1687243373', '::1', '/index.php/nimda/slider', '2023-06-20 01:42:53', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(768, '1687243640', '::1', '/index.php/nimda/slider', '2023-06-20 01:47:20', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(769, '1687243735', '::1', '/index.php/nimda/slider', '2023-06-20 01:48:55', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(770, '1687243801', '::1', '/index.php/nimda/slider/add', '2023-06-20 01:50:01', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(771, '1687243814', '::1', '/index.php/nimda/slider/save', '2023-06-20 01:50:14', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(772, '1687243814', '::1', '/index.php/nimda/slider', '2023-06-20 01:50:14', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(773, '1687243823', '::1', '/index.php/nimda/slider/edit/1', '2023-06-20 01:50:23', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(774, '1687243833', '::1', '/index.php/nimda/slider/update/1', '2023-06-20 01:50:33', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(775, '1687243833', '::1', '/index.php/nimda/slider', '2023-06-20 01:50:33', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(776, '1687243856', '::1', '/index.php/nimda/slider/delete/1', '2023-06-20 01:50:56', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(777, '1687243856', '::1', '/index.php/nimda/slider', '2023-06-20 01:50:56', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(778, '1687243857', '::1', '/index.php/nimda/slider/edit/2', '2023-06-20 01:50:57', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(779, '1687243870', '::1', '/index.php/nimda/slider/update/2', '2023-06-20 01:51:10', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(780, '1687243870', '::1', '/index.php/nimda/slider', '2023-06-20 01:51:10', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(781, '1687243991', '::1', '/index.php/nimda/download', '2023-06-20 01:53:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(782, '1687243994', '::1', '/index.php/nimda/download/add', '2023-06-20 01:53:14', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(783, '1687243996', '::1', '/index.php/nimda/download', '2023-06-20 01:53:16', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(784, '1687243998', '::1', '/index.php/nimda/download/detail/2', '2023-06-20 01:53:18', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(785, '1687244008', '::1', '/index.php/nimda/download/detail_add/2', '2023-06-20 01:53:28', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(786, '1687247267', '::1', '/index.php/nimda/download/detail_add/2', '2023-06-20 02:47:47', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(787, '1687247277', '::1', '/index.php/nimda/download/detail_save/2', '2023-06-20 02:47:57', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(788, '1687247277', '::1', '/index.php/nimda/download/detail/2', '2023-06-20 02:47:57', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(789, '1687247451', '::1', '/index.php/nimda/download/detail_add/2', '2023-06-20 02:50:51', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(790, '1687247463', '::1', '/index.php/nimda/download/detail_save/2', '2023-06-20 02:51:03', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(791, '1687247464', '::1', '/index.php/nimda/download/detail/2', '2023-06-20 02:51:04', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(792, '1687247534', '::1', '/index.php/nimda/download/detail_add/2', '2023-06-20 02:52:14', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(793, '1687247552', '::1', '/index.php/nimda/download/detail_save/2', '2023-06-20 02:52:32', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(794, '1687247553', '::1', '/index.php/nimda/download/detail/2', '2023-06-20 02:52:33', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(795, '1687248138', '::1', '/index.php/nimda/download/detail/2', '2023-06-20 03:02:18', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(796, '1687248160', '::1', '/index.php/nimda/download/detail/2', '2023-06-20 03:02:40', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(797, '1687248425', '::1', '/index.php/nimda/download/detail/2', '2023-06-20 03:07:05', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(798, '1687248427', '::1', '/index.php/nimda/download/get_download/2/5', '2023-06-20 03:07:07', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(799, '1687248439', '::1', '/index.php/nimda/download/get_download/2/6', '2023-06-20 03:07:19', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(800, '1687248482', '::1', '/index.php/nimda/download/detail/2', '2023-06-20 03:08:02', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(801, '1687248485', '::1', '/index.php/nimda/download/get_download/2/6', '2023-06-20 03:08:05', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(802, '1687248517', '::1', '/index.php/nimda/download/detail/2', '2023-06-20 03:08:37', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(803, '1687248519', '::1', '/index.php/nimda/download/get_download/2/6', '2023-06-20 03:08:39', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(804, '1687248525', '::1', '/index.php/nimda/download/get_download/2/6', '2023-06-20 03:08:45', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(805, '1687248876', '::1', '/index.php/nimda/download/detail_add/2', '2023-06-20 03:14:36', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(806, '1687248890', '::1', '/index.php/nimda/download/detail_save/2', '2023-06-20 03:14:50', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(807, '1687248890', '::1', '/index.php/nimda/download/detail/2', '2023-06-20 03:14:50', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(808, '1687248898', '::1', '/index.php/nimda/download/get_download/2/9', '2023-06-20 03:14:58', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(809, '1687248971', '::1', '/index.php/nimda/download/detail/2', '2023-06-20 03:16:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(810, '1687248973', '::1', '/index.php/nimda/download/get_download/2/8', '2023-06-20 03:16:13', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(811, '1687248977', '::1', '/index.php/nimda/download/get_download/2/9', '2023-06-20 03:16:17', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(812, '1687248992', '::1', '/index.php/nimda/download/detail_delete/2/8', '2023-06-20 03:16:32', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(813, '1687248993', '::1', '/index.php/nimda/download/detail/2', '2023-06-20 03:16:33', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(814, '1687248996', '::1', '/index.php/nimda/download/detail_delete/2/7', '2023-06-20 03:16:36', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(815, '1687248996', '::1', '/index.php/nimda/download/detail/2', '2023-06-20 03:16:36', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(816, '1687249000', '::1', '/index.php/nimda/download/detail_delete/2/6', '2023-06-20 03:16:40', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(817, '1687249000', '::1', '/index.php/nimda/download/detail/2', '2023-06-20 03:16:40', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(818, '1687249003', '::1', '/index.php/nimda/download/detail_delete/2/5', '2023-06-20 03:16:43', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(819, '1687249003', '::1', '/index.php/nimda/download/detail/2', '2023-06-20 03:16:43', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(820, '1687249007', '::1', '/index.php/nimda/download/detail_add/2', '2023-06-20 03:16:47', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(821, '1687249027', '::1', '/index.php/nimda/download/detail_save/2', '2023-06-20 03:17:07', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(822, '1687249027', '::1', '/index.php/nimda/download/detail/2', '2023-06-20 03:17:07', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(823, '1687249031', '::1', '/index.php/nimda/download/get_download/2/10', '2023-06-20 03:17:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(824, '1687249055', '::1', '/index.php/nimda/download/detail_edit/2/10', '2023-06-20 03:17:35', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(825, '1687249425', '::1', '/index.php/nimda/download/detail_edit/2/10', '2023-06-20 03:23:45', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(826, '1687249470', '::1', '/index.php/nimda/download/detail_edit/2/10', '2023-06-20 03:24:30', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(827, '1687249522', '::1', '/index.php/nimda/download/detail_edit/2/10', '2023-06-20 03:25:22', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(828, '1687249540', '::1', '/index.php/nimda/download/detail_edit/2/10', '2023-06-20 03:25:40', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(829, '1687249606', '::1', '/index.php/nimda/download/detail_edit/2/10', '2023-06-20 03:26:46', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(830, '1687249611', '::1', '/index.php/nimda/download/get_download/2/10', '2023-06-20 03:26:51', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(831, '1687249640', '::1', '/index.php/nimda/download/detail_update/2/10', '2023-06-20 03:27:20', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(832, '1687249640', '::1', '/index.php/nimda/download/detail_edit/2/10', '2023-06-20 03:27:20', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(833, '1687249675', '::1', '/index.php/nimda/download/detail/2', '2023-06-20 03:27:55', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(834, '1687249677', '::1', '/index.php/nimda/download/get_download/2/10', '2023-06-20 03:27:57', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(835, '1687249682', '::1', '/index.php/nimda/download/detail_edit/2/10', '2023-06-20 03:28:02', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(836, '1687249692', '::1', '/index.php/nimda/download/detail_update/2/10', '2023-06-20 03:28:12', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(837, '1687249693', '::1', '/index.php/nimda/download/detail/2', '2023-06-20 03:28:13', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(838, '1687249696', '::1', '/index.php/nimda/download/get_download/2/10', '2023-06-20 03:28:16', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(839, '1687249738', '::1', '/index.php/nimda/slider', '2023-06-20 03:28:58', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(840, '1687249903', '::1', '/index.php/nimda/slider', '2023-06-20 03:31:43', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(841, '1687249905', '::1', '/index.php/nimda/slider/add', '2023-06-20 03:31:45', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(842, '1687249908', '::1', '/index.php/nimda/slider', '2023-06-20 03:31:48', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(843, '1687249915', '::1', '/index.php/nimda/profil', '2023-06-20 03:31:55', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(844, '1687249964', '::1', '/index.php/nimda/profil', '2023-06-20 03:32:44', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(845, '1687249978', '::1', '/index.php/nimda/profil', '2023-06-20 03:32:58', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(846, '1687249980', '::1', '/index.php/nimda/profil/add', '2023-06-20 03:33:00', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(847, '1687249983', '::1', '/index.php/nimda/profil', '2023-06-20 03:33:03', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(848, '1687249987', '::1', '/index.php/nimda/sekretariat', '2023-06-20 03:33:07', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(849, '1687250045', '::1', '/index.php/nimda/sekretariat', '2023-06-20 03:34:05', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(850, '1687250049', '::1', '/index.php/nimda/sekretariat/edit/2', '2023-06-20 03:34:09', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(851, '1687250056', '::1', '/index.php/nimda/sekretariat/update/2', '2023-06-20 03:34:16', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(852, '1687250056', '::1', '/index.php/nimda/sekretariat', '2023-06-20 03:34:16', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(853, '1687250058', '::1', '/index.php/nimda/sekretariat/add', '2023-06-20 03:34:18', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(854, '1687250061', '::1', '/index.php/nimda/sekretariat', '2023-06-20 03:34:21', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(855, '1687250110', '::1', '/index.php/nimda/berita', '2023-06-20 03:35:10', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(856, '1687250114', '::1', '/index.php/nimda/berita/add', '2023-06-20 03:35:14', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(857, '1687250121', '::1', '/index.php/nimda/pidato', '2023-06-20 03:35:21', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(858, '1687250164', '::1', '/index.php/nimda/pidato', '2023-06-20 03:36:04', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(859, '1687250167', '::1', '/index.php/nimda/pidato/kategori', '2023-06-20 03:36:07', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(860, '1687250170', '::1', '/index.php/nimda/pidato', '2023-06-20 03:36:10', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(861, '1687250176', '::1', '/index.php/nimda/pidato/add', '2023-06-20 03:36:16', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(862, '1687250180', '::1', '/index.php/nimda/pidato', '2023-06-20 03:36:20', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(863, '1687250193', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-20 03:36:33', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(864, '1687250241', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-20 03:37:21', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(865, '1687250243', '::1', '/index.php/nimda/galeri_kegiatan/add', '2023-06-20 03:37:23', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(866, '1687250247', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-20 03:37:27', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(867, '1687250250', '::1', '/index.php/nimda/galeri_kegiatan/detail/2', '2023-06-20 03:37:30', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(868, '1687250265', '::1', '/index.php/nimda/berita_foto', '2023-06-20 03:37:45', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(869, '1687250303', '::1', '/index.php/nimda/berita_foto', '2023-06-20 03:38:23', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(870, '1687250304', '::1', '/index.php/nimda/berita_foto/add', '2023-06-20 03:38:24', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(871, '1687250309', '::1', '/index.php/nimda/berita_foto', '2023-06-20 03:38:29', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(872, '1687250325', '::1', '/index.php/nimda/video_kegiatan', '2023-06-20 03:38:45', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(873, '1687250366', '::1', '/index.php/nimda/video_kegiatan', '2023-06-20 03:39:26', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(874, '1687250368', '::1', '/index.php/nimda/video_kegiatan/add', '2023-06-20 03:39:28', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(875, '1687250375', '::1', '/index.php/nimda/video_kegiatan', '2023-06-20 03:39:35', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(876, '1687250379', '::1', '/index.php/nimda/agenda', '2023-06-20 03:39:39', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(877, '1687250422', '::1', '/index.php/nimda/agenda', '2023-06-20 03:40:22', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(878, '1687250423', '::1', '/index.php/nimda/agenda/add', '2023-06-20 03:40:23', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(879, '1687250427', '::1', '/index.php/nimda/agenda', '2023-06-20 03:40:27', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(880, '1687250432', '::1', '/index.php/nimda/agenda/add', '2023-06-20 03:40:32', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(881, '1687250436', '::1', '/index.php/nimda/agenda', '2023-06-20 03:40:36', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(882, '1687250439', '::1', '/index.php/nimda/download', '2023-06-20 03:40:39', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(883, '1687250447', '::1', '/index.php/nimda/download/detail/2', '2023-06-20 03:40:47', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(884, '1687250449', '::1', '/index.php/nimda/download', '2023-06-20 03:40:49', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(885, '1687250487', '::1', '/index.php/nimda/download', '2023-06-20 03:41:27', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(886, '1687250489', '::1', '/index.php/nimda/download/add', '2023-06-20 03:41:29', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(887, '1687250491', '::1', '/index.php/nimda/download', '2023-06-20 03:41:31', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(888, '1687250498', '::1', '/index.php/nimda/penghargaan', '2023-06-20 03:41:38', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(889, '1687250529', '::1', '/index.php/nimda/penghargaan', '2023-06-20 03:42:09', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(890, '1687250531', '::1', '/index.php/nimda/penghargaan/add', '2023-06-20 03:42:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(891, '1687250538', '::1', '/index.php/nimda/pidato', '2023-06-20 03:42:18', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(892, '1687250546', '::1', '/index.php/nimda/penghargaan', '2023-06-20 03:42:26', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(893, '1687250548', '::1', '/index.php/nimda/penghargaan/add', '2023-06-20 03:42:28', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(894, '1687250578', '::1', '/index.php/nimda/penghargaan/add', '2023-06-20 03:42:58', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(895, '1687250580', '::1', '/index.php/nimda/penghargaan', '2023-06-20 03:43:00', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(896, '1687250753', '::1', '/index.php/nimda/pidato', '2023-06-20 03:45:53', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(897, '1687250755', '::1', '/index.php/nimda/pidato/add', '2023-06-20 03:45:55', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(898, '1687252023', '::1', '/index.php/nimda/pidato/add', '2023-06-20 04:07:03', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(899, '1687256203', '::1', '/index.php', '2023-06-20 05:16:43', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(900, '1687256203', '::1', '/index.php/auth/', '2023-06-20 05:16:43', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(901, '1687256217', '::1', '/index.php/nimda/berita', '2023-06-20 05:16:57', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(902, '1687256269', '::1', '/index.php/nimda/pidato', '2023-06-20 05:17:49', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(903, '1687256271', '::1', '/index.php/nimda/pidato/add', '2023-06-20 05:17:51', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(904, '1687256485', '::1', '/index.php/nimda/pidato', '2023-06-20 05:21:25', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(905, '1687256489', '::1', '/index.php/nimda/pidato/add', '2023-06-20 05:21:29', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(906, '1687256504', '::1', '/index.php/nimda/pidato/save', '2023-06-20 05:21:44', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(907, '1687256504', '::1', '/index.php/nimda/pidato', '2023-06-20 05:21:44', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(908, '1687256905', '::1', '/index.php/nimda/pidato', '2023-06-20 05:28:25', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(909, '1687256915', '::1', '/index.php/nimda/pidato/get_download/3', '2023-06-20 05:28:35', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(910, '1687256938', '::1', '/index.php/nimda/pidato/edit/3', '2023-06-20 05:28:58', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(911, '1687257513', '::1', '/index.php/nimda/pidato', '2023-06-20 05:38:33', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(912, '1687257516', '::1', '/index.php/nimda/pidato/edit/3', '2023-06-20 05:38:36', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(913, '1687257542', '::1', '/index.php/nimda/pidato/update/3', '2023-06-20 05:39:02', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(914, '1687257543', '::1', '/index.php/nimda/pidato', '2023-06-20 05:39:03', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(915, '1687257547', '::1', '/index.php/nimda/pidato/get_download/3', '2023-06-20 05:39:07', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(916, '1687257554', '::1', '/index.php/nimda/pidato/pantun/3', '2023-06-20 05:39:14', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(917, '1687257569', '::1', '/index.php/nimda/users', '2023-06-20 05:39:29', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(918, '1687257977', '::1', '/index.php/nimda/users', '2023-06-20 05:46:17', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(919, '1687258227', '::1', '/index.php/nimda/users', '2023-06-20 05:50:27', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(920, '1687258249', '::1', '/index.php/nimda/users', '2023-06-20 05:50:49', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(921, '1687258259', '::1', '/index.php/nimda/users', '2023-06-20 05:50:59', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(922, '1687258288', '::1', '/index.php/nimda/users', '2023-06-20 05:51:28', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(923, '1687258294', '::1', '/index.php/nimda/users/edit/1', '2023-06-20 05:51:34', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(924, '1687258316', '::1', '/index.php/nimda/users/edit/1', '2023-06-20 05:51:56', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(925, '1687258385', '::1', '/index.php/nimda/users', '2023-06-20 05:53:05', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(926, '1687258390', '::1', '/index.php/nimda/users/add', '2023-06-20 05:53:10', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(927, '1687258420', '::1', '/index.php/nimda/users/add', '2023-06-20 05:53:40', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(928, '1687258440', '::1', '/index.php/nimda/kontak', '2023-06-20 05:54:00', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(929, '1687258443', '::1', '/index.php/nimda/users/add', '2023-06-20 05:54:03', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(930, '1687258445', '::1', '/index.php/nimda/users', '2023-06-20 05:54:05', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(931, '1687258469', '::1', '/index.php/nimda/users/add', '2023-06-20 05:54:29', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(932, '1687258482', '::1', '/index.php/nimda/users/add', '2023-06-20 05:54:42', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(933, '1687258483', '::1', '/index.php/nimda/users', '2023-06-20 05:54:43', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(934, '1687258485', '::1', '/index.php/nimda/users/add', '2023-06-20 05:54:45', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(935, '1687258486', '::1', '/index.php/nimda/users', '2023-06-20 05:54:46', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(936, '1687258487', '::1', '/index.php/nimda/users/edit/1', '2023-06-20 05:54:47', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(937, '1687258492', '::1', '/index.php/nimda/users', '2023-06-20 05:54:52', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(938, '1687258581', '::1', '/index.php/nimda/users/add', '2023-06-20 05:56:21', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(939, '1687258582', '::1', '/index.php/nimda/users', '2023-06-20 05:56:22', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(940, '1687258730', '::1', '/index.php/nimda', '2023-06-20 05:58:50', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(941, '1687258827', '::1', '/index.php/nimda', '2023-06-20 06:00:27', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(942, '1687258910', '::1', '/index.php/nimda', '2023-06-20 06:01:50', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(943, '1687258911', '::1', '/index.php/nimda', '2023-06-20 06:01:51', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(944, '1687258948', '::1', '/index.php/nimda', '2023-06-20 06:02:28', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(945, '1687258996', '::1', '/index.php/nimda', '2023-06-20 06:03:16', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(946, '1687259016', '::1', '/index.php/nimda', '2023-06-20 06:03:36', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(947, '1687259102', '::1', '/index.php/nimda/berita', '2023-06-20 06:05:02', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(948, '1687259105', '::1', '/index.php/nimda', '2023-06-20 06:05:05', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(949, '1687259109', '::1', '/index.php/nimda', '2023-06-20 06:05:09', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(950, '1687259111', '::1', '/index.php/nimda/slider', '2023-06-20 06:05:11', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(951, '1687259112', '::1', '/index.php/nimda', '2023-06-20 06:05:12', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(952, '1687259262', '::1', '/index.php/nimda', '2023-06-20 06:07:42', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(953, '1687259421', '::1', '/index.php/nimda', '2023-06-20 06:10:21', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(954, '1687259521', '::1', '/index.php/nimda', '2023-06-20 06:12:01', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(955, '1687259786', '::1', '/index.php/nimda', '2023-06-20 06:16:26', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(956, '1687260124', '::1', '/index.php/nimda', '2023-06-20 06:22:04', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(957, '1687260174', '::1', '/index.php/nimda/users/edit/1', '2023-06-20 06:22:54', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(958, '1687260178', '::1', '/index.php/nimda/pengaturan', '2023-06-20 06:22:58', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(959, '1687260183', '::1', '/index.php/auth/logout', '2023-06-20 06:23:03', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(960, '1687260183', '::1', '/index.php/', '2023-06-20 06:23:03', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(961, '1687260183', '::1', '/index.php/auth/', '2023-06-20 06:23:03', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(962, '1687260187', '::1', '/index.php/auth/check_login', '2023-06-20 06:23:07', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(963, '1687260187', '::1', '/index.php/nimda/home', '2023-06-20 06:23:07', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(964, '1687260194', '::1', '/index.php/nimda/kontak', '2023-06-20 06:23:14', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(965, '1687260240', '::1', '/index.php/nimda/kontak', '2023-06-20 06:24:00', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(966, '1687260241', '::1', '/index.php/nimda/home', '2023-06-20 06:24:01', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(967, '1687260243', '::1', '/index.php/nimda', '2023-06-20 06:24:03', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(968, '1687260248', '::1', '/index.php/nimda', '2023-06-20 06:24:08', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(969, '1687260254', '::1', '/index.php/nimda/pengaturan', '2023-06-20 06:24:14', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(970, '1687260261', '::1', '/index.php/nimda/pengaturan/update/1', '2023-06-20 06:24:21', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(971, '1687260261', '::1', '/index.php/nimda/pengaturan/', '2023-06-20 06:24:21', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(972, '1687260275', '::1', '/index.php/nimda/pengaturan/update/1', '2023-06-20 06:24:35', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(973, '1687260275', '::1', '/index.php/nimda/pengaturan/', '2023-06-20 06:24:35', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(974, '1687260279', '::1', '/index.php/nimda/pengaturan', '2023-06-20 06:24:39', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(975, '1687260487', '::1', '/index.php/nimda/pengaturan', '2023-06-20 06:28:07', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(976, '1687260501', '::1', '/index.php/nimda/pengaturan/update/1', '2023-06-20 06:28:21', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(977, '1687260501', '::1', '/index.php/nimda/pengaturan', '2023-06-20 06:28:21', '2023-06-20 06:28:54', '2023-06-20 06:28:54'),
(978, '1687260506', '::1', '/index.php/nimda/pengaturan', '2023-06-20 06:28:26', '2023-06-20 06:28:26', NULL),
(979, '1687260523', '::1', '/index.php/nimda/pengaturan/update/1', '2023-06-20 06:28:43', '2023-06-20 06:28:43', NULL),
(980, '1687260523', '::1', '/index.php/nimda/pengaturan', '2023-06-20 06:28:43', '2023-06-20 06:28:43', NULL),
(981, '1687260534', '::1', '/index.php/nimda', '2023-06-20 06:28:54', '2023-06-20 06:28:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `video_kegiatan`
--

CREATE TABLE `video_kegiatan` (
  `video_kegiatan_id` int(11) NOT NULL,
  `video_kegiatan_judul` varchar(200) NOT NULL,
  `video_kegiatan_slug` varchar(200) NOT NULL,
  `video_kegiatan_link` varchar(225) NOT NULL,
  `video_kegiatan_foto` varchar(200) NOT NULL,
  `video_kegiatan_videografer` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video_kegiatan`
--

INSERT INTO `video_kegiatan` (`video_kegiatan_id`, `video_kegiatan_judul`, `video_kegiatan_slug`, `video_kegiatan_link`, `video_kegiatan_foto`, `video_kegiatan_videografer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'hgfhgfh43', 'hgfhgfh43', 'http://dasd34sa.dd', '1687090624_578c6c1cb51b2d7f55c8.jpg', 'fghfgh55', '2023-06-18 07:11:13', '2023-06-18 07:17:31', '2023-06-18 07:17:31'),
(2, 'sdf', 'sdf', 'http://dasd34sa.dd', '1687090673_59681a8a64a26318ba5d.jpg', 'fsdfsdf', '2023-06-18 07:17:53', '2023-06-18 07:17:53', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`berita_id`);

--
-- Indexes for table `berita_detail`
--
ALTER TABLE `berita_detail`
  ADD PRIMARY KEY (`berita_detail_id`);

--
-- Indexes for table `berita_foto`
--
ALTER TABLE `berita_foto`
  ADD PRIMARY KEY (`berita_foto_id`);

--
-- Indexes for table `berita_kategori`
--
ALTER TABLE `berita_kategori`
  ADD PRIMARY KEY (`berita_kategori_id`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `download_detail`
--
ALTER TABLE `download_detail`
  ADD PRIMARY KEY (`download_detail_id`);

--
-- Indexes for table `galeri_kegiatan`
--
ALTER TABLE `galeri_kegiatan`
  ADD PRIMARY KEY (`galeri_kegiatan_id`);

--
-- Indexes for table `galeri_kegiatan_foto`
--
ALTER TABLE `galeri_kegiatan_foto`
  ADD PRIMARY KEY (`galeri_kegiatan_foto_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`kontak_id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`pegawai_id`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`pengaturan_id`);

--
-- Indexes for table `penghargaan`
--
ALTER TABLE `penghargaan`
  ADD PRIMARY KEY (`penghargaan_id`);

--
-- Indexes for table `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indexes for table `pidato_detail`
--
ALTER TABLE `pidato_detail`
  ADD PRIMARY KEY (`pidato_detail_id`);

--
-- Indexes for table `pidato_pantun`
--
ALTER TABLE `pidato_pantun`
  ADD PRIMARY KEY (`pidato_pantun_id`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`profil_id`);

--
-- Indexes for table `sekretariat`
--
ALTER TABLE `sekretariat`
  ADD PRIMARY KEY (`sekretariat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`),
  ADD UNIQUE KEY `users_name` (`users_name`);

--
-- Indexes for table `usersonline`
--
ALTER TABLE `usersonline`
  ADD PRIMARY KEY (`usersonline_id`);

--
-- Indexes for table `video_kegiatan`
--
ALTER TABLE `video_kegiatan`
  ADD PRIMARY KEY (`video_kegiatan_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `berita_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `berita_detail`
--
ALTER TABLE `berita_detail`
  MODIFY `berita_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `berita_foto`
--
ALTER TABLE `berita_foto`
  MODIFY `berita_foto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `berita_kategori`
--
ALTER TABLE `berita_kategori`
  MODIFY `berita_kategori_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `download_detail`
--
ALTER TABLE `download_detail`
  MODIFY `download_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `galeri_kegiatan`
--
ALTER TABLE `galeri_kegiatan`
  MODIFY `galeri_kegiatan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `galeri_kegiatan_foto`
--
ALTER TABLE `galeri_kegiatan_foto`
  MODIFY `galeri_kegiatan_foto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `kontak_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `pegawai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `pengaturan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penghargaan`
--
ALTER TABLE `penghargaan`
  MODIFY `penghargaan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pidato_detail`
--
ALTER TABLE `pidato_detail`
  MODIFY `pidato_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pidato_pantun`
--
ALTER TABLE `pidato_pantun`
  MODIFY `pidato_pantun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `profil_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sekretariat`
--
ALTER TABLE `sekretariat`
  MODIFY `sekretariat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usersonline`
--
ALTER TABLE `usersonline`
  MODIFY `usersonline_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=982;

--
-- AUTO_INCREMENT for table `video_kegiatan`
--
ALTER TABLE `video_kegiatan`
  MODIFY `video_kegiatan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
