-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 20 nov. 2022 à 02:07
-- Version du serveur :  5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tp_vue`
--

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `description` text,
  `type` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `photo`, `price`, `description`, `type`, `createdAt`, `updatedAt`) VALUES
(1, 'Sesame', 'sesame.jpg', 7.25, 'Tasse blanche en grés', 'Tasses a café et thé', '2022-11-19 00:00:00', '2022-11-19 00:00:00'),
(2, 'Urban', 'urban.jpg', 115, 'Ensemble de 12 pieces a vaisselle bleu', 'Ensembles a vaisselle', '2022-11-19 00:00:00', '2022-11-19 00:00:00'),
(3, 'Autumn Glow', 'automn.jpg', 78, 'Nappe multicolore sur fond gris', 'Linge de table', '2022-11-19 00:00:00', '2022-11-19 00:00:00'),
(4, 'Allover Birds', 'birds.jpg', 8.75, 'Tasse multicolore sur fond blanc', 'Tasses a café et thé', '2022-11-19 00:00:00', '2022-11-19 00:00:00'),
(5, 'Gourmet ', 'gourmet.jpg', 20.50, 'Ensemble de 4 assiettes a dessert grises', 'Ensembles a vaisselle', '2022-11-19 00:00:00', '2022-11-19 00:00:00'),
(6, 'Broadway', 'broadway.jpg', 25, 'Ensemble de 4 napperons noirs', 'Linge de table', '2022-11-19 00:00:00', '2022-11-19 00:00:00');
COMMIT;
