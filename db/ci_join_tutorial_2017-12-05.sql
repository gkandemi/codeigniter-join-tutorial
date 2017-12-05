# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.1.16-MariaDB)
# Database: ci_join_tutorial
# Generation Time: 2017-12-05 14:41:43 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table egitmen
# ------------------------------------------------------------

DROP TABLE IF EXISTS `egitmen`;

CREATE TABLE `egitmen` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

LOCK TABLES `egitmen` WRITE;
/*!40000 ALTER TABLE `egitmen` DISABLE KEYS */;

INSERT INTO `egitmen` (`id`, `full_name`)
VALUES
	(1,'Gökhan Kandemir'),
	(2,'İlker İsmailoğlu'),
	(3,'Sado Demircioğlu');

/*!40000 ALTER TABLE `egitmen` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table kurslar
# ------------------------------------------------------------

DROP TABLE IF EXISTS `kurslar`;

CREATE TABLE `kurslar` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `egitmen_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

LOCK TABLES `kurslar` WRITE;
/*!40000 ALTER TABLE `kurslar` DISABLE KEYS */;

INSERT INTO `kurslar` (`id`, `egitmen_id`, `title`)
VALUES
	(1,1,'Codeigniter Eğitimi'),
	(2,1,'Vue JS Eğitimi'),
	(3,1,'React Eğitimi'),
	(4,2,'CSS Eğitimi'),
	(5,2,'HTML Eğitimi'),
	(6,2,'JQuery Eğitimi'),
	(7,3,'Depo Yönetim Eğitimi'),
	(8,3,'JavaScript Eğitimi'),
	(9,3,'Nargile Hazırlama Teknikleri');

/*!40000 ALTER TABLE `kurslar` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
