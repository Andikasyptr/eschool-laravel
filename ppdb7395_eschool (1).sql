-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2025 at 08:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppdb7395_eschool`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensis`
--

CREATE TABLE `absensis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `jam_masuk` time DEFAULT NULL,
  `jam_pulang` time DEFAULT NULL,
  `status_masuk` enum('Tepat Waktu','Terlambat','Alpha','Izin','Sakit','Pulang Cepat') NOT NULL,
  `status_pulang` enum('Tepat Waktu','Terlambat','Alpha','Izin','Sakit','Pulang Cepat') NOT NULL,
  `keterangan` text DEFAULT NULL,
  `dibuat_oleh` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `foto_masuk` varchar(255) DEFAULT NULL,
  `foto_pulang` longtext DEFAULT NULL,
  `lokasi_masuk` varchar(255) DEFAULT NULL,
  `lokasi_pulang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `absensis`
--

INSERT INTO `absensis` (`id`, `user_id`, `tanggal`, `jam_masuk`, `jam_pulang`, `status_masuk`, `status_pulang`, `keterangan`, `dibuat_oleh`, `created_at`, `updated_at`, `foto_masuk`, `foto_pulang`, `lokasi_masuk`, `lokasi_pulang`) VALUES
(5, 6, '2025-07-02', '15:10:21', '15:10:34', '', '', NULL, 6, '2025-07-02 08:10:21', '2025-07-02 08:10:34', 'storage/absen/6864e96d09fa3_masuk.jpg', 'storage/absen/6864e97a5fa93_pulang.jpg', '-6.256258527563193,107.18105924341226', '-6.256258527563193,107.18105924341226'),
(6, 6, '2025-07-04', '10:27:10', NULL, '', '', NULL, 6, '2025-07-04 03:27:10', '2025-07-04 03:27:10', 'storage/absen/68674a0d836cf_masuk.jpg', NULL, '-6.262671,107.177261', NULL),
(14, 6, '2025-07-14', '13:24:48', '13:26:08', '', '', NULL, 6, '2025-07-14 06:24:48', '2025-07-14 06:26:08', 'storage/absen/6874a2af8fcce_masuk.jpg', 'storage/absen/6874a30094876_pulang.jpg', '-6.262674575087973,107.1772361131236', '-6.262671039180642,107.1772324543745'),
(15, 26, '2025-09-04', '13:32:32', NULL, '', '', NULL, 26, '2025-09-04 06:32:32', '2025-09-04 06:32:32', 'storage/absen/68b93280da4bf_masuk.jpg', NULL, '-6.262511666666668,107.17688216666666', NULL);

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
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `duration` int(11) NOT NULL,
  `total_questions` int(11) NOT NULL DEFAULT 0,
  `kelas` varchar(100) NOT NULL,
  `mapel_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `user_id`, `title`, `description`, `duration`, `total_questions`, `kelas`, `mapel_id`, `created_at`, `updated_at`, `start_time`, `end_time`) VALUES
(63, 26, 'Seni Budaya', 'Semua Jurusan', 10, 0, 'X', 6, '2025-08-28 21:22:20', '2025-08-28 21:30:00', '2025-08-29 06:30:00', '2025-08-29 09:30:00'),
(64, 26, 'Seni Budaya', 'Semua Jurusan', 10, 0, 'XI', 6, '2025-08-28 21:23:43', '2025-08-28 21:29:28', '2025-08-29 06:30:00', '2025-08-29 09:30:00'),
(65, 26, 'Seni Budaya', 'Semua Jurusan', 10, 0, 'XII', 6, '2025-08-28 21:25:16', '2025-08-31 09:17:11', '2025-08-31 16:20:00', '2025-08-31 19:30:00'),
(66, 419, 'Pendidikan Kewarganegaraan', 'Semua Jurusan', 90, 0, 'X', 5, '2025-08-29 02:48:15', '2025-08-29 02:48:15', NULL, NULL),
(67, 419, 'Pendidikan Kewarganegaraan', 'Semua Jurusan', 90, 0, 'XI', 5, '2025-08-29 02:48:41', '2025-08-29 02:48:41', NULL, NULL),
(68, 419, 'Pendidikan Kewarganegaraan', 'Semua Jurusan', 90, 0, 'XII', 5, '2025-08-29 02:49:13', '2025-08-29 02:49:13', NULL, NULL),
(71, 26, 'IPAS', 'Semua Jurusan', 90, 0, 'X', 8, '2025-09-04 06:18:58', '2025-09-04 06:18:58', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_questions`
--

CREATE TABLE `exam_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED NOT NULL,
  `question_text` text NOT NULL,
  `point` int(11) NOT NULL DEFAULT 1,
  `question_type` varchar(255) NOT NULL DEFAULT 'multiple_choice',
  `image_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_questions`
--

INSERT INTO `exam_questions` (`id`, `exam_id`, `question_text`, `point`, `question_type`, `image_path`, `created_at`, `updated_at`) VALUES
(241, 63, 'Alat musik jawa barat adalah..', 5, 'multiple_choice', NULL, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(242, 63, 'Tari Saman berasal dari daerah ...', 5, 'multiple_choice', NULL, '2025-08-28 21:22:34', '2025-08-28 21:22:34'),
(243, 63, 'Wayang kulit menggunakan bahan utama ...', 5, 'multiple_choice', NULL, '2025-08-28 21:22:34', '2025-08-28 21:22:34'),
(244, 63, 'Lagu \'Ampar-Ampar Pisang\' berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:22:34', '2025-08-28 21:22:34'),
(245, 63, 'Batik yang memiliki motif parang berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:22:34', '2025-08-28 21:22:34'),
(246, 63, 'Seni rupa yang dibuat dengan tiga dimensi disebut ...', 5, 'multiple_choice', NULL, '2025-08-28 21:22:34', '2025-08-28 21:22:34'),
(247, 63, 'Tari Kecak berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:22:34', '2025-08-28 21:22:34'),
(248, 63, 'Lagu \'Gundul-Gundul Pacul\' berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:22:34', '2025-08-28 21:22:34'),
(249, 63, 'Patung Liberty yang terkenal terletak di negara ...', 5, 'multiple_choice', NULL, '2025-08-28 21:22:34', '2025-08-28 21:22:34'),
(250, 63, 'Tari Piring berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:22:34', '2025-08-28 21:22:34'),
(251, 63, 'Lagu \'Yamko Rambe Yamko\' berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:22:34', '2025-08-28 21:22:34'),
(252, 63, 'Alat musik tradisional dari Maluku adalah ...', 5, 'multiple_choice', NULL, '2025-08-28 21:22:34', '2025-08-28 21:22:34'),
(253, 63, 'Kain tenun ikat terkenal dari daerah ...', 5, 'multiple_choice', NULL, '2025-08-28 21:22:34', '2025-08-28 21:22:34'),
(254, 63, 'Candi Borobudur merupakan peninggalan agama ...', 5, 'multiple_choice', NULL, '2025-08-28 21:22:34', '2025-08-28 21:22:34'),
(255, 63, 'Tari Jaipong berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:22:34', '2025-08-28 21:22:34'),
(256, 63, 'Kain khas yang terkenal dari Sumatera Selatan adalah ...', 5, 'multiple_choice', NULL, '2025-08-28 21:22:34', '2025-08-28 21:22:34'),
(257, 63, 'Alat musik Sasando berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:22:34', '2025-08-28 21:22:34'),
(258, 63, 'Lagu \'Apuse\' berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:22:34', '2025-08-28 21:22:34'),
(259, 63, 'Tari Serimpi berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:22:34', '2025-08-28 21:22:34'),
(260, 63, 'Patung Garuda Wisnu Kencana terdapat di ...', 5, 'multiple_choice', NULL, '2025-08-28 21:22:34', '2025-08-28 21:22:34'),
(261, 64, 'alat musik jawa barat adalah...', 5, 'multiple_choice', NULL, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(262, 64, 'Tari Saman berasal dari daerah ...', 5, 'multiple_choice', NULL, '2025-08-28 21:24:01', '2025-08-28 21:24:01'),
(263, 64, 'Wayang kulit menggunakan bahan utama ...', 5, 'multiple_choice', NULL, '2025-08-28 21:24:01', '2025-08-28 21:24:01'),
(264, 64, 'Lagu \'Ampar-Ampar Pisang\' berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:24:01', '2025-08-28 21:24:01'),
(265, 64, 'Batik yang memiliki motif parang berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:24:01', '2025-08-28 21:24:01'),
(266, 64, 'Seni rupa yang dibuat dengan tiga dimensi disebut ...', 5, 'multiple_choice', NULL, '2025-08-28 21:24:01', '2025-08-28 21:24:01'),
(267, 64, 'Tari Kecak berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:24:01', '2025-08-28 21:24:01'),
(268, 64, 'Lagu \'Gundul-Gundul Pacul\' berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:24:01', '2025-08-28 21:24:01'),
(269, 64, 'Patung Liberty yang terkenal terletak di negara ...', 5, 'multiple_choice', NULL, '2025-08-28 21:24:01', '2025-08-28 21:24:01'),
(270, 64, 'Tari Piring berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:24:01', '2025-08-28 21:24:01'),
(271, 64, 'Lagu \'Yamko Rambe Yamko\' berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:24:01', '2025-08-28 21:24:01'),
(272, 64, 'Alat musik tradisional dari Maluku adalah ...', 5, 'multiple_choice', NULL, '2025-08-28 21:24:01', '2025-08-28 21:24:01'),
(273, 64, 'Kain tenun ikat terkenal dari daerah ...', 5, 'multiple_choice', NULL, '2025-08-28 21:24:01', '2025-08-28 21:24:01'),
(274, 64, 'Candi Borobudur merupakan peninggalan agama ...', 5, 'multiple_choice', NULL, '2025-08-28 21:24:01', '2025-08-28 21:24:01'),
(275, 64, 'Tari Jaipong berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:24:01', '2025-08-28 21:24:01'),
(276, 64, 'Kain khas yang terkenal dari Sumatera Selatan adalah ...', 5, 'multiple_choice', NULL, '2025-08-28 21:24:01', '2025-08-28 21:24:01'),
(277, 64, 'Alat musik Sasando berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:24:01', '2025-08-28 21:24:01'),
(278, 64, 'Lagu \'Apuse\' berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:24:01', '2025-08-28 21:24:01'),
(279, 64, 'Tari Serimpi berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:24:01', '2025-08-28 21:24:01'),
(280, 64, 'Patung Garuda Wisnu Kencana terdapat di ...', 5, 'multiple_choice', NULL, '2025-08-28 21:24:01', '2025-08-28 21:24:01'),
(281, 65, 'Alat musik Jawa Barat adalah', 5, 'multiple_choice', NULL, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(282, 65, 'Tari Saman berasal dari daerah ...', 5, 'multiple_choice', NULL, '2025-08-28 21:25:35', '2025-08-28 21:25:35'),
(283, 65, 'Wayang kulit menggunakan bahan utama ...', 5, 'multiple_choice', NULL, '2025-08-28 21:25:35', '2025-08-28 21:25:35'),
(284, 65, 'Lagu \'Ampar-Ampar Pisang\' berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:25:35', '2025-08-28 21:25:35'),
(285, 65, 'Batik yang memiliki motif parang berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:25:35', '2025-08-28 21:25:35'),
(286, 65, 'Seni rupa yang dibuat dengan tiga dimensi disebut ...', 5, 'multiple_choice', NULL, '2025-08-28 21:25:35', '2025-08-28 21:25:35'),
(287, 65, 'Tari Kecak berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:25:35', '2025-08-28 21:25:35'),
(288, 65, 'Lagu \'Gundul-Gundul Pacul\' berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:25:35', '2025-08-28 21:25:35'),
(289, 65, 'Patung Liberty yang terkenal terletak di negara ...', 5, 'multiple_choice', NULL, '2025-08-28 21:25:35', '2025-08-28 21:25:35'),
(290, 65, 'Tari Piring berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:25:35', '2025-08-28 21:25:35'),
(291, 65, 'Lagu \'Yamko Rambe Yamko\' berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:25:35', '2025-08-28 21:25:35'),
(292, 65, 'Alat musik tradisional dari Maluku adalah ...', 5, 'multiple_choice', NULL, '2025-08-28 21:25:35', '2025-08-28 21:25:35'),
(293, 65, 'Kain tenun ikat terkenal dari daerah ...', 5, 'multiple_choice', NULL, '2025-08-28 21:25:35', '2025-08-28 21:25:35'),
(294, 65, 'Candi Borobudur merupakan peninggalan agama ...', 5, 'multiple_choice', NULL, '2025-08-28 21:25:35', '2025-08-28 21:25:35'),
(295, 65, 'Tari Jaipong berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:25:35', '2025-08-28 21:25:35'),
(296, 65, 'Kain khas yang terkenal dari Sumatera Selatan adalah ...', 5, 'multiple_choice', NULL, '2025-08-28 21:25:35', '2025-08-28 21:25:35'),
(297, 65, 'Alat musik Sasando berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:25:35', '2025-08-28 21:25:35'),
(298, 65, 'Lagu \'Apuse\' berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:25:35', '2025-08-28 21:25:35'),
(299, 65, 'Tari Serimpi berasal dari ...', 5, 'multiple_choice', NULL, '2025-08-28 21:25:35', '2025-08-28 21:25:35'),
(300, 65, 'Patung Garuda Wisnu Kencana terdapat di ...', 5, 'multiple_choice', NULL, '2025-08-28 21:25:35', '2025-08-28 21:25:35'),
(301, 71, 'Luas Segitiga = a*t/2', 5, 'multiple_choice', 'questions/lZoQ5MgI8ni8lUfEtY7NjRPqUR2iXduFXBeibVrP.jpg', '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(302, 71, 'Tari Saman berasal dari daerah ...', 5, 'multiple_choice', NULL, '2025-09-04 06:19:35', '2025-09-04 06:19:35'),
(303, 71, 'Wayang kulit menggunakan bahan utama ...', 5, 'multiple_choice', NULL, '2025-09-04 06:19:35', '2025-09-04 06:19:35'),
(304, 71, 'Lagu \'Ampar-Ampar Pisang\' berasal dari ...', 5, 'multiple_choice', NULL, '2025-09-04 06:19:35', '2025-09-04 06:19:35'),
(305, 71, 'Batik yang memiliki motif parang berasal dari ...', 5, 'multiple_choice', NULL, '2025-09-04 06:19:35', '2025-09-04 06:19:35'),
(306, 71, 'Seni rupa yang dibuat dengan tiga dimensi disebut ...', 5, 'multiple_choice', NULL, '2025-09-04 06:19:35', '2025-09-04 06:19:35'),
(307, 71, 'Tari Kecak berasal dari ...', 5, 'multiple_choice', NULL, '2025-09-04 06:19:35', '2025-09-04 06:19:35'),
(308, 71, 'Lagu \'Gundul-Gundul Pacul\' berasal dari ...', 5, 'multiple_choice', NULL, '2025-09-04 06:19:35', '2025-09-04 06:19:35'),
(309, 71, 'Patung Liberty yang terkenal terletak di negara ...', 5, 'multiple_choice', NULL, '2025-09-04 06:19:35', '2025-09-04 06:19:35'),
(310, 71, 'Tari Piring berasal dari ...', 5, 'multiple_choice', NULL, '2025-09-04 06:19:35', '2025-09-04 06:19:35'),
(311, 71, 'Lagu \'Yamko Rambe Yamko\' berasal dari ...', 5, 'multiple_choice', NULL, '2025-09-04 06:19:35', '2025-09-04 06:19:35'),
(312, 71, 'Alat musik tradisional dari Maluku adalah ...', 5, 'multiple_choice', NULL, '2025-09-04 06:19:35', '2025-09-04 06:19:35'),
(313, 71, 'Kain tenun ikat terkenal dari daerah ...', 5, 'multiple_choice', NULL, '2025-09-04 06:19:35', '2025-09-04 06:19:35'),
(314, 71, 'Candi Borobudur merupakan peninggalan agama ...', 5, 'multiple_choice', NULL, '2025-09-04 06:19:35', '2025-09-04 06:19:35'),
(315, 71, 'Tari Jaipong berasal dari ...', 5, 'multiple_choice', NULL, '2025-09-04 06:19:35', '2025-09-04 06:19:35'),
(316, 71, 'Kain khas yang terkenal dari Sumatera Selatan adalah ...', 5, 'multiple_choice', NULL, '2025-09-04 06:19:35', '2025-09-04 06:19:35'),
(317, 71, 'Alat musik Sasando berasal dari ...', 5, 'multiple_choice', NULL, '2025-09-04 06:19:35', '2025-09-04 06:19:35'),
(318, 71, 'Lagu \'Apuse\' berasal dari ...', 5, 'multiple_choice', NULL, '2025-09-04 06:19:35', '2025-09-04 06:19:35'),
(319, 71, 'Tari Serimpi berasal dari ...', 5, 'multiple_choice', NULL, '2025-09-04 06:19:35', '2025-09-04 06:19:35'),
(320, 71, 'Patung Garuda Wisnu Kencana terdapat di ...', 5, 'multiple_choice', NULL, '2025-09-04 06:19:35', '2025-09-04 06:19:35');

-- --------------------------------------------------------

--
-- Table structure for table `exam_question_options`
--

CREATE TABLE `exam_question_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_question_id` bigint(20) UNSIGNED NOT NULL,
  `option_label` varchar(1) NOT NULL,
  `option_text` varchar(255) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_question_options`
--

INSERT INTO `exam_question_options` (`id`, `exam_question_id`, `option_label`, `option_text`, `image_path`, `is_correct`, `created_at`, `updated_at`) VALUES
(1156, 241, 'A', 'Angklung', NULL, 1, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1157, 241, 'B', 'Sasando', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1158, 241, 'C', 'Tifa', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1159, 241, 'D', 'Kolintang', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1160, 241, 'E', 'Gamelan', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1161, 242, 'A', 'Jawa Tengah', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1162, 242, 'B', 'Aceh', NULL, 1, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1163, 242, 'C', 'Bali', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1164, 242, 'D', 'Sulawesi', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1165, 242, 'E', 'Sumatera Barat', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1166, 243, 'A', 'Kayu', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1167, 243, 'B', 'Besi', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1168, 243, 'C', 'Kulit', NULL, 1, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1169, 243, 'D', 'Kertas', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1170, 243, 'E', 'Bambu', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1171, 244, 'A', 'Kalimantan Selatan', NULL, 1, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1172, 244, 'B', 'Papua', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1173, 244, 'C', 'Sulawesi', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1174, 244, 'D', 'Sumatera Selatan', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1175, 244, 'E', 'NTT', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1176, 245, 'A', 'Yogyakarta', NULL, 1, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1177, 245, 'B', 'Solo', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1178, 245, 'C', 'Cirebon', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1179, 245, 'D', 'Pekalongan', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1180, 245, 'E', 'Bali', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1181, 246, 'A', 'Lukisan', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1182, 246, 'B', 'Patung', NULL, 1, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1183, 246, 'C', 'Kaligrafi', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1184, 246, 'D', 'Batik', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1185, 246, 'E', 'Poster', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1186, 247, 'A', 'Bali', NULL, 1, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1187, 247, 'B', 'Jawa Timur', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1188, 247, 'C', 'Sumatera Barat', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1189, 247, 'D', 'Kalimantan', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1190, 247, 'E', 'Sulawesi', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1191, 248, 'A', 'Jawa Barat', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1192, 248, 'B', 'Jawa Timur', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1193, 248, 'C', 'Jawa Tengah', NULL, 1, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1194, 248, 'D', 'Madura', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1195, 248, 'E', 'Lampung', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1196, 249, 'A', 'Indonesia', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1197, 249, 'B', 'Prancis', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1198, 249, 'C', 'Amerika Serikat', NULL, 1, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1199, 249, 'D', 'Italia', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1200, 249, 'E', 'Jepang', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1201, 250, 'A', 'Sumatera Barat', NULL, 1, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1202, 250, 'B', 'Aceh', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1203, 250, 'C', 'Papua', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1204, 250, 'D', 'Kalimantan', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1205, 250, 'E', 'Bali', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1206, 251, 'A', 'Papua', NULL, 1, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1207, 251, 'B', 'Jawa Tengah', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1208, 251, 'C', 'Sulawesi', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1209, 251, 'D', 'Maluku', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1210, 251, 'E', 'Kalimantan', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1211, 252, 'A', 'Tifa', NULL, 1, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1212, 252, 'B', 'Angklung', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1213, 252, 'C', 'Kolintang', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1214, 252, 'D', 'Kecapi', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1215, 252, 'E', 'Rebab', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1216, 253, 'A', 'Bali', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1217, 253, 'B', 'NTT', NULL, 1, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1218, 253, 'C', 'Sumatera Utara', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1219, 253, 'D', 'Kalimantan', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1220, 253, 'E', 'Jawa Barat', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1221, 254, 'A', 'Islam', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1222, 254, 'B', 'Hindu', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1223, 254, 'C', 'Budha', NULL, 1, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1224, 254, 'D', 'Kristen', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1225, 254, 'E', 'Konghucu', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1226, 255, 'A', 'Jawa Tengah', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1227, 255, 'B', 'Jawa Barat', NULL, 1, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1228, 255, 'C', 'Jawa Timur', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1229, 255, 'D', 'Bali', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1230, 255, 'E', 'Aceh', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1231, 256, 'A', 'Batik', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1232, 256, 'B', 'Songket', NULL, 1, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1233, 256, 'C', 'Tenun', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1234, 256, 'D', 'Ikat', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1235, 256, 'E', 'Ulos', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1236, 257, 'A', 'NTT', NULL, 1, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1237, 257, 'B', 'Papua', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1238, 257, 'C', 'Maluku', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1239, 257, 'D', 'Kalimantan', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1240, 257, 'E', 'Sulawesi', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1241, 258, 'A', 'Maluku', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1242, 258, 'B', 'Papua', NULL, 1, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1243, 258, 'C', 'Bali', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1244, 258, 'D', 'Jawa Barat', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1245, 258, 'E', 'Sumatera Utara', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1246, 259, 'A', 'Jawa Barat', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1247, 259, 'B', 'Jawa Tengah', NULL, 1, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1248, 259, 'C', 'Sumatera Barat', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1249, 259, 'D', 'Bali', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1250, 259, 'E', 'Aceh', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1251, 260, 'A', 'Lombok', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1252, 260, 'B', 'Yogyakarta', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1253, 260, 'C', 'Bali', NULL, 1, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1254, 260, 'D', 'NTT', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1255, 260, 'E', 'Sumatera', NULL, 0, '2025-08-28 21:22:34', '2025-08-28 21:23:11'),
(1256, 261, 'A', 'Angklung', NULL, 1, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1257, 261, 'B', 'Sasando', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1258, 261, 'C', 'Tifa', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1259, 261, 'D', 'Kolintang', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1260, 261, 'E', 'Gamelan', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1261, 262, 'A', 'Jawa Tengah', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1262, 262, 'B', 'Aceh', NULL, 1, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1263, 262, 'C', 'Bali', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1264, 262, 'D', 'Sulawesi', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1265, 262, 'E', 'Sumatera Barat', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1266, 263, 'A', 'Kayu', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1267, 263, 'B', 'Besi', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1268, 263, 'C', 'Kulit', NULL, 1, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1269, 263, 'D', 'Kertas', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1270, 263, 'E', 'Bambu', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1271, 264, 'A', 'Kalimantan Selatan', NULL, 1, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1272, 264, 'B', 'Papua', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1273, 264, 'C', 'Sulawesi', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1274, 264, 'D', 'Sumatera Selatan', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1275, 264, 'E', 'NTT', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1276, 265, 'A', 'Yogyakarta', NULL, 1, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1277, 265, 'B', 'Solo', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1278, 265, 'C', 'Cirebon', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1279, 265, 'D', 'Pekalongan', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1280, 265, 'E', 'Bali', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1281, 266, 'A', 'Lukisan', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1282, 266, 'B', 'Patung', NULL, 1, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1283, 266, 'C', 'Kaligrafi', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1284, 266, 'D', 'Batik', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1285, 266, 'E', 'Poster', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1286, 267, 'A', 'Bali', NULL, 1, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1287, 267, 'B', 'Jawa Timur', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1288, 267, 'C', 'Sumatera Barat', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1289, 267, 'D', 'Kalimantan', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1290, 267, 'E', 'Sulawesi', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1291, 268, 'A', 'Jawa Barat', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1292, 268, 'B', 'Jawa Timur', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1293, 268, 'C', 'Jawa Tengah', NULL, 1, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1294, 268, 'D', 'Madura', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1295, 268, 'E', 'Lampung', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1296, 269, 'A', 'Indonesia', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1297, 269, 'B', 'Prancis', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1298, 269, 'C', 'Amerika Serikat', NULL, 1, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1299, 269, 'D', 'Italia', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1300, 269, 'E', 'Jepang', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1301, 270, 'A', 'Sumatera Barat', NULL, 1, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1302, 270, 'B', 'Aceh', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1303, 270, 'C', 'Papua', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1304, 270, 'D', 'Kalimantan', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1305, 270, 'E', 'Bali', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1306, 271, 'A', 'Papua', NULL, 1, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1307, 271, 'B', 'Jawa Tengah', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1308, 271, 'C', 'Sulawesi', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1309, 271, 'D', 'Maluku', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1310, 271, 'E', 'Kalimantan', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1311, 272, 'A', 'Tifa', NULL, 1, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1312, 272, 'B', 'Angklung', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1313, 272, 'C', 'Kolintang', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1314, 272, 'D', 'Kecapi', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1315, 272, 'E', 'Rebab', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1316, 273, 'A', 'Bali', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1317, 273, 'B', 'NTT', NULL, 1, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1318, 273, 'C', 'Sumatera Utara', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1319, 273, 'D', 'Kalimantan', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1320, 273, 'E', 'Jawa Barat', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1321, 274, 'A', 'Islam', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1322, 274, 'B', 'Hindu', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1323, 274, 'C', 'Budha', NULL, 1, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1324, 274, 'D', 'Kristen', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1325, 274, 'E', 'Konghucu', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1326, 275, 'A', 'Jawa Tengah', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1327, 275, 'B', 'Jawa Barat', NULL, 1, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1328, 275, 'C', 'Jawa Timur', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1329, 275, 'D', 'Bali', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1330, 275, 'E', 'Aceh', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1331, 276, 'A', 'Batik', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1332, 276, 'B', 'Songket', NULL, 1, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1333, 276, 'C', 'Tenun', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1334, 276, 'D', 'Ikat', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1335, 276, 'E', 'Ulos', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1336, 277, 'A', 'NTT', NULL, 1, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1337, 277, 'B', 'Papua', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1338, 277, 'C', 'Maluku', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1339, 277, 'D', 'Kalimantan', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1340, 277, 'E', 'Sulawesi', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1341, 278, 'A', 'Maluku', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1342, 278, 'B', 'Papua', NULL, 1, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1343, 278, 'C', 'Bali', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1344, 278, 'D', 'Jawa Barat', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1345, 278, 'E', 'Sumatera Utara', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1346, 279, 'A', 'Jawa Barat', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1347, 279, 'B', 'Jawa Tengah', NULL, 1, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1348, 279, 'C', 'Sumatera Barat', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1349, 279, 'D', 'Bali', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1350, 279, 'E', 'Aceh', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1351, 280, 'A', 'Lombok', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1352, 280, 'B', 'Yogyakarta', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1353, 280, 'C', 'Bali', NULL, 1, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1354, 280, 'D', 'NTT', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1355, 280, 'E', 'Sumatera', NULL, 0, '2025-08-28 21:24:01', '2025-08-28 21:24:40'),
(1356, 281, 'A', 'Angklung', NULL, 1, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1357, 281, 'B', 'Sasando', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1358, 281, 'C', 'Tifa', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1359, 281, 'D', 'Kolintang', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1360, 281, 'E', 'Gamelan', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1361, 282, 'A', 'Jawa Tengah', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1362, 282, 'B', 'Aceh', NULL, 1, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1363, 282, 'C', 'Bali', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1364, 282, 'D', 'Sulawesi', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1365, 282, 'E', 'Sumatera Barat', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1366, 283, 'A', 'Kayu', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1367, 283, 'B', 'Besi', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1368, 283, 'C', 'Kulit', NULL, 1, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1369, 283, 'D', 'Kertas', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1370, 283, 'E', 'Bambu', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1371, 284, 'A', 'Kalimantan Selatan', NULL, 1, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1372, 284, 'B', 'Papua', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1373, 284, 'C', 'Sulawesi', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1374, 284, 'D', 'Sumatera Selatan', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1375, 284, 'E', 'NTT', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1376, 285, 'A', 'Yogyakarta', NULL, 1, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1377, 285, 'B', 'Solo', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1378, 285, 'C', 'Cirebon', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1379, 285, 'D', 'Pekalongan', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1380, 285, 'E', 'Bali', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1381, 286, 'A', 'Lukisan', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1382, 286, 'B', 'Patung', NULL, 1, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1383, 286, 'C', 'Kaligrafi', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1384, 286, 'D', 'Batik', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1385, 286, 'E', 'Poster', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1386, 287, 'A', 'Bali', NULL, 1, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1387, 287, 'B', 'Jawa Timur', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1388, 287, 'C', 'Sumatera Barat', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1389, 287, 'D', 'Kalimantan', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1390, 287, 'E', 'Sulawesi', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1391, 288, 'A', 'Jawa Barat', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1392, 288, 'B', 'Jawa Timur', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1393, 288, 'C', 'Jawa Tengah', NULL, 1, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1394, 288, 'D', 'Madura', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1395, 288, 'E', 'Lampung', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1396, 289, 'A', 'Indonesia', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1397, 289, 'B', 'Prancis', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1398, 289, 'C', 'Amerika Serikat', NULL, 1, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1399, 289, 'D', 'Italia', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1400, 289, 'E', 'Jepang', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1401, 290, 'A', 'Sumatera Barat', NULL, 1, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1402, 290, 'B', 'Aceh', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1403, 290, 'C', 'Papua', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1404, 290, 'D', 'Kalimantan', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1405, 290, 'E', 'Bali', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1406, 291, 'A', 'Papua', NULL, 1, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1407, 291, 'B', 'Jawa Tengah', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1408, 291, 'C', 'Sulawesi', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1409, 291, 'D', 'Maluku', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1410, 291, 'E', 'Kalimantan', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1411, 292, 'A', 'Tifa', NULL, 1, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1412, 292, 'B', 'Angklung', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1413, 292, 'C', 'Kolintang', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1414, 292, 'D', 'Kecapi', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1415, 292, 'E', 'Rebab', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1416, 293, 'A', 'Bali', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1417, 293, 'B', 'NTT', NULL, 1, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1418, 293, 'C', 'Sumatera Utara', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1419, 293, 'D', 'Kalimantan', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1420, 293, 'E', 'Jawa Barat', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1421, 294, 'A', 'Islam', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1422, 294, 'B', 'Hindu', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1423, 294, 'C', 'Budha', NULL, 1, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1424, 294, 'D', 'Kristen', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1425, 294, 'E', 'Konghucu', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1426, 295, 'A', 'Jawa Tengah', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1427, 295, 'B', 'Jawa Barat', NULL, 1, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1428, 295, 'C', 'Jawa Timur', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1429, 295, 'D', 'Bali', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1430, 295, 'E', 'Aceh', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1431, 296, 'A', 'Batik', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1432, 296, 'B', 'Songket', NULL, 1, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1433, 296, 'C', 'Tenun', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1434, 296, 'D', 'Ikat', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1435, 296, 'E', 'Ulos', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1436, 297, 'A', 'NTT', NULL, 1, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1437, 297, 'B', 'Papua', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1438, 297, 'C', 'Maluku', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1439, 297, 'D', 'Kalimantan', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1440, 297, 'E', 'Sulawesi', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1441, 298, 'A', 'Maluku', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1442, 298, 'B', 'Papua', NULL, 1, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1443, 298, 'C', 'Bali', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1444, 298, 'D', 'Jawa Barat', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1445, 298, 'E', 'Sumatera Utara', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1446, 299, 'A', 'Jawa Barat', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1447, 299, 'B', 'Jawa Tengah', NULL, 1, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1448, 299, 'C', 'Sumatera Barat', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1449, 299, 'D', 'Bali', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1450, 299, 'E', 'Aceh', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1451, 300, 'A', 'Lombok', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1452, 300, 'B', 'Yogyakarta', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1453, 300, 'C', 'Bali', NULL, 1, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1454, 300, 'D', 'NTT', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1455, 300, 'E', 'Sumatera', NULL, 0, '2025-08-28 21:25:35', '2025-08-28 21:25:57'),
(1456, 301, 'A', 'Angklung', NULL, 1, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1457, 301, 'B', 'Sasando', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1458, 301, 'C', 'Tifa', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1459, 301, 'D', 'Kolintang', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1460, 301, 'E', 'Gamelan', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1461, 302, 'A', 'Jawa Tengah', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1462, 302, 'B', 'Aceh', NULL, 1, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1463, 302, 'C', 'Bali', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1464, 302, 'D', 'Sulawesi', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1465, 302, 'E', 'Sumatera Barat', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1466, 303, 'A', 'Kayu', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1467, 303, 'B', 'Besi', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1468, 303, 'C', 'Kulit', NULL, 1, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1469, 303, 'D', 'Kertas', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1470, 303, 'E', 'Bambu', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1471, 304, 'A', 'Kalimantan Selatan', NULL, 1, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1472, 304, 'B', 'Papua', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1473, 304, 'C', 'Sulawesi', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1474, 304, 'D', 'Sumatera Selatan', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1475, 304, 'E', 'NTT', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1476, 305, 'A', 'Yogyakarta', NULL, 1, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1477, 305, 'B', 'Solo', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1478, 305, 'C', 'Cirebon', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1479, 305, 'D', 'Pekalongan', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1480, 305, 'E', 'Bali', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1481, 306, 'A', 'Lukisan', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1482, 306, 'B', 'Patung', NULL, 1, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1483, 306, 'C', 'Kaligrafi', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1484, 306, 'D', 'Batik', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1485, 306, 'E', 'Poster', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1486, 307, 'A', 'Bali', NULL, 1, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1487, 307, 'B', 'Jawa Timur', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1488, 307, 'C', 'Sumatera Barat', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1489, 307, 'D', 'Kalimantan', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1490, 307, 'E', 'Sulawesi', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1491, 308, 'A', 'Jawa Barat', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1492, 308, 'B', 'Jawa Timur', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1493, 308, 'C', 'Jawa Tengah', NULL, 1, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1494, 308, 'D', 'Madura', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1495, 308, 'E', 'Lampung', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1496, 309, 'A', 'Indonesia', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1497, 309, 'B', 'Prancis', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1498, 309, 'C', 'Amerika Serikat', NULL, 1, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1499, 309, 'D', 'Italia', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1500, 309, 'E', 'Jepang', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1501, 310, 'A', 'Sumatera Barat', NULL, 1, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1502, 310, 'B', 'Aceh', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1503, 310, 'C', 'Papua', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1504, 310, 'D', 'Kalimantan', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1505, 310, 'E', 'Bali', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1506, 311, 'A', 'Papua', NULL, 1, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1507, 311, 'B', 'Jawa Tengah', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1508, 311, 'C', 'Sulawesi', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1509, 311, 'D', 'Maluku', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1510, 311, 'E', 'Kalimantan', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1511, 312, 'A', 'Tifa', NULL, 1, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1512, 312, 'B', 'Angklung', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1513, 312, 'C', 'Kolintang', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1514, 312, 'D', 'Kecapi', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1515, 312, 'E', 'Rebab', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1516, 313, 'A', 'Bali', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1517, 313, 'B', 'NTT', NULL, 1, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1518, 313, 'C', 'Sumatera Utara', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1519, 313, 'D', 'Kalimantan', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1520, 313, 'E', 'Jawa Barat', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1521, 314, 'A', 'Islam', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1522, 314, 'B', 'Hindu', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1523, 314, 'C', 'Budha', NULL, 1, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1524, 314, 'D', 'Kristen', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1525, 314, 'E', 'Konghucu', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1526, 315, 'A', 'Jawa Tengah', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1527, 315, 'B', 'Jawa Barat', NULL, 1, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1528, 315, 'C', 'Jawa Timur', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1529, 315, 'D', 'Bali', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1530, 315, 'E', 'Aceh', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1531, 316, 'A', 'Batik', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1532, 316, 'B', 'Songket', NULL, 1, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1533, 316, 'C', 'Tenun', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1534, 316, 'D', 'Ikat', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1535, 316, 'E', 'Ulos', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1536, 317, 'A', 'NTT', NULL, 1, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1537, 317, 'B', 'Papua', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1538, 317, 'C', 'Maluku', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1539, 317, 'D', 'Kalimantan', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1540, 317, 'E', 'Sulawesi', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1541, 318, 'A', 'Maluku', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1542, 318, 'B', 'Papua', NULL, 1, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1543, 318, 'C', 'Bali', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1544, 318, 'D', 'Jawa Barat', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1545, 318, 'E', 'Sumatera Utara', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1546, 319, 'A', 'Jawa Barat', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1547, 319, 'B', 'Jawa Tengah', NULL, 1, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1548, 319, 'C', 'Sumatera Barat', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1549, 319, 'D', 'Bali', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1550, 319, 'E', 'Aceh', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1551, 320, 'A', 'Lombok', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1552, 320, 'B', 'Yogyakarta', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1553, 320, 'C', 'Bali', NULL, 1, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1554, 320, 'D', 'NTT', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10'),
(1555, 320, 'E', 'Sumatera', NULL, 0, '2025-09-04 06:19:35', '2025-09-05 15:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED NOT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_results`
--

INSERT INTO `exam_results` (`id`, `student_id`, `exam_id`, `score`, `created_at`, `updated_at`) VALUES
(134, 176, 65, 5, '2025-08-29 00:10:25', '2025-08-29 00:10:25'),
(135, 81, 65, 40, '2025-08-29 00:11:14', '2025-08-29 00:11:14'),
(136, 217, 64, 35, '2025-08-29 00:15:40', '2025-08-29 00:15:40'),
(137, 200, 64, 30, '2025-08-29 00:15:51', '2025-08-29 00:42:25'),
(138, 325, 63, 25, '2025-08-29 00:15:56', '2025-08-29 00:15:56'),
(139, 154, 65, 85, '2025-08-29 00:16:01', '2025-08-29 00:16:01'),
(140, 202, 64, 55, '2025-08-29 00:16:40', '2025-08-29 00:43:00'),
(141, 319, 63, 35, '2025-08-29 00:17:03', '2025-08-29 00:17:03'),
(142, 112, 65, 65, '2025-08-29 00:17:31', '2025-08-29 00:17:31'),
(143, 143, 65, 65, '2025-08-29 00:17:38', '2025-08-29 00:17:38'),
(144, 88, 64, 100, '2025-08-29 00:17:47', '2025-08-29 00:17:47'),
(145, 172, 64, 30, '2025-08-29 00:18:21', '2025-08-29 00:43:18'),
(146, 423, 64, 45, '2025-08-29 00:18:22', '2025-08-29 00:44:56'),
(147, 342, 63, 60, '2025-08-29 00:18:34', '2025-08-29 00:18:34'),
(148, 91, 64, 15, '2025-08-29 00:19:09', '2025-08-29 00:43:55'),
(149, 105, 64, 50, '2025-08-29 00:19:09', '2025-08-29 00:19:09'),
(150, 322, 63, 70, '2025-08-29 00:19:24', '2025-08-29 00:19:24'),
(151, 318, 63, 35, '2025-08-29 00:19:35', '2025-08-29 00:19:35'),
(152, 366, 63, 15, '2025-08-29 00:20:09', '2025-08-29 00:20:09'),
(153, 326, 63, 50, '2025-08-29 00:20:21', '2025-08-29 00:20:21'),
(154, 152, 65, 20, '2025-08-29 00:20:33', '2025-08-29 00:20:33'),
(155, 186, 65, 50, '2025-08-29 00:20:42', '2025-08-29 00:20:42'),
(156, 399, 63, 100, '2025-08-29 00:21:09', '2025-08-29 00:21:09'),
(157, 182, 65, 100, '2025-08-29 00:21:11', '2025-08-29 00:21:11'),
(158, 145, 65, 100, '2025-08-29 00:21:30', '2025-08-29 00:21:30'),
(159, 344, 63, 30, '2025-08-29 00:21:38', '2025-08-29 00:21:38'),
(160, 380, 63, 25, '2025-08-29 00:21:43', '2025-08-29 00:21:43'),
(161, 155, 65, 90, '2025-08-29 00:21:45', '2025-08-29 00:21:45'),
(162, 146, 65, 95, '2025-08-29 00:21:51', '2025-08-29 00:21:51'),
(163, 173, 65, 0, '2025-08-29 00:21:59', '2025-08-29 00:21:59'),
(164, 85, 64, 65, '2025-08-29 00:22:06', '2025-08-29 00:44:30'),
(165, 327, 63, 25, '2025-08-29 00:22:17', '2025-08-29 00:22:17'),
(166, 395, 63, 90, '2025-08-29 00:22:20', '2025-08-29 00:22:20'),
(167, 99, 64, 100, '2025-08-29 00:22:30', '2025-08-29 00:22:30'),
(168, 382, 63, 15, '2025-08-29 00:22:45', '2025-08-29 00:22:45'),
(169, 349, 63, 55, '2025-08-29 00:22:47', '2025-08-29 00:22:47'),
(170, 92, 65, 100, '2025-08-29 00:22:53', '2025-08-29 00:22:53'),
(171, 317, 63, 20, '2025-08-29 00:23:03', '2025-08-29 00:23:03'),
(172, 435, 64, 25, '2025-08-29 00:23:23', '2025-08-29 00:42:39'),
(173, 205, 64, 65, '2025-08-29 00:23:51', '2025-08-29 00:23:51'),
(174, 351, 63, 30, '2025-08-29 00:23:57', '2025-08-29 00:23:57'),
(175, 277, 64, 50, '2025-08-29 00:24:28', '2025-08-29 00:49:00'),
(176, 437, 65, 70, '2025-08-29 00:24:42', '2025-08-29 00:24:42'),
(177, 362, 63, 20, '2025-08-29 00:25:06', '2025-08-29 00:25:06'),
(178, 287, 64, 50, '2025-08-29 00:25:13', '2025-08-29 00:44:41'),
(179, 199, 64, 40, '2025-08-29 00:25:15', '2025-08-29 00:42:52'),
(180, 94, 65, 75, '2025-08-29 00:25:22', '2025-08-29 00:25:22'),
(181, 79, 64, 85, '2025-08-29 00:25:22', '2025-08-29 00:43:26'),
(182, 142, 65, 100, '2025-08-29 00:25:36', '2025-08-29 00:25:36'),
(183, 370, 63, 30, '2025-08-29 00:25:40', '2025-08-29 00:25:40'),
(184, 120, 65, 50, '2025-08-29 00:25:40', '2025-08-29 00:25:40'),
(185, 103, 64, 25, '2025-08-29 00:25:45', '2025-08-29 00:43:39'),
(186, 345, 63, 35, '2025-08-29 00:25:53', '2025-08-29 00:25:53'),
(187, 381, 63, 45, '2025-08-29 00:25:55', '2025-08-29 00:25:55'),
(188, 171, 64, 60, '2025-08-29 00:26:08', '2025-08-29 00:44:58'),
(189, 234, 64, 55, '2025-08-29 00:26:19', '2025-08-29 00:45:14'),
(190, 194, 64, 25, '2025-08-29 00:26:28', '2025-08-29 00:42:14'),
(191, 110, 64, 90, '2025-08-29 00:26:30', '2025-08-29 00:26:30'),
(192, 337, 63, 55, '2025-08-29 00:26:41', '2025-08-29 00:26:41'),
(193, 235, 64, 85, '2025-08-29 00:26:48', '2025-08-29 00:26:48'),
(194, 293, 64, 60, '2025-08-29 00:26:56', '2025-08-29 00:44:23'),
(195, 174, 65, 90, '2025-08-29 00:26:59', '2025-08-29 00:26:59'),
(196, 252, 65, 20, '2025-08-29 00:27:02', '2025-08-29 00:27:02'),
(197, 341, 63, 0, '2025-08-29 00:27:37', '2025-08-29 00:27:37'),
(198, 300, 63, 40, '2025-08-29 00:27:44', '2025-08-29 00:27:44'),
(199, 453, 65, 95, '2025-08-29 00:27:47', '2025-08-29 00:27:47'),
(200, 372, 63, 50, '2025-08-29 00:28:13', '2025-08-29 00:28:13'),
(201, 167, 64, 15, '2025-08-29 00:28:19', '2025-08-29 00:44:12'),
(202, 208, 64, 20, '2025-08-29 00:28:21', '2025-08-29 00:44:52'),
(203, 348, 63, 45, '2025-08-29 00:28:28', '2025-08-29 00:28:28'),
(204, 260, 65, 20, '2025-08-29 00:28:28', '2025-08-29 00:28:28'),
(205, 297, 63, 15, '2025-08-29 00:28:32', '2025-08-29 00:28:32'),
(206, 243, 64, 90, '2025-08-29 00:28:36', '2025-08-29 00:28:36'),
(207, 422, 65, 10, '2025-08-29 00:28:40', '2025-08-29 00:28:40'),
(208, 336, 63, 45, '2025-08-29 00:28:42', '2025-08-29 00:28:42'),
(209, 132, 64, 45, '2025-08-29 00:28:43', '2025-08-29 00:28:43'),
(210, 451, 63, 0, '2025-08-29 00:28:43', '2025-08-29 00:28:43'),
(211, 456, 64, 5, '2025-08-29 00:28:52', '2025-08-29 00:44:10'),
(212, 93, 65, 45, '2025-08-29 00:28:53', '2025-08-29 00:28:53'),
(213, 471, 64, 25, '2025-08-29 00:28:54', '2025-08-29 00:43:02'),
(214, 251, 64, 65, '2025-08-29 00:28:56', '2025-08-29 00:44:05'),
(215, 193, 64, 5, '2025-08-29 00:28:58', '2025-08-29 00:42:40'),
(216, 241, 64, 95, '2025-08-29 00:29:04', '2025-08-29 00:45:02'),
(217, 197, 64, 55, '2025-08-29 00:29:04', '2025-08-29 00:29:04'),
(218, 292, 64, 5, '2025-08-29 00:29:06', '2025-08-29 00:45:04'),
(219, 426, 65, 0, '2025-08-29 00:29:09', '2025-08-29 00:29:09'),
(220, 355, 63, 35, '2025-08-29 00:29:11', '2025-08-29 00:29:11'),
(221, 89, 64, 100, '2025-08-29 00:29:18', '2025-08-29 00:29:18'),
(222, 184, 65, 15, '2025-08-29 00:29:26', '2025-08-29 00:29:26'),
(223, 90, 64, 65, '2025-08-29 00:29:28', '2025-08-29 00:43:22'),
(224, 134, 64, 15, '2025-08-29 00:29:41', '2025-08-29 00:42:38'),
(225, 261, 65, 35, '2025-08-29 00:29:49', '2025-08-29 00:29:49'),
(226, 220, 64, 90, '2025-08-29 00:29:51', '2025-08-29 00:44:31'),
(227, 119, 64, 25, '2025-08-29 00:29:54', '2025-08-29 00:29:54'),
(228, 256, 65, 65, '2025-08-29 00:30:19', '2025-08-29 00:30:19'),
(229, 219, 64, 45, '2025-08-29 00:30:22', '2025-08-29 00:44:37'),
(230, 216, 64, 75, '2025-08-29 00:30:22', '2025-08-29 00:43:09'),
(231, 401, 63, 25, '2025-08-29 00:30:22', '2025-08-29 00:30:22'),
(232, 358, 63, 55, '2025-08-29 00:30:48', '2025-08-29 00:30:48'),
(233, 258, 64, 65, '2025-08-29 00:30:54', '2025-08-29 00:30:54'),
(234, 468, 64, 20, '2025-08-29 00:31:01', '2025-08-29 00:44:11'),
(235, 407, 63, 5, '2025-08-29 00:31:07', '2025-08-29 00:31:07'),
(236, 448, 64, 70, '2025-08-29 00:31:20', '2025-08-29 00:49:37'),
(237, 188, 65, 45, '2025-08-29 00:31:21', '2025-08-29 00:31:21'),
(238, 354, 63, 15, '2025-08-29 00:31:26', '2025-08-29 00:31:26'),
(239, 378, 63, 35, '2025-08-29 00:31:32', '2025-08-29 00:31:32'),
(240, 436, 64, 50, '2025-08-29 00:32:08', '2025-08-29 00:45:01'),
(241, 291, 64, 0, '2025-08-29 00:32:10', '2025-08-29 00:35:55'),
(242, 462, 65, 40, '2025-08-29 00:32:11', '2025-08-29 00:32:11'),
(243, 247, 65, 50, '2025-08-29 00:32:22', '2025-08-29 00:32:22'),
(244, 130, 64, 85, '2025-08-29 00:32:23', '2025-08-29 00:44:56'),
(245, 113, 64, 40, '2025-08-29 00:32:34', '2025-08-29 00:43:48'),
(246, 206, 64, 80, '2025-08-29 00:32:35', '2025-08-29 00:44:27'),
(247, 264, 64, 85, '2025-08-29 00:32:38', '2025-08-29 00:44:35'),
(248, 276, 64, 85, '2025-08-29 00:32:40', '2025-08-29 00:43:51'),
(249, 268, 64, 55, '2025-08-29 00:32:47', '2025-08-29 00:32:47'),
(250, 487, 64, 50, '2025-08-29 00:32:51', '2025-08-29 00:43:36'),
(251, 464, 64, 50, '2025-08-29 00:32:52', '2025-08-29 00:44:51'),
(252, 486, 65, 0, '2025-08-29 00:33:05', '2025-08-29 00:33:05'),
(253, 379, 63, 95, '2025-08-29 00:33:15', '2025-08-29 00:33:15'),
(254, 402, 63, 15, '2025-08-29 00:33:15', '2025-08-29 00:33:15'),
(255, 254, 65, 0, '2025-08-29 00:33:26', '2025-08-29 00:33:26'),
(256, 168, 64, 60, '2025-08-29 00:33:37', '2025-08-29 00:44:47'),
(257, 476, 65, 40, '2025-08-29 00:34:09', '2025-08-29 00:34:09'),
(258, 116, 64, 65, '2025-08-29 00:34:41', '2025-08-29 00:34:41'),
(259, 488, 63, 40, '2025-08-29 00:34:44', '2025-08-29 00:34:44'),
(260, 101, 64, 0, '2025-08-29 00:36:05', '2025-08-29 00:36:05'),
(261, 255, 65, 85, '2025-08-29 00:36:38', '2025-08-29 00:36:38'),
(262, 347, 63, 30, '2025-08-29 00:37:01', '2025-08-29 00:37:01'),
(263, 483, 63, 100, '2025-08-29 00:37:06', '2025-08-29 00:37:06'),
(264, 470, 64, 35, '2025-08-29 00:37:10', '2025-08-29 00:45:40'),
(265, 223, 64, 40, '2025-08-29 00:37:21', '2025-08-29 00:44:51'),
(266, 195, 64, 0, '2025-08-29 00:39:37', '2025-08-29 00:39:37'),
(267, 491, 63, 20, '2025-08-29 00:39:42', '2025-08-29 00:39:42'),
(268, 210, 64, 25, '2025-08-29 00:40:02', '2025-08-29 00:42:49'),
(269, 503, 64, 35, '2025-08-29 00:40:32', '2025-08-29 00:40:32'),
(270, 489, 64, 35, '2025-08-29 00:41:47', '2025-08-29 00:41:47'),
(271, 507, 63, 0, '2025-08-29 00:42:35', '2025-08-29 00:42:35'),
(272, 472, 64, 85, '2025-08-29 00:42:42', '2025-08-29 00:42:42'),
(273, 230, 64, 30, '2025-08-29 00:43:14', '2025-08-29 00:43:14'),
(274, 98, 64, 15, '2025-08-29 00:43:28', '2025-08-29 00:43:28'),
(275, 239, 64, 0, '2025-08-29 00:43:34', '2025-08-29 00:43:34'),
(276, 263, 64, 15, '2025-08-29 00:44:02', '2025-08-29 00:44:02'),
(277, 502, 64, 20, '2025-08-29 00:44:08', '2025-08-29 00:44:08'),
(278, 209, 64, 70, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(279, 509, 64, 40, '2025-08-29 00:44:16', '2025-08-29 00:44:16'),
(280, 474, 64, 10, '2025-08-29 00:44:19', '2025-08-29 00:44:19'),
(281, 233, 64, 45, '2025-08-29 00:44:21', '2025-08-29 00:44:21'),
(282, 218, 64, 75, '2025-08-29 00:44:24', '2025-08-29 00:44:24'),
(283, 270, 64, 60, '2025-08-29 00:44:45', '2025-08-29 00:44:45'),
(284, 500, 64, 85, '2025-08-29 00:44:57', '2025-08-29 00:44:57'),
(285, 271, 64, 35, '2025-08-29 00:45:10', '2025-08-29 00:45:10'),
(286, 506, 64, 100, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(287, 505, 64, 75, '2025-08-29 00:45:17', '2025-08-29 00:45:17'),
(288, 196, 64, 85, '2025-08-29 00:45:19', '2025-08-29 00:45:19'),
(289, 288, 64, 55, '2025-08-29 00:45:25', '2025-08-29 00:45:25'),
(290, 272, 64, 50, '2025-08-29 00:45:26', '2025-08-29 00:45:26'),
(291, 242, 64, 35, '2025-08-29 00:45:30', '2025-08-29 00:45:30'),
(292, 501, 64, 90, '2025-08-29 00:45:39', '2025-08-29 00:45:39'),
(293, 460, 64, 90, '2025-08-29 00:45:45', '2025-08-29 00:46:56'),
(294, 510, 64, 80, '2025-08-29 00:45:53', '2025-08-29 00:45:53'),
(295, 508, 64, 95, '2025-08-29 00:46:28', '2025-08-29 00:46:28'),
(296, 504, 64, 80, '2025-08-29 00:46:44', '2025-08-29 00:46:44'),
(297, 211, 64, 40, '2025-08-29 00:46:48', '2025-08-29 00:46:48'),
(298, 511, 64, 95, '2025-08-29 00:48:46', '2025-08-29 00:48:46'),
(299, 274, 64, 40, '2025-08-29 00:49:14', '2025-08-29 00:49:14'),
(300, 169, 64, 20, '2025-08-29 00:51:12', '2025-08-29 00:51:12'),
(301, 106, 64, 90, '2025-08-29 00:52:24', '2025-08-29 00:52:24');

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
-- Table structure for table `guru_details`
--

CREATE TABLE `guru_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pegawai_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah_kelas_mengajar` int(11) DEFAULT NULL,
  `wali_kelas` tinyint(1) NOT NULL DEFAULT 0,
  `jumlah_hari_mengajar` int(11) DEFAULT NULL,
  `jumlah_jam` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guru_details`
--

INSERT INTO `guru_details` (`id`, `pegawai_id`, `jumlah_kelas_mengajar`, `wali_kelas`, `jumlah_hari_mengajar`, `jumlah_jam`, `created_at`, `updated_at`) VALUES
(10, 10, 10, 1, 5, 44, '2025-08-25 15:57:34', '2025-08-25 16:13:04'),
(11, 11, NULL, 0, NULL, 33, '2025-08-25 16:09:13', '2025-08-25 16:09:13'),
(12, 12, NULL, 1, 4, 33, '2025-08-25 16:11:57', '2025-08-25 16:11:57'),
(13, 13, NULL, 0, 3, 20, '2025-08-25 16:17:14', '2025-08-25 16:17:14'),
(14, 14, NULL, 1, 3, 30, '2025-08-25 16:21:48', '2025-08-25 16:21:48'),
(15, 15, NULL, 0, 5, 46, '2025-08-25 16:23:48', '2025-08-25 16:23:48'),
(16, 16, NULL, 0, 3, 12, '2025-08-25 16:26:48', '2025-08-25 16:26:48'),
(17, 17, NULL, 0, 5, 24, '2025-08-25 16:28:58', '2025-08-25 16:28:58'),
(18, 18, NULL, 0, 4, 34, '2025-08-25 16:30:51', '2025-08-25 16:30:51'),
(19, 19, NULL, 1, 3, 25, '2025-08-25 16:33:48', '2025-08-25 16:33:48'),
(20, 20, NULL, 0, 3, 20, '2025-08-25 16:36:56', '2025-08-25 16:36:56'),
(21, 21, NULL, 1, 4, 28, '2025-08-25 16:38:33', '2025-08-25 16:38:33'),
(22, 22, NULL, 1, 3, 17, '2025-08-25 16:41:32', '2025-08-25 16:41:32'),
(23, 23, NULL, 0, 5, 28, '2025-08-25 16:44:04', '2025-08-25 16:44:04'),
(24, 24, NULL, 1, 3, 22, '2025-08-25 16:46:01', '2025-08-25 16:46:01'),
(25, 25, NULL, 1, NULL, 32, '2025-08-25 16:48:12', '2025-08-25 16:48:12'),
(26, 26, NULL, 1, 3, 23, '2025-08-25 16:50:06', '2025-08-25 16:50:06'),
(27, 27, NULL, 1, 3, 21, '2025-08-25 16:52:27', '2025-08-25 16:52:27'),
(28, 28, NULL, 1, 3, 24, '2025-08-25 16:54:41', '2025-08-25 16:54:41'),
(29, 29, NULL, 0, 5, 14, '2025-08-25 16:56:58', '2025-08-25 16:56:58'),
(30, 30, NULL, 0, 4, 30, '2025-08-25 16:59:44', '2025-08-25 16:59:44'),
(31, 31, NULL, 0, 4, 24, '2025-08-25 17:02:20', '2025-08-25 17:02:20'),
(32, 32, NULL, 1, 3, 23, '2025-08-25 17:04:02', '2025-08-25 17:04:02'),
(33, 33, NULL, 0, 2, 18, '2025-08-25 17:07:36', '2025-08-25 17:07:36'),
(34, 34, NULL, 0, 3, 30, '2025-08-25 17:10:34', '2025-08-25 17:10:34');

-- --------------------------------------------------------

--
-- Table structure for table `guru_mapels`
--

CREATE TABLE `guru_mapels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pegawai_id` bigint(20) UNSIGNED NOT NULL,
  `mata_pelajaran` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guru_mapels`
--

INSERT INTO `guru_mapels` (`id`, `pegawai_id`, `mata_pelajaran`, `created_at`, `updated_at`) VALUES
(36, 11, 'Bahasa Indonesia', '2025-08-25 16:09:13', '2025-08-25 16:09:13'),
(37, 12, 'Seni Budaya', '2025-08-25 16:11:57', '2025-08-25 16:11:57'),
(40, 13, 'PAI', '2025-08-25 16:19:02', '2025-08-25 16:19:02'),
(41, 14, 'Produktif TKR', '2025-08-25 16:21:48', '2025-08-25 16:21:48'),
(42, 15, 'Produktif TKR', '2025-08-25 16:23:48', '2025-08-25 16:23:48'),
(43, 16, 'PAI', '2025-08-25 16:26:48', '2025-08-25 16:26:48'),
(44, 17, 'Bahasa Inggris', '2025-08-25 16:28:58', '2025-08-25 16:28:58'),
(45, 18, 'Produktif TKJ', '2025-08-25 16:30:51', '2025-08-25 16:30:51'),
(46, 19, 'PKWH', '2025-08-25 16:33:48', '2025-08-25 16:33:48'),
(47, 20, 'Produktif MP', '2025-08-25 16:36:56', '2025-08-25 16:36:56'),
(48, 21, 'PPKN', '2025-08-25 16:38:33', '2025-08-25 16:38:33'),
(49, 22, 'Produktif TKR', '2025-08-25 16:41:32', '2025-08-25 16:41:32'),
(50, 23, 'PKA', '2025-08-25 16:44:04', '2025-08-25 16:44:04'),
(51, 24, 'Pendidikan Jasmani', '2025-08-25 16:46:01', '2025-08-25 16:46:01'),
(52, 25, 'Bahasa Inggris', '2025-08-25 16:48:12', '2025-08-25 16:48:12'),
(53, 26, 'Matematika', '2025-08-25 16:50:06', '2025-08-25 16:50:06'),
(54, 27, 'Sejarah Indonesia', '2025-08-25 16:52:27', '2025-08-25 16:52:27'),
(55, 28, 'Produktif MP', '2025-08-25 16:54:41', '2025-08-25 16:54:41'),
(56, 29, 'Bimbingan Konseling', '2025-08-25 16:56:58', '2025-08-25 16:56:58'),
(57, 30, 'Informatika, Produktif TKJ', '2025-08-25 16:59:44', '2025-08-25 16:59:44'),
(58, 31, 'IPAS', '2025-08-25 17:02:20', '2025-08-25 17:02:20'),
(59, 32, 'Matematika', '2025-08-25 17:04:02', '2025-08-25 17:04:02'),
(60, 33, 'Sejarah Indonesia', '2025-08-25 17:07:36', '2025-08-25 17:07:36'),
(61, 34, 'Produktif TKJ', '2025-08-25 17:10:34', '2025-08-25 17:10:34'),
(62, 10, 'Koding dan Kecerdasan Artifisial', '2025-08-25 17:11:18', '2025-08-25 17:11:18'),
(63, 10, 'Produktif TKJ', '2025-08-25 17:11:18', '2025-08-25 17:11:18');

-- --------------------------------------------------------

--
-- Table structure for table `jamguru_perhari`
--

CREATE TABLE `jamguru_perhari` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pegawai_id` bigint(20) UNSIGNED NOT NULL,
  `senin` int(11) DEFAULT 0,
  `selasa` int(11) DEFAULT 0,
  `rabu` int(11) DEFAULT 0,
  `kamis` int(11) DEFAULT 0,
  `jumat` int(11) DEFAULT 0,
  `minggu_ke` int(11) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Table structure for table `jurusans`
--

CREATE TABLE `jurusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurusans`
--

INSERT INTO `jurusans` (`id`, `nama_jurusan`, `created_at`, `updated_at`) VALUES
(1, 'Teknik Kendaraan Ringan', '2025-06-28 00:44:55', '2025-06-28 00:44:55'),
(2, 'Teknik Komputer dan Jaringan Telekomunikasi', '2025-06-28 00:47:50', '2025-06-28 00:47:50'),
(3, 'Manajemen Perkantoran', '2025-06-28 00:48:05', '2025-06-28 00:48:05'),
(4, 'OK', '2025-08-28 01:27:03', '2025-08-28 01:27:03');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kelas` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`, `created_at`, `updated_at`) VALUES
(28, 'X', '2025-08-21 10:28:15', '2025-08-21 10:28:15'),
(29, 'XI', '2025-08-21 10:28:24', '2025-08-21 10:28:24'),
(30, 'XII', '2025-08-21 10:28:31', '2025-08-21 10:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `mapels`
--

CREATE TABLE `mapels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_mapel` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mapels`
--

INSERT INTO `mapels` (`id`, `nama_mapel`, `created_at`, `updated_at`) VALUES
(4, 'Informatika', '2025-08-21 04:34:39', '2025-08-24 03:01:36'),
(5, 'Pendidikan Kewarganegaraan', '2025-08-24 02:52:15', '2025-08-24 02:52:15'),
(6, 'Seni Budaya', '2025-08-24 03:01:50', '2025-08-24 03:01:50'),
(7, 'Matematika', '2025-08-28 06:30:43', '2025-08-28 06:30:43'),
(8, 'IPAS', '2025-08-28 06:30:56', '2025-08-28 06:30:56'),
(9, 'PKWH', '2025-08-28 06:31:10', '2025-08-28 06:31:10'),
(10, 'Pendidikan Agama Islam', '2025-08-28 06:31:20', '2025-08-28 06:31:20'),
(11, 'Bahasa Inggris', '2025-08-28 06:31:47', '2025-08-28 06:31:47'),
(12, 'Bahasa Indonesia', '2025-08-28 06:32:53', '2025-08-28 06:32:53'),
(13, 'Bahasa Sunda', '2025-08-28 06:34:27', '2025-08-28 06:34:27'),
(14, 'Sejarah Indonesia', '2025-08-28 06:34:43', '2025-08-28 06:34:43'),
(15, 'Produktif TKJ', '2025-08-28 06:34:56', '2025-08-28 06:34:56'),
(16, 'Produktif TKR', '2025-08-28 06:35:04', '2025-08-28 06:35:04'),
(17, 'Produktif MP', '2025-08-28 06:35:13', '2025-08-28 06:35:13'),
(18, 'Mapel Pilihan', '2025-08-28 06:35:31', '2025-08-28 06:35:31');

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
(4, '2025_06_27_090544_create_profile_admin_table', 2),
(5, '2025_06_28_041216_create_pegawais_table', 3),
(6, '2025_06_28_061852_create_siswas_table', 4),
(7, '2025_06_28_073143_create_jurusans_table', 4),
(8, '2025_06_29_014708_create_kelas_table', 5),
(9, '2025_06_29_040128_add_detail_fields_to_siswas_table', 6),
(10, '2025_06_29_083522_create_absensis_table', 7),
(11, '2025_06_29_085813_create_profile_guru_table', 7),
(12, '2025_06_29_130013_add_foto_pulang_to_absensis_table', 8),
(13, '2025_06_29_130014_add_foto_pulang_to_absensis_table', 8),
(14, '2025_06_29_161658_create_profile_superadmin_table', 9),
(15, '2025_07_02_105623_create_jamguru_perhari_table', 10),
(16, '2025_08_15_095516_create_exams_table', 11),
(17, '2025_08_15_095639_create_questions_table', 11),
(19, '2025_08_15_095707_create_options_table', 12),
(20, '2025_08_15_105054_create_exam_questions_table', 13),
(21, '2025_08_15_105131_create_exam_question_options_table', 13),
(22, '2025_08_20_205920_create_exam_results_table', 14),
(23, '2025_08_21_111128_create_mapels_table', 15),
(24, '2025_09_05_220017_add_kode_kelas_to_siswa_pindahan_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `option_text` varchar(255) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `pegawais`
--

CREATE TABLE `pegawais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `ttl` varchar(255) DEFAULT NULL,
  `tahun_masuk` year(4) DEFAULT NULL,
  `jenis_pegawai` enum('guru','tenaga_kependidikan') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `senin` int(11) DEFAULT 0,
  `selasa` int(11) DEFAULT 0,
  `rabu` int(11) DEFAULT 0,
  `kamis` int(11) DEFAULT 0,
  `jumat` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawais`
--

INSERT INTO `pegawais` (`id`, `user_id`, `nama`, `email`, `nip`, `jabatan`, `no_hp`, `alamat`, `foto`, `ttl`, `tahun_masuk`, `jenis_pegawai`, `created_at`, `updated_at`, `senin`, `selasa`, `rabu`, `kamis`, `jumat`) VALUES
(10, 26, 'Muhammad Andika Anjas S, S.Kom.', '252613@guru.ujian.com', '202213', 'Wali Kelas', '08978475687', 'kp. walahir', 'pegawai/foto/eIw0pWhJlXMhn7Ep1quKjxj8xbBgsPeZiy1vmG5X.png', 'Bekasi, 01 Juli 2000', '2022', 'guru', '2025-08-25 15:57:34', '2025-09-05 17:31:13', 10, 10, 8, 8, 8),
(11, NULL, 'Aliet Jaenudin, S.Pd.', '252601@guru.ujian.com', '252601', 'Wakil Kepala Sekolah Bidang Sarana Prasarana', NULL, NULL, NULL, NULL, NULL, 'guru', '2025-08-25 16:09:13', '2025-08-25 16:09:13', 10, 5, 0, 0, 18),
(12, NULL, 'A. Daenuri, S.Pd.', '252602@guru.ujian.com', '252602', 'Wali Kelas', NULL, NULL, NULL, NULL, NULL, 'guru', '2025-08-25 16:11:57', '2025-08-25 16:11:57', 10, 10, 10, 3, 0),
(13, 17, 'Sihabudin, S.Ag.', '252603@guru.ujian.com', '252604', 'Wali Kelas', NULL, NULL, 'pegawai/foto/bE8ibxJgi49L5ykGQ3dm42irFuHpSAt4dZ51Efn0.jpg', NULL, NULL, 'guru', '2025-08-25 16:17:14', '2025-08-28 03:55:59', 9, 0, 2, 9, 0),
(14, 39, 'Suhenda, S.T', '252604@guru.ujian.com', '252604', 'Wali Kelas', NULL, NULL, NULL, NULL, NULL, 'guru', '2025-08-25 16:21:48', '2025-08-25 17:11:49', 10, 10, 10, 0, 0),
(15, NULL, 'Heri Subektii, S.T', '252605@guru.ujian.com', '252605', 'Guru', NULL, NULL, NULL, NULL, NULL, 'guru', '2025-08-25 16:23:48', '2025-08-25 16:23:48', 10, 10, 10, 10, 6),
(16, NULL, 'Coan Alfian, S.Pd', '252606@guru.ujian.com', '252606', 'Guru', NULL, NULL, NULL, NULL, NULL, 'guru', '2025-08-25 16:26:48', '2025-08-25 16:26:48', 3, 0, 6, 0, 3),
(17, NULL, 'Fajar Hanjairipal, S.S', '252607@guru.ujian.com', '252607`', 'Wakil Kepala Sekolah Bidang Hubungan Industri', NULL, NULL, NULL, NULL, NULL, 'guru', '2025-08-25 16:28:58', '2025-08-25 16:28:58', 4, 6, 6, 4, 4),
(18, NULL, 'Hendra Pratama, S.Kom.', '252608@guru.ujian.com', '252608', 'Kepala Program Jurusan TKJ', NULL, NULL, NULL, NULL, NULL, 'guru', '2025-08-25 16:30:51', '2025-08-25 16:30:51', 9, 8, 9, 8, 0),
(19, NULL, 'Agus Supriyanto, S.Pd.', '252609@guru.ujian.com', '252609', 'Wali kelas', NULL, NULL, NULL, NULL, NULL, 'guru', '2025-08-25 16:33:48', '2025-08-25 16:33:48', 0, 0, 7, 10, 8),
(20, NULL, 'Amsah, S.Pd.', '252610@guru.ujian.com', '252610', 'Kepala Program Jurusan Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, 'guru', '2025-08-25 16:36:56', '2025-08-25 16:36:56', 0, 2, 0, 10, 8),
(21, NULL, 'Hendra Kusasih, S.Pd.', '252611@guru.ujian.com', '252611', 'Wali Kelas', NULL, NULL, NULL, NULL, NULL, 'guru', '2025-08-25 16:38:33', '2025-08-25 16:38:33', 8, 8, 4, 0, 8),
(22, NULL, 'Hendro Adi Wibowo, S.T', '252612@guru.ujian.com', '252612', 'Wali Kelas', NULL, NULL, NULL, NULL, NULL, 'guru', '2025-08-25 16:41:32', '2025-08-25 16:41:32', 0, 0, 2, 7, 8),
(23, NULL, 'Alifudin, S.Pd.', '252614@guru.ujian.com', '252614', 'Wakil Kepala Sekolah Bidang Kesiswaan', NULL, NULL, NULL, NULL, NULL, 'guru', '2025-08-25 16:44:04', '2025-08-25 16:44:04', 6, 2, 4, 8, 8),
(24, NULL, 'Abdul Azis, S.Pd.', '252615@guru.ujian.com', '252615', 'Wali Kelas', NULL, NULL, NULL, NULL, NULL, 'guru', '2025-08-25 16:46:01', '2025-08-25 16:46:01', 0, 6, 0, 8, 8),
(25, 29, 'Nurkholis, S.Pd.', '252616@guru.ujian.com', '252616', 'Wali Kelas', NULL, NULL, NULL, NULL, NULL, 'guru', '2025-08-25 16:48:12', '2025-08-28 03:15:11', 10, 10, 0, 4, 8),
(26, NULL, 'Wilda Zahra, S.Pd.', '252617@guru.ujian.com', '252617', 'Wali Kelas', NULL, NULL, NULL, NULL, NULL, 'guru', '2025-08-25 16:50:06', '2025-08-25 16:50:06', 0, 9, 7, 7, 0),
(27, NULL, 'Tiwi Nurul Khakiki, S.Pd.,M.Pd.', '252618@guru.ujian.com', '252618', 'Wali Kelas', NULL, NULL, NULL, NULL, NULL, 'guru', '2025-08-25 16:52:27', '2025-08-25 16:52:27', 0, 0, 6, 8, 7),
(28, NULL, 'Atikah, S.Pd.', '252619@guru.ujian.com', '252619', 'Wali Kelas', NULL, NULL, NULL, NULL, NULL, 'guru', '2025-08-25 16:54:41', '2025-08-25 16:54:41', 10, 5, 9, 0, 0),
(29, NULL, 'Fitriyani, S.Pd.', '252620@guru.ujian.com', '252620', 'Pembina Pramuka', NULL, NULL, NULL, NULL, NULL, 'guru', '2025-08-25 16:56:58', '2025-08-25 16:56:58', 2, 4, 3, 4, 1),
(30, NULL, 'Bagus Hidayat, M.Kom.', '252621@guru.ujian.com', '252621', 'Guru', NULL, NULL, NULL, NULL, NULL, 'guru', '2025-08-25 16:59:44', '2025-08-25 16:59:44', 8, 0, 9, 5, 8),
(31, NULL, 'Faradilla, S.Pd.', '252622@guru.ujian.com', '252622', 'Pembina Osis', NULL, NULL, NULL, NULL, NULL, 'guru', '2025-08-25 17:02:20', '2025-08-25 17:02:20', 3, 0, 9, 9, 3),
(32, NULL, 'Halimah, S.Pd.', '252623@guru.ujian.com', '252623', 'Wali Kelas', NULL, NULL, NULL, NULL, NULL, 'guru', '2025-08-25 17:04:02', '2025-08-25 17:04:02', 9, 8, 6, 0, 0),
(33, NULL, 'Junaidi, S.Pd.', '252624@guru.ujian.com', '252624', 'Guru', NULL, NULL, NULL, NULL, NULL, 'guru', '2025-08-25 17:07:36', '2025-08-25 17:07:36', 0, 10, 0, 0, 8),
(34, NULL, 'Maulana Yoga Wiyananta, S.Kom.', '252625@guru.ujian.com', '252625', 'Guru', NULL, NULL, NULL, NULL, NULL, 'guru', '2025-08-25 17:10:34', '2025-08-25 17:10:34', 0, 10, 10, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai_sertifikats`
--

CREATE TABLE `pegawai_sertifikats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pegawai_id` bigint(20) UNSIGNED NOT NULL,
  `nama_sertifikat` varchar(255) NOT NULL,
  `path_file` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai_sks`
--

CREATE TABLE `pegawai_sks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pegawai_id` bigint(20) UNSIGNED NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `path_file` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profile_admin`
--

CREATE TABLE `profile_admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_admin`
--

INSERT INTO `profile_admin` (`id`, `user_id`, `foto`, `alamat`, `email`, `nik`, `no_hp`, `created_at`, `updated_at`) VALUES
(1, 2, 'profile_admin/nYNjNG6NMGy4rg5mOyUX5aQuBWY7zyQ1K3lu07tx.jpg', 'Kp. Walahir RT001/RW004 Desa Karangraharja Kec. Cikarang Utara Kab. Bekasi', NULL, '3216090611100005', '08978475687', '2025-06-27 20:13:19', '2025-06-27 20:19:47'),
(2, 3, 'profile_admin/7zQpxuLQPonRBWmKCNS0FusUpcAOCHOjv6gMpIR6.jpg', 'taman aster', NULL, '092889894042', '0390949793789', '2025-06-29 09:26:05', '2025-06-29 09:26:05');

-- --------------------------------------------------------

--
-- Table structure for table `profile_guru`
--

CREATE TABLE `profile_guru` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profile_superadmin`
--

CREATE TABLE `profile_superadmin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED NOT NULL,
  `question_text` text NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `question_type` varchar(255) NOT NULL DEFAULT 'multiple_choice',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('LFvXtsFtIaDteSZ51Hke1BQnx3W1ZC5dQzPVhvtD', 141, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicXJxVE9rcm1ITkQ3ckFkSWc1cmk5YmZPVkVPd3owUzJ5TmMwNTRqdSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaXN3YS9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxNDE7fQ==', 1757079148),
('T7g5kSxVvlHRaWRShIbuVPqmRbJ46R1YDWAmVfM3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTWs0d2FvU2RCQ2pvYVUwTkswOE1zSEVkczJRZVpYcHFVZ3lETjRpRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1756968952),
('xRkFGm26S9OAx8angwesHbckHKNq2dKPZmoRqlNP', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWDJURXpaemV0b01XODlrTVdrVTBxRUxlaGJGcTZvbzhhN2tvdEVrMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9sYXBvcmFuIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1757097520);

-- --------------------------------------------------------

--
-- Table structure for table `siswas`
--

CREATE TABLE `siswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nisn` varchar(50) DEFAULT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `agama` varchar(100) DEFAULT NULL,
  `no_kk` varchar(255) DEFAULT NULL,
  `ttl` varchar(255) DEFAULT NULL,
  `tahun_masuk` year(4) DEFAULT NULL,
  `tahun_ajaran` varchar(10) DEFAULT NULL,
  `kelas_id` bigint(20) UNSIGNED DEFAULT NULL,
  `kode_kelas` varchar(10) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `asal_sekolah` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `alamat_orang_tua` text DEFAULT NULL,
  `file_skl` varchar(255) DEFAULT NULL,
  `file_ijazah` varchar(255) DEFAULT NULL,
  `file_ktp_orang_tua` varchar(255) DEFAULT NULL,
  `file_kk` varchar(255) DEFAULT NULL,
  `file_foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nis` varchar(255) DEFAULT NULL,
  `no_ijazah` varchar(255) DEFAULT NULL,
  `pendidikan_ayah` varchar(255) DEFAULT NULL,
  `pendidikan_ibu` varchar(255) DEFAULT NULL,
  `pekerjaan_ayah` varchar(255) DEFAULT NULL,
  `pekerjaan_ibu` varchar(255) DEFAULT NULL,
  `nik_ayah` varchar(255) DEFAULT NULL,
  `nik_ibu` varchar(255) DEFAULT NULL,
  `penghasilan_ayah` varchar(255) DEFAULT NULL,
  `penghasilan_ibu` varchar(255) DEFAULT NULL,
  `status` enum('siswa aktif','siswa pindahan','keluar') DEFAULT 'siswa aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswas`
--

INSERT INTO `siswas` (`id`, `user_id`, `nama`, `email`, `nisn`, `nik`, `jenis_kelamin`, `agama`, `no_kk`, `ttl`, `tahun_masuk`, `tahun_ajaran`, `kelas_id`, `kode_kelas`, `jurusan`, `asal_sekolah`, `alamat`, `no_hp`, `nama_ayah`, `nama_ibu`, `alamat_orang_tua`, `file_skl`, `file_ijazah`, `file_ktp_orang_tua`, `file_kk`, `file_foto`, `created_at`, `updated_at`, `nis`, `no_ijazah`, `pendidikan_ayah`, `pendidikan_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `nik_ayah`, `nik_ibu`, `penghasilan_ayah`, `penghasilan_ibu`, `status`) VALUES
(1, 78, 'Muhamad Sarif Hidayat', 'muhamadsarifhidayat69@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:38:32', '2025-08-26 06:38:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(2, 79, 'Muhammad Fardan AlKaisya', 'dhaan3952@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:39:14', '2025-08-26 06:39:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(3, 80, 'ELANG SATRIA NUGROHO', 'elangsatrian87@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:39:20', '2025-08-26 06:39:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(4, 85, 'Muhamad Rafit Azra Supriadi', 'rafitazrasupriadi@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, NULL, 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:40:30', '2025-08-26 06:40:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(5, 101, 'Muhamad Fadly M.', 'muhamadfdly@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:40:55', '2025-08-26 06:40:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(6, 81, 'Cristiano ronaldo', 'cristianoronaldo85393@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:42:05', '2025-08-26 06:42:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(7, 95, 'Aby surya', 'syiffzyy@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:42:08', '2025-08-26 06:42:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(8, 104, 'Abdul Azis', 'azisabdull2217@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:42:08', '2025-08-26 06:42:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(9, 105, 'Heikel Ramadhan', 'heikelramadhan99@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:42:08', '2025-08-26 06:42:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(10, 108, 'Laella Agustina', 'laellaagustina68@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:42:12', '2025-08-26 06:42:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(11, 109, 'Firdaus Nufal. A', 'firdausnufalanfasa@student.ac.id', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:42:12', '2025-08-26 06:42:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(12, 90, 'Nasywal Raditya Alfarezi', 'nasywalraditya@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:42:17', '2025-08-26 06:42:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(13, 88, 'Dzaki Reja Pratama', 'akunpraktekti@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:42:26', '2025-08-26 06:42:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(14, 84, 'Siti Uswatun Chasanah', 'sitiuswatunchasanah151@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:42:30', '2025-08-26 06:42:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(15, 92, 'Dewi Putri Kurniawati', 'dewiputrii856@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:42:36', '2025-08-26 06:42:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(16, 111, 'Muhammad Vicky Al Ghazi', 'muhammadvickyalghazi@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:42:37', '2025-08-26 06:42:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(17, 94, 'Grace Kezia Manuela', 'gracekezia1801@gmail.com', NULL, NULL, 'P', 'Kristen', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:42:39', '2025-08-26 06:42:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(18, 93, 'Nitha Ramadhani', 'nitharamadhani569@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:42:47', '2025-08-26 06:42:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(19, 96, 'khesya al zahra', 'khesya187@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:42:48', '2025-08-26 06:42:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(20, 112, 'Edelweiss Arahab', 'edelweissarahab684@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:42:52', '2025-08-26 06:42:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(21, 100, 'M.Raihan Alfarizi', 'mraihanalfarizi434@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:42:59', '2025-08-26 06:42:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(22, 114, 'satria putra pratama', 'skyluxx05@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:43:07', '2025-08-26 06:43:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(23, 99, 'Zaenirahmat', 'zaenirahmat16@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:43:33', '2025-08-26 06:43:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(24, 89, 'Febriyan Syah putra', 'febriyan2611@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:43:39', '2025-08-26 06:43:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(25, 102, 'Ravi Alfarizi', 'ravialfarizi9@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:43:41', '2025-08-26 06:43:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(26, 113, 'Rio Apriansyah', 'rioapriansyah3004@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:43:43', '2025-08-26 06:43:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(27, 91, 'Gilang Apriyanto', 'gilangapriyanto049@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:43:44', '2025-08-26 06:43:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(28, 107, 'Julian ibrahim', 'baimjulian93@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:43:48', '2025-08-26 06:43:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(29, 110, 'Muhammad alsufi evander damares', 'evandamares35@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:44:00', '2025-08-26 06:44:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(30, 103, 'Satria nur fadila', 'udin99@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:44:12', '2025-08-26 06:44:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(31, 116, 'setihartadiwijaya', 'setihartadi@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:44:18', '2025-08-26 06:44:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(32, 122, 'attaralkeysan', 'keysanattar@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:45:43', '2025-08-26 06:45:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(33, 98, 'Mufid ali akbar', 'pengz3078@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:45:49', '2025-08-26 06:45:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(34, 117, 'Naufal Thihami', 'naufalnaufalthihami@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:46:02', '2025-08-26 06:46:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(35, 115, 'RM Rhaditya Maulana P', 'rhadityamaulanaputra@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:46:05', '2025-08-26 06:46:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(36, 120, 'astri sapitri', 'astrisapitri31@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:46:43', '2025-08-26 06:46:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(37, 126, 'nouval', 'nouval@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:46:51', '2025-08-26 06:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(38, 130, 'M Hafizh s', 'hafizsaputraa@student.ac.id', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:47:19', '2025-08-26 06:47:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(39, 119, 'dimas aril dwi arjuna', 'dimaseasy.de91@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:47:30', '2025-08-26 06:47:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(40, 133, 'Gilang Ramadan', 'realdorass7@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:49:19', '2025-08-26 06:49:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(41, 134, 'Nabil Muzakki', 'nabil60700@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:49:39', '2025-08-26 06:49:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(42, 132, 'Arzy Khairil nizam', 'arzykhairilnizam@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:49:45', '2025-08-26 06:49:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(43, 136, 'al farid aqhila pratama', 'alfaridpratama322@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:51:11', '2025-08-26 06:51:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(44, 138, 'Gea Farasya', 'gemciii@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:51:39', '2025-08-26 06:51:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(45, 137, 'Manda Febriyanti', 'mandafry@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:54:15', '2025-08-26 06:54:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(46, 139, 'laura cahya yusilva', 'racaaa1125@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:56:05', '2025-08-26 06:56:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(47, 121, 'amelia putri fauziyah', 'faufauziahamel01@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 06:56:51', '2025-08-26 06:56:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(49, 140, 'Siti Uswatun.c', 'sayaana2801@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 07:33:36', '2025-08-26 07:33:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(52, 141, 'uli', 'uli@gmail.com', '5678890', '79908080', 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-26 15:25:34', '2025-08-31 09:12:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(53, 143, 'Sihab Badawi', 'jujusamsul24@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 00:29:23', '2025-08-27 00:29:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(54, 144, 'Dika Damenta Rorimpandey', 'ddamenta@gmail.com', NULL, NULL, 'L', 'Kristen', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 00:29:29', '2025-08-27 00:29:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(55, 145, 'Nizam Hasbi', 'nijamhasbi198@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 00:29:54', '2025-08-27 00:29:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(56, 147, 'FAUZI FADHRUL ROCHMAN', 'fauzifadhrulr@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 00:30:11', '2025-08-27 00:30:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(57, 148, 'Gilang Praditha', 'gilangpraditha1@gmail.com', NULL, NULL, 'L', 'Kristen', NULL, NULL, NULL, '2025/2026', 30, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 00:30:13', '2025-08-27 00:30:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(58, 154, 'Lufyanto Eka Fahrezi', 'lufyantoekafahrezi@gmail.com', '20279295', '3216091812070003', 'L', 'Islam', NULL, '18 Desember 2007', '2023', '2025/2026', 30, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dokumen/foto/f0HDREsVaoITmIXJOndyuqEpzUDiHLW63ahSvf88.jpg', '2025-08-27 00:31:23', '2025-08-27 00:33:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(59, 142, 'Daysaq ramadan', 'daysaqramadan74@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 00:31:24', '2025-08-27 00:31:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(60, 153, 'badarrudin febriansyah', 'badaruddinfebriansyah@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 00:31:35', '2025-08-27 00:31:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(61, 155, 'Irhamna Latif', 'irhamnalatif20@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 00:31:44', '2025-08-27 00:31:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(62, 152, 'sahdan nasir zein', 'sahdannasirzen@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 00:31:45', '2025-08-27 00:31:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(63, 149, 'Radithya', 'radithyairsyadamali339@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 00:31:49', '2025-08-27 00:31:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(64, 151, 'Linggar Septya Ramadhan', 'septyaramadhanlinggar@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 00:31:53', '2025-08-27 00:31:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(65, 150, 'Raihan fadila suhatman', 'raihanfadila602@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 00:32:12', '2025-08-27 00:32:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(66, 159, 'rifkanafisa', 'rifkanafisa@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 00:35:06', '2025-08-27 00:35:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(67, 158, 'nanda almagvira', 'almagvirananda@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 00:35:07', '2025-08-27 00:35:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(68, 146, 'Faiq iqbal', 'semuttempurmerah007@gimail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 00:35:10', '2025-08-27 00:35:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(69, 160, 'kheysha laura', 'kyshalaura85@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 00:35:17', '2025-08-27 00:35:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(70, 162, 'alia nuraila', 'alianurlailla23@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 00:36:47', '2025-08-27 00:36:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(71, 161, 'aqilla milagros', 'aqillamilagros@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 00:36:53', '2025-08-27 00:36:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(72, 163, 'Anita', 'an8049395@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 00:38:48', '2025-08-27 00:38:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(73, 164, 'Adit Satya darmawan', 'aditsatyadermawansatya@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 00:50:23', '2025-08-27 00:50:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(74, 167, 'Charly Aditya', 'rummehoki7@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 01:57:03', '2025-08-27 01:57:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(75, 166, 'Ghifarel shulton', 'ghifarel@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 01:57:22', '2025-08-27 01:57:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(76, 169, 'Habib ali basya amirudin', 'amiruddinalih@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 02:04:53', '2025-08-27 02:04:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(77, 168, 'Fadhil affandi fayyadh', 'fadhilaffandi274@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 02:04:56', '2025-08-27 02:04:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(78, 170, 'Lumban Tobing M.Fachri Tua', 'fahryyfahryypaii@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 02:11:16', '2025-08-27 02:11:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(79, 171, 'M.Nurwahid', 'slebewwkelasss@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 02:13:17', '2025-08-27 02:13:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(80, 172, 'Aby surya', 'abysurya60@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 02:15:47', '2025-08-27 02:15:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(81, 173, 'rizkia nurasya', 'rizkianurasya@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 03:28:11', '2025-08-27 03:28:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(82, 176, 'Rafli Januar Rabbani', 'raflijanuar2008@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 03:29:15', '2025-08-27 03:29:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(83, 177, 'Jalaluddin Hamdanillah', 'yanto@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 03:30:52', '2025-08-27 03:30:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(84, 183, 'Evan januar rizki', 'evan123@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 03:31:05', '2025-08-27 03:31:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(85, 184, 'Rangga wijaya', 'ranggaawjya1@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 03:31:28', '2025-08-27 03:31:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(86, 185, 'almim', 'almim@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 03:31:50', '2025-08-27 03:31:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(87, 174, 'dio alfarod suryadi', 'dioalfarod@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 03:31:54', '2025-08-27 03:31:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(88, 181, 'satria', 'apaloyaya4@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 03:31:56', '2025-08-27 03:31:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(89, 180, 'Muhammad Iqbal', 'iqbalfajar2008@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 03:31:56', '2025-08-27 03:31:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(90, 182, 'Kevin Dwi Hendriyono', 'kevindwihendriono@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 03:32:03', '2025-08-27 03:32:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(91, 179, 'M.Samsul Palahhudin', 'msamsul@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 03:33:05', '2025-08-27 03:33:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(92, 175, 'Sabili Syahri Ilham', 'sabilisyahriilham@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 03:34:33', '2025-08-27 03:34:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(93, 190, 'afdanmustaqillah', 'mustaqillahafdan743@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 03:35:03', '2025-08-27 03:35:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(94, 186, 'Eka ibrahim', 'ekawwbraww@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 03:35:26', '2025-08-27 03:35:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(95, 188, 'Mohamad Wisnu Firdaus', 'firdauswisnu71@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 03:35:28', '2025-08-27 03:35:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(96, 187, 'Marendra', 'marendraadhasaputra5@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 03:35:29', '2025-08-27 03:35:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(97, 192, 'bimo januarta', 'bendolchococip@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 03:51:24', '2025-08-27 03:51:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(98, 196, 'alpina', 'jjk@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:05:01', '2025-08-27 04:05:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(99, 198, 'Devita Irsyanty', 'watanabeharuto@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:06:15', '2025-08-27 04:06:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(100, 200, 'Fachlevi hussein gunawan', 'aquahoshino@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:06:27', '2025-08-27 04:06:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(101, 202, 'Raka baihaki kaizan', 'rakatzyjir@gmail.com', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:06:52', '2025-08-27 04:06:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(102, 195, 'M. Resky', 'muhammadreskyy@student.ac.id', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:07:59', '2025-08-27 04:07:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(103, 206, 'defa muhrizal al rosyid', 'muhrizall328@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:08:31', '2025-08-27 04:08:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(104, 193, 'listy', 'lstymaulana9@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:08:38', '2025-08-27 04:08:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(105, 197, 'Ferdiansyah', 'ferdiansyah@student.ac.id', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:08:41', '2025-08-27 04:08:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(106, 207, 'DHUKAMSIH NADZWA M.', 'kibeyyy.01@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:08:42', '2025-08-27 04:08:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(107, 199, 'septian mubarok', 'sem@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:08:42', '2025-08-27 04:08:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(108, 194, 'Wiliam Talikum Sitorus', 'wiliamtalikumsitorus123@gmail.com', NULL, NULL, 'L', 'Katolik', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:08:52', '2025-08-27 04:08:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(109, 205, 'winda', 'winda2007071@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:08:58', '2025-08-27 04:08:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(110, 204, 'sabrina zatira azahra', 'sazhra0@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:09:10', '2025-08-27 04:09:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(111, 208, 'Naufal bayu prabowo', 'nopal@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:09:30', '2025-08-27 04:09:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(112, 210, 'Rafardhan atala', 'ardansigmaboy@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:09:46', '2025-08-27 04:09:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(113, 209, 'Adelia putri', 'adel10@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:09:50', '2025-08-27 04:09:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(114, 211, 'Nalisaalyamah', 'nalisaalyamah@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:14:10', '2025-08-27 04:14:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(115, 212, 'Zelda Zaetin Hobir', 'Itoshirin@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:14:27', '2025-08-27 04:14:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(116, 213, 'Naysila Ashdaqyah Anwar', 'pacarjay@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:14:32', '2025-08-27 04:14:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(117, 214, 'jarpok', 'ppk@gmail.com', NULL, NULL, 'L', 'Kristen', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:15:40', '2025-08-27 04:15:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(118, 215, 'aduuuh', 'we@gmail.com', NULL, NULL, 'L', 'Kristen', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:19:27', '2025-08-27 04:19:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(119, 223, 'ZASKIA ANGGUN SARI', 'zaskia@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:29:29', '2025-08-27 04:29:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(120, 225, 'Stepani', 'stepanipani148@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:29:29', '2025-08-27 04:29:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(121, 217, 'Nathan Andreas sinaga', 'sinaganathan7@gmail.com', NULL, NULL, 'L', 'Kristen', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', 'SMP 2 Cikarang Utara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:29:50', '2025-08-27 04:36:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(122, 218, 'Banyu Nada Rizqullah', 'banyuxitkj2@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:30:53', '2025-08-27 04:30:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(123, 220, 'Muhammad Ikhwannuddin', 'ikhwanxitkj2@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:31:17', '2025-08-27 04:31:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(124, 233, 'Aurel apriani', 'aurelapril04@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:31:25', '2025-08-27 04:31:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(125, 235, 'Nurul Inayah', 'nurulinaya878@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:31:28', '2025-08-27 04:31:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(126, 231, 'Dina nur kholillah', 'dinanur@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:31:46', '2025-08-27 04:31:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(127, 229, 'Dita Afriyanti', 'dita@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:31:56', '2025-08-27 04:31:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(128, 226, 'nia sapitri', 'syila255@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:31:56', '2025-08-27 04:31:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(129, 239, 'putriimupp', 'putriiimupp11@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:32:27', '2025-08-27 04:32:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(130, 230, 'shellina salsabilah', 'selin@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:32:30', '2025-08-27 04:32:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(131, 234, 'Novia Nur Azizah', 'novi@gmail.com', '09182938', '6373939', 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:32:32', '2025-08-27 04:44:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(132, 240, 'Putri anggraini nokas', 'Putrinokas111@gmail.c', NULL, NULL, 'P', 'Kristen', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:33:27', '2025-08-27 04:33:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(133, 216, 'Farriq putra faaizuun haryono', 'farriqxitkj@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:33:34', '2025-08-27 04:33:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(134, 227, 'syafa maulida', 'hsnduduwn@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:33:53', '2025-08-27 04:33:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(135, 241, 'Dwi may setyaningsih', 'dwimay@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:33:54', '2025-08-27 04:33:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(136, 242, 'Muhammad azhar Nuruddin Tri Syahmi', 'syahmi@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:34:04', '2025-08-27 04:34:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(137, 219, 'Dzaky Akmal putra', 'dzakyakmalputraxtkj@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:34:04', '2025-08-27 04:34:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(138, 243, 'Zahra Zulza Al-jannah', 'zahrazulzaaljannah@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:36:20', '2025-08-27 04:36:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(139, 244, 'Maulida Nur Qisti', 'maulidaqisti30@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:38:36', '2025-08-27 04:38:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(140, 203, 'M.Samsul Palahhudin', 'samsul@gmail.con', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:42:26', '2025-08-27 04:42:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(141, 245, 'Ririn fakhriyah', 'ririnfakhriyah@student.ac.id', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 04:50:03', '2025-08-27 04:50:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(142, 246, 'Dandie Abdul rizki', 'dandirizki@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 13:50:29', '2025-08-27 13:50:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(143, 251, 'Neyla Rara irawan', 'neylarara30@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:38:52', '2025-08-28 00:38:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(144, 278, 'jones Aranda Kiria', 'jhonson12@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:45:41', '2025-08-28 00:45:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(145, 248, 'Rasya Devara Souhoka', 'rasyasouhoka@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:47:40', '2025-08-28 00:47:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif');
INSERT INTO `siswas` (`id`, `user_id`, `nama`, `email`, `nisn`, `nik`, `jenis_kelamin`, `agama`, `no_kk`, `ttl`, `tahun_masuk`, `tahun_ajaran`, `kelas_id`, `kode_kelas`, `jurusan`, `asal_sekolah`, `alamat`, `no_hp`, `nama_ayah`, `nama_ibu`, `alamat_orang_tua`, `file_skl`, `file_ijazah`, `file_ktp_orang_tua`, `file_kk`, `file_foto`, `created_at`, `updated_at`, `nis`, `no_ijazah`, `pendidikan_ayah`, `pendidikan_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `nik_ayah`, `nik_ibu`, `penghasilan_ayah`, `penghasilan_ibu`, `status`) VALUES
(146, 249, 'Yuceysya Tuzzahra', 'yuceysyatzzhra@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:47:40', '2025-08-28 00:47:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(147, 250, 'haribah', 'haribahseptianixiiotkp@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:47:41', '2025-08-28 00:47:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(148, 252, 'nanda', 'nandaaaprill44@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:47:44', '2025-08-28 00:47:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(149, 254, 'Melvi ayu kirani', 'Melviayukirani11@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:47:44', '2025-08-28 00:47:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(150, 260, 'delita indriana', 'delitaindrianaxiimp@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:47:44', '2025-08-28 00:47:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(151, 269, 'neli agustin', 'neliagustin0830@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:47:44', '2025-08-28 00:47:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(152, 247, 'aliya zerlina', 'naazerlina@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:47:45', '2025-08-28 00:47:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(153, 258, 'Safira Rihana Putri', 'safiraa@student.ac.id', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:47:45', '2025-08-28 00:47:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(154, 281, 'shela nur afni auliya', 'shelanurafniauliyamp@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:47:45', '2025-08-28 00:47:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(155, 263, 'febriana syafira', 'rasyafira@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:47:46', '2025-08-28 00:47:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(156, 277, 'hafsa assyifa', 'hafssahsyifa@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:47:48', '2025-08-28 00:47:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(157, 259, 'Nabila Iqlima Ramadhani', 'nabilaiqlima3@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:47:49', '2025-08-28 00:47:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(158, 262, 'Alya Ramadhani', 'alyaramadhanixiimp@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:47:49', '2025-08-28 00:47:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(159, 273, 'khanza pratami', 'njaw@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:47:50', '2025-08-28 00:47:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(160, 275, 'Tiyas miranti', 'tiyasmiranti@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:47:50', '2025-08-28 00:47:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(161, 274, 'Tiara rhamadani', 'quenra@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:47:51', '2025-08-28 00:47:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(162, 285, 'Indah Setya Ramadani', 'indahh@student.ac.id', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, NULL, 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:47:51', '2025-08-28 00:47:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(163, 271, 'nayla aisyah', 'nay@gmail.com', NULL, NULL, 'P', NULL, NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:47:53', '2025-08-28 00:47:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(164, 261, 'Haliza Septia Mozza Ramadhani', 'halizaseptiamozzaramadhanixiimp@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:47:55', '2025-08-28 00:47:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(165, 264, 'Sarah aulia', 'sarah@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:47:57', '2025-08-28 00:47:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(166, 276, 'Nilna syakira', 'nilnasyakira1909@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:48:00', '2025-08-28 00:48:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(167, 286, 'novita khoirunisa', 'diananisa58@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:48:02', '2025-08-28 00:48:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(168, 280, 'arumi nur azizah Daulay', 'arumiidaulay87@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:48:03', '2025-08-28 00:48:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(169, 272, 'widia juliyanti', 'dya@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:48:05', '2025-08-28 00:48:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(170, 290, 'Luna Olivia', 'lunaolivia27@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:48:06', '2025-08-28 00:48:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(171, 257, 'alviana puti', 'putrialpiana014@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:48:08', '2025-08-28 00:48:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(172, 270, 'Nelly Amani', 'nellyamani@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:48:09', '2025-08-28 00:48:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(173, 268, 'bilqist nurshaffa', 'bilqistnurshaffa@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:48:11', '2025-08-28 00:48:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(174, 255, 'zaskiatrirarahayusupandi', 'zaskiatrirahayusupandi@student.ac.id', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:48:11', '2025-08-28 00:48:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(175, 256, 'Nurhasanah najwa', 'nurhasanahnajwa@student.ac.id', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:48:12', '2025-08-28 00:48:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(176, 282, 'Khanza aulia', 'aullzaa@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:48:18', '2025-08-28 00:48:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(177, 279, 'salsabila zalfa apriliyani', 'salsaa@student.ac.id', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:48:19', '2025-08-28 00:48:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(178, 288, 'Miftah', 'miftah@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:48:21', '2025-08-28 00:48:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(179, 287, 'Dzikrina Putri Rasidi', 'dzikrinaputri86@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:48:25', '2025-08-28 00:48:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(180, 292, 'Rizka Widya Astuti', 'rizkachill@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:49:59', '2025-08-28 00:49:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(181, 291, 'Adzra Mahira Prasetyaningrum', 'adzramahira6a@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:50:17', '2025-08-28 00:50:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(182, 293, 'Aliya Putri Pratiwi', 'yaya@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:53:02', '2025-08-28 00:53:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(183, 294, 'mutiara apriyanti', 'tiaraaaprilyntii012@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 00:56:09', '2025-08-28 00:56:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(184, 297, 'muhammad andika pratama', 'kipli246@gmail.com', '89800', '79797979', 'L', 'Islam', NULL, NULL, NULL, NULL, 28, NULL, 'OK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:28:40', '2025-09-04 06:13:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(185, 300, 'Muhammad Gofur', 'halok730@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'OK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:28:42', '2025-08-28 01:28:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(186, 295, 'Raffi gandara fantys', 'raffigandarafantys@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:28:51', '2025-08-28 01:28:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(187, 308, 'M.RAIHAN', 'dontoll@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:29:09', '2025-08-28 01:29:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(188, 319, 'ANNISA HIBAH MAGFIRULLOH', 'annisahibah15@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:29:13', '2025-08-28 01:29:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(189, 313, 'Muhammad Rafli', 'rafliiyz3105@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'OK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:29:13', '2025-08-28 01:29:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(190, 302, 'nikita', 'nikitacelsinikita@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:29:13', '2025-08-28 01:29:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(191, 320, 'JESSICA AULIA PUTRI', 'jessiimut2701@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:29:14', '2025-08-28 01:29:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(192, 321, 'RORO AROHMAH', 'anzal1709@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:29:14', '2025-08-28 01:29:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(193, 315, 'Satria', 'satriatebe66@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'OK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:29:14', '2025-08-28 01:29:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(194, 317, 'Tammam Nopri yana', 'Noprigkk@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:29:15', '2025-08-28 01:29:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(195, 318, 'rahmawatiprimasarisari@gmail.com', 'rahmawatiprimasarisari@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:29:16', '2025-08-28 01:29:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(196, 303, 'WILDAN RIFKY HERVANO PUTRA', 'dundandin151@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:29:18', '2025-08-28 01:29:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(197, 322, 'nurshofa azahra', 'shofaazahra@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:29:23', '2025-08-28 01:29:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(198, 305, 'Kafliya Afidah Br.bangun', 'Afidah@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:29:25', '2025-08-28 01:29:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(199, 312, 'Safa Nur Asyifa', 'safaayifa28@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:29:36', '2025-08-28 01:29:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(200, 316, 'Rio julianto', 'rio103@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'OK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:29:40', '2025-08-28 01:29:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(201, 304, 'ALIA KARTIKA', 'aliakartika72@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:29:41', '2025-08-28 01:29:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(202, 310, 'Jahara fauziyyah yoshida', 'Jahraafauziyyahyoshida@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:29:47', '2025-08-28 01:29:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(203, 299, 'alya sena rengganis', 'alyasenarengganis904@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:29:52', '2025-08-28 01:29:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(204, 314, 'Aflaha aura yaribi', 'aflahaaurayaribi@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:29:58', '2025-08-28 01:29:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(205, 326, 'Putri Delima', 'putridelima@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:30:04', '2025-08-28 01:30:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(206, 311, 'heyluna widia', 'heylunawidia@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:30:04', '2025-08-28 01:30:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(207, 301, 'DILA ATIYATUL ROHMAH', 'dilaatiyatul@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:30:54', '2025-08-28 01:30:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(208, 327, 'Nurhidayah ayu aulia putri', 'Nurhidayahayu@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:30:55', '2025-08-28 01:30:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(209, 333, 'muhammad Imron Malik', 'boboboy25@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'OK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:31:02', '2025-08-28 01:31:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(210, 328, 'Beylla futri gustiani', 'beyllafutrig@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:31:20', '2025-08-28 01:31:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(211, 325, 'Anindita', 'Anindita@gmail.come', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:31:28', '2025-08-28 01:31:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(212, 329, 'dewi mualifah', 'dewi@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:31:28', '2025-08-28 01:31:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(213, 324, 'Minati Zaskia Hasyifa', 'Hasyifa@gmail.come', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:31:29', '2025-08-28 01:31:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(214, 335, 'aira safitri', 'airasafitri@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:31:31', '2025-08-28 01:31:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(215, 323, 'Shireen aura septiane @gmail.com', 'aura30@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:31:34', '2025-08-28 01:31:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(216, 331, 'Septia Ramadani', 'septia@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:31:35', '2025-08-28 01:31:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(217, 307, 'Anita Fauziah', 'anitafauziah010710@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:32:08', '2025-08-28 01:32:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(218, 309, 'Nur aini', 'eninuraeni1736@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:32:54', '2025-08-28 01:32:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(219, 337, 'Muhammad aidil fiqri', 'kambingkeren@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'OK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:33:37', '2025-08-28 01:33:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(220, 336, 'Arsya', 'arsyavin@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:33:44', '2025-08-28 01:33:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(221, 334, 'adinda nurkoriah', 'adindanurkoriah2@gmail.com', NULL, NULL, NULL, 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:34:08', '2025-08-28 01:34:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(222, 348, 'Dela Anna Sihatul K', 'Dela@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:51:02', '2025-08-28 01:51:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(223, 355, 'Aysah Alfatunnisa', 'ais_nisa@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:52:19', '2025-08-28 01:52:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(224, 351, 'REZKI AKBAR RAMADHAN', 'rezkiakbar@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:52:20', '2025-08-28 01:52:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(225, 342, 'Amanda cahaya Fitri', 'ayyaaa190909@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:52:22', '2025-08-28 01:52:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(226, 345, 'Cindy nandita nur faziah', 'cindy@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:52:22', '2025-08-28 01:52:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(227, 353, 'LUSYANA', 'lusikece@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:52:22', '2025-08-28 01:52:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(228, 354, 'prisca priscillia', 'priscagacor@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:52:23', '2025-08-28 01:52:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(229, 344, 'HAFIDZ ABDILAH', 'apitdi_1234@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:52:23', '2025-08-28 01:52:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(230, 349, 'HAIDAR ALI', 'Haidarali12@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:52:34', '2025-08-28 01:52:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(231, 361, 'Alina', 'Alina3@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:52:37', '2025-08-28 01:52:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(232, 369, 'Ilham hidayat', 'Hamzah@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:52:41', '2025-08-28 01:52:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(233, 362, 'revaavidela', 'revaavidela@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:52:46', '2025-08-28 01:52:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(234, 363, 'cindy rhamadhani', 'cindyrhamadhani@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:52:57', '2025-08-28 01:52:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(235, 360, 'aulia', 'aulia2@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:52:58', '2025-08-28 01:52:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(236, 364, 'Laila badria', 'lailabadria1403@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:52:59', '2025-08-28 01:52:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(237, 368, 'Luthfi dzilal arrofi', 'udyehsuhd@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:53:00', '2025-08-28 01:53:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(238, 346, 'Kartika Dewi Puspitasari', 'tikacantik@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:53:02', '2025-08-28 01:53:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(239, 357, 'Azriel Rezqi AL-Faqih', 'akunbaru@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:53:03', '2025-08-28 01:53:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(240, 356, 'Siskardo Dwi putra Mokodongan', 'siskardo@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:53:05', '2025-08-28 01:53:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(241, 370, 'Arya bima putra', 'rezzpodddd@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:53:07', '2025-08-28 01:53:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(242, 367, 'Syauqi fadli', 'syauqi@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:53:12', '2025-08-28 01:53:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(243, 358, 'kholid fauzan', 'kholiddfauzan@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:53:21', '2025-08-28 01:53:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(244, 372, 'MUHAMMAD FAHRIDIN', 'Ronaldo@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:53:44', '2025-08-28 01:53:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(245, 366, 'keysha syahira', 'keiicyn@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:53:44', '2025-08-28 01:53:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(246, 377, 'galiehalisnaini', 'alisnainiramdhan@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:53:58', '2025-08-28 01:53:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(247, 373, 'NOVAL NOERRISKY', 'novalnoerisky@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:54:05', '2025-08-28 01:54:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(248, 341, 'safira nur hasmayani', 'safirafira09@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:55:02', '2025-08-28 01:55:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(249, 347, 'khansa rafifah', 'khansakansa03@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:55:28', '2025-08-28 01:55:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(250, 352, 'Adzhwa shafa', 'Shafari@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:56:54', '2025-08-28 01:56:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(251, 378, 'EMILIA OKTAVIANA', 'emilia@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:57:11', '2025-08-28 01:57:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(252, 379, 'Jennifer Sunny', 'jennifernaudyy3110@gmail.com', NULL, NULL, 'P', 'Kristen', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 01:58:50', '2025-08-28 01:58:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(253, 386, 'FAUQI NURON', 'fauqinuron@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:14:29', '2025-08-28 02:15:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(254, 382, 'MUHAMMAD RAFLI AR', 'muhammadrafliar@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:15:45', '2025-08-28 02:15:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(255, 396, 'Muhfa', 'Jeruk@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:17:00', '2025-08-28 02:17:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(256, 383, 'kamil rulyanda', 'kamilrulyanda009@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:17:04', '2025-08-28 02:17:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(257, 385, 'Muhammad Iqbaal Nugroho', 'balzzzero@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:17:05', '2025-08-28 02:17:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(258, 390, 'Alif ibrohim', 'alifibrohim100@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:17:21', '2025-08-28 02:17:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(259, 398, 'muhamad Hadad arsy', 'fadhil@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:17:45', '2025-08-28 02:17:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(260, 391, 'xueyelit', 'hadad@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:18:01', '2025-08-28 02:18:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(261, 402, 'Tri andhika prasetya', 'tri747308@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:18:03', '2025-08-28 02:18:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(262, 381, 'Raditya permana', 'GEGESWAWAN@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:18:41', '2025-08-28 02:18:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(263, 395, 'kamal ibrohim', 'Kamalibrohim44@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:18:42', '2025-08-28 02:18:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(264, 399, 'mhmmad zaosan', 'mhmmadzsn@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:18:43', '2025-08-28 02:18:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(265, 403, 'Apdul latip', 'akuakuuu@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:18:53', '2025-08-28 02:18:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(266, 397, 'Marcus dosol', 'Marcusdosol@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:19:04', '2025-08-28 02:19:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(267, 407, 'Jhemyandreas', 'Jhemyandreas@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:19:17', '2025-08-28 02:19:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(268, 406, 'Apdillah.zm', 'apdillah@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:20:18', '2025-08-28 02:20:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(269, 400, 'abdul haris maulana', 'abdul.haris242@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:20:30', '2025-08-28 02:20:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(270, 401, 'Ahmad Fadil Ramdhani', 'dilgood27@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:20:34', '2025-08-28 02:20:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(271, 410, 'Aden exsel Pratama', 'adenexsel@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:20:42', '2025-08-28 02:20:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(272, 393, 'Achmad Andhika ardhana', 'achmad.andhika231@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:20:50', '2025-08-28 02:20:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(273, 413, 'Giri akbar', 'Gerysalut@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:22:25', '2025-08-28 02:22:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(274, 412, 'andikapratama', 'andikapratama@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:23:31', '2025-08-28 02:23:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(275, 408, 'AKHMAL MAULANA', 'akmalmaulana@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:23:33', '2025-08-28 02:23:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(276, 409, 'Nisvi ardilla', 'nisviardilla@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:24:55', '2025-08-28 02:24:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(277, 411, 'FARHAN KAMILAN', 'farhankamilan20@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:25:32', '2025-08-28 02:25:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(278, 415, 'abdul haris', 'abdul.haris222@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:29:42', '2025-08-28 02:29:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(279, 416, 'Ahmad Fadil Ramdhani', 'asrifadil3@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:30:43', '2025-08-28 02:30:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(280, 418, 'AHMAD RIDHO', 'ahmadridho303@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 02:50:03', '2025-08-28 02:50:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(281, 421, 'dhohan pio ajun zulkarnain', 'dhohan@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 14:21:10', '2025-08-28 14:21:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(282, 422, 'Rizki Januari Putra', 'rizkijanuarip@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', 'SMK HIJAU MUDA', 'puri mutiara indah hiu 11 blok bj no 25', '081234103457', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 14:23:17', '2025-08-28 14:27:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(283, 423, 'Azzura sasmitha khasan', 'azzurakhasan@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 23:07:16', '2025-08-28 23:07:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(284, 424, 'Murni', 'murniapriliasarixiiotkp@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:03:35', '2025-08-29 00:03:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(285, 426, 'Sovia nur kholifah', 'soviakholifah@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:08:13', '2025-08-29 00:08:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(286, 427, 'Fadli Akbar Komaini Siregar', 'fadliakbarkomainisiregar@student.ac.id', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:15:26', '2025-08-29 00:15:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(287, 380, 'ILHAM HIDAYAT', 'Hamzah2010@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:16:14', '2025-08-29 00:16:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(288, 431, 'manda febriyanti', 'mpyelll170208@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:16:43', '2025-08-29 00:16:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(289, 432, 'Pharel', 'pharel5five@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:17:52', '2025-08-29 00:17:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(290, 428, 'MUHAMMAD ARYA', 'amuhammadarya839@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:18:14', '2025-08-29 00:18:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif');
INSERT INTO `siswas` (`id`, `user_id`, `nama`, `email`, `nisn`, `nik`, `jenis_kelamin`, `agama`, `no_kk`, `ttl`, `tahun_masuk`, `tahun_ajaran`, `kelas_id`, `kode_kelas`, `jurusan`, `asal_sekolah`, `alamat`, `no_hp`, `nama_ayah`, `nama_ibu`, `alamat_orang_tua`, `file_skl`, `file_ijazah`, `file_ktp_orang_tua`, `file_kk`, `file_foto`, `created_at`, `updated_at`, `nis`, `no_ijazah`, `pendidikan_ayah`, `pendidikan_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `nik_ayah`, `nik_ibu`, `penghasilan_ayah`, `penghasilan_ibu`, `status`) VALUES
(291, 437, 'wily', 'wily@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:18:42', '2025-08-29 00:18:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(292, 435, 'Rangga agustian Supriyadi', 'supriyadirangga72@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:19:42', '2025-08-29 00:19:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(293, 436, 'Raka hadi Pratama', 'rakahadipratama08@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:19:53', '2025-08-29 00:19:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(294, 443, 'NOVI AGUSTIN', 'novi123@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'OK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:21:04', '2025-08-29 00:21:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(295, 433, 'M.Samsul Palahhudin', 'palahhudin@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:21:08', '2025-08-29 00:21:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(296, 448, 'bima montana faralibery', 'bimamfaralibery@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:22:29', '2025-08-29 00:22:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(297, 453, 'Muhammad Iqbal', 'muhammadiqbalfajar2008@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:23:11', '2025-08-29 00:23:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(298, 445, 'MUHAMMAD DAFFA RIDWAN MUNAWAR', 'daffar318@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:23:15', '2025-08-29 00:23:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(299, 456, 'Rafli yansyah', 'rfly@student.ac.id', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:25:54', '2025-08-29 00:25:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(300, 462, 'M.rafid rizqullah', 'masr47@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:26:20', '2025-08-29 00:26:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(301, 451, 'Muhammad Riyan Suprian', 'desmidesmiariyanti@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:26:35', '2025-08-29 00:26:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(302, 471, 'Ravi Alfarizi', 'ayyasygilang399@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:28:08', '2025-08-29 00:28:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(303, 463, 'zihan Siti fatimah', 'zihann2@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'OK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:28:14', '2025-08-29 00:28:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(304, 469, 'Rendi nauval maulana', 'rendinauval149@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:28:24', '2025-08-29 00:28:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(305, 468, 'Gabriel Bastian', 'persija1928@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:28:37', '2025-08-29 00:28:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(306, 470, 'aditya putra', 'nichoadit8@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:28:42', '2025-08-29 00:28:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(307, 464, 'andika septiano', 'Andikaseptiano@student.ac.id', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:28:48', '2025-08-29 00:28:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(308, 441, 'Muhamad Jamalul', 'gccfajri@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:29:22', '2025-08-29 00:29:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(309, 434, 'Rizki Maulana', 'rizkimaulana100998@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:29:35', '2025-08-29 00:29:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(310, 474, 'Nouval Farras Nugraha', 'nouvall@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:29:46', '2025-08-29 00:29:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(311, 475, 'Saskia Adika Putri', 'saskiaadika@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'OK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:30:09', '2025-08-29 00:30:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(312, 446, 'SUSILAWATI', 'susilawati@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'OK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:31:03', '2025-08-29 00:31:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(313, 454, 'jullianishafitri', 'jullianisha13@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:31:11', '2025-08-29 00:31:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(314, 476, 'Rizki alfiantoro pratama', 'rizkyqalfian@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:31:20', '2025-08-29 00:31:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(315, 487, 'Haris setiawan', 'awankece@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:31:45', '2025-08-29 00:31:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(316, 480, 'andariasmuhamadidris', 'andariasmuhamad10@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:31:50', '2025-08-29 00:31:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(317, 486, 'Ahmad jilan', 'ahmadjilan767@gmail.cok', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:31:53', '2025-08-29 00:31:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(318, 483, 'Muhammad naufal tsaqiif riyadi', 'tsaqiifnaufal077@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'OK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:31:58', '2025-08-29 00:31:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(319, 490, 'Elang', 'elang@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:33:16', '2025-08-29 00:33:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(320, 489, 'Maulana Yusuf', 'yusuf2009@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:33:40', '2025-08-29 00:33:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(321, 488, 'Rio julianto', 'rio101@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'OK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:33:44', '2025-08-29 00:33:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(322, 494, 'Noah Aprilio Benjamin Hutagalung', 'jaakudragon@gmail.com', NULL, NULL, 'L', 'Kristen', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:36:43', '2025-08-29 00:36:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(323, 472, 'Haya tsani zhafirah', 'hayatsanizhafirah007@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:36:59', '2025-08-29 00:36:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(324, 460, 'sabrina zatira azahra', 'nana13@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:37:17', '2025-08-29 00:37:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(325, 493, 'Reynaldi Okta Dwi', 'reynaldiokta28@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:37:42', '2025-08-29 00:37:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(326, 491, 'TAUFIK JANUAR MAPAWA', 'nakanomiko676@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 28, NULL, 'OK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:37:49', '2025-08-29 00:37:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(327, 452, 'Noah Aprilio Benjamin Hutagalung', 'noahwithgeats@gmail.com', NULL, NULL, 'L', 'Kristen', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:38:18', '2025-08-29 00:38:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(328, 501, 'naysila@gmail.com', 'naysila@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:38:31', '2025-08-29 00:38:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(329, 502, 'reza dwi pangestu', 'reza@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:38:55', '2025-08-29 00:38:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(330, 503, 'Muhammad Vicky Al Ghazi', 'briyansssaputra@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:39:04', '2025-08-29 00:39:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(331, 500, 'ntannxoxo', 'oyoyoy@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:39:11', '2025-08-29 00:39:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(332, 504, 'Selviana ikawati', 'viaaa@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:39:35', '2025-08-29 00:39:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(333, 506, 'zahraa', 'zhr@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:39:54', '2025-08-29 00:39:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(334, 508, 'orangimuet', 'imuetbanget@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:40:19', '2025-08-29 00:40:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(335, 505, 'farla eka putri', 'farlaekaputri@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:40:20', '2025-08-29 00:40:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(336, 510, 'sri aprilia', 'april@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, NULL, 'Manajemen Perkantoran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:40:52', '2025-08-29 00:40:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(337, 106, 'satria putra pratama', 'satriaputrap579@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '2', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:41:16', '2025-08-29 00:41:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(338, 509, 'Dani Fikri', 'dani@student.ac.id', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:41:25', '2025-08-29 00:41:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(339, 507, 'abdul haris maulana', 'abdul.harismaulana12@gmail.com', NULL, NULL, 'L', 'Kristen', NULL, NULL, NULL, '2025/2026', 28, NULL, 'Teknik Kendaraan Ringan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:41:29', '2025-08-29 00:41:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(340, 511, 'nabila luth afifah', 'nabilalutafifah@gmail.com', NULL, NULL, 'P', 'Islam', NULL, NULL, NULL, '2025/2026', 29, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-29 00:41:45', '2025-08-29 00:41:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif'),
(343, NULL, 'fasya busnainul fadilah', 'fasyaabusnainulffasyabusnainul@gmail.com', NULL, NULL, 'L', 'Islam', NULL, NULL, NULL, '2025/2026', 30, '1', 'Teknik Komputer dan Jaringan Telekomunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-05 15:20:56', '2025-09-05 15:20:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'siswa aktif');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_absensis`
--

CREATE TABLE `siswa_absensis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `jam_masuk` time DEFAULT NULL,
  `jam_pulang` time DEFAULT NULL,
  `status_masuk` enum('Tepat Waktu','Terlambat','Belum Absen') NOT NULL DEFAULT 'Belum Absen',
  `status_pulang` enum('Hadir Lengkap','Pulang Cepat','Belum Pulang') NOT NULL DEFAULT 'Belum Pulang',
  `status_keseluruhan` enum('Alpha','Belum Lengkap','Hadir Lengkap') NOT NULL DEFAULT 'Alpha',
  `keterangan` text DEFAULT NULL,
  `dibuat_oleh` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `foto_masuk` varchar(255) DEFAULT NULL,
  `foto_pulang` longtext DEFAULT NULL,
  `lokasi_masuk` varchar(255) DEFAULT NULL,
  `lokasi_pulang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa_absensis`
--

INSERT INTO `siswa_absensis` (`id`, `user_id`, `tanggal`, `jam_masuk`, `jam_pulang`, `status_masuk`, `status_pulang`, `status_keseluruhan`, `keterangan`, `dibuat_oleh`, `created_at`, `updated_at`, `foto_masuk`, `foto_pulang`, `lokasi_masuk`, `lokasi_pulang`) VALUES
(4, 7, '2025-07-14', '14:00:37', '14:00:45', '', '', 'Alpha', NULL, 7, '2025-07-14 07:00:37', '2025-07-14 07:00:45', 'storage/absen/6874ab150bc69_masuk.jpg', 'storage/absen/6874ab1d54731_pulang.jpg', '-6.26265470005337,107.17721875974027', '-6.26265470005337,107.17721875974027'),
(5, 141, '2025-09-06', '01:00:00', '01:01:00', 'Tepat Waktu', 'Pulang Cepat', 'Alpha', NULL, 141, '2025-09-05 18:00:13', '2025-09-05 18:01:08', 'storage/absen/68bb252d6f287_masuk.jpg', 'storage/absen/68bb25643423d_pulang.jpg', '-6.256449903428345,107.18125360015998', '-6.256449903428345,107.18125360015998');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_pindahan`
--

CREATE TABLE `siswa_pindahan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nisn` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `agama` varchar(100) DEFAULT NULL,
  `no_kk` varchar(255) DEFAULT NULL,
  `ttl` varchar(255) DEFAULT NULL,
  `tahun_masuk` year(4) DEFAULT NULL,
  `tahun_ajaran` varchar(10) DEFAULT NULL,
  `kelas_id` bigint(20) UNSIGNED DEFAULT NULL,
  `kode_kelas` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `asal_sekolah` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `alamat_orang_tua` text DEFAULT NULL,
  `file_skl` varchar(255) DEFAULT NULL,
  `file_ijazah` varchar(255) DEFAULT NULL,
  `file_ktp_orang_tua` varchar(255) DEFAULT NULL,
  `file_kk` varchar(255) DEFAULT NULL,
  `file_foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nis` varchar(255) DEFAULT NULL,
  `no_ijazah` varchar(255) DEFAULT NULL,
  `pendidikan_ayah` varchar(255) DEFAULT NULL,
  `pendidikan_ibu` varchar(255) DEFAULT NULL,
  `pekerjaan_ayah` varchar(255) DEFAULT NULL,
  `pekerjaan_ibu` varchar(255) DEFAULT NULL,
  `nik_ayah` varchar(255) DEFAULT NULL,
  `nik_ibu` varchar(255) DEFAULT NULL,
  `penghasilan_ayah` varchar(255) DEFAULT NULL,
  `penghasilan_ibu` varchar(255) DEFAULT NULL,
  `status` enum('siswa aktif','siswa pindahan','keluar') DEFAULT 'siswa aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa_pindahan`
--

INSERT INTO `siswa_pindahan` (`id`, `user_id`, `nama`, `email`, `nisn`, `nik`, `jenis_kelamin`, `agama`, `no_kk`, `ttl`, `tahun_masuk`, `tahun_ajaran`, `kelas_id`, `kode_kelas`, `jurusan`, `asal_sekolah`, `alamat`, `no_hp`, `nama_ayah`, `nama_ibu`, `alamat_orang_tua`, `file_skl`, `file_ijazah`, `file_ktp_orang_tua`, `file_kk`, `file_foto`, `created_at`, `updated_at`, `nis`, `no_ijazah`, `pendidikan_ayah`, `pendidikan_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `nik_ayah`, `nik_ibu`, `penghasilan_ayah`, `penghasilan_ibu`, `status`) VALUES
(12, NULL, 'siswa pertama', 'siswa@gmail.com', '0910384022', '3216090611100008', 'L', 'Islam', '3216092801140027', 'Bekasi, 01 Juli 2003', '2025', '2025/2026', NULL, NULL, 'Teknik Komputer dan Jaringan Telekomunikasi', 'SMP Negeri 6 Cikarang Utara', 'Kp. Walahir RT001/RW004 Desa Karangraharja Kec. Cikarang Utara Kab. Bekasi', '08978475687', 'Jasi Irsan', 'Anita Nurfitriyani', 'Kp. Walahir RT001/RW004 Desa Karangraharja Kec. Cikarang Utara Kab. Bekasi', 'dokumen/skl/15Vzef3meeROwIUKpiln0GkWa9GM3wPW9wBZcGbl.pdf', 'dokumen/ijazah/XdheP5pJsRTBP3Nvh5MJiH9mu12gy0AmCh3QqpCz.pdf', 'dokumen/ktp_ortu/7cFQdu9M9FyCYMemX8KTCTyaK9OKIskxBKw3bpy2.pdf', 'dokumen/kk/EuGpvA62QrhOlURh1aiaGxjDMG4VuznYiCgfVRmW.pdf', 'dokumen/foto/Wi67wj3MET3jtqNCrMuJ3EpejsdRkLSxbgQRnJkG.jpg', '2025-07-17 15:11:00', '2025-07-17 15:11:00', '1234456778', '1132VFSH6237GJU', 'SLTA', 'S1', 'Karyawan', 'ASN', '1233455667488505', '1235646575690797', 'Rp. 5.000.000', 'Rp. 3.500.000', 'keluar'),
(13, NULL, 'Anjas syaputra', 'andika@domain.com', '1234567', '1234567889290', 'L', 'Islam', '345162738838', 'Bekasi, 01 Juli 2003', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-18 09:51:07', '2025-07-18 09:51:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'keluar'),
(14, NULL, 'ilham', 'ilham@domain.com', '13355677898', '12324565', NULL, NULL, '1312526', 'Bekasi,01 Juli 2003', '2021', '2025/2026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-19 05:33:12', '2025-07-19 05:33:12', '121345267', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'keluar');

-- --------------------------------------------------------

--
-- Table structure for table `student_answers`
--

CREATE TABLE `student_answers` (
  `id` bigint(20) NOT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  `exam_id` bigint(20) DEFAULT NULL,
  `question_id` bigint(20) DEFAULT NULL,
  `option_id` bigint(20) DEFAULT NULL,
  `is_correct` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_answers`
--

INSERT INTO `student_answers` (`id`, `student_id`, `exam_id`, `question_id`, `option_id`, `is_correct`, `created_at`, `updated_at`) VALUES
(1, 489, 64, 261, 1256, 1, '2025-08-29 00:41:44', '2025-08-29 00:41:51'),
(2, 489, 64, 262, 1261, 0, '2025-08-29 00:41:44', '2025-08-29 00:41:51'),
(3, 489, 64, 263, 1267, 0, '2025-08-29 00:41:45', '2025-08-29 00:41:51'),
(4, 489, 64, 264, 1271, 1, '2025-08-29 00:41:45', '2025-08-29 00:41:51'),
(5, 489, 64, 265, 1276, 1, '2025-08-29 00:41:45', '2025-08-29 00:41:51'),
(6, 489, 64, 266, 1282, 1, '2025-08-29 00:41:45', '2025-08-29 00:41:51'),
(7, 489, 64, 267, 1289, 0, '2025-08-29 00:41:45', '2025-08-29 00:41:51'),
(8, 489, 64, 268, 1294, 0, '2025-08-29 00:41:45', '2025-08-29 00:41:51'),
(9, 489, 64, 269, 1298, 1, '2025-08-29 00:41:45', '2025-08-29 00:41:51'),
(10, 489, 64, 270, 1301, 1, '2025-08-29 00:41:45', '2025-08-29 00:41:52'),
(11, 489, 64, 271, 1307, 0, '2025-08-29 00:41:45', '2025-08-29 00:41:52'),
(12, 489, 64, 272, 1313, 0, '2025-08-29 00:41:46', '2025-08-29 00:41:52'),
(13, 489, 64, 273, 1317, 1, '2025-08-29 00:41:46', '2025-08-29 00:41:52'),
(14, 489, 64, 274, 1322, 0, '2025-08-29 00:41:46', '2025-08-29 00:41:52'),
(15, 489, 64, 275, 1328, 0, '2025-08-29 00:41:46', '2025-08-29 00:41:52'),
(16, 489, 64, 276, 1333, 0, '2025-08-29 00:41:46', '2025-08-29 00:41:52'),
(17, 489, 64, 277, 1338, 0, '2025-08-29 00:41:46', '2025-08-29 00:41:52'),
(18, 489, 64, 278, 1343, 0, '2025-08-29 00:41:47', '2025-08-29 00:41:52'),
(19, 489, 64, 279, 1346, 0, '2025-08-29 00:41:47', '2025-08-29 00:41:52'),
(20, 489, 64, 280, 1352, 0, '2025-08-29 00:41:47', '2025-08-29 00:41:52'),
(21, 194, 64, 261, 1258, 0, '2025-08-29 00:42:12', '2025-08-29 00:42:12'),
(22, 194, 64, 262, 1263, 0, '2025-08-29 00:42:12', '2025-08-29 00:42:12'),
(23, 194, 64, 263, 1269, 0, '2025-08-29 00:42:12', '2025-08-29 00:42:12'),
(24, 194, 64, 264, 1274, 0, '2025-08-29 00:42:12', '2025-08-29 00:42:12'),
(25, 194, 64, 265, 1279, 0, '2025-08-29 00:42:12', '2025-08-29 00:42:12'),
(26, 194, 64, 266, 1282, 1, '2025-08-29 00:42:12', '2025-08-29 00:42:12'),
(27, 194, 64, 267, 1286, 1, '2025-08-29 00:42:12', '2025-08-29 00:42:12'),
(28, 194, 64, 268, 1292, 0, '2025-08-29 00:42:12', '2025-08-29 00:42:12'),
(29, 194, 64, 269, 1296, 0, '2025-08-29 00:42:12', '2025-08-29 00:42:12'),
(30, 194, 64, 270, 1301, 1, '2025-08-29 00:42:12', '2025-08-29 00:42:12'),
(31, 194, 64, 271, 1308, 0, '2025-08-29 00:42:13', '2025-08-29 00:42:13'),
(32, 194, 64, 272, 1313, 0, '2025-08-29 00:42:13', '2025-08-29 00:42:13'),
(33, 194, 64, 273, 1318, 0, '2025-08-29 00:42:13', '2025-08-29 00:42:13'),
(34, 194, 64, 274, 1324, 0, '2025-08-29 00:42:13', '2025-08-29 00:42:13'),
(35, 194, 64, 275, 1326, 0, '2025-08-29 00:42:13', '2025-08-29 00:42:13'),
(36, 194, 64, 276, 1335, 0, '2025-08-29 00:42:14', '2025-08-29 00:42:14'),
(37, 194, 64, 277, 1338, 0, '2025-08-29 00:42:14', '2025-08-29 00:42:14'),
(38, 194, 64, 278, 1344, 0, '2025-08-29 00:42:14', '2025-08-29 00:42:14'),
(39, 194, 64, 279, 1347, 1, '2025-08-29 00:42:14', '2025-08-29 00:42:14'),
(40, 194, 64, 280, 1353, 1, '2025-08-29 00:42:14', '2025-08-29 00:42:14'),
(41, 200, 64, 261, 1258, 0, '2025-08-29 00:42:25', '2025-08-29 00:42:25'),
(42, 200, 64, 262, 1263, 0, '2025-08-29 00:42:25', '2025-08-29 00:42:25'),
(43, 200, 64, 263, 1267, 0, '2025-08-29 00:42:25', '2025-08-29 00:42:25'),
(44, 200, 64, 264, 1271, 1, '2025-08-29 00:42:25', '2025-08-29 00:42:25'),
(45, 200, 64, 265, 1279, 0, '2025-08-29 00:42:25', '2025-08-29 00:42:25'),
(46, 200, 64, 266, 1283, 0, '2025-08-29 00:42:25', '2025-08-29 00:42:25'),
(47, 200, 64, 267, 1286, 1, '2025-08-29 00:42:25', '2025-08-29 00:42:25'),
(48, 200, 64, 268, 1293, 1, '2025-08-29 00:42:25', '2025-08-29 00:42:25'),
(49, 200, 64, 269, 1296, 0, '2025-08-29 00:42:25', '2025-08-29 00:42:25'),
(50, 200, 64, 270, 1304, 0, '2025-08-29 00:42:25', '2025-08-29 00:42:25'),
(51, 200, 64, 271, 1307, 0, '2025-08-29 00:42:25', '2025-08-29 00:42:25'),
(52, 200, 64, 272, 1313, 0, '2025-08-29 00:42:25', '2025-08-29 00:42:25'),
(53, 200, 64, 273, 1319, 0, '2025-08-29 00:42:25', '2025-08-29 00:42:25'),
(54, 200, 64, 274, 1322, 0, '2025-08-29 00:42:25', '2025-08-29 00:42:25'),
(55, 200, 64, 275, 1326, 0, '2025-08-29 00:42:25', '2025-08-29 00:42:25'),
(56, 200, 64, 276, 1332, 1, '2025-08-29 00:42:25', '2025-08-29 00:42:25'),
(57, 200, 64, 277, 1339, 0, '2025-08-29 00:42:25', '2025-08-29 00:42:25'),
(58, 200, 64, 278, 1342, 1, '2025-08-29 00:42:25', '2025-08-29 00:42:25'),
(59, 200, 64, 279, 1347, 1, '2025-08-29 00:42:25', '2025-08-29 00:42:25'),
(60, 200, 64, 280, 1351, 0, '2025-08-29 00:42:25', '2025-08-29 00:42:25'),
(61, 134, 64, 261, 1256, 1, '2025-08-29 00:42:37', '2025-08-29 00:42:37'),
(62, 134, 64, 262, 1261, 0, '2025-08-29 00:42:37', '2025-08-29 00:42:37'),
(63, 134, 64, 263, 1266, 0, '2025-08-29 00:42:38', '2025-08-29 00:42:38'),
(64, 134, 64, 264, 1272, 0, '2025-08-29 00:42:38', '2025-08-29 00:42:38'),
(65, 134, 64, 265, 1277, 0, '2025-08-29 00:42:38', '2025-08-29 00:42:38'),
(66, 134, 64, 266, 1283, 0, '2025-08-29 00:42:38', '2025-08-29 00:42:38'),
(67, 134, 64, 267, 1289, 0, '2025-08-29 00:42:38', '2025-08-29 00:42:38'),
(68, 134, 64, 268, 1295, 0, '2025-08-29 00:42:38', '2025-08-29 00:42:38'),
(69, 134, 64, 269, 1300, 0, '2025-08-29 00:42:38', '2025-08-29 00:42:38'),
(70, 134, 64, 270, 1304, 0, '2025-08-29 00:42:38', '2025-08-29 00:42:38'),
(71, 134, 64, 271, 1308, 0, '2025-08-29 00:42:38', '2025-08-29 00:42:38'),
(72, 134, 64, 272, 1313, 0, '2025-08-29 00:42:38', '2025-08-29 00:42:38'),
(73, 134, 64, 273, 1318, 0, '2025-08-29 00:42:38', '2025-08-29 00:42:38'),
(74, 134, 64, 274, 1323, 1, '2025-08-29 00:42:38', '2025-08-29 00:42:38'),
(75, 134, 64, 275, 1328, 0, '2025-08-29 00:42:38', '2025-08-29 00:42:38'),
(76, 134, 64, 276, 1332, 1, '2025-08-29 00:42:38', '2025-08-29 00:42:38'),
(77, 134, 64, 277, 1338, 0, '2025-08-29 00:42:38', '2025-08-29 00:42:38'),
(78, 134, 64, 278, 1344, 0, '2025-08-29 00:42:38', '2025-08-29 00:42:38'),
(79, 134, 64, 279, 1349, 0, '2025-08-29 00:42:38', '2025-08-29 00:42:38'),
(80, 134, 64, 280, 1351, 0, '2025-08-29 00:42:38', '2025-08-29 00:42:38'),
(81, 435, 64, 261, 1256, 1, '2025-08-29 00:42:39', '2025-08-29 00:42:39'),
(82, 435, 64, 262, 1264, 0, '2025-08-29 00:42:39', '2025-08-29 00:42:39'),
(83, 435, 64, 263, 1268, 1, '2025-08-29 00:42:39', '2025-08-29 00:42:39'),
(84, 435, 64, 264, 1274, 0, '2025-08-29 00:42:39', '2025-08-29 00:42:39'),
(85, 435, 64, 265, 1280, 0, '2025-08-29 00:42:39', '2025-08-29 00:42:39'),
(86, 435, 64, 266, 1283, 0, '2025-08-29 00:42:39', '2025-08-29 00:42:39'),
(87, 435, 64, 267, 1288, 0, '2025-08-29 00:42:39', '2025-08-29 00:42:39'),
(88, 435, 64, 268, 1295, 0, '2025-08-29 00:42:39', '2025-08-29 00:42:39'),
(89, 435, 64, 269, 1298, 1, '2025-08-29 00:42:39', '2025-08-29 00:42:39'),
(90, 435, 64, 270, 1303, 0, '2025-08-29 00:42:39', '2025-08-29 00:42:39'),
(91, 435, 64, 271, 1307, 0, '2025-08-29 00:42:39', '2025-08-29 00:42:39'),
(92, 435, 64, 272, 1313, 0, '2025-08-29 00:42:39', '2025-08-29 00:42:39'),
(93, 435, 64, 273, 1317, 1, '2025-08-29 00:42:39', '2025-08-29 00:42:39'),
(94, 435, 64, 274, 1324, 0, '2025-08-29 00:42:39', '2025-08-29 00:42:39'),
(95, 435, 64, 275, 1326, 0, '2025-08-29 00:42:39', '2025-08-29 00:42:39'),
(96, 435, 64, 276, 1333, 0, '2025-08-29 00:42:39', '2025-08-29 00:42:39'),
(97, 435, 64, 277, 1339, 0, '2025-08-29 00:42:39', '2025-08-29 00:42:39'),
(98, 435, 64, 278, 1344, 0, '2025-08-29 00:42:39', '2025-08-29 00:42:39'),
(99, 435, 64, 279, 1347, 1, '2025-08-29 00:42:39', '2025-08-29 00:42:39'),
(100, 435, 64, 280, 1351, 0, '2025-08-29 00:42:39', '2025-08-29 00:42:39'),
(101, 193, 64, 261, 1256, 1, '2025-08-29 00:42:40', '2025-08-29 00:42:40'),
(102, 472, 64, 261, 1256, 1, '2025-08-29 00:42:42', '2025-08-29 00:42:42'),
(103, 472, 64, 262, 1262, 1, '2025-08-29 00:42:42', '2025-08-29 00:42:42'),
(104, 472, 64, 263, 1268, 1, '2025-08-29 00:42:42', '2025-08-29 00:42:42'),
(105, 472, 64, 264, 1271, 1, '2025-08-29 00:42:42', '2025-08-29 00:42:42'),
(106, 472, 64, 265, 1276, 1, '2025-08-29 00:42:42', '2025-08-29 00:42:42'),
(107, 472, 64, 266, 1282, 1, '2025-08-29 00:42:42', '2025-08-29 00:42:42'),
(108, 472, 64, 267, 1286, 1, '2025-08-29 00:42:42', '2025-08-29 00:42:42'),
(109, 472, 64, 268, 1293, 1, '2025-08-29 00:42:42', '2025-08-29 00:42:42'),
(110, 472, 64, 269, 1298, 1, '2025-08-29 00:42:42', '2025-08-29 00:42:42'),
(111, 472, 64, 270, 1302, 0, '2025-08-29 00:42:42', '2025-08-29 00:42:42'),
(112, 472, 64, 271, 1306, 1, '2025-08-29 00:42:42', '2025-08-29 00:42:42'),
(113, 472, 64, 272, 1311, 1, '2025-08-29 00:42:42', '2025-08-29 00:42:42'),
(114, 472, 64, 273, 1317, 1, '2025-08-29 00:42:42', '2025-08-29 00:42:42'),
(115, 472, 64, 274, 1323, 1, '2025-08-29 00:42:42', '2025-08-29 00:42:42'),
(116, 472, 64, 275, 1327, 1, '2025-08-29 00:42:42', '2025-08-29 00:42:42'),
(117, 472, 64, 276, 1332, 1, '2025-08-29 00:42:42', '2025-08-29 00:42:42'),
(118, 472, 64, 277, 1336, 1, '2025-08-29 00:42:42', '2025-08-29 00:42:42'),
(119, 472, 64, 278, 1342, 1, '2025-08-29 00:42:42', '2025-08-29 00:42:42'),
(120, 472, 64, 279, 1348, 0, '2025-08-29 00:42:42', '2025-08-29 00:42:42'),
(121, 472, 64, 280, 1355, 0, '2025-08-29 00:42:42', '2025-08-29 00:42:42'),
(122, 210, 64, 261, 1256, 1, '2025-08-29 00:42:49', '2025-08-29 00:42:49'),
(123, 210, 64, 262, 1261, 0, '2025-08-29 00:42:49', '2025-08-29 00:42:49'),
(124, 210, 64, 263, 1268, 1, '2025-08-29 00:42:49', '2025-08-29 00:42:49'),
(125, 210, 64, 264, 1271, 1, '2025-08-29 00:42:49', '2025-08-29 00:42:49'),
(126, 210, 64, 265, 1277, 0, '2025-08-29 00:42:49', '2025-08-29 00:42:49'),
(127, 210, 64, 266, 1283, 0, '2025-08-29 00:42:49', '2025-08-29 00:42:49'),
(128, 210, 64, 267, 1287, 0, '2025-08-29 00:42:49', '2025-08-29 00:42:49'),
(129, 210, 64, 268, 1291, 0, '2025-08-29 00:42:49', '2025-08-29 00:42:49'),
(130, 210, 64, 269, 1296, 0, '2025-08-29 00:42:49', '2025-08-29 00:42:49'),
(131, 210, 64, 270, 1302, 0, '2025-08-29 00:42:49', '2025-08-29 00:42:49'),
(132, 210, 64, 271, 1308, 0, '2025-08-29 00:42:49', '2025-08-29 00:42:49'),
(133, 210, 64, 272, 1311, 1, '2025-08-29 00:42:49', '2025-08-29 00:42:49'),
(134, 210, 64, 273, 1320, 0, '2025-08-29 00:42:49', '2025-08-29 00:42:49'),
(135, 210, 64, 274, 1324, 0, '2025-08-29 00:42:49', '2025-08-29 00:42:49'),
(136, 210, 64, 275, 1328, 0, '2025-08-29 00:42:49', '2025-08-29 00:42:49'),
(137, 210, 64, 276, 1333, 0, '2025-08-29 00:42:49', '2025-08-29 00:42:49'),
(138, 210, 64, 277, 1337, 0, '2025-08-29 00:42:49', '2025-08-29 00:42:49'),
(139, 210, 64, 278, 1343, 0, '2025-08-29 00:42:49', '2025-08-29 00:42:49'),
(140, 210, 64, 279, 1347, 1, '2025-08-29 00:42:49', '2025-08-29 00:42:49'),
(141, 210, 64, 280, 1352, 0, '2025-08-29 00:42:49', '2025-08-29 00:42:49'),
(142, 199, 64, 261, 1256, 1, '2025-08-29 00:42:52', '2025-08-29 00:42:52'),
(143, 199, 64, 262, 1261, 0, '2025-08-29 00:42:52', '2025-08-29 00:42:52'),
(144, 199, 64, 263, 1266, 0, '2025-08-29 00:42:52', '2025-08-29 00:42:52'),
(145, 199, 64, 264, 1271, 1, '2025-08-29 00:42:52', '2025-08-29 00:42:52'),
(146, 199, 64, 265, 1276, 1, '2025-08-29 00:42:52', '2025-08-29 00:42:52'),
(147, 199, 64, 266, 1281, 0, '2025-08-29 00:42:52', '2025-08-29 00:42:52'),
(148, 199, 64, 267, 1286, 1, '2025-08-29 00:42:52', '2025-08-29 00:42:52'),
(149, 199, 64, 268, 1291, 0, '2025-08-29 00:42:52', '2025-08-29 00:42:52'),
(150, 199, 64, 269, 1296, 0, '2025-08-29 00:42:52', '2025-08-29 00:42:52'),
(151, 199, 64, 270, 1301, 1, '2025-08-29 00:42:52', '2025-08-29 00:42:52'),
(152, 199, 64, 271, 1306, 1, '2025-08-29 00:42:52', '2025-08-29 00:42:52'),
(153, 199, 64, 272, 1311, 1, '2025-08-29 00:42:52', '2025-08-29 00:42:52'),
(154, 199, 64, 273, 1316, 0, '2025-08-29 00:42:52', '2025-08-29 00:42:52'),
(155, 199, 64, 274, 1321, 0, '2025-08-29 00:42:52', '2025-08-29 00:42:52'),
(156, 199, 64, 275, 1326, 0, '2025-08-29 00:42:52', '2025-08-29 00:42:52'),
(157, 199, 64, 276, 1331, 0, '2025-08-29 00:42:52', '2025-08-29 00:42:52'),
(158, 199, 64, 277, 1336, 1, '2025-08-29 00:42:52', '2025-08-29 00:42:52'),
(159, 199, 64, 278, 1341, 0, '2025-08-29 00:42:52', '2025-08-29 00:42:52'),
(160, 199, 64, 279, 1346, 0, '2025-08-29 00:42:52', '2025-08-29 00:42:52'),
(161, 199, 64, 280, 1351, 0, '2025-08-29 00:42:52', '2025-08-29 00:42:52'),
(162, 119, 64, 261, 1260, 0, '2025-08-29 00:42:53', '2025-08-29 00:42:53'),
(163, 119, 64, 262, 1261, 0, '2025-08-29 00:42:53', '2025-08-29 00:42:53'),
(164, 119, 64, 263, 1266, 0, '2025-08-29 00:42:53', '2025-08-29 00:42:53'),
(165, 119, 64, 264, 1271, 1, '2025-08-29 00:42:53', '2025-08-29 00:42:53'),
(166, 119, 64, 265, 1276, 1, '2025-08-29 00:42:53', '2025-08-29 00:42:53'),
(167, 119, 64, 266, 1283, 0, '2025-08-29 00:42:53', '2025-08-29 00:42:53'),
(168, 119, 64, 267, 1288, 0, '2025-08-29 00:42:53', '2025-08-29 00:42:53'),
(169, 119, 64, 268, 1294, 0, '2025-08-29 00:42:53', '2025-08-29 00:42:53'),
(170, 119, 64, 269, 1298, 1, '2025-08-29 00:42:53', '2025-08-29 00:42:53'),
(171, 119, 64, 270, 1301, 1, '2025-08-29 00:42:53', '2025-08-29 00:42:53'),
(172, 119, 64, 271, 1307, 0, '2025-08-29 00:42:53', '2025-08-29 00:42:53'),
(173, 119, 64, 272, 1312, 0, '2025-08-29 00:42:53', '2025-08-29 00:42:53'),
(174, 119, 64, 273, 1318, 0, '2025-08-29 00:42:53', '2025-08-29 00:42:53'),
(175, 119, 64, 274, 1325, 0, '2025-08-29 00:42:53', '2025-08-29 00:42:53'),
(176, 119, 64, 275, 1328, 0, '2025-08-29 00:42:53', '2025-08-29 00:42:53'),
(177, 119, 64, 276, 1332, 1, '2025-08-29 00:42:53', '2025-08-29 00:42:53'),
(178, 119, 64, 277, 1339, 0, '2025-08-29 00:42:53', '2025-08-29 00:42:53'),
(179, 119, 64, 278, 1345, 0, '2025-08-29 00:42:53', '2025-08-29 00:42:53'),
(180, 119, 64, 279, 1348, 0, '2025-08-29 00:42:53', '2025-08-29 00:42:53'),
(181, 119, 64, 280, 1352, 0, '2025-08-29 00:42:53', '2025-08-29 00:42:53'),
(182, 88, 64, 261, 1256, 1, '2025-08-29 00:42:59', '2025-08-29 00:42:59'),
(183, 88, 64, 262, 1262, 1, '2025-08-29 00:42:59', '2025-08-29 00:42:59'),
(184, 88, 64, 263, 1268, 1, '2025-08-29 00:42:59', '2025-08-29 00:42:59'),
(185, 88, 64, 264, 1271, 1, '2025-08-29 00:42:59', '2025-08-29 00:42:59'),
(186, 88, 64, 265, 1276, 1, '2025-08-29 00:42:59', '2025-08-29 00:42:59'),
(187, 88, 64, 266, 1282, 1, '2025-08-29 00:42:59', '2025-08-29 00:42:59'),
(188, 88, 64, 267, 1286, 1, '2025-08-29 00:42:59', '2025-08-29 00:42:59'),
(189, 88, 64, 268, 1293, 1, '2025-08-29 00:42:59', '2025-08-29 00:42:59'),
(190, 88, 64, 269, 1298, 1, '2025-08-29 00:42:59', '2025-08-29 00:42:59'),
(191, 88, 64, 270, 1301, 1, '2025-08-29 00:42:59', '2025-08-29 00:42:59'),
(192, 88, 64, 271, 1306, 1, '2025-08-29 00:42:59', '2025-08-29 00:42:59'),
(193, 88, 64, 272, 1311, 1, '2025-08-29 00:42:59', '2025-08-29 00:42:59'),
(194, 88, 64, 273, 1317, 1, '2025-08-29 00:42:59', '2025-08-29 00:42:59'),
(195, 88, 64, 274, 1323, 1, '2025-08-29 00:42:59', '2025-08-29 00:42:59'),
(196, 88, 64, 275, 1327, 1, '2025-08-29 00:42:59', '2025-08-29 00:42:59'),
(197, 88, 64, 276, 1332, 1, '2025-08-29 00:42:59', '2025-08-29 00:42:59'),
(198, 88, 64, 277, 1336, 1, '2025-08-29 00:42:59', '2025-08-29 00:42:59'),
(199, 88, 64, 278, 1342, 1, '2025-08-29 00:42:59', '2025-08-29 00:42:59'),
(200, 88, 64, 279, 1347, 1, '2025-08-29 00:42:59', '2025-08-29 00:42:59'),
(201, 88, 64, 280, 1353, 1, '2025-08-29 00:42:59', '2025-08-29 00:42:59'),
(202, 202, 64, 261, 1256, 1, '2025-08-29 00:43:00', '2025-08-29 00:43:00'),
(203, 202, 64, 262, 1264, 0, '2025-08-29 00:43:00', '2025-08-29 00:43:00'),
(204, 202, 64, 263, 1266, 0, '2025-08-29 00:43:00', '2025-08-29 00:43:00'),
(205, 202, 64, 264, 1271, 1, '2025-08-29 00:43:00', '2025-08-29 00:43:00'),
(206, 202, 64, 265, 1276, 1, '2025-08-29 00:43:00', '2025-08-29 00:43:00'),
(207, 202, 64, 266, 1282, 1, '2025-08-29 00:43:00', '2025-08-29 00:43:00'),
(208, 202, 64, 267, 1286, 1, '2025-08-29 00:43:00', '2025-08-29 00:43:00'),
(209, 202, 64, 268, 1292, 0, '2025-08-29 00:43:00', '2025-08-29 00:43:00'),
(210, 202, 64, 269, 1297, 0, '2025-08-29 00:43:00', '2025-08-29 00:43:00'),
(211, 202, 64, 270, 1302, 0, '2025-08-29 00:43:00', '2025-08-29 00:43:00'),
(212, 202, 64, 271, 1306, 1, '2025-08-29 00:43:00', '2025-08-29 00:43:00'),
(213, 202, 64, 272, 1311, 1, '2025-08-29 00:43:00', '2025-08-29 00:43:00'),
(214, 202, 64, 273, 1317, 1, '2025-08-29 00:43:00', '2025-08-29 00:43:00'),
(215, 202, 64, 274, 1323, 1, '2025-08-29 00:43:00', '2025-08-29 00:43:00'),
(216, 202, 64, 275, 1327, 1, '2025-08-29 00:43:00', '2025-08-29 00:43:00'),
(217, 202, 64, 276, 1333, 0, '2025-08-29 00:43:00', '2025-08-29 00:43:00'),
(218, 202, 64, 277, 1336, 1, '2025-08-29 00:43:00', '2025-08-29 00:43:00'),
(219, 202, 64, 278, 1341, 0, '2025-08-29 00:43:00', '2025-08-29 00:43:00'),
(220, 202, 64, 279, 1348, 0, '2025-08-29 00:43:00', '2025-08-29 00:43:00'),
(221, 202, 64, 280, 1352, 0, '2025-08-29 00:43:00', '2025-08-29 00:43:00'),
(222, 471, 64, 261, 1258, 0, '2025-08-29 00:43:02', '2025-08-29 00:43:02'),
(223, 471, 64, 262, 1264, 0, '2025-08-29 00:43:02', '2025-08-29 00:43:02'),
(224, 471, 64, 263, 1267, 0, '2025-08-29 00:43:02', '2025-08-29 00:43:02'),
(225, 471, 64, 264, 1275, 0, '2025-08-29 00:43:02', '2025-08-29 00:43:02'),
(226, 471, 64, 265, 1279, 0, '2025-08-29 00:43:02', '2025-08-29 00:43:02'),
(227, 471, 64, 266, 1282, 1, '2025-08-29 00:43:02', '2025-08-29 00:43:02'),
(228, 471, 64, 267, 1290, 0, '2025-08-29 00:43:02', '2025-08-29 00:43:02'),
(229, 471, 64, 268, 1295, 0, '2025-08-29 00:43:02', '2025-08-29 00:43:02'),
(230, 471, 64, 269, 1299, 0, '2025-08-29 00:43:02', '2025-08-29 00:43:02'),
(231, 471, 64, 270, 1303, 0, '2025-08-29 00:43:02', '2025-08-29 00:43:02'),
(232, 471, 64, 271, 1309, 0, '2025-08-29 00:43:02', '2025-08-29 00:43:02'),
(233, 471, 64, 272, 1313, 0, '2025-08-29 00:43:02', '2025-08-29 00:43:02'),
(234, 471, 64, 273, 1317, 1, '2025-08-29 00:43:02', '2025-08-29 00:43:02'),
(235, 471, 64, 274, 1323, 1, '2025-08-29 00:43:02', '2025-08-29 00:43:02'),
(236, 471, 64, 275, 1327, 1, '2025-08-29 00:43:02', '2025-08-29 00:43:02'),
(237, 471, 64, 276, 1331, 0, '2025-08-29 00:43:02', '2025-08-29 00:43:02'),
(238, 471, 64, 277, 1338, 0, '2025-08-29 00:43:02', '2025-08-29 00:43:02'),
(239, 471, 64, 278, 1343, 0, '2025-08-29 00:43:02', '2025-08-29 00:43:02'),
(240, 471, 64, 279, 1347, 1, '2025-08-29 00:43:02', '2025-08-29 00:43:02'),
(241, 471, 64, 280, 1352, 0, '2025-08-29 00:43:02', '2025-08-29 00:43:02'),
(242, 89, 64, 261, 1256, 1, '2025-08-29 00:43:04', '2025-08-29 00:43:04'),
(243, 89, 64, 262, 1262, 1, '2025-08-29 00:43:04', '2025-08-29 00:43:04'),
(244, 89, 64, 263, 1268, 1, '2025-08-29 00:43:04', '2025-08-29 00:43:04'),
(245, 89, 64, 264, 1271, 1, '2025-08-29 00:43:04', '2025-08-29 00:43:04'),
(246, 89, 64, 265, 1276, 1, '2025-08-29 00:43:04', '2025-08-29 00:43:04'),
(247, 89, 64, 266, 1282, 1, '2025-08-29 00:43:04', '2025-08-29 00:43:04'),
(248, 89, 64, 267, 1286, 1, '2025-08-29 00:43:04', '2025-08-29 00:43:04'),
(249, 89, 64, 268, 1293, 1, '2025-08-29 00:43:04', '2025-08-29 00:43:04'),
(250, 89, 64, 269, 1298, 1, '2025-08-29 00:43:04', '2025-08-29 00:43:04'),
(251, 89, 64, 270, 1301, 1, '2025-08-29 00:43:04', '2025-08-29 00:43:04'),
(252, 89, 64, 271, 1306, 1, '2025-08-29 00:43:04', '2025-08-29 00:43:04'),
(253, 89, 64, 272, 1311, 1, '2025-08-29 00:43:04', '2025-08-29 00:43:04'),
(254, 89, 64, 273, 1317, 1, '2025-08-29 00:43:04', '2025-08-29 00:43:04'),
(255, 89, 64, 274, 1323, 1, '2025-08-29 00:43:04', '2025-08-29 00:43:04'),
(256, 89, 64, 275, 1327, 1, '2025-08-29 00:43:04', '2025-08-29 00:43:04'),
(257, 89, 64, 276, 1332, 1, '2025-08-29 00:43:04', '2025-08-29 00:43:04'),
(258, 89, 64, 277, 1336, 1, '2025-08-29 00:43:04', '2025-08-29 00:43:04'),
(259, 89, 64, 278, 1342, 1, '2025-08-29 00:43:04', '2025-08-29 00:43:04'),
(260, 89, 64, 279, 1347, 1, '2025-08-29 00:43:04', '2025-08-29 00:43:04'),
(261, 89, 64, 280, 1353, 1, '2025-08-29 00:43:04', '2025-08-29 00:43:04'),
(262, 216, 64, 261, 1256, 1, '2025-08-29 00:43:09', '2025-08-29 00:43:09'),
(263, 216, 64, 262, 1262, 1, '2025-08-29 00:43:09', '2025-08-29 00:43:09'),
(264, 216, 64, 263, 1268, 1, '2025-08-29 00:43:09', '2025-08-29 00:43:09'),
(265, 216, 64, 264, 1271, 1, '2025-08-29 00:43:09', '2025-08-29 00:43:09'),
(266, 216, 64, 265, 1276, 1, '2025-08-29 00:43:09', '2025-08-29 00:43:09'),
(267, 216, 64, 266, 1282, 1, '2025-08-29 00:43:09', '2025-08-29 00:43:09'),
(268, 216, 64, 267, 1286, 1, '2025-08-29 00:43:09', '2025-08-29 00:43:09'),
(269, 216, 64, 268, 1292, 0, '2025-08-29 00:43:09', '2025-08-29 00:43:09'),
(270, 216, 64, 269, 1298, 1, '2025-08-29 00:43:09', '2025-08-29 00:43:09'),
(271, 216, 64, 270, 1302, 0, '2025-08-29 00:43:09', '2025-08-29 00:43:09'),
(272, 216, 64, 271, 1306, 1, '2025-08-29 00:43:09', '2025-08-29 00:43:09'),
(273, 216, 64, 272, 1311, 1, '2025-08-29 00:43:09', '2025-08-29 00:43:09'),
(274, 216, 64, 273, 1317, 1, '2025-08-29 00:43:09', '2025-08-29 00:43:09'),
(275, 216, 64, 274, 1322, 0, '2025-08-29 00:43:09', '2025-08-29 00:43:09'),
(276, 216, 64, 275, 1327, 1, '2025-08-29 00:43:09', '2025-08-29 00:43:09'),
(277, 216, 64, 276, 1333, 0, '2025-08-29 00:43:09', '2025-08-29 00:43:09'),
(278, 216, 64, 277, 1336, 1, '2025-08-29 00:43:09', '2025-08-29 00:43:09'),
(279, 216, 64, 278, 1342, 1, '2025-08-29 00:43:09', '2025-08-29 00:43:09'),
(280, 216, 64, 279, 1348, 0, '2025-08-29 00:43:09', '2025-08-29 00:43:09'),
(281, 216, 64, 280, 1353, 1, '2025-08-29 00:43:09', '2025-08-29 00:43:09'),
(282, 230, 64, 261, 1256, 1, '2025-08-29 00:43:14', '2025-08-29 00:43:14'),
(283, 230, 64, 262, 1262, 1, '2025-08-29 00:43:14', '2025-08-29 00:43:14'),
(284, 230, 64, 263, 1268, 1, '2025-08-29 00:43:14', '2025-08-29 00:43:14'),
(285, 230, 64, 264, 1274, 0, '2025-08-29 00:43:14', '2025-08-29 00:43:14'),
(286, 230, 64, 265, 1280, 0, '2025-08-29 00:43:14', '2025-08-29 00:43:14'),
(287, 230, 64, 266, 1285, 0, '2025-08-29 00:43:14', '2025-08-29 00:43:14'),
(288, 230, 64, 267, 1289, 0, '2025-08-29 00:43:14', '2025-08-29 00:43:14'),
(289, 230, 64, 268, 1293, 1, '2025-08-29 00:43:14', '2025-08-29 00:43:14'),
(290, 230, 64, 269, 1297, 0, '2025-08-29 00:43:14', '2025-08-29 00:43:14'),
(291, 230, 64, 270, 1301, 1, '2025-08-29 00:43:14', '2025-08-29 00:43:14'),
(292, 230, 64, 271, 1306, 1, '2025-08-29 00:43:14', '2025-08-29 00:43:14'),
(293, 230, 64, 272, 1312, 0, '2025-08-29 00:43:14', '2025-08-29 00:43:14'),
(294, 230, 64, 273, 1318, 0, '2025-08-29 00:43:14', '2025-08-29 00:43:14'),
(295, 230, 64, 274, 1324, 0, '2025-08-29 00:43:14', '2025-08-29 00:43:14'),
(296, 230, 64, 275, 1330, 0, '2025-08-29 00:43:14', '2025-08-29 00:43:14'),
(297, 230, 64, 276, 1331, 0, '2025-08-29 00:43:14', '2025-08-29 00:43:14'),
(298, 230, 64, 277, 1337, 0, '2025-08-29 00:43:14', '2025-08-29 00:43:14'),
(299, 230, 64, 278, 1343, 0, '2025-08-29 00:43:14', '2025-08-29 00:43:14'),
(300, 230, 64, 279, 1349, 0, '2025-08-29 00:43:14', '2025-08-29 00:43:14'),
(301, 230, 64, 280, 1355, 0, '2025-08-29 00:43:14', '2025-08-29 00:43:14'),
(302, 172, 64, 261, 1259, 0, '2025-08-29 00:43:18', '2025-08-29 00:43:18'),
(303, 172, 64, 262, 1261, 0, '2025-08-29 00:43:18', '2025-08-29 00:43:18'),
(304, 172, 64, 263, 1266, 0, '2025-08-29 00:43:18', '2025-08-29 00:43:18'),
(305, 172, 64, 264, 1273, 0, '2025-08-29 00:43:18', '2025-08-29 00:43:18'),
(306, 172, 64, 265, 1276, 1, '2025-08-29 00:43:18', '2025-08-29 00:43:18'),
(307, 172, 64, 266, 1281, 0, '2025-08-29 00:43:18', '2025-08-29 00:43:18'),
(308, 172, 64, 267, 1286, 1, '2025-08-29 00:43:18', '2025-08-29 00:43:18'),
(309, 172, 64, 268, 1293, 1, '2025-08-29 00:43:18', '2025-08-29 00:43:18'),
(310, 172, 64, 269, 1298, 1, '2025-08-29 00:43:18', '2025-08-29 00:43:18'),
(311, 172, 64, 270, 1302, 0, '2025-08-29 00:43:18', '2025-08-29 00:43:18'),
(312, 172, 64, 271, 1307, 0, '2025-08-29 00:43:18', '2025-08-29 00:43:18'),
(313, 172, 64, 272, 1312, 0, '2025-08-29 00:43:18', '2025-08-29 00:43:18'),
(314, 172, 64, 273, 1319, 0, '2025-08-29 00:43:18', '2025-08-29 00:43:18'),
(315, 172, 64, 274, 1325, 0, '2025-08-29 00:43:18', '2025-08-29 00:43:18'),
(316, 172, 64, 275, 1328, 0, '2025-08-29 00:43:18', '2025-08-29 00:43:18'),
(317, 172, 64, 276, 1331, 0, '2025-08-29 00:43:18', '2025-08-29 00:43:18'),
(318, 172, 64, 277, 1339, 0, '2025-08-29 00:43:18', '2025-08-29 00:43:18'),
(319, 172, 64, 278, 1343, 0, '2025-08-29 00:43:18', '2025-08-29 00:43:18'),
(320, 172, 64, 279, 1347, 1, '2025-08-29 00:43:18', '2025-08-29 00:43:18'),
(321, 172, 64, 280, 1353, 1, '2025-08-29 00:43:18', '2025-08-29 00:43:18'),
(322, 90, 64, 261, 1256, 1, '2025-08-29 00:43:22', '2025-08-29 00:43:22'),
(323, 90, 64, 262, 1261, 0, '2025-08-29 00:43:22', '2025-08-29 00:43:22'),
(324, 90, 64, 263, 1268, 1, '2025-08-29 00:43:22', '2025-08-29 00:43:22'),
(325, 90, 64, 264, 1275, 0, '2025-08-29 00:43:22', '2025-08-29 00:43:22'),
(326, 90, 64, 265, 1276, 1, '2025-08-29 00:43:22', '2025-08-29 00:43:22'),
(327, 90, 64, 266, 1282, 1, '2025-08-29 00:43:22', '2025-08-29 00:43:22'),
(328, 90, 64, 267, 1286, 1, '2025-08-29 00:43:22', '2025-08-29 00:43:22'),
(329, 90, 64, 268, 1293, 1, '2025-08-29 00:43:22', '2025-08-29 00:43:22'),
(330, 90, 64, 269, 1298, 1, '2025-08-29 00:43:22', '2025-08-29 00:43:22'),
(331, 90, 64, 270, 1301, 1, '2025-08-29 00:43:22', '2025-08-29 00:43:22'),
(332, 90, 64, 271, 1306, 1, '2025-08-29 00:43:22', '2025-08-29 00:43:22'),
(333, 90, 64, 272, 1311, 1, '2025-08-29 00:43:22', '2025-08-29 00:43:22'),
(334, 90, 64, 273, 1316, 0, '2025-08-29 00:43:22', '2025-08-29 00:43:22'),
(335, 90, 64, 274, 1323, 1, '2025-08-29 00:43:22', '2025-08-29 00:43:22'),
(336, 90, 64, 275, 1329, 0, '2025-08-29 00:43:22', '2025-08-29 00:43:22'),
(337, 90, 64, 276, 1331, 0, '2025-08-29 00:43:22', '2025-08-29 00:43:22'),
(338, 90, 64, 277, 1336, 1, '2025-08-29 00:43:22', '2025-08-29 00:43:22'),
(339, 90, 64, 278, 1343, 0, '2025-08-29 00:43:22', '2025-08-29 00:43:22'),
(340, 90, 64, 279, 1347, 1, '2025-08-29 00:43:22', '2025-08-29 00:43:22'),
(341, 90, 64, 280, 1351, 0, '2025-08-29 00:43:22', '2025-08-29 00:43:22'),
(342, 79, 64, 261, 1256, 1, '2025-08-29 00:43:26', '2025-08-29 00:44:18'),
(343, 79, 64, 262, 1262, 1, '2025-08-29 00:43:26', '2025-08-29 00:44:18'),
(344, 79, 64, 263, 1268, 1, '2025-08-29 00:43:26', '2025-08-29 00:44:18'),
(345, 79, 64, 264, 1271, 1, '2025-08-29 00:43:26', '2025-08-29 00:44:18'),
(346, 79, 64, 265, 1276, 1, '2025-08-29 00:43:26', '2025-08-29 00:44:18'),
(347, 79, 64, 266, 1282, 1, '2025-08-29 00:43:26', '2025-08-29 00:44:18'),
(348, 79, 64, 267, 1286, 1, '2025-08-29 00:43:26', '2025-08-29 00:44:18'),
(349, 79, 64, 268, 1291, 0, '2025-08-29 00:43:26', '2025-08-29 00:44:18'),
(350, 79, 64, 269, 1298, 1, '2025-08-29 00:43:26', '2025-08-29 00:44:18'),
(351, 79, 64, 270, 1302, 0, '2025-08-29 00:43:26', '2025-08-29 00:44:18'),
(352, 79, 64, 271, 1306, 1, '2025-08-29 00:43:26', '2025-08-29 00:44:18'),
(353, 79, 64, 272, 1311, 1, '2025-08-29 00:43:26', '2025-08-29 00:44:18'),
(354, 79, 64, 273, 1317, 1, '2025-08-29 00:43:26', '2025-08-29 00:44:18'),
(355, 79, 64, 274, 1323, 1, '2025-08-29 00:43:26', '2025-08-29 00:44:18'),
(356, 79, 64, 275, 1327, 1, '2025-08-29 00:43:26', '2025-08-29 00:44:18'),
(357, 79, 64, 276, 1332, 1, '2025-08-29 00:43:26', '2025-08-29 00:44:18'),
(358, 79, 64, 277, 1336, 1, '2025-08-29 00:43:26', '2025-08-29 00:44:18'),
(359, 79, 64, 278, 1342, 1, '2025-08-29 00:43:26', '2025-08-29 00:44:18'),
(360, 79, 64, 279, 1348, 0, '2025-08-29 00:43:26', '2025-08-29 00:44:18'),
(361, 79, 64, 280, 1353, 1, '2025-08-29 00:43:26', '2025-08-29 00:44:18'),
(362, 98, 64, 261, 1256, 1, '2025-08-29 00:43:28', '2025-08-29 00:43:28'),
(363, 98, 64, 262, 1261, 0, '2025-08-29 00:43:28', '2025-08-29 00:43:28'),
(364, 98, 64, 263, 1266, 0, '2025-08-29 00:43:28', '2025-08-29 00:43:28'),
(365, 98, 64, 264, 1271, 1, '2025-08-29 00:43:28', '2025-08-29 00:43:28'),
(366, 98, 64, 265, 1280, 0, '2025-08-29 00:43:28', '2025-08-29 00:43:28'),
(367, 98, 64, 266, 1283, 0, '2025-08-29 00:43:28', '2025-08-29 00:43:28'),
(368, 98, 64, 267, 1290, 0, '2025-08-29 00:43:28', '2025-08-29 00:43:28'),
(369, 98, 64, 268, 1292, 0, '2025-08-29 00:43:28', '2025-08-29 00:43:28'),
(370, 98, 64, 269, 1296, 0, '2025-08-29 00:43:28', '2025-08-29 00:43:28'),
(371, 98, 64, 270, 1304, 0, '2025-08-29 00:43:28', '2025-08-29 00:43:28'),
(372, 98, 64, 271, 1308, 0, '2025-08-29 00:43:28', '2025-08-29 00:43:28'),
(373, 98, 64, 272, 1313, 0, '2025-08-29 00:43:28', '2025-08-29 00:43:28'),
(374, 98, 64, 273, 1318, 0, '2025-08-29 00:43:28', '2025-08-29 00:43:28'),
(375, 98, 64, 274, 1325, 0, '2025-08-29 00:43:28', '2025-08-29 00:43:28'),
(376, 98, 64, 275, 1326, 0, '2025-08-29 00:43:28', '2025-08-29 00:43:28'),
(377, 98, 64, 276, 1331, 0, '2025-08-29 00:43:28', '2025-08-29 00:43:28'),
(378, 98, 64, 277, 1337, 0, '2025-08-29 00:43:28', '2025-08-29 00:43:28'),
(379, 98, 64, 278, 1342, 1, '2025-08-29 00:43:28', '2025-08-29 00:43:28'),
(380, 98, 64, 279, 1349, 0, '2025-08-29 00:43:28', '2025-08-29 00:43:28'),
(381, 98, 64, 280, 1354, 0, '2025-08-29 00:43:28', '2025-08-29 00:43:28'),
(382, 205, 64, 261, 1256, 1, '2025-08-29 00:43:29', '2025-08-29 00:43:29'),
(383, 205, 64, 262, 1262, 1, '2025-08-29 00:43:29', '2025-08-29 00:43:29'),
(384, 205, 64, 263, 1268, 1, '2025-08-29 00:43:29', '2025-08-29 00:43:29'),
(385, 205, 64, 264, 1271, 1, '2025-08-29 00:43:29', '2025-08-29 00:43:29'),
(386, 205, 64, 265, 1276, 1, '2025-08-29 00:43:29', '2025-08-29 00:43:29'),
(387, 205, 64, 266, 1282, 1, '2025-08-29 00:43:29', '2025-08-29 00:43:29'),
(388, 205, 64, 267, 1286, 1, '2025-08-29 00:43:29', '2025-08-29 00:43:29'),
(389, 205, 64, 268, 1291, 0, '2025-08-29 00:43:29', '2025-08-29 00:43:29'),
(390, 205, 64, 269, 1297, 0, '2025-08-29 00:43:29', '2025-08-29 00:43:29'),
(391, 205, 64, 270, 1301, 1, '2025-08-29 00:43:29', '2025-08-29 00:43:29'),
(392, 205, 64, 271, 1306, 1, '2025-08-29 00:43:29', '2025-08-29 00:43:29'),
(393, 205, 64, 272, 1311, 1, '2025-08-29 00:43:29', '2025-08-29 00:43:29'),
(394, 205, 64, 273, 1318, 0, '2025-08-29 00:43:29', '2025-08-29 00:43:29'),
(395, 205, 64, 274, 1323, 1, '2025-08-29 00:43:29', '2025-08-29 00:43:29'),
(396, 205, 64, 275, 1327, 1, '2025-08-29 00:43:29', '2025-08-29 00:43:29'),
(397, 205, 64, 276, 1332, 1, '2025-08-29 00:43:29', '2025-08-29 00:43:29'),
(398, 205, 64, 277, 1338, 0, '2025-08-29 00:43:29', '2025-08-29 00:43:29'),
(399, 205, 64, 278, 1341, 0, '2025-08-29 00:43:29', '2025-08-29 00:43:29'),
(400, 205, 64, 279, 1348, 0, '2025-08-29 00:43:29', '2025-08-29 00:43:29'),
(401, 205, 64, 280, 1352, 0, '2025-08-29 00:43:29', '2025-08-29 00:43:29'),
(402, 487, 64, 261, 1256, 1, '2025-08-29 00:43:36', '2025-08-29 00:43:36'),
(403, 487, 64, 262, 1262, 1, '2025-08-29 00:43:36', '2025-08-29 00:43:36'),
(404, 487, 64, 263, 1269, 0, '2025-08-29 00:43:36', '2025-08-29 00:43:36'),
(405, 487, 64, 264, 1273, 0, '2025-08-29 00:43:36', '2025-08-29 00:43:36'),
(406, 487, 64, 265, 1279, 0, '2025-08-29 00:43:36', '2025-08-29 00:43:36'),
(407, 487, 64, 266, 1282, 1, '2025-08-29 00:43:36', '2025-08-29 00:43:36'),
(408, 487, 64, 267, 1286, 1, '2025-08-29 00:43:36', '2025-08-29 00:43:36'),
(409, 487, 64, 268, 1292, 0, '2025-08-29 00:43:36', '2025-08-29 00:43:36'),
(410, 487, 64, 269, 1298, 1, '2025-08-29 00:43:36', '2025-08-29 00:43:36'),
(411, 487, 64, 270, 1304, 0, '2025-08-29 00:43:36', '2025-08-29 00:43:36'),
(412, 487, 64, 271, 1310, 0, '2025-08-29 00:43:36', '2025-08-29 00:43:36'),
(413, 487, 64, 272, 1311, 1, '2025-08-29 00:43:36', '2025-08-29 00:43:36'),
(414, 487, 64, 273, 1317, 1, '2025-08-29 00:43:36', '2025-08-29 00:43:36'),
(415, 487, 64, 274, 1323, 1, '2025-08-29 00:43:36', '2025-08-29 00:43:36'),
(416, 487, 64, 275, 1329, 0, '2025-08-29 00:43:36', '2025-08-29 00:43:36'),
(417, 487, 64, 276, 1335, 0, '2025-08-29 00:43:36', '2025-08-29 00:43:36'),
(418, 487, 64, 277, 1336, 1, '2025-08-29 00:43:36', '2025-08-29 00:43:36'),
(419, 487, 64, 278, 1342, 1, '2025-08-29 00:43:36', '2025-08-29 00:43:36'),
(420, 487, 64, 279, 1348, 0, '2025-08-29 00:43:36', '2025-08-29 00:43:36'),
(421, 487, 64, 280, 1354, 0, '2025-08-29 00:43:36', '2025-08-29 00:43:36'),
(422, 103, 64, 261, 1256, 1, '2025-08-29 00:43:39', '2025-08-29 00:43:39'),
(423, 103, 64, 262, 1261, 0, '2025-08-29 00:43:39', '2025-08-29 00:43:39'),
(424, 103, 64, 263, 1269, 0, '2025-08-29 00:43:39', '2025-08-29 00:43:39'),
(425, 103, 64, 264, 1272, 0, '2025-08-29 00:43:39', '2025-08-29 00:43:39'),
(426, 103, 64, 265, 1278, 0, '2025-08-29 00:43:39', '2025-08-29 00:43:39'),
(427, 103, 64, 266, 1281, 0, '2025-08-29 00:43:39', '2025-08-29 00:43:39'),
(428, 103, 64, 267, 1286, 1, '2025-08-29 00:43:39', '2025-08-29 00:43:39'),
(429, 103, 64, 268, 1293, 1, '2025-08-29 00:43:39', '2025-08-29 00:43:39'),
(430, 103, 64, 269, 1296, 0, '2025-08-29 00:43:39', '2025-08-29 00:43:39'),
(431, 103, 64, 270, 1303, 0, '2025-08-29 00:43:39', '2025-08-29 00:43:39'),
(432, 103, 64, 271, 1309, 0, '2025-08-29 00:43:39', '2025-08-29 00:43:39'),
(433, 103, 64, 272, 1311, 1, '2025-08-29 00:43:39', '2025-08-29 00:43:39'),
(434, 103, 64, 273, 1318, 0, '2025-08-29 00:43:39', '2025-08-29 00:43:39'),
(435, 103, 64, 274, 1323, 1, '2025-08-29 00:43:39', '2025-08-29 00:43:39'),
(436, 103, 64, 275, 1326, 0, '2025-08-29 00:43:39', '2025-08-29 00:43:39'),
(437, 103, 64, 276, 1333, 0, '2025-08-29 00:43:39', '2025-08-29 00:43:39'),
(438, 103, 64, 277, 1337, 0, '2025-08-29 00:43:39', '2025-08-29 00:43:39'),
(439, 103, 64, 278, 1341, 0, '2025-08-29 00:43:39', '2025-08-29 00:43:39'),
(440, 103, 64, 279, 1350, 0, '2025-08-29 00:43:39', '2025-08-29 00:43:39'),
(441, 103, 64, 280, 1351, 0, '2025-08-29 00:43:39', '2025-08-29 00:43:39'),
(442, 99, 64, 261, 1256, 1, '2025-08-29 00:43:44', '2025-08-29 00:43:44'),
(443, 99, 64, 262, 1262, 1, '2025-08-29 00:43:44', '2025-08-29 00:43:44'),
(444, 99, 64, 263, 1268, 1, '2025-08-29 00:43:44', '2025-08-29 00:43:44'),
(445, 99, 64, 264, 1271, 1, '2025-08-29 00:43:44', '2025-08-29 00:43:44'),
(446, 99, 64, 265, 1276, 1, '2025-08-29 00:43:44', '2025-08-29 00:43:44'),
(447, 99, 64, 266, 1282, 1, '2025-08-29 00:43:44', '2025-08-29 00:43:44'),
(448, 99, 64, 267, 1286, 1, '2025-08-29 00:43:44', '2025-08-29 00:43:44'),
(449, 99, 64, 268, 1293, 1, '2025-08-29 00:43:44', '2025-08-29 00:43:44'),
(450, 99, 64, 269, 1298, 1, '2025-08-29 00:43:44', '2025-08-29 00:43:44'),
(451, 99, 64, 270, 1301, 1, '2025-08-29 00:43:44', '2025-08-29 00:43:44'),
(452, 99, 64, 271, 1306, 1, '2025-08-29 00:43:44', '2025-08-29 00:43:44'),
(453, 99, 64, 272, 1311, 1, '2025-08-29 00:43:44', '2025-08-29 00:43:44'),
(454, 99, 64, 273, 1317, 1, '2025-08-29 00:43:44', '2025-08-29 00:43:44'),
(455, 99, 64, 274, 1323, 1, '2025-08-29 00:43:44', '2025-08-29 00:43:44'),
(456, 99, 64, 275, 1327, 1, '2025-08-29 00:43:44', '2025-08-29 00:43:44'),
(457, 99, 64, 276, 1332, 1, '2025-08-29 00:43:44', '2025-08-29 00:43:44'),
(458, 99, 64, 277, 1336, 1, '2025-08-29 00:43:44', '2025-08-29 00:43:44'),
(459, 99, 64, 278, 1342, 1, '2025-08-29 00:43:44', '2025-08-29 00:43:44'),
(460, 99, 64, 279, 1347, 1, '2025-08-29 00:43:44', '2025-08-29 00:43:44'),
(461, 99, 64, 280, 1353, 1, '2025-08-29 00:43:44', '2025-08-29 00:43:44'),
(462, 113, 64, 261, 1256, 1, '2025-08-29 00:43:48', '2025-08-29 00:43:48'),
(463, 113, 64, 262, 1263, 0, '2025-08-29 00:43:48', '2025-08-29 00:43:48'),
(464, 113, 64, 263, 1268, 1, '2025-08-29 00:43:48', '2025-08-29 00:43:48'),
(465, 113, 64, 264, 1275, 0, '2025-08-29 00:43:48', '2025-08-29 00:43:48'),
(466, 113, 64, 265, 1277, 0, '2025-08-29 00:43:48', '2025-08-29 00:43:48'),
(467, 113, 64, 266, 1282, 1, '2025-08-29 00:43:48', '2025-08-29 00:43:48'),
(468, 113, 64, 267, 1287, 0, '2025-08-29 00:43:48', '2025-08-29 00:43:48'),
(469, 113, 64, 268, 1291, 0, '2025-08-29 00:43:48', '2025-08-29 00:43:48'),
(470, 113, 64, 269, 1298, 1, '2025-08-29 00:43:48', '2025-08-29 00:43:48'),
(471, 113, 64, 270, 1302, 0, '2025-08-29 00:43:48', '2025-08-29 00:43:48'),
(472, 113, 64, 271, 1310, 0, '2025-08-29 00:43:48', '2025-08-29 00:43:48'),
(473, 113, 64, 272, 1313, 0, '2025-08-29 00:43:48', '2025-08-29 00:43:48'),
(474, 113, 64, 273, 1318, 0, '2025-08-29 00:43:48', '2025-08-29 00:43:48'),
(475, 113, 64, 274, 1323, 1, '2025-08-29 00:43:48', '2025-08-29 00:43:48'),
(476, 113, 64, 275, 1327, 1, '2025-08-29 00:43:48', '2025-08-29 00:43:48'),
(477, 113, 64, 276, 1333, 0, '2025-08-29 00:43:48', '2025-08-29 00:43:48'),
(478, 113, 64, 277, 1340, 0, '2025-08-29 00:43:48', '2025-08-29 00:43:48'),
(479, 113, 64, 278, 1342, 1, '2025-08-29 00:43:48', '2025-08-29 00:43:48'),
(480, 113, 64, 279, 1347, 1, '2025-08-29 00:43:48', '2025-08-29 00:43:48'),
(481, 113, 64, 280, 1355, 0, '2025-08-29 00:43:48', '2025-08-29 00:43:48'),
(482, 276, 64, 261, 1256, 1, '2025-08-29 00:43:51', '2025-08-29 00:43:51'),
(483, 276, 64, 262, 1262, 1, '2025-08-29 00:43:51', '2025-08-29 00:43:51'),
(484, 276, 64, 263, 1268, 1, '2025-08-29 00:43:51', '2025-08-29 00:43:51'),
(485, 276, 64, 264, 1271, 1, '2025-08-29 00:43:51', '2025-08-29 00:43:51'),
(486, 276, 64, 265, 1276, 1, '2025-08-29 00:43:51', '2025-08-29 00:43:51'),
(487, 276, 64, 266, 1282, 1, '2025-08-29 00:43:51', '2025-08-29 00:43:51'),
(488, 276, 64, 267, 1286, 1, '2025-08-29 00:43:51', '2025-08-29 00:43:51'),
(489, 276, 64, 268, 1293, 1, '2025-08-29 00:43:51', '2025-08-29 00:43:51'),
(490, 276, 64, 269, 1298, 1, '2025-08-29 00:43:51', '2025-08-29 00:43:51'),
(491, 276, 64, 270, 1302, 0, '2025-08-29 00:43:51', '2025-08-29 00:43:51'),
(492, 276, 64, 271, 1306, 1, '2025-08-29 00:43:51', '2025-08-29 00:43:51'),
(493, 276, 64, 272, 1311, 1, '2025-08-29 00:43:51', '2025-08-29 00:43:51'),
(494, 276, 64, 273, 1317, 1, '2025-08-29 00:43:51', '2025-08-29 00:43:51'),
(495, 276, 64, 274, 1323, 1, '2025-08-29 00:43:51', '2025-08-29 00:43:51'),
(496, 276, 64, 275, 1327, 1, '2025-08-29 00:43:51', '2025-08-29 00:43:51'),
(497, 276, 64, 276, 1332, 1, '2025-08-29 00:43:51', '2025-08-29 00:43:51'),
(498, 276, 64, 277, 1336, 1, '2025-08-29 00:43:51', '2025-08-29 00:43:51'),
(499, 276, 64, 278, 1342, 1, '2025-08-29 00:43:51', '2025-08-29 00:43:51'),
(500, 276, 64, 279, 1348, 0, '2025-08-29 00:43:51', '2025-08-29 00:43:51'),
(501, 276, 64, 280, 1352, 0, '2025-08-29 00:43:51', '2025-08-29 00:43:51'),
(502, 91, 64, 261, 1256, 1, '2025-08-29 00:43:55', '2025-08-29 00:43:55'),
(503, 91, 64, 262, 1261, 0, '2025-08-29 00:43:55', '2025-08-29 00:43:55'),
(504, 91, 64, 263, 1267, 0, '2025-08-29 00:43:55', '2025-08-29 00:43:55'),
(505, 91, 64, 264, 1272, 0, '2025-08-29 00:43:55', '2025-08-29 00:43:55'),
(506, 91, 64, 265, 1277, 0, '2025-08-29 00:43:55', '2025-08-29 00:43:55'),
(507, 91, 64, 266, 1281, 0, '2025-08-29 00:43:55', '2025-08-29 00:43:55'),
(508, 91, 64, 267, 1287, 0, '2025-08-29 00:43:55', '2025-08-29 00:43:55'),
(509, 91, 64, 268, 1291, 0, '2025-08-29 00:43:55', '2025-08-29 00:43:55'),
(510, 91, 64, 269, 1298, 1, '2025-08-29 00:43:55', '2025-08-29 00:43:55'),
(511, 91, 64, 270, 1303, 0, '2025-08-29 00:43:55', '2025-08-29 00:43:55'),
(512, 91, 64, 271, 1306, 1, '2025-08-29 00:43:55', '2025-08-29 00:43:55'),
(513, 91, 64, 272, 1313, 0, '2025-08-29 00:43:55', '2025-08-29 00:43:55'),
(514, 91, 64, 273, 1316, 0, '2025-08-29 00:43:55', '2025-08-29 00:43:55'),
(515, 91, 64, 274, 1321, 0, '2025-08-29 00:43:55', '2025-08-29 00:43:55'),
(516, 91, 64, 275, 1326, 0, '2025-08-29 00:43:55', '2025-08-29 00:43:55'),
(517, 91, 64, 276, 1333, 0, '2025-08-29 00:43:55', '2025-08-29 00:43:55'),
(518, 91, 64, 277, 1338, 0, '2025-08-29 00:43:55', '2025-08-29 00:43:55'),
(519, 91, 64, 278, 1343, 0, '2025-08-29 00:43:55', '2025-08-29 00:43:55'),
(520, 91, 64, 279, 1348, 0, '2025-08-29 00:43:55', '2025-08-29 00:43:55'),
(521, 91, 64, 280, 1352, 0, '2025-08-29 00:43:55', '2025-08-29 00:43:55'),
(522, 263, 64, 261, 1256, 1, '2025-08-29 00:44:02', '2025-08-29 00:44:02'),
(523, 263, 64, 262, 1262, 1, '2025-08-29 00:44:02', '2025-08-29 00:44:02'),
(524, 263, 64, 263, 1268, 1, '2025-08-29 00:44:02', '2025-08-29 00:44:02'),
(525, 251, 64, 261, 1256, 1, '2025-08-29 00:44:05', '2025-08-29 00:44:05'),
(526, 251, 64, 262, 1262, 1, '2025-08-29 00:44:05', '2025-08-29 00:44:05'),
(527, 251, 64, 263, 1268, 1, '2025-08-29 00:44:05', '2025-08-29 00:44:05'),
(528, 251, 64, 264, 1271, 1, '2025-08-29 00:44:05', '2025-08-29 00:44:05'),
(529, 251, 64, 265, 1278, 0, '2025-08-29 00:44:05', '2025-08-29 00:44:05'),
(530, 251, 64, 266, 1282, 1, '2025-08-29 00:44:05', '2025-08-29 00:44:05'),
(531, 251, 64, 267, 1286, 1, '2025-08-29 00:44:05', '2025-08-29 00:44:05'),
(532, 251, 64, 268, 1293, 1, '2025-08-29 00:44:05', '2025-08-29 00:44:05'),
(533, 251, 64, 269, 1299, 0, '2025-08-29 00:44:05', '2025-08-29 00:44:05'),
(534, 251, 64, 270, 1301, 1, '2025-08-29 00:44:05', '2025-08-29 00:44:05'),
(535, 251, 64, 271, 1309, 0, '2025-08-29 00:44:05', '2025-08-29 00:44:05'),
(536, 251, 64, 272, 1311, 1, '2025-08-29 00:44:05', '2025-08-29 00:44:05'),
(537, 251, 64, 273, 1317, 1, '2025-08-29 00:44:05', '2025-08-29 00:44:05'),
(538, 251, 64, 274, 1323, 1, '2025-08-29 00:44:05', '2025-08-29 00:44:05'),
(539, 251, 64, 275, 1327, 1, '2025-08-29 00:44:05', '2025-08-29 00:44:05'),
(540, 251, 64, 276, 1332, 1, '2025-08-29 00:44:05', '2025-08-29 00:44:05'),
(541, 251, 64, 277, 1339, 0, '2025-08-29 00:44:05', '2025-08-29 00:44:05'),
(542, 251, 64, 278, 1341, 0, '2025-08-29 00:44:05', '2025-08-29 00:44:05'),
(543, 251, 64, 279, 1348, 0, '2025-08-29 00:44:05', '2025-08-29 00:44:05'),
(544, 251, 64, 280, 1352, 0, '2025-08-29 00:44:05', '2025-08-29 00:44:05'),
(545, 243, 64, 261, 1256, 1, '2025-08-29 00:44:06', '2025-08-29 00:44:06'),
(546, 243, 64, 262, 1262, 1, '2025-08-29 00:44:06', '2025-08-29 00:44:06'),
(547, 243, 64, 263, 1268, 1, '2025-08-29 00:44:06', '2025-08-29 00:44:06'),
(548, 243, 64, 264, 1271, 1, '2025-08-29 00:44:06', '2025-08-29 00:44:06'),
(549, 243, 64, 265, 1276, 1, '2025-08-29 00:44:06', '2025-08-29 00:44:06'),
(550, 243, 64, 266, 1282, 1, '2025-08-29 00:44:06', '2025-08-29 00:44:06'),
(551, 243, 64, 267, 1286, 1, '2025-08-29 00:44:06', '2025-08-29 00:44:06'),
(552, 243, 64, 268, 1293, 1, '2025-08-29 00:44:06', '2025-08-29 00:44:06'),
(553, 243, 64, 269, 1298, 1, '2025-08-29 00:44:06', '2025-08-29 00:44:06'),
(554, 243, 64, 270, 1301, 1, '2025-08-29 00:44:06', '2025-08-29 00:44:06'),
(555, 243, 64, 271, 1306, 1, '2025-08-29 00:44:06', '2025-08-29 00:44:06'),
(556, 243, 64, 272, 1311, 1, '2025-08-29 00:44:06', '2025-08-29 00:44:06'),
(557, 243, 64, 273, 1317, 1, '2025-08-29 00:44:06', '2025-08-29 00:44:06'),
(558, 243, 64, 274, 1323, 1, '2025-08-29 00:44:06', '2025-08-29 00:44:06'),
(559, 243, 64, 275, 1326, 0, '2025-08-29 00:44:06', '2025-08-29 00:44:06'),
(560, 243, 64, 276, 1332, 1, '2025-08-29 00:44:06', '2025-08-29 00:44:06'),
(561, 243, 64, 277, 1336, 1, '2025-08-29 00:44:06', '2025-08-29 00:44:06'),
(562, 243, 64, 278, 1342, 1, '2025-08-29 00:44:06', '2025-08-29 00:44:06'),
(563, 243, 64, 279, 1346, 0, '2025-08-29 00:44:06', '2025-08-29 00:44:06'),
(564, 243, 64, 280, 1353, 1, '2025-08-29 00:44:06', '2025-08-29 00:44:06'),
(565, 502, 64, 261, 1258, 0, '2025-08-29 00:44:08', '2025-08-29 00:44:08'),
(566, 502, 64, 262, 1264, 0, '2025-08-29 00:44:08', '2025-08-29 00:44:08'),
(567, 502, 64, 263, 1268, 1, '2025-08-29 00:44:08', '2025-08-29 00:44:08'),
(568, 502, 64, 264, 1275, 0, '2025-08-29 00:44:08', '2025-08-29 00:44:08'),
(569, 502, 64, 265, 1277, 0, '2025-08-29 00:44:08', '2025-08-29 00:44:08'),
(570, 502, 64, 266, 1282, 1, '2025-08-29 00:44:08', '2025-08-29 00:44:08'),
(571, 502, 64, 267, 1288, 0, '2025-08-29 00:44:08', '2025-08-29 00:44:08'),
(572, 502, 64, 268, 1295, 0, '2025-08-29 00:44:08', '2025-08-29 00:44:08'),
(573, 502, 64, 269, 1296, 0, '2025-08-29 00:44:08', '2025-08-29 00:44:08'),
(574, 502, 64, 270, 1301, 1, '2025-08-29 00:44:08', '2025-08-29 00:44:08'),
(575, 502, 64, 271, 1307, 0, '2025-08-29 00:44:08', '2025-08-29 00:44:08'),
(576, 502, 64, 272, 1312, 0, '2025-08-29 00:44:08', '2025-08-29 00:44:08'),
(577, 502, 64, 273, 1317, 1, '2025-08-29 00:44:08', '2025-08-29 00:44:08'),
(578, 502, 64, 274, 1321, 0, '2025-08-29 00:44:08', '2025-08-29 00:44:08'),
(579, 502, 64, 275, 1328, 0, '2025-08-29 00:44:08', '2025-08-29 00:44:08'),
(580, 502, 64, 276, 1333, 0, '2025-08-29 00:44:08', '2025-08-29 00:44:08'),
(581, 502, 64, 277, 1340, 0, '2025-08-29 00:44:08', '2025-08-29 00:44:08'),
(582, 502, 64, 278, 1343, 0, '2025-08-29 00:44:08', '2025-08-29 00:44:08'),
(583, 502, 64, 279, 1346, 0, '2025-08-29 00:44:08', '2025-08-29 00:44:08'),
(584, 502, 64, 280, 1351, 0, '2025-08-29 00:44:08', '2025-08-29 00:44:08'),
(585, 456, 64, 261, 1260, 0, '2025-08-29 00:44:10', '2025-08-29 00:44:10'),
(586, 456, 64, 262, 1263, 0, '2025-08-29 00:44:10', '2025-08-29 00:44:10'),
(587, 456, 64, 263, 1270, 0, '2025-08-29 00:44:10', '2025-08-29 00:44:10'),
(588, 456, 64, 264, 1272, 0, '2025-08-29 00:44:10', '2025-08-29 00:44:10'),
(589, 456, 64, 265, 1278, 0, '2025-08-29 00:44:10', '2025-08-29 00:44:10'),
(590, 456, 64, 266, 1281, 0, '2025-08-29 00:44:10', '2025-08-29 00:44:10'),
(591, 456, 64, 267, 1288, 0, '2025-08-29 00:44:10', '2025-08-29 00:44:10'),
(592, 456, 64, 268, 1291, 0, '2025-08-29 00:44:10', '2025-08-29 00:44:10'),
(593, 456, 64, 269, 1297, 0, '2025-08-29 00:44:10', '2025-08-29 00:44:10'),
(594, 456, 64, 270, 1303, 0, '2025-08-29 00:44:10', '2025-08-29 00:44:10'),
(595, 456, 64, 271, 1307, 0, '2025-08-29 00:44:10', '2025-08-29 00:44:10'),
(596, 456, 64, 272, 1312, 0, '2025-08-29 00:44:10', '2025-08-29 00:44:10'),
(597, 456, 64, 273, 1319, 0, '2025-08-29 00:44:10', '2025-08-29 00:44:10'),
(598, 456, 64, 274, 1321, 0, '2025-08-29 00:44:10', '2025-08-29 00:44:10'),
(599, 456, 64, 275, 1328, 0, '2025-08-29 00:44:10', '2025-08-29 00:44:10'),
(600, 456, 64, 276, 1331, 0, '2025-08-29 00:44:10', '2025-08-29 00:44:10'),
(601, 456, 64, 277, 1340, 0, '2025-08-29 00:44:10', '2025-08-29 00:44:10'),
(602, 456, 64, 278, 1343, 0, '2025-08-29 00:44:10', '2025-08-29 00:44:10'),
(603, 456, 64, 279, 1346, 0, '2025-08-29 00:44:10', '2025-08-29 00:44:10'),
(604, 456, 64, 280, 1353, 1, '2025-08-29 00:44:10', '2025-08-29 00:44:10'),
(605, 468, 64, 261, 1256, 1, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(606, 468, 64, 262, 1261, 0, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(607, 468, 64, 263, 1268, 1, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(608, 468, 64, 264, 1271, 1, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(609, 468, 64, 265, 1276, 1, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(610, 468, 64, 266, 1285, 0, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(611, 468, 64, 267, 1287, 0, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(612, 468, 64, 268, 1295, 0, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(613, 468, 64, 269, 1300, 0, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(614, 468, 64, 270, 1302, 0, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(615, 468, 64, 271, 1309, 0, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(616, 468, 64, 272, 1313, 0, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(617, 468, 64, 273, 1316, 0, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(618, 468, 64, 274, 1322, 0, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(619, 468, 64, 275, 1328, 0, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(620, 468, 64, 276, 1334, 0, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(621, 468, 64, 277, 1339, 0, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(622, 468, 64, 278, 1344, 0, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(623, 468, 64, 279, 1349, 0, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(624, 468, 64, 280, 1351, 0, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(625, 209, 64, 261, 1256, 1, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(626, 209, 64, 262, 1262, 1, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(627, 209, 64, 263, 1268, 1, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(628, 209, 64, 264, 1272, 0, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(629, 209, 64, 265, 1277, 0, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(630, 209, 64, 266, 1282, 1, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(631, 209, 64, 267, 1286, 1, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(632, 209, 64, 268, 1292, 0, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(633, 209, 64, 269, 1298, 1, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(634, 209, 64, 270, 1301, 1, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(635, 209, 64, 271, 1306, 1, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(636, 209, 64, 272, 1311, 1, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(637, 209, 64, 273, 1317, 1, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(638, 209, 64, 274, 1322, 0, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(639, 209, 64, 275, 1327, 1, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(640, 209, 64, 276, 1332, 1, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(641, 209, 64, 277, 1338, 0, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(642, 209, 64, 278, 1342, 1, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(643, 209, 64, 279, 1348, 0, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(644, 209, 64, 280, 1353, 1, '2025-08-29 00:44:11', '2025-08-29 00:44:11'),
(645, 167, 64, 261, 1257, 0, '2025-08-29 00:44:12', '2025-08-29 00:44:12'),
(646, 167, 64, 262, 1262, 1, '2025-08-29 00:44:12', '2025-08-29 00:44:12'),
(647, 167, 64, 263, 1267, 0, '2025-08-29 00:44:12', '2025-08-29 00:44:12'),
(648, 167, 64, 264, 1273, 0, '2025-08-29 00:44:12', '2025-08-29 00:44:12'),
(649, 167, 64, 265, 1278, 0, '2025-08-29 00:44:12', '2025-08-29 00:44:12'),
(650, 167, 64, 266, 1283, 0, '2025-08-29 00:44:12', '2025-08-29 00:44:12'),
(651, 167, 64, 267, 1288, 0, '2025-08-29 00:44:12', '2025-08-29 00:44:12'),
(652, 167, 64, 268, 1292, 0, '2025-08-29 00:44:12', '2025-08-29 00:44:12'),
(653, 167, 64, 269, 1297, 0, '2025-08-29 00:44:12', '2025-08-29 00:44:12'),
(654, 167, 64, 270, 1302, 0, '2025-08-29 00:44:12', '2025-08-29 00:44:12'),
(655, 167, 64, 271, 1308, 0, '2025-08-29 00:44:12', '2025-08-29 00:44:12'),
(656, 167, 64, 272, 1313, 0, '2025-08-29 00:44:12', '2025-08-29 00:44:12'),
(657, 167, 64, 273, 1318, 0, '2025-08-29 00:44:12', '2025-08-29 00:44:12'),
(658, 167, 64, 274, 1323, 1, '2025-08-29 00:44:12', '2025-08-29 00:44:12'),
(659, 167, 64, 275, 1327, 1, '2025-08-29 00:44:12', '2025-08-29 00:44:12'),
(660, 167, 64, 276, 1331, 0, '2025-08-29 00:44:12', '2025-08-29 00:44:12'),
(661, 167, 64, 277, 1337, 0, '2025-08-29 00:44:12', '2025-08-29 00:44:12'),
(662, 167, 64, 278, 1345, 0, '2025-08-29 00:44:12', '2025-08-29 00:44:12'),
(663, 167, 64, 279, 1349, 0, '2025-08-29 00:44:12', '2025-08-29 00:44:12'),
(664, 167, 64, 280, 1351, 0, '2025-08-29 00:44:12', '2025-08-29 00:44:12'),
(665, 509, 64, 261, 1256, 1, '2025-08-29 00:44:16', '2025-08-29 00:44:16'),
(666, 509, 64, 262, 1261, 0, '2025-08-29 00:44:16', '2025-08-29 00:44:16'),
(667, 509, 64, 263, 1269, 0, '2025-08-29 00:44:16', '2025-08-29 00:44:16'),
(668, 509, 64, 264, 1271, 1, '2025-08-29 00:44:16', '2025-08-29 00:44:16'),
(669, 509, 64, 265, 1276, 1, '2025-08-29 00:44:16', '2025-08-29 00:44:16'),
(670, 509, 64, 266, 1283, 0, '2025-08-29 00:44:16', '2025-08-29 00:44:16'),
(671, 509, 64, 267, 1289, 0, '2025-08-29 00:44:16', '2025-08-29 00:44:16'),
(672, 509, 64, 268, 1293, 1, '2025-08-29 00:44:16', '2025-08-29 00:44:16'),
(673, 509, 64, 269, 1299, 0, '2025-08-29 00:44:16', '2025-08-29 00:44:16'),
(674, 509, 64, 270, 1301, 1, '2025-08-29 00:44:16', '2025-08-29 00:44:16'),
(675, 509, 64, 271, 1310, 0, '2025-08-29 00:44:16', '2025-08-29 00:44:16'),
(676, 509, 64, 272, 1313, 0, '2025-08-29 00:44:16', '2025-08-29 00:44:16'),
(677, 509, 64, 273, 1319, 0, '2025-08-29 00:44:16', '2025-08-29 00:44:16');
INSERT INTO `student_answers` (`id`, `student_id`, `exam_id`, `question_id`, `option_id`, `is_correct`, `created_at`, `updated_at`) VALUES
(678, 509, 64, 274, 1321, 0, '2025-08-29 00:44:16', '2025-08-29 00:44:16'),
(679, 509, 64, 275, 1328, 0, '2025-08-29 00:44:16', '2025-08-29 00:44:16'),
(680, 509, 64, 276, 1332, 1, '2025-08-29 00:44:16', '2025-08-29 00:44:16'),
(681, 509, 64, 277, 1339, 0, '2025-08-29 00:44:16', '2025-08-29 00:44:16'),
(682, 509, 64, 278, 1343, 0, '2025-08-29 00:44:16', '2025-08-29 00:44:16'),
(683, 509, 64, 279, 1347, 1, '2025-08-29 00:44:16', '2025-08-29 00:44:16'),
(684, 509, 64, 280, 1353, 1, '2025-08-29 00:44:16', '2025-08-29 00:44:16'),
(685, 474, 64, 261, 1260, 0, '2025-08-29 00:44:19', '2025-08-29 00:44:19'),
(686, 474, 64, 262, 1262, 1, '2025-08-29 00:44:19', '2025-08-29 00:44:19'),
(687, 474, 64, 263, 1268, 1, '2025-08-29 00:44:19', '2025-08-29 00:44:19'),
(688, 474, 64, 264, 1275, 0, '2025-08-29 00:44:19', '2025-08-29 00:44:19'),
(689, 474, 64, 265, 1277, 0, '2025-08-29 00:44:19', '2025-08-29 00:44:19'),
(690, 233, 64, 261, 1256, 1, '2025-08-29 00:44:21', '2025-08-29 00:44:21'),
(691, 233, 64, 262, 1262, 1, '2025-08-29 00:44:21', '2025-08-29 00:44:21'),
(692, 233, 64, 263, 1268, 1, '2025-08-29 00:44:21', '2025-08-29 00:44:21'),
(693, 233, 64, 264, 1271, 1, '2025-08-29 00:44:21', '2025-08-29 00:44:21'),
(694, 233, 64, 265, 1279, 0, '2025-08-29 00:44:21', '2025-08-29 00:44:21'),
(695, 233, 64, 266, 1285, 0, '2025-08-29 00:44:21', '2025-08-29 00:44:21'),
(696, 233, 64, 267, 1287, 0, '2025-08-29 00:44:21', '2025-08-29 00:44:21'),
(697, 233, 64, 268, 1294, 0, '2025-08-29 00:44:21', '2025-08-29 00:44:21'),
(698, 233, 64, 269, 1297, 0, '2025-08-29 00:44:21', '2025-08-29 00:44:21'),
(699, 233, 64, 270, 1301, 1, '2025-08-29 00:44:21', '2025-08-29 00:44:21'),
(700, 233, 64, 271, 1307, 0, '2025-08-29 00:44:21', '2025-08-29 00:44:21'),
(701, 233, 64, 272, 1311, 1, '2025-08-29 00:44:21', '2025-08-29 00:44:21'),
(702, 233, 64, 273, 1317, 1, '2025-08-29 00:44:21', '2025-08-29 00:44:21'),
(703, 233, 64, 274, 1324, 0, '2025-08-29 00:44:21', '2025-08-29 00:44:21'),
(704, 233, 64, 275, 1326, 0, '2025-08-29 00:44:21', '2025-08-29 00:44:21'),
(705, 233, 64, 276, 1332, 1, '2025-08-29 00:44:21', '2025-08-29 00:44:21'),
(706, 233, 64, 277, 1338, 0, '2025-08-29 00:44:21', '2025-08-29 00:44:21'),
(707, 233, 64, 278, 1343, 0, '2025-08-29 00:44:21', '2025-08-29 00:44:21'),
(708, 233, 64, 279, 1349, 0, '2025-08-29 00:44:21', '2025-08-29 00:44:21'),
(709, 233, 64, 280, 1353, 1, '2025-08-29 00:44:21', '2025-08-29 00:44:21'),
(710, 293, 64, 261, 1256, 1, '2025-08-29 00:44:23', '2025-08-29 00:44:23'),
(711, 293, 64, 262, 1262, 1, '2025-08-29 00:44:23', '2025-08-29 00:44:23'),
(712, 293, 64, 263, 1266, 0, '2025-08-29 00:44:23', '2025-08-29 00:44:23'),
(713, 293, 64, 264, 1271, 1, '2025-08-29 00:44:23', '2025-08-29 00:44:23'),
(714, 293, 64, 265, 1277, 0, '2025-08-29 00:44:23', '2025-08-29 00:44:23'),
(715, 293, 64, 266, 1282, 1, '2025-08-29 00:44:23', '2025-08-29 00:44:23'),
(716, 293, 64, 267, 1286, 1, '2025-08-29 00:44:23', '2025-08-29 00:44:23'),
(717, 293, 64, 268, 1291, 0, '2025-08-29 00:44:23', '2025-08-29 00:44:23'),
(718, 293, 64, 269, 1298, 1, '2025-08-29 00:44:23', '2025-08-29 00:44:23'),
(719, 293, 64, 270, 1301, 1, '2025-08-29 00:44:23', '2025-08-29 00:44:23'),
(720, 293, 64, 271, 1309, 0, '2025-08-29 00:44:23', '2025-08-29 00:44:23'),
(721, 293, 64, 272, 1314, 0, '2025-08-29 00:44:23', '2025-08-29 00:44:23'),
(722, 293, 64, 273, 1319, 0, '2025-08-29 00:44:23', '2025-08-29 00:44:23'),
(723, 293, 64, 274, 1322, 0, '2025-08-29 00:44:23', '2025-08-29 00:44:23'),
(724, 293, 64, 275, 1327, 1, '2025-08-29 00:44:23', '2025-08-29 00:44:23'),
(725, 293, 64, 276, 1332, 1, '2025-08-29 00:44:23', '2025-08-29 00:44:23'),
(726, 293, 64, 277, 1336, 1, '2025-08-29 00:44:23', '2025-08-29 00:44:23'),
(727, 293, 64, 278, 1341, 0, '2025-08-29 00:44:23', '2025-08-29 00:44:23'),
(728, 293, 64, 279, 1347, 1, '2025-08-29 00:44:23', '2025-08-29 00:44:23'),
(729, 293, 64, 280, 1353, 1, '2025-08-29 00:44:23', '2025-08-29 00:44:23'),
(730, 218, 64, 261, 1256, 1, '2025-08-29 00:44:24', '2025-08-29 00:44:24'),
(731, 218, 64, 262, 1262, 1, '2025-08-29 00:44:24', '2025-08-29 00:44:24'),
(732, 218, 64, 263, 1268, 1, '2025-08-29 00:44:24', '2025-08-29 00:44:24'),
(733, 218, 64, 264, 1275, 0, '2025-08-29 00:44:24', '2025-08-29 00:44:24'),
(734, 218, 64, 265, 1277, 0, '2025-08-29 00:44:24', '2025-08-29 00:44:24'),
(735, 218, 64, 266, 1282, 1, '2025-08-29 00:44:24', '2025-08-29 00:44:24'),
(736, 218, 64, 267, 1286, 1, '2025-08-29 00:44:24', '2025-08-29 00:44:24'),
(737, 218, 64, 268, 1293, 1, '2025-08-29 00:44:24', '2025-08-29 00:44:24'),
(738, 218, 64, 269, 1298, 1, '2025-08-29 00:44:24', '2025-08-29 00:44:24'),
(739, 218, 64, 270, 1302, 0, '2025-08-29 00:44:24', '2025-08-29 00:44:24'),
(740, 218, 64, 271, 1306, 1, '2025-08-29 00:44:24', '2025-08-29 00:44:24'),
(741, 218, 64, 272, 1311, 1, '2025-08-29 00:44:24', '2025-08-29 00:44:24'),
(742, 218, 64, 273, 1316, 0, '2025-08-29 00:44:24', '2025-08-29 00:44:24'),
(743, 218, 64, 274, 1323, 1, '2025-08-29 00:44:24', '2025-08-29 00:44:24'),
(744, 218, 64, 275, 1326, 0, '2025-08-29 00:44:24', '2025-08-29 00:44:24'),
(745, 218, 64, 276, 1332, 1, '2025-08-29 00:44:24', '2025-08-29 00:44:24'),
(746, 218, 64, 277, 1336, 1, '2025-08-29 00:44:24', '2025-08-29 00:44:24'),
(747, 218, 64, 278, 1342, 1, '2025-08-29 00:44:24', '2025-08-29 00:44:24'),
(748, 218, 64, 279, 1347, 1, '2025-08-29 00:44:24', '2025-08-29 00:44:24'),
(749, 218, 64, 280, 1353, 1, '2025-08-29 00:44:24', '2025-08-29 00:44:24'),
(750, 206, 64, 261, 1256, 1, '2025-08-29 00:44:27', '2025-08-29 00:44:27'),
(751, 206, 64, 262, 1262, 1, '2025-08-29 00:44:27', '2025-08-29 00:44:27'),
(752, 206, 64, 263, 1266, 0, '2025-08-29 00:44:27', '2025-08-29 00:44:27'),
(753, 206, 64, 264, 1271, 1, '2025-08-29 00:44:27', '2025-08-29 00:44:27'),
(754, 206, 64, 265, 1276, 1, '2025-08-29 00:44:27', '2025-08-29 00:44:27'),
(755, 206, 64, 266, 1281, 0, '2025-08-29 00:44:27', '2025-08-29 00:44:27'),
(756, 206, 64, 267, 1286, 1, '2025-08-29 00:44:27', '2025-08-29 00:44:27'),
(757, 206, 64, 268, 1293, 1, '2025-08-29 00:44:27', '2025-08-29 00:44:27'),
(758, 206, 64, 269, 1299, 0, '2025-08-29 00:44:27', '2025-08-29 00:44:27'),
(759, 206, 64, 270, 1301, 1, '2025-08-29 00:44:27', '2025-08-29 00:44:27'),
(760, 206, 64, 271, 1309, 0, '2025-08-29 00:44:27', '2025-08-29 00:44:27'),
(761, 206, 64, 272, 1311, 1, '2025-08-29 00:44:27', '2025-08-29 00:44:27'),
(762, 206, 64, 273, 1317, 1, '2025-08-29 00:44:27', '2025-08-29 00:44:27'),
(763, 206, 64, 274, 1323, 1, '2025-08-29 00:44:27', '2025-08-29 00:44:27'),
(764, 206, 64, 275, 1327, 1, '2025-08-29 00:44:27', '2025-08-29 00:44:27'),
(765, 206, 64, 276, 1332, 1, '2025-08-29 00:44:27', '2025-08-29 00:44:27'),
(766, 206, 64, 277, 1336, 1, '2025-08-29 00:44:27', '2025-08-29 00:44:27'),
(767, 206, 64, 278, 1342, 1, '2025-08-29 00:44:27', '2025-08-29 00:44:27'),
(768, 206, 64, 279, 1347, 1, '2025-08-29 00:44:27', '2025-08-29 00:44:27'),
(769, 206, 64, 280, 1353, 1, '2025-08-29 00:44:27', '2025-08-29 00:44:27'),
(770, 85, 64, 261, 1256, 1, '2025-08-29 00:44:30', '2025-08-29 00:44:30'),
(771, 85, 64, 262, 1262, 1, '2025-08-29 00:44:30', '2025-08-29 00:44:30'),
(772, 85, 64, 263, 1266, 0, '2025-08-29 00:44:30', '2025-08-29 00:44:30'),
(773, 85, 64, 264, 1271, 1, '2025-08-29 00:44:30', '2025-08-29 00:44:30'),
(774, 85, 64, 265, 1276, 1, '2025-08-29 00:44:30', '2025-08-29 00:44:30'),
(775, 85, 64, 266, 1282, 1, '2025-08-29 00:44:30', '2025-08-29 00:44:30'),
(776, 85, 64, 267, 1286, 1, '2025-08-29 00:44:30', '2025-08-29 00:44:30'),
(777, 85, 64, 268, 1291, 0, '2025-08-29 00:44:30', '2025-08-29 00:44:30'),
(778, 85, 64, 269, 1298, 1, '2025-08-29 00:44:30', '2025-08-29 00:44:30'),
(779, 85, 64, 270, 1301, 1, '2025-08-29 00:44:30', '2025-08-29 00:44:30'),
(780, 85, 64, 271, 1306, 1, '2025-08-29 00:44:30', '2025-08-29 00:44:30'),
(781, 85, 64, 272, 1311, 1, '2025-08-29 00:44:30', '2025-08-29 00:44:30'),
(782, 85, 64, 273, 1316, 0, '2025-08-29 00:44:30', '2025-08-29 00:44:30'),
(783, 85, 64, 274, 1322, 0, '2025-08-29 00:44:30', '2025-08-29 00:44:30'),
(784, 85, 64, 275, 1326, 0, '2025-08-29 00:44:30', '2025-08-29 00:44:30'),
(785, 85, 64, 276, 1332, 1, '2025-08-29 00:44:30', '2025-08-29 00:44:30'),
(786, 85, 64, 277, 1336, 1, '2025-08-29 00:44:30', '2025-08-29 00:44:30'),
(787, 85, 64, 278, 1342, 1, '2025-08-29 00:44:30', '2025-08-29 00:44:30'),
(788, 85, 64, 279, 1346, 0, '2025-08-29 00:44:30', '2025-08-29 00:44:30'),
(789, 85, 64, 280, 1352, 0, '2025-08-29 00:44:30', '2025-08-29 00:44:30'),
(790, 220, 64, 261, 1256, 1, '2025-08-29 00:44:31', '2025-08-29 00:44:31'),
(791, 220, 64, 262, 1262, 1, '2025-08-29 00:44:31', '2025-08-29 00:44:31'),
(792, 220, 64, 263, 1268, 1, '2025-08-29 00:44:31', '2025-08-29 00:44:31'),
(793, 220, 64, 264, 1272, 0, '2025-08-29 00:44:31', '2025-08-29 00:44:31'),
(794, 220, 64, 265, 1277, 0, '2025-08-29 00:44:31', '2025-08-29 00:44:31'),
(795, 220, 64, 266, 1282, 1, '2025-08-29 00:44:31', '2025-08-29 00:44:31'),
(796, 220, 64, 267, 1286, 1, '2025-08-29 00:44:31', '2025-08-29 00:44:31'),
(797, 220, 64, 268, 1293, 1, '2025-08-29 00:44:31', '2025-08-29 00:44:31'),
(798, 220, 64, 269, 1298, 1, '2025-08-29 00:44:31', '2025-08-29 00:44:31'),
(799, 220, 64, 270, 1301, 1, '2025-08-29 00:44:31', '2025-08-29 00:44:31'),
(800, 220, 64, 271, 1306, 1, '2025-08-29 00:44:31', '2025-08-29 00:44:31'),
(801, 220, 64, 272, 1311, 1, '2025-08-29 00:44:31', '2025-08-29 00:44:31'),
(802, 220, 64, 273, 1317, 1, '2025-08-29 00:44:31', '2025-08-29 00:44:31'),
(803, 220, 64, 274, 1323, 1, '2025-08-29 00:44:31', '2025-08-29 00:44:31'),
(804, 220, 64, 275, 1327, 1, '2025-08-29 00:44:31', '2025-08-29 00:44:31'),
(805, 220, 64, 276, 1332, 1, '2025-08-29 00:44:31', '2025-08-29 00:44:31'),
(806, 220, 64, 277, 1336, 1, '2025-08-29 00:44:31', '2025-08-29 00:44:31'),
(807, 220, 64, 278, 1342, 1, '2025-08-29 00:44:31', '2025-08-29 00:44:31'),
(808, 220, 64, 279, 1347, 1, '2025-08-29 00:44:31', '2025-08-29 00:44:31'),
(809, 220, 64, 280, 1353, 1, '2025-08-29 00:44:31', '2025-08-29 00:44:31'),
(810, 264, 64, 261, 1256, 1, '2025-08-29 00:44:35', '2025-08-29 00:44:35'),
(811, 264, 64, 262, 1262, 1, '2025-08-29 00:44:35', '2025-08-29 00:44:35'),
(812, 264, 64, 263, 1268, 1, '2025-08-29 00:44:35', '2025-08-29 00:44:35'),
(813, 264, 64, 264, 1271, 1, '2025-08-29 00:44:35', '2025-08-29 00:44:35'),
(814, 264, 64, 265, 1276, 1, '2025-08-29 00:44:35', '2025-08-29 00:44:35'),
(815, 264, 64, 266, 1282, 1, '2025-08-29 00:44:35', '2025-08-29 00:44:35'),
(816, 264, 64, 267, 1286, 1, '2025-08-29 00:44:35', '2025-08-29 00:44:35'),
(817, 264, 64, 268, 1293, 1, '2025-08-29 00:44:35', '2025-08-29 00:44:35'),
(818, 264, 64, 269, 1298, 1, '2025-08-29 00:44:35', '2025-08-29 00:44:35'),
(819, 264, 64, 270, 1302, 0, '2025-08-29 00:44:35', '2025-08-29 00:44:35'),
(820, 264, 64, 271, 1306, 1, '2025-08-29 00:44:35', '2025-08-29 00:44:35'),
(821, 264, 64, 272, 1311, 1, '2025-08-29 00:44:35', '2025-08-29 00:44:35'),
(822, 264, 64, 273, 1317, 1, '2025-08-29 00:44:35', '2025-08-29 00:44:35'),
(823, 264, 64, 274, 1323, 1, '2025-08-29 00:44:35', '2025-08-29 00:44:35'),
(824, 264, 64, 275, 1327, 1, '2025-08-29 00:44:35', '2025-08-29 00:44:35'),
(825, 264, 64, 276, 1332, 1, '2025-08-29 00:44:35', '2025-08-29 00:44:35'),
(826, 264, 64, 277, 1336, 1, '2025-08-29 00:44:35', '2025-08-29 00:44:35'),
(827, 264, 64, 278, 1342, 1, '2025-08-29 00:44:35', '2025-08-29 00:44:35'),
(828, 264, 64, 279, 1348, 0, '2025-08-29 00:44:35', '2025-08-29 00:44:35'),
(829, 264, 64, 280, 1352, 0, '2025-08-29 00:44:35', '2025-08-29 00:44:35'),
(830, 219, 64, 261, 1256, 1, '2025-08-29 00:44:37', '2025-08-29 00:44:37'),
(831, 219, 64, 262, 1262, 1, '2025-08-29 00:44:37', '2025-08-29 00:44:37'),
(832, 219, 64, 263, 1266, 0, '2025-08-29 00:44:37', '2025-08-29 00:44:37'),
(833, 219, 64, 264, 1274, 0, '2025-08-29 00:44:37', '2025-08-29 00:44:37'),
(834, 219, 64, 265, 1279, 0, '2025-08-29 00:44:37', '2025-08-29 00:44:37'),
(835, 219, 64, 266, 1282, 1, '2025-08-29 00:44:37', '2025-08-29 00:44:37'),
(836, 219, 64, 267, 1286, 1, '2025-08-29 00:44:37', '2025-08-29 00:44:37'),
(837, 219, 64, 268, 1291, 0, '2025-08-29 00:44:37', '2025-08-29 00:44:37'),
(838, 219, 64, 269, 1298, 1, '2025-08-29 00:44:37', '2025-08-29 00:44:37'),
(839, 219, 64, 270, 1302, 0, '2025-08-29 00:44:37', '2025-08-29 00:44:37'),
(840, 219, 64, 271, 1306, 1, '2025-08-29 00:44:37', '2025-08-29 00:44:37'),
(841, 219, 64, 272, 1311, 1, '2025-08-29 00:44:37', '2025-08-29 00:44:37'),
(842, 219, 64, 273, 1317, 1, '2025-08-29 00:44:37', '2025-08-29 00:44:37'),
(843, 219, 64, 274, 1322, 0, '2025-08-29 00:44:37', '2025-08-29 00:44:37'),
(844, 219, 64, 275, 1326, 0, '2025-08-29 00:44:37', '2025-08-29 00:44:37'),
(845, 219, 64, 276, 1333, 0, '2025-08-29 00:44:37', '2025-08-29 00:44:37'),
(846, 219, 64, 277, 1338, 0, '2025-08-29 00:44:37', '2025-08-29 00:44:37'),
(847, 219, 64, 278, 1342, 1, '2025-08-29 00:44:37', '2025-08-29 00:44:37'),
(848, 219, 64, 279, 1349, 0, '2025-08-29 00:44:37', '2025-08-29 00:44:37'),
(849, 219, 64, 280, 1354, 0, '2025-08-29 00:44:37', '2025-08-29 00:44:37'),
(850, 287, 64, 261, 1256, 1, '2025-08-29 00:44:41', '2025-08-29 00:44:41'),
(851, 287, 64, 262, 1262, 1, '2025-08-29 00:44:41', '2025-08-29 00:44:41'),
(852, 287, 64, 263, 1270, 0, '2025-08-29 00:44:41', '2025-08-29 00:44:41'),
(853, 287, 64, 264, 1271, 1, '2025-08-29 00:44:41', '2025-08-29 00:44:41'),
(854, 287, 64, 265, 1277, 0, '2025-08-29 00:44:41', '2025-08-29 00:44:41'),
(855, 287, 64, 266, 1282, 1, '2025-08-29 00:44:41', '2025-08-29 00:44:41'),
(856, 287, 64, 267, 1286, 1, '2025-08-29 00:44:41', '2025-08-29 00:44:41'),
(857, 287, 64, 268, 1292, 0, '2025-08-29 00:44:41', '2025-08-29 00:44:41'),
(858, 287, 64, 269, 1297, 0, '2025-08-29 00:44:41', '2025-08-29 00:44:41'),
(859, 287, 64, 270, 1301, 1, '2025-08-29 00:44:41', '2025-08-29 00:44:41'),
(860, 287, 64, 271, 1306, 1, '2025-08-29 00:44:41', '2025-08-29 00:44:41'),
(861, 287, 64, 272, 1311, 1, '2025-08-29 00:44:41', '2025-08-29 00:44:41'),
(862, 287, 64, 273, 1320, 0, '2025-08-29 00:44:41', '2025-08-29 00:44:41'),
(863, 287, 64, 274, 1322, 0, '2025-08-29 00:44:41', '2025-08-29 00:44:41'),
(864, 287, 64, 275, 1327, 1, '2025-08-29 00:44:41', '2025-08-29 00:44:41'),
(865, 287, 64, 276, 1335, 0, '2025-08-29 00:44:41', '2025-08-29 00:44:41'),
(866, 287, 64, 277, 1336, 1, '2025-08-29 00:44:41', '2025-08-29 00:44:41'),
(867, 287, 64, 278, 1341, 0, '2025-08-29 00:44:41', '2025-08-29 00:44:41'),
(868, 287, 64, 279, 1348, 0, '2025-08-29 00:44:41', '2025-08-29 00:44:41'),
(869, 287, 64, 280, 1352, 0, '2025-08-29 00:44:41', '2025-08-29 00:44:41'),
(870, 270, 64, 261, 1256, 1, '2025-08-29 00:44:45', '2025-08-29 00:44:45'),
(871, 270, 64, 262, 1262, 1, '2025-08-29 00:44:45', '2025-08-29 00:44:45'),
(872, 270, 64, 263, 1268, 1, '2025-08-29 00:44:45', '2025-08-29 00:44:45'),
(873, 270, 64, 264, 1275, 0, '2025-08-29 00:44:45', '2025-08-29 00:44:45'),
(874, 270, 64, 265, 1278, 0, '2025-08-29 00:44:45', '2025-08-29 00:44:45'),
(875, 270, 64, 266, 1282, 1, '2025-08-29 00:44:45', '2025-08-29 00:44:45'),
(876, 270, 64, 267, 1286, 1, '2025-08-29 00:44:45', '2025-08-29 00:44:45'),
(877, 270, 64, 268, 1293, 1, '2025-08-29 00:44:45', '2025-08-29 00:44:45'),
(878, 270, 64, 269, 1298, 1, '2025-08-29 00:44:45', '2025-08-29 00:44:45'),
(879, 270, 64, 270, 1301, 1, '2025-08-29 00:44:45', '2025-08-29 00:44:45'),
(880, 270, 64, 271, 1306, 1, '2025-08-29 00:44:45', '2025-08-29 00:44:45'),
(881, 270, 64, 272, 1313, 0, '2025-08-29 00:44:45', '2025-08-29 00:44:45'),
(882, 270, 64, 273, 1318, 0, '2025-08-29 00:44:45', '2025-08-29 00:44:45'),
(883, 270, 64, 274, 1322, 0, '2025-08-29 00:44:45', '2025-08-29 00:44:45'),
(884, 270, 64, 275, 1327, 1, '2025-08-29 00:44:45', '2025-08-29 00:44:45'),
(885, 270, 64, 276, 1335, 0, '2025-08-29 00:44:45', '2025-08-29 00:44:45'),
(886, 270, 64, 277, 1338, 0, '2025-08-29 00:44:45', '2025-08-29 00:44:45'),
(887, 270, 64, 278, 1342, 1, '2025-08-29 00:44:45', '2025-08-29 00:44:45'),
(888, 270, 64, 279, 1348, 0, '2025-08-29 00:44:45', '2025-08-29 00:44:45'),
(889, 270, 64, 280, 1353, 1, '2025-08-29 00:44:45', '2025-08-29 00:44:45'),
(890, 168, 64, 261, 1260, 0, '2025-08-29 00:44:47', '2025-08-29 00:44:47'),
(891, 168, 64, 262, 1262, 1, '2025-08-29 00:44:47', '2025-08-29 00:44:47'),
(892, 168, 64, 263, 1268, 1, '2025-08-29 00:44:47', '2025-08-29 00:44:47'),
(893, 168, 64, 264, 1273, 0, '2025-08-29 00:44:47', '2025-08-29 00:44:47'),
(894, 168, 64, 265, 1276, 1, '2025-08-29 00:44:47', '2025-08-29 00:44:47'),
(895, 168, 64, 266, 1281, 0, '2025-08-29 00:44:47', '2025-08-29 00:44:47'),
(896, 168, 64, 267, 1286, 1, '2025-08-29 00:44:47', '2025-08-29 00:44:47'),
(897, 168, 64, 268, 1292, 0, '2025-08-29 00:44:47', '2025-08-29 00:44:47'),
(898, 168, 64, 269, 1298, 1, '2025-08-29 00:44:47', '2025-08-29 00:44:47'),
(899, 168, 64, 270, 1301, 1, '2025-08-29 00:44:47', '2025-08-29 00:44:47'),
(900, 168, 64, 271, 1306, 1, '2025-08-29 00:44:47', '2025-08-29 00:44:47'),
(901, 168, 64, 272, 1311, 1, '2025-08-29 00:44:47', '2025-08-29 00:44:47'),
(902, 168, 64, 273, 1320, 0, '2025-08-29 00:44:47', '2025-08-29 00:44:47'),
(903, 168, 64, 274, 1323, 1, '2025-08-29 00:44:47', '2025-08-29 00:44:47'),
(904, 168, 64, 275, 1326, 0, '2025-08-29 00:44:47', '2025-08-29 00:44:47'),
(905, 168, 64, 276, 1332, 1, '2025-08-29 00:44:47', '2025-08-29 00:44:47'),
(906, 168, 64, 277, 1336, 1, '2025-08-29 00:44:47', '2025-08-29 00:44:47'),
(907, 168, 64, 278, 1342, 1, '2025-08-29 00:44:47', '2025-08-29 00:44:47'),
(908, 268, 64, 261, 1256, 1, '2025-08-29 00:44:48', '2025-08-29 00:44:48'),
(909, 268, 64, 262, 1262, 1, '2025-08-29 00:44:48', '2025-08-29 00:44:48'),
(910, 268, 64, 263, 1268, 1, '2025-08-29 00:44:48', '2025-08-29 00:44:48'),
(911, 268, 64, 264, 1273, 0, '2025-08-29 00:44:48', '2025-08-29 00:44:48'),
(912, 268, 64, 265, 1277, 0, '2025-08-29 00:44:48', '2025-08-29 00:44:48'),
(913, 268, 64, 266, 1282, 1, '2025-08-29 00:44:48', '2025-08-29 00:44:48'),
(914, 268, 64, 267, 1290, 0, '2025-08-29 00:44:48', '2025-08-29 00:44:48'),
(915, 268, 64, 268, 1293, 1, '2025-08-29 00:44:48', '2025-08-29 00:44:48'),
(916, 268, 64, 269, 1298, 1, '2025-08-29 00:44:48', '2025-08-29 00:44:48'),
(917, 268, 64, 270, 1301, 1, '2025-08-29 00:44:48', '2025-08-29 00:44:48'),
(918, 268, 64, 271, 1310, 0, '2025-08-29 00:44:48', '2025-08-29 00:44:48'),
(919, 268, 64, 272, 1313, 0, '2025-08-29 00:44:49', '2025-08-29 00:44:49'),
(920, 268, 64, 273, 1318, 0, '2025-08-29 00:44:49', '2025-08-29 00:44:49'),
(921, 268, 64, 274, 1323, 1, '2025-08-29 00:44:49', '2025-08-29 00:44:49'),
(922, 268, 64, 275, 1326, 0, '2025-08-29 00:44:49', '2025-08-29 00:44:49'),
(923, 268, 64, 276, 1335, 0, '2025-08-29 00:44:49', '2025-08-29 00:44:49'),
(924, 268, 64, 277, 1339, 0, '2025-08-29 00:44:49', '2025-08-29 00:44:49'),
(925, 268, 64, 278, 1342, 1, '2025-08-29 00:44:49', '2025-08-29 00:44:49'),
(926, 268, 64, 279, 1347, 1, '2025-08-29 00:44:49', '2025-08-29 00:44:49'),
(927, 268, 64, 280, 1353, 1, '2025-08-29 00:44:49', '2025-08-29 00:44:49'),
(928, 223, 64, 261, 1256, 1, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(929, 223, 64, 262, 1262, 1, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(930, 223, 64, 263, 1268, 1, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(931, 223, 64, 264, 1271, 1, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(932, 223, 64, 265, 1278, 0, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(933, 223, 64, 266, 1282, 1, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(934, 223, 64, 267, 1287, 0, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(935, 223, 64, 268, 1291, 0, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(936, 223, 64, 269, 1298, 1, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(937, 223, 64, 270, 1302, 0, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(938, 223, 64, 271, 1307, 0, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(939, 223, 64, 272, 1311, 1, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(940, 223, 64, 273, 1318, 0, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(941, 223, 64, 274, 1322, 0, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(942, 223, 64, 275, 1329, 0, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(943, 223, 64, 276, 1333, 0, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(944, 223, 64, 277, 1337, 0, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(945, 223, 64, 278, 1342, 1, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(946, 223, 64, 279, 1349, 0, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(947, 223, 64, 280, 1355, 0, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(948, 464, 64, 261, 1256, 1, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(949, 464, 64, 262, 1262, 1, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(950, 464, 64, 263, 1266, 0, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(951, 464, 64, 264, 1275, 0, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(952, 464, 64, 265, 1279, 0, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(953, 464, 64, 266, 1282, 1, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(954, 464, 64, 267, 1288, 0, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(955, 464, 64, 268, 1293, 1, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(956, 464, 64, 269, 1297, 0, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(957, 464, 64, 270, 1301, 1, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(958, 464, 64, 271, 1306, 1, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(959, 464, 64, 272, 1314, 0, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(960, 464, 64, 273, 1320, 0, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(961, 464, 64, 274, 1323, 1, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(962, 464, 64, 275, 1327, 1, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(963, 464, 64, 276, 1332, 1, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(964, 464, 64, 277, 1338, 0, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(965, 464, 64, 278, 1341, 0, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(966, 464, 64, 279, 1347, 1, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(967, 464, 64, 280, 1351, 0, '2025-08-29 00:44:51', '2025-08-29 00:44:51'),
(968, 208, 64, 261, 1256, 1, '2025-08-29 00:44:52', '2025-08-29 00:44:52'),
(969, 208, 64, 262, 1264, 0, '2025-08-29 00:44:52', '2025-08-29 00:44:52'),
(970, 208, 64, 263, 1269, 0, '2025-08-29 00:44:52', '2025-08-29 00:44:52'),
(971, 208, 64, 264, 1272, 0, '2025-08-29 00:44:52', '2025-08-29 00:44:52'),
(972, 208, 64, 265, 1276, 1, '2025-08-29 00:44:52', '2025-08-29 00:44:52'),
(973, 208, 64, 266, 1284, 0, '2025-08-29 00:44:52', '2025-08-29 00:44:52'),
(974, 208, 64, 267, 1288, 0, '2025-08-29 00:44:52', '2025-08-29 00:44:52'),
(975, 208, 64, 268, 1292, 0, '2025-08-29 00:44:52', '2025-08-29 00:44:52'),
(976, 208, 64, 269, 1296, 0, '2025-08-29 00:44:52', '2025-08-29 00:44:52'),
(977, 208, 64, 270, 1305, 0, '2025-08-29 00:44:52', '2025-08-29 00:44:52'),
(978, 208, 64, 271, 1309, 0, '2025-08-29 00:44:52', '2025-08-29 00:44:52'),
(979, 208, 64, 272, 1313, 0, '2025-08-29 00:44:52', '2025-08-29 00:44:52'),
(980, 208, 64, 273, 1316, 0, '2025-08-29 00:44:52', '2025-08-29 00:44:52'),
(981, 208, 64, 274, 1324, 0, '2025-08-29 00:44:52', '2025-08-29 00:44:52'),
(982, 208, 64, 275, 1330, 0, '2025-08-29 00:44:52', '2025-08-29 00:44:52'),
(983, 208, 64, 276, 1334, 0, '2025-08-29 00:44:52', '2025-08-29 00:44:52'),
(984, 208, 64, 277, 1336, 1, '2025-08-29 00:44:52', '2025-08-29 00:44:52'),
(985, 208, 64, 278, 1343, 0, '2025-08-29 00:44:52', '2025-08-29 00:44:52'),
(986, 208, 64, 279, 1347, 1, '2025-08-29 00:44:52', '2025-08-29 00:44:52'),
(987, 208, 64, 280, 1351, 0, '2025-08-29 00:44:52', '2025-08-29 00:44:52'),
(988, 130, 64, 261, 1256, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(989, 130, 64, 262, 1262, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(990, 130, 64, 263, 1268, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(991, 130, 64, 264, 1271, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(992, 130, 64, 265, 1276, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(993, 130, 64, 266, 1282, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(994, 130, 64, 267, 1286, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(995, 130, 64, 268, 1293, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(996, 130, 64, 269, 1298, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(997, 130, 64, 270, 1301, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(998, 130, 64, 271, 1306, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(999, 130, 64, 272, 1311, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1000, 130, 64, 273, 1317, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1001, 130, 64, 274, 1323, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1002, 130, 64, 275, 1327, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1003, 130, 64, 276, 1334, 0, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1004, 130, 64, 277, 1339, 0, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1005, 130, 64, 278, 1344, 0, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1006, 130, 64, 279, 1347, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1007, 130, 64, 280, 1353, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1008, 423, 64, 261, 1260, 0, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1009, 423, 64, 262, 1262, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1010, 423, 64, 263, 1268, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1011, 423, 64, 264, 1275, 0, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1012, 423, 64, 265, 1279, 0, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1013, 423, 64, 266, 1282, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1014, 423, 64, 267, 1286, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1015, 423, 64, 268, 1293, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1016, 423, 64, 269, 1298, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1017, 423, 64, 270, 1302, 0, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1018, 423, 64, 271, 1306, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1019, 423, 64, 272, 1313, 0, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1020, 423, 64, 273, 1316, 0, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1021, 423, 64, 274, 1322, 0, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1022, 423, 64, 275, 1327, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1023, 423, 64, 276, 1332, 1, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1024, 423, 64, 277, 1337, 0, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1025, 423, 64, 278, 1341, 0, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1026, 423, 64, 279, 1350, 0, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1027, 423, 64, 280, 1352, 0, '2025-08-29 00:44:56', '2025-08-29 00:44:56'),
(1028, 500, 64, 261, 1256, 1, '2025-08-29 00:44:57', '2025-08-29 00:44:57'),
(1029, 500, 64, 262, 1262, 1, '2025-08-29 00:44:57', '2025-08-29 00:44:57'),
(1030, 500, 64, 263, 1268, 1, '2025-08-29 00:44:57', '2025-08-29 00:44:57'),
(1031, 500, 64, 264, 1271, 1, '2025-08-29 00:44:57', '2025-08-29 00:44:57'),
(1032, 500, 64, 265, 1276, 1, '2025-08-29 00:44:57', '2025-08-29 00:44:57'),
(1033, 500, 64, 266, 1282, 1, '2025-08-29 00:44:57', '2025-08-29 00:44:57'),
(1034, 500, 64, 267, 1286, 1, '2025-08-29 00:44:57', '2025-08-29 00:44:57'),
(1035, 500, 64, 268, 1293, 1, '2025-08-29 00:44:57', '2025-08-29 00:44:57'),
(1036, 500, 64, 269, 1298, 1, '2025-08-29 00:44:57', '2025-08-29 00:44:57'),
(1037, 500, 64, 270, 1301, 1, '2025-08-29 00:44:57', '2025-08-29 00:44:57'),
(1038, 500, 64, 271, 1306, 1, '2025-08-29 00:44:57', '2025-08-29 00:44:57'),
(1039, 500, 64, 272, 1311, 1, '2025-08-29 00:44:57', '2025-08-29 00:44:57'),
(1040, 500, 64, 273, 1317, 1, '2025-08-29 00:44:57', '2025-08-29 00:44:57'),
(1041, 500, 64, 274, 1322, 0, '2025-08-29 00:44:57', '2025-08-29 00:44:57'),
(1042, 500, 64, 275, 1327, 1, '2025-08-29 00:44:57', '2025-08-29 00:44:57'),
(1043, 500, 64, 276, 1332, 1, '2025-08-29 00:44:57', '2025-08-29 00:44:57'),
(1044, 500, 64, 277, 1338, 0, '2025-08-29 00:44:57', '2025-08-29 00:44:57'),
(1045, 500, 64, 278, 1342, 1, '2025-08-29 00:44:57', '2025-08-29 00:44:57'),
(1046, 500, 64, 279, 1349, 0, '2025-08-29 00:44:57', '2025-08-29 00:44:57'),
(1047, 500, 64, 280, 1353, 1, '2025-08-29 00:44:57', '2025-08-29 00:44:57'),
(1048, 171, 64, 261, 1260, 0, '2025-08-29 00:44:58', '2025-08-29 00:44:58'),
(1049, 171, 64, 262, 1261, 0, '2025-08-29 00:44:58', '2025-08-29 00:44:58'),
(1050, 171, 64, 263, 1268, 1, '2025-08-29 00:44:58', '2025-08-29 00:44:58'),
(1051, 171, 64, 264, 1271, 1, '2025-08-29 00:44:58', '2025-08-29 00:44:58'),
(1052, 171, 64, 265, 1278, 0, '2025-08-29 00:44:58', '2025-08-29 00:44:58'),
(1053, 171, 64, 266, 1282, 1, '2025-08-29 00:44:58', '2025-08-29 00:44:58'),
(1054, 171, 64, 267, 1286, 1, '2025-08-29 00:44:58', '2025-08-29 00:44:58'),
(1055, 171, 64, 268, 1292, 0, '2025-08-29 00:44:58', '2025-08-29 00:44:58'),
(1056, 171, 64, 269, 1298, 1, '2025-08-29 00:44:58', '2025-08-29 00:44:58'),
(1057, 171, 64, 270, 1301, 1, '2025-08-29 00:44:58', '2025-08-29 00:44:58'),
(1058, 171, 64, 271, 1306, 1, '2025-08-29 00:44:58', '2025-08-29 00:44:58'),
(1059, 171, 64, 272, 1315, 0, '2025-08-29 00:44:58', '2025-08-29 00:44:58'),
(1060, 171, 64, 273, 1317, 1, '2025-08-29 00:44:58', '2025-08-29 00:44:58'),
(1061, 171, 64, 274, 1323, 1, '2025-08-29 00:44:58', '2025-08-29 00:44:58'),
(1062, 171, 64, 275, 1327, 1, '2025-08-29 00:44:58', '2025-08-29 00:44:58'),
(1063, 171, 64, 276, 1331, 0, '2025-08-29 00:44:58', '2025-08-29 00:44:58'),
(1064, 171, 64, 277, 1337, 0, '2025-08-29 00:44:58', '2025-08-29 00:44:58'),
(1065, 171, 64, 278, 1342, 1, '2025-08-29 00:44:58', '2025-08-29 00:44:58'),
(1066, 171, 64, 279, 1348, 0, '2025-08-29 00:44:58', '2025-08-29 00:44:58'),
(1067, 171, 64, 280, 1353, 1, '2025-08-29 00:44:58', '2025-08-29 00:44:58'),
(1068, 436, 64, 261, 1256, 1, '2025-08-29 00:45:01', '2025-08-29 00:45:01'),
(1069, 436, 64, 262, 1262, 1, '2025-08-29 00:45:01', '2025-08-29 00:45:01'),
(1070, 436, 64, 263, 1268, 1, '2025-08-29 00:45:01', '2025-08-29 00:45:01'),
(1071, 436, 64, 264, 1271, 1, '2025-08-29 00:45:01', '2025-08-29 00:45:01'),
(1072, 436, 64, 265, 1276, 1, '2025-08-29 00:45:01', '2025-08-29 00:45:01'),
(1073, 436, 64, 266, 1282, 1, '2025-08-29 00:45:01', '2025-08-29 00:45:01'),
(1074, 436, 64, 267, 1287, 0, '2025-08-29 00:45:01', '2025-08-29 00:45:01'),
(1075, 436, 64, 268, 1292, 0, '2025-08-29 00:45:01', '2025-08-29 00:45:01'),
(1076, 436, 64, 269, 1298, 1, '2025-08-29 00:45:01', '2025-08-29 00:45:01'),
(1077, 436, 64, 270, 1301, 1, '2025-08-29 00:45:01', '2025-08-29 00:45:01'),
(1078, 436, 64, 271, 1309, 0, '2025-08-29 00:45:01', '2025-08-29 00:45:01'),
(1079, 436, 64, 272, 1311, 1, '2025-08-29 00:45:01', '2025-08-29 00:45:01'),
(1080, 436, 64, 273, 1318, 0, '2025-08-29 00:45:01', '2025-08-29 00:45:01'),
(1081, 436, 64, 274, 1322, 0, '2025-08-29 00:45:01', '2025-08-29 00:45:01'),
(1082, 436, 64, 275, 1328, 0, '2025-08-29 00:45:01', '2025-08-29 00:45:01'),
(1083, 436, 64, 276, 1335, 0, '2025-08-29 00:45:01', '2025-08-29 00:45:01'),
(1084, 436, 64, 277, 1338, 0, '2025-08-29 00:45:01', '2025-08-29 00:45:01'),
(1085, 436, 64, 278, 1345, 0, '2025-08-29 00:45:01', '2025-08-29 00:45:01'),
(1086, 436, 64, 279, 1350, 0, '2025-08-29 00:45:01', '2025-08-29 00:45:01'),
(1087, 436, 64, 280, 1353, 1, '2025-08-29 00:45:01', '2025-08-29 00:45:01'),
(1088, 241, 64, 261, 1256, 1, '2025-08-29 00:45:02', '2025-08-29 00:45:02'),
(1089, 241, 64, 262, 1262, 1, '2025-08-29 00:45:02', '2025-08-29 00:45:02'),
(1090, 241, 64, 263, 1268, 1, '2025-08-29 00:45:02', '2025-08-29 00:45:02'),
(1091, 241, 64, 264, 1271, 1, '2025-08-29 00:45:02', '2025-08-29 00:45:02'),
(1092, 241, 64, 265, 1276, 1, '2025-08-29 00:45:02', '2025-08-29 00:45:02'),
(1093, 241, 64, 266, 1282, 1, '2025-08-29 00:45:02', '2025-08-29 00:45:02'),
(1094, 241, 64, 267, 1286, 1, '2025-08-29 00:45:02', '2025-08-29 00:45:02'),
(1095, 241, 64, 268, 1293, 1, '2025-08-29 00:45:02', '2025-08-29 00:45:02'),
(1096, 241, 64, 269, 1298, 1, '2025-08-29 00:45:02', '2025-08-29 00:45:02'),
(1097, 241, 64, 270, 1301, 1, '2025-08-29 00:45:02', '2025-08-29 00:45:02'),
(1098, 241, 64, 271, 1306, 1, '2025-08-29 00:45:02', '2025-08-29 00:45:02'),
(1099, 241, 64, 272, 1311, 1, '2025-08-29 00:45:02', '2025-08-29 00:45:02'),
(1100, 241, 64, 273, 1317, 1, '2025-08-29 00:45:02', '2025-08-29 00:45:02'),
(1101, 241, 64, 274, 1323, 1, '2025-08-29 00:45:02', '2025-08-29 00:45:02'),
(1102, 241, 64, 275, 1327, 1, '2025-08-29 00:45:02', '2025-08-29 00:45:02'),
(1103, 241, 64, 276, 1332, 1, '2025-08-29 00:45:02', '2025-08-29 00:45:02'),
(1104, 241, 64, 277, 1336, 1, '2025-08-29 00:45:02', '2025-08-29 00:45:02'),
(1105, 241, 64, 278, 1342, 1, '2025-08-29 00:45:02', '2025-08-29 00:45:02'),
(1106, 241, 64, 279, 1346, 0, '2025-08-29 00:45:02', '2025-08-29 00:45:02'),
(1107, 241, 64, 280, 1353, 1, '2025-08-29 00:45:02', '2025-08-29 00:45:02'),
(1108, 292, 64, 261, 1259, 0, '2025-08-29 00:45:03', '2025-08-29 00:45:03'),
(1109, 292, 64, 262, 1261, 0, '2025-08-29 00:45:03', '2025-08-29 00:45:03'),
(1110, 292, 64, 263, 1268, 1, '2025-08-29 00:45:03', '2025-08-29 00:45:03'),
(1111, 292, 64, 264, 1273, 0, '2025-08-29 00:45:03', '2025-08-29 00:45:03'),
(1112, 292, 64, 265, 1279, 0, '2025-08-29 00:45:03', '2025-08-29 00:45:03'),
(1113, 292, 64, 266, 1283, 0, '2025-08-29 00:45:03', '2025-08-29 00:45:03'),
(1114, 292, 64, 267, 1288, 0, '2025-08-29 00:45:03', '2025-08-29 00:45:03'),
(1115, 292, 64, 268, 1294, 0, '2025-08-29 00:45:03', '2025-08-29 00:45:03'),
(1116, 292, 64, 269, 1299, 0, '2025-08-29 00:45:03', '2025-08-29 00:45:03'),
(1117, 292, 64, 270, 1303, 0, '2025-08-29 00:45:03', '2025-08-29 00:45:03'),
(1118, 292, 64, 271, 1309, 0, '2025-08-29 00:45:03', '2025-08-29 00:45:03'),
(1119, 292, 64, 272, 1314, 0, '2025-08-29 00:45:03', '2025-08-29 00:45:03'),
(1120, 292, 64, 273, 1320, 0, '2025-08-29 00:45:03', '2025-08-29 00:45:03'),
(1121, 292, 64, 274, 1325, 0, '2025-08-29 00:45:03', '2025-08-29 00:45:03'),
(1122, 292, 64, 275, 1328, 0, '2025-08-29 00:45:03', '2025-08-29 00:45:03'),
(1123, 292, 64, 276, 1334, 0, '2025-08-29 00:45:03', '2025-08-29 00:45:03'),
(1124, 292, 64, 277, 1337, 0, '2025-08-29 00:45:03', '2025-08-29 00:45:03'),
(1125, 292, 64, 278, 1345, 0, '2025-08-29 00:45:03', '2025-08-29 00:45:03'),
(1126, 292, 64, 279, 1348, 0, '2025-08-29 00:45:03', '2025-08-29 00:45:03'),
(1127, 292, 64, 280, 1354, 0, '2025-08-29 00:45:03', '2025-08-29 00:45:03'),
(1128, 197, 64, 261, 1256, 1, '2025-08-29 00:45:04', '2025-08-29 00:45:04'),
(1129, 197, 64, 262, 1262, 1, '2025-08-29 00:45:04', '2025-08-29 00:45:04'),
(1130, 197, 64, 263, 1268, 1, '2025-08-29 00:45:04', '2025-08-29 00:45:04'),
(1131, 197, 64, 264, 1273, 0, '2025-08-29 00:45:04', '2025-08-29 00:45:04'),
(1132, 197, 64, 265, 1278, 0, '2025-08-29 00:45:04', '2025-08-29 00:45:04'),
(1133, 197, 64, 266, 1282, 1, '2025-08-29 00:45:04', '2025-08-29 00:45:04'),
(1134, 197, 64, 267, 1286, 1, '2025-08-29 00:45:04', '2025-08-29 00:45:04'),
(1135, 197, 64, 268, 1291, 0, '2025-08-29 00:45:04', '2025-08-29 00:45:04'),
(1136, 197, 64, 269, 1298, 1, '2025-08-29 00:45:04', '2025-08-29 00:45:04'),
(1137, 197, 64, 270, 1302, 0, '2025-08-29 00:45:04', '2025-08-29 00:45:04'),
(1138, 197, 64, 271, 1307, 0, '2025-08-29 00:45:04', '2025-08-29 00:45:04'),
(1139, 197, 64, 272, 1311, 1, '2025-08-29 00:45:04', '2025-08-29 00:45:04'),
(1140, 197, 64, 273, 1318, 0, '2025-08-29 00:45:04', '2025-08-29 00:45:04'),
(1141, 197, 64, 274, 1322, 0, '2025-08-29 00:45:04', '2025-08-29 00:45:04'),
(1142, 197, 64, 275, 1327, 1, '2025-08-29 00:45:04', '2025-08-29 00:45:04'),
(1143, 197, 64, 276, 1333, 0, '2025-08-29 00:45:04', '2025-08-29 00:45:04'),
(1144, 197, 64, 277, 1336, 1, '2025-08-29 00:45:04', '2025-08-29 00:45:04'),
(1145, 197, 64, 278, 1342, 1, '2025-08-29 00:45:04', '2025-08-29 00:45:04'),
(1146, 197, 64, 279, 1348, 0, '2025-08-29 00:45:04', '2025-08-29 00:45:04'),
(1147, 197, 64, 280, 1353, 1, '2025-08-29 00:45:04', '2025-08-29 00:45:04'),
(1148, 271, 64, 261, 1256, 1, '2025-08-29 00:45:10', '2025-08-29 00:45:10'),
(1149, 271, 64, 262, 1261, 0, '2025-08-29 00:45:10', '2025-08-29 00:45:10'),
(1150, 271, 64, 263, 1268, 1, '2025-08-29 00:45:10', '2025-08-29 00:45:10'),
(1151, 271, 64, 264, 1274, 0, '2025-08-29 00:45:10', '2025-08-29 00:45:10'),
(1152, 271, 64, 265, 1279, 0, '2025-08-29 00:45:10', '2025-08-29 00:45:10'),
(1153, 271, 64, 266, 1282, 1, '2025-08-29 00:45:10', '2025-08-29 00:45:10'),
(1154, 271, 64, 267, 1288, 0, '2025-08-29 00:45:10', '2025-08-29 00:45:10'),
(1155, 271, 64, 268, 1293, 1, '2025-08-29 00:45:10', '2025-08-29 00:45:10'),
(1156, 271, 64, 269, 1298, 1, '2025-08-29 00:45:10', '2025-08-29 00:45:10'),
(1157, 271, 64, 270, 1303, 0, '2025-08-29 00:45:10', '2025-08-29 00:45:10'),
(1158, 271, 64, 271, 1308, 0, '2025-08-29 00:45:10', '2025-08-29 00:45:10'),
(1159, 271, 64, 272, 1313, 0, '2025-08-29 00:45:10', '2025-08-29 00:45:10'),
(1160, 271, 64, 273, 1319, 0, '2025-08-29 00:45:10', '2025-08-29 00:45:10'),
(1161, 271, 64, 274, 1323, 1, '2025-08-29 00:45:10', '2025-08-29 00:45:10'),
(1162, 271, 64, 275, 1327, 1, '2025-08-29 00:45:10', '2025-08-29 00:45:10'),
(1163, 271, 64, 276, 1331, 0, '2025-08-29 00:45:10', '2025-08-29 00:45:10'),
(1164, 271, 64, 277, 1339, 0, '2025-08-29 00:45:10', '2025-08-29 00:45:10'),
(1165, 271, 64, 278, 1343, 0, '2025-08-29 00:45:10', '2025-08-29 00:45:10'),
(1166, 271, 64, 279, 1349, 0, '2025-08-29 00:45:10', '2025-08-29 00:45:10'),
(1167, 271, 64, 280, 1351, 0, '2025-08-29 00:45:10', '2025-08-29 00:45:10'),
(1168, 258, 64, 261, 1256, 1, '2025-08-29 00:45:13', '2025-08-29 00:45:13'),
(1169, 258, 64, 262, 1262, 1, '2025-08-29 00:45:13', '2025-08-29 00:45:13'),
(1170, 258, 64, 263, 1270, 0, '2025-08-29 00:45:13', '2025-08-29 00:45:13'),
(1171, 258, 64, 264, 1271, 1, '2025-08-29 00:45:13', '2025-08-29 00:45:13'),
(1172, 258, 64, 265, 1277, 0, '2025-08-29 00:45:13', '2025-08-29 00:45:13'),
(1173, 258, 64, 266, 1282, 1, '2025-08-29 00:45:13', '2025-08-29 00:45:13'),
(1174, 258, 64, 267, 1286, 1, '2025-08-29 00:45:13', '2025-08-29 00:45:13'),
(1175, 258, 64, 268, 1293, 1, '2025-08-29 00:45:13', '2025-08-29 00:45:13'),
(1176, 258, 64, 269, 1298, 1, '2025-08-29 00:45:13', '2025-08-29 00:45:13'),
(1177, 258, 64, 270, 1301, 1, '2025-08-29 00:45:13', '2025-08-29 00:45:13'),
(1178, 258, 64, 271, 1306, 1, '2025-08-29 00:45:13', '2025-08-29 00:45:13'),
(1179, 258, 64, 272, 1311, 1, '2025-08-29 00:45:13', '2025-08-29 00:45:13'),
(1180, 258, 64, 273, 1316, 0, '2025-08-29 00:45:13', '2025-08-29 00:45:13'),
(1181, 258, 64, 274, 1322, 0, '2025-08-29 00:45:13', '2025-08-29 00:45:13'),
(1182, 258, 64, 275, 1327, 1, '2025-08-29 00:45:13', '2025-08-29 00:45:13'),
(1183, 258, 64, 276, 1332, 1, '2025-08-29 00:45:13', '2025-08-29 00:45:13'),
(1184, 258, 64, 277, 1337, 0, '2025-08-29 00:45:13', '2025-08-29 00:45:13'),
(1185, 258, 64, 278, 1342, 1, '2025-08-29 00:45:13', '2025-08-29 00:45:13'),
(1186, 258, 64, 279, 1348, 0, '2025-08-29 00:45:13', '2025-08-29 00:45:13'),
(1187, 258, 64, 280, 1352, 0, '2025-08-29 00:45:13', '2025-08-29 00:45:13'),
(1188, 234, 64, 261, 1256, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1189, 234, 64, 262, 1262, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1190, 234, 64, 263, 1268, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1191, 234, 64, 264, 1271, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1192, 234, 64, 265, 1276, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1193, 234, 64, 266, 1282, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1194, 234, 64, 267, 1286, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1195, 234, 64, 268, 1293, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1196, 234, 64, 269, 1296, 0, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1197, 234, 64, 270, 1301, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1198, 234, 64, 271, 1306, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1199, 234, 64, 272, 1311, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1200, 234, 64, 273, 1319, 0, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1201, 234, 64, 274, 1322, 0, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1202, 234, 64, 275, 1326, 0, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1203, 234, 64, 276, 1335, 0, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1204, 234, 64, 277, 1337, 0, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1205, 234, 64, 278, 1344, 0, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1206, 234, 64, 279, 1350, 0, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1207, 234, 64, 280, 1355, 0, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1208, 506, 64, 261, 1256, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1209, 506, 64, 262, 1262, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1210, 506, 64, 263, 1268, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1211, 506, 64, 264, 1271, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1212, 506, 64, 265, 1276, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1213, 506, 64, 266, 1282, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1214, 506, 64, 267, 1286, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1215, 506, 64, 268, 1293, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1216, 506, 64, 269, 1298, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1217, 506, 64, 270, 1301, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1218, 506, 64, 271, 1306, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1219, 506, 64, 272, 1311, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1220, 506, 64, 273, 1317, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1221, 506, 64, 274, 1323, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1222, 506, 64, 275, 1327, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1223, 506, 64, 276, 1332, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1224, 506, 64, 277, 1336, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1225, 506, 64, 278, 1342, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1226, 506, 64, 279, 1347, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1227, 506, 64, 280, 1353, 1, '2025-08-29 00:45:14', '2025-08-29 00:45:14'),
(1228, 505, 64, 261, 1256, 1, '2025-08-29 00:45:17', '2025-08-29 00:45:17'),
(1229, 505, 64, 262, 1262, 1, '2025-08-29 00:45:17', '2025-08-29 00:45:17'),
(1230, 505, 64, 263, 1268, 1, '2025-08-29 00:45:17', '2025-08-29 00:45:17'),
(1231, 505, 64, 264, 1271, 1, '2025-08-29 00:45:17', '2025-08-29 00:45:17'),
(1232, 505, 64, 265, 1276, 1, '2025-08-29 00:45:17', '2025-08-29 00:45:17'),
(1233, 505, 64, 266, 1282, 1, '2025-08-29 00:45:17', '2025-08-29 00:45:17'),
(1234, 505, 64, 267, 1286, 1, '2025-08-29 00:45:17', '2025-08-29 00:45:17'),
(1235, 505, 64, 268, 1292, 0, '2025-08-29 00:45:17', '2025-08-29 00:45:17'),
(1236, 505, 64, 269, 1298, 1, '2025-08-29 00:45:17', '2025-08-29 00:45:17'),
(1237, 505, 64, 270, 1301, 1, '2025-08-29 00:45:17', '2025-08-29 00:45:17'),
(1238, 505, 64, 271, 1306, 1, '2025-08-29 00:45:17', '2025-08-29 00:45:17'),
(1239, 505, 64, 272, 1311, 1, '2025-08-29 00:45:17', '2025-08-29 00:45:17'),
(1240, 505, 64, 273, 1317, 1, '2025-08-29 00:45:17', '2025-08-29 00:45:17'),
(1241, 505, 64, 274, 1322, 0, '2025-08-29 00:45:17', '2025-08-29 00:45:17'),
(1242, 505, 64, 275, 1327, 1, '2025-08-29 00:45:17', '2025-08-29 00:45:17'),
(1243, 505, 64, 276, 1332, 1, '2025-08-29 00:45:17', '2025-08-29 00:45:17'),
(1244, 505, 64, 277, 1338, 0, '2025-08-29 00:45:17', '2025-08-29 00:45:17'),
(1245, 505, 64, 278, 1344, 0, '2025-08-29 00:45:17', '2025-08-29 00:45:17'),
(1246, 505, 64, 279, 1349, 0, '2025-08-29 00:45:17', '2025-08-29 00:45:17'),
(1247, 505, 64, 280, 1353, 1, '2025-08-29 00:45:17', '2025-08-29 00:45:17'),
(1248, 196, 64, 261, 1256, 1, '2025-08-29 00:45:18', '2025-08-29 00:45:18'),
(1249, 196, 64, 262, 1262, 1, '2025-08-29 00:45:18', '2025-08-29 00:45:18'),
(1250, 196, 64, 263, 1268, 1, '2025-08-29 00:45:18', '2025-08-29 00:45:18'),
(1251, 196, 64, 264, 1271, 1, '2025-08-29 00:45:18', '2025-08-29 00:45:18'),
(1252, 196, 64, 265, 1276, 1, '2025-08-29 00:45:18', '2025-08-29 00:45:18'),
(1253, 196, 64, 266, 1282, 1, '2025-08-29 00:45:18', '2025-08-29 00:45:18'),
(1254, 196, 64, 267, 1286, 1, '2025-08-29 00:45:18', '2025-08-29 00:45:18'),
(1255, 196, 64, 268, 1293, 1, '2025-08-29 00:45:18', '2025-08-29 00:45:18'),
(1256, 196, 64, 269, 1298, 1, '2025-08-29 00:45:18', '2025-08-29 00:45:18'),
(1257, 196, 64, 270, 1301, 1, '2025-08-29 00:45:19', '2025-08-29 00:45:19'),
(1258, 196, 64, 271, 1306, 1, '2025-08-29 00:45:19', '2025-08-29 00:45:19'),
(1259, 196, 64, 272, 1311, 1, '2025-08-29 00:45:19', '2025-08-29 00:45:19'),
(1260, 196, 64, 273, 1317, 1, '2025-08-29 00:45:19', '2025-08-29 00:45:19'),
(1261, 196, 64, 274, 1322, 0, '2025-08-29 00:45:19', '2025-08-29 00:45:19'),
(1262, 196, 64, 275, 1327, 1, '2025-08-29 00:45:19', '2025-08-29 00:45:19'),
(1263, 196, 64, 276, 1332, 1, '2025-08-29 00:45:19', '2025-08-29 00:45:19'),
(1264, 196, 64, 277, 1338, 0, '2025-08-29 00:45:19', '2025-08-29 00:45:19'),
(1265, 196, 64, 278, 1342, 1, '2025-08-29 00:45:19', '2025-08-29 00:45:19'),
(1266, 196, 64, 279, 1348, 0, '2025-08-29 00:45:19', '2025-08-29 00:45:19'),
(1267, 196, 64, 280, 1353, 1, '2025-08-29 00:45:19', '2025-08-29 00:45:19'),
(1268, 288, 64, 261, 1256, 1, '2025-08-29 00:45:25', '2025-08-29 00:45:25'),
(1269, 288, 64, 262, 1262, 1, '2025-08-29 00:45:25', '2025-08-29 00:45:25'),
(1270, 288, 64, 263, 1268, 1, '2025-08-29 00:45:25', '2025-08-29 00:45:25'),
(1271, 288, 64, 264, 1272, 0, '2025-08-29 00:45:25', '2025-08-29 00:45:25'),
(1272, 288, 64, 265, 1276, 1, '2025-08-29 00:45:25', '2025-08-29 00:45:25'),
(1273, 288, 64, 266, 1282, 1, '2025-08-29 00:45:25', '2025-08-29 00:45:25'),
(1274, 288, 64, 267, 1287, 0, '2025-08-29 00:45:25', '2025-08-29 00:45:25'),
(1275, 288, 64, 268, 1293, 1, '2025-08-29 00:45:25', '2025-08-29 00:45:25'),
(1276, 288, 64, 269, 1298, 1, '2025-08-29 00:45:25', '2025-08-29 00:45:25'),
(1277, 288, 64, 270, 1304, 0, '2025-08-29 00:45:25', '2025-08-29 00:45:25'),
(1278, 288, 64, 271, 1307, 0, '2025-08-29 00:45:25', '2025-08-29 00:45:25'),
(1279, 288, 64, 272, 1311, 1, '2025-08-29 00:45:25', '2025-08-29 00:45:25'),
(1280, 288, 64, 273, 1317, 1, '2025-08-29 00:45:25', '2025-08-29 00:45:25'),
(1281, 288, 64, 274, 1321, 0, '2025-08-29 00:45:25', '2025-08-29 00:45:25'),
(1282, 288, 64, 275, 1328, 0, '2025-08-29 00:45:25', '2025-08-29 00:45:25'),
(1283, 288, 64, 276, 1332, 1, '2025-08-29 00:45:25', '2025-08-29 00:45:25'),
(1284, 288, 64, 277, 1338, 0, '2025-08-29 00:45:25', '2025-08-29 00:45:25'),
(1285, 288, 64, 278, 1343, 0, '2025-08-29 00:45:25', '2025-08-29 00:45:25'),
(1286, 288, 64, 279, 1347, 1, '2025-08-29 00:45:25', '2025-08-29 00:45:25'),
(1287, 288, 64, 280, 1352, 0, '2025-08-29 00:45:25', '2025-08-29 00:45:25'),
(1288, 272, 64, 261, 1256, 1, '2025-08-29 00:45:26', '2025-08-29 00:45:26'),
(1289, 272, 64, 262, 1262, 1, '2025-08-29 00:45:26', '2025-08-29 00:45:26'),
(1290, 272, 64, 263, 1266, 0, '2025-08-29 00:45:26', '2025-08-29 00:45:26'),
(1291, 272, 64, 264, 1271, 1, '2025-08-29 00:45:26', '2025-08-29 00:45:26'),
(1292, 272, 64, 265, 1277, 0, '2025-08-29 00:45:26', '2025-08-29 00:45:26'),
(1293, 272, 64, 266, 1282, 1, '2025-08-29 00:45:26', '2025-08-29 00:45:26'),
(1294, 272, 64, 267, 1289, 0, '2025-08-29 00:45:26', '2025-08-29 00:45:26'),
(1295, 272, 64, 268, 1293, 1, '2025-08-29 00:45:26', '2025-08-29 00:45:26'),
(1296, 272, 64, 269, 1298, 1, '2025-08-29 00:45:26', '2025-08-29 00:45:26'),
(1297, 272, 64, 270, 1303, 0, '2025-08-29 00:45:26', '2025-08-29 00:45:26'),
(1298, 272, 64, 271, 1309, 0, '2025-08-29 00:45:26', '2025-08-29 00:45:26'),
(1299, 272, 64, 272, 1311, 1, '2025-08-29 00:45:26', '2025-08-29 00:45:26'),
(1300, 272, 64, 273, 1317, 1, '2025-08-29 00:45:26', '2025-08-29 00:45:26'),
(1301, 272, 64, 274, 1322, 0, '2025-08-29 00:45:26', '2025-08-29 00:45:26'),
(1302, 272, 64, 275, 1328, 0, '2025-08-29 00:45:26', '2025-08-29 00:45:26'),
(1303, 272, 64, 276, 1332, 1, '2025-08-29 00:45:26', '2025-08-29 00:45:26'),
(1304, 272, 64, 277, 1339, 0, '2025-08-29 00:45:26', '2025-08-29 00:45:26'),
(1305, 272, 64, 278, 1342, 1, '2025-08-29 00:45:26', '2025-08-29 00:45:26'),
(1306, 272, 64, 279, 1350, 0, '2025-08-29 00:45:26', '2025-08-29 00:45:26'),
(1307, 272, 64, 280, 1351, 0, '2025-08-29 00:45:26', '2025-08-29 00:45:26'),
(1308, 242, 64, 261, 1258, 0, '2025-08-29 00:45:30', '2025-08-29 00:45:30'),
(1309, 242, 64, 262, 1261, 0, '2025-08-29 00:45:30', '2025-08-29 00:45:30'),
(1310, 242, 64, 263, 1268, 1, '2025-08-29 00:45:30', '2025-08-29 00:45:30'),
(1311, 242, 64, 264, 1271, 1, '2025-08-29 00:45:30', '2025-08-29 00:45:30'),
(1312, 242, 64, 265, 1277, 0, '2025-08-29 00:45:30', '2025-08-29 00:45:30'),
(1313, 242, 64, 266, 1282, 1, '2025-08-29 00:45:30', '2025-08-29 00:45:30'),
(1314, 242, 64, 267, 1286, 1, '2025-08-29 00:45:30', '2025-08-29 00:45:30'),
(1315, 242, 64, 268, 1292, 0, '2025-08-29 00:45:30', '2025-08-29 00:45:30'),
(1316, 242, 64, 269, 1296, 0, '2025-08-29 00:45:30', '2025-08-29 00:45:30'),
(1317, 242, 64, 270, 1301, 1, '2025-08-29 00:45:30', '2025-08-29 00:45:30'),
(1318, 242, 64, 271, 1307, 0, '2025-08-29 00:45:30', '2025-08-29 00:45:30'),
(1319, 242, 64, 272, 1311, 1, '2025-08-29 00:45:30', '2025-08-29 00:45:30'),
(1320, 242, 64, 273, 1316, 0, '2025-08-29 00:45:30', '2025-08-29 00:45:30'),
(1321, 242, 64, 274, 1324, 0, '2025-08-29 00:45:30', '2025-08-29 00:45:30'),
(1322, 242, 64, 275, 1330, 0, '2025-08-29 00:45:30', '2025-08-29 00:45:30'),
(1323, 242, 64, 276, 1334, 0, '2025-08-29 00:45:30', '2025-08-29 00:45:30'),
(1324, 242, 64, 277, 1336, 1, '2025-08-29 00:45:30', '2025-08-29 00:45:30'),
(1325, 242, 64, 278, 1341, 0, '2025-08-29 00:45:30', '2025-08-29 00:45:30'),
(1326, 242, 64, 279, 1346, 0, '2025-08-29 00:45:30', '2025-08-29 00:45:30'),
(1327, 242, 64, 280, 1352, 0, '2025-08-29 00:45:30', '2025-08-29 00:45:30'),
(1328, 501, 64, 261, 1256, 1, '2025-08-29 00:45:39', '2025-08-29 00:45:39'),
(1329, 501, 64, 262, 1262, 1, '2025-08-29 00:45:39', '2025-08-29 00:45:39'),
(1330, 501, 64, 263, 1268, 1, '2025-08-29 00:45:39', '2025-08-29 00:45:39'),
(1331, 501, 64, 264, 1272, 0, '2025-08-29 00:45:39', '2025-08-29 00:45:39'),
(1332, 501, 64, 265, 1276, 1, '2025-08-29 00:45:39', '2025-08-29 00:45:39'),
(1333, 501, 64, 266, 1282, 1, '2025-08-29 00:45:39', '2025-08-29 00:45:39'),
(1334, 501, 64, 267, 1286, 1, '2025-08-29 00:45:39', '2025-08-29 00:45:39'),
(1335, 501, 64, 268, 1293, 1, '2025-08-29 00:45:39', '2025-08-29 00:45:39'),
(1336, 501, 64, 269, 1298, 1, '2025-08-29 00:45:39', '2025-08-29 00:45:39'),
(1337, 501, 64, 270, 1301, 1, '2025-08-29 00:45:39', '2025-08-29 00:45:39'),
(1338, 501, 64, 271, 1306, 1, '2025-08-29 00:45:39', '2025-08-29 00:45:39'),
(1339, 501, 64, 272, 1311, 1, '2025-08-29 00:45:39', '2025-08-29 00:45:39'),
(1340, 501, 64, 273, 1317, 1, '2025-08-29 00:45:39', '2025-08-29 00:45:39'),
(1341, 501, 64, 274, 1322, 0, '2025-08-29 00:45:39', '2025-08-29 00:45:39'),
(1342, 501, 64, 275, 1327, 1, '2025-08-29 00:45:39', '2025-08-29 00:45:39'),
(1343, 501, 64, 276, 1332, 1, '2025-08-29 00:45:39', '2025-08-29 00:45:39'),
(1344, 501, 64, 277, 1336, 1, '2025-08-29 00:45:39', '2025-08-29 00:45:39'),
(1345, 501, 64, 278, 1342, 1, '2025-08-29 00:45:39', '2025-08-29 00:45:39'),
(1346, 501, 64, 279, 1347, 1, '2025-08-29 00:45:39', '2025-08-29 00:45:39');
INSERT INTO `student_answers` (`id`, `student_id`, `exam_id`, `question_id`, `option_id`, `is_correct`, `created_at`, `updated_at`) VALUES
(1347, 501, 64, 280, 1353, 1, '2025-08-29 00:45:39', '2025-08-29 00:45:39'),
(1348, 470, 64, 261, 1256, 1, '2025-08-29 00:45:40', '2025-08-29 00:45:40'),
(1349, 470, 64, 262, 1264, 0, '2025-08-29 00:45:40', '2025-08-29 00:45:40'),
(1350, 470, 64, 263, 1266, 0, '2025-08-29 00:45:40', '2025-08-29 00:45:40'),
(1351, 470, 64, 264, 1274, 0, '2025-08-29 00:45:40', '2025-08-29 00:45:40'),
(1352, 470, 64, 265, 1278, 0, '2025-08-29 00:45:40', '2025-08-29 00:45:40'),
(1353, 470, 64, 266, 1283, 0, '2025-08-29 00:45:40', '2025-08-29 00:45:40'),
(1354, 470, 64, 267, 1286, 1, '2025-08-29 00:45:40', '2025-08-29 00:45:40'),
(1355, 470, 64, 268, 1293, 1, '2025-08-29 00:45:40', '2025-08-29 00:45:40'),
(1356, 470, 64, 269, 1298, 1, '2025-08-29 00:45:40', '2025-08-29 00:45:40'),
(1357, 470, 64, 270, 1302, 0, '2025-08-29 00:45:40', '2025-08-29 00:45:40'),
(1358, 470, 64, 271, 1306, 1, '2025-08-29 00:45:40', '2025-08-29 00:45:40'),
(1359, 470, 64, 272, 1311, 1, '2025-08-29 00:45:40', '2025-08-29 00:45:40'),
(1360, 470, 64, 273, 1320, 0, '2025-08-29 00:45:40', '2025-08-29 00:45:40'),
(1361, 470, 64, 274, 1322, 0, '2025-08-29 00:45:40', '2025-08-29 00:45:40'),
(1362, 470, 64, 275, 1329, 0, '2025-08-29 00:45:40', '2025-08-29 00:45:40'),
(1363, 470, 64, 276, 1332, 1, '2025-08-29 00:45:40', '2025-08-29 00:45:40'),
(1364, 470, 64, 277, 1338, 0, '2025-08-29 00:45:40', '2025-08-29 00:45:40'),
(1365, 470, 64, 278, 1343, 0, '2025-08-29 00:45:40', '2025-08-29 00:45:40'),
(1366, 470, 64, 279, 1350, 0, '2025-08-29 00:45:40', '2025-08-29 00:45:40'),
(1367, 470, 64, 280, 1352, 0, '2025-08-29 00:45:40', '2025-08-29 00:45:40'),
(1368, 460, 64, 261, 1256, 1, '2025-08-29 00:45:45', '2025-08-29 00:46:56'),
(1369, 460, 64, 262, 1262, 1, '2025-08-29 00:45:45', '2025-08-29 00:46:56'),
(1370, 460, 64, 263, 1268, 1, '2025-08-29 00:45:45', '2025-08-29 00:46:56'),
(1371, 460, 64, 264, 1272, 0, '2025-08-29 00:45:45', '2025-08-29 00:46:56'),
(1372, 460, 64, 265, 1276, 1, '2025-08-29 00:45:45', '2025-08-29 00:46:56'),
(1373, 460, 64, 266, 1282, 1, '2025-08-29 00:45:45', '2025-08-29 00:46:56'),
(1374, 460, 64, 267, 1286, 1, '2025-08-29 00:45:45', '2025-08-29 00:46:56'),
(1375, 460, 64, 268, 1293, 1, '2025-08-29 00:45:45', '2025-08-29 00:46:56'),
(1376, 460, 64, 269, 1298, 1, '2025-08-29 00:45:45', '2025-08-29 00:46:56'),
(1377, 460, 64, 270, 1301, 1, '2025-08-29 00:45:45', '2025-08-29 00:46:56'),
(1378, 460, 64, 271, 1306, 1, '2025-08-29 00:45:45', '2025-08-29 00:46:56'),
(1379, 460, 64, 272, 1311, 1, '2025-08-29 00:45:45', '2025-08-29 00:46:56'),
(1380, 460, 64, 273, 1317, 1, '2025-08-29 00:45:45', '2025-08-29 00:46:56'),
(1381, 460, 64, 274, 1322, 0, '2025-08-29 00:45:45', '2025-08-29 00:46:56'),
(1382, 460, 64, 275, 1327, 1, '2025-08-29 00:45:45', '2025-08-29 00:46:56'),
(1383, 460, 64, 276, 1332, 1, '2025-08-29 00:45:45', '2025-08-29 00:46:56'),
(1384, 460, 64, 277, 1336, 1, '2025-08-29 00:45:45', '2025-08-29 00:46:56'),
(1385, 460, 64, 278, 1342, 1, '2025-08-29 00:45:45', '2025-08-29 00:46:56'),
(1386, 460, 64, 279, 1347, 1, '2025-08-29 00:45:45', '2025-08-29 00:46:56'),
(1387, 510, 64, 261, 1256, 1, '2025-08-29 00:45:53', '2025-08-29 00:45:53'),
(1388, 510, 64, 262, 1262, 1, '2025-08-29 00:45:53', '2025-08-29 00:45:53'),
(1389, 510, 64, 263, 1268, 1, '2025-08-29 00:45:53', '2025-08-29 00:45:53'),
(1390, 510, 64, 264, 1271, 1, '2025-08-29 00:45:53', '2025-08-29 00:45:53'),
(1391, 510, 64, 265, 1277, 0, '2025-08-29 00:45:53', '2025-08-29 00:45:53'),
(1392, 510, 64, 266, 1282, 1, '2025-08-29 00:45:53', '2025-08-29 00:45:53'),
(1393, 510, 64, 267, 1286, 1, '2025-08-29 00:45:53', '2025-08-29 00:45:53'),
(1394, 510, 64, 268, 1293, 1, '2025-08-29 00:45:53', '2025-08-29 00:45:53'),
(1395, 510, 64, 269, 1298, 1, '2025-08-29 00:45:53', '2025-08-29 00:45:53'),
(1396, 510, 64, 270, 1302, 0, '2025-08-29 00:45:53', '2025-08-29 00:45:53'),
(1397, 510, 64, 271, 1306, 1, '2025-08-29 00:45:53', '2025-08-29 00:45:53'),
(1398, 510, 64, 272, 1311, 1, '2025-08-29 00:45:53', '2025-08-29 00:45:53'),
(1399, 510, 64, 273, 1317, 1, '2025-08-29 00:45:53', '2025-08-29 00:45:53'),
(1400, 510, 64, 274, 1323, 1, '2025-08-29 00:45:53', '2025-08-29 00:45:53'),
(1401, 510, 64, 275, 1327, 1, '2025-08-29 00:45:53', '2025-08-29 00:45:53'),
(1402, 510, 64, 276, 1332, 1, '2025-08-29 00:45:53', '2025-08-29 00:45:53'),
(1403, 510, 64, 277, 1336, 1, '2025-08-29 00:45:53', '2025-08-29 00:45:53'),
(1404, 510, 64, 278, 1342, 1, '2025-08-29 00:45:53', '2025-08-29 00:45:53'),
(1405, 510, 64, 279, 1348, 0, '2025-08-29 00:45:53', '2025-08-29 00:45:53'),
(1406, 510, 64, 280, 1352, 0, '2025-08-29 00:45:53', '2025-08-29 00:45:53'),
(1407, 508, 64, 261, 1256, 1, '2025-08-29 00:46:28', '2025-08-29 00:47:12'),
(1408, 508, 64, 262, 1262, 1, '2025-08-29 00:46:28', '2025-08-29 00:47:12'),
(1409, 508, 64, 263, 1266, 0, '2025-08-29 00:46:28', '2025-08-29 00:47:12'),
(1410, 508, 64, 264, 1271, 1, '2025-08-29 00:46:28', '2025-08-29 00:47:12'),
(1411, 508, 64, 265, 1276, 1, '2025-08-29 00:46:28', '2025-08-29 00:47:12'),
(1412, 508, 64, 266, 1282, 1, '2025-08-29 00:46:28', '2025-08-29 00:47:12'),
(1413, 508, 64, 267, 1286, 1, '2025-08-29 00:46:28', '2025-08-29 00:47:12'),
(1414, 508, 64, 268, 1293, 1, '2025-08-29 00:46:28', '2025-08-29 00:47:12'),
(1415, 508, 64, 269, 1298, 1, '2025-08-29 00:46:28', '2025-08-29 00:47:12'),
(1416, 508, 64, 270, 1301, 1, '2025-08-29 00:46:28', '2025-08-29 00:47:12'),
(1417, 508, 64, 271, 1306, 1, '2025-08-29 00:46:28', '2025-08-29 00:47:12'),
(1418, 508, 64, 272, 1311, 1, '2025-08-29 00:46:28', '2025-08-29 00:47:12'),
(1419, 508, 64, 273, 1317, 1, '2025-08-29 00:46:28', '2025-08-29 00:47:12'),
(1420, 508, 64, 274, 1323, 1, '2025-08-29 00:46:28', '2025-08-29 00:47:12'),
(1421, 508, 64, 275, 1327, 1, '2025-08-29 00:46:28', '2025-08-29 00:47:12'),
(1422, 508, 64, 276, 1332, 1, '2025-08-29 00:46:28', '2025-08-29 00:47:12'),
(1423, 508, 64, 277, 1336, 1, '2025-08-29 00:46:28', '2025-08-29 00:47:12'),
(1424, 508, 64, 278, 1342, 1, '2025-08-29 00:46:28', '2025-08-29 00:47:12'),
(1425, 508, 64, 279, 1347, 1, '2025-08-29 00:46:28', '2025-08-29 00:47:12'),
(1426, 508, 64, 280, 1353, 1, '2025-08-29 00:46:28', '2025-08-29 00:47:12'),
(1427, 504, 64, 261, 1256, 1, '2025-08-29 00:46:44', '2025-08-29 00:46:44'),
(1428, 504, 64, 262, 1262, 1, '2025-08-29 00:46:44', '2025-08-29 00:46:44'),
(1429, 504, 64, 263, 1268, 1, '2025-08-29 00:46:44', '2025-08-29 00:46:44'),
(1430, 504, 64, 264, 1271, 1, '2025-08-29 00:46:44', '2025-08-29 00:46:44'),
(1431, 504, 64, 265, 1277, 0, '2025-08-29 00:46:44', '2025-08-29 00:46:44'),
(1432, 504, 64, 266, 1283, 0, '2025-08-29 00:46:44', '2025-08-29 00:46:44'),
(1433, 504, 64, 267, 1286, 1, '2025-08-29 00:46:44', '2025-08-29 00:46:44'),
(1434, 504, 64, 268, 1293, 1, '2025-08-29 00:46:44', '2025-08-29 00:46:44'),
(1435, 504, 64, 269, 1298, 1, '2025-08-29 00:46:44', '2025-08-29 00:46:44'),
(1436, 504, 64, 270, 1301, 1, '2025-08-29 00:46:44', '2025-08-29 00:46:44'),
(1437, 504, 64, 271, 1306, 1, '2025-08-29 00:46:44', '2025-08-29 00:46:44'),
(1438, 504, 64, 272, 1311, 1, '2025-08-29 00:46:44', '2025-08-29 00:46:44'),
(1439, 504, 64, 273, 1317, 1, '2025-08-29 00:46:44', '2025-08-29 00:46:44'),
(1440, 504, 64, 274, 1323, 1, '2025-08-29 00:46:44', '2025-08-29 00:46:44'),
(1441, 504, 64, 275, 1327, 1, '2025-08-29 00:46:44', '2025-08-29 00:46:44'),
(1442, 504, 64, 276, 1332, 1, '2025-08-29 00:46:44', '2025-08-29 00:46:44'),
(1443, 504, 64, 277, 1339, 0, '2025-08-29 00:46:44', '2025-08-29 00:46:44'),
(1444, 504, 64, 278, 1342, 1, '2025-08-29 00:46:44', '2025-08-29 00:46:44'),
(1445, 504, 64, 279, 1347, 1, '2025-08-29 00:46:44', '2025-08-29 00:46:44'),
(1446, 504, 64, 280, 1351, 0, '2025-08-29 00:46:44', '2025-08-29 00:46:44'),
(1447, 211, 64, 261, 1256, 1, '2025-08-29 00:46:48', '2025-08-29 00:47:05'),
(1448, 211, 64, 262, 1262, 1, '2025-08-29 00:46:48', '2025-08-29 00:47:05'),
(1449, 211, 64, 263, 1268, 1, '2025-08-29 00:46:48', '2025-08-29 00:47:05'),
(1450, 211, 64, 264, 1272, 0, '2025-08-29 00:46:48', '2025-08-29 00:47:05'),
(1451, 211, 64, 265, 1276, 1, '2025-08-29 00:46:48', '2025-08-29 00:47:05'),
(1452, 211, 64, 266, 1281, 0, '2025-08-29 00:46:48', '2025-08-29 00:47:05'),
(1453, 211, 64, 267, 1286, 1, '2025-08-29 00:46:48', '2025-08-29 00:47:05'),
(1454, 211, 64, 268, 1291, 0, '2025-08-29 00:46:48', '2025-08-29 00:47:05'),
(1455, 211, 64, 269, 1297, 0, '2025-08-29 00:46:48', '2025-08-29 00:47:05'),
(1456, 211, 64, 270, 1301, 1, '2025-08-29 00:46:48', '2025-08-29 00:47:05'),
(1457, 211, 64, 271, 1306, 1, '2025-08-29 00:46:48', '2025-08-29 00:47:05'),
(1458, 211, 64, 272, 1315, 0, '2025-08-29 00:46:48', '2025-08-29 00:47:05'),
(1459, 211, 64, 273, 1317, 1, '2025-08-29 00:46:48', '2025-08-29 00:47:05'),
(1460, 211, 64, 274, 1321, 0, '2025-08-29 00:46:48', '2025-08-29 00:47:05'),
(1461, 211, 64, 275, 1326, 0, '2025-08-29 00:46:48', '2025-08-29 00:47:05'),
(1462, 211, 64, 276, 1331, 0, '2025-08-29 00:46:48', '2025-08-29 00:47:05'),
(1463, 211, 64, 277, 1339, 0, '2025-08-29 00:46:48', '2025-08-29 00:47:05'),
(1464, 211, 64, 278, 1343, 0, '2025-08-29 00:46:48', '2025-08-29 00:47:05'),
(1465, 211, 64, 279, 1346, 0, '2025-08-29 00:46:48', '2025-08-29 00:47:05'),
(1466, 211, 64, 280, 1352, 0, '2025-08-29 00:46:48', '2025-08-29 00:47:05'),
(1467, 460, 64, 280, 1353, 1, '2025-08-29 00:46:56', '2025-08-29 00:46:56'),
(1468, 511, 64, 261, 1256, 1, '2025-08-29 00:48:46', '2025-08-29 00:48:46'),
(1469, 511, 64, 262, 1262, 1, '2025-08-29 00:48:46', '2025-08-29 00:48:46'),
(1470, 511, 64, 263, 1268, 1, '2025-08-29 00:48:46', '2025-08-29 00:48:46'),
(1471, 511, 64, 264, 1271, 1, '2025-08-29 00:48:46', '2025-08-29 00:48:46'),
(1472, 511, 64, 265, 1276, 1, '2025-08-29 00:48:46', '2025-08-29 00:48:46'),
(1473, 511, 64, 266, 1285, 0, '2025-08-29 00:48:46', '2025-08-29 00:48:46'),
(1474, 511, 64, 267, 1286, 1, '2025-08-29 00:48:46', '2025-08-29 00:48:46'),
(1475, 511, 64, 268, 1293, 1, '2025-08-29 00:48:46', '2025-08-29 00:48:46'),
(1476, 511, 64, 269, 1298, 1, '2025-08-29 00:48:46', '2025-08-29 00:48:46'),
(1477, 511, 64, 270, 1301, 1, '2025-08-29 00:48:46', '2025-08-29 00:48:46'),
(1478, 511, 64, 271, 1306, 1, '2025-08-29 00:48:46', '2025-08-29 00:48:46'),
(1479, 511, 64, 272, 1311, 1, '2025-08-29 00:48:46', '2025-08-29 00:48:46'),
(1480, 511, 64, 273, 1317, 1, '2025-08-29 00:48:46', '2025-08-29 00:48:46'),
(1481, 511, 64, 274, 1323, 1, '2025-08-29 00:48:46', '2025-08-29 00:48:46'),
(1482, 511, 64, 275, 1327, 1, '2025-08-29 00:48:46', '2025-08-29 00:48:46'),
(1483, 511, 64, 276, 1332, 1, '2025-08-29 00:48:46', '2025-08-29 00:48:46'),
(1484, 511, 64, 277, 1336, 1, '2025-08-29 00:48:46', '2025-08-29 00:48:46'),
(1485, 511, 64, 278, 1342, 1, '2025-08-29 00:48:46', '2025-08-29 00:48:46'),
(1486, 511, 64, 279, 1347, 1, '2025-08-29 00:48:46', '2025-08-29 00:48:46'),
(1487, 511, 64, 280, 1353, 1, '2025-08-29 00:48:46', '2025-08-29 00:48:46'),
(1488, 277, 64, 261, 1256, 1, '2025-08-29 00:49:00', '2025-08-29 00:49:00'),
(1489, 277, 64, 262, 1262, 1, '2025-08-29 00:49:00', '2025-08-29 00:49:00'),
(1490, 277, 64, 263, 1270, 0, '2025-08-29 00:49:00', '2025-08-29 00:49:00'),
(1491, 277, 64, 264, 1271, 1, '2025-08-29 00:49:00', '2025-08-29 00:49:00'),
(1492, 277, 64, 265, 1277, 0, '2025-08-29 00:49:00', '2025-08-29 00:49:00'),
(1493, 277, 64, 266, 1282, 1, '2025-08-29 00:49:00', '2025-08-29 00:49:00'),
(1494, 277, 64, 267, 1286, 1, '2025-08-29 00:49:00', '2025-08-29 00:49:00'),
(1495, 277, 64, 268, 1294, 0, '2025-08-29 00:49:00', '2025-08-29 00:49:00'),
(1496, 277, 64, 269, 1298, 1, '2025-08-29 00:49:00', '2025-08-29 00:49:00'),
(1497, 277, 64, 270, 1301, 1, '2025-08-29 00:49:00', '2025-08-29 00:49:00'),
(1498, 277, 64, 271, 1306, 1, '2025-08-29 00:49:00', '2025-08-29 00:49:00'),
(1499, 277, 64, 272, 1315, 0, '2025-08-29 00:49:00', '2025-08-29 00:49:00'),
(1500, 277, 64, 273, 1316, 0, '2025-08-29 00:49:00', '2025-08-29 00:49:00'),
(1501, 277, 64, 274, 1322, 0, '2025-08-29 00:49:00', '2025-08-29 00:49:00'),
(1502, 277, 64, 275, 1327, 1, '2025-08-29 00:49:00', '2025-08-29 00:49:00'),
(1503, 277, 64, 276, 1332, 1, '2025-08-29 00:49:00', '2025-08-29 00:49:00'),
(1504, 277, 64, 277, 1340, 0, '2025-08-29 00:49:00', '2025-08-29 00:49:00'),
(1505, 277, 64, 278, 1341, 0, '2025-08-29 00:49:00', '2025-08-29 00:49:00'),
(1506, 277, 64, 279, 1350, 0, '2025-08-29 00:49:00', '2025-08-29 00:49:00'),
(1507, 277, 64, 280, 1352, 0, '2025-08-29 00:49:00', '2025-08-29 00:49:00'),
(1508, 274, 64, 261, 1256, 1, '2025-08-29 00:49:14', '2025-08-29 00:49:14'),
(1509, 274, 64, 262, 1262, 1, '2025-08-29 00:49:14', '2025-08-29 00:49:14'),
(1510, 274, 64, 263, 1268, 1, '2025-08-29 00:49:14', '2025-08-29 00:49:14'),
(1511, 274, 64, 264, 1273, 0, '2025-08-29 00:49:14', '2025-08-29 00:49:14'),
(1512, 274, 64, 265, 1279, 0, '2025-08-29 00:49:14', '2025-08-29 00:49:14'),
(1513, 274, 64, 266, 1282, 1, '2025-08-29 00:49:14', '2025-08-29 00:49:14'),
(1514, 274, 64, 267, 1287, 0, '2025-08-29 00:49:14', '2025-08-29 00:49:14'),
(1515, 274, 64, 268, 1293, 1, '2025-08-29 00:49:14', '2025-08-29 00:49:14'),
(1516, 274, 64, 269, 1298, 1, '2025-08-29 00:49:14', '2025-08-29 00:49:14'),
(1517, 274, 64, 270, 1303, 0, '2025-08-29 00:49:14', '2025-08-29 00:49:14'),
(1518, 274, 64, 271, 1308, 0, '2025-08-29 00:49:14', '2025-08-29 00:49:14'),
(1519, 274, 64, 272, 1313, 0, '2025-08-29 00:49:14', '2025-08-29 00:49:14'),
(1520, 274, 64, 273, 1318, 0, '2025-08-29 00:49:14', '2025-08-29 00:49:14'),
(1521, 274, 64, 274, 1322, 0, '2025-08-29 00:49:14', '2025-08-29 00:49:14'),
(1522, 274, 64, 275, 1327, 1, '2025-08-29 00:49:14', '2025-08-29 00:49:14'),
(1523, 274, 64, 276, 1335, 0, '2025-08-29 00:49:14', '2025-08-29 00:49:14'),
(1524, 274, 64, 277, 1337, 0, '2025-08-29 00:49:14', '2025-08-29 00:49:14'),
(1525, 274, 64, 278, 1341, 0, '2025-08-29 00:49:14', '2025-08-29 00:49:14'),
(1526, 274, 64, 279, 1346, 0, '2025-08-29 00:49:14', '2025-08-29 00:49:14'),
(1527, 274, 64, 280, 1353, 1, '2025-08-29 00:49:14', '2025-08-29 00:49:14'),
(1528, 448, 64, 261, 1256, 1, '2025-08-29 00:49:37', '2025-08-29 00:49:37'),
(1529, 448, 64, 262, 1262, 1, '2025-08-29 00:49:37', '2025-08-29 00:49:37'),
(1530, 448, 64, 263, 1268, 1, '2025-08-29 00:49:37', '2025-08-29 00:49:37'),
(1531, 448, 64, 264, 1271, 1, '2025-08-29 00:49:37', '2025-08-29 00:49:37'),
(1532, 448, 64, 265, 1278, 0, '2025-08-29 00:49:37', '2025-08-29 00:49:37'),
(1533, 448, 64, 266, 1282, 1, '2025-08-29 00:49:37', '2025-08-29 00:49:37'),
(1534, 448, 64, 267, 1286, 1, '2025-08-29 00:49:37', '2025-08-29 00:49:37'),
(1535, 448, 64, 268, 1293, 1, '2025-08-29 00:49:37', '2025-08-29 00:49:37'),
(1536, 448, 64, 269, 1300, 0, '2025-08-29 00:49:37', '2025-08-29 00:49:37'),
(1537, 448, 64, 270, 1305, 0, '2025-08-29 00:49:37', '2025-08-29 00:49:37'),
(1538, 448, 64, 271, 1308, 0, '2025-08-29 00:49:37', '2025-08-29 00:49:37'),
(1539, 448, 64, 272, 1313, 0, '2025-08-29 00:49:37', '2025-08-29 00:49:37'),
(1540, 448, 64, 273, 1320, 0, '2025-08-29 00:49:37', '2025-08-29 00:49:37'),
(1541, 448, 64, 274, 1323, 1, '2025-08-29 00:49:37', '2025-08-29 00:49:37'),
(1542, 448, 64, 275, 1327, 1, '2025-08-29 00:49:37', '2025-08-29 00:49:37'),
(1543, 448, 64, 276, 1332, 1, '2025-08-29 00:49:37', '2025-08-29 00:49:37'),
(1544, 448, 64, 277, 1336, 1, '2025-08-29 00:49:37', '2025-08-29 00:49:37'),
(1545, 448, 64, 278, 1342, 1, '2025-08-29 00:49:37', '2025-08-29 00:49:37'),
(1546, 448, 64, 279, 1347, 1, '2025-08-29 00:49:37', '2025-08-29 00:49:37'),
(1547, 448, 64, 280, 1353, 1, '2025-08-29 00:49:37', '2025-08-29 00:49:37'),
(1548, 169, 64, 261, 1257, 0, '2025-08-29 00:51:12', '2025-08-29 00:51:12'),
(1549, 169, 64, 262, 1262, 1, '2025-08-29 00:51:12', '2025-08-29 00:51:12'),
(1550, 169, 64, 263, 1266, 0, '2025-08-29 00:51:12', '2025-08-29 00:51:12'),
(1551, 169, 64, 264, 1273, 0, '2025-08-29 00:51:12', '2025-08-29 00:51:12'),
(1552, 169, 64, 265, 1277, 0, '2025-08-29 00:51:12', '2025-08-29 00:51:12'),
(1553, 169, 64, 266, 1282, 1, '2025-08-29 00:51:12', '2025-08-29 00:51:12'),
(1554, 169, 64, 267, 1288, 0, '2025-08-29 00:51:12', '2025-08-29 00:51:12'),
(1555, 169, 64, 268, 1293, 1, '2025-08-29 00:51:12', '2025-08-29 00:51:12'),
(1556, 169, 64, 269, 1297, 0, '2025-08-29 00:51:12', '2025-08-29 00:51:12'),
(1557, 169, 64, 270, 1302, 0, '2025-08-29 00:51:12', '2025-08-29 00:51:12'),
(1558, 169, 64, 271, 1308, 0, '2025-08-29 00:51:12', '2025-08-29 00:51:12'),
(1559, 169, 64, 272, 1313, 0, '2025-08-29 00:51:12', '2025-08-29 00:51:12'),
(1560, 169, 64, 273, 1318, 0, '2025-08-29 00:51:12', '2025-08-29 00:51:12'),
(1561, 169, 64, 274, 1323, 1, '2025-08-29 00:51:12', '2025-08-29 00:51:12'),
(1562, 169, 64, 275, 1328, 0, '2025-08-29 00:51:12', '2025-08-29 00:51:12'),
(1563, 169, 64, 276, 1333, 0, '2025-08-29 00:51:12', '2025-08-29 00:51:12'),
(1564, 169, 64, 277, 1337, 0, '2025-08-29 00:51:12', '2025-08-29 00:51:12'),
(1565, 169, 64, 278, 1344, 0, '2025-08-29 00:51:12', '2025-08-29 00:51:12'),
(1566, 169, 64, 279, 1348, 0, '2025-08-29 00:51:12', '2025-08-29 00:51:12'),
(1567, 169, 64, 280, 1352, 0, '2025-08-29 00:51:12', '2025-08-29 00:51:12'),
(1568, 106, 64, 261, 1260, 0, '2025-08-29 00:52:24', '2025-08-29 00:52:24'),
(1569, 106, 64, 262, 1262, 1, '2025-08-29 00:52:24', '2025-08-29 00:52:24'),
(1570, 106, 64, 263, 1268, 1, '2025-08-29 00:52:24', '2025-08-29 00:52:24'),
(1571, 106, 64, 264, 1271, 1, '2025-08-29 00:52:24', '2025-08-29 00:52:24'),
(1572, 106, 64, 265, 1276, 1, '2025-08-29 00:52:24', '2025-08-29 00:52:24'),
(1573, 106, 64, 266, 1282, 1, '2025-08-29 00:52:24', '2025-08-29 00:52:24'),
(1574, 106, 64, 267, 1286, 1, '2025-08-29 00:52:24', '2025-08-29 00:52:24'),
(1575, 106, 64, 268, 1293, 1, '2025-08-29 00:52:24', '2025-08-29 00:52:24'),
(1576, 106, 64, 269, 1298, 1, '2025-08-29 00:52:24', '2025-08-29 00:52:24'),
(1577, 106, 64, 270, 1301, 1, '2025-08-29 00:52:24', '2025-08-29 00:52:24'),
(1578, 106, 64, 271, 1306, 1, '2025-08-29 00:52:24', '2025-08-29 00:52:24'),
(1579, 106, 64, 272, 1311, 1, '2025-08-29 00:52:24', '2025-08-29 00:52:24'),
(1580, 106, 64, 273, 1317, 1, '2025-08-29 00:52:24', '2025-08-29 00:52:24'),
(1581, 106, 64, 274, 1323, 1, '2025-08-29 00:52:24', '2025-08-29 00:52:24'),
(1582, 106, 64, 275, 1327, 1, '2025-08-29 00:52:24', '2025-08-29 00:52:24'),
(1583, 106, 64, 276, 1332, 1, '2025-08-29 00:52:24', '2025-08-29 00:52:24'),
(1584, 106, 64, 277, 1336, 1, '2025-08-29 00:52:24', '2025-08-29 00:52:24'),
(1585, 106, 64, 278, 1342, 1, '2025-08-29 00:52:24', '2025-08-29 00:52:24'),
(1586, 106, 64, 279, 1347, 1, '2025-08-29 00:52:24', '2025-08-29 00:52:24'),
(1587, 106, 64, 280, 1351, 0, '2025-08-29 00:52:24', '2025-08-29 00:52:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'member',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Admin Utama', 'admin@domain.com', 'admin', NULL, '$2y$12$Il.gAp1Hy7Rf8D11el4HfOIjYzOqX2.q55ZDL8TAcYsup2eBzP7cK', NULL, '2025-06-27 01:45:33', '2025-09-05 15:35:03'),
(3, 'Miftahusurur, S.Pd.', 'superadmin@domain.com', 'super-admin', NULL, '$2y$12$JDaKPm81U1H3nR4iVm2GoOsH5X4av9jw/I6atuX.80zfIOaZDRCAC', NULL, '2025-06-27 02:43:04', '2025-06-27 02:43:04'),
(6, 'M. Andika Anjas Syaputra, S.Kom.', 'andikasyaputra818@gmail.com', 'guru', NULL, '$2y$12$UiCydPmNRMUkljBkCEpzZ.Uz95hKnj3SIczrGEy0r5WIz.QYMkifa', NULL, '2025-07-02 06:35:27', '2025-07-02 06:35:27'),
(15, 'Alit Jaenudin, S.Pd.', '252601@guru.ujian.com', 'guru', NULL, '$2y$12$0/qzmgmSFewGR0rKGsel.elLnS3LK2gJCNuDGLdIb58oM961HAUvm', NULL, '2025-08-25 11:38:19', '2025-08-25 11:38:19'),
(16, 'A. Daenuri, S.Ag.', '252602@guru.ujian.com', 'guru', NULL, '$2y$12$1McoaGmpLCddUDbbAfKrNOC8sFK8BUMU3YSgAALeT2X117gVFLRjS', NULL, '2025-08-25 11:38:41', '2025-08-25 11:38:41'),
(17, 'Sihabudin, S.Ag.', '252603@guru.ujian.com', 'guru', NULL, '$2y$12$Qqs7/k7DIjBpRJYfi/xGUuYSQNOrQ1Dyxjhea8SJaDdnwnLhTTbzi', 'MdQlY7u0XGYb6MGsSjz7EEu9EzPSLdC2tqv4OY92Ddue42XVF1xgwZODzn2Z', '2025-08-25 11:39:00', '2025-08-25 11:39:00'),
(18, 'Heri Subekti, S.T.', '252605@guru.ujian.com', 'guru', NULL, '$2y$12$WJhl3SN3sSFSwOTjVagMAenrRy4/af/E8Q81d1DmXEi/5KUoXyCkW', '7ZWEcBh3xYMfc4GjzCtybxsI5dBj5pyC02oPA2NUkziYFymaq1d8qgUuCkGK', '2025-08-25 11:40:31', '2025-08-25 11:40:31'),
(19, 'Coan Alfian, S.Pd.', '252606@guru.ujian.com', 'guru', NULL, '$2y$12$5oM..Wy32CrWZW0fzmNBFuYduwv9XwS2nOjs1GpjygBBVNbCjuvV.', NULL, '2025-08-25 11:40:50', '2025-08-25 11:40:50'),
(20, 'Fajar Hanjairipal, S.S', '252607@guru.ujian.com', 'guru', NULL, '$2y$12$KLUuLkrQ7IiqlF9hMTa.ReeHhsai01edCY8bZnKm5RMr9tWSznkIq', NULL, '2025-08-25 11:41:15', '2025-08-25 11:41:15'),
(21, 'Hendra Pratama, S.Kom.', '252608@guru.ujian.com', 'guru', NULL, '$2y$12$WzhP2nr/HuIha6jRsTguKuwAJe4dEke8wpNZO8weDnWQ9NHianEDC', NULL, '2025-08-25 11:41:52', '2025-08-25 11:41:52'),
(22, 'Agus Supriyanto, S.Pd.', '252609@guru.ujian.com', 'guru', NULL, '$2y$12$/JLLuKEXD8dcx3UF/oOUJOP4VdQTRqI1FsTyFALK1ZmLco1memKe2', '92XsvGUTo86hW76AL1eOf923oSU3anCzcFTOV9mLao7rnUR38XtJtbsYbvr1', '2025-08-25 11:42:14', '2025-08-25 11:42:14'),
(23, 'Amsah, S.Pd.', '252610@guru.ujian.com', 'guru', NULL, '$2y$12$eC/g3a05BASfCv8LU4d25OrUe9LNV.q8YdEu3lOP0IoZFlUsr8a6K', NULL, '2025-08-25 11:42:35', '2025-08-25 11:42:35'),
(24, 'Irham, S.M.', '252611@guru.ujian.com', 'guru', NULL, '$2y$12$GtM25zG2mIaiXUVLkxfbMeWbUVSPwPrqDPdtLLWi1Rt7l0iyGv/1W', NULL, '2025-08-25 11:42:57', '2025-08-25 11:42:57'),
(25, 'Hendro Adi W, S.T.', '252612@guru.ujian.com', 'guru', NULL, '$2y$12$SiIvdM6pEFL2YCryGFF1R.1x3/YCQd554EZjoeMvbAP9Qw8kA53Sy', NULL, '2025-08-25 11:43:23', '2025-08-25 11:43:23'),
(26, 'Muhammad Andika Anjas S, S.Kom.', '252613@guru.ujian.com', 'guru', NULL, '$2y$12$3kN.r4MFj6a13qalPARfUuEOPM.XbYldXrtpTaG/mt/JHsoGjvu3C', NULL, '2025-08-25 11:43:41', '2025-08-25 11:43:41'),
(27, 'Alifudin, S.Pd.', '252614@guru.ujian.com', 'guru', NULL, '$2y$12$liHXkiRnUxnFjjcCnRan1.Nm5VSiEkGGtjw2sEnUrLaBpbIGc0ioq', NULL, '2025-08-25 11:44:03', '2025-08-25 11:44:03'),
(28, 'Abdul Azis, S.Pd.', '252615@guru.ujian.com', 'guru', NULL, '$2y$12$w97r6.reg2W7NT9YpPQUU.p1Jt5y1JiLkJTVxe0FADompuIGnKCt2', NULL, '2025-08-25 11:44:23', '2025-08-25 11:44:23'),
(29, 'Nurkholis, S.Pd.', '252616@guru.ujian.com', 'guru', NULL, '$2y$12$b2ooBeUQSeETnVa70rkkc.NTnp6Imf7fArRpZqhxgReJoezxt4bsW', NULL, '2025-08-25 11:44:42', '2025-08-25 11:44:42'),
(30, 'Wilda Zahra, S.Pd.', '252617@guru.ujian.com', 'guru', NULL, '$2y$12$ZOMnA4bsolTDEIWphpjIpOzQDMDeY0aqBSQYawTAqBWBfABD2BGZO', 'Oa3aKCXByBPswGr7XH0dWrq5zg5IewomBKzZ6A8abyw5xCNvCmeIzc9Adhzh', '2025-08-25 11:44:58', '2025-08-25 11:44:58'),
(31, 'Tiwi Nurul Khakiki, S.Pd.', '252618@guru.ujian.com', 'guru', NULL, '$2y$12$juDfABplx4LrYQ6ffSS3T.DCOOBnfuN1GYjoMNxotpDYuuUxQBL7m', NULL, '2025-08-25 11:45:17', '2025-08-25 11:45:17'),
(32, 'Atikah, S.Pd.', '252619@guru.ujian.com', 'guru', NULL, '$2y$12$v660Jj2XbPvhOE8h9.m8Hu7csXpfKx64rv5oXh7zNqWmsXHUMOVWm', 'udA2NiM8K0XVFlgIuttNEmOwddSxTLHcTADwCOqBOyUeAV12QRweyvARThxE', '2025-08-25 11:45:34', '2025-08-25 11:45:34'),
(33, 'Fitriyani, S.Pd.', '252620@guru.ujian.com', 'guru', NULL, '$2y$12$.dp0.D5FoejpC95d.7emyu68kOn8ocORiWAfM.LhO8sjI6mkdLBNS', NULL, '2025-08-25 11:45:56', '2025-08-25 11:45:56'),
(34, 'Bagus Hidayat, M.Kom.', '252621@guru.ujian.com', 'guru', NULL, '$2y$12$lyg4OhkZB.hO27.l/TPRvuRm8LMU/c.MIGt86pCmOGgkWmy6GlXaG', NULL, '2025-08-25 11:46:13', '2025-08-25 11:46:13'),
(35, 'Faradilla, S.Pd.', '252622@guru.ujian.com', 'guru', NULL, '$2y$12$0iL.LUfaHaMSKg0otJQ2q.s4VxJ3sGrF.9Ryuq.paaLXIBQkozkGm', 'dWzZG0bU4wcYn4xlYquAUI0gpncjnbb8NuOqQSgVIECLUxyW7vsZbiHHOkon', '2025-08-25 11:46:33', '2025-08-25 11:46:33'),
(36, 'Halimah, S.Pd.', '252623@guru.ujian.com', 'guru', NULL, '$2y$12$WCftVKshidkg3pc3KUGKhe41nG8ALB3wziJJLfIqFfvSfyel4pEz.', NULL, '2025-08-25 11:46:52', '2025-08-25 11:46:52'),
(37, 'Junaidi, S.Pd.', '252624@guru.ujian.com', 'guru', NULL, '$2y$12$O3CUClfQ8V9jqP0r7ILWEeBvCMZrRhpRV2WPeb54u4G1AcLmS4owu', NULL, '2025-08-25 11:47:10', '2025-08-25 11:47:10'),
(38, 'Maulana Yoga Wiyananta, S.Kom.', '252625@guru.ujian.com', 'guru', NULL, '$2y$12$3vdRN6aAISIBkhSNPL77vetxAQ/FYUSDS412clcd3lXfWrzP2htyq', 'BuOghN4g45oswkoqgBRmANtQUeUStlI4fuZ8s8EkJqfT1DROqgbFs9a2qnCv', '2025-08-25 11:47:28', '2025-08-25 11:47:28'),
(39, 'Suhenda, S.T', '252604@guru.ujian.com', 'guru', NULL, '$2y$12$1A2Q037klTcMN211E.iBkenr37dFfJOYMOOmj7h.iP4qdBWtj6vF6', NULL, '2025-08-25 16:19:47', '2025-08-25 16:19:47'),
(41, 'ujang', 'ujangg@gmail.com', 'siswa', NULL, '$2y$12$4bVTcuLGlio8H.a58wPiO.A.E1vpTqp4a7uYNvs.GTGIenitCFWPS', NULL, '2025-08-26 04:23:51', '2025-08-26 04:23:51'),
(43, 'Achmad Andhika Ardhana', '20251002@ujian.com', 'member', NULL, '$2y$12$T/niSynoAdGyzul4OBvpeexhb24rApRU6d742topHKNzf2f9u6W/i', NULL, '2025-08-26 05:10:16', '2025-08-26 05:10:16'),
(44, 'Ahmad Fadil Ramdhani', '20251003@ujian.com', 'member', NULL, '$2y$12$LhR8iJtu3obQpOVSE8hqTuooFzlvjbCNvAsXr9WjUGmt1JwNzds7G', NULL, '2025-08-26 05:10:17', '2025-08-26 05:10:17'),
(45, 'Akhmal Maulana', '20251004@ujian.com', 'member', NULL, '$2y$12$E9VSLNJORI7fw9062KKaRe/NWR3FK4WdeWV8skrRRuA/lNyk5aXUu', NULL, '2025-08-26 05:10:17', '2025-08-26 05:10:17'),
(46, 'Alif Ibrohim', '20251005@ujian.com', 'member', NULL, '$2y$12$m6d4UbxrdsxkW0U3c8a1seE5rWzrL1IeEkUrdzSEn4rv.X7pj1nb2', NULL, '2025-08-26 05:10:17', '2025-08-26 05:10:17'),
(47, 'Andika Pratama', '20251006@ujian.com', 'member', NULL, '$2y$12$tY3XiLrUQAo6sNLZfq/R2.s64Dk59lligbxjLO/LzT7NZtsRWzyme', NULL, '2025-08-26 05:10:17', '2025-08-26 05:10:17'),
(48, 'Aulia Zakia', '20251007@ujian.com', 'member', NULL, '$2y$12$ICzsFZSiOp.7k4eXgGxQoe8dKONi6CvHmrfXh7X2I/z2cGHUTg6P.', NULL, '2025-08-26 05:10:18', '2025-08-26 05:10:18'),
(49, 'Fadhil Adiansyah Yasir', '20251008@ujian.com', 'member', NULL, '$2y$12$Qvntm3.mhXPesxAcgbPYj.t8gSWYdHZvsghbZ1SHOWal4/xCs8xl.', NULL, '2025-08-26 05:10:18', '2025-08-26 05:10:18'),
(50, 'Fathan Aunillah Fa\'Aza', '20251009@ujian.com', 'member', NULL, '$2y$12$iYOtn5ZJcu.H9B92u5Ze3u7oY3nGX7kUiLSex/u9H7x0x5gzipfSO', NULL, '2025-08-26 05:10:18', '2025-08-26 05:10:18'),
(51, 'Giri Akbar', '20251010@ujian.com', 'member', NULL, '$2y$12$o.4a8804OOOxC3fKaJTi/OYMV7mvPZ02K9g4lq9/p6EdC9mKO2M5a', NULL, '2025-08-26 05:10:19', '2025-08-26 05:10:19'),
(52, 'Kamal Ibrohim', '20251011@ujian.com', 'member', NULL, '$2y$12$KjGQBF8LLjIV7b.uhBhunuV3w/n8w7C..C9QS8DN4yXuAA7iu59IK', NULL, '2025-08-26 05:10:19', '2025-08-26 05:10:19'),
(53, 'M Zaosan Furkron', '20251012@ujian.com', 'member', NULL, '$2y$12$5kpNeyb7ZQ.VsNNFjMQmHuGk5X5jMSjxdFeydQFJXWdloOJt062la', NULL, '2025-08-26 05:10:19', '2025-08-26 05:10:19'),
(54, 'M. Fatih Fadillah', '20251013@ujian.com', 'member', NULL, '$2y$12$zWiTJaEv7imJS6cmvyxYRuQ.gQHJu1QsD8c8PGVqpYhlJ9T8yyKMu', NULL, '2025-08-26 05:10:19', '2025-08-26 05:10:19'),
(55, 'Maulana Rezky. F', '20251014@ujian.com', 'member', NULL, '$2y$12$Rzfa.UUHwkLHBP9N7UqziOTjFNikX1vMayGKcEWy7E19Jpc1T/PMS', NULL, '2025-08-26 05:10:20', '2025-08-26 05:10:20'),
(56, 'Muhamad Fahri', '20251015@ujian.com', 'member', NULL, '$2y$12$bg0nRfu8ztlIqjgZIBHhPuywhClO1kDRZDi3YLunxmMbAHbr.9Dk.', NULL, '2025-08-26 05:10:20', '2025-08-26 05:10:20'),
(57, 'Muhammad Asrori', '20251016@ujian.com', 'member', NULL, '$2y$12$3cJJjjhwZ0X.4ocn2aOBduo6u4zrs/ENjmsxR2YIwj0LKi9pXMiPm', NULL, '2025-08-26 05:10:20', '2025-08-26 05:10:20'),
(58, 'Muhammad Hadad Arsy', '20251017@ujian.com', 'member', NULL, '$2y$12$V5.E8d19W4h/f7UFUupZgOLus17Leryc1BGMIrQXwwkTQz30TNVMK', NULL, '2025-08-26 05:10:21', '2025-08-26 05:10:21'),
(59, 'Muhammad Iqbal Nugroho', '20251018@ujian.com', 'member', NULL, '$2y$12$6Kq79wG6eSftDmjUAv/EMO0CTDpLPTccBHE8jpeeK4HGHMxBOwLRG', NULL, '2025-08-26 05:10:21', '2025-08-26 05:10:21'),
(60, 'Muhammad Rafli Ar', '20251019@ujian.com', 'member', NULL, '$2y$12$lPAD7sgktdWT6e9EL4saUu8K0y.3QrUgrlceNKFvnw2p./20BXvwG', NULL, '2025-08-26 05:10:21', '2025-08-26 05:10:21'),
(61, 'Nisvi Ardila', '20251020@ujian.com', 'member', NULL, '$2y$12$aiTAM.vYRWQXpAiWM.Y6h.vuUGCCiLNZjd7IIizyvc3kgFsx9sr/m', NULL, '2025-08-26 05:10:21', '2025-08-26 05:10:21'),
(62, 'Raditiya Permana', '20251021@ujian.com', 'member', NULL, '$2y$12$BmtkYtEqpIZ8WB67xZ83Oeq.F3vqy2x8HNJgEUaliYPOZIyUfw4rK', NULL, '2025-08-26 05:10:22', '2025-08-26 05:10:22'),
(63, 'Rendi Nauval Maulana', '20251022@ujian.com', 'member', NULL, '$2y$12$6kCiuBVTZ44AdNFuwynB6ebYiR6dxj3gNFNs5MfBeq2.MxImBAO4u', NULL, '2025-08-26 05:10:22', '2025-08-26 05:10:22'),
(64, 'Rizki Akbar El Mughuni', '20251023@ujian.com', 'member', NULL, '$2y$12$oLTt/rx/VswY3wtray.kFOsI.5Y1xBPvmdcH.ExcaxiJ4fCQdVKy2', NULL, '2025-08-26 05:10:22', '2025-08-26 05:10:22'),
(65, 'Tri Andhika Prasetya', '20251024@ujian.com', 'member', NULL, '$2y$12$gZirCAyD7YdVfA9IERsuU.Xyxj0BLNJrlHRRgitNTrPCrXa68eM/G', NULL, '2025-08-26 05:10:23', '2025-08-26 05:10:23'),
(66, 'Abdul Latip', '20251025@ujian.com', 'member', NULL, '$2y$12$7bqAMhFH5ANgoEhyZmYBJePKNYUODMaMEMBqtCWQ6unpdr3NJzf9i', NULL, '2025-08-26 05:10:23', '2025-08-26 05:10:23'),
(67, 'Adenxcel Pratama', '20251026@ujian.com', 'member', NULL, '$2y$12$BA8/6kYJSN4GfkskIUoUZO4ljqNcIVLoUSGozO1FzRkeGFAo0Hsne', NULL, '2025-08-26 05:10:23', '2025-08-26 05:10:23'),
(68, 'Ahmad Rhido', '20251027@ujian.com', 'member', NULL, '$2y$12$e7k3x2yzQJRkVpbSujINje/4Wno3cCZOHqEhA9uY3qE0gSL99/mDu', NULL, '2025-08-26 05:10:24', '2025-08-26 05:10:24'),
(69, 'Andarias Muhammad Idris', '20251028@ujian.com', 'member', NULL, '$2y$12$I6WHqOD/DnGVa4l/ZKTBl.mmTq6QFhBhJCHuMJWKU.Q9UKaGZLs6q', NULL, '2025-08-26 05:10:24', '2025-08-26 05:10:24'),
(70, 'Apdillah Z.M', '20251029@ujian.com', 'member', NULL, '$2y$12$6GqAqmcI0kiBjimWU3h1BuOl.uchf.51fdzYb.XpwkLz5NhXaGU3K', NULL, '2025-08-26 05:10:24', '2025-08-26 05:10:24'),
(71, 'Doni Fadilah', '20251030@ujian.com', 'member', NULL, '$2y$12$Q3bJtZ8A4u9kPFcclNnXduiJZ.ir.bac3R/K7MUAwot4pqhjdRcb.', NULL, '2025-08-26 05:10:25', '2025-08-26 05:10:25'),
(72, 'Farhan Kamilan', '20251031@ujian.com', 'member', NULL, '$2y$12$SQy9.KJne6Yk0IfBYpyYmO6hdMR0.MEz5LOkxJFK1jXICfWBpYO1i', NULL, '2025-08-26 05:10:25', '2025-08-26 05:10:25'),
(73, 'Fauqi Nuron', '20251032@ujian.com', 'member', NULL, '$2y$12$x4/CQhu9khjrbPPdMDnJ0ueV7TwCkgFctpZOyrRzPjc26T8a73H16', NULL, '2025-08-26 05:10:25', '2025-08-26 05:10:25'),
(74, 'Jhemy Andreas', '20251033@ujian.com', 'member', NULL, '$2y$12$21wGTaYPdsdojbatd.4csOJ.e.h283C2C/ybZK5RB6ELesw3Rcila', NULL, '2025-08-26 05:10:25', '2025-08-26 05:10:25'),
(75, 'Kamil Rulyanda', '20251034@ujian.com', 'member', NULL, '$2y$12$6ifV5DFm8CM9qCYvux2nfeJimGafQPPCem.IyJTT092peyuJ8dqFq', NULL, '2025-08-26 05:10:26', '2025-08-26 05:10:26'),
(78, 'Muhamad Sarif Hidayat', 'muhamadsarifhidayat69@gmail.com', 'siswa', NULL, '$2y$12$S29L6ll.LxXM1Ts.2CmTMOcakqV31nQKXwtV7N4yO6U/O2.CeyMDq', NULL, '2025-08-26 06:38:06', '2025-08-26 06:38:06'),
(79, 'Muhammad Fardan AlKaisya', 'dhaan3952@gmail.com', 'siswa', NULL, '$2y$12$THpERcs89rH0byOw/.A6.eRKKYpc5AWy9ksj56DyqNf/b1cmf7pxi', NULL, '2025-08-26 06:38:18', '2025-08-26 06:38:18'),
(80, 'ELANG SATRIA NUGROHO', 'elangsatrian87@gmail.com', 'siswa', NULL, '$2y$12$J8fMQkXsQ9EjzKbOkGDioOw9YdW1DdwTeM.7piDoBaVFLl.PLDH1.', NULL, '2025-08-26 06:38:29', '2025-08-26 06:38:29'),
(81, 'Cristiano ronaldo', 'cristianoronaldo85393@gmail.com', 'siswa', NULL, '$2y$12$v3JIcfeJPbOVrBe8XKBRT.JROoyIQ6YMJn8WOk1X.C/uo9Q1m6wJK', 'E7jeMajuQYspzDJa3ibi8sIXZuFIIkC0ySbH2vx7sLB0egGvisNVQScyr3QB', '2025-08-26 06:38:37', '2025-08-26 06:38:37'),
(82, 'attar al keysan', 'alkeysanattar@gmail.com', 'siswa', NULL, '$2y$12$J/xjXedUKTiRDpSQqFW2ZOMkWagDUCkcD6NKwQ21hxq7D63XDcs0.', NULL, '2025-08-26 06:38:53', '2025-08-26 06:38:53'),
(83, 'Satria nur fadila', 'fromjeger8990@gmail.com', 'siswa', NULL, '$2y$12$1772TK2GjvUeKjwmR0frB.Gq4YSaoCHhCYxM9GJ5nAxNoPgVobedC', NULL, '2025-08-26 06:38:56', '2025-08-26 06:38:56'),
(84, 'Siti Uswatun Chasanah', 'sitiuswatunchasanah151@gmail.com', 'siswa', NULL, '$2y$12$0k4kd1dyCiV3majyzoSRh.uTDiFxet6k2CfG1B/l5c8Hc/HRoXNaW', NULL, '2025-08-26 06:39:20', '2025-08-26 06:39:20'),
(85, 'Muhamad Rafit Azra Supriadi', 'rafitazrasupriadi@gmail.com', 'siswa', NULL, '$2y$12$lpksvjD.6VtJ0kFElNPRQ.8QkRAlIcnqWhdT3fFGgQ6YPLJL8pEUe', NULL, '2025-08-26 06:39:24', '2025-08-26 06:39:24'),
(86, 'attar al keysan', 'atarkeysan@gmail.com', 'siswa', NULL, '$2y$12$praPpFZ9RkMmyQWGVu/VdO3EtfEP50Rg6TE2UctEK.fJFgH0f/uTW', NULL, '2025-08-26 06:39:32', '2025-08-26 06:39:32'),
(88, 'Dzaki Reja Pratama', 'akunpraktekti@gmail.com', 'siswa', NULL, '$2y$12$kHBr8l2Sws0Rak02cZBSsefVsjqrvPwHoWOxBOhjuU8o9nvcW09ki', NULL, '2025-08-26 06:39:37', '2025-08-26 06:39:37'),
(89, 'Febriyan Syah putra', 'febriyan2611@gmail.com', 'siswa', NULL, '$2y$12$hX0MnaICAE9vBmGjYwIo1eNnqzfcO3v0AMU0EQqGNK/XU9PCdz4i.', NULL, '2025-08-26 06:39:42', '2025-08-26 06:39:42'),
(90, 'Nasywal Raditya Alfarezi', 'nasywalraditya@gmail.com', 'siswa', NULL, '$2y$12$5vd/j9bsKD82JxSiN5FUXebb486Ed.O4cik8CyhGmQd4BS80vDwfG', NULL, '2025-08-26 06:39:48', '2025-08-26 06:39:48'),
(91, 'Gilang Apriyanto', 'gilangapriyanto049@gmail.com', 'siswa', NULL, '$2y$12$zSlZ3sAzwPWkHfoDX8I5qO0Xj/uSsWbNCqKsCEi8GePbRlxKEybqS', 'ZtSUXzqAjELB9q5LtQfnKSQUBOeWi1WALLKw1mPfhCvKOlARR6LbmSoD3GUl', '2025-08-26 06:39:49', '2025-08-26 06:39:49'),
(92, 'Dewi Putri Kurniawati', 'dewiputrii856@gmail.com', 'siswa', NULL, '$2y$12$C/V3FYmEUHxqp1v784RrJ.BNEoo58FiVFNO4Eq551UWDBBGfho4TW', NULL, '2025-08-26 06:39:54', '2025-08-26 06:39:54'),
(93, 'Nitha Ramadhani', 'nitharamadhani569@gmail.com', 'siswa', NULL, '$2y$12$2Yx5pN/od5/PgnkISWTt8OAkDKC9iNp2AyCRM4innKokI76/0frY2', NULL, '2025-08-26 06:39:54', '2025-08-26 06:39:54'),
(94, 'Grace Kezia Manuela', 'gracekezia1801@gmail.com', 'siswa', NULL, '$2y$12$7jlOSfYJuXiN763RPfUk6OE7AJh4O1SVQjIq.4TQKI6/eLbzX6X32', NULL, '2025-08-26 06:39:56', '2025-08-26 06:39:56'),
(95, 'Aby surya', 'syiffzyy@gmail.com', 'siswa', NULL, '$2y$12$JHNwASXovWpAPB89lyxABurvPSQm4d/fR2qSqpcCmATZCiWr2Z6fC', NULL, '2025-08-26 06:40:00', '2025-08-26 06:40:00'),
(96, 'khesya al zahra', 'khesya187@gmail.com', 'siswa', NULL, '$2y$12$YgrtrKge440v2AXwKnYQX.vIAnuRfgMsg1k2J0ZlsegsK5IqUr/ga', '7wwxSdO2Wxx3v0q5z5QaegWgYDR7vfBJ97EGfni5RwtjJC9yssz78SunjYfM', '2025-08-26 06:40:13', '2025-08-26 06:40:13'),
(97, 'Satria nur fadila', 'satriaapri906@gmail.com', 'siswa', NULL, '$2y$12$tIu1jHB7SsN8hCWOUnaa2.NznEjx/v0uAe/LGyr12A6xvTYEB2CPW', NULL, '2025-08-26 06:40:13', '2025-08-26 06:40:13'),
(98, 'Mufid ali akbar', 'pengz3078@gmail.com', 'siswa', NULL, '$2y$12$bj3p8UA8Z9DWyurBhjgsRe455D5WKkweUe3VURcgMQbmI9q5pY4T.', NULL, '2025-08-26 06:40:13', '2025-08-26 06:40:13'),
(99, 'Zaenirahmat', 'zaenirahmat16@gmail.com', 'siswa', NULL, '$2y$12$uJKBTwAT32Xp916H9t7GMO5X4HjWNse1xapR8ReCaoPJG1z9lY926', NULL, '2025-08-26 06:40:20', '2025-08-26 06:40:20'),
(100, 'M.Raihan Alfarizi', 'mraihanalfarizi434@gmail.com', 'siswa', NULL, '$2y$12$4w8YboEyjcXgg0BrbGGcmeWAs5kaxHbfafz.qHlqFaj1BtOAuiiBO', 'jIjoer5hauEat24EXsUEVDl0ijM8UevtdAxqhmw0RB404kOYwsWY70gaa3Fo', '2025-08-26 06:40:23', '2025-08-26 06:40:23'),
(101, 'Muhamad Fadly M.', 'muhamadfdly@gmail.com', 'siswa', NULL, '$2y$12$n6tj53TWHlNe4cFXP947/.xQqL.vh8ObE4YlREYywOPwSv8id.t..', 'JzbAKjzerUEO0gRDZugNx1IbjSiS1XOVrjd6VbQMVLIKi40K5YpEQE3izg6v', '2025-08-26 06:40:25', '2025-08-26 06:40:25'),
(102, 'Ravi Alfarizi', 'ravialfarizi9@gmail.com', 'siswa', NULL, '$2y$12$9HXuKfCZZ99HRYiTa10.ketKX248EEcY4Z/l5whR/ogB39ZBaWlXu', NULL, '2025-08-26 06:40:29', '2025-08-26 06:40:29'),
(103, 'Satria nur fadila', 'udin99@gmail.com', 'siswa', NULL, '$2y$12$eaoj21knkmvcCUIER5gh/uQrYDy1IbhtlHD.rnLDDQTpZIz6bTrj.', 'vbRnE6Uao1S2kkF5eOnoHqMyb5J0QJxyL7e9zfgQ3mZNH37HvCHvDBAuh6bO', '2025-08-26 06:40:30', '2025-08-26 06:40:30'),
(104, 'Abdul Azis', 'azisabdull2217@gmail.com', 'siswa', NULL, '$2y$12$.pka0kzTZhGdAqT.BfB8secIGoeOr6UCVhEYOkFchAcM4PjfF8oEq', NULL, '2025-08-26 06:40:48', '2025-08-26 06:40:48'),
(105, 'Heikel Ramadhan', 'heikelramadhan99@gmail.com', 'siswa', NULL, '$2y$12$gfGFyTeEwy2fsTs/NCedCuNpuoIbz5opumaNUyl/luCUsyVu5D42i', 'pmRPeSqNYuKMDSgOt2m12eWPI8PtEcCeEevFlUcggEwQHMs8DdND0TbYCJmj', '2025-08-26 06:40:56', '2025-08-26 06:40:56'),
(106, 'satria putra pratama', 'satriaputrap579@gmail.com', 'siswa', NULL, '$2y$12$HYkMTQ4tfiSzlhv.hwoIGeoySd67pSQQLgbQ22TKRGiqzLNv0AdNq', NULL, '2025-08-26 06:40:57', '2025-08-26 06:40:57'),
(107, 'Julian ibrahim', 'baimjulian93@gmail.com', 'siswa', NULL, '$2y$12$8tN23NUg4HFPJZmLYOWTOuhTEe8DNPwi6/X6UtT1jYyhZIpsiYz1u', NULL, '2025-08-26 06:41:00', '2025-08-26 06:41:00'),
(108, 'Laella Agustina', 'laellaagustina68@gmail.com', 'siswa', NULL, '$2y$12$QdXLuWYEQg9is6VP/bBY5OAp1802oc6bFJBrIYm9ldHFNr5lPADFK', 'VJl4ufqlsgD6TAA1Ozj37lZ9phq8glTtwegtnpP9GqvWEhldHuuHZCku5nSz', '2025-08-26 06:41:06', '2025-08-26 06:41:06'),
(109, 'Firdaus Nufal. A', 'firdausnufalanfasa@student.ac.id', 'siswa', NULL, '$2y$12$tetgCxFuzThww1cTKs9iIedDRgOUphNSbMdJeNGmxiVtXF0zkY3h6', NULL, '2025-08-26 06:41:08', '2025-08-26 06:41:08'),
(110, 'Muhammad alsufi evander damares', 'evandamares35@gmail.com', 'siswa', NULL, '$2y$12$pmfL7hGI1QqeVfIGS/R83ejbhF.INYBdXZ2KXJGjq3wG59ZXiDGly', 'bDcQ6MxnZU2ftxgWFitYyLEkpgZClCuU9tq7ESg4jrwAQLJGYMwcB3NCgWcs', '2025-08-26 06:41:17', '2025-08-26 06:41:17'),
(111, 'Muhammad Vicky Al Ghazi', 'muhammadvickyalghazi@gmail.com', 'siswa', NULL, '$2y$12$oojn.McEkX8BycDCYIgGxeVlCHJ.JpykDFTzFRdK2XzOtwY2OSSlK', 'pErbuKT1AvRSm6w2LfeaPTnHrS6G2zJuVIe0h9GJo3FsIYz2xy3CZrMJ68PF', '2025-08-26 06:41:41', '2025-08-26 06:41:41'),
(112, 'Edelweiss Arahab', 'edelweissarahab684@gmail.com', 'siswa', NULL, '$2y$12$SE3wPXp/ODhLGpa/CbhLEe/YFUERHCFgKzz71184A3QqyDYwCc1KG', NULL, '2025-08-26 06:41:50', '2025-08-26 06:41:50'),
(113, 'Rio Apriansyah', 'rioapriansyah3004@gmail.com', 'siswa', NULL, '$2y$12$GtuvbN6p/hHVE5TPYVpj9..tg4Bi8/awEKYtWD9gTQqWQMFARPa..', NULL, '2025-08-26 06:41:59', '2025-08-26 06:41:59'),
(114, 'satria putra pratama', 'skyluxx05@gmail.com', 'siswa', NULL, '$2y$12$fTlz/CChouxud8uY.G7GRe/P2m9POdBT8vUibblUnkH7P/TaHD3Na', NULL, '2025-08-26 06:42:11', '2025-08-26 06:42:11'),
(115, 'RM Rhaditya Maulana P', 'rhadityamaulanaputra@gmail.com', 'siswa', NULL, '$2y$12$vTtbmRcyEDNn.aMcgYqaX.J8XixGdUTdYp5iqKrRgB2M3pbJCWGGu', NULL, '2025-08-26 06:42:18', '2025-08-26 06:42:18'),
(116, 'setihartadiwijaya', 'setihartadi@gmail.com', 'siswa', NULL, '$2y$12$Jgj5OqMXL4SUDjwYetNB0efpcNdaQyk2lKnXyNL7QgX1J4FH19rTS', 'qg4U1yULOc05j2JcrYEaXu9miH2wR5Jv65GoWK0Z9HMUAIfDvS4i5tPb9ZqP', '2025-08-26 06:42:56', '2025-08-26 06:42:56'),
(117, 'Naufal Thihami', 'naufalnaufalthihami@gmail.com', 'siswa', NULL, '$2y$12$srp7S/fIW6z3ywfb/eultuG/J9dRHcderbXBSOM3MjaAYdJo3Ue1q', NULL, '2025-08-26 06:43:15', '2025-08-26 06:43:15'),
(118, 'Ghifarel shulton', 'ikaanajirah@gmail.com', 'siswa', NULL, '$2y$12$M9DTJFfhuLcl5MXGtH1FbOljvMXMketVodGTFr1FjjMciiCTl7qsK', NULL, '2025-08-26 06:43:23', '2025-08-26 06:43:23'),
(119, 'dimas aril dwi arjuna', 'dimaseasy.de91@gmail.com', 'siswa', NULL, '$2y$12$3JhUNZm/FRs1kLV/jh37QeaQKx91fb.a/m4i2zRUkCVexF5rPin1O', NULL, '2025-08-26 06:43:26', '2025-08-26 06:43:26'),
(120, 'astri sapitri', 'astrisapitri31@gmail.com', 'siswa', NULL, '$2y$12$S5Eb9l8T8HU7ptOCVkXVOeVMLrgjW/rwrsnXHtat7ljFxPRBt5gBW', 'QORTWlRT6XBIFgBAK7NzYNQn0L7L00NBYfyxU3mA93Sz6CF0UoNeXm8ZaV5q', '2025-08-26 06:43:28', '2025-08-26 06:43:28'),
(121, 'amelia putri fauziyah', 'faufauziahamel01@gmail.com', 'siswa', NULL, '$2y$12$OHU3b0146U9CHCnld7jOTO6ZDJTbmFWrm9OMp0aVxnt9lhTDN5Mdi', NULL, '2025-08-26 06:44:09', '2025-08-26 06:44:09'),
(122, 'attaralkeysan', 'keysanattar@gmail.com', 'siswa', NULL, '$2y$12$BGeHyuycOGZ5dxXt0GLoN.9Qwox13Pl4GrmYmLv/7nK7u3t9qEJya', NULL, '2025-08-26 06:44:17', '2025-08-26 06:44:17'),
(123, 'Ghifarel shulton', 'ghifarel@gmail', 'siswa', NULL, '$2y$12$7BGLJ4iUuIgTd5NcmCt6r.7vzwbnw2gnRfOgolY5Tf6plV6dltX5W', NULL, '2025-08-26 06:44:19', '2025-08-26 06:44:19'),
(125, 'Manda Febriyanti', 'mandafebriyanti170208@gmail.com', 'siswa', NULL, '$2y$12$qys6k5KYpRvpM/FON0xHgube65mflSDT28VC6ICgKy5Q68lQd8xwm', NULL, '2025-08-26 06:44:24', '2025-08-26 06:44:24'),
(126, 'nouval', 'nouval@gmail.com', 'siswa', NULL, '$2y$12$K1C/l9NphkmsDcIowIsf3OeBOJ7F1IP5K2tyU2iFFOmhXxGky65OW', '38nrgGTW4XNPLpy5U8boyt3a4Y61NAUMkL4nXAZNmoPKt1yPD1Qhq2H4uTVw', '2025-08-26 06:45:40', '2025-08-26 06:45:40'),
(127, 'Ghifarel shulton', 'goenahai@gmail.com', 'siswa', NULL, '$2y$12$8/PmuEeJqnUsKprlkmaCVeXvIvd/mbk4.36QbHm.rKfAZYgZLJR4u', NULL, '2025-08-26 06:45:47', '2025-08-26 06:45:47'),
(130, 'M Hafizh s', 'hafizsaputraa@student.ac.id', 'siswa', NULL, '$2y$12$qi7QgaEcnUXiovgjWqR2FeXkrILQ6Hdle20W8hEJOS7Wnjy49infu', NULL, '2025-08-26 06:46:35', '2025-08-26 06:46:35'),
(131, 'Manda Febriyanti', 'mandafebriyanti@student.ac.id', 'siswa', NULL, '$2y$12$mpa3FB9O9S83sPy6NgNzJuWKtFRY/jZ88U7g2QIgimcoZkrYez.3u', NULL, '2025-08-26 06:48:04', '2025-08-26 06:48:04'),
(132, 'Arzy Khairil nizam', 'arzykhairilnizam@gmail.com', 'siswa', NULL, '$2y$12$u5jZXKn3FVKQiCirhpQVD.LboNT.B101/Qx/8nJwb0xWxd497wWUi', NULL, '2025-08-26 06:48:21', '2025-08-26 06:48:21'),
(133, 'Gilang Ramadan', 'realdorass7@gmail.com', 'siswa', NULL, '$2y$12$16b3MX3UCSB3f7NK.YJQI.DZf.yrGllzaTomv0i9lh8IF13S8yns6', NULL, '2025-08-26 06:48:32', '2025-08-26 06:48:32'),
(134, 'Nabil Muzakki', 'nabil60700@gmail.com', 'siswa', NULL, '$2y$12$hrob4gj0A24jl0YzWaso0uyXuL8u7XGeTBUTZsWe3JfEEvkj1j4Cm', NULL, '2025-08-26 06:48:42', '2025-08-26 06:48:42'),
(135, 'Manda Febriyanti', 'mandafebriyanti@gmail.com', 'siswa', NULL, '$2y$12$zxYVCNP/wUpvO1dig13LZuwbN0eAPC..KmVvUj4kxCNGWKd3WU5D6', NULL, '2025-08-26 06:49:10', '2025-08-26 06:49:10'),
(136, 'al farid aqhila pratama', 'alfaridpratama322@gmail.com', 'siswa', NULL, '$2y$12$.o8MMns2XrERgCBEtdkyY.g4h8BUFqo2oPl0ItJEIezsSmPbGmwfu', 'Cg3oMMhF1M59V31BYy5QIn004j1BYv4fXuxtcS7qDq5NQEAjoaFvvj1cvgDM', '2025-08-26 06:49:52', '2025-08-26 06:49:52'),
(137, 'Manda Febriyanti', 'mandafry@gmail.com', 'siswa', NULL, '$2y$12$ISU7il0FiY47KABf5WwF5eN9TbniUAYkZsRshEPu/GIkjsbasSuDO', NULL, '2025-08-26 06:50:14', '2025-08-26 06:50:14'),
(138, 'Gea Farasya', 'gemciii@gmail.com', 'siswa', NULL, '$2y$12$4ea3ex/Z4ZdelPdotG4PI.PBaloa5CZlhUWJ4oi1bjyZmgdTxH5jS', NULL, '2025-08-26 06:50:32', '2025-08-26 06:50:32'),
(139, 'laura cahya yusilva', 'racaaa1125@gmail.com', 'siswa', NULL, '$2y$12$pWh4sg95k5gjuTa9J4uMBu0mj4483.XgcaKEt/rnXnkR4.eOKE3lC', '9Rfz2HXkKUs0nzQJ57lGS8JiJ1c8PeH9H2dY6xS9rxqhWBTPgSYsZCuj9OaQ', '2025-08-26 06:55:00', '2025-08-26 06:55:00'),
(140, 'Siti Uswatun.c', 'sayaana2801@gmail.com', 'siswa', NULL, '$2y$12$3PTvNWDwpUWQzl01AF7i/uKVUo16ZDZXJ3MW5NuBaHKZCu4TgI.uC', NULL, '2025-08-26 07:33:06', '2025-08-26 07:33:06'),
(141, 'uli', 'uli@gmail.com', 'siswa', NULL, '$2y$12$kxwZP/P48iTECmSAgl2bCOBmKIo2SOuO98hiqM793ldBNNms.MjYa', NULL, '2025-08-26 08:09:59', '2025-08-26 08:09:59'),
(142, 'Daysaq ramadan', 'daysaqramadan74@gmail.com', 'siswa', NULL, '$2y$12$iAvRbO54nDyfJkM8f71xL.xuK2dREh/084i2L2aucga/MY1KcrUrO', 'CrNI1eY56sR5bCdfX4YDQ5y9HpnyNot4pxyft3xdbdLsWfLdpfhZbB6Ben1x', '2025-08-27 00:25:49', '2025-08-27 00:25:49'),
(143, 'Sihab Badawi', 'jujusamsul24@gmail.com', 'siswa', NULL, '$2y$12$ABW8FEzf8ka9bTs.eMO4sODilWe/etX122Y8JRcvvAu2UqifNsu.y', NULL, '2025-08-27 00:27:23', '2025-08-27 00:27:23'),
(144, 'Dika Damenta Rorimpandey', 'ddamenta@gmail.com', 'siswa', NULL, '$2y$12$IgGnRzZX6d7qRqTAcucF0eHtKSoreO2gsN0KRzN3lvnJGsx4Q0Xie', 'sRFlZwI2g2EqjS7SrIVfZJ2P8tAopyGgspT6IGezowGDXyHalJ83PeiRRr2l', '2025-08-27 00:28:07', '2025-08-27 00:28:07'),
(145, 'Nizam Hasbi', 'nijamhasbi198@gmail.com', 'siswa', NULL, '$2y$12$ZvjirlVtdj.qXwNvmhEMqOr86xQMVtn6ONFVPcHSzrd1rVvKliQmq', NULL, '2025-08-27 00:28:26', '2025-08-27 00:28:26'),
(146, 'Faiq iqbal', 'semuttempurmerah007@gimail.com', 'siswa', NULL, '$2y$12$oalSn9ZdPjU3Txvel1gg9eCpuJjwRY7BNHBvstkzT4Trsj7Eo5YTu', NULL, '2025-08-27 00:29:01', '2025-08-27 00:29:01'),
(147, 'FAUZI FADHRUL ROCHMAN', 'fauzifadhrulr@gmail.com', 'siswa', NULL, '$2y$12$md8fcFjn/nMGPr4Y.0sWAO7yVUFUa4W90dcNioGYnt8LKDQgxxm/q', 'h6Y48pVAkgDwFENIMkp8SC2Y1IsACPhkHl158q6a6NKbHYx53lziP138K6El', '2025-08-27 00:29:01', '2025-08-27 00:29:01'),
(148, 'Gilang Praditha', 'gilangpraditha1@gmail.com', 'siswa', NULL, '$2y$12$T/VDBom7WfrD483/IkAZQ.0hGSF/y74pPqA/qvt6UASz0u1MlkEjm', NULL, '2025-08-27 00:29:01', '2025-08-27 00:29:01'),
(149, 'Radithya', 'radithyairsyadamali339@gmail.com', 'siswa', NULL, '$2y$12$lv0nnlxHk.9hyIrGu4RUReskCmff/r6ZwnwalXiBJocPVTXd9qlAC', NULL, '2025-08-27 00:29:08', '2025-08-27 00:29:08'),
(150, 'Raihan fadila suhatman', 'raihanfadila602@gmail.com', 'siswa', NULL, '$2y$12$RIcTPsSQGzEENa74gebFfONfwUsXk1uA/DRrKoLiVaHDOSBzr/qP6', NULL, '2025-08-27 00:29:22', '2025-08-27 00:29:22'),
(151, 'Linggar Septya Ramadhan', 'septyaramadhanlinggar@gmail.com', 'siswa', NULL, '$2y$12$FCxaDUjg0HT/kGPtFH6Oq.oxnCURWpyTnJRpt0nQ4gSZPTzqYlOMm', 'u2SXUTcvRMs2nL2TZFHU9s3u8yAlIhQEuxRJfv8MHgAgCrFUtUfXH37bA9ae', '2025-08-27 00:29:24', '2025-08-27 00:29:24'),
(152, 'sahdan nasir zein', 'sahdannasirzen@gmail.com', 'siswa', NULL, '$2y$12$aS.T1dyFyeBWm774H0wOBOZL4OZqfk4FkeLZ..xQgKi4Y7J/Koexu', 'w9BXKtgJJcatfYPmH9pFuK5AuTYFly3NvHvxRb2zajgTKGnvYVT7EvblJzub', '2025-08-27 00:29:25', '2025-08-27 00:29:25'),
(153, 'badarrudin febriansyah', 'badaruddinfebriansyah@gmail.com', 'siswa', NULL, '$2y$12$b1NgfyZLzOaWTHXRDt9EFenSLTXhv2LNqHKqyEsUJKylvTBpsoZY.', NULL, '2025-08-27 00:29:29', '2025-08-27 00:29:29'),
(154, 'Lufyanto Eka Fahrezi', 'lufyantoekafahrezi@gmail.com', 'siswa', NULL, '$2y$12$zfPGABjrSN5ff6dP1LNRoOsqsnYerHoQXJO0HkQKf.NI/jzoN7fH2', 'ZTByAHixAvMeRhAG99aPOcSsYBUOcuwpyqVlHH8y9uF4OQW242Y9WTWmlGsG', '2025-08-27 00:29:36', '2025-08-27 00:29:36'),
(155, 'Irhamna Latif', 'irhamnalatif20@gmail.com', 'siswa', NULL, '$2y$12$.m2u1VQxSkLClH60DehGD.ES20cochOX2inDTkUJS9Dr07vRDFuPK', 'OURA8lzS1WV25Cin0hP8VzWjK7bxPd3vgqoj9HQIBQMJ7Sig0KtahItzS5KD', '2025-08-27 00:30:43', '2025-08-27 00:30:43'),
(156, 'Faiq iqbal', 'faiqcihuy2526@gmail.com', 'siswa', NULL, '$2y$12$fk39AI77kdIG8aSjAOyDmOQr0qVnNKnaFkYGM6bE9VRm41jkKCPL.', NULL, '2025-08-27 00:30:45', '2025-08-27 00:30:45'),
(157, 'Anita', 'nitahara22s@gmail.com', 'siswa', NULL, '$2y$12$DrhGOipqPwVIn0lM2HJkCuU/kHBCflIENgnDtPl.2GMR/RHHQVMcu', NULL, '2025-08-27 00:31:23', '2025-08-27 00:31:23'),
(158, 'nanda almagvira', 'almagvirananda@gmail.com', 'siswa', NULL, '$2y$12$SXeVOyaRVTmaoIfTi6WWh.hLQSPk8wp0CZ4.EtrfGEPPtQaSS/lu2', NULL, '2025-08-27 00:31:56', '2025-08-27 00:31:56'),
(159, 'rifkanafisa', 'rifkanafisa@gmail.com', 'siswa', NULL, '$2y$12$JJvvfkZ1Ndz9RJGY.IJLNexQ0JO13Sc3qHTAI9ORgHu9AVsmiWo0q', NULL, '2025-08-27 00:32:00', '2025-08-27 00:32:00'),
(160, 'kheysha laura', 'kyshalaura85@gmail.com', 'siswa', NULL, '$2y$12$T8BEnrsPMEqPjsLfWQp2Xu7ZTFKw6HGjWaywV2o0BU8j/cCZgTAWC', NULL, '2025-08-27 00:32:55', '2025-08-27 00:32:55'),
(161, 'aqilla milagros', 'aqillamilagros@gmail.com', 'siswa', NULL, '$2y$12$DWsEP.rb6QAjrEvsN2TKaOkocuOzmaDhykBIqdIQYb3BNO.DuX4Pu', NULL, '2025-08-27 00:34:54', '2025-08-27 00:34:54'),
(162, 'alia nuraila', 'alianurlailla23@gmail.com', 'siswa', NULL, '$2y$12$ix0zYjcTSW/n25L/XZVcCekinb8LgQCw28ab307MvJEJ8yhKoDhrC', NULL, '2025-08-27 00:34:55', '2025-08-27 00:34:55'),
(163, 'Anita', 'an8049395@gmail.com', 'siswa', NULL, '$2y$12$VvYFSy56Oq68abMZk/EEt.sR0WefMuXUdQIIFAOB1bAx.l3/GjO06', NULL, '2025-08-27 00:37:25', '2025-08-27 00:37:25'),
(164, 'Adit Satya darmawan', 'aditsatyadermawansatya@gmail.com', 'siswa', NULL, '$2y$12$8W0d9YHhVswMB1uEEMEUAe8KhTt49qa9bARfRgIpP7R8IrjlQ6nHm', NULL, '2025-08-27 00:46:26', '2025-08-27 00:46:26'),
(165, 'Charly Aditya', 'charlyaditya1@gmail.com', 'siswa', NULL, '$2y$12$02ovwiLGW2gYlsCoyQZ4mufedCJiFam3VS3LCIXeVe12PJErHtkLO', NULL, '2025-08-27 01:55:17', '2025-08-27 01:55:17'),
(166, 'Ghifarel shulton', 'ghifarel@gmail.com', 'siswa', NULL, '$2y$12$2aOIa5.Z7UW/9FxB.rcJlujpBj6IZPxOsH.o3Va/wvvDUJWG.jUPi', NULL, '2025-08-27 01:55:57', '2025-08-27 01:55:57'),
(167, 'Charly Aditya', 'rummehoki7@gmail.com', 'siswa', NULL, '$2y$12$kFSVYd4hhAw0.zZ9BTn/EeyeTUGw0P50r5gbQh4/ZsegBeH6BCpxe', NULL, '2025-08-27 01:56:06', '2025-08-27 01:56:06'),
(168, 'Fadhil affandi fayyadh', 'fadhilaffandi274@gmail.com', 'siswa', NULL, '$2y$12$yCdNoSd7R8phlm/W/Rh6TO7BoTMz0FcnzSIv88FZjZjsxaGQsX/WO', 'nagqlAb7Om077F02inR2X1bMZ3mOSe4gv8WAmSKYM9bzD19oszok4Epfmy2U', '2025-08-27 02:04:06', '2025-08-27 02:04:06'),
(169, 'Habib ali basya amirudin', 'amiruddinalih@gmail.com', 'siswa', NULL, '$2y$12$SlLVt6T0If8l0mavyiacr.XtjIESedbys6EtvVowKDy0uDv4mibXG', NULL, '2025-08-27 02:04:07', '2025-08-27 02:04:07'),
(170, 'Lumban Tobing M.Fachri Tua', 'fahryyfahryypaii@gmail.com', 'siswa', NULL, '$2y$12$lnXYAGR/1/gI7v7gRwV.3.z.85yidBeBOyZzh0Fl/P907CikjwiuC', NULL, '2025-08-27 02:10:32', '2025-08-27 02:10:32'),
(171, 'M.Nurwahid', 'slebewwkelasss@gmail.com', 'siswa', NULL, '$2y$12$/X4Ks9FAoeAiID3HXnJ9tOQJB65uVwXr6skLLRp2x9x7tEhxf3deS', 'cX36rwTfb71ARI0kMeFaXaZC1bjsznJjwEpOzrvoRLMGAfJMBOyFj3oWSAkw', '2025-08-27 02:12:23', '2025-08-27 02:12:23'),
(172, 'Aby surya', 'abysurya60@gmail.com', 'siswa', NULL, '$2y$12$uFKIcU7Dv2v9tnVQsqewWu7fC3N/2G/xVHY8nw3K3Dv9T42gLT9/.', NULL, '2025-08-27 02:15:14', '2025-08-27 02:15:14'),
(173, 'rizkia nurasya', 'rizkianurasya@gmail.com', 'siswa', NULL, '$2y$12$pBXao4MV7IxWFpE8EidOK.PxAJtAM4JjUah8c6pezF7DEyAEqiv2C', 'hI4ax5rwmGvOZdAjVslQfLBklCRIn7k21CSMcdpPs3NaPhGkJtm2QJYHmuRk', '2025-08-27 03:27:04', '2025-08-27 03:27:04'),
(174, 'dio alfarod suryadi', 'dioalfarod@gmail.com', 'siswa', NULL, '$2y$12$4nj74EdQ1jSgDFH/fi40z.hsCTYndB40XA0wFgBFwN1Y9eFB/1Wxm', NULL, '2025-08-27 03:27:10', '2025-08-27 03:27:10'),
(175, 'Sabili Syahri Ilham', 'sabilisyahriilham@gmail.com', 'siswa', NULL, '$2y$12$K9Y.3s0l0qxeCw4s6QISb.f/3ekbApZediwFqCZoR2Cal9d3dmga2', NULL, '2025-08-27 03:27:14', '2025-08-27 03:27:14'),
(176, 'Rafli Januar Rabbani', 'raflijanuar2008@gmail.com', 'siswa', NULL, '$2y$12$Sle9PnH3aItJxq0NZfwaruovSoUH99gKmG8pFSCtePW0b0eKPzTl2', 'BNAwxXIaSNVTYatbgUZDUI6J2Avn0n3zvBaEzZX09aQGoqq3xDpxQBTxlUe3', '2025-08-27 03:27:43', '2025-08-27 03:27:43'),
(177, 'Jalaluddin Hamdanillah', 'yanto@gmail.com', 'siswa', NULL, '$2y$12$5PgX1xFzcw1tLjOueUtKqeelRg504dhcSH1elbFr7DUMP4WJRGmnK', NULL, '2025-08-27 03:27:51', '2025-08-27 03:27:51'),
(178, 'Bagas458', 'bagas77@gmail.com', 'siswa', NULL, '$2y$12$RNunrIKxO9QejfTuTL8pbult09ThKNJ.z5YTXQLUYZNDiQaut/K7G', NULL, '2025-08-27 03:28:00', '2025-08-27 03:28:00'),
(179, 'M.Samsul Palahhudin', 'msamsul@gmail.com', 'siswa', NULL, '$2y$12$0hjcAqutDD485NUo03blXerewYs3a7PPBXFxgYi9YW.xe3i4/rd92', NULL, '2025-08-27 03:28:01', '2025-08-27 03:28:01'),
(180, 'Muhammad Iqbal', 'iqbalfajar2008@gmail.com', 'siswa', NULL, '$2y$12$CaNVxBuKI.aC0cnrhGcGBOe63lpFcUQNnwIuDv5xZ.iTv0ZzW59.e', 'M34WpDCj2Px53Ciwv5ZC6z1xDLzfs38xbInVkP9GIXMjwU7IyVCqhpcnXwFQ', '2025-08-27 03:28:04', '2025-08-27 03:28:04'),
(181, 'satria', 'apaloyaya4@gmail.com', 'siswa', NULL, '$2y$12$6GVw5pm8b/Mb9EIyVvoshOTisnAmXnHmistf5hoo5mkXVl/ZYNKJC', NULL, '2025-08-27 03:28:17', '2025-08-27 03:28:17'),
(182, 'Kevin Dwi Hendriyono', 'kevindwihendriono@gmail.com', 'siswa', NULL, '$2y$12$mi2cx691qVKP6APa/fQrauZxBnMDru3MEeWydtFYvWA5aH9NxrDLC', NULL, '2025-08-27 03:28:25', '2025-08-27 03:28:25'),
(183, 'Evan januar rizki', 'evan123@gmail.com', 'siswa', NULL, '$2y$12$qNk1lxqNAxZ/K6vYkicFGe1Gj3fWPUtBuBAu8jpMUhVXYsnJOaFoa', NULL, '2025-08-27 03:29:54', '2025-08-27 03:29:54'),
(184, 'Rangga wijaya', 'ranggaawjya1@gmail.com', 'siswa', NULL, '$2y$12$BgUMMzChI7ORfr5cyiQ3Ou3McRrkBp5YRmzQQyxtZs2MxIHXmacYq', NULL, '2025-08-27 03:30:13', '2025-08-27 03:30:13'),
(185, 'almim', 'almim@gmail.com', 'siswa', NULL, '$2y$12$VHHEo9w/kvN/ezRkwrw5ouXL8jtnTt25eeNSOlyXnDh140mnuYDf6', NULL, '2025-08-27 03:30:59', '2025-08-27 03:30:59'),
(186, 'Eka ibrahim', 'ekawwbraww@gmail.com', 'siswa', NULL, '$2y$12$VIBOotzlam8EdHQaYMrBVu8M5OQA3N0UNhYelncUtIh9VE1XxD36u', NULL, '2025-08-27 03:31:50', '2025-08-27 03:31:50'),
(187, 'Marendra', 'marendraadhasaputra5@gmail.com', 'siswa', NULL, '$2y$12$4lLXRDlj1a8SA9aRwjaBaOQj7RitnRsgGN81DBGHSLbYJxCffpn0i', NULL, '2025-08-27 03:32:03', '2025-08-27 03:32:03'),
(188, 'Mohamad Wisnu Firdaus', 'firdauswisnu71@gmail.com', 'siswa', NULL, '$2y$12$d4PnDu3UT.1Bs8mvo2gQDeKju2CIKcS.2eDutoxzX9mvjEWlTFRGK', 'AlQw00zfnXzXo7X2z55gpsD5CaPW8cLCMtUlyMgZDOrkHMvkeqUG72TJoa2b', '2025-08-27 03:32:57', '2025-08-27 03:32:57'),
(189, 'Sabili syahri ilham', 'sabilisyahriilham@gmail.con', 'siswa', NULL, '$2y$12$C8NmqsI7TfOZh25v1Mv./Opy7dtAXPIMj3zd40ZXO..tN3.fIHavC', NULL, '2025-08-27 03:33:41', '2025-08-27 03:33:41'),
(190, 'afdanmustaqillah', 'mustaqillahafdan743@gmail.com', 'siswa', NULL, '$2y$12$FlhgVIrwpW8wiaKepw8PSeL6hbai5uZvxYT5ki43jppEUQPfhiZ12', NULL, '2025-08-27 03:34:03', '2025-08-27 03:34:03'),
(191, 'bimo januarta', 'bimojanuarta@gmail.com', 'siswa', NULL, '$2y$12$xGpyYpGitxDtjYLekDgpBe8v6F2QVLa7RBPlJndl6Vg3YiMho1d1C', NULL, '2025-08-27 03:41:04', '2025-08-27 03:41:04'),
(192, 'bimo januarta', 'bendolchococip@gmail.com', 'siswa', NULL, '$2y$12$i37y5RPggrO64dDI.WJfTu1T.Zl7hjlC4KfLnuIBhly83z/JdmvdW', NULL, '2025-08-27 03:48:51', '2025-08-27 03:48:51'),
(193, 'listy', 'lstymaulana9@gmail.com', 'siswa', NULL, '$2y$12$LOf96W02w9KTqBH8gWzgJumb.QrjoJQILkxWtvmB0SjMTALH6LaNm', NULL, '2025-08-27 04:02:58', '2025-08-27 04:02:58'),
(194, 'Wiliam Talikum Sitorus', 'wiliamtalikumsitorus123@gmail.com', 'siswa', NULL, '$2y$12$BMP.vrWusD4akGghRC8wGedEAFIP2Gh80lpc1lWnRhfvC23jJfMY6', NULL, '2025-08-27 04:03:12', '2025-08-27 04:03:12'),
(195, 'M. Resky', 'muhammadreskyy@student.ac.id', 'siswa', NULL, '$2y$12$B9q2X2AFIjR96SSW3Go1U.miSamxfKfnB9hAe0sKUp4VrDfqTbovS', NULL, '2025-08-27 04:03:21', '2025-08-27 04:03:21'),
(196, 'alpina', 'jjk@gmail.com', 'siswa', NULL, '$2y$12$BC.5ZAteE.188DUr.myI8edpRxzohEViudHvAnpSLku2CumraASFa', NULL, '2025-08-27 04:03:29', '2025-08-27 04:03:29'),
(197, 'Ferdiansyah', 'ferdiansyah@student.ac.id', 'siswa', NULL, '$2y$12$hgz7Z/XU6B5eXcJ5Hc4Qpeaxwu101wTkB5Llk72rpS6uXeeA6OC.6', NULL, '2025-08-27 04:04:41', '2025-08-27 04:04:41'),
(198, 'Devita Irsyanty', 'watanabeharuto@gmail.com', 'siswa', NULL, '$2y$12$zxWrKbju866KKhrooVjhUuS1jq9IOE0c7SW01V3Gmc/l700xu6FkO', NULL, '2025-08-27 04:05:06', '2025-08-27 04:05:06'),
(199, 'septian mubarok', 'sem@gmail.com', 'siswa', NULL, '$2y$12$4a4kYnS9oVB5xBnFhLOyzurli690Dn0k4wZgjYHrmW7LS6NwLdUoy', NULL, '2025-08-27 04:05:35', '2025-08-27 04:05:35'),
(200, 'Fachlevi hussein gunawan', 'aquahoshino@gmail.com', 'siswa', NULL, '$2y$12$JIAd.UohTIcwCoSHhEVtXekeICKDIsB3C9dAnNzeKt76zgbbcSbJ.', NULL, '2025-08-27 04:05:50', '2025-08-27 04:05:50'),
(201, 'Naufal bayu prabowo', 'nbp@gmail.com', 'siswa', NULL, '$2y$12$JHPRKO.qhDuW3l27n/tCR..OXPFQobWE/erBVN7S.h0vXhx.Y9UuK', NULL, '2025-08-27 04:06:15', '2025-08-27 04:06:15'),
(202, 'Raka baihaki kaizan', 'rakatzyjir@gmail.com', 'siswa', NULL, '$2y$12$WwBEYSFBMBk8xsJBXa5cyugDbVsCuTK8qkaW7rO0aUXpob42EOCXa', 'qHTMhg5XJLY1J9R12blaqRjzdHDdtla3ATW29l3eembKFrfoS1TpfzGpej54', '2025-08-27 04:06:17', '2025-08-27 04:06:17'),
(203, 'M.Samsul Palahhudin', 'samsul@gmail.con', 'siswa', NULL, '$2y$12$OjWViiS3ZwyN7N5jgj3k8uWY1OZ3POhYta7hHSVb.2BqFBaVRGcM2', NULL, '2025-08-27 04:07:21', '2025-08-27 04:07:21'),
(204, 'sabrina zatira azahra', 'sazhra0@gmail.com', 'siswa', NULL, '$2y$12$HXb7RPu/ASZL2iZlVEHDbeW/.sG4OJqqnCTqKfw/NJ/bskGB.DuEe', NULL, '2025-08-27 04:07:34', '2025-08-27 04:07:34'),
(205, 'winda', 'winda2007071@gmail.com', 'siswa', NULL, '$2y$12$Pn/znaP3E3c9GNic7KZDQO477OxBYJB0qoScLkOZLrxpnvBJYHK2u', NULL, '2025-08-27 04:07:41', '2025-08-27 04:07:41'),
(206, 'defa muhrizal al rosyid', 'muhrizall328@gmail.com', 'siswa', NULL, '$2y$12$wrL12e/tvmxXEQ0SBxWCE.cfNayADUrbBAPuJxc17ufhrsdKfkbDq', 'MhTPhHV1ApkLiLf9l7II12hagtlNLnXSEF6TzuNLWEu0r24nAOCTqWSJjVaF', '2025-08-27 04:07:57', '2025-08-27 04:07:57'),
(207, 'DHUKAMSIH NADZWA M.', 'kibeyyy.01@gmail.com', 'siswa', NULL, '$2y$12$HDWQoianIUNzsL47BI1l5evJJdilkrfIYWwslq126vJU9SqKFeDaa', NULL, '2025-08-27 04:08:12', '2025-08-27 04:08:12'),
(208, 'Naufal bayu prabowo', 'nopal@gmail.com', 'siswa', NULL, '$2y$12$HRyNFby3TM2yyoPB1GcOlOIUAj9XT33qh9.lw0nAoo4MhcP241pRO', '8kRYJsEhIJDMZhcUoKXUK9Xku1RHF4dJjskPo98NfvK8PDeOX8iNfYUOHrhK', '2025-08-27 04:08:28', '2025-08-27 04:08:28'),
(209, 'Adelia putri', 'adel10@gmail.com', 'siswa', NULL, '$2y$12$OUR1jC2yEq8CbMBwGDvZle9g8RtBH7iQm97VEpen4E7DM8c13MaWS', 'SMsbk4HzFwXpzIRJB9TFyoY4F7ZMtKkv1SgRnSo4k7E4dbhTgmZULJc16Le9', '2025-08-27 04:08:47', '2025-08-27 04:08:47'),
(210, 'Rafardhan atala', 'ardansigmaboy@gmail.com', 'siswa', NULL, '$2y$12$DpjorkmKzrAUVX26WAXKyu6n/qAul9YC5dJmyevkM4uI3bFXsRc/G', NULL, '2025-08-27 04:08:56', '2025-08-27 04:08:56'),
(211, 'Nalisaalyamah', 'nalisaalyamah@gmail.com', 'siswa', NULL, '$2y$12$DVQ6/Csnz7fEv4VDo89skO0RoUnBkCznSDPtMmXQOdyi7GjGZxav.', 'k7l7g6fAA0zfK290Mo9AJkWFU77povQadhuLct5zhFbvsiQeKA73qfRYS49w', '2025-08-27 04:12:50', '2025-08-27 04:12:50'),
(212, 'Zelda Zaetin Hobir', 'Itoshirin@gmail.com', 'siswa', NULL, '$2y$12$l.F84wvPBInW7M2dXkH.6.64BdWCB9XSx3e3XXXq.EBgHUIMfXLiq', NULL, '2025-08-27 04:13:28', '2025-08-27 04:13:28'),
(213, 'Naysila Ashdaqyah Anwar', 'pacarjay@gmail.com', 'siswa', NULL, '$2y$12$zcmuWIQIvNIStfi71lhfkOJd/JHEY5RH8ehsB9Sz/91W1jFLqWcNe', NULL, '2025-08-27 04:13:56', '2025-08-27 04:13:56'),
(214, 'jarpok', 'ppk@gmail.com', 'siswa', NULL, '$2y$12$gk6fgNfQYKqQ.r/8g8SRZOsZQAxFskf7XhoNongoUe0Wj7c6s6gRG', NULL, '2025-08-27 04:14:57', '2025-08-27 04:14:57'),
(215, 'aduuuh', 'we@gmail.com', 'siswa', NULL, '$2y$12$7g9tnKjEaalAW2yDqWdbOeZyfqk8YVCuS6CvgIAAvbvJDBGIAyEnW', NULL, '2025-08-27 04:18:49', '2025-08-27 04:18:49'),
(216, 'Farriq putra faaizuun haryono', 'farriqxitkj@gmail.com', 'siswa', NULL, '$2y$12$iVuViV9O72k0ZgLvklEl3uL1XUawx2vFJ9Cjs39IWMvSQL.hH7b56', 's2SVfYcXjO3tkhFqabD1NkrVupqjph6e8SCKU3J97U6Ftx5DSbhlMStQKbyK', '2025-08-27 04:26:11', '2025-08-27 04:26:11'),
(217, 'Nathan Andreas sinaga', 'sinaganathan7@gmail.com', 'siswa', NULL, '$2y$12$7D30n2sa8RTEiWlNXAjn0OyF0A9P1KPJQWFiYQ/kK/S8Cj/FeiHxS', NULL, '2025-08-27 04:26:14', '2025-08-27 04:26:14'),
(218, 'Banyu Nada Rizqullah', 'banyuxitkj2@gmail.com', 'siswa', NULL, '$2y$12$fogWO7LiYDw0GHtAWPpnL.k1Ic7UZQCj8QjPVRAXNRruFWB7pdzBW', '00cCDVcPZg9NDFFirXOb8fnn0Sm0EZeGkvcLC7v2ry0ZKgwcYyyxerlxLp0w', '2025-08-27 04:26:25', '2025-08-27 04:26:25'),
(219, 'Dzaky Akmal putra', 'dzakyakmalputraxtkj@gmail.com', 'siswa', NULL, '$2y$12$hfJkE.zwfaqUXX8nXJHK6exzTwGaXUORM8mCvF4G6In92doBYJVVO', NULL, '2025-08-27 04:26:29', '2025-08-27 04:26:29'),
(220, 'Muhammad Ikhwannuddin', 'ikhwanxitkj2@gmail.com', 'siswa', NULL, '$2y$12$4QuC0Il6Ykt7Li2RBbHc7u1T2mwnyVByfnjSf1fGJYeTyOYLMXLHq', NULL, '2025-08-27 04:26:48', '2025-08-27 04:26:48'),
(221, 'nia sapitri', 'safitri255@gmail.com', 'siswa', NULL, '$2y$12$mQhFUZCL98HWMogKLXraJuEJ.xg3Ud9JLtUsQTMOT.LXpq.USqOni', NULL, '2025-08-27 04:27:01', '2025-08-27 04:27:01'),
(222, 'Adli', 'adli@gmail.com', 'siswa', NULL, '$2y$12$4UUvZEUfq4rQBSgkJZMAc.B4OInYKgR9e0RZoHe0Kx7MSUigkAnxq', NULL, '2025-08-27 04:27:01', '2025-08-27 04:27:01'),
(223, 'ZASKIA ANGGUN SARI', 'zaskia@gmail.com', 'siswa', NULL, '$2y$12$CaCcPuWp2fXeVLte8P..8uz//zqmSLKQenQRwI8CWrrHqs3NPrYWi', 'ZMnBWVoFWKRxMZ5350FgF3XBMQYNfrjyzlxJ7CA4Df7eZx3ZgmLI2xefqt6O', '2025-08-27 04:27:22', '2025-08-27 04:27:22'),
(224, 'Muhamad adli', 'adli123@gmail.com', 'siswa', NULL, '$2y$12$6/29qsXBe.erm1ymaEtnNOBnJ15kr8eT99eUp3Oym58HhFiPj5F9q', NULL, '2025-08-27 04:27:31', '2025-08-27 04:27:31'),
(225, 'Stepani', 'stepanipani148@gmail.com', 'siswa', NULL, '$2y$12$FY6hFi.1EIcdcudMrwZpvOXh28Erp3keKq4ZWxkgFSKSmtff/n3vu', NULL, '2025-08-27 04:27:42', '2025-08-27 04:27:42'),
(226, 'nia sapitri', 'syila255@gmail.com', 'siswa', NULL, '$2y$12$/7kEYsZoJjgNXOIOcmtN.eBkEYblfmzRHFK9KN/e.hWiGF8G7IC06', NULL, '2025-08-27 04:27:45', '2025-08-27 04:27:45'),
(227, 'syafa maulida', 'hsnduduwn@gmail.com', 'siswa', NULL, '$2y$12$BknK8w2vqNJK2zo7XUdjI.XJw1rsX.c4fEBVktp4hS1OfAnfY.V4S', NULL, '2025-08-27 04:28:08', '2025-08-27 04:28:08'),
(228, 'Dwi may setyaningsih', '\'@dwimayXITKJ2', 'siswa', NULL, '$2y$12$mqIfP1Yv1V2W7bKhf/kec.2lFj.J3/cpr32jIqVMWAZfQQqTZhK5S', NULL, '2025-08-27 04:28:09', '2025-08-27 04:28:09'),
(229, 'Dita Afriyanti', 'dita@gmail.com', 'siswa', NULL, '$2y$12$rG.TnXHg8gcU1rYROw9J5ObDmOUce1hJ/aoKgKPsULUmPxvvugZd.', NULL, '2025-08-27 04:28:12', '2025-08-27 04:28:12'),
(230, 'shellina salsabilah', 'selin@gmail.com', 'siswa', NULL, '$2y$12$xXjQj1x9UZ.wJRLKe7EtMeF/d5cUbo6LsLtxU40m4R.p0F4NLOKNW', '4FW7StDiKQXUWgjSxCoQWIvwlaGGsUV6y8lbHDcfhO4FOQFs9sEcOnCxEVo2', '2025-08-27 04:28:12', '2025-08-27 04:28:12'),
(231, 'Dina nur kholillah', 'dinanur@gmail.com', 'siswa', NULL, '$2y$12$e96rbc4SqbWMwSEwmXNDR.jTIIK0p24ZwsHDjvSwcIo8SwpIwrc2O', 'xwcHpZviFOWieNTJqdfS2fba6fXRXKvf29FDmeZpmnLvWy42ZAWeBTQGDAVr', '2025-08-27 04:28:20', '2025-08-27 04:28:20'),
(232, 'Muhammad azhar Nuruddin Tri Syahmi', 'muhammadazharnur@student.ac.id', 'siswa', NULL, '$2y$12$e6gKxCzsWSfVksd5EH.ILOA4DozQ961zHNkrq0Cn.CGjG8hW0Lb0i', NULL, '2025-08-27 04:28:41', '2025-08-27 04:28:41'),
(233, 'Aurel apriani', 'aurelapril04@gmail.com', 'siswa', NULL, '$2y$12$kcOYzOyFs57Vu89osscrfuGvMJAsD4WRPsS5sDlS9kLhkRHqhIYa.', 'nYJ6VkZLnHVoBzAUONrEpOOQLNlNnrP8jwWKceF0fcwCwUcm6LPoTszP6cjD', '2025-08-27 04:29:28', '2025-08-27 04:29:28'),
(234, 'Novia Nur Azizah', 'novi@gmail.com', 'siswa', NULL, '$2y$12$HVGWp1Uu7PR7ZUClfVQkRenPuUHrPAmciT15qwLBpr8i67cYNHWEi', '0AWw8WWYlVrfaGxVeAedgX75TuCkCzYDK48mIwREAqR6Nd2BCr9A5Bajnnyy', '2025-08-27 04:29:32', '2025-08-27 04:29:32'),
(235, 'Nurul Inayah', 'nurulinaya878@gmail.com', 'siswa', NULL, '$2y$12$DO3GZ6NajgTQsBU3KsDMjuxkerXxl1aT1OchEKXUVCS3sKAbNTH8S', 'nP9DYJQxWWs0k8ubBPp8J5gK9I5lioA2W4RDyqISAPzTiA8K8DGl51vXDtvt', '2025-08-27 04:29:39', '2025-08-27 04:29:39'),
(236, 'Dwi may setyaningsih', 'dwi@gmail.com', 'siswa', NULL, '$2y$12$Opk6ZRQXSqLkeYbhRRE9WOH68GMswzOrPCa431dKa4LvT/YNWhv.a', NULL, '2025-08-27 04:30:32', '2025-08-27 04:30:32'),
(237, 'Dwi may setyaningsih', 'dwiiii@gmail.com', 'siswa', NULL, '$2y$12$pHLmU9Md87eN0CbpQS5gSOhT4qK4U3x5VX0pcNcgTYro6q.NWvAaa', NULL, '2025-08-27 04:30:54', '2025-08-27 04:30:54'),
(238, 'Muhamad adli', 'uniciha145.2@gmail.com', 'siswa', NULL, '$2y$12$zRyijxDYEDCiNH3nyHshjuAt/wEWOuScXvC0i9HgVhnh97Fnrld66', NULL, '2025-08-27 04:31:25', '2025-08-27 04:31:25'),
(239, 'putriimupp', 'putriiimupp11@gmail.com', 'siswa', NULL, '$2y$12$GEBRYA2Qbst2NwzGpmSlpuQLNdzHdWKVOQUFWAx3UqFLLvCfOkHC2', NULL, '2025-08-27 04:31:30', '2025-08-27 04:31:30'),
(240, 'Putri anggraini nokas', 'Putrinokas111@gmail.c', 'siswa', NULL, '$2y$12$A0muRnInQr8UgWgL9ho8A.lf2TMDZEfiyQrMA3mpiqutr3BsLHVEG', 'XCkwOu5d90iFlwChHIgdsOFldZreaXQUmrJdPWblny9vexpr5Qy864c52t4e', '2025-08-27 04:31:52', '2025-08-27 04:31:52'),
(241, 'Dwi may setyaningsih', 'dwimay@gmail.com', 'siswa', NULL, '$2y$12$HJUlrbwdTfw1s3OuU4Km3uwKgXznLJeVGzUJPxbRuAmCn8JmwukfC', 'Rfi8iUgJ6ZVweLzAv0CkEXIXPzlI8SfiZo0SiRd6LSSPYrAxF6xfRZnzNEWS', '2025-08-27 04:32:17', '2025-08-27 04:32:17'),
(242, 'Muhammad azhar Nuruddin Tri Syahmi', 'syahmi@gmail.com', 'siswa', NULL, '$2y$12$GhtCm0qiHs88Tp/XUViJw.5DGKT/CHkJFatTnEoKBTswqPNeQHdYC', NULL, '2025-08-27 04:32:24', '2025-08-27 04:32:24'),
(243, 'Zahra Zulza Al-jannah', 'zahrazulzaaljannah@gmail.com', 'siswa', NULL, '$2y$12$XVlkA2WwFlys5nN9mvhs.uHagc7kI50O8uRpZZq9VJERZXh3n/1eS', NULL, '2025-08-27 04:35:37', '2025-08-27 04:35:37'),
(244, 'Maulida Nur Qisti', 'maulidaqisti30@gmail.com', 'siswa', NULL, '$2y$12$J0rt62xeCmpZimpzqVgAH.nUVVcciJYTDjY.Od6DT8iamPHlz6th.', NULL, '2025-08-27 04:36:57', '2025-08-27 04:36:57'),
(245, 'Ririn fakhriyah', 'ririnfakhriyah@student.ac.id', 'siswa', NULL, '$2y$12$f8fwTgONok1RGo1yG0fr6eS7kkiZ1FCm3OtjdUZarOT51bjzKy7A.', NULL, '2025-08-27 04:48:57', '2025-08-27 04:48:57'),
(246, 'Dandie Abdul rizki', 'dandirizki@gmail.com', 'siswa', NULL, '$2y$12$QnZBsZh0uOEwE56AEAnRFOpISI31hawNIYG82ahTzTHB8k2vOSiD.', NULL, '2025-08-27 13:49:23', '2025-08-27 13:49:23'),
(247, 'aliya zerlina', 'naazerlina@gmail.com', 'siswa', NULL, '$2y$12$UoT7xqyy1ufWRcMCcd0sxOHq06wEHcFvVdGlGplpFBusM7EWOUAsK', 'BWbV5TuOJo2WlOvZZpM5DeaQlXKJYUpnGGdUJwJNi6UVNr5gIBkckSPxEAJ6', '2025-08-28 00:37:09', '2025-08-28 00:37:09'),
(248, 'Rasya Devara Souhoka', 'rasyasouhoka@gmail.com', 'siswa', NULL, '$2y$12$Xfgz9elG07/VE03zaCqd3OiFvjrSWVuiX6AAz6QOh0qfAD5oakGhG', NULL, '2025-08-28 00:37:14', '2025-08-28 00:37:14'),
(249, 'Yuceysya Tuzzahra', 'yuceysyatzzhra@gmail.com', 'siswa', NULL, '$2y$12$WCgCSeYid9qspvXQhFxaDO9cCuvSW38J60UHEGEDEQOuQshu35sVG', NULL, '2025-08-28 00:37:35', '2025-08-28 00:37:35'),
(250, 'haribah', 'haribahseptianixiiotkp@gmail.com', 'siswa', NULL, '$2y$12$QoZP9hYtKYidPd7zG8Y2OuDgAGzmZsigO4oYy82ae0AykWlyHbTie', 'xXO7VdPPO2hdMv11hxGVlBAtjiG022vbF9ZCdcC2ZjTOa4JiSbcjFcGiK7cA', '2025-08-28 00:38:03', '2025-08-28 00:38:03'),
(251, 'Neyla Rara irawan', 'neylarara30@gmail.com', 'siswa', NULL, '$2y$12$HptOBufTzYnfAbNdWxm4H.4GfIeObGfdTlM6Q8DrLLjeH8psZIaAy', 'ay5WzMKMMGVAPWvEl1oxRU0jbpipxWuhnVpxUSe7uvvNTXVzD2yOggplEi6y', '2025-08-28 00:38:11', '2025-08-28 00:38:11'),
(252, 'nanda', 'nandaaaprill44@gmail.com', 'siswa', NULL, '$2y$12$cp/G9kHg18by2j96Bg.9S.JjbhIgDt4H/Zz2wG0/nQA6R5EarF5Iy', 'YrslvufapNOcEHh6KhhHKJgitrkkf72ORuXI0suStltDE9y8FcrMyHx0ZA3p', '2025-08-28 00:38:25', '2025-08-28 00:38:25'),
(253, 'Rizka Widya Astuti', 'rizkaw464@gmail.com', 'siswa', NULL, '$2y$12$dZTHWBpWXnwhRvG30dNalusvRqvs5lHzvzNgLT7ph5aHlMHL73o4.', NULL, '2025-08-28 00:38:59', '2025-08-28 00:38:59'),
(254, 'Melvi ayu kirani', 'Melviayukirani11@gmail.com', 'siswa', NULL, '$2y$12$oLgUlInLZiH3NBglLwgl9./m7w2602ki9S5.M6dDxtWmT8RqOF9pO', NULL, '2025-08-28 00:39:05', '2025-08-28 00:39:05'),
(255, 'zaskiatrirarahayusupandi', 'zaskiatrirahayusupandi@student.ac.id', 'siswa', NULL, '$2y$12$ESV1MEznLlGdlJckSJXWLO35W2bnX3XhU0IYC5jFCSilNdzEofEdS', NULL, '2025-08-28 00:39:35', '2025-08-28 00:39:35'),
(256, 'Nurhasanah najwa', 'nurhasanahnajwa@student.ac.id', 'siswa', NULL, '$2y$12$9Ke0L9xkcBN8mSExEhhzKu4pgwJOIJTqMcTgvZpi//XvDKC.V09pm', 'bULr3CFM3N7hGOjxU1P5aHwXQHApLIRW5T2juWsD71Hr0NZYHM4380KMzi1M', '2025-08-28 00:40:07', '2025-08-28 00:40:07'),
(257, 'alviana puti', 'putrialpiana014@gmail.com', 'siswa', NULL, '$2y$12$Qia328FR2OgMSDcKi46que7kQ9zdtdcVwGHiI110YGr28tn7QXBMS', NULL, '2025-08-28 00:40:25', '2025-08-28 00:40:25'),
(258, 'Safira Rihana Putri', 'safiraa@student.ac.id', 'siswa', NULL, '$2y$12$BGtTBOWusZ/lQZ7wYTHq9eZdDFdLNQV.Ld0ur90nYmGtmIDNFCsG2', '0Ejxe0tjVHNqkG0ChsO9BW6qPy9TNYe8M4BDI7YO2W3Rnh60en9fBmEm1JN6', '2025-08-28 00:40:38', '2025-08-28 00:40:38'),
(259, 'Nabila Iqlima Ramadhani', 'nabilaiqlima3@gmail.com', 'siswa', NULL, '$2y$12$quZIFgbv4UwIwaU0VLRmxONrqiotevFtyg3VHxh1aW3pvAN0ly2dC', NULL, '2025-08-28 00:41:22', '2025-08-28 00:41:22'),
(260, 'delita indriana', 'delitaindrianaxiimp@gmail.com', 'siswa', NULL, '$2y$12$SFoZLHfYB4eFLooZFueD0u2B1FwEQ32tT2gM9gRFNvco.qTr9pC3W', NULL, '2025-08-28 00:41:22', '2025-08-28 00:41:22'),
(261, 'Haliza Septia Mozza Ramadhani', 'halizaseptiamozzaramadhanixiimp@gmail.com', 'siswa', NULL, '$2y$12$i1MVghqUjzN9Ijg4mePzsuCWzYG3BmIl6ea6K0ClDwI4FEvYwvcoK', 'I5QVnbZqvdC4grIRgyuVSwyyRUtdvjMOOa9lETQuakx9xVV9jKS9tnsOoXCF', '2025-08-28 00:41:23', '2025-08-28 00:41:23'),
(262, 'Alya Ramadhani', 'alyaramadhanixiimp@gmail.com', 'siswa', NULL, '$2y$12$N7F99CPUKR/EK1I27bC0hu8LVDPcwCy5kFU64z4gh5jcss.25VjQi', 'Qa7Y4xxOfD5ME7O8HpmY2EwRIVbv6HE7tPnRX4ZNI01vMy6lrRALzamVQ8Z3', '2025-08-28 00:41:28', '2025-08-28 00:41:28'),
(263, 'febriana syafira', 'rasyafira@gmail.com', 'siswa', NULL, '$2y$12$.fWkMl2hAxcMCb7QNSMxO.sA37EkxXdDfEJj2115wEPqGI57hjCFK', 'WDDST4ZApaUnAlSfcJy6Wvx9hOcoNW2BvxuHPaIxHnxTilcagHEodwWIfoik', '2025-08-28 00:41:34', '2025-08-28 00:41:34'),
(264, 'Sarah aulia', 'sarah@gmail.com', 'siswa', NULL, '$2y$12$Vi7AijgODPUjBjQ33fRdDuU6LBMOI26JeYclnmea0ieMUGuuMNe7W', NULL, '2025-08-28 00:41:42', '2025-08-28 00:41:42'),
(265, 'novita khoirunisa', 'nisaa@student.ac.id', 'siswa', NULL, '$2y$12$bCMqeKNc8Fzm8PNDrT8zyu2lZEWLrjlGj5k0dtv24ZRbs8l8EACaq', NULL, '2025-08-28 00:41:54', '2025-08-28 00:41:54'),
(266, 'mutiara apriyanti', 'mutiaraapriyanti06@gmail.com', 'siswa', NULL, '$2y$12$3nbZc3VHAqyUaBmaeWRBFO0ojASt8nlAGNQ//OiatYw.606tf3qju', NULL, '2025-08-28 00:42:36', '2025-08-28 00:42:36'),
(268, 'bilqist nurshaffa', 'bilqistnurshaffa@gmail.com', 'siswa', NULL, '$2y$12$UaFIzEVWKEQivopRcSbt6.hypJemVFerjIscbA0hp7dG4cx2oY9XK', '6HbDxiWL3d7ikT4FktY6hJ25MH92lsom5RpqxyHspQz81PbCriWdHKFBiT6v', '2025-08-28 00:42:36', '2025-08-28 00:42:36'),
(269, 'neli agustin', 'neliagustin0830@gmail.com', 'siswa', NULL, '$2y$12$DII/MK5CUvbuqTscmTkLs.Bia8Pmzad0Qqt0oqG34xI3FdWKoZ8me', NULL, '2025-08-28 00:42:46', '2025-08-28 00:42:46'),
(270, 'Nelly Amani', 'nellyamani@gmail.com', 'siswa', NULL, '$2y$12$F8tEojGVI9srKFsMcIAkfeeHSwG2PeJx0iQ/e54owKSpg3NswG8OS', NULL, '2025-08-28 00:42:58', '2025-08-28 00:42:58'),
(271, 'nayla aisyah', 'nay@gmail.com', 'siswa', NULL, '$2y$12$l7H2OAmFyEXd/1PIJItUVe0VR5iXpU/w8zYFn1BwoZie20X/WQL6m', NULL, '2025-08-28 00:43:12', '2025-08-28 00:43:12'),
(272, 'widia juliyanti', 'dya@gmail.com', 'siswa', NULL, '$2y$12$0T2P/oQf9bipWICqXZ792ezzFhk8nyVNoXj6Kl3Xv1lFvoFCYD44C', NULL, '2025-08-28 00:43:33', '2025-08-28 00:43:33'),
(273, 'khanza pratami', 'njaw@gmail.com', 'siswa', NULL, '$2y$12$EMhpps5BTUKgTH/xhWqSzO3y7tybr30D5pmxeYKYZMPUpmjQlTbji', NULL, '2025-08-28 00:43:34', '2025-08-28 00:43:34'),
(274, 'Tiara rhamadani', 'quenra@gmail.com', 'siswa', NULL, '$2y$12$1YXtlxD6ruFkbpO3dlrdWuYB3O.SHqqnSpsllNZeIHAZhAA3VZFjK', NULL, '2025-08-28 00:43:35', '2025-08-28 00:43:35'),
(275, 'Tiyas miranti', 'tiyasmiranti@gmail.com', 'siswa', NULL, '$2y$12$Jy5iq6ZixIaL/j45uVQoYecsS0.6PeOTBYAF.e2H54fWnVoijltN2', 'KMrA2vl7ciRleHY5OUCcbyqjkiSRdtkTUuaunHylAoQcmTM4MiWZRPpMBPv8', '2025-08-28 00:43:36', '2025-08-28 00:43:36');
INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(276, 'Nilna syakira', 'nilnasyakira1909@gmail.com', 'siswa', NULL, '$2y$12$CUrLZn/kS1CYZUqOMRzs5eoHzWd3Kg5oP1TUUHM2fZfzKHhNkHVVO', 'vvlv3fwR60vhGkkuh0QYsRWr7XM91mPFt4qC9Tx1yRFps4PW6CUYgpP9iwBK', '2025-08-28 00:43:50', '2025-08-28 00:43:50'),
(277, 'hafsa assyifa', 'hafssahsyifa@gmail.com', 'siswa', NULL, '$2y$12$tJ6iKLday9AoplRk6GsHme/J5V1wikXZZ9SRuCLVGxvRMYm5xAgHS', NULL, '2025-08-28 00:43:52', '2025-08-28 00:43:52'),
(278, 'jones Aranda Kiria', 'jhonson12@gmail.com', 'siswa', NULL, '$2y$12$/JGsv/SuAZ4EHEubfvwuW.NiaFdMOb2Y4oHVoLB21d63cy2Ro811q', NULL, '2025-08-28 00:44:09', '2025-08-28 00:44:09'),
(279, 'salsabila zalfa apriliyani', 'salsaa@student.ac.id', 'siswa', NULL, '$2y$12$JehjYDBgeWw1Exy9vIC82unXVK3S8GiyQCex2dBuryIZzfacEj4Ju', NULL, '2025-08-28 00:44:16', '2025-08-28 00:44:16'),
(280, 'arumi nur azizah Daulay', 'arumiidaulay87@gmail.com', 'siswa', NULL, '$2y$12$ROZqHD.98Lylp9b4RKpD1er6oXPpqchPK5e7dZsRWmUxiOD7Ybfoy', 'tiGkF2TBKBniqy5whmAhL02DUckYlhVERSeKB7JPtUp4s83r9xs3qXBuyA5k', '2025-08-28 00:44:40', '2025-08-28 00:44:40'),
(281, 'shela nur afni auliya', 'shelanurafniauliyamp@gmail.com', 'siswa', NULL, '$2y$12$Go6VB0vUerYegJhqrUR7GOohX2YloIoH4jGL4gnoFdMUm5BDzkdIi', NULL, '2025-08-28 00:44:46', '2025-08-28 00:44:46'),
(282, 'Khanza aulia', 'aullzaa@gmail.com', 'siswa', NULL, '$2y$12$MXeH4Ge6xRL0dTslJowI5O5MXPKFtygxHKbA/ciRND6O3BS6F6lwy', NULL, '2025-08-28 00:45:18', '2025-08-28 00:45:18'),
(283, 'mutiara apriyanti', 'edij50004@gmail.com', 'siswa', NULL, '$2y$12$yVSgcfWCU39kkEduCvfciOwfOK971Aj21KELTvmhXYbzo01F.mSBm', NULL, '2025-08-28 00:45:26', '2025-08-28 00:45:26'),
(284, 'Nurhasanah najwa', 'nana09111@gmail.com', 'siswa', NULL, '$2y$12$pItDv0Y3xAl/bk674A9G5usk.r7jbUpZzxfPd7nv/bv690YMELWf2', NULL, '2025-08-28 00:45:39', '2025-08-28 00:45:39'),
(285, 'Indah Setya Ramadani', 'indahh@student.ac.id', 'siswa', NULL, '$2y$12$a8TBGnIzpV0XVVmBMAP26.z4b4.P0COsh0yMO9ZH9zAkL9ALaRCFG', 'p7ntLFntWoGuSnXF93g8UOvyTEhNfamQYyB3wMRWM6EswIghNLGqKC9EsxR3', '2025-08-28 00:45:55', '2025-08-28 00:45:55'),
(286, 'novita khoirunisa', 'diananisa58@gmail.com', 'siswa', NULL, '$2y$12$GObpn/b2AmHb399k4SRoWeMt9jQSMtHS5ubywBgfRDCAVdqOixfaW', NULL, '2025-08-28 00:46:30', '2025-08-28 00:46:30'),
(287, 'Dzikrina Putri Rasidi', 'dzikrinaputri86@gmail.com', 'siswa', NULL, '$2y$12$7KNDec012EZj3HXpxblxwOSo1VsPdTYrrBNCa..mlW3LZKsdAp.MS', 'J0W9vQOGhBHLoc1PuLibpWTWkI1JhxVjDgQad9IlFUYNshxKecZn0dAX8Olp', '2025-08-28 00:46:32', '2025-08-28 00:46:32'),
(288, 'Miftah', 'miftah@gmail.com', 'siswa', NULL, '$2y$12$GVBQIP1IVBp9rSTlZ7Z0l.2kZaA0mU7n4l9OiGlFSklcLwYd3/96O', NULL, '2025-08-28 00:46:32', '2025-08-28 00:46:32'),
(289, 'Adzra Mahira Prasetyaningrum', 'prasetyamahira1505@gmail.com', 'siswa', NULL, '$2y$12$rnkjHroK..3wL8JTUNPDhOVwI8mm27ri9bY/wog/bzWC.jFcu/Yv6', NULL, '2025-08-28 00:46:42', '2025-08-28 00:46:42'),
(290, 'Luna Olivia', 'lunaolivia27@gmail.com', 'siswa', NULL, '$2y$12$BOg/A0Cs5r6t5fh79WP6PuCd6GpfS/Biws3w/iGZuP4IbMPe3XhQi', 'HzTWLDcbMJUpLxnjg7jBJNp8zGWcH6rIJ5fu7dH7PDF7DyXMdAkbdmJWvLSg', '2025-08-28 00:46:45', '2025-08-28 00:46:45'),
(291, 'Adzra Mahira Prasetyaningrum', 'adzramahira6a@gmail.com', 'siswa', NULL, '$2y$12$KNVOwsFKI0Zl906ReST/rOSIQkgtGD3CdHVo.PCJJjG/AbjQUYU.m', 'DCD0F1jHWtiKpP6muOgeVlz7jZguUvWAnJJWSzK1izRKvqoO8rszUoSA2fMv', '2025-08-28 00:48:55', '2025-08-28 00:48:55'),
(292, 'Rizka Widya Astuti', 'rizkachill@gmail.com', 'siswa', NULL, '$2y$12$fvU57Wg6jLBkrsdY5xTkYeNtWePLGOUr/yBkISLevDfe9j.ZbQqh2', 'ZxQF9lVFuqaQHySAWCBwy9f5xO311OapSRoH9HH02wmSw3QzlGyUr0fTXvWn', '2025-08-28 00:49:15', '2025-08-28 00:49:15'),
(293, 'Aliya Putri Pratiwi', 'yaya@gmail.com', 'siswa', NULL, '$2y$12$Z6DJbQBNRckpceaej4wibO7Irjcy7.Q7QY.3U4TJ7OI71ZyQTarbq', NULL, '2025-08-28 00:51:26', '2025-08-28 00:51:26'),
(294, 'mutiara apriyanti', 'tiaraaaprilyntii012@gmail.com', 'siswa', NULL, '$2y$12$U/KACJkXVubY5EMJ0s16bORcdeTjX4T1vcPDaN..7A7Rzbb63bCOW', NULL, '2025-08-28 00:55:33', '2025-08-28 00:55:33'),
(295, 'Raffi gandara fantys', 'raffigandarafantys@gmail.com', 'siswa', NULL, '$2y$12$JrnNcss4GDgvFT9w4Ely.udwPSGaEy3wrMsy812GT5NxDRvtvY1x.', 'bOng9eQ3UOfHvh1XgUvpgdCywFq6nsUgalT06YiroZoXByPIv6vEDdUxiv0K', '2025-08-28 01:25:35', '2025-08-28 01:25:35'),
(296, 'JESSICA AULIA PUTRI', 'jessiimut@gmail.com', 'siswa', NULL, '$2y$12$S/caTMq8T.03qp69Jqgo6uDasXgcIuqAduvYBTtmghy.XllfdvbQu', NULL, '2025-08-28 01:25:40', '2025-08-28 01:25:40'),
(297, 'muhammad andika pratama', 'kipli246@gmail.com', 'siswa', NULL, '$2y$12$TbNk0MVszFw929DJuu0QfefLhAMbO4aoLQbEP5U7M4d3vbBLTycji', 'k348Tr2Kab0rcrzrEdRJKCQ8AG2gAcw4qcIWXj6O2IEPZcYizZ8ArBjyM5bJ', '2025-08-28 01:25:41', '2025-08-28 01:25:41'),
(298, 'RORO AROHMAH', 'anzal17@gmail.com', 'siswa', NULL, '$2y$12$nW04BbCOb3n8ff2IXH2y6epyc.L9ee7AXHzVWT5nhKQWogPM.VJEK', NULL, '2025-08-28 01:25:42', '2025-08-28 01:25:42'),
(299, 'alya sena rengganis', 'alyasenarengganis904@gmail.com', 'siswa', NULL, '$2y$12$5l7ALI6ZseXm7EPXXDX/ceMorifTvoI74W78pMWRraTzy9n4A1dF6', 'jWXVlnO28mxAzQ2kcB11xlpgmQPu8KmycmA3VrUq9z0dkf6ChKOUGMM9zwKu', '2025-08-28 01:25:45', '2025-08-28 01:25:45'),
(300, 'Muhammad Gofur', 'halok730@gmail.com', 'siswa', NULL, '$2y$12$4gSfHg97CpYMN0eoXr8KTOafKm4RrgkkTjv.YmeDlDFcH.G6IDTV6', NULL, '2025-08-28 01:25:53', '2025-08-28 01:25:53'),
(301, 'DILA ATIYATUL ROHMAH', 'dilaatiyatul@gmail.com', 'siswa', NULL, '$2y$12$vUT6IwfzdYFK6iDiPJuHpeI2nThBBAvMKbCHj9xm5VpYCz9P9AzMa', NULL, '2025-08-28 01:25:56', '2025-08-28 01:25:56'),
(302, 'nikita', 'nikitacelsinikita@gmail.com', 'siswa', NULL, '$2y$12$9E1EnM3DqHrbRpLc1Wti.ucfxX06H93XupUfC7coYZMu9YjH7U31C', 'cloDwRxLjTSR65yNJ8jgboL4MCmEgFJdpoizqafzDgdPhthauaRTVqxMWNHG', '2025-08-28 01:26:00', '2025-08-28 01:26:00'),
(303, 'WILDAN RIFKY HERVANO PUTRA', 'dundandin151@gmail.com', 'siswa', NULL, '$2y$12$97xp7rTlsv1lxZk4tjm67ukQ5cT/bUOy/V2Shb4/2o435Ut4pwyM.', NULL, '2025-08-28 01:26:14', '2025-08-28 01:26:14'),
(304, 'ALIA KARTIKA', 'aliakartika72@gmail.com', 'siswa', NULL, '$2y$12$JP53N6aRuEMqpNsf8d/4Fep5GL9fHripU5foB6GW6vu2YI7QtNMvu', NULL, '2025-08-28 01:26:19', '2025-08-28 01:26:19'),
(305, 'Kafliya Afidah Br.bangun', 'Afidah@gmail.com', 'siswa', NULL, '$2y$12$gkadDvyho6y4XV8Kd9StWuliaU2gOXz0jez5eW8cL9Aw97Z2j7vkW', NULL, '2025-08-28 01:26:22', '2025-08-28 01:26:22'),
(306, 'Muhammad Imron Malik', 'steven256@gmail.com', 'siswa', NULL, '$2y$12$1WSQZdkBGwrzElrA1pYQpOKfupPbIe5QFxmStFIug2rlOIbbfdjIe', NULL, '2025-08-28 01:26:23', '2025-08-28 01:26:23'),
(307, 'Anita Fauziah', 'anitafauziah010710@gmail.com', 'siswa', NULL, '$2y$12$up.JElWBvCgvjACts5StnOqFrUOYxunO0v1WQPgCS6r.htDE5fLKq', 'vDCbfZBUyzw8GZSfkT4kxiQJDgHiXlIIFLaMtgm2uLqI6HpM7hr5VkLNKiz2', '2025-08-28 01:26:34', '2025-08-28 01:26:34'),
(308, 'M.RAIHAN', 'dontoll@gmail.com', 'siswa', NULL, '$2y$12$gIFl6Ph1ais6S4soN5liJes9vrefGlU8vzdT56qlJCbbfX.Qh44SK', NULL, '2025-08-28 01:26:51', '2025-08-28 01:26:51'),
(309, 'Nur aini', 'eninuraeni1736@gmail.com', 'siswa', NULL, '$2y$12$6QdF/EQpm6NDyG5KxOaMSu6L5aEun6W7Gbz78lwNkh9yqCWnMVD8W', NULL, '2025-08-28 01:26:52', '2025-08-28 01:26:52'),
(310, 'Jahara fauziyyah yoshida', 'Jahraafauziyyahyoshida@gmail.com', 'siswa', NULL, '$2y$12$vlv4MLStee0dwzXcwuxaDOvMjjaL7/VQ2Thsh97Sc/TsUH1LI8kSS', NULL, '2025-08-28 01:26:55', '2025-08-28 01:26:55'),
(311, 'heyluna widia', 'heylunawidia@gmail.com', 'siswa', NULL, '$2y$12$Jb9l8RRAyVbBULMHCakD2enk6QwdaDswj6MUMf4N3yLxlIN1hDHOe', NULL, '2025-08-28 01:27:04', '2025-08-28 01:27:04'),
(312, 'Safa Nur Asyifa', 'safaayifa28@gmail.com', 'siswa', NULL, '$2y$12$E2YtTcDqrDhWBkbISnsCde9pkS59PAOEvUvDISn8GeBFRB9fK.a/y', NULL, '2025-08-28 01:27:07', '2025-08-28 01:27:07'),
(313, 'Muhammad Rafli', 'rafliiyz3105@gmail.com', 'siswa', NULL, '$2y$12$yHVkAbXxC0V4Wzo03H9jFO2jbDr/YQO8GEORHInR3pv6TnzGgu92y', NULL, '2025-08-28 01:27:18', '2025-08-28 01:27:18'),
(314, 'Aflaha aura yaribi', 'aflahaaurayaribi@gmail.com', 'siswa', NULL, '$2y$12$OjY4qjANbds3lp0YWxwr4e9LeqzOQpQfnsCaWi9UFXEb4X4Zgydqq', NULL, '2025-08-28 01:27:20', '2025-08-28 01:27:20'),
(315, 'Satria', 'satriatebe66@gmail.com', 'siswa', NULL, '$2y$12$xZNemUy3ADJZKPS7YFujWeTCk9JmjA1WrfxHbv6STS0YVjv/23WnW', NULL, '2025-08-28 01:27:20', '2025-08-28 01:27:20'),
(316, 'Rio julianto', 'rio103@gmail.com', 'siswa', NULL, '$2y$12$fCID0X8E4xvSDZrdb1DHK.IAdyZQ6ZKgqanc1R6./mgtCcpCOh1me', NULL, '2025-08-28 01:27:21', '2025-08-28 01:27:21'),
(317, 'Tammam Nopri yana', 'Noprigkk@gmail.com', 'siswa', NULL, '$2y$12$wI8WUpbVQPzJx6rJr9Oz6O.iaSM2sKalehSplR.8mTzdIbjd6HwAK', NULL, '2025-08-28 01:27:24', '2025-08-28 01:27:24'),
(318, 'rahmawatiprimasarisari@gmail.com', 'rahmawatiprimasarisari@gmail.com', 'siswa', NULL, '$2y$12$tEIyZ5WDn3uVcH9lkDi4D.xZHACKwkzKyKOBBt728hmQMm63FxB3y', '53tfPQVkhWF3zcUG4SIlGL4cNL6u4SCVRd88XapWjmmw4BGTn7Qh2Mep6mhW', '2025-08-28 01:27:34', '2025-08-28 01:27:34'),
(319, 'ANNISA HIBAH MAGFIRULLOH', 'annisahibah15@gmail.com', 'siswa', NULL, '$2y$12$ILU.mkJqUgzPCt65nHAAUemuJwA7HcD4C0eTCoj9wko0jSLESeoUy', NULL, '2025-08-28 01:27:34', '2025-08-28 01:27:34'),
(320, 'JESSICA AULIA PUTRI', 'jessiimut2701@gmail.com', 'siswa', NULL, '$2y$12$EJ.O8wZWqreaa0zlWvyNQOt3HHMuH5IZrrXTGJdBazc6eQktGQMtS', 'G2t6a3dqgsH8OtBkaZFEYr81SInCUt2gO5N5rrdSV3eC8ajI0YCh7hRPfnQi', '2025-08-28 01:27:47', '2025-08-28 01:27:47'),
(321, 'RORO AROHMAH', 'anzal1709@gmail.com', 'siswa', NULL, '$2y$12$4tYPxPoOGvEtH7y/gLPURuUPFJSPYTKtBeD1CJDAJuhYQTxfOgioq', NULL, '2025-08-28 01:27:47', '2025-08-28 01:27:47'),
(322, 'nurshofa azahra', 'shofaazahra@gmail.com', 'siswa', NULL, '$2y$12$OLs923a5evBgBO4TH4rp2exlgASP81FRy4rDe2SIHEihFA8q9psL6', NULL, '2025-08-28 01:27:52', '2025-08-28 01:27:52'),
(323, 'Shireen aura septiane @gmail.com', 'aura30@gmail.com', 'siswa', NULL, '$2y$12$2fvSelnW416HT6W.xH.vm.4eSF5kYMDPxbRJoDS236KGvDxkZtIPu', 'NLNmy2IwutvMQgRPWED4KGKb2HXX0BtDG8nJitH3HHENH3NaXJJ8QqIjA3eP', '2025-08-28 01:28:26', '2025-08-28 01:28:26'),
(324, 'Minati Zaskia Hasyifa', 'Hasyifa@gmail.come', 'siswa', NULL, '$2y$12$arxOUwv53GKBiWNpOK9uAuO5LWCGkcaDGaU8mzW2RSZ/c/eLjbcW2', NULL, '2025-08-28 01:28:27', '2025-08-28 01:28:27'),
(325, 'Anindita', 'Anindita@gmail.come', 'siswa', NULL, '$2y$12$bpE4WihtDwqrmOHIbq6LP.sBU2kC2KmiQ8j4ewy5bziwP2djGU6VG', 'RLgnLlGadyd4RH9sBY3zwVpvBot4drUmlOxTLFBlfjRnUmAHI2NmjEBtuFmx', '2025-08-28 01:28:27', '2025-08-28 01:28:27'),
(326, 'Putri Delima', 'putridelima@gmail.com', 'siswa', NULL, '$2y$12$uzEsqUqWRqbhziJ/r1qzu.p58xYnHnGliRyKwHcNha8UGa/KXPnHe', NULL, '2025-08-28 01:28:49', '2025-08-28 01:28:49'),
(327, 'Nurhidayah ayu aulia putri', 'Nurhidayahayu@gmail.com', 'siswa', NULL, '$2y$12$Kz11r1cqHLaDCKqo2gpxP.IdYiK6izH4bxIV80Dcz/bCOIJbzcnKi', NULL, '2025-08-28 01:28:49', '2025-08-28 01:28:49'),
(328, 'Beylla futri gustiani', 'beyllafutrig@gmail.com', 'siswa', NULL, '$2y$12$5msvbPd9qw.Dh3Ru9yx7mOb2zMNgD.f2vUNaC4sKOUkd0Am2UqtPu', NULL, '2025-08-28 01:28:52', '2025-08-28 01:28:52'),
(329, 'dewi mualifah', 'dewi@gmail.com', 'siswa', NULL, '$2y$12$A6dkU0eXsahks7PhhK2o6OYHX3FfYiOPI93sBmk65yvJH0HlUq25G', NULL, '2025-08-28 01:29:04', '2025-08-28 01:29:04'),
(330, 'aira safitri', 'air@asafitri.com', 'siswa', NULL, '$2y$12$ENdES2lmNyDpQItBFGGTsui0j1lxB6mQyi25kh11MAPZ37/mx/eMO', NULL, '2025-08-28 01:29:16', '2025-08-28 01:29:16'),
(331, 'Septia Ramadani', 'septia@gmail.com', 'siswa', NULL, '$2y$12$vTFTyGE26xN7i5OS7oY5tOsVl18EvVQutfJccUkaZ9Deb5.vqw35G', NULL, '2025-08-28 01:29:20', '2025-08-28 01:29:20'),
(332, 'Hendro', 'adihendro27@gmail.com', 'siswa', NULL, '$2y$12$3AXSGQ2JGbiKLySDQUfmyORvuXlo1a88EICont.AmKnAwpiYCdDvi', NULL, '2025-08-28 01:29:24', '2025-08-28 01:29:24'),
(333, 'muhammad Imron Malik', 'boboboy25@gmail.com', 'siswa', NULL, '$2y$12$9hUmPHAy2ewvtgwuKwDJqOWece/FAJwwwFOqc3GgVOnaMbJPtwiaq', NULL, '2025-08-28 01:30:19', '2025-08-28 01:30:19'),
(334, 'adinda nurkoriah', 'adindanurkoriah2@gmail.com', 'siswa', NULL, '$2y$12$dfI1F1QOas9Z8WmPwoW2VetNb5Y5CEMa9rQnAf67LY4gr7f7BKtey', NULL, '2025-08-28 01:30:30', '2025-08-28 01:30:30'),
(335, 'aira safitri', 'airasafitri@gmail.com', 'siswa', NULL, '$2y$12$9D1fPil1emTA5DIcWbn7A.jw61jeL8MvQssOtovAhI2LWMfBMwFiy', NULL, '2025-08-28 01:30:53', '2025-08-28 01:30:53'),
(336, 'Arsya', 'arsyavin@gmail.com', 'siswa', NULL, '$2y$12$klB4cxz2DDaol37aGx1RSOmyVC5UGX2JB7WbBDA.WP2bMCRq2q9YO', NULL, '2025-08-28 01:32:23', '2025-08-28 01:32:23'),
(337, 'Muhammad aidil fiqri', 'kambingkeren@gmail.com', 'siswa', NULL, '$2y$12$GFIJZoJV3X66/l8JGzyj8uT33qTIvebLWnC5UGzhDih7tk9OyKi1e', 'lbNTepe3WUPasHn33OLLE67R0sd1Kc1x92a1UCstOkUCeXY8MmvVKTfsPVWM', '2025-08-28 01:32:46', '2025-08-28 01:32:46'),
(338, 'M.Haikal abidin', 'kall12@gmail.com', 'siswa', NULL, '$2y$12$PiphfyW3KZjmbpKWeVHyAOZn4.R5LhLQ2u4nYWjQUjG8aWurlKdfa', NULL, '2025-08-28 01:41:32', '2025-08-28 01:41:32'),
(339, 'M.Haikal', 'kalll32@gmail.com', 'siswa', NULL, '$2y$12$JDELc/kOH3xrTcchijzZSOjabXLZh9hKW6trF7wuANsMkUAfO6I9W', NULL, '2025-08-28 01:44:31', '2025-08-28 01:44:31'),
(340, 'cindy rhamadhani', 'cindy@rhamadhani', 'siswa', NULL, '$2y$12$B7jH.oqdr0xy/sHj7KQKOO.JYRe94y0rruOBOgm5v255las6RMSnC', NULL, '2025-08-28 01:48:41', '2025-08-28 01:48:41'),
(341, 'safira nur hasmayani', 'safirafira09@gmail.com', 'siswa', NULL, '$2y$12$lPLW7rowz13AoeXf4dm2IeYTjgnd8lKRTejzKJzWJxDxBPO61n2C6', NULL, '2025-08-28 01:49:10', '2025-08-28 01:49:10'),
(342, 'Amanda cahaya Fitri', 'ayyaaa190909@gmail.com', 'siswa', NULL, '$2y$12$OivMcWSj8egqup.IPBTWt.G.arD5.2DKLmJ218HALRdQ6JEq3taXq', NULL, '2025-08-28 01:49:10', '2025-08-28 01:49:10'),
(343, 'Jullianishafitri', 'jullianisha@gmail.com', 'siswa', NULL, '$2y$12$mo/DjsCBX8P0aq7Rvphn9OD.T96ugf.0fcqB0V5Nbiq11VwmkShCu', NULL, '2025-08-28 01:49:10', '2025-08-28 01:49:10'),
(344, 'HAFIDZ ABDILAH', 'apitdi_1234@gmail.com', 'siswa', NULL, '$2y$12$D6kob/QXX7yg2BdGUNeHg.rWJT/Azh6Zl/RI.c5VBtAe3y/x080Ji', 'jkZ2CL58iDpBQLdck9LhczYWFGywaFEt29EpgKnUeMNtYJju0mOHDQCwRYFJ', '2025-08-28 01:49:11', '2025-08-28 01:49:11'),
(345, 'Cindy nandita nur faziah', 'cindy@gmail.com', 'siswa', NULL, '$2y$12$6nSAovzG.bzPgbfT/xQBA.67X4y/Ogpyw6beH5N4zn9rmkyJrVk56', NULL, '2025-08-28 01:49:12', '2025-08-28 01:49:12'),
(346, 'Kartika Dewi Puspitasari', 'tikacantik@gmail.com', 'siswa', NULL, '$2y$12$5f8RlPLJn0NQaNlQ6lXHWOYsrAfRVi75zGm6nyrdVLoslBkhSviJe', NULL, '2025-08-28 01:49:12', '2025-08-28 01:49:12'),
(347, 'khansa rafifah', 'khansakansa03@gmail.com', 'siswa', NULL, '$2y$12$.0hPPDobglW1NtJOnTAUdOEwJx/mwGG9ME4UH8U4TKYxd6mGiscUG', 'DdLBDkxM5nvcWGvr45XdZOzY5DqltXMI3FgYhDPacwFAOl7OdfGv9WjgYzTW', '2025-08-28 01:49:16', '2025-08-28 01:49:16'),
(348, 'Dela Anna Sihatul K', 'Dela@gmail.com', 'siswa', NULL, '$2y$12$VqbEKMaLuRtfco5U1jLVauZSkOZVMBKjpw5JZpQl5xI1/0rHquXmm', NULL, '2025-08-28 01:49:19', '2025-08-28 01:49:19'),
(349, 'HAIDAR ALI', 'Haidarali12@gmail.com', 'siswa', NULL, '$2y$12$mJuz2m9yHAJH1f63KSPDXeBQO2oLZzZ117Sg7mJF3pS2iI2keOJgq', 'b5RPMOsAuEhFft4BVWhocfiJJ6rsgfNOP5yK82IJu0mTuuEZoDXUT974UQFv', '2025-08-28 01:49:28', '2025-08-28 01:49:28'),
(350, 'ILHAM HIDAYAT', 'ilhamhidayat@gmail.com', 'siswa', NULL, '$2y$12$nHDbGaxU.7c3qOBUUqSTPuxwcBJhpOm16I77jGJVAD6fGzwKlsWzC', NULL, '2025-08-28 01:49:29', '2025-08-28 01:49:29'),
(351, 'REZKI AKBAR RAMADHAN', 'rezkiakbar@gmail.com', 'siswa', NULL, '$2y$12$jL68wgW9ma46oXTFv8SDs.XiXlcknq2hxbkpnfxa5QDiucrSOSknq', '700Oxev5EuGRsoFt60Dtap2wicKulUcULhjB7eISc6fUeIJEJDGMibj5QbEm', '2025-08-28 01:49:30', '2025-08-28 01:49:30'),
(352, 'Adzhwa shafa', 'Shafari@gmail.com', 'siswa', NULL, '$2y$12$cB7PSJs63sPL3cr0OfAZzOFY32nLBkdbTPiae1MOrXII3eEXH17FC', 'kTOPMYbZd8K902FcobEt3jKTL0ttvkkOKb3nuTIwdqoPilDRKXNSf8OhdzvZ', '2025-08-28 01:49:30', '2025-08-28 01:49:30'),
(353, 'LUSYANA', 'lusikece@gmail.com', 'siswa', NULL, '$2y$12$358xpyrhMOlivdtZtmHH5Os1GfFI/wfzx1i6NtzSy2mA4cYNyNk2e', NULL, '2025-08-28 01:49:44', '2025-08-28 01:49:44'),
(354, 'prisca priscillia', 'priscagacor@gmail.com', 'siswa', NULL, '$2y$12$WN52uEu3HVqsAdMCgv8uFugSrmJX9Q/yzmlXSJWcYGcPLPL//BL8C', NULL, '2025-08-28 01:49:48', '2025-08-28 01:49:48'),
(355, 'Aysah Alfatunnisa', 'ais_nisa@gmail.com', 'siswa', NULL, '$2y$12$uCwfRCQO8N/qkT.8qcQEPezLUnMTP14dephltF54zawwiXqVYZHzW', NULL, '2025-08-28 01:50:01', '2025-08-28 01:50:01'),
(356, 'Siskardo Dwi putra Mokodongan', 'siskardo@gmail.com', 'siswa', NULL, '$2y$12$NPP8j36p3e8hxhPdghHUTOYtFqgXbvXtrEM87BP3RziUi0pJ/TQeG', NULL, '2025-08-28 01:50:09', '2025-08-28 01:50:09'),
(357, 'Azriel Rezqi AL-Faqih', 'akunbaru@gmail.com', 'siswa', NULL, '$2y$12$QAE/jim5wFln/mDHUs1Jle98uuP4NUC0ev2jK1rYv9rpzxhNOQO4q', 'FhKwEqW5dvNoAaqnXeybscx78eWbrg0WKcYmtzHfieYBdzsuyMWb1s9qaFY9', '2025-08-28 01:50:24', '2025-08-28 01:50:24'),
(358, 'kholid fauzan', 'kholiddfauzan@gmail.com', 'siswa', NULL, '$2y$12$dvYktyD9XCtxgfZ1eV061OXUdHQ.XgpMsfm0NvnoaQjGj99tMfA/6', 'K61ex2nzA7qGnDJzBLaq2Aq5iIW6cc5nw1xluKm7l1ZzR6j46uZxHaBul3aj', '2025-08-28 01:50:33', '2025-08-28 01:50:33'),
(359, 'galieh', 'galiehramdhan@gmail.com', 'siswa', NULL, '$2y$12$2u6f0Iaae7wDQGFhXXt31Oi3pJbi0rPSG9C3QCOM/koJxzeD30Mci', NULL, '2025-08-28 01:50:34', '2025-08-28 01:50:34'),
(360, 'aulia', 'aulia2@gmail.com', 'siswa', NULL, '$2y$12$gWhMWJhRn.XzehuDEOeFxuOVA7ruTJLhJOzKtjnRy1UlPOSjrcGhu', NULL, '2025-08-28 01:50:41', '2025-08-28 01:50:41'),
(361, 'Alina', 'Alina3@gmail.com', 'siswa', NULL, '$2y$12$/NIUXmU7VsaTRs6ewK//l.4f4i28a9C/L5Oj0W/IxYuRvp1Y6NjBq', NULL, '2025-08-28 01:50:42', '2025-08-28 01:50:42'),
(362, 'revaavidela', 'revaavidela@gmail.com', 'siswa', NULL, '$2y$12$SymmPGcOk2KVBUI8AA3KruXcIwmxkGsCNXnvXJTFXb428Nn30Wf8W', NULL, '2025-08-28 01:50:42', '2025-08-28 01:50:42'),
(363, 'cindy rhamadhani', 'cindyrhamadhani@gmail.com', 'siswa', NULL, '$2y$12$6dCc2mdy/FZfnBQs.kYzH.NNVr9OpEl3RjX/uPeLWnwLCxjpn5lxO', NULL, '2025-08-28 01:50:47', '2025-08-28 01:50:47'),
(364, 'Laila badria', 'lailabadria1403@gmail.com', 'siswa', NULL, '$2y$12$ZWVI8m9JLSu80M/QvkYKFe3XaztRb7P8kkCI2awW./hJVvdL6srm6', NULL, '2025-08-28 01:50:55', '2025-08-28 01:50:55'),
(365, 'MUHAMMAD FAHRIDIN', 'fahridin@gmail.com', 'siswa', NULL, '$2y$12$15IEAYk8Hhzj3yQxSuLMO.vFQLis.XY4mfqujj.ZcwJ.LzmkI3eXy', NULL, '2025-08-28 01:51:14', '2025-08-28 01:51:14'),
(366, 'keysha syahira', 'keiicyn@gmail.com', 'siswa', NULL, '$2y$12$sN1389TRQWrHOSmi29lpduZHBFsAevV9.5Mz4947Wx4N.ITAFShHu', 'Tis3XFLzqf7wWIuFvBA3kso0J8BkRZWyR3Es37DIm8HVIkLC6XdKl3ezobBL', '2025-08-28 01:51:34', '2025-08-28 01:51:34'),
(367, 'Syauqi fadli', 'syauqi@gmail.com', 'siswa', NULL, '$2y$12$KpzqGW8uro0XxNeFd3rvUO5Cyi.vFZ2p36mCdk2hqSDfKArwXh4f.', NULL, '2025-08-28 01:51:40', '2025-08-28 01:51:40'),
(368, 'Luthfi dzilal arrofi', 'udyehsuhd@gmail.com', 'siswa', NULL, '$2y$12$u/yOVkNJ7uVvAYbV25ZztOR8pncpbcO7UDCh8iF2MnzeEsjnr4pV2', 'DPWlGuPSDtIbEFnb1zErvH7WF5Gq4RcRFUWQYMtwEhhNrVEzP0zUsP1abnld', '2025-08-28 01:51:47', '2025-08-28 01:51:47'),
(369, 'Ilham hidayat', 'Hamzah@gmail.com', 'siswa', NULL, '$2y$12$bWWJTJAiQoyvreH/MBlwhulqN5VKseR7qP6AE00Ml6BCbh37WLc7m', NULL, '2025-08-28 01:51:53', '2025-08-28 01:51:53'),
(370, 'Arya bima putra', 'rezzpodddd@gmail.com', 'siswa', NULL, '$2y$12$GvfpzKGqEtIZM3ZrcxUsmu/peGiDawkWxoH4gz26ZFmmyW3DvnTkW', '81OTC9HMYvuBQVZmFb8k3YtnJtHSVf5659oY5w5B50OUHXY02GNzciSIVLnO', '2025-08-28 01:52:10', '2025-08-28 01:52:10'),
(371, 'galiehalisnainiramadan', 'muhammadalisnaini@gmail.com', 'siswa', NULL, '$2y$12$I4oaDvc2uxGmLvzEiB4/sOdSWqxX0x5S4/vMF5DlMTKDfTBTMofTC', NULL, '2025-08-28 01:52:10', '2025-08-28 01:52:10'),
(372, 'MUHAMMAD FAHRIDIN', 'Ronaldo@gmail.com', 'siswa', NULL, '$2y$12$MD2oQ8fqmYuwR5jOp6XteeFtRJsGigRafGRQm1uKbnFHnnaRNfKJO', NULL, '2025-08-28 01:52:51', '2025-08-28 01:52:51'),
(373, 'NOVAL NOERRISKY', 'novalnoerisky@gmail.com', 'siswa', NULL, '$2y$12$n.5DczyqalB0W0CR6HJWgeaUCltj0aP/cwathuTjr.kTxVBTgVO6e', NULL, '2025-08-28 01:52:58', '2025-08-28 01:52:58'),
(374, 'khansa rafifah', 'khansafifah27@gmail.com', 'siswa', NULL, '$2y$12$h2BvQv3/NdMbKcgYKvjd3OpzZ8vVCSFYU2UNlFXgMwRsEm7pvavku', NULL, '2025-08-28 01:53:01', '2025-08-28 01:53:01'),
(377, 'galiehalisnaini', 'alisnainiramdhan@gmail.com', 'siswa', NULL, '$2y$12$pdbEb6j9SSuIUIRjR/aGueXwnwy45kHJrMvdY/62.61yw7PHZYTrG', NULL, '2025-08-28 01:53:18', '2025-08-28 01:53:18'),
(378, 'EMILIA OKTAVIANA', 'emilia@gmail.com', 'siswa', NULL, '$2y$12$JWr/tbsLXSWPZZWJDRE2A.b9W/mLOzPBvoAn.n/a1pl590MYEFxxK', NULL, '2025-08-28 01:53:36', '2025-08-28 01:53:36'),
(379, 'Jennifer Sunny', 'jennifernaudyy3110@gmail.com', 'siswa', NULL, '$2y$12$UxTjTeg.2wcZgjSKk6VlKebomMn8keDJ2arOOjsld0B9CJyb3dKuu', NULL, '2025-08-28 01:55:58', '2025-08-28 01:55:58'),
(380, 'ILHAM HIDAYAT', 'Hamzah2010@gmail.com', 'siswa', NULL, '$2y$12$H71wvJB1/SLqWd6K/.eCtejI.1OAxyeKpjWr8Z4PLgKnBOTleDoou', 'AmLoEvjpnJnAzA55qS8pm9NbI1sX31ND1JCvp7Qoc3j6qSRXNgCUcGkXL0fz', '2025-08-28 02:05:27', '2025-08-28 02:05:27'),
(381, 'Raditya permana', 'GEGESWAWAN@gmail.com', 'siswa', NULL, '$2y$12$VOjmMYvboMV.g0Vd7GvBEuCMZCXiOduXUU5TB60zLQsJlY/95Gn46', 'HTuQRorbbhq0nUZTCy7xcx2Sx2cVnJD5Ki0FXLkRbhNg0Jj9SNl4mKd9PpER', '2025-08-28 02:12:39', '2025-08-28 02:12:39'),
(382, 'MUHAMMAD RAFLI AR', 'muhammadrafliar@gmail.com', 'siswa', NULL, '$2y$12$C0QzPFBkPe7gB00t8JtDCeJoh6lrtzEtBOD.X638h0vOTngfcMnXi', NULL, '2025-08-28 02:12:43', '2025-08-28 02:12:43'),
(383, 'kamil rulyanda', 'kamilrulyanda009@gmail.com', 'siswa', NULL, '$2y$12$/DH1Rs6N94S7bv2aItSpF.GgzRetHuU5IhSqs5KNzFNLp1P13jFYu', NULL, '2025-08-28 02:13:28', '2025-08-28 02:13:28'),
(384, 'hadad', 'hadadbau77@gmail.com', 'siswa', NULL, '$2y$12$Q9NM22UENaYq0k7qjVhn3.bSsvZIMjxWqnMSaEdJQINRPBaUT38Y6', NULL, '2025-08-28 02:13:35', '2025-08-28 02:13:35'),
(385, 'Muhammad Iqbaal Nugroho', 'balzzzero@gmail.com', 'siswa', NULL, '$2y$12$FioyDglZx5uMqLWt7JL3eO8paCchH0.tjOJT99Rp8WiZ4UmXuUoN.', 'DIbANoad8UeI59VMDe2FugE1aQPX9yFH1fJD7hzObWeE8t60nBpdKjrV9LeH', '2025-08-28 02:13:35', '2025-08-28 02:13:35'),
(386, 'FAUQI NURON', 'fauqinuron@gmail.com', 'siswa', NULL, '$2y$12$kYxgLQuLT6N05Im.CRMvkes5TCJrxTCDVFWFG6SRKt1mpz5ek8P5y', 'C8cOP99Y81MQbtYRTyYhgeQOHfbTBcaFyW3ELRgwBx8o67Mwhi4vBpPh4vvK', '2025-08-28 02:13:41', '2025-08-28 02:13:41'),
(387, 'Muhfa', 'I\'amJeruk@gmail.com', 'siswa', NULL, '$2y$12$WnDUxFQk.PZJreoEX11EbuMO2D0IaaNi4KobM0dqJ7WMKWWRnNsQa', NULL, '2025-08-28 02:13:42', '2025-08-28 02:13:42'),
(388, 'muhamad Hadad arsy', 'fadildower@gmail.con', 'siswa', NULL, '$2y$12$CP6Isu9ktCZfAoiugO23S.TSDsWGv6EktbU3fnpB5eFimyCy5cA2m', NULL, '2025-08-28 02:13:50', '2025-08-28 02:13:50'),
(389, 'marcus dosol', 'marusdosol@gmail.com', 'siswa', NULL, '$2y$12$Xnb6GC1rvlFJ9yf5kLBwEuvHqqgKklyufIn8h30Ylrt1LutRMZrqi', NULL, '2025-08-28 02:13:52', '2025-08-28 02:13:52'),
(390, 'Alif ibrohim', 'alifibrohim100@gmail.com', 'siswa', NULL, '$2y$12$LqE3.prXR5p1GlJ5CkkSyeaLClRnpQqoTV.dztMIWoijBHGHox7bC', 'A4XOxi1OFrVNnYeYkPGgduu3IFlEoiVoU5b2o43d5XP3ImX0Svdclk3HzCJx', '2025-08-28 02:13:53', '2025-08-28 02:13:53'),
(391, 'xueyelit', 'hadad@gmail.com', 'siswa', NULL, '$2y$12$1SkEHCtJ9Ynq7qFdVgRf2OWu1UFV1m3tipE5Ok9L1eIxChPQqVNOq', NULL, '2025-08-28 02:14:09', '2025-08-28 02:14:09'),
(392, 'abdul haris maulana', 'muhamadijul02@gmail.com', 'siswa', NULL, '$2y$12$2ylwOzfRagbyf3HoD4PNq.mM6nQesrdi1weswx7Ci9NOsdISpmtFu', NULL, '2025-08-28 02:14:27', '2025-08-28 02:14:27'),
(393, 'Achmad Andhika ardhana', 'achmad.andhika231@gmail.com', 'siswa', NULL, '$2y$12$1K9YA11c9mLTxpGUXt9xde9plLPPM/84Zsg2nHTmN2t8C6dC9rXjC', NULL, '2025-08-28 02:14:40', '2025-08-28 02:14:40'),
(394, 'Latip', 'akuaku@gmail.com', 'siswa', NULL, '$2y$12$X8NMnYJ7Tp9XNmtUg4eBOu.TELGc8GiMo6WA60DF1olzyMrA/oJMy', NULL, '2025-08-28 02:14:50', '2025-08-28 02:14:50'),
(395, 'kamal ibrohim', 'Kamalibrohim44@gmail.com', 'siswa', NULL, '$2y$12$wWxmJC7WF0y8FxSmIiZwhO0xVMfQO5Clo2sMCkuq5vV1hNSjKR/Qq', '86nbgJzTgWfcVHesjUzxqi65zGcnc6nSE5pw3SBDGfH2HnNAD2QM34LvDIGd', '2025-08-28 02:15:17', '2025-08-28 02:15:17'),
(396, 'Muhfa', 'Jeruk@gmail.com', 'siswa', NULL, '$2y$12$d6ZwVrfnEEneODxs1ABxFu9FMiLpXFs0wJiYXP/jxrppZZZKpWD.G', NULL, '2025-08-28 02:15:27', '2025-08-28 02:15:27'),
(397, 'Marcus dosol', 'Marcusdosol@gmail.com', 'siswa', NULL, '$2y$12$0OW01JKYjF6lOT6NTBmygeYUreLgefz9DFExWb7fAncTr3nCLCKF2', 'fZ8cZ2snEe5AQfXTPfIB9toP54h2zJyVuoYlPuOJi9dUmu3gnmtgJkCkotP0', '2025-08-28 02:16:09', '2025-08-28 02:16:09'),
(398, 'muhamad Hadad arsy', 'fadhil@gmail.com', 'siswa', NULL, '$2y$12$4ReR5h61nOagMG0XlbBVOefcF/ZKZCksjf2nwOdkb4cctRCbET0hy', NULL, '2025-08-28 02:16:12', '2025-08-28 02:16:12'),
(399, 'mhmmad zaosan', 'mhmmadzsn@gmail.com', 'siswa', NULL, '$2y$12$MNZkQNCTym/GO1Meu1xWp.0df6spoebSY71n0PIhGJNd4U4LS3lY2', NULL, '2025-08-28 02:16:38', '2025-08-28 02:16:38'),
(400, 'abdul haris maulana', 'abdul.haris242@gmail.com', 'siswa', NULL, '$2y$12$JnRoo2OZx2b1mXaW6XF0oeTuwsWdkmEgdb80VtucXpYQJMPWBa7Zi', NULL, '2025-08-28 02:16:53', '2025-08-28 02:16:53'),
(401, 'Ahmad Fadil Ramdhani', 'dilgood27@gmail.com', 'siswa', NULL, '$2y$12$X.LXaUUQbJYeGFIk6PvBMOKdHaxKbWCBpTG64Yp4Fj2a.dGLYj.AC', 'Lt7HRCYGNU6pvqXeNBGC3Ib8oEsixwNUIlbAgfZ77PSTgVdcZ8MLV1Ja0xn2', '2025-08-28 02:16:57', '2025-08-28 02:16:57'),
(402, 'Tri andhika prasetya', 'tri747308@gmail.com', 'siswa', NULL, '$2y$12$MJ9w.3F.QPtD4KVJpOAD0eB/YOqJlnYPcG2PTIAcb4qDiQtPdCJl2', NULL, '2025-08-28 02:16:58', '2025-08-28 02:16:58'),
(403, 'Apdul latip', 'akuakuuu@gmail.com', 'siswa', NULL, '$2y$12$q3SthNoCCoRIDmdRWsV8QeaYK8h6V6cMTrR89smrmFAET5gda2MES', NULL, '2025-08-28 02:17:08', '2025-08-28 02:17:08'),
(404, 'GIRI AKBAR', 'Girysalut@gmail.com', 'siswa', NULL, '$2y$12$KLSP5kOQJrm9uL6RKav2Xuyt2QFbpQYSBsO9UDAQUuoc4ZDs7WkJ6', NULL, '2025-08-28 02:17:09', '2025-08-28 02:17:09'),
(405, 'Aden exsel Pratama', 'pratamaadenexsel@gmail.com', 'siswa', NULL, '$2y$12$3Br8AdhbXF5gCC5JccIqDODiYY1FMgNhhDggStrfhwkEzN0xjLwYa', NULL, '2025-08-28 02:17:27', '2025-08-28 02:17:27'),
(406, 'Apdillah.zm', 'apdillah@gmail.com', 'siswa', NULL, '$2y$12$5aBzXq0UuehSPxGe0qkAkuaxBOoDnsE6GNgFyxjVVH7MG8xJtrEeq', 'u9sbTNA839XOgq8u12W9FyAoMRNJNws0iSfVw9rTlNZZ01NM7QqehWRRbKAW', '2025-08-28 02:17:38', '2025-08-28 02:17:38'),
(407, 'Jhemyandreas', 'Jhemyandreas@gmail.com', 'siswa', NULL, '$2y$12$TwdEI1UeruFFAYE3/uuUMebcZb0TCJ8xj/TgF4EMmwZB9PaBpcUfu', 'Zvm7sgOA756bw1sDUtePzrgRJY5YfF3TqN5F55la6YoiG58jBhAvqdq2lfmC', '2025-08-28 02:18:30', '2025-08-28 02:18:30'),
(408, 'AKHMAL MAULANA', 'akmalmaulana@gmail.com', 'siswa', NULL, '$2y$12$z36b4xXPDIyaOecjmyRPyOmqMcNLwm/VP.IqOlHr0qSNfMwAwcglm', NULL, '2025-08-28 02:18:32', '2025-08-28 02:18:32'),
(409, 'Nisvi ardilla', 'nisviardilla@gmail.com', 'siswa', NULL, '$2y$12$K5.ofKQ7oc0ycfhmGtAEMeEsZymvWq3Gf.sHenm3KkQ7/B2ucE1su', NULL, '2025-08-28 02:19:17', '2025-08-28 02:19:17'),
(410, 'Aden exsel Pratama', 'adenexsel@gmail.com', 'siswa', NULL, '$2y$12$sHMp8tZJKEamKgRYMJ6naetWVt41qOslk4hIJjQ3ydTAPpEEWnUqG', NULL, '2025-08-28 02:19:22', '2025-08-28 02:19:22'),
(411, 'FARHAN KAMILAN', 'farhankamilan20@gmail.com', 'siswa', NULL, '$2y$12$mNuFllVdS4ZhBnKrPlB6DuAbEjbhrFaZVUntgKmmevZHgmG.e0BBO', NULL, '2025-08-28 02:19:47', '2025-08-28 02:19:47'),
(412, 'andikapratama', 'andikapratama@gmail.com', 'siswa', NULL, '$2y$12$fc6ZtSsJiWXlr7PCl0kkE.mkR7JLFu3EsKS.Pe/bdvATluoIg9sFm', NULL, '2025-08-28 02:20:44', '2025-08-28 02:20:44'),
(413, 'Giri akbar', 'Gerysalut@gmail.com', 'siswa', NULL, '$2y$12$.7qvkpR.f4mgiUEPTEU6Z.p5./eEFqEe6G5hkLB16zKeHlCzyXN1W', 'uvbLHdTnMQDjzZpDwAkzExt9cE76w203Tj2XMI9GvLBxUxhfcyVoFKpsTNoC', '2025-08-28 02:21:05', '2025-08-28 02:21:05'),
(414, 'AHMAD RIDHO', 'ahmadridho203@gmail.com', 'siswa', NULL, '$2y$12$C/3wzt8TeTi6pGENG84V5.SXEnjHOduxZPd8ykDblJa7jcKjvdvFi', 'TepkTDHbIUx6M7JAcfG3cp2vmoBbNZBWrxgYLidj4gA5VXSK2JAdxyXptmVh', '2025-08-28 02:22:42', '2025-08-28 02:22:42'),
(415, 'abdul haris', 'abdul.haris222@gmail.com', 'siswa', NULL, '$2y$12$eZpqif7k14EUj7GKXihH3.kVjkS1XU9PTAjyK40gq38a7zG6jcwvG', NULL, '2025-08-28 02:29:01', '2025-08-28 02:29:01'),
(416, 'Ahmad Fadil Ramdhani', 'asrifadil3@gmail.com', 'siswa', NULL, '$2y$12$tro4FclW2VrfOZodAcERxuGNPwR3Q14Zr1wNrq49zPsz0jIpyyfou', 'JGDuI7Sx2zTgR8M1hpYuecfyptZpQp09BaH3gY16n99lDghdrH12gTSmL93U', '2025-08-28 02:30:16', '2025-08-28 02:30:16'),
(417, 'ahmad ridho', 'ahmad.ridho247@gmail.com', 'siswa', NULL, '$2y$12$3KID/uFYOSTk9Yc8BZq/4ODiPh7.EQTRcPu1ApqYVeXMIKaa72nMO', 'SnbWm591EoBTaRVMtZDXYMVCAkS14h5eD5wm4XTSIZRTE7oPYoIxARLNgyq9', '2025-08-28 02:38:32', '2025-08-28 02:38:32'),
(418, 'AHMAD RIDHO', 'ahmadridho303@gmail.com', 'siswa', NULL, '$2y$12$sVl2VgacaLw/7XI3XN2QcuSeBCZzJ4CYpJJM4QeLY836kG2tkxxfi', 'i4gUSkJmSDnEPhZJlZ7HY6ggY8grhRhGRDw4c7IyughxtO8hcEmz8tQ3vcn5', '2025-08-28 02:48:37', '2025-08-28 02:48:37'),
(419, 'Hendra Kusasih, S.Pd.', '252626@guru.ujian.com', 'guru', NULL, '$2y$12$Bv.3mhZYxqXi0FPNOwDzku1TgISfp5xcAIOQTyZIrjjQVg3kN6MOa', NULL, '2025-08-28 03:38:16', '2025-08-28 03:38:16'),
(420, 'ulili', 'ulili@gmail.com', 'siswa', NULL, '$2y$12$6eQNH0HWWFmMWnINbn4zh.ikjSaNnZ15nPuajARQx5IvkXR1xBFhK', NULL, '2025-08-28 04:43:09', '2025-08-28 04:43:09'),
(421, 'dhohan pio ajun zulkarnain', 'dhohan@gmail.com', 'siswa', NULL, '$2y$12$d7GV3ybyiN9sI1cbMQJ3au..dT7QSyM54P6wPe5E4lj1pMnBSfI42', NULL, '2025-08-28 14:20:12', '2025-08-28 14:20:12'),
(422, 'Rizki Januari Putra', 'rizkijanuarip@gmail.com', 'siswa', NULL, '$2y$12$UDVbg6b27Mfbfr7QQ3JcUulrbQIwbRrULMejmKgo8ciQu12OAOJ2O', NULL, '2025-08-28 14:21:18', '2025-08-28 14:21:18'),
(423, 'Azzura sasmitha khasan', 'azzurakhasan@gmail.com', 'siswa', NULL, '$2y$12$znF/Wi5mHzGtV83SsE77QOoxwSFeJolBIfJzBL/sRXCwYwKAms/UG', NULL, '2025-08-28 23:06:38', '2025-08-28 23:06:38'),
(424, 'Murni', 'murniapriliasarixiiotkp@gmail.com', 'siswa', NULL, '$2y$12$OBC3/7zHMHil8TMQr4kut.KtNVEMOBu.kYU4Us17obIYuK1WtQmQa', 'EPevZIDeeHXzJjQDz6iEksiSrxPy5QE66rX1Bcant5ppwjObkGm6564BtPkZ', '2025-08-29 00:03:03', '2025-08-29 00:03:03'),
(425, 'sovia nur kholifah', 'sovianurkholifahXII@gmail.com', 'siswa', NULL, '$2y$12$Wy.iXYwVa/X4nZqxLacd6Ok1OJpgp9AN1SyrywrKAM0kleiJ2SAlC', NULL, '2025-08-29 00:05:41', '2025-08-29 00:05:41'),
(426, 'Sovia nur kholifah', 'soviakholifah@gmail.com', 'siswa', NULL, '$2y$12$Z7ZleNCWwg1aT2SA7q5YyOsl7cN8i2YldELrDcRieT8CHZ1KUOSX2', NULL, '2025-08-29 00:07:04', '2025-08-29 00:07:04'),
(427, 'Fadli Akbar Komaini Siregar', 'fadliakbarkomainisiregar@student.ac.id', 'siswa', NULL, '$2y$12$PQxehJphQ0iSh/LYTvYjfeA/Z1lNJTluleL9xKw.wiN5ATPZsIJt6', 'dWP57zpM3jAWNqLkKM5nbtTtxf0HGWPp13jLCBUhG6hpcKVxHEGYGkg6d40O', '2025-08-29 00:10:42', '2025-08-29 00:10:42'),
(428, 'MUHAMMAD ARYA', 'amuhammadarya839@gmail.com', 'siswa', NULL, '$2y$12$g1zfeXOlLcFClWtpom5hPOCkrtgwjW68cLZ6s81VDk1pbLhzFdBYq', NULL, '2025-08-29 00:10:57', '2025-08-29 00:10:57'),
(429, 'ntannxoxo', 'ppkl@gmail.com', 'siswa', NULL, '$2y$12$ZyF7cL3FoTf9vduEjAnhNuEXaBYHO04h70juNebDG4CVX0L43Gu2W', NULL, '2025-08-29 00:13:18', '2025-08-29 00:13:18'),
(430, 'satria Aditya Miftah', 'Satria@student.ac.id', 'siswa', NULL, '$2y$12$.vlFc7VONxA1kWktNxNFeemRcCX6Xf2uMw1AbvGftZgP0DsoVSYLS', NULL, '2025-08-29 00:13:36', '2025-08-29 00:13:36'),
(431, 'manda febriyanti', 'mpyelll170208@gmail.com', 'siswa', NULL, '$2y$12$IRncLzIrSeU61/VfpDIGseWJj/wd8kkBjnefcoH6IHcQYp./mUnSC', 'Fb7FYfCeB71R8H0k0BfZwok5XvYoLaguBISgKaCCT4VgHXnZGuRlCf3QvHEp', '2025-08-29 00:14:43', '2025-08-29 00:14:43'),
(432, 'Pharel', 'pharel5five@gmail.com', 'siswa', NULL, '$2y$12$FTLcF9.BqcNg9RlgE1FNQeRZxy.2yrd4so2CH8OTJXgrMJgppVd6S', NULL, '2025-08-29 00:15:40', '2025-08-29 00:15:40'),
(433, 'M.Samsul Palahhudin', 'palahhudin@gmail.com', 'siswa', NULL, '$2y$12$/TjqDBMoBilxrrNSX7wdV.0IFA6ll2MefYIalzBCVz3AuFAylg6R2', NULL, '2025-08-29 00:15:51', '2025-08-29 00:15:51'),
(434, 'Rizki Maulana', 'rizkimaulana100998@gmail.com', 'siswa', NULL, '$2y$12$ZYpswhzsyMsehyfPsUOmDOqrUMY0g7CojuuYqbk/DOvTCo9qiS58q', NULL, '2025-08-29 00:15:51', '2025-08-29 00:15:51'),
(435, 'Rangga agustian Supriyadi', 'supriyadirangga72@gmail.com', 'siswa', NULL, '$2y$12$lHyRx4cSvyo.yPCpw6ttrOn8PwuAqZEmZzzyZGNdrDHK54Cl.zYka', NULL, '2025-08-29 00:15:55', '2025-08-29 00:15:55'),
(436, 'Raka hadi Pratama', 'rakahadipratama08@gmail.com', 'siswa', NULL, '$2y$12$dsPs/0vtnnq1ybjaH26Hfuiagu5cewjmdpm71y3gAtbaJIg.MH0Nu', 'kwCDUh03uXJfI0mxyD4lYkXgcW6UQPeuDnn7lReQibsaXZBrufpjB5G4wctA', '2025-08-29 00:16:15', '2025-08-29 00:16:15'),
(437, 'wily', 'wily@gmail.com', 'siswa', NULL, '$2y$12$9HYUWi9lm4Qn7/41XjEXe.vZhTpL.o.bb18c8cs2PriCkZi.ODtBe', NULL, '2025-08-29 00:16:23', '2025-08-29 00:16:23'),
(438, 'TAUFIK JANUAR MAPAWA', 'taufikjanuarmapawa@gmail.com', 'siswa', NULL, '$2y$12$zQsTwd9Y4Hdi.9z4IEvg.OiI/p7wcF5/Zl/qHh4jKSOjfd6Atydtu', NULL, '2025-08-29 00:16:26', '2025-08-29 00:16:26'),
(439, 'SUSILAWATI', 'susi@gmail.com', 'siswa', NULL, '$2y$12$XWWRiB9SSu26b5QheiAIPOG2vH6dTzpaf8OysBJUfYYHkDBo2J5yK', NULL, '2025-08-29 00:16:47', '2025-08-29 00:16:47'),
(440, 'Saskia Adika Putri', 'saskiaadikaputri65@gmail.com', 'siswa', NULL, '$2y$12$npDfohkOxieTUhFUzTNz/uUI4WJlhM.WISSjntkYaYVqoFGQLjF9.', NULL, '2025-08-29 00:16:51', '2025-08-29 00:16:51'),
(441, 'Muhamad Jamalul', 'gccfajri@gmail.com', 'siswa', NULL, '$2y$12$04sSZT1MWNm2LqtyEVB2FeDop9jZCZuS6EWEnVkAxvVP8UOeUPp4u', 'AbIvbOLKumaqkmCShD11E8JDLEcAXmww9nqkkiIvGDIqYMiyfRCs6V30ngNP', '2025-08-29 00:17:21', '2025-08-29 00:17:21'),
(442, 'Davidhabil', 'billzzzz1221@gmail.com', 'siswa', NULL, '$2y$12$6LkqfEXp6qw7I7hP2wEdYeGiI6ml9VGJI46Nvyvui12oMollHsrU6', NULL, '2025-08-29 00:17:54', '2025-08-29 00:17:54'),
(443, 'NOVI AGUSTIN', 'novi123@gmail.com', 'siswa', NULL, '$2y$12$.I4Audy0UcFI1LWfBSsjOubm2KavYJOmFB1MTDks0spTF5kGFlJAG', 'pE6SIJVxvu4Lo2uXEk5Ub8sRUsHuKbfnV0N0TDKRcdGXMumHgeQiWvQ3wpdY', '2025-08-29 00:18:05', '2025-08-29 00:18:05'),
(444, 'Elang', 'pratama@gmail.com', 'siswa', NULL, '$2y$12$Jit7Altar42Q0J/R9SiMA.FT0pcIhFRj7zaKDPveRb2n5o7VAA2ze', NULL, '2025-08-29 00:18:17', '2025-08-29 00:18:17'),
(445, 'MUHAMMAD DAFFA RIDWAN MUNAWAR', 'daffar318@gmail.com', 'siswa', NULL, '$2y$12$uIB0s4oxr9NHotuli44.6OzIlB1FPU1TYrDme9WZ64.ODL/mstRR.', NULL, '2025-08-29 00:18:19', '2025-08-29 00:18:19'),
(446, 'SUSILAWATI', 'susilawati@gmail.com', 'siswa', NULL, '$2y$12$Mj2srVAPoeLhYxxth189s.OeyeFuUYdzkvSGHH9rI0JI.BKpTfyoG', 'ZM9RuRlB7VrYStXFuP1g9psTBg7znfQqZD0gaP051Hud6GCA29vUyY1LQKTV', '2025-08-29 00:18:54', '2025-08-29 00:18:54'),
(447, 'Selviana ikawati', 'shelvimpii@gmail.com', 'siswa', NULL, '$2y$12$nuqldNeIcYTHFz.Rx0Kb/Oqt4TyCKC4M9zXx2Qan5mpvsaUlK9Kia', NULL, '2025-08-29 00:19:06', '2025-08-29 00:19:06'),
(448, 'bima montana faralibery', 'bimamfaralibery@gmail.com', 'siswa', NULL, '$2y$12$IabISGz/bEfU9yc3gAVbYOj1qyQdAAZg2kvGjbGwBDkQRM/lfIWcO', NULL, '2025-08-29 00:19:14', '2025-08-29 00:19:14'),
(449, 'sri aprilia', 'sriaprilia009@gmail.com', 'siswa', NULL, '$2y$12$lKQNS2lTTlRsjjYNydYxxObrY.69k7gcK50LJGhxVqzTiuWRP5Pye', NULL, '2025-08-29 00:19:51', '2025-08-29 00:19:51'),
(450, 'Saepuloh', 'Saep@gmail.com', 'siswa', NULL, '$2y$12$JvFtFxd7VFIJeKrDDUtRSeaJ830ftoExtmenhRfDHA0ZzG2.cXLiy', NULL, '2025-08-29 00:19:55', '2025-08-29 00:19:55'),
(451, 'Muhammad Riyan Suprian', 'desmidesmiariyanti@gmail.com', 'siswa', NULL, '$2y$12$BCa78H5lzuF5.XUfgAxzG.p4c1dCRTvPU1IMR2/dWRkuNLzpW/1KC', 'fdq6OtWZmX0nreslImJ7Omi10qYgc978RBdChZuzhFU51UeUUeI3hjuB0cDB', '2025-08-29 00:19:57', '2025-08-29 00:19:57'),
(452, 'Noah Aprilio Benjamin Hutagalung', 'noahwithgeats@gmail.com', 'siswa', NULL, '$2y$12$87ySfMW37nPA5MgXq/4F1ufeEEL3Zx46VOJuxMcwniC21n2UmoUE2', NULL, '2025-08-29 00:20:30', '2025-08-29 00:20:30'),
(453, 'Muhammad Iqbal', 'muhammadiqbalfajar2008@gmail.com', 'siswa', NULL, '$2y$12$lei9xNXCyBaNO9Ix6rPaVem4AWbaAj6MnUbhS64KBH.cx9AHf6tka', NULL, '2025-08-29 00:20:34', '2025-08-29 00:20:34'),
(454, 'jullianishafitri', 'jullianisha13@gmail.com', 'siswa', NULL, '$2y$12$ykTfl.PsQ7AFA.OnyFwQauKQAG5VMDEvDwDa620FxDMRaAQbafyyi', NULL, '2025-08-29 00:20:40', '2025-08-29 00:20:40'),
(455, 'Iqrampohon', 'lakidoyancoc@gmail.com', 'siswa', NULL, '$2y$12$z49rGmzCf9VGoPWh.P9EQ.uzXTC7H.v8A3HYY8/hVQcZNq9VfdbQa', NULL, '2025-08-29 00:20:46', '2025-08-29 00:20:46'),
(456, 'Rafli yansyah', 'rfly@student.ac.id', 'siswa', NULL, '$2y$12$IZ/onDP2LDA0TChOKUDdzeypkNHYlZnJcHtiQtH.UmCDeLJjnLTta', 'BLczyCYhiTJWvuoSRGiGPcB6M1UH6Kf7F6Viul3zzI7EGKtpjel1OWwCkT6k', '2025-08-29 00:21:04', '2025-08-29 00:21:04'),
(457, 'Bagas Tajudin', 'bagastajudin676@gmail.com', 'siswa', NULL, '$2y$12$PLiHC.EX.9BqstCk8uuofuq4D1ktPwwx20/RWlOAnXRf/zDHSJnZ.', NULL, '2025-08-29 00:21:47', '2025-08-29 00:21:47'),
(458, 'muhammad andika pratama', 'ali45678@gmail.com', 'siswa', NULL, '$2y$12$VeQjhIXf7F5X7sxaiso7l.B3m7mgTyD4Jgr8evqo68PZiW.BInUMm', NULL, '2025-08-29 00:21:50', '2025-08-29 00:21:50'),
(459, 'Haya tsani zhafirah', 'Hayatsanizhafirah71@gmail.com', 'siswa', NULL, '$2y$12$7NBmtlVEwPbVir09K5Mff.5ziSkCyy0RLRGrLauLLbJTOz35Oz0yK', NULL, '2025-08-29 00:21:52', '2025-08-29 00:21:52'),
(460, 'sabrina zatira azahra', 'nana13@gmail.com', 'siswa', NULL, '$2y$12$wE/.YG1QDpnrsJd6b50Y0.qWzcwFpVRANxCPKV4eiiLQZNXZ/av2y', NULL, '2025-08-29 00:22:05', '2025-08-29 00:22:05'),
(461, 'zaelanifebrian', 'febrianzaelani49@gmail.com', 'siswa', NULL, '$2y$12$Eq7GURcnib602DWsi/R1w.MGSqjgLrggpwqMLqqyzyrkLCVo67z4G', NULL, '2025-08-29 00:22:24', '2025-08-29 00:22:24'),
(462, 'M.rafid rizqullah', 'masr47@gmail.com', 'siswa', NULL, '$2y$12$/Qtbvd3xBF523t2q6qflQuM9gASVIFF//LZEDnN33.KPMpAGf4dRi', NULL, '2025-08-29 00:23:00', '2025-08-29 00:23:00'),
(463, 'zihan Siti fatimah', 'zihann2@gmail.com', 'siswa', NULL, '$2y$12$F1aCBpiFDWslvzkpWXRTuOV7CzdX.4q1l4Ie6pdJWrd/6SjGWDDb6', NULL, '2025-08-29 00:23:20', '2025-08-29 00:23:20'),
(464, 'andika septiano', 'Andikaseptiano@student.ac.id', 'siswa', NULL, '$2y$12$Qy6hNxy4GlZ7hMaeQUnvvehg/4N.GsavX6CiBoAp/ajPTimQuVCJ6', NULL, '2025-08-29 00:23:24', '2025-08-29 00:23:24'),
(465, 'ADHA DIMAS PRAYOGA', 'dimasadha30@gmail.com', 'siswa', NULL, '$2y$12$2gmk0xIGctoyTIlNaosJCeJR/MjvL.ASw/xY106RhOB9d7.4ZMMLG', NULL, '2025-08-29 00:24:17', '2025-08-29 00:24:17'),
(466, 'Nur khamid', 'khamidnur81@gmail.com', 'siswa', NULL, '$2y$12$Vr5YmTBWFddenSN2kY2Wxu5U4LR/QAlSMa/Ss8lrFuDUueqJZAUfm', NULL, '2025-08-29 00:24:46', '2025-08-29 00:24:46'),
(467, 'Abdul latip', 'abdullatip@gmail.com', 'siswa', NULL, '$2y$12$IDjBKYVX/YmQ0jZM0BUUY..nupAbYquv7sUFsa/B1M2MToQofyjem', NULL, '2025-08-29 00:24:52', '2025-08-29 00:24:52'),
(468, 'Gabriel Bastian', 'persija1928@gmail.com', 'siswa', NULL, '$2y$12$BgzX64rX9mxrZvFBal4yUOjn5p.A6W/gkF7AG5FLO/4TNOQAZdfSS', NULL, '2025-08-29 00:25:03', '2025-08-29 00:25:03'),
(469, 'Rendi nauval maulana', 'rendinauval149@gmail.com', 'siswa', NULL, '$2y$12$lV9faD1wGrtDtXJogo3bpuL1y0bcC6z1lNyua071eFPYdlvly4gmO', NULL, '2025-08-29 00:26:10', '2025-08-29 00:26:10'),
(470, 'aditya putra', 'nichoadit8@gmail.com', 'siswa', NULL, '$2y$12$uBy52qf9nsIqfp.nP.UCdux..qGc/rN2Zun4nSWP2dbqbQaA75FG.', '99jtI6fu4ScgQHLoPFmgGXuapd7llJT1L6P9a6KCdz5loOmXexyjvCrLNRnY', '2025-08-29 00:26:14', '2025-08-29 00:26:14'),
(471, 'Ravi Alfarizi', 'ayyasygilang399@gmail.com', 'siswa', NULL, '$2y$12$hupSzprbw9Fu2YhVGVw1CewzboeCRAfRp3o0gWf7cT.Arf3RTLKdW', NULL, '2025-08-29 00:27:04', '2025-08-29 00:27:04'),
(472, 'Haya tsani zhafirah', 'hayatsanizhafirah007@gmail.com', 'siswa', NULL, '$2y$12$kyGnWV0uxJXGBhBUNiQ7QOeWsfcUCUPcEj2YnqgFX9waB9jzCUsrG', 'TiWVj1YGTGDVveydKNyMhc7pB6BqspR16wiYm4Vhqe3Sn52DP07df1ngOTu8', '2025-08-29 00:28:09', '2025-08-29 00:28:09'),
(473, 'Andhika A', 'andhikaakmal111@gmail.com', 'siswa', NULL, '$2y$12$qU1j4idZ5FFTAKlCTr7A4.TxEgGbAG2yqgCSI9eGrurQBabNBlmiu', NULL, '2025-08-29 00:28:24', '2025-08-29 00:28:24'),
(474, 'Nouval Farras Nugraha', 'nouvall@gmail.com', 'siswa', NULL, '$2y$12$RaCSCByRgjnQc/GAFxgJV.S9LCff5FFOD2zYwFQOQMGdp6A96iyZC', 'ycfVTtomc1aCNrnRMlNWIF0irpbRr1AbTMqMJnWzMFtdvuaW5AHVaHCBmW3r', '2025-08-29 00:28:41', '2025-08-29 00:28:41'),
(475, 'Saskia Adika Putri', 'saskiaadika@gmail.com', 'siswa', NULL, '$2y$12$9ft1smNfSQA04me5MYMsVOZ2PXp.wdHdGmZ3VQTVVIey1Xfog1Gty', NULL, '2025-08-29 00:28:52', '2025-08-29 00:28:52'),
(476, 'Rizki alfiantoro pratama', 'rizkyqalfian@gmail.com', 'siswa', NULL, '$2y$12$nhPBXZAKoKbD.1wgeLG2Puo/mQzauTRidm2VPta17ZdLiXHxB01cy', NULL, '2025-08-29 00:28:52', '2025-08-29 00:28:52'),
(477, 'Bala bala', 'apage223@gmail.com', 'siswa', NULL, '$2y$12$gBk1jsutaswoHPCi6Ofg7uO0FwLUNs3aUu7MOotOkshXd.kVqVdje', NULL, '2025-08-29 00:29:18', '2025-08-29 00:29:18'),
(478, 'Maulana Yusuf', 'walahir2009@gmail.com', 'siswa', NULL, '$2y$12$9UFaIuV0X.ILKV.G1XIBGegbOdc4ZDcqC4EJ1ENpcIVxugw.AKhme', NULL, '2025-08-29 00:30:00', '2025-08-29 00:30:00'),
(480, 'andariasmuhamadidris', 'andariasmuhamad10@gmail.com', 'siswa', NULL, '$2y$12$C8YvR349j0WDUqJB7NO2TuhwRoMsVumsTmOdlVrfiLLv5yF31gUU6', NULL, '2025-08-29 00:30:11', '2025-08-29 00:30:11'),
(481, 'Rizki Januari Putra', 'rizkijanuariput@gmail.com', 'siswa', NULL, '$2y$12$Caz2KfFr3Qr5v9mmdgqgD.SEUCAt5QnOP0.BivAVdAxdiq.aFv7nS', NULL, '2025-08-29 00:30:13', '2025-08-29 00:30:13'),
(482, 'Zaelani febrian', 'ucuplani25@gimail', 'siswa', NULL, '$2y$12$GXaiiac5IuGkC4Jc0lDgVOfqJ11/xDV4j5KGs0DdqSavUf6rgEGDm', NULL, '2025-08-29 00:30:14', '2025-08-29 00:30:14'),
(483, 'Muhammad naufal tsaqiif riyadi', 'tsaqiifnaufal077@gmail.com', 'siswa', NULL, '$2y$12$RG2GXbRjk2JOdcE3dgiW9ODFKK3T7pOErc420dU/wJBhouM5iJgEi', NULL, '2025-08-29 00:30:16', '2025-08-29 00:30:16'),
(486, 'Ahmad jilan', 'ahmadjilan767@gmail.cok', 'siswa', NULL, '$2y$12$UxFLKHUifd0YjsDP6ln2fOrksbT9/9TfbUB4eOEkZh9ZYiJJssfty', NULL, '2025-08-29 00:30:39', '2025-08-29 00:30:39'),
(487, 'Haris setiawan', 'awankece@gmail.com', 'siswa', NULL, '$2y$12$ezwty40ooyILxpldo2aJzOBK1isyE731R5o0vo1W/nTHZUlJvo.du', NULL, '2025-08-29 00:30:58', '2025-08-29 00:30:58'),
(488, 'Rio julianto', 'rio101@gmail.com', 'siswa', NULL, '$2y$12$SV24W5MY1xFTkjGD.1c5p.tkJVehr.Qz4Q1o7R2sNCU6tGlPXwXIm', NULL, '2025-08-29 00:32:27', '2025-08-29 00:32:27'),
(489, 'Maulana Yusuf', 'yusuf2009@gmail.com', 'siswa', NULL, '$2y$12$7brYwaryZctqvx0sF1Twgu/Zw8iCzFHuTR1aYu.UWwdumf8dA1R3G', NULL, '2025-08-29 00:32:27', '2025-08-29 00:32:27'),
(490, 'Elang', 'elang@gmail.com', 'siswa', NULL, '$2y$12$/mdL0UcHLemPDhSAHBQ5keDbz/k1gqkzVa8P1giN8XGY4dC.Fit3m', NULL, '2025-08-29 00:32:29', '2025-08-29 00:32:29'),
(491, 'TAUFIK JANUAR MAPAWA', 'nakanomiko676@gmail.com', 'siswa', NULL, '$2y$12$kPcQHN0e7gT0gDIzXPCX6.GXcNPrB34nwsKJECTsYgs7H3.caCuIu', 'PCTraPfyQeqNeGm4OHlK4SRNiQXI9mjwp7gzryLqdQkY31PogNpewORthe81', '2025-08-29 00:32:37', '2025-08-29 00:32:37'),
(492, 'abdul haris maulana', 'abdul.haris44@gmail.com', 'siswa', NULL, '$2y$12$kT9kqEoFmyYxhiQ729BBD.0kWxTwxSMZ1MGcRjMzHcRLIoQdHoQyi', NULL, '2025-08-29 00:33:00', '2025-08-29 00:33:00'),
(493, 'Reynaldi Okta Dwi', 'reynaldiokta28@gmail.com', 'siswa', NULL, '$2y$12$5WTH02beZn0cuL8Mj6BJJuv5EL3k66OtrKJRE25ozJzDf5cESSbmq', NULL, '2025-08-29 00:34:44', '2025-08-29 00:34:44'),
(494, 'Noah Aprilio Benjamin Hutagalung', 'jaakudragon@gmail.com', 'siswa', NULL, '$2y$12$n3CpGo7o3BMHzDgP5lm2P.SSXKXBzQUmU4Cze2HqdswHf50kTprna', NULL, '2025-08-29 00:35:09', '2025-08-29 00:35:09'),
(495, 'abdul haris maulana', 'abdul.haris23@gmail.com', 'siswa', NULL, '$2y$12$.uFn5jF8JkA6rH3I2zCN7ePdLSK3mCU69bujT/ywns4e6ApmPnzA.', NULL, '2025-08-29 00:35:14', '2025-08-29 00:35:14'),
(496, 'abdul haris maulana', 'SMPNTEXAW74@gmail.com', 'siswa', NULL, '$2y$12$Ih5nV9Z7oK6RkmT9eavVyOAfisDOuqtaymuzjOlsOvRHjGujIhzu.', NULL, '2025-08-29 00:36:14', '2025-08-29 00:36:14'),
(497, 'ntannxoxo', 'anjaybar@gmail.com', 'siswa', NULL, '$2y$12$m877hH3eUNdoV7GEWaqHk.Y0SKdkAlo1j1TBgy7Wbj0DR9hbDI9Ru', NULL, '2025-08-29 00:36:32', '2025-08-29 00:36:32'),
(498, 'orangimuet', 'imuetbange@gmail.com', 'siswa', NULL, '$2y$12$5BqSGUs8DhqPI5XJtwjwwuPzywo3hJu0ZFntd/g5/HwsOtYlBIH5G', NULL, '2025-08-29 00:36:42', '2025-08-29 00:36:42'),
(499, 'abdul haris maulana', 'abdulharismaulana12@gmail.com', 'siswa', NULL, '$2y$12$M7NDpOGEVXlmFcorYpaK9OgvhuCc7bJtAJ6TJaLw3WpzbNDR8oLVe', NULL, '2025-08-29 00:37:10', '2025-08-29 00:37:10'),
(500, 'ntannxoxo', 'oyoyoy@gmail.com', 'siswa', NULL, '$2y$12$zM1MdAQ1Sm4BoytvG2hOqu9QNzukZXb8ZwaeUNJHQM5k3zGOncihS', NULL, '2025-08-29 00:37:21', '2025-08-29 00:37:21'),
(501, 'naysila@gmail.com', 'naysila@gmail.com', 'siswa', NULL, '$2y$12$.KlURYR4IDfWdTIWicB1HehUDLns46dL8Xv9zWiKBz8nra6Sx9FO2', NULL, '2025-08-29 00:38:01', '2025-08-29 00:38:01'),
(502, 'reza dwi pangestu', 'reza@gmail.com', 'siswa', NULL, '$2y$12$LlBi12rwx63RXUr.o8SdKeOsDp2tfHDg5jHRvsfKm/3xQZ/B4ERSa', NULL, '2025-08-29 00:38:11', '2025-08-29 00:38:11'),
(503, 'Muhammad Vicky Al Ghazi', 'briyansssaputra@gmail.com', 'siswa', NULL, '$2y$12$A/NlxAspWQM1PsD42MZhm.fcn5P5GoRA9mkBicXEomkkdZD8Y06x.', NULL, '2025-08-29 00:38:23', '2025-08-29 00:38:23'),
(504, 'Selviana ikawati', 'viaaa@gmail.com', 'siswa', NULL, '$2y$12$mh0TPW2A6uddFg5DWY9/XeOsG9vX.QneIIruEKf/fVKBIg31oqTkG', NULL, '2025-08-29 00:38:33', '2025-08-29 00:38:33'),
(505, 'farla eka putri', 'farlaekaputri@gmail.com', 'siswa', NULL, '$2y$12$N8Agp555PTP7WJ3d8WiTDOECp5laB1M5z8Uz7iAT3I0NGMgEM/RAG', NULL, '2025-08-29 00:39:11', '2025-08-29 00:39:11'),
(506, 'zahraa', 'zhr@gmail.com', 'siswa', NULL, '$2y$12$LTdkZLZQRJb.jNPL33wywuxqxA7zCD49Q33VO3ip1.6zTdKjmFOwG', NULL, '2025-08-29 00:39:12', '2025-08-29 00:39:12'),
(507, 'abdul haris maulana', 'abdul.harismaulana12@gmail.com', 'siswa', NULL, '$2y$12$D48NUgds6eG4CjNKevXsWu7BeMS51XlFaA2osMa2.IK5mLlu3KHGO', NULL, '2025-08-29 00:39:30', '2025-08-29 00:39:30'),
(508, 'orangimuet', 'imuetbanget@gmail.com', 'siswa', NULL, '$2y$12$uCGbtuOO96hjpzpoJxgxjuhPoa/sX3nmi0.0KP8a600IOn2gkNYVi', NULL, '2025-08-29 00:39:31', '2025-08-29 00:39:31'),
(509, 'Dani Fikri', 'dani@student.ac.id', 'siswa', NULL, '$2y$12$rIKbrk8asYbPL/kxqedo6ezgMOw.Bl0aGTp/tCSqnSNZhkvbJjE8S', 'ynhECHE0FpmDT2p3wBKU7dqebCT7vk8D47yzRRWTICOcbkylEf6BLz67IR1t', '2025-08-29 00:39:53', '2025-08-29 00:39:53'),
(510, 'sri aprilia', 'april@gmail.com', 'siswa', NULL, '$2y$12$aACPYpQsBCNLqWcCpZ1R3ejxzTjZTlPliUsrSuCyHk2RMoJnbST.S', NULL, '2025-08-29 00:40:04', '2025-08-29 00:40:04'),
(511, 'nabila luth afifah', 'nabilalutafifah@gmail.com', 'siswa', NULL, '$2y$12$7JoiG1UwdyuwetLoTncbXOrFtnoRpoDBpMdTWNkvq8NW5VvfQYAs2', NULL, '2025-08-29 00:40:36', '2025-08-29 00:40:36'),
(512, 'Elang pratama', 'elangpratama@gmail.com', 'siswa', NULL, '$2y$12$GU1.9av8R3RxPOEgDV1Xxe30HyRc6NXYcWG19mG3c41uJIhEz6RI6', NULL, '2025-08-29 00:41:50', '2025-08-29 00:41:50'),
(515, 'fasya busnainul f', 'fasyaafasyaaacaa@gmail.com', 'siswa', NULL, '$2y$12$EnVsr83DHk3najjcftogSuDlpyuQGvL9P4BDWDDkZ2O3NTXHmNbze', NULL, '2025-08-29 01:09:13', '2025-08-29 01:09:13'),
(516, 'fasya busnainul fadilah', 'fasyaabusnainulffasyabusnainul@gmail.com', 'siswa', NULL, '$2y$12$gHAyOiUUKRZOgTZCByRmQ.XwOTHSUWZi5cD5Mn2T2VSqm8SuH2a86', NULL, '2025-08-29 01:12:37', '2025-08-29 01:12:37'),
(517, 'Hendra kusasih', 'kusasihhendra@gmail.com', 'siswa', NULL, '$2y$12$MZfz3PRmnEjhxJ42qqrDUOCh24WBWfKcT/jY8crkNBrfz771eOsDu', NULL, '2025-08-29 02:39:08', '2025-08-29 02:39:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensis`
--
ALTER TABLE `absensis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `absensis_user_id_foreign` (`user_id`),
  ADD KEY `absensis_dibuat_oleh_foreign` (`dibuat_oleh`);

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
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_exams_mapel_id` (`mapel_id`),
  ADD KEY `fk_exams_user` (`user_id`);

--
-- Indexes for table `exam_questions`
--
ALTER TABLE `exam_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_questions_exam_id_foreign` (`exam_id`);

--
-- Indexes for table `exam_question_options`
--
ALTER TABLE `exam_question_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_question_options_exam_question_id_foreign` (`exam_question_id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_results_student_id_foreign` (`student_id`),
  ADD KEY `exam_results_exam_id_foreign` (`exam_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `guru_details`
--
ALTER TABLE `guru_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guru_details_pegawai_id_foreign` (`pegawai_id`);

--
-- Indexes for table `guru_mapels`
--
ALTER TABLE `guru_mapels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guru_mapels_pegawai_id_foreign` (`pegawai_id`);

--
-- Indexes for table `jamguru_perhari`
--
ALTER TABLE `jamguru_perhari`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pegawais` (`pegawai_id`);

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
-- Indexes for table `jurusans`
--
ALTER TABLE `jurusans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapels`
--
ALTER TABLE `mapels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_question_id_foreign` (`question_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pegawais`
--
ALTER TABLE `pegawais`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pegawais_email_unique` (`email`),
  ADD KEY `fk_pegawais_user` (`user_id`);

--
-- Indexes for table `pegawai_sertifikats`
--
ALTER TABLE `pegawai_sertifikats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pegawai_sertifikats_pegawai_id_foreign` (`pegawai_id`);

--
-- Indexes for table `pegawai_sks`
--
ALTER TABLE `pegawai_sks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pegawai_sks_pegawai_id_foreign` (`pegawai_id`);

--
-- Indexes for table `profile_admin`
--
ALTER TABLE `profile_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_admin_user_id_foreign` (`user_id`);

--
-- Indexes for table `profile_guru`
--
ALTER TABLE `profile_guru`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_guru_user_id_foreign` (`user_id`);

--
-- Indexes for table `profile_superadmin`
--
ALTER TABLE `profile_superadmin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profile_superadmin_user_id_unique` (`user_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_exam_id_foreign` (`exam_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siswas_email_unique` (`email`),
  ADD UNIQUE KEY `siswas_nisn_unique` (`nisn`),
  ADD UNIQUE KEY `siswas_nik_unique` (`nik`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `fk_siswas_kelas_id` (`kelas_id`);

--
-- Indexes for table `siswa_absensis`
--
ALTER TABLE `siswa_absensis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `dibuat_oleh` (`dibuat_oleh`);

--
-- Indexes for table `siswa_pindahan`
--
ALTER TABLE `siswa_pindahan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `nik` (`nik`),
  ADD KEY `kelas_id` (`kelas_id`);

--
-- Indexes for table `student_answers`
--
ALTER TABLE `student_answers`
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
-- AUTO_INCREMENT for table `absensis`
--
ALTER TABLE `absensis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `exam_questions`
--
ALTER TABLE `exam_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `exam_question_options`
--
ALTER TABLE `exam_question_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1556;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guru_details`
--
ALTER TABLE `guru_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `guru_mapels`
--
ALTER TABLE `guru_mapels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `jamguru_perhari`
--
ALTER TABLE `jamguru_perhari`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jurusans`
--
ALTER TABLE `jurusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `mapels`
--
ALTER TABLE `mapels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pegawais`
--
ALTER TABLE `pegawais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `pegawai_sertifikats`
--
ALTER TABLE `pegawai_sertifikats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pegawai_sks`
--
ALTER TABLE `pegawai_sks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profile_admin`
--
ALTER TABLE `profile_admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profile_guru`
--
ALTER TABLE `profile_guru`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile_superadmin`
--
ALTER TABLE `profile_superadmin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siswas`
--
ALTER TABLE `siswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT for table `siswa_absensis`
--
ALTER TABLE `siswa_absensis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `siswa_pindahan`
--
ALTER TABLE `siswa_pindahan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `student_answers`
--
ALTER TABLE `student_answers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1588;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=518;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absensis`
--
ALTER TABLE `absensis`
  ADD CONSTRAINT `absensis_dibuat_oleh_foreign` FOREIGN KEY (`dibuat_oleh`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `absensis_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `fk_exams_mapel_id` FOREIGN KEY (`mapel_id`) REFERENCES `mapels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_exams_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_questions`
--
ALTER TABLE `exam_questions`
  ADD CONSTRAINT `exam_questions_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_question_options`
--
ALTER TABLE `exam_question_options`
  ADD CONSTRAINT `exam_question_options_exam_question_id_foreign` FOREIGN KEY (`exam_question_id`) REFERENCES `exam_questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD CONSTRAINT `exam_results_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_results_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guru_details`
--
ALTER TABLE `guru_details`
  ADD CONSTRAINT `guru_details_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guru_mapels`
--
ALTER TABLE `guru_mapels`
  ADD CONSTRAINT `guru_mapels_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jamguru_perhari`
--
ALTER TABLE `jamguru_perhari`
  ADD CONSTRAINT `fk_pegawais` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pegawais`
--
ALTER TABLE `pegawais`
  ADD CONSTRAINT `fk_pegawais_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pegawai_sertifikats`
--
ALTER TABLE `pegawai_sertifikats`
  ADD CONSTRAINT `pegawai_sertifikats_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pegawai_sks`
--
ALTER TABLE `pegawai_sks`
  ADD CONSTRAINT `pegawai_sks_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profile_admin`
--
ALTER TABLE `profile_admin`
  ADD CONSTRAINT `profile_admin_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profile_guru`
--
ALTER TABLE `profile_guru`
  ADD CONSTRAINT `profile_guru_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profile_superadmin`
--
ALTER TABLE `profile_superadmin`
  ADD CONSTRAINT `profile_superadmin_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `siswas`
--
ALTER TABLE `siswas`
  ADD CONSTRAINT `fk_siswa_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_siswas_kelas_id` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
