-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2022 at 09:18 AM
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
-- Database: `tanaman_pangan`
--

-- --------------------------------------------------------

--
-- Table structure for table `luas_panen`
--

CREATE TABLE `luas_panen` (
  `id` int(11) NOT NULL,
  `sub_sektor` varchar(100) NOT NULL,
  `indikator` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `propinsi` varchar(100) NOT NULL,
  `kabupaten_kota` varchar(100) NOT NULL,
  `status_angka` varchar(100) NOT NULL,
  `rentang_tahun` varchar(100) NOT NULL,
  `komoditi` varchar(100) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `tahun` int(11) NOT NULL DEFAULT 0,
  `nilai` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `luas_panen`
--

INSERT INTO `luas_panen` (`id`, `sub_sektor`, `indikator`, `level`, `propinsi`, `kabupaten_kota`, `status_angka`, `rentang_tahun`, `komoditi`, `satuan`, `tahun`, `nilai`) VALUES
(1, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Gresik', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2000, '15856.00'),
(2, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Gresik', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2001, '15938.00'),
(3, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Gresik', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2002, '16021.00'),
(4, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Gresik', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2003, '17014.00'),
(5, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Gresik', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2004, '22648.00'),
(6, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Gresik', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2005, '23087.00'),
(7, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Gresik', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2006, '21482.00'),
(8, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Gresik', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2007, '21907.00'),
(9, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Gresik', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2008, '22702.00'),
(10, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Gresik', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2009, '25282.00'),
(11, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Gresik', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2010, '24082.00'),
(12, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Gresik', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2011, '18183.00'),
(13, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Gresik', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2012, '24520.00'),
(14, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Gresik', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2013, '21976.00'),
(15, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Gresik', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2014, '21583.00'),
(16, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Bangkalan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2000, '85294.00'),
(17, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Bangkalan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2001, '85489.00'),
(18, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Bangkalan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2002, '85684.00'),
(19, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Bangkalan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2003, '88025.00'),
(20, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Bangkalan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2004, '78045.00'),
(21, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Bangkalan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2005, '88056.00'),
(22, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Bangkalan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2006, '72884.00'),
(23, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Bangkalan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2007, '79274.00'),
(24, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Bangkalan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2008, '75679.00'),
(25, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Bangkalan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2009, '72764.00'),
(26, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Bangkalan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2010, '73645.00'),
(27, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Bangkalan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2011, '70264.00'),
(28, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Bangkalan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2012, '53287.00'),
(29, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Bangkalan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2013, '59.00'),
(30, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Bangkalan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2014, '57727.00'),
(31, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sampang', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2000, '86033.00'),
(32, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sampang', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2001, '85661.00'),
(33, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sampang', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2002, '85289.00'),
(34, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sampang', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2003, '80827.00'),
(35, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sampang', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2004, '81837.00'),
(36, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sampang', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2005, '81976.00'),
(37, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sampang', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2006, '81805.00'),
(38, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sampang', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2007, '81175.00'),
(39, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sampang', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2008, '93060.00'),
(40, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sampang', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2009, '72846.00'),
(41, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sampang', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2010, '75696.00'),
(42, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sampang', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2011, '71594.00'),
(43, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sampang', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2012, '84238.00'),
(44, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sampang', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2013, '64694.00'),
(45, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sampang', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2014, '55872.00'),
(46, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'kab.Pamekasan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2000, '44134.00'),
(47, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'kab.Pamekasan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2001, '43833.00'),
(48, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'kab.Pamekasan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2002, '43533.00'),
(49, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'kab.Pamekasan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2003, '39929.00'),
(50, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'kab.Pamekasan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2004, '39004.00'),
(51, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'kab.Pamekasan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2005, '39471.00'),
(52, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'kab.Pamekasan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2006, '32157.00'),
(53, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'kab.Pamekasan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2007, '40899.00'),
(54, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'kab.Pamekasan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2008, '42350.00'),
(55, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'kab.Pamekasan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2009, '43882.00'),
(56, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'kab.Pamekasan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2010, '37425.00'),
(57, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'kab.Pamekasan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2011, '36644.00'),
(58, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'kab.Pamekasan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2012, '45846.00'),
(59, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'kab.Pamekasan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2013, '43268.00'),
(60, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'kab.Pamekasan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2014, '39873.00'),
(61, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sumenep', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2000, '166478.00'),
(62, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sumenep', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2001, '164193.00'),
(63, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sumenep', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2002, '161909.00'),
(64, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sumenep', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2003, '134495.00'),
(65, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sumenep', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2004, '137410.00'),
(66, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sumenep', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2005, '151491.00'),
(67, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sumenep', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2006, '104626.00'),
(68, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sumenep', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2007, '127809.00'),
(69, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sumenep', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2008, '121789.00'),
(70, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sumenep', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2009, '129420.00'),
(71, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sumenep', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2010, '167039.00'),
(72, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sumenep', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2011, '130884.00'),
(73, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sumenep', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2012, '142126.00'),
(74, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sumenep', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2013, '135558.00'),
(75, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab. Sumenep', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2014, '139934.00'),
(76, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2000, '15859.00'),
(77, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2001, '16008.00'),
(78, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2002, '16158.00'),
(79, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2003, '17956.00'),
(80, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2004, '20057.00'),
(81, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2005, '21332.00'),
(82, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2006, '18506.00'),
(83, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2007, '19015.00'),
(84, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2008, '22242.00'),
(85, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2009, '26115.00'),
(86, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2010, '25027.00'),
(87, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2011, '21876.00'),
(88, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2012, '22724.00'),
(89, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2013, '23807.00'),
(90, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Kab.Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2014, '23506.00'),
(91, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2000, '0.00'),
(92, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2001, '0.00'),
(93, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2002, '0.00'),
(94, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2003, '4.00'),
(95, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2004, '0.00'),
(96, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2005, '5.00'),
(97, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2006, '1.00'),
(98, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2007, '0.00'),
(99, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2008, '6.00'),
(100, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2009, '2.00'),
(101, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2010, '21.00'),
(102, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2011, '5.00'),
(103, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2012, '0.00'),
(104, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2013, '0.00'),
(105, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Mojokerto', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2014, '5.00'),
(106, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Surabaya', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2000, '91.00'),
(107, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Surabaya', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2001, '91.00'),
(108, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Surabaya', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2002, '78.00'),
(109, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Surabaya', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2003, '93.00'),
(110, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Surabaya', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2004, '0.00'),
(111, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Surabaya', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2005, '87.00'),
(112, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Surabaya', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2006, '115.00'),
(113, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Surabaya', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2007, '123.00'),
(114, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Surabaya', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2008, '50.00'),
(115, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Surabaya', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2009, '177.00'),
(116, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Surabaya', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2010, '12.00'),
(117, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Surabaya', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2011, '134.00'),
(118, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Surabaya', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2012, '129.00'),
(119, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Surabaya', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2013, '58.00'),
(120, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Surabaya', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2014, '73.00'),
(121, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Sidoarjo', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2000, '56.00'),
(122, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Sidoarjo', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2001, '58.00'),
(123, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Sidoarjo', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2002, '61.00'),
(124, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Sidoarjo', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2003, '97.00'),
(125, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Sidoarjo', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2004, '77.00'),
(126, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Sidoarjo', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2005, '48.00'),
(127, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Sidoarjo', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2006, '55.00'),
(128, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Sidoarjo', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2007, '35.00'),
(129, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Sidoarjo', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2008, '51.00'),
(130, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Sidoarjo', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2009, '128.00'),
(131, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Sidoarjo', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2010, '181.00'),
(132, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Sidoarjo', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2011, '91.00'),
(133, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Sidoarjo', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2012, '119.00'),
(134, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Sidoarjo', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2013, '79.00'),
(135, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Sidoarjo', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2014, '26.00'),
(136, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Lamongan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2000, '50111.00'),
(137, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Lamongan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2001, '49850.00'),
(138, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Lamongan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2002, '49590.00'),
(139, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Lamongan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2003, '46465.00'),
(140, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Lamongan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2004, '43354.00'),
(141, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Lamongan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2005, '55475.00'),
(142, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Lamongan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2006, '52368.00'),
(143, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Lamongan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2007, '50775.00'),
(144, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Lamongan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2008, '57309.00'),
(145, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Lamongan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2009, '62758.00'),
(146, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Lamongan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2010, '50198.00'),
(147, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Lamongan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2011, '51613.00'),
(148, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Lamongan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2012, '59543.00'),
(149, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Lamongan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2013, '53130.00'),
(150, 'Pertanian', 'Provinsi', 'Nasional', 'Jawa Timur', 'Lamongan', 'Angka Tetap', '2000-2014', 'Jagung', 'Ha', 2014, '58279.00');

-- --------------------------------------------------------

--
-- Table structure for table `produksi`
--

CREATE TABLE `produksi` (
  `id` int(11) NOT NULL,
  `sub_sektor` varchar(100) NOT NULL,
  `indikator` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `propinsi` varchar(100) NOT NULL,
  `kabupaten_kota` varchar(100) NOT NULL,
  `status_angka` varchar(100) NOT NULL,
  `rentang_tahun` varchar(100) NOT NULL,
  `komoditi` varchar(100) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `tahun` varchar(50) NOT NULL,
  `nilai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `produktivitas`
--

CREATE TABLE `produktivitas` (
  `id` int(11) NOT NULL,
  `sub_sektor` varchar(100) NOT NULL,
  `indikator` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `propinsi` varchar(100) NOT NULL,
  `kabupaten_kota` varchar(100) NOT NULL,
  `status_angka` varchar(100) NOT NULL,
  `rentang_tahun` varchar(100) NOT NULL,
  `komoditi` varchar(100) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `tahun` varchar(50) NOT NULL,
  `nilai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `luas_panen`
--
ALTER TABLE `luas_panen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produksi`
--
ALTER TABLE `produksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produktivitas`
--
ALTER TABLE `produktivitas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `luas_panen`
--
ALTER TABLE `luas_panen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `produksi`
--
ALTER TABLE `produksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produktivitas`
--
ALTER TABLE `produktivitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
