-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 08 2025 г., 13:16
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
-- База данных: `komp_club`
--

-- --------------------------------------------------------

--
-- Структура таблицы `computers`
--

CREATE TABLE `computers` (
  `id_comp` int(255) NOT NULL,
  `name_comp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(255) NOT NULL,
  `deteil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `computers`
--

INSERT INTO `computers` (`id_comp`, `name_comp`, `status`, `deteil`) VALUES
(1, 'Компьютер №1', 1, '16-гб ОЗУ, RTX-4090, Intel 7-10000');

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE `order` (
  `id_order` int(255) NOT NULL,
  `id_user` int(255) NOT NULL,
  `id_room` int(255) NOT NULL,
  `id_comp` int(255) NOT NULL,
  `id_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `order`
--

INSERT INTO `order` (`id_order`, `id_user`, `id_room`, `id_comp`, `id_price`) VALUES
(1, 4, 1, 1, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `price`
--

CREATE TABLE `price` (
  `id_price` int(11) NOT NULL,
  `hourr` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `price`
--

INSERT INTO `price` (`id_price`, `hourr`, `price`) VALUES
(1, 1, 100),
(2, 2, 170),
(3, 24, 700);

-- --------------------------------------------------------

--
-- Структура таблицы `room`
--

CREATE TABLE `room` (
  `id_room` int(255) NOT NULL,
  `type_room` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `room`
--

INSERT INTO `room` (`id_room`, `type_room`, `status`) VALUES
(1, 'Для одного №1', 0),
(2, 'Для пятерых №1', 1);

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
-- Индексы таблицы `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_comp` (`id_comp`),
  ADD KEY `id_price` (`id_price`),
  ADD KEY `id_room` (`id_room`),
  ADD KEY `id_user` (`id_user`);

--
-- Индексы таблицы `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id_price`);

--
-- Индексы таблицы `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id_room`);

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
-- AUTO_INCREMENT для таблицы `order`
--
ALTER TABLE `order`
  MODIFY `id_order` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `price`
--
ALTER TABLE `price`
  MODIFY `id_price` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `room`
--
ALTER TABLE `room`
  MODIFY `id_room` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `userss`
--
ALTER TABLE `userss`
  MODIFY `id_user` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`id_comp`) REFERENCES `computers` (`id_comp`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`id_price`) REFERENCES `price` (`id_price`),
  ADD CONSTRAINT `order_ibfk_3` FOREIGN KEY (`id_room`) REFERENCES `room` (`id_room`),
  ADD CONSTRAINT `order_ibfk_4` FOREIGN KEY (`id_user`) REFERENCES `userss` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
