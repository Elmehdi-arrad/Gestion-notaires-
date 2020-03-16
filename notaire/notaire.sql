-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2018 at 07:59 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `notaire`
--

-- --------------------------------------------------------

--
-- Table structure for table `affectation`
--

CREATE TABLE IF NOT EXISTS `affectation` (
  `id_affectation` int(11) NOT NULL AUTO_INCREMENT,
  `id_produit_id` int(11) DEFAULT NULL,
  `titre_foncier` varchar(50) NOT NULL,
  `ID` int(11) NOT NULL,
  `id_not` int(11) NOT NULL,
  `cin` varchar(50) NOT NULL,
  `nom_clt` varchar(50) NOT NULL,
  `prenom_clt` varchar(50) NOT NULL,
  `portable_tel` varchar(50) NOT NULL,
  PRIMARY KEY (`id_affectation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `exclusion_tmp`
--

CREATE TABLE IF NOT EXISTS `exclusion_tmp` (
  `id__tmp` int(11) NOT NULL AUTO_INCREMENT,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `id_not` int(11) NOT NULL,
  PRIMARY KEY (`id__tmp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `formalise`
--

CREATE TABLE IF NOT EXISTS `formalise` (
  `id_for` int(11) NOT NULL AUTO_INCREMENT,
  `titre_foncier` varchar(50) NOT NULL,
  `id_not` int(11) NOT NULL,
  `etat` int(11) NOT NULL,
  PRIMARY KEY (`id_for`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `notaire`
--

CREATE TABLE IF NOT EXISTS `notaire` (
  `id_not` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `fix` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `portable` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_not`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
  `id_pr` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_pr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `username`, `password`, `type`) VALUES
(1, 'admin', 'admin', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
