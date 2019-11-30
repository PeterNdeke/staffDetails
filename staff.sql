-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2019 at 01:43 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `staff`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_30_094443_create_staff_table', 1),
(5, '2019_11_30_104259_add_status_to_staff_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `first_name`, `last_name`, `email`, `position`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Hassan Hane', 'Jodie Yundt', 'jermaine86@example.net', 'Earum voluptate fugit consequatur hic tempora.', '2019-11-30 10:27:46', '2019-11-30 10:27:46', NULL),
(2, 'Prudence Sipes', 'Mrs. Rahsaan Kutch Sr.', 'nettie95@example.org', 'Sapiente earum itaque non accusamus.', '2019-11-30 10:27:47', '2019-11-30 10:27:47', NULL),
(3, 'Ms. Hallie Flatley IV', 'Drake Carroll', 'raphaelle.doyle@example.com', 'Omnis vel et blanditiis.', '2019-11-30 10:27:47', '2019-11-30 10:27:47', NULL),
(4, 'Dr. Enid Corwin PhD', 'Ariel Lueilwitz', 'predovic.alaina@example.com', 'Voluptatibus ut aperiam distinctio fuga est.', '2019-11-30 10:27:47', '2019-11-30 10:27:47', NULL),
(5, 'Luisa Ferry', 'Lester Denesik', 'xrowe@example.com', 'Est quisquam et ea et.', '2019-11-30 10:27:47', '2019-11-30 10:27:47', NULL),
(6, 'Miss Bella Breitenberg', 'Mrs. Savannah Parker', 'garrison.flatley@example.org', 'Et beatae blanditiis recusandae in.', '2019-11-30 10:27:47', '2019-11-30 10:27:47', NULL),
(7, 'Alejandra Larson', 'Abagail Becker', 'manuela85@example.net', 'Non sint architecto et necessitatibus dignissimos.', '2019-11-30 10:27:47', '2019-11-30 10:27:47', NULL),
(8, 'Tamia Nicolas', 'Loyal Lakin III', 'ramiro.steuber@example.com', 'Error non quam id eum.', '2019-11-30 10:27:48', '2019-11-30 10:27:48', NULL),
(9, 'Gerardo Bailey Jr.', 'Emma Padberg', 'muller.belle@example.com', 'Repudiandae quis quia iste unde asperiores repellendus.', '2019-11-30 10:27:48', '2019-11-30 10:27:48', NULL),
(10, 'Ewald McClure III', 'Rosie Erdman', 'cooper52@example.com', 'Odit ut ut doloremque.', '2019-11-30 10:27:48', '2019-11-30 10:27:48', NULL),
(11, 'Arely Deckow IV', 'Robyn Olson', 'kheller@example.net', 'Et officiis asperiores exercitationem quas est.', '2019-11-30 10:27:48', '2019-11-30 10:27:48', NULL),
(12, 'Talia Legros', 'Berta Haag', 'larkin.edwina@example.net', 'Voluptatem laudantium nostrum adipisci et sit autem.', '2019-11-30 10:27:48', '2019-11-30 10:27:48', NULL),
(13, 'Felipa Pfannerstill', 'Mr. Bryon Fisher', 'murray.ramona@example.net', 'Consequatur non sed quis.', '2019-11-30 10:27:48', '2019-11-30 10:27:48', NULL),
(14, 'Lisette Schuster Jr.', 'Emmanuel Miller', 'feest.amber@example.com', 'Illo praesentium aliquam eos quo unde molestias.', '2019-11-30 10:27:48', '2019-11-30 10:27:48', NULL),
(15, 'Jayde Littel', 'Mrs. Kellie Lueilwitz IV', 'walter.amani@example.org', 'Ea laudantium aut reprehenderit.', '2019-11-30 10:27:48', '2019-11-30 10:27:48', NULL),
(16, 'Estrella Ritchie', 'Bernadette Cruickshank', 'jamie06@example.net', 'Id omnis alias sit rerum.', '2019-11-30 10:27:48', '2019-11-30 10:27:48', NULL),
(17, 'Torey McGlynn', 'Enid Hoppe II', 'terence54@example.net', 'Et deserunt animi vel sit.', '2019-11-30 10:27:48', '2019-11-30 10:27:48', NULL),
(18, 'Miss Reba Friesen MD', 'Mitchel Rolfson', 'sammy.lynch@example.com', 'Eaque autem qui saepe consequatur soluta quod.', '2019-11-30 10:27:48', '2019-11-30 10:27:48', NULL),
(19, 'Korey Heller', 'Randy Harber', 'queen.green@example.com', 'Aut iure non perferendis ut.', '2019-11-30 10:27:48', '2019-11-30 10:27:48', NULL),
(20, 'Dr. Favian Berge', 'Tate Bednar', 'godfrey68@example.net', 'Provident rerum laboriosam error.', '2019-11-30 10:27:49', '2019-11-30 10:27:49', NULL),
(21, 'Dr. Stanford Roberts Sr.', 'Bernhard Gottlieb', 'dulce07@example.net', 'Illo officiis aut ut saepe enim.', '2019-11-30 10:27:49', '2019-11-30 10:27:49', NULL),
(22, 'Antwan Kuvalis', 'Prof. Mariane Von Sr.', 'jeanette.barton@example.com', 'Ullam et iste ab amet et minus.', '2019-11-30 10:27:49', '2019-11-30 10:27:49', NULL),
(23, 'Emely Oberbrunner', 'Prof. Hailee Conn', 'jamal74@example.org', 'Nemo deserunt perspiciatis qui odit quia earum.', '2019-11-30 10:27:49', '2019-11-30 10:27:49', NULL),
(24, 'Dr. Khalil Farrell', 'Tevin Labadie III', 'marian66@example.com', 'Sunt voluptatem dignissimos placeat vero.', '2019-11-30 10:27:49', '2019-11-30 10:27:49', NULL),
(25, 'Ollie Hayes', 'Loyal Dietrich', 'turner78@example.com', 'Suscipit omnis fugit deserunt eligendi non.', '2019-11-30 10:27:49', '2019-11-30 10:27:49', NULL),
(26, 'Brionna Rolfson', 'Aliyah Mante', 'umonahan@example.com', 'Vel ipsa praesentium dignissimos sunt fugiat.', '2019-11-30 10:27:49', '2019-11-30 10:27:49', NULL),
(27, 'Mrs. Dorothy Koch', 'Leone Lehner', 'alanis.weissnat@example.net', 'Aut alias molestiae suscipit aliquam magni consequatur.', '2019-11-30 10:27:49', '2019-11-30 10:27:49', NULL),
(28, 'Prof. Jaydon Ward Jr.', 'Jamaal Carter', 'adan58@example.com', 'Odio sunt est et accusamus.', '2019-11-30 10:27:49', '2019-11-30 10:27:49', NULL),
(29, 'Shakira Cummings DVM', 'Bradley Quigley', 'gaylord.lazaro@example.org', 'Ab mollitia quia repellat repellat modi consequatur.', '2019-11-30 10:27:49', '2019-11-30 10:27:49', NULL),
(30, 'River Zemlak', 'Catalina Ebert', 'marvin87@example.net', 'Perspiciatis iure repudiandae fuga animi et.', '2019-11-30 10:27:49', '2019-11-30 10:27:49', NULL),
(31, 'Ms. Jeanie Sauer Sr.', 'Norris Bailey', 'iolson@example.net', 'Dolorem quas provident qui quia nam.', '2019-11-30 10:27:50', '2019-11-30 10:27:50', NULL),
(32, 'Leta Streich Sr.', 'Mylene Rice', 'nina.murphy@example.net', 'Nihil et sit animi fugit qui.', '2019-11-30 10:27:50', '2019-11-30 10:27:50', NULL),
(33, 'Phoebe O\'Keefe', 'Presley Monahan', 'koepp.wilfred@example.org', 'Esse neque eum voluptatibus.', '2019-11-30 10:27:50', '2019-11-30 10:27:50', NULL),
(34, 'Ms. Audrey Leannon Jr.', 'Karlee Wisoky', 'kaitlyn76@example.net', 'Nulla enim consequatur porro deserunt.', '2019-11-30 10:27:50', '2019-11-30 10:27:50', NULL),
(35, 'Alphonso Ruecker', 'Miss Bernice Kling', 'lfadel@example.org', 'Libero fugiat totam assumenda nostrum quas.', '2019-11-30 10:27:50', '2019-11-30 10:27:50', NULL),
(36, 'Mr. Obie Flatley III', 'Dr. Beth Prohaska', 'rocky32@example.net', 'Sed voluptatem officiis alias.', '2019-11-30 10:27:50', '2019-11-30 10:27:50', NULL),
(37, 'Randy Lockman Sr.', 'Ruth Williamson', 'lrunolfsson@example.com', 'Quia exercitationem repellendus facere adipisci laborum.', '2019-11-30 10:27:50', '2019-11-30 10:27:50', NULL),
(38, 'Joel Denesik', 'Prof. Sigurd Hodkiewicz', 'ukulas@example.com', 'Eaque quibusdam eos quia fuga corrupti.', '2019-11-30 10:27:50', '2019-11-30 10:27:50', NULL),
(39, 'Mrs. Sophie Conn', 'Amos Marquardt', 'berta.flatley@example.org', 'Eum est blanditiis aspernatur rerum.', '2019-11-30 10:27:50', '2019-11-30 10:27:50', NULL),
(40, 'Adolfo Maggio', 'Mr. Mathew Hayes Sr.', 'velda.bauch@example.net', 'Fugiat quo quia adipisci et quam harum.', '2019-11-30 10:27:50', '2019-11-30 10:27:50', NULL),
(41, 'Kayla Morar IV', 'Everette Wilderman', 'wunsch.kaya@example.com', 'Eaque eius facilis eveniet voluptatem possimus excepturi.', '2019-11-30 10:27:50', '2019-11-30 10:27:50', NULL),
(42, 'Dr. Leopoldo McClure II', 'Prof. Jarod Herman II', 'isidro.rau@example.com', 'Consequatur et distinctio et nihil eveniet sequi.', '2019-11-30 10:27:51', '2019-11-30 10:27:51', NULL),
(43, 'Muriel Hessel', 'Mr. Lance Nienow DDS', 'dschmidt@example.com', 'Et quo libero alias reprehenderit voluptas.', '2019-11-30 10:27:51', '2019-11-30 10:27:51', NULL),
(44, 'Otto Hilpert I', 'Ms. Kasandra Bernier', 'rheaney@example.net', 'Vel debitis vitae nemo officia distinctio quo.', '2019-11-30 10:27:51', '2019-11-30 10:27:51', NULL),
(45, 'Dr. Marco Barrows DVM', 'Federico Welch', 'ilakin@example.com', 'Dicta consequuntur nobis accusantium.', '2019-11-30 10:27:51', '2019-11-30 10:27:51', NULL),
(46, 'Mary Konopelski', 'Devin Macejkovic', 'shemar.koch@example.com', 'Aut dolor dolore quasi doloremque qui.', '2019-11-30 10:27:51', '2019-11-30 10:27:51', NULL),
(47, 'Leone Kuhlman', 'Marilou Beahan', 'clangworth@example.net', 'Similique aut odio qui qui ea nulla.', '2019-11-30 10:27:51', '2019-11-30 10:27:51', NULL),
(48, 'Rey Hegmann', 'Gina Connelly', 'percy.paucek@example.com', 'Animi quia quo ea.', '2019-11-30 10:27:51', '2019-11-30 10:27:51', NULL),
(49, 'Prof. Edgar Fadel', 'Jimmy Stark', 'kirlin.maximilian@example.net', 'Perspiciatis eius voluptate sed commodi voluptates aut.', '2019-11-30 10:27:51', '2019-11-30 10:58:11', 'enable'),
(50, 'Pamela Renner', 'Burnice', 'lang.lennie@example.org', 'Sapiente nostrum reprehenderit suscipit ipsam et.', '2019-11-30 10:27:51', '2019-11-30 11:21:00', 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
