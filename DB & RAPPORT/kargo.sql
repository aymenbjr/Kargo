-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 09 juil. 2019 à 06:56
-- Version du serveur :  10.1.38-MariaDB
-- Version de PHP :  7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `kargo`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `Id_Admin` int(11) NOT NULL,
  `Id_Person_P` int(11) DEFAULT NULL,
  `Id_Depot` int(11) DEFAULT NULL,
  `Nom` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`Id_Admin`, `Id_Person_P`, `Id_Depot`, `Nom`, `Password`) VALUES
(1, NULL, NULL, 'aymen', '111'),
(2, NULL, NULL, 'adam', '222');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `Id_Client` int(11) NOT NULL,
  `Id_Demande` int(11) DEFAULT NULL,
  `Nom` varchar(20) DEFAULT NULL,
  `Prenom` varchar(20) DEFAULT NULL,
  `Password` varchar(20) NOT NULL,
  `Adresse` varchar(20) DEFAULT NULL,
  `Tel` varchar(20) DEFAULT NULL,
  `Fax` varchar(20) DEFAULT NULL,
  `E_mail` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`Id_Client`, `Id_Demande`, `Nom`, `Prenom`, `Password`, `Adresse`, `Tel`, `Fax`, `E_mail`) VALUES
(6, NULL, 'Benjbara', 'Aymen', '147', 'mansour', '0623198124', NULL, 'aymanebj@gmail.com'),
(10, NULL, 'aymen', 'bachelor', '', '786785', '45645', 'AAA@gg', 'aymane@hotmail.com'),
(11, NULL, 'Lopez', 'Everth', '036', 'Seljeveien 15 F', '+4792890979', '', 'aymen1@gmail.com'),
(12, NULL, 'benji', NULL, '036', 'jfjff5', '0052222', '555555555', 'benji@cityblog.com'),
(13, NULL, 'a', 'a', '258', 'a', 'a', 'a', 'a@a.a'),
(14, NULL, 'b', 'b', '147', 'b', 'b', 'b', 'b@b.b'),
(15, NULL, 'Benjbara', 'Aymen', '147', 'manssour 3 meknes', '0623198124', '0623198124', 'aymenbjuni@gmail.com'),
(16, NULL, 'raid', 'elhatri', '258', 'tatwn', '0682325555', '15515155155', 'raid@gmail.com'),
(17, NULL, 'bach', '', '159=AEIMQ', '14', '10000000000', '3147240980', 'bachmek@gmail.com'),
(18, NULL, 'SAVALIYA', 'VIPUL', '089>@EKFIP', '3417 Hayston Ct', '10000000000', '', 'vipul@gmail.com'),
(19, NULL, 'a', NULL, 'a', 'a', 'a', 'a', 'a@a.a'),
(20, NULL, '5', NULL, '5', '1', '2', '3', '5@g.m'),
(22, NULL, 'p', 'p', '147', '', '', '', '1@2'),
(29, NULL, 'bachlor', 's4', '0369<', 'marjan', '05353535', '0441414144', 'bachelor@s4.com'),
(30, NULL, 'projet', NULL, '0369<', 'mansspir', '555555', '222222', 's4@projet.com'),
(31, NULL, 'ensam', 'lor', '147:=', 'marjan', '050505', '112121122', 'ensam@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `Id_Demande` int(11) NOT NULL,
  `Id_Conteneur` int(11) NOT NULL,
  `Id_Client` int(11) NOT NULL,
  `DateDebut` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`Id_Demande`, `Id_Conteneur`, `Id_Client`, `DateDebut`) VALUES
(1, 1, 5, '2019-06-02'),
(2, 10, 15, '2019-07-01'),
(3, 2, 16, '2019-07-02'),
(4, 1, 11, '2019-07-04'),
(5, 4, 11, '2019-07-04'),
(19, 1, 11, '2019-07-07'),
(20, 1, 15, '2019-07-07'),
(53, 2, 31, '2019-07-09');

-- --------------------------------------------------------

--
-- Structure de la table `conteneur`
--

CREATE TABLE `conteneur` (
  `Id_Conteneur` int(11) NOT NULL,
  `Titre` varchar(40) DEFAULT NULL,
  `Description` varchar(400) DEFAULT NULL,
  `Type` varchar(20) DEFAULT NULL,
  `Taille` double DEFAULT NULL,
  `Image` varchar(400) DEFAULT NULL,
  `Prix` double DEFAULT NULL,
  `Poids` double DEFAULT NULL,
  `Capacite` double DEFAULT NULL,
  `Etat` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `conteneur`
--

INSERT INTO `conteneur` (`Id_Conteneur`, `Titre`, `Description`, `Type`, `Taille`, `Image`, `Prix`, `Poids`, `Capacite`, `Etat`) VALUES
(1, 'CONTENEUR de Kargo Special edition', 'We provide the best container quality and after-buy service you will ever experience', 'DRY', 20, './img/product01.jpg', 500, 1200, 65, 'disponible'),
(2, 'CONTENEUR DE PENSEE  AWS 40 OPEN TOP', 'Conteneurs OPEN TOP neufs pour le transport et le stockage Vous êtes à la recherche d\'un conteneur maritime pour le transport ou le stockage? Achetez votre conteneur neuf de haute qualité chez KARGO.', 'OPEN TOP', 30, './img/product02.jpg', 4500, 1400, 30, 'disponible'),
(3, 'ABRI Dry Conteneur 20ft', 'ahsan kontonir', 'Dry', 30, './img/product03.jpg	', 1500, 900, 55, 'dipsonible'),
(4, 'CONTENEUR PLATEAU STOCKAGE SECHE', 'acoustiques produits par Isosystem Italia ( www.isosystem.it) , ', 'FLAT RACK', 20, './img/product04.jpg', 4500, 800, 20, 'disponible'),
(5, 'CONTENEUR OUVERTE D\'EXPÉDITION', 'À la vente ou à la location des Containers frigorifiques neufs 40 pieds HC HIGH CUBE/HAUT CUBAGE, avec moteur CARRIER électrique, parfait pour garder vos produits au frais, pouvant servir de chambre froide, avec contrôle de température de -35°C à +25°C', 'OPEN TOP', 30, './img/product05.jpg', 6500, 1900, 30, 'disponible'),
(6, 'CONTENEUR PLATEAU STOCKAGE SECHE', 'acoustiques produits par Isosystem Italia ( www.isosystem.it) , ', 'FLAT RACK', 26, './img/product04.jpg', 4000, 1000, 26, 'disponible'),
(7, 'MSC FLAT RACK 1/50 CONTENEUR SCALE 20', 'Conteneurs  FLAT RACK neufs pour le transport et le stockage Vous êtes à la recherche d\'un conteneur maritime pour le transport ou le stockage? Achetez votre conteneur neuf de haute qualité chez KARGO.', ' FLAT RACK', 40, './img/product10.jpg', 6000, 2000, 40, 'disponible'),
(8, 'CONTENEUR DE PENSEE  AWS 40 OPEN TOP', 'acoustiques produits par Isosystem Italia ( www.isosystem.it) , ', 'OPEN TOP', 26, './img/product02.jpg', 4000, 1420, 26, 'disponible'),
(9, 'CONTENEUR À CARGAISON SÈCHE NON UTILISÉ ', 'Conteneurs  FLAT RACK neufs pour le transport et le stockage Vous êtes à la recherche d\'un conteneur maritime pour le transport ou le stockage? Achetez votre conteneur neuf de haute qualité chez KARGO.', 'DRY', 50, './img/product13.jpg', 4000, 2000, 50, 'disponible'),
(10, 'RÉCIPIENT OPEN TOP OUVERT DE HAUTE QUALI', 'acoustiques produits par Isosystem Italia ( www.isosystem.it) , ', 'OPEN TOP', 40, './img/product15.jpg', 6000, 1420, 40, 'disponible'),
(11, 'CONTENEUR FLAT RACK POUR POTEAU 40FT À V', 'Conteneurs  FLAT RACK neufs pour le transport et le stockage Vous êtes à la recherche d\'un conteneur maritime pour le transport ou le stockage? Achetez votre conteneur neuf de haute qualité chez KARGO.', 'FLAT RACK', 35, './img/product17.jpg', 5020, 2000, 35, 'disponible'),
(12, 'CONTENEUR DRY DE 40 PIEDS DE TAILLE STAN', 'À la vente ou à la location des Containers frigorifiques neufs 40', 'DRY', 30, './img/product11.jpg', 6000, 1420, 30, 'disponible'),
(13, 'CONTENEUR DE STOCKAGE POUR BACS FLAT RAC', 'Conteneurs maritimes neufs pour le transport et le stockage Vous êtes à la recherche d\'un conteneur maritime pour le transport ou le stockage? Achetez votre conteneur neuf de haute qualité chez KARGO.', 'FLAT RACK', 50, './img/product14.jpg', 6500, 1300, 50, 'disponible'),
(14, 'CONTENEUR', '', 'OPEN', 55, './img/product18.jpg', 5400, 1650, 55, 'disponible'),
(15, 'CONTENEUR', 'Conteneurs', 'FLAT', 35, './img/product12.jpg', 7000, 1300, 35, 'disponible'),
(16, 'CONTENEUR', 'acoustiques', 'OPEN', 60, './img/product19.jpg', 6500, 1800, 60, 'disponible'),
(17, 'NOUVEAU CONTENEUR CARGAISON DRY 20FT À V', 'Conteneurs maritimes neufs pour le transport et le stockage Vous êtes à la recherche d\'un conteneur maritime pour le transport ou le stockage? Achetez votre conteneur neuf de haute qualité chez KARGO.', 'DRY', 35, './img/product16.jpg', 4600, 1300, 35, 'utilise'),
(19, 'H0 20 ft DRY containers', 'Conteneurs DRY neufs pour le transport et le stockage Vous êtes à la recherche d\'un conteneur maritime pour le transport ou le stockage? Achetez votre conteneur neuf de haute qualité chez KARGO.', 'DRY', 35, './img/product06.jpg', 7100, 700, 55, 'nouveau'),
(20, '1/50 SCALE 40 FLAT RACK AWS', 'Conteneurs FLAT RACK neufs pour le transport et le stockage Vous êtes à la recherche d\'un conteneur maritime pour le transport ou le stockage? Achetez votre conteneur neuf de haute qualité chez KARGO.', 'FLAT RACK', 40, './img/product07.jpg', 5200, 1100, 25, 'nouveau'),
(21, 'CONTENEUR DE STOCKAGE', 'Conteneurs DRY neufs pour le transport et le stockage Vous êtes à la recherche d\'un conteneur maritime pour le transport ou le stockage? Achetez votre conteneur neuf de haute qualité chez KARGO.', 'DRY', 55, './img/product08.jpg', 4900, 2100, 40, 'utilise'),
(22, '1/50 CONTENEUR MAERSK 40 OPEN TOP', 'Conteneurs OPEN TOP neufs pour le transport et le stockage Vous êtes à la recherche d\'un conteneur maritime pour le transport ou le stockage? Achetez votre conteneur neuf de haute qualité chez KARGO.', 'OPEN TOP', 20, './img/product09.jpg', 6000, 950, 31, 'utilise'),
(23, 'MSC FLAT RACK 1/50 CONTENEUR SCALE 20', 'Conteneurs FLAT RACK neufs pour le transport et le stockage Vous êtes à la recherche d\'un conteneur maritime pour le transport ou le stockage? Achetez votre conteneur neuf de haute qualité chez KARGO.', 'FLAT RACK', 30, './img/product10.jpg', 4500, 1300, 40, 'nouveau');

-- --------------------------------------------------------

--
-- Structure de la table `date`
--

CREATE TABLE `date` (
  `DateDebut` date NOT NULL,
  `DateFin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `date`
--

INSERT INTO `date` (`DateDebut`, `DateFin`) VALUES
('2019-06-02', '2019-06-08');

-- --------------------------------------------------------

--
-- Structure de la table `demande_location`
--

CREATE TABLE `demande_location` (
  `Id_Demande` int(11) NOT NULL,
  `Date_Demande` date DEFAULT NULL,
  `Adresse_Demande` varchar(20) DEFAULT NULL,
  `Code_Postal` varchar(20) DEFAULT NULL,
  `Ville` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `demande_location`
--

INSERT INTO `demande_location` (`Id_Demande`, `Date_Demande`, `Adresse_Demande`, `Code_Postal`, `Ville`) VALUES
(1, '2019-06-05', 'mansour', '50000', 'meknes');

-- --------------------------------------------------------

--
-- Structure de la table `depot`
--

CREATE TABLE `depot` (
  `Id_Depot` int(11) NOT NULL,
  `Id_Conteneur` int(11) DEFAULT NULL,
  `Libelle_Depot` varchar(20) DEFAULT NULL,
  `Capacite_Depot` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `depot`
--

INSERT INTO `depot` (`Id_Depot`, `Id_Conteneur`, `Libelle_Depot`, `Capacite_Depot`) VALUES
(2, 22, 'meknes marjna', 500),
(3, 9, 'tanger', 0),
(5, 20, 'Flat Rack Containers', 50),
(6, 15, 'Flat Rack Containers', 320),
(7, 14, 'Dry Containers Wareh', 150),
(8, 8, 'Open Top Containers ', 430),
(9, 1, 'Meknes Edition Conta', 960),
(10, 11, 'Flat Rack ayawhadi C', 460),
(11, 16, 'Open Top edition 201', 800),
(12, 19, 'Dry fkhatr ga3 l3chr', 320);

-- --------------------------------------------------------

--
-- Structure de la table `personne_morale`
--

CREATE TABLE `personne_morale` (
  `Id_Person_M` int(11) NOT NULL,
  `Id_Client` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `personne_physique`
--

CREATE TABLE `personne_physique` (
  `Id_Person_P` int(11) NOT NULL,
  `Id_Client` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id_Admin`),
  ADD KEY `Id_Person_P` (`Id_Person_P`),
  ADD KEY `Id_Depot` (`Id_Depot`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`Id_Client`),
  ADD KEY `Id_Demande` (`Id_Demande`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`Id_Demande`,`Id_Conteneur`,`Id_Client`);

--
-- Index pour la table `conteneur`
--
ALTER TABLE `conteneur`
  ADD PRIMARY KEY (`Id_Conteneur`);

--
-- Index pour la table `date`
--
ALTER TABLE `date`
  ADD PRIMARY KEY (`DateDebut`);

--
-- Index pour la table `demande_location`
--
ALTER TABLE `demande_location`
  ADD PRIMARY KEY (`Id_Demande`);

--
-- Index pour la table `depot`
--
ALTER TABLE `depot`
  ADD PRIMARY KEY (`Id_Depot`),
  ADD KEY `Id_Conteneur` (`Id_Conteneur`);

--
-- Index pour la table `personne_morale`
--
ALTER TABLE `personne_morale`
  ADD PRIMARY KEY (`Id_Person_M`),
  ADD KEY `id_client` (`Id_Client`);

--
-- Index pour la table `personne_physique`
--
ALTER TABLE `personne_physique`
  ADD PRIMARY KEY (`Id_Person_P`),
  ADD KEY `Id_Client` (`Id_Client`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `Id_Admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `Id_Client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `Id_Demande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `conteneur`
--
ALTER TABLE `conteneur`
  MODIFY `Id_Conteneur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `demande_location`
--
ALTER TABLE `demande_location`
  MODIFY `Id_Demande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `depot`
--
ALTER TABLE `depot`
  MODIFY `Id_Depot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `personne_morale`
--
ALTER TABLE `personne_morale`
  MODIFY `Id_Person_M` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `personne_physique`
--
ALTER TABLE `personne_physique`
  MODIFY `Id_Person_P` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`Id_Person_P`) REFERENCES `personne_physique` (`Id_Person_P`),
  ADD CONSTRAINT `admin_ibfk_2` FOREIGN KEY (`Id_Depot`) REFERENCES `depot` (`Id_Depot`);

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`Id_Demande`) REFERENCES `demande_location` (`Id_Demande`);

--
-- Contraintes pour la table `depot`
--
ALTER TABLE `depot`
  ADD CONSTRAINT `depot_ibfk_1` FOREIGN KEY (`Id_Conteneur`) REFERENCES `conteneur` (`Id_Conteneur`);

--
-- Contraintes pour la table `personne_morale`
--
ALTER TABLE `personne_morale`
  ADD CONSTRAINT `personne_morale_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`Id_Client`);

--
-- Contraintes pour la table `personne_physique`
--
ALTER TABLE `personne_physique`
  ADD CONSTRAINT `personne_physique_ibfk_1` FOREIGN KEY (`Id_Client`) REFERENCES `client` (`Id_Client`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
