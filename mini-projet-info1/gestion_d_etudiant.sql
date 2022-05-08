-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 08 mai 2022 à 13:13
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion d etudiant`
--

-- --------------------------------------------------------

--
-- Structure de la table `absence`
--

CREATE TABLE `absence` (
  `id` int(11) NOT NULL,
  `nom` varchar(40) NOT NULL,
  `module` varchar(40) NOT NULL,
  `date` varchar(40) NOT NULL,
  `ampm` varchar(40) NOT NULL,
  `justifié` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `absence`
--

INSERT INTO `absence` (`id`, `nom`, `module`, `date`, `ampm`, `justifié`) VALUES
(1, 'bakali oussama', 'web', '02-05-2022', 'am', 'oui'),
(2, 'bakali oussama', 'web', '03-05-2022', 'am', 'non'),
(3, 'bakali oussama', 'web', '04-05-2022', 'pm', 'non'),
(4, 'majdi khalil', 'web', '02-05-2022', 'am', 'non'),
(5, 'majdi khalil', 'web', '03-05-2022', 'am', 'non'),
(6, 'majdi khalil', 'web', '04-05-2022', 'pm', 'oui');

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE `enseignant` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nom` varchar(40) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `login` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `enseignant`
--

INSERT INTO `enseignant` (`id`, `date`, `nom`, `prenom`, `login`, `pass`) VALUES
(1, '2022-03-12 15:58:08', 'Saad', 'Walid', 'walid.saadd@gmail.com', '25f9e794323b453885f5181f1b624d0b'),
(2, '2022-03-20 08:03:49', 'ahmed', 'aziz', 'ousso3527@gmail.com', '18d859e5523c2bfd4906d59286aea594'),
(5, '2022-04-11 08:15:10', 'youssef', 'logtari', 'yousseflogtari@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(6, '2022-05-07 16:23:02', 'ahmed', 'ben amor', 'ahmedbenamor@gmail.com', 'cf0091cea7c8ee7327dc3a3d2845f94b'),
(7, '2022-05-07 16:33:22', 'oussama', 'bakali', 'oussama@gmail.com', 'e48dd1c108b53c5534e5c5c9b2eeaf9e'),
(8, '2022-05-07 16:39:36', 'brahim', 'oussama', 'ouss@gmail.com', '18d859e5523c2bfd4906d59286aea594'),
(10, '2022-05-07 17:17:44', 'hamadi', 'touil', 'hamadi@gmail.com', '779eef09bd253c0a417e05913a52796a'),


-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `cin` int(8) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `cpassword` varchar(40) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `adresse` text NOT NULL,
  `Classe` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`cin`, `email`, `password`, `cpassword`, `nom`, `prenom`, `adresse`, `Classe`) VALUES
(1153214, 'ahmedbenamor@gmail.com', 'cf0091cea7c8ee7327dc3a3d2845f94b', 'cf0091cea7c8ee7327dc3a3d2845f94b', 'ahmed', 'ben amor', 'tunis', 'INFO1-E'),
(1234789, 'oussama@gmail.com', 'e06ac582c1db6bfa3a3650028e84880b', 'e06ac582c1db6bfa3a3650028e84880b', 'bakali', 'oussama', 'tunisie', 'INFO1-E'),
(1247854, 'rayen@gmail.com', 'b602c0fda610fe00b5eb390611519e3a', 'b602c0fda610fe00b5eb390611519e3a', 'rayen', 'trabelsi', 'tunisie', 'INFO1-E'),
(1327455, 'amir@gmail.com', '11225280e56219bc9ac52fc370c385c6', '11225280e56219bc9ac52fc370c385c6', 'amir', 'mohamed', '     tunis', 'INFO1-C'),
(2178541, 'hajbi@gmail.com', '3a8d16bcd4fdb37a5f0e9baedc0f4cc2', '3a8d16bcd4fdb37a5f0e9baedc0f4cc2', 'hajbi', 'mohamedamin', 'tunisie', 'INFO1-E'),
(2514321, 'majdi@gmail.com', '8f2738588ae36fdee3c8f58db85351b6', '8f2738588ae36fdee3c8f58db85351b6', 'majdi', 'khalil', 'tunisie', 'INFO1-E'),
(5214780, 'barhoum101@gmail.com', '26eaf4a3314027e81e0ef8b48758f0a5', 'easy101', 'barhoumy', 'mohammed', 'Tunis', 'INFO1-B'),
(11111111, 'ousso3527@gmail.com', '5df9fb756c722cffa5ca3c3b7d463cac', '5df9fb756c722cffa5ca3c3b7d463cac', 'ahmeda', 'aziza', 'asasadaadad', 'INFO1-E'),
(12341231, 'karim@gmail.com', 'b9f13646e75c4157c31d333cfb36f9b6', 'b9f13646e75c4157c31d333cfb36f9b6', 'karim', 'bezine', 'tunisia', 'INFO1-B');

-- --------------------------------------------------------

--
-- Structure de la table `groupeetudiant`
--

CREATE TABLE `groupeetudiant` (
  `groupe` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `groupeetudiant`
--

INSERT INTO `groupeetudiant` (`groupe`) VALUES
('INFO1-B'),
('INFO2-B'),
('INFO2-D'),
('INFO2-C'),
('INFO1-C'),
('INFO1-C');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `absence`
--
ALTER TABLE `absence`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`cin`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `absence`
--
ALTER TABLE `absence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `enseignant`
--
ALTER TABLE `enseignant`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
