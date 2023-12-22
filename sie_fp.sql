-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2023 at 06:48 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sie_fp`
--

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id_kota` int(11) NOT NULL,
  `kota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id_kota`, `kota`) VALUES
(1, 'Kabupaten Pacitan'),
(2, 'Kabupaten Ponorogo'),
(3, 'Kabupaten Trenggalek'),
(4, 'Kabupaten Tulungagung'),
(5, 'Kabupaten Blitar'),
(6, 'Kabupaten Kediri'),
(7, 'Kabupaten Malang'),
(8, 'Kabupaten Lumajang'),
(9, 'Kabupaten Jember'),
(10, 'Kabupaten Banyuwangi'),
(11, 'Kabupaten Bondowoso'),
(12, 'Kabupaten Situbondo'),
(13, 'Kabupaten Probolinggo'),
(14, 'Kabupaten Pasuruan'),
(15, 'Kabupaten Sidoarjo'),
(16, 'Kabupaten Mojokerto'),
(17, 'Kabupaten Jombang'),
(18, 'Kabupaten Nganjuk'),
(19, 'Kabupaten Madiun'),
(20, 'Kabupaten Magetan'),
(21, 'Kabupaten Ngawi'),
(22, 'Kabupaten Bojonegoro'),
(23, 'Kabupaten Tuban'),
(24, 'Kabupaten Lamongan'),
(25, 'Kabupaten Gresik'),
(26, 'Kabupaten Bangkalan'),
(27, 'Kabupaten Sampang'),
(28, 'Kabupaten Pamekasan'),
(29, 'Kabupaten Sumenep'),
(30, 'Kota Kediri'),
(31, 'Kota Blitar'),
(32, 'Kota Malang'),
(33, 'Kota Probolinggo'),
(34, 'Kota Pasuruan'),
(35, 'Kota Mojokerto'),
(36, 'Kota Madiun'),
(37, 'Kota Surabaya'),
(38, 'Kota Batu');

-- --------------------------------------------------------

--
-- Table structure for table `tahun`
--

CREATE TABLE `tahun` (
  `id_tahun` int(11) NOT NULL,
  `tahun` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tahun`
--

INSERT INTO `tahun` (`id_tahun`, `tahun`) VALUES
(1, '2021'),
(2, '2022'),
(3, '2023');

-- --------------------------------------------------------

--
-- Table structure for table `tingkat_partisipasi`
--

CREATE TABLE `tingkat_partisipasi` (
  `id_partisipasi` int(11) NOT NULL,
  `id_tahun` int(11) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `jmlh_partisipasi` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tingkat_partisipasi`
--

INSERT INTO `tingkat_partisipasi` (`id_partisipasi`, `id_tahun`, `id_kota`, `jmlh_partisipasi`) VALUES
(1, 1, 1, 80.57),
(2, 1, 2, 72.63),
(3, 1, 3, 72.36),
(4, 1, 4, 72.26),
(5, 1, 5, 70.44),
(6, 1, 6, 69.34),
(7, 1, 7, 68.49),
(8, 1, 8, 66.19),
(9, 1, 9, 68.97),
(10, 1, 10, 72.32),
(11, 1, 11, 73.89),
(12, 1, 12, 71.63),
(13, 1, 13, 73.24),
(14, 1, 14, 69.03),
(15, 1, 15, 66.47),
(16, 1, 16, 70.47),
(17, 1, 17, 70.69),
(18, 1, 18, 64.24),
(19, 1, 19, 67.77),
(20, 1, 20, 73.31),
(21, 1, 21, 72.88),
(22, 1, 22, 71.84),
(23, 1, 23, 73.77),
(24, 1, 24, 70.72),
(25, 1, 25, 69.43),
(26, 1, 26, 68.66),
(27, 1, 27, 70.19),
(28, 1, 28, 65.88),
(29, 1, 29, 75.63),
(30, 1, 30, 67.35),
(31, 1, 31, 69.96),
(32, 1, 32, 67.59),
(33, 1, 33, 69.71),
(34, 1, 34, 71.66),
(35, 1, 35, 67.09),
(36, 1, 36, 66.87),
(37, 1, 37, 67.3),
(38, 1, 38, 73.74),
(39, 2, 1, 82.99),
(40, 2, 2, 72.92),
(41, 2, 3, 72.01),
(42, 2, 4, 71.95),
(43, 2, 5, 72.79),
(44, 2, 6, 68.73),
(45, 2, 7, 70.38),
(46, 2, 8, 69.75),
(47, 2, 9, 69.44),
(48, 2, 10, 72),
(49, 2, 11, 74.61),
(50, 2, 12, 72.15),
(51, 2, 13, 71.56),
(52, 2, 14, 70.19),
(53, 2, 15, 72.87),
(54, 2, 16, 71.34),
(55, 2, 17, 66.65),
(56, 2, 18, 66.79),
(57, 2, 19, 72.72),
(58, 2, 20, 74.03),
(59, 2, 21, 78.6),
(60, 2, 22, 72.16),
(61, 2, 23, 73.63),
(62, 2, 24, 69.3),
(63, 2, 25, 68.3),
(64, 2, 26, 73.86),
(65, 2, 27, 73.37),
(66, 2, 28, 73.59),
(67, 2, 29, 75.12),
(68, 2, 30, 69.93),
(69, 2, 31, 67.78),
(70, 2, 32, 63.08),
(71, 2, 33, 68.39),
(72, 2, 34, 68.05),
(73, 2, 35, 69.41),
(74, 2, 36, 66.85),
(75, 2, 37, 69.99),
(76, 2, 38, 71.51),
(77, 3, 1, 81.64),
(78, 3, 2, 75.88),
(79, 3, 3, 80.72),
(80, 3, 4, 74.7),
(81, 3, 5, 73.5),
(82, 3, 6, 68.74),
(83, 3, 7, 70.66),
(84, 3, 8, 68.49),
(85, 3, 9, 72.3),
(86, 3, 10, 79.04),
(87, 3, 11, 74.39),
(88, 3, 12, 75.28),
(89, 3, 13, 69.48),
(90, 3, 14, 71.21),
(91, 3, 15, 69.62),
(92, 3, 16, 72.51),
(93, 3, 17, 71.91),
(94, 3, 18, 66.89),
(95, 3, 19, 72.49),
(96, 3, 20, 78.48),
(97, 3, 21, 69.43),
(98, 3, 22, 74.29),
(99, 3, 23, 74.73),
(100, 3, 24, 75.08),
(101, 3, 25, 70.12),
(102, 3, 26, 71.49),
(103, 3, 27, 73.54),
(104, 3, 28, 77.14),
(105, 3, 29, 78.86),
(106, 3, 30, 71.83),
(107, 3, 31, 72.26),
(108, 3, 32, 67.58),
(109, 3, 33, 70.61),
(110, 3, 34, 75.65),
(111, 3, 35, 72.5),
(112, 3, 36, 69.29),
(113, 3, 37, 68.73),
(114, 3, 38, 78.99);

-- --------------------------------------------------------

--
-- Table structure for table `tingkat_pengangguran`
--

CREATE TABLE `tingkat_pengangguran` (
  `id_pengangguran` int(11) NOT NULL,
  `id_tahun` int(11) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `jmlh_pengangguran` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tingkat_pengangguran`
--

INSERT INTO `tingkat_pengangguran` (`id_pengangguran`, `id_tahun`, `id_kota`, `jmlh_pengangguran`) VALUES
(1, 1, 1, 2.04),
(2, 1, 2, 4.38),
(3, 1, 3, 3.53),
(4, 1, 4, 4.91),
(5, 1, 5, 3.66),
(6, 1, 6, 5.15),
(7, 1, 7, 5.4),
(8, 1, 8, 3.51),
(9, 1, 9, 5.44),
(10, 1, 10, 5.42),
(11, 1, 11, 4.46),
(12, 1, 12, 3.68),
(13, 1, 13, 4.55),
(14, 1, 14, 6.03),
(15, 1, 15, 10.87),
(16, 1, 16, 5.54),
(17, 1, 17, 7.09),
(18, 1, 18, 4.98),
(19, 1, 19, 4.99),
(20, 1, 20, 3.86),
(21, 1, 21, 4.25),
(22, 1, 22, 4.82),
(23, 1, 23, 4.68),
(24, 1, 24, 4.9),
(25, 1, 25, 8),
(26, 1, 26, 8.07),
(27, 1, 27, 3.45),
(28, 1, 28, 3.1),
(29, 1, 29, 2.31),
(30, 1, 30, 6.37),
(31, 1, 31, 6.61),
(32, 1, 32, 9.65),
(33, 1, 33, 6.55),
(34, 1, 34, 6.23),
(35, 1, 35, 6.87),
(36, 1, 36, 8.15),
(37, 1, 37, 9.68),
(38, 1, 38, 6.57),
(39, 2, 1, 3.65),
(40, 2, 2, 5.51),
(41, 2, 3, 5.37),
(42, 2, 4, 6.65),
(43, 2, 5, 5.45),
(44, 2, 6, 6.83),
(45, 2, 7, 6.57),
(46, 2, 8, 4.97),
(47, 2, 9, 4.06),
(48, 2, 10, 5.26),
(49, 2, 11, 4.32),
(50, 2, 12, 3.38),
(51, 2, 13, 3.25),
(52, 2, 14, 5.91),
(53, 2, 15, 8.8),
(54, 2, 16, 4.83),
(55, 2, 17, 5.47),
(56, 2, 18, 4.74),
(57, 2, 19, 5.84),
(58, 2, 20, 4.33),
(59, 2, 21, 2.48),
(60, 2, 22, 4.69),
(61, 2, 23, 4.54),
(62, 2, 24, 6.05),
(63, 2, 25, 7.84),
(64, 2, 26, 8.05),
(65, 2, 27, 3.11),
(66, 2, 28, 1.4),
(67, 2, 29, 1.36),
(68, 2, 30, 4.38),
(69, 2, 31, 5.39),
(70, 2, 32, 7.66),
(71, 2, 33, 4.57),
(72, 2, 34, 6.18),
(73, 2, 35, 5.05),
(74, 2, 36, 6.39),
(75, 2, 37, 7.62),
(76, 2, 38, 8.43),
(77, 3, 1, 1.83),
(78, 3, 2, 4.66),
(79, 3, 3, 4.52),
(80, 3, 4, 5.65),
(81, 3, 5, 4.91),
(82, 3, 6, 5.79),
(83, 3, 7, 5.7),
(84, 3, 8, 3.67),
(85, 3, 9, 4.01),
(86, 3, 10, 4.75),
(87, 3, 11, 4.15),
(88, 3, 12, 3.27),
(89, 3, 13, 3.24),
(90, 3, 14, 5.48),
(91, 3, 15, 8.05),
(92, 3, 16, 4.67),
(93, 3, 17, 4.66),
(94, 3, 18, 4.68),
(95, 3, 19, 5.14),
(96, 3, 20, 4.16),
(97, 3, 21, 2.41),
(98, 3, 22, 4.63),
(99, 3, 23, 4.4),
(100, 3, 24, 5.46),
(101, 3, 25, 6.82),
(102, 3, 26, 6.18),
(103, 3, 27, 2.72),
(104, 3, 28, 1.74),
(105, 3, 29, 1.71),
(106, 3, 30, 4.06),
(107, 3, 31, 5.24),
(108, 3, 32, 6.8),
(109, 3, 33, 4.53),
(110, 3, 34, 5.64),
(111, 3, 35, 4.73),
(112, 3, 36, 5.85),
(113, 3, 37, 6.76),
(114, 3, 38, 4.52);

-- --------------------------------------------------------

--
-- Table structure for table `total_penduduk`
--

CREATE TABLE `total_penduduk` (
  `id_penduduk` int(11) NOT NULL,
  `id_tahun` int(11) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `jmlh_perempuan` int(11) NOT NULL,
  `jmlh_lakilaki` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `total_penduduk`
--

INSERT INTO `total_penduduk` (`id_penduduk`, `id_tahun`, `id_kota`, `jmlh_perempuan`, `jmlh_lakilaki`) VALUES
(1, 1, 1, 293945, 295163),
(2, 1, 2, 478411, 477428),
(3, 1, 3, 365692, 369196),
(4, 1, 4, 548025, 548563),
(5, 1, 5, 610953, 620060),
(6, 1, 6, 814085, 830315),
(7, 1, 7, 1323755, 1344541),
(8, 1, 8, 569742, 557352),
(9, 1, 9, 1278825, 1271535),
(10, 1, 10, 858217, 860245),
(11, 1, 11, 395200, 383325),
(12, 1, 12, 350478, 337859),
(13, 1, 13, 585657, 570237),
(14, 1, 14, 805300, 806505),
(15, 1, 15, 1038952, 1052978),
(16, 1, 16, 559503, 566019),
(17, 1, 17, 657471, 668443),
(18, 1, 18, 551596, 558087),
(19, 1, 19, 378431, 371712),
(20, 1, 20, 342535, 331598),
(21, 1, 21, 439821, 433525),
(22, 1, 22, 651038, 656564),
(23, 1, 23, 602342, 600785),
(24, 1, 24, 677527, 678500),
(25, 1, 25, 655696, 664874),
(26, 1, 26, 543437, 528275),
(27, 1, 27, 491299, 484721),
(28, 1, 28, 434930, 418577),
(29, 1, 29, 584586, 545236),
(30, 1, 30, 143788, 144174),
(31, 1, 31, 75560, 74811),
(32, 1, 32, 424550, 420383),
(33, 1, 33, 121625, 119577),
(34, 1, 34, 104740, 104788),
(35, 1, 35, 67183, 66089),
(36, 1, 36, 100640, 96277),
(37, 1, 37, 1452412, 1427872),
(38, 1, 38, 106562, 108091),
(39, 2, 1, 295902, 297823),
(40, 2, 2, 482713, 486979),
(41, 2, 3, 368142, 370548),
(42, 2, 4, 552502, 556928),
(43, 2, 5, 615691, 620370),
(44, 2, 6, 819995, 825821),
(45, 2, 7, 1332746, 1341584),
(46, 2, 8, 574970, 580155),
(47, 2, 9, 1287771, 1296577),
(48, 2, 10, 865008, 871714),
(49, 2, 11, 396741, 398226),
(50, 2, 12, 352030, 353534),
(51, 2, 13, 587828, 589914),
(52, 2, 14, 809067, 812722),
(53, 2, 15, 1044849, 1050615),
(54, 2, 16, 563618, 567675),
(55, 2, 17, 662586, 667636),
(56, 2, 18, 555356, 559054),
(57, 2, 19, 382297, 386141),
(58, 2, 20, 344738, 346900),
(59, 2, 21, 441962, 444043),
(60, 2, 22, 654909, 658699),
(61, 2, 23, 605668, 608919),
(62, 2, 24, 685392, 693240),
(63, 2, 25, 661829, 667913),
(64, 2, 26, 551098, 558781),
(65, 2, 27, 495489, 499638),
(66, 2, 28, 437206, 439425),
(67, 2, 29, 588213, 591771),
(68, 2, 30, 144542, 145280),
(69, 2, 31, 76373, 77182),
(70, 2, 32, 425229, 425842),
(71, 2, 33, 122655, 123674),
(72, 2, 34, 105744, 106741),
(73, 2, 35, 67739, 68289),
(74, 2, 36, 101822, 103000),
(75, 2, 37, 1456182, 1459731),
(76, 2, 38, 107616, 108664),
(77, 3, 1, 297014, 298826),
(78, 3, 2, 481540, 485603),
(79, 3, 3, 371527, 373810),
(80, 3, 4, 552835, 557045),
(81, 3, 5, 624631, 629127),
(82, 3, 6, 836025, 841629),
(83, 3, 7, 1353154, 1361591),
(84, 3, 8, 562257, 567106),
(85, 3, 9, 1279947, 1288194),
(86, 3, 10, 866723, 873100),
(87, 3, 11, 384676, 385966),
(88, 3, 12, 339230, 340547),
(89, 3, 13, 572137, 573945),
(90, 3, 14, 809968, 813307),
(91, 3, 15, 1058552, 1063973),
(92, 3, 16, 569966, 573841),
(93, 3, 17, 673386, 678250),
(94, 3, 18, 561677, 565193),
(95, 3, 19, 375368, 378994),
(96, 3, 20, 333605, 335566),
(97, 3, 21, 435470, 437350),
(98, 3, 22, 660216, 663775),
(99, 3, 23, 603875, 606876),
(100, 3, 24, 686117, 693701),
(101, 3, 25, 670835, 676735),
(102, 3, 26, 535522, 542775),
(103, 3, 27, 488673, 492572),
(104, 3, 28, 420612, 422584),
(105, 3, 29, 548419, 551524),
(106, 3, 30, 144876, 145556),
(107, 3, 31, 75587, 76359),
(108, 3, 32, 420897, 421340),
(109, 3, 33, 120545, 121500),
(110, 3, 34, 105753, 106709),
(111, 3, 35, 66611, 67125),
(112, 3, 36, 97370, 98460),
(113, 3, 37, 1431041, 1433967),
(114, 3, 38, 109119, 110138);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `tahun`
--
ALTER TABLE `tahun`
  ADD PRIMARY KEY (`id_tahun`);

--
-- Indexes for table `tingkat_partisipasi`
--
ALTER TABLE `tingkat_partisipasi`
  ADD PRIMARY KEY (`id_partisipasi`),
  ADD KEY `id_tahun` (`id_tahun`),
  ADD KEY `id_kota` (`id_kota`);

--
-- Indexes for table `tingkat_pengangguran`
--
ALTER TABLE `tingkat_pengangguran`
  ADD PRIMARY KEY (`id_pengangguran`),
  ADD KEY `id_kota` (`id_kota`),
  ADD KEY `id_tahun` (`id_tahun`);

--
-- Indexes for table `total_penduduk`
--
ALTER TABLE `total_penduduk`
  ADD PRIMARY KEY (`id_penduduk`),
  ADD KEY `id_tahun` (`id_tahun`),
  ADD KEY `id_kota` (`id_kota`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id_kota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tahun`
--
ALTER TABLE `tahun`
  MODIFY `id_tahun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tingkat_partisipasi`
--
ALTER TABLE `tingkat_partisipasi`
  MODIFY `id_partisipasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `tingkat_pengangguran`
--
ALTER TABLE `tingkat_pengangguran`
  MODIFY `id_pengangguran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `total_penduduk`
--
ALTER TABLE `total_penduduk`
  MODIFY `id_penduduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tingkat_partisipasi`
--
ALTER TABLE `tingkat_partisipasi`
  ADD CONSTRAINT `tingkat_partisipasi_ibfk_1` FOREIGN KEY (`id_kota`) REFERENCES `kota` (`id_kota`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tingkat_partisipasi_ibfk_2` FOREIGN KEY (`id_tahun`) REFERENCES `tahun` (`id_tahun`) ON UPDATE CASCADE;

--
-- Constraints for table `tingkat_pengangguran`
--
ALTER TABLE `tingkat_pengangguran`
  ADD CONSTRAINT `tingkat_pengangguran_ibfk_1` FOREIGN KEY (`id_tahun`) REFERENCES `tahun` (`id_tahun`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tingkat_pengangguran_ibfk_2` FOREIGN KEY (`id_kota`) REFERENCES `kota` (`id_kota`) ON UPDATE CASCADE;

--
-- Constraints for table `total_penduduk`
--
ALTER TABLE `total_penduduk`
  ADD CONSTRAINT `total_penduduk_ibfk_1` FOREIGN KEY (`id_kota`) REFERENCES `kota` (`id_kota`) ON UPDATE CASCADE,
  ADD CONSTRAINT `total_penduduk_ibfk_2` FOREIGN KEY (`id_tahun`) REFERENCES `tahun` (`id_tahun`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
