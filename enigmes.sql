-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mer 31 Octobre 2018 à 02:38
-- Version du serveur :  5.7.24-0ubuntu0.18.04.1
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `enigmes`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresse`
--

CREATE TABLE `adresse` (
  `id` int(11) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `adresse`
--

INSERT INTO `adresse` (`id`, `adresse`, `latitude`, `longitude`) VALUES
(1, '1 place de l’hippodrome, 69002 Lyon', '45.7450356', '4.823525700000005'),
(2, '112 Cours Charlemagne, 69002 Lyon', '45.7408777', '4.818954699999949'),
(3, '100 Cours Charlemagne, 69002 Lyon', '45.7424072', '4.81968710000001'),
(4, '10 Place des Archives, 69002 Lyon', '45.746622', '4.826411000000007'),
(5, '17 Rue Delandine, 69002 Lyon', '45.7461607', '4.827439899999945'),
(6, '14 Cours de Verdun Gensoul, 69002 Lyon', '45.7477025', '4.827386299999944'),
(7, '73 Cours Charlemagne, 69002 Lyon', '45.743309', '4.8216434999999365'),
(8, '1 Place des Archives, 69002 Lyon', '45.7477966', '4.824626699999953'),
(9, '13 Rue Delandine, 69002 Lyon', '45.7469504', '4.827567300000055'),
(10, '30 Cours de Verdun Perrache, 69002 Lyon', '45.74829709999999', '4.828240700000038');

-- --------------------------------------------------------

--
-- Structure de la table `bonbon`
--

CREATE TABLE `bonbon` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `bonbon`
--

INSERT INTO `bonbon` (`id`, `name`, `image`) VALUES
(1, 'Arlequin', ''),
(2, 'Dragibus', ''),
(3, 'Shoko-bons', ''),
(4, 'Carambar', ''),
(5, 'Fraise Tagada', ''),
(6, 'Kinder Surprise', ''),
(7, 'Chupa-Chups', ''),
(8, 'Malabar', ''),
(9, 'Schtroumpfs', ''),
(10, 'Tetes Brulees', '');

-- --------------------------------------------------------

--
-- Structure de la table `enigme`
--

CREATE TABLE `enigme` (
  `id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `reponse` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `enigme`
--

INSERT INTO `enigme` (`id`, `question`, vrai) VALUES
(1, 'Ma reponse est simple, mais je suis compliquee\r\nCelui qui me trouve dans le conte, est sauve\r\nL\'imagination, pour me connaitre, est la clef\r\nQui suis-je ?', 'L\'enigme'),
(2, 'Ma legende est nee d\'un prince\r\nJe ne suis pas vivant mais je ne suis pas mort\r\nMon nom signifie le dragon\r\nJe suis poussiere au soleil\r\nQui suis-je ?', 'Dracula'),
(3, 'Les yeux ouverts tu ne me vois pas\r\nJ\'aime les recoins, les cavernes\r\nJe vis aussi au fond des mers\r\nQui suis-je ?	', 'L\'obscurite'),
(4, 'Je suis sans lumiere et eclaire Halloween\r\nJe fais peur aux fantômes \r\nmais les mortels me mangent\r\nJe nais dans les jardins et meurs sur les fenetres\r\nQui suis-je ?', 'La citrouille'),
(5, 'Mon domaine est la toile\r\nJe ne suis pas un insecte\r\nJe prends souvent la mouche\r\nQui suis-je ?', 'L\'araignee'),
(6, 'J\'habite les contes de fee\r\nJe suis souvent dans la cheminee\r\nJe suis l\'ami des sorciers\r\nQui suis-je ?', 'Le chaudron'),
(7, 'Je vis la nuit et je meurs le jour... \r\nJ\'existe comme je n\'existe pas... \r\nQuand tu me croises rarement tu te souviens de moi... \r\nQui suis-je ?', 'Le reve'),
(8, 'Je suis un mythe, une legende\r\nJe n\'existe qu\'une fois le mois\r\nJe suis ne suis ni un homme, ni une bete \r\nLes gens ont peur de moi\r\nQui suis-je ?', 'Le loup-garou'),
(9, 'Quand c\'est facile, ce n\'est pas...\r\nLes potions sont ma specialite...\r\nQui suis-je ?', 'Le sorcier'),
(10, 'Je viens du fond des ages\r\nJ\'ai terrifie tes ancetres\r\nJe plais aux enfants\r\nJe suis une croyance Celte\r\nQui suis-je ?', 'Halloween');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `pseudo`, `password`, `score`) VALUES
(2, 'crapo', '$2y$10$udxoe1qoMFj3OKUC.rKYou9ojBCQXu054Wu5Oll.8HnJfygzY3B4q', NULL),
(3, 'test', '$2y$10$sooMeVsMJVHC739c.dDNuuuPuZg9tSvxhofVSMtgNTIMk8DMpf6fa', NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `adresse`
--
ALTER TABLE `adresse`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bonbon`
--
ALTER TABLE `bonbon`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `enigme`
--
ALTER TABLE `enigme`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_id_uindex` (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `adresse`
--
ALTER TABLE `adresse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `bonbon`
--
ALTER TABLE `bonbon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `enigme`
--
ALTER TABLE `enigme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;