-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 09, 2015 at 07:28 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `billingproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE IF NOT EXISTS `bill` (
  `bill` int(11) NOT NULL,
  `date` date NOT NULL,
  `manufacturer` varchar(20000) NOT NULL,
  `stockname` varchar(20000) NOT NULL,
  `quantity` double NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL,
  `stockid` int(11) NOT NULL,
  `customername` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill`, `date`, `manufacturer`, `stockname`, `quantity`, `price`, `total`, `stockid`, `customername`) VALUES
(100, '2015-02-15', 'Cutticoora', 'cuttismall', 2, 31.65, 63.3, 1, 'Gayathri'),
(100, '2015-02-15', 'Ponds', 'ponds', 3, 42.2, 126.6, 3, 'Gayathri'),
(100, '2015-02-15', 'Cutticoora', 'cuttismall', 2, 31.65, 63.3, 1, 'Gayathri'),
(100, '2015-02-15', 'Ponds', 'ponds', 3, 42.2, 126.6, 3, 'Gayathri'),
(101, '2015-02-20', 'Cutticoora1', 'cuttilarge', 2, 73.85, 147.7, 2, 'Lekshmy'),
(101, '2015-02-20', 'Ponds', 'ponds', 3, 42.2, 126.6, 3, 'Lekshmy'),
(102, '2015-03-05', 'Cutticoora1', 'cuttilarge', 2, 73.85, 147.7, 2, 'Nayan'),
(102, '2015-03-05', 'Ponds', 'ponds', 2, 42.2, 84.4, 3, 'Nayan');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(100) NOT NULL,
  PRIMARY KEY (`categoryid`),
  UNIQUE KEY `categoryid` (`categoryid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `categoryname`) VALUES
(1, 'Powder'),
(2, 'Pen'),
(5, 'phone'),
(4, 'Soap'),
(6, 'Watch'),
(7, 'Mouse');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', '12345'),
(2, 'Gayathri', 'gayathrirajan');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE IF NOT EXISTS `manufacturer` (
  `manid` int(11) NOT NULL AUTO_INCREMENT,
  `manname` varchar(100) NOT NULL,
  `catid` int(11) NOT NULL,
  PRIMARY KEY (`manid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`manid`, `manname`, `catid`) VALUES
(1, 'Cutticoora1', 1),
(2, 'Ponds', 1),
(3, 'Cello', 2),
(5, 'Lux', 1),
(6, 'Ponds', 2),
(8, 'Zebronics', 7),
(9, 'pinpoint', 2);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `stockid` int(11) NOT NULL AUTO_INCREMENT,
  `stockname` varchar(500) NOT NULL,
  `noofstocks` double NOT NULL,
  `price` double NOT NULL,
  `manid` int(11) NOT NULL,
  PRIMARY KEY (`stockid`),
  KEY `manid` (`manid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stockid`, `stockname`, `noofstocks`, `price`, `manid`) VALUES
(2, 'cuttilarge', 46, 70, 1),
(3, 'ponds', 39, 40, 2),
(4, 'cellolarge', 20, 10, 3),
(5, 'cellosmall', 29, 8, 3),
(6, 'pin', 30, 12, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE IF NOT EXISTS `tax` (
  `taxid` int(11) NOT NULL AUTO_INCREMENT,
  `tax` double NOT NULL,
  PRIMARY KEY (`taxid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`taxid`, `tax`) VALUES
(1, 5.5);

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE IF NOT EXISTS `temp` (
  `bill` int(11) NOT NULL,
  `slno` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `manufacturer` varchar(20000) NOT NULL,
  `stockname` varchar(20000) NOT NULL,
  `quantity` double NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL,
  `stockid` int(11) NOT NULL,
  `customername` mediumtext NOT NULL,
  PRIMARY KEY (`slno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `temp`
--


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(100) NOT NULL AUTO_INCREMENT,
  `newusername` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirmpassword` varchar(100) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `newusername`, `password`, `confirmpassword`) VALUES
(1, 'user', 'user', 'user'),
(8, 'jayalekshmi', '1234567', '1234567'),
(10, 'Gayathr', 'gayathrirajan', 'gayathrirajan'),
(2, 'user', 'useruser', 'useruser'),
(9, 'Nayansuresh', 'nayansuresh', 'nayansuresh');

-- --------------------------------------------------------

--
-- Table structure for table `viewstock`
--

CREATE TABLE IF NOT EXISTS `viewstock` (
  `slno` int(11) NOT NULL AUTO_INCREMENT,
  `manname` varchar(20000) NOT NULL,
  `stockname` varchar(20000) NOT NULL,
  `noofstocks` double NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`slno`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `viewstock`
--

INSERT INTO `viewstock` (`slno`, `manname`, `stockname`, `noofstocks`, `price`) VALUES
(1, 'Cutticoora1', 'cuttilarge', 46, 70),
(2, 'Ponds', 'ponds', 39, 40),
(3, 'Cello', 'cellolarge', 20, 10),
(4, 'Cello', 'cellosmall', 29, 8);
