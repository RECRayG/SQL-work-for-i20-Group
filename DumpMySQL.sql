-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 20 2022 г., 13:43
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
-- База данных: `my_webshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `catalog`
--

CREATE TABLE `catalog` (
  `id_catalog` int NOT NULL,
  `catalog_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `catalog`
--

INSERT INTO `catalog` (`id_catalog`, `catalog_name`) VALUES
(1, 'Новинки'),
(2, 'Одежда'),
(3, 'Обвуь'),
(4, 'Бренды'),
(5, 'Спорт');

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_chapters_prprev_identity`
--

CREATE TABLE `catalog_chapters_prprev_identity` (
  `id_catalog` int NOT NULL,
  `id_chapter` int NOT NULL,
  `id_product_preview` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `catalog_chapters_prprev_identity`
--

INSERT INTO `catalog_chapters_prprev_identity` (`id_catalog`, `id_chapter`, `id_product_preview`) VALUES
(1, 1, 1),
(1, 2, 2),
(1, 3, 4),
(2, 4, 11),
(2, 5, 11),
(2, 6, 11),
(2, 7, 12),
(3, 8, 13),
(3, 9, 13),
(4, 10, 4),
(4, 11, 10),
(4, 12, 12),
(5, 13, 3),
(5, 14, 4),
(5, 15, 9);

-- --------------------------------------------------------

--
-- Структура таблицы `chapters`
--

CREATE TABLE `chapters` (
  `id_chapter` int NOT NULL,
  `chapter_name` varchar(255) NOT NULL,
  `count_products` int DEFAULT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `chapters`
--

INSERT INTO `chapters` (`id_chapter`, `chapter_name`, `count_products`, `description`) VALUES
(1, 'Шорты', 154, 'Лучшие шорты на сайте)'),
(2, 'Костюмы', NULL, 'Лучшие костюмы на сайте, отвечаю'),
(3, 'Очки', 12, 'Золотые, тёмные, красные, на любой вкус и цвет!'),
(4, 'Куртки', 251, 'Кожаные, балониевые, с синтипоном и без, выбирай!'),
(5, 'Брюки', NULL, 'А курток сейчас нет :('),
(6, 'Верхняя одежда', 211, 'Осенью самое то, да и в любое время года тоже'),
(7, 'Джинсы', 168, 'Моднявые, все дела'),
(8, 'Кроссовки', 109, 'Есть, что выбрать'),
(9, 'Ботинки', 85, 'Описание ради описания'),
(10, 'Puma', 154, 'Рита в деле'),
(11, 'Adidas', 154, '3 полоски'),
(12, 'Nike', 154, 'Красивая галочка'),
(13, 'Фитнес', 154, 'Самое время заняться полезным делом ;)'),
(14, 'Толстовки и свитшоты', 154, 'Теплее в морозное утро для пробежки не бывает!'),
(15, 'Топы и майки', 154, 'Топы топ! Майки с Ямайки!');

-- --------------------------------------------------------

--
-- Структура таблицы `pictures`
--

CREATE TABLE `pictures` (
  `id_picture` int NOT NULL,
  `picture_src` text NOT NULL,
  `picture_alt` text NOT NULL,
  `is_preview` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `pictures`
--

INSERT INTO `pictures` (`id_picture`, `picture_src`, `picture_alt`, `is_preview`) VALUES
(1, 'jeans_white_soft.jpg', 'Белые и прочные джинсы с гладкой поверхностью металла', 1),
(2, 'jeans_white_soft_second.jpg', 'Белые и прочные джинсы с гладкой поверхностью металла', 0),
(3, 'jeans_white_soft_third.jpg', 'Белые и прочные джинсы с гладкой поверхностью металла', 0),
(4, 'jeans_black_soft.jpg', 'Чёрные и прочные джинсы с гладкой поверхностью металла', 1),
(5, 'jeans_black_soft_second.jpg', 'Чёрные и прочные джинсы с гладкой поверхностью металла', 0),
(6, 'jeans_black_soft_third.jpg', 'Чёрные и прочные джинсы с гладкой поверхностью металла', 0),
(7, 'pants_brown_soft.jpg', 'Коричневые брюки с хорошей посадкой и мягкой тканью', 1),
(8, 'pants_brown_soft_second.jpg', 'Коричневые брюки с хорошей посадкой и мягкой тканью', 0),
(9, 'pants_brown_soft_third.jpg', 'Коричневые брюки с хорошей посадкой и мягкой тканью', 0),
(10, 'pants_grey_soft.jpg', 'Серые брюки с хорошей посадкой и мягкой тканью', 1),
(11, 'pants_grey_soft_second.jpg', 'Серые брюки с хорошей посадкой и мягкой тканью', 0),
(12, 'pants_grey_soft_third.jpg', 'Серые брюки с хорошей посадкой и мягкой тканью', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `pictures_products_identity`
--

CREATE TABLE `pictures_products_identity` (
  `id_picture` int NOT NULL,
  `id_product` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `pictures_products_identity`
--

INSERT INTO `pictures_products_identity` (`id_picture`, `id_product`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 2),
(7, 3),
(8, 3),
(9, 3),
(10, 4),
(11, 4),
(12, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `pictures_prprev_identity`
--

CREATE TABLE `pictures_prprev_identity` (
  `id_picture` int NOT NULL,
  `id_product_preview` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `pictures_prprev_identity`
--

INSERT INTO `pictures_prprev_identity` (`id_picture`, `id_product_preview`) VALUES
(1, 12),
(4, 12),
(7, 4),
(10, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id_product` int NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `price_discount` decimal(10,0) NOT NULL,
  `price_promocode` decimal(10,0) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id_product`, `price`, `price_discount`, `price_promocode`, `description`) VALUES
(1, '3300', '2900', '2600', 'Джинсы1 хорошие, белые. Болты, молнии, заклепки – все металлические элементы имеют гладкую поверхность без зазубрин и царапин...'),
(2, '3000', '2700', '2400', 'Джинсы2 хорошие, чёрные. Болты, молнии, заклепки – все металлические элементы имеют гладкую поверхность без зазубрин и царапин...'),
(3, '3500', '1799', '1001', 'Брюки1 коричневые отличные , хорошая посадка , приятная МЯГКАЯ ткань , размер соответствует...'),
(4, '6901', '6600', '6000', 'Брюки2 серые отличные , хорошая посадка , приятная МЯГКАЯ ткань , размер соответствует...');

-- --------------------------------------------------------

--
-- Структура таблицы `products_preview`
--

CREATE TABLE `products_preview` (
  `id_product_preview` int NOT NULL,
  `header` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `products_preview`
--

INSERT INTO `products_preview` (`id_product_preview`, `header`) VALUES
(1, 'Sakha'),
(2, 'DeFacto'),
(3, 'Nike'),
(4, 'Marc O\'Polo'),
(5, 'Pill'),
(6, 'Gerry Weber'),
(7, 'Feedge'),
(8, 'Sela'),
(9, 'Zarina'),
(10, 'Ruck&Maul'),
(11, 'Patrizia Pepe'),
(12, 'Colin\'s'),
(13, 'Patrol');

-- --------------------------------------------------------

--
-- Структура таблицы `prprev_products_identity`
--

CREATE TABLE `prprev_products_identity` (
  `id_product_preview` int NOT NULL,
  `id_product` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `prprev_products_identity`
--

INSERT INTO `prprev_products_identity` (`id_product_preview`, `id_product`) VALUES
(12, 1),
(4, 3);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id_catalog`),
  ADD UNIQUE KEY `id_catalog` (`id_catalog`);

--
-- Индексы таблицы `catalog_chapters_prprev_identity`
--
ALTER TABLE `catalog_chapters_prprev_identity`
  ADD KEY `id_catalog` (`id_catalog`),
  ADD KEY `id_chapter` (`id_chapter`),
  ADD KEY `id_product_preview` (`id_product_preview`);

--
-- Индексы таблицы `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id_chapter`),
  ADD UNIQUE KEY `id_chapter` (`id_chapter`);

--
-- Индексы таблицы `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id_picture`),
  ADD UNIQUE KEY `id_picture` (`id_picture`);

--
-- Индексы таблицы `pictures_products_identity`
--
ALTER TABLE `pictures_products_identity`
  ADD KEY `id_picture` (`id_picture`),
  ADD KEY `id_product` (`id_product`);

--
-- Индексы таблицы `pictures_prprev_identity`
--
ALTER TABLE `pictures_prprev_identity`
  ADD KEY `id_picture` (`id_picture`),
  ADD KEY `id_product_preview` (`id_product_preview`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`),
  ADD UNIQUE KEY `id_product` (`id_product`);

--
-- Индексы таблицы `products_preview`
--
ALTER TABLE `products_preview`
  ADD PRIMARY KEY (`id_product_preview`),
  ADD UNIQUE KEY `id_product_preview` (`id_product_preview`);

--
-- Индексы таблицы `prprev_products_identity`
--
ALTER TABLE `prprev_products_identity`
  ADD KEY `id_product_preview` (`id_product_preview`),
  ADD KEY `id_product` (`id_product`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id_catalog` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id_chapter` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id_picture` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `products_preview`
--
ALTER TABLE `products_preview`
  MODIFY `id_product_preview` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `catalog_chapters_prprev_identity`
--
ALTER TABLE `catalog_chapters_prprev_identity`
  ADD CONSTRAINT `catalog_chapters_prprev_identity_ibfk_1` FOREIGN KEY (`id_catalog`) REFERENCES `catalog` (`id_catalog`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `catalog_chapters_prprev_identity_ibfk_2` FOREIGN KEY (`id_chapter`) REFERENCES `chapters` (`id_chapter`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `catalog_chapters_prprev_identity_ibfk_3` FOREIGN KEY (`id_product_preview`) REFERENCES `products_preview` (`id_product_preview`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `pictures_products_identity`
--
ALTER TABLE `pictures_products_identity`
  ADD CONSTRAINT `pictures_products_identity_ibfk_1` FOREIGN KEY (`id_picture`) REFERENCES `pictures` (`id_picture`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pictures_products_identity_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `pictures_prprev_identity`
--
ALTER TABLE `pictures_prprev_identity`
  ADD CONSTRAINT `pictures_prprev_identity_ibfk_1` FOREIGN KEY (`id_picture`) REFERENCES `pictures` (`id_picture`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pictures_prprev_identity_ibfk_2` FOREIGN KEY (`id_product_preview`) REFERENCES `products_preview` (`id_product_preview`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `prprev_products_identity`
--
ALTER TABLE `prprev_products_identity`
  ADD CONSTRAINT `prprev_products_identity_ibfk_1` FOREIGN KEY (`id_product_preview`) REFERENCES `products_preview` (`id_product_preview`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prprev_products_identity_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
