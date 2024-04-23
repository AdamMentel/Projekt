-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Út 23.Apr 2024, 19:17
-- Verzia serveru: 10.4.32-MariaDB
-- Verzia PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `mentel3a2`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `t_produkt`
--

CREATE TABLE `t_produkt` (
  `id` int(11) NOT NULL,
  `nazov` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Sťahujem dáta pre tabuľku `t_produkt`
--

INSERT INTO `t_produkt` (`id`, `nazov`) VALUES
(1, 'jablko'),
(2, 'auto'),
(3, 'rohlik'),
(4, 'pero'),
(5, 'ceruzka'),
(6, 'myška'),
(7, 'telefón'),
(8, 'podložka '),
(9, 'slúchadlá'),
(10, 'kryt na telefón ');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `t_user`
--

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Sťahujem dáta pre tabuľku `t_user`
--

INSERT INTO `t_user` (`id`, `username`, `password`, `email`) VALUES
(1, 'Jozko', '123', 'jozko@gmail.com'),
(2, 'Paliak', '$2y$10$Pg0.BTAK4lfyd2jReoCwROUa5SU/RiskhwAqzhl38AiqoODrNorkK', 'paliak@gmail.com'),
(3, 'Pato', '$2y$10$XG8YBfvEut3Dx04nyPOb2edpEyWbXNFIrHyQi02AaGy.C4yMKAUzK', 'patoondrik@gmail.com'),
(4, 'Adam', '$2y$10$S2eQylYuVwY5HQxaXMmEbOS8PWdVVIEXVwpalqyYQK9sWVvyW4K.u', 'adam@gmail.com');

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `t_produkt`
--
ALTER TABLE `t_produkt`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `t_produkt`
--
ALTER TABLE `t_produkt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pre tabuľku `t_user`
--
ALTER TABLE `t_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
