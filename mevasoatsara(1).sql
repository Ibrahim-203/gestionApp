-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 16 juil. 2023 à 06:46
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mevasoatsara`
--

-- --------------------------------------------------------

--
-- Structure de la table `achat_detail`
--

CREATE TABLE `achat_detail` (
  `id_achat` int(11) NOT NULL,
  `id_achat_groupe` int(11) NOT NULL,
  `libelle_achat` text NOT NULL,
  `motif_achat` text NOT NULL,
  `date_achat` datetime NOT NULL DEFAULT current_timestamp(),
  `last_modified_at` datetime DEFAULT NULL,
  `quantite_achat` int(11) NOT NULL,
  `unite_achat` text NOT NULL,
  `prix_unit` int(11) NOT NULL,
  `total_achat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `achat_detail`
--

INSERT INTO `achat_detail` (`id_achat`, `id_achat_groupe`, `libelle_achat`, `motif_achat`, `date_achat`, `last_modified_at`, `quantite_achat`, `unite_achat`, `prix_unit`, `total_achat`) VALUES
(2, 2, 'Corde', 'attacher chevre bakary', '2023-04-06 15:02:39', NULL, 5, 'metre', 2000, 10000),
(3, 3, 'Corde', 'Pour chevre', '2023-04-06 12:56:02', NULL, 5, 'metre', 2000, 10000),
(4, 4, 'Velo', 'Pour des courses', '2023-04-26 12:23:43', NULL, 1, 'unite', 100000, 100000),
(5, 4, '3 canal', 'Nettoyage', '2023-04-26 12:23:43', NULL, 2, 'unite', 15000, 30000),
(6, 5, 'Riz', 'Manger', '2023-04-27 17:13:01', NULL, 20, 'kpk', 500, 10000),
(7, 5, 'Cuillère', 'fête', '2023-04-27 17:13:01', NULL, 10, 'unite', 200, 2000),
(8, 6, 'Bajaj', 'Transport des produits', '2023-02-01 09:30:00', NULL, 1, 'unite', 300000, 300000),
(9, 7, 'Chaise', 'accessoire de bureau', '2023-02-01 09:30:00', NULL, 5, 'unite', 20000, 100000),
(10, 8, 'Stylo', 'secrétariat', '2023-05-01 12:48:52', NULL, 2, 'unite', 800, 1600),
(11, 9, 'telephone', 'Pour la communication au poste de secrétariat ', '2023-05-01 13:51:53', NULL, 1, 'unite', 200000, 200000);

-- --------------------------------------------------------

--
-- Structure de la table `achat_groupe`
--

CREATE TABLE `achat_groupe` (
  `id_achat_groupe` int(11) NOT NULL,
  `date_achat` datetime NOT NULL DEFAULT current_timestamp(),
  `totale_achat` int(11) NOT NULL,
  `acteur` int(11) NOT NULL DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `achat_groupe`
--

INSERT INTO `achat_groupe` (`id_achat_groupe`, `date_achat`, `totale_achat`, `acteur`) VALUES
(2, '2023-04-06 15:02:39', 10000, 5),
(3, '2023-04-06 12:56:02', 10000, 8),
(4, '2023-04-26 12:23:43', 130000, 5),
(5, '2023-04-27 17:13:01', 12000, 8),
(6, '2023-02-01 09:30:00', 300000, 5),
(7, '2023-02-01 09:30:00', 100000, 5),
(8, '2023-05-01 12:48:52', 1600, 5),
(9, '2023-05-01 13:51:53', 200000, 5);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_prod` int(11) NOT NULL,
  `libelle_prod` text NOT NULL,
  `prix_unitaire` text DEFAULT NULL,
  `image_prod` text NOT NULL,
  `quantite_stock` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `last_modified_at` datetime DEFAULT NULL,
  `last_modified_by` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 1,
  `stock` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id_prod`, `libelle_prod`, `prix_unitaire`, `image_prod`, `quantite_stock`, `created_at`, `last_modified_at`, `last_modified_by`, `created_by`, `stock`) VALUES
(1, 'letchi', NULL, '1.png', 0, '2023-03-27 06:43:43', '2023-07-13 06:47:55', NULL, 1, 0),
(2, 'pomme de terre', NULL, '2.png', 525, '2023-03-27 06:45:36', '2023-04-22 12:28:59', NULL, 1, 1),
(11, 'Mangue', NULL, '', 0, '2023-04-18 10:56:57', '2023-04-18 12:55:05', NULL, 1, 0),
(13, 'Banana', NULL, '', 0, '2023-07-14 07:04:27', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `unite`
--

CREATE TABLE `unite` (
  `id` int(11) NOT NULL,
  `libelle_unit` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `modified_at` datetime DEFAULT current_timestamp(),
  `last_modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `unite`
--

INSERT INTO `unite` (`id`, `libelle_unit`, `created_at`, `modified_at`, `last_modified_by`) VALUES
(13, 'Kg', '2023-02-27 11:43:07', '2023-02-27 11:43:07', NULL),
(14, 'Sac', '2023-03-14 03:07:01', '2023-03-14 15:07:01', NULL),
(15, 'littre', '2023-03-14 05:35:35', '2023-03-14 17:35:35', NULL),
(16, 'pièce', '2023-03-14 05:35:56', '2023-03-14 17:35:56', NULL),
(18, 'mini paquet', '2023-04-06 12:49:21', '2023-04-06 12:49:21', NULL),
(19, 'maxi paquet', '2023-04-06 12:49:29', '2023-04-06 12:49:29', NULL),
(20, 'Kpk', '2023-07-14 07:06:31', '2023-07-14 07:06:31', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `unite_produit`
--

CREATE TABLE `unite_produit` (
  `id_unite_produit` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL,
  `quantite_unit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `unite_produit`
--

INSERT INTO `unite_produit` (`id_unite_produit`, `id_produit`, `id_unit`, `quantite_unit`) VALUES
(1, 1, 13, 1),
(2, 1, 14, 300),
(3, 2, 16, 1),
(4, 2, 14, 300),
(20, 11, 13, 1),
(21, 11, 14, 40),
(22, 13, 16, 1),
(23, 13, 13, 25);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_user` int(11) NOT NULL,
  `nom_user` text NOT NULL,
  `prenom_user` text DEFAULT NULL,
  `tel_user` text NOT NULL,
  `date_naiss_user` date NOT NULL,
  `adresse_user` text NOT NULL,
  `sexe_user` text NOT NULL,
  `image_user` text DEFAULT NULL,
  `mot_de_passe` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `last_modified_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_user`, `nom_user`, `prenom_user`, `tel_user`, `date_naiss_user`, `adresse_user`, `sexe_user`, `image_user`, `mot_de_passe`, `created_at`, `last_modified_at`, `status`) VALUES
(5, 'ANDRY', 'Nizwami', '0324866320', '2001-05-31', 'Lazaret', 'masculin', '5.jpg', 'd033e22ae348aeb5660fc2140aec35850c4da997', '2023-03-05 09:18:55', '2023-03-09 02:28:25', 1),
(8, 'Ibrah', 'Amady', '0321549856', '1999-03-03', 'lazaret Sud', 'masculin', '8.png', 'd033e22ae348aeb5660fc2140aec35850c4da997', '2023-04-18 10:06:41', '2023-04-22 12:17:22', 1);

-- --------------------------------------------------------

--
-- Structure de la table `vente_detail`
--

CREATE TABLE `vente_detail` (
  `id_vente_detail` int(11) NOT NULL,
  `id_vente_groupe` int(11) NOT NULL,
  `produit_vendu` int(11) NOT NULL,
  `unite_vente` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `prix_unitaire` int(11) NOT NULL,
  `totale` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `vente_detail`
--

INSERT INTO `vente_detail` (`id_vente_detail`, `id_vente_groupe`, `produit_vendu`, `unite_vente`, `quantite`, `prix_unitaire`, `totale`, `created_at`, `created_by`) VALUES
(1, 1, 2, 16, 25, 300, 7500, '2023-01-04 11:33:38', 5),
(2, 1, 1, 13, 3, 12500, 37500, '2023-01-04 11:33:38', 5),
(3, 2, 1, 13, 10, 1000, 10000, '2023-02-04 14:59:16', 5),
(4, 3, 2, 16, 12, 5000, 60000, '2023-03-04 16:46:42', 5),
(5, 3, 1, 13, 5, 2000, 10000, '2023-04-04 16:46:42', 5),
(6, 4, 1, 13, 5, 12500, 62500, '2023-04-06 12:52:54', 5),
(7, 5, 2, 16, 10, 500, 5000, '2023-04-25 14:58:36', 5),
(8, 5, 1, 13, 2, 2500, 5000, '2023-04-25 14:58:36', 5),
(9, 6, 1, 13, 3, 2500, 7500, '2023-04-25 15:54:21', 5),
(10, 7, 2, 14, 1, 200000, 200000, '2023-04-25 16:59:58', 5),
(11, 8, 11, 13, 3, 1000, 3000, '2023-04-28 11:40:18', 5),
(12, 9, 2, 14, 5, 175000, 875000, '2023-05-11 17:15:01', 5),
(13, 9, 1, 13, 5, 2500, 12500, '2023-05-11 17:15:01', 5),
(14, 10, 11, 13, 7, 2000, 14000, '2023-02-01 15:00:00', 5),
(15, 11, 1, 14, 1, 100000, 100000, '2023-02-01 10:00:00', 5),
(16, 12, 2, 16, 20, 200, 4000, '2023-03-01 11:00:00', 5),
(17, 12, 1, 13, 3, 2000, 6000, '2023-03-01 11:00:00', 5);

-- --------------------------------------------------------

--
-- Structure de la table `vente_groupe`
--

CREATE TABLE `vente_groupe` (
  `id_vente_groupe` int(11) NOT NULL,
  `proprietaire` text NOT NULL,
  `adresse_proprietaire` text NOT NULL,
  `tel_proprietaire` text NOT NULL,
  `totale_vente` int(11) NOT NULL,
  `etat_vente_groupe` tinyint(4) NOT NULL DEFAULT 0,
  `date_vente` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `vente_groupe`
--

INSERT INTO `vente_groupe` (`id_vente_groupe`, `proprietaire`, `adresse_proprietaire`, `tel_proprietaire`, `totale_vente`, `etat_vente_groupe`, `date_vente`, `status`) VALUES
(1, ' Abdallah', 'Lazaret sud', ' 0324866320', 45000, 1, '2023-04-04 11:33:38', 1),
(2, ' Chanban', 'Lazaret', ' 0326627051', 10000, 1, '2023-04-04 14:59:16', 1),
(3, ' Hassany', 'Lazaret Cur', ' 0327266320', 70000, 1, '2023-04-04 16:46:42', 1),
(4, ' Abdallah', 'Lazaret', ' 0324866320', 62500, 1, '2023-04-06 12:52:54', 1),
(5, ' Anziz', 'Croisement Y', ' 0324678564', 10000, 1, '2023-01-01 00:00:00', 0),
(6, ' Ibra', 'loktroi', ' 0321834079', 7500, 0, '2023-01-01 10:12:56', 1),
(7, ' Hafizat', 'Ecole tafita', ' 0329159156', 200000, 1, '2023-04-08 16:00:00', 1),
(8, ' Ahmada', 'Antsalaka Nord', ' 0325186947', 3000, 0, '2023-04-28 11:40:18', 1),
(9, ' Ibrahim', 'Loktroi', ' 0327245019', 887500, 0, '2023-05-11 05:15:01', 1),
(10, ' Salimo', 'Lazaret sud', ' 0321048967', 14000, 1, '2023-02-01 15:00:00', 1),
(11, ' Souloufou', 'Ambilobe', ' 0321458763', 100000, 1, '2023-02-01 10:00:00', 1),
(12, ' Assoumany', 'loktroi', ' 0322021000', 10000, 0, '2023-03-01 11:00:00', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `achat_detail`
--
ALTER TABLE `achat_detail`
  ADD PRIMARY KEY (`id_achat`);

--
-- Index pour la table `achat_groupe`
--
ALTER TABLE `achat_groupe`
  ADD PRIMARY KEY (`id_achat_groupe`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_prod`);

--
-- Index pour la table `unite`
--
ALTER TABLE `unite`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `unite_produit`
--
ALTER TABLE `unite_produit`
  ADD PRIMARY KEY (`id_unite_produit`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_user`);

--
-- Index pour la table `vente_detail`
--
ALTER TABLE `vente_detail`
  ADD PRIMARY KEY (`id_vente_detail`);

--
-- Index pour la table `vente_groupe`
--
ALTER TABLE `vente_groupe`
  ADD PRIMARY KEY (`id_vente_groupe`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `achat_detail`
--
ALTER TABLE `achat_detail`
  MODIFY `id_achat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `achat_groupe`
--
ALTER TABLE `achat_groupe`
  MODIFY `id_achat_groupe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `unite`
--
ALTER TABLE `unite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `unite_produit`
--
ALTER TABLE `unite_produit`
  MODIFY `id_unite_produit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `vente_detail`
--
ALTER TABLE `vente_detail`
  MODIFY `id_vente_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `vente_groupe`
--
ALTER TABLE `vente_groupe`
  MODIFY `id_vente_groupe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
