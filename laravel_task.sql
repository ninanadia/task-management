-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Apr 2023 pada 01.11
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_task`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_02_16_012218_create_tasks_table', 1),
(7, '2023_02_16_012423_add_column_user_tasks_table', 1),
(8, '2023_03_29_012446_add_column_role_users_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('nina@gmail.com', '$2y$10$KiAosqnKCishHsV4ANJJeu/esc4N0VOFdKpvSvBiXLLEmwyEg.jW6', '2023-03-09 20:03:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tasks`
--

INSERT INTO `tasks` (`id`, `task`, `user`, `created_at`, `updated_at`) VALUES
(1, 'quisquam', 'Stefanie Wiza', '2023-03-08 01:23:58', '2023-03-08 01:23:58'),
(2, 'quisquam', 'Baby Halvorson', '2023-03-08 01:23:58', '2023-03-08 01:23:58'),
(3, 'ipsum', 'Dr. Noe Harber', '2023-03-08 01:23:58', '2023-03-08 01:23:58'),
(4, 'et', 'Berneice Yost MD', '2023-03-08 01:23:58', '2023-03-08 01:23:58'),
(5, 'molestiae', 'Amos Cummings', '2023-03-08 01:23:58', '2023-03-08 01:23:58'),
(6, 'ut', 'Zita Effertz I', '2023-03-08 01:23:58', '2023-03-08 01:23:58'),
(7, 'id', 'Luisa Kreiger', '2023-03-08 01:23:58', '2023-03-08 01:23:58'),
(8, 'voluptates', 'Marge Lynch MD', '2023-03-08 01:23:58', '2023-03-08 01:23:58'),
(9, 'et', 'Miss Felicity Walker', '2023-03-08 01:23:58', '2023-03-08 01:23:58'),
(10, 'non', 'Baylee Schmitt', '2023-03-08 01:23:58', '2023-03-08 01:23:58'),
(11, 'animi', 'Prof. Cordell McGlynn DDS', '2023-03-08 01:23:58', '2023-03-08 01:23:58'),
(12, 'sint', 'Lydia Kemmer', '2023-03-08 01:23:58', '2023-03-08 01:23:58'),
(13, 'optio', 'Kaela Schultz', '2023-03-08 01:23:58', '2023-03-08 01:23:58'),
(14, 'eaque', 'Zakary Rice', '2023-03-08 01:23:58', '2023-03-08 01:23:58'),
(15, 'perspiciatis', 'Prof. Lawson Williamson', '2023-03-08 01:23:58', '2023-03-08 01:23:58'),
(16, 'amet', 'Laverna Wilkinson', '2023-03-08 01:23:58', '2023-03-08 01:23:58'),
(17, 'blanditiis', 'Sonya Cormier', '2023-03-08 01:23:58', '2023-03-08 01:23:58'),
(18, 'rerum', 'Hope Wiza', '2023-03-08 01:23:58', '2023-03-08 01:23:58'),
(19, 'dolor', 'Reuben Gusikowski', '2023-03-08 01:23:58', '2023-03-08 01:23:58'),
(20, 'tempora', 'Francisca Schmitt', '2023-03-08 01:23:58', '2023-03-08 01:23:58'),
(21, 'sss', 'sss', '2023-03-08 03:54:01', '2023-03-08 03:54:01'),
(22, 'ssss', 'lala', '2023-03-28 18:36:27', '2023-03-28 18:36:27'),
(23, 'ggggg', 'ggggg', '2023-03-28 18:36:37', '2023-03-28 18:36:37'),
(24, 'dahgvvchvahs', 'Clemens Walsh edit', '2023-03-28 18:38:54', '2023-03-28 18:38:54'),
(25, 'bhbhhb', 'Stefanie Upton edit', '2023-03-28 18:40:03', '2023-03-28 18:40:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nina', 'nina@gmail.com', NULL, NULL, '$2y$10$c2pqZNdnk6RHDd1/RzbwLOLera2o.for4r1v6nvUCmJyYjK86ADV2', NULL, NULL, NULL, '6hdi6tCqhcMCnIOTYAsebMNS7aYqF1VHJS7N2ptimZRcPJUGdOIrHDOTRUNI', '2023-03-08 02:06:07', '2023-03-09 20:03:10'),
(2, 'husein', 'husein@gmail.com', NULL, NULL, '$2y$10$Wfhg0H14M8c4oHYN2qorqO1YRy2QbJy.8hEOgDNj8hM8IK1oU1nGi', NULL, NULL, NULL, 'fiYvzB2sr5mucotkBEFWJIjZeWkrfOQKJjD8ZYbN8xlfJp54mwMPHy8RmK6Q', '2023-03-09 20:06:16', '2023-03-09 20:07:00'),
(3, 'fitri', 'fitri@gmail.com', 'admin', '2023-03-28 19:23:15', '$2y$10$xnxcfJCOYXSxgbrgejm4uejRZN2EiAJFfhd2dFiWitcZL8LDt.eg2', NULL, NULL, NULL, NULL, '2023-03-28 18:04:03', '2023-03-28 19:23:15');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `tasks`
--
ALTER TABLE `tasks`
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
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
