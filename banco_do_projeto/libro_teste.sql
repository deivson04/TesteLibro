-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Out-2021 às 05:30
-- Versão do servidor: 10.4.19-MariaDB
-- versão do PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `libro_teste`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_nascimento` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `email`, `sexo`, `data_nascimento`, `created_at`, `updated_at`) VALUES
(1, 'araujo santos', 'santos@teste.com', 'Masculino', '1989-12-30', '2021-10-21 06:30:03', '2021-10-21 06:47:41'),
(3, 'santos', 'santos@teste.com', 'Masculino', '2001-10-11', '2021-10-21 07:29:36', '2021-10-21 07:30:57'),
(4, 'vagner', 'vagner@teste.com', 'Masculino', '1988-04-21', '2021-10-22 03:10:47', '2021-10-22 03:10:47'),
(5, 'roberto', 'roberto@teste.com', 'Masculino', '2005-06-28', '2021-10-22 03:17:58', '2021-10-22 03:17:58'),
(6, 'artur', 'artur@teste.com', 'Masculino', '2007-06-28', '2021-10-22 03:32:00', '2021-10-22 03:32:00'),
(7, 'yuri', 'yuri@teste.com', 'Masculino', '2005-06-28', '2021-10-22 03:35:25', '2021-10-22 03:35:25'),
(8, 'alan', 'alan@teste.com', 'Masculino', '2001-06-28', '2021-10-22 03:36:41', '2021-10-22 03:36:41'),
(9, 'fabio', 'fabio@teste.com', 'Masculino', '1994-06-28', '2021-10-22 03:37:43', '2021-10-22 03:37:43'),
(10, 'alison', 'alison@teste.com', 'Masculino', '1994-06-28', '2021-10-22 03:38:02', '2021-10-22 03:38:02'),
(11, 'aril', 'aril@teste.com', 'Masculino', '2007-06-28', '2021-10-22 03:38:20', '2021-10-22 03:38:20'),
(12, 'nanda', 'nanda@teste.com', 'Feminino', '2009-06-28', '2021-10-22 03:55:02', '2021-10-22 03:55:02'),
(13, 'fabiana', 'fabiana@teste.com', 'Feminino', '2007-06-28', '2021-10-22 03:55:18', '2021-10-22 03:55:18'),
(14, 'carla', 'carla@teste.com', 'Feminino', '2007-06-28', '2021-10-22 03:55:37', '2021-10-22 03:55:37'),
(15, 'paula', 'paula@teste.com', 'Feminino', '2001-06-28', '2021-10-22 03:55:52', '2021-10-22 03:55:52'),
(16, 'fernanda', 'fernanda@teste.com', 'Feminino', '2001-06-28', '2021-10-22 03:56:08', '2021-10-22 03:56:08'),
(17, 'amanda', 'amanda@teste.com', 'Feminino', '1994-06-28', '2021-10-22 03:56:43', '2021-10-22 03:56:43'),
(18, 'jessica', 'jesssica@teste.com', 'Feminino', '1994-06-28', '2021-10-22 03:57:07', '2021-10-22 03:57:07'),
(19, 'juliana', 'juliana@teste.com', 'Feminino', '2005-06-28', '2021-10-22 03:57:25', '2021-10-22 03:57:25'),
(20, 'camila', 'camila@teste.com', 'Feminino', '2005-06-28', '2021-10-22 03:57:41', '2021-10-22 03:57:41'),
(21, 'rosa', 'rosa@teste.com', 'Feminino', '1988-06-28', '2021-10-22 03:58:14', '2021-10-22 03:58:14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`id`, `titulo`, `descricao`, `created_at`, `updated_at`) VALUES
(1, 'psicologia', 'curso para desenvolver a mente humana', '2021-10-21 07:25:30', '2021-10-21 07:48:19'),
(3, 'administracao', 'administrar sua empresa', '2021-10-22 02:49:45', '2021-10-22 02:49:45');

-- --------------------------------------------------------

--
-- Estrutura da tabela `matriculas`
--

CREATE TABLE `matriculas` (
  `id` int(10) UNSIGNED NOT NULL,
  `aluno_id` int(10) UNSIGNED NOT NULL,
  `cursos_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `matriculas`
--

INSERT INTO `matriculas` (`id`, `aluno_id`, `cursos_id`, `created_at`, `updated_at`) VALUES
(2, 1, 3, '2021-10-22 02:42:19', '2021-10-22 02:56:33'),
(3, 3, 3, '2021-10-22 03:51:03', '2021-10-22 03:51:03'),
(4, 4, 3, '2021-10-22 03:53:06', '2021-10-22 03:53:06'),
(5, 5, 3, '2021-10-22 03:53:19', '2021-10-22 03:53:19'),
(6, 6, 3, '2021-10-22 03:53:36', '2021-10-22 03:53:36'),
(7, 7, 1, '2021-10-22 03:53:52', '2021-10-22 03:53:52'),
(8, 8, 1, '2021-10-22 03:53:58', '2021-10-22 03:53:58'),
(9, 9, 1, '2021-10-22 03:54:03', '2021-10-22 03:54:03'),
(10, 10, 1, '2021-10-22 03:54:09', '2021-10-22 03:54:09'),
(11, 11, 1, '2021-10-22 03:54:14', '2021-10-22 03:54:14'),
(12, 12, 1, '2021-10-22 04:02:49', '2021-10-22 04:02:49'),
(13, 13, 1, '2021-10-22 04:02:56', '2021-10-22 04:02:56'),
(14, 14, 1, '2021-10-22 04:03:02', '2021-10-22 04:03:02'),
(15, 15, 1, '2021-10-22 04:03:08', '2021-10-22 04:03:08'),
(16, 16, 1, '2021-10-22 04:03:13', '2021-10-22 04:03:13'),
(17, 17, 3, '2021-10-22 04:03:23', '2021-10-22 04:03:23'),
(18, 18, 3, '2021-10-22 04:03:28', '2021-10-22 04:03:28'),
(19, 19, 3, '2021-10-22 04:03:34', '2021-10-22 04:03:34'),
(20, 20, 3, '2021-10-22 04:03:54', '2021-10-22 04:03:54'),
(21, 21, 3, '2021-10-22 04:04:01', '2021-10-22 04:04:01'),
(22, 21, 1, '2021-10-22 04:05:09', '2021-10-22 04:05:09'),
(23, 1, 1, '2021-10-22 04:06:11', '2021-10-22 04:06:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2021_10_20_224453_create_alunos_table', 1),
(3, '2021_10_20_225932_create_cursos_table', 1),
(4, '2021_10_20_230254_create_matricula_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matricula_aluno_id_foreign` (`aluno_id`),
  ADD KEY `matricula_cursos_id_foreign` (`cursos_id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `matriculas`
--
ALTER TABLE `matriculas`
  ADD CONSTRAINT `matricula_aluno_id_foreign` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matricula_cursos_id_foreign` FOREIGN KEY (`cursos_id`) REFERENCES `cursos` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
