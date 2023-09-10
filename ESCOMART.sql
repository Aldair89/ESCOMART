-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         11.2.0-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para escomart
DROP DATABASE IF EXISTS `escomart`;
CREATE DATABASE IF NOT EXISTS `escomart` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `escomart`;

-- Volcando estructura para tabla escomart.aceites
DROP TABLE IF EXISTS `aceites`;
CREATE TABLE IF NOT EXISTS `aceites` (
  `id_aceite` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_aceite`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.aceites: ~22 rows (aproximadamente)
INSERT INTO `aceites` (`id_aceite`, `nombre`, `tipo`, `precio`, `Cantidad`) VALUES
	(1, 'Aceite de Oliva Virgen Extra', 'Oliva', 120.00, 8),
	(2, 'Aceite de Girasol', 'Girasol', 80.50, 10),
	(3, 'Aceite de Coco Orgánico', 'Coco', 150.25, 12),
	(4, 'Aceite de Aguacate', 'Aguacate', 180.75, 6),
	(5, 'Aceite de Sésamo', 'Sésamo', 90.00, 14),
	(6, 'Aceite Nutrioli', 'Canola', 95.00, 21),
	(7, 'Aceite Patrona', 'Oliva', 135.00, 10),
	(8, 'Aceite de Maíz', 'Maíz', 70.25, 8),
	(9, 'Aceite de Almendra', 'Almendra', 160.50, 15),
	(10, 'Aceite de Lino', 'Lino', 85.00, 23),
	(11, 'Aceite Sabrosano', 'Girasol', 75.00, 20),
	(12, 'Aceite Canoil', 'Canola', 90.50, 10),
	(13, 'Aceite Oleico', 'Oliva', 110.00, 16),
	(14, 'Aceite Conol', 'Girasol', 85.00, 13),
	(15, 'Aceite de Oliva Virgen Extra Carbonell', 'Oliva', 150.00, 11),
	(16, 'Aceite de Girasol Cargill', 'Girasol', 80.50, 17),
	(17, 'Aceite de Coco Orgánico Nutiva', 'Coco', 250.25, 29),
	(18, 'Aceite de Aguacate Chosen Foods', 'Aguacate', 180.75, 18),
	(19, 'Aceite de Sésamo Kadoya', 'Sésamo', 90.00, 20),
	(20, 'Aceite Canola Mazola', 'Canola', 100.00, 15),
	(21, 'Aceite de Oliva Extra Virgen Bertolli', 'Oliva', 120.00, 13),
	(22, 'Aceite de Maíz Puro Mazola', 'Maíz', 70.25, 14);

-- Volcando estructura para tabla escomart.arroz
DROP TABLE IF EXISTS `arroz`;
CREATE TABLE IF NOT EXISTS `arroz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(100) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `peso` decimal(5,2) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.arroz: ~65 rows (aproximadamente)
INSERT INTO `arroz` (`id`, `marca`, `tipo`, `peso`, `precio`, `cantidad`) VALUES
	(1, 'Tío Ben\'s', 'Arroz Blanco', 1.00, 18.90, 200),
	(2, 'Herdez', 'Arroz Integral', 1.50, 21.75, 150),
	(3, 'La Costeña', 'Arroz Blanco', 2.00, 16.50, 180),
	(4, 'Knorr', 'Arroz Amarillo', 0.75, 15.25, 120),
	(5, 'Mahatma', 'Arroz Basmati', 1.25, 30.00, 100),
	(6, 'Tío Ben\'s', 'Arroz Blanco', 1.00, 18.90, 200),
	(7, 'Herdez', 'Arroz Integral', 1.50, 21.75, 150),
	(8, 'La Costeña', 'Arroz Blanco', 2.00, 16.50, 180),
	(9, 'Knorr', 'Arroz Amarillo', 0.75, 15.25, 120),
	(10, 'Mahatma', 'Arroz Basmati', 1.25, 30.00, 100),
	(11, 'Gallo', 'Arroz Extra', 1.00, 19.50, 250),
	(12, 'Lucciano', 'Arroz Orgánico', 1.50, 24.90, 180),
	(13, 'La Cigala', 'Arroz Thai', 1.00, 28.75, 100),
	(14, 'Columpio', 'Arroz Súper Extra', 2.00, 17.80, 220),
	(15, 'Delicias del Campo', 'Arroz Blanco', 1.00, 15.50, 300),
	(16, 'Arawak', 'Arroz Salvaje', 0.50, 35.00, 80),
	(17, 'Tío Picho', 'Arroz Integral', 1.25, 22.50, 120),
	(18, 'Iberia', 'Arroz Bomba', 1.00, 29.90, 150),
	(19, 'Kokuyo', 'Arroz Koshihikari', 0.75, 45.75, 70),
	(20, 'Mama Mía', 'Arroz Arborio', 1.50, 27.00, 90),
	(21, 'El Molino', 'Arroz Blanco', 1.00, 20.75, 200),
	(22, 'Campo Limpio', 'Arroz Integral', 1.50, 23.25, 180),
	(23, 'Sunshine', 'Arroz Jazmín', 1.00, 26.50, 120),
	(24, 'Premium Gold', 'Arroz Integral', 2.00, 18.90, 150),
	(25, 'Carolina', 'Arroz Blanco', 1.25, 17.50, 250),
	(26, 'Uncle Ben\'s', 'Arroz Blanco', 1.00, 22.50, 300),
	(27, 'Mahatma', 'Arroz Integral', 1.50, 25.75, 250),
	(28, 'La Preferida', 'Arroz Blanco', 2.00, 18.90, 350),
	(29, 'Knorr', 'Arroz Amarillo', 1.25, 20.25, 200),
	(30, 'Rozon', 'Arroz Basmati', 1.00, 35.00, 180),
	(31, 'Gallo', 'Arroz Extra', 1.50, 21.50, 220),
	(32, 'Lustucru', 'Arroz Orgánico', 1.00, 28.90, 150),
	(33, 'La Cigala', 'Arroz Thai', 2.00, 33.75, 100),
	(34, 'Columpio', 'Arroz Súper Extra', 1.25, 24.80, 280),
	(35, 'Jasmine', 'Arroz Blanco', 1.00, 19.50, 400),
	(36, 'Golden Star', 'Arroz Salvaje', 0.50, 40.00, 120),
	(37, 'Kokuho Rose', 'Arroz Integral', 1.25, 30.50, 180),
	(38, 'Bomba Rice', 'Arroz Bomba', 1.00, 38.90, 150),
	(39, 'Nishiki', 'Arroz Sushi', 0.75, 45.75, 100),
	(40, 'Carnaroli', 'Arroz Arborio', 1.50, 32.00, 200),
	(41, 'Carolina', 'Arroz Blanco', 1.00, 20.75, 300),
	(42, 'Tilda', 'Arroz Basmati', 1.50, 28.25, 250),
	(43, 'Royal', 'Arroz Integral', 1.00, 26.50, 180),
	(44, 'Krishna Kamod', 'Arroz Blanco', 2.00, 19.90, 350),
	(45, 'SunRice', 'Arroz Integral', 1.25, 23.75, 220),
	(46, 'La Cigala', 'Arroz Blanco', 1.00, 18.50, 400),
	(47, 'Tío Picho', 'Arroz Integral', 1.50, 22.75, 320),
	(48, 'Tilda', 'Arroz Basmati', 2.00, 28.90, 250),
	(49, 'Risotto', 'Arroz Arborio', 1.25, 35.25, 280),
	(50, 'Royal', 'Arroz Integral', 1.00, 24.50, 300),
	(51, 'Mahatma', 'Arroz Blanco', 1.50, 20.50, 350),
	(52, 'Sona Masoori', 'Arroz Sona Masuri', 2.00, 27.90, 200),
	(53, 'Gallo', 'Arroz Extra', 1.00, 19.80, 400),
	(54, 'Bombay', 'Arroz Basmati', 1.50, 32.75, 220),
	(55, 'Carolina', 'Arroz Blanco', 1.25, 16.50, 380),
	(56, 'Golden Star', 'Arroz Salvaje', 0.75, 38.00, 150),
	(57, 'La Preferida', 'Arroz Integral', 1.50, 26.90, 280),
	(58, 'Krishna Kamod', 'Arroz Blanco', 1.00, 20.90, 350),
	(59, 'Uncle Ben\'s', 'Arroz Basmati', 2.00, 34.00, 180),
	(60, 'SunRice', 'Arroz Integral', 1.25, 25.75, 250),
	(61, 'Jasmine', 'Arroz Blanco', 1.00, 18.90, 400),
	(62, 'Columpio', 'Arroz Súper Extra', 1.50, 23.50, 320),
	(63, 'Bomba Rice', 'Arroz Bomba', 2.00, 40.90, 200),
	(64, 'Kokuho Rose', 'Arroz Integral', 1.25, 28.50, 220),
	(65, 'Caribbean', 'Arroz Jazmín', 0.75, 33.75, 150);

-- Volcando estructura para tabla escomart.atunes
DROP TABLE IF EXISTS `atunes`;
CREATE TABLE IF NOT EXISTS `atunes` (
  `id_atun` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(100) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id_atun`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.atunes: ~22 rows (aproximadamente)
INSERT INTO `atunes` (`id_atun`, `marca`, `tipo`, `precio`, `cantidad`) VALUES
	(1, 'Bumble Bee', 'Atún en agua', 25.50, 20),
	(2, 'Starkist', 'Atún en aceite', 22.75, 100),
	(3, 'Chicken of the Sea', 'Atún en agua', 20.25, 90),
	(4, 'Rio Mare', 'Atún en aceite', 30.75, 110),
	(5, 'Saupiquet', 'Atún en agua', 28.00, 80),
	(6, 'Coppa', 'Atún en aceite', 26.50, 70),
	(7, 'Dolphin Safe', 'Atún en agua', 24.50, 30),
	(8, 'Wild Planet', 'Atún en aceite', 28.75, 95),
	(9, 'Genova', 'Atún en agua', 22.25, 10),
	(10, 'Ortiz', 'Atún en aceite', 32.50, 85),
	(11, 'John West', 'Atún en agua', 26.00, 20),
	(12, 'Tonnino', 'Atún en aceite', 35.00, 100),
	(13, 'Great Value', 'Atún en agua', 19.50, 50),
	(14, 'King Oscar', 'Atún en aceite', 29.90, 90),
	(15, 'Chicken of the Sea', 'Atún en agua', 20.50, 100),
	(16, 'Starkist', 'Atún en aceite', 25.75, 120),
	(17, 'Safe Catch', 'Atún en agua', 30.25, 80),
	(18, 'Wild Selections', 'Atún en aceite', 32.75, 90),
	(19, 'Bumble Bee', 'Atún en agua', 22.00, 10),
	(20, 'TunaSustain', 'Atún en aceite', 27.50, 95),
	(21, 'Oceans', 'Atún en agua', 23.90, 30),
	(22, 'Seaspoon', 'Atún en aceite', 29.50, 85);

-- Volcando estructura para tabla escomart.azucar
DROP TABLE IF EXISTS `azucar`;
CREATE TABLE IF NOT EXISTS `azucar` (
  `id_azucar` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(100) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id_azucar`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.azucar: ~41 rows (aproximadamente)
INSERT INTO `azucar` (`id_azucar`, `marca`, `tipo`, `precio`, `cantidad`) VALUES
	(1, 'Azucarina', 'Blanca Refinada', 12.50, 200),
	(2, 'Dulcex', 'Morena', 15.80, 150),
	(3, 'Organicsweet', 'Orgánica', 18.20, 100),
	(4, 'EcoSugar', 'De Caña Ecológica', 22.00, 80),
	(5, 'NaturaSweet', 'Sin Calorías', 25.50, 120),
	(6, 'SweetLife', 'Azúcar Light', 20.40, 90),
	(7, 'GoldenCane', 'De Caña', 19.75, 70),
	(8, 'PureCoco', 'Azúcar de Coco', 28.90, 50),
	(9, 'HealthyBeet', 'De Remolacha', 17.30, 60),
	(10, 'NaturePalma', 'De Palma', 23.80, 40),
	(11, 'WholeSugar', 'Integral', 21.90, 30),
	(12, 'GentleSweet', 'Bajo en Carbohidratos', 29.50, 25),
	(13, 'BioPanela', 'Panela', 24.80, 35),
	(14, 'BioCane', 'De Caña Integral', 26.70, 45),
	(15, 'SugarMagic', 'Glass', 32.00, 20),
	(16, 'CaneMagic', 'De Caña', 18.90, 70),
	(17, 'PureSweet', 'Blanca Refinada', 14.50, 100),
	(18, 'EcoHarvest', 'Orgánica sin Pesticidas', 27.60, 15),
	(19, 'GreenField', 'De Caña Ecológica', 30.20, 10),
	(20, 'PureCane', 'Blanca Refinada', 13.80, 50),
	(21, 'EcoCane', 'De Caña Ecológica', 19.30, 40),
	(22, 'Zucarmex', 'Estándar', 25.50, 200),
	(23, 'La Fina', 'Refinada', 27.80, 150),
	(24, 'Azúcar del Valle', 'Morena', 30.00, 180),
	(25, 'Dulce Sabor', 'Glass', 35.20, 120),
	(26, 'Cristal Azúcar', 'Mascabado', 28.90, 90),
	(27, 'Azucarita', 'Granulada', 22.75, 250),
	(28, 'Finura', 'Glass', 36.50, 80),
	(29, 'Molinos Azúcar', 'Refinada', 26.40, 300),
	(30, 'Azuquita', 'Mascabado', 29.80, 70),
	(31, 'Delicioso Azúcar', 'Glass', 33.20, 140),
	(32, 'La Estrella', 'Morena', 31.90, 110),
	(33, 'Endulzante Mexicano', 'Light', 42.00, 200),
	(34, 'Azúcar Alegre', 'Estándar', 24.50, 180),
	(35, 'La Dulzura', 'Refinada', 27.20, 230),
	(36, 'Zucaritas', 'Glass', 35.80, 100),
	(37, 'Azúcar Feliz', 'Morena', 29.60, 120),
	(38, 'Dulcera', 'Granulada', 23.80, 270),
	(39, 'Fina Cristal', 'Glass', 38.20, 90),
	(40, 'Azuquita Feliz', 'Refinada', 25.90, 320),
	(41, 'Dulzor Natural', 'Mascabado', 31.50, 60);

-- Volcando estructura para tabla escomart.barcel
DROP TABLE IF EXISTS `barcel`;
CREATE TABLE IF NOT EXISTS `barcel` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.barcel: ~72 rows (aproximadamente)
INSERT INTO `barcel` (`id_producto`, `nombre`, `tipo`, `precio`, `cantidad`) VALUES
	(1, 'Papas Sabritas Original', 'Botana', 15.50, 100),
	(2, 'Ruffles Queso', 'Botana', 18.75, 80),
	(3, 'Doritos Nacho', 'Botana', 16.20, 120),
	(4, 'Chips Sal y Limón', 'Botana', 12.90, 90),
	(5, 'Papas Fuego', 'Botana', 14.80, 70),
	(6, 'Cacahuates Japoneses', 'Botana', 9.95, 150),
	(7, 'Churritos', 'Botana', 11.25, 110),
	(8, 'Barcel Mix', 'Botana', 17.50, 80),
	(9, 'Papas Rancheritas', 'Botana', 13.20, 120),
	(10, 'Frituras Pimienta', 'Botana', 12.40, 100),
	(11, 'Fritos Limón', 'Botana', 11.80, 90),
	(12, 'Chips Fuego', 'Botana', 15.60, 70),
	(13, 'Cacahuates Habanero', 'Botana', 10.25, 130),
	(14, 'Chicharrones Queso', 'Botana', 18.20, 75),
	(15, 'Takis Fuego', 'Botana', 16.90, 85),
	(16, 'Sabritones', 'Botana', 12.75, 110),
	(17, 'Toreadas', 'Botana', 13.90, 100),
	(18, 'Cheetos Poff', 'Botana', 14.50, 95),
	(19, 'Chips Adobadas', 'Botana', 12.40, 105),
	(20, 'Fritos Original', 'Botana', 11.60, 130),
	(21, 'Chips Salt & Vinegar', 'Botana', 12.50, 70),
	(22, 'Papas Adobadas', 'Botana', 11.80, 90),
	(23, 'Ruffles Limón', 'Botana', 14.20, 120),
	(24, 'Doritos Cool Ranch', 'Botana', 15.90, 80),
	(25, 'Papas Crujientes', 'Botana', 16.50, 110),
	(26, 'Cacahuates Japoneses Picantes', 'Botana', 10.80, 60),
	(27, 'Churritos Chile y Limón', 'Botana', 9.95, 140),
	(28, 'Barcel Mix XL', 'Botana', 21.50, 50),
	(29, 'Papas Toreadas', 'Botana', 13.20, 100),
	(30, 'Frituras Limón y Chile', 'Botana', 11.60, 130),
	(31, 'Fritos Chile y Limón', 'Botana', 12.80, 70),
	(32, 'Chips Sal y Pimienta', 'Botana', 14.40, 80),
	(33, 'Cacahuates Habanero Picantes', 'Botana', 10.50, 120),
	(34, 'Chicharrones Churritos', 'Botana', 16.20, 90),
	(35, 'Takis Fuego y Limón', 'Botana', 17.50, 60),
	(36, 'Sabritones Sal y Limón', 'Botana', 13.50, 80),
	(37, 'Toreadas Limón', 'Botana', 12.90, 100),
	(38, 'Cheetos Bolitas', 'Botana', 14.70, 70),
	(39, 'Chips Adobadas Picantes', 'Botana', 13.20, 90),
	(40, 'Fritos Chorizo', 'Botana', 15.10, 120),
	(41, 'Papas Sabritas Fuego', 'Botana', 16.80, 80),
	(42, 'Papas Ruffles Cheddar & Jalapeño', 'Botana', 15.60, 110),
	(43, 'Doritos Flamin Hot', 'Botana', 17.90, 70),
	(44, 'Papas Crujientes Extra Hot', 'Botana', 14.80, 130),
	(45, 'Cacahuates Salados', 'Botana', 9.50, 100),
	(46, 'Churritos Sal y Limón', 'Botana', 11.25, 140),
	(47, 'Barcel Mix Extra Large', 'Botana', 22.50, 60),
	(48, 'Papas Toreadas Picantes', 'Botana', 12.90, 90),
	(49, 'Frituras Extra Crunchy', 'Botana', 11.20, 120),
	(50, 'Fritos Queso', 'Botana', 12.50, 70),
	(51, 'Chips Barbacoa', 'Botana', 14.60, 80),
	(52, 'Cacahuates Habanero Extra Picantes', 'Botana', 11.80, 130),
	(53, 'Chicharrones Crujientes', 'Botana', 16.90, 90),
	(54, 'Takis Fuego y Chipotle', 'Botana', 18.20, 60),
	(55, 'Sabritones Sal y Chile', 'Botana', 13.80, 80),
	(56, 'Toreadas Extra Picantes', 'Botana', 13.20, 100),
	(57, 'Cheetos Bolitas Queso', 'Botana', 15.00, 70),
	(58, 'Chips Salsa Verde', 'Botana', 14.40, 80),
	(59, 'Fritos Jalapeño', 'Botana', 16.20, 100),
	(60, 'Papas Sabritas Limón', 'Botana', 15.80, 80),
	(61, 'Papas Ruffles Jamón', 'Botana', 16.60, 110),
	(62, 'Doritos Ranch Dips', 'Botana', 18.10, 70),
	(63, 'Papas Crujientes Extra Picantes', 'Botana', 15.20, 130),
	(64, 'Cacahuates Picantes', 'Botana', 10.80, 90),
	(65, 'Churritos Picantes', 'Botana', 11.75, 140),
	(66, 'Barcel Mix Supreme', 'Botana', 23.00, 50),
	(67, 'Papas Toreadas Extra Picantes', 'Botana', 14.50, 100),
	(68, 'Frituras Limón y Chile Extra Picantes', 'Botana', 12.90, 120),
	(69, 'Fritos Chile y Limón Super Picantes', 'Botana', 14.20, 80),
	(70, 'Chips Sal y Pimienta Extra Picantes', 'Botana', 15.60, 70),
	(71, 'Cacahuates Habanero Picantes Extremos', 'Botana', 11.50, 110),
	(72, 'Chicharrones Churritos Super Picantes', 'Botana', 17.20, 60);

-- Volcando estructura para tabla escomart.cafes
DROP TABLE IF EXISTS `cafes`;
CREATE TABLE IF NOT EXISTS `cafes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `origen` varchar(100) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.cafes: ~40 rows (aproximadamente)
INSERT INTO `cafes` (`id`, `nombre`, `origen`, `tipo`, `precio`, `cantidad`) VALUES
	(1, 'Café de Olla', 'México', 'Mezcla de café con canela y piloncillo', 85.50, 50),
	(2, 'Oaxaca Pluma', 'Oaxaca, México', 'Arábica', 120.25, 30),
	(3, 'Chiapas Maya', 'Chiapas, México', 'Mezcla de café gourmet', 99.90, 40),
	(4, 'Veracruz Altura', 'Veracruz, México', 'Arábica', 110.75, 25),
	(5, 'Café Molido El Marino', 'Hidalgo, México', 'Mezcla de café tostado', 70.00, 20),
	(6, 'Starbucks House Blend', 'Varias regiones', 'Mezcla de café', 135.00, 100),
	(7, 'Nescafé Clásico', 'Varias regiones', 'Café soluble', 75.50, 80),
	(8, 'Lavazza Qualità Rossa', 'Italia', 'Mezcla de café', 189.90, 50),
	(9, 'Illy Espresso', 'Italia', 'Arábica', 220.75, 30),
	(10, 'Juan Valdez Premium', 'Colombia', 'Café suave', 115.00, 60),
	(11, 'Peet’s Coffee Major Dickason’s Blend', 'Varias regiones', 'Mezcla de café', 180.00, 40),
	(12, 'Dunkin’ Original Blend', 'Varias regiones', 'Mezcla de café', 145.50, 70),
	(13, 'Tim Hortons Original', 'Canadá', 'Mezcla de café', 120.75, 55),
	(14, 'Café Britt Tarrazú', 'Costa Rica', 'Arábica', 210.00, 25),
	(15, 'Tchibo Exclusive', 'Alemania', 'Mezcla de café', 195.90, 20),
	(16, 'Café del Volcán San Miguel', 'El Salvador', 'Arábica', 225.00, 30),
	(17, 'Blue Mountain Coffee', 'Jamaica', 'Arábica', 450.75, 20),
	(18, 'Juan Valdez Premium 100% Colombia', 'Colombia', 'Arábica', 135.90, 50),
	(19, 'Kona Coffee', 'Hawái, Estados Unidos', 'Arábica', 380.50, 25),
	(20, 'Peaberry Coffee Tanzania', 'Tanzania', 'Arábica', 280.00, 35),
	(21, 'Nescafé Dolca', 'Varias regiones', 'Café soluble', 80.00, 40),
	(22, 'Nescafé Cappuccino', 'Varias regiones', 'Café soluble con sabor a cappuccino', 95.50, 30),
	(23, 'Nescafé Taster’s Choice', 'Varias regiones', 'Café soluble', 70.75, 55),
	(24, 'Nescafé Clásico Descafeinado', 'Varias regiones', 'Café soluble descafeinado', 85.00, 25),
	(25, 'Nescafé Espresso', 'Varias regiones', 'Café soluble tipo espresso', 110.90, 20),
	(26, 'Café ORO Tradicional', 'Veracruz, México', 'Mezcla de café tostado', 95.00, 50),
	(27, 'Café ORO Extra Fuerte', 'Veracruz, México', 'Mezcla de café tostado', 105.50, 40),
	(28, 'Café ORO Orgánico', 'Veracruz, México', 'Mezcla de café tostado', 120.75, 35),
	(29, 'Café ORO Chiapas', 'Chiapas, México', 'Mezcla de café tostado', 110.00, 30),
	(30, 'Café ORO Gourmet', 'Veracruz, México', 'Mezcla de café tostado', 135.90, 25),
	(31, 'Café La Parroquia Clásico', 'Veracruz, México', 'Mezcla de café tostado', 90.00, 60),
	(32, 'Café La Parroquia Gourmet', 'Veracruz, México', 'Mezcla de café gourmet', 120.50, 40),
	(33, 'Café La Parroquia Descafeinado', 'Veracruz, México', 'Mezcla de café tostado descafeinado', 100.75, 50),
	(34, 'Café Legal Tradicional', 'Varias regiones', 'Mezcla de café tostado', 80.00, 70),
	(35, 'Café Legal Espresso', 'Varias regiones', 'Mezcla de café tostado tipo espresso', 110.90, 30),
	(36, 'Café de Olla El Sol', 'México', 'Mezcla de café con canela y piloncillo', 85.00, 40),
	(37, 'Café de Olla Doña Chela', 'México', 'Mezcla de café con especias', 95.50, 35),
	(38, 'Café de Olla La Tradición', 'México', 'Mezcla de café con piloncillo', 75.75, 50),
	(39, 'Café de Olla La Abuelita', 'México', 'Mezcla de café con canela y panela', 90.00, 30),
	(40, 'Café de Olla Don Pancho', 'México', 'Mezcla de café con especias y azúcar mascabado', 110.90, 25);

-- Volcando estructura para tabla escomart.clientes
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.clientes: ~21 rows (aproximadamente)
INSERT INTO `clientes` (`id_cliente`, `nombre`, `direccion`, `telefono`, `email`) VALUES
	(1, 'Juan Pérez', 'Calle Reforma #123, Col. Centro, Tuxpan, Veracruz', '783-123-4567', 'juanpe25@gmail.com'),
	(2, 'María Gómez', 'Avenida Hidalgo #456, Col. Juárez, Tuxpan, Veracruz', '783-987-6543', 'mariaho10z@gmail.com'),
	(3, 'Carlos López', 'Calle Benito Juárez #789, Col. Madero, Tuxpan, Veracruz', '783-567-8901', 'carlos.lopez@gmail.com'),
	(4, 'Ana Rodríguez', 'Avenida Morelos #234, Col. Libertad, Tuxpan, Veracruz', '783-234-5678', 'ana.rodrigue02z@hotmail.com'),
	(5, 'Pedro Hernández', 'Calle Allende #567, Col. Reforma, Tuxpan, Veracruz', '783-890-1234', 'pedro.hern74@hotmail.com'),
	(6, 'Laura Torres', 'Calle Juana de Asbaje #345, Col. Revolución, Tuxpan, Veracruz', '783-456-7890', 'laura.torres@hotmail.com'),
	(7, 'Fernando Mendoza', 'Avenida Carranza #678, Col. Industrial, Tuxpan, Veracruz', '783-901-2345', 'fernando.mendoza@gmail.com'),
	(8, 'Luisa Navarro', 'Calle Héroes de Chapultepec #901, Col. Panorama, Tuxpan, Veracruz', '783-345-6789', 'luisa.naro23@gmail.com'),
	(9, 'Eduardo Castillo', 'Avenida Insurgentes #567, Col. Las Palmas, Tuxpan, Veracruz', '782-678-9012', 'eduardo.castillo@gmail.com'),
	(10, 'Mónica Morales', 'Calle Zaragoza #234, Col. San Antonio, Tuxpan, Veracruz', '783-901-2345', 'monica.mos10@gmail.com'),
	(11, 'Ricardo Ruiz', 'Avenida Morelos #890, Col. Del Bosque, Tuxpan, Veracruz', '783-345-6789', 'ricardo.ruiz@gmail.com'),
	(12, 'Silvia Vargas', 'Calle Revolución #456, Col. Reforma, Tuxpan, Veracruz', '783-678-9012', 'silvia.vgas14@gmail.com'),
	(13, 'Javier Sánchez', 'Avenida Juárez #678, Col. Centro, Tuxpan, Veracruz', '782-901-2345', 'javier.sanchez@gmail.com'),
	(14, 'Patricia Nava', 'Calle Hidalgo #123, Col. Las Palmas, Tuxpan, Veracruz', '783-345-6789', 'patricia01@hotmail.com'),
	(15, 'Andrés León', 'Avenida Carranza #567, Col. Panorama, Tuxpan, Veracruz', '782-678-9012', 'andres.leon@gmail.com'),
	(16, 'Martha Cortés', 'Calle Insurgentes #901, Col. Industrial, Tuxpan, Veracruz', '783-901-2345', 'martha.cortes23@gmail.com'),
	(17, 'Raúl Díaz', 'Avenida Zaragoza #234, Col. San Antonio, Tuxpan, Veracruz', '783-345-6789', 'rauldiaz14@hotmail.com'),
	(18, 'Sofía Ortega', 'Calle Morelos #890, Col. Del Bosque, Tuxpan, Veracruz', '783-678-9012', 'sofiaortega@hotmail.com'),
	(19, 'Roberto Castro', 'Avenida Revolución #456, Col. Reforma, Tuxpan, Veracruz', '782-901-2345', 'Roberth10@gmail.com'),
	(20, 'Carmen Ríos', 'Calle Juárez #678, Col. Centro, Tuxpan, Veracruz', '783-345-6789', 'carmeri03@hotmail.com'),
	(21, 'Gustavo Luna', 'Avenida Hidalgo #123, Col. Las Palmas, Tuxpan, Veracruz', '782-678-9012', 'gustavoluna@gmail.com');

-- Volcando estructura para tabla escomart.cocina
DROP TABLE IF EXISTS `cocina`;
CREATE TABLE IF NOT EXISTS `cocina` (
  `id_producto_cocina` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `tipo` varchar(50) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id_producto_cocina`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.cocina: ~45 rows (aproximadamente)
INSERT INTO `cocina` (`id_producto_cocina`, `nombre`, `marca`, `tipo`, `precio`, `cantidad`) VALUES
	(1, 'Sartén Antiadherente', 'T-fal', 'Utensilio de cocina', 299.90, 20),
	(2, 'Cuchillo de Chef', 'Victorinox', 'Utensilio de cocina', 199.50, 15),
	(3, 'Tabla de Cortar', 'Epicurean', 'Utensilio de cocina', 139.75, 25),
	(4, 'Batidora de Mano', 'KitchenAid', 'Electrodoméstico', 799.00, 10),
	(5, 'Olla Express', 'Presto', 'Utensilio de cocina', 499.99, 12),
	(6, 'Báscula Digital', 'Dunrex', 'Utensilio de cocina', 199.90, 30),
	(7, 'Cafetera', 'Hamilton Beach', 'Electrodoméstico', 359.25, 18),
	(8, 'Molde para Pastel', 'Wilton', 'Utensilio de cocina', 99.95, 40),
	(9, 'Licuadora', 'Oster', 'Electrodoméstico', 499.50, 15),
	(10, 'Cacerola', 'Tramontina', 'Utensilio de cocina', 259.75, 20),
	(11, 'Tostadora', 'Black+Decker', 'Electrodoméstico', 199.90, 25),
	(12, 'Espátula de Silicona', 'Oster', 'Utensilio de cocina', 49.99, 50),
	(13, 'Freidora de Aire', 'Ninja', 'Electrodoméstico', 999.00, 8),
	(14, 'Molino de Café', 'Krups', 'Electrodoméstico', 399.00, 10),
	(15, 'Molde para Galletas', 'Wilton', 'Utensilio de cocina', 59.95, 60),
	(16, 'Exprimidor de Cítricos', 'BLACK+DECKER', 'Electrodoméstico', 139.90, 25),
	(17, 'Cacerola de Hierro Fundido', 'Lodge', 'Utensilio de cocina', 449.50, 15),
	(18, 'Tetera', 'Cuisinart', 'Utensilio de cocina', 249.75, 12),
	(19, 'Máquina para Hacer Helados', 'Cuisinart', 'Electrodoméstico', 849.00, 6),
	(20, 'Molde para Muffins', 'Wilton', 'Utensilio de cocina', 79.95, 30),
	(21, 'Tostador de Pan', 'Hamilton Beach', 'Electrodoméstico', 159.90, 20),
	(22, 'Espumador de Leche', 'Breville', 'Electrodoméstico', 299.50, 10),
	(23, 'Sartén de Hierro Fundido', 'Lodge', 'Utensilio de cocina', 219.75, 18),
	(24, 'Wafflera', 'Cuisinart', 'Electrodoméstico', 429.00, 8),
	(25, 'Molde para Pizza', 'Wilton', 'Utensilio de cocina', 89.95, 40),
	(26, 'Tetera Eléctrica', 'AICOK', 'Electrodoméstico', 199.90, 15),
	(27, 'Wok', 'Tramontina', 'Utensilio de cocina', 299.75, 20),
	(28, 'Licuadora Personal', 'Hamilton Beach', 'Electrodoméstico', 299.50, 18),
	(29, 'Molde para Panqueques', 'Wilton', 'Utensilio de cocina', 69.95, 50),
	(30, 'Máquina para Hacer Pasta', 'Marcato', 'Electrodoméstico', 1199.00, 5),
	(31, 'Asador Eléctrico', 'Hamilton Beach', 'Electrodoméstico', 499.90, 12),
	(32, 'Molde para Brownies', 'Wilton', 'Utensilio de cocina', 79.95, 30),
	(33, 'Plancha Eléctrica', 'BLACK+DECKER', 'Electrodoméstico', 299.90, 15),
	(34, 'Cafetera de Goteo', 'Hamilton Beach', 'Electrodoméstico', 399.00, 20),
	(35, 'Molde para Donas', 'Wilton', 'Utensilio de cocina', 89.95, 25),
	(36, 'Máquina para Hacer Pan', 'Hamilton Beach', 'Electrodoméstico', 799.50, 10),
	(37, 'Procesador de Alimentos', 'Cuisinart', 'Electrodoméstico', 899.00, 8),
	(38, 'Molde para Cheesecake', 'Wilton', 'Utensilio de cocina', 99.95, 40),
	(39, 'Tostador de Piso', 'BLACK+DECKER', 'Electrodoméstico', 249.90, 18),
	(40, 'Molde para Pastelillos', 'Wilton', 'Utensilio de cocina', 69.95, 50),
	(41, 'Parrilla Eléctrica', 'Hamilton Beach', 'Electrodoméstico', 299.90, 15),
	(42, 'Molde para Bagels', 'Wilton', 'Utensilio de cocina', 79.95, 25),
	(43, 'Tortillera', 'IMUSA', 'Utensilio de cocina', 199.75, 20),
	(44, 'Extractor de Jugos', 'BLACK+DECKER', 'Electrodoméstico', 249.90, 12),
	(45, 'Molde para Tartaletas', 'Wilton', 'Utensilio de cocina', 69.95, 40);

-- Volcando estructura para tabla escomart.dulces
DROP TABLE IF EXISTS `dulces`;
CREATE TABLE IF NOT EXISTS `dulces` (
  `id_dulce` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `sabor` varchar(50) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id_dulce`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.dulces: ~41 rows (aproximadamente)
INSERT INTO `dulces` (`id_dulce`, `nombre`, `marca`, `sabor`, `tipo`, `precio`, `cantidad`) VALUES
	(1, 'Chocolates Kinder Bueno', 'Ferrero', 'Chocolate', 'Barra', 12.50, 50),
	(2, 'Paletas de Caramelo Vero Mango', 'Vero', 'Mango', 'Paleta', 3.75, 100),
	(3, 'Gomitas Haribo Ositos', 'Haribo', 'Frutas', 'Gomitas', 5.25, 80),
	(4, 'Chicles Trident Menta', 'Trident', 'Menta', 'Chicle', 8.90, 60),
	(5, 'Mazapanes La Rosa', 'La Rosa', 'Maní', 'Dulce', 2.80, 120),
	(6, 'Chocolates Snickers', 'Mars', 'Cacahuate', 'Barra', 11.00, 70),
	(7, 'Paletas de Tamarindo Pelón Pelo Rico', 'Pelón Pelo Rico', 'Tamarindo', 'Paleta', 4.50, 90),
	(8, 'Gomitas Trolli', 'Trolli', 'Colores', 'Gomitas', 6.75, 40),
	(9, 'Chicles Bubbaloo', 'Bubbaloo', 'Varios', 'Chicle', 7.25, 50),
	(10, 'Galletas Oreo', 'OREO', 'Vainilla', 'Galleta', 9.30, 30),
	(11, 'Chocolates Milky Way', 'Mars', 'Caramelo', 'Barra', 10.80, 35),
	(12, 'Paletas de Caramelo Vero Sandía', 'Vero', 'Sandía', 'Paleta', 3.75, 70),
	(13, 'Chocolates Hershey´s Cookies n´Creme', 'Hershey´s', 'Galleta', 'Barra', 13.20, 25),
	(14, 'Paletas de Tamarindo Tarrito Rojo', 'Tarrito Rojo', 'Tamarindo', 'Paleta', 4.20, 85),
	(15, 'Gomitas Ricolino Mega Cola', 'Ricolino', 'Cola', 'Gomitas', 5.50, 55),
	(16, 'Chicles Clorets', 'Clorets', 'Hierbabuena', 'Chicle', 6.80, 45),
	(17, 'Mazapanes De La Rosa', 'De La Rosa', 'Maní', 'Dulce', 2.50, 150),
	(18, 'Galletas Marias Gamesa', 'Gamesa', 'Vainilla', 'Galleta', 8.50, 20),
	(19, 'Chocolates Kit Kat', 'Nestlé', 'Varios', 'Barra', 11.90, 40),
	(20, 'Gomitas Ricolino Mini Trolli', 'Ricolino', 'Colores', 'Gomitas', 4.20, 65),
	(21, 'Paletas de Tamarindo Vero Rebanaditas', 'Vero', 'Tamarindo', 'Paleta', 3.50, 75),
	(22, 'Chicles Chiclets Adams', 'Adams', 'Varios', 'Chicle', 6.50, 60),
	(23, 'Galletas Oreo', 'Oreo', 'Chocolate', 'Galleta', 10.60, 30),
	(24, 'Chocolates Hershey´s', 'Hershey´s', 'Chocolate', 'Barra', 11.50, 50),
	(25, 'Gomitas Panditas', 'Panditas', 'Frutas', 'Gomitas', 4.80, 85),
	(26, 'Paletas de Tamarindo Pelón Mini', 'Pelón Pelo Rico', 'Tamarindo', 'Paleta', 3.00, 100),
	(27, 'Chicles Pim Pom', 'Pim Pom', 'Varios', 'Chicle', 5.25, 70),
	(28, 'Mazapanes Vero', 'Vero', 'Maní', 'Dulce', 2.20, 110),
	(29, 'Galletas Oreo Crema', 'OREO', 'Crema', 'Galleta', 8.20, 25),
	(30, 'Chocolates Milky Way Simply Caramel', 'Mars', 'Caramelo', 'Barra', 12.90, 20),
	(31, 'Gomitas Ricolino Paleta', 'Ricolino', 'Colores', 'Gomitas', 5.90, 45),
	(32, 'Paletas de Caramelo Vero Cereza', 'Vero', 'Cereza', 'Paleta', 3.75, 80),
	(33, 'Chicles Trident Sandía', 'Trident', 'Sandía', 'Chicle', 8.50, 55),
	(34, 'Galletas Chips Ahoy!', 'Chips Ahoy!', 'Chocolate', 'Galleta', 9.80, 40),
	(35, 'Chocolates Hershey´s Cookies n´Creme', 'Hershey´s', 'Galleta', 'Barra', 12.50, 30),
	(36, 'Gomitas Ricolino Mega Fresa', 'Ricolino', 'Fresa', 'Gomitas', 5.50, 50),
	(37, 'Paletas de Tamarindo Vero Mango', 'Vero', 'Tamarindo', 'Paleta', 3.50, 75),
	(38, 'Chicles Adams', 'Adams', 'Varios', 'Chicle', 6.20, 65),
	(39, 'Mazapanes Vero', 'Vero', 'Maní', 'Dulce', 2.30, 100),
	(40, 'Galletas Gansito', 'Marinela', 'Chocolate', 'Galleta', 11.50, 15),
	(41, 'Chocolates Milky Way Marshmallow', 'Mars', 'Malvavisco', 'Barra', 12.90, 25);

-- Volcando estructura para tabla escomart.empleados
DROP TABLE IF EXISTS `empleados`;
CREATE TABLE IF NOT EXISTS `empleados` (
  `id_empleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.empleados: ~5 rows (aproximadamente)
INSERT INTO `empleados` (`id_empleado`, `nombre`, `direccion`, `telefono`, `email`, `cargo`, `salario`) VALUES
	(1, 'María González', 'Calle Juárez #123, Col. Centro, Tuxpan, Veracruz', '783-123-4567', 'maria.gonz@hotmail.com', 'Encargada', 15000.00),
	(2, 'Juan Rodríguez', 'Avenida Hidalgo #456, Col. Juárez, Tuxpan, Veracruz', '783-987-6543', 'juan.rodriguez@gmail.com', 'Vendedor', 8000.00),
	(3, 'Laura López', 'Calle Benito Juárez #789, Col. Madero, Tuxpan, Veracruz', '782-567-8901', 'laura.lo25@gmail.com', 'Cajero', 7000.00),
	(4, 'Carlos Hernández', 'Avenida Morelos #234, Col. Libertad, Tuxpan, Veracruz', '783-234-5678', 'carloshdz@gmail.com', 'Vendedor', 8000.00),
	(5, 'Ana Torres', 'Calle Allende #567, Col. Reforma, Tuxpan, Veracruz', '783-890-1234', 'ana25torres@hotmail.com', 'Aseo', 7000.00);

-- Volcando estructura para tabla escomart.frijoles
DROP TABLE IF EXISTS `frijoles`;
CREATE TABLE IF NOT EXISTS `frijoles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `peso_g` int(11) NOT NULL,
  `precio` decimal(8,2) NOT NULL,
  `pais_origen` varchar(50) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.frijoles: ~36 rows (aproximadamente)
INSERT INTO `frijoles` (`id`, `marca`, `tipo`, `peso_g`, `precio`, `pais_origen`, `cantidad`) VALUES
	(1, 'Costeña', 'Negros', 400, 30.00, 'México', 8),
	(2, 'Cierra', 'Pintos', 350, 15.00, 'Estados Unidos', 10),
	(3, 'Costeña', 'Ballos', 450, 22.00, 'Mexico', 20),
	(4, 'Cierra', 'Rojos', 400, 25.00, 'México', 11),
	(5, 'Costeña', 'Pintos', 300, 16.00, 'Canadá', 16),
	(6, 'La Costeña', 'Negros lata', 400, 18.50, 'México', 14),
	(7, 'Herdez', 'Frijoles pintos', 450, 15.80, 'México', 23),
	(8, 'Del Monte', 'Frijoles bayos', 380, 20.20, 'Estados Unidos', 18),
	(9, 'Goya', 'Frijoles negros refritos', 230, 12.90, 'Estados Unidos', 8),
	(10, 'Santo Tomás', 'Frijoles enteros con chile', 320, 16.75, 'México', 3),
	(11, 'La Costeña', 'Ballos lata', 400, 18.50, 'México', 10),
	(12, 'Herdez', 'Frijoles pintos', 450, 15.80, 'México', 25),
	(13, 'Del Monte', 'Frijoles bayos', 380, 20.20, 'Estados Unidos', 17),
	(14, 'Goya', 'Frijoles negros refritos', 230, 12.90, 'Estados Unidos', 12),
	(15, 'Santo Tomás', 'Frijoles enteros con chile', 320, 16.75, 'México', 21),
	(16, 'La Sierra', 'Frijoles negros refritos', 230, 12.50, 'México', 16),
	(17, 'Knorr', 'Frijoles charros', 340, 14.95, 'México', 16),
	(18, 'Bush\'s Best', 'Frijoles horneados', 454, 22.30, 'Estados Unidos', 12),
	(19, 'La Preferida', 'Frijoles pintos refritos', 240, 13.20, 'Estados Unidos', 5),
	(20, 'Casero', 'Frijoles bayos enteros', 380, 17.80, 'México', 20),
	(21, 'La Costeña', 'Entero Negros', 400, 18.50, 'México', 11),
	(22, 'Herdez', 'Frijoles pintos', 450, 15.80, 'México', 19),
	(23, 'Del Monte', 'Frijoles bayos', 380, 20.20, 'Estados Unidos', 26),
	(24, 'Goya', 'Frijoles negros refritos', 230, 12.90, 'Estados Unidos', 21),
	(25, 'Santo Tomás', 'Frijoles enteros con chile', 320, 16.75, 'México', 17),
	(26, 'La Sierra', 'Frijoles negros refritos', 230, 12.50, 'México', 13),
	(27, 'Knorr', 'Frijoles charros', 340, 14.95, 'México', 18),
	(28, 'Bush\'s Best', 'Frijoles horneados', 454, 22.30, 'Estados Unidos', 15),
	(29, 'La Preferida', 'Frijoles pintos refritos', 240, 13.20, 'Estados Unidos', 20),
	(30, 'Casero', 'Frijoles bayos enteros', 380, 17.80, 'México', 19),
	(31, 'Sabormex', 'Frijoles enteros con chorizo', 320, 19.50, 'México', 7),
	(32, 'Eden Foods', 'Frijoles adzuki', 500, 25.70, 'Japón', 10),
	(33, 'Amy\'s Kitchen', 'Frijoles orgánicos con vegetales', 400, 21.90, 'Estados Unidos', 2),
	(34, 'Buenaventura', 'Frijoles negros machacados', 350, 16.25, 'México', 19),
	(35, 'Nature\'s Earthly Choice', 'Frijoles negros orgánicos', 450, 23.40, 'Estados Unidos', 24),
	(36, 'El Ebro', 'Frijoles a la cazuela', 400, 14.80, 'España', 12);

-- Volcando estructura para tabla escomart.gamesa
DROP TABLE IF EXISTS `gamesa`;
CREATE TABLE IF NOT EXISTS `gamesa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.gamesa: ~40 rows (aproximadamente)
INSERT INTO `gamesa` (`id`, `nombre`, `categoria`, `precio`, `cantidad`) VALUES
	(1, 'Galletas Marias', 'Galletas', 15.50, 100),
	(2, 'Chocolinas', 'Galletas', 18.75, 80),
	(3, 'Emperador Chocolate', 'Galletas', 20.00, 50),
	(4, 'Arcoiris', 'Galletas', 12.90, 120),
	(5, 'Pinguinos', 'Galletas', 22.50, 60),
	(6, 'Mini Mamut', 'Galletas', 17.00, 90),
	(7, 'Salmas', 'Galletas', 23.50, 70),
	(8, 'Arandanos Cubiertos con Chocolate', 'Galletas', 25.75, 60),
	(9, 'Chokis', 'Galletas', 19.90, 100),
	(10, 'Triki Trakes', 'Galletas', 16.90, 120),
	(11, 'Galletas Marías', 'Galletas', 15.50, 200),
	(12, 'Chocolinas', 'Galletas', 18.75, 150),
	(13, 'Emperador Chocolate', 'Galletas', 20.00, 300),
	(14, 'Arcoiris', 'Galletas', 12.90, 250),
	(15, 'Pinguinos', 'Galletas', 22.50, 180),
	(16, 'Mini Mamut', 'Galletas', 10.25, 350),
	(17, 'Doraditas', 'Galletas', 13.75, 280),
	(18, 'Super Polvorones', 'Galletas', 16.90, 210),
	(19, 'Marión Crema', 'Galletas', 19.50, 150),
	(20, 'Chokis', 'Galletas', 21.90, 220),
	(21, 'Galletas Marías', 'Galletas', 14.50, 500),
	(22, 'Chocolinas', 'Galletas', 17.25, 350),
	(23, 'Emperador Chocolate', 'Galletas', 18.90, 300),
	(24, 'Arcoiris', 'Galletas', 12.75, 450),
	(25, 'Pinguinos', 'Galletas', 21.00, 250),
	(26, 'Mini Mamut', 'Galletas', 9.75, 600),
	(27, 'Doraditas', 'Galletas', 13.50, 480),
	(28, 'Super Polvorones', 'Galletas', 16.25, 390),
	(29, 'Marión Crema', 'Galletas', 19.90, 320),
	(30, 'Chokis', 'Galletas', 22.50, 280),
	(31, 'Crackets', 'Galletas', 11.75, 550),
	(32, 'Rollos de Canela', 'Galletas', 15.95, 420),
	(33, 'Ducales', 'Galletas', 10.50, 680),
	(34, 'Papas Emperador', 'Botanas', 19.50, 220),
	(35, 'Palmeritas', 'Galletas', 12.25, 390),
	(36, 'Saladitas', 'Galletas', 13.75, 480),
	(37, 'Mamut', 'Galletas', 9.90, 700),
	(38, 'Pepitos', 'Galletas', 21.75, 280),
	(39, 'Choko Roles', 'Galletas', 14.50, 410),
	(40, 'Marías Gamesa', 'Galletas', 16.90, 360);

-- Volcando estructura para tabla escomart.garrafones
DROP TABLE IF EXISTS `garrafones`;
CREATE TABLE IF NOT EXISTS `garrafones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(50) NOT NULL,
  `capacidad_litros` int(11) NOT NULL,
  `precio_unitario` decimal(8,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.garrafones: ~54 rows (aproximadamente)
INSERT INTO `garrafones` (`id`, `marca`, `capacidad_litros`, `precio_unitario`, `cantidad`) VALUES
	(1, 'Ciel', 20, 25.00, 100),
	(2, 'Epura', 10, 15.50, 80),
	(3, 'Bonafon', 5, 8.75, 120),
	(4, 'Pureza Agua', 15, 20.20, 60),
	(5, 'Electropura', 18, 22.80, 90),
	(6, 'Mizu', 10, 16.00, 70),
	(7, 'San Juan', 5, 9.50, 110),
	(8, 'Aguaviva', 15, 21.00, 40),
	(9, 'Aguazul', 20, 26.50, 50),
	(10, 'Agua del Manantial', 5, 9.80, 70),
	(11, 'Hidroagua', 18, 23.20, 30),
	(12, 'Agua Clara', 20, 25.50, 80),
	(13, 'Manantial Springs', 15, 20.75, 60),
	(14, 'Cascada', 10, 16.80, 110),
	(15, 'Vitalagua', 5, 9.30, 90),
	(16, 'Naturagua', 20, 24.50, 70),
	(17, 'Aguasanta', 18, 22.00, 50),
	(18, 'Fuente Viva', 10, 17.30, 100),
	(19, 'AguaBella', 5, 8.90, 80),
	(20, 'H2Oasis', 20, 23.40, 40),
	(21, 'Cristalina', 15, 19.50, 70),
	(22, 'Aguapura', 10, 15.80, 120),
	(23, 'Agualinda', 5, 8.75, 60),
	(24, 'Manantialina', 20, 24.00, 30),
	(25, 'Aguanova', 15, 19.00, 90),
	(26, 'Aguadulce', 10, 16.00, 80),
	(27, 'Manantialina', 5, 8.80, 70),
	(28, 'Cristal', 20, 23.00, 60),
	(29, 'Aguapura', 15, 18.25, 50),
	(30, 'Naturagua', 10, 15.50, 40),
	(31, 'Vitalmanantial', 5, 9.20, 30),
	(32, 'Aguapristina', 20, 22.50, 100),
	(33, 'H2O Azul', 15, 18.90, 120),
	(34, 'Pureza', 10, 16.50, 110),
	(35, 'Agua Natural', 5, 8.80, 90),
	(36, 'Aguabonita', 20, 24.50, 80),
	(37, 'Agualina', 18, 22.80, 70),
	(38, 'Naturagua', 10, 17.50, 60),
	(39, 'Aquaplus', 5, 9.20, 50),
	(40, 'Aguablanca', 20, 23.80, 40),
	(41, 'Aguadulce', 15, 19.50, 30),
	(42, 'Aguasol', 10, 16.80, 20),
	(43, 'Manatiala', 5, 8.75, 10),
	(44, 'Cristal', 20, 24.50, 100),
	(45, 'Aguanova', 15, 20.20, 110),
	(46, 'Aguasanta', 10, 16.90, 120),
	(47, 'Pureza', 5, 9.50, 80),
	(48, 'Agua del Manantial', 20, 25.00, 90),
	(49, 'Epura', 15, 20.50, 80),
	(50, 'Bonafon', 10, 17.10, 70),
	(51, 'Pureza Agua', 5, 9.90, 60),
	(52, 'Electropura', 20, 23.40, 50),
	(53, 'Mizu', 15, 19.75, 40),
	(54, 'San Juan', 10, 16.00, 30);

-- Volcando estructura para tabla escomart.harina
DROP TABLE IF EXISTS `harina`;
CREATE TABLE IF NOT EXISTS `harina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(100) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `peso` decimal(5,2) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.harina: ~78 rows (aproximadamente)
INSERT INTO `harina` (`id`, `marca`, `tipo`, `peso`, `precio`, `cantidad`) VALUES
	(1, 'Harina Leudante Rey', 'Trigo', 1.00, 24.90, 200),
	(2, 'Harina de Maíz PAN', 'Maíz', 0.50, 15.75, 150),
	(3, 'Harina Integral Maseca', 'Maíz', 2.00, 32.50, 180),
	(4, 'Harina de Trigo Todo Uso', 'Trigo', 1.00, 18.25, 120),
	(5, 'Harina de Avena Bob\'s Red Mill', 'Avena', 0.75, 28.00, 100),
	(6, 'Harina de Centeno King Arthur', 'Centeno', 1.50, 25.50, 60),
	(7, 'Harina de Arroz Della Natura', 'Arroz', 1.00, 21.90, 80),
	(8, 'Harina para Hot Cakes Great Value', 'Trigo', 1.00, 15.50, 90),
	(9, 'Harina de Garbanzo Bob\'s Red Mill', 'Garbanzo', 0.50, 35.90, 70),
	(10, 'Harina para Tamales Minsa', 'Maíz', 2.00, 28.25, 120),
	(11, 'Harina Leudante Rey', 'Trigo', 1.00, 24.90, 200),
	(12, 'Harina de Maíz PAN', 'Maíz', 0.50, 15.75, 150),
	(13, 'Harina Integral Maseca', 'Maíz', 2.00, 32.50, 180),
	(14, 'Harina de Trigo Todo Uso', 'Trigo', 1.00, 18.25, 120),
	(15, 'Harina de Avena Bob\'s Red Mill', 'Avena', 0.75, 28.00, 100),
	(16, 'Harina de Centeno King Arthur', 'Centeno', 1.50, 25.50, 60),
	(17, 'Harina de Arroz Della Natura', 'Arroz', 1.00, 21.90, 80),
	(18, 'Harina para Hot Cakes Great Value', 'Trigo', 1.00, 15.50, 90),
	(19, 'Harina de Garbanzo Bob\'s Red Mill', 'Garbanzo', 0.50, 35.90, 70),
	(20, 'Harina para Tamales Minsa', 'Maíz', 2.00, 28.25, 120),
	(21, 'Harina de Yuca Goya', 'Yuca', 0.75, 19.50, 50),
	(22, 'Harina para Arepas Juana', 'Maíz', 1.00, 17.90, 80),
	(23, 'Harina de Almendra Bob\'s Red Mill', 'Almendra', 0.50, 55.00, 40),
	(24, 'Harina para Pizza Caputo', 'Trigo', 1.00, 28.75, 100),
	(25, 'Harina de Sorgo Barry Farm', 'Sorgo', 1.50, 21.50, 70),
	(26, 'Harina de Algarroba Markal', 'Algarroba', 0.75, 30.90, 60),
	(27, 'Harina de Espelta Bob\'s Red Mill', 'Espelta', 1.00, 25.00, 90),
	(28, 'Harina de Quinoa Andean Valley', 'Quinoa', 2.00, 40.90, 50),
	(29, 'Harina de Trigo Orgánica Arrowhead Mills', 'Trigo', 1.25, 32.50, 80),
	(30, 'Harina de Teff Barry Farm', 'Teff', 0.50, 28.90, 30),
	(31, 'Harina Leudante Rey', 'Trigo', 1.00, 24.90, 200),
	(32, 'Harina de Maíz PAN', 'Maíz', 0.50, 15.75, 150),
	(33, 'Harina Integral Maseca', 'Maíz', 2.00, 32.50, 180),
	(34, 'Harina de Trigo Todo Uso', 'Trigo', 1.00, 18.25, 120),
	(35, 'Harina de Avena Bob\'s Red Mill', 'Avena', 0.75, 28.00, 100),
	(36, 'Harina de Centeno King Arthur', 'Centeno', 1.50, 25.50, 60),
	(37, 'Harina de Arroz Della Natura', 'Arroz', 1.00, 21.90, 80),
	(38, 'Harina para Hot Cakes Great Value', 'Trigo', 1.00, 15.50, 90),
	(39, 'Harina de Garbanzo Bob\'s Red Mill', 'Garbanzo', 0.50, 35.90, 70),
	(40, 'Harina para Tamales Minsa', 'Maíz', 2.00, 28.25, 120),
	(41, 'Harina de Yuca Goya', 'Yuca', 0.75, 19.50, 50),
	(42, 'Harina para Arepas Juana', 'Maíz', 1.00, 17.90, 80),
	(43, 'Harina de Almendra Bob\'s Red Mill', 'Almendra', 0.50, 55.00, 40),
	(44, 'Harina para Pizza Caputo', 'Trigo', 1.00, 28.75, 100),
	(45, 'Harina de Sorgo Barry Farm', 'Sorgo', 1.50, 21.50, 70),
	(46, 'Harina de Algarroba Markal', 'Algarroba', 0.75, 30.90, 60),
	(47, 'Harina de Espelta Bob\'s Red Mill', 'Espelta', 1.00, 25.00, 90),
	(48, 'Harina de Quinoa Andean Valley', 'Quinoa', 2.00, 40.90, 50),
	(49, 'Harina de Trigo Orgánica Arrowhead Mills', 'Trigo', 1.25, 32.50, 80),
	(50, 'Harina de Teff Barry Farm', 'Teff', 0.50, 28.90, 30),
	(51, 'Harina de Alforfón Bob\'s Red Mill', 'Alforfón', 1.00, 26.50, 70),
	(52, 'Harina para Tortillas Maseca', 'Maíz', 2.00, 24.90, 120),
	(53, 'Harina de Coco Healthworks', 'Coco', 0.75, 29.50, 40),
	(54, 'Harina de Amaranto Barry Farm', 'Amaranto', 1.50, 35.25, 50),
	(55, 'Harina Leudante Rey', 'Trigo', 1.00, 24.90, 200),
	(56, 'Harina de Maíz PAN', 'Maíz', 0.50, 15.75, 150),
	(57, 'Harina Integral Maseca', 'Maíz', 2.00, 32.50, 180),
	(58, 'Harina de Trigo Todo Uso', 'Trigo', 1.00, 18.25, 120),
	(59, 'Harina de Avena Bob\'s Red Mill', 'Avena', 0.75, 28.00, 100),
	(60, 'Harina de Centeno King Arthur', 'Centeno', 1.50, 25.50, 60),
	(61, 'Harina de Arroz Della Natura', 'Arroz', 1.00, 21.90, 80),
	(62, 'Harina para Hot Cakes Great Value', 'Trigo', 1.00, 15.50, 90),
	(63, 'Harina de Garbanzo Bob\'s Red Mill', 'Garbanzo', 0.50, 35.90, 70),
	(64, 'Harina para Tamales Minsa', 'Maíz', 2.00, 28.25, 120),
	(65, 'Harina de Yuca Goya', 'Yuca', 0.75, 19.50, 50),
	(66, 'Harina para Arepas Juana', 'Maíz', 1.00, 17.90, 80),
	(67, 'Harina de Almendra Bob\'s Red Mill', 'Almendra', 0.50, 55.00, 40),
	(68, 'Harina para Pizza Caputo', 'Trigo', 1.00, 28.75, 100),
	(69, 'Harina de Sorgo Barry Farm', 'Sorgo', 1.50, 21.50, 70),
	(70, 'Harina de Algarroba Markal', 'Algarroba', 0.75, 30.90, 60),
	(71, 'Harina de Espelta Bob\'s Red Mill', 'Espelta', 1.00, 25.00, 90),
	(72, 'Harina de Quinoa Andean Valley', 'Quinoa', 2.00, 40.90, 50),
	(73, 'Harina de Trigo Orgánica Arrowhead Mills', 'Trigo', 1.25, 32.50, 80),
	(74, 'Harina de Teff Barry Farm', 'Teff', 0.50, 28.90, 30),
	(75, 'Harina de Alforfón Bob\'s Red Mill', 'Alforfón', 1.00, 26.50, 70),
	(76, 'Harina para Tortillas Maseca', 'Maíz', 2.00, 24.90, 120),
	(77, 'Harina de Coco Healthworks', 'Coco', 0.75, 29.50, 40),
	(78, 'Harina de Amaranto Barry Farm', 'Amaranto', 1.50, 35.25, 50);

-- Volcando estructura para tabla escomart.huevo
DROP TABLE IF EXISTS `huevo`;
CREATE TABLE IF NOT EXISTS `huevo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(100) DEFAULT NULL,
  `cantidad_huevos` int(11) NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.huevo: ~32 rows (aproximadamente)
INSERT INTO `huevo` (`id`, `marca`, `cantidad_huevos`, `precio_unitario`, `descripcion`) VALUES
	(1, 'Huevos Santa Clara', 30, 7.20, 'Huevos tamaño grande, 2.5 docenas'),
	(2, 'Granja Los Pinos', 24, 6.50, 'Huevos tamaño mediano, 2 docenas'),
	(3, 'Huevos Don Manuel', 15, 4.00, 'Huevos tamaño grande, 1.25 docenas'),
	(4, 'Granja La Esperanza', 6, 3.25, 'Huevos tamaño jumbo, media docena'),
	(5, 'Huevos San José', 10, 2.00, 'Huevos tamaño pequeño, 1 docena'),
	(6, 'Granja La Esperanza', 12, 3.50, 'Huevos tamaño grande, docena'),
	(7, 'Huevos San José', 10, 2.80, 'Huevos tamaño mediano, docena'),
	(8, 'Huevos El Paraiso', 6, 1.75, 'Huevos tamaño pequeño, media docena'),
	(9, 'Huevos Campesinos S.A. de C.V.', 10, 7.50, 'Huevos de gallinas criadas en libertad'),
	(10, 'Huevos Orgánicos MexFresh', 15, 6.80, 'Huevos orgánicos, tamaño grande'),
	(11, 'Huevos Don Pepe', 18, 5.25, 'Huevos frescos, tamaño mediano'),
	(12, 'Huevo Campesinos S.A. de C.V.', 10, 7.50, 'Huevos de gallinas criadas en libertad'),
	(13, 'Huevos Orgánicos MexFresh', 15, 6.80, 'Huevos orgánicos, tamaño grande'),
	(14, 'Huevo Don Pepe', 18, 5.25, 'Huevos frescos, tamaño mediano'),
	(15, 'Huevo Calbario', 12, 6.00, 'Huevos de granja, tamaño jumbo'),
	(16, 'Huevo San Juan', 20, 5.50, 'Huevos camperos, tamaño grande'),
	(17, 'Huevo Campesinos S.A. de C.V.', 10, 7.50, 'Huevos de gallinas criadas en libertad'),
	(18, 'Huevos Orgánicos MexFresh', 15, 6.80, 'Huevos orgánicos, tamaño grande'),
	(19, 'Huevo Don Pepe', 18, 5.25, 'Huevos frescos, tamaño mediano'),
	(20, 'Huevo Calbario', 12, 6.00, 'Huevos de granja, tamaño jumbo'),
	(21, 'Huevo San Juan', 20, 5.50, 'Huevos camperos, tamaño grande'),
	(22, 'Huevos La Finca', 8, 4.90, 'Huevos de corral, tamaño mediano'),
	(23, 'Huevo Naturalia', 25, 6.50, 'Huevos de gallinas felices, tamaño jumbo'),
	(24, 'Huevos del Rancho', 30, 5.00, 'Huevos frescos de granja, tamaño grande'),
	(25, 'Huevo Campesino S.A. de C.V.', 10, 7.50, 'Huevos de gallinas criadas en libertad'),
	(26, 'Huevos Orgánicos MexFresh', 15, 6.80, 'Huevos orgánicos, tamaño grande'),
	(27, 'Huevo Don Pepe', 18, 5.25, 'Huevos frescos, tamaño mediano'),
	(28, 'Huevo Calbario', 12, 6.00, 'Huevos de granja, tamaño jumbo'),
	(29, 'Huevo San Juan', 20, 5.50, 'Huevos camperos, tamaño grande'),
	(30, 'Huevos La Finca', 8, 4.90, 'Huevos de corral, tamaño mediano'),
	(31, 'Huevo Naturalia', 25, 6.50, 'Huevos de gallinas felices, tamaño jumbo'),
	(32, 'Huevos del Rancho', 30, 5.00, 'Huevos frescos de granja, tamaño grande');

-- Volcando estructura para tabla escomart.jugos
DROP TABLE IF EXISTS `jugos`;
CREATE TABLE IF NOT EXISTS `jugos` (
  `id_jugo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `sabor` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id_jugo`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.jugos: ~49 rows (aproximadamente)
INSERT INTO `jugos` (`id_jugo`, `nombre`, `marca`, `sabor`, `precio`, `cantidad`) VALUES
	(1, 'Jugo de Naranja', 'Jumex', 'Naranja', 18.50, 100),
	(2, 'Jugo de Manzana', 'Boing', 'Manzana', 15.90, 80),
	(3, 'Jugo de Piña', 'Del Valle', 'Piña', 17.75, 70),
	(4, 'Jugo de Uva', 'Jumex', 'Uva', 18.25, 60),
	(5, 'Jugo de Mango', 'Boing', 'Mango', 19.90, 50),
	(6, 'Jugo de Guayaba', 'Del Valle', 'Guayaba', 17.50, 90),
	(7, 'Jugo de Fresa', 'Jumex', 'Fresa', 18.75, 70),
	(8, 'Jugo de Durazno', 'Boing', 'Durazno', 18.25, 60),
	(9, 'Jugo de Limón', 'Del Valle', 'Limón', 19.90, 50),
	(10, 'Jugo de Tamarindo', 'Jumex', 'Tamarindo', 17.50, 100),
	(11, 'Jugo de Toronja', 'Boing', 'Toronja', 18.75, 70),
	(12, 'Jugo de Mandarina', 'Del Valle', 'Mandarina', 18.25, 60),
	(13, 'Jugo de Sandía', 'Jumex', 'Sandía', 19.90, 50),
	(14, 'Jugo de Guanábana', 'Boing', 'Guanábana', 17.50, 100),
	(15, 'Jugo de Kiwi', 'Del Valle', 'Kiwi', 18.75, 70),
	(16, 'Jugo de Melón', 'Jumex', 'Melón', 18.25, 60),
	(17, 'Jugo de Papaya', 'Boing', 'Papaya', 19.90, 50),
	(18, 'Jugo de Ciruela', 'Del Valle', 'Ciruela', 17.50, 100),
	(19, 'Jugo de Zarzamora', 'Jumex', 'Zarzamora', 18.75, 70),
	(20, 'Jugo de Coco', 'Boing', 'Coco', 18.25, 60),
	(21, 'Jugo de Arándano', 'Del Valle', 'Arándano', 19.90, 50),
	(22, 'Jugo de Aloe Vera', 'Jumex', 'Aloe Vera', 17.50, 100),
	(23, 'Jugo de Cereza', 'Boing', 'Cereza', 18.75, 70),
	(24, 'Jugo de Mango con Chile', 'Del Valle', 'Mango', 18.25, 60),
	(25, 'Jugo de Naranja con Zanahoria', 'Jumex', 'Naranja, Zanahoria', 19.90, 50),
	(26, 'Jugo de Manzana con Canela', 'Boing', 'Manzana, Canela', 17.50, 100),
	(27, 'Jugo de Piña con Coco', 'Del Valle', 'Piña, Coco', 18.75, 70),
	(28, 'Jugo de Uva con Fresa', 'Jumex', 'Uva, Fresa', 18.25, 60),
	(29, 'Jugo de Manzana con Durazno', 'Boing', 'Manzana, Durazno', 19.90, 50),
	(30, 'Jugo de Mango con Maracuyá', 'Del Valle', 'Mango, Maracuyá', 17.50, 100),
	(31, 'Jugo de Piña con Guanábana', 'Jumex', 'Piña, Guanábana', 18.75, 70),
	(32, 'Jugo de Tamarindo con Limón', 'Boing', 'Tamarindo, Limón', 18.25, 60),
	(33, 'Jugo de Mango con Naranja', 'Del Valle', 'Mango, Naranja', 19.90, 50),
	(34, 'Jugo de Uva con Durazno', 'Jumex', 'Uva, Durazno', 17.50, 100),
	(35, 'Jugo de Manzana con Zanahoria y Betabel', 'Boing', 'Manzana, Zanahoria, Betabel', 18.75, 70),
	(36, 'Jugo de Piña con Coco y Avena', 'Del Valle', 'Piña, Coco, Avena', 18.25, 60),
	(37, 'Jugo de Manzana con Fresa y Aloe Vera', 'Jumex', 'Manzana, Fresa, Aloe Vera', 19.90, 50),
	(38, 'Jugo de Tamarindo con Piña', 'Boing', 'Tamarindo, Piña', 17.50, 100),
	(39, 'Jugo de Toronja con Naranja', 'Del Valle', 'Toronja, Naranja', 18.75, 70),
	(40, 'Jugo de Mandarina con Durazno', 'Jumex', 'Mandarina, Durazno', 18.25, 60),
	(41, 'Jugo de Sandía con Coco', 'Boing', 'Sandía, Coco', 19.90, 50),
	(42, 'Jugo de Guanábana con Maracuyá', 'Del Valle', 'Guanábana, Maracuyá', 17.50, 100),
	(43, 'Jugo de Kiwi con Uva', 'Jumex', 'Kiwi, Uva', 18.75, 70),
	(44, 'Jugo de Melón con Sandía', 'Boing', 'Melón, Sandía', 18.25, 60),
	(45, 'Jugo de Papaya con Fresa', 'Del Valle', 'Papaya, Fresa', 19.90, 50),
	(46, 'Jugo de Ciruela con Guanábana', 'Jumex', 'Ciruela, Guanábana', 17.50, 100),
	(47, 'Jugo de Zarzamora con Moras', 'Boing', 'Zarzamora, Moras', 18.75, 70),
	(48, 'Jugo de Mango con Uva y Fresa', 'Del Valle', 'Mango, Uva, Fresa', 18.25, 60),
	(49, 'Jugo de Naranja con Zanahoria y Mango', 'Jumex', 'Naranja, Zanahoria, Mango', 19.90, 50);

-- Volcando estructura para tabla escomart.lacteos
DROP TABLE IF EXISTS `lacteos`;
CREATE TABLE IF NOT EXISTS `lacteos` (
  `id_lacteo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `precio` decimal(20,6) NOT NULL DEFAULT 0.000000,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id_lacteo`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.lacteos: ~22 rows (aproximadamente)
INSERT INTO `lacteos` (`id_lacteo`, `nombre`, `marca`, `tipo`, `precio`, `cantidad`) VALUES
	(1, 'Leche Entera', 'Alpura', 'Leche', 20.500000, 100),
	(2, 'Yogur Natural', 'Danone', 'Yogur', 12.750000, 80),
	(3, 'Queso Oaxaca', 'Lala', 'Queso', 45.900000, 70),
	(4, 'Crema', 'Nestlé', 'Crema', 18.250000, 60),
	(5, 'Leche Deslactosada', 'Santa Clara', 'Leche', 22.900000, 50),
	(6, 'Yogur de Fresa', 'Yoplait', 'Yogur', 11.500000, 90),
	(7, 'Queso Panela', 'Sargent', 'Queso', 39.750000, 70),
	(8, 'Mantequilla', 'Primavera', 'Mantequilla', 29.900000, 60),
	(9, 'Yogur Griego', 'FAGE', 'Yogur', 17.500000, 50),
	(10, 'Queso Chihuahua', 'Caperucita', 'Queso', 42.500000, 70),
	(11, 'Leche de Soya', 'Silk', 'Leche', 25.500000, 60),
	(12, 'Queso Parmesano', 'Kraft', 'Queso', 49.900000, 40),
	(13, 'Leche Deslactosada de Almendra', 'Silk', 'Leche', 28.500000, 70),
	(14, 'Yogur Light', 'Lala', 'Yogur', 10.500000, 80),
	(15, 'Queso Gouda', 'Nederland', 'Queso', 54.750000, 50),
	(16, 'Leche sin Lactosa', 'Santa Clara', 'Leche', 23.500000, 100),
	(17, 'Yogur de Durazno', 'Danone', 'Yogur', 14.900000, 90),
	(18, 'Leche de Almendra', 'Silk', 'Leche', 26.900000, 70),
	(19, 'Yogur de Frutos del Bosque', 'Yoplait', 'Yogur', 12.500000, 80),
	(20, 'Queso de Cabra', 'Prymal', 'Queso', 59.900000, 40),
	(21, 'Leche de Coco', 'Silk', 'Leche', 29.500000, 60),
	(22, 'Yogur de Piña Colada', 'Activia', 'Yogur', 15.750000, 70);

-- Volcando estructura para tabla escomart.limpieza
DROP TABLE IF EXISTS `limpieza`;
CREATE TABLE IF NOT EXISTS `limpieza` (
  `id_articulo_limpieza` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id_articulo_limpieza`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.limpieza: ~20 rows (aproximadamente)
INSERT INTO `limpieza` (`id_articulo_limpieza`, `nombre`, `marca`, `tipo`, `precio`, `cantidad`) VALUES
	(1, 'Jabón líquido para manos', 'Dove', 'Limpieza personal', 50.00, 50),
	(2, 'Detergente en polvo', 'Ariel', 'Lavandería', 26.00, 30),
	(3, 'Limpiavidrios', 'Glass Cleaner', 'Limpieza de vidrios', 120.00, 20),
	(4, 'Toallas de papel', 'Scott', 'Papel', 55.00, 100),
	(5, 'Limpiador multiusos', 'Mr. Clean', 'Limpieza general', 97.00, 40),
	(6, 'Desinfectante de superficies', 'Lysol', 'Desinfección', 82.00, 60),
	(7, 'Limpiador de baño', 'Clorox', 'Limpieza de baño', 50.00, 25),
	(8, 'Escoba', 'O-Cedar', 'Accesorio de limpieza', 38.00, 15),
	(9, 'Trapo de microfibra', 'Swiffer', 'Accesorio de limpieza', 70.00, 50),
	(10, 'Papel higiénico', 'Charmin', 'Papel', 15.00, 80),
	(11, 'Esponjas para lavar platos', 'Scotch-Brite', 'Accesorio de limpieza', 13.00, 75),
	(12, 'Jabón en barra', 'Zote', 'Limpieza personal', 11.00, 100),
	(13, 'Detergente líquido', 'Persil', 'Lavandería', 48.00, 35),
	(14, 'Limpiador de pisos', 'Fabuloso', 'Limpieza de suelos', 35.00, 20),
	(15, 'Paños desechables', 'Viva', 'Papel', 57.00, 60),
	(16, 'Cepillo para inodoro', 'Scotch-Brite', 'Accesorio de limpieza', 30.00, 30),
	(17, 'Guantes de limpieza', 'Playtex', 'Accesorio de limpieza', 17.00, 40),
	(18, 'Limpiador de acero inoxidable', 'Weiman', 'Limpieza de superficies', 72.00, 25),
	(19, 'Recogedor y escoba', 'Libman', 'Accesorio de limpieza', 46.00, 10),
	(20, 'Abrillantador de muebles', 'Pledge', 'Limpieza de muebles', 43.00, 15);

-- Volcando estructura para tabla escomart.provedores
DROP TABLE IF EXISTS `provedores`;
CREATE TABLE IF NOT EXISTS `provedores` (
  `id_proveedor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.provedores: ~12 rows (aproximadamente)
INSERT INTO `provedores` (`id_proveedor`, `nombre`, `direccion`, `telefono`, `email`) VALUES
	(1, 'Distribuidora El Proveedor', 'Calle 16 de Septiembre #123, Colonia Centro', '782 125 3645', 'proveedor@gmail.com'),
	(2, 'Suministros Industriales S.A. de C.V.', 'Av. Cuauhtémoc S/N, Centro, 92800 Túxpam', '783 831 6613', 'ventas@bysisa.com.mx'),
	(3, 'Productos Alimenticios Tuxpan', 'Calle Hidalgo #789, Colonia Benito Juárez', '783 138 8339', 'gherrera@tactuxpan.com'),
	(4, 'Distribuidora de Limpieza Cleanex', 'Avenida Revolución #567, Colonia Moderna', '783 580 9669', 'contacto@cleanex.com'),
	(5, 'Diensa Tuxpan', '92880, Av López Mateos LB, 17 de', '783 835 2424', 'ventas@ferreteriatuxpan.com'),
	(6, 'Coca-Cola de México', '92777 Túxpam de Rodríguez Cano, Ver.', '783 832 3805', 'consumidor@coca-cola.com'),
	(7, 'PepsiCo México', 'Av López Mateos, El Retiro, 92870', '783 837 7100', 'consumidores.1800@pepsico.com'),
	(8, 'Grupo Lala S.A.B. de C.V.', 'Km. 1 Lote L-M1, Mexico - Tuxpan, Manlio', '783 834 1979', ' lala800@grupolala.com'),
	(9, 'Sabritas Tuxpan.', 'Maximino Guzmán 1, Santiago de la Peñ', '783 834-9088', 'promociones@sabritas.com'),
	(10, 'Gamesa veracruz', 'CALLE GALLEGOS 9, INDEPENDENCIA, 63203 Tuxpan, Nayarit', '783 192 5478', 'gamesa@gamesacorp.com'),
	(11, 'Barcel pozarica', 'Carretera Poza Rica-Casona Kilómetro 47 la Victoria, Lomas de Plata, 93523 Papantla, Ver.', '782 822 8093', 'barcel@bar.com'),
	(12, 'Chedraui Tuxpan ver.', 'Dirección: Blvd. Demetrio Ruiz Malerva M-No. 65, Zapote Gordo, 92860 Túxpam de Rodríguez Cano, Ver.', '783 835 1256', 'ayuda@chedraui.com.mx');

-- Volcando estructura para tabla escomart.recargas
DROP TABLE IF EXISTS `recargas`;
CREATE TABLE IF NOT EXISTS `recargas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(50) DEFAULT NULL,
  `numero_telefono` varchar(15) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `fecha_recarga` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.recargas: ~25 rows (aproximadamente)
INSERT INTO `recargas` (`id`, `marca`, `numero_telefono`, `monto`, `fecha_recarga`) VALUES
	(1, 'Telcel', '783-123-4567', 100.00, '2023-07-20'),
	(2, 'Movistar', '783-987-6543', 50.00, '2023-07-20'),
	(3, 'Usacel', '783-555-5555', 75.50, '2023-07-19'),
	(4, 'AT&T', '783-111-2252', 120.75, '2023-07-18'),
	(5, 'UNEFON', '783-702-8886', 30.25, '2023-07-17'),
	(6, 'Movistar', '783-408-7714', 70.00, '2023-07-07'),
	(7, 'AT&T', '783-701-4447', 90.50, '2023-07-07'),
	(8, 'Telcel', '783-111-2236', 125.00, '2023-07-06'),
	(9, 'Usacel', '783-125-3338', 80.25, '2023-07-05'),
	(10, 'Telcel', '783-822-9974', 30.00, '2023-07-05'),
	(11, 'UNEFON', '783-585-6632', 60.00, '2023-07-04'),
	(12, 'Telcel', '783-223-4474', 100.50, '2023-07-04'),
	(13, 'Movistar', '783-334-7787', 45.25, '2023-07-03'),
	(14, 'AT&T', '783-187-8825', 85.00, '2023-07-03'),
	(15, 'Usacel', '783-208-1505', 75.75, '2023-07-02'),
	(16, 'UNEFON', '783-888-7746', 20.00, '2023-07-01'),
	(17, 'Telcel', '783-177-5527', 35.00, '2023-07-01'),
	(18, 'Movistar', '783-512-6614', 60.00, '2023-06-30'),
	(19, 'AT&T', '783-187-4446', 95.25, '2023-06-29'),
	(20, 'Telcel', '783-369-7732', 150.00, '2023-06-29'),
	(21, 'Usacel', '783-335-6647', 85.00, '2023-06-28'),
	(22, 'UNEFON', '783-475-4420', 30.00, '2023-06-27'),
	(23, 'Telcel', '783-469-2203', 70.00, '2023-06-27'),
	(24, 'Movistar', '783-174-7708', 40.50, '2023-06-26'),
	(25, 'AT&T', '783-146-7707', 110.00, '2023-06-26');

-- Volcando estructura para tabla escomart.refrescos
DROP TABLE IF EXISTS `refrescos`;
CREATE TABLE IF NOT EXISTS `refrescos` (
  `id_refresco` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `sabor` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id_refresco`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.refrescos: ~22 rows (aproximadamente)
INSERT INTO `refrescos` (`id_refresco`, `nombre`, `marca`, `sabor`, `precio`, `cantidad`) VALUES
	(1, 'Coca-Cola', 'The Coca-Cola Company', 'Original', 12.50, 102),
	(2, 'Pepsi', 'PepsiCo', 'Original', 11.75, 90),
	(3, 'Sprite', 'The Coca-Cola Company', 'Limon', 10.99, 65),
	(4, 'Fanta', 'The Coca-Cola Company', 'Naranja', 9.75, 70),
	(5, 'Mirinda', 'PepsiCo', 'Mandarina', 10.25, 60),
	(6, 'Manzanita Sol', 'The Coca-Cola Company', 'Manzana', 11.50, 70),
	(7, '7UP', 'PepsiCo', 'Limon', 9.99, 40),
	(8, 'Jarritos', 'Novamex', 'Tamarindo', 8.75, 24),
	(9, 'Sidral Mundet', 'FEMSA', 'Manzana', 12.25, 25),
	(10, 'Boing', 'Grupo Jumex', 'Mango', 9.50, 32),
	(11, 'Del Valle', 'The Coca-Cola Company', 'Manzana', 11.25, 15),
	(12, 'Squirt', 'PepsiCo', 'Toronja', 10.75, 10),
	(13, 'Yoli', 'Yoli', 'Piña', 8.99, 18),
	(14, 'Ciel', 'The Coca-Cola Company', 'Agua', 7.50, 5),
	(15, 'Epura', 'PepsiCo', 'Agua', 6.99, 3),
	(16, 'Peñafiel', 'Peñafiel', 'Mineral', 9.25, 2),
	(17, 'Sahara', 'Sahara', 'Manzana', 8.50, 11),
	(18, 'Topo Chico', 'The Coca-Cola Company', 'Agua', 10.99, 1),
	(19, 'Fresca', 'The Coca-Cola Company', 'Toronja', 10.75, 10),
	(20, 'Paso de los Toros', 'PepsiCo', 'Tonica', 10.25, 20),
	(21, 'Pepsi3L', 'PepsiCo', 'Tonica', 30.00, 15),
	(22, 'Cocacola25L', 'The Coca-Cola Company', 'Original', 35.00, 20);

-- Volcando estructura para tabla escomart.sabritas
DROP TABLE IF EXISTS `sabritas`;
CREATE TABLE IF NOT EXISTS `sabritas` (
  `id_fritura` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `precio` double NOT NULL DEFAULT 0,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id_fritura`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.sabritas: ~45 rows (aproximadamente)
INSERT INTO `sabritas` (`id_fritura`, `nombre`, `marca`, `precio`, `cantidad`) VALUES
	(1, 'Papas Sabritas Clásicas', 'Sabritas', 17.5, 100),
	(2, 'Doritos Nacho', 'Sabritas', 19.9, 80),
	(3, 'Cheetos Poffs', 'Sabritas', 18.75, 70),
	(4, 'Ruffles Queso', 'Sabritas', 18.25, 60),
	(5, 'Doritos Flamin\' Hot', 'Sabritas', 19.9, 50),
	(6, 'Papas Sabritas Adobadas', 'Sabritas', 17.5, 90),
	(7, 'Cheetos Torciditos', 'Sabritas', 18.75, 70),
	(8, 'Ruffles Limón', 'Sabritas', 18.25, 60),
	(9, 'Doritos Incógnita', 'Sabritas', 19.9, 50),
	(10, 'Papas Sabritas Salt & Vinegar', 'Sabritas', 17.5, 100),
	(11, 'Cheetos Bolitas', 'Sabritas', 18.75, 70),
	(12, 'Ruffles Queso Jalapeño', 'Sabritas', 18.25, 60),
	(13, 'Doritos Roulette', 'Sabritas', 19.9, 50),
	(14, 'Papas Sabritas Extra Crujientes', 'Sabritas', 17.5, 100),
	(15, 'Cheetos Poffs Extra Queso', 'Sabritas', 18.75, 70),
	(16, 'Ruffles Flamin\' Hot', 'Sabritas', 18.25, 60),
	(17, 'Doritos Flamas', 'Sabritas', 19.9, 50),
	(18, 'Papas Sabritas Original', 'Sabritas', 17.5, 100),
	(19, 'Cheetos Bolita Poffs', 'Sabritas', 18.75, 70),
	(20, 'Ruffles Queso Cheddar', 'Sabritas', 18.25, 60),
	(21, 'Doritos Spicy Sweet Chili', 'Sabritas', 19.9, 50),
	(22, 'Papas Sabritas Adobadas Extra', 'Sabritas', 17.5, 90),
	(23, 'Cheetos Flamin\' Hot', 'Sabritas', 18.75, 70),
	(24, 'Ruffles Jamón y Queso', 'Sabritas', 18.25, 60),
	(25, 'Doritos Tapatío', 'Sabritas', 19.9, 50),
	(26, 'Papas Sabritas Original Sal y Limón', 'Sabritas', 17.5, 100),
	(27, 'Cheetos Torciditos 3D', 'Sabritas', 18.75, 70),
	(28, 'Ruffles Queso Nacho', 'Sabritas', 18.25, 60),
	(29, 'Doritos Sweet Chili', 'Sabritas', 19.9, 50),
	(30, 'Papas Sabritas Limón', 'Sabritas', 17.5, 100),
	(31, 'Cheetos Poffs Chile Habanero', 'Sabritas', 18.75, 70),
	(32, 'Ruffles Queso y Chipotle', 'Sabritas', 18.25, 60),
	(33, 'Doritos Dinamita', 'Sabritas', 19.9, 50),
	(34, 'Papas Sabritas Ketchup', 'Sabritas', 17.5, 100),
	(35, 'Cheetos White Cheddar', 'Sabritas', 18.75, 70),
	(36, 'Ruffles Barbacoa', 'Sabritas', 18.25, 60),
	(37, 'Doritos Pizzerolas', 'Sabritas', 19.9, 50),
	(38, 'Papas Sabritas Pimienta y Limón', 'Sabritas', 17.5, 100),
	(39, 'Cheetos Xtra Flamin\' Hot', 'Sabritas', 18.75, 70),
	(40, 'Ruffles Queso Gourmet', 'Sabritas', 18.25, 60),
	(41, 'Doritos X-13D', 'Sabritas', 19.9, 50),
	(42, 'Papas Sabritas Flamin\' Hot', 'Sabritas', 17.5, 100),
	(43, 'Cheetos Xtra Queso', 'Sabritas', 18.75, 70),
	(44, 'Ruffles Doble Queso', 'Sabritas', 18.25, 60),
	(45, 'Doritos Xtra Flamin\' Hot Limón', 'Sabritas', 19.9, 50);

-- Volcando estructura para tabla escomart.sal
DROP TABLE IF EXISTS `sal`;
CREATE TABLE IF NOT EXISTS `sal` (
  `id_sal` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(100) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `presentacion` varchar(50) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id_sal`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.sal: ~72 rows (aproximadamente)
INSERT INTO `sal` (`id_sal`, `marca`, `tipo`, `presentacion`, `precio`, `cantidad`) VALUES
	(1, 'La Fina', 'Fina', 'Bolsa de 1 kg', 12.50, 200),
	(2, 'Sal Sol', 'Gruesa', 'Bote de 500 g', 15.80, 150),
	(3, 'Sal del Valle', 'Marina', 'Bolsa de 1 kg', 20.00, 180),
	(4, 'Sal Dulce', 'De mesa', 'Bote de 250 g', 18.20, 120),
	(5, 'Cristal Sal', 'Molida', 'Bolsa de 500 g', 14.90, 90),
	(6, 'Sal Deliciosa', 'Fina', 'Bote de 1 kg', 22.75, 250),
	(7, 'Fina Sal', 'Molida', 'Bolsa de 1 kg', 21.50, 80),
	(8, 'Sal Purita', 'Fina', 'Bolsa de 2 kg', 16.40, 300),
	(9, 'Sal Morena', 'Marina', 'Bolsa de 500 g', 19.80, 70),
	(10, 'Sal Natural', 'De mesa', 'Bote de 250 g', 13.75, 140),
	(11, 'Sal del Mar', 'Gruesa', 'Bolsa de 1 kg', 17.50, 110),
	(12, 'Sal Delicia', 'Molida', 'Bote de 500 g', 20.20, 200),
	(13, 'Sal Mía', 'De mesa', 'Bote de 250 g', 14.50, 180),
	(14, 'Sal Sabor', 'Fina', 'Bolsa de 1 kg', 19.20, 230),
	(15, 'Sal Azteca', 'Gruesa', 'Bote de 500 g', 16.80, 90),
	(16, 'Sal Sabrosa', 'Molida', 'Bolsa de 500 g', 15.90, 120),
	(17, 'Sal Mágica', 'Marina', 'Bolsa de 1 kg', 18.80, 100),
	(18, 'Sal Deliciosa', 'De mesa', 'Bote de 250 g', 17.20, 130),
	(19, 'Sal Fina', 'Molida', 'Bolsa de 500 g', 13.80, 200),
	(20, 'Sal Cristal', 'Fina', 'Bote de 1 kg', 15.90, 160),
	(21, 'Sal del Cielo', 'Marina', 'Bolsa de 1 kg', 14.50, 190),
	(22, 'Salina', 'Marina', 'Bolsa de 500 g', 18.90, 120),
	(23, 'Sal Del Mar', 'Fina', 'Bote de 250 g', 14.75, 90),
	(24, 'Sal Dorada', 'Gruesa', 'Bolsa de 1 kg', 20.50, 150),
	(25, 'Sal de la Tierra', 'Molida', 'Bote de 500 g', 17.80, 100),
	(26, 'Sal Naturalis', 'De mesa', 'Bolsa de 1 kg', 22.20, 180),
	(27, 'Sal Azteca', 'Marina', 'Bote de 500 g', 16.40, 140),
	(28, 'Sal Cristalina', 'Fina', 'Bolsa de 1 kg', 23.90, 200),
	(29, 'Sal Fresca', 'Molida', 'Bote de 250 g', 15.50, 120),
	(30, 'Sal Sol', 'De mesa', 'Bolsa de 500 g', 17.80, 160),
	(31, 'Sal Fina', 'Fina', 'Bote de 1 kg', 19.60, 80),
	(32, 'Sal del Mar', 'Gruesa', 'Bolsa de 500 g', 21.20, 110),
	(33, 'Sal del Cielo', 'Marina', 'Bolsa de 1 kg', 16.90, 140),
	(34, 'Salina', 'Fina', 'Bote de 250 g', 18.40, 90),
	(35, 'Sal Del Mar', 'Marina', 'Bolsa de 1 kg', 19.75, 120),
	(36, 'Sal Dorada', 'Gruesa', 'Bote de 500 g', 23.50, 80),
	(37, 'Sal de la Tierra', 'Molida', 'Bolsa de 500 g', 17.20, 150),
	(38, 'Sal Naturalis', 'De mesa', 'Bote de 1 kg', 21.80, 100),
	(39, 'Sal Azteca', 'Marina', 'Bolsa de 500 g', 17.60, 130),
	(40, 'Sal Cristalina', 'Fina', 'Bolsa de 1 kg', 24.20, 70),
	(41, 'Sal Fresca', 'Molida', 'Bote de 250 g', 16.80, 100),
	(42, 'Sal Sol', 'De mesa', 'Bolsa de 500 g', 19.20, 150),
	(43, 'Sal Fina', 'Fina', 'Bote de 1 kg', 18.60, 120),
	(44, 'Sal del Mar', 'Gruesa', 'Bolsa de 500 g', 22.50, 90),
	(45, 'Sal del Cielo', 'Marina', 'Bolsa de 1 kg', 17.40, 160),
	(46, 'Salina', 'Fina', 'Bote de 250 g', 19.80, 140),
	(47, 'Sal Del Mar', 'Marina', 'Bolsa de 1 kg', 20.75, 100),
	(48, 'Sal Dorada', 'Gruesa', 'Bote de 500 g', 24.20, 110),
	(49, 'Sal de la Tierra', 'Molida', 'Bolsa de 500 g', 18.80, 120),
	(50, 'Sal Naturalis', 'De mesa', 'Bote de 1 kg', 22.20, 80),
	(51, 'Sal Azteca', 'Marina', 'Bolsa de 500 g', 18.60, 90),
	(52, 'Sal Cristalina', 'Fina', 'Bolsa de 1 kg', 25.40, 120),
	(53, 'Sal Fresca', 'Molida', 'Bote de 250 g', 17.50, 150),
	(54, 'Sal Sol', 'De mesa', 'Bolsa de 500 g', 20.80, 80),
	(55, 'Sal Fina', 'Fina', 'Bote de 1 kg', 19.40, 100),
	(56, 'Sal del Mar', 'Gruesa', 'Bolsa de 500 g', 23.20, 160),
	(57, 'Sal del Cielo', 'Marina', 'Bolsa de 1 kg', 18.10, 140),
	(58, 'Salina', 'Fina', 'Bote de 250 g', 20.60, 90),
	(59, 'Sal Del Mar', 'Marina', 'Bolsa de 1 kg', 21.75, 120),
	(60, 'Sal Dorada', 'Gruesa', 'Bote de 500 g', 25.80, 100),
	(61, 'Sal de la Tierra', 'Molida', 'Bolsa de 500 g', 19.20, 150),
	(62, 'Sal Naturalis', 'De mesa', 'Bote de 1 kg', 23.80, 80),
	(63, 'Sal Azteca', 'Marina', 'Bolsa de 500 g', 19.60, 130),
	(64, 'Sal Cristalina', 'Fina', 'Bolsa de 1 kg', 26.20, 70),
	(65, 'Sal Fresca', 'Molida', 'Bote de 250 g', 18.80, 100),
	(66, 'Sal Sol', 'De mesa', 'Bolsa de 500 g', 21.20, 150),
	(67, 'Sal Fina', 'Fina', 'Bote de 1 kg', 20.60, 80),
	(68, 'Sal del Mar', 'Gruesa', 'Bolsa de 500 g', 24.50, 90),
	(69, 'Sal del Cielo', 'Marina', 'Bolsa de 1 kg', 19.40, 160),
	(70, 'Salina', 'Fina', 'Bote de 250 g', 21.80, 140),
	(71, 'Sal Del Mar', 'Marina', 'Bolsa de 1 kg', 22.75, 100),
	(72, 'Sal Dorada', 'Gruesa', 'Bote de 500 g', 26.40, 120);

-- Volcando estructura para tabla escomart.salchichoneria
DROP TABLE IF EXISTS `salchichoneria`;
CREATE TABLE IF NOT EXISTS `salchichoneria` (
  `id_salchichoneria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id_salchichoneria`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.salchichoneria: ~40 rows (aproximadamente)
INSERT INTO `salchichoneria` (`id_salchichoneria`, `nombre`, `tipo`, `marca`, `precio`, `cantidad`) VALUES
	(1, 'Jamón de Pavo', 'Embutido', 'Fud', 45.50, 50),
	(2, 'Salchicha tipo Frankfurt', 'Salchicha', 'Zwan', 35.75, 30),
	(3, 'Chorizo', 'Embutido', 'San Rafael', 28.99, 40),
	(4, 'Pepperoni', 'Embutido', 'Oscar Mayer', 39.80, 25),
	(5, 'Jamoncillo', 'Charcutería', 'Campofrío', 50.25, 20),
	(6, 'Salami', 'Embutido', 'Serranía', 33.20, 35),
	(7, 'Longaniza', 'Salchicha', 'La Michoacana', 28.75, 45),
	(8, 'Mortadela', 'Embutido', 'Lala', 24.50, 60),
	(9, 'Cecina', 'Charcutería', 'La Fina', 55.99, 15),
	(10, 'Lomo Embuchado', 'Embutido', 'La Huerta', 42.75, 10),
	(11, 'Chistorra', 'Salchicha', 'La Española', 36.99, 30),
	(12, 'Butifarra', 'Salchicha', 'Bafar', 32.75, 20),
	(13, 'Sobrasada', 'Embutido', 'Palacios', 48.80, 12),
	(14, 'Salchichón', 'Embutido', 'La Selva', 40.50, 18),
	(15, 'Jamón Serrano', 'Charcutería', 'ElPozo', 60.25, 8),
	(16, 'Fuet', 'Salchicha', 'Casa Tarradellas', 29.99, 22),
	(17, 'Coppa', 'Embutido', 'Del Duca', 45.75, 7),
	(18, 'Jamón Ibérico', 'Charcutería', 'Sánchez Romero Carvajal', 100.00, 5),
	(19, 'Cecina de Yecapixtla', 'Charcutería', 'Don Francisco', 65.50, 3),
	(20, 'Salchichas de Tofu', 'Salchicha', 'Veggie Field', 38.99, 6),
	(21, 'Salchicha Frankfurt', 'Fresca', 'Oscar Mayer', 12.50, 50),
	(22, 'Jamón de Pavo', 'En lonchas', 'Fud', 15.80, 30),
	(23, 'Chorizo', 'Curado', 'San Rafael', 9.75, 25),
	(24, 'Salami', 'Semicurado', 'La Selva', 18.90, 40),
	(25, 'Longaniza', 'Fresca', 'La Campiña', 10.25, 35),
	(26, 'Pepperoni', 'Curado', 'Wings', 11.50, 45),
	(27, 'Jamoncillo', 'En lonchas', 'El Corte', 14.20, 20),
	(28, 'Butifarra', 'Fresca', 'El Poal', 13.80, 15),
	(29, 'Sobrasada', 'Untable', 'Can Magi', 16.40, 10),
	(30, 'Mortadela', 'En lonchas', 'La Napolitana', 9.90, 55),
	(31, 'Chistorra', 'Fresca', 'Los 5 Hermanos', 11.75, 30),
	(32, 'Lomo Embuchado', 'Curado', 'Ibérico Pata Negra', 22.00, 12),
	(33, 'Salchicha de Pollo', 'Fresca', 'San Fernando', 10.50, 18),
	(34, 'Cecina', 'Curada', 'Tierra de Sabor', 20.80, 25),
	(35, 'Botana de Carne Seca', 'Seca', 'El Charrito', 8.50, 40),
	(36, 'Salchichón', 'Semicurado', 'Argal', 15.00, 22),
	(37, 'Pechuga de Pavo', 'En lonchas', 'Zwan', 11.20, 28),
	(38, 'Chicharrón', 'Frito', 'El Sabroso', 6.90, 60),
	(39, 'Longaniza Verde', 'Fresca', 'Rica Cocción', 10.80, 30),
	(40, 'Salchicha de Cerdo', 'Fresca', 'La Castellana', 12.75, 20);

-- Volcando estructura para tabla escomart.sardinas
DROP TABLE IF EXISTS `sardinas`;
CREATE TABLE IF NOT EXISTS `sardinas` (
  `id_sardina` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(100) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id_sardina`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.sardinas: ~25 rows (aproximadamente)
INSERT INTO `sardinas` (`id_sardina`, `marca`, `tipo`, `precio`, `cantidad`) VALUES
	(1, 'Marina', 'En aceite de oliva', 25.50, 3),
	(2, 'La Sardinera', 'En salsa de tomate', 19.75, 4),
	(3, 'Ocean Delight', 'En aceite vegetal', 22.25, 5),
	(4, 'Sunrise', 'En escabeche', 18.90, 6),
	(5, 'Captains Catch', 'En aceite de girasol', 23.00, 4),
	(6, 'Bella Portofino', 'En aceite de oliva', 29.50, 3),
	(7, 'John West', 'En aceite de girasol', 24.75, 4),
	(8, 'King Oscar', 'En aceite de oliva', 32.25, 5),
	(9, 'Polar', 'En escabeche', 21.90, 6),
	(10, 'Conservas Portugal', 'En salsa de tomate', 26.00, 4),
	(11, 'Seaside Catch', 'En aceite de oliva', 27.50, 2),
	(12, 'Harbor Sea', 'En salsa picante', 21.75, 3),
	(13, 'Pacific Delights', 'En aceite de girasol', 20.25, 4),
	(14, 'Golden Harvest', 'En salsa de limón', 24.90, 5),
	(15, 'Tuna Master', 'En aceite de oliva', 22.00, 3),
	(16, 'Conservas Ortiz', 'En aceite de oliva', 29.50, 3),
	(17, 'Brunswick', 'En salsa de tomate', 24.75, 4),
	(18, 'Gomes da Costa', 'En aceite vegetal', 21.90, 5),
	(19, 'El Real', 'En escabeche', 18.90, 6),
	(20, 'King Oscar', 'En aceite de girasol', 27.50, 4),
	(21, 'Crown Prince', 'En aceite de oliva', 31.50, 2),
	(22, 'Porto Muiños', 'En escabeche', 26.75, 3),
	(23, 'John West', 'En salsa de tomate', 22.90, 4),
	(24, 'Connétable', 'En aceite vegetal', 19.90, 5),
	(25, 'Brunswick', 'En aceite de girasol', 28.00, 3);

-- Volcando estructura para tabla escomart.sopas
DROP TABLE IF EXISTS `sopas`;
CREATE TABLE IF NOT EXISTS `sopas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `sabor` varchar(50) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `precio` decimal(8,2) NOT NULL,
  `contenido_neto` varchar(20) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla escomart.sopas: ~21 rows (aproximadamente)
INSERT INTO `sopas` (`id`, `nombre`, `sabor`, `marca`, `precio`, `contenido_neto`, `cantidad`, `descripcion`) VALUES
	(1, 'Sopa de pollo con fideos', 'Pollo', 'Maggi', 12.00, '70g', 10, 'Deliciosa sopa de pollo con fideos finos.'),
	(2, 'Sopa de tomate con albahaca', 'Tomate', 'Knorr', 10.00, '80g', 15, 'Sopa con sabor a tomate y toque de albahaca.'),
	(3, 'Sopa de miso', 'Miso', 'Nissin', 20.00, '60g', 8, 'Sopa tradicional japonesa con pasta de miso y tofu.'),
	(4, 'Sopa de lentejas', 'Lentejas', 'La Costeña', 12.50, '100g', 13, 'Sopa de lentejas nutritiva y sabrosa.'),
	(5, 'Sopa de champiñones', 'Champiñones', 'Maggi', 15.75, '90g', 18, 'Sopa cremosa con auténtico sabor a champiñones.'),
	(6, 'Sopa de tortilla', 'Tortilla', 'Knorr', 9.99, '80g', 20, 'Sopa con sabor a tortilla, pollo y aguacate.'),
	(7, 'Sopa de fideos con verduras', 'Fideos', 'Nissin', 8.25, '70g', 6, 'Sopa con fideos y deliciosas verduras mixtas.'),
	(8, 'Sopa de pollo con chipotle', 'Pollo', 'La Moderna', 11.30, '85g', 30, 'Sopa de pollo con un toque de chipotle para darle sabor.'),
	(9, 'Sopa de cebolla gratinada', 'Cebolla', 'Knorr', 14.99, '95g', 16, 'Sopa estilo gratinado con sabor a cebolla caramelizada.'),
	(10, 'Sopa de camarón', 'Camarón', 'Maggi', 18.50, '85g', 7, 'Sopa con delicioso sabor a camarón.'),
	(11, 'Sopa de verduras', 'Verduras', 'La Costeña', 10.75, '70g', 19, 'Sopa de verduras mixtas con un toque de sazón.'),
	(12, 'Sopa de fideos con pollo', 'Fideos', 'Knorr', 9.25, '75g', 14, 'Sopa de fideos con tiernos trozos de pollo.'),
	(13, 'Sopa de maíz y papa', 'Maíz', 'Nissin', 12.99, '80g', 23, 'Sopa cremosa con sabor a maíz y papa.'),
	(14, 'Sopa de tomate con queso', 'Tomate', 'La Moderna', 13.30, '90g', 18, 'Sopa con sabor a tomate y toque de queso.'),
	(15, 'Sopa de champiñones y espárragos', 'Champiñones', 'Knorr', 16.75, '85g', 5, 'Sopa con champiñones y espárragos en una mezcla irresistible.'),
	(16, 'Sopa de almejas', 'Almejas', 'Mariscos del Pacífico', 22.99, '100g', 13, 'Sopa con auténtico sabor a almejas.'),
	(17, 'Sopa de frijoles negros', 'Frijoles Negros', 'La Costeña', 11.50, '90g', 21, 'Sopa de frijoles negros con un toque de especias.'),
	(18, 'Sopa de arroz con pollo', 'Arroz', 'Knorr', 9.75, '85g', 14, 'Sopa con arroz y trozos de pollo tierno.'),
	(19, 'Sopa de chícharos', 'Chícharos', 'Nissin', 8.99, '75g', 11, 'Sopa cremosa con deliciosos chícharos.'),
	(20, 'Sopa de tomate y albahaca', 'Tomate', 'La Moderna', 12.30, '90g', 28, 'Sopa de tomate con aroma a albahaca.'),
	(21, 'Sopa de cebolla y queso', 'Cebolla', 'Knorr', 14.75, '95g', 23, 'Sopa cremosa con sabor a cebolla y queso fundido.');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
