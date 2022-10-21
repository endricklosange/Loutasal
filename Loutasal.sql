-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 21 oct. 2022 à 09:21
-- Version du serveur : 8.0.30-0ubuntu0.22.04.1
-- Version de PHP : 8.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Loutasal`
--

-- --------------------------------------------------------

--
-- Structure de la table `feedback`
--

CREATE TABLE `feedback` (
  `id` int NOT NULL,
  `comment` text NOT NULL,
  `user_id` int NOT NULL,
  `room_id` int NOT NULL,
  `score` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `feedback`
--

INSERT INTO `feedback` (`id`, `comment`, `user_id`, `room_id`, `score`, `created_at`) VALUES
(1, 'Proin vel nisl. Quisque fringilla euismod enim. Etiam', 5, 2, 7, '2015-09-23 17:17:50'),
(2, 'iaculis quis,  pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes,  nascetur', 2, 7, 7, '2015-10-29 06:42:42'),
(3, 'bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus,  lorem fringilla ornare placerat,  orci', 5, 2, 6, '2015-05-06 22:30:44'),
(5, 'ut,  pharetra sed,  hendrerit a,  arcu. Sed et libero. Proin', 3, 1, 5, '2015-05-05 10:39:54'),
(7, 'mauris ipsum porta elit,  a feugiat tellus lorem eu metus. In lorem. Donec', 3, 7, 8, '2015-04-10 02:44:25'),
(8, 'eu erat semper rutrum. Fusce dolor quam,  elementum at,  egestas a,  scelerisque sed,  sapien. Nunc pulvinar arcu et pede. Nunc', 2, 1, 4, '2015-07-20 07:33:59'),
(9, 'tincidunt,  neque vitae semper egestas, ', 6, 7, 8, '2015-03-11 23:10:02'),
(10, 'purus ac tellus. Suspendisse sed dolor. Fusce mi lorem,  vehicula', 6, 6, 8, '2015-09-30 01:49:55'),
(12, 'tincidunt dui augue eu tellus. Phasellus elit pede,  malesuada', 5, 6, 2, '2015-07-20 07:04:23'),
(13, 'eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec', 4, 5, 9, '2015-10-27 21:00:27'),
(14, 'facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio.', 4, 5, 5, '2015-12-03 02:08:12'),
(15, 'tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra', 6, 9, 8, '2015-05-02 15:03:42'),
(16, 'ipsum dolor sit amet,  consectetuer adipiscing elit. Aliquam auctor,  velit eget laoreet', 2, 3, 7, '2015-08-23 16:15:54'),
(17, 'Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper', 2, 1, 10, '2015-11-07 22:33:24'),
(21, 'Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra,  per inceptos hymenaeos.', 5, 10, 2, '2015-08-28 20:32:11'),
(22, 'est,  congue a,  aliquet vel,  vulputate eu,  odio. Phasellus at augue id ante', 6, 1, 9, '2015-12-03 01:23:07'),
(23, 'sit amet,  faucibus ut,  nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor', 2, 1, 8, '2015-11-15 06:45:04'),
(24, 'placerat velit. Quisque varius. Nam porttitor scelerisque', 3, 6, 7, '2015-04-30 08:51:09'),
(25, 'semper pretium neque. Morbi quis urna. Nunc', 6, 4, 2, '2016-02-12 14:07:06'),
(26, 'pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui,  semper et,  lacinia', 5, 8, 4, '2016-01-19 19:44:50'),
(27, 'nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem,  vehicula et,  rutrum eu,  ultrices sit amet, ', 2, 5, 3, '2015-07-29 23:04:42'),
(31, 'primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue.', 6, 1, 6, '2015-04-06 02:08:11'),
(32, 'felis. Donec tempor,  est ac mattis semper,  dui', 6, 10, 5, '2015-07-24 07:48:47'),
(39, 'arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui,  semper', 2, 10, 5, '2015-08-30 03:37:54'),
(40, 'Donec consectetuer mauris id sapien. Cras', 4, 8, 4, '2015-06-02 01:30:23'),
(41, 'Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam', 3, 5, 9, '2016-01-28 11:29:20'),
(42, 'Aliquam nec enim. Nunc ut erat. Sed nunc est,  mollis non,  cursus non,  egestas a,  dui. Cras pellentesque.', 6, 8, 10, '2015-07-12 20:46:42'),
(43, 'eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis.', 6, 4, 7, '2015-08-08 16:31:32'),
(45, 'tristique pellentesque,  tellus sem mollis dui,  in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis.', 5, 6, 2, '2015-04-02 00:07:45'),
(46, 'pretium et,  rutrum non,  hendrerit', 4, 7, 4, '2015-07-29 02:37:38'),
(48, 'Vivamus euismod urna. Nullam lobortis quam', 4, 7, 1, '2015-07-21 05:46:43'),
(49, 'ac mattis semper,  dui lectus rutrum', 6, 4, 6, '2015-03-13 04:33:07'),
(51, 'cursus. Nunc mauris elit,  dictum eu,  eleifend nec,  malesuada ut,  sem.', 5, 2, 5, '2015-07-15 00:38:02'),
(52, 'eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat.', 4, 8, 1, '2015-10-12 14:00:44'),
(56, 'consectetuer,  cursus et,  magna. Praesent interdum ligula eu enim. Etiam imperdiet', 5, 2, 8, '2015-09-14 00:14:37'),
(58, 'erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue,  elit', 4, 7, 10, '2015-07-23 07:08:20'),
(63, 'mattis. Integer eu lacus. Quisque imperdiet,  erat nonummy', 2, 4, 5, '2015-05-10 20:55:28'),
(64, 'accumsan neque et nunc. Quisque ornare tortor at risus. Nunc', 4, 3, 8, '2015-09-07 02:20:17'),
(66, 'vitae,  sodales at,  velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem', 6, 7, 7, '2015-12-23 12:19:59'),
(68, 'eget nisi dictum augue malesuada malesuada. Integer id magna et', 6, 4, 3, '2016-01-06 16:55:07'),
(71, 'scelerisque neque sed sem egestas blandit. Nam nulla magna, ', 5, 8, 8, '2015-09-07 04:54:52'),
(72, 'arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,  gravida non,  sollicitudin a,  malesuada id,  erat. Etiam vestibulum massa rutrum', 5, 7, 4, '2015-07-17 13:41:40'),
(73, 'vitae purus gravida sagittis. Duis gravida.', 2, 1, 10, '2015-10-21 13:23:14'),
(74, 'in faucibus orci luctus et', 6, 6, 1, '2015-10-17 07:29:00'),
(77, 'vitae erat vel pede blandit congue. In scelerisque scelerisque dui.', 6, 10, 2, '2015-08-30 20:05:00'),
(80, 'tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra', 3, 1, 10, '2015-08-27 12:50:10'),
(83, 'elit,  dictum eu,  eleifend nec,  malesuada ut,  sem. Nulla interdum. Curabitur dictum.', 6, 8, 7, '2015-08-25 06:26:21'),
(84, 'mi pede,  nonummy ut,  molestie in,  tempus eu,  ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed', 3, 10, 8, '2015-05-04 11:16:29'),
(85, 'lectus,  a sollicitudin orci sem eget massa. Suspendisse', 3, 7, 7, '2016-01-13 23:56:55'),
(86, 'mi pede,  nonummy ut,  molestie in,  tempus eu, ', 3, 7, 8, '2015-12-01 14:11:02'),
(88, 'enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, ', 3, 1, 10, '2015-06-15 09:25:37'),
(89, 'libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada', 6, 8, 9, '2016-02-21 09:47:12'),
(93, 'Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes,  nascetur ridiculus mus.', 2, 3, 1, '2015-07-28 06:11:02'),
(97, 'nulla ante,  iaculis nec,  eleifend non,  dapibus rutrum,  justo.', 6, 6, 9, '2015-08-26 07:55:57'),
(99, 'nisl sem,  consequat nec,  mollis vitae,  posuere at,  velit. Cras lorem lorem,  luctus ut,  pellentesque eget,  dictum', 3, 9, 6, '2015-04-07 23:55:40'),
(100, 'Duis elementum,  dui quis accumsan convallis,  ante lectus convallis est, ', 4, 9, 3, '2015-11-11 18:15:03');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `slot_id` int NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `room`
--

CREATE TABLE `room` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address` varchar(100) NOT NULL,
  `description` text,
  `picture_url` varchar(255) NOT NULL,
  `country` varchar(100) NOT NULL,
  `city` varchar(15) NOT NULL,
  `zip_code` varchar(15) NOT NULL,
  `capacity` int DEFAULT NULL,
  `category` enum('réunion','bureau','formation','coworking') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `room`
--

INSERT INTO `room` (`id`, `name`, `address`, `description`, `picture_url`, `country`, `city`, `zip_code`, `capacity`, `category`) VALUES
(1, 'Bureau Rolland', '100 Avenue des Champs Elysées', 'Gotham\'s been good to our family, but the city\'s been suffering. People less fortunate than us have been enduring very hard times. So we built a new, cheap, public transportation system to unite the city. And at the center, Wayne tower.', 'salles/001_salle_rolland.jpg', 'France', 'Paris', '75008', 50, 'réunion'),
(2, 'Salle Lefebvre', '30 Boulevard de Sébastopol', 'Death does not wait for you to be ready! Death is not considerate of fair! And make no mistake, here you face death. Tiger. Jujitsu. Panther. You\'re skilled. But this is not a dance. And you are afraid. But not of me. Tell us Mr. Wayne, what do you fear?', 'salles/002_salle_lefebvre.jpg', 'France', 'Paris', '75001', 20, 'bureau'),
(3, 'Salle Bouvier', '25 Avenue Foch', 'I had a vision of a world without Batman. The Mob ground out a little profit and the police tried to shut them down one block at a time.', 'salles/003_salle_bouvier.jpg', 'France', 'Paris', '75116', 100, 'formation'),
(4, 'Bureau Renault', '165 rue Garibaldi', 'And it was so boring. I\'ve had a change of heart. I don\'t want Mr Reese spoiling everything but why should I have all the fun?', 'salles/004_salle_renault.jpg', 'France', 'Lyon', '69003', 40, 'réunion'),
(5, 'Bureau Blanc', '146 Boulevard de Paris', 'We have purged your fear. You are ready to Iead these men. You are ready to become a member of the League of Shadows. But first, you must demonstrate your commitment to justice.', 'salles/005_salle_blanc.jpg', 'France', 'Marseille', '13003', 30, 'réunion'),
(6, 'Bureau Dupuis', '341 rue de Lyon', 'The first time I stole so that I wouldn\'t starve, yes. I lost many assumptions about the simple nature of right and wrong. And when I traveled I learned the fear before a crime and the thrill of success. But I never became one of them.', 'salles/006_salle_dupuis.jpg', 'France', 'Marseille', '13015', 70, 'formation'),
(7, 'Salle Leroux', '128 rue des Pyrénées', 'It means you\'re hatred, and it also means losing someone, who I\'ve cared for since I first heard his cries echoing through this house. But it might also mean saving your life. And that is more important.', 'salles/007_salle_leroux.jpg', 'France', 'Paris', '75015', 40, 'bureau'),
(8, 'Salle Marchal', '190 Avenue Barthélémy Buyer', 'You want order in Gotham. Batman must take off his mask and turn himself in. Oh, and every day he doesn\'t, people will die. Starting tonight. I\'m a man of my word.', 'salles/008_salle_marchal.jpg', 'France', 'Lyon', '69009', 80, 'formation'),
(9, 'Salle Cousin', '88 Boulevard Auguste Blanqui', 'This town deserves a better class of criminal and I\'m gonna give it to them. Tell your men they work for me now. This is my city.', 'salles/009_salle_cousin.jpg', 'France', 'Paris', '75013', 20, 'réunion'),
(10, 'Bureau Adam', '149 Avenue Lacassagne', 'Bane was a member of the League of Shadows. And then he was excommunicated. And any man who is too extreme for Ra\'s Al Ghul, is not to be trifled with.', 'salles/010_salle_adam.jpg', 'France', 'Lyon', '69003', 30, 'bureau');

-- --------------------------------------------------------

--
-- Structure de la table `slots`
--

CREATE TABLE `slots` (
  `id` int NOT NULL,
  `arrival_date` date NOT NULL,
  `departure_date` date NOT NULL,
  `price` float NOT NULL,
  `room_id` int NOT NULL,
  `status` enum('libre','réservé') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `slots`
--

INSERT INTO `slots` (`id`, `arrival_date`, `departure_date`, `price`, `room_id`, `status`) VALUES
(1, '2018-10-12', '2018-10-18', 499, 10, 'réservé'),
(2, '2018-11-03', '2018-11-07', 750, 8, 'réservé'),
(3, '2018-12-22', '2018-12-24', 500, 3, 'réservé'),
(4, '2018-01-14', '2018-01-16', 429, 2, 'réservé'),
(5, '2018-01-19', '2018-01-23', 639, 9, 'réservé'),
(6, '2018-02-08', '2018-02-11', 589, 7, 'réservé'),
(7, '2018-03-01', '2018-03-04', 600, 1, 'réservé'),
(8, '2018-03-02', '2018-03-05', 460, 4, 'réservé'),
(9, '2018-03-10', '2018-03-15', 899, 5, 'réservé'),
(10, '2018-03-14', '2018-03-19', 899, 6, 'réservé'),
(11, '2018-03-28', '2018-04-06', 390, 7, 'réservé'),
(12, '2018-03-29', '2018-04-02', 290, 9, 'réservé'),
(13, '2018-04-01', '2018-04-04', 560, 2, 'réservé'),
(14, '2018-04-05', '2018-04-09', 710, 6, 'réservé'),
(15, '2018-05-12', '2018-05-19', 660, 3, 'réservé'),
(16, '2018-05-12', '2018-05-15', 660, 1, 'réservé'),
(17, '2018-03-18', '2018-03-20', 450, 9, 'libre'),
(18, '2018-03-30', '2018-03-31', 319, 8, 'libre'),
(19, '2018-03-23', '2018-03-25', 299, 9, 'libre'),
(20, '2018-03-30', '2018-03-31', 349, 5, 'libre'),
(21, '2018-04-11', '2018-04-15', 999, 7, 'libre'),
(27, '2018-04-06', '2018-04-08', 369, 6, 'libre'),
(28, '2018-04-04', '2018-04-08', 799, 8, 'libre'),
(29, '2018-04-28', '2018-04-30', 499, 4, 'libre'),
(30, '2018-05-09', '2018-05-10', 259, 1, 'libre'),
(31, '2018-05-10', '2018-05-11', 309, 2, 'libre'),
(32, '2018-05-12', '2018-05-13', 699, 3, 'libre'),
(34, '2018-06-01', '2018-06-04', 499, 2, 'libre'),
(35, '2018-06-04', '2018-06-08', 589, 4, 'libre'),
(36, '2016-06-09', '2016-06-12', 419, 6, 'libre'),
(37, '2016-06-14', '2016-06-16', 489, 8, 'libre'),
(38, '2016-06-19', '2016-06-21', 769, 10, 'libre'),
(39, '2016-06-23', '2016-06-27', 999, 5, 'libre'),
(40, '2017-04-20', '2017-04-26', 600, 6, 'libre'),
(41, '2017-04-20', '2017-04-26', 1200, 8, 'libre');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `title` varchar(10) NOT NULL,
  `roles` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `password`, `first_name`, `last_name`, `title`, `roles`, `created_at`) VALUES
(1, 'odio.phasellus@velvenfsenatis.com', 'schneider', '098f6bcd4621d373cade4e832627b4f6', 'name', 'Nguyen', 'f', 0, '2013-11-12 00:00:00'),
(2, 'arnaud@athib.com', 'A.Thibaudet', '098f6bcd4621d373cade4e832627b4f6', 'Bobby', 'Thibaudet', 'm', 1, '2014-06-17 00:00:00'),
(3, 'martin@dupont.fr', 'mdupont', '098f6bcd4621d373cade4e832627b4f6', 'Martin', 'Dupont', 'f', 0, '2013-01-10 00:00:00'),
(4, 'jean@code.com', 'jcode', '098f6bcd4621d373cade4e832627b4f6', 'Jean', 'Code', 'm', 0, '2013-03-14 00:00:00'),
(5, 'pseudo@exemple.fr', 'pseudo', '098f6bcd4621d373cade4e832627b4f6', 'Prénom', 'Nom', 'm', 0, '2012-06-05 00:00:00'),
(6, 'odio.phasellus@velvenenatis.com', 'schneider', '098f6bcd4621d373cade4e832627b4f6', 'name', 'Nguyen', 'f', 0, '2013-11-12 00:00:00'),
(7, 'dapibus@sagittis.com', 'dufour', '098f6bcd4621d373cade4e832627b4f6', 'name', 'Rodriguez', 'm', 0, '2015-12-09 00:00:00'),
(8, 'ultricies.ligula.Nullam@orciDonec.ca', 'richard', '098f6bcd4621d373cade4e832627b4f6', 'name', 'Benoit', 'f', 0, '2013-04-15 00:00:00'),
(9, 'ultricies.ligula.Nulfdelam@orciDonec.ca', 'richard', '098f6bcd4621d373cade4e832627b4f6', 'name', 'Benoit', 'f', 0, '2013-04-15 00:00:00'),
(10, 'sem.elit.pharetra@molestietellusAenean.co.uk', 'blanchard', '098f6bcd4621d373cade4e832627b4f6', 'name', 'Vidal', 'f', 0, '2014-06-10 00:00:00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservation_ibfk_1` (`slot_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `slots`
--
ALTER TABLE `slots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rom_id` (`room_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `room`
--
ALTER TABLE `room`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `slots`
--
ALTER TABLE `slots`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`slot_id`) REFERENCES `slots` (`id`) ON UPDATE RESTRICT,
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE RESTRICT;

--
-- Contraintes pour la table `slots`
--
ALTER TABLE `slots`
  ADD CONSTRAINT `slots_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
