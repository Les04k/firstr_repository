-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 22 2025 г., 11:54
-- Версия сервера: 5.7.39
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tur_site`
--

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_tur` int(11) NOT NULL,
  `type_group` int(11) NOT NULL,
  `id_uslug` int(11) NOT NULL,
  `date_1` date NOT NULL,
  `date_2` date NOT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'новый'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id_order`, `id_user`, `id_tur`, `type_group`, `id_uslug`, `date_1`, `date_2`, `status`) VALUES
(3, 1, 2, 1, 1, '2025-06-01', '2025-06-07', 'новый');

-- --------------------------------------------------------

--
-- Структура таблицы `turs`
--

CREATE TABLE `turs` (
  `id_tur` int(11) NOT NULL,
  `name_tur` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_descript` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descript_tur` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_tur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `turs`
--

INSERT INTO `turs` (`id_tur`, `name_tur`, `short_descript`, `descript_tur`, `price_tur`) VALUES
(1, 'Сочи', 'Золотое кольцо Абхазии', 'Экскурсия по Золотому кольцу Абхазии начинается из Сочи и включает в себя курортные города: Гагра и Пицунда, Новый Афон, а также озеро Рица и Голубое озеро, село Лыхны и его древний храм, достопримечательности Нового Афона.\n\n \n\nДети до 18 лет могут пересечь границу только в сопровождении одного из родителей. Если ребенок путешествует без родителей, то необходима доверенность на сопровождающее лицо.', 28500),
(2, 'Сочи', 'Термальные источники Кындыг и Сухум', 'По количеству впечатлений и ценам термальные источники Абхазии, расположенные в селе Кындыг, — оптимальный способ отдохнуть, по пути посетив местные достопримечательности. Экскурсия в этот спа-курорт под открытым небом начинается в Сочи.\r\n\r\nПервая остановка на маршруте — колоннада в Гаграх, далее мы отправимся в Новый Афон.Основной акцент в экскурсии мы делаем на столицу республики - Сухум.\r\n\r\nНо главная наша цель - самый известный горячий источник в Абхазии — Кындыг.\r\n\r\nГраница открыта только для граждан РФ.  Дети до 18 лет могут пересечь границу только в сопровождении одного из родителей. Если ребенок путешествует без родителей, то необходима доверенность на сопровождающее лицо.', 28500),
(3, 'Геленджик, Туапсе', 'ВИННО-ГАСТРОНОМИЧЕСКИЕ ЭКСКУРСИИ В АБРАУ-ДЮРСО - Историческая экскурсия, от 3 лет, ежедневно', 'Отправившись на познавательную экскурсию по Русскому Винному Дому «Абрау-Дюрсо», вы попадаете в удивительный подземный мир, где царит дух настоящего игристого вина. Опытный гид не просто проведет вас коридорами производства, но позволит заглянуть за кулисы таинства шампенуаза и поможет от начала и до конца пройти путь создания классического игристого вина. После экскурсии вы сможете посетить медиа-пространство «Галерея света Абрау». В галерее представлена первая персональная выставка работ студии аудиовизуального искусства Kuflex, состоящая из 7 работ.', 1000),
(4, 'Геленджик, Туапсе', 'ВИННО-ГАСТРОНОМИЧЕСКИЕ ЭКСКУРСИИ В АБРАУ-ДЮРСО - Дегустация тихих вин, 18 +, ежедневно', 'В ходе экскурсии вы узнаете всю историю завода «Абрау-Дюрсо», попадете в старинные тоннели, построенные в конце XIX века при Александре II, а также узнаете о секретах приготовления тихих вин. Вас ожидает дегустация 5 образцов тихих вин «Абрау» и «Винодельня Ведерниковъ». В стоимость также входит подача сырного сета. После экскурсии и дегустации вы сможете посетить медиа-пространство «Галерея света Абрау». В галерее представлена первая персональная выставка работ студии аудиовизуального искусства Kuflex, состоящая из 7 работ.', 1500);

-- --------------------------------------------------------

--
-- Структура таблицы `type_group`
--

CREATE TABLE `type_group` (
  `id_type` int(11) NOT NULL,
  `name_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `type_group`
--

INSERT INTO `type_group` (`id_type`, `name_type`) VALUES
(1, 'Групповая поездка'),
(2, 'Одиночная поездка');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `fio` varchar(175) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(175) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'пользователь'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id_user`, `fio`, `email`, `phone`, `login`, `password`, `role`) VALUES
(1, 'Иванов Иван Иванович', 'ivan@mail.ru', '+7(999)999-88-88', 'ivan', 'costumer', 'пользователь'),
(2, 'Андрей Степанович', 'manager@mail.ru', '+7(000)000-00-00', 'manager', 'adminka', 'менеджер');

-- --------------------------------------------------------

--
-- Структура таблицы `uslugi`
--

CREATE TABLE `uslugi` (
  `id_uslug` int(11) NOT NULL,
  `name_uslg` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_uslg` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `uslugi`
--

INSERT INTO `uslugi` (`id_uslug`, `name_uslg`, `price_uslg`) VALUES
(1, 'страхование на время поездки', '7000'),
(2, 'визовая поддержка', '1500'),
(3, 'бронирование отелей', '2000'),
(4, 'организация научных и культурных мероприятий', '2500');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_tur` (`id_tur`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_uslug` (`id_uslug`),
  ADD KEY `type_group` (`type_group`);

--
-- Индексы таблицы `turs`
--
ALTER TABLE `turs`
  ADD PRIMARY KEY (`id_tur`);

--
-- Индексы таблицы `type_group`
--
ALTER TABLE `type_group`
  ADD PRIMARY KEY (`id_type`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Индексы таблицы `uslugi`
--
ALTER TABLE `uslugi`
  ADD PRIMARY KEY (`id_uslug`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `turs`
--
ALTER TABLE `turs`
  MODIFY `id_tur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `type_group`
--
ALTER TABLE `type_group`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `uslugi`
--
ALTER TABLE `uslugi`
  MODIFY `id_uslug` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_tur`) REFERENCES `turs` (`id_tur`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`id_uslug`) REFERENCES `uslugi` (`id_uslug`),
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`type_group`) REFERENCES `type_group` (`id_type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
