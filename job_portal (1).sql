-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Agu 2024 pada 15.20
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_portal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Accountant', 1, '2024-06-24 00:44:32', '2024-06-24 00:44:32'),
(2, 'Construction & Engineering', 1, '2024-06-24 00:44:32', '2024-06-24 00:44:32'),
(3, 'IT/Computers', 1, '2024-06-24 00:44:32', '2024-06-24 00:44:32'),
(4, 'Social Media', 1, '2024-06-24 00:44:32', '2024-06-24 00:44:32'),
(5, 'Telecom', 1, '2024-06-24 00:44:32', '2024-06-24 00:44:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `job_type_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `vacancy` int(11) NOT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `benefits` text DEFAULT NULL,
  `responsibility` text DEFAULT NULL,
  `qualifications` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `experience` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_location` varchar(255) DEFAULT NULL,
  `company_website` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `isFeatured` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `category_id`, `job_type_id`, `user_id`, `vacancy`, `salary`, `location`, `description`, `benefits`, `responsibility`, `qualifications`, `keywords`, `experience`, `company_name`, `company_location`, `company_website`, `status`, `isFeatured`, `created_at`, `updated_at`) VALUES
(3, 'Hacker', 3, 1, 1, 2, '10K', 'Jakarta Selatan', '<p><sup><strong>Salah satu istilah paling terkenal di dunia keamanan siber, “peretasan”, mengacu pada aktivitas intrusif yang terkait dengan eksploitasi sistem komputer atau jaringan pribadi tanpa akses resmi. Konsep peretasan umumnya dicirikan oleh “peretas”, seseorang yang ahli dalam sistem komputer dan teknologi informasi.</strong></sup></p>', 'Benefits Rosa', 'Responsibility', 'Qualifications', 'visual code, virtual box, cisco', '5', 'Tekom', 'Bogor', 'rosacantik.com', 1, 0, '2024-06-24 08:20:52', '2024-07-06 03:06:01'),
(4, 'Prof. Unique Hayes DVM', 3, 3, 2, 5, NULL, 'Lake Khalid', 'Esse porro expedita non tempore. Commodi enim reprehenderit veritatis veniam. Magni aspernatur rerum maiores ut.', NULL, NULL, NULL, 'laravel, php, mysql', '1', 'Heber McClure', 'Bogor', 'rosacantik.com', 1, 0, '2024-06-24 08:22:41', '2024-06-30 00:46:33'),
(6, 'Tom Reynolds', 2, 5, 1, 1, NULL, 'Unaside', 'Distinctio ad et et quae ea molestiae. Earum voluptate laboriosam optio facere harum.', NULL, NULL, NULL, NULL, '9', 'Wilbert Collins', NULL, NULL, 1, 0, '2024-06-24 08:22:41', '2024-06-24 08:22:41'),
(7, 'Norberto Krajcik', 3, 1, 2, 2, NULL, 'Gladysbury', 'Iste vitae accusantium animi sunt. Alias fugit voluptates alias eligendi iusto suscipit quisquam. Nam aut cupiditate amet pariatur iure.', NULL, NULL, NULL, NULL, '8', 'Katherine Kuhn I', NULL, NULL, 1, 0, '2024-06-24 08:22:41', '2024-06-24 08:22:41'),
(8, 'Consuelo Lakin Jr.', 5, 3, 2, 3, NULL, 'Lake Vicky', 'Perspiciatis tenetur voluptatem dicta qui. Harum ipsam nam omnis ex doloribus est. Nobis ut omnis placeat unde quis. Qui cumque cupiditate fugiat necessitatibus ab optio assumenda adipisci.', NULL, NULL, NULL, NULL, '5', 'Ally Muller', NULL, NULL, 1, 0, '2024-06-24 08:22:41', '2024-06-24 08:22:41'),
(9, 'Mr. Justen Nolan', 2, 5, 3, 1, NULL, 'Port Josianeton', 'Veritatis perspiciatis quis est omnis. Harum qui veritatis alias dolor corporis. Repellat atque maxime quia magni et iure aut.', NULL, NULL, NULL, NULL, '8', 'Mrs. Madaline Windler I', NULL, NULL, 1, 0, '2024-06-24 08:22:41', '2024-06-24 08:22:41'),
(10, 'Loma Douglas', 3, 1, 2, 1, NULL, 'East Groverchester', 'Quia exercitationem autem quod et est sint eos voluptatem. Assumenda et at explicabo soluta. In aut molestiae fugiat voluptates.', NULL, NULL, NULL, NULL, '9', 'Arnold Roberts', NULL, NULL, 1, 0, '2024-06-24 08:22:41', '2024-06-24 08:22:41'),
(11, 'Vernon Legros', 3, 3, 1, 3, NULL, 'Herzogbury', 'Quis velit et nesciunt est aut. Pariatur voluptatem recusandae animi totam deleniti. Eos hic aut at. Dolorum facilis repudiandae porro.', NULL, NULL, NULL, NULL, '3', 'Rosetta Bergstrom', NULL, NULL, 1, 0, '2024-06-24 08:22:41', '2024-06-24 08:22:41'),
(12, 'Miss Cecile O\'Reilly II', 2, 1, 2, 1, NULL, 'Maudiestad', 'Alias vel est culpa dolore dolore. Quas autem temporibus voluptatem et. Rerum cupiditate voluptas tenetur blanditiis necessitatibus.', NULL, NULL, NULL, NULL, '4', 'Al Lemke', NULL, NULL, 1, 0, '2024-06-24 08:22:41', '2024-06-24 08:22:41'),
(13, 'Alexandra Lesch', 1, 5, 3, 3, NULL, 'Mannfort', 'Quo corporis eum perspiciatis itaque ut quaerat. Similique praesentium omnis repellat. Occaecati distinctio consequuntur earum sunt et facere reprehenderit.', NULL, NULL, NULL, NULL, '9', 'Diana Prosacco', NULL, NULL, 1, 0, '2024-06-24 08:22:41', '2024-06-24 08:22:41'),
(28, 'Ruth Kerluke Sr.', 2, 2, 3, 1, NULL, 'Reinaview', 'Ut rerum rerum explicabo est quibusdam quia. Quo neque voluptatem odio culpa est.', NULL, NULL, NULL, NULL, '1', 'Dolly Cassin V', NULL, NULL, 1, 0, '2024-06-24 08:22:41', '2024-06-24 08:22:41'),
(29, 'Ms. Cathrine Hegmann IV', 1, 1, 3, 3, NULL, 'West Vernicemouth', 'Doloremque dolores suscipit deserunt molestias blanditiis rerum aut sit. Libero ea odio iste. Aut labore dolor laudantium et aliquid sapiente numquam.', NULL, NULL, NULL, NULL, '2', 'Mya Heaney PhD', NULL, NULL, 1, 0, '2024-06-24 08:25:25', '2024-06-24 08:25:25'),
(30, 'Dr. Austin Murphy', 3, 5, 3, 4, NULL, 'Lake Taliatown', 'Tenetur voluptatem libero consectetur labore. Iste placeat impedit veniam. Ipsa omnis rerum pariatur esse velit. Alias et aperiam deserunt illum explicabo. Et veniam aperiam cupiditate accusamus.', NULL, NULL, NULL, NULL, '6', 'Miss Pinkie Trantow', NULL, NULL, 1, 0, '2024-06-24 08:25:25', '2024-06-24 08:25:25'),
(31, 'Watson Huel PhD', 1, 1, 3, 5, NULL, 'Strackefort', 'Quidem quae facilis accusantium in ut ea animi. Dolores et soluta provident earum aut. Iure consequatur veritatis est inventore. Ratione sequi eaque voluptates voluptas adipisci amet.', NULL, NULL, NULL, NULL, '10', 'Mrs. Clotilde Jakubowski I', NULL, NULL, 1, 0, '2024-06-24 08:25:25', '2024-06-24 08:25:25'),
(32, 'Beulah Bins', 5, 3, 3, 2, NULL, 'Connellyberg', 'Ut ea nesciunt nemo nobis laboriosam. Tempore quia labore fugit nihil. Laudantium quidem in inventore est. Explicabo eos officia suscipit labore.', NULL, NULL, NULL, NULL, '6', 'Mrs. Madeline Hand I', NULL, NULL, 1, 0, '2024-06-24 08:25:25', '2024-06-24 08:25:25'),
(33, 'Destin O\'Hara I', 1, 1, 3, 5, NULL, 'Coleburgh', 'Ea quidem magni quisquam sed voluptatem. Dolorem sequi dolores qui molestiae qui laboriosam. Nulla qui necessitatibus expedita pariatur quia.', NULL, NULL, NULL, NULL, '4', 'Shaun Lockman', NULL, NULL, 1, 0, '2024-06-24 08:25:26', '2024-06-24 08:25:26'),
(42, 'Melvina Hyatt', 2, 5, 3, 1, NULL, 'Jessikabury', 'Ut quisquam fugit quaerat libero neque enim necessitatibus. Et praesentium sunt quia odio et et et.', NULL, NULL, NULL, NULL, '7', 'Shanelle Bashirian', NULL, NULL, 1, 0, '2024-06-24 08:25:26', '2024-06-24 08:25:26'),
(43, 'Prof. Coleman Mohr Jr.', 5, 2, 3, 4, NULL, 'East Robin', 'Doloribus aut velit ut. Enim cum commodi vel sint. Quasi consectetur soluta voluptatem est. Ex et debitis est porro.', NULL, NULL, NULL, NULL, '4', 'Dr. Reed Johnston', NULL, NULL, 1, 0, '2024-06-24 08:25:26', '2024-06-24 08:25:26'),
(44, 'Dr. Colton Wisozk I', 1, 3, 3, 1, NULL, 'Feltonville', 'Suscipit molestias sed fuga velit. Rerum et deleniti et recusandae molestiae est qui.', NULL, NULL, NULL, NULL, '1', 'Ms. Breanne Feeney', NULL, NULL, 1, 0, '2024-06-24 08:25:26', '2024-06-24 08:25:26'),
(45, 'Dane Kulas', 1, 3, 3, 4, NULL, 'New Leonardo', 'Laudantium assumenda rerum reiciendis repellat quos. Quam deleniti eos quis consequatur quaerat et. Eos sint corporis repudiandae.', NULL, NULL, NULL, NULL, '4', 'Mrs. Sonia Rath', NULL, NULL, 1, 0, '2024-06-24 08:25:26', '2024-06-24 08:25:26'),
(46, 'Davion Schowalter', 4, 4, 3, 5, NULL, 'Kihnhaven', 'Et sunt eveniet commodi commodi sed consequuntur iure. Vel tempore delectus ut qui aliquid vel vel. Nam quia quia quasi.', NULL, NULL, NULL, NULL, '4', 'Felicita Keeling', NULL, NULL, 1, 0, '2024-06-24 08:25:26', '2024-06-24 08:25:26'),
(47, 'Dr. Aisha Fay Sr.', 2, 2, 3, 3, NULL, 'Schinnershire', 'A quibusdam harum sint aut. Sed hic magnam eum odio voluptas quia. Eligendi cupiditate nostrum repellendus est repudiandae.', NULL, NULL, NULL, NULL, '3', 'Mozell Renner', NULL, NULL, 1, 0, '2024-06-24 08:25:26', '2024-06-24 08:25:26'),
(48, 'Dewayne Tillman III', 5, 1, 3, 1, NULL, 'North Roxaneside', 'Aliquam sapiente qui dolores tempore rem libero consequuntur. Veritatis a eum id deleniti repudiandae nesciunt ullam. Sint ducimus veritatis sit possimus.', NULL, NULL, NULL, NULL, '3', 'Davon Crona', NULL, NULL, 1, 0, '2024-06-24 08:25:26', '2024-06-24 08:25:26'),
(49, 'Pengusaha', 4, 5, 3, 3, '10K', 'Surabaya', 'Yayayaya', 'Okee', 'Oh begitu', 'Woww', 'style, fashion', '6', 'RosaStore', 'Sukabumi', 'rosawow.com', 1, 0, '2024-06-24 08:41:15', '2024-06-24 08:41:15'),
(50, 'Web Developer', 3, 1, 2, 2, '4.5 K', 'Jakarta', 'Description Rosa', 'Benefits Rosa', 'Responsibility Rosa', 'Qualifications Rosa', 'visual code, virtual box, cisco', '4', 'RosaCantik', 'Sukabumi', 'rosalinda.com', 1, 0, '2024-06-30 00:49:27', '2024-06-30 00:49:27'),
(51, 'This is a dummy job title', 1, 5, 2, 10, '4.5 K', 'Turkey', '<p><strong>Collaborate</strong> with clients to understand their IT requirements and propose innovative solutions.</p><p>Design, develop, and implement customized IT solutions that align with client objectives and industry best practices.</p><p>Conduct thorough analysis and assessment of existing systems to identify areas for improvement and optimization.</p><p>Provide technical expertise and support throughout the project lifecycle, ensuring successful implementation and integration of solutions.</p><p>Troubleshoot technical issues, offer timely resolutions, and provide ongoing support to clients as needed.</p><p>Stay updated with the latest technological advancements and industry trends to recommend relevant solutions and enhancements.</p><p>Communicate effectively with cross-functional teams, clients, and stakeholders to ensure project alignment and successful outcomes.</p><p><em>Document processes, procedures, and technical specifications for future reference and knowledge sharing.</em></p>', '<p><span style=\"font-weight: bolder;\">Collaborate</span>&nbsp;with clients to understand their IT requirements and propose innovative solutions.</p><p style=\"outline: none !important;\">Design, develop, and implement customized IT solutions that align with client objectives and industry best practices.</p><p>Conduct thorough analysis and assessment of existing systems to identify areas for improvement and optimization.</p><p>Provide technical expertise and support throughout the project lifecycle, ensuring successful implementation and integration of solutions.</p><p>Troubleshoot technical issues, offer timely resolutions, and provide ongoing support to clients as needed.</p><p>Stay updated with the latest technological advancements and industry trends to recommend relevant solutions and enhancements.</p><p>Communicate effectively with cross-functional teams, clients, and stakeholders to ensure project alignment and successful outcomes.</p><p><em>Document processes, procedures, and technical specifications for future reference and knowledge sharing.</em></p>', '<p><span style=\"font-weight: bolder;\">Collaborate</span>&nbsp;with clients to understand their IT requirements and propose innovative solutions.</p><p style=\"outline: none !important;\">Design, develop, and implement customized IT solutions that align with client objectives and industry best practices.</p><p>Conduct thorough analysis and assessment of existing systems to identify areas for improvement and optimization.</p><p>Provide technical expertise and support throughout the project lifecycle, ensuring successful implementation and integration of solutions.</p><p>Troubleshoot technical issues, offer timely resolutions, and provide ongoing support to clients as needed.</p><p>Stay updated with the latest technological advancements and industry trends to recommend relevant solutions and enhancements.</p><p>Communicate effectively with cross-functional teams, clients, and stakeholders to ensure project alignment and successful outcomes.</p><p><em>Document processes, procedures, and technical specifications for future reference and knowledge sharing.</em></p>', '<p><span style=\"font-weight: bolder;\">Collaborate</span>&nbsp;with clients to understand their IT requirements and propose innovative solutions.</p><p style=\"outline: none !important;\">Design, develop, and implement customized IT solutions that align with client objectives and industry best practices.</p><p>Conduct thorough analysis and assessment of existing systems to identify areas for improvement and optimization.</p><p>Provide technical expertise and support throughout the project lifecycle, ensuring successful implementation and integration of solutions.</p><p>Troubleshoot technical issues, offer timely resolutions, and provide ongoing support to clients as needed.</p><p>Stay updated with the latest technological advancements and industry trends to recommend relevant solutions and enhancements.</p><p>Communicate effectively with cross-functional teams, clients, and stakeholders to ensure project alignment and successful outcomes.</p><p><em style=\"color: var(--bs-body-color); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Document processes, procedures, and technical specifications for future reference and knowledge sharing.</em></p><p><ol><li><em>Bullet point 1</em></li><li><em>Bullet point 2</em></li><li><em>Bullet point 3</em></li></ol></p>', 'laravel, php, mysql', '3', 'RosaCantik', NULL, NULL, 1, 0, '2024-07-01 00:36:16', '2024-07-01 00:36:16'),
(52, 'This is a dummy job title', 1, 5, 2, 10, '4.5 K', 'Turkey', '<p><strong>Collaborate</strong> with clients to understand their IT requirements and propose innovative solutions.</p><p>Design, develop, and implement customized IT solutions that align with client objectives and industry best practices.</p><p>Conduct thorough analysis and assessment of existing systems to identify areas for improvement and optimization.</p><p>Provide technical expertise and support throughout the project lifecycle, ensuring successful implementation and integration of solutions.</p><p>Troubleshoot technical issues, offer timely resolutions, and provide ongoing support to clients as needed.</p><p>Stay updated with the latest technological advancements and industry trends to recommend relevant solutions and enhancements.</p><p>Communicate effectively with cross-functional teams, clients, and stakeholders to ensure project alignment and successful outcomes.</p><p><em style=\"color: var(--bs-body-color); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Document processes, procedures, and technical specifications for future reference and knowledge sharing.</em></p><p><ol><li><em style=\"color: var(--bs-body-color); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bullet point 1</em></li><li><em style=\"color: var(--bs-body-color); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bullet point 2</em></li><li><em style=\"color: var(--bs-body-color); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Bullet point 3</em></li></ol></p>', '<p><span style=\"font-weight: bolder;\">Collaborate</span>&nbsp;with clients to understand their IT requirements and propose innovative solutions.</p><p style=\"outline: none !important;\">Design, develop, and implement customized IT solutions that align with client objectives and industry best practices.</p><p>Conduct thorough analysis and assessment of existing systems to identify areas for improvement and optimization.</p><p>Provide technical expertise and support throughout the project lifecycle, ensuring successful implementation and integration of solutions.</p><p>Troubleshoot technical issues, offer timely resolutions, and provide ongoing support to clients as needed.</p><p>Stay updated with the latest technological advancements and industry trends to recommend relevant solutions and enhancements.</p><p>Communicate effectively with cross-functional teams, clients, and stakeholders to ensure project alignment and successful outcomes.</p><p><em>Document processes, procedures, and technical specifications for future reference and knowledge sharing.</em></p>', '<p><span style=\"font-weight: bolder;\">Collaborate</span>&nbsp;with clients to understand their IT requirements and propose innovative solutions.</p><p style=\"outline: none !important;\">Design, develop, and implement customized IT solutions that align with client objectives and industry best practices.</p><p>Conduct thorough analysis and assessment of existing systems to identify areas for improvement and optimization.</p><p>Provide technical expertise and support throughout the project lifecycle, ensuring successful implementation and integration of solutions.</p><p>Troubleshoot technical issues, offer timely resolutions, and provide ongoing support to clients as needed.</p><p>Stay updated with the latest technological advancements and industry trends to recommend relevant solutions and enhancements.</p><p>Communicate effectively with cross-functional teams, clients, and stakeholders to ensure project alignment and successful outcomes.</p><p><em>Document processes, procedures, and technical specifications for future reference and knowledge sharing.</em></p>', '<p><span style=\"font-weight: bolder;\">Collaborate</span>&nbsp;with clients to understand their IT requirements and propose innovative solutions.</p><p style=\"outline: none !important;\">Design, develop, and implement customized IT solutions that align with client objectives and industry best practices.</p><p>Conduct thorough analysis and assessment of existing systems to identify areas for improvement and optimization.</p><p>Provide technical expertise and support throughout the project lifecycle, ensuring successful implementation and integration of solutions.</p><p>Troubleshoot technical issues, offer timely resolutions, and provide ongoing support to clients as needed.</p><p>Stay updated with the latest technological advancements and industry trends to recommend relevant solutions and enhancements.</p><p>Communicate effectively with cross-functional teams, clients, and stakeholders to ensure project alignment and successful outcomes.</p><p><em style=\"color: var(--bs-body-color); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Document processes, procedures, and technical specifications for future reference and knowledge sharing.</em></p>', 'laravel, php, mysql', '3', 'RosaCantik', 'Depok', 'rosa.com', 1, 0, '2024-07-01 00:36:18', '2024-07-01 00:48:03'),
(54, 'This is a dummy job title', 1, 5, 2, 10, '4.5 K', 'Turkey', '<p><strong>Collaborate</strong> with clients to understand their IT requirements and propose innovative solutions.</p><p>Design, develop, and implement customized IT solutions that align with client objectives and industry best practices.</p><p>Conduct thorough analysis and assessment of existing systems to identify areas for improvement and optimization.</p><p>Provide technical expertise and support throughout the project lifecycle, ensuring successful implementation and integration of solutions.</p><p>Troubleshoot technical issues, offer timely resolutions, and provide ongoing support to clients as needed.</p><p>Stay updated with the latest technological advancements and industry trends to recommend relevant solutions and enhancements.</p><p>Communicate effectively with cross-functional teams, clients, and stakeholders to ensure project alignment and successful outcomes.</p><p><em>Document processes, procedures, and technical specifications for future reference and knowledge sharing.</em></p>', '<p><span style=\"font-weight: bolder;\">Collaborate</span>&nbsp;with clients to understand their IT requirements and propose innovative solutions.</p><p style=\"outline: none !important;\">Design, develop, and implement customized IT solutions that align with client objectives and industry best practices.</p><p>Conduct thorough analysis and assessment of existing systems to identify areas for improvement and optimization.</p><p>Provide technical expertise and support throughout the project lifecycle, ensuring successful implementation and integration of solutions.</p><p>Troubleshoot technical issues, offer timely resolutions, and provide ongoing support to clients as needed.</p><p>Stay updated with the latest technological advancements and industry trends to recommend relevant solutions and enhancements.</p><p>Communicate effectively with cross-functional teams, clients, and stakeholders to ensure project alignment and successful outcomes.</p><p><em>Document processes, procedures, and technical specifications for future reference and knowledge sharing.</em></p>', '<p><span style=\"font-weight: bolder;\">Collaborate</span>&nbsp;with clients to understand their IT requirements and propose innovative solutions.</p><p style=\"outline: none !important;\">Design, develop, and implement customized IT solutions that align with client objectives and industry best practices.</p><p>Conduct thorough analysis and assessment of existing systems to identify areas for improvement and optimization.</p><p>Provide technical expertise and support throughout the project lifecycle, ensuring successful implementation and integration of solutions.</p><p>Troubleshoot technical issues, offer timely resolutions, and provide ongoing support to clients as needed.</p><p>Stay updated with the latest technological advancements and industry trends to recommend relevant solutions and enhancements.</p><p>Communicate effectively with cross-functional teams, clients, and stakeholders to ensure project alignment and successful outcomes.</p><p><em>Document processes, procedures, and technical specifications for future reference and knowledge sharing.</em></p>', '<p><span style=\"font-weight: bolder;\">Collaborate</span>&nbsp;with clients to understand their IT requirements and propose innovative solutions.</p><p style=\"outline: none !important;\">Design, develop, and implement customized IT solutions that align with client objectives and industry best practices.</p><p>Conduct thorough analysis and assessment of existing systems to identify areas for improvement and optimization.</p><p>Provide technical expertise and support throughout the project lifecycle, ensuring successful implementation and integration of solutions.</p><p>Troubleshoot technical issues, offer timely resolutions, and provide ongoing support to clients as needed.</p><p>Stay updated with the latest technological advancements and industry trends to recommend relevant solutions and enhancements.</p><p>Communicate effectively with cross-functional teams, clients, and stakeholders to ensure project alignment and successful outcomes.</p><p><em style=\"color: var(--bs-body-color); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Document processes, procedures, and technical specifications for future reference and knowledge sharing.</em></p><p><ol><li><em>Bullet point 1</em></li><li><em>Bullet point 2</em></li><li><em>Bullet point 3</em></li></ol></p>', 'laravel, php, mysql', '3', 'RosaCantik', NULL, NULL, 1, 0, '2024-07-01 00:36:22', '2024-07-01 00:36:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_applications`
--

CREATE TABLE `job_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `employer_id` bigint(20) UNSIGNED NOT NULL,
  `applied_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `job_applications`
--

INSERT INTO `job_applications` (`id`, `job_id`, `user_id`, `employer_id`, `applied_date`, `created_at`, `updated_at`) VALUES
(40, 33, 14, 3, '2024-07-19 08:40:02', '2024-07-19 08:40:02', '2024-07-19 08:40:02'),
(41, 42, 14, 3, '2024-07-19 08:46:26', '2024-07-19 08:46:26', '2024-07-19 08:46:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_types`
--

CREATE TABLE `job_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `job_types`
--

INSERT INTO `job_types` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Full Time', 1, '2024-06-24 00:44:32', '2024-06-24 00:44:32'),
(2, 'Part Time', 1, '2024-06-24 00:44:32', '2024-06-24 00:44:32'),
(3, 'Freelance', 1, '2024-06-24 00:44:32', '2024-06-24 00:44:32'),
(4, 'Remote', 1, '2024-06-24 00:44:32', '2024-06-24 00:44:32'),
(5, 'Contract', 1, '2024-06-24 00:44:32', '2024-06-24 00:44:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('cantikanesta@gmail.com', 'wGgcQY5GsCOut5EMDOKHwjjxvWPVr0ngKIjO1YiZFd8118bHJO9oNaWq2uaU', '2024-07-19 09:01:17'),
('maretharosalinda@gmail.com', 'X7ZdLLrG55OkzmbdAXSdopL2gz2wCKrhVrJCIIEz6Txl19tIeGO9XsRoxJDR', '2024-07-24 00:39:45'),
('rosacantik23@gmail.com', 'd2xqA40A9R', '2024-07-10 10:30:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` char(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `saved_jobs`
--

CREATE TABLE `saved_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `saved_jobs`
--

INSERT INTO `saved_jobs` (`id`, `job_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 33, 2, '2024-06-28 09:11:38', '2024-06-28 09:11:38'),
(2, 48, 2, '2024-06-28 09:12:31', '2024-06-28 09:12:31'),
(5, 42, 2, '2024-06-28 09:16:28', '2024-06-28 09:16:28'),
(6, 46, 2, '2024-06-28 09:16:56', '2024-06-28 09:16:56'),
(7, 43, 14, '2024-07-19 06:17:46', '2024-07-19 06:17:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('637OE24dqsErCHvpULYrzshiYa66o1uM2q1I8DBP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzFwdDNKcnZvQ2JQdGZjNnlBVUJkcXJjOTFQd0laSkxPZmRoaFVWbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hY2NvdW50L2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722841973),
('YY7pJWi2QjZ1BP32TtxQvuoQtGcHVbgylhaOJpjk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXlOYnU2cTdzaDdDSFpIcFlyQ25odDNiOXFpZ05ES1Mwc3NjckllSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hY2NvdW50L2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1721832599);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `designation`, `mobile`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rosalinda Maretha', 'maretharosalinda@gmail.com', NULL, '$2y$12$t9Yvt7cLLwSRiri1384uzeZ1yDMupxK4kS.dQerNwBLNimysaNqiC', '1-1719213112-jpg', 'Web Developer', '23032004', 'admin', NULL, '2024-06-23 23:50:44', '2024-07-24 00:42:01'),
(2, 'RosaLM', 'maretharosalinda23@gmail.com', NULL, '$2y$12$A.kxbNYmjnhumIM/S5KYdOvNxDdIMqYfHGHYsHqw.kPktl8LYz6V.', '2-1719243315-jpg', 'Hacker', '40023032', 'user', NULL, '2024-06-24 08:33:26', '2024-07-01 01:09:49'),
(3, 'Rosa Cantik', 'rosacantik23@gmail.com', NULL, '$2y$12$e/wcGzieE.K/3k6nC87B3.cC.Y6aIU6kgwEMr6Anii62eSqSwNMmC', '3-1719243481-jpg', 'Pengusaha suksess', '1234554321', 'user', NULL, '2024-06-24 08:36:43', '2024-07-11 08:35:52'),
(4, 'Mitchel Champlin', 'julien.frami@example.org', '2024-07-06 02:30:50', '$2y$12$rSPWYQq1Zk961a7.d27UJ.3fACoQ7nLaif1zoapCS8wNX8YUfmXXu', NULL, NULL, NULL, 'user', 'EW3x7ebxgj', '2024-07-06 02:30:50', '2024-07-06 02:30:50'),
(5, 'Seth Schiller', 'uwhite@example.net', '2024-07-06 02:30:50', '$2y$12$rSPWYQq1Zk961a7.d27UJ.3fACoQ7nLaif1zoapCS8wNX8YUfmXXu', NULL, NULL, NULL, 'user', 'uqi6j1zRRe', '2024-07-06 02:30:50', '2024-07-06 02:30:50'),
(6, 'Emily Haag DVM', 'natalie.dickinson@example.com', '2024-07-06 02:30:50', '$2y$12$rSPWYQq1Zk961a7.d27UJ.3fACoQ7nLaif1zoapCS8wNX8YUfmXXu', NULL, NULL, NULL, 'user', 'HVuBRI84AQ', '2024-07-06 02:30:50', '2024-07-06 02:30:50'),
(7, 'Shaniya Dach PhD', 'flesch@example.net', '2024-07-06 02:30:50', '$2y$12$rSPWYQq1Zk961a7.d27UJ.3fACoQ7nLaif1zoapCS8wNX8YUfmXXu', NULL, NULL, NULL, 'user', 'hTM1RzJAo3', '2024-07-06 02:30:50', '2024-07-06 02:30:50'),
(8, 'Fiona Kub', 'manuela83@example.com', '2024-07-06 02:30:50', '$2y$12$rSPWYQq1Zk961a7.d27UJ.3fACoQ7nLaif1zoapCS8wNX8YUfmXXu', NULL, NULL, NULL, 'user', 'ABXH4QaHG7', '2024-07-06 02:30:50', '2024-07-06 02:30:50'),
(9, 'Ludie Bode', 'celia18@example.org', '2024-07-06 02:30:50', '$2y$12$rSPWYQq1Zk961a7.d27UJ.3fACoQ7nLaif1zoapCS8wNX8YUfmXXu', NULL, NULL, NULL, 'user', 'ZmhEz5DIMI', '2024-07-06 02:30:50', '2024-07-06 02:30:50'),
(10, 'Juston Wintheiser', 'hill.alison@example.com', '2024-07-06 02:30:50', '$2y$12$rSPWYQq1Zk961a7.d27UJ.3fACoQ7nLaif1zoapCS8wNX8YUfmXXu', NULL, NULL, NULL, 'user', 'RDex4DxYlN', '2024-07-06 02:30:50', '2024-07-06 02:30:50'),
(11, 'Arlene Balistreri', 'schimmel.rosamond@example.com', '2024-07-06 02:30:50', '$2y$12$rSPWYQq1Zk961a7.d27UJ.3fACoQ7nLaif1zoapCS8wNX8YUfmXXu', NULL, NULL, NULL, 'user', 'XT0i5sTsml', '2024-07-06 02:30:50', '2024-07-06 02:30:50'),
(12, 'Clint Stehr', 'caesar17@example.net', '2024-07-06 02:30:50', '$2y$12$rSPWYQq1Zk961a7.d27UJ.3fACoQ7nLaif1zoapCS8wNX8YUfmXXu', NULL, NULL, NULL, 'user', 'lo1a4KKw16', '2024-07-06 02:30:50', '2024-07-06 02:30:50'),
(14, 'Nesta Cantika', 'cantikanesta@gmail.com', NULL, '$2y$12$XiztiI/nAN2QD.XQtaIzQOcSG6Xt2I7i/SRh1Bhszw1UHdkJa1ZAq', '14-1721394986-jpg', 'Designer & Pengusaha', 'XXX12345', 'user', NULL, '2024-07-19 06:12:32', '2024-07-19 09:02:52');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `job_type_id` (`job_type_id`);

--
-- Indeks untuk tabel `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `employer_id` (`employer_id`);

--
-- Indeks untuk tabel `job_types`
--
ALTER TABLE `job_types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `saved_jobs`
--
ALTER TABLE `saved_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `job_types`
--
ALTER TABLE `job_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `saved_jobs`
--
ALTER TABLE `saved_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_ibfk_2` FOREIGN KEY (`job_type_id`) REFERENCES `job_types` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `job_applications`
--
ALTER TABLE `job_applications`
  ADD CONSTRAINT `job_applications_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_applications_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_applications_ibfk_3` FOREIGN KEY (`employer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `saved_jobs`
--
ALTER TABLE `saved_jobs`
  ADD CONSTRAINT `saved_jobs_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saved_jobs_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
