-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-07-2025 a las 15:09:10
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `libreria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `author` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `books`
--

INSERT INTO `books` (`id`, `title`, `description`, `author`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Eos voluptatum est aut.', 'Distinctio quo tempore ut voluptatem ipsum quasi. Odit natus alias sed ea.', 'Jennings Glover', 3, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(2, 'Autem aut sunt.', 'Officia est at et. Ducimus quas perferendis sit voluptatem excepturi esse. Facilis ut ea omnis. Distinctio nihil ea dolores quis.', 'Henry Bailey Jr.', 7, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(3, 'Aut atque totam.', 'Quasi quibusdam dolorum et veniam. Quasi reiciendis nesciunt dolor nihil unde possimus esse. Consectetur incidunt iure qui culpa et iusto voluptatum.', 'Rozella Schneider', 1, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(4, 'Quis est quaerat magni vitae.', 'Consequatur voluptates laboriosam quas sunt aut eos. Consectetur optio voluptatem quia id. Fuga perferendis consectetur quis deserunt deleniti.', 'Darrel Wilkinson', 4, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(5, 'Porro labore eveniet rem.', 'Quia vel autem reprehenderit voluptatibus. Dolor maxime et voluptatum libero totam esse.', 'Sydni Fahey', 1, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(6, 'Commodi id voluptatem.', 'Eos et voluptatem veritatis eos. Sint illum ab sapiente doloremque accusamus et. Quia deleniti sunt ipsum sequi veniam dolorem. Provident perspiciatis omnis sequi.', 'Zakary Heidenreich', 10, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(7, 'Est hic quasi.', 'Esse itaque ea sapiente. Voluptatum voluptatem porro consequatur deserunt. Qui alias excepturi fuga nostrum autem vel. Fugit mollitia rerum sequi occaecati libero.', 'Reilly Strosin DVM', 10, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(8, 'Quo qui sit.', 'Quod consequuntur autem delectus est ipsam qui. Sed delectus aut autem facilis consequuntur. Sequi rerum vero dolorem quas quasi voluptatem eius. Aut eos officiis sunt.', 'Clement Kuhic', 7, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(9, 'Deleniti recusandae at.', 'Sunt ducimus quia omnis id est id omnis. Doloribus mollitia laboriosam eum provident provident accusamus. Molestias expedita nemo qui nihil ipsam.', 'Gregory Kihn', 2, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(10, 'Est cum officiis eos.', 'Quia excepturi dolorum et maiores eius. Sit facere iusto minima qui. Et corporis autem repellendus. Quis unde vel eaque eum perspiciatis quisquam atque.', 'Amy Heathcote I', 1, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(11, 'Expedita mollitia tenetur quos.', 'Ipsam quod laboriosam enim ad dolor. Eveniet facere molestiae corrupti velit temporibus. Voluptatem tempore doloribus vel.', 'Mr. Donavon Torp', 2, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(12, 'Beatae nihil eum placeat.', 'Iusto ratione eos quaerat maiores veritatis. Laudantium reprehenderit est similique autem aut temporibus saepe deserunt. Quibusdam provident nihil voluptas sint consequatur perferendis esse. Ut consequatur quo quia eveniet hic tenetur sed. Voluptas dolores eius nesciunt mollitia dolorum veniam.', 'Prof. Rodolfo Hartmann', 10, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(13, 'Animi ratione aliquid.', 'Ab dolores et animi vel sint vel in et. Et placeat consectetur consequatur consequatur suscipit dolore et impedit. Velit quia autem aut voluptatum ut facere.', 'Mr. Wayne Hauck', 8, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(14, 'Explicabo eum consectetur.', 'Est quia necessitatibus ut in tempore. Ut placeat fugiat voluptatum sapiente. Temporibus velit qui ex quis. Expedita et deleniti sit aut accusamus.', 'Stephania Botsford', 5, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(15, 'Sit et et.', 'Qui iure quaerat nostrum unde fuga non rem. Accusantium consequatur vel iusto quidem animi expedita non quasi.', 'Anderson Purdy', 10, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(16, 'Temporibus ad.', 'Quaerat et laboriosam sit sapiente iure. Eius quisquam cum qui. Veniam facere minus voluptatem ut.', 'Frankie Berge', 5, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(17, 'Debitis laudantium vero.', 'Quia itaque dicta nisi neque consequatur. Explicabo cum enim vero ducimus et exercitationem. Vitae animi maiores asperiores consequatur accusamus vero molestias. Veritatis distinctio sapiente dolores voluptatem.', 'Rupert Kertzmann', 4, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(18, 'Temporibus error quam.', 'Harum quia laborum itaque rem quia molestias. Enim cum maiores corrupti quaerat corrupti doloremque.', 'Markus Yundt V', 9, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(19, 'Voluptas quibusdam amet.', 'Qui molestiae maiores perspiciatis et a temporibus ipsam. Nihil porro quos vitae consequatur repudiandae eos ab ratione.', 'Dr. Jena Muller I', 6, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(20, 'Maiores rerum.', 'Voluptatem dolores et quibusdam dolore. Esse ut quae vel aliquam quod voluptatem error. Ea qui expedita facilis architecto recusandae.', 'Constantin Paucek', 2, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(21, 'Vero aut non.', 'Ad eveniet nobis eveniet aut provident nulla voluptatem. A ut quidem et voluptas eaque et dolorum. Quos recusandae non corporis praesentium quas rerum rerum.', 'Hilbert Hodkiewicz PhD', 9, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(22, 'Id repudiandae facere quo.', 'Aut quis magnam cupiditate doloribus eveniet. Assumenda facere quo velit quo quo.', 'Ms. Adaline Feil', 1, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(23, 'Reiciendis ea quaerat sunt.', 'Excepturi saepe ab non debitis et vel quos. Qui dolor ut adipisci illo magnam autem. Et et quas qui quibusdam sit. Praesentium iusto nobis doloribus maxime nihil.', 'Myrna Sawayn', 2, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(24, 'Animi et consequatur.', 'Velit molestias dolorem ducimus non iusto a dicta in. Ullam culpa nisi voluptatum omnis nihil.', 'Carlos Willms', 7, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(25, 'Et minus qui quaerat.', 'Ducimus sit ea quo et soluta quasi suscipit. Consequatur cum eligendi fugit possimus occaecati deleniti aut. Voluptatem sapiente accusamus ut.', 'Miss Johanna Wolf', 8, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(26, 'Repudiandae ratione vero.', 'Modi est quaerat quis enim. Illum fugit atque deleniti iure qui. Et voluptates minus ex fugiat fugit dolor quaerat.', 'Macy Berge', 7, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(27, 'Nisi assumenda.', 'Autem minus et ut consectetur. Rerum dolor culpa ratione dolorem quibusdam. Omnis ipsam molestiae nemo dignissimos aspernatur. Ut optio qui harum quod expedita illo.', 'Mrs. Aurelie O\'Hara III', 9, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(28, 'Ut molestias est.', 'Maxime expedita labore est nihil voluptas sunt. Quam iste odit mollitia ex explicabo molestias corrupti. Quasi et animi accusantium sequi.', 'Grant Altenwerth Jr.', 6, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(29, 'Sint nostrum eum ut.', 'Ut et at non accusamus officia fugit. Minima error dolor nostrum sed. Consectetur accusamus omnis sit enim id enim aut.', 'Mr. Willard Stehr V', 3, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(30, 'Odio ipsam nesciunt molestiae.', 'Doloremque dolorum dolor suscipit maxime et repellendus. Praesentium consequatur occaecati voluptatem deleniti rerum dolorem. Voluptas voluptas quas ut itaque et praesentium tempora. Vitae molestiae id deleniti.', 'Erwin Crist IV', 1, '2025-07-22 11:08:40', '2025-07-22 11:08:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Ficción', '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(2, 'No Ficción', '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(3, 'Ciencia Ficción', '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(4, 'Fantasía', '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(5, 'Historia', '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(6, 'Biografía', '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(7, 'Ciencia', '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(8, 'Tecnología', '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(9, 'Salud', '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(10, 'Negocios', '2025-07-22 11:08:40', '2025-07-22 11:08:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `jobs`
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
-- Estructura de tabla para la tabla `job_batches`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_07_22_095025_create_personal_access_tokens_table', 1),
(5, '2025_07_22_105750_create_categories_table', 1),
(6, '2025_07_22_105838_create_books_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'David', 'david@example.com', NULL, '$2y$12$fKveS9CJglC0FK3TV0d97u8Xv3SN3t2eQ0ayRNJahRlFnyvCponxe', NULL, '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(2, 'Mrs. Lucienne Beer I', 'dwalsh@example.net', '2025-07-22 11:08:40', '$2y$12$3egeKrjRg3mvNgf091tkaODWeIlPQOAT8wCSUJaYX4uC/DpEa1wFK', 'xeCYQDBZr9', '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(3, 'Rosalia Rolfson', 'ghintz@example.org', '2025-07-22 11:08:40', '$2y$12$3egeKrjRg3mvNgf091tkaODWeIlPQOAT8wCSUJaYX4uC/DpEa1wFK', 'Yn0bUQvtwA', '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(4, 'Prof. Brendon Olson Sr.', 'ivory23@example.org', '2025-07-22 11:08:40', '$2y$12$3egeKrjRg3mvNgf091tkaODWeIlPQOAT8wCSUJaYX4uC/DpEa1wFK', 'OkkH5am4yH', '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(5, 'Elouise Keeling', 'predovic.providenci@example.org', '2025-07-22 11:08:40', '$2y$12$3egeKrjRg3mvNgf091tkaODWeIlPQOAT8wCSUJaYX4uC/DpEa1wFK', 'oY34XQWEoM', '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(6, 'Hank McKenzie', 'volkman.abigail@example.net', '2025-07-22 11:08:40', '$2y$12$3egeKrjRg3mvNgf091tkaODWeIlPQOAT8wCSUJaYX4uC/DpEa1wFK', 'hPQD9YINLZ', '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(7, 'Raymond O\'Connell III', 'nona45@example.com', '2025-07-22 11:08:40', '$2y$12$3egeKrjRg3mvNgf091tkaODWeIlPQOAT8wCSUJaYX4uC/DpEa1wFK', 'qO6wQrLmU0', '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(8, 'Rafaela Auer', 'jacobson.georgiana@example.net', '2025-07-22 11:08:40', '$2y$12$3egeKrjRg3mvNgf091tkaODWeIlPQOAT8wCSUJaYX4uC/DpEa1wFK', 'T5EHMygeiH', '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(9, 'Lavon Schowalter', 'maudie53@example.net', '2025-07-22 11:08:40', '$2y$12$3egeKrjRg3mvNgf091tkaODWeIlPQOAT8wCSUJaYX4uC/DpEa1wFK', 'BK1k7ni9P6', '2025-07-22 11:08:40', '2025-07-22 11:08:40'),
(10, 'Adrian Kohler', 'benny.blanda@example.net', '2025-07-22 11:08:40', '$2y$12$3egeKrjRg3mvNgf091tkaODWeIlPQOAT8wCSUJaYX4uC/DpEa1wFK', '4Rsd7gM2By', '2025-07-22 11:08:40', '2025-07-22 11:08:40');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
