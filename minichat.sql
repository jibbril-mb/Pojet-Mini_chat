-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Ven 01 Mai 2020 à 00:42
-- Version du serveur :  5.7.29-0ubuntu0.18.04.1
-- Version de PHP :  7.2.24-0ubuntu0.18.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `minichat`
--

-- --------------------------------------------------------

--
-- Structure de la table `baseminichat`
--

CREATE TABLE `baseminichat` (
  `id` int(11) NOT NULL COMMENT 'clef primaire',
  `pseudo` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date_de_la_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `baseminichat`
--

INSERT INTO `baseminichat` (`id`, `pseudo`, `message`, `date_de_la_creation`) VALUES
(2, 'djibril', 'Bonjour Ã  tous ! comment trouvez-vous ce mini-chat ?', NULL),
(4, 'ablaye', 'c\'est superbe !', NULL),
(5, 'aba', 'salut, vous faites quoi ?', NULL),
(6, 'mor', 'on est tous Ã  la maison .....', NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `baseminichat`
--
ALTER TABLE `baseminichat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `baseminichat`
--
ALTER TABLE `baseminichat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'clef primaire', AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
