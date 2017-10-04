-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Сен 18 2017 г., 21:16
-- Версия сервера: 10.1.26-MariaDB
-- Версия PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `profiles`
--
CREATE DATABASE IF NOT EXISTS `profiles` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `profiles`;

-- --------------------------------------------------------

--
-- Структура таблицы `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE IF NOT EXISTS `likes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `articleid` int(10) NOT NULL,
  `ip` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=644 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `likes`
--

INSERT INTO `likes` (`id`, `articleid`, `ip`) VALUES
(453, 2, '68668768'),
(454, 3, '68668768'),
(455, 3, '68668768'),
(456, 3, '68668768'),
(457, 3, '68668768'),
(458, 3, '68668768'),
(459, 3, '68668768'),
(460, 3, '68668768'),
(461, 3, '68668768'),
(462, 1, '68668768'),
(463, 1, '68668768'),
(464, 2, '68668768'),
(465, 2, '68668768'),
(466, 3, '68668768'),
(467, 3, '68668768'),
(468, 3, '68668768'),
(469, 1, '68668768'),
(470, 1, '68668768'),
(471, 1, '68668768'),
(472, 1, '68668768'),
(473, 1, '0'),
(474, 1, '0'),
(475, 1, '0'),
(476, 1, '0'),
(477, 1, '0'),
(478, 1, '0'),
(479, 1, '127'),
(480, 1, '127'),
(571, 3, ''),
(575, 3, ''),
(576, 3, ''),
(577, 3, ''),
(578, 3, ''),
(641, 3, '127.0.0.1'),
(643, 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Структура таблицы `starsprof`
--

DROP TABLE IF EXISTS `starsprof`;
CREATE TABLE IF NOT EXISTS `starsprof` (
  `idpr` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) NOT NULL,
  `prof` varchar(30) NOT NULL,
  `geo` varchar(40) NOT NULL,
  `bd` date NOT NULL,
  `bio` varchar(200) NOT NULL,
  `avaurl` varchar(70) NOT NULL,
  PRIMARY KEY (`idpr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `starsprof`
--

INSERT INTO `starsprof` (`idpr`, `fname`, `prof`, `geo`, `bd`, `bio`, `avaurl`) VALUES
(0, 'Emilia Clarke', 'актриса', 'ЛОНДОН, ВЕЛИКОБРИТАНИЯ', '1986-10-26', 'Британская актриса. Наиболее известна по роли Дайнерис Таргарие в телесериале \"Игра престолов\" и Сары Коннор в фильме \"Терминатор: Генезис\".', 'img/img_person-1.jpg');


--
-- Метаданные
--
USE `phpmyadmin`;

--
-- Метаданные для таблицы likes
--

--
-- Метаданные для таблицы starsprof
--

--
-- Метаданные для базы данных profiles
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
