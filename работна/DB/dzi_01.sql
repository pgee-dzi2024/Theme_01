-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Време на генериране: 26 апр 2024 в 02:38
-- Версия на сървъра: 10.4.32-MariaDB
-- Версия на PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данни: `dzi_01`
--

-- --------------------------------------------------------

--
-- Структура на таблица `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Служител', 7, 'add_employee'),
(26, 'Can change Служител', 7, 'change_employee'),
(27, 'Can delete Служител', 7, 'delete_employee'),
(28, 'Can view Служител', 7, 'view_employee'),
(29, 'Can add Услуга', 8, 'add_service'),
(30, 'Can change Услуга', 8, 'change_service'),
(31, 'Can delete Услуга', 8, 'delete_service'),
(32, 'Can view Услуга', 8, 'view_service'),
(33, 'Can add Резервация', 9, 'add_аppointment'),
(34, 'Can change Резервация', 9, 'change_аppointment'),
(35, 'Can delete Резервация', 9, 'delete_аppointment'),
(36, 'Can view Резервация', 9, 'view_аppointment'),
(37, 'Can add Начален час', 10, 'add_bookhour'),
(38, 'Can change Начален час', 10, 'change_bookhour'),
(39, 'Can delete Начален час', 10, 'delete_bookhour'),
(40, 'Can view Начален час', 10, 'view_bookhour'),
(41, 'Can add Резервация', 9, 'add_appointment'),
(42, 'Can change Резервация', 9, 'change_appointment'),
(43, 'Can delete Резервация', 9, 'delete_appointment'),
(44, 'Can view Резервация', 9, 'view_appointment');

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$3Nk28coVG3I2fYP1fdIAQD$Vf3ilZO4OgYm5qFoahmn9G85TEpJWOdquJM8uAvngLw=', '2024-04-25 18:58:48.931642', 1, 'admin', '', '', '', 1, 1, '2024-02-22 13:43:56.659160');

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-04-08 22:38:24.772114', '1', 'Илина Иванова', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-04-08 22:45:02.390229', '2', 'Севинч Туталъ', 1, '[{\"added\": {}}]', 7, 1),
(3, '2024-04-08 22:45:37.988095', '3', 'Пепи Георгиева', 1, '[{\"added\": {}}]', 7, 1),
(4, '2024-04-08 22:45:44.272763', '3', 'Пепи Георгиева', 2, '[]', 7, 1),
(5, '2024-04-08 22:46:33.368456', '3', 'Пепи Георгиева', 2, '[{\"changed\": {\"fields\": [\"\\u0414\\u043b\\u044a\\u0436\\u043d\\u043e\\u0441\\u0442\", \"\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435/\\u0440\\u0435\\u0437\\u044e\\u043c\\u0435\"]}}]', 7, 1),
(6, '2024-04-25 18:59:44.111475', '1', '08:00', 1, '[{\"added\": {}}]', 10, 1),
(7, '2024-04-25 18:59:53.510943', '2', '09:00', 1, '[{\"added\": {}}]', 10, 1),
(8, '2024-04-25 19:00:04.335521', '3', '10:00', 1, '[{\"added\": {}}]', 10, 1),
(9, '2024-04-25 19:00:12.246138', '4', '11:00', 1, '[{\"added\": {}}]', 10, 1),
(10, '2024-04-25 19:00:19.750429', '5', '13:00', 1, '[{\"added\": {}}]', 10, 1),
(11, '2024-04-25 19:00:24.247903', '6', '14:00', 1, '[{\"added\": {}}]', 10, 1),
(12, '2024-04-25 19:00:35.086859', '7', '15:00', 1, '[{\"added\": {}}]', 10, 1),
(13, '2024-04-25 19:00:40.896326', '8', '16:00', 1, '[{\"added\": {}}]', 10, 1),
(14, '2024-04-25 19:01:16.058956', '1', 'Услуга 1', 1, '[{\"added\": {}}]', 8, 1),
(15, '2024-04-25 19:01:21.011362', '2', 'Услуга 2', 1, '[{\"added\": {}}]', 8, 1),
(16, '2024-04-25 19:01:25.718221', '3', 'Услуга 3', 1, '[{\"added\": {}}]', 8, 1),
(17, '2024-04-25 19:01:29.232921', '4', 'Услуга 4', 1, '[{\"added\": {}}]', 8, 1),
(18, '2024-04-25 19:01:34.334409', '5', 'Услуга 5', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Структура на таблица `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'main', 'appointment'),
(10, 'main', 'bookhour'),
(7, 'main', 'employee'),
(8, 'main', 'service'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Структура на таблица `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-02-22 13:14:57.666278'),
(2, 'auth', '0001_initial', '2024-02-22 13:14:58.101177'),
(3, 'admin', '0001_initial', '2024-02-22 13:14:58.199611'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-02-22 13:14:58.205740'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-02-22 13:14:58.210870'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-02-22 13:14:58.257245'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-02-22 13:14:58.309086'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-02-22 13:14:58.322016'),
(9, 'auth', '0004_alter_user_username_opts', '2024-02-22 13:14:58.329245'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-02-22 13:14:58.378545'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-02-22 13:14:58.380580'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-02-22 13:14:58.388245'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-02-22 13:14:58.399209'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-02-22 13:14:58.409193'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-02-22 13:14:58.422320'),
(16, 'auth', '0011_update_proxy_permissions', '2024-02-22 13:14:58.430388'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-02-22 13:14:58.448905'),
(18, 'sessions', '0001_initial', '2024-02-22 13:14:58.482965'),
(19, 'main', '0001_initial', '2024-04-08 22:26:21.580038'),
(20, 'main', '0002_bookhour_service_аppointment', '2024-04-25 18:41:07.679312'),
(21, 'main', '0003_rename_аppointment_appointment', '2024-04-25 20:47:22.603079');

-- --------------------------------------------------------

--
-- Структура на таблица `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('74485xglovif7vqkzlfce4n1ppfp0knd', '.eJxVjEEOwiAQRe_C2hAoAxSX7j0DgZlBqoYmpV0Z765NutDtf-_9l4hpW2vcOi9xInEWWpx-t5zwwW0HdE_tNkuc27pMWe6KPGiX15n4eTncv4Oaev3WWGBwhpIxTC6o0bDRhQm886QAWGvCgFaBDaEEHLKBMReVsyZO3lvx_gDkXTgI:1rtxxb:Oozup1jn2srYVMDQodliavgA_7_rtmDHy1xUYzYZ8nc', '2024-04-22 22:59:31.704033'),
('7pkh24ob8luh2tovpeet4qqcicyy8wzn', '.eJxVjEEOwiAQRe_C2hAoAxSX7j0DgZlBqoYmpV0Z765NutDtf-_9l4hpW2vcOi9xInEWWpx-t5zwwW0HdE_tNkuc27pMWe6KPGiX15n4eTncv4Oaev3WWGBwhpIxTC6o0bDRhQm886QAWGvCgFaBDaEEHLKBMReVsyZO3lvx_gDkXTgI:1rtwYC:xoEwtOkGWnKhp6skwq8SnDxV7_-nFmnHnHT7JIjb_NU', '2024-04-22 21:29:12.864720'),
('vro2jkezlath2u2k7eb19n5upv4zcswu', '.eJxVjEEOwiAQRe_C2hAoAxSX7j0DgZlBqoYmpV0Z765NutDtf-_9l4hpW2vcOi9xInEWWpx-t5zwwW0HdE_tNkuc27pMWe6KPGiX15n4eTncv4Oaev3WWGBwhpIxTC6o0bDRhQm886QAWGvCgFaBDaEEHLKBMReVsyZO3lvx_gDkXTgI:1s04Iy:Y5364hq3iAOKUxXL5O_A38McVoVRq4WqrnwvkrkR-0M', '2024-05-09 18:58:48.938097'),
('wjp1awtw8oaoht8ypuu5b782q07dgkmo', '.eJxVjEEOwiAQRe_C2hAoAxSX7j0DgZlBqoYmpV0Z765NutDtf-_9l4hpW2vcOi9xInEWWpx-t5zwwW0HdE_tNkuc27pMWe6KPGiX15n4eTncv4Oaev3WWGBwhpIxTC6o0bDRhQm886QAWGvCgFaBDaEEHLKBMReVsyZO3lvx_gDkXTgI:1rd9Q4:IoGxJTDNxIn1gM4K0QnPi9PLRvAg2sVryq4fgAuJrmA', '2024-03-07 13:47:24.774142');

-- --------------------------------------------------------

--
-- Структура на таблица `main_appointment`
--

DROP TABLE IF EXISTS `main_appointment`;
CREATE TABLE `main_appointment` (
  `id` bigint(20) NOT NULL,
  `ap_date` date NOT NULL,
  `ap_name` varchar(60) NOT NULL,
  `ap_phone` varchar(14) NOT NULL,
  `ap_new` tinyint(1) NOT NULL,
  `ap_hour_id` bigint(20) NOT NULL,
  `ap_service_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_appointment`
--

INSERT INTO `main_appointment` (`id`, `ap_date`, `ap_name`, `ap_phone`, `ap_new`, `ap_hour_id`, `ap_service_id`) VALUES
(1, '2024-04-25', 'a', '1', 1, 4, 3),
(2, '2024-04-26', 'a', '1', 1, 4, 3),
(3, '2024-04-26', 'aaaa', '33333', 1, 5, 4),
(4, '2024-04-26', 'aaaa', '33333', 1, 5, 4),
(5, '2024-04-26', 'aaaa', '33333', 1, 5, 4),
(6, '2024-04-26', 'ghgh', '33534', 1, 7, 4),
(7, '2024-04-26', 'ddddd', '66666666666666', 1, 3, 1),
(8, '2024-04-26', 'aaaaa', 'ggg', 1, 3, 2),
(9, '2024-04-26', 'aaaaa', 'ggg', 1, 3, 2);

-- --------------------------------------------------------

--
-- Структура на таблица `main_bookhour`
--

DROP TABLE IF EXISTS `main_bookhour`;
CREATE TABLE `main_bookhour` (
  `id` bigint(20) NOT NULL,
  `hour` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_bookhour`
--

INSERT INTO `main_bookhour` (`id`, `hour`) VALUES
(1, '08:00'),
(2, '09:00'),
(3, '10:00'),
(4, '11:00'),
(5, '13:00'),
(6, '14:00'),
(7, '15:00'),
(8, '16:00');

-- --------------------------------------------------------

--
-- Структура на таблица `main_employee`
--

DROP TABLE IF EXISTS `main_employee`;
CREATE TABLE `main_employee` (
  `id` bigint(20) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `name` varchar(150) NOT NULL,
  `position` varchar(50) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_employee`
--

INSERT INTO `main_employee` (`id`, `photo`, `name`, `position`, `description`) VALUES
(1, 'employees/person_2.jpg', 'Илина Иванова', 'фризьор', 'Стилист с дългогодишен опит. Има награди от конкурси. Може не само да реализира Вашите виждание, но и да Ви насочи и посъветва.'),
(2, 'employees/person_1.jpg', 'Севинч Туталъ', 'маникюрист', 'Специалист по маникюр, педикюр и ноктопластика'),
(3, 'employees/work-7.jpg', 'Пепи Георгиева', 'масажист', 'Опитен масажист и кинезитерапевт');

-- --------------------------------------------------------

--
-- Структура на таблица `main_service`
--

DROP TABLE IF EXISTS `main_service`;
CREATE TABLE `main_service` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_service`
--

INSERT INTO `main_service` (`id`, `name`) VALUES
(1, 'Услуга 1'),
(2, 'Услуга 2'),
(3, 'Услуга 3'),
(4, 'Услуга 4'),
(5, 'Услуга 5');

--
-- Indexes for dumped tables
--

--
-- Индекси за таблица `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индекси за таблица `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Индекси за таблица `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Индекси за таблица `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индекси за таблица `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Индекси за таблица `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Индекси за таблица `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Индекси за таблица `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Индекси за таблица `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Индекси за таблица `main_appointment`
--
ALTER TABLE `main_appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_аppointment_ap_hour_id_ea092dca_fk_main_bookhour_id` (`ap_hour_id`),
  ADD KEY `main_аppointment_ap_service_id_e003978d_fk_main_service_id` (`ap_service_id`);

--
-- Индекси за таблица `main_bookhour`
--
ALTER TABLE `main_bookhour`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `main_employee`
--
ALTER TABLE `main_employee`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `main_service`
--
ALTER TABLE `main_service`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `main_appointment`
--
ALTER TABLE `main_appointment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `main_bookhour`
--
ALTER TABLE `main_bookhour`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `main_employee`
--
ALTER TABLE `main_employee`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `main_service`
--
ALTER TABLE `main_service`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения за дъмпнати таблици
--

--
-- Ограничения за таблица `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения за таблица `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения за таблица `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `main_appointment`
--
ALTER TABLE `main_appointment`
  ADD CONSTRAINT `main_аppointment_ap_hour_id_ea092dca_fk_main_bookhour_id` FOREIGN KEY (`ap_hour_id`) REFERENCES `main_bookhour` (`id`),
  ADD CONSTRAINT `main_аppointment_ap_service_id_e003978d_fk_main_service_id` FOREIGN KEY (`ap_service_id`) REFERENCES `main_service` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
