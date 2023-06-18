-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2023 at 03:27 PM
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
(1, 'scsc23', 'scsc23', '2023-06-19', '22:44:00', 'scsc33', 'ascsac44', '2023-06-18 08:15:03', '2023-06-18 08:25:29', '2023-06-18 08:25:29');

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

-- --------------------------------------------------------

--
-- Table structure for table `download_detail`
--

CREATE TABLE `download_detail` (
  `download_detail_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  `download_detail_judul` varchar(200) NOT NULL,
  `download_detail_slug` varchar(200) NOT NULL,
  `download_detail_nama_data` varchar(200) NOT NULL,
  `download_detail_ukuran` varchar(200) NOT NULL,
  `download_detail_file` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 'Coba2', 'coba2', '2023-06-17 07:06:56', '2023-06-17 08:31:10', NULL),
(2, 'mas3', 'mas3', '2023-06-17 07:07:27', '2023-06-17 08:32:31', '2023-06-17 08:32:31');

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
(1, '1639190447_bc39c1adbbaaac247d20.png', '1639190447_83875e538042b6bbf6c5.png', 'treter', 'treter', 'treter', 'treter', 'jjhjkk', 'treter', 'treter', 'treter', 'treter', '2023-04-05 15:02:24', '2023-04-05 15:02:24', NULL);

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
(5, '::1', 'Firefox', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', '2023-06-18', '2023-06-18 00:06:30', '2023-06-18 00:06:30', NULL);

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
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pidato_detail`
--

INSERT INTO `pidato_detail` (`pidato_detail_id`, `kategori_id`, `pidato_detail_judul`, `pidato_detail_slug`, `pidato_detail_tgl_acara`, `pidato_detail_tempat`, `pidato_detail_file`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'coba4', 'coba4', '2023-06-20', 'dvdvdvtt4', '', '2023-06-18 00:26:41', '2023-06-18 01:42:36', '2023-06-18 01:42:36'),
(2, 1, 'hghh', 'hghh', '2023-06-29', 'fghfgh', '', '2023-06-18 01:43:51', '2023-06-18 01:43:51', NULL);

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
(2, 'vdv', 'vdv', '<p>sdv</p>', '2023-06-17 05:57:12', '2023-06-17 05:57:12', NULL);

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
(1, 1, 'admin', '$2y$10$lTDAkGROmqfxcOPH2Bstu.EytCm3ivFdjQW76zS1UwxXcue/ZVSBG', '#CFie5X_JIYcu^&mM9f+k$tlv', 1, 'hacker.png', '2023-06-17 15:47:45', '::1', '2023-04-05 17:12:04', '2023-06-17 22:47:45', NULL),
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
(1, '1681052029', '::1', '/index.php/auth', '2023-04-09 09:53:49', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(2, '1681053722', '::1', '/index.php/auth/check_login', '2023-04-09 10:22:02', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(3, '1681053722', '::1', '/index.php/auth', '2023-04-09 10:22:02', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(4, '1681053741', '::1', '/index.php/auth/check_login', '2023-04-09 10:22:21', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(5, '1681053741', '::1', '/index.php/auth', '2023-04-09 10:22:21', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(6, '1681054267', '::1', '/index.php/auth', '2023-04-09 10:31:07', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(7, '1681054270', '::1', '/index.php/auth/check_login', '2023-04-09 10:31:10', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(8, '1681054270', '::1', '/index.php/auth', '2023-04-09 10:31:10', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(9, '1681054751', '::1', '/index.php/auth', '2023-04-09 10:39:11', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(10, '1681054753', '::1', '/index.php/auth/check_login', '2023-04-09 10:39:13', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(11, '1681055552', '::1', '/index.php/auth/check_login', '2023-04-09 10:52:32', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(12, '1681055552', '::1', '/index.php/nimda/home', '2023-04-09 10:52:32', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(13, '1681061274', '::1', '/index.php/nimda/home', '2023-04-09 12:27:54', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(14, '1681061339', '::1', '/index.php/nimda/home', '2023-04-09 12:28:59', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(15, '1681061403', '::1', '/index.php/nimda/home', '2023-04-09 12:30:03', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(16, '1681061428', '::1', '/index.php/nimda/home', '2023-04-09 12:30:28', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(17, '1681061439', '::1', '/index.php/nimda/home', '2023-04-09 12:30:39', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(18, '1681061515', '::1', '/index.php/nimda/home', '2023-04-09 12:31:55', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(19, '1681061539', '::1', '/index.php/nimda/home', '2023-04-09 12:32:19', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(20, '1681061588', '::1', '/index.php/nimda/home', '2023-04-09 12:33:08', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(21, '1681061626', '::1', '/index.php/nimda/home', '2023-04-09 12:33:46', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(22, '1681061744', '::1', '/index.php/nimda/home', '2023-04-09 12:35:44', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(23, '1686972104', '::1', '/index.php/auth', '2023-06-16 22:21:44', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(24, '1686973601', '::1', '/index.php/auth', '2023-06-16 22:46:41', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(25, '1686973754', '::1', '/index.php/auth', '2023-06-16 22:49:14', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(26, '1686973773', '::1', '/index.php/auth/check_login', '2023-06-16 22:49:33', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(27, '1686973773', '::1', '/index.php/nimda/home', '2023-06-16 22:49:33', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(28, '1686974682', '::1', '/index.php/nimda/kategori/index/berita', '2023-06-16 23:04:42', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(29, '1686985395', '::1', '/index.php', '2023-06-17 02:03:15', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(30, '1686985403', '::1', '/index.php/auth', '2023-06-17 02:03:23', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(31, '1686985406', '::1', '/index.php/auth/check_login', '2023-06-17 02:03:26', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(32, '1686985406', '::1', '/index.php/nimda/home', '2023-06-17 02:03:26', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(33, '1686985410', '::1', '/index.php/nimda/kategori/index/berita', '2023-06-17 02:03:30', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(34, '1686985761', '::1', '/index.php', '2023-06-17 02:09:21', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(35, '1686985906', '::1', '/index.php/nimda/kategori/index/berita', '2023-06-17 02:11:46', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(36, '1686985940', '::1', '/index.php/nimda/berita', '2023-06-17 02:12:20', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(37, '1686985946', '::1', '/index.php/nimda/berita/add', '2023-06-17 02:12:26', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(38, '1686985950', '::1', '/index.php/nimda/kategori/index/berita', '2023-06-17 02:12:30', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(39, '1686985951', '::1', '/index.php/nimda/berita', '2023-06-17 02:12:31', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(40, '1686986089', '::1', '/index.php/nimda/berita', '2023-06-17 02:14:49', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(41, '1686986093', '::1', '/index.php/nimda/berita/kategori', '2023-06-17 02:14:53', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(42, '1686986834', '::1', '/index.php/nimda/berita/kategori', '2023-06-17 02:27:14', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(43, '1686986856', '::1', '/index.php/nimda/berita/kategori', '2023-06-17 02:27:36', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(44, '1686986865', '::1', '/index.php/nimda/berita', '2023-06-17 02:27:45', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(45, '1686986905', '::1', '/index.php/nimda/berita/kategori', '2023-06-17 02:28:25', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(46, '1686986907', '::1', '/index.php/nimda/berita', '2023-06-17 02:28:27', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(47, '1686986909', '::1', '/index.php/nimda/berita/kategori', '2023-06-17 02:28:29', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(48, '1686986934', '::1', '/index.php/nimda/berita/kategori', '2023-06-17 02:28:54', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(49, '1686987124', '::1', '/index.php/nimda/berita/kategori', '2023-06-17 02:32:04', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(50, '1686987208', '::1', '/index.php/nimda/berita/kategori', '2023-06-17 02:33:28', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(51, '1686987366', '::1', '/index.php/nimda/berita/kategori', '2023-06-17 02:36:06', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(52, '1686987370', '::1', '/index.php/nimda/berita/savekategori', '2023-06-17 02:36:10', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(53, '1686987370', '::1', '/index.php/nimda/berita/kategori/', '2023-06-17 02:36:10', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(54, '1686987397', '::1', '/index.php/nimda/berita/savekategori', '2023-06-17 02:36:37', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(55, '1686987397', '::1', '/index.php/nimda/berita/kategori/', '2023-06-17 02:36:37', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(56, '1686987510', '::1', '/index.php/nimda/berita/kategori/', '2023-06-17 02:38:30', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(57, '1686987578', '::1', '/index.php/nimda/berita/kategori/', '2023-06-17 02:39:38', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(58, '1686987594', '::1', '/index.php/nimda/berita/kategori/', '2023-06-17 02:39:54', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(59, '1686987980', '::1', '/index.php/nimda/berita/kategori_edit/2', '2023-06-17 02:46:20', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(60, '1686988049', '::1', '/index.php/nimda/berita/kategori_edit/2', '2023-06-17 02:47:29', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(61, '1686988118', '::1', '/index.php/nimda/berita/kategori_edit/2', '2023-06-17 02:48:38', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(62, '1686988154', '::1', '/index.php/nimda/berita/kategori_edit/2', '2023-06-17 02:49:14', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(63, '1686988155', '::1', '/index.php/nimda/berita/kategori/', '2023-06-17 02:49:15', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(64, '1686988157', '::1', '/index.php/nimda/berita/kategori_edit/2', '2023-06-17 02:49:17', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(65, '1686988164', '::1', '/index.php/nimda/berita/kategori/', '2023-06-17 02:49:24', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(66, '1686989249', '::1', '/index.php/nimda/berita/kategori_edit/2', '2023-06-17 03:07:29', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(67, '1686989349', '::1', '/index.php/nimda/berita/kategori_edit/2', '2023-06-17 03:09:09', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(68, '1686989604', '::1', '/index.php/nimda/berita/kategori_edit/2', '2023-06-17 03:13:24', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(69, '1686989606', '::1', '/index.php/nimda/berita/kategori_update', '2023-06-17 03:13:26', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(70, '1686989606', '::1', '/index.php/nimda/berita/kategori/', '2023-06-17 03:13:26', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(71, '1686989799', '::1', '/index.php/nimda/berita/kategori_edit/1', '2023-06-17 03:16:39', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(72, '1686989801', '::1', '/index.php/nimda/berita/kategori_update', '2023-06-17 03:16:41', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(73, '1686989801', '::1', '/index.php/nimda/berita/kategori/', '2023-06-17 03:16:41', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(74, '1686989871', '::1', '/index.php/nimda/berita/kategori_delete/2', '2023-06-17 03:17:51', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(75, '1686989871', '::1', '/index.php/nimda/berita/kategori/', '2023-06-17 03:17:51', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(76, '1686989893', '::1', '/index.php/nimda/berita/savekategori', '2023-06-17 03:18:13', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(77, '1686989893', '::1', '/index.php/nimda/berita/kategori/', '2023-06-17 03:18:13', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(78, '1686989896', '::1', '/index.php/nimda/berita/kategori_edit/1', '2023-06-17 03:18:16', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(79, '1686989897', '::1', '/index.php/nimda/berita/kategori_update', '2023-06-17 03:18:17', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(80, '1686989897', '::1', '/index.php/nimda/berita/kategori/', '2023-06-17 03:18:17', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(81, '1686989912', '::1', '/index.php/nimda/berita', '2023-06-17 03:18:32', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(82, '1686989957', '::1', '/index.php/nimda/berita/add', '2023-06-17 03:19:17', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(83, '1686990039', '::1', '/index.php/nimda/berita', '2023-06-17 03:20:39', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(84, '1686990044', '::1', '/index.php/nimda/berita/kategori', '2023-06-17 03:20:44', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(85, '1686990046', '::1', '/index.php/nimda/berita/add', '2023-06-17 03:20:46', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(86, '1686990048', '::1', '/index.php/nimda/berita', '2023-06-17 03:20:48', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(87, '1686990049', '::1', '/index.php/nimda/berita/add', '2023-06-17 03:20:49', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(88, '1686990051', '::1', '/index.php/nimda/berita', '2023-06-17 03:20:51', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(89, '1686990053', '::1', '/index.php/nimda/berita/add', '2023-06-17 03:20:53', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(90, '1686990112', '::1', '/index.php/nimda/berita/add', '2023-06-17 03:21:52', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(91, '1686990131', '::1', '/index.php/nimda/berita/add', '2023-06-17 03:22:11', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(92, '1686990721', '::1', '/index.php/nimda/berita/add', '2023-06-17 03:32:01', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(93, '1686990761', '::1', '/index.php/nimda/berita/add', '2023-06-17 03:32:41', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(94, '1686991216', '::1', '/index.php/nimda/berita/add', '2023-06-17 03:40:16', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(95, '1686991269', '::1', '/index.php/nimda/berita/save', '2023-06-17 03:41:09', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(96, '1686991269', '::1', '/index.php/nimda/berita', '2023-06-17 03:41:09', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(97, '1686991483', '::1', '/index.php/nimda/berita', '2023-06-17 03:44:43', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(98, '1686991549', '::1', '/index.php/nimda/berita', '2023-06-17 03:45:49', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(99, '1686991556', '::1', '/index.php/nimda/berita/edit/1', '2023-06-17 03:45:56', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(100, '1686991826', '::1', '/index.php/nimda/berita/edit/1', '2023-06-17 03:50:26', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(101, '1686992311', '::1', '/index.php/nimda/berita/edit/1', '2023-06-17 03:58:31', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(102, '1686993510', '::1', '/index.php/nimda/berita/edit/1', '2023-06-17 04:18:30', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(103, '1686993862', '::1', '/index.php/nimda/berita/edit/1', '2023-06-17 04:24:22', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(104, '1686993875', '::1', '/index.php/nimda/berita/update/1', '2023-06-17 04:24:35', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(105, '1686993875', '::1', '/index.php/nimda/berita', '2023-06-17 04:24:35', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(106, '1686993880', '::1', '/index.php/nimda/berita/edit/1', '2023-06-17 04:24:40', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(107, '1686993893', '::1', '/index.php/nimda/berita', '2023-06-17 04:24:53', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(108, '1686993922', '::1', '/index.php/nimda/berita', '2023-06-17 04:25:22', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(109, '1686993930', '::1', '/index.php/nimda/berita/delete/1', '2023-06-17 04:25:30', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(110, '1686993930', '::1', '/index.php/nimda/berita', '2023-06-17 04:25:30', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(111, '1686993952', '::1', '/index.php/nimda/berita/add', '2023-06-17 04:25:52', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(112, '1686993992', '::1', '/index.php/nimda/berita/save', '2023-06-17 04:26:32', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(113, '1686993992', '::1', '/index.php/nimda/berita', '2023-06-17 04:26:32', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(114, '1686997169', '::1', '/index.php/nimda/berita', '2023-06-17 05:19:29', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(115, '1686998073', '::1', '/index.php/nimda/sekretariat', '2023-06-17 05:34:33', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(116, '1686998155', '::1', '/index.php/nimda/sekretariat', '2023-06-17 05:35:55', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(117, '1686998174', '::1', '/index.php/nimda/sekretariat/add', '2023-06-17 05:36:14', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(118, '1686998283', '::1', '/index.php/nimda/sekretariat/add', '2023-06-17 05:38:03', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(119, '1686998292', '::1', '/index.php/nimda/sekretariat/add', '2023-06-17 05:38:12', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(120, '1686998294', '::1', '/index.php/nimda/sekretariat', '2023-06-17 05:38:14', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(121, '1686998298', '::1', '/index.php/nimda/sekretariat/add', '2023-06-17 05:38:18', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(122, '1686998319', '::1', '/index.php/nimda/sekretariat/add', '2023-06-17 05:38:39', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(123, '1686998321', '::1', '/index.php/nimda/sekretariat', '2023-06-17 05:38:41', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(124, '1686998323', '::1', '/index.php/nimda/sekretariat/add', '2023-06-17 05:38:43', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(125, '1686998444', '::1', '/index.php/nimda/sekretariat/add', '2023-06-17 05:40:44', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(126, '1686998460', '::1', '/index.php/nimda/sekretariat/save', '2023-06-17 05:41:00', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(127, '1686998460', '::1', '/index.php/nimda/sekretariat', '2023-06-17 05:41:00', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(128, '1686998632', '::1', '/index.php/nimda/sekretariat/edit/1', '2023-06-17 05:43:52', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(129, '1686999037', '::1', '/index.php/nimda/sekretariat/update/1', '2023-06-17 05:50:37', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(130, '1686999037', '::1', '/index.php/nimda/sekretariat', '2023-06-17 05:50:37', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(131, '1686999039', '::1', '/index.php/nimda/sekretariat/edit/1', '2023-06-17 05:50:39', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(132, '1686999042', '::1', '/index.php/nimda/sekretariat', '2023-06-17 05:50:42', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(133, '1686999077', '::1', '/index.php/nimda/sekretariat', '2023-06-17 05:51:17', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(134, '1686999079', '::1', '/index.php/nimda/sekretariat/delete/1', '2023-06-17 05:51:19', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(135, '1686999079', '::1', '/index.php/nimda/sekretariat', '2023-06-17 05:51:19', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(136, '1686999420', '::1', '/index.php/nimda/sekretariat', '2023-06-17 05:57:00', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(137, '1686999428', '::1', '/index.php/nimda/sekretariat/add', '2023-06-17 05:57:08', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(138, '1686999432', '::1', '/index.php/nimda/sekretariat/save', '2023-06-17 05:57:12', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(139, '1686999432', '::1', '/index.php/nimda/sekretariat', '2023-06-17 05:57:12', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(140, '1687000810', '::1', '/index.php/nimda/sekretariat', '2023-06-17 06:20:10', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(141, '1687000813', '::1', '/index.php/nimda/profil', '2023-06-17 06:20:13', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(142, '1687000849', '::1', '/index.php/nimda/profil/add', '2023-06-17 06:20:49', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(143, '1687000991', '::1', '/index.php/nimda/profil/add', '2023-06-17 06:23:11', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(144, '1687001086', '::1', '/index.php/nimda/profil/save', '2023-06-17 06:24:46', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(145, '1687001086', '::1', '/index.php/nimda/profil', '2023-06-17 06:24:46', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(146, '1687001145', '::1', '/index.php/nimda/profil', '2023-06-17 06:25:45', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(147, '1687001153', '::1', '/index.php/nimda/profil/edit/1', '2023-06-17 06:25:53', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(148, '1687001157', '::1', '/index.php/nimda/profil', '2023-06-17 06:25:57', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(149, '1687001214', '::1', '/index.php/nimda/profil', '2023-06-17 06:26:54', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(150, '1687001215', '::1', '/index.php/nimda/profil/edit/1', '2023-06-17 06:26:55', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(151, '1687001256', '::1', '/index.php/nimda/profil/update/1', '2023-06-17 06:27:36', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(152, '1687001256', '::1', '/index.php/nimda/profil', '2023-06-17 06:27:36', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(153, '1687001258', '::1', '/index.php/nimda/profil/edit/1', '2023-06-17 06:27:38', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(154, '1687001261', '::1', '/index.php/nimda/profil', '2023-06-17 06:27:41', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(155, '1687001269', '::1', '/index.php/nimda/profil/delete/1', '2023-06-17 06:27:49', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(156, '1687001269', '::1', '/index.php/nimda/profil', '2023-06-17 06:27:49', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(157, '1687001274', '::1', '/index.php/nimda/profil/add', '2023-06-17 06:27:54', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(158, '1687001279', '::1', '/index.php/nimda/profil/save', '2023-06-17 06:27:59', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(159, '1687001279', '::1', '/index.php/nimda/profil', '2023-06-17 06:27:59', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(160, '1687002341', '::1', '/index.php/nimda/profil', '2023-06-17 06:45:41', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(161, '1687002662', '::1', '/index.php/nimda/pidato/kategori', '2023-06-17 06:51:02', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(162, '1687002710', '::1', '/index.php/nimda/pidato/kategori', '2023-06-17 06:51:50', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(163, '1687003516', '::1', '/index.php/nimda/pidato/kategori', '2023-06-17 07:05:16', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(164, '1687003616', '::1', '/index.php/nimda/pidato/savekategori', '2023-06-17 07:06:56', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(165, '1687003618', '::1', '/index.php/nimda/pidato/kategori', '2023-06-17 07:06:58', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(166, '1687003641', '::1', '/index.php/nimda/pidato/kategori', '2023-06-17 07:07:21', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(167, '1687003647', '::1', '/index.php/nimda/pidato/savekategori', '2023-06-17 07:07:27', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(168, '1687003647', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 07:07:27', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(169, '1687007868', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 08:17:48', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(170, '1687007885', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 08:18:05', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(171, '1687007967', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 08:19:27', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(172, '1687007970', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:19:30', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(173, '1687007971', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 08:19:31', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(174, '1687008020', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:20:20', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(175, '1687008023', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 08:20:23', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(176, '1687008104', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:21:44', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(177, '1687008118', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:21:58', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(178, '1687008144', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:22:24', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(179, '1687008214', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:23:34', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(180, '1687008244', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:24:04', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(181, '1687008305', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:25:05', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(182, '1687008315', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:25:15', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(183, '1687008317', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:25:17', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(184, '1687008338', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:25:38', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(185, '1687008368', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:26:08', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(186, '1687008384', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 08:26:24', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(187, '1687008384', '::1', '/index.php/nimda/pidato/kategori', '2023-06-17 08:26:24', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(188, '1687008386', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 08:26:26', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(189, '1687008386', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:26:26', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(190, '1687008400', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:26:40', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(191, '1687008414', '::1', '/index.php/nimda/berita/kategori_update', '2023-06-17 08:26:54', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(192, '1687008414', '::1', '/index.php/nimda/berita/kategori_edit/', '2023-06-17 08:26:54', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(193, '1687008416', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:26:56', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(194, '1687008483', '::1', '/index.php/nimda/berita/kategori_update', '2023-06-17 08:28:03', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(195, '1687008483', '::1', '/index.php/nimda/berita/kategori_edit/', '2023-06-17 08:28:03', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(196, '1687008485', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:28:05', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(197, '1687008491', '::1', '/index.php/nimda/berita/kategori_update', '2023-06-17 08:28:11', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(198, '1687008491', '::1', '/index.php/nimda/berita/kategori_edit/', '2023-06-17 08:28:11', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(199, '1687008494', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:28:14', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(200, '1687008508', '::1', '/index.php/nimda/berita/kategori_update', '2023-06-17 08:28:28', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(201, '1687008508', '::1', '/index.php/nimda/berita/kategori_edit/', '2023-06-17 08:28:28', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(202, '1687008510', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:28:30', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(203, '1687008513', '::1', '/index.php/nimda/berita/kategori_update', '2023-06-17 08:28:33', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(204, '1687008513', '::1', '/index.php/nimda/berita/kategori_edit/', '2023-06-17 08:28:33', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(205, '1687008514', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:28:34', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(206, '1687008538', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 08:28:58', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(207, '1687008540', '::1', '/index.php/nimda/pidato/kategori_update', '2023-06-17 08:29:00', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(208, '1687008591', '::1', '/index.php/nimda/pidato/kategori_update', '2023-06-17 08:29:51', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(209, '1687008648', '::1', '/index.php/nimda/pidato/kategori_update', '2023-06-17 08:30:48', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(210, '1687008670', '::1', '/index.php/nimda/pidato/kategori_update', '2023-06-17 08:31:10', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(211, '1687008670', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 08:31:10', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(212, '1687008692', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 08:31:32', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(213, '1687008694', '::1', '/index.php/nimda/pidato/kategori_edit/2', '2023-06-17 08:31:34', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(214, '1687008697', '::1', '/index.php/nimda/pidato/kategori_update', '2023-06-17 08:31:37', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(215, '1687008697', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 08:31:37', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(216, '1687008751', '::1', '/index.php/nimda/pidato/kategori_delete/2', '2023-06-17 08:32:31', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(217, '1687008751', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 08:32:31', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(218, '1687008765', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:32:45', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(219, '1687008958', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:35:58', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(220, '1687009029', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:37:09', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(221, '1687009099', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:38:19', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(222, '1687009156', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:39:16', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(223, '1687009160', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:39:20', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(224, '1687009167', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:39:27', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(225, '1687009272', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:41:12', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(226, '1687009273', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:41:13', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(227, '1687009329', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:42:09', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(228, '1687009363', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:42:43', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(229, '1687009416', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:43:36', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(230, '1687009417', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:43:37', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(231, '1687009417', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:43:37', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(232, '1687009418', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:43:38', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(233, '1687009418', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:43:38', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(234, '1687009418', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:43:38', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(235, '1687009418', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:43:38', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(236, '1687009479', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:44:39', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(237, '1687009528', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:45:28', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(238, '1687009542', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:45:42', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(239, '1687009622', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:47:02', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(240, '1687009623', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:47:03', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(241, '1687009623', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:47:03', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(242, '1687009624', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:47:04', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(243, '1687009624', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:47:04', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(244, '1687009625', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:47:05', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(245, '1687009661', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:47:41', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(246, '1687009698', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:48:18', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(247, '1687009720', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:48:40', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(248, '1687009721', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:48:41', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(249, '1687009721', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:48:41', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(250, '1687009721', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:48:41', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(251, '1687009721', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:48:41', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(252, '1687009728', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:48:48', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(253, '1687009798', '::1', '/index.php/nimda/pidato/kategori/', '2023-06-17 08:49:58', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(254, '1687009799', '::1', '/index.php/nimda/pidato/kategori_edit/2', '2023-06-17 08:49:59', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(255, '1687009805', '::1', '/index.php/nimda/pidato/kategori_edit/2', '2023-06-17 08:50:05', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(256, '1687009810', '::1', '/index.php/nimda/home', '2023-06-17 08:50:10', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(257, '1687009818', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:50:18', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(258, '1687009965', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:52:45', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(259, '1687010001', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:53:21', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(260, '1687010027', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:53:47', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(261, '1687010081', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:54:41', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(262, '1687010082', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:54:42', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(263, '1687010085', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:54:45', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(264, '1687010099', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:54:59', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(265, '1687010114', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:55:14', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(266, '1687010184', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:56:24', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(267, '1687010209', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:56:49', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(268, '1687010250', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:57:30', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(269, '1687010268', '::1', '/index.php/nimda/pengaturan', '2023-06-17 08:57:48', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(270, '1687010414', '::1', '/index.php/nimda/pengaturan', '2023-06-17 09:00:14', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(271, '1687010430', '::1', '/index.php/nimda/pengaturan/update/1', '2023-06-17 09:00:30', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(272, '1687010430', '::1', '/index.php/nimda/pengaturan/', '2023-06-17 09:00:30', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(273, '1687010441', '::1', '/index.php/nimda/pengaturan/update/1', '2023-06-17 09:00:41', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(274, '1687010441', '::1', '/index.php/nimda/pengaturan/', '2023-06-17 09:00:41', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(275, '1687010456', '::1', '/index.php/nimda/pidato/kategori', '2023-06-17 09:00:56', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(276, '1687010532', '::1', '/index.php/nimda/pidato/kategori', '2023-06-17 09:02:12', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(277, '1687010538', '::1', '/index.php/nimda/pidato/kategori', '2023-06-17 09:02:18', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(278, '1687010541', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 09:02:21', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(279, '1687010555', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 09:02:35', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(280, '1687010567', '::1', '/index.php/nimda/pidato/kategori_edit/1', '2023-06-17 09:02:47', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(281, '1687010585', '::1', '/index.php/auth/logout', '2023-06-17 09:03:05', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(282, '1687010585', '::1', '/index.php/', '2023-06-17 09:03:05', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(283, '1687010594', '::1', '/index.php/auth', '2023-06-17 09:03:14', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(284, '1687010622', '::1', '/index.php/auth', '2023-06-17 09:03:42', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(285, '1687010624', '::1', '/index.php/auth', '2023-06-17 09:03:44', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(286, '1687010639', '::1', '/index.php/auth', '2023-06-17 09:03:59', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(287, '1687010706', '::1', '/index.php/auth', '2023-06-17 09:05:06', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(288, '1687010718', '::1', '/index.php/auth/check_login', '2023-06-17 09:05:18', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(289, '1687010727', '::1', '/index.php/auth', '2023-06-17 09:05:27', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(290, '1687010730', '::1', '/index.php/auth/check_login', '2023-06-17 09:05:30', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(291, '1687014169', '::1', '/index.php/auth/check_login', '2023-06-17 10:02:49', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(292, '1687014169', '::1', '/index.php/nimda/home', '2023-06-17 10:02:49', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(293, '1687014192', '::1', '/index.php/nimda/home', '2023-06-17 10:03:12', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(294, '1687014203', '::1', '/index.php/nimda/home', '2023-06-17 10:03:23', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(295, '1687015116', '::1', '/index.php/nimda/home', '2023-06-17 10:18:36', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(296, '1687015122', '::1', '/index.php/nimda/profil', '2023-06-17 10:18:42', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(297, '1687015156', '::1', '/index.php/nimda/profil', '2023-06-17 10:19:16', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(298, '1687015162', '::1', '/index.php/nimda/pengaturan', '2023-06-17 10:19:22', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(299, '1687015169', '::1', '/index.php/nimda/profil', '2023-06-17 10:19:29', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(300, '1687015175', '::1', '/index.php/nimda/profil', '2023-06-17 10:19:35', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(301, '1687060061', '::1', '/index.php/auth', '2023-06-17 22:47:41', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(302, '1687060065', '::1', '/index.php/auth/check_login', '2023-06-17 22:47:45', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(303, '1687060066', '::1', '/index.php/nimda/home', '2023-06-17 22:47:46', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(304, '1687060361', '::1', '/index.php/nimda/pidato/kategori', '2023-06-17 22:52:41', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(305, '1687060367', '::1', '/index.php/nimda/pidato/kategori', '2023-06-17 22:52:47', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(306, '1687064790', '::1', '/index.php/nimda/pidato/add', '2023-06-18 00:06:30', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(307, '1687065024', '::1', '/index.php/nimda/pidato/add', '2023-06-18 00:10:24', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(308, '1687065458', '::1', '/index.php/nimda/pidato/add', '2023-06-18 00:17:38', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(309, '1687065888', '::1', '/index.php/nimda/pidato/add', '2023-06-18 00:24:48', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(310, '1687066001', '::1', '/index.php/nimda/pidato/save', '2023-06-18 00:26:41', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(311, '1687066001', '::1', '/index.php/nimda/pidato', '2023-06-18 00:26:41', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(312, '1687066055', '::1', '/index.php/nimda/pidato', '2023-06-18 00:27:35', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(313, '1687066099', '::1', '/index.php/nimda/pidato', '2023-06-18 00:28:19', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(314, '1687066199', '::1', '/index.php/nimda/pidato', '2023-06-18 00:29:59', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(315, '1687066247', '::1', '/index.php/nimda/pidato', '2023-06-18 00:30:47', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(316, '1687066310', '::1', '/index.php/nimda/pidato', '2023-06-18 00:31:50', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(317, '1687066321', '::1', '/index.php/nimda/pidato', '2023-06-18 00:32:01', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(318, '1687066330', '::1', '/index.php/nimda/pidato', '2023-06-18 00:32:10', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(319, '1687066363', '::1', '/index.php/nimda/pidato', '2023-06-18 00:32:43', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(320, '1687066366', '::1', '/index.php/nimda/pidato', '2023-06-18 00:32:46', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(321, '1687066382', '::1', '/index.php/nimda/pidato', '2023-06-18 00:33:02', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(322, '1687066691', '::1', '/index.php/nimda/pidato/edit/1', '2023-06-18 00:38:11', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(323, '1687067114', '::1', '/index.php/nimda/pidato/edit/1', '2023-06-18 00:45:14', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(324, '1687070420', '::1', '/index.php/nimda/pidato/update/1', '2023-06-18 01:40:20', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(325, '1687070481', '::1', '/index.php/nimda/pidato/update/1', '2023-06-18 01:41:21', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(326, '1687070482', '::1', '/index.php/nimda/pidato', '2023-06-18 01:41:22', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(327, '1687070485', '::1', '/index.php/nimda/pidato/edit/1', '2023-06-18 01:41:25', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(328, '1687070489', '::1', '/index.php/nimda/pidato', '2023-06-18 01:41:29', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(329, '1687070552', '::1', '/index.php/nimda/pidato', '2023-06-18 01:42:32', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(330, '1687070556', '::1', '/index.php/nimda/pidato/delete/1', '2023-06-18 01:42:36', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(331, '1687070556', '::1', '/index.php/nimda/pidato', '2023-06-18 01:42:36', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(332, '1687070560', '::1', '/index.php/nimda/pidato/add', '2023-06-18 01:42:40', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(333, '1687070572', '::1', '/index.php/nimda/pidato/save', '2023-06-18 01:42:52', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(334, '1687070611', '::1', '/index.php/nimda/pidato/save', '2023-06-18 01:43:31', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(335, '1687070611', '::1', '/index.php/nimda/pidato/add', '2023-06-18 01:43:31', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(336, '1687070622', '::1', '/index.php/nimda/pidato/add', '2023-06-18 01:43:42', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(337, '1687070631', '::1', '/index.php/nimda/pidato/save', '2023-06-18 01:43:51', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(338, '1687070631', '::1', '/index.php/nimda/pidato', '2023-06-18 01:43:51', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(339, '1687070718', '::1', '/index.php/nimda/pidato', '2023-06-18 01:45:18', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(340, '1687070739', '::1', '/index.php/nimda/pidato', '2023-06-18 01:45:39', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(341, '1687070749', '::1', '/index.php/nimda/pidato', '2023-06-18 01:45:49', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(342, '1687070762', '::1', '/index.php/nimda/pidato', '2023-06-18 01:46:02', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(343, '1687071386', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 01:56:26', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(344, '1687072809', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:20:09', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(345, '1687072933', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:22:13', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(346, '1687072951', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:22:31', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(347, '1687072957', '::1', '/index.php/nimda/pidato', '2023-06-18 02:22:37', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(348, '1687072959', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:22:39', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(349, '1687073020', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:23:40', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(350, '1687073074', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:24:34', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(351, '1687073316', '::1', '/index.php/nimda/pidato/pantun_add/2', '2023-06-18 02:28:36', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(352, '1687073373', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:29:33', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(353, '1687073396', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:29:56', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(354, '1687073397', '::1', '/index.php/nimda/pidato/pantun_add/2', '2023-06-18 02:29:57', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(355, '1687073400', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:30:00', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(356, '1687073402', '::1', '/index.php/nimda/pidato/pantun_add/2', '2023-06-18 02:30:02', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(357, '1687073407', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:30:07', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(358, '1687073416', '::1', '/index.php/nimda/pidato/pantun_add/2', '2023-06-18 02:30:16', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(359, '1687073418', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:30:18', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(360, '1687073496', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:31:36', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(361, '1687073498', '::1', '/index.php/nimda/pidato/pantun_add/2', '2023-06-18 02:31:38', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(362, '1687073500', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:31:40', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(363, '1687073502', '::1', '/index.php/nimda/pidato', '2023-06-18 02:31:42', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(364, '1687073505', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:31:45', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(365, '1687073510', '::1', '/index.php/nimda/pidato/pantun_add/2', '2023-06-18 02:31:50', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(366, '1687073720', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:35:20', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(367, '1687073735', '::1', '/index.php/nimda/pidato/pantun_add/2', '2023-06-18 02:35:35', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(368, '1687073744', '::1', '/index.php/nimda/pidato/pantun_save/2', '2023-06-18 02:35:44', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(369, '1687073744', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:35:44', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(370, '1687073778', '::1', '/index.php/nimda/pidato/pantun_add/2', '2023-06-18 02:36:18', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(371, '1687073786', '::1', '/index.php/nimda/pidato/pantun_save/2', '2023-06-18 02:36:26', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(372, '1687073787', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:36:27', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(373, '1687073883', '::1', '/index.php/nimda/pidato/add', '2023-06-18 02:38:03', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(374, '1687073884', '::1', '/index.php/nimda/pidato', '2023-06-18 02:38:04', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(375, '1687073886', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:38:06', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(376, '1687074114', '::1', '/index.php/nimda/pidato/pantun_edit/2/2', '2023-06-18 02:41:54', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(377, '1687074131', '::1', '/index.php/nimda/pidato/pantun_edit/2/2', '2023-06-18 02:42:11', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(378, '1687074155', '::1', '/index.php/nimda/pidato/pantun_edit/2/2', '2023-06-18 02:42:35', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(379, '1687074165', '::1', '/index.php/nimda/pidato/pantun_edit/2/2', '2023-06-18 02:42:45', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(380, '1687074193', '::1', '/index.php/nimda/pidato/pantun_edit/2/2', '2023-06-18 02:43:13', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(381, '1687074217', '::1', '/index.php/nimda/pidato/pantun_edit/2/2', '2023-06-18 02:43:37', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(382, '1687074219', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:43:39', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(383, '1687074221', '::1', '/index.php/nimda/pidato/pantun_edit/2/2', '2023-06-18 02:43:41', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(384, '1687074611', '::1', '/index.php/nimda/pidato/pantun_edit/2/2', '2023-06-18 02:50:11', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(385, '1687074617', '::1', '/index.php/nimda/pidato/pantun_update/2/2', '2023-06-18 02:50:17', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(386, '1687074617', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:50:17', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(387, '1687074626', '::1', '/index.php/nimda/pidato/pantun_add/2', '2023-06-18 02:50:26', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(388, '1687074629', '::1', '/index.php/nimda/pidato/pantun_save/2', '2023-06-18 02:50:29', '2023-06-18 08:25:30', '2023-06-18 08:25:30');
INSERT INTO `usersonline` (`usersonline_id`, `usersonline_timestamp`, `usersonline_ip`, `usersonline_file`, `created_at`, `updated_at`, `deleted_at`) VALUES
(389, '1687074629', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:50:29', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(390, '1687074634', '::1', '/index.php/nimda/pidato/pantun_add/2', '2023-06-18 02:50:34', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(391, '1687074638', '::1', '/index.php/nimda/pidato/pantun_save/2', '2023-06-18 02:50:38', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(392, '1687074639', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:50:39', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(393, '1687074704', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:51:44', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(394, '1687074708', '::1', '/index.php/nimda/pidato/pantun_delete/2/4', '2023-06-18 02:51:48', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(395, '1687074708', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:51:48', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(396, '1687074716', '::1', '/index.php/nimda/pidato', '2023-06-18 02:51:56', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(397, '1687074861', '::1', '/index.php/nimda/pidato', '2023-06-18 02:54:21', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(398, '1687074869', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 02:54:29', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(399, '1687075070', '::1', '/index.php/nimda/pidato', '2023-06-18 02:57:50', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(400, '1687075142', '::1', '/index.php/nimda/pidato', '2023-06-18 02:59:02', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(401, '1687075156', '::1', '/index.php/nimda/pidato', '2023-06-18 02:59:16', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(402, '1687075224', '::1', '/index.php/nimda/pidato', '2023-06-18 03:00:24', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(403, '1687075233', '::1', '/index.php/nimda/pidato', '2023-06-18 03:00:33', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(404, '1687075243', '::1', '/index.php/nimda/pidato', '2023-06-18 03:00:43', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(405, '1687075244', '::1', '/index.php/nimda/pidato', '2023-06-18 03:00:44', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(406, '1687075253', '::1', '/index.php/nimda/pidato', '2023-06-18 03:00:53', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(407, '1687075344', '::1', '/index.php/nimda/pidato', '2023-06-18 03:02:24', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(408, '1687075358', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 03:02:38', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(409, '1687075365', '::1', '/index.php/nimda/pidato', '2023-06-18 03:02:45', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(410, '1687075370', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 03:02:50', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(411, '1687077761', '::1', '/index.php/nimda/galeri', '2023-06-18 03:42:41', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(412, '1687077763', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 03:42:43', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(413, '1687077805', '::1', '/index.php/nimda/galeri', '2023-06-18 03:43:25', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(414, '1687078408', '::1', '/index.php/nimda/galeri', '2023-06-18 03:53:28', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(415, '1687078450', '::1', '/index.php/nimda/galeri', '2023-06-18 03:54:10', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(416, '1687078475', '::1', '/index.php/nimda/galeri', '2023-06-18 03:54:35', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(417, '1687078526', '::1', '/index.php/nimda/pidato/pantun/2', '2023-06-18 03:55:26', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(418, '1687078605', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-18 03:56:45', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(419, '1687078621', '::1', '/index.php/nimda/galeri_kegiatan/add', '2023-06-18 03:57:01', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(420, '1687078766', '::1', '/index.php/nimda/galeri_kegiatan/add', '2023-06-18 03:59:26', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(421, '1687078802', '::1', '/index.php/nimda/galeri_kegiatan/add', '2023-06-18 04:00:02', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(422, '1687079042', '::1', '/index.php/nimda/galeri_kegiatan/save', '2023-06-18 04:04:02', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(423, '1687079042', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-18 04:04:02', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(424, '1687079156', '::1', '/index.php/nimda/galeri_kegiatan/edit/1', '2023-06-18 04:05:56', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(425, '1687079179', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-18 04:06:19', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(426, '1687079184', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:06:24', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(427, '1687079606', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:13:26', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(428, '1687079619', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:13:39', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(429, '1687079626', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:13:46', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(430, '1687079628', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-18 04:13:48', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(431, '1687079631', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:13:51', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(432, '1687079668', '::1', '/index.php/nimda/galeri_kegiatan/addDetail/1', '2023-06-18 04:14:28', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(433, '1687079706', '::1', '/index.php/nimda/galeri_kegiatan/addDetail/1', '2023-06-18 04:15:06', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(434, '1687079898', '::1', '/index.php/nimda/galeri_kegiatan/addDetail/1', '2023-06-18 04:18:18', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(435, '1687079919', '::1', '/index.php/nimda/galeri_kegiatan/addDetail/1', '2023-06-18 04:18:39', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(436, '1687080044', '::1', '/index.php/nimda/galeri_kegiatan/addDetail/1', '2023-06-18 04:20:44', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(437, '1687080085', '::1', '/index.php/nimda/galeri_kegiatan/saveDetail/1', '2023-06-18 04:21:25', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(438, '1687080085', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:21:25', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(439, '1687080118', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-18 04:21:58', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(440, '1687080188', '::1', '/index.php/nimda/galeri_kegiatan/edit/1', '2023-06-18 04:23:08', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(441, '1687080368', '::1', '/index.php/nimda/galeri_kegiatan/edit/1', '2023-06-18 04:26:08', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(442, '1687080393', '::1', '/index.php/nimda/galeri_kegiatan/edit/1', '2023-06-18 04:26:33', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(443, '1687080546', '::1', '/index.php/nimda/galeri_kegiatan/edit/1', '2023-06-18 04:29:06', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(444, '1687080551', '::1', '/index.php/nimda/galeri_kegiatan/update/1', '2023-06-18 04:29:11', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(445, '1687080573', '::1', '/index.php/nimda/galeri_kegiatan/update/1', '2023-06-18 04:29:33', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(446, '1687080573', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-18 04:29:33', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(447, '1687080595', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:29:55', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(448, '1687080600', '::1', '/index.php/nimda/galeri_kegiatan/editDetail/1/1', '2023-06-18 04:30:00', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(449, '1687081002', '::1', '/index.php/nimda/galeri_kegiatan/editDetail/1/1', '2023-06-18 04:36:42', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(450, '1687081022', '::1', '/index.php/nimda/galeri_kegiatan/editDetail/1/1', '2023-06-18 04:37:02', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(451, '1687081034', '::1', '/index.php/nimda/galeri_kegiatan/editDetail/1/1', '2023-06-18 04:37:14', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(452, '1687081036', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:37:16', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(453, '1687081039', '::1', '/index.php/nimda/galeri_kegiatan/editDetail/1/1', '2023-06-18 04:37:19', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(454, '1687081074', '::1', '/index.php/nimda/galeri_kegiatan/editDetail/1/1', '2023-06-18 04:37:54', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(455, '1687081098', '::1', '/index.php/nimda/galeri_kegiatan/editDetail/1/1', '2023-06-18 04:38:18', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(456, '1687081099', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:38:19', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(457, '1687081105', '::1', '/index.php/nimda/galeri_kegiatan/editDetail/1/1', '2023-06-18 04:38:25', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(458, '1687081238', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:40:38', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(459, '1687081291', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:41:31', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(460, '1687081292', '::1', '/index.php/nimda/galeri_kegiatan/editDetail/1/1', '2023-06-18 04:41:32', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(461, '1687081315', '::1', '/index.php/nimda/galeri_kegiatan/updateDetail/1/1', '2023-06-18 04:41:55', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(462, '1687081315', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:41:55', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(463, '1687081385', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:43:05', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(464, '1687081388', '::1', '/index.php/nimda/galeri_kegiatan/deleteDetail/1/1', '2023-06-18 04:43:08', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(465, '1687081388', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:43:08', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(466, '1687081392', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-18 04:43:12', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(467, '1687081401', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:43:21', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(468, '1687081402', '::1', '/index.php/nimda/galeri_kegiatan/addDetail/1', '2023-06-18 04:43:22', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(469, '1687081418', '::1', '/index.php/nimda/galeri_kegiatan/saveDetail/1', '2023-06-18 04:43:38', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(470, '1687081418', '::1', '/index.php/nimda/galeri_kegiatan/detail/1', '2023-06-18 04:43:38', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(471, '1687081422', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-18 04:43:42', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(472, '1687081425', '::1', '/index.php/nimda/galeri_kegiatan/delete/1', '2023-06-18 04:43:45', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(473, '1687081425', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-18 04:43:45', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(474, '1687081436', '::1', '/index.php/nimda/galeri_kegiatan/add', '2023-06-18 04:43:56', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(475, '1687081448', '::1', '/index.php/nimda/galeri_kegiatan/save', '2023-06-18 04:44:08', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(476, '1687081448', '::1', '/index.php/nimda/galeri_kegiatan', '2023-06-18 04:44:08', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(477, '1687081451', '::1', '/index.php/nimda/galeri_kegiatan/detail/2', '2023-06-18 04:44:11', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(478, '1687081452', '::1', '/index.php/nimda/galeri_kegiatan/addDetail/2', '2023-06-18 04:44:12', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(479, '1687081466', '::1', '/index.php/nimda/galeri_kegiatan/saveDetail/2', '2023-06-18 04:44:26', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(480, '1687081466', '::1', '/index.php/nimda/galeri_kegiatan/detail/2', '2023-06-18 04:44:26', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(481, '1687083204', '::1', '/index.php/nimda/galeri_kegiatan/detail/2', '2023-06-18 05:13:24', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(482, '1687083221', '::1', '/index.php/nimda/galeri_kegiatan/detail/2', '2023-06-18 05:13:41', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(483, '1687083631', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:20:31', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(484, '1687083724', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:22:04', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(485, '1687083991', '::1', '/index.php/nimda/berita_foto/add', '2023-06-18 05:26:31', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(486, '1687084170', '::1', '/index.php/nimda/berita_foto/add', '2023-06-18 05:29:30', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(487, '1687084185', '::1', '/index.php/nimda/berita_foto/save', '2023-06-18 05:29:45', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(488, '1687084219', '::1', '/index.php/nimda/berita_foto/save', '2023-06-18 05:30:19', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(489, '1687084219', '::1', '/index.php/nimda/berita_foto/add', '2023-06-18 05:30:19', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(490, '1687084230', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:30:30', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(491, '1687084233', '::1', '/index.php/nimda/berita_foto/add', '2023-06-18 05:30:33', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(492, '1687084256', '::1', '/index.php/nimda/berita_foto/save', '2023-06-18 05:30:56', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(493, '1687084256', '::1', '/index.php/nimda/berita_foto/add', '2023-06-18 05:30:56', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(494, '1687084304', '::1', '/index.php/nimda/berita_foto/save', '2023-06-18 05:31:44', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(495, '1687084305', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:31:45', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(496, '1687084362', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:32:42', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(497, '1687084365', '::1', '/index.php/nimda/berita_foto/add', '2023-06-18 05:32:45', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(498, '1687084382', '::1', '/index.php/nimda/berita_foto/save', '2023-06-18 05:33:02', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(499, '1687084382', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:33:02', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(500, '1687084432', '::1', '/index.php/nimda/users', '2023-06-18 05:33:52', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(501, '1687084433', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:33:53', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(502, '1687084436', '::1', '/index.php/nimda/kontak', '2023-06-18 05:33:56', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(503, '1687084437', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:33:57', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(504, '1687084439', '::1', '/index.php/nimda/pengaturan', '2023-06-18 05:33:59', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(505, '1687084453', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:34:13', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(506, '1687084738', '::1', '/index.php/nimda/berita_foto/edit/2', '2023-06-18 05:38:58', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(507, '1687085019', '::1', '/index.php/nimda/berita_foto/edit/2', '2023-06-18 05:43:39', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(508, '1687085042', '::1', '/index.php/nimda/berita_foto/update/2', '2023-06-18 05:44:02', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(509, '1687085056', '::1', '/index.php/nimda/berita_foto/update/2', '2023-06-18 05:44:16', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(510, '1687085094', '::1', '/index.php/nimda/berita_foto/edit/2', '2023-06-18 05:44:54', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(511, '1687085094', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:44:54', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(512, '1687085097', '::1', '/index.php/nimda/berita_foto/add', '2023-06-18 05:44:57', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(513, '1687085111', '::1', '/index.php/nimda/berita_foto/save', '2023-06-18 05:45:11', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(514, '1687085111', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:45:11', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(515, '1687085113', '::1', '/index.php/nimda/berita_foto/edit/3', '2023-06-18 05:45:13', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(516, '1687085135', '::1', '/index.php/nimda/berita_foto/update/3', '2023-06-18 05:45:35', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(517, '1687085136', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:45:36', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(518, '1687085137', '::1', '/index.php/nimda/berita_foto/edit/3', '2023-06-18 05:45:37', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(519, '1687085142', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:45:42', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(520, '1687085145', '::1', '/index.php/nimda/berita_foto/add', '2023-06-18 05:45:45', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(521, '1687085160', '::1', '/index.php/nimda/berita_foto/save', '2023-06-18 05:46:00', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(522, '1687085160', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:46:00', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(523, '1687085178', '::1', '/index.php/nimda/berita_foto/delete/4', '2023-06-18 05:46:18', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(524, '1687085188', '::1', '/index.php/nimda/berita_foto/delete/4', '2023-06-18 05:46:28', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(525, '1687085188', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:46:28', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(526, '1687085191', '::1', '/index.php/nimda/berita_foto/edit/3', '2023-06-18 05:46:31', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(527, '1687085195', '::1', '/index.php/nimda/berita_foto', '2023-06-18 05:46:35', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(528, '1687089274', '::1', '/index.php/nimda/berita_foto', '2023-06-18 06:54:34', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(529, '1687089280', '::1', '/index.php/nimda/berita_foto/edit/3', '2023-06-18 06:54:40', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(530, '1687089284', '::1', '/index.php/nimda/berita_foto', '2023-06-18 06:54:44', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(531, '1687089724', '::1', '/index.php/nimda/video_kegiatan', '2023-06-18 07:02:04', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(532, '1687089731', '::1', '/index.php/nimda/video_kegiatan/add', '2023-06-18 07:02:11', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(533, '1687089882', '::1', '/index.php/nimda/video_kegiatan/add', '2023-06-18 07:04:42', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(534, '1687089947', '::1', '/index.php/nimda/video_kegiatan/add', '2023-06-18 07:05:47', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(535, '1687090181', '::1', '/index.php/nimda/video_kegiatan/add', '2023-06-18 07:09:41', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(536, '1687090272', '::1', '/index.php/nimda/video_kegiatan/save', '2023-06-18 07:11:12', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(537, '1687090273', '::1', '/index.php/nimda/video_kegiatan', '2023-06-18 07:11:13', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(538, '1687090276', '::1', '/index.php/nimda/video_kegiatan/edit/1', '2023-06-18 07:11:16', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(539, '1687090481', '::1', '/index.php/nimda/video_kegiatan/edit/1', '2023-06-18 07:14:41', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(540, '1687090604', '::1', '/index.php/nimda/video_kegiatan/edit/1', '2023-06-18 07:16:44', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(541, '1687090624', '::1', '/index.php/nimda/video_kegiatan/update/1', '2023-06-18 07:17:04', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(542, '1687090624', '::1', '/index.php/nimda/video_kegiatan', '2023-06-18 07:17:04', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(543, '1687090626', '::1', '/index.php/nimda/video_kegiatan/edit/1', '2023-06-18 07:17:06', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(544, '1687090630', '::1', '/index.php/nimda/video_kegiatan', '2023-06-18 07:17:10', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(545, '1687090649', '::1', '/index.php/nimda/video_kegiatan', '2023-06-18 07:17:29', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(546, '1687090651', '::1', '/index.php/nimda/video_kegiatan/delete/1', '2023-06-18 07:17:31', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(547, '1687090651', '::1', '/index.php/nimda/video_kegiatan', '2023-06-18 07:17:31', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(548, '1687090657', '::1', '/index.php/nimda/video_kegiatan/add', '2023-06-18 07:17:37', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(549, '1687090673', '::1', '/index.php/nimda/video_kegiatan/save', '2023-06-18 07:17:53', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(550, '1687090673', '::1', '/index.php/nimda/video_kegiatan', '2023-06-18 07:17:53', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(551, '1687092671', '::1', '/index.php/nimda/video_kegiatan', '2023-06-18 07:51:11', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(552, '1687092973', '::1', '/index.php/nimda/agenda', '2023-06-18 07:56:13', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(553, '1687093127', '::1', '/index.php/nimda/agenda', '2023-06-18 07:58:47', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(554, '1687093145', '::1', '/index.php/nimda/agenda/add', '2023-06-18 07:59:05', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(555, '1687093228', '::1', '/index.php/nimda/agenda/add', '2023-06-18 08:00:28', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(556, '1687093401', '::1', '/index.php/nimda/agenda/add', '2023-06-18 08:03:21', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(557, '1687093636', '::1', '/index.php/nimda/agenda/add', '2023-06-18 08:07:16', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(558, '1687094103', '::1', '/index.php/nimda/agenda/save', '2023-06-18 08:15:03', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(559, '1687094104', '::1', '/index.php/nimda/agenda', '2023-06-18 08:15:04', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(560, '1687094123', '::1', '/index.php/nimda/agenda/edit/1', '2023-06-18 08:15:23', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(561, '1687094376', '::1', '/index.php/nimda/agenda', '2023-06-18 08:19:36', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(562, '1687094379', '::1', '/index.php/nimda/agenda/add', '2023-06-18 08:19:39', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(563, '1687094489', '::1', '/index.php/nimda/agenda/add', '2023-06-18 08:21:29', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(564, '1687094495', '::1', '/index.php/nimda/agenda', '2023-06-18 08:21:35', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(565, '1687094542', '::1', '/index.php/nimda/agenda/edit/1', '2023-06-18 08:22:22', '2023-06-18 08:25:30', '2023-06-18 08:25:30'),
(566, '1687094701', '::1', '/index.php/nimda/agenda/edit/1', '2023-06-18 08:25:01', '2023-06-18 08:25:01', NULL),
(567, '1687094713', '::1', '/index.php/nimda/agenda/update/1', '2023-06-18 08:25:13', '2023-06-18 08:25:13', NULL),
(568, '1687094713', '::1', '/index.php/nimda/agenda', '2023-06-18 08:25:13', '2023-06-18 08:25:13', NULL),
(569, '1687094716', '::1', '/index.php/nimda/agenda/edit/1', '2023-06-18 08:25:16', '2023-06-18 08:25:16', NULL),
(570, '1687094719', '::1', '/index.php/nimda/agenda', '2023-06-18 08:25:19', '2023-06-18 08:25:19', NULL),
(571, '1687094729', '::1', '/index.php/nimda/agenda/delete/1', '2023-06-18 08:25:29', '2023-06-18 08:25:29', NULL),
(572, '1687094729', '::1', '/index.php/nimda/agenda', '2023-06-18 08:25:29', '2023-06-18 08:25:29', NULL);

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
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `download_detail`
--
ALTER TABLE `download_detail`
  MODIFY `download_detail_id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `penghargaan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pidato_detail`
--
ALTER TABLE `pidato_detail`
  MODIFY `pidato_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usersonline`
--
ALTER TABLE `usersonline`
  MODIFY `usersonline_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=573;

--
-- AUTO_INCREMENT for table `video_kegiatan`
--
ALTER TABLE `video_kegiatan`
  MODIFY `video_kegiatan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
