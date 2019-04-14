-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 26, 2015 at 10:36 AM
-- Server version: 5.5.41
-- PHP Version: 5.4.36-0+deb7u3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `datalogger`
--
CREATE DATABASE `datalogger` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `datalogger`;

-- --------------------------------------------------------

--
-- Table structure for table `datalogger`
--

CREATE TABLE IF NOT EXISTS `datalogger` (
  `date_time` datetime DEFAULT NULL,
  `sensor` varchar(32) DEFAULT NULL,
  `temperature` float unsigned DEFAULT NULL,
  `humidity` float unsigned DEFAULT NULL,
  `pwm` int(11) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datalogger`
--

INSERT INTO `datalogger` (`date_time`, `sensor`, `temperature`, `humidity`, `pwm`) VALUES
('2015-02-26 06:30:04', '9', 21.8, 85.4, 0),
('2015-02-26 06:30:06', '8', 21.7, 80.3, 0),
('2015-02-26 06:30:07', '7', 22.1, 27.9, 0),


-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `date_time` datetime DEFAULT NULL,
  `sensor` varchar(32) DEFAULT NULL,
  `temperature` float unsigned DEFAULT NULL,
  `humidity` float unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`date_time`, `sensor`, `temperature`, `humidity`) VALUES
('2015-01-25 00:00:00', '8', NULL, NULL),
('2015-01-25 00:00:00', '9', NULL, NULL),
('2015-02-20 00:00:00', '8', NULL, NULL);


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone_number` varchar(16) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(32) NOT NULL,
  `confirmcode` varchar(32) DEFAULT NULL,
  `seccode` varchar(8) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `name`, `email`, `phone_number`, `username`, `password`, `confirmcode`, `seccode`) VALUES
(1, 'user', '', '', 'raspiviv', '0e4fd971b0417d8857f0340490cc4b60', 'y', '88888888');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
