-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 01:23 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ltr`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_reports`
--

CREATE TABLE `all_reports` (
  `id` int(11) NOT NULL,
  `line_number` varchar(50) NOT NULL,
  `station_name` varchar(50) NOT NULL,
  `problem_type` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `all_reports`
--

INSERT INTO `all_reports` (`id`, `line_number`, `station_name`, `problem_type`, `status`) VALUES
(1, 'Repair', 'Singulation', 'Broken Router Bit', 0),
(2, 'Repair', 'Singulation', 'Positive Cut', 0),
(3, 'Repair', 'Singulation', 'Negative Cut', 0),
(4, 'Repair', 'Singulation', 'Model Conversion', 0),
(5, 'Repair', 'Singulation', 'Others', 0),
(6, 'Repair', 'Functional Testing', 'FT Program Lost', 0),
(7, 'Repair', 'Functional Testing', 'HDA NG', 0),
(8, 'Repair', 'Functional Testing', 'Reset Counter', 0),
(9, 'Repair', 'Functional Testing', 'FT Jig Problem', 0),
(10, 'Repair', 'Functional Testing', 'Laptop NG', 0),
(11, 'Repair', 'Functional Testing', 'Model Conversion', 0),
(12, 'Repair', 'Functional Testing', 'Others', 0),
(13, 'Repair', 'Visual Inspection', 'Microlamp NG', 0),
(14, 'Repair', 'Visual Inspection', 'Microscope NG', 0),
(15, 'Repair', 'Visual Inspection', 'Carousel NG', 0),
(16, 'Repair', 'Visual Inspection', 'Others', 0),
(17, 'Repair', 'Final Visual Inspection', 'Microlamp NG', 0),
(18, 'Repair', 'Final Visual Inspection', 'Microscope NG', 0),
(19, 'Repair', 'Final Visual Inspection', 'Carousel NG', 0),
(20, 'Repair', 'Final Visual Inspection', 'Others', 0),
(21, 'Repair', 'Outgoing Quality Control', 'Microlamp NG', 0),
(22, 'Repair', 'Outgoing Quality Control', 'Microscope NG', 0),
(23, 'Repair', 'Outgoing Quality Control', 'Carousel NG', 0),
(24, 'Repair', 'Outgoing Quality Control', 'Others', 0),
(25, 'Repair', 'Others', 'Jig NG', 0),
(26, 'Repair', 'Others', 'Microlamp NG', 0),
(27, 'Repair', 'Others', 'Microscope NG', 0),
(28, 'Repair', 'Others', 'ESD or Groundings', 0),
(29, 'Repair', 'Others', 'Others', 0),
(30, '1', 'Singulation', 'Broken Router Bit', 0),
(31, '1', 'Singulation', 'Positive Cut', 0),
(32, '1', 'Singulation', 'Negative Cut', 0),
(33, '1', 'Singulation', 'Model Conversion', 0),
(34, '1', 'Singulation', 'Others', 0),
(35, '1', 'Functional Testing', 'FT Program Lost', 0),
(36, '1', 'Functional Testing', 'HDA NG', 0),
(37, '1', 'Functional Testing', 'Reset Counter', 0),
(38, '1', 'Functional Testing', 'FT Jig Problem', 0),
(39, '1', 'Functional Testing', 'Laptop NG', 0),
(40, '1', 'Functional Testing', 'Model Conversion', 0),
(41, '1', 'Functional Testing', 'Others', 0),
(42, '1', 'Visual Inspection', 'Microlamp NG', 0),
(43, '1', 'Visual Inspection', 'Microscope NG', 0),
(44, '1', 'Visual Inspection', 'Carousel NG', 0),
(45, '1', 'Visual Inspection', 'Others', 0),
(46, '1', 'Final Visual Inspection', 'Microlamp NG', 0),
(47, '1', 'Final Visual Inspection', 'Microscope NG', 0),
(48, '1', 'Final Visual Inspection', 'Carousel NG', 0),
(49, '1', 'Final Visual Inspection', 'Others', 0),
(50, '1', 'Outgoing Quality Control', 'Microlamp NG', 0),
(51, '1', 'Outgoing Quality Control', 'Microscope NG', 0),
(52, '1', 'Outgoing Quality Control', 'Carousel NG', 0),
(53, '1', 'Outgoing Quality Control', 'Others', 0),
(54, '1', 'Others', 'Jig NG', 0),
(55, '1', 'Others', 'Microlamp NG', 0),
(56, '1', 'Others', 'Microscope NG', 0),
(57, '1', 'Others', 'ESD or Groundings', 0),
(58, '1', 'Others', 'Others', 0),
(59, '2', 'Singulation', 'Broken Router Bit', 0),
(60, '2', 'Singulation', 'Positive Cut', 0),
(61, '2', 'Singulation', 'Negative Cut', 0),
(62, '2', 'Singulation', 'Model Conversion', 0),
(63, '2', 'Singulation', 'Others', 0),
(64, '2', 'Functional Testing', 'FT Program Lost', 0),
(65, '2', 'Functional Testing', 'HDA NG', 0),
(66, '2', 'Functional Testing', 'Reset Counter', 0),
(67, '2', 'Functional Testing', 'FT Jig Problem', 0),
(68, '2', 'Functional Testing', 'Laptop NG', 0),
(69, '2', 'Functional Testing', 'Model Conversion', 0),
(70, '2', 'Functional Testing', 'Others', 0),
(71, '2', 'Visual Inspection', 'Microlamp NG', 0),
(72, '2', 'Visual Inspection', 'Microscope NG', 0),
(73, '2', 'Visual Inspection', 'Carousel NG', 0),
(74, '2', 'Visual Inspection', 'Others', 0),
(75, '2', 'Final Visual Inspection', 'Microlamp NG', 0),
(76, '2', 'Final Visual Inspection', 'Microscope NG', 0),
(77, '2', 'Final Visual Inspection', 'Carousel NG', 0),
(78, '2', 'Final Visual Inspection', 'Others', 0),
(79, '2', 'Outgoing Quality Control', 'Microlamp NG', 0),
(80, '2', 'Outgoing Quality Control', 'Microscope NG', 0),
(81, '2', 'Outgoing Quality Control', 'Carousel NG', 0),
(82, '2', 'Outgoing Quality Control', 'Others', 0),
(83, '2', 'Others', 'Jig NG', 0),
(84, '2', 'Others', 'Microlamp NG', 0),
(85, '2', 'Others', 'Microscope NG', 0),
(86, '2', 'Others', 'ESD or Groundings', 0),
(87, '2', 'Others', 'Others', 0),
(88, '3', 'Singulation', 'Broken Router Bit', 0),
(89, '3', 'Singulation', 'Positive Cut', 0),
(90, '3', 'Singulation', 'Negative Cut', 0),
(91, '3', 'Singulation', 'Model Conversion', 0),
(92, '3', 'Singulation', 'Others', 0),
(93, '3', 'Functional Testing', 'FT Program Lost', 0),
(94, '3', 'Functional Testing', 'HDA NG', 0),
(95, '3', 'Functional Testing', 'Reset Counter', 0),
(96, '3', 'Functional Testing', 'FT Jig Problem', 0),
(97, '3', 'Functional Testing', 'Laptop NG', 0),
(98, '3', 'Functional Testing', 'Model Conversion', 0),
(99, '3', 'Functional Testing', 'Others', 0),
(100, '3', 'Visual Inspection', 'Microlamp NG', 0),
(101, '3', 'Visual Inspection', 'Microscope NG', 0),
(102, '3', 'Visual Inspection', 'Carousel NG', 0),
(103, '3', 'Visual Inspection', 'Others', 0),
(104, '3', 'Final Visual Inspection', 'Microlamp NG', 0),
(105, '3', 'Final Visual Inspection', 'Microscope NG', 0),
(106, '3', 'Final Visual Inspection', 'Carousel NG', 0),
(107, '3', 'Final Visual Inspection', 'Others', 0),
(108, '3', 'Outgoing Quality Control', 'Microlamp NG', 0),
(109, '3', 'Outgoing Quality Control', 'Microscope NG', 0),
(110, '3', 'Outgoing Quality Control', 'Carousel NG', 0),
(111, '3', 'Outgoing Quality Control', 'Others', 0),
(112, '3', 'Others', 'Jig NG', 0),
(113, '3', 'Others', 'Microlamp NG', 0),
(114, '3', 'Others', 'Microscope NG', 0),
(115, '3', 'Others', 'ESD or Groundings', 0),
(116, '3', 'Others', 'Others', 0),
(117, '4', 'Singulation', 'Broken Router Bit', 0),
(118, '4', 'Singulation', 'Positive Cut', 0),
(119, '4', 'Singulation', 'Negative Cut', 0),
(120, '4', 'Singulation', 'Model Conversion', 0),
(121, '4', 'Singulation', 'Others', 0),
(122, '4', 'Functional Testing', 'FT Program Lost', 0),
(123, '4', 'Functional Testing', 'HDA NG', 0),
(124, '4', 'Functional Testing', 'Reset Counter', 0),
(125, '4', 'Functional Testing', 'FT Jig Problem', 0),
(126, '4', 'Functional Testing', 'Laptop NG', 0),
(127, '4', 'Functional Testing', 'Model Conversion', 0),
(128, '4', 'Functional Testing', 'Others', 0),
(129, '4', 'Visual Inspection', 'Microlamp NG', 0),
(130, '4', 'Visual Inspection', 'Microscope NG', 0),
(131, '4', 'Visual Inspection', 'Carousel NG', 0),
(132, '4', 'Visual Inspection', 'Others', 0),
(133, '4', 'Final Visual Inspection', 'Microlamp NG', 0),
(134, '4', 'Final Visual Inspection', 'Microscope NG', 0),
(135, '4', 'Final Visual Inspection', 'Carousel NG', 0),
(136, '4', 'Final Visual Inspection', 'Others', 0),
(137, '4', 'Outgoing Quality Control', 'Microlamp NG', 0),
(138, '4', 'Outgoing Quality Control', 'Microscope NG', 0),
(139, '4', 'Outgoing Quality Control', 'Carousel NG', 0),
(140, '4', 'Outgoing Quality Control', 'Others', 0),
(141, '4', 'Others', 'Jig NG', 0),
(142, '4', 'Others', 'Microlamp NG', 0),
(143, '4', 'Others', 'Microscope NG', 0),
(144, '4', 'Others', 'ESD or Groundings', 0),
(145, '4', 'Others', 'Others', 0),
(146, '5', 'Singulation', 'Broken Router Bit', 0),
(147, '5', 'Singulation', 'Positive Cut', 0),
(148, '5', 'Singulation', 'Negative Cut', 0),
(149, '5', 'Singulation', 'Model Conversion', 0),
(150, '5', 'Singulation', 'Others', 0),
(151, '5', 'Functional Testing', 'FT Program Lost', 0),
(152, '5', 'Functional Testing', 'HDA NG', 0),
(153, '5', 'Functional Testing', 'Reset Counter', 0),
(154, '5', 'Functional Testing', 'FT Jig Problem', 0),
(155, '5', 'Functional Testing', 'Laptop NG', 0),
(156, '5', 'Functional Testing', 'Model Conversion', 0),
(157, '5', 'Functional Testing', 'Others', 0),
(158, '5', 'Visual Inspection', 'Microlamp NG', 0),
(159, '5', 'Visual Inspection', 'Microscope NG', 0),
(160, '5', 'Visual Inspection', 'Carousel NG', 0),
(161, '5', 'Visual Inspection', 'Others', 0),
(162, '5', 'Final Visual Inspection', 'Microlamp NG', 0),
(163, '5', 'Final Visual Inspection', 'Microscope NG', 0),
(164, '5', 'Final Visual Inspection', 'Carousel NG', 0),
(165, '5', 'Final Visual Inspection', 'Others', 0),
(166, '5', 'Outgoing Quality Control', 'Microlamp NG', 0),
(167, '5', 'Outgoing Quality Control', 'Microscope NG', 0),
(168, '5', 'Outgoing Quality Control', 'Carousel NG', 0),
(169, '5', 'Outgoing Quality Control', 'Others', 0),
(170, '5', 'Others', 'Jig NG', 0),
(171, '5', 'Others', 'Microlamp NG', 0),
(172, '5', 'Others', 'Microscope NG', 0),
(173, '5', 'Others', 'ESD or Groundings', 0),
(174, '5', 'Others', 'Others', 0),
(175, '7', 'Singulation', 'Broken Router Bit', 0),
(176, '7', 'Singulation', 'Positive Cut', 0),
(177, '7', 'Singulation', 'Negative Cut', 0),
(178, '7', 'Singulation', 'Model Conversion', 0),
(179, '7', 'Singulation', 'Others', 0),
(180, '7', 'Functional Testing', 'FT Program Lost', 0),
(181, '7', 'Functional Testing', 'HDA NG', 0),
(182, '7', 'Functional Testing', 'Reset Counter', 0),
(183, '7', 'Functional Testing', 'FT Jig Problem', 0),
(184, '7', 'Functional Testing', 'Laptop NG', 0),
(185, '7', 'Functional Testing', 'Model Conversion', 0),
(186, '7', 'Functional Testing', 'Others', 0),
(187, '7', 'Visual Inspection', 'Microlamp NG', 0),
(188, '7', 'Visual Inspection', 'Microscope NG', 0),
(189, '7', 'Visual Inspection', 'Carousel NG', 0),
(190, '7', 'Visual Inspection', 'Others', 0),
(191, '7', 'Final Visual Inspection', 'Microlamp NG', 0),
(192, '7', 'Final Visual Inspection', 'Microscope NG', 0),
(193, '7', 'Final Visual Inspection', 'Carousel NG', 0),
(194, '7', 'Final Visual Inspection', 'Others', 0),
(195, '7', 'Outgoing Quality Control', 'Microlamp NG', 0),
(196, '7', 'Outgoing Quality Control', 'Microscope NG', 0),
(197, '7', 'Outgoing Quality Control', 'Carousel NG', 0),
(198, '7', 'Outgoing Quality Control', 'Others', 0),
(199, '7', 'Others', 'Jig NG', 0),
(200, '7', 'Others', 'Microlamp NG', 0),
(201, '7', 'Others', 'Microscope NG', 0),
(202, '7', 'Others', 'ESD or Groundings', 0),
(203, '7', 'Others', 'Others', 0),
(204, '8', 'Singulation', 'Broken Router Bit', 0),
(205, '8', 'Singulation', 'Positive Cut', 0),
(206, '8', 'Singulation', 'Negative Cut', 0),
(207, '8', 'Singulation', 'Model Conversion', 0),
(208, '8', 'Singulation', 'Others', 0),
(209, '8', 'Functional Testing', 'FT Program Lost', 0),
(210, '8', 'Functional Testing', 'HDA NG', 0),
(211, '8', 'Functional Testing', 'Reset Counter', 0),
(212, '8', 'Functional Testing', 'FT Jig Problem', 0),
(213, '8', 'Functional Testing', 'Laptop NG', 0),
(214, '8', 'Functional Testing', 'Model Conversion', 0),
(215, '8', 'Functional Testing', 'Others', 0),
(216, '8', 'Visual Inspection', 'Microlamp NG', 0),
(217, '8', 'Visual Inspection', 'Microscope NG', 0),
(218, '8', 'Visual Inspection', 'Carousel NG', 0),
(219, '8', 'Visual Inspection', 'Others', 0),
(220, '8', 'Final Visual Inspection', 'Microlamp NG', 0),
(221, '8', 'Final Visual Inspection', 'Microscope NG', 0),
(222, '8', 'Final Visual Inspection', 'Carousel NG', 0),
(223, '8', 'Final Visual Inspection', 'Others', 0),
(224, '8', 'Outgoing Quality Control', 'Microlamp NG', 0),
(225, '8', 'Outgoing Quality Control', 'Microscope NG', 0),
(226, '8', 'Outgoing Quality Control', 'Carousel NG', 0),
(227, '8', 'Outgoing Quality Control', 'Others', 0),
(228, '8', 'Others', 'Jig NG', 0),
(229, '8', 'Others', 'Microlamp NG', 0),
(230, '8', 'Others', 'Microscope NG', 0),
(231, '8', 'Others', 'ESD or Groundings', 0),
(232, '8', 'Others', 'Others', 0),
(233, '10', 'Singulation', 'Broken Router Bit', 0),
(234, '10', 'Singulation', 'Positive Cut', 0),
(235, '10', 'Singulation', 'Negative Cut', 0),
(236, '10', 'Singulation', 'Model Conversion', 0),
(237, '10', 'Singulation', 'Others', 0),
(238, '10', 'Functional Testing', 'FT Program Lost', 0),
(239, '10', 'Functional Testing', 'HDA NG', 0),
(240, '10', 'Functional Testing', 'Reset Counter', 0),
(241, '10', 'Functional Testing', 'FT Jig Problem', 0),
(242, '10', 'Functional Testing', 'Laptop NG', 0),
(243, '10', 'Functional Testing', 'Model Conversion', 0),
(244, '10', 'Functional Testing', 'Others', 0),
(245, '10', 'Visual Inspection', 'Microlamp NG', 0),
(246, '10', 'Visual Inspection', 'Microscope NG', 0),
(247, '10', 'Visual Inspection', 'Carousel NG', 0),
(248, '10', 'Visual Inspection', 'Others', 0),
(249, '10', 'Final Visual Inspection', 'Microlamp NG', 0),
(250, '10', 'Final Visual Inspection', 'Microscope NG', 0),
(251, '10', 'Final Visual Inspection', 'Carousel NG', 0),
(252, '10', 'Final Visual Inspection', 'Others', 0),
(253, '10', 'Outgoing Quality Control', 'Microlamp NG', 0),
(254, '10', 'Outgoing Quality Control', 'Microscope NG', 0),
(255, '10', 'Outgoing Quality Control', 'Carousel NG', 0),
(256, '10', 'Outgoing Quality Control', 'Others', 0),
(257, '10', 'Others', 'Jig NG', 0),
(258, '10', 'Others', 'Microlamp NG', 0),
(259, '10', 'Others', 'Microscope NG', 0),
(260, '10', 'Others', 'ESD or Groundings', 0),
(261, '10', 'Others', 'Others', 0),
(262, '11', 'Singulation', 'Broken Router Bit', 0),
(263, '11', 'Singulation', 'Positive Cut', 0),
(264, '11', 'Singulation', 'Negative Cut', 0),
(265, '11', 'Singulation', 'Model Conversion', 0),
(266, '11', 'Singulation', 'Others', 0),
(267, '11', 'Functional Testing', 'FT Program Lost', 0),
(268, '11', 'Functional Testing', 'HDA NG', 0),
(269, '11', 'Functional Testing', 'Reset Counter', 0),
(270, '11', 'Functional Testing', 'FT Jig Problem', 0),
(271, '11', 'Functional Testing', 'Laptop NG', 0),
(272, '11', 'Functional Testing', 'Model Conversion', 0),
(273, '11', 'Functional Testing', 'Others', 0),
(274, '11', 'Visual Inspection', 'Microlamp NG', 0),
(275, '11', 'Visual Inspection', 'Microscope NG', 0),
(276, '11', 'Visual Inspection', 'Carousel NG', 0),
(277, '11', 'Visual Inspection', 'Others', 0),
(278, '11', 'Final Visual Inspection', 'Microlamp NG', 0),
(279, '11', 'Final Visual Inspection', 'Microscope NG', 0),
(280, '11', 'Final Visual Inspection', 'Carousel NG', 0),
(281, '11', 'Final Visual Inspection', 'Others', 0),
(282, '11', 'Outgoing Quality Control', 'Microlamp NG', 0),
(283, '11', 'Outgoing Quality Control', 'Microscope NG', 0),
(284, '11', 'Outgoing Quality Control', 'Carousel NG', 0),
(285, '11', 'Outgoing Quality Control', 'Others', 0),
(286, '11', 'Others', 'Jig NG', 0),
(287, '11', 'Others', 'Microlamp NG', 0),
(288, '11', 'Others', 'Microscope NG', 0),
(289, '11', 'Others', 'ESD or Groundings', 0),
(290, '11', 'Others', 'Others', 0),
(291, '12', 'Singulation', 'Broken Router Bit', 0),
(292, '12', 'Singulation', 'Positive Cut', 0),
(293, '12', 'Singulation', 'Negative Cut', 0),
(294, '12', 'Singulation', 'Model Conversion', 0),
(295, '12', 'Singulation', 'Others', 0),
(296, '12', 'Functional Testing', 'FT Program Lost', 0),
(297, '12', 'Functional Testing', 'HDA NG', 0),
(298, '12', 'Functional Testing', 'Reset Counter', 0),
(299, '12', 'Functional Testing', 'FT Jig Problem', 0),
(300, '12', 'Functional Testing', 'Laptop NG', 0),
(301, '12', 'Functional Testing', 'Model Conversion', 0),
(302, '12', 'Functional Testing', 'Others', 0),
(303, '12', 'Visual Inspection', 'Microlamp NG', 0),
(304, '12', 'Visual Inspection', 'Microscope NG', 0),
(305, '12', 'Visual Inspection', 'Carousel NG', 0),
(306, '12', 'Visual Inspection', 'Others', 0),
(307, '12', 'Final Visual Inspection', 'Microlamp NG', 0),
(308, '12', 'Final Visual Inspection', 'Microscope NG', 0),
(309, '12', 'Final Visual Inspection', 'Carousel NG', 0),
(310, '12', 'Final Visual Inspection', 'Others', 0),
(311, '12', 'Outgoing Quality Control', 'Microlamp NG', 0),
(312, '12', 'Outgoing Quality Control', 'Microscope NG', 0),
(313, '12', 'Outgoing Quality Control', 'Carousel NG', 0),
(314, '12', 'Outgoing Quality Control', 'Others', 0),
(315, '12', 'Others', 'Jig NG', 0),
(316, '12', 'Others', 'Microlamp NG', 0),
(317, '12', 'Others', 'Microscope NG', 0),
(318, '12', 'Others', 'ESD or Groundings', 0),
(319, '12', 'Others', 'Others', 0);

-- --------------------------------------------------------

--
-- Table structure for table `final_visual_inspection`
--

CREATE TABLE `final_visual_inspection` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `functional_testing`
--

CREATE TABLE `functional_testing` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `functional_testing`
--

INSERT INTO `functional_testing` (`id`, `name`) VALUES
(1, 'FT Program Lost'),
(2, 'HDA NG'),
(3, 'Reset Counter'),
(4, 'FT Jig Problem'),
(5, 'Laptop NG'),
(6, 'Model Conversion'),
(7, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `is_set_production_lines`
--

CREATE TABLE `is_set_production_lines` (
  `is_set` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `is_set_production_lines`
--

INSERT INTO `is_set_production_lines` (`is_set`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `lines`
--

CREATE TABLE `lines` (
  `id` int(11) NOT NULL,
  `number` varchar(50) NOT NULL,
  `line_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lines`
--

INSERT INTO `lines` (`id`, `number`, `line_status`) VALUES
(1, 'Repair', 1),
(2, '1', 1),
(3, '2', 1),
(4, '3', 1),
(5, '4', 1),
(6, '5', 1),
(7, '7', 1),
(8, '8', 1),
(9, '10', 1),
(10, '11', 1),
(11, '12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `others`
--

CREATE TABLE `others` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `others`
--

INSERT INTO `others` (`id`, `name`) VALUES
(1, 'Jig NG'),
(2, 'Microlamp NG'),
(3, 'Microscope NG'),
(4, 'ESD or Groundings'),
(5, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `outgoing_quality_control`
--

CREATE TABLE `outgoing_quality_control` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `problem_types`
--

CREATE TABLE `problem_types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `problem_types`
--

INSERT INTO `problem_types` (`id`, `name`) VALUES
(1, 'Broken Router Bit'),
(2, 'Positive Cut'),
(3, 'Negative Cut'),
(4, 'Model Conversion'),
(5, 'ESD or Groundings'),
(6, 'FT Program Lost'),
(7, 'HDA NG'),
(8, 'Reset Counter'),
(9, 'FT Jig Problem'),
(10, 'Laptop NG'),
(11, 'Microlamp NG'),
(12, 'Microscope NG'),
(13, 'Carousel NG'),
(14, 'Jig NG'),
(15, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `line_id` int(11) NOT NULL,
  `station_id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `reported_by` varchar(255) NOT NULL,
  `fixed_by` varchar(255) NOT NULL DEFAULT 'n/a',
  `shift` enum('A','B') NOT NULL,
  `report_time` datetime NOT NULL,
  `fixed_time` datetime NOT NULL DEFAULT current_timestamp(),
  `final_remarks` varchar(255) NOT NULL DEFAULT 'n/a',
  `fix_button` varchar(255) NOT NULL DEFAULT 'Fix',
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `line_id`, `station_id`, `problem_id`, `remarks`, `reported_by`, `fixed_by`, `shift`, `report_time`, `fixed_time`, `final_remarks`, `fix_button`, `status`) VALUES
(1, 1, 1, 1, 'No Remarks', 'asdf', 'juls', 'B', '2023-04-06 23:16:01', '2023-04-07 18:56:09', 'ksjdf', 'Fix', 0),
(2, 4, 2, 7, 'No Remarks', 'kjhkjh', 'juls', 'B', '2023-04-07 00:13:13', '2023-04-07 18:56:16', 'sdfsd', 'Fix', 0),
(3, 2, 1, 4, 'No Remarks', 'sdfsdf', 'juls', 'A', '2023-04-07 18:56:45', '2023-04-07 18:57:10', 'sdf', 'Fix', 0),
(4, 4, 1, 4, 'No Remarks', 'sdfsd', 'sdfsfd', 'A', '2023-04-07 18:56:55', '2023-04-07 18:57:16', 'sdfs', 'Fix', 0),
(5, 1, 4, 12, 'No Remarks', 'sdfs', 'juls', 'A', '2023-04-07 18:57:30', '2023-04-07 19:05:13', 'sdsd', 'Fix', 0),
(6, 2, 1, 1, 'sdfs', 'sfdfd', 'juls', 'B', '2023-04-07 19:01:18', '2023-04-07 19:05:19', 'asdas', 'Fix', 0),
(7, 2, 1, 2, 'sdsd', 'sdsd', 'sdfsdf', 'B', '2023-04-07 19:02:55', '2023-04-07 19:05:25', 'sdfsdf', 'Fix', 0),
(8, 1, 3, 11, 'asda', 'asd', 'sdf', 'B', '2023-04-07 19:05:36', '2023-04-07 19:09:22', 'sdf', 'Fix', 0),
(9, 2, 2, 6, 'asd', 'sdfsdf', 'juls', 'B', '2023-04-07 19:09:31', '2023-04-07 19:13:12', 'sdf', 'Fix', 0),
(10, 1, 1, 1, 'No Remarks', 'as', 'sdf', 'B', '2023-04-07 19:16:48', '2023-04-07 19:18:42', 'sdf', 'Fix', 0),
(11, 2, 2, 7, 'sdf', 'sdfss', 'asdf', 'B', '2023-04-07 19:18:58', '2023-04-07 19:20:23', 'adsf', 'Fix', 0),
(12, 3, 2, 6, 'adsf', 'sdafa', 'sdf', 'B', '2023-04-07 19:20:33', '2023-04-07 19:23:51', 'adsf', 'Fix', 0),
(13, 7, 1, 1, 'No Remarks', 'adf', 'juls', 'B', '2023-04-07 19:24:05', '2023-04-07 19:26:42', 'adfs', 'Fix', 0),
(14, 2, 2, 9, 'No Remarks', 'asdf', 'juls', 'B', '2023-04-07 19:26:51', '2023-04-07 19:29:37', 'sdf', 'Fix', 0),
(15, 2, 2, 9, 'No Remarks', 'dfsdf', 'sdf', 'B', '2023-04-07 19:29:52', '2023-04-07 19:30:41', 'sdfs', 'Fix', 0),
(16, 3, 4, 12, 'No Remarks', 'dfsdf', 'asdsd', 'B', '2023-04-07 19:30:05', '2023-04-07 19:30:32', 'gsdfs', 'Fix', 0),
(17, 3, 1, 1, 'No Remarks', 'mhjhjb', 'juls', 'B', '2023-04-07 20:09:10', '2023-04-07 20:09:40', 'kj', 'Fix', 0),
(18, 4, 3, 11, 'kjh', 'mhh', 'juls', 'B', '2023-04-07 20:13:02', '2023-04-07 20:13:15', 'uyuy', 'Fix', 0),
(19, 2, 1, 4, 'jhgkjg', 'julius', 'julius', 'B', '2023-04-07 20:13:44', '2023-04-07 20:17:59', 'kjh', 'Fix', 0),
(20, 4, 2, 4, 'jhgf', 'jhgklj', 'juls', 'B', '2023-04-07 20:13:58', '2023-04-07 20:18:27', 'kjhjh', 'Fix', 0),
(21, 9, 2, 4, 'lkhlkh', 'jhgjg', 'sdf', 'B', '2023-04-07 20:14:32', '2023-04-07 20:27:26', 'zxdfsd', 'Fix', 0),
(22, 7, 3, 12, 'hfjyf', 'kjglkug', 'sdf', 'B', '2023-04-07 20:14:54', '2023-04-07 20:27:30', 'xdsdf', 'Fix', 0),
(23, 2, 2, 4, 'mjyfjy', 'iuyfk', 'sgdsfg', 'B', '2023-04-07 20:15:18', '2023-04-07 20:27:50', 'asdf', 'Fix', 0),
(24, 2, 1, 1, 'No Remarks', 'zdf', 'adsf', 'B', '2023-04-07 20:52:14', '2023-04-07 20:52:24', 'adsf', 'Fix', 0),
(25, 1, 1, 1, 'No Remarks', 'adsfa', 'jkgjkg', 'B', '2023-04-07 20:53:33', '2023-04-07 21:00:03', 'kgkug', 'Fix', 0),
(26, 4, 2, 4, 'No Remarks', 'kjgkjh', 'juls', 'B', '2023-04-07 20:59:52', '2023-04-07 22:29:53', 'sfa', 'Fix', 0),
(27, 2, 1, 1, 'No Remarks', 'zxvzc', 'sdf', 'B', '2023-04-08 19:48:08', '2023-04-08 19:50:52', 'zdf', 'Fix', 0),
(28, 1, 2, 7, 'No Remarks', 'adf', 'asdf', 'B', '2023-04-08 19:52:06', '2023-04-08 19:52:23', 'adsf', 'Fix', 0),
(29, 4, 2, 7, 'No Remarks', 'dfgdf', 'sdfsdf', 'B', '2023-04-08 19:53:20', '2023-04-08 19:53:26', 'sdf', 'Fix', 0),
(30, 2, 3, 11, 'No Remarks', 'sdf', 'sdfga', 'B', '2023-04-08 19:54:02', '2023-04-08 19:54:38', 'ads', 'Fix', 0),
(31, 2, 3, 12, 'No Remarks', 'adsf', 'safa', 'B', '2023-04-08 19:54:30', '2023-04-08 19:54:41', 'adfa', 'Fix', 0),
(32, 1, 2, 8, 'No Remarks', 'sdfs', 'julius', 'B', '2023-04-08 21:04:13', '2023-04-08 21:10:00', 'xcvx', 'Fix', 0),
(33, 5, 3, 11, 'No Remarks', 'sdfsd', 'ssdfs', 'B', '2023-04-08 21:04:28', '2023-04-08 21:04:38', 'sdfsd', 'Fix', 0),
(34, 5, 2, 4, 'SDSDF', 'DSGSFD', 'Julius', 'B', '2023-04-08 21:18:19', '2023-04-08 21:18:34', 'DFSDF', 'Fix', 0),
(35, 2, 1, 1, 'No Remarks', 'sdfasd', 'sdlks', 'B', '2023-04-08 22:37:12', '2023-04-08 23:01:05', 'julus', 'Fix', 0),
(36, 1, 2, 6, 'No Remarks', 'xvxv', 'jsdu', 'B', '2023-04-08 23:02:10', '2023-04-08 23:03:41', 'sdd', 'Fix', 0),
(37, 2, 1, 1, 'No Remarks', 'sdfs', 'juls', 'B', '2023-04-08 23:13:18', '2023-04-08 23:21:58', 'jusl', 'Fix', 0),
(38, 2, 1, 1, 'No Remarks', 'adsf', 'sdfsd', 'B', '2023-04-08 23:24:12', '2023-04-08 23:27:36', 'sdfs', 'Fix', 0),
(39, 2, 1, 1, 'No Remarks', 'sszfzxc', 'dfxzdf', 'B', '2023-04-08 23:28:42', '2023-04-08 23:29:00', 'xvxc', 'Fix', 0),
(40, 3, 3, 12, 'No Remarks', 'asdfa', 'sdfsd', 'B', '2023-04-08 23:30:20', '2023-04-08 23:31:02', 'dfssdf', 'Fix', 0),
(41, 2, 1, 1, 'No Remarks', 'sdffsd', 'sdfsdf', 'B', '2023-04-08 23:41:21', '2023-04-08 23:41:34', 'sdfsdf', 'Fix', 0),
(42, 4, 2, 7, 'No Remarks', 'sdgsdf', 'DFSD', 'B', '2023-04-08 23:41:43', '2023-04-08 23:41:50', 'zxcxz', 'Fix', 0),
(43, 3, 1, 2, 'No Remarks', 'zddzfs', 'sdfsdf', 'B', '2023-04-08 23:41:59', '2023-04-08 23:42:35', 'sdfsdf', 'Fix', 0),
(44, 6, 3, 12, 'No Remarks', 'xvdxfs', 'mhghg', 'B', '2023-04-08 23:51:33', '2023-04-08 23:53:05', ',jhkjh', 'Fix', 0),
(45, 2, 2, 8, 'zxczczxczxc', 'zxc', 'skdjf', 'B', '2023-04-09 00:53:09', '2023-04-09 00:53:32', 'sfdsd', 'Fix', 0),
(46, 1, 1, 1, 'No Remarks', 'lkh', 'mb', 'A', '2023-04-10 16:30:58', '2023-04-10 16:31:13', 'kj', 'Fix', 0),
(47, 2, 2, 4, 'Convert to fkn8ld', 'Juls', 'juls', 'A', '2023-04-14 12:06:31', '2023-04-15 19:14:06', 'kjhj', 'Fix', 0),
(48, 3, 2, 9, 'No Remarks', 'John', 'juls', 'A', '2023-04-14 12:07:32', '2023-04-15 19:14:16', 'mjhjh', 'Fix', 0),
(49, 5, 3, 12, 'No Remarks', 'Archie', 'jhg', 'A', '2023-04-14 12:07:52', '2023-04-15 19:14:39', 'juls', 'Fix', 0),
(50, 6, 2, 6, 'No Remarks', 'jade', 'hgd', 'A', '2023-04-14 12:08:43', '2023-04-15 19:14:49', 'juls', 'Fix', 0),
(51, 4, 3, 13, 'no screw', 'mary', 'hgd', 'A', '2023-04-14 12:09:12', '2023-04-15 19:14:58', 'juls', 'Fix', 0),
(52, 11, 1, 1, 'broken router bit', 'leny', 'juls', 'A', '2023-04-14 12:09:54', '2023-04-15 19:15:06', 'huls', 'Fix', 0),
(53, 6, 1, 2, 'No Remarks', 'melvin', 'juls', 'A', '2023-04-14 12:10:17', '2023-04-15 19:15:32', 'juls', 'Fix', 0),
(54, 7, 1, 4, 'No Remarks', 'Jul', 'juls', 'A', '2023-04-14 12:11:08', '2023-04-15 19:14:28', 'mhgq', 'Fix', 0);

--
-- Triggers `reports`
--
DELIMITER $$
CREATE TRIGGER `after_reports_update` AFTER UPDATE ON `reports` FOR EACH ROW BEGIN
    UPDATE `statistics`
    SET `trouble_shift` = (SELECT COUNT(*) FROM Reports WHERE status = '0'),
        `trouble_line` = (SELECT line_id FROM Reports GROUP BY line_id ORDER BY COUNT(*) DESC LIMIT 1),
        `accumulated_dt` = (SELECT SUM(TIMESTAMPDIFF(MINUTE, report_time, fixed_time)) AS total_time_diff_minutes FROM Reports WHERE line_id != '1' AND problem_id = '4' AND status = '0'),
        `busiest_tech` = (SELECT fixed_by FROM Reports GROUP BY fixed_by ORDER BY COUNT(*) DESC LIMIT 1)
    WHERE `id` = '0';
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `singulation`
--

CREATE TABLE `singulation` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `singulation`
--

INSERT INTO `singulation` (`id`, `name`) VALUES
(1, 'Broken Router BIt'),
(2, 'Positive Cut'),
(3, 'Negative Cut'),
(4, 'Model Conversion'),
(5, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE `stations` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`id`, `name`) VALUES
(1, 'Singulation'),
(2, 'Functional Testing'),
(3, 'Visual Inspection'),
(4, 'Final Visual Inspection'),
(5, 'Outgoing Quality Control'),
(6, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `id` int(11) NOT NULL,
  `trouble_shift` int(11) DEFAULT NULL,
  `trouble_line` varchar(50) DEFAULT NULL,
  `accumulated_dt` int(11) DEFAULT NULL,
  `busiest_tech` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `statistics`
--

INSERT INTO `statistics` (`id`, `trouble_shift`, `trouble_line`, `accumulated_dt`, `busiest_tech`) VALUES
(0, 54, '2', 3852, 'juls');

-- --------------------------------------------------------

--
-- Table structure for table `visual_inspection`
--

CREATE TABLE `visual_inspection` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visual_inspection`
--

INSERT INTO `visual_inspection` (`id`, `name`) VALUES
(1, 'Microlamp NG'),
(2, 'Microscope NG'),
(3, 'Carousel NG'),
(4, 'Others');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_reports`
--
ALTER TABLE `all_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `final_visual_inspection`
--
ALTER TABLE `final_visual_inspection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `functional_testing`
--
ALTER TABLE `functional_testing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lines`
--
ALTER TABLE `lines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `others`
--
ALTER TABLE `others`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outgoing_quality_control`
--
ALTER TABLE `outgoing_quality_control`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `problem_types`
--
ALTER TABLE `problem_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `line_id` (`line_id`),
  ADD KEY `station_id` (`station_id`),
  ADD KEY `problem_id` (`problem_id`);

--
-- Indexes for table `singulation`
--
ALTER TABLE `singulation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visual_inspection`
--
ALTER TABLE `visual_inspection`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_reports`
--
ALTER TABLE `all_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=320;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `Reports_ibfk_1` FOREIGN KEY (`line_id`) REFERENCES `lines` (`id`),
  ADD CONSTRAINT `Reports_ibfk_2` FOREIGN KEY (`station_id`) REFERENCES `stations` (`id`),
  ADD CONSTRAINT `Reports_ibfk_3` FOREIGN KEY (`problem_id`) REFERENCES `problem_types` (`id`);

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `Morning Shift` ON SCHEDULE EVERY 1 DAY STARTS '2023-04-09 07:00:00' ENDS '2023-04-09 07:01:00' ON COMPLETION PRESERVE ENABLE DO UPDATE `statistics` SET `trouble_shift`= 0,`trouble_line`='-',`accumulated_dt`=0,`busiest_tech`='-' WHERE 1$$

CREATE DEFINER=`root`@`localhost` EVENT `Night Shift` ON SCHEDULE EVERY 1 DAY STARTS '2023-04-09 19:00:00' ENDS '2023-04-09 19:01:00' ON COMPLETION PRESERVE ENABLE DO UPDATE `statistics` SET `trouble_shift`= 0,`trouble_line`='-',`accumulated_dt`=0,`busiest_tech`='-' WHERE 1$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
