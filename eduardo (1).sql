-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2026 a las 23:00:41
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eduardo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_aprendices`
--

CREATE TABLE `tb_aprendices` (
  `id_aprendiz` int(10) NOT NULL,
  `nombre_ap` varchar(50) DEFAULT NULL,
  `tipo_documento_ap` varchar(10) DEFAULT NULL,
  `no_documento_ap` int(10) DEFAULT NULL,
  `direccion_ap` varchar(20) DEFAULT NULL,
  `correo_ap` varchar(50) DEFAULT NULL,
  `id_ficha` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_aprendices`
--

INSERT INTO `tb_aprendices` (`id_aprendiz`, `nombre_ap`, `tipo_documento_ap`, `no_documento_ap`, `direccion_ap`, `correo_ap`, `id_ficha`) VALUES
(1, 'Samuel Alvarez', 'T.I.', 1037601301, 'Kr 15', 'samuel@gmail.com', 1),
(2, 'Isabella Cano', 'Cedula', 1037601302, 'Cl 16', 'isa@gmail.com', 2),
(3, 'Mateo Jimenez', 'T.I.', 1037601303, 'Kr 17', 'mateo@gmail.com', 1),
(4, 'Gabriela Perez', 'Cedula', 1037601304, 'Cl 18', 'gaby@gmail.com', 3),
(5, 'Emmanuel Soto', 'Cedula', 1037601305, 'Kr 19', 'emma@gmail.com', 5),
(6, 'Luciana Gomez', 'T.I.', 1037601306, 'Cl 20', 'luci@gmail.com', 7),
(7, 'Tomas Rivera', 'Cedula', 1037601307, 'Kr 21', 'tomas@gmail.com', 6),
(8, 'Mariana Arias', 'Cedula', 1037601308, 'Cl 22', 'mari@gmail.com', 8),
(9, 'Juan David', 'T.I.', 1037601309, 'Kr 23', 'juanda@gmail.com', 9),
(10, 'Sara Hernandez', 'Cedula', 1037601310, 'Cl 24', 'sara@gmail.com', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_competencias`
--

CREATE TABLE `tb_competencias` (
  `id_competencias` int(10) NOT NULL,
  `nombre_com` varchar(50) DEFAULT NULL,
  `codigo_com` varchar(20) DEFAULT NULL,
  `descripcion_com` varchar(50) DEFAULT NULL,
  `tipo_com` varchar(20) DEFAULT NULL,
  `id_ficha` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_competencias`
--

INSERT INTO `tb_competencias` (`id_competencias`, `nombre_com`, `codigo_com`, `descripcion_com`, `tipo_com`, `id_ficha`) VALUES
(1, 'HTML y CSS', 'C101', 'Crear paginas web', 'Tecnica', 1),
(2, 'JavaScript', 'C102', 'Programar paginas', 'Tecnica', 2),
(3, 'Edicion video', 'C103', 'Editar videos', 'Tecnica', 3),
(4, 'Robotica', 'C104', 'Armar robots', 'Tecnica', 4),
(5, 'SQL Avanzado', 'C105', 'Consultar datos', 'Tecnica', 5),
(6, 'Motores', 'C106', 'Reparar motores', 'Tecnica', 6),
(7, 'Python', 'C107', 'Programar en Python', 'Tecnica', 7),
(8, 'Excel', 'C108', 'Manejar Excel', 'Tecnica', 8),
(9, 'PHP', 'C109', 'Programar en PHP', 'Tecnica', 9),
(10, 'Cableado', 'C110', 'Instalar redes', 'Tecnica', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ficha`
--

CREATE TABLE `tb_ficha` (
  `id_ficha` int(10) NOT NULL,
  `no_ficha` int(10) DEFAULT NULL,
  `programa_ficha` varchar(50) DEFAULT NULL,
  `jornada_ficha` varchar(10) DEFAULT NULL,
  `estado_ap` varchar(10) DEFAULT NULL,
  `id_ins` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_ficha`
--

INSERT INTO `tb_ficha` (`id_ficha`, `no_ficha`, `programa_ficha`, `jornada_ficha`, `estado_ap`, `id_ins`) VALUES
(1, 2925001, 'ADSO', 'Diurna', 'Activa', 1),
(2, 2925002, 'Sistemas', 'Nocturna', 'Activa', 2),
(3, 2925003, 'Multimedia', 'Diurna', 'Activa', 3),
(4, 2925004, 'Electronica', 'Diurna', 'Activa', 4),
(5, 2925005, 'ADSO', 'Nocturna', 'Activa', 5),
(6, 2925006, 'Mecanica', 'Diurna', 'Activa', 6),
(7, 2925007, 'ADSO', 'Diurna', 'Activa', 7),
(8, 2925008, 'Contabilidad', 'Nocturna', 'Activa', 8),
(9, 2925009, 'ADSO', 'Diurna', 'Activa', 9),
(10, 2925010, 'Redes', 'Diurna', 'Activa', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_instructores`
--

CREATE TABLE `tb_instructores` (
  `id_ins` int(10) NOT NULL,
  `nombre_ins` varchar(50) DEFAULT NULL,
  `tipo_documento_ins` varchar(20) DEFAULT NULL,
  `no_documento_ins` int(10) DEFAULT NULL,
  `correo_ins` varchar(20) DEFAULT NULL,
  `telefono_ins` bigint(10) DEFAULT NULL,
  `especialidad_ins` varchar(20) DEFAULT NULL,
  `direccion_ins` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_instructores`
--

INSERT INTO `tb_instructores` (`id_ins`, `nombre_ins`, `tipo_documento_ins`, `no_documento_ins`, `correo_ins`, `telefono_ins`, `especialidad_ins`, `direccion_ins`) VALUES
(1, 'Andrea Cardona', 'Cedula', 1037601201, 'andrea@sena.edu.co', 3101112233, 'ADSO', 'Kr 2 # 5-10'),
(2, 'Jorge Herrera', 'Cedula', 1037601202, 'jorge@sena.edu.co', 3102223344, 'Sistemas', 'Cl 3 # 6-20'),
(3, 'Fernanda Lopez', 'Cedula', 1037601203, 'fer@sena.edu.co', 3103334455, 'Multimedia', 'Kr 4 # 7-30'),
(4, 'Miguel Angel', 'Cedula', 1037601204, 'miguel@sena.edu.co', 3104445566, 'Electronica', 'Cl 5 # 8-40'),
(5, 'Carolina Rios', 'Cedula', 1037601205, 'caro@sena.edu.co', 3105556677, 'ADSO', 'Kr 6 # 9-50'),
(6, 'Ricardo Mendez', 'Cedula', 1037601206, 'ricardo@sena.edu.co', 3106667788, 'Mecanica', 'Cl 7 # 10-60'),
(7, 'Juliana Pardo', 'Cedula', 1037601207, 'juli@sena.edu.co', 3107778899, 'ADSO', 'Kr 8 # 11-70'),
(8, 'Oscar Quintero', 'Cedula', 1037601208, 'oscar@sena.edu.co', 3108889900, 'Contabilidad', 'Cl 9 # 12-80'),
(9, 'Marcela Ortiz', 'Cedula', 1037601209, 'marce@sena.edu.co', 3111112233, 'ADSO', 'Kr 10 # 13-90'),
(10, 'Alejandro Gil', 'Cedula', 1037601210, 'alejo@sena.edu.co', 3112223344, 'Redes', 'Cl 11 # 14-10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_aprendices`
--
ALTER TABLE `tb_aprendices`
  ADD PRIMARY KEY (`id_aprendiz`),
  ADD KEY `id_ficha` (`id_ficha`);

--
-- Indices de la tabla `tb_competencias`
--
ALTER TABLE `tb_competencias`
  ADD PRIMARY KEY (`id_competencias`),
  ADD KEY `id_ficha` (`id_ficha`);

--
-- Indices de la tabla `tb_ficha`
--
ALTER TABLE `tb_ficha`
  ADD PRIMARY KEY (`id_ficha`),
  ADD KEY `id_ins` (`id_ins`);

--
-- Indices de la tabla `tb_instructores`
--
ALTER TABLE `tb_instructores`
  ADD PRIMARY KEY (`id_ins`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_aprendices`
--
ALTER TABLE `tb_aprendices`
  ADD CONSTRAINT `tb_aprendices_ibfk_1` FOREIGN KEY (`id_ficha`) REFERENCES `tb_ficha` (`id_ficha`);

--
-- Filtros para la tabla `tb_competencias`
--
ALTER TABLE `tb_competencias`
  ADD CONSTRAINT `tb_competencias_ibfk_1` FOREIGN KEY (`id_ficha`) REFERENCES `tb_ficha` (`id_ficha`);

--
-- Filtros para la tabla `tb_ficha`
--
ALTER TABLE `tb_ficha`
  ADD CONSTRAINT `tb_ficha_ibfk_1` FOREIGN KEY (`id_ins`) REFERENCES `tb_instructores` (`id_ins`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
