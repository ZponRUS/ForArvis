-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Окт 29 2020 г., 01:58
-- Версия сервера: 8.0.22-0ubuntu0.20.04.2
-- Версия PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `arvis`
--

-- --------------------------------------------------------

--
-- Структура таблицы `branches`
--

CREATE TABLE `branches` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `branches`
--

INSERT INTO `branches` (`id`, `name`, `description`) VALUES
(1, 'Филиал #1', 'Описание филиала #1'),
(2, 'Филиал #2', 'Описание филиала #2'),
(3, 'Филиал #3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at lectus et sapien malesuada scelerisque aliquet quis mi. Integer pretium quam nec dui dapibus, sed mollis orci gravida. Morbi vel nulla aliquam, viverra nisl ultricies, suscipit velit. Sed purus tellus, eleifend ac enim id, pulvinar rutrum enim. Phasellus feugiat sed ex vel bibendum. Vivamus vitae nisl vitae tellus pellentesque ornare. Phasellus libero turpis, scelerisque non sagittis laoreet, lobortis ac ex. Phasellus diam lorem, tincidunt ac ante sed, sagittis condimentum massa. Vivamus ullamcorper pharetra nulla, iaculis varius sem ullamcorper id. Donec placerat ante vel ipsum dictum auctor. Aenean malesuada aliquet orci id venenatis.');

-- --------------------------------------------------------

--
-- Структура таблицы `staff`
--

CREATE TABLE `staff` (
  `id` int NOT NULL,
  `branch_id` int NOT NULL,
  `profession` varchar(255) NOT NULL,
  `is_itr` tinyint(1) NOT NULL,
  `fio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `staff`
--

INSERT INTO `staff` (`id`, `branch_id`, `profession`, `is_itr`, `fio`) VALUES
(1, 1, 'Программист', 1, 'Иванов Иван Иванович'),
(2, 2, 'Психолог', 0, 'Сёмин Юрий Иванович'),
(3, 1, 'Массажист', 0, 'Анюшин Данил Кириллович'),
(4, 2, 'Программист JS', 1, 'Дитев Александр Денисович'),
(5, 3, 'Программист PHP', 1, 'Сидоров Василий Геннадиевич'),
(6, 2, 'Программист Golang', 1, 'Болдорева ирина Викторовна'),
(7, 1, 'Программист JS', 1, 'Силютина Кристина Георгиевна'),
(8, 3, 'Программист PHP', 1, 'Карандашова Нина Сергеевна'),
(9, 2, 'Бугалтер', 0, 'Ярдыванкин Александр Юрьевич'),
(10, 3, 'Бариста', 0, 'Чернов Марк Константинович');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
