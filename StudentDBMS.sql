-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2015 at 10:34 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pipedrive`
--

-- --------------------------------------------------------

--
-- Table structure for table `classattended`
--

CREATE TABLE IF NOT EXISTS `classattended` (
  `caid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `crid` int(11) NOT NULL,
  `remarks` varchar(3) DEFAULT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`caid`),
  KEY `sid` (`sid`),
  KEY `crid` (`crid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=204 ;

--
-- Dumping data for table `classattended`
--

INSERT INTO `classattended` (`caid`, `sid`, `crid`, `remarks`, `feedback`) VALUES
(1, 3, 5, NULL, NULL),
(2, 4, 9, NULL, NULL),
(3, 5, 9, NULL, NULL),
(4, 9, 5, NULL, NULL),
(5, 12, 7, NULL, NULL),
(6, 12, 11, NULL, NULL),
(7, 13, 11, NULL, NULL),
(8, 14, 5, NULL, NULL),
(9, 16, 11, NULL, NULL),
(10, 17, 7, NULL, NULL),
(11, 17, 11, 'D/O', NULL),
(12, 21, 6, NULL, NULL),
(13, 22, 7, NULL, NULL),
(14, 23, 10, NULL, NULL),
(15, 24, 10, NULL, NULL),
(16, 27, 1, NULL, NULL),
(17, 27, 14, NULL, NULL),
(18, 27, 11, NULL, NULL),
(19, 28, 10, NULL, NULL),
(20, 29, 7, NULL, NULL),
(21, 30, 5, NULL, NULL),
(22, 32, 9, NULL, NULL),
(23, 33, 10, NULL, NULL),
(24, 34, 7, NULL, NULL),
(25, 34, 11, NULL, NULL),
(26, 37, 11, NULL, NULL),
(27, 38, 9, NULL, NULL),
(28, 42, 10, NULL, NULL),
(29, 43, 11, NULL, NULL),
(30, 45, 11, NULL, NULL),
(31, 46, 10, NULL, NULL),
(32, 49, 10, NULL, NULL),
(33, 52, 7, NULL, NULL),
(34, 52, 11, NULL, NULL),
(35, 57, 9, NULL, NULL),
(36, 58, 9, NULL, NULL),
(37, 61, 4, NULL, NULL),
(38, 62, 1, NULL, NULL),
(39, 62, 14, NULL, NULL),
(40, 62, 11, NULL, NULL),
(41, 64, 6, NULL, NULL),
(42, 68, 5, NULL, NULL),
(43, 73, 9, NULL, NULL),
(44, 75, 5, NULL, NULL),
(45, 78, 9, NULL, NULL),
(46, 81, 10, NULL, NULL),
(47, 82, 9, NULL, NULL),
(48, 83, 10, NULL, NULL),
(49, 84, 6, NULL, NULL),
(50, 87, 9, NULL, NULL),
(51, 88, 5, NULL, NULL),
(52, 90, 10, NULL, NULL),
(53, 94, 5, NULL, NULL),
(54, 96, 6, NULL, NULL),
(55, 102, 5, NULL, NULL),
(56, 106, 9, NULL, NULL),
(57, 107, 6, NULL, NULL),
(58, 107, 13, NULL, NULL),
(59, 107, 11, 'D/O', NULL),
(60, 108, 11, NULL, NULL),
(61, 116, 7, NULL, NULL),
(62, 116, 4, NULL, NULL),
(63, 116, 14, NULL, NULL),
(64, 117, 13, NULL, NULL),
(65, 118, 11, 'D/O', NULL),
(66, 119, 10, NULL, NULL),
(67, 121, 9, NULL, NULL),
(68, 132, 9, NULL, NULL),
(69, 133, 7, NULL, NULL),
(70, 134, 9, NULL, NULL),
(71, 135, 13, NULL, NULL),
(72, 141, 9, NULL, NULL),
(73, 142, 13, NULL, NULL),
(74, 143, 6, NULL, NULL),
(75, 143, 13, NULL, NULL),
(76, 144, 10, NULL, NULL),
(77, 145, 10, NULL, NULL),
(78, 150, 13, NULL, NULL),
(79, 151, 10, NULL, NULL),
(80, 153, 5, NULL, NULL),
(81, 154, 5, NULL, NULL),
(82, 158, 1, NULL, NULL),
(83, 158, 14, NULL, NULL),
(84, 159, 11, NULL, NULL),
(85, 159, 7, NULL, NULL),
(86, 159, 14, NULL, NULL),
(87, 161, 1, NULL, NULL),
(88, 161, 7, NULL, NULL),
(89, 161, 4, NULL, NULL),
(90, 161, 14, NULL, NULL),
(91, 161, 11, 'D/O', NULL),
(92, 166, 10, NULL, NULL),
(93, 169, 7, NULL, NULL),
(94, 169, 14, NULL, NULL),
(95, 170, 9, NULL, NULL),
(96, 171, 9, NULL, NULL),
(97, 174, 5, NULL, NULL),
(98, 175, 11, NULL, NULL),
(99, 177, 14, NULL, NULL),
(100, 177, 11, NULL, NULL),
(101, 178, 7, NULL, NULL),
(102, 179, 7, NULL, NULL),
(103, 179, 14, NULL, NULL),
(104, 179, 11, NULL, NULL),
(105, 182, 1, NULL, NULL),
(106, 182, 4, NULL, NULL),
(107, 185, 1, NULL, NULL),
(108, 187, 9, NULL, NULL),
(109, 188, 5, NULL, NULL),
(110, 194, 9, NULL, NULL),
(111, 198, 9, NULL, NULL),
(112, 199, 9, NULL, NULL),
(113, 200, 5, NULL, NULL),
(114, 203, 9, NULL, NULL),
(115, 205, 7, NULL, NULL),
(116, 205, 14, NULL, NULL),
(117, 205, 11, 'D/O', NULL),
(118, 213, 9, NULL, NULL),
(119, 215, 9, NULL, NULL),
(120, 216, 1, NULL, NULL),
(121, 216, 4, NULL, NULL),
(122, 216, 14, NULL, NULL),
(123, 217, 5, NULL, NULL),
(124, 77, 13, 'D/O', NULL),
(155, 45, 15, NULL, NULL),
(156, 219, 15, NULL, NULL),
(157, 37, 15, NULL, NULL),
(158, 16, 15, NULL, NULL),
(159, 52, 15, NULL, NULL),
(160, 197, 15, NULL, NULL),
(161, 220, 15, NULL, NULL),
(162, 44, 15, NULL, NULL),
(163, 161, 15, NULL, NULL),
(164, 221, 15, NULL, NULL),
(165, 222, 15, NULL, NULL),
(166, 152, 15, NULL, NULL),
(167, 183, 15, NULL, NULL),
(168, 223, 15, NULL, NULL),
(169, 54, 15, NULL, NULL),
(170, 17, 15, NULL, NULL),
(171, 191, 15, NULL, NULL),
(172, 224, 15, NULL, NULL),
(173, 193, 15, NULL, NULL),
(174, 108, 15, NULL, NULL),
(175, 159, 15, NULL, NULL),
(176, 179, 15, NULL, NULL),
(177, 12, 15, NULL, NULL),
(178, 225, 15, NULL, NULL),
(179, 62, 15, NULL, NULL),
(180, 27, 15, NULL, NULL),
(181, 175, 15, NULL, NULL),
(182, 178, 15, NULL, NULL),
(183, 34, 15, NULL, NULL),
(184, 226, 16, NULL, NULL),
(185, 227, 16, NULL, NULL),
(186, 228, 16, NULL, NULL),
(187, 229, 16, NULL, NULL),
(188, 230, 16, NULL, NULL),
(189, 231, 16, NULL, NULL),
(190, 232, 16, NULL, NULL),
(191, 64, 16, NULL, NULL),
(192, 233, 16, NULL, NULL),
(193, 234, 16, NULL, NULL),
(194, 148, 16, NULL, NULL),
(195, 235, 16, NULL, NULL),
(196, 226, 16, NULL, NULL),
(197, 192, 16, NULL, NULL),
(198, 212, 16, NULL, NULL),
(199, 236, 16, NULL, NULL),
(200, 237, 16, NULL, NULL),
(201, 239, 16, NULL, NULL),
(202, 190, 16, NULL, NULL),
(203, 238, 16, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `classrun`
--

CREATE TABLE IF NOT EXISTS `classrun` (
  `CRID` int(11) NOT NULL AUTO_INCREMENT,
  `MCID` int(11) NOT NULL,
  `LOCATION` varchar(100) DEFAULT NULL,
  `START_DATE` varchar(10) DEFAULT NULL,
  `END_DATE` varchar(10) DEFAULT NULL,
  `PRODUCT_CODE` varchar(100) NOT NULL,
  `TID1` int(11) DEFAULT NULL,
  `TID2` int(11) DEFAULT NULL,
  `TID3` int(11) DEFAULT NULL,
  `TID4` int(11) DEFAULT NULL,
  PRIMARY KEY (`CRID`),
  KEY `TD1` (`TID1`),
  KEY `TD2` (`TID2`),
  KEY `MCID` (`MCID`),
  KEY `OBSERVER1` (`TID3`),
  KEY `OBSERVER2` (`TID4`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `classrun`
--

INSERT INTO `classrun` (`CRID`, `MCID`, `LOCATION`, `START_DATE`, `END_DATE`, `PRODUCT_CODE`, `TID1`, `TID2`, `TID3`, `TID4`) VALUES
(1, 4, 'Karkhana', '2014-05-24', '2014-07-12', 'energy45', 1, 4, 9, 8),
(2, 6, 'Elites', '2014-05-27', '2014-07-15', 'MM001', 8, 9, 4, 7),
(3, 4, 'Brihaspati', '2014-05-30', '2014-07-18', 'energy45', 9, 7, 1, 8),
(4, 12, 'Karkhana', '2014-07-19', '2014-09-06', 'EM001', 1, 8, 7, 10),
(5, 10, 'Brihashpati', '2014-10-10', '2014-10-16', 'CC 001', 7, 4, 1, 8),
(6, 4, 'Karkhana', '2014-12-20', '2015-02-07', 'energy45', 7, 4, 8, NULL),
(7, 12, 'Karkhana', '2014-11-29', '2015-01-17', 'EM001', 1, 4, 7, NULL),
(8, 5, 'Karkhana(Elites)', '2014-12-10', '2015-01-28', 'S1-001', 7, 4, 1, 8),
(9, 12, 'Elites', '2014-09-10', '2015-07-29', 'EM001', 1, 4, 8, NULL),
(10, 4, 'Excelsior', '2014-12-16', '2014-12-21', 'energy45', 7, 6, 1, NULL),
(11, 5, 'Karkhana', '2015-01-31', '2015-03-21', 'S1-001', 1, 8, 7, 4),
(12, 8, 'Karkhana', '2015-03-07', '2015-04-25', 'F001', 12, 8, NULL, NULL),
(13, 6, 'Karkhana', '2014-08-02', '2014-09-20', 'MM001', 1, 7, 8, NULL),
(14, 6, 'Karkhana', '2014-07-19', '2014-09-06', 'MM001', 8, 1, NULL, NULL),
(15, 10, 'Karkhana', '2015-06-20', '2015-08-08', 'CC 001', 1, 2, 10, NULL),
(16, 9, 'Karkhana', '2015-06-20', '2015-08-08', 'S2-001', 8, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `masterclass`
--

CREATE TABLE IF NOT EXISTS `masterclass` (
  `MCID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(100) NOT NULL,
  `AgeGroup` varchar(100) NOT NULL,
  PRIMARY KEY (`MCID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `masterclass`
--

INSERT INTO `masterclass` (`MCID`, `ClassName`, `AgeGroup`) VALUES
(3, 'Energy Mela', '8-10'),
(4, 'Energy Mela', '10-14'),
(5, 'Momasur', '10-14'),
(6, 'Music Mela', '10-14'),
(7, 'Music Mela', '8-10'),
(8, 'Farming and Learning', '8-10'),
(9, 'Food Science', '8-10'),
(10, 'Creative Computing ', '10-14'),
(11, 'Music Synthesizer', '10-14'),
(12, 'Electronic Music', '10-14'),
(13, 'Creative Computing 2', '10-14');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(100) DEFAULT NULL,
  `pipedrive_id` int(11) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=240 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `student_name`, `pipedrive_id`) VALUES
(1, 'Aadarsh Nepal', 959),
(2, 'Aarav Timilsina', 1103),
(3, 'Aarodh Nepal', 1191),
(4, 'Aaryan Yadav', 1194),
(5, 'Aashma Shrestha', 1195),
(6, 'Aashreen Tamrakar', 963),
(7, 'Aavani Shrestha', 359),
(8, 'Aavash Tamang', 765),
(9, 'Aayush Bhandari', 1183),
(10, 'Aayush Tuladhar', 957),
(11, 'Abhijit Singh', 713),
(12, 'Abhinab Khemka', 456),
(13, 'Abhinab Parajuli', 81),
(14, 'Abid Thapa', 1186),
(15, 'Abinab Shrestha', 612),
(16, 'Adhikansh Shrestha', 64),
(17, 'Adhiva Rajbhandari', 37),
(18, 'Adit Goenka', 947),
(19, 'Adwait Poudel', 1125),
(20, 'Afsheen Shah', 961),
(21, 'Alan Shah', 353),
(22, 'Amina Tandukar', 126),
(23, 'Amir Baniya', 1218),
(24, 'Amit Uprety', 1223),
(25, 'Anahita Agrawal', 822),
(26, 'Ananya Kedia', 767),
(27, 'Anek Raj Bhandari', 331),
(28, 'Anisha Banskota', 1220),
(29, 'Anjesh Pradhanang', 11),
(30, 'Anmol Limbu', 1187),
(31, 'Anuja Dangol', 941),
(32, 'Anupa Upadhyay', 1207),
(33, 'Anuraj Gyawali', 1228),
(34, 'Apekshya Sitoula', 144),
(35, 'Areeya Tuladhar', 1167),
(36, 'Arnesh Agrawal', 828),
(37, 'Arogya Rijal', 213),
(38, 'Arpan Adhikari', 1205),
(39, 'Arun Mainali', 769),
(40, 'Aryan B. Thapa', 558),
(41, 'Aryendra Shrestha', 1171),
(42, 'Ashish Giri', 1224),
(43, 'Ashutosh Adhikari', 1193),
(44, 'Ashutosh Pant', 34),
(45, 'Avaneesh Chand', 61),
(46, 'Avineet Kansakar', 1229),
(47, 'Ayaman Alam', 717),
(48, 'Ayush Dhoj Chand', 771),
(49, 'Ayusha Chhatkuli', 1225),
(50, 'Ayushi R L Malla', 719),
(51, 'Ayusma Sharma', 54),
(52, 'Basil Pun', 160),
(53, 'Bibek Chaudary', 967),
(54, 'Bikram shrestha', 989),
(55, 'Billjesh M. Baidya', 671),
(56, 'Binayak Khanal', 618),
(57, 'Bipashree Aryal', 1208),
(58, 'Bipin Blon', 1215),
(59, 'Biraj Shrestha', 830),
(60, 'Bishank Bam Malla', 721),
(61, 'Bishes Tuladhar', 1174),
(62, 'Bivut Vaidya', 419),
(63, 'Charvi Chirania', 620),
(64, 'Chetana Bhandari', 114),
(65, 'Danish Shah', 723),
(66, 'David Thapa', 560),
(67, 'Deep Maity', 773),
(68, 'Deepshikha Shrestha', 1190),
(69, 'Dikshya Agrawal', 833),
(70, 'Dipaker Thapa', 1012),
(71, 'Dipankar Bhattarai', 624),
(72, 'Divyansh Agrawal', 837),
(73, 'Dristi Pradhan', 1216),
(74, 'Elijah Rahan Panta', 1124),
(75, 'Gaurav gopal shrestha', 1189),
(76, 'Genius Bist', 779),
(77, 'Gina Basnet', 445),
(78, 'Grishna Vaidya', 1197),
(79, 'Hangsam B. Nembang', 781),
(80, 'Harsh Kanodia', 564),
(81, 'Ichhya Balami', 1230),
(82, 'Ingage Karki', 1198),
(83, 'Ishan Neupane', 1219),
(84, 'Ishan Rana', 1173),
(85, 'Jayan Prajapati', 1122),
(86, 'Jeevika Karki', 787),
(87, 'Jenish Shrestha', 1209),
(88, 'Jesh Ghale', 1185),
(89, 'Jeson K.C', 626),
(90, 'Jolly Kansakar', 1222),
(91, 'Kairawi R. L. Rana', 839),
(92, 'Kasak Goyal', 727),
(93, 'Kasin Lama', 789),
(94, 'Khusi Goyal', 1188),
(95, 'Komal Sharma', 630),
(96, 'Krishant Acharya', 395),
(97, 'Krishna Agrawal', 632),
(98, 'Kritika Subedi', 978),
(99, 'Kritya Shah', 945),
(100, 'kumudini''s Kid', 1120),
(101, 'Lakshya Arukia', 675),
(102, 'Lijah Sikhrakhar', 1192),
(103, 'Lilyanna Gurung', 793),
(104, 'Lisa Shrestha', 1118),
(105, 'Manish Panta', 1069),
(106, 'Manisha Rai', 1202),
(107, 'Manush Shrestha', 192),
(108, 'Manushree Mahat', 238),
(109, 'Manvi Agrawal', 729),
(110, 'Mehul Agrawal', 731),
(111, 'Mingma Lhanmu Lama', 733),
(112, 'Mohammad Ishar', 677),
(113, 'Mrinali Gurung', 568),
(114, 'Muskan Theeng', 634),
(115, 'Neema Lamu Sherpa', 636),
(116, 'Neeva Pradhanang', 25),
(117, 'Nikita Ojha', 207),
(118, 'Nimish Sharma', 368),
(119, 'Nirlep Adhikari', 1226),
(120, 'Nirvik K.C.', 679),
(121, 'Nischal Silwal', 1199),
(122, 'Nischal Singhania', 570),
(123, 'Palisa Manandhar', 638),
(124, 'Parabdha Jung Sijapati', 735),
(125, 'Paridhi Agrawal', 640),
(126, 'Pasang Lakhi Sherpa', 847),
(127, 'Prabesh Thapa', 797),
(128, 'Prabhav B. Shah', 849),
(129, 'Prabigya Dhakal', 101),
(130, 'Pramil Prasai', 574),
(131, 'Pranjal Timilsina', 1058),
(132, 'Prasamsha Pandey', 1206),
(133, 'Prasannata Joshi', 322),
(134, 'Prashasti Shahi', 1212),
(135, 'Prayug Bijukchee', 554),
(136, 'Prescia', 31),
(137, 'Priyanshu Agrawal', 851),
(138, 'Priyesh Agrawa', 737),
(139, 'Purnika wasti', 1092),
(140, 'Radhika Tibra', 853),
(141, 'Ranjana Thapa Magar', 1210),
(142, 'Rebicca Subedi', 165),
(143, 'Resha Rana', 365),
(144, 'Reshma Basnet', 1231),
(145, 'Richa Ghimire', 1221),
(146, 'Ridhee Singhania', 855),
(147, 'Rimsha Shrama', 681),
(148, 'Rinav Agrawal', 1144),
(149, 'Rishab Agrawal', 739),
(150, 'Rishikesh Pokharel', 355),
(151, 'Ritu Manandhar', 1232),
(152, 'Rizul Shrestha', 112),
(153, 'Ronish Subba', 1181),
(154, 'Rozway Regmi', 1182),
(155, 'Ryan K.C', 741),
(156, 'Saanvi Acharya', 492),
(157, 'Sadikshya Tulachan', 687),
(158, 'Saharsha Thapaliya', 349),
(159, 'Saish Bhandari', 152),
(161, 'Sakshyam Shrestha', 123),
(162, 'Samid Tandon', 685),
(163, 'Samikshya Bista', 859),
(164, 'Samragi Acharya', 1123),
(165, 'Samridha Roka', 580),
(166, 'Samyukta Aryal', 1227),
(167, 'Sarah Timilsina', 644),
(168, 'Satyam Pathak', 799),
(169, 'Sauhard Shrestha', 523),
(170, 'Sehnaz Sheikh', 1204),
(171, 'Shashank B. Ale', 1200),
(172, 'Shivan Josee', 582),
(173, 'Shreeyukta Adhikari', 745),
(174, 'Shreya Shrestha', 1177),
(175, 'Shreyansh Parajuli', 74),
(176, 'Shuva K. Tamang', 646),
(177, 'Siddhant Lamichhane', 52),
(178, 'Siddhartha Bajracharya', 447),
(179, 'Siddhartha Shakya', 132),
(180, 'Siddhartha Thapa', 1013),
(181, 'Sidhhartha Bajracharya', 901),
(182, 'Simfera Ranjitkar', 500),
(183, 'Sizen Thapa', 928),
(184, 'Sneha Agrawal', 861),
(185, 'Sochita Tuladhar', 104),
(186, 'Sriyam Singhania', 586),
(187, 'Stuti Kafle', 1201),
(188, 'Subha Adhikari', 1179),
(189, 'Subham Adhikari', 511),
(190, 'Subham Regmi', 1119),
(191, 'Subham S. Dhakal', 1104),
(192, 'Subhashis Thapa', 1129),
(193, 'Subhashree Bhatta', 1074),
(194, 'sudeep shrestha', 1196),
(195, 'Suhani Agrawal', 863),
(196, 'Sujal Adhikari', 1170),
(197, 'Sujal Sharma', 1113),
(198, 'Sulav K.C.', 1217),
(199, 'Sunita Ghising', 1203),
(200, 'Surabhi Dhungana', 1178),
(201, 'Surya Aditya Rana', 90),
(202, 'Sushad Dhakal', 1065),
(203, 'Sushma Tamang', 1211),
(204, 'Suyash Pandey', 588),
(205, 'Swanti Shrestha', 277),
(206, 'Swastika Ghimire', 982),
(207, 'Swochhandika Giri', 590),
(208, 'SwornaDhan Tuladhar', 691),
(209, 'Tannvi Agrawal', 1121),
(210, 'Tanvi Agrawal', 592),
(211, 'Tenzin P. Shrepa', 648),
(212, 'Trinayh Agrawal', 693),
(213, 'Upantey Maharjan', 1214),
(214, 'UshaKiran Acharya', 695),
(215, 'Utsarga Sapkota', 1213),
(216, 'Vishesh Shrestha', 1175),
(217, 'Vishwesh Sharma', 1180),
(218, 'Zoya Ahmed', 747),
(219, 'Devansh Depakdutta', 1114),
(220, 'Gaurav Bhatta', 1112),
(221, 'Sambhavi Dhakal', 1111),
(222, 'Subodh Pokhrel', 1110),
(223, 'Hrisab Shrestha', 1109),
(224, 'Amartya Kanta Adhikari', 1108),
(225, 'Anjali Kedia', 424),
(226, 'Subham Kedia', 1115),
(227, 'Aadil Saraff', 1139),
(228, 'Adit Lohani', 1117),
(229, 'Aayushman Ghale', 263),
(230, 'Amodini Thapa', 1095),
(231, 'Anish Lohani', 1116),
(232, 'Ayaan Agrawal', 669),
(233, 'Cyiera Suvangani Bajgain', 1126),
(234, 'Krishv Agrawal', 1140),
(235, 'Samidha shrestha ', 411),
(236, 'Vanee Pathak', 1089),
(237, 'Vishesh Agrawal', 1087),
(238, 'Suddica Regmi', 1235),
(239, 'Riddhika Lamichhane', 1239);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `TID` int(11) NOT NULL AUTO_INCREMENT,
  `TEACHER_NAME` varchar(100) NOT NULL,
  `PIPEDRIVE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TID`),
  UNIQUE KEY `PIPEDRIVE_ID` (`PIPEDRIVE_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`TID`, `TEACHER_NAME`, `PIPEDRIVE_ID`) VALUES
(1, 'Dipeshwor Man Shrestha', 4),
(2, 'Hasin Shakya', 5),
(3, 'Pavitra Gautam', 1),
(4, 'Roshan Bhatta', 7),
(5, 'Sachet Manadar', 3),
(6, 'Sakar Pudasaini', 2),
(7, 'Sunoj Shrestha', 6),
(8, 'Suresh Ghimire', 8),
(9, 'Ajay Shrestha', 1107),
(10, 'Soul Joshi', 477),
(11, 'Samana Shrestha', 1106),
(12, 'Priya Joshi', 324),
(13, 'Aakriti Thapa', 1238);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classattended`
--
ALTER TABLE `classattended`
  ADD CONSTRAINT `classattended_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`),
  ADD CONSTRAINT `classattended_ibfk_2` FOREIGN KEY (`crid`) REFERENCES `classrun` (`CRID`);

--
-- Constraints for table `classrun`
--
ALTER TABLE `classrun`
  ADD CONSTRAINT `classrun_ibfk_1` FOREIGN KEY (`TID1`) REFERENCES `teacher` (`TID`),
  ADD CONSTRAINT `classrun_ibfk_2` FOREIGN KEY (`TID2`) REFERENCES `teacher` (`TID`),
  ADD CONSTRAINT `classrun_ibfk_3` FOREIGN KEY (`MCID`) REFERENCES `masterclass` (`MCID`),
  ADD CONSTRAINT `classrun_ibfk_4` FOREIGN KEY (`TID3`) REFERENCES `teacher` (`TID`),
  ADD CONSTRAINT `classrun_ibfk_5` FOREIGN KEY (`TID4`) REFERENCES `teacher` (`TID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
