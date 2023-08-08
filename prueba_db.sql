-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-08-2023 a las 23:51:37
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba_db`
--
CREATE DATABASE IF NOT EXISTS `prueba_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `prueba_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla1`
--

CREATE TABLE `tabla1` (
  `id` int(11) NOT NULL,
  `campo1` varchar(50) DEFAULT NULL,
  `campo2` int(11) DEFAULT NULL,
  `campo3` decimal(10,2) DEFAULT NULL,
  `campo4` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla1`
--

INSERT INTO `tabla1` (`id`, `campo1`, `campo2`, `campo3`, `campo4`) VALUES
(1, 'Registro 1', 10, '15.50', '2023-08-01'),
(2, 'Registro 2', 20, '25.75', '2023-08-02'),
(3, 'Registro 3', 30, '42.00', '2023-08-03'),
(4, 'Registro 4', 40, '18.25', '2023-08-04'),
(5, 'Registro 5', 50, '36.80', '2023-08-05'),
(6, 'Registro 6', 60, '22.10', '2023-08-06'),
(7, 'Registro 7', 70, '55.90', '2023-08-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla2`
--

CREATE TABLE `tabla2` (
  `id` int(11) NOT NULL,
  `campo1` varchar(50) DEFAULT NULL,
  `campo2` int(11) DEFAULT NULL,
  `campo3` decimal(10,2) DEFAULT NULL,
  `campo4` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla2`
--

INSERT INTO `tabla2` (`id`, `campo1`, `campo2`, `campo3`, `campo4`) VALUES
(1, 'Dato A', 11, '13.25', '2023-08-01'),
(2, 'Dato B', 22, '29.30', '2023-08-02'),
(3, 'Dato C', 33, '41.50', '2023-08-03'),
(4, 'Dato D', 44, '17.75', '2023-08-04'),
(5, 'Dato E', 55, '39.20', '2023-08-05'),
(6, 'Dato F', 66, '21.80', '2023-08-06'),
(7, 'Dato G', 77, '54.10', '2023-08-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla3`
--

CREATE TABLE `tabla3` (
  `id` int(11) NOT NULL,
  `campo1` varchar(50) DEFAULT NULL,
  `campo2` int(11) DEFAULT NULL,
  `campo3` decimal(10,2) DEFAULT NULL,
  `campo4` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla3`
--

INSERT INTO `tabla3` (`id`, `campo1`, `campo2`, `campo3`, `campo4`) VALUES
(1, 'Info X', 12, '11.75', '2023-08-01'),
(2, 'Info Y', 23, '27.90', '2023-08-02'),
(3, 'Info Z', 34, '45.60', '2023-08-03'),
(4, 'Info W', 45, '19.40', '2023-08-04'),
(5, 'Info V', 56, '37.10', '2023-08-05'),
(6, 'Info U', 67, '23.50', '2023-08-06'),
(7, 'Info T', 78, '50.25', '2023-08-07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tabla1`
--
ALTER TABLE `tabla1`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tabla2`
--
ALTER TABLE `tabla2`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tabla3`
--
ALTER TABLE `tabla3`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
