-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 13 Janvier 2017 à 14:21
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id_article` int(11) NOT NULL,
  `nom_article` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `id_auteur` int(11) DEFAULT NULL,
  `id_categorie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id_article`, `nom_article`, `id_auteur`, `id_categorie`) VALUES
(118, 'mario', NULL, 1),
(119, 'sonic', 126, 1),
(120, ' 123', 126, 3),
(121, ' 123', 126, 3),
(122, ' 798', 127, 3),
(123, 'salut , wesh alors jul c\'est a chier', 128, 4),
(124, 'salut , wesh alors jul c\'est a chier', 128, 4),
(125, ' eyyher', 129, 1),
(126, ' edgr', 130, 1),
(127, ' trd', 131, 3),
(128, ' salut', 132, 1),
(129, ' zESZEFSSZES', 133, 1),
(130, ' zESZEFSSZES', 133, 1),
(131, ' zESZEFSSZES', 133, 1),
(132, ' zESZEFSSZES', 133, 1),
(133, ' se(yeesr', 134, 1),
(134, ' se(yeesr', 134, 1),
(135, ' se(yeesr', 134, 1),
(136, ' se(yeesr', 134, 1),
(137, ' se(yeesr', 134, 1),
(138, ' se(yeesr', 134, 1),
(139, ' se(yeesr', 134, 1),
(140, ' se(yeesr', 134, 1),
(141, ' se(yeesr', 134, 1),
(142, ' se(yeesr', 134, 1),
(143, ' se(yeesr', 134, 1),
(144, ' se(yeesr', 134, 1),
(145, ' se(yeesr', 134, 1),
(146, ' fyfyfy', 135, 1),
(147, ' qqsdscq', 136, 1),
(148, ' qqsdscq', 136, 1),
(149, ' qqsdscq', 136, 1),
(150, ' qqsdscq', 136, 1),
(151, ' qqsdscq', 136, 1),
(152, ' qqsdscq', 136, 1),
(153, ' qqsdscq', 136, 1),
(154, ' qqsdscq', 136, 1),
(155, ' qqsdscq', 136, 1),
(156, ' qqsdscq', 136, 1),
(157, ' qqsdscq', 136, 1),
(158, ' qqsdscq', 136, 1),
(159, ' qqsdscq', 136, 1),
(160, ' qqsdscq', 136, 1),
(161, ' qqsdscq', 136, 1),
(162, ' qqsdscq', 136, 1),
(163, ' qqsdscq', 136, 1),
(164, ' qqsdscq', 136, 1),
(165, ' qqsdscq', 136, 1),
(166, ' qqsdscq', 136, 1),
(167, ' qqsdscq', 136, 1),
(168, ' qqsdscq', 136, 1),
(169, ' qqsdscq', 136, 1),
(170, ' qqsdscq', 136, 1),
(171, ' qqsdscq', 136, 1),
(172, ' qqsdscq', 136, 1),
(173, ' qqsdscq', 136, 1),
(174, ' Salut', 137, 1),
(175, 'z "zr', 129, 1),
(176, ' xccw', 138, 1),
(177, ' xccw', 138, 1),
(178, ' <sf<<', 139, 1),
(179, ' <sd', 140, 1),
(180, ' dfdfdf', 141, 1),
(181, ' dfdfdf', 141, 1),
(182, ' dfdfdf', 141, 1),
(183, ' gxdss', 142, 1);

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `id_auteur` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `mdp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `auteur`
--

INSERT INTO `auteur` (`id_auteur`, `pseudo`, `mdp`) VALUES
(126, 'try', NULL),
(127, 'esteban', NULL),
(128, 'jul lui meme', NULL),
(129, 'erg', NULL),
(130, 'dryr', NULL),
(131, 'rydt', NULL),
(132, 'salut', NULL),
(133, 'zrEFZef', NULL),
(134, 'e(ys(s', NULL),
(135, '(trfr', NULL),
(136, 'wsfs<', NULL),
(137, 'Olivier', NULL),
(138, 'cw', NULL),
(139, 'fq<s', NULL),
(140, '<sefsfs<x', NULL),
(141, 'fdd', NULL),
(142, '  fdrd', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id_cat` int(11) NOT NULL,
  `nom_cat` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id_cat`, `nom_cat`) VALUES
(1, 'jeux vidéos'),
(3, 'custom'),
(4, 'astuces');

-- --------------------------------------------------------

--
-- Structure de la table `join_articles_categories`
--

CREATE TABLE `join_articles_categories` (
  `id` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `join_articles_categories`
--

INSERT INTO `join_articles_categories` (`id`, `id_article`, `id_cat`) VALUES
(65, 80, 4),
(66, 81, 3),
(67, 82, 3),
(68, 83, 4),
(69, 84, 4),
(70, 85, 4),
(71, 86, 4),
(72, 87, 4),
(73, 88, 4),
(74, 89, 4),
(75, 90, 4),
(76, 91, 4),
(77, 92, 4),
(78, 93, 4),
(79, 94, 4),
(80, 95, 4),
(81, 96, 1),
(82, 97, 1),
(83, 98, 1),
(84, 99, 1),
(85, 100, 1),
(86, 101, 1),
(87, 102, 1),
(88, 103, 1),
(89, 104, 1),
(90, 105, 1),
(91, 106, 1),
(92, 107, 1),
(93, 108, 1),
(94, 109, 1),
(95, 110, 1),
(96, 111, 1),
(97, 112, 1),
(98, 113, 1),
(99, 114, 1),
(100, 115, 1),
(101, 116, 1),
(102, 117, 1),
(103, 118, 3),
(104, 119, 1),
(105, 120, 1),
(106, 121, 1),
(107, 122, 3);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id_article`);

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`id_auteur`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_cat`);

--
-- Index pour la table `join_articles_categories`
--
ALTER TABLE `join_articles_categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
--
-- AUTO_INCREMENT pour la table `auteur`
--
ALTER TABLE `auteur`
  MODIFY `id_auteur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;
--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `join_articles_categories`
--
ALTER TABLE `join_articles_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
