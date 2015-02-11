-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Darbinė stotis: 127.0.0.1:3306
-- Atlikimo laikas: 2015 m. Vas 09 d. 17:59
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

--
-- Sukurta duomenų struktūra lentelei `l_keys`
--

CREATE TABLE IF NOT EXISTS `l_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `l_key_value` varchar(14) COLLATE utf8_bin NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=241 ;

--
-- Sukurta duomenų kopija lentelei `l_keys`
--

INSERT INTO `l_keys` (`id`, `l_key_value`, `type`) VALUES
(46, 'SR7P-6Y4V-0YT0', 1),
(47, 'UP27-7851-73LM', 1),
(48, '4MYM-YQUU-525T', 2),
(49, 'P3TY-S76W-VM9T', 2),
(50, 'ZN7S-NXVS-R431', 3),
(51, 'LQPY-W0ZZ-UQPX', 3),
(52, 'YZPO-S7N3-O3TQ', 4),
(53, '0YL1-1Q3S-4T60', 4),
(54, '5NY6-Y257-5841', 5),
(55, 'TXY4-105VR-0QU', 5),
(56, 'LOT4-M1X6-PX8U', 6),
(57, 'RZY5-43RU-VM10', 6),
(58, 'UTUR-Q49Q-1Z5V', 7),
(59, '610Y0-U50P-VTL', 7),
(60, '10TS10-47VY-2R', 8),
(61, 'V32L-2506-13QM', 8),
(62, 'RLMR-9Y010-SWZ', 9),
(63, '2QY1-82MW-L3N7', 9),
(64, '4180-9Y69-T3WV', 1),
(65, 'MX5L-0NQ2-86QK', 1),
(66, '8YS7-822O-L4S6', 1),
(67, 'KX18-LUR1-T21X', 1),
(68, 'V0U4-QX4Z-QR52', 7),
(69, '07TY-63K7-207L', 7),
(70, 'LYZX-7X0O-NQQV', 7),
(71, '249W-7OUL-W3Z2', 7),
(72, 'KOU4-R05S-OVTS', 7),
(73, 'NT5M-03RK-53QN', 7),
(74, '283V-4X3X-N0WR', 7),
(75, 'N76N-83YU-3ZY0', 7),
(76, 'OYMO-5NQR-O5NM', 7),
(77, '93TK-1SRW-PO82', 7),
(78, '4SS5-NQSV-KZ6W', 7),
(79, 'XS0P-XPSZ-M26W', 7),
(80, 'VR68-L37S-S801', 7),
(81, 'KXL1-WPW8-Z3V6', 7),
(82, 'T753-81QO-S5QK', 7),
(83, '4Z7Y-MK0P-6SNM', 7),
(84, 'OL07-M679-QXW8', 7),
(85, 'UWTP-X444-KUS2', 7),
(86, 'QZO1-XK3P-ZM89', 7),
(87, 'ZO82-NTNS-26YW', 7),
(88, '1YQ0-OYP7-7P2Z', 7),
(89, 'WU7M-UVUX-20VX', 7),
(90, '301W-4492-UQVP', 7),
(91, 'WSOL-S6WW-W9RM', 7),
(92, 'RWYN-WONY-LWU3', 7),
(93, '3YV9-0YZR-Q7W8', 7),
(94, 'WVNU-S26Y-95N4', 7),
(95, 'P56Z-UQ0U-X8S1', 7),
(96, 'UMK9-5NNP-30T6', 7),
(97, 'PUN4-M4PX-K9P0', 7),
(98, 'NNX6-YU2R-MR36', 1),
(99, 'TYOK-RXOO-0YPQ', 1),
(100, 'Z0SY-LULY-N8OW', 1),
(101, '01P7-QKVZ-YLLO', 1),
(102, 'L6RS-QTPV-X4R9', 1),
(103, 'S8W6-M4N8-24WU', 1),
(104, 'UOUU-LM1M-Y5UY', 5),
(105, 'X1NN-LPQ6-QOQW', 5),
(106, '474Y-6L3M-38NO', 5),
(107, '082P-Y0QL-M7X8', 5),
(108, '7V5R-LTRN-XKQN', 5),
(109, '869U-VV4V-VM3O', 5),
(110, '6K36-K2X3-6WY7', 5),
(111, 'S7ZW-6PS8-1KYL', 5),
(112, 'PUP3-7M5N-K9VL', 5),
(113, '82V0-4NL4-WST4', 5),
(114, '22Q2-YKSO-Q6YW', 5),
(115, '95K8-3MP8-2UWK', 5),
(116, 'L89W-883M-UZL2', 6),
(117, 'Z9SR-VXKL-S951', 6),
(118, '0K46-TP1S-57TV', 6),
(119, 'U7U1-W7UM-S780', 6),
(120, 'R52K-V450-W3X2', 6),
(121, 'Z04X-K9O0-V6OT', 6),
(122, 'ZPU5-88RY-6599', 6),
(123, 'UQS8-RY4M-15ZK', 6),
(124, '8QR0-X0LO-3WUY', 6),
(125, 'R170-ZMPS-7TYT', 6),
(126, 'MKMR-XP51-612X', 6),
(127, 'XTZ2-O6V6-RY4Y', 6),
(128, 'VNX1-TS1T-M3P9', 6),
(129, '5SN8-284Z-L9NS', 6),
(130, 'V9OO-Z03K-WLZ9', 6),
(131, 'S8UZ-6LNQ-2Q5N', 9),
(132, 'VR3L-S68S-T09M', 6),
(133, '85U3-YMNR-VO82', 6),
(134, 'PR26-T049-VZQ1', 6),
(135, 'O66W-SLOU-NQXV', 6),
(136, 'W5MK-R251-9MWW', 6),
(137, 'W5NO-1RP6-MMRK', 1),
(138, '3Q02-3YY7-RX95', 1),
(139, 'Y2MQ-K7R0-PO5Z', 1),
(140, 'ZW2V-612O-9T7Y', 1),
(141, 'UXM5-QW3R-99Z0', 2),
(142, '86KS-8V14-4U19', 2),
(143, '50RX-7KY2-3UMY', 2),
(144, 'Y9YU-N42L-L08Z', 2),
(145, '5MV2-0R47-TT58', 3),
(146, '4159-TUV4-TLLW', 3),
(147, '479W-1W1Y-OS45', 3),
(148, 'PXTU-7SLU-7VOX', 3),
(149, 'RVPT-VLS3-8ZLZ', 4),
(150, 'YXX3-5P8R-VQ0S', 4),
(151, '4QVY-Q1M0-705V', 4),
(152, 'VK7M-S590-MRMQ', 4),
(153, '4V6O-TZPU-588R', 1),
(154, 'Y659-9UQS-8RY4', 1),
(155, 'M15Z-K8QR-0X0L', 1),
(156, 'O3WU-YR17-0ZMP', 1),
(157, 'RMYY-9YUN-42LL', 1),
(158, '08Z5-MV20-R47T', 1),
(159, 'T584-159T-UV4T', 1),
(160, 'LLW4-79W1-W1YO', 1),
(161, 'S45P-XTU7-SLU7', 1),
(162, 'VOXR-VPTV-LS38', 1),
(163, 'ZLZY-XX35-P8RV', 1),
(164, 'Q0S4-QVYQ-1M07', 2),
(165, '05VV-K7MS-590M', 2),
(166, 'RMQ3-Z082-1N4W', 2),
(167, 'KZT9-VM3N-QQ1M', 2),
(168, 'K82S-ZXM2-ORU8', 3),
(169, '6ZSK-2Z7L-7PTS', 1),
(170, '539Q-8U53-0XMZ', 1),
(171, 'T2RM-5NW8-M86W', 1),
(172, 'RLT9-NX6N-O1RP', 1),
(173, '6MMR-K3Q0-23YY', 1),
(174, '7RX9-5Y2M-QK7R', 1),
(175, '0PO5-ZZW2-V612', 1),
(176, 'O9T7-YUXM-5QW3', 2),
(177, 'R99Z-086K-S8V1', 2),
(178, '44U1-950R-X7KY', 2),
(179, '23UM-YY9Y-UN42', 2),
(180, 'LL08-Z5MV-20R4', 2),
(181, '7TT5-8415-9TUV', 3),
(182, '4TLL-W479-W1W1', 3),
(183, 'YOS4-5PXT-U7SL', 3),
(184, '1TQ0-YL11-Q3S4', 1),
(185, 'T605-NY6Y-2575', 1),
(186, '84KT-XY4K-5VR0', 1),
(187, 'QUYL-OT4M-1X6P', 1),
(188, 'X8UR-ZY54-3RUV', 1),
(189, 'MKRU-TURQ-49Q1', 1),
(190, 'Z5V6-KY0U-50PV', 1),
(191, 'TL1K-TSK4-7VY2', 2),
(192, 'RY2V-32L2-5061', 2),
(193, '3QMR-LMR9-Y0KS', 2),
(194, 'WZN2-QY18-2MWL', 2),
(195, '3N76-ZSK2-Z7L7', 3),
(196, 'PTS5-39Q8-U530', 3),
(197, 'ZM26-WVR6-8L37', 1),
(198, 'SS80-1KXL-1WPW', 1),
(199, '8Z3V-6T75-381Q', 1),
(200, 'OS5Q-K4Z7-YMK0', 1),
(201, 'P6SN-MOL0-7M67', 1),
(202, '9QXW-8UWT-PX44', 1),
(203, '4KUS-2QZO-1XK3', 1),
(204, '2V2R-VPWN-9X8L', 1),
(205, 'UOM9-XPVM-2V93', 1),
(206, 'VNNX-W2WV-USR0', 1),
(207, '1QW6-9KNO-X51N', 1),
(208, '57P0-NNNN-L5K2', 1),
(209, 'Y194-42V6-UU81', 2),
(210, 'QRPM-ZT18-09Y6', 2),
(211, '9T3W-VMX5-L0NQ', 2),
(212, '286Q-K8YS-7822', 3),
(213, 'OL4S-6KX1-8LUR', 4),
(214, '1T21-XV0U-4QX4', 4),
(215, 'ZQR5-207T-Y63K', 4),
(216, '7207-LLYZ-X7X0', 4),
(217, 'ONQQ-V249-W7OU', 4),
(218, 'LW3Z-2KOU-4R05', 4),
(219, 'SOVT-SNT5-M03R', 4),
(220, 'WYKZ-1P1Y-P2UW', 9),
(221, 'S9XP-V2M8-6P91', 1),
(222, 'ZNTR-94MP-MMQV', 1),
(223, 'OS33-LN3P-SKNR', 1),
(224, 'U9V6-O69Q-NTK3', 1),
(225, '411R-6XRW-YRU1', 1),
(226, 'K0Y7-7Z3Z-657W', 1),
(227, '2R7P-6Y4V-0YT0', 1),
(228, '5NY6-Y257-584K', 1),
(229, 'UN85-NSV1-P27K', 1),
(230, 'X5LP-LMU4-L5P6', 1),
(231, 'OK4W-Z30L-NQ0V', 1),
(232, '52VP-V3P9-XOP6', 1),
(233, 'O7VR-XQ93-372R', 2),
(234, 'TXKO-RUOT-4Q1M', 2),
(235, '4NQP-P071-Y9O1', 2),
(236, '445Q-697Y-R4MU', 2),
(237, 'ZXN6-YW5T-TY7O', 3),
(238, 'RYXS-P7O8-PT37', 3),
(239, 'PW47-QOS9-90X5', 3),
(240, 'N9NN-PS5O-ZSYK', 3);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `l_types`
--

CREATE TABLE IF NOT EXISTS `l_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(30) COLLATE utf8_bin NOT NULL,
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  `limit` int(4) NOT NULL,
  `comment` varchar(300) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

--
-- Sukurta duomenų kopija lentelei `l_types`
--

INSERT INTO `l_types` (`id`, `code`, `name`, `limit`, `comment`) VALUES
(1, 'LB10', 'Light Bronze Edition', 10, 'Limited to 10 users'),
(2, 'LS50', 'Light Silver Edition', 50, 'Limited to 50 users'),
(3, 'LP100', 'Light Gold Edition', 100, 'Limited to 100 users'),
(4, 'SB10', 'Standard Bronze Edition', 10, 'Limited to 10 users'),
(5, 'SS50', 'Standard Silver Edition', 50, 'Limited to 50 users'),
(6, 'SG100', 'Standard Gold Edition', 100, 'Limited to 100 users'),
(7, 'PB10', 'Professional Bronze Edition', 10, 'Limited to 10 users'),
(8, 'PS50', 'Professional Silver Edition', 50, 'Limited to 50 users'),
(9, 'PG100', 'Professional Gold Edition', 100, 'Limited to 100 users');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
