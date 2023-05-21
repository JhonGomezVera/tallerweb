-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 27-04-2023 a las 04:11:21
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdVentas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Administrador`
--

CREATE TABLE `Administrador` (
  `codigo` int(11) NOT NULL,
  `identificacion` varchar(20) NOT NULL,
  `tipoIdentificacion` varchar(15) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `Usua_codigo_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Administrador`
--

INSERT INTO `Administrador` (`codigo`, `identificacion`, `tipoIdentificacion`, `nombre`, `apellido`, `celular`, `direccion`, `Usua_codigo_fk`) VALUES
(1, '79597736', 'c.c.', 'OscarFr', 'Castiblanco', '3103195111', 'Calle 40B Sur 77-13', 4),
(2, '7654321', '000', 'PRUEBA', 'BASE', '310319999', '00', 5),
(3, '79597736', 'c.c.', 'Admi3', 'Castiblanco3', '3103195112', 'Calle 40B Sur 77-13', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AsigRefrigerioCurso`
--

CREATE TABLE `AsigRefrigerioCurso` (
  `IdAsigRefCur` int(11) NOT NULL,
  `fechaAsig` date NOT NULL,
  `IdRefrigeriofk` int(11) DEFAULT NULL,
  `IdCursoFk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `AsigRefrigerioCurso`
--

INSERT INTO `AsigRefrigerioCurso` (`IdAsigRefCur`, `fechaAsig`, `IdRefrigeriofk`, `IdCursoFk`) VALUES
(1, '2023-02-14', 1, 1),
(2, '2023-03-14', 2, 2),
(3, '2023-04-14', 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Auxiliar`
--

CREATE TABLE `Auxiliar` (
  `IdAuxiliar` int(11) NOT NULL,
  `NombreAuxiliar` varchar(50) NOT NULL,
  `ApellidoAuxiliar` varchar(50) NOT NULL,
  `DireccionAuxiliar` varchar(100) NOT NULL,
  `TelefonoAuxiliar` varchar(20) NOT NULL,
  `CorreoAuxiliar` varchar(100) NOT NULL,
  `CursoAuxiliar` varchar(20) NOT NULL,
  `JornadaAuxiliar` varchar(20) NOT NULL,
  `estadoUsuario` bit(1) NOT NULL,
  `IdUsuariofk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Auxiliar`
--

INSERT INTO `Auxiliar` (`IdAuxiliar`, `NombreAuxiliar`, `ApellidoAuxiliar`, `DireccionAuxiliar`, `TelefonoAuxiliar`, `CorreoAuxiliar`, `CursoAuxiliar`, `JornadaAuxiliar`, `estadoUsuario`, `IdUsuariofk`) VALUES
(1, 'Paula', 'Ortiz', 'Dg 9 a este #7_42', '312327662', 'pa.ortiz@arp.edu.co', '301', 'unica', b'0', 4),
(2, 'Esteban', 'Perea', 'Dg28surN 00-43 este', '3246393846', 'deperea@arp.edu.co', '308', 'unica', b'0', 5),
(3, 'Brayan', 'Paez', 'Dg 23 b este #6_5', '3123277882', 'bm.paez@arp.edu.co', '304', 'unica', b'0', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cliente`
--

CREATE TABLE `Cliente` (
  `codigo` int(11) NOT NULL,
  `identificacion` varchar(20) NOT NULL,
  `tipoIdentificacion` varchar(15) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `Usua_codigo_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Cliente`
--

INSERT INTO `Cliente` (`codigo`, `identificacion`, `tipoIdentificacion`, `nombre`, `apellido`, `celular`, `direccion`, `Usua_codigo_fk`) VALUES
(1, '79597736', 'c.c.#', 'OscarFFF', 'CastiblancoM', '3103195110', 'Calle 40B Sur 77-13', 1),
(2, '79597737', 'c.c.', 'samuel', 'Martinez', '3103195111', 'Calle 40B Sur 77-13', 2),
(3, '79597736', 'c.c.', 'Clie3', 'Castiblanco3', '3103195112', 'Calle 40B Sur 77-13', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Coordinador`
--

CREATE TABLE `Coordinador` (
  `IdCoordinador` int(11) NOT NULL,
  `NombreCoordinador` varchar(50) NOT NULL,
  `ApellidoCoordinador` varchar(50) NOT NULL,
  `CorreoCoordinador` varchar(50) NOT NULL,
  `TelefonoCoordinador` varchar(20) NOT NULL,
  `estadoUsuario` bit(1) NOT NULL,
  `IdUsuariofk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Coordinador`
--

INSERT INTO `Coordinador` (`IdCoordinador`, `NombreCoordinador`, `ApellidoCoordinador`, `CorreoCoordinador`, `TelefonoCoordinador`, `estadoUsuario`, `IdUsuariofk`) VALUES
(1, 'Lizeth', 'Briceño', 'ld.briceno@arp.edu.co', '3046243243', b'0', 1),
(2, 'Maria Jose', 'Roldan', 'mj.roldan@arp.edu.co', '325327662', b'0', 2),
(3, 'Daniel', 'Junco', 'ds.junco@arp.edu.co', '3245678923', b'0', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Curso`
--

CREATE TABLE `Curso` (
  `IdCurso` int(11) NOT NULL,
  `sedeCurso` varchar(50) NOT NULL,
  `CantidadAlumnosCurso` int(11) NOT NULL,
  `directorCurso` varchar(50) NOT NULL,
  `estadoCurso` bit(1) NOT NULL,
  `IdRefrigeriofk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Curso`
--

INSERT INTO `Curso` (`IdCurso`, `sedeCurso`, `CantidadAlumnosCurso`, `directorCurso`, `estadoCurso`, `IdRefrigeriofk`) VALUES
(1, '01', 27, 'Oscar', b'0', 1),
(2, '02', 28, 'Nancy', b'0', 2),
(3, '03', 30, 'Oscar', b'0', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Detalle_Venta`
--

CREATE TABLE `Detalle_Venta` (
  `Deve_codigo` int(11) NOT NULL,
  `Deve_subtotal` int(11) NOT NULL,
  `Deve_cantidadPorProducto` int(11) NOT NULL,
  `vent_codigo_fk` int(11) NOT NULL,
  `prod_codigo_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Detalle_Venta`
--

INSERT INTO `Detalle_Venta` (`Deve_codigo`, `Deve_subtotal`, `Deve_cantidadPorProducto`, `vent_codigo_fk`, `prod_codigo_fk`) VALUES
(1, 1000, 5, 1, 1),
(2, 2000, 4, 1, 2),
(3, 5000, 3, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `numemp` varchar(3) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `edad` int(11) NOT NULL,
  `oficina` varchar(2) DEFAULT NULL,
  `titulo` varchar(30) NOT NULL,
  `contrato` date NOT NULL,
  `jefe` varchar(3) DEFAULT NULL,
  `cuota` decimal(10,0) DEFAULT NULL,
  `ventas` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`numemp`, `nombre`, `edad`, `oficina`, `titulo`, `contrato`, `jefe`, `cuota`, `ventas`) VALUES
('101', 'Antonio Viguer', 45, '12', 'representante', '1986-10-20', '104', '300000', '305000'),
('102', 'Alvaro Jaumes', 48, '21', 'representante', '1986-12-10', '108', '350000', '474000'),
('103', 'Juan Rovira', 29, '12', 'representante', '1987-03-01', '104', '275000', '286000'),
('104', 'Jose Gonzalez', 33, '12', 'dir ventas', '1987-05-19', '106', '200000', '143000'),
('105', 'Vicente Pantalla', 37, '13', 'representante', '1988-02-12', '104', '350000', '368000'),
('106', 'Luis Antonio', 52, '11', 'dir general', '1988-06-14', NULL, '275000', '299000'),
('107', 'Jorge Gutierrez', 49, '22', 'representante', '1988-11-14', '108', '300000', '186000'),
('108', 'Ana Bustamante', 62, '21', 'dir ventas', '1989-10-12', '106', '350000', '361000'),
('109', 'Maria Sunta', 31, '11', 'representante', '1999-10-12', '106', '300000', '392000'),
('110', 'Juan Victor', 41, NULL, 'representante', '1990-01-13', '104', NULL, '76000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficina`
--

CREATE TABLE `oficina` (
  `oficina` varchar(2) NOT NULL,
  `ciudad` varchar(20) NOT NULL,
  `region` varchar(10) NOT NULL,
  `dir` varchar(3) DEFAULT NULL,
  `objetivo` decimal(10,0) DEFAULT NULL,
  `ventas` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `oficina`
--

INSERT INTO `oficina` (`oficina`, `ciudad`, `region`, `dir`, `objetivo`, `ventas`) VALUES
('11', 'Valencia', 'este', '106', '575000', '693000'),
('12', 'Alicante', 'este', '104', '800000', '735000'),
('13', 'Castellon', 'este', '105', '350000', '368000'),
('21', 'Babajoz', 'oeste', '108', '725000', '836000'),
('22', 'A Coruña', 'oeste', '108', '300000', '186000'),
('23', 'Madrid', 'centro', '108', NULL, NULL),
('24', 'Madrid', 'centro', '108', '250000', '150000'),
('26', 'Pamplona', 'norte', NULL, NULL, NULL),
('28', 'Valencia', 'este', NULL, '900000', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `codigo` int(11) NOT NULL,
  `numpedido` varchar(6) NOT NULL,
  `fechapedido` date NOT NULL,
  `clie` varchar(4) NOT NULL,
  `rep` varchar(3) NOT NULL,
  `fab` varchar(4) NOT NULL,
  `producto` varchar(5) NOT NULL,
  `cant` int(11) NOT NULL,
  `importe` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`codigo`, `numpedido`, `fechapedido`, `clie`, `rep`, `fab`, `producto`, `cant`, `importe`) VALUES
(1, '110036', '1997-01-02', '2107', '110', 'aci', '4100z', 9, '22500'),
(2, '110036', '1997-01-02', '2117', '106', 'rei', '2a441', 7, '31500'),
(3, '112963', '1997-05-10', '2103', '105', 'aci', '41004', 28, '3276'),
(4, '112968', '1990-01-11', '2102', '101', 'aci', '41004', 34, '3978'),
(5, '112975', '1997-02-11', '2111', '103', 'rei', '2a44g', 6, '2100'),
(6, '112979', '1989-10-12', '2114', '108', 'aci', '4100z', 6, '15000'),
(7, '112983', '1997-05-10', '2103', '105', 'aci', '41004', 6, '702'),
(8, '112987', '1997-01-01', '2103', '105', 'aci', '4100y', 11, '27500'),
(9, '112989', '1997-12-10', '2101', '106', 'fea', '114', 6, '1458'),
(10, '112992', '1990-04-15', '2118', '108', 'aci', '41002', 10, '760'),
(11, '112993', '1997-03-10', '2106', '102', 'rei', '2a45c', 24, '1896'),
(12, '112997', '1997-04-04', '2124', '107', 'bic', '41003', 1, '652'),
(13, '113003', '1997-02-05', '2108', '109', 'imm', '779c', 3, '5625'),
(14, '113007', '1997-01-01', '2112', '108', 'imm', '773c', 3, '2925'),
(15, '113012', '1997-05-05', '2111', '105', 'aci', '41003', 35, '3745'),
(16, '113013', '1997-08-06', '2118', '108', 'bic', '41003', 1, '652'),
(17, '113024', '1997-07-04', '2114', '108', 'qsa', 'xk47', 20, '7100'),
(18, '113027', '1997-02-05', '2103', '105', 'aci', '41002', 54, '4104'),
(19, '113034', '1997-11-05', '2107', '110', 'rei', '2a45c', 8, '632'),
(20, '113042', '1997-01-01', '2113', '101', 'rei', '2a44r', 5, '22500'),
(21, '113045', '1997-07-02', '2112', '108', 'rei', '2a44r', 10, '45000'),
(22, '113048', '1997-02-02', '2120', '102', 'imm', '779c', 2, '3750'),
(23, '113049', '1997-04-04', '2118', '108', 'qsa', 'xk47', 2, '776'),
(24, '113051', '1997-07-06', '2118', '108', 'qsa', 'xk47', 4, '1420'),
(25, '113055', '2009-04-01', '2108', '101', 'aci', '4100x', 6, '150'),
(26, '113057', '1997-11-01', '2111', '103', 'aci', '4100x', 24, '600'),
(27, '113058', '1989-07-04', '2108', '109', 'fea', '112', 10, '1480');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Producto`
--

CREATE TABLE `Producto` (
  `prod_codigo` int(11) NOT NULL,
  `prod_nombre` varchar(50) NOT NULL,
  `prod_precioVenta` int(11) NOT NULL,
  `prod_cantidadStock` int(11) NOT NULL,
  `prod_unidadMedida` varchar(50) NOT NULL,
  `Prod_descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Producto`
--

INSERT INTO `Producto` (`prod_codigo`, `prod_nombre`, `prod_precioVenta`, `prod_cantidadStock`, `prod_unidadMedida`, `Prod_descripcion`) VALUES
(1, 'papa', 1000, 10, 'Kg', 'papa criolla'),
(2, 'arrpz', 1000, 10, 'lb', 'arroz'),
(3, 'yuca', 2000, 10, 'Kg', 'yuca criolla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Refrigerio`
--

CREATE TABLE `Refrigerio` (
  `IdRefrigerio` int(11) NOT NULL,
  `FechaRefrigerio` date NOT NULL,
  `HoraRefrigerio` datetime NOT NULL,
  `TipoRefrigerio` varchar(20) NOT NULL,
  `CantidadRefrigerio` int(11) NOT NULL,
  `DescripcionRefrigerio` varchar(100) NOT NULL,
  `EstadoRefrigerio` bit(1) NOT NULL,
  `IdCoordinadorFK` int(11) DEFAULT NULL,
  `IdAuxiliarFK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Refrigerio`
--

INSERT INTO `Refrigerio` (`IdRefrigerio`, `FechaRefrigerio`, `HoraRefrigerio`, `TipoRefrigerio`, `CantidadRefrigerio`, `DescripcionRefrigerio`, `EstadoRefrigerio`, `IdCoordinadorFK`, `IdAuxiliarFK`) VALUES
(1, '2023-02-14', '2023-02-14 10:00:01', 'Saludable', 27, 'Galletas/Manzana/Jugo natural', b'0', 1, 1),
(2, '2023-03-14', '2023-03-14 10:00:02', 'Saludable', 28, 'Galletas/Mandarina/Jugo natural', b'0', 2, 2),
(3, '2023-04-14', '2023-04-14 10:00:03', 'Saludable', 30, 'Ponquesito/Manzana/Jugo natural', b'0', 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuario`
--

CREATE TABLE `Usuario` (
  `usua_codigo` int(11) NOT NULL,
  `usua_nombre` varchar(32) NOT NULL,
  `usua_clave` varchar(32) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `img` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Usuario`
--

INSERT INTO `Usuario` (`usua_codigo`, `usua_nombre`, `usua_clave`, `estado`, `img`) VALUES
(1, 'Clie', '123', 0, 'fotos/usu1.jpeg'),
(2, 'Clie1', '123', 0, 'fotos/user2.jpeg'),
(3, 'Clie2', '123', 0, ''),
(4, 'admi11', '123', 0, ''),
(5, 'Admi1', '123', 0, ''),
(6, 'Admi2', '123', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UsuariosRef`
--

CREATE TABLE `UsuariosRef` (
  `idUsuario` int(11) NOT NULL,
  `NombreUsuario` varchar(50) NOT NULL,
  `ApellidoUsuario` varchar(50) NOT NULL,
  `CorreoUsuario` varchar(50) NOT NULL,
  `TelefonoUsuario` varchar(20) NOT NULL,
  `DireccionUsuario` varchar(50) NOT NULL,
  `PasswordUsuario` varchar(20) NOT NULL,
  `RolUsuario` varchar(20) NOT NULL,
  `estadoUsuario` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `UsuariosRef`
--

INSERT INTO `UsuariosRef` (`idUsuario`, `NombreUsuario`, `ApellidoUsuario`, `CorreoUsuario`, `TelefonoUsuario`, `DireccionUsuario`, `PasswordUsuario`, `RolUsuario`, `estadoUsuario`) VALUES
(1, 'Lizeth', 'Briceño', 'ld.briceno@arp.edu.co', '3046243243', 'Cra 7a este #5a-33', 'quieroplata', 'Coordinador', b'0'),
(2, 'maria jose', 'roldan', 'mj.roldan@arp.edu.co', '325327662', 'calle 10 b sur #4_32', 'amoabrayan', 'Coordinador', b'0'),
(3, 'Daniel', 'Junco', 'ds.junco@arp.edu.co', '3452873221', 'avenida 1 de mayo  3 #4_55', 'loaltoespro', 'Coordinador', b'0'),
(4, 'Paula', 'Ortiz', 'pa.ortiz@arp.edu.co', '312327662', 'Dg 9 a este #7_42', 'santiagoelmaslindo', 'Auxiliar', b'0'),
(5, 'Esteban', 'Perea', 'deperea@arp.edu.co', '3246393846', 'Dg28surN 00-43 este', 'marianalamaslinda', 'Auxiliar', b'0'),
(6, 'Brayan', 'Paez', 'bm.paez@arp.edu.co', '3123277882', 'Dg 23 b este #6_5', 'tengohambre', 'Auxiliar', b'0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Venta`
--

CREATE TABLE `Venta` (
  `vent_codigo` int(11) NOT NULL,
  `vent_fecha` date NOT NULL,
  `vent_total` int(11) NOT NULL,
  `vent_cantidadTotal` int(11) NOT NULL,
  `clie_codigo_fk` int(11) NOT NULL,
  `vend_codigo_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Venta`
--

INSERT INTO `Venta` (`vent_codigo`, `vent_fecha`, `vent_total`, `vent_cantidadTotal`, `clie_codigo_fk`, `vend_codigo_fk`) VALUES
(1, '2023-10-10', 10000, 23, 1, 1),
(2, '2023-10-11', 15000, 10, 1, 1),
(3, '2023-10-11', 23000, 5, 2, 2),
(4, '2023-02-08', 123456, 20, 3, 2),
(7, '2023-02-08', 123456, 20, 1, 3);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_us`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_us` (
`usua_codigo` int(11)
,`usua_nombre` varchar(32)
,`usua_clave` varchar(32)
,`estado` tinyint(1)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `v_us`
--
DROP TABLE IF EXISTS `v_us`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bdventas`.`v_us`  AS  select `bdventas`.`usuario`.`usua_codigo` AS `usua_codigo`,`bdventas`.`usuario`.`usua_nombre` AS `usua_nombre`,`bdventas`.`usuario`.`usua_clave` AS `usua_clave`,`bdventas`.`usuario`.`estado` AS `estado` from `bdventas`.`usuario` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Administrador`
--
ALTER TABLE `Administrador`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `Usua_codigo_fk` (`Usua_codigo_fk`);

--
-- Indices de la tabla `AsigRefrigerioCurso`
--
ALTER TABLE `AsigRefrigerioCurso`
  ADD PRIMARY KEY (`IdAsigRefCur`),
  ADD KEY `IdRefrigeriofk` (`IdRefrigeriofk`),
  ADD KEY `IdCursoFk` (`IdCursoFk`);

--
-- Indices de la tabla `Auxiliar`
--
ALTER TABLE `Auxiliar`
  ADD PRIMARY KEY (`IdAuxiliar`),
  ADD KEY `IdUsuariofk` (`IdUsuariofk`);

--
-- Indices de la tabla `Cliente`
--
ALTER TABLE `Cliente`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `Usua_codigo_fk` (`Usua_codigo_fk`);

--
-- Indices de la tabla `Coordinador`
--
ALTER TABLE `Coordinador`
  ADD PRIMARY KEY (`IdCoordinador`),
  ADD KEY `IdUsuariofk` (`IdUsuariofk`);

--
-- Indices de la tabla `Curso`
--
ALTER TABLE `Curso`
  ADD PRIMARY KEY (`IdCurso`),
  ADD KEY `IdRefrigeriofk` (`IdRefrigeriofk`);

--
-- Indices de la tabla `Detalle_Venta`
--
ALTER TABLE `Detalle_Venta`
  ADD PRIMARY KEY (`Deve_codigo`),
  ADD KEY `vent_codigo_fk` (`vent_codigo_fk`),
  ADD KEY `prod_codigo_fk` (`prod_codigo_fk`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`numemp`);

--
-- Indices de la tabla `oficina`
--
ALTER TABLE `oficina`
  ADD PRIMARY KEY (`oficina`),
  ADD KEY `ofcem` (`dir`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `pdemp` (`rep`);

--
-- Indices de la tabla `Producto`
--
ALTER TABLE `Producto`
  ADD PRIMARY KEY (`prod_codigo`);

--
-- Indices de la tabla `Refrigerio`
--
ALTER TABLE `Refrigerio`
  ADD PRIMARY KEY (`IdRefrigerio`),
  ADD KEY `IdCoordinadorFK` (`IdCoordinadorFK`),
  ADD KEY `IdAuxiliarFK` (`IdAuxiliarFK`);

--
-- Indices de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`usua_codigo`),
  ADD UNIQUE KEY `usua_nombre` (`usua_nombre`);

--
-- Indices de la tabla `UsuariosRef`
--
ALTER TABLE `UsuariosRef`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `CorreoUsuario` (`CorreoUsuario`);

--
-- Indices de la tabla `Venta`
--
ALTER TABLE `Venta`
  ADD PRIMARY KEY (`vent_codigo`),
  ADD KEY `clie_codigo_fk` (`clie_codigo_fk`),
  ADD KEY `vend_codigo_fk` (`vend_codigo_fk`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Administrador`
--
ALTER TABLE `Administrador`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `AsigRefrigerioCurso`
--
ALTER TABLE `AsigRefrigerioCurso`
  MODIFY `IdAsigRefCur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Auxiliar`
--
ALTER TABLE `Auxiliar`
  MODIFY `IdAuxiliar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Cliente`
--
ALTER TABLE `Cliente`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Coordinador`
--
ALTER TABLE `Coordinador`
  MODIFY `IdCoordinador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Curso`
--
ALTER TABLE `Curso`
  MODIFY `IdCurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Detalle_Venta`
--
ALTER TABLE `Detalle_Venta`
  MODIFY `Deve_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `Producto`
--
ALTER TABLE `Producto`
  MODIFY `prod_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Refrigerio`
--
ALTER TABLE `Refrigerio`
  MODIFY `IdRefrigerio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  MODIFY `usua_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `UsuariosRef`
--
ALTER TABLE `UsuariosRef`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `Venta`
--
ALTER TABLE `Venta`
  MODIFY `vent_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Administrador`
--
ALTER TABLE `Administrador`
  ADD CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`Usua_codigo_fk`) REFERENCES `Usuario` (`usua_codigo`);

--
-- Filtros para la tabla `AsigRefrigerioCurso`
--
ALTER TABLE `AsigRefrigerioCurso`
  ADD CONSTRAINT `asigrefrigeriocurso_ibfk_1` FOREIGN KEY (`IdRefrigeriofk`) REFERENCES `Refrigerio` (`IdRefrigerio`),
  ADD CONSTRAINT `asigrefrigeriocurso_ibfk_2` FOREIGN KEY (`IdCursoFk`) REFERENCES `Curso` (`IdCurso`);

--
-- Filtros para la tabla `Auxiliar`
--
ALTER TABLE `Auxiliar`
  ADD CONSTRAINT `auxiliar_ibfk_1` FOREIGN KEY (`IdUsuariofk`) REFERENCES `UsuariosRef` (`idUsuario`);

--
-- Filtros para la tabla `Cliente`
--
ALTER TABLE `Cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`Usua_codigo_fk`) REFERENCES `Usuario` (`usua_codigo`);

--
-- Filtros para la tabla `Coordinador`
--
ALTER TABLE `Coordinador`
  ADD CONSTRAINT `coordinador_ibfk_1` FOREIGN KEY (`IdUsuariofk`) REFERENCES `UsuariosRef` (`idUsuario`);

--
-- Filtros para la tabla `Curso`
--
ALTER TABLE `Curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`IdRefrigeriofk`) REFERENCES `Refrigerio` (`IdRefrigerio`);

--
-- Filtros para la tabla `Detalle_Venta`
--
ALTER TABLE `Detalle_Venta`
  ADD CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`vent_codigo_fk`) REFERENCES `Venta` (`vent_codigo`),
  ADD CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`prod_codigo_fk`) REFERENCES `Producto` (`prod_codigo`);

--
-- Filtros para la tabla `oficina`
--
ALTER TABLE `oficina`
  ADD CONSTRAINT `ofcem` FOREIGN KEY (`dir`) REFERENCES `empleado` (`numemp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pdemp` FOREIGN KEY (`rep`) REFERENCES `empleado` (`numemp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Refrigerio`
--
ALTER TABLE `Refrigerio`
  ADD CONSTRAINT `refrigerio_ibfk_1` FOREIGN KEY (`IdCoordinadorFK`) REFERENCES `Coordinador` (`IdCoordinador`),
  ADD CONSTRAINT `refrigerio_ibfk_2` FOREIGN KEY (`IdAuxiliarFK`) REFERENCES `Auxiliar` (`IdAuxiliar`);

--
-- Filtros para la tabla `Venta`
--
ALTER TABLE `Venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`clie_codigo_fk`) REFERENCES `Cliente` (`codigo`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`vend_codigo_fk`) REFERENCES `Administrador` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
