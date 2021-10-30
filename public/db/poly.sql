-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 30, 2021 at 12:13 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poly`
--

-- --------------------------------------------------------

--
-- Table structure for table `courseables`
--

CREATE TABLE `courseables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `courseable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courseable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courseables`
--

INSERT INTO `courseables` (`id`, `subject_id`, `courseable_type`, `courseable_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'App\\Models\\Student', 1, NULL, NULL),
(2, 1, 'App\\Models\\Student', 2, NULL, NULL),
(3, 3, 'App\\Models\\Student', 1, NULL, NULL),
(4, 1, 'App\\Models\\Student', 2, NULL, NULL),
(5, 2, 'App\\Models\\Student', 1, NULL, NULL),
(6, 1, 'App\\Models\\Student', 2, NULL, NULL),
(7, 1, 'App\\Models\\Student', 10, NULL, NULL),
(8, 2, 'App\\Models\\Student', 20, NULL, NULL),
(9, 1, 'App\\Models\\Teacher', 1, NULL, NULL),
(10, 2, 'App\\Models\\Teacher', 1, NULL, NULL),
(11, 1, 'App\\Models\\Teacher', 2, NULL, NULL),
(12, 3, 'App\\Models\\Teacher', 3, NULL, NULL),
(13, 3, 'App\\Models\\Teacher', 1, NULL, NULL),
(14, 2, 'App\\Models\\Teacher', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_06_112858_create_students_table', 1),
(6, '2021_10_06_112916_create_teachers_table', 1),
(7, '2021_10_06_113107_create_subjects_table', 1),
(8, '2021_10_07_054359_courseables', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `class`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Immanuel Brakus', 'Nine', 'mante.meredith@example.com', '1-513-917-0168', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(2, 'Ida Altenwerth', 'Nine', 'sarah.grant@example.net', '+1.504.690.8195', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(3, 'Mrs. Flossie Goyette', 'Eight', 'vlynch@example.net', '+1-334-608-9708', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(4, 'Minerva Klein', 'Eight', 'albin04@example.com', '1-804-505-4505', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(5, 'Rosemarie Beatty', 'Eight', 'seth08@example.net', '+1-805-266-8480', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(6, 'Amara Dietrich', 'Nine', 'hoeger.brendan@example.org', '319-903-5236', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(7, 'Beaulah Walter', 'Nine', 'wlittel@example.com', '662.515.2815', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(8, 'Weston Becker I', 'Eight', 'dconn@example.org', '+1 (820) 892-1200', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(9, 'Alfonso Blanda', 'Nine', 'ilueilwitz@example.com', '1-260-647-4629', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(10, 'Malinda Cronin', 'Eight', 'frederique.durgan@example.org', '(805) 841-2804', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(11, 'Tara Schamberger', 'Ten', 'nhettinger@example.com', '+1 (520) 997-6863', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(12, 'Alexandra Hansen', 'Ten', 'alexandrea.watsica@example.net', '+12399300247', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(13, 'Haylee Carter', 'Eight', 'polly61@example.org', '781.834.0475', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(14, 'Aurelie Braun', 'Eight', 'rosie18@example.net', '603-242-2829', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(15, 'Nicolette Aufderhar', 'Nine', 'vbeatty@example.com', '1-248-285-6202', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(16, 'Clementina Nicolas', 'Ten', 'oleta44@example.com', '+1 (469) 388-8398', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(17, 'Tess Leannon', 'Ten', 'swaniawski.camren@example.org', '1-240-619-6680', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(18, 'Susan Considine Sr.', 'Ten', 'lea63@example.net', '(772) 810-7583', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(19, 'Waylon Collins IV', 'Nine', 'wiegand.monty@example.com', '+1 (323) 580-6083', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(20, 'Eugene Ernser III', 'Ten', 'hschiller@example.com', '430-652-7504', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(21, 'Devin Ritchie', 'Ten', 'zelma.hyatt@example.com', '+1-234-965-7548', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(22, 'Miss Stephania Rutherford', 'Eight', 'haylie52@example.net', '(484) 784-8919', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(23, 'Dr. Sheridan Nitzsche IV', 'Eight', 'madison21@example.net', '+1-531-395-7909', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(24, 'Bill Boehm', 'Nine', 'judah85@example.net', '+1-325-887-7483', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(25, 'Destiny Beatty', 'Nine', 'lora86@example.net', '+1-281-666-3198', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(26, 'Jaqueline Haag', 'Nine', 'marcelina29@example.org', '+1.716.513.6697', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(27, 'Dr. Rosa Kshlerin', 'Nine', 'lura.boyer@example.org', '+1 (952) 438-1782', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(28, 'Ms. Frances Mayert', 'Ten', 'shirley.gleichner@example.com', '(609) 526-0399', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(29, 'Oma Sawayn DVM', 'Ten', 'sandrine05@example.com', '(415) 640-7522', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(30, 'Leone Bauch', 'Nine', 'gerhold.demarcus@example.com', '+1 (463) 820-1371', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(31, 'Shaun Hintz', 'Nine', 'alana96@example.net', '1-539-603-6074', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(32, 'Mr. Lafayette Franecki III', 'Nine', 'vtorp@example.org', '(603) 574-1078', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(33, 'Eunice Marquardt', 'Eight', 'weissnat.wava@example.org', '+1-305-476-3162', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(34, 'Prof. Abigale Osinski', 'Nine', 'christy.barton@example.net', '346-313-1001', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(35, 'Kole Shanahan', 'Ten', 'swaniawski.joseph@example.net', '283.793.8430', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(36, 'Cristopher Rath', 'Nine', 'serenity.labadie@example.com', '253-925-0583', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(37, 'Matt Hartmann', 'Eight', 'ckshlerin@example.net', '1-573-880-0152', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(38, 'Nolan Morissette', 'Nine', 'igaylord@example.org', '1-316-777-2020', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(39, 'Carey Jaskolski', 'Eight', 'orippin@example.com', '+16784550633', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(40, 'Genevieve Hartmann', 'Nine', 'christ46@example.com', '272-707-7921', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(41, 'Noble Bartell', 'Nine', 'wnitzsche@example.com', '812.635.9683', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(42, 'Eldora Lesch V', 'Nine', 'arlie.parker@example.com', '+1-281-769-2684', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(43, 'Mr. Brenden Berge IV', 'Nine', 'martine50@example.com', '347.929.1072', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(44, 'Dr. Idella Lockman', 'Nine', 'milton.hartmann@example.com', '+1-220-299-8701', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(45, 'Queenie Pfannerstill', 'Ten', 'edgar16@example.net', '+1-323-559-6681', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(46, 'Ricardo Prohaska', 'Ten', 'helene30@example.com', '747.502.5849', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(47, 'Ozella Koch DVM', 'Ten', 'kuhlman.horacio@example.org', '+1 (430) 383-3549', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(48, 'Beverly Dicki', 'Ten', 'leora37@example.net', '1-303-776-9466', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(49, 'Arturo Block', 'Eight', 'mariana21@example.net', '734.415.8159', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(50, 'Hector Kiehn Jr.', 'Ten', 'milan01@example.com', '(727) 677-2731', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(51, 'Lafayette Halvorson', 'Eight', 'robel.zetta@example.net', '715.364.9309', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(52, 'Brisa Donnelly DDS', 'Eight', 'lucy26@example.net', '+1 (562) 549-9805', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(53, 'Gregory Mann II', 'Nine', 'general.wisoky@example.com', '+1.740.505.6491', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(54, 'Emil Waters', 'Eight', 'sipes.rae@example.com', '+1 (757) 933-6432', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(55, 'Brandon Kassulke', 'Nine', 'fay.funk@example.org', '740-737-0572', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(56, 'Augustine Rogahn IV', 'Eight', 'mccullough.alexane@example.com', '(478) 816-4291', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(57, 'Ralph Torp', 'Nine', 'gkonopelski@example.net', '763-595-2854', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(58, 'Ms. Delfina Fadel MD', 'Ten', 'whitney23@example.org', '1-731-925-2652', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(59, 'Tre Stanton', 'Nine', 'murray.ethyl@example.com', '1-814-658-2569', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(60, 'Emery Legros', 'Nine', 'nina.borer@example.net', '+1-341-963-8174', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(61, 'Edythe Waelchi', 'Ten', 'bianka14@example.com', '+1-930-927-9832', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(62, 'Amos Parker', 'Eight', 'barton86@example.net', '912.886.2691', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(63, 'Fausto Goldner', 'Nine', 'ahickle@example.com', '1-858-429-8958', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(64, 'Mr. Ned Gibson', 'Ten', 'modesta.hill@example.net', '+12675596580', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(65, 'Dr. Bettie Mosciski MD', 'Nine', 'oheaney@example.org', '+1 (913) 752-8002', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(66, 'Aileen Breitenberg', 'Nine', 'wwest@example.com', '+1.678.756.0207', '2021-10-10 01:05:42', '2021-10-10 01:05:42'),
(67, 'Cydney Kohler', 'Ten', 'howe.chesley@example.net', '817-254-3196', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(68, 'Bettie Runolfsson', 'Ten', 'jerad45@example.com', '310-861-2439', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(69, 'Marc Von', 'Eight', 'wilderman.boris@example.net', '(205) 364-0016', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(70, 'Fritz Nitzsche', 'Eight', 'delphia20@example.org', '+1-651-560-9952', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(71, 'Mr. Wilson Gerhold', 'Ten', 'pbauch@example.com', '1-862-365-4385', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(72, 'Miss Bethany Leffler', 'Eight', 'mzemlak@example.com', '747-685-8564', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(73, 'Reuben Jakubowski', 'Ten', 'cynthia.flatley@example.net', '+1.313.234.4014', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(74, 'Prof. Haylee Stiedemann', 'Nine', 'lbarrows@example.org', '+1 (657) 869-1199', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(75, 'Aryanna Feeney', 'Eight', 'clifford.pouros@example.net', '+1.770.648.8749', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(76, 'Ethan O\'Kon', 'Nine', 'arnoldo03@example.com', '+1 (830) 246-8170', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(77, 'May Bins', 'Ten', 'sblanda@example.com', '1-341-724-7941', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(78, 'Madisyn Orn', 'Ten', 'abby18@example.org', '1-678-225-6851', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(79, 'Rylee Koelpin DVM', 'Eight', 'toy.mark@example.org', '551-546-4590', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(80, 'Garrick Gislason', 'Nine', 'bennie00@example.com', '301.544.1151', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(81, 'Emmy Terry', 'Eight', 'julie13@example.net', '925-270-3087', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(82, 'Henry Goldner', 'Nine', 'braun.bell@example.net', '+1 (580) 324-7463', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(83, 'Lionel Rolfson', 'Ten', 'sokon@example.com', '205-247-2727', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(84, 'Nigel Tillman', 'Ten', 'isobel52@example.org', '347.219.0680', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(85, 'Joaquin Rolfson', 'Ten', 'arno.spinka@example.com', '408.818.0490', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(86, 'Ms. Dayna Botsford', 'Eight', 'maggio.caterina@example.com', '283-767-6554', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(87, 'Kayley Zulauf', 'Eight', 'jeramie.kessler@example.org', '+19377669752', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(88, 'Aurelio Kutch', 'Ten', 'maureen09@example.org', '+15309424472', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(89, 'Prof. Nola Heaney', 'Ten', 'amara.collins@example.net', '1-240-986-1183', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(90, 'Naomi Barrows', 'Nine', 'favian21@example.org', '+1-253-576-2580', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(91, 'Fanny Sanford DDS', 'Eight', 'ghansen@example.org', '1-217-558-1419', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(92, 'Jeromy Bahringer MD', 'Ten', 'brown.skiles@example.org', '757.213.9008', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(93, 'Aimee Fay', 'Eight', 'trippin@example.net', '+1-626-641-1422', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(94, 'Shanny Parker Sr.', 'Ten', 'storphy@example.net', '(843) 263-2189', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(95, 'Alf Ortiz', 'Ten', 'ansel26@example.net', '678-338-0596', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(96, 'Elias Kulas', 'Eight', 'ggleichner@example.org', '(938) 994-2107', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(97, 'Jeanie Pouros V', 'Ten', 'ethiel@example.net', '986-858-7362', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(98, 'Prof. Gerald Toy', 'Ten', 'lemke.javier@example.com', '+1-985-845-0800', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(99, 'Judson Roob', 'Ten', 'adaniel@example.net', '+1-620-264-3092', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(100, 'Eloise Bernier I', 'Nine', 'hdaugherty@example.com', '351-305-1045', '2021-10-10 01:05:43', '2021-10-10 01:05:43');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Math', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(2, 'Bangla', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(3, 'English', '2021-10-10 01:05:43', '2021-10-10 01:05:43');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Rhett Smitham', '+1-857-476-4002', 'phudson@example.org', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(2, 'Keshaun Runte', '+1 (651) 836-1409', 'kovacek.lora@example.com', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(3, 'Ashleigh Mueller Sr.', '+17135802979', 'winifred07@example.org', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(4, 'Mrs. Bailee Morissette III', '463.986.3075', 'dorothy.murphy@example.net', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(5, 'Dr. Donald Schowalter', '+17404279411', 'crist.ernestine@example.com', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(6, 'Lourdes Feil', '1-651-648-5177', 'windler.shaylee@example.net', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(7, 'Hailie Rempel', '614-706-5044', 'klocko.erich@example.net', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(8, 'Braeden Denesik DVM', '+1.534.844.9897', 'zechariah.kunze@example.net', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(9, 'Callie Macejkovic', '540.377.2348', 'brendon38@example.com', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(10, 'Deangelo Morar', '+1 (938) 621-1730', 'nienow.parker@example.org', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(11, 'Mr. Angus Blanda III', '+19727725916', 'bpouros@example.com', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(12, 'Desiree Mante', '878-652-4266', 'hallie20@example.com', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(13, 'Amely Goldner', '918-661-9185', 'lee.kessler@example.org', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(14, 'Alexis Johnson', '+15152375614', 'lyric.fritsch@example.net', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(15, 'Dr. Rozella Funk', '1-508-217-6859', 'kparisian@example.com', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(16, 'Brandi Kreiger', '870.317.0349', 'mueller.alexie@example.net', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(17, 'Nellie Stracke', '938.341.8400', 'izabella.labadie@example.com', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(18, 'Jasen Langosh', '1-281-966-1606', 'verda23@example.net', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(19, 'Jonas Jakubowski', '+13612608965', 'wluettgen@example.org', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(20, 'Kieran Bins', '+1.919.704.5638', 'newell.langworth@example.net', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(21, 'Kolby Hickle', '731.552.0306', 'hayley.klein@example.org', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(22, 'Nedra Hartmann', '608-961-6944', 'yschaden@example.org', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(23, 'Liliane Smitham DVM', '+1-810-583-0978', 'bbecker@example.org', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(24, 'Wilma Johnston', '650-621-1291', 'lukas50@example.net', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(25, 'Elijah Brekke', '(507) 267-0770', 'vsauer@example.com', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(26, 'Mr. Guillermo Crona', '+1-951-649-1537', 'zblock@example.com', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(27, 'Dr. Brycen Ratke', '+1.626.956.9803', 'kunze.brody@example.org', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(28, 'Jensen Kessler', '+1-276-986-1422', 'ybahringer@example.net', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(29, 'Ms. Trycia Reynolds', '+18029108498', 'wdach@example.com', '2021-10-10 01:05:43', '2021-10-10 01:05:43'),
(30, 'Mathew Connelly', '1-252-772-1039', 'hermann.favian@example.net', '2021-10-10 01:05:43', '2021-10-10 01:05:43');

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
-- Indexes for table `courseables`
--
ALTER TABLE `courseables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courseables_subject_id_foreign` (`subject_id`),
  ADD KEY `courseables_courseable_type_courseable_id_index` (`courseable_type`,`courseable_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`),
  ADD UNIQUE KEY `students_phone_unique` (`phone`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
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
-- AUTO_INCREMENT for table `courseables`
--
ALTER TABLE `courseables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courseables`
--
ALTER TABLE `courseables`
  ADD CONSTRAINT `courseables_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
