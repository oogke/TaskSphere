-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 03, 2025 at 02:03 PM
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
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `attendance` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(22, '2025_02_13_075748_update_projects_table', 8),
(23, '2025_04_30_143401_create_notices_table', 9),
(24, '2025_04_30_143401_create_todos_table', 9),
(25, '2025_04_30_143613_create_attendances_table', 9),
(26, '2025_05_01_053459_update_default_role_in_users_table', 10),
(27, '2025_05_02_081242_create_forums_table', 11),
(28, '2025_05_03_120032_add_column_name_to_todos_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `noticeHead` varchar(255) NOT NULL,
  `noticeDescription` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(8, 'App\\Models\\User', 32, 'api_token', 'b3b6f99741e107152afa7f536a147444b69a4f3444bdcfb017bb5d1a8fc2056a', '[\"*\"]', NULL, NULL, '2025-02-22 23:24:10', '2025-02-22 23:24:10'),
(9, 'App\\Models\\User', 38, 'api_token', '1cfc4f99da5388eb77dd2593557c1dc5d129f4ebcbd4da4e11a2f332e8d39b57', '[\"*\"]', NULL, NULL, '2025-02-23 20:33:21', '2025-02-23 20:33:21'),
(10, 'App\\Models\\User', 38, 'api_token', '0fafc589998703dd1450d92a5a40327fcb2324dc199fd9e8a0fb9547a43a451c', '[\"*\"]', NULL, NULL, '2025-04-18 21:24:08', '2025-04-18 21:24:08'),
(11, 'App\\Models\\User', 38, 'api_token', '8fee669821c1bad9a3a883075007e2d9d26fa73fc80a8630b3eecc528ef2368c', '[\"*\"]', NULL, NULL, '2025-04-18 21:26:23', '2025-04-18 21:26:23'),
(12, 'App\\Models\\User', 38, 'api_token', '8b9886898b0d2e45bb50a6111c02d8a13edc257f995f27975abfd59284346b9e', '[\"*\"]', NULL, NULL, '2025-04-18 21:27:56', '2025-04-18 21:27:56'),
(13, 'App\\Models\\User', 38, 'api_token', '6aff3d194eace076b634142f9bcd0a71184352cd1b57f844e83cde0b5229601c', '[\"*\"]', NULL, NULL, '2025-04-18 21:28:29', '2025-04-18 21:28:29'),
(14, 'App\\Models\\User', 38, 'api_token', 'e17c9f2dc612820828f1500cd840ed66d3bacbbd6a8148b0405153887e0eb153', '[\"*\"]', NULL, NULL, '2025-04-18 21:29:20', '2025-04-18 21:29:20'),
(15, 'App\\Models\\User', 38, 'api_token', '9dabb4bc685182f5aaa94cf035b3ac4903547783bbdcd4097af556993142ccd7', '[\"*\"]', NULL, NULL, '2025-04-18 21:30:13', '2025-04-18 21:30:13'),
(16, 'App\\Models\\User', 38, 'api_token', '40ee881018a23b74239f4c4867c5bcf4eb817a4f5e0ec4bcaa80441d87e1451b', '[\"*\"]', NULL, NULL, '2025-04-18 21:36:55', '2025-04-18 21:36:55'),
(17, 'App\\Models\\User', 39, 'api_token', '88b3154f3e91c569b7cfaffaa63b390b7a7ef5f210b7258f2ac5ffebbfb720b1', '[\"*\"]', NULL, NULL, '2025-04-27 20:53:26', '2025-04-27 20:53:26'),
(18, 'App\\Models\\User', 92, 'api_token', '7e163d29a2d96ee83c8a86c328118941b3a51c0671c45676cb7b97f7b6b03572', '[\"*\"]', NULL, NULL, '2025-04-30 23:44:19', '2025-04-30 23:44:19'),
(19, 'App\\Models\\User', 91, 'api_token', '9fced07aa336c73d3d550e9ec640902850d6c0ff7922cb7ff13e877401ca1fad', '[\"*\"]', NULL, NULL, '2025-04-30 23:45:30', '2025-04-30 23:45:30'),
(20, 'App\\Models\\User', 98, 'api_token', '8aad7c0183b8b85149b2e52c8470469374b2d9f9b3ecc5d6826c6fd2be96cf88', '[\"*\"]', NULL, NULL, '2025-05-03 03:36:43', '2025-05-03 03:36:43'),
(21, 'App\\Models\\User', 98, 'api_token', 'bc85b22909f2b6f1d2b47d1c8ca69f1d6981d66a6e380c6de0c2476691b16ab7', '[\"*\"]', NULL, NULL, '2025-05-03 03:37:40', '2025-05-03 03:37:40'),
(22, 'App\\Models\\User', 98, 'api_token', '662acdd5940087e36853b1f8fe47489ea5a6c3dcbef7dfa99a3b50c0641cec11', '[\"*\"]', NULL, NULL, '2025-05-03 03:38:25', '2025-05-03 03:38:25'),
(23, 'App\\Models\\User', 98, 'api_token', '93094573df7025ea07256da4017aadbc7e134521631658651b167d1111fb08c2', '[\"*\"]', NULL, NULL, '2025-05-03 03:39:09', '2025-05-03 03:39:09');

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
(4, 'E-commerce Platform', 'Create an online marketplace for local vendors', '2025-02-15', '2025-08-01', '[\"Liam\", \"Olivia\", \"Ethan\"]', 'Liam', '10', 'on hold', '2025-02-14 01:25:23', '2025-02-14 01:25:23'),
(5, 'CRM System', 'Implement a new customer relationship management system', '2025-04-05', '2025-09-10', '[\"Emma\", \"Noah\", \"Ava\"]', 'Emma', '4', 'not started', '2025-02-14 01:25:23', '2025-02-14 01:25:23'),
(6, 'Data Analytics Dashboard', 'Develop a real-time analytics dashboard', '2025-01-20', '2025-04-15', '[\"Oliver\", \"Isabella\", \"Lucas\"]', 'Oliver', '6', 'completed', '2025-02-14 01:25:23', '2025-02-14 01:25:23'),
(7, 'Cloud Migration', 'Migrate company infrastructure to cloud', '2025-05-01', '2025-12-01', '[\"Mason\", \"Mia\", \"Elijah\"]', 'Mason', '7', 'in progress', '2025-02-14 01:25:23', '2025-02-14 01:25:23'),
(8, 'Cybersecurity Audit', 'Conduct a full security assessment', '2025-02-10', '2025-06-30', '[\"Amelia\", \"James\", \"Alexander\"]', 'Amelia', '3', 'on hold', '2025-02-14 01:25:23', '2025-02-14 01:25:23'),
(9, 'SEO Optimization', 'Improve website SEO for better search rankings', '2025-01-05', '2025-02-25', '[\"Benjamin\", \"Charlotte\", \"Henry\"]', 'Benjamin', '2', 'completed', '2025-02-14 01:25:23', '2025-02-14 01:25:23'),
(10, 'Inventory Management System', 'Automate inventory tracking for warehouses', '2025-06-01', '2025-11-01', '[\"Evelyn\", \"William\", \"Sophia\"]', 'Evelyn', '5', 'not started', '2025-02-14 01:25:23', '2025-02-14 01:25:23'),
(11, 'Melanie Hester', 'Pariatur Neque maxi', '2001-05-21', '2010-04-29', '[\"22\",\"23\",\"24\",\"25\",\"26\",\"28\",\"31\"]', '[\"23\",\"24\",\"26\",\"29\"]', NULL, 'not started', '2025-02-23 10:34:26', '2025-02-23 10:34:26'),
(13, 'Indira Vargas', 'Commodi adipisicing', '2001-07-31', '2015-03-24', '[\"35\"]', '[\"34\",\"35\",\"37\"]', NULL, 'not started', '2025-02-23 20:05:21', '2025-02-23 20:05:21'),
(14, 'Talon Potter', 'Assumenda qui harum', '2022-10-20', '1999-01-07', '[\"87\",\"89\",\"90\"]', '\"Delectus aut necess\"', NULL, 'not started', '2025-04-30 04:50:37', '2025-04-30 04:50:37'),
(16, 'Sasha Lyons', 'Mollitia voluptas at', '2000-08-28', '2004-03-07', '[\"87\",\"89\",\"90\"]', '\"84\"', NULL, 'not started', '2025-04-30 04:54:15', '2025-04-30 04:54:15'),
(17, 'Jocelyn Trujillo', 'Facilis dolore paria', '1981-08-15', '1990-11-13', '[\"86\",\"87\",\"88\",\"90\"]', '\"87\"', NULL, 'not started', '2025-04-30 05:09:01', '2025-04-30 05:09:01'),
(18, 'Dacey Moon', 'Sint sit necessita', '2022-07-05', '1974-01-09', '[\"85\",\"86\",\"87\",\"88\",\"89\"]', '\"89\"', NULL, 'not started', '2025-04-30 05:10:33', '2025-04-30 05:10:33');

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
('iWB02fuhZhD3iMM0bKgV9kgGABzGUM43mjd5PxWu', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:138.0) Gecko/20100101 Firefox/138.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGNpUFpodk9UdUlhbGkxR2FHeEhMblluQ044YXVnYVJjNmJOTFVZSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMi9yZWFjdC9hZG1pbi9lbXBsb3llZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1746139816),
('kHJpQ0Eq49nAAlCB02R9wr6QkHc2dp1FLzxXU7eb', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:138.0) Gecko/20100101 Firefox/138.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1VxaXJVSEZwc1Z3M1huUmZWVTQyT21vNEdLSEw4Z2h5RnB5MVRKdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWdpc3RlclZpZXciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1746263834),
('oqLZIP7xYWsbUg7GUciYPN0bTvom6OTG5dLX0q6a', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:138.0) Gecko/20100101 Firefox/138.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ21RNzFnMkxCWjdPSHo5VmRQSkhpSWY5Q0FIamdzNXkwZHJtTkxvaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWFjdC9wcm9qZWN0TWFuYWdlci9pbnN0YWxsSG9vay5qcy5tYXAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1746248676),
('safWIcxJPkrubNdxlsrxPeJhsOYwEeTUcYE3YTGY', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:138.0) Gecko/20100101 Firefox/138.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzlQTXJVcUQ4NFdPN1MzVHJJSDdaam9YN2wzSGNYdlFIajEyQ2ZaWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWFjdC9hZG1pbi9jcmVhdGVOb3RpY2VzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1746173084),
('uuuBBgPU8iCtAaDeJ6KpYXq7O82TIptWgI38q6xD', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:138.0) Gecko/20100101 Firefox/138.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmxuWmtXZ3pXMW9QM0M2Sm9hTHQwNzE4QnJoS0VOc2xSNnhBV0pWUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWFjdC9wcm9qZWN0TWFuYWdlci9wcm9qZWN0TWFuYWdlckRhc2giO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1746273038),
('xHiPjVHj8rz0RDnTkCCMGI3wQX7r6AZJS1oCrGli', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:138.0) Gecko/20100101 Firefox/138.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUVqZUxaRTgwN0E0dmJuSzNuRUQ4WG52V2xNdzlsSmgwNnhRWVVMUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXNpZ24vdXNlckRhc2giO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1746202893);

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
(32, 'Liberty Morales', 'Vero velit ut fuga', '2002-04-20', '2017-08-01', '[\"22\",\"28\",\"29\",\"31\",\"32\"]', 'high', 'not started', '3', '7', '2025-02-23 10:18:00', '2025-02-23 10:18:00'),
(33, 'Donovan Parks', 'Doloribus in nisi el', '2012-04-29', '2003-03-04', '[\"22\",\"23\",\"26\",\"27\",\"31\",\"32\",\"elderberry\"]', 'medium', 'not started', '3\r\n', '7', '2025-02-23 10:18:07', '2025-02-23 10:18:07'),
(34, 'Flynn Fowler', 'Excepturi dicta moll', '2002-04-17', '1990-02-28', '[\"24\",\"29\",\"30\",\"elderberry\"]', 'medium', 'not started', '3', '7', '2025-02-23 10:18:15', '2025-02-23 10:18:15'),
(35, 'Imelda Powell', 'Accusamus incidunt', '1983-03-24', '1987-03-30', '[\"22\",\"24\",\"25\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\"]', 'high', 'not started', '3', '7', '2025-02-23 10:18:20', '2025-02-23 10:18:20'),
(36, 'Shaeleigh Pollard', 'Ut cumque fugiat con', '2006-01-25', '1978-08-19', '[\"33\",\"34\"]', 'medium', 'not started', '7', '7', '2025-02-23 20:05:41', '2025-02-23 20:05:41'),
(37, 'Mia Hoffman', 'Molestiae quibusdam', '2021-04-25', '2014-07-10', '[\"36\",\"38\"]', 'medium', 'not started', '7', '7', '2025-02-23 20:33:43', '2025-02-23 20:33:43');

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `todo` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `employeeId` bigint(20) UNSIGNED NOT NULL,
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
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `profile`, `fname`, `lname`, `address`, `phone`, `gender`, `scode`, `email`, `password`, `citizenCardFront`, `citizenCardBack`, `created_at`, `updated_at`, `role`) VALUES
(96, NULL, 'Oogke', 'Timilsina', NULL, '9861433446', NULL, '8888', 'archu@gmail.com', '$2y$12$ILwScrNg1amFm0.uDPeYw.jS3XjP4YNXNj8WmDvnZI7/BUPh5Yyci', NULL, NULL, '2025-04-30 23:58:57', '2025-04-30 23:58:57', NULL),
(97, NULL, 'Archana', 'Timilsina', NULL, '9861433446', NULL, '8888', 'archanatimilsina88@gmail.com', '$2y$12$2VFmd9Vhuo.Znca/4JLlR.VJZXhU01LjvDamrEbTDJf7KaQ37GLBW', NULL, NULL, '2025-05-03 03:22:24', '2025-05-03 03:22:24', 'admin'),
(98, NULL, 'Archana', 'Timilsina', NULL, '9861433446', NULL, '1111', 'actlikeanut@gmail.com', '$2y$12$hqYwhpstJpuclfpciJwlXOtpGr4AAQupcbh..lr1xtNl/AZeqcHUq', NULL, NULL, '2025-05-03 03:34:26', '2025-05-03 03:34:26', 'Project Manager');

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
-- Dumping data for table `workspaces`
--

INSERT INTO `workspaces` (`id`, `name`, `description`, `sdate`, `edate`, `members`, `leader`, `status`, `projectId`, `created_at`, `updated_at`) VALUES
(3, 'Project Gamma', 'A research project in AI.', '2025-04-01', '2025-10-01', '{\"member1\": \"David\", \"member2\": \"Emma\"}', 'David Smith', 'not started', '4', '2025-02-22 06:56:33', '2025-02-22 06:56:33'),
(4, 'Project Delta', 'Website redesign project.', '2025-02-10', '2025-08-10', '{\"member1\": \"George\", \"member2\": \"Hannah\", \"member3\": \"Isla\"}', 'George Lee', 'not started', '4', '2025-02-22 06:56:33', '2025-02-22 06:56:33'),
(5, 'Project Epsilon', 'Data analysis project for marketing.', '2025-05-01', '2025-09-01', '{\"member1\": \"Jack\", \"member2\": \"Kathy\"}', 'Kathy Evans', 'not started', '4', '2025-02-22 06:56:33', '2025-02-22 06:56:33'),
(6, 'Project Zeta', 'Development of a new e-commerce platform.', '2025-02-15', '2025-07-15', '{\"member1\": \"Mike\", \"member2\": \"Nina\", \"member3\": \"Oscar\"}', 'Mike Johnson', 'not started', '4', '2025-02-22 06:56:33', '2025-02-22 06:56:33'),
(7, 'Project Theta', 'Cloud infrastructure setup project.', '2025-03-20', '2025-09-20', '{\"member1\": \"Paul\", \"member2\": \"Quincy\"}', 'Paul Harris', 'not started', '4', '2025-02-22 06:56:33', '2025-02-22 06:56:33'),
(12, 'Edward Yates', 'Sint velit sint cumq', '1984-01-12', '1988-08-22', '[\"85\",\"86\",\"88\",\"90\"]', '\"90\"', 'not started', NULL, '2025-04-30 05:11:59', '2025-04-30 05:11:59'),
(13, 'Beatrice Edwards', 'Qui tenetur rerum qu', '1984-09-25', '1996-09-12', '[\"96\"]', '\"94\"', 'not started', NULL, '2025-05-01 15:44:56', '2025-05-01 15:44:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `notices`
--
ALTER TABLE `notices`
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
-- Indexes for table `todos`
--
ALTER TABLE `todos`
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
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `user_verif_queues`
--
ALTER TABLE `user_verif_queues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `workspaces`
--
ALTER TABLE `workspaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
