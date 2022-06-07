-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-06-2022 a las 19:16:58
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `phpcac2022`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos2022`
--

CREATE TABLE `alumnos2022` (
  `id_usuario` int(11) NOT NULL,
  `dni_usuario` varchar(25) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `curso` varchar(10) NOT NULL,
  `correo` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos2022`
--

INSERT INTO `alumnos2022` (`id_usuario`, `dni_usuario`, `nombre`, `apellido`, `curso`, `correo`) VALUES
(1, '3698547', 'marcos', 'perez', 'php', 'marcos@gmail.com'),
(1, '3698547', 'marcos', 'perez', 'php', 'marcos@gmail.com'),
(2, '36985478', 'fernando', 'fernandez', 'php', 'fernando@gmail.com'),
(2, '36985478', 'fernando', 'fernandez', 'php', 'fernando@gmail.com'),
(3, '36985475', 'julian ', 'de la vega', 'python', 'julian@gmail.com'),
(3, '3215456+9', 'miguel', 'sanchez', 'nodejs', 'miguel@gmail.com'),
(3, '2569874', 'ezequiel ', 'peña', 'php', 'eze@gmail.com'),
(3, '2569874', 'ezequiel ', 'peña', 'php', 'eze@gmail.com'),
(3, '2569874', 'ezequiel ', 'peña', 'php', 'eze@gmail.com'),
(3, '2569874', 'ezequiel ', 'peña', 'php', 'eze@gmail.com'),
(3, '2569874', 'ezequiel ', 'peña', 'php', 'eze@gmail.com'),
(4, '3698547', 'daina', 'martinez', 'php', 'daina@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos2022`
--

CREATE TABLE `cursos2022` (
  `id_curso` int(11) NOT NULL,
  `nombre_curso` varchar(25) NOT NULL,
  `descripcion` text NOT NULL,
  `docente` varchar(25) NOT NULL,
  `url_meet` varchar(100) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes2022`
--

CREATE TABLE `docentes2022` (
  `id_docente` int(11) NOT NULL,
  `dni_docente` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `curso_asignado` varchar(25) NOT NULL,
  `correo` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `docentes2022`
--

INSERT INTO `docentes2022` (`id_docente`, `dni_docente`, `nombre`, `apellido`, `curso_asignado`, `correo`) VALUES
(1, 31096678, 'lucas', 'marcial', 'php', 'lucas@gmail.com'),
(2, 31096699, 'andres', 'lopez', 'php', 'marcos236985@gmail.com'),
(4, 31096679, 'martin', 'meza', 'php', 'lucas2589@gmail.com'),
(5, 31096680, 'roberto', 'carlos', 'php', 'roberto@gmail.com'),
(7, 31096681, 'roberto', 'carlos', 'php', 'roberto12@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cursos2022`
--
ALTER TABLE `cursos2022`
  ADD PRIMARY KEY (`id_curso`),
  ADD UNIQUE KEY `url_meet` (`url_meet`);

--
-- Indices de la tabla `docentes2022`
--
ALTER TABLE `docentes2022`
  ADD PRIMARY KEY (`id_docente`),
  ADD UNIQUE KEY `dni_docente` (`dni_docente`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cursos2022`
--
ALTER TABLE `cursos2022`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `docentes2022`
--
ALTER TABLE `docentes2022`
  MODIFY `id_docente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
