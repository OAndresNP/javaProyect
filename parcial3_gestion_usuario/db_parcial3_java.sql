-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 15-05-2014 a las 06:42:03
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `db_parcial3_java`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE IF NOT EXISTS `administrador` (
  `id_admo` varchar(8) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_admo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_admo`, `nombre`) VALUES
('root001', 'Oscar Andres Navarrete'),
('root002', 'Erika Rivera');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE IF NOT EXISTS `carrera` (
  `id_carrera` varchar(8) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `id_escuela` varchar(8) NOT NULL,
  PRIMARY KEY (`id_carrera`),
  KEY `fk_carrera_escuela_idx` (`id_escuela`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE IF NOT EXISTS `docente` (
  `id_docente` varchar(8) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `id_escuela` varchar(8) NOT NULL,
  PRIMARY KEY (`id_docente`),
  KEY `fk_docente_escuela_idx` (`id_escuela`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuela`
--

CREATE TABLE IF NOT EXISTS `escuela` (
  `id_escuela` varchar(8) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `id_facultad` varchar(8) NOT NULL,
  PRIMARY KEY (`id_escuela`),
  KEY `fk_escuela_facultad_idx` (`id_facultad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `escuela`
--

INSERT INTO `escuela` (`id_escuela`, `nombre`, `id_facultad`) VALUES
('esc001', 'computacion', 'fac001');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE IF NOT EXISTS `facultad` (
  `id_facultad` varchar(8) NOT NULL,
  `nombre_fac` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_facultad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`id_facultad`, `nombre_fac`) VALUES
('fac001', 'ingenieria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha_estudiante`
--

CREATE TABLE IF NOT EXISTS `ficha_estudiante` (
  `carnet` varchar(8) NOT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `genero` varchar(1) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `responsable` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `id_facultad` varchar(8) DEFAULT NULL,
  `id_carrera` varchar(8) DEFAULT NULL,
  `horas_sociales` int(11) DEFAULT NULL,
  `pasantias` int(11) DEFAULT NULL,
  `becas` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`carnet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefonos`
--

CREATE TABLE IF NOT EXISTS `telefonos` (
  `carnet` varchar(8) NOT NULL,
  `numtel` varchar(8) DEFAULT NULL,
  `lugar` varchar(20) DEFAULT NULL,
  KEY `fk_estudiante_idx` (`carnet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `user` varchar(10) NOT NULL,
  `pass` varchar(16) NOT NULL,
  `rol` varchar(20) NOT NULL,
  `id_admo` varchar(8) DEFAULT NULL,
  `id_docente` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`user`),
  KEY `fk_usuario_administrador1_idx` (`id_admo`),
  KEY `fk_usuario_docente_idx` (`id_docente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`user`, `pass`, `rol`, `id_admo`, `id_docente`) VALUES
('root', 'admin', 'administrador', 'root001', NULL),
('root2', 'admin2', 'administrador', 'root002', NULL);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD CONSTRAINT `fk_carrera_escuela` FOREIGN KEY (`id_escuela`) REFERENCES `escuela` (`id_escuela`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `docente`
--
ALTER TABLE `docente`
  ADD CONSTRAINT `fk_docente_escuela` FOREIGN KEY (`id_escuela`) REFERENCES `escuela` (`id_escuela`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `escuela`
--
ALTER TABLE `escuela`
  ADD CONSTRAINT `fk_escuela_facultad` FOREIGN KEY (`id_facultad`) REFERENCES `facultad` (`id_facultad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `telefonos`
--
ALTER TABLE `telefonos`
  ADD CONSTRAINT `fk_estudiante` FOREIGN KEY (`carnet`) REFERENCES `ficha_estudiante` (`carnet`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_administrador1` FOREIGN KEY (`id_admo`) REFERENCES `administrador` (`id_admo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_docente` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id_docente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
