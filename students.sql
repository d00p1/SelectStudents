-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 01 2023 г., 16:14
-- Версия сервера: 8.0.30
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `students`
--

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `id` bigint NOT NULL,
  `name` varchar(256) NOT NULL,
  `direction` varchar(256) NOT NULL,
  `dateofbirth` date NOT NULL,
  `link` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`id`, `name`, `direction`, `dateofbirth`, `link`) VALUES
(1, 'Никита Калинин', 'Разработка', '2002-02-15', 'https://smolensk.hh.ru/resume/4dcb5ed6ff0b164edc0039ed1f674b7575544f'),
(2, 'Иванов Иван', 'Тестирование', '1999-01-01', ' ссылка'),
(3, 'Мария Сидорова', 'Математика', '1992-05-15', 'ссылка_на_личное_дело_2'),
(4, 'Алексей Петров', 'Физика', '1991-11-20', 'ссылка_на_личное_дело_3'),
(5, 'Елена Козлова', 'Химия', '1993-08-08', 'ссылка_на_личное_дело_4'),
(6, 'Петр Смирнов', 'Биология', '1994-03-25', 'ссылка_на_личное_дело_5');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
