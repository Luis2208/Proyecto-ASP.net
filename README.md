# Proyecto-ASP.net
Este proyecto escolar fue realizado con ASP.Net utilizando Formularios Web Forms con página maestra. 
Adjunto script de la base de datos en MySQL
Deberan correr la aplicacion desde el "Defaul.aspx"
-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-05-2020 a las 04:39:42
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--
CREATE DATABASE IF NOT EXISTS `tienda` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `tienda`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `CodUsuario` int(11) NOT NULL,
  `NomUsuario` varchar(45) NOT NULL,
  `ApeUsuario` varchar(45) NOT NULL,
  `CiudUsuario` varchar(45) NOT NULL,
  `Correo` varchar(45) NOT NULL,
  `Telefono` varchar(45) NOT NULL,
  `ClaveUsuario` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`CodUsuario`, `NomUsuario`, `ApeUsuario`, `CiudUsuario`, `Correo`, `Telefono`, `ClaveUsuario`) VALUES
(1, 'Wicho', 'Galván', 'Gomez Palacio', 'titan_5005@hotmail.com', '8714745588', '6987');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `CodUsuario` int(11) NOT NULL,
  `NomUsuario` varchar(45) NOT NULL,
  `ApeUsuario` varchar(45) NOT NULL,
  `CiudUsuario` varchar(45) NOT NULL,
  `Correo` varchar(45) NOT NULL,
  `Telefono` varchar(45) NOT NULL,
  `ClaveUsuario` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`CodUsuario`, `NomUsuario`, `ApeUsuario`, `CiudUsuario`, `Correo`, `Telefono`, `ClaveUsuario`) VALUES
(1, 'Luis Gerardo', 'Osornio Galván', 'Gomez Palacio', 'twd_dark@hotmail.com', '8785418745', '1234'),
(2, 'Marcela', 'Galván Gonzalez', 'Gomez Palacio', 'titan_5005@hotmail.com', '8717852587', 'Marcela');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

CREATE TABLE `detalleventa` (
  `CodigoVenta` int(11) NOT NULL,
  `Cantidad` decimal(18,2) NOT NULL,
  `Precio` decimal(18,2) NOT NULL,
  `SubTotal` decimal(18,2) NOT NULL,
  `CodigoProducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalleventa`
--

INSERT INTO `detalleventa` (`CodigoVenta`, `Cantidad`, `Precio`, `SubTotal`, `CodigoProducto`) VALUES
(476, '1.00', '470.00', '470.00', 3),
(595, '1.00', '450.00', '450.00', 1),
(595, '8.00', '460.00', '3680.00', 2),
(595, '1.00', '470.00', '470.00', 3),
(612, '1.00', '460.00', '460.00', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `CodigoProducto` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Categoria` varchar(100) NOT NULL,
  `Precio` decimal(7,2) NOT NULL,
  `Cantidad` int(100) NOT NULL,
  `Imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`CodigoProducto`, `Nombre`, `Categoria`, `Precio`, `Cantidad`, `Imagen`) VALUES
(1, 'Pastel 3 Leches, Chocolate', 'Pasteles', '450.00', 5, 'imagenes/233.jpg'),
(2, 'Pastel 3 Leches con Durazno', 'Pasteles', '460.00', 4, 'imagenes/234.jpg'),
(3, 'Pastel 3 Leches con Fresa', 'Pasteles', '470.00', 5, 'imagenes/235.jpg'),
(4, 'Pay de Chocolate', 'Pays', '130.00', 4, 'imagenes/2.jpg'),
(5, 'Pay Blueberry', 'Pays', '150.00', 6, 'imagenes/1.jpg'),
(6, 'Pay Cereza', 'Pays', '150.00', 5, 'imagenes/3.jpg'),
(7, 'Pay Queso Fresa', 'Pays', '160.00', 6, 'imagenes/4.jpg'),
(8, 'Cupcake con cereza', 'Cupcakes', '15.00', 3, 'imagenes/4CU.jpg'),
(9, 'Cupcake de Limon', 'Cupcakes', '20.00', 6, 'imagenes/2CU.jpg'),
(10, 'Galletas con m&m', 'Cookies', '16.00', 6, 'imagenes/5C.jpg'),
(11, 'Cupcake con chispas', 'Cupcakes', '15.00', 6, 'imagenes/3CU.png'),
(12, 'Galletas con relleno chocolate', 'Cookies', '14.00', 9, 'imagenes/8C.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `CodigoVenta` int(11) NOT NULL,
  `Fecha` varchar(50) NOT NULL,
  `Subtotal` decimal(18,2) NOT NULL,
  `Igv` decimal(18,2) NOT NULL,
  `Total` decimal(18,2) NOT NULL,
  `Cliente` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`CodigoVenta`, `Fecha`, `Subtotal`, `Igv`, `Total`, `Cliente`) VALUES
(476, '04/12/2019', '385.40', '84.60', '470.00', 'Luis Gerardo'),
(595, '04/06/2019', '3772.00', '828.00', '4600.00', 'Luis Gerardo'),
(612, '02/06/2019', '377.20', '82.80', '460.00', 'Luis Gerardo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`CodUsuario`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`CodUsuario`);

--
-- Indices de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD PRIMARY KEY (`CodigoVenta`,`CodigoProducto`),
  ADD KEY `FK_DetalleVenta_Producto_idx` (`CodigoProducto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`CodigoProducto`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`CodigoVenta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `CodUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `CodUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `CodigoProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD CONSTRAINT `FK_DetalleVenta_Producto` FOREIGN KEY (`CodigoProducto`) REFERENCES `producto` (`CodigoProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_DetalleVenta_Venta` FOREIGN KEY (`CodigoVenta`) REFERENCES `venta` (`CodigoVenta`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
