-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 02 juil. 2022 à 21:25
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `notre_base`
--

-- --------------------------------------------------------

--
-- Structure de la table `administration`
--

CREATE TABLE `administration` (
  `num_admin` int(11) NOT NULL,
  `nom_admin` varchar(100) NOT NULL,
  `prenom_admin` varchar(100) NOT NULL,
  `poste_admin` varchar(100) NOT NULL,
  `adresse_admin` varchar(100) NOT NULL,
  `email_admin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `filière`
--

CREATE TABLE `filière` (
  `num_fil` int(11) NOT NULL,
  `nom_fil` varchar(100) NOT NULL,
  `cours_fil` varchar(200) NOT NULL,
  `nom_dep` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `information`
--

CREATE TABLE `information` (
  `num_info` int(11) NOT NULL,
  `type_info` varchar(100) NOT NULL,
  `date_redaction` date NOT NULL,
  `date_reponse` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `num_insc` int(11) NOT NULL,
  `date_insc` date NOT NULL,
  `frais_insc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `payment`
--

CREATE TABLE `payment` (
  `code_pay` int(11) NOT NULL,
  `mod_pay` varchar(100) NOT NULL,
  `date_pay` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `filiere` varchar(100) NOT NULL,
  `niveau` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `date_inscription` datetime NOT NULL DEFAULT current_timestamp(),
  `type_user` varchar(100) NOT NULL DEFAULT 'etudiant',
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `prenom`, `nom`, `filiere`, `niveau`, `email`, `password`, `date_inscription`, `type_user`, `status`) VALUES
(1, 'Ababacar ', 'Tine', 'Informatique', 'Licence 2', 'aba@gmail.com', '$2y$12$4gJ4pS/LaXWG028/IIH9begCr1h4gamwaKOLcBnUdCBjzfnKy6snq', '2022-07-02 18:52:04', 'admin', 0),
(5, 'khadija', 'Fall', 'Gestion', 'Licence 3', 'khf@gmail.com', '$2y$12$rGfruReS6.4tYkFvl.zS9e.uh//kqeas9Jz0TIpyXszheW.y3zGVe', '2022-07-02 19:57:28', 'etudiant', 1),
(6, 'Rafidine', 'Sagna', 'Informatique', 'Licence 3', 'raf@gmail.com', '$2y$12$HFc4XIKtaA8WJ/werdVXWuO085ElzL2ycg/RxI89uI2.9EI7FuHP6', '2022-07-02 21:20:23', 'etudiant', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `administration`
--
ALTER TABLE `administration`
  ADD PRIMARY KEY (`num_admin`);

--
-- Index pour la table `filière`
--
ALTER TABLE `filière`
  ADD PRIMARY KEY (`num_fil`);

--
-- Index pour la table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`num_info`);

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`num_insc`);

--
-- Index pour la table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`code_pay`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
