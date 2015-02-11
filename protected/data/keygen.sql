-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Darbinė stotis: 127.0.0.1:3306
-- Atlikimo laikas: 2015 m. Vas 11 d. 17:08
-- Serverio versija: 5.5.41-log
-- PHP versija: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Duomenų bazė: `keygen`
--

-- --------------------------------------------------------
-- Nera DB sukurimo sakinio CREATE DATABASE
-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `l_keys`
--

CREATE TABLE IF NOT EXISTS `l_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `l_key_value` varchar(14) COLLATE utf8_bin NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=407 ;

--
-- Sukurta duomenų kopija lentelei `l_keys`
--

INSERT INTO `l_keys` (`id`, `l_key_value`, `type`) VALUES
(398, '3KOU-4R05-SOVT', 1),
(399, 'SNT5-M03R-K53Q', 2),
(400, 'N283-V4X3-XN0W', 3),
(401, 'RN76-N83Y-U3ZY', 4),
(402, '0OYM-O5NQ-RO5N', 5),
(403, 'M93T-K1SR-WPO8', 6),
(404, '24SS-5NQS-VKZ6', 7),
(405, 'WXS0-PXPS-ZM26', 8),
(406, 'WVR6-8L37-SS80', 9);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `l_types`
--

CREATE TABLE IF NOT EXISTS `l_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(30) COLLATE utf8_bin NOT NULL,
  `vendor_part_number` varchar(21) COLLATE utf8_bin NOT NULL,
  `barcode` varchar(14) COLLATE utf8_bin NOT NULL,
  `description` varchar(100) COLLATE utf8_bin NOT NULL,
  `limit` int(4) NOT NULL,
  `comment` varchar(300) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

--
-- Sukurta duomenų kopija lentelei `l_types`
--

INSERT INTO `l_types` (`id`, `code`, `vendor_part_number`, `barcode`, `description`, `limit`, `comment`) VALUES
(1, 'LGT0010', 'NET02-01LGT0010-00001', '4779035161142', 'Netscout Server Monitoring Tool', 10, 'Light edition limited to 10 users'),
(2, 'LGT0050', 'NET02-01LGT0050-00002', '4779035161159', 'Netscout Server Monitoring Tool', 50, 'Light edition limited to 50 users'),
(3, 'LGT0100', 'NET02-01LGT0100-00003', '4779035161166', 'Netscout Server Monitoring Tool', 100, 'Light edition imited to 100 users'),
(4, 'STD0010', 'NET02-01STD0010-00004', '4779035161173', 'Netscout Server Monitoring Tool', 10, 'Standard edition limited to 10 users'),
(5, 'STD0050', 'NET02-01STD0050-00005', '4779035161180', 'Netscout Server Monitoring Tool', 50, 'Standard edition limited to 50 users'),
(6, 'STD0100', 'NET02-01STD0100-00006', '4779035161197', 'Netscout Server Monitoring Tool', 100, 'Standart edition limited to 100 users'),
(7, 'PRF0010', 'NET02-01PRF0010-00007', '4779035161203', 'Netscout Server Monitoring Tool', 10, 'Professional edition limited to 10 users'),
(8, 'PRF0050', 'NET02-01PRF0050-00008', '4779035161210', 'Netscout Server Monitoring Tool', 50, 'Professional edition limited to 50 users'),
(9, 'PRF0100', 'NET02-01PRF0100-00009', '4779035161227', 'Netscout Server Monitoring Tool', 100, 'Professional edition limited to 100 users');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
