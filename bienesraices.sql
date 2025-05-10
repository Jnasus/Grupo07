-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.7.4-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para bienesraices
CREATE DATABASE IF NOT EXISTS `bienesraices` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bienesraices`;

-- Volcando estructura para tabla bienesraices.anuncio
CREATE TABLE IF NOT EXISTS `anuncio` (
  `id` bigint(20) NOT NULL,
  `cantidad_banios` int(11) DEFAULT NULL,
  `cantidad_cochera` int(11) DEFAULT NULL,
  `cantidad_cuartos` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `descripcion_corta` varchar(255) DEFAULT NULL,
  `descripcion_larga` varchar(255) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `ruta_image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `usuario_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKeqe192g0tj782frjqmjvoqlvx` (`usuario_id`),
  CONSTRAINT `FKeqe192g0tj782frjqmjvoqlvx` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bienesraices.anuncio: ~6 rows (aproximadamente)
INSERT INTO `anuncio` (`id`, `cantidad_banios`, `cantidad_cochera`, `cantidad_cuartos`, `created_at`, `descripcion_corta`, `descripcion_larga`, `precio`, `ruta_image`, `title`, `updated_at`, `usuario_id`) VALUES
	(1, 3, 3, 3, '2024-11-21 19:25:05.000000', 'Casa en el lago con excelente vista,acabados de lujo a un excenlente precio', 'Casa en el lago con excelente vista,acabados de lujo a un excenlente precio', 3000000, '/img/anuncio1.jpg', 'Casa de Lujo en el Lago', '2024-11-21 19:25:05.000000', NULL),
	(2, 3, 3, 3, '2024-11-21 19:25:05.000000', 'Casa con diseño moderno, asi como tecnología inteliginte y amueblada', 'Casa con diseño moderno, asi como tecnología inteliginte y amueblada', 3000000, '/img/anuncio2.jpg', 'Casa terminado de Lujo', '2024-11-21 19:25:05.000000', NULL),
	(3, 3, 3, 3, '2024-11-21 19:25:05.000000', 'Casa con alberca y acabados de Lujo en la ciudad,excelente oportunidad', 'Casa con alberca y acabados de Lujo en la ciudad,excelente oportunidad', 3000000, '/img/anuncio3.jpg', 'Casa con Alberca', '2024-11-21 19:25:05.000000', NULL),
	(4, 3, 3, 3, '2024-11-21 19:25:05.000000', 'Casa en el lago con excelente vista,acabados de lujo a un excenlente precio', 'Casa en el lago con excelente vista,acabados de lujo a un excenlente precio', 3000000, '/img/anuncio1.jpg', 'Casa de Lujo en el Lago', '2024-11-21 19:25:05.000000', NULL),
	(5, 3, 3, 3, '2024-11-21 19:25:05.000000', 'Casa con diseño moderno, asi como tecnología inteliginte y amueblada', 'Casa con diseño moderno, asi como tecnología inteliginte y amueblada', 3000000, '/img/anuncio2.jpg', 'Casa terminado de Lujo', '2024-11-21 19:25:05.000000', NULL),
	(6, 3, 3, 3, '2024-11-21 19:25:05.000000', 'Casa con alberca y acabados de Lujo en la ciudad,excelente oportunidad', 'Casa con alberca y acabados de Lujo en la ciudad,excelente oportunidad', 3000000, '/img/anuncio3.jpg', 'Casa con Alberca', '2024-11-21 19:25:05.000000', NULL);

-- Volcando estructura para tabla bienesraices.anuncio_seq
CREATE TABLE IF NOT EXISTS `anuncio_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bienesraices.anuncio_seq: ~1 rows (aproximadamente)
INSERT INTO `anuncio_seq` (`next_val`) VALUES
	(101);

-- Volcando estructura para tabla bienesraices.blog
CREATE TABLE IF NOT EXISTS `blog` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `texto` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `usuario_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtkmstdvtspvaijsbis3w3hsfc` (`usuario_id`),
  CONSTRAINT `FKtkmstdvtspvaijsbis3w3hsfc` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bienesraices.blog: ~4 rows (aproximadamente)
INSERT INTO `blog` (`id`, `created_at`, `image_path`, `texto`, `title`, `updated_at`, `usuario_id`) VALUES
	(1, '2024-11-21 19:25:05.000000', '/img/blog1.jpg', 'Consejos para construir una terraza en el techo de tu casa, con los mejores materiales y ahorrando dinero', 'Terraza en el techo de tu casa', '2024-11-21 19:25:05.000000', 1),
	(2, '2024-11-21 19:25:05.000000', '/img/blog2.jpg', 'Consejos para construir una terraza en el techo de tu casa, con los mejores materiales y ahorrando dinero', 'Guía para la decoración de tu hogar', '2024-11-21 19:25:05.000000', 1),
	(3, '2024-11-21 19:25:05.000000', '/img/blog1.jpg', 'Consejos para construir una terraza en el techo de tu casa, con los mejores materiales y ahorrando dinero', 'Crea hermosas terrazas', '2024-11-21 19:25:05.000000', 1),
	(4, '2024-11-21 19:25:05.000000', '/img/blog4.jpg', 'Maximiza el espacio en tu hogar con esta guía, aprende a combinar muebles y colores para darle vida a tu espacio', 'Guia para un cuarto hermoso', '2024-11-21 19:25:05.000000', 1);

-- Volcando estructura para tabla bienesraices.blog_seq
CREATE TABLE IF NOT EXISTS `blog_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bienesraices.blog_seq: ~1 rows (aproximadamente)
INSERT INTO `blog_seq` (`next_val`) VALUES
	(101);

-- Volcando estructura para tabla bienesraices.contacto
CREATE TABLE IF NOT EXISTS `contacto` (
  `id` bigint(20) NOT NULL,
  `accion` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `date_contact` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mensaje` varchar(255) DEFAULT NULL,
  `nombres` varchar(255) DEFAULT NULL,
  `presupuesto` double DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `time_contact` datetime(6) DEFAULT NULL,
  `type_contact` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bienesraices.contacto: ~0 rows (aproximadamente)

-- Volcando estructura para tabla bienesraices.contacto_seq
CREATE TABLE IF NOT EXISTS `contacto_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bienesraices.contacto_seq: ~1 rows (aproximadamente)
INSERT INTO `contacto_seq` (`next_val`) VALUES
	(1);

-- Volcando estructura para tabla bienesraices.rol
CREATE TABLE IF NOT EXISTS `rol` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bienesraices.rol: ~1 rows (aproximadamente)
INSERT INTO `rol` (`id`, `created_at`, `name`, `updated_at`) VALUES
	(1, '2024-11-21 19:25:05.000000', 'USUARIO', '2024-11-21 19:25:05.000000');

-- Volcando estructura para tabla bienesraices.rol_seq
CREATE TABLE IF NOT EXISTS `rol_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bienesraices.rol_seq: ~1 rows (aproximadamente)
INSERT INTO `rol_seq` (`next_val`) VALUES
	(51);

-- Volcando estructura para tabla bienesraices.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` bigint(20) NOT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `nombres` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `rol_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKshkwj12wg6vkm6iuwhvcfpct8` (`rol_id`),
  CONSTRAINT `FKshkwj12wg6vkm6iuwhvcfpct8` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bienesraices.usuario: ~1 rows (aproximadamente)
INSERT INTO `usuario` (`id`, `apellidos`, `created_at`, `nombres`, `password`, `updated_at`, `username`, `rol_id`) VALUES
	(1, 'Farfan', '2024-11-21 19:25:05.000000', 'Gustavo', '$2a$10$gSYThLBk1henbDoyhAktyedlxAju9PnebDBngtIACVnezYRozWwSa', '2024-11-21 19:25:05.000000', 'gfarfan', 1);

-- Volcando estructura para tabla bienesraices.usuario_seq
CREATE TABLE IF NOT EXISTS `usuario_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bienesraices.usuario_seq: ~1 rows (aproximadamente)
INSERT INTO `usuario_seq` (`next_val`) VALUES
	(51);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
