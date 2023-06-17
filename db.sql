-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Jan 07, 2021 at 07:56 PM
-- Server version: 10.5.7-MariaDB-1:10.5.7+maria~focal
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(2, 'admin', '$2y$10$lTDAkGROmqfxcOPH2Bstu.EytCm3ivFdjQW76zS1UwxXcue/ZVSBG', '#CFie5X_JIYcu^&mM9f+k$tlv', 'wiedhodho@gmail.com', 3, '085654012666', 'Administrator1', 'hacker.png', '2021-01-07 05:56:00', '172.16.238.1', '2021-01-07 00:14:56', '2021-01-07 05:56:00', NULL),
(3, 'kominfo', '$2y$10$FjpsD/Dfacf0hwyJ6JDPQuN.w3lbYN8N5g2Gty23qq0TjqOpPVzSK', '9&v*_JQYnhALBsjMa6o1UDCbT', 'wiedhodho@gmail.com', 3, '55453512', 'Edi Wahyu Widodo', 'hacker_1.png', NULL, NULL, '2021-01-07 05:31:58', '2021-01-07 05:37:12', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`),
  ADD UNIQUE KEY `users_name` (`users_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
