-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3305
-- Tiempo de generación: 13-10-2023 a las 23:07:22
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemadesocios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socios`
--

CREATE TABLE `socios` (
  `id_socio` int(9) NOT NULL,
  `nombre_socio` varchar(25) NOT NULL,
  `apellido_socio` varchar(25) NOT NULL,
  `telefono_socio` int(11) NOT NULL,
  `email_socio` varchar(50) NOT NULL,
  `fecha_adhesion` date NOT NULL,
  `tipo_subscripcion` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscripciones`
--

CREATE TABLE `subscripciones` (
  `tipo_subscripcion_id` varchar(12) NOT NULL,
  `nombre_subscripcion` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(9) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `nombre_usuario` varchar(25) NOT NULL,
  `apellido_usuario` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `pass`, `nombre_usuario`, `apellido_usuario`, `email`) VALUES
(1, '1234', 'tobias', 'mastro', 'tmastroberardini1@gmail.com'),
(2, '$2y$10$of0ru4iRD8G21', 'feli', 'mastro', 'felib@gmail.com'),
(3, '$2y$10$of0ru4iRD8G21rRrY8LAUO8ZUhi8gMQChiTsGQuCT3KKtOr.GWU1W', 'enzo', 'garcia', 'egarcia@gmail.com'),
(4, '$2y$10$4NDijqxGOLVJfS39C11q1.2fiTYtez5lrr45xubxsewbxAIiZO7O6', 'tobias', 'mastro', 'tm@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `socios`
--
ALTER TABLE `socios`
  ADD PRIMARY KEY (`id_socio`),
  ADD KEY `tipo_subscripcion` (`tipo_subscripcion`),
  ADD KEY `id_socio` (`id_socio`);

--
-- Indices de la tabla `subscripciones`
--
ALTER TABLE `subscripciones`
  ADD PRIMARY KEY (`tipo_subscripcion_id`),
  ADD KEY `tipo_subscripcion_id` (`tipo_subscripcion_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `socios`
--
ALTER TABLE `socios`
  ADD CONSTRAINT `socios_ibfk_1` FOREIGN KEY (`tipo_subscripcion`) REFERENCES `subscripciones` (`tipo_subscripcion_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
