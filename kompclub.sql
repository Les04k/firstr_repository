-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 10 2025 г., 13:49
-- Версия сервера: 5.7.33
-- Версия PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kompclub`
--

-- --------------------------------------------------------

--
-- Структура таблицы `computers`
--

CREATE TABLE `computers` (
  `id_comp` int(255) NOT NULL,
  `name_comp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(255) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images_comp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opisanie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `computers`
--

INSERT INTO `computers` (`id_comp`, `name_comp`, `price`, `status`, `images_comp`, `opisanie`) VALUES
(1, 'Компьютер №1', 700, 'Свободный', '<img src=\"images/1.jpg\">', 'Почувствуй игру по новому с этим компьютером!');

-- --------------------------------------------------------

--
-- Структура таблицы `tarif`
--

CREATE TABLE `tarif` (
  `id_tarif` int(255) NOT NULL,
  `name_tarif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_play` int(255) NOT NULL,
  `price_tarif` int(255) NOT NULL,
  `image_tarif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tarif`
--

INSERT INTO `tarif` (`id_tarif`, `name_tarif`, `time_play`, `price_tarif`, `image_tarif`) VALUES
(1, '\"На одну катку\"', 1, 100, '<img class=\"img-fluid rounded-start\" src=\"images/solo_room.jpg\">'),
(2, '\"Ну еще два часика!\"', 2, 170, '<img class=\"img-fluid rounded-start\" src=\"images/2.jpg\">'),
(3, '\"Я теперь часть корабля\"', 24, 700, '<img class=\"img-fluid rounded-start\" src=\"images/3.jpg\">');

-- --------------------------------------------------------

--
-- Структура таблицы `userss`
--

CREATE TABLE `userss` (
  `id_user` int(255) NOT NULL,
  `fio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `e-mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `userss`
--

INSERT INTO `userss` (`id_user`, `fio`, `e-mail`, `login`, `password`, `avatar`, `role`) VALUES
(1, 'Администратор', 'admin@mail.ru', 'admin', 'wsr2018', 'admin.jpeg', 'admin'),
(4, 'Песоцкий Александр Сергеевич', 'les@mail.ru', 'les', '111', '', 'user'),
(5, 'Песоцкий Сергей Сергеевич', 'serg@mail.ru', 'serg', '123', '', 'user');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `computers`
--
ALTER TABLE `computers`
  ADD PRIMARY KEY (`id_comp`);

--
-- Индексы таблицы `tarif`
--
ALTER TABLE `tarif`
  ADD PRIMARY KEY (`id_tarif`);

--
-- Индексы таблицы `userss`
--
ALTER TABLE `userss`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `computers`
--
ALTER TABLE `computers`
  MODIFY `id_comp` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tarif`
--
ALTER TABLE `tarif`
  MODIFY `id_tarif` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `userss`
--
ALTER TABLE `userss`
  MODIFY `id_user` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
