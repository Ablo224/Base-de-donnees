-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Dim 25 Novembre 2018 à 20:22
-- Version du serveur :  10.1.24-MariaDB-6
-- Version de PHP :  7.0.22-3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `user`
--

-- --------------------------------------------------------

--
-- Structure de la table `activite`
--

CREATE TABLE `activite` (
  `code_activite` int(11) NOT NULL,
  `nomA` varchar(30) NOT NULL,
  `duree` int(11) DEFAULT NULL,
  `dateA` varchar(10) NOT NULL,
  `ageMin` int(2) NOT NULL,
  `id_anim` varchar(4) NOT NULL,
  `moment` enum('matin','après-midi') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `activite`
--

INSERT INTO `activite` (`code_activite`, `nomA`, `duree`, `dateA`, `ageMin`, `id_anim`, `moment`) VALUES
(1, 'Poule Renard Vipere', 60, '22-10-2018', 8, 'AB01', 'matin'),
(2, 'Just Danse', 30, '22-10-2018', 6, 'AB01', ''),
(3, 'Zagamore', 60, '22-10-2018', 8, 'HB02', 'matin'),
(4, 'Perle à repasser', 30, '22-10-2018', 8, 'HB02', ''),
(5, 'Challenge', 30, '22-10-2018', 8, 'AP03', 'matin'),
(6, 'Flipe Flape', 60, '22-10-2018', 8, 'AP03', ''),
(7, 'Reparation Vélo', 60, '22-10-2018', 8, 'GB04', 'matin'),
(8, 'VTT', 120, '22-10-2018', 8, 'GB04', '');

-- --------------------------------------------------------

--
-- Structure de la table `animateur`
--

CREATE TABLE `animateur` (
  `id_anim` varchar(4) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `age` int(2) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `sexe` enum('M','F') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `animateur`
--

INSERT INTO `animateur` (`id_anim`, `nom`, `prenom`, `age`, `tel`, `email`, `sexe`) VALUES
('AB01', 'Balde', 'Abdoulaye', 26, '07-52-83-51-71', 'ablobalde92@gmail.com', 'M'),
('AP03', 'Plemard', 'Anthony', 25, '05-65-23-12-34', 'anthony@yahoo.fr', 'M'),
('GB04', 'Gassama', 'Boubacar', 26, '07-42-23-38-37', 'gassama@gmail.com', 'M'),
('HB02', 'Baradji', 'Hatoumina', 22, '07-82-23-45-37', 'baradji22@gmail.com', 'F');

-- --------------------------------------------------------

--
-- Structure de la table `enfant`
--

CREATE TABLE `enfant` (
  `id_enf` varchar(4) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `sexe` enum('M','F') DEFAULT NULL,
  `quartier` varchar(30) DEFAULT NULL,
  `age` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `enfant`
--

INSERT INTO `enfant` (`id_enf`, `nom`, `prenom`, `sexe`, `quartier`, `age`) VALUES
('ABC8', 'Benagouga', 'Aya', 'F', 'Chantepie', 8),
('ABR9', 'Benagouga', 'ALiya', 'F', 'Rosiers', 7),
('AMR3', 'Mangassi', 'Abdoulaye', 'M', 'Rosiers', 9),
('BAD2', 'Baradji', 'Anna', 'F', 'Domont', 9),
('BAD6', 'Baradji', 'Amara', 'M', 'Domont', 6),
('BAR0', 'Baldé', 'Mamadou Aliou', 'M', 'Rosiers', 10),
('BAR1', 'Baradji', 'Aicha', 'F', 'Rosiers', 9),
('BBV5', 'Bah Diallo', 'Binta', 'F', 'Villiers-le-bel', 9),
('BKV4', 'Bah Diallo', 'Kadiatou', 'F', 'Villiers-le-bel', 7),
('BSR8', 'Benmhera', 'Salif', 'M', 'Rosiers', 8),
('DFC7', 'Diarra', 'Fanta', 'F', 'Chantepie', 7),
('DSR9', 'Diarra', 'Seynabou', 'F', 'Rosiers', 9),
('EHR9', 'Ebembo', 'Hakim', 'M', 'Rosiers', 9),
('EMR7', 'Ebembo', 'Maria Cecilia', 'F', 'Rosiers', 7),
('IBR9', 'Benagouga', 'Iliyad', 'M', 'Rosiers', 9),
('KAR6', 'Keita', 'Abdoulaye', 'M', 'Rosiers', 6),
('KMC7', 'Kanté', 'Mohamed', 'M', 'Chantepie', 7),
('KNC9', 'Kanté', 'Nana', 'F', 'Chantepie', 9),
('KSR8', 'Khémir', 'Safa', 'F', 'Rosiers', 8),
('OFR6', 'Oudjoub', 'Fadwa', 'F', 'Rosiers', 9),
('SAC8', 'Sy', 'Awa', 'F', 'Chantepie', 8),
('SMR8', 'Meïté', 'Sarah', 'F', 'Rosiers', 8),
('VNR8', 'Vigier', 'Noémie', 'F', 'Rosiers', 9),
('VPR1', 'Vincent', 'Pricild', 'F', 'Rosiers', 11),
('VTR7', 'Vigier', 'Théo', 'M', 'Rosiers', 7),
('YMR7', 'Meïté', 'Youssouf', 'M', 'Rosiers', 7);

-- --------------------------------------------------------

--
-- Structure de la table `etre`
--

CREATE TABLE `etre` (
  `id_parent` varchar(4) NOT NULL,
  `id_enf` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `inscrit`
--

CREATE TABLE `inscrit` (
  `id_enf` varchar(4) NOT NULL,
  `code_activite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `parent`
--

CREATE TABLE `parent` (
  `id_parent` varchar(4) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `sexe` enum('M','F') DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `parent`
--

INSERT INTO `parent` (`id_parent`, `nom`, `prenom`, `sexe`, `tel`) VALUES
('00BF', 'Baradji', 'Fatoumata', 'F', '06-12-17-34-10'),
('01MG', 'Mangassi', 'Goulan', 'F', '07-45-18-34-11'),
('02DM', 'Bah Diallo', 'Mamadou', 'M', '06-43-20-10-15'),
('05VF', 'Vigier', 'Florian', 'F', '07-23-13-24-08'),
('06BS', 'Benagouga', 'Said', 'M', '07-12-15-16-28'),
('07BO', 'Benmhera', 'Ousmane', 'M', '06-20-21-64-72'),
('08SS', 'Sy', 'Sadjo', 'M', '06-22-89-11-56'),
('09KM', 'Kanté', 'Maïmouna', 'F', '07-23-67-81-65-'),
('10BM', 'Baldé', 'Mamadou', 'M', '06-43-98-19-10'),
('11KS', 'Khémir', 'Saïd', 'M', '07-52-53-76-21'),
('12EP', 'Ebembo', 'Pountana', 'F', '09-12-10-23-11'),
('13BA', 'Baradji', 'Adama', 'F', '07-33-23-56-19'),
('14KM', 'Keita', 'Mamoudou', 'M', '06-34-95-92-32'),
('15MM', 'Meïté', 'Manu', 'M', '06-23-34-10-71'),
('16VK', 'Vincent', 'Komard', 'F', '09-14-49-37-47'),
('17BS', 'Benagouga', 'Shakiri', 'M', '06-24-34-29-34'),
('18DM', 'Diarra', 'Mouminatou', 'F', '07-25-35-23-40'),
('19DA', 'Diarra', 'Amadou', 'M', '07-45-20-18-01'),
('O4OA', 'Oudjoub', 'Ali', 'M', '07-56-37-25-32');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `activite`
--
ALTER TABLE `activite`
  ADD PRIMARY KEY (`code_activite`),
  ADD KEY `id_anim` (`id_anim`);

--
-- Index pour la table `animateur`
--
ALTER TABLE `animateur`
  ADD PRIMARY KEY (`id_anim`);

--
-- Index pour la table `enfant`
--
ALTER TABLE `enfant`
  ADD PRIMARY KEY (`id_enf`);

--
-- Index pour la table `etre`
--
ALTER TABLE `etre`
  ADD PRIMARY KEY (`id_parent`,`id_enf`),
  ADD KEY `id_enf` (`id_enf`);

--
-- Index pour la table `inscrit`
--
ALTER TABLE `inscrit`
  ADD PRIMARY KEY (`id_enf`,`code_activite`),
  ADD KEY `code_activite` (`code_activite`);

--
-- Index pour la table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`id_parent`);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `activite`
--
ALTER TABLE `activite`
  ADD CONSTRAINT `activite_ibfk_1` FOREIGN KEY (`id_anim`) REFERENCES `animateur` (`id_anim`);

--
-- Contraintes pour la table `etre`
--
ALTER TABLE `etre`
  ADD CONSTRAINT `etre_ibfk_1` FOREIGN KEY (`id_parent`) REFERENCES `parent` (`id_parent`),
  ADD CONSTRAINT `etre_ibfk_2` FOREIGN KEY (`id_enf`) REFERENCES `enfant` (`id_enf`);

--
-- Contraintes pour la table `inscrit`
--
ALTER TABLE `inscrit`
  ADD CONSTRAINT `inscrit_ibfk_1` FOREIGN KEY (`id_enf`) REFERENCES `enfant` (`id_enf`),
  ADD CONSTRAINT `inscrit_ibfk_2` FOREIGN KEY (`code_activite`) REFERENCES `activite` (`code_activite`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
