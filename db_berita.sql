-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Okt 2021 pada 06.18
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_berita`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `beritas`
--

INSERT INTO `beritas` (`id`, `image`, `title`, `content`, `created_at`, `updated_at`) VALUES
(5, 'VMzHZT4spk1RcItTBrV6frmXbg6YliNmaFvOXSre.jpg', 'anak langit', 'anak langit isi', '2021-06-30 02:23:57', '2021-06-30 02:23:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kutipan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktupost` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `blogs`
--

INSERT INTO `blogs` (`id`, `image`, `title`, `content`, `kutipan`, `waktupost`, `created_at`, `updated_at`) VALUES
(4, '1630385193-b2.jpg', 'Warga Ponorogo Digegerkan Pohon Nangka Berbuah Durian', 'Warga Desa Purwosari, Ponorogo, Jawa Timur digegerkan pohon nangka berbuah durian. Fenomena unik itu langsung tersiar hingga membuat warga luar daerah penasaran untuk melihat langsung. Buah menyerupai durian itu, kini tersisa satu buah nangka dengan kulit menyerupai durian yang masih menempel di pohon. Sedangkan buah nangka pada umumnya masih ada puluhan buah di pohon tersebut.', 'Warga Desa Purwosari, Ponorogo, Jawa Timur digegerkan pohon nangka berbuah durian.', 'Dibuat, 2 Juli 2021', '2021-07-01 20:59:59', '2021-08-30 21:46:33'),
(12, 'v3NBD7XsNM1DDbntwJsUNYkNkOWvwzST0p3ql3SU.jpg', 'Masuk Zona Merah Covid-19, Pemkab Ponorogo Terapkan Jam Malam', 'Pemerintah Kabupaten Ponorogo menerapkan jam malam setelah wilayah itu ditetapkan sebagai zona merah atau wilayah dengan risiko tinggi penularan Covid-19. Satgas Covid-19 Ponorogo juga akan melakukan pengecekan di lokasi wisata dalam kurun dua hingga tiga jam sekali.', 'Pemerintah Kabupaten Ponorogo menerapkan jam malam setelah wilayah itu ditetapkan sebagai zona merah', 'Dibuat, 30 Juli 2021', '2021-07-29 20:47:04', '2021-08-19 04:09:46'),
(13, 'GkwpsyHubPZQdLIftiqb9o38OpbgTj5w4T0xwZbo.jpg', 'Seluk Beluk Kesenian Reog Ponorogo', 'Reog Ponorogo merupakan salah satu dari sekian banyaknya kesenian yang ada di Indonesia. Kesenian rakyat yang berasal dari Kabupaten Ponorogo, Jawa Timur ini merupakan sebuah pertunjukan tari tradisional yang biasanya dilakukan di arena terbuka sambil diiringi alat musik tradisional seperti kendang dan juga gong. Di masa sekarang ini, pertunjukan Reog Ponorogo dipentaskan di panggung atau lapangan. Pertunjukan Reog Ponorogo biasanya ditampilkan pada bulan Muharram yaitu Grebeg Suro.', 'Reog Ponorogo merupakan salah satu dari sekian banyaknya kesenian yang ada di Indonesia', 'Dibuat, 30 Juli 2021', '2021-07-29 20:55:17', '2021-08-19 04:09:55'),
(14, 'AI1VvT4p1riYNiEHrll5WymGLnsJ4jMJj20fNsoS.jpg', 'Masa Pandemi, Pemkab Ponorogo Ikuti Takbir Virtual Pemprov', 'Terkait dengan pelaksanaan sholat id yang akan dilaksanakan besok, Gubernur menghimbau untuk sebaiknya melaksanakan dirumah saja. Sementara itu Bupati Ponorogo Sugiri Sancoko atas nama Pemerintah Kabupaten Ponorogo mengucapkan selamat hari raya idul adha 1442 H, Meski ditengah pandemi kita tak kehilangan khitmad beridul adha, mari kita sandarkan semuanya kepada Allah S.W.T. Dengan berkurban Insyallah kita akan selamat.', 'Terkait dengan pelaksanaan sholat id yang akan dilaksanakan besok, Gubernur menghimbau untuk sebaiknya melaksanakan dirumah saja', 'Dibuat, 30 Juli 2021', '2021-07-29 20:56:07', '2021-08-19 04:10:04'),
(15, 'SsWMofk8CCp4neC17jKIqROFsLbWL0pfpBEDkSVQ.jpg', 'Di Ponorogo, Vaksinasi Covid-19 Makin Cepat', 'Pelaksanaan vaksinasi massal covid-19 di Ponorogo semakin cepat. Setiap warga yang ingin disuntik memerlukan waktu kurang dari satu jam dari tiba sampai harus meninggalkan lokasi vaksinasi massal. Mereka tidak harus antre berkepanjangan hingga aktifitasnya terganggu. Mereka bisa bisa mendapatkan jatah dosis suntikan pengebalan tubuh dan bisa segera kembali ke tempat kerja atau pulang ke rumah. Ketua Bidang Pelaksana Satgas Vaksinasi Covid-19 Ponorogo Hermansyah, Kamis (15/7/2021) mengatakan, dari waktu ke waktu, vaksinasi massal yang digelar Dinas Kesehatan Ponorog memang semakin cepat bagi warga.', 'Pelaksanaan vaksinasi massal covid-19 di Ponorogo semakin cepat', 'Dibuat, 30 Juli 2021', '2021-07-29 20:57:35', '2021-08-19 04:10:41'),
(21, '1630385206-gigi.png', 'gigi', 'gigi', 'gigi', 'sekarang', '2021-08-30 21:41:42', '2021-08-30 21:46:46');

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
-- Struktur dari tabel `galeris`
--

CREATE TABLE `galeris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galeris`
--

INSERT INTO `galeris` (`id`, `image`, `title`, `created_at`, `updated_at`) VALUES
(9, '6fxje5U1B4JamWPN7xmlG5i9JGnkrljtY9Mbip4i.jpg', 'Sate Ayam Ponorogo', '2021-07-22 20:15:36', '2021-07-22 20:15:36'),
(10, 'XiZLBhZ95K6F3z0WvpkWN9Isfq5fohuPvUFY1tyz.jpg', 'Telaga Ngebel', '2021-07-22 20:18:57', '2021-07-22 20:24:36'),
(11, 'CZWhM0GKBTxke1NFAnTR4tLGirU3gU7kC4hXm5qs.jpg', 'Aloon Aloon Ponorogo', '2021-07-22 20:20:07', '2021-07-22 20:29:31'),
(12, 'YVX0XYLHGgpCLrf3t0KefJj8Lgq93QOOnZwGWMKn.jpg', 'Grebeg Suro Ponorogo', '2021-07-22 20:24:01', '2021-07-22 20:24:01'),
(13, '4XHiQ4eVQbNtiM2v67lJ5cFNf37G9oSaP2TIMIpi.jpg', 'Reog Ponorogo', '2021-07-22 20:26:30', '2021-07-22 20:26:30'),
(14, 'gXlgEvLwABH8jGfcw7zKfo1fCK9Tg2rT5hU4RKfa.jpg', 'Es Dawet Jabung', '2021-07-22 20:29:07', '2021-07-22 20:29:07'),
(21, '1631758664-8db.jpg', 'mtk2', '2021-09-15 19:17:44', '2021-09-15 19:17:53'),
(22, '1633338910-trans1.jpg', 'bis', '2021-10-04 02:15:10', '2021-10-04 02:15:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_30_051244_create_beritas_table', 1),
(5, '2021_06_30_084110_create_galeris_table', 2),
(6, '2021_06_30_115531_create_news_table', 3),
(7, '2021_06_30_121555_create_blogs_table', 4),
(8, '2021_06_30_124332_create_menus_table', 5),
(9, '2021_07_13_005945_create_trendings_table', 6),
(10, '2021_07_16_023844_create_slides_table', 7),
(11, '2021_07_24_123350_create_sosmeds_table', 8),
(12, '2021_08_02_022536_create_videos_table', 9),
(13, '2021_09_06_032148_create_medsos_table', 10),
(14, '2021_09_06_052414_create_sosialmedia_table', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `newss`
--

CREATE TABLE `newss` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `slides`
--

INSERT INTO `slides` (`id`, `image`, `title`, `content`, `created_at`, `updated_at`) VALUES
(2, 'ekVHnsDjX2BMU6x4JN4L5nHdF6APEB8YsXivAUe0.jpg', 'Selamat Datang di Kota Ponorogo', 'Pemerintah Kabupaten Ponorogo.', '2021-07-15 20:15:13', '2021-07-15 20:15:13'),
(3, 'O4IHA0SvD618QR1YbiI1yrm93qlQr9eLblJmGnDn.jpg', 'Selamat Datang di Kota Ponorogo', 'Telaga Ngebel Ponorogo.', '2021-07-15 20:15:44', '2021-07-22 20:30:39'),
(4, 't5iUz298VIilPl9r1WxBJjyyQdHQYq2SJ11e05PG.jpg', 'Selamat Datang di Kota Ponorogo', 'Reog Ponorogo.', '2021-07-15 20:16:12', '2021-07-15 20:16:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sosialmedia`
--

CREATE TABLE `sosialmedia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `medsos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sosialmedia`
--

INSERT INTO `sosialmedia` (`id`, `medsos`, `icon`, `link`, `created_at`, `updated_at`) VALUES
(2, 'Instagram', 'fab fa-instagram', 'https://www.instagram.com/rahmaaaprilia/', '2021-09-05 23:01:39', '2021-09-05 23:02:57'),
(3, 'Whatsapp', 'fab fa-whatsapp', 'https://wa.me/6287810635760', '2021-09-05 23:03:27', '2021-09-05 23:56:55'),
(4, 'Facebook', 'fab fa-facebook', 'https://web.facebook.com/?_rdc=1&_rdr', '2021-09-05 23:04:04', '2021-09-05 23:04:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `trendings`
--

CREATE TABLE `trendings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kutipan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktupost` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `trendings`
--

INSERT INTO `trendings` (`id`, `image`, `title`, `content`, `kutipan`, `waktupost`, `created_at`, `updated_at`) VALUES
(1, 'K1N0dWasbEyx6x1kljVCFTMjG5D47CHifxG0pKTi.jpg', 'Pemkab Ponorogo Gencarkan Vaksinasi Covid-19 ke Desa-Desa', 'Pemerintah Kabupaten Ponorogo menggencarkan vaksinasi massal. Selain di wilayah perkotaan, kegiatan ini juga menyasar masyarakat yang ada sebagian desa di Ponorogo. Vaksinasi di Sasana Praja, Ponorogo, ada 2.500 warga dengan suntikan dosis pertama pada Kamis dan 1.800 untuk dosis kedua pada Jumat. Masyarakat Ponorogo sangat antusias atas vaksinasi massal ini. Menurutnya, hal ini didorong oleh kesadaran untuk mendapatkan kekebalan tubuh terkait munculnya varian-varian baru virus corona. Selain itu juga didorong persyaratan kartu vaksin saat harus bepergian ke luar kota atau memanfaatkan transportasi umum.', 'Pemerintah Kabupaten Ponorogo menggencarkan vaksinasi massal. Selain di wilayah perkotaan, kegiatan ini juga menyasar masyarakat yang ada sebagian desa di Ponorogo. Vaksinasi di Sasana Praja, Ponorogo, ada 2.500 warga dengan suntikan dosis pertama pada Kamis dan 1.800 untuk dosis kedua pada Jumat. Masyarakat Ponorogo sangat antusias atas vaksinasi massal ini. Menurutnya, hal ini didorong oleh kesadaran untuk mendapatkan kekebalan tubuh terkait munculnya varian-varian baru virus corona.', 'Dibuat, 13 Juli 2021', '2021-07-12 18:20:28', '2021-08-19 04:25:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Berita', 'admin@admin.com', NULL, '$2y$10$4FTJcfs5VSUrDCQEQL5T8.c1YihN/5pROolmM4nyKVb1o4hIbsuNO', 'C0Jv20KI5jUgvinjug52Y7AiIw1qWbMP349CgzDqsGLnaaVrvnCcGi6C0eGS', '2021-06-30 21:06:30', '2021-06-30 21:06:30'),
(6, 'halo', 'halo@gmail.com', NULL, '$2y$10$eHuvCjOtAj7eeLsVgu0bguBubpsHOxMI6wdfz./9vnL/MB4MkDlka', NULL, '2021-07-01 01:59:40', '2021-07-01 01:59:40'),
(10, 'rahma', 'rahma@gmail.com', NULL, '$2y$10$idCSTVuV16mSoEc8.apjQ.1PUDoIOCtGBkvjVQxSvGmYp1leQLIpC', NULL, '2021-07-01 02:03:57', '2021-07-01 02:03:57'),
(11, 'elang', 'elang@gmail.com', NULL, '$2y$10$nCXWrt3yE.JMFq96NFcgdeMc49odP1lC8.B6VScvQyAGhJsl4K8n6', NULL, '2021-08-18 01:00:18', '2021-08-18 01:00:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `videos`
--

INSERT INTO `videos` (`id`, `jenis`, `link`, `created_at`, `updated_at`) VALUES
(2, 'Youtube', 'https://www.youtube.com/embed/AEADNFy0iRY', '2021-08-01 19:51:54', '2021-08-01 20:09:34');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `galeris`
--
ALTER TABLE `galeris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `newss`
--
ALTER TABLE `newss`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sosialmedia`
--
ALTER TABLE `sosialmedia`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `trendings`
--
ALTER TABLE `trendings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galeris`
--
ALTER TABLE `galeris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `newss`
--
ALTER TABLE `newss`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `sosialmedia`
--
ALTER TABLE `sosialmedia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `trendings`
--
ALTER TABLE `trendings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
