-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Darbinė stotis: 127.0.0.1
-- Atlikimo laikas: 2015 m. Vas 09 d. 08:44
-- Serverio versija: 5.6.11
-- PHP versija: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Duomenų bazė: `keygen`
--
CREATE DATABASE IF NOT EXISTS `keygen` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `keygen`;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `licence_keys`
--

CREATE TABLE IF NOT EXISTS `licence_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_value` varchar(14) COLLATE utf8_bin NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Sukurta duomenų kopija lentelei `licence_keys`
--

INSERT INTO `licence_keys` (`id`, `key_value`, `type`) VALUES
(1, 'ABCD-EFGH-IJKL', 2),
(2, 'KATA-CAIT-MISS', 4);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `licence_types`
--

CREATE TABLE IF NOT EXISTS `licence_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(30) COLLATE utf8_bin NOT NULL,
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  `comment` varchar(300) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=17 ;

--
-- Sukurta duomenų kopija lentelei `licence_types`
--

INSERT INTO `licence_types` (`id`, `code`, `name`, `comment`) VALUES
(1, 'LB10', 'Light Bronze Edition', 'Limited to 10 users'),
(2, 'LS50', 'Light Silver Edition', 'Limited to 50 users'),
(3, 'LP10', 'Light Gold Edition', 'Limited to 100 users'),
(4, 'SB10', 'Standard Bronze Edition', 'Limited to 10 users'),
(5, 'SS50', 'Standard Silver Edition', 'Limited to 50 users'),
(6, 'SG100', 'Standard Gold Edition', 'Limited to 100 users'),
(7, 'PB10', 'Professional Bronze Edition', 'Limited to 10 users'),
(8, 'PS50', 'Professional Silver Edition', 'Limited to 50 users'),
(9, 'PG100', 'Professional Gold Edition', 'Limited to 100 users');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
