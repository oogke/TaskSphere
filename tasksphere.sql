-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 22, 2025 at 07:43 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tasksphere`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `edate` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `company_type` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `CEO` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_25_074116_create_user_verif_queues_table', 1),
(5, '2025_01_26_055553_create_personal_access_tokens_table', 2),
(6, '2025_01_27_121526_update_users_table', 3),
(7, '2025_01_27_121557_update_user_verif_queues_table', 3),
(8, '2025_01_31_065058_create_businesses_table', 4),
(9, '2025_01_31_065118_create_business_types_table', 4),
(10, '2025_01_31_065130_create_roles_table', 4),
(11, '2025_01_31_065207_create_notices_table', 4),
(12, '2025_01_31_065218_create_attendances_table', 4),
(13, '2025_01_31_065238_create_tasks_table', 4),
(14, '2025_02_12_053328_update_users_table', 5),
(15, '2025_02_12_085309_update_database', 6),
(16, '2025_02_13_004149_create_tasks_table', 7),
(17, '2025_02_13_004212_create_companies_table', 7),
(18, '2025_02_13_004253_create_projects_table', 7),
(19, '2025_02_13_004304_create_workspaces_table', 7),
(20, '2025_02_13_075715_update_workspaces_table', 8),
(21, '2025_02_13_075735_update_tasks_table', 8),
(22, '2025_02_13_075748_update_projects_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\userVerifQueue', 3, 'api_token', '7afe55dc1b8c989420fe465e787333755ba552b25f73f5c3a67a0b0e11c9becf', '[\"*\"]', NULL, NULL, '2025-01-27 07:02:15', '2025-01-27 07:02:15'),
(2, 'App\\Models\\userVerifQueue', 3, 'api_token', '3d2d28095a3292e166c506204ea8cc0d8670c58125b3f9ef168aae29926f38b0', '[\"*\"]', NULL, NULL, '2025-01-27 07:02:44', '2025-01-27 07:02:44'),
(3, 'App\\Models\\userVerifQueue', 4, 'api_token', '21994b6a24f02e51591f9f64bc8fdc05f915e50a118328e36da9c48acd9aebad', '[\"*\"]', NULL, NULL, '2025-01-28 21:47:01', '2025-01-28 21:47:01'),
(4, 'App\\Models\\User', 18, 'api_token', 'd7e92fbe00b086aed738d63d047341c26b3a22e3d9b900f09f098a1b82e52c00', '[\"*\"]', NULL, NULL, '2025-01-29 21:58:52', '2025-01-29 21:58:52'),
(5, 'App\\Models\\User', 19, 'api_token', '96f6d4c4efd07677d43cdfa6f8713192ea1d47c04b04909f0d927c617ff1250f', '[\"*\"]', NULL, NULL, '2025-01-29 22:39:10', '2025-01-29 22:39:10'),
(6, 'App\\Models\\User', 21, 'api_token', '1999852c774e8a4d4ce9d6da87ab22010bea7ca2d7ac038bf54c0e351f635172', '[\"*\"]', NULL, NULL, '2025-01-30 23:23:08', '2025-01-30 23:23:08'),
(7, 'App\\Models\\User', 21, 'api_token', 'f12224e7b8a1990662157249627a94e6cf5fdf87257e4b69ff7c3f1564b0b9a5', '[\"*\"]', NULL, NULL, '2025-02-12 20:36:52', '2025-02-12 20:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `sdate` date NOT NULL,
  `edate` date NOT NULL,
  `members` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`members`)),
  `leader` varchar(255) DEFAULT NULL,
  `workspaceCount` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'not started',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `description`, `sdate`, `edate`, `members`, `leader`, `workspaceCount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Website Redesign', 'Redesign the company website for better UX', '2025-02-01', '2025-03-15', '[\"John\", \"Emily\", \"David\"]', 'John', '5', 'in progress', '2025-02-14 01:25:23', '2025-02-14 01:25:23'),
(2, 'Mobile App Development', 'Develop a cross-platform mobile application', '2025-01-10', '2025-05-20', '[\"Alice\", \"Bob\", \"Charlie\"]', 'Alice', '8', 'not started', '2025-02-14 01:25:23', '2025-02-14 01:25:23'),
(3, 'AI Chatbot', 'Build an AI-powered chatbot for customer support', '2025-03-01', '2025-06-30', '[\"Mike\", \"Sophia\", \"Daniel\"]', 'Mike', '3', 'in progress', '2025-02-14 01:25:23', '2025-02-14 01:25:23'),
(4, 'E-commerce Platform', 'Create an online marketplace for local vendors', '2025-02-15', '2025-08-01', '[\"Liam\", \"Olivia\", \"Ethan\"]', 'Liam', '10', 'on hold', '2025-02-14 01:25:23', '2025-02-14 01:25:23'),
(5, 'CRM System', 'Implement a new customer relationship management system', '2025-04-05', '2025-09-10', '[\"Emma\", \"Noah\", \"Ava\"]', 'Emma', '4', 'not started', '2025-02-14 01:25:23', '2025-02-14 01:25:23'),
(6, 'Data Analytics Dashboard', 'Develop a real-time analytics dashboard', '2025-01-20', '2025-04-15', '[\"Oliver\", \"Isabella\", \"Lucas\"]', 'Oliver', '6', 'completed', '2025-02-14 01:25:23', '2025-02-14 01:25:23'),
(7, 'Cloud Migration', 'Migrate company infrastructure to cloud', '2025-05-01', '2025-12-01', '[\"Mason\", \"Mia\", \"Elijah\"]', 'Mason', '7', 'in progress', '2025-02-14 01:25:23', '2025-02-14 01:25:23'),
(8, 'Cybersecurity Audit', 'Conduct a full security assessment', '2025-02-10', '2025-06-30', '[\"Amelia\", \"James\", \"Alexander\"]', 'Amelia', '3', 'on hold', '2025-02-14 01:25:23', '2025-02-14 01:25:23'),
(9, 'SEO Optimization', 'Improve website SEO for better search rankings', '2025-01-05', '2025-02-25', '[\"Benjamin\", \"Charlotte\", \"Henry\"]', 'Benjamin', '2', 'completed', '2025-02-14 01:25:23', '2025-02-14 01:25:23'),
(10, 'Inventory Management System', 'Automate inventory tracking for warehouses', '2025-06-01', '2025-11-01', '[\"Evelyn\", \"William\", \"Sophia\"]', 'Evelyn', '5', 'not started', '2025-02-14 01:25:23', '2025-02-14 01:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('oUuBVSvklDKbIJ9XaMg6RD1IFUit7lVfvGaLtvQB', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:135.0) Gecko/20100101 Firefox/135.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzlrVkZXeFdmVzZCaXhPM3BEcWc4OUJkOExQcndYWU9ITExDcVN2TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740117408),
('ZnJU526mTb28TeuktVPSKaQZB4ldlvGszd9r4Mv0', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:135.0) Gecko/20100101 Firefox/135.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRldTM09EVWtOSkxDNVpQWGpWOEJNdlBhWm4wbHg4VHpjSTZRcWhtMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740205880);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `sdate` date NOT NULL,
  `edate` date NOT NULL,
  `employee` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`employee`)),
  `priority` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'not started',
  `workspaceId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile` varchar(400) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `scode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `citizenCardFront` varchar(400) DEFAULT NULL,
  `citizenCardBack` varchar(400) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'employee'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `profile`, `fname`, `lname`, `address`, `phone`, `gender`, `scode`, `email`, `password`, `citizenCardFront`, `citizenCardBack`, `created_at`, `updated_at`, `role`) VALUES
(21, NULL, 'Archana', 'Timilsinna', NULL, '9898879', NULL, '8888', 'archanatimilsina88@gmail.com', '$2y$12$bxrwA2rAWuJCl7Amx.wPYOvDEhZI1uswbc4PjqOz4E/KXpvjZLBmK', NULL, NULL, '2025-01-30 23:22:29', '2025-01-30 23:22:29', 'employee');

-- --------------------------------------------------------

--
-- Table structure for table `user_verif_queues`
--

CREATE TABLE `user_verif_queues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workspaces`
--

CREATE TABLE `workspaces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `sdate` date NOT NULL,
  `edate` date NOT NULL,
  `members` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`members`)),
  `leader` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'not started',
  `projectId` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_phone_unique` (`phone`),
  ADD UNIQUE KEY `companies_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_verif_queues`
--
ALTER TABLE `user_verif_queues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_verif_queues_email_unique` (`email`);

--
-- Indexes for table `workspaces`
--
ALTER TABLE `workspaces`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_verif_queues`
--
ALTER TABLE `user_verif_queues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `workspaces`
--
ALTER TABLE `workspaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
