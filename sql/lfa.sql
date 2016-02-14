-- phpMyAdmin SQL Dump
-- version 4.5.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Feb 14, 2016 at 08:56 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `lfa`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodatas`
--

CREATE TABLE `biodatas` (
  `id` int(10) UNSIGNED NOT NULL,
  `developer_id` int(10) UNSIGNED NOT NULL,
  `biodata` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biodatas`
--

INSERT INTO `biodatas` (`id`, `developer_id`, `biodata`, `created_at`, `updated_at`) VALUES
(1, 1, 'When I was a kid', '0000-00-00 00:00:00', '2016-01-29 05:01:10'),
(4, 9, 'biodata', '2016-01-27 02:59:46', '2016-01-27 02:59:46'),
(5, 10, 'bio', '2016-01-27 03:02:25', '2016-01-27 03:02:25'),
(12, 20, 'This is my bio', '2016-01-29 04:06:12', '2016-01-29 04:06:36'),
(13, 21, 'asdf', '2016-01-29 05:06:33', '2016-01-29 05:06:33'),
(14, 21, 'asdf', '2016-01-29 05:19:53', '2016-01-29 05:19:53'),
(15, 22, 'fsdfssdfsdfsdf', '2016-01-29 05:24:35', '2016-01-29 05:24:35'),
(16, 22, 'fsdfssdfsdfsdf', '2016-01-29 05:25:45', '2016-01-29 05:25:45'),
(17, 23, 'Biodata', '2016-02-09 00:06:03', '2016-02-09 00:06:03'),
(18, 24, '', '2016-02-13 03:24:28', '2016-02-13 03:24:28'),
(19, 25, 'egfs', '2016-02-13 04:59:03', '2016-02-13 04:59:03'),
(20, 26, '', '2016-02-13 05:48:35', '2016-02-13 05:48:35'),
(21, 27, '', '2016-02-13 06:02:24', '2016-02-13 06:02:24'),
(22, 28, '', '2016-02-13 21:20:23', '2016-02-13 21:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `developers`
--

CREATE TABLE `developers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 is available 0 is not',
  `del_flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 is exists 0 is not',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `developers`
--

INSERT INTO `developers` (`id`, `name`, `email`, `password`, `image`, `is_available`, `del_flag`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'Aashish Adhikari', 'aa@gmail.com', 'password', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(9, 'Vishal Thapa', 'vishalthapa@gmail.com', '123456', '', 1, 1, '2016-01-27 02:58:52', '2016-01-27 02:58:52', NULL),
(10, 'Yogendra b Shrestha', 'id_ybs@hotmail.com', '123456', '', 1, 1, '2016-01-27 03:01:26', '2016-01-27 03:01:26', NULL),
(20, 'Narendra', 'naren@gmail.com', '123456', '', 1, 1, '2016-01-29 04:05:19', '2016-01-29 04:05:19', NULL),
(21, 'Kripesh', 'kri@gmail.com', '123456', '', 1, 1, '2016-01-29 05:06:26', '2016-01-29 05:06:26', NULL),
(22, 'Dixanta', 'dd@gmial.com', '123456', '', 1, 1, '2016-01-29 05:24:29', '2016-01-29 05:24:29', NULL),
(23, 'Yogendra Bahadur Shrestha', 'id_ybs@email.com', '12345678', '', 1, 1, '2016-02-09 00:03:45', '2016-02-09 00:03:45', NULL),
(24, 'Yogendra', 'i@i.com', '123456', '', 1, 1, '2016-02-13 03:24:25', '2016-02-13 03:24:25', NULL),
(25, 'Yogendra', 'email@test.com', '123456', '', 1, 1, '2016-02-13 04:58:44', '2016-02-13 04:58:44', NULL),
(26, 'Vishal', 'besal@test.com', '123456', '', 1, 1, '2016-02-13 05:48:32', '2016-02-13 05:48:32', NULL),
(27, 'Ashish', 'ashis@email.com', '123456', '', 1, 1, '2016-02-13 06:02:21', '2016-02-13 06:02:21', NULL),
(28, 'YOYO', 'yoyo@yoyo.com', 'yoyoyo', '', 1, 1, '2016-02-13 21:20:20', '2016-02-13 21:20:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(10) UNSIGNED NOT NULL,
  `developer_id` int(10) UNSIGNED NOT NULL,
  `course` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `university` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `developer_id`, `course`, `university`, `duration`, `created_at`, `updated_at`) VALUES
(1, 1, 'BScIT and BIM', 'Sikkim Manipal University', '2012-2016', '0000-00-00 00:00:00', '2016-01-29 02:08:14'),
(3, 9, 'B.E. ( Computer )', 'T.U.', '2010-2014', '2016-01-27 02:59:46', '2016-01-27 02:59:46'),
(4, 10, 'B.E. ( Computer )', 'T.U.', '2010-2014', '2016-01-27 03:02:25', '2016-01-27 03:02:25'),
(7, 20, 'B.E. ( Computer )', 'Sikkim Manipal University', '2010-2014', '2016-01-29 04:06:12', '2016-01-29 04:06:12'),
(8, 21, 'sadf', 'sadf', 'sdf', '2016-01-29 05:06:33', '2016-01-29 05:06:33'),
(9, 21, 'sadf', 'sadf', 'sdf', '2016-01-29 05:19:53', '2016-01-29 05:19:53'),
(10, 22, '', '', '', '2016-01-29 05:24:35', '2016-01-29 05:24:35'),
(11, 22, '', '', '', '2016-01-29 05:25:45', '2016-01-29 05:25:45'),
(12, 23, 'Education', 'University', '4 yrs', '2016-02-09 00:06:03', '2016-02-09 00:06:03'),
(13, 24, '', '', '', '2016-02-13 03:24:28', '2016-02-13 03:24:28'),
(14, 25, 'sdfg', 'sdfg', 'sdfg', '2016-02-13 04:59:03', '2016-02-13 04:59:03'),
(15, 26, '', '', '', '2016-02-13 05:48:35', '2016-02-13 05:48:35'),
(16, 27, '', '', '', '2016-02-13 06:02:24', '2016-02-13 06:02:24'),
(17, 28, '', '', '', '2016-02-13 21:20:23', '2016-02-13 21:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` int(10) UNSIGNED NOT NULL,
  `developer_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `developer_id`, `title`, `detail`, `created_at`, `updated_at`) VALUES
(1, 1, 'Developer', 'PHP, JS, Laravel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 9, '', '', '2016-01-27 02:59:46', '2016-01-27 02:59:46'),
(4, 10, 'proj', 'project', '2016-01-27 03:02:25', '2016-01-27 03:02:25'),
(7, 20, 'Pattern', 'Pattern', '2016-01-29 04:06:12', '2016-01-29 04:06:12'),
(8, 21, '', '', '2016-01-29 05:06:33', '2016-01-29 05:06:33'),
(9, 21, '', '', '2016-01-29 05:19:54', '2016-01-29 05:19:54'),
(10, 22, '', '', '2016-01-29 05:24:35', '2016-01-29 05:24:35'),
(11, 22, '', '', '2016-01-29 05:25:46', '2016-01-29 05:25:46'),
(12, 23, 'Projects', 'Detail of projects', '2016-02-09 00:06:04', '2016-02-09 00:06:04'),
(13, 24, '', '', '2016-02-13 03:24:28', '2016-02-13 03:24:28'),
(14, 25, 'sdfg', 'sdfg', '2016-02-13 04:59:03', '2016-02-13 04:59:03'),
(15, 26, '', '', '2016-02-13 05:48:35', '2016-02-13 05:48:35'),
(16, 27, '', '', '2016-02-13 06:02:24', '2016-02-13 06:02:24'),
(17, 28, '', '', '2016-02-13 21:20:23', '2016-02-13 21:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_01_21_083852_create_developers_table', 1),
('2016_01_21_085220_create_skills_table', 1),
('2016_01_21_085826_create_experiences_table', 1),
('2016_01_21_090156_create_projects_table', 1),
('2016_01_21_090420_create_biodatas_table', 1),
('2016_01_24_033133_create_education_table', 1),
('2016_02_13_111837_add_remember_token_to_developers_table', 2),
('2016_02_13_112607_add_remember_token_to_developers_table', 3),
('2016_02_13_114024_create_password_resets_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `developer_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `developer_id`, `title`, `detail`, `created_at`, `updated_at`) VALUES
(1, 1, 'Project 1', 'First Project.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 9, '', '', '2016-01-27 02:59:46', '2016-01-27 02:59:46'),
(4, 10, 'proj', 'project', '2016-01-27 03:02:25', '2016-01-27 03:02:25'),
(7, 20, 'Pattern', 'Pattern', '2016-01-29 04:06:12', '2016-01-29 04:06:12'),
(8, 21, '', '', '2016-01-29 05:06:33', '2016-01-29 05:06:33'),
(9, 21, '', '', '2016-01-29 05:19:54', '2016-01-29 05:19:54'),
(10, 22, '', '', '2016-01-29 05:24:35', '2016-01-29 05:24:35'),
(11, 22, '', '', '2016-01-29 05:25:46', '2016-01-29 05:25:46'),
(12, 23, 'Projects', 'Detail of projects', '2016-02-09 00:06:04', '2016-02-09 00:06:04'),
(13, 24, '', '', '2016-02-13 03:24:28', '2016-02-13 03:24:28'),
(14, 25, 'sdfg', 'sdfg', '2016-02-13 04:59:03', '2016-02-13 04:59:03'),
(15, 26, '', '', '2016-02-13 05:48:35', '2016-02-13 05:48:35'),
(16, 27, '', '', '2016-02-13 06:02:24', '2016-02-13 06:02:24'),
(17, 28, '', '', '2016-02-13 21:20:23', '2016-02-13 21:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `developer_id` int(10) UNSIGNED NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `framework` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `library` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tool` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `other` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `developer_id`, `language`, `framework`, `library`, `tool`, `storage`, `other`, `created_at`, `updated_at`) VALUES
(1, 1, 'C, C++, PHP, JS, Java', 'Angular.js, Node.js, Laravel', 'jQuery', 'SublimeText, PHPStorm', 'MySQL, SequelPRO, ORACLE', 'and many others', '0000-00-00 00:00:00', '2016-01-29 02:08:14'),
(2, 9, 'C, C++, Java, PHP, C#, JS, Python', 'Angular, Node, Laravel', 'jQuery', 'SublimeText, Eclipse, Visual Studio, PHPStorm', 'MySQL, ORACLE, MS-ACCESS, MongoDB', 'And many others.', '2016-01-27 02:59:46', '2016-01-27 02:59:46'),
(3, 10, 'C, C++, Java, PHP, C#, JS, Python', 'Angular, Node, Laravel', 'jQuery', 'SublimeText, Eclipse, Visual Studio, PHPStorm', 'MySQL, ORACLE, MS-ACCESS, MongoDB', 'And many others.', '2016-01-27 03:02:25', '2016-01-27 03:02:25'),
(6, 20, 'C, C++, Java, PHP, C#, JS, Python', 'Angular, Node, Laravel', 'jQuery', 'SublimeText, Eclipse, Visual Studio, PHPStorm', 'MySQL, ORACLE, MS-ACCESS, MongoDB', 'And many others.', '2016-01-29 04:06:12', '2016-01-29 04:06:12'),
(7, 21, '', '', '', '', '', '', '2016-01-29 05:06:33', '2016-01-29 05:06:33'),
(8, 21, '', '', '', '', '', '', '2016-01-29 05:19:53', '2016-01-29 05:19:53'),
(9, 22, '', '', '', '', '', '', '2016-01-29 05:24:35', '2016-01-29 05:24:35'),
(10, 22, '', '', '', '', '', '', '2016-01-29 05:25:45', '2016-01-29 05:25:45'),
(11, 23, 'PHP', 'Angular, Node, Laravel', 'jQuery', 'SublimeText, Eclipse, Visual Studio, PHPStorm', 'MySQL, ORACLE, MS-ACCESS, MongoDB', 'And many others.', '2016-02-09 00:06:03', '2016-02-09 00:06:03'),
(12, 24, '', '', '', '', '', '', '2016-02-13 03:24:28', '2016-02-13 03:24:28'),
(13, 25, 'sdfg', 'sdfg', 'sdfg', 'sdfg', 'sdfg', 'sdfg', '2016-02-13 04:59:03', '2016-02-13 04:59:03'),
(14, 26, '', '', '', '', '', '', '2016-02-13 05:48:35', '2016-02-13 05:48:35'),
(15, 27, '', '', '', '', '', '', '2016-02-13 06:02:24', '2016-02-13 06:02:24'),
(16, 28, '', '', '', '', '', '', '2016-02-13 21:20:23', '2016-02-13 21:20:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodatas`
--
ALTER TABLE `biodatas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `biodatas_developer_id_index` (`developer_id`);

--
-- Indexes for table `developers`
--
ALTER TABLE `developers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `developers_email_unique` (`email`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `education_developer_id_index` (`developer_id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `experiences_developer_id_index` (`developer_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_developer_id_index` (`developer_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skills_developer_id_index` (`developer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biodatas`
--
ALTER TABLE `biodatas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `developers`
--
ALTER TABLE `developers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `biodatas`
--
ALTER TABLE `biodatas`
  ADD CONSTRAINT `biodatas_developer_id_foreign` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`);

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_developer_id_foreign` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`);

--
-- Constraints for table `experiences`
--
ALTER TABLE `experiences`
  ADD CONSTRAINT `experiences_developer_id_foreign` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_developer_id_foreign` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`);

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_developer_id_foreign` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`);
