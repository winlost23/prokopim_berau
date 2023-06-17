-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2021 at 03:38 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bappeda_buteng`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `berita_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `berita_judul` varchar(225) NOT NULL,
  `berita_slug` varchar(225) NOT NULL,
  `berita_isi` text NOT NULL,
  `berita_gambar` varchar(225) NOT NULL,
  `berita_view` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`berita_id`, `users_id`, `kategori_id`, `berita_judul`, `berita_slug`, `berita_isi`, `berita_gambar`, `berita_view`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 3, 'Jurnalis di Buton Tengah yang Dituduh Cemarkan Nama Bupati Divonis 2 Tahun Penjara', 'jurnalis-di-buton-tengah-yang-dituduh-cemarkan-nama-bupati-divonis-2-tahun-penjara', '<p>Penulis Kontributor Baubau, Defriatno Neke | Editor Teuku Muhammad Valdy Arief BUTON, KOMPAS.com - Majelis Hakim Pengadilan Negeri Pasarwajo, Kabupaten Buton, Sulawesi Tenggara, menjatuhkan vonis dua tahun penjara kepada seorang jurnalis bernama Mohamad Sadli Saleh. Hakim menilai Mohamad Sadli Saleh terbukti bersalah karena menyebarkan informasi hingga menimbulkan kebencian di masyarakat. &ldquo;Menjatuhkan pidana kepada terdakwa (Mohamad Sadli Saleh) oleh karena itu dipenjara selama 2 tahun,&rdquo; kata Ketua Majelis Hakim, Subai, ketika membacakan putusan dalam sidang di Pengadilan Negeri Pasarwajo, Kamis (26/3/2020). Baca juga: Turki Tuntut 20 Warga Saudi Atas Pembunuhan Jurnalis Jamal Khashoggi Dalam sidang putusan tersebut, hakim juga menetapkan masa penahanan yang telah dijalani Mohamad Sadli Saleh dikurangkan dari pidana yang dijatuhkan kepadanya. Usai membacakan putusan, hakim mempersilakan Muhamad Sadli Saleh untuk mengajukan banding. Namun Mohamad Sadli Saleh menerima putusan hakim tersebut. Sebelumnya, Mohamad Sadli Saleh, seorang jurnalis yang juga pemimpin redaksi media lokal membuat tulisan mengkritik kebijakan Bupati Buton Tengah, Samahudin, dalam proyek pembangunan jalan simpang lima. Tulisan yang dibuatnya berjudul \"ABRACADABRA : SIMPANG LIMA LABUNGKARI DISULAP MENJADI SIMPANG EMPAT\". Baca juga: Dituduh Cemarkan Nama Bupati, Jurnalis di Buton Tengah Dituntut 3 Tahun Penjara Tulisan tersebut kemudian dilaporkan ke Polres Baubau oleh Bupati Buton Tengah, Samahudin, melalui Kepala Bagian Hukum Pemkab Buton Tengah, Akhmad Sabir, dan Kadis Kominfo Buton Tengah, La Ota. Setelah dua kali menjalani pemeriksaan, Sadli kemudian ditetapkan sebagai tersangka dengan berkas perkara Nomor : BP/94/XII/2019 Reskrim tertanggal 11 Desember 2019. Sadli kemudian dipanggil jaksa dan ditahan di Rutan Baubau selama 20 hari sejak 17 Desember sampai 5 Januari 2020. Kasus Sadli mulai disidangkan di Pengadilan Negeri Pasarwajo dan didakwa melanggar pasal 45 A ayat 2 Jo pasal 28 ayat 2, pasal 45 ayat 3 jo pasal 27 ayat 3 UU nomor 19 tahun 2016 tentang perubahan atas UU nomor 11 tahun 2008 tentang Informasi dan Transaksi Elektronik (ITE).</p>\r\n<p>Artikel ini telah tayang di Kompas.com dengan judul \"Jurnalis di Buton Tengah yang Dituduh Cemarkan Nama Bupati Divonis 2 Tahun Penjara\", Klik untuk baca: https://regional.kompas.com/read/2020/03/27/11364121/jurnalis-di-buton-tengah-yang-dituduh-cemarkan-nama-bupati-divonis-2-tahun.<br />Penulis : Kontributor Baubau, Defriatno Neke<br />Editor : Teuku Muhammad Valdy Arief</p>\r\n<p>Download aplikasi Kompas.com untuk akses berita lebih mudah dan cepat:<br />Android: https://bit.ly/3g85pkA<br />iOS: https://apple.co/3hXWJ0L</p>', '1611832661_b4a155ba93c6a59122d2.jpg', 1, '2021-01-28 05:12:01', '2021-01-28 05:17:41', NULL),
(2, 2, 3, 'Fakta Bentrok di Buton Tengah, 25 Rumah Dibakar. Polisi Periksa 4 Orang', 'fakta-bentrok-di-buton-tengah-25-rumah-dibakar-polisi-periksa-4-orang', '<p>KOMPAS.com - Rabu (27/11/2019) malam bentrokan terjadi antara pemuda Kelurahan Tolandona, Kecamatan Sangiawambulu dengan pemuda Desa Wadiabero Kecamatan Gu, Kabupaten Buton Tengah. Akibat kejadian tersebut, menyebabkan 1 pemuda tewas, dan 25 rumah dibakar warga. Kapolda Sulawesi Tenggara (Sultra) Brigjen Pol Merdisyam mengatakan, bentrokan tersebut berawal dari gesekan antarpemuda yang menyebabkan terjadi penikaman mengakibatkan satu korban luka dan satu korban tewas. Saat ini, sambungnya, pihaknya telah menangkap 4 orang yang diduga pelaku penikaman yang menyebabkan seorang warga, La Ode Muhamad Hidayat Hamzah (21), tewas. Saat ini situasi di Desa Wadiabero sudah sangat kondusif. Namun demikian, aparat kemanan dari TNI Polri masih melakukan penjagaan. Berikut ini fakta selengkapnya: 1. Kronologi kejadian Ilustrasi garis polisi. Lihat Foto Ilustrasi garis polisi.(THINKSTOCK) Merdisyam mengatakan, bentrokan tersebut berawal dari gesekan antarpemuda yang menyebabkan terjadi penikaman yang mengakibatkan satu korban luka dan satu korban tewas. Akibat penikaman tersebut, sambungnya, sekelompok pemuda dari kelompok korban penikaman bergerak menuju ke Desa Wadiaber dan melakukan pembakaran 25 unit rumah warga yang terbuat dari rumah panggung untuk mencari pelaku pembakaran. &ldquo;Tapi syukur alhamdulillah, kita dari unsur TNI dan Polri yang ada dan pemda, kita langsung melakukan konsolidasi dan kita kumpulkan semua permasalahan,&rdquo; ujarnya. &ldquo;Kami sampaikan secara hukum, melakukan penindakan terhadap pelaku-pelaku. Saat ini ada empat orang diamankan, satu diduga sebagai pelaku penikaman dan tiga sebagai saksi,&rdquo; sambungnya.<br /><br />Artikel ini telah tayang di <a href=\"https://www.kompas.com/\">Kompas.com</a> dengan judul \"Fakta Bentrok di Buton Tengah, 25 Rumah Dibakar hingga Polisi Periksa 4 Orang Diduga Pelaku Penikaman\", Klik untuk baca: <a href=\"https://regional.kompas.com/read/2019/11/29/17561421/fakta-bentrok-di-buton-tengah-25-rumah-dibakar-hingga-polisi-periksa-4-orang\">https://regional.kompas.com/read/2019/11/29/17561421/fakta-bentrok-di-buton-tengah-25-rumah-dibakar-hingga-polisi-periksa-4-orang</a>. <br /><br />Editor : Candra Setia Budi<br /><br />Download aplikasi <a href=\"https://www.kompas.com/\">Kompas.com</a> untuk akses berita lebih mudah dan cepat:<br />Android: <a href=\"https://bit.ly/3g85pkA\">https://bit.ly/3g85pkA</a><br />iOS: <a href=\"https://apple.co/3hXWJ0L\">https://apple.co/3hXWJ0L</a></p>', '1611832928_eb74d16fb58466bbe400.jpg', 1, '2021-01-28 05:20:22', '2021-01-28 05:26:20', NULL),
(3, 2, 3, '\"Saya dan Anak-anakku Hampir Terangkat oleh Angin\"', 'saya-dan-anak-anakku-hampir-terangkat-oleh-angin', '<p>Penulis Kontributor Baubau, Defriatno Neke | Editor Farid Assifa BUTON TENGAH, KOMPAS.com &ndash; Angin puting beliung melanda Kelurahan Watulea, Kecamatan Gu, Kabupaten Buton Tengah, Sulawesi Tenggara. Sebanyak 17 rumah warga dan satu masjid rusak akibat disapu angin berputar itu. &ldquo;Tadi angin masih pelan-pelan, karena mau hujan. Tiba-tiba angin sudah berputar. Saya dan anak-anakku hampir terangkat oleh angin, (untung) anakku dia berpegang pada tiang,&rdquo; kata seorang warga, Nining, kepada sejumlah media, Kamis (8/11/2018). Ia menambahkan, akibat puting beliung, tempat jualannya porak-poranda. Walaupun demikian, Nining bersyukur ia dan anaknya selamat dari terjangan puting beliung. Sementara itu, dari hasil identifikasi Badan Penanggulangan Bencana Daerah (BPBD) Kabupaten Buton Tengah, ada sekitar 17 rumah warga rusak. Baca juga: Hujan Angin di Surabaya, Seorang Ibu Tewas Tertimpa Reruntuhan Bangunan Angin puting beliung juga menyebabkan atap rumah masjid mengalami kerusakan dan sebagian pagar sekolah SMA Negeri 1 GU roboh. Kepala Bidang penanganan daeraurat BPBD buton tengah, Sahar Ibnu Isnaen, mengatakan, BPBD telah memetakan rumah warga yang mengalami kerusakan. &ldquo;Kami sudah melakukan pendataan, dan kita akan mencoba melakukan penanganan. Secara umum rata-rata mengalami kerusakan ringan saja, namun ada yang berat di Desa Walando dekat sini,&rdquo; ucap Sahar. Baca juga: Empat Rumah Rusak Diterjang Angin Kencang di Banyumas Bencana tersebut tidak menimbulkan korban jiwa.<br /><br />Artikel ini telah tayang di <a href=\"https://www.kompas.com/\">Kompas.com</a> dengan judul \"\"Saya dan Anak-anakku Hampir Terangkat oleh Angin\"\", Klik untuk baca: <a href=\"https://regional.kompas.com/read/2018/11/08/22360201/saya-dan-anak-anakku-hampir-terangkat-oleh-angin\">https://regional.kompas.com/read/2018/11/08/22360201/saya-dan-anak-anakku-hampir-terangkat-oleh-angin</a>. <br />Penulis : Kontributor Baubau, Defriatno Neke<br />Editor : Farid Assifa<br /><br />Download aplikasi <a href=\"https://www.kompas.com/\">Kompas.com</a> untuk akses berita lebih mudah dan cepat:<br />Android: <a href=\"https://bit.ly/3g85pkA\">https://bit.ly/3g85pkA</a><br />iOS: <a href=\"https://apple.co/3hXWJ0L\">https://apple.co/3hXWJ0L</a></p>', '1611833145_013a72f87e8f0455376c.jpg', 1, '2021-01-28 05:25:45', '2021-01-28 05:25:45', NULL),
(4, 2, 3, 'Kakek 80 Tahun Ini Memilih Tinggal di Gubuk Reyot Ketimbang Bersama Keluarganya', 'kakek-80-tahun-ini-memilih-tinggal-di-gubuk-reyot-ketimbang-bersama-keluarganya', '<p>Penulis Kontributor Baubau, Defriatno Neke | Editor Dony Aprian BUTON TENGAH, KOMPAS.com &ndash; La Songo, seorang kakek berumur 80 tahun hidup sebatang kara di sebuah gubuk kecil yang memprihatinkan di Desa Baruta, Kecamatan Sangia Wambulu, Kabupaten Buton Tengah, Sulawesi Tenggara. Meski mempunyai keluarga di desa, namun kakek ini lebih memilih tinggal seorang diri dalam gubuk reyot di sekitar pemakaman umum. &ldquo;Dia tidak punya anak dan istri, hidup sendiri sebatangkara. Keluarga mau tangggung, tapi dia tidak mau merepotkan orang lain sehingga memilih hidup sendiri,&rdquo; kata La Daeru, seorang sanak keluarga La Songo saat ditemui di rumahnya, Jumat (13/3/2020). Baca juga: Kakek Sebatang Kara, Jenazahnya Baru Diketahui 10 Hari Setelah Meninggal Luas gubuk La Songo yang berukuran sekitar 2x2 meter hanya terdapat panci dan tikar yang sudah rusak. Saat masih muda, La Songo, selalu berpindah tempat dan bekerja serabutan untuk membiayai hidupnya seorang diri. Ia pun juga tidak menikah hingga tua. Kini, La Songo hanya bisa berbaring seorang diri dalam gubuknya karena badannya sudah melemah karena sakit-sakitan. &ldquo;Sakitnya lumpuh dan sudah tidak bisa berjalan sudah empat tahunan. Makannya kadang diberikan juga dari warga di sini,&rdquo; ujar La Daeru. Baca juga: Kisah Pilu Kakek Pemulung, Tidur di Rumah yang Hampir Ambruk Dihantam Puting Beliung Kehidupan La Songo menjadi perhatian Komandan Kodim 1413 Buton, Letkol Inf Arif Kurniawan, yang langsung datang melihat keadaan La Songo di Desa Baruta. &ldquo;Beliau ini masih ada saudaranya, ada keponakannya, tapi beliau tidak mau diajak rumah keluarganya, sehingga tinggal sendiri,&rdquo; ucap Arif. Setelah melihat keadaannya, membuat Dandim 1413 Buton ini berencana akan membuatkan rumah yang layak buat La Songo. &ldquo;Kami sudah koordinasi dengan keluargnya, kita akan buatkan tempat yang dekat dengan saudaranya sehingga lebih mudah pengawasan karena saat ini sudah sakit-sakitan. Rencana esok sudah mulai dikerjakan,&rdquo; ungkapnya.<br /><br />Artikel ini telah tayang di <a href=\"https://www.kompas.com/\">Kompas.com</a> dengan judul \"Kakek 80 Tahun Ini Memilih Tinggal di Gubuk Reyot Ketimbang Bersama Keluarganya\", Klik untuk baca: <a href=\"https://regional.kompas.com/read/2020/03/13/20292631/kakek-80-tahun-ini-memilih-tinggal-di-gubuk-reyot-ketimbang-bersama\">https://regional.kompas.com/read/2020/03/13/20292631/kakek-80-tahun-ini-memilih-tinggal-di-gubuk-reyot-ketimbang-bersama</a>. <br />Penulis : Kontributor Baubau, Defriatno Neke<br />Editor : Dony Aprian<br /><br />Download aplikasi <a href=\"https://www.kompas.com/\">Kompas.com</a> untuk akses berita lebih mudah dan cepat:<br />Android: <a href=\"https://bit.ly/3g85pkA\">https://bit.ly/3g85pkA</a><br />iOS: <a href=\"https://apple.co/3hXWJ0L\">https://apple.co/3hXWJ0L</a></p>', '1611833303_6e8727c102f74a1ab5dd.jpg', 0, '2021-01-28 05:28:23', '2021-01-28 05:28:23', NULL),
(5, 2, 3, 'Ibu yang Tenggelamkan Bayinya di Bak Mandi Jalani Tes Kejiwaan', 'ibu-yang-tenggelamkan-bayinya-di-bak-mandi-jalani-tes-kejiwaan', '<p>Penulis Kontributor Baubau, Defriatno Neke | Editor Khairina BAUBAU, KOMPAS.com &ndash; Satuan Reskrim Polres Baubau, Sulawesi Tenggara, membawa MF (21), ibu yang membunuh bayinya di Kabupaten Buton Tengah, Sulawesi Tenggara, ke Rumah Sakit Jiwa di Kendari, Kamis (27/2/2020) siang. Polisi membawa pelaku untuk menjalani tes kejiwaan di psikiater di rumah sakit jiwa. &ldquo;Pada siang ini telah dilakukan pemeriksaan tahap awal, perlu dilakukan pemeriksaan tambahan yakni pemeriksaan medis jadi siang ini di bawa ke Kendari,&rdquo; kata Kapolsek Sangia Wambulu, Iptu Tri Nugroho, saat ditemui di depan Satreskrim Polres Baubau, Kamis (27/2/2020). Baca juga: Ibu Tenggelamkan Bayinya Usia 4 Bulan Memiliki Riwayat Baby Blues MF menuju ke rumah sakit jiwa Kendari ditemani dengan anggota keluarganya dan juga satuan petugas (Satgas) perlindungan perempuan dan anak (PPA) Kabupaten Buton Tengah. MF akan menjalani tes kejiwaan di rumah sakit jiwa selama satu minggu. Ia dibawa ke Kendari melalui perjalanan darat dengan memakan waktu sekitar 8 jam. Menurut Iptu Tri Nugroho, hasil dari tes kejiwaan tersebut dapat mempengaruhi proses hukum pelaku di polisi. &ldquo;Bisa mempengaruhi (hukum), apapun hasilnya (tes kejiwaan) bisa berpengaruh terhadap penyidikannya,&rdquo; ujarnya. Baca juga: Sindrome Baby Blues Diduga Penyebab Ibu Tenggelamkan Bayinya Berusia 4 Bulan hingga Tewas Sebelumnya diberitakan, diduga mengalami baby blues syndrome, seorang ibu rumah tangga di Kecamatan Sangia Wambulu, Kabupaten Buton Tengah, Sulawesi Tenggara, MF (21), tega membunuh anaknya yang masih berumur 4 bulan, Selasa (25/2/2020) sore. Selain membunuh anaknya yang masih bayi, MF juga melukai tengkuk anaknya pertamanya yang masih berusia 3 tahun. Anak keduanya telah dikuburkan di pemakaman umum desa pada Rabu (26/2/2020) siang. Sementara, anak pertamanya masih menjalani perawatan di RSUD Buton Tengah. <br /><br />Artikel ini telah tayang di <a href=\"https://www.kompas.com/\">Kompas.com</a> dengan judul \"Ibu yang Tenggelamkan Bayinya di Bak Mandi Jalani Tes Kejiwaan\", Klik untuk baca: <a href=\"https://regional.kompas.com/read/2020/02/27/14172191/ibu-yang-tenggelamkan-bayinya-di-bak-mandi-jalani-tes-kejiwaan\">https://regional.kompas.com/read/2020/02/27/14172191/ibu-yang-tenggelamkan-bayinya-di-bak-mandi-jalani-tes-kejiwaan</a>. <br />Penulis : Kontributor Baubau, Defriatno Neke<br />Editor : Khairina<br /><br />Download aplikasi <a href=\"https://www.kompas.com/\">Kompas.com</a> untuk akses berita lebih mudah dan cepat:<br />Android: <a href=\"https://bit.ly/3g85pkA\">https://bit.ly/3g85pkA</a><br />iOS: <a href=\"https://apple.co/3hXWJ0L\">https://apple.co/3hXWJ0L</a></p>', '1611833373_a0cbe956d5fbfd533968.jpg', 0, '2021-01-28 05:29:33', '2021-01-28 05:29:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `galeri_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `galeri_judul` varchar(225) NOT NULL,
  `galeri_gambar` varchar(225) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`galeri_id`, `users_id`, `kategori_id`, `galeri_judul`, `galeri_gambar`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 5, 'Siaga dan tanggap kebakaran', '1611838155_d2eca824855ca5fc6455.jpg', '2021-01-28 06:49:15', '2021-01-28 06:49:15', NULL),
(2, 2, 5, 'Siaga dan tanggap kebakaran', '1611838165_6d8b0af68c24a5026cea.jpg', '2021-01-28 06:49:25', '2021-01-28 06:49:25', NULL),
(3, 2, 5, 'Siaga dan tanggap kebakaran', '1611838191_f37ccab5dd05b8e4d1c8.jpg', '2021-01-28 06:49:51', '2021-01-28 06:49:51', NULL),
(4, 2, 6, 'Penghargaan Pelayanan Publik', '1611838367_36cfd7e3a38d1cb7cf8d.jpg', '2021-01-28 06:52:47', '2021-01-28 06:52:47', NULL),
(5, 2, 6, 'Penghargaan Pelayanan Publik', '1611838561_98405db5b004d7baccde.jpg', '2021-01-28 06:56:01', '2021-01-28 06:56:01', NULL),
(6, 2, 6, 'Penghargaan Pelayanan Publik', '1611838578_cd52f908405fc9c1530a.jpg', '2021-01-28 06:56:18', '2021-01-28 06:56:18', NULL),
(7, 2, 7, 'Penghargaan Inovasi Pelayanan', '1611838679_7c2ac3745bc0b2a77ef4.jpg', '2021-01-28 06:57:59', '2021-01-28 06:57:59', NULL),
(8, 2, 7, 'Penghargaan Inovasi Pelayanan', '1611838695_59a188e1ba769d788afb.jpg', '2021-01-28 06:58:15', '2021-01-28 06:58:15', NULL),
(9, 2, 7, 'Penghargaan Inovasi Pelayanan', '1611838707_ee311f7374cb46d5e239.jpg', '2021-01-28 06:58:27', '2021-01-28 06:58:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `info_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `info_judul` varchar(225) NOT NULL,
  `info_slug` varchar(225) NOT NULL,
  `info_isi` text NOT NULL,
  `info_gambar` varchar(225) NOT NULL,
  `info_file` varchar(225) NOT NULL,
  `info_download` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`info_id`, `users_id`, `kategori_id`, `info_judul`, `info_slug`, `info_isi`, `info_gambar`, `info_file`, `info_download`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 4, 'SIAP MENJADI LASKAR PERENCANA', 'siap-menjadi-laskar-perencana', '<p>Salam Perencanaan&hellip;&hellip;.</p>\r\n<p>Pelaksanaan Musyawarah Perencanaan Pembangunan di tingkat Kelurahan (Musrenbangkel) dan Kecamatan (Musrenbangcam) merupakan salah satu tahapan penyusunan dokumen perencanaan pembangunan Daerah dengan pendekatan partisipatif dan pendekatan <em>top down-bottom up</em>.</p>\r\n<p>Dalam rangka &nbsp;meningkatkan kualitas dan keselarasan hasil Musrenbang Kelurahan/Kecamatan dengan perencanaan dan kebijakan pembangunan daerah, &nbsp;Bappeda Kota Malang <strong>mengundang kembali</strong> Tenaga Pendamping/Laskar Perencana Tahun 2020 untuk bergabung menjadi Tenaga Pendamping/Laskar Perencana Musrenbang Tahun 2021</p>\r\n<p>form bisa di unduh pada link dibawah ini;</p>', '1611834082_454ec18630e1936a132e.png', '238-pengumuman-laskar-perencana.pdf', 0, '2021-01-28 05:41:22', '2021-01-28 05:41:22', NULL),
(2, 2, 4, 'INFO TERBARU LASKAR PERENCANA', 'info-terbaru-laskar-perencana', '<div class=\"post-image\"><a href=\"http://bappeda.malangkota.go.id/web/wp-content/uploads/2020/10/page-1-scaled.jpg\" data-rel=\"penci-gallery-image-content\"> <img class=\"attachment-penci-full-thumb size-penci-full-thumb penci-lazy wp-post-image\" style=\"display: inline;\" title=\"page 1\" src=\"http://bappeda.malangkota.go.id/web/wp-content/uploads/2020/10/page-1-1170x1170.jpg\" alt=\"\" width=\"627\" height=\"627\" /> </a></div>\r\n<div class=\"post-entry blockquote-style-2\">\r\n<div id=\"penci-post-entry-inner\" class=\"inner-post-entry entry-content\">\r\n<p>Salam Perencanaan&hellip;&hellip;.</p>\r\n<p>Daftar ulang khusus Laskar perencana tahun 2019-2020 untuk menjadi Laskar Perencana tahun 2020-2021 sudah selesai dilakukan, tetapi masih ada kekosongan di sebagian kelurahan dan kecamatan. Dengan demikian Bappeda Kota Malang membuka peluang bagi masyarakat umum berpartisipasi dan ikut serja menjadi Laskar Perencana 2020-2021.</p>\r\n<p>&nbsp;</p>\r\n<p>form bisa di unduh pada link dibawah ini;</p>\r\n</div>\r\n</div>', '1611834257_4ac0b0ca18e7ab0e95a6.jpg', '617-Pengumuman-Tentang-Penerimaan-Tenaga-Fasilitatorfix.pdf', 1, '2021-01-28 05:44:17', '2021-01-28 05:45:47', NULL),
(3, 2, 4, 'Daftar Peserta Lolos Administrasi Laskar Perencana Tahun 2020-2021', 'daftar-peserta-lolos-administrasi-laskar-perencana-tahun-2020-2021', '<p>Informasi penting daftar peserta lolos administrasi Laskar Perencana ?<br />dan berhak mengikuti tahap wawancara.</p>\r\n<p>*Catat jadwal wawancara tanggal dan jam ?<br />Jangan lupa catat Nomor Register juga ia&hellip;. ?</p>\r\n<p>Bisa juga download link dibawah ini&hellip;?</p>', '1611837727_9aa14e86c36275264d95.png', '477-DAFTAR PESERTA WAWANCARA LASKAR PERENCANA TAHUN 2020-2021.pdf', 0, '2021-01-28 06:42:07', '2021-01-28 06:42:07', NULL),
(4, 2, 4, 'PENGUMUMAN HASIL WAWANCARA LASKAR PERENCANA TAHUN 2021', 'pengumuman-hasil-wawancara-laskar-perencana-tahun-2021', '<h2>KECAMATAN BLIMBING</h2>\r\n<h2>KECAMATAN KLOJEN</h2>\r\n<h2>KECAMATAN LOWOKWARU</h2>\r\n<h2>KECAMATAN KEDUNGKANDANG</h2>\r\n<h2>KECAMATAN SUKUN</h2>', '1611837911_32b3499b5c0df91bada0.png', '626-DAFTAR PESERTA WAWANCARA LASKAR PERENCANA TAHUN 2020-2021.pdf', 0, '2021-01-28 06:45:11', '2021-01-28 06:45:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `kategori_judul` varchar(225) NOT NULL,
  `kategori_slug` varchar(225) NOT NULL,
  `kategori_gambar` varchar(225) DEFAULT NULL,
  `kategori_jenis` enum('galeri','profil','info','berita') NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `users_id`, `kategori_judul`, `kategori_slug`, `kategori_gambar`, `kategori_jenis`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'Visi dan Misi', 'visi-dan-misi', NULL, 'profil', '2021-01-28 05:00:02', '2021-01-28 05:00:02', NULL),
(2, 0, 'Tugas Pokok dan Fungsi', 'tugas-pokok-dan-fungsi', NULL, 'profil', '2021-01-28 05:00:25', '2021-01-28 05:00:25', NULL),
(3, 0, 'Artikel', 'artikel', NULL, 'berita', '2021-01-28 05:07:54', '2021-01-28 05:07:54', NULL),
(4, 0, 'Pengumuman', 'pengumuman', NULL, 'info', '2021-01-28 05:36:50', '2021-01-28 05:36:50', NULL),
(5, 2, 'Siaga dan tanggap kebakaran', 'siaga-dan-tanggap-kebakaran', '1611838073_d3507ea44f6a6875399a.jpg', 'galeri', '2021-01-28 06:47:53', '2021-01-28 06:47:53', NULL),
(6, 2, 'Penghargaan Pelayanan Publik', 'penghargaan-pelayanan-publik', '1611838315_0b083ec48c5dce159e1f.jpg', 'galeri', '2021-01-28 06:51:55', '2021-01-28 06:51:55', NULL),
(7, 2, 'Penghargaan Inovasi Pelayanan', 'penghargaan-inovasi-pelayanan', '1611838662_2c43b6a513ce5cf51b85.jpg', 'galeri', '2021-01-28 06:57:42', '2021-01-28 06:57:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kontak_kami`
--

CREATE TABLE `kontak_kami` (
  `kontak_kami_id` int(11) NOT NULL,
  `kontak_kami_nama` varchar(225) NOT NULL,
  `kontak_kami_email` varchar(225) NOT NULL,
  `kontak_kami_judul` varchar(225) NOT NULL,
  `kontak_kami_pesan` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kontak_kami`
--

INSERT INTO `kontak_kami` (`kontak_kami_id`, `kontak_kami_nama`, `kontak_kami_email`, `kontak_kami_judul`, `kontak_kami_pesan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Coba1', 'coba@coba.com', 'Coba 1', '<p>Coba 1</p>', NULL, '2021-01-17 10:15:07', '2021-01-17 10:15:07'),
(2, 'Unggul', 'unggul@ggg.ggg', 'asdsad', 'asdsadsad', '2021-01-17 10:09:29', '2021-01-17 10:15:12', '2021-01-17 10:15:12'),
(3, 'asfdsf', 'coba@coba.com', 'sdfdsf', 'sdfdsf', '2021-01-17 10:11:05', '2021-01-17 10:11:05', NULL),
(4, 'asfdsf', 'coba@coba.com', 'sdfdsf', 'sdfdsf', '2021-01-17 10:11:10', '2021-01-17 10:11:10', NULL),
(5, 'xcvc', 'coba@coba.com', 'cvxcv', 'vbvcbcvb', '2021-01-17 10:12:31', '2021-01-17 10:12:31', NULL),
(6, 'bvbnbvn', 'coba@coba.com', 'fgjhjkhjk', 'khjkjhk', '2021-01-17 10:13:58', '2021-01-17 10:13:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `pengaturan_id` int(11) NOT NULL,
  `pengaturan_logo_header` varchar(225) NOT NULL,
  `pengaturan_logo_footer` varchar(225) NOT NULL,
  `pengaturan_favicon` varchar(225) NOT NULL,
  `pengaturan_alamat` varchar(225) NOT NULL,
  `pengaturan_telp` varchar(30) NOT NULL,
  `pengaturan_fax` varchar(30) NOT NULL,
  `pengaturan_email` varchar(225) NOT NULL,
  `pengaturan_facebook` varchar(225) NOT NULL,
  `pengaturan_twitter` varchar(225) NOT NULL,
  `pengaturan_instagram` varchar(225) NOT NULL,
  `pengaturan_youtube` varchar(225) NOT NULL,
  `pengaturan_footer` varchar(225) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`pengaturan_id`, `pengaturan_logo_header`, `pengaturan_logo_footer`, `pengaturan_favicon`, `pengaturan_alamat`, `pengaturan_telp`, `pengaturan_fax`, `pengaturan_email`, `pengaturan_facebook`, `pengaturan_twitter`, `pengaturan_instagram`, `pengaturan_youtube`, `pengaturan_footer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1611073258_6ededd5678929a6e1f95.png', '1611166167_f2096181e3a3ee39e1b0.png', '1611165925_75b0bb0dd2750d276255.png', 'Jl. in aja dulu ya kapan kapan', '08413123', '02161', 'coba@coab.go', 'fasce', 'twitt', 'insta', 'younet', 'bappeda', NULL, '2021-01-24 07:09:26', NULL);

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
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengunjung`
--

INSERT INTO `pengunjung` (`pengunjung_id`, `pengunjung_ip`, `pengunjung_browser`, `pengunjung_os`, `pengunjung_sistem_operasi`, `pengunjung_tgl`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '::1', 'Firefox', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', '2021-01-25', '2021-01-25 10:54:36', '2021-01-25 10:54:36', NULL),
(2, '::1', 'Netscape', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', '2021-01-26', '2021-01-26 10:11:20', '2021-01-26 10:11:20', NULL),
(3, '::1', 'Opera', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', '2021-01-24', '2021-01-24 00:00:00', '2021-01-24 00:00:00', NULL),
(4, '::1', 'Internet Explorer', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', '2021-01-23', '2021-01-23 00:00:00', '2021-01-23 00:00:00', NULL),
(5, '::1', 'Safari', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', '2021-01-22', '2021-01-22 00:00:00', '2021-01-22 00:00:00', NULL),
(6, '::1', 'Other', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', '2021-01-21', '2021-01-21 00:00:00', '2021-01-21 00:00:00', NULL),
(7, '::1', 'Firefox', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', '2021-02-24', '2021-02-24 00:00:00', '2021-02-24 00:00:00', NULL),
(8, '::1', 'Firefox', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', '2021-02-23', '2021-02-23 00:00:00', '2021-02-23 00:00:00', NULL),
(9, '::1', 'Chrome', 'Windows 8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', '2021-03-24', '2021-03-24 00:00:00', '2021-03-24 00:00:00', NULL),
(10, '::1', 'Chrome', 'Windows 8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', '2021-03-23', '2021-03-23 00:00:00', '2021-03-23 00:00:00', NULL),
(12, '::1', 'Firefox', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', '2021-01-27', '2021-01-27 00:31:00', '2021-01-27 00:31:00', NULL),
(13, '::1', 'Firefox', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0', '2021-01-28', '2021-01-28 04:51:19', '2021-01-28 04:51:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `profil_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `profil_judul` varchar(225) NOT NULL,
  `profil_slug` varchar(225) NOT NULL,
  `profil_isi` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`profil_id`, `users_id`, `kategori_id`, `profil_judul`, `profil_slug`, `profil_isi`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 'Visi dan Misi', 'visi-dan-misi', '<div>\r\n<p><strong>VISI</strong></p>\r\n<div><strong>&ldquo;Menjadi&nbsp; Lembaga Perencanaan yang Memiliki Integritas dan Profesionalisme Untuk&nbsp; Mewujudkan Sinergitas Perencanaan Pembangunan Jakarta Baru&rdquo;</strong></div>\r\n<div>\r\n<ol>\r\n<li><strong>Integritas&nbsp;</strong>menunjukkan sebuah sikap yang berpegang teguh pada nilai-nilai yang benar dan teguh sikap yang bertanggung jawab dalam melaksanakan tugas pelayanan publik</li>\r\n<li><strong>Profesional&nbsp;</strong>menggambarkan sebuah kinerja yang berorientasi pada hasil dan dengan menjaga kaidah-kaidah proses dalam sebuah kerangka organisasi perencanaan yang modern.</li>\r\n<li><strong>Sinergis</strong><strong>&nbsp;</strong>merupakan suatu proses pembangunan yang saling mendukung dan saling bahu membahu satu sama lain untuk mewujudkan tujuan organisasi.</li>\r\n</ol>\r\n</div>\r\n<p><strong>MISI</strong></p>\r\n<ol>\r\n<li>Mengembangkan Sumber Daya Manusia Perencana yang handal dan berwawasan global;</li>\r\n<li>Menyusun rencana pembangunan daerah yang berkualitas;</li>\r\n<li>Memantapkan fungsi koordinasi, pemantauan, pengendalian serta evaluasi kinerja dalam perencanaan dan pelaksanaan pembangunan daerah;</li>\r\n<li>Mengembangkan fungsi statistik dan penelitian daerah.</li>\r\n</ol>\r\n<p><strong>TUJUAN</strong></p>\r\n<div>\r\n<ol>\r\n<li>Terwujudnya sumber daya manusia yang cukup, berkualitas dan berkinerja optimal.</li>\r\n<li>Terwujudnya rencana pembangunan yang tepat sasaran dan responsif.</li>\r\n<li>Terwujudnya program dan kegiatan pembangunan yang tepat sasaran dan melibatkan seluruh pemangku kepentingan berbasis Teknologi&nbsp; Informasi.</li>\r\n<li>Terlaksananya pengembangan dan fasilitasi statistik daerah serta penelitian yang implementatif dan inovatif.</li>\r\n</ol>\r\n</div>\r\n<p><strong>SASARAN</strong></p>\r\n<div>\r\n<ol>\r\n<li>Sasaran dari tujuan pertama: &ldquo;Terwujudnya sumber daya manusia yang cukup, berkualitas dan berkinerja optimal&rdquo; adalah:\r\n<ul>\r\n<li>Tercukupinya jumlah dan sebaran SDM sesuai dengan analisis jabatan dan analisis beban kerja, yang baik dapat diukur melalui:\r\n<ol>\r\n<li>Kecukupan kebutuhan jumlah SDM berdasarkan analisis beban kerja.</li>\r\n<li>Persentase pemerataan sebaran SDM berdasarkan analisis beban kerja.</li>\r\n<li>Persentase kesesuaian penempatan SDM berdasarkan analisis jabatan.</li>\r\n</ol>\r\n</li>\r\n<li>Meningkatnya kualitas aparatur yang berwawasan global yang handal, yang dapat diukur:\r\n<ol>\r\n<li>Persentase SDM yang memiliki sertifikat perencana.</li>\r\n<li>Peningkatan jumlah SDM dengan tingkat pendidikan S2 dan S3 di dalam dan luar negeri.</li>\r\n<li>Jumlah SDM yang mengikuti pelatihan di luar negeri setiap tahun.</li>\r\n</ol>\r\n</li>\r\n<li>Meningkatnya kinerja Bappeda, yang dapat diukur dari:\r\n<ol>\r\n<li>Tingkat pencapaian kinerja kegiatan tahunan.</li>\r\n<li>Prosentase rata-rata tingkat kehadiran SDM Bappeda</li>\r\n</ol>\r\n</li>\r\n</ul>\r\n</li>\r\n<li>Sasaran dari tujuan kedua: &ldquo;Terwujudnya rencana pembangunan yang tepat sasaran dan responsif&rdquo; adalah:\r\n<ul>\r\n<li>Meningkatnya kualitas dokumen perencanaan, yang dapat diukur dari:\r\n<ol>\r\n<li>Peningkatan prosentase usulan masyarakat yang berkualtas untuk diakomodasi di dalam APBD.</li>\r\n<li>Tingkat kesesuaian antara indikator RPJPD, RPJMD, RKPD dan APBD.</li>\r\n</ol>\r\n</li>\r\n</ul>\r\n</li>\r\n<li>Sasaran dari tujuan ketiga: &ldquo;Terwujudnya program dan kegiatan pembangunan yang tepat sasaran dan melibatkan seluruh pemangku kepentingan berbasis Teknologi&nbsp; Informasi&rdquo; adalah:\r\n<ul>\r\n<li>Meningkatnya kesesuaian program dan kegiatan pembangunan daerah, yang dapat diukur dari:\r\n<ol>\r\n<li>Kesesuaian antara program dan kegiatan pembangunan.</li>\r\n<li>Kesesuaian target indikator kinerja antara RPJMD dengan RKPD dan APBD.</li>\r\n</ol>\r\n</li>\r\n<li>Meningkatnya kualitas pelaporan pelaksanaan pembangunan tahunan daerah, yang dapat diukur dari:\r\n<ol>\r\n<li>Kesesuaian hasil evaluasi yang digunakan dalam perencanaan pembangunan.</li>\r\n</ol>\r\n</li>\r\n</ul>\r\n</li>\r\n<li>Sasaran dari tujuan keempat: &nbsp;&ldquo;Terlaksananya pengembangan dan fasilitasi statistik daerah serta penelitian yang implementatif dan inovatif&rdquo; adalah:\r\n<ul>\r\n<li>Meningkatnya kualitas pengelolaan data statistik sesuai dengan kebutuhan daerah, yang dapat diukur dari:\r\n<ol>\r\n<li>Persentase ketersediaan data statistik daerah sesuai kebutuhan.</li>\r\n</ol>\r\n</li>\r\n<li>Terbangunnya jejaring kerjasama pelaku inovasi daerah, yang dapat diukur dari:\r\n<ol>\r\n<li>Ketersediaan basis data pelaku inovasi daerah.</li>\r\n</ol>\r\n</li>\r\n</ul>\r\n</li>\r\n</ol>\r\n</div>\r\n</div>', '2021-01-28 05:01:04', '2021-01-28 05:01:04', NULL),
(2, 2, 2, 'Tugas Pokok dan Fungsi', 'tugas-pokok-dan-fungsi', '<div>\r\n<p><strong>KEDUDUKAN</strong></p>\r\n<ol>\r\n<li>Bappeda merupakan unsur perencanaan pembangunan pemerintahan daerah;</li>\r\n<li>Bappeda dipimpin oleh seorang Kepala Badan yang berkedudukan di bawah dan bertanggung jawab kepada Gubernur melalui Sekretaris Daerah;</li>\r\n<li>Dalam melaksanakan tugasnya Kepala Badan dibantu oleh seorang Wakil Kepala Badan.</li>\r\n</ol>\r\n<p><strong>TUGAS POKOK</strong></p>\r\n<p>Bappeda mempunyai tugas menyusun, mengendalikan dan mengevaluasi pelaksanaan rencana pembangunan daerah, penyelenggaraan penelitian dan pengembangan, dan pengelolaan statistik daerah.</p>\r\n<p><strong>FUNGSI</strong></p>\r\n<ol>\r\n<li>Penyusunan dan pelaksanaan Rencana Kerja dan Anggaran Badan Perencanaan Pembangunan Daerah</li>\r\n<li>Perumusan kebijakan perencanaan pembangunan, penelitian dan pengembangan serta statistik daerah;</li>\r\n<li>Pengoordinasian penyusunan Rencana Tata Ruang Wilayah (RTRW), Rencana Pembangunan Jangka Panjang Daerah (RPJPD), Rencana Pembangunan Jangka Menengah Daerah (RPJMD), dan Rencana Kerja Pemerintah Daerah (RKPD);</li>\r\n<li>Penyusunan Kebijakan Umum Anggaran (KUA) berkoordinasi dengan Badan Pengelola Keuangan Daerah (BPKD);</li>\r\n<li>Penyusunan Prioritas dan Plafon Anggaran (PPA) berkoordinasi dengan Badan Pengelola Keuangan Daerah (BPKD);</li>\r\n<li>Pengendalian kesesuaian antaran indikator, kinerja RKPD dengan Kebijakan Umum Anggaran (KUA) dan Prioritas dan Plafon Anggaran (PPA), output/hasil kegiiatan di Rencana Kerja Satuan Kerja Perangkat Daerah (Renja SKPD) dan Rencana Kerja dan Anggaran Satuan Kerja Perangkat Daerah (RKA SKPD);</li>\r\n<li>Pengoordinasian kebijakan perencanaan di bidang pembangunan perekonomian, pembangunan prasarana dan sarana, pembangunan kesejahteraan masyarakat, pembangunan tata praja, pembangunan aparatur dan keuangan;</li>\r\n<li>Pengoordinasian perencanaan pembangunan secara terpadu lintas negara, lintas daerah, lintas urusan pemerintah, antar pemerintah daerah dengan pusat dan antar lintas pelaku lainnya;</li>\r\n<li>Evaluasi pelaksanaan rencana pembangunan;</li>\r\n<li>Penyelenggaraan pengoordinasian penelitian dan pengembangan daerah;</li>\r\n<li>Penyelenggaraan pengoordinasian statistik daerah;</li>\r\n<li>Penyediaan, penatausahaan, penggunaan, pemeliharaan, dan perawatan prasarana dan sarana kerja Bappeda;</li>\r\n<li>Pemberian dukungan teknis perencanaan pembangunan kepada perangkat daerah;</li>\r\n<li>Pengoordinasian penyusunan laporan kinerja pemerintah daerah;</li>\r\n<li>Pengelolaan kepegawaian, keuangan, barang dan ketatausahaan Bappeda; dan</li>\r\n<li>Pelaporan, dan pertanggungjawaban pelaksanaan tugas dan fungsi.</li>\r\n</ol>\r\n</div>', '2021-01-28 05:06:35', '2021-01-28 05:06:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `session_viewer`
--

CREATE TABLE `session_viewer` (
  `session_viewer_id` int(11) NOT NULL,
  `berita_id` int(11) NOT NULL,
  `session_viewer_ip` varchar(100) NOT NULL,
  `session_viewer_tgl` date NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session_viewer`
--

INSERT INTO `session_viewer` (`session_viewer_id`, `berita_id`, `session_viewer_ip`, `session_viewer_tgl`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, '::1', '2021-01-25', '2021-01-25 12:56:30', '2021-01-25 12:56:30', NULL),
(2, 3, '::1', '2021-01-25', '2021-01-25 13:16:59', '2021-01-25 13:16:59', NULL),
(3, 7, '::1', '2021-01-25', '2021-01-25 13:21:34', '2021-01-25 13:21:34', NULL),
(4, 1, '::1', '2021-01-28', '2021-01-28 05:17:53', '2021-01-28 05:17:53', NULL),
(5, 2, '::1', '2021-01-28', '2021-01-28 05:20:34', '2021-01-28 05:20:34', NULL),
(6, 3, '::1', '2021-01-28', '2021-01-28 05:26:39', '2021-01-28 05:26:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `slider_judul_1` varchar(225) NOT NULL,
  `slider_judul_2` varchar(225) NOT NULL,
  `slider_gambar` varchar(225) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `users_id`, `slider_judul_1`, `slider_judul_2`, `slider_gambar`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'Peta', 'Bandung', '1611843499_20824f37187880e48903.jpg', '2021-01-28 08:18:19', '2021-01-28 08:18:19', NULL),
(2, 2, 'Menerima', 'Penghargaan', '1611843485_ff5cb476790debf0d6b9.jpg', '2021-01-28 08:18:05', '2021-01-28 08:18:05', NULL),
(3, 2, 'Penhargaan', 'dari', '1611843119_4e8b4e9869ebfac4884b.jpg', '2021-01-28 07:04:58', '2021-01-28 08:11:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `users_name` varchar(50) NOT NULL,
  `users_password` varchar(100) NOT NULL,
  `users_salt` varchar(50) NOT NULL,
  `users_email` varchar(50) NOT NULL,
  `users_level` tinyint(4) NOT NULL,
  `users_nohp` varchar(20) NOT NULL,
  `users_nama` varchar(100) NOT NULL,
  `users_foto` varchar(100) NOT NULL,
  `users_lastlogin` timestamp NULL DEFAULT NULL,
  `users_lastip` varchar(15) DEFAULT NULL,
  `users_created` timestamp NULL DEFAULT NULL,
  `users_updated` timestamp NULL DEFAULT NULL,
  `users_deleted` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `users_name`, `users_password`, `users_salt`, `users_email`, `users_level`, `users_nohp`, `users_nama`, `users_foto`, `users_lastlogin`, `users_lastip`, `users_created`, `users_updated`, `users_deleted`) VALUES
(1, 'wiedhodho', '$2y$10$nGQbLFXGaGwZZx0.9z.hxuLV5nTSXNL1.q.dQ0rffpC.H8ZhWH7si', 'OEu5~1&M+cbNG$)LRm3Ql@nFV', 'wiedhodho@gmail.com', 0, '085', 'Edi Wahyu Widodo', 'default.png', '2021-01-04 12:26:14', '192.168.7.29', NULL, '2021-01-06 23:53:49', NULL),
(2, 'admin', '$2y$10$lTDAkGROmqfxcOPH2Bstu.EytCm3ivFdjQW76zS1UwxXcue/ZVSBG', '#CFie5X_JIYcu^&mM9f+k$tlv', 'wiedhodho@gmail.com', 3, '085654012666', 'Administrator131', 'hacker.png', '2021-01-27 21:58:13', '::1', '2021-01-07 00:14:56', '2021-01-27 21:58:13', NULL),
(3, 'kominfo', '$2y$10$FjpsD/Dfacf0hwyJ6JDPQuN.w3lbYN8N5g2Gty23qq0TjqOpPVzSK', '9&v*_JQYnhALBsjMa6o1UDCbT', 'wiedhodho@gmail.com', 3, '55453512', 'Edi Wahyu Widodo', 'hacker_1.png', NULL, NULL, '2021-01-07 05:31:58', '2021-01-07 05:37:12', NULL);

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
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usersonline`
--

INSERT INTO `usersonline` (`usersonline_id`, `usersonline_timestamp`, `usersonline_ip`, `usersonline_file`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1611674751', '::1', '/index.php/nimda/home', '2021-01-26 09:25:51', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(2, '1611675482', '::1', '/index.php/nimda/home', '2021-01-26 09:38:02', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(3, '1611675539', '::1', '/index.php/nimda/home', '2021-01-26 09:38:59', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(4, '1611675543', '::1', '/index.php/nimda/home', '2021-01-26 09:39:03', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(5, '1611675667', '::1', '/index.php/nimda/home', '2021-01-26 09:41:07', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(6, '1611675980', '::1', '/index.php/nimda/home', '2021-01-26 09:46:20', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(7, '1611676000', '::1', '/index.php/nimda/home', '2021-01-26 09:46:40', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(8, '1611676004', '::1', '/index.php/nimda/home', '2021-01-26 09:46:44', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(9, '1611676217', '::1', '/index.php/nimda/home', '2021-01-26 09:50:17', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(10, '1611677480', '::1', '/index.php/nimda/home', '2021-01-26 10:11:20', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(11, '1611677510', '::1', '/index.php/home/unauthorized', '2021-01-26 10:11:50', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(12, '1611677512', '::1', '/index.php', '2021-01-26 10:11:52', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(13, '1611677520', '::1', '/index.php/auth', '2021-01-26 10:12:00', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(14, '1611677522', '::1', '/index.php/auth/check_login', '2021-01-26 10:12:02', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(15, '1611677523', '::1', '/index.php/nimda/home', '2021-01-26 10:12:03', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(16, '1611678491', '::1', '/index.php/nimda/home', '2021-01-26 10:28:11', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(17, '1611679350', '::1', '/index.php/nimda/home', '2021-01-26 10:42:30', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(18, '1611679406', '::1', '/index.php/nimda/home', '2021-01-26 10:43:26', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(19, '1611679434', '::1', '/index.php/nimda/home', '2021-01-26 10:43:54', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(20, '1611679575', '::1', '/index.php/nimda/home', '2021-01-26 10:46:15', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(21, '1611679578', '::1', '/index.php/nimda/home', '2021-01-26 10:46:18', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(22, '1611679580', '::1', '/index.php/nimda/home', '2021-01-26 10:46:20', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(23, '1611679584', '::1', '/index.php/nimda/home', '2021-01-26 10:46:24', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(24, '1611679748', '::1', '/index.php/nimda/home', '2021-01-26 10:49:08', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(25, '1611679892', '::1', '/index.php/nimda/home', '2021-01-26 10:51:32', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(26, '1611679918', '::1', '/index.php/nimda/home', '2021-01-26 10:51:58', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(27, '1611680249', '::1', '/index.php', '2021-01-26 10:57:29', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(28, '1611680288', '::1', '/index.php', '2021-01-26 10:58:08', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(29, '1611680288', '::1', '/index.php', '2021-01-26 10:58:08', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(30, '1611680367', '::1', '/index.php', '2021-01-26 10:59:27', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(31, '1611680446', '::1', '/index.php', '2021-01-26 11:00:46', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(32, '1611680629', '::1', '/index.php', '2021-01-26 11:03:49', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(33, '1611680673', '::1', '/index.php/nimda/home', '2021-01-26 11:04:33', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(34, '1611680809', '::1', '/index.php', '2021-01-26 11:06:49', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(35, '1611681010', '::1', '/index.php', '2021-01-26 11:10:10', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(36, '1611681706', '::1', '/index.php/profil/sekilas-bappeko', '2021-01-26 11:21:46', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(37, '1611681718', '::1', '/index.php/profil/sekilas-bappeko', '2021-01-26 11:21:58', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(38, '1611681723', '::1', '/index.php/info/ini-info', '2021-01-26 11:22:03', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(39, '1611681732', '::1', '/index.php/info/info-lama', '2021-01-26 11:22:12', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(40, '1611681742', '::1', '/index.php/info/info-lama/xpander-black-edition-cara-mitsubishi-gairahkan-pasar', '2021-01-26 11:22:22', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(41, '1611681754', '::1', '/index.php/home', '2021-01-26 11:22:34', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(42, '1611681759', '::1', '/index.php/galeri', '2021-01-26 11:22:39', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(43, '1611681764', '::1', '/index.php/galeri/album-2', '2021-01-26 11:22:44', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(44, '1611681769', '::1', '/index.php/home', '2021-01-26 11:22:49', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(45, '1611681774', '::1', '/index.php/kontak', '2021-01-26 11:22:54', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(46, '1611682482', '::1', '/index.php/nimda/home', '2021-01-26 11:34:42', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(47, '1611711513', '::1', '/index.php/home/unauthorized', '2021-01-26 19:38:33', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(48, '1611711518', '::1', '/index.php', '2021-01-26 19:38:38', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(49, '1611711526', '::1', '/index.php/auth', '2021-01-26 19:38:46', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(50, '1611711528', '::1', '/index.php/auth/check_login', '2021-01-26 19:38:48', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(51, '1611711529', '::1', '/index.php/nimda/home', '2021-01-26 19:38:49', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(52, '1611711558', '::1', '/index.php/nimda/home', '2021-01-26 19:39:18', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(53, '1611711702', '::1', '/index.php/nimda/home', '2021-01-26 19:41:42', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(54, '1611711706', '::1', '/index.php/nimda/home', '2021-01-26 19:41:46', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(55, '1611711709', '::1', '/index.php/nimda/home', '2021-01-26 19:41:49', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(56, '1611711712', '::1', '/index.php/nimda/home', '2021-01-26 19:41:52', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(57, '1611711795', '::1', '/index.php/nimda/home', '2021-01-26 19:43:15', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(58, '1611711849', '::1', '/index.php/nimda/home', '2021-01-26 19:44:09', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(59, '1611711905', '::1', '/index.php/home', '2021-01-26 19:45:05', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(60, '1611711909', '::1', '/index.php/home', '2021-01-26 19:45:09', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(61, '1611713346', '::1', '/index.php/nimda/home', '2021-01-26 20:09:06', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(62, '1611713531', '::1', '/index.php/nimda/home', '2021-01-26 20:12:11', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(63, '1611713556', '::1', '/index.php/nimda/home', '2021-01-26 20:12:36', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(64, '1611713583', '::1', '/index.php/nimda/home', '2021-01-26 20:13:03', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(65, '1611713619', '::1', '/index.php/nimda/home', '2021-01-26 20:13:39', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(66, '1611713748', '::1', '/index.php/nimda/home', '2021-01-26 20:15:48', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(67, '1611713841', '::1', '/index.php/nimda/home', '2021-01-26 20:17:21', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(68, '1611718203', '::1', '/index.php/nimda/home', '2021-01-26 21:30:03', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(69, '1611718290', '::1', '/index.php/nimda/home', '2021-01-26 21:31:30', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(70, '1611718462', '::1', '/index.php/nimda/home', '2021-01-26 21:34:22', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(71, '1611718478', '::1', '/index.php/nimda/home', '2021-01-26 21:34:38', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(72, '1611718808', '::1', '/index.php/nimda/home', '2021-01-26 21:40:08', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(73, '1611718835', '::1', '/index.php/nimda/home', '2021-01-26 21:40:35', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(74, '1611719074', '::1', '/index.php/nimda/home', '2021-01-26 21:44:34', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(75, '1611719143', '::1', '/index.php/nimda/home', '2021-01-26 21:45:43', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(76, '1611719659', '::1', '/index.php/nimda/home', '2021-01-26 21:54:19', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(77, '1611719749', '::1', '/index.php/nimda/kontak', '2021-01-26 21:55:49', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(78, '1611719752', '::1', '/index.php/nimda', '2021-01-26 21:55:52', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(79, '1611719969', '::1', '/index.php/nimda', '2021-01-26 21:59:29', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(80, '1611720095', '::1', '/index.php/nimda', '2021-01-26 22:01:35', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(81, '1611720311', '::1', '/index.php/nimda', '2021-01-26 22:05:11', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(82, '1611720385', '::1', '/index.php/nimda', '2021-01-26 22:06:25', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(83, '1611720437', '::1', '/index.php/nimda', '2021-01-26 22:07:17', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(84, '1611720875', '::1', '/index.php/nimda', '2021-01-26 22:14:35', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(85, '1611720970', '::1', '/index.php/nimda', '2021-01-26 22:16:10', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(86, '1611721044', '::1', '/index.php/nimda', '2021-01-26 22:17:24', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(87, '1611721091', '::1', '/index.php/nimda', '2021-01-26 22:18:11', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(88, '1611721213', '::1', '/index.php/nimda', '2021-01-26 22:20:13', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(89, '1611721249', '::1', '/index.php/nimda', '2021-01-26 22:20:49', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(90, '1611721282', '::1', '/index.php/nimda', '2021-01-26 22:21:22', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(91, '1611721311', '::1', '/index.php/nimda', '2021-01-26 22:21:51', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(92, '1611721619', '::1', '/index.php/nimda', '2021-01-26 22:26:59', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(93, '1611721661', '::1', '/index.php/nimda', '2021-01-26 22:27:41', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(94, '1611721678', '::1', '/index.php/nimda', '2021-01-26 22:27:58', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(95, '1611721694', '::1', '/index.php/nimda', '2021-01-26 22:28:14', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(96, '1611721721', '::1', '/index.php/nimda', '2021-01-26 22:28:41', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(97, '1611721970', '::1', '/index.php/nimda', '2021-01-26 22:32:50', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(98, '1611723540', '::1', '/index.php/nimda', '2021-01-26 22:59:00', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(99, '1611723653', '::1', '/index.php/nimda', '2021-01-26 23:00:53', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(100, '1611723755', '::1', '/index.php/home', '2021-01-26 23:02:35', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(101, '1611728474', '::1', '/index.php/nimda', '2021-01-27 00:21:14', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(102, '1611728515', '::1', '/index.php/nimda', '2021-01-27 00:21:55', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(103, '1611728556', '::1', '/index.php/nimda', '2021-01-27 00:22:36', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(104, '1611728576', '::1', '/index.php/nimda', '2021-01-27 00:22:56', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(105, '1611729046', '::1', '/index.php/nimda', '2021-01-27 00:30:46', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(106, '1611729060', '::1', '/index.php/nimda', '2021-01-27 00:31:00', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(107, '1611749922', '::1', '/index.php', '2021-01-27 06:18:42', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(108, '1611749930', '::1', '/index.php/auth', '2021-01-27 06:18:50', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(109, '1611749934', '::1', '/index.php/auth/check_login', '2021-01-27 06:18:54', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(110, '1611749935', '::1', '/index.php/nimda/home', '2021-01-27 06:18:55', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(111, '1611750627', '::1', '/index.php/nimda/home', '2021-01-27 06:30:27', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(112, '1611750681', '::1', '/index.php/nimda/home', '2021-01-27 06:31:21', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(113, '1611750697', '::1', '/index.php/nimda/home', '2021-01-27 06:31:37', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(114, '1611750724', '::1', '/index.php/nimda/home', '2021-01-27 06:32:04', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(115, '1611750764', '::1', '/index.php/nimda/home', '2021-01-27 06:32:44', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(116, '1611750808', '::1', '/index.php/nimda/home', '2021-01-27 06:33:28', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(117, '1611750841', '::1', '/index.php/nimda/home', '2021-01-27 06:34:01', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(118, '1611750900', '::1', '/index.php/nimda/home', '2021-01-27 06:35:00', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(119, '1611751020', '::1', '/index.php/nimda/home', '2021-01-27 06:37:00', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(120, '1611751261', '::1', '/index.php/nimda/home', '2021-01-27 06:41:01', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(121, '1611751303', '::1', '/index.php/nimda/home', '2021-01-27 06:41:43', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(122, '1611751365', '::1', '/index.php/nimda/home', '2021-01-27 06:42:45', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(123, '1611751569', '::1', '/index.php/nimda/home', '2021-01-27 06:46:09', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(124, '1611751595', '::1', '/index.php/nimda/home', '2021-01-27 06:46:35', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(125, '1611751869', '::1', '/index.php/nimda/home', '2021-01-27 06:51:09', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(126, '1611751935', '::1', '/index.php/nimda/home', '2021-01-27 06:52:15', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(127, '1611752101', '::1', '/index.php/nimda/home', '2021-01-27 06:55:01', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(128, '1611752149', '::1', '/index.php/nimda/home', '2021-01-27 06:55:49', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(129, '1611752310', '::1', '/index.php/nimda/home', '2021-01-27 06:58:30', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(130, '1611752342', '::1', '/index.php/nimda/home', '2021-01-27 06:59:02', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(131, '1611752380', '::1', '/index.php/nimda/home', '2021-01-27 06:59:40', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(132, '1611752392', '::1', '/index.php/nimda/home', '2021-01-27 06:59:52', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(133, '1611752601', '::1', '/index.php/nimda/home', '2021-01-27 07:03:21', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(134, '1611752650', '::1', '/index.php/nimda/home', '2021-01-27 07:04:10', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(135, '1611752781', '::1', '/index.php/nimda/home', '2021-01-27 07:06:21', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(136, '1611752788', '::1', '/index.php/nimda/home', '2021-01-27 07:06:28', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(137, '1611752801', '::1', '/index.php/nimda/home', '2021-01-27 07:06:41', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(138, '1611752839', '::1', '/index.php/nimda/home', '2021-01-27 07:07:19', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(139, '1611752866', '::1', '/index.php/nimda/home', '2021-01-27 07:07:46', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(140, '1611752890', '::1', '/index.php/nimda/home', '2021-01-27 07:08:10', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(141, '1611752967', '::1', '/index.php', '2021-01-27 07:09:27', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(142, '1611753031', '::1', '/index.php', '2021-01-27 07:10:31', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(143, '1611753043', '::1', '/index.php', '2021-01-27 07:10:43', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(144, '1611753484', '::1', '/index.php', '2021-01-27 07:18:04', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(145, '1611753516', '::1', '/index.php', '2021-01-27 07:18:36', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(146, '1611753547', '::1', '/index.php', '2021-01-27 07:19:07', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(147, '1611753670', '::1', '/index.php', '2021-01-27 07:21:10', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(148, '1611753810', '::1', '/index.php/auth/logout', '2021-01-27 07:23:30', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(149, '1611753811', '::1', '/index.php', '2021-01-27 07:23:31', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(150, '1611753829', '::1', '/index.php', '2021-01-27 07:23:49', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(151, '1611753949', '::1', '/index.php/auth', '2021-01-27 07:25:49', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(152, '1611753953', '::1', '/index.php/auth/check_login', '2021-01-27 07:25:53', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(153, '1611753954', '::1', '/index.php/nimda/home', '2021-01-27 07:25:54', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(154, '1611754149', '::1', '/index.php/nimda/home', '2021-01-27 07:29:09', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(155, '1611754255', '::1', '/index.php/nimda/home', '2021-01-27 07:30:55', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(156, '1611754331', '::1', '/index.php/nimda/home', '2021-01-27 07:32:11', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(157, '1611754453', '::1', '/index.php/nimda/home', '2021-01-27 07:34:13', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(158, '1611754574', '::1', '/index.php/nimda/home', '2021-01-27 07:36:14', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(159, '1611831079', '::1', '/index.php', '2021-01-28 04:51:19', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(160, '1611831480', '::1', '/index.php', '2021-01-28 04:58:00', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(161, '1611831490', '::1', '/index.php/auth', '2021-01-28 04:58:10', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(162, '1611831492', '::1', '/index.php/auth/check_login', '2021-01-28 04:58:12', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(163, '1611831494', '::1', '/index.php/nimda/home', '2021-01-28 04:58:14', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(164, '1611831507', '::1', '/index.php/nimda/kategori/index/profil', '2021-01-28 04:58:27', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(165, '1611831511', '::1', '/index.php/nimda/profil', '2021-01-28 04:58:31', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(166, '1611831513', '::1', '/index.php/nimda/profil/add', '2021-01-28 04:58:33', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(167, '1611831519', '::1', '/index.php/nimda/kategori/index/profil', '2021-01-28 04:58:39', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(168, '1611831602', '::1', '/index.php/nimda/kategori/save', '2021-01-28 05:00:02', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(169, '1611831602', '::1', '/index.php/nimda/kategori/index/profil', '2021-01-28 05:00:02', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(170, '1611831624', '::1', '/index.php/nimda/kategori/save', '2021-01-28 05:00:24', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(171, '1611831625', '::1', '/index.php/nimda/kategori/index/profil', '2021-01-28 05:00:25', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(172, '1611831648', '::1', '/index.php/nimda/profil/add', '2021-01-28 05:00:48', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(173, '1611831664', '::1', '/index.php/nimda/profil/save', '2021-01-28 05:01:04', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(174, '1611831664', '::1', '/index.php/nimda/profil', '2021-01-28 05:01:04', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(175, '1611831669', '::1', '/index.php', '2021-01-28 05:01:09', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(176, '1611831675', '::1', '/index.php/profil/visi-dan-misi', '2021-01-28 05:01:15', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(177, '1611831951', '::1', '/index.php/home', '2021-01-28 05:05:51', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(178, '1611831970', '::1', '/index.php/nimda/profil/add', '2021-01-28 05:06:10', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(179, '1611831994', '::1', '/index.php/nimda/profil/save', '2021-01-28 05:06:34', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(180, '1611831995', '::1', '/index.php/nimda/profil', '2021-01-28 05:06:35', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(181, '1611831998', '::1', '/index.php/home', '2021-01-28 05:06:38', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(182, '1611832001', '::1', '/index.php/profil/tugas-pokok-dan-fungsi', '2021-01-28 05:06:41', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(183, '1611832009', '::1', '/index.php/home', '2021-01-28 05:06:49', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(184, '1611832068', '::1', '/index.php/nimda/kategori/index/berita', '2021-01-28 05:07:48', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(185, '1611832074', '::1', '/index.php/nimda/kategori/save', '2021-01-28 05:07:54', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(186, '1611832074', '::1', '/index.php/nimda/kategori/index/berita', '2021-01-28 05:07:54', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(187, '1611832124', '::1', '/index.php/nimda/berita/add', '2021-01-28 05:08:44', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(188, '1611832211', '::1', '/index.php/nimda/berita/save', '2021-01-28 05:10:11', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(189, '1611832211', '::1', '/index.php/nimda/berita/add', '2021-01-28 05:10:11', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(190, '1611832321', '::1', '/index.php/nimda/berita/save', '2021-01-28 05:12:01', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(191, '1611832321', '::1', '/index.php/nimda/berita', '2021-01-28 05:12:01', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(192, '1611832487', '::1', '/index.php/nimda/berita/edit/1', '2021-01-28 05:14:47', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(193, '1611832661', '::1', '/index.php/nimda/berita/update/1', '2021-01-28 05:17:41', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(194, '1611832662', '::1', '/index.php/nimda/berita', '2021-01-28 05:17:42', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(195, '1611832668', '::1', '/index.php/home', '2021-01-28 05:17:48', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(196, '1611832673', '::1', '/index.php/berita/artikel/jurnalis-di-buton-tengah-yang-dituduh-cemarkan-nama-bupati-divonis-2-tahun', '2021-01-28 05:17:53', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(197, '1611832771', '::1', '/index.php/nimda/berita/add', '2021-01-28 05:19:31', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(198, '1611832822', '::1', '/index.php/nimda/berita/save', '2021-01-28 05:20:22', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(199, '1611832822', '::1', '/index.php/nimda/berita', '2021-01-28 05:20:22', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(200, '1611832829', '::1', '/index.php/berita/artikel', '2021-01-28 05:20:29', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(201, '1611832833', '::1', '/index.php/berita/artikel/fakta-bentrok-di-buton-tengah-25-rumah-dibakar-hingga-polisi-periksa-4-ora', '2021-01-28 05:20:33', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(202, '1611832845', '::1', '/index.php/berita/artikel', '2021-01-28 05:20:45', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(203, '1611832868', '::1', '/index.php/nimda/berita/edit/1', '2021-01-28 05:21:08', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(204, '1611832873', '::1', '/index.php/nimda/berita/add', '2021-01-28 05:21:13', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(205, '1611832876', '::1', '/index.php/nimda/berita', '2021-01-28 05:21:16', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(206, '1611832879', '::1', '/index.php/nimda/berita/edit/2', '2021-01-28 05:21:19', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(207, '1611832927', '::1', '/index.php/nimda/berita/update/2', '2021-01-28 05:22:07', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(208, '1611832948', '::1', '/index.php/nimda/berita/edit/2', '2021-01-28 05:22:28', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(209, '1611832997', '::1', '/index.php/nimda/berita/edit/2', '2021-01-28 05:23:17', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(210, '1611833019', '::1', '/index.php/nimda/berita/update/2', '2021-01-28 05:23:39', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(211, '1611833020', '::1', '/index.php/nimda/berita', '2021-01-28 05:23:40', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(212, '1611833026', '::1', '/index.php/berita/artikel', '2021-01-28 05:23:46', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(213, '1611833031', '::1', '/index.php/berita/artikel/fakta-bentrok-di-buton-tengah-25-rumah-dibakar-hingga-polisi-periksa-4-ora', '2021-01-28 05:23:51', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(214, '1611833049', '::1', '/index.php/berita/artikel', '2021-01-28 05:24:09', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(215, '1611833072', '::1', '/index.php/nimda/berita/add', '2021-01-28 05:24:32', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(216, '1611833144', '::1', '/index.php/nimda/berita/save', '2021-01-28 05:25:44', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(217, '1611833146', '::1', '/index.php/nimda/berita', '2021-01-28 05:25:46', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(218, '1611833155', '::1', '/index.php/nimda/berita/edit/2', '2021-01-28 05:25:55', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(219, '1611833180', '::1', '/index.php/nimda/berita/update/2', '2021-01-28 05:26:20', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(220, '1611833181', '::1', '/index.php/nimda/berita', '2021-01-28 05:26:21', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(221, '1611833191', '::1', '/index.php/berita/artikel', '2021-01-28 05:26:31', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(222, '1611833199', '::1', '/index.php/berita/artikel/saya-dan-anak-anakku-hampir-terangkat-oleh-angin', '2021-01-28 05:26:39', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(223, '1611833204', '::1', '/index.php/berita/artikel', '2021-01-28 05:26:44', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(224, '1611833246', '::1', '/index.php/nimda/berita/add', '2021-01-28 05:27:26', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(225, '1611833303', '::1', '/index.php/nimda/berita/save', '2021-01-28 05:28:23', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(226, '1611833303', '::1', '/index.php/nimda/berita', '2021-01-28 05:28:23', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(227, '1611833312', '::1', '/index.php/nimda/berita/add', '2021-01-28 05:28:32', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(228, '1611833373', '::1', '/index.php/nimda/berita/save', '2021-01-28 05:29:33', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(229, '1611833373', '::1', '/index.php/nimda/berita', '2021-01-28 05:29:33', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(230, '1611833380', '::1', '/index.php/berita/artikel', '2021-01-28 05:29:40', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(231, '1611833799', '::1', '/index.php/nimda/kategori/index/info', '2021-01-28 05:36:39', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(232, '1611833809', '::1', '/index.php/nimda/kategori/save', '2021-01-28 05:36:49', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(233, '1611833810', '::1', '/index.php/nimda/kategori/index/info', '2021-01-28 05:36:50', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(234, '1611833815', '::1', '/index.php/nimda/info/add', '2021-01-28 05:36:55', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(235, '1611833988', '::1', '/index.php/nimda/info/save', '2021-01-28 05:39:48', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(236, '1611833989', '::1', '/index.php/nimda/info/add', '2021-01-28 05:39:49', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(237, '1611834010', '::1', '/index.php/nimda/info', '2021-01-28 05:40:10', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(238, '1611834017', '::1', '/index.php/nimda/info/add', '2021-01-28 05:40:17', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(239, '1611834082', '::1', '/index.php/nimda/info/save', '2021-01-28 05:41:22', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(240, '1611834082', '::1', '/index.php/nimda/info', '2021-01-28 05:41:22', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(241, '1611834118', '::1', '/index.php/berita/artikel', '2021-01-28 05:41:58', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(242, '1611834120', '::1', '/index.php/info/pengumuman', '2021-01-28 05:42:00', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(243, '1611834125', '::1', '/index.php/info/pengumuman/siap-menjadi-laskar-perencana', '2021-01-28 05:42:05', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(244, '1611834200', '::1', '/index.php/nimda/info/add', '2021-01-28 05:43:20', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(245, '1611834256', '::1', '/index.php/nimda/info/save', '2021-01-28 05:44:16', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(246, '1611834257', '::1', '/index.php/nimda/info', '2021-01-28 05:44:17', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(247, '1611834261', '::1', '/index.php/info/pengumuman/siap-menjadi-laskar-perencana', '2021-01-28 05:44:21', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(248, '1611834265', '::1', '/index.php/info/pengumuman', '2021-01-28 05:44:25', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(249, '1611834276', '::1', '/index.php/info/pengumuman/info-terbaru-laskar-perencana', '2021-01-28 05:44:36', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(250, '1611834298', '::1', '/index.php/nimda/info/edit/2', '2021-01-28 05:44:58', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(251, '1611834347', '::1', '/index.php/nimda/info/update/2', '2021-01-28 05:45:47', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(252, '1611834347', '::1', '/index.php/nimda/info', '2021-01-28 05:45:47', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(253, '1611834349', '::1', '/index.php/info/pengumuman/info-terbaru-laskar-perencana', '2021-01-28 05:45:49', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(254, '1611834358', '::1', '/index.php/info/download/2/pengumuman/info-terbaru-laskar-perencana', '2021-01-28 05:45:58', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(255, '1611837658', '::1', '/index.php/nimda/info/add', '2021-01-28 06:40:58', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(256, '1611837727', '::1', '/index.php/nimda/info/save', '2021-01-28 06:42:07', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(257, '1611837728', '::1', '/index.php/nimda/info', '2021-01-28 06:42:08', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(258, '1611837754', '::1', '/index.php/info/pengumuman/info-terbaru-laskar-perencana', '2021-01-28 06:42:34', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(259, '1611837757', '::1', '/index.php/info/pengumuman', '2021-01-28 06:42:37', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(260, '1611837772', '::1', '/index.php/home', '2021-01-28 06:42:52', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(261, '1611837820', '::1', '/index.php/nimda/info/add', '2021-01-28 06:43:40', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(262, '1611837911', '::1', '/index.php/nimda/info/save', '2021-01-28 06:45:11', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(263, '1611837911', '::1', '/index.php/nimda/info', '2021-01-28 06:45:11', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(264, '1611837915', '::1', '/index.php/home', '2021-01-28 06:45:15', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(265, '1611838030', '::1', '/index.php/nimda/galeri', '2021-01-28 06:47:10', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(266, '1611838032', '::1', '/index.php/nimda/galeri/add', '2021-01-28 06:47:12', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(267, '1611838073', '::1', '/index.php/nimda/galeri/save', '2021-01-28 06:47:53', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(268, '1611838074', '::1', '/index.php/nimda/galeri', '2021-01-28 06:47:54', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(269, '1611838078', '::1', '/index.php/nimda/galeri/edit/5', '2021-01-28 06:47:58', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(270, '1611838084', '::1', '/index.php/nimda/galeri', '2021-01-28 06:48:04', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(271, '1611838087', '::1', '/index.php/nimda/galeri/detail/5', '2021-01-28 06:48:07', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(272, '1611838091', '::1', '/index.php/nimda/galeri/addDetail/5', '2021-01-28 06:48:11', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(273, '1611838155', '::1', '/index.php/nimda/galeri/saveDetail/5', '2021-01-28 06:49:15', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(274, '1611838155', '::1', '/index.php/nimda/galeri/detail/5', '2021-01-28 06:49:15', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(275, '1611838158', '::1', '/index.php/nimda/galeri/addDetail/5', '2021-01-28 06:49:18', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(276, '1611838165', '::1', '/index.php/nimda/galeri/saveDetail/5', '2021-01-28 06:49:25', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(277, '1611838165', '::1', '/index.php/nimda/galeri/detail/5', '2021-01-28 06:49:25', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(278, '1611838182', '::1', '/index.php/nimda/galeri/addDetail/5', '2021-01-28 06:49:42', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(279, '1611838190', '::1', '/index.php/nimda/galeri/saveDetail/5', '2021-01-28 06:49:50', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(280, '1611838191', '::1', '/index.php/nimda/galeri/detail/5', '2021-01-28 06:49:51', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(281, '1611838228', '::1', '/index.php/home', '2021-01-28 06:50:28', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(282, '1611838240', '::1', '/index.php/galeri/siaga-dan-tanggap-kebakaran', '2021-01-28 06:50:40', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(283, '1611838247', '::1', '/index.php/galeri', '2021-01-28 06:50:47', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(284, '1611838257', '::1', '/index.php/home', '2021-01-28 06:50:57', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(285, '1611838289', '::1', '/index.php/nimda/galeri', '2021-01-28 06:51:29', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(286, '1611838293', '::1', '/index.php/nimda/galeri/add', '2021-01-28 06:51:33', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(287, '1611838314', '::1', '/index.php/nimda/galeri/save', '2021-01-28 06:51:54', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(288, '1611838316', '::1', '/index.php/nimda/galeri', '2021-01-28 06:51:56', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(289, '1611838323', '::1', '/index.php/nimda/galeri/detail/6', '2021-01-28 06:52:03', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(290, '1611838326', '::1', '/index.php/nimda/galeri/addDetail/6', '2021-01-28 06:52:06', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(291, '1611838366', '::1', '/index.php/nimda/galeri/saveDetail/6', '2021-01-28 06:52:46', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(292, '1611838367', '::1', '/index.php/nimda/galeri/detail/6', '2021-01-28 06:52:47', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(293, '1611838370', '::1', '/index.php/nimda/galeri/addDetail/6', '2021-01-28 06:52:50', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(294, '1611838377', '::1', '/index.php/nimda/galeri/saveDetail/6', '2021-01-28 06:52:57', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(295, '1611838378', '::1', '/index.php/nimda/galeri/addDetail/6', '2021-01-28 06:52:58', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(296, '1611838561', '::1', '/index.php/nimda/galeri/saveDetail/6', '2021-01-28 06:56:01', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(297, '1611838562', '::1', '/index.php/nimda/galeri/detail/6', '2021-01-28 06:56:02', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(298, '1611838564', '::1', '/index.php/nimda/galeri/addDetail/6', '2021-01-28 06:56:04', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(299, '1611838578', '::1', '/index.php/nimda/galeri/saveDetail/6', '2021-01-28 06:56:18', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(300, '1611838578', '::1', '/index.php/nimda/galeri/detail/6', '2021-01-28 06:56:18', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(301, '1611838582', '::1', '/index.php/nimda/galeri/add', '2021-01-28 06:56:22', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(302, '1611838660', '::1', '/index.php/nimda/galeri/save', '2021-01-28 06:57:40', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(303, '1611838663', '::1', '/index.php/nimda/galeri', '2021-01-28 06:57:43', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(304, '1611838666', '::1', '/index.php/nimda/galeri/detail/7', '2021-01-28 06:57:46', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(305, '1611838671', '::1', '/index.php/nimda/galeri/addDetail/7', '2021-01-28 06:57:51', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(306, '1611838679', '::1', '/index.php/nimda/galeri/saveDetail/7', '2021-01-28 06:57:59', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(307, '1611838679', '::1', '/index.php/nimda/galeri/detail/7', '2021-01-28 06:57:59', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(308, '1611838681', '::1', '/index.php/nimda/galeri/addDetail/7', '2021-01-28 06:58:01', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(309, '1611838694', '::1', '/index.php/nimda/galeri/saveDetail/7', '2021-01-28 06:58:14', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(310, '1611838695', '::1', '/index.php/nimda/galeri/detail/7', '2021-01-28 06:58:15', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(311, '1611838697', '::1', '/index.php/nimda/galeri/addDetail/7', '2021-01-28 06:58:17', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(312, '1611838706', '::1', '/index.php/nimda/galeri/saveDetail/7', '2021-01-28 06:58:26', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(313, '1611838707', '::1', '/index.php/nimda/galeri/detail/7', '2021-01-28 06:58:27', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(314, '1611838711', '::1', '/index.php/home', '2021-01-28 06:58:31', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(315, '1611838723', '::1', '/index.php/nimda/galeri', '2021-01-28 06:58:43', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(316, '1611838726', '::1', '/index.php/nimda/galeri/edit/5', '2021-01-28 06:58:46', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(317, '1611838735', '::1', '/index.php/nimda/galeri/update/5', '2021-01-28 06:58:55', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(318, '1611838736', '::1', '/index.php/nimda/galeri/edit/5', '2021-01-28 06:58:56', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(319, '1611838740', '::1', '/index.php/nimda/galeri', '2021-01-28 06:59:00', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(320, '1611838774', '::1', '/index.php/nimda/slider/add', '2021-01-28 06:59:34', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(321, '1611839068', '::1', '/index.php/nimda/slider/save', '2021-01-28 07:04:28', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(322, '1611839070', '::1', '/index.php/nimda/slider/add', '2021-01-28 07:04:30', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(323, '1611839097', '::1', '/index.php/nimda/slider/save', '2021-01-28 07:04:57', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(324, '1611839098', '::1', '/index.php/nimda/slider', '2021-01-28 07:04:58', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(325, '1611839102', '::1', '/index.php/home', '2021-01-28 07:05:02', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(326, '1611839114', '::1', '/index.php/home', '2021-01-28 07:05:14', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(327, '1611839122', '::1', '/index.php', '2021-01-28 07:05:22', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(328, '1611839167', '::1', '/index.php/nimda/slider/edit/1', '2021-01-28 07:06:07', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(329, '1611839175', '::1', '/index.php/nimda/slider/update/1', '2021-01-28 07:06:15', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(330, '1611839177', '::1', '/index.php/nimda/slider', '2021-01-28 07:06:17', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(331, '1611839179', '::1', '/index.php', '2021-01-28 07:06:19', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(332, '1611839360', '::1', '/index.php', '2021-01-28 07:09:20', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(333, '1611839398', '::1', '/index.php', '2021-01-28 07:09:58', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(334, '1611839448', '::1', '/index.php', '2021-01-28 07:10:48', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(335, '1611839622', '::1', '/index.php', '2021-01-28 07:13:42', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(336, '1611839642', '::1', '/index.php', '2021-01-28 07:14:02', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(337, '1611839688', '::1', '/index.php', '2021-01-28 07:14:48', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(338, '1611839771', '::1', '/index.php/nimda/slider/edit/1', '2021-01-28 07:16:11', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(339, '1611839779', '::1', '/index.php/nimda/slider/update/1', '2021-01-28 07:16:19', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(340, '1611839780', '::1', '/index.php/nimda/slider/edit/1', '2021-01-28 07:16:20', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(341, '1611839868', '::1', '/index.php/nimda/slider/update/1', '2021-01-28 07:17:48', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(342, '1611839868', '::1', '/index.php/nimda/slider', '2021-01-28 07:17:48', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(343, '1611839871', '::1', '/index.php', '2021-01-28 07:17:51', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(344, '1611839907', '::1', '/index.php/nimda/slider/edit/1', '2021-01-28 07:18:27', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(345, '1611839914', '::1', '/index.php/nimda/slider/update/1', '2021-01-28 07:18:34', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(346, '1611839915', '::1', '/index.php/nimda/slider', '2021-01-28 07:18:35', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(347, '1611839922', '::1', '/index.php/home', '2021-01-28 07:18:42', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(348, '1611840060', '::1', '/index.php/nimda', '2021-01-28 07:21:00', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(349, '1611840339', '::1', '/index.php/home', '2021-01-28 07:25:39', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(350, '1611840382', '::1', '/index.php/home', '2021-01-28 07:26:22', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(351, '1611840463', '::1', '/index.php/home', '2021-01-28 07:27:43', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(352, '1611840473', '::1', '/index.php/home', '2021-01-28 07:27:53', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(353, '1611840522', '::1', '/index.php/home', '2021-01-28 07:28:42', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(354, '1611840533', '::1', '/index.php/home', '2021-01-28 07:28:53', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(355, '1611840570', '::1', '/index.php/home', '2021-01-28 07:29:30', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(356, '1611840595', '::1', '/index.php/home', '2021-01-28 07:29:55', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(357, '1611840676', '::1', '/index.php/home', '2021-01-28 07:31:16', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(358, '1611840760', '::1', '/index.php/home', '2021-01-28 07:32:40', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(359, '1611840940', '::1', '/index.php/home', '2021-01-28 07:35:40', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(360, '1611840986', '::1', '/index.php/home', '2021-01-28 07:36:26', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(361, '1611841052', '::1', '/index.php/home', '2021-01-28 07:37:32', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(362, '1611841076', '::1', '/index.php/home', '2021-01-28 07:37:56', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(363, '1611841097', '::1', '/index.php/home', '2021-01-28 07:38:17', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(364, '1611841236', '::1', '/index.php/home', '2021-01-28 07:40:36', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(365, '1611841302', '::1', '/index.php/home', '2021-01-28 07:41:42', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(366, '1611841396', '::1', '/index.php/nimda/slider', '2021-01-28 07:43:16', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(367, '1611841399', '::1', '/index.php/nimda/slider/edit/1', '2021-01-28 07:43:19', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(368, '1611841416', '::1', '/index.php/nimda/slider/update/1', '2021-01-28 07:43:36', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(369, '1611841417', '::1', '/index.php/nimda/slider', '2021-01-28 07:43:37', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(370, '1611841420', '::1', '/index.php/home', '2021-01-28 07:43:40', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(371, '1611841493', '::1', '/index.php/nimda/slider/edit/1', '2021-01-28 07:44:53', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(372, '1611841501', '::1', '/index.php/nimda/slider/update/1', '2021-01-28 07:45:01', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(373, '1611841503', '::1', '/index.php/nimda/slider', '2021-01-28 07:45:03', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(374, '1611841510', '::1', '/index.php/home', '2021-01-28 07:45:10', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(375, '1611841648', '::1', '/index.php', '2021-01-28 07:47:28', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(376, '1611841673', '::1', '/index.php', '2021-01-28 07:47:53', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(377, '1611841817', '::1', '/index.php', '2021-01-28 07:50:17', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(378, '1611841853', '::1', '/index.php', '2021-01-28 07:50:53', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(379, '1611841863', '::1', '/index.php', '2021-01-28 07:51:03', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(380, '1611841884', '::1', '/index.php', '2021-01-28 07:51:24', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(381, '1611842144', '::1', '/index.php', '2021-01-28 07:55:44', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(382, '1611842181', '::1', '/index.php', '2021-01-28 07:56:21', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(383, '1611842215', '::1', '/index.php', '2021-01-28 07:56:55', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(384, '1611842247', '::1', '/index.php', '2021-01-28 07:57:27', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(385, '1611843068', '::1', '/index.php', '2021-01-28 08:11:08', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(386, '1611843080', '::1', '/index.php/auth', '2021-01-28 08:11:20', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(387, '1611843080', '::1', '/index.php/nimda', '2021-01-28 08:11:20', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(388, '1611843085', '::1', '/index.php/nimda/slider', '2021-01-28 08:11:25', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(389, '1611843089', '::1', '/index.php/nimda/slider/edit/1', '2021-01-28 08:11:29', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(390, '1611843119', '::1', '/index.php/nimda/slider/update/1', '2021-01-28 08:11:59', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(391, '1611843119', '::1', '/index.php/nimda/slider', '2021-01-28 08:11:59', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(392, '1611843161', '::1', '/index.php', '2021-01-28 08:12:41', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(393, '1611843464', '::1', '/index.php/nimda/slider/add', '2021-01-28 08:17:44', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(394, '1611843485', '::1', '/index.php/nimda/slider/save', '2021-01-28 08:18:05', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(395, '1611843485', '::1', '/index.php/nimda/slider', '2021-01-28 08:18:05', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(396, '1611843488', '::1', '/index.php/nimda/slider/add', '2021-01-28 08:18:08', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(397, '1611843499', '::1', '/index.php/nimda/slider/save', '2021-01-28 08:18:19', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(398, '1611843499', '::1', '/index.php/nimda/slider', '2021-01-28 08:18:19', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(399, '1611843504', '::1', '/index.php', '2021-01-28 08:18:24', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(400, '1611843892', '::1', '/index.php', '2021-01-28 08:24:52', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(401, '1611843898', '::1', '/index.php', '2021-01-28 08:24:58', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(402, '1611843903', '::1', '/index.php', '2021-01-28 08:25:03', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(403, '1611843978', '::1', '/index.php', '2021-01-28 08:26:18', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(404, '1611844031', '::1', '/index.php', '2021-01-28 08:27:11', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(405, '1611844146', '::1', '/index.php', '2021-01-28 08:29:06', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(406, '1611844244', '::1', '/index.php', '2021-01-28 08:30:44', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(407, '1611844311', '::1', '/index.php', '2021-01-28 08:31:51', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(408, '1611844379', '::1', '/index.php', '2021-01-28 08:32:59', '2021-01-28 08:36:54', '2021-01-28 08:36:54');
INSERT INTO `usersonline` (`usersonline_id`, `usersonline_timestamp`, `usersonline_ip`, `usersonline_file`, `created_at`, `updated_at`, `deleted_at`) VALUES
(409, '1611844419', '::1', '/index.php', '2021-01-28 08:33:39', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(410, '1611844538', '::1', '/index.php', '2021-01-28 08:35:38', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(411, '1611844542', '::1', '/index.php', '2021-01-28 08:35:42', '2021-01-28 08:36:54', '2021-01-28 08:36:54'),
(412, '1611844596', '::1', '/index.php', '2021-01-28 08:36:36', '2021-01-28 08:36:36', '0000-00-00 00:00:00'),
(413, '1611844613', '::1', '/index.php', '2021-01-28 08:36:53', '2021-01-28 08:36:53', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`berita_id`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`galeri_id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`info_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `kontak_kami`
--
ALTER TABLE `kontak_kami`
  ADD PRIMARY KEY (`kontak_kami_id`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`pengaturan_id`);

--
-- Indexes for table `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`profil_id`);

--
-- Indexes for table `session_viewer`
--
ALTER TABLE `session_viewer`
  ADD PRIMARY KEY (`session_viewer_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `berita_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kontak_kami`
--
ALTER TABLE `kontak_kami`
  MODIFY `kontak_kami_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `pengaturan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `profil_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `session_viewer`
--
ALTER TABLE `session_viewer`
  MODIFY `session_viewer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usersonline`
--
ALTER TABLE `usersonline`
  MODIFY `usersonline_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=414;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
