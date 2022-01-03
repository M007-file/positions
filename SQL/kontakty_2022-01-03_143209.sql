/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/ kontakty /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE kontakty;

DROP TABLE IF EXISTS emaily;
CREATE TABLE `emaily` (
  `create_time` datetime DEFAULT NULL COMMENT 'Create Time',
  `update_time` datetime DEFAULT NULL COMMENT 'Update Time',
  `email` varchar(255) NOT NULL COMMENT 'Primary Key',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS firmy;
CREATE TABLE `firmy` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `create_time` datetime DEFAULT NULL COMMENT 'Create Time',
  `update_time` datetime DEFAULT NULL COMMENT 'Update Time',
  `CompanyName` varchar(255) DEFAULT NULL,
  `CompanyUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS sources;
CREATE TABLE `sources` (
  `create_time` datetime DEFAULT NULL COMMENT 'Create Time',
  `update_time` datetime DEFAULT NULL COMMENT 'Update Time',
  `Website` varchar(255) NOT NULL COMMENT 'URL',
  PRIMARY KEY (`Website`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS urls;
CREATE TABLE `urls` (
  `create_time` datetime DEFAULT NULL COMMENT 'Create Time',
  `update_time` datetime DEFAULT NULL COMMENT 'Update Time',
  `Website` varchar(255) NOT NULL COMMENT 'URL',
  PRIMARY KEY (`Website`),
  UNIQUE KEY `Website` (`Website`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;