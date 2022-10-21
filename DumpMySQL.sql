-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 21 2022 г., 12:31
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `fordump`
--
CREATE DATABASE IF NOT EXISTS `fordump` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `fordump`;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id_category` int NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id_category`, `category_name`, `description`) VALUES
(1, 'Шорты', 'Лучшие шорты на сайте)'),
(2, 'Костюмы', 'Лучшие костюмы на сайте, отвечаю'),
(3, 'Очки', 'Золотые, тёмные, красные, на любой вкус и цвет!'),
(4, 'Куртки', 'Кожаные, балониевые, с синтипоном и без, выбирай!'),
(5, 'Брюки', 'А брюк сейчас нет, или есть, спросить у БД надо :)'),
(6, 'Верхняя одежда', 'Осенью самое то, да и в любое время года тоже'),
(7, 'Джинсы', 'Моднявые, все дела'),
(8, 'Кроссовки', 'Есть, что выбрать'),
(9, 'Ботинки', 'Описание ради описания'),
(10, 'Puma', 'Рита в деле'),
(11, 'Adidas', '3 полоски'),
(12, 'Nike', 'Красивая галочка'),
(13, 'Фитнес', 'Самое время заняться полезным делом ;)'),
(14, 'Толстовки и свитшоты', 'Теплее в морозное утро для пробежки не бывает!'),
(15, 'Топы и майки', 'Топы топ! Майки с Ямайки!'),
(16, 'Шорты', 'Лучшие шорты на сайте)'),
(17, 'Костюмы', 'Лучшие костюмы на сайте, отвечаю'),
(18, 'Очки', 'Золотые, тёмные, красные, на любой вкус и цвет!'),
(19, 'Куртки', 'Кожаные, балониевые, с синтипоном и без, выбирай!'),
(20, 'Брюки', 'А брюк сейчас нет, или есть, спросить у БД надо :)'),
(21, 'Верхняя одежда', 'Осенью самое то, да и в любое время года тоже'),
(22, 'Джинсы', 'Моднявые, все дела'),
(23, 'Кроссовки', 'Есть, что выбрать'),
(24, 'Ботинки', 'Описание ради описания'),
(25, 'Puma', 'Рита в деле'),
(26, 'Adidas', '3 полоски'),
(27, 'Nike', 'Красивая галочка'),
(28, 'Фитнес', 'Самое время заняться полезным делом ;)'),
(29, 'Толстовки и свитшоты', 'Теплее в морозное утро для пробежки не бывает!'),
(30, 'Топы и майки', 'Топы топ! Майки с Ямайки!');

-- --------------------------------------------------------

--
-- Структура таблицы `c_pr_identity`
--

CREATE TABLE `c_pr_identity` (
  `id_category` int NOT NULL,
  `id_product` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `c_pr_identity`
--

INSERT INTO `c_pr_identity` (`id_category`, `id_product`) VALUES
(7, 1),
(7, 2),
(7, 3),
(9, 4),
(9, 5),
(9, 6),
(15, 7),
(15, 8),
(15, 9),
(5, 10),
(5, 11),
(5, 12),
(13, 7),
(12, 12),
(7, 1),
(7, 2),
(7, 3),
(9, 4),
(9, 5),
(9, 6),
(15, 7),
(15, 8),
(15, 9),
(5, 10),
(5, 11),
(5, 12),
(13, 7),
(12, 12);

-- --------------------------------------------------------

--
-- Структура таблицы `main_product_category`
--

CREATE TABLE `main_product_category` (
  `id_category` int NOT NULL,
  `id_product` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `main_product_category`
--

INSERT INTO `main_product_category` (`id_category`, `id_product`) VALUES
(7, 1),
(7, 2),
(7, 3),
(9, 4),
(9, 5),
(9, 6),
(15, 7),
(15, 8),
(15, 9),
(5, 10),
(5, 11),
(5, 12),
(7, 1),
(7, 2),
(7, 3),
(9, 4),
(9, 5),
(9, 6),
(15, 7),
(15, 8),
(15, 9),
(5, 10),
(5, 11),
(5, 12);

-- --------------------------------------------------------

--
-- Структура таблицы `pictures`
--

CREATE TABLE `pictures` (
  `id_picture` int NOT NULL,
  `picture_src` text NOT NULL,
  `picture_alt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `pictures`
--

INSERT INTO `pictures` (`id_picture`, `picture_src`, `picture_alt`) VALUES
(1, 'jeans_white_soft.jpg', 'Белые и прочные джинсы с гладкой поверхностью металла'),
(2, 'jeans_white_soft_second.jpg', 'Белые и прочные джинсы с гладкой поверхностью металла'),
(3, 'jeans_white_soft_third.jpg', 'Белые и прочные джинсы с гладкой поверхностью металла'),
(4, 'jeans_black_soft.jpg', 'Чёрные и прочные джинсы с гладкой поверхностью металла'),
(5, 'jeans_black_soft_second.jpg', 'Чёрные и прочные джинсы с гладкой поверхностью металла'),
(6, 'jeans_black_soft_third.jpg', 'Чёрные и прочные джинсы с гладкой поверхностью металла'),
(7, 'pants_brown_soft.jpg', 'Коричневые брюки с хорошей посадкой и мягкой тканью'),
(8, 'pants_brown_soft_second.jpg', 'Коричневые брюки с хорошей посадкой и мягкой тканью'),
(9, 'pants_brown_soft_third.jpg', 'Коричневые брюки с хорошей посадкой и мягкой тканью'),
(10, 'pants_grey_soft.jpg', 'Серые брюки с хорошей посадкой и мягкой тканью'),
(11, 'pants_grey_soft_second.jpg', 'Серые брюки с хорошей посадкой и мягкой тканью'),
(12, 'pants_grey_soft_third.jpg', 'Серые брюки с хорошей посадкой и мягкой тканью'),
(13, 'jeans_white_soft.jpg', 'Белые и прочные джинсы с гладкой поверхностью металла'),
(14, 'jeans_white_soft_second.jpg', 'Белые и прочные джинсы с гладкой поверхностью металла'),
(15, 'jeans_white_soft_third.jpg', 'Белые и прочные джинсы с гладкой поверхностью металла'),
(16, 'jeans_black_soft.jpg', 'Чёрные и прочные джинсы с гладкой поверхностью металла'),
(17, 'jeans_black_soft_second.jpg', 'Чёрные и прочные джинсы с гладкой поверхностью металла'),
(18, 'jeans_black_soft_third.jpg', 'Чёрные и прочные джинсы с гладкой поверхностью металла'),
(19, 'pants_brown_soft.jpg', 'Коричневые брюки с хорошей посадкой и мягкой тканью'),
(20, 'pants_brown_soft_second.jpg', 'Коричневые брюки с хорошей посадкой и мягкой тканью'),
(21, 'pants_brown_soft_third.jpg', 'Коричневые брюки с хорошей посадкой и мягкой тканью'),
(22, 'pants_grey_soft.jpg', 'Серые брюки с хорошей посадкой и мягкой тканью'),
(23, 'pants_grey_soft_second.jpg', 'Серые брюки с хорошей посадкой и мягкой тканью'),
(24, 'pants_grey_soft_third.jpg', 'Серые брюки с хорошей посадкой и мягкой тканью');

-- --------------------------------------------------------

--
-- Структура таблицы `preview_picture_product`
--

CREATE TABLE `preview_picture_product` (
  `id_picture` int NOT NULL,
  `id_product` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `preview_picture_product`
--

INSERT INTO `preview_picture_product` (`id_picture`, `id_product`) VALUES
(1, 1),
(4, 2),
(7, 11),
(10, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id_product` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `price_discount` decimal(10,0) NOT NULL,
  `price_promocode` decimal(10,0) NOT NULL,
  `description` text NOT NULL,
  `is_active` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id_product`, `name`, `price`, `price_discount`, `price_promocode`, `description`, `is_active`) VALUES
(1, 'Patrizia Pepe', '3300', '2900', '2600', 'Джинсы1 хорошие, белые. Болты, молнии, заклепки – все металлические элементы имеют гладкую поверхность без зазубрин и царапин...', 1),
(2, 'Ruck&Maul', '3000', '2700', '2400', 'Джинсы2 хорошие, чёрные. Болты, молнии, заклепки – все металлические элементы имеют гладкую поверхность без зазубрин и царапин...', 0),
(3, 'Zarina', '3999', '2799', '2599', 'Джинсы3 отличные, серые. Болты, молнии, заклепки – все металлические элементы имеют гладкую поверхность без зазубрин и царапин...', 1),
(4, 'Salamander', '11900', '7990', '7499', 'Ботинки1 отличные, коричневые. Очень удобные, идут в размер...', 1),
(5, 'Ralf Ringer', '12500', '9999', '9599', 'Ботинки2 отличные, чёрные. Очень удобные, идут в размер...', 1),
(6, 'Patrol', '4199', '3899', '3499', 'Ботинки3 хорошие, серые. Очень удобные, идут в размер...', 1),
(7, 'Sashyou', '5200', '3200', '2999', 'Топ1 отличный, белый. Очень стильный топ! Шикарная ткань (плотный атлас), сшито очень круто! Стоит своих денег однозначно!...', 0),
(8, 'Millz Karta', '3700', '2200', '2999', 'Топ2 отличный, сиреневый. Очень стильный топ! Шикарная ткань (плотный атлас), сшито очень круто! Стоит своих денег однозначно!...', 1),
(9, 'Fashion.Love.Story', '2500', '2299', '1999', 'Топ3 хороший, матово-сиреневый. Очень стильный топ! Шикарная ткань (плотный атлас), сшито очень круто! Стоит своих денег однозначно!...', 1),
(10, 'Sakha', '3500', '1700', '1500', 'Брюки1 хорошие, хаки. Ткань плотная, мягкая, хорошо тянется...', 1),
(11, 'Zarina', '2999', '2038', '1899', 'Брюки2 хорошие, чёрные. Ткань плотная, мягкая, хорошо тянется...', 1),
(12, 'adidas Originals', '3500', '1700', '1500', 'Брюки3 хорошие, белые. Ткань плотная, мягкая, хорошо тянется...', 1),
(13, 'Patrizia Pepe', '3300', '2900', '2600', 'Джинсы1 хорошие, белые. Болты, молнии, заклепки – все металлические элементы имеют гладкую поверхность без зазубрин и царапин...', 1),
(14, 'Ruck&Maul', '3000', '2700', '2400', 'Джинсы2 хорошие, чёрные. Болты, молнии, заклепки – все металлические элементы имеют гладкую поверхность без зазубрин и царапин...', 0),
(15, 'Zarina', '3999', '2799', '2599', 'Джинсы3 отличные, серые. Болты, молнии, заклепки – все металлические элементы имеют гладкую поверхность без зазубрин и царапин...', 1),
(16, 'Salamander', '11900', '7990', '7499', 'Ботинки1 отличные, коричневые. Очень удобные, идут в размер...', 1),
(17, 'Ralf Ringer', '12500', '9999', '9599', 'Ботинки2 отличные, чёрные. Очень удобные, идут в размер...', 1),
(18, 'Patrol', '4199', '3899', '3499', 'Ботинки3 хорошие, серые. Очень удобные, идут в размер...', 1),
(19, 'Sashyou', '5200', '3200', '2999', 'Топ1 отличный, белый. Очень стильный топ! Шикарная ткань (плотный атлас), сшито очень круто! Стоит своих денег однозначно!...', 0),
(20, 'Millz Karta', '3700', '2200', '2999', 'Топ2 отличный, сиреневый. Очень стильный топ! Шикарная ткань (плотный атлас), сшито очень круто! Стоит своих денег однозначно!...', 1),
(21, 'Fashion.Love.Story', '2500', '2299', '1999', 'Топ3 хороший, матово-сиреневый. Очень стильный топ! Шикарная ткань (плотный атлас), сшито очень круто! Стоит своих денег однозначно!...', 1),
(22, 'Sakha', '3500', '1700', '1500', 'Брюки1 хорошие, хаки. Ткань плотная, мягкая, хорошо тянется...', 1),
(23, 'Zarina', '2999', '2038', '1899', 'Брюки2 хорошие, чёрные. Ткань плотная, мягкая, хорошо тянется...', 1),
(24, 'adidas Originals', '3500', '1700', '1500', 'Брюки3 хорошие, белые. Ткань плотная, мягкая, хорошо тянется...', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `pr_pi_identity`
--

CREATE TABLE `pr_pi_identity` (
  `id_product` int NOT NULL,
  `id_picture` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `pr_pi_identity`
--

INSERT INTO `pr_pi_identity` (`id_product`, `id_picture`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(11, 7),
(11, 8),
(11, 9),
(10, 10),
(10, 11),
(10, 12),
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(11, 7),
(11, 8),
(11, 9),
(10, 10),
(10, 11),
(10, 12);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`),
  ADD UNIQUE KEY `id_category` (`id_category`);

--
-- Индексы таблицы `c_pr_identity`
--
ALTER TABLE `c_pr_identity`
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_category` (`id_category`);

--
-- Индексы таблицы `main_product_category`
--
ALTER TABLE `main_product_category`
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_category` (`id_category`);

--
-- Индексы таблицы `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id_picture`),
  ADD UNIQUE KEY `id_picture` (`id_picture`);

--
-- Индексы таблицы `preview_picture_product`
--
ALTER TABLE `preview_picture_product`
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_picture` (`id_picture`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`),
  ADD UNIQUE KEY `id_product` (`id_product`);

--
-- Индексы таблицы `pr_pi_identity`
--
ALTER TABLE `pr_pi_identity`
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_picture` (`id_picture`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id_picture` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `c_pr_identity`
--
ALTER TABLE `c_pr_identity`
  ADD CONSTRAINT `c_pr_identity_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `c_pr_identity_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id_category`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `main_product_category`
--
ALTER TABLE `main_product_category`
  ADD CONSTRAINT `main_product_category_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `main_product_category_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id_category`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `preview_picture_product`
--
ALTER TABLE `preview_picture_product`
  ADD CONSTRAINT `preview_picture_product_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `preview_picture_product_ibfk_2` FOREIGN KEY (`id_picture`) REFERENCES `pictures` (`id_picture`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `pr_pi_identity`
--
ALTER TABLE `pr_pi_identity`
  ADD CONSTRAINT `pr_pi_identity_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pr_pi_identity_ibfk_2` FOREIGN KEY (`id_picture`) REFERENCES `pictures` (`id_picture`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
