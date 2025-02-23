-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 23, 2025 at 01:18 PM
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

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `edate`, `address`, `phone`, `email`, `company_type`, `website`, `CEO`, `created_at`, `updated_at`) VALUES
(1, 'Tech Innovators', '2025-01-01', '123 Tech Lane, Silicon Valley', '123-456-7890', 'contact@techinnovators.com', 'Technology', 'https://www.techinnovators.com', 'John Doe', '2025-02-22 06:58:38', '2025-02-22 06:58:38'),
(2, 'Green Solutions', '2025-02-01', '456 Green St, New York', '234-567-8901', 'info@greensolutions.com', 'Environmental', 'https://www.greensolutions.com', 'Alice Brown', '2025-02-22 06:58:38', '2025-02-22 06:58:38'),
(3, 'Global Logistics', '2025-03-15', '789 Logistics Ave, Chicago', '345-678-9012', 'support@globallogistics.com', 'Logistics', 'https://www.globallogistics.com', 'David Smith', '2025-02-22 06:58:38', '2025-02-22 06:58:38'),
(4, 'Creative Designs', '2025-04-10', '101 Design Blvd, Los Angeles', '456-789-0123', 'hello@creativedesigns.com', 'Design', 'https://www.creativedesigns.com', 'George Lee', '2025-02-22 06:58:38', '2025-02-22 06:58:38'),
(5, 'Eco Foods', '2025-05-01', '202 Eco Rd, San Francisco', '567-890-1234', 'contact@ecofoods.com', 'Food & Beverage', 'https://www.ecofoods.com', 'Kathy Evans', '2025-02-22 06:58:38', '2025-02-22 06:58:38'),
(6, 'Health First', '2025-06-01', '303 Wellness Way, Boston', '678-901-2345', 'support@healthfirst.com', 'Healthcare', 'https://www.healthfirst.com', 'Mike Johnson', '2025-02-22 06:58:38', '2025-02-22 06:58:38'),
(7, 'Digital Creations', '2025-07-15', '404 Digital Drive, Seattle', '789-012-3456', 'info@digitalcreations.com', 'Technology', 'https://www.digitalcreations.com', 'Rachel Adams', '2025-02-22 06:58:38', '2025-02-22 06:58:38'),
(8, 'BuildIt Construction', '2025-08-01', '505 Build St, Miami', '890-123-4567', 'contact@buildit.com', 'Construction', 'https://www.buildit.com', 'Victor Black', '2025-02-22 06:58:38', '2025-02-22 06:58:38'),
(9, 'Smart Solutions', '2025-09-10', '606 Smart St, Dallas', '901-234-5678', 'support@smartsolutions.com', 'Technology', 'https://www.smartsolutions.com', 'Walter King', '2025-02-22 06:58:38', '2025-02-22 06:58:38'),
(10, 'Future Industries', '2025-10-01', '707 Future Blvd, Austin', '012-345-6789', 'info@futureindustries.com', 'Manufacturing', 'https://www.futureindustries.com', 'Xena Black', '2025-02-22 06:58:38', '2025-02-22 06:58:38');

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
(7, 'App\\Models\\User', 21, 'api_token', 'f12224e7b8a1990662157249627a94e6cf5fdf87257e4b69ff7c3f1564b0b9a5', '[\"*\"]', NULL, NULL, '2025-02-12 20:36:52', '2025-02-12 20:36:52'),
(8, 'App\\Models\\User', 32, 'api_token', 'b3b6f99741e107152afa7f536a147444b69a4f3444bdcfb017bb5d1a8fc2056a', '[\"*\"]', NULL, NULL, '2025-02-22 23:24:10', '2025-02-22 23:24:10');

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
('LPx7grEewZstsVy5YS0KSFx66Y60xRTWZRZUSOad', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:135.0) Gecko/20100101 Firefox/135.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFAzU3dTVXUyeVgzcUJ1d3B3MVYwWXpvUVZZQ3kzb2hZY3pvRXU1NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1740287350);

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

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `description`, `sdate`, `edate`, `employee`, `priority`, `status`, `workspaceId`, `projectId`, `created_at`, `updated_at`) VALUES
(2, 'Task Beta', 'UI/UX design for the app.', '2025-03-01', '2025-03-15', '{\"employee1\": \"Alice\", \"employee2\": \"Bob\"}', 'Medium', 'not started', 'W002', 'P002', '2025-02-22 06:57:42', '2025-02-22 06:57:42'),
(3, 'Task Gamma', 'Research and data collection on AI.', '2025-04-01', '2025-04-20', '{\"employee1\": \"David\", \"employee2\": \"Emma\"}', 'Low', 'not started', 'W003', 'P003', '2025-02-22 06:57:42', '2025-02-22 06:57:42'),
(4, 'Task Delta', 'Redesign website layout.', '2025-02-10', '2025-03-01', '{\"employee1\": \"George\", \"employee2\": \"Hannah\"}', 'High', 'not started', 'W004', 'P004', '2025-02-22 06:57:42', '2025-02-22 06:57:42'),
(5, 'Task Epsilon', 'Marketing analysis report preparation.', '2025-05-01', '2025-05-15', '{\"employee1\": \"Jack\", \"employee2\": \"Kathy\"}', 'Medium', 'not started', 'W005', 'P005', '2025-02-22 06:57:42', '2025-02-22 06:57:42'),
(6, 'Task Zeta', 'Setup cloud infrastructure.', '2025-02-15', '2025-03-10', '{\"employee1\": \"Mike\", \"employee2\": \"Nina\"}', 'High', 'not started', 'W006', 'P006', '2025-02-22 06:57:42', '2025-02-22 06:57:42'),
(7, 'Task Theta', 'Security testing for the infrastructure.', '2025-03-20', '2025-04-10', '{\"employee1\": \"Paul\", \"employee2\": \"Quincy\"}', 'Medium', 'not started', 'W007', 'P007', '2025-02-22 06:57:42', '2025-02-22 06:57:42');

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
(21, NULL, 'Archana', 'Timilsinna', NULL, '9898879', NULL, '8888', 'archanatimilsina88@gmail.com', '$2y$12$bxrwA2rAWuJCl7Amx.wPYOvDEhZI1uswbc4PjqOz4E/KXpvjZLBmK', NULL, NULL, '2025-01-30 23:22:29', '2025-01-30 23:22:29', 'employee'),
(22, NULL, 'User1', 'Test1', 'Address 1', '9876543201', 'Female', 'SCODE-0001', 'user1@example.com', '$2b$12$M9ZoaGxLVUtwEvz7Bj7ke.WwuVsevpSghwkYJPg56hRm9RMxnP3jG', NULL, NULL, NULL, NULL, 'employee'),
(23, NULL, 'User2', 'Test2', 'Address 2', '9876543202', 'Male', 'SCODE-0002', 'user2@example.com', '$2b$12$vznAT/KMaDrlGXEGHKtNKONlXUd//JSHdwzrFkp1ViKV1siMlfRrK', NULL, NULL, NULL, NULL, 'employee'),
(24, NULL, 'User3', 'Test3', 'Address 3', '9876543203', 'Female', 'SCODE-0003', 'user3@example.com', '$2b$12$65E8mxDRP9QEt0pgZcSSP.CMRmqRt5/aN1K6Z9MMGPaTOYa38PuT.', NULL, NULL, NULL, NULL, 'employee'),
(25, NULL, 'User4', 'Test4', 'Address 4', '9876543204', 'Male', 'SCODE-0004', 'user4@example.com', '$2b$12$J8L7Sg7kG6FZuwghmUEDZ.pKB65XU5JpBNH5jivdDovvRCpHJMKtq', NULL, NULL, NULL, NULL, 'employee'),
(26, NULL, 'User5', 'Test5', 'Address 5', '9876543205', 'Female', 'SCODE-0005', 'user5@example.com', '$2b$12$An4W9NhHcN2yJhI8Fp1DLOmL/Z3UFA5cTnncdKBzBBv06r1P9oC0m', NULL, NULL, NULL, NULL, 'employee'),
(27, NULL, 'User6', 'Test6', 'Address 6', '9876543206', 'Male', 'SCODE-0006', 'user6@example.com', '$2b$12$zPIyzN7zYz1fAGCWYOlFXuMv7Dd7mV54uMPGT70pKX8EaHdJPLISq', NULL, NULL, NULL, NULL, 'employee'),
(28, NULL, 'User7', 'Test7', 'Address 7', '9876543207', 'Female', 'SCODE-0007', 'user7@example.com', '$2b$12$8y.kB8ZwHD51O1FmWqZIZuJTOhx77Av8T/6plfPhn65iXOPbfN3Ti', NULL, NULL, NULL, NULL, 'employee'),
(29, NULL, 'User8', 'Test8', 'Address 8', '9876543208', 'Male', 'SCODE-0008', 'user8@example.com', '$2b$12$XOdj55HovhD91e6WyEoEbuEqhdmSwOfpPMJWQuSOucDPrB6VcoQyC', NULL, NULL, NULL, NULL, 'employee'),
(30, NULL, 'User9', 'Test9', 'Address 9', '9876543209', 'Female', 'SCODE-0009', 'user9@example.com', '$2b$12$ZJ42vXq.ejGzYOslpV68c.8Qs7aKH4P34n5M.5/WCMH2rJmYoPHy6', NULL, NULL, NULL, NULL, 'employee'),
(31, NULL, 'User10', 'Test10', 'Address 10', '9876543210', 'Male', 'SCODE-0010', 'user10@example.com', '$2b$12$UdttfsrZd8Kcd9eXfHjVfOLw2dWE/hF/KtO5lRdaFqRcebd1ExECm', NULL, NULL, NULL, NULL, 'employee'),
(32, NULL, 'Dikshya', 'Shrestha', NULL, '9876554433', NULL, '8888', 'dikshyashrestha679@gmail.com', '$2y$12$Pn40lxXQKbsyiE0jfaSnx.jUKc32Tt3ikaMAFR2vYKu9ehRuGSZmq', NULL, NULL, '2025-02-22 23:23:03', '2025-02-22 23:23:03', 'employee');

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

--
-- Dumping data for table `user_verif_queues`
--

INSERT INTO `user_verif_queues` (`id`, `fname`, `lname`, `phone`, `email`, `password`, `created_at`, `updated_at`) VALUES
(11, 'John', 'Doe', '9876543211', 'john.doe@example.com', '$2b$12$abc123abc123abc123abc123abc123abc123abc123abc123abc123', NULL, NULL),
(12, 'Jane', 'Smith', '9876543212', 'jane.smith@example.com', '$2b$12$def456def456def456def456def456def456def456def456def456', NULL, NULL),
(13, 'Alice', 'Johnson', '9876543213', 'alice.johnson@example.com', '$2b$12$ghi789ghi789ghi789ghi789ghi789ghi789ghi789ghi789ghi789', NULL, NULL),
(14, 'Bob', 'Williams', '9876543214', 'bob.williams@example.com', '$2b$12$jkl012jkl012jkl012jkl012jkl012jkl012jkl012jkl012jkl012', NULL, NULL),
(15, 'Charlie', 'Brown', '9876543215', 'charlie.brown@example.com', '$2b$12$mno345mno345mno345mno345mno345mno345mno345mno345mno345', NULL, NULL);

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
-- Dumping data for table `workspaces`
--

INSERT INTO `workspaces` (`id`, `name`, `description`, `sdate`, `edate`, `members`, `leader`, `status`, `projectId`, `created_at`, `updated_at`) VALUES
(1, 'Project Alpha', 'This is the first project.', '2025-02-01', '2025-06-01', '{\"member1\": \"John\", \"member2\": \"Jane\"}', 'John Doe', 'not started', 'P001', '2025-02-22 06:56:33', '2025-02-22 06:56:33'),
(2, 'Project Beta', 'A project for developing a new app.', '2025-03-01', '2025-07-01', '{\"member1\": \"Alice\", \"member2\": \"Bob\", \"member3\": \"Charlie\"}', 'Alice Brown', 'not started', 'P002', '2025-02-22 06:56:33', '2025-02-22 06:56:33'),
(3, 'Project Gamma', 'A research project in AI.', '2025-04-01', '2025-10-01', '{\"member1\": \"David\", \"member2\": \"Emma\"}', 'David Smith', 'not started', 'P003', '2025-02-22 06:56:33', '2025-02-22 06:56:33'),
(4, 'Project Delta', 'Website redesign project.', '2025-02-10', '2025-08-10', '{\"member1\": \"George\", \"member2\": \"Hannah\", \"member3\": \"Isla\"}', 'George Lee', 'not started', 'P004', '2025-02-22 06:56:33', '2025-02-22 06:56:33'),
(5, 'Project Epsilon', 'Data analysis project for marketing.', '2025-05-01', '2025-09-01', '{\"member1\": \"Jack\", \"member2\": \"Kathy\"}', 'Kathy Evans', 'not started', 'P005', '2025-02-22 06:56:33', '2025-02-22 06:56:33'),
(6, 'Project Zeta', 'Development of a new e-commerce platform.', '2025-02-15', '2025-07-15', '{\"member1\": \"Mike\", \"member2\": \"Nina\", \"member3\": \"Oscar\"}', 'Mike Johnson', 'not started', 'P006', '2025-02-22 06:56:33', '2025-02-22 06:56:33'),
(7, 'Project Theta', 'Cloud infrastructure setup project.', '2025-03-20', '2025-09-20', '{\"member1\": \"Paul\", \"member2\": \"Quincy\"}', 'Paul Harris', 'not started', 'P007', '2025-02-22 06:56:33', '2025-02-22 06:56:33'),
(8, 'Project Iota', 'New software development for enterprise solutions.', '2025-04-15', '2025-10-15', '{\"member1\": \"Rachel\", \"member2\": \"Steve\", \"member3\": \"Tom\"}', 'Rachel Adams', 'not started', 'P008', '2025-02-22 06:56:33', '2025-02-22 06:56:33'),
(9, 'Project Kappa', 'Implementation of cybersecurity measures.', '2025-06-01', '2025-12-01', '{\"member1\": \"Ursula\", \"member2\": \"Victor\"}', 'Victor Black', 'not started', 'P009', '2025-02-22 06:56:33', '2025-02-22 06:56:33'),
(10, 'Project Lambda', 'Customer support platform upgrade.', '2025-07-01', '2025-12-01', '{\"member1\": \"Walter\", \"member2\": \"Xena\", \"member3\": \"Yara\"}', 'Walter King', 'not started', 'P010', '2025-02-22 06:56:33', '2025-02-22 06:56:33');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user_verif_queues`
--
ALTER TABLE `user_verif_queues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `workspaces`
--
ALTER TABLE `workspaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
