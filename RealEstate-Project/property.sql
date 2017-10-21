-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2017 at 09:09 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `property`
--

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE IF NOT EXISTS `details` (
`id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `proid` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `images`, `proid`) VALUES
(1, '1.jpg', 1),
(2, '2.jpg', 1),
(3, '3.jpg', 1),
(4, '4.jpg', 1),
(5, '5.jpg', 1),
(6, '6.jpg', 1),
(7, '6.jpg', 2),
(8, '7.jpg', 2),
(9, '8.jpg', 2),
(10, '9.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `propety`
--

CREATE TABLE IF NOT EXISTS `propety` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `monthly` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `access` varchar(100) NOT NULL,
  `floor` varchar(100) NOT NULL,
  `utility` varchar(255) NOT NULL,
  `descrip` text NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `propety`
--

INSERT INTO `propety` (`id`, `name`, `monthly`, `address`, `access`, `floor`, `utility`, `descrip`, `images`) VALUES
(1, 'Eiffel Tower', '$5000', 'FRANCE , PARIS', 'PUBLIC', '10', 'EVERYTHING', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes ', '7.jpg'),
(2, 'Empire State Building', '$7000', 'Usa , Wahington', 'Public', '58', 'All kinds', 'ndustry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Let', '4.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `propety`
--
ALTER TABLE `propety`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `propety`
--
ALTER TABLE `propety`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
