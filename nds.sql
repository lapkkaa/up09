-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 05 2025 г., 07:55
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `nds`
--

-- --------------------------------------------------------

--
-- Структура таблицы `catalog`
--

CREATE TABLE `catalog` (
  `id_product` int(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `mark` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `catalog`
--

INSERT INTO `catalog` (`id_product`, `type`, `mark`, `model`, `img`, `price`) VALUES
(1, 'Смартфон', 'Realme', 'C21', 'https://imaks-shop.ru/wp-content/uploads/2022/11/8B5C4822-9309-480E-83E8-9DEBD72844FF.jpeg', 10000.00),
(2, 'Смартфон', 'Apple', 'iPhone 13', 'https://iphoriya.ru/wp-content/uploads/iphone-13-starlight.jpg', 20000.00),
(3, 'Ноутбук', 'Huawei ', 'Matebook', 'https://static.onlinetrade.ru/img/items/b/noutbuk_huawei_matebook_d_14_i5_1135g7_8gb_512gb_ssd_iris_', 30000.00),
(4, 'Ноутбук', 'Apple', 'Macbook', 'https://avatars.mds.yandex.net/i?id=8b2356fc08fbd5a35b537d733eaf0ba9_l-7012004-images-thumbs&n=13', 40000.00);

-- --------------------------------------------------------

--
-- Структура таблицы `number`
--

CREATE TABLE `number` (
  `id_user` int(100) NOT NULL,
  `number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `number`
--

INSERT INTO `number` (`id_user`, `number`) VALUES
(1, '+7 912 349 12 43');

-- --------------------------------------------------------

--
-- Структура таблицы `pict`
--

CREATE TABLE `pict` (
  `id_product` int(100) NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `price`
--

CREATE TABLE `price` (
  `id_product` int(100) NOT NULL,
  `price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `price`
--

INSERT INTO `price` (`id_product`, `price`) VALUES
(1, '20.000'),
(2, '50.000'),
(3, '40.000'),
(4, '100.000');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id_user` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id_user`, `email`, `name`, `password`) VALUES
(1, '2123@m2', 'imperia', '2222222');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id_product`);

--
-- Индексы таблицы `number`
--
ALTER TABLE `number`
  ADD PRIMARY KEY (`id_user`);

--
-- Индексы таблицы `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id_product`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id_product` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `number`
--
ALTER TABLE `number`
  MODIFY `id_user` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `price`
--
ALTER TABLE `price`
  MODIFY `id_product` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
