-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2018 at 05:50 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackathon`
--

-- --------------------------------------------------------

--
-- Table structure for table `counselling`
--

CREATE TABLE `counselling` (
  `Sno` int(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `txtNameVIC` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ddlContactNoVIC` bigint(15) NOT NULL,
  `address` varchar(500) NOT NULL,
  `ddlEmailVIC` varchar(100) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `ddlCategory` varchar(100) NOT NULL,
  `txtCmpDetail` varchar(1000) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counselling`
--

INSERT INTO `counselling` (`Sno`, `user_id`, `txtNameVIC`, `password`, `ddlContactNoVIC`, `address`, `ddlEmailVIC`, `occupation`, `ddlCategory`, `txtCmpDetail`, `time`) VALUES
(1, 'samyak jain62259144', 'samyak jain', '', 9630666225, 'tikamgarh tikamgarh Madhya Pradesh', '', '', '', '', '2018-03-05 19:20:11'),
(2, 'Divyanshi Chaturvedi623320390', 'Divyanshi Chaturvedi', 'password', 8871326233, 'E-117/18 shivaji nagar Bhopal Madhya Pradesh', 'divyanshi0301@gmail.com', 'nbsn', '5', 'hbhbhbha', '2018-03-06 17:00:30'),
(3, 'Divyanshi Chaturvedi623312058', 'Divyanshi Chaturvedi', 'password', 8871326233, 'E-117/18 shivaji nagar Bhopal Madhya Pradesh', 'divyanshi0301@gmail.com', 'nbsn', '5', 'hbhbhbha', '2018-03-06 17:01:30'),
(4, 'Divyanshi Chaturvedi623310827', 'Divyanshi Chaturvedi', 'password', 8871326233, 'E-117/18 shivaji nagar Bhopal Madhya Pradesh', 'divyanshi0301@gmail.com', 'nbsn', '5', 'hbhbhbha', '2018-03-06 17:13:57'),
(5, 'Divyanshi Chaturvedi62332777', 'Divyanshi Chaturvedi', 'password', 8871326233, 'E-117/18 shivaji nagar Bhopal Madhya Pradesh', 'divyanshi0301@gmail.com', 'sdcfvb', '5', 'szdxvgb', '2018-03-06 18:59:49');

-- --------------------------------------------------------

--
-- Table structure for table `status_table`
--

CREATE TABLE `status_table` (
  `Sno` int(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_table`
--

INSERT INTO `status_table` (`Sno`, `user_id`, `status`) VALUES
(1, 'sam jain898607', 'hsj'),
(2, 'sam jain898607', 'hsj'),
(3, 'Divyanshi Chaturvedi62336179', 'Registered'),
(4, 'sam11536', 'Registered'),
(5, 'sam1687', 'Registered'),
(6, 'sam16393', 'Registered');

-- --------------------------------------------------------

--
-- Table structure for table `usercomplaints`
--

CREATE TABLE `usercomplaints` (
  `user_id` varchar(100) NOT NULL,
  `txtNameCmp` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `txtAddressCMP` varchar(500) NOT NULL,
  `ddlStateCMP` varchar(100) NOT NULL,
  `ddlCityCMP` varchar(100) NOT NULL,
  `txtPinNoCMP` int(10) NOT NULL,
  `txtEmailCMP` varchar(100) NOT NULL,
  `txtContactNoCMP` bigint(15) NOT NULL,
  `ddlSexCMP` varchar(30) NOT NULL,
  `txtNameVIC` varchar(50) NOT NULL,
  `txtAddressVIC` varchar(500) NOT NULL,
  `ddlStateVIC` varchar(100) NOT NULL,
  `ddlCityVIC` varchar(100) NOT NULL,
  `ddlPinNoVIC` int(10) NOT NULL,
  `ddlEmailVIC` varchar(100) NOT NULL,
  `ddlContactNoVIC` bigint(15) NOT NULL,
  `ddlSexVIC` varchar(20) NOT NULL,
  `txtDOB` date NOT NULL,
  `ddlReligionVIC` varchar(100) NOT NULL,
  `ddlChallengeVIC` varchar(100) NOT NULL,
  `ddlCastVIC` varchar(100) NOT NULL,
  `txtNameRESP` varchar(100) NOT NULL,
  `txtAddressRESP` varchar(500) NOT NULL,
  `ddlStateRESP` varchar(100) NOT NULL,
  `ddlCityRESP` varchar(100) NOT NULL,
  `txtPinNoRESP` int(10) NOT NULL,
  `txtEmailRESP` varchar(100) NOT NULL,
  `txtContactNoRESP` bigint(20) NOT NULL,
  `ddlSexRESP` varchar(19) NOT NULL,
  `ddlCategory` varchar(500) NOT NULL,
  `ddlSubCategory` varchar(500) NOT NULL,
  `txtDeptRESP` varchar(100) NOT NULL,
  `txtDOI` date NOT NULL,
  `txtCmpDetail` varchar(1000) NOT NULL,
  `rdbPendingCourt` varchar(10) NOT NULL,
  `txtCourtCaseNumber` varchar(50) NOT NULL,
  `rdbPendingSWC` varchar(10) NOT NULL,
  `txtSWCRegNumber` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usercomplaints`
--

INSERT INTO `usercomplaints` (`user_id`, `txtNameCmp`, `password`, `txtAddressCMP`, `ddlStateCMP`, `ddlCityCMP`, `txtPinNoCMP`, `txtEmailCMP`, `txtContactNoCMP`, `ddlSexCMP`, `txtNameVIC`, `txtAddressVIC`, `ddlStateVIC`, `ddlCityVIC`, `ddlPinNoVIC`, `ddlEmailVIC`, `ddlContactNoVIC`, `ddlSexVIC`, `txtDOB`, `ddlReligionVIC`, `ddlChallengeVIC`, `ddlCastVIC`, `txtNameRESP`, `txtAddressRESP`, `ddlStateRESP`, `ddlCityRESP`, `txtPinNoRESP`, `txtEmailRESP`, `txtContactNoRESP`, `ddlSexRESP`, `ddlCategory`, `ddlSubCategory`, `txtDeptRESP`, `txtDOI`, `txtCmpDetail`, `rdbPendingCourt`, `txtCourtCaseNumber`, `rdbPendingSWC`, `txtSWCRegNumber`, `time`, `date`) VALUES
('sam jain898607', '', '', 'sdmhfdzvbmcn ', '2', '33', 135364, 'esfgbcv', 1234567895, '5', 'sam jain', 'fdvncc,mn,d', '2', '33', 123466, 'dsfkjgvnmc', 13456789, '5', '1991-06-18', '6', '1', '2', 'fd', 'cgbvhnbgvjnh', '2', '33', 123456, 'hgfdgvb', 234567895, '4', '5', ' ', 'hgfghj', '2018-02-28', 'ghhhhhhhggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg', '0', 'nil', '0', 'nil', '2018-03-06 09:52:47', NULL),
('pra885420025', 'div', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'pra', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 09:56:49', NULL),
('pra885430175', '', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'pra', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 09:59:12', NULL),
('pra885421036', '', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'pra', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 09:59:16', NULL),
('pra88545365', '', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'pra', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 09:59:20', NULL),
('pra885417034', 'divre', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'pra', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 09:59:42', NULL),
('pra885429632', 'sam', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'pra', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 09:59:58', NULL),
('pra88544347', 'sachin', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'pra', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 10:00:19', NULL),
('pratayusha88543486', 'nahima', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'pratayusha', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 10:04:35', NULL),
('prayu88542929', 'samee', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'prayu', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 10:05:07', NULL),
('prayu885430969', '', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'prayu', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 10:05:15', NULL),
('prayu88544158', '', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'prayu', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 10:05:19', NULL),
('prayu885432086', '', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'prayu', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 10:05:25', NULL),
('prayu885416855', '', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'prayu', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 10:05:29', NULL),
('prayu88542933', '', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'prayu', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 10:54:31', NULL),
('prayu885432415', '', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'prayu', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 10:55:51', NULL),
('prayu885414090', '', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'prayu', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 10:56:41', NULL),
('prayu88543052', '', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'prayu', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 10:58:15', NULL),
('prayu885420629', '', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'prayu', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 11:06:50', NULL),
('prayu885411189', '', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'prayu', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 11:07:42', NULL),
('prayu885411131', '', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'prayu', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 11:08:21', NULL),
('prayu885429258', '', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'prayu', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 11:09:57', NULL),
('prayu885411672', '', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'prayu', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 11:11:14', NULL),
('prayu885426043', '', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'prayu', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 11:11:53', NULL),
('prayu885427121', '', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'prayu', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 11:12:23', NULL),
('prayu885431448', '', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'prayu', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 11:15:09', NULL),
('prayu885414806', '', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'prayu', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 11:15:38', NULL),
('prayu88541111', '', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'prayu', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 11:20:18', NULL),
('pratayusha88541148', 'dajs', '', 'wuqueiorufhdjmznx', '2', '33', 123456, 'kdjhkjvhkjcvh', 2154657895, '5', 'pratayusha', 'mdfnskjlkrlfr', '19', '33', 123456, 'dfjhsuirufvjhjd', 2154878854, '5', '1995-02-07', '6', '1', '2', 'sachin sharma', 'jhcjkdivjikcj', '5', '33', 546123, 'dkjkfcccccccccccccc', 5461237895, '3', '5', ' ', 'djsdfjkdshjfhkdsfh', '2018-03-04', 'dkjffjfffffffffffffffffffffffffffffffffffffffffffffffffff', '0', 'nil', '0', 'nil', '2018-03-06 11:39:22', NULL),
('Nahima789526902', 'sam', '', 'dnbjgrheiufujdskvfid', 'Andaman and Nicobar Islands', '33', 123456, 'dsfjnireuigvuirg', 1234567895, 'FEMALE', 'Nahima', 'snbfjkchiurfjirjeoiv', 'Andhra Pradesh', 'TIKAMGARH', 123456, 'jshjufdiujficdjifcjsifcd', 1234567895, 'FEMALE', '2010-02-02', 'MUSLIMS', 'NOT APPLICABLE', 'GENERAL', 'mahmood', 'mncxjkdfivjdoi', 'Arunachal Pradesh', '33', 456799, 'dcnhhhhhhhhhhhhh', 9856741235, 'FEMALE', 'Bigamy / Polygamy', ' ', 'sajhfuhedujfred', '2018-02-27', 'msndlcksjgpofirekoeriago;pireoiovfgiko;iv;of', '0', 'nil', '0', 'nil', '2018-03-06 11:51:23', NULL),
('Divyanshi789529420', 'sam', '', 'dnbjgrheiufujdskvfid', 'Andaman and Nicobar Islands', '33', 123456, 'dsfjnireuigvuirg', 1234567895, 'FEMALE', 'Divyanshi', 'snbfjkchiurfjirjeoiv', 'Andhra Pradesh', 'TIKAMGARH', 123456, 'jshjufdiujficdjifcjsifcd', 1234567895, 'FEMALE', '2010-02-02', 'MUSLIMS', 'NOT APPLICABLE', 'GENERAL', 'Mohak', 'mncxjkdfivjdoi', 'Arunachal Pradesh', '33', 456799, 'dcnhhhhhhhhhhhhh', 9856741235, 'FEMALE', 'Bigamy / Polygamy', ' ', 'sajhfuhedujfred', '2018-02-27', 'msndlcksjgpofirekoeriago;pireoiovfgiko;iv;of', '0', 'nil', '0', 'nil', '2018-03-06 11:52:35', NULL),
('Divyanshi78951717', '', '', 'dnbjgrheiufujdskvfid', 'Andaman and Nicobar Islands', '33', 123456, 'dsfjnireuigvuirg', 1234567895, 'FEMALE', 'Divyanshi', 'snbfjkchiurfjirjeoiv', 'Andhra Pradesh', 'TIKAMGARH', 123456, 'jshjufdiujficdjifcjsifcd', 1234567895, 'FEMALE', '2010-02-02', 'MUSLIMS', 'NOT APPLICABLE', 'GENERAL', 'Mohak', 'mncxjkdfivjdoi', 'Arunachal Pradesh', '33', 456799, 'dcnhhhhhhhhhhhhh', 9856741235, 'FEMALE', 'Bigamy / Polygamy', ' ', 'sajhfuhedujfred', '2018-02-27', 'msndlcksjgpofirekoeriago;pireoiovfgiko;iv;of', '0', 'nil', '0', 'nil', '2018-03-06 12:02:50', NULL),
('Divyanshi789528077', '', '', 'dnbjgrheiufujdskvfid', 'Andaman and Nicobar Islands', '33', 123456, 'dsfjnireuigvuirg', 1234567895, 'FEMALE', 'Divyanshi', 'snbfjkchiurfjirjeoiv', 'Andhra Pradesh', 'TIKAMGARH', 123456, 'jshjufdiujficdjifcjsifcd', 1234567895, 'FEMALE', '2010-02-02', 'MUSLIMS', 'NOT APPLICABLE', 'GENERAL', 'Mohak', 'mncxjkdfivjdoi', 'Arunachal Pradesh', '33', 456799, 'dcnhhhhhhhhhhhhh', 9856741235, 'FEMALE', 'Bigamy / Polygamy', ' ', 'sajhfuhedujfred', '2018-02-27', 'msndlcksjgpofirekoeriago;pireoiovfgiko;iv;of', '0', 'nil', '0', 'nil', '2018-03-06 12:49:26', '1970-01-01'),
('Divyanshi789514523', '', '', 'dnbjgrheiufujdskvfid', 'Andaman and Nicobar Islands', '33', 123456, 'dsfjnireuigvuirg', 1234567895, 'FEMALE', 'Divyanshi', 'snbfjkchiurfjirjeoiv', 'Andhra Pradesh', 'TIKAMGARH', 123456, 'jshjufdiujficdjifcjsifcd', 1234567895, 'FEMALE', '2010-02-02', 'MUSLIMS', 'NOT APPLICABLE', 'GENERAL', 'Mohak', 'mncxjkdfivjdoi', 'Arunachal Pradesh', '33', 456799, 'dcnhhhhhhhhhhhhh', 9856741235, 'FEMALE', 'Bigamy / Polygamy', ' ', 'sajhfuhedujfred', '2018-02-27', 'msndlcksjgpofirekoeriago;pireoiovfgiko;iv;of', '0', 'nil', '0', 'nil', '2018-03-06 12:50:43', '1970-01-01'),
('Divyanshi78951370', '', '', 'dnbjgrheiufujdskvfid', 'Andaman and Nicobar Islands', '33', 123456, 'dsfjnireuigvuirg', 1234567895, 'FEMALE', 'Divyanshi', 'snbfjkchiurfjirjeoiv', 'Andhra Pradesh', 'TIKAMGARH', 123456, 'jshjufdiujficdjifcjsifcd', 1234567895, 'FEMALE', '2010-02-02', 'MUSLIMS', 'NOT APPLICABLE', 'GENERAL', 'Mohak', 'mncxjkdfivjdoi', 'Arunachal Pradesh', '33', 456799, 'dcnhhhhhhhhhhhhh', 9856741235, 'FEMALE', 'Bigamy / Polygamy', ' ', 'sajhfuhedujfred', '2018-02-27', 'msndlcksjgpofirekoeriago;pireoiovfgiko;iv;of', '0', 'nil', '0', 'nil', '2018-03-06 12:52:14', '2018-03-06'),
('Divyanshi Chaturvedi62339737', '', '', 'E-117/18 shivaji nagar', '20', '33', 462016, 'divyanshi0301@gmail.com', 8871326233, 'FEMALE', 'Divyanshi Chaturvedi', 'E-117/18 shivaji nagar', '20', 'TIKAMGARH', 462016, 'divyanshi0301@gmail.com', 8871326233, 'FEMALE', '1970-01-01', 'Not-Mentioned', 'NOT APPLICABLE', 'SCHEDULE CAST', 'nbcnn', 'sn', 'Arunachal Pradesh', '33', 22, 'ss', 22, 'Not-Mentioned', 'Bigamy / Polygamy', ' ', 'Bhopal', '2018-03-09', 'na', '0', 'nil', '0', 'nil', '2018-03-06 16:51:34', '2018-03-06'),
('Divyanshi Chaturvedi62339737', '', '', 'E-117/18 shivaji nagar', '20', '33', 462016, 'divyanshi0301@gmail.com', 8871326233, 'FEMALE', 'Divyanshi Chaturvedi', 'E-117/18 shivaji nagar', '20', 'TIKAMGARH', 462016, 'divyanshi0301@gmail.com', 8871326233, 'FEMALE', '1970-01-01', 'Not-Mentioned', 'NOT APPLICABLE', 'SCHEDULE CAST', 'nbcnn', 'sn', 'Arunachal Pradesh', '33', 22, 'ss', 22, 'Not-Mentioned', 'Bigamy / Polygamy', ' ', 'Bhopal', '2018-03-09', 'na', '0', 'nil', '0', 'nil', '2018-03-06 16:51:34', '2018-03-06'),
('Divyanshi Chaturvedi62336703', '', '', 'E-117/18 shivaji nagar', '20', '33', 462016, 'divyanshi0301@gmail.com', 8871326233, 'FEMALE', 'Divyanshi Chaturvedi', 'E-117/18 shivaji nagar', '20', 'TIKAMGARH', 462016, 'divyanshi0301@gmail.com', 8871326233, 'FEMALE', '1970-01-01', 'Not-Mentioned', 'NOT APPLICABLE', 'SCHEDULE CAST', 'nbcnn', 'sn', 'Arunachal Pradesh', '33', 22, 'ss', 22, 'Not-Mentioned', 'Bigamy / Polygamy', ' ', 'Bhopal', '2018-03-09', 'na', '0', 'nil', '0', 'nil', '2018-03-06 16:54:10', '2018-03-06'),
('Divyanshi Chaturvedi62336703', '', '', 'E-117/18 shivaji nagar', '20', '33', 462016, 'divyanshi0301@gmail.com', 8871326233, 'FEMALE', 'Divyanshi Chaturvedi', 'E-117/18 shivaji nagar', '20', 'TIKAMGARH', 462016, 'divyanshi0301@gmail.com', 8871326233, 'FEMALE', '1970-01-01', 'Not-Mentioned', 'NOT APPLICABLE', 'SCHEDULE CAST', 'nbcnn', 'sn', 'Arunachal Pradesh', '33', 22, 'ss', 22, 'Not-Mentioned', 'Bigamy / Polygamy', ' ', 'Bhopal', '2018-03-09', 'na', '0', 'nil', '0', 'nil', '2018-03-06 16:54:10', '2018-03-06'),
('Divyanshi Chaturvedi623315080', '', '', 'E-117/18 shivaji nagar', '20', '33', 462016, 'divyanshi0301@gmail.com', 8871326233, 'FEMALE', 'Divyanshi Chaturvedi', 'E-117/18 shivaji nagar', '20', 'TIKAMGARH', 462016, 'divyanshi0301@gmail.com', 8871326233, 'FEMALE', '1970-01-01', 'Not-Mentioned', 'NOT APPLICABLE', 'SCHEDULE CAST', 'nbcnn', 'sn', 'Arunachal Pradesh', '33', 22, 'ss', 22, 'Not-Mentioned', 'Bigamy / Polygamy', ' ', 'Bhopal', '2018-03-09', 'na', '0', 'nil', '0', 'nil', '2018-03-06 16:55:03', '2018-03-06'),
('Divyanshi Chaturvedi623315080', '', '', 'E-117/18 shivaji nagar', '20', '33', 462016, 'divyanshi0301@gmail.com', 8871326233, 'FEMALE', 'Divyanshi Chaturvedi', 'E-117/18 shivaji nagar', '20', 'TIKAMGARH', 462016, 'divyanshi0301@gmail.com', 8871326233, 'FEMALE', '1970-01-01', 'Not-Mentioned', 'NOT APPLICABLE', 'SCHEDULE CAST', 'nbcnn', 'sn', 'Arunachal Pradesh', '33', 22, 'ss', 22, 'Not-Mentioned', 'Bigamy / Polygamy', ' ', 'Bhopal', '2018-03-09', 'na', '0', 'nil', '0', 'nil', '2018-03-06 16:55:03', '2018-03-06'),
('Divyanshi Chaturvedi62336179', 'Divyanshi Chaturvedi', '1234', 'E-117/18 shivaji nagar', '20', '33', 462016, 'divyanshi0301@gmail.com', 8871326233, 'MALE', 'Divyanshi Chaturvedi', 'E-117/18 shivaji nagar', '20', 'TIKAMGARH', 462016, 'divyanshi0301@gmail.com', 8871326233, 'BOTH', '1970-01-01', 'JAIN', 'NOT APPLICABLE', '1', 'sam', 'assdfgh', 'Assam', '33', 2345, 'sadfghg', 23454, 'MALE', 'Cyber Crime against women', ' ', 'qwert', '2018-02-28', 'waesrtfghjgfd', '0', 'nil', '0', 'nil', '2018-03-06 18:28:18', '2018-03-06'),
('Divyanshi Chaturvedi62336179', 'Divyanshi Chaturvedi', '1234', 'E-117/18 shivaji nagar', '20', '33', 462016, 'divyanshi0301@gmail.com', 8871326233, 'MALE', 'Divyanshi Chaturvedi', 'E-117/18 shivaji nagar', '20', 'TIKAMGARH', 462016, 'divyanshi0301@gmail.com', 8871326233, 'BOTH', '1970-01-01', 'JAIN', 'NOT APPLICABLE', '1', 'sam', 'assdfgh', 'Assam', '33', 2345, 'sadfghg', 23454, 'MALE', 'Cyber Crime against women', ' ', 'qwert', '2018-02-28', 'waesrtfghjgfd', '0', 'nil', '0', 'nil', '2018-03-06 18:28:18', '2018-03-06'),
('sam16393', '', '', 'sadf', 'Andaman and Nicobar Islands', '33', 123, 'errh', 452, 'FEMALE', 'sam', 'effdg', 'Andaman and Nicobar Islands', 'TIKAMGARH', 32, 'rfgd', 4, 'FEMALE', '2018-03-01', 'HINDU', 'NOT APPLICABLE', 'GENERAL', 'fds', 'df', 'Andaman and Nicobar Islands', '33', 456, 'gdsz', 5436, 'FEMALE', 'Bigamy / Polygamy', ' ', 'fgh', '2018-03-05', 'ghg', '0', 'nil', '0', 'nil', '2018-03-11 16:31:46', '2018-03-11'),
('sam16393', '', '', 'sadf', 'Andaman and Nicobar Islands', '33', 123, 'errh', 452, 'FEMALE', 'sam', 'effdg', 'Andaman and Nicobar Islands', 'TIKAMGARH', 32, 'rfgd', 4, 'FEMALE', '2018-03-01', 'HINDU', 'NOT APPLICABLE', 'GENERAL', 'fds', 'df', 'Andaman and Nicobar Islands', '33', 456, 'gdsz', 5436, 'FEMALE', 'Bigamy / Polygamy', ' ', 'fgh', '2018-03-05', 'ghg', '0', 'nil', '0', 'nil', '2018-03-11 16:31:46', '2018-03-11'),
('sam16393', '', '', 'sadf', 'Andaman and Nicobar Islands', '33', 123, 'errh', 452, 'FEMALE', 'sam', 'effdg', 'Andaman and Nicobar Islands', 'TIKAMGARH', 32, 'rfgd', 4, 'FEMALE', '2018-03-01', 'HINDU', 'NOT APPLICABLE', 'GENERAL', 'fds', 'df', 'Andaman and Nicobar Islands', '33', 456, 'gdsz', 5436, 'FEMALE', 'Bigamy / Polygamy', ' ', 'fgh', '2018-03-05', 'ghg', '0', 'nil', '0', 'nil', '2018-03-11 16:31:46', '2018-03-11');

-- --------------------------------------------------------

--
-- Table structure for table `user_complaint`
--

CREATE TABLE `user_complaint` (
  `user_id` varchar(100) NOT NULL,
  `com_name` varchar(100) NOT NULL,
  `com_email` varchar(100) NOT NULL,
  `com_mobile` bigint(11) NOT NULL,
  `date` date NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_complaint`
--

INSERT INTO `user_complaint` (`user_id`, `com_name`, `com_email`, `com_mobile`, `date`, `time`) VALUES
('asae32600', 'asa', 'jainsameeksha729@gmail.com', 1234567895, '2018-02-27', '2018-03-02 18:30:00'),
('same14559', 'sam', 'jainsameeksha729@gmail.com', 1234567895, '2018-02-27', '2018-03-02 18:30:00'),
('samee4273', 'same', 'jainsameeksha729@gmail.com', 1234567893, '2018-02-27', '2018-03-02 18:30:00'),
('samee588', 'same', 'jainsameeksha729@gmail.com', 1234567897, '2018-02-27', '2018-03-02 18:30:00'),
('anue21141', 'anu', 'jainsameeksha729@gmail.com', 1234567896, '2018-02-27', '2018-03-02 18:30:00'),
('anu789621644', 'anu', 'jainsameeksha729@gmail.com', 1234567896, '2018-02-27', '2018-03-02 18:30:00'),
('sam89519684', 'sam', 'jainsameeksha729@gmail.com', 1235678951, '2018-02-28', '2018-03-02 18:30:00'),
('sam895122836', 'sam', 'jainsameeksha729@gmail.com', 1235678951, '2018-02-28', '2018-03-02 18:30:00'),
('aaa34869', 'aaa', 'jainsameeksha729@gmail.com', 987648693, '2018-05-03', '2018-03-03 14:24:31'),
('bhbh347581', 'bhbh', 'jainanu729@gmail.com', 465898347, '2018-03-03', '2018-03-03 14:27:27'),
('bhbhertyu3477846', 'bhbhertyu', 'jainanu729@gmail.com', 458988347, '2018-03-03', '2018-03-03 14:29:49'),
('bhbhertyu347130483', 'bhbhertyu', 'jainanu729@gmail.com', 4589883471, '2018-03-03', '2018-03-03 14:31:21'),
('wuruer35811600', 'wuruer', 'jainanu729@gmail.com', 458988358, '2018-03-03', '2018-03-03 14:48:16'),
('wuruer47232184', 'wuruer', 'jainanu729@gmail.com', 4589834723, '2018-03-03', '2018-03-03 14:48:36'),
('mnbh678913112', 'mnbh', 'jainanu729@gmail.com', 4589836789, '2018-03-03', '2018-03-03 14:49:20'),
('mnbh67893857', 'mnbh', 'jainanu729@gmail.com', 1234576789, '2018-03-03', '2018-03-03 14:51:50'),
('mnbh43211739', 'mnbh', 'jainanu729@gmail.com', 9087654321, '2018-03-03', '2018-03-03 14:52:04'),
('mnbh478918550', 'mnbh', 'jainanu729@gmail.com', 7890654789, '2018-03-03', '2018-03-03 14:52:20');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `counselling`
--
ALTER TABLE `counselling`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `status_table`
--
ALTER TABLE `status_table`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `user_complaint`
--
ALTER TABLE `user_complaint`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `counselling`
--
ALTER TABLE `counselling`
  MODIFY `Sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `status_table`
--
ALTER TABLE `status_table`
  MODIFY `Sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
