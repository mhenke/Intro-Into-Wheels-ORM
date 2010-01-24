-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.31-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema orm
--

CREATE DATABASE IF NOT EXISTS orm;
USE orm;

--
-- Definition of table `authors`
--

DROP TABLE IF EXISTS `authors`;
CREATE TABLE `authors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `lastName` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` (`id`,`createdAt`,`updatedAt`,`firstName`,`deletedAt`,`lastName`) VALUES 
 (4,'2010-01-19 19:30:05','2010-01-16 19:48:31','Sun',NULL,'Tzu'),
 (5,'2010-01-20 19:08:37',NULL,'John',NULL,'Doe'),
 (6,'2010-01-20 19:16:35',NULL,'John',NULL,'Doe'),
 (7,'2010-01-20 19:16:35',NULL,'Jane',NULL,'Done'),
 (8,'2010-01-20 19:16:35',NULL,'Joe',NULL,'Jones'),
 (9,'2010-01-20 19:18:09',NULL,'John',NULL,'Doe'),
 (10,'2010-01-20 19:18:09',NULL,'Jane',NULL,'Done'),
 (11,'2010-01-20 19:18:09',NULL,'Joe',NULL,'Jones'),
 (12,'2010-01-20 19:19:12',NULL,'John',NULL,'Doe'),
 (13,'2010-01-20 19:19:12',NULL,'Jane',NULL,'Done'),
 (14,'2010-01-20 19:19:12',NULL,'Joe',NULL,'Jones'),
 (15,'2010-01-20 19:19:44',NULL,'John',NULL,'Doe'),
 (16,'2010-01-20 19:19:44',NULL,'Jane',NULL,'Done'),
 (17,'2010-01-20 19:19:44',NULL,'Joe',NULL,'Jones'),
 (18,'2010-01-20 21:00:37',NULL,'John',NULL,'Doe'),
 (19,'2010-01-20 21:00:37',NULL,'Jane',NULL,'Done'),
 (20,'2010-01-20 21:00:37',NULL,'Joe',NULL,'Jones'),
 (21,'2010-01-20 21:03:22',NULL,'Mike',NULL,'Henke'),
 (22,'2010-01-20 21:23:59',NULL,'John',NULL,'Doe'),
 (23,'2010-01-20 21:23:59',NULL,'Jane',NULL,'Done'),
 (24,'2010-01-20 21:23:59',NULL,'Joe',NULL,'Jones'),
 (25,'2010-01-21 10:30:16',NULL,'John',NULL,'Doe'),
 (26,'2010-01-21 10:30:16',NULL,'Jane',NULL,'Done'),
 (27,'2010-01-21 10:30:16',NULL,'Joe',NULL,'Jones'),
 (28,'2010-01-21 18:16:30',NULL,'John',NULL,'Doe'),
 (29,'2010-01-21 18:16:30',NULL,'Jane',NULL,'Done'),
 (30,'2010-01-21 18:16:30',NULL,'Joe',NULL,'Jones'),
 (31,'2010-01-21 21:50:17',NULL,'John',NULL,'Doe'),
 (32,'2010-01-21 21:50:17',NULL,'Jane',NULL,'Done'),
 (33,'2010-01-21 21:50:17',NULL,'Joe',NULL,'Jones'),
 (34,'2010-01-21 22:01:36',NULL,'John',NULL,'Doe'),
 (35,'2010-01-21 22:01:36',NULL,'Jane',NULL,'Done'),
 (36,'2010-01-21 22:01:37',NULL,'Joe',NULL,'Jones');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;


--
-- Definition of table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;


--
-- Definition of table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` varchar(45) NOT NULL,
  `title` varchar(100) NOT NULL,
  `authorid` int(10) unsigned NOT NULL DEFAULT '1',
  `post_author_id` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`,`body`,`title`,`authorid`,`post_author_id`) VALUES 
 (1,'this is the body','This is how to update with findbykey, update title, then save',4,4),
 (2,'this is the body','This is how to update with findybykey then update',4,4),
 (3,'this is the body','This is how to pass in a structure with a key into findbykey then update',4,4),
 (4,'this is the body','This is how to pass in a structure with a key into updatebykey',4,4),
 (7,'this is the body','this is the title',4,4),
 (8,'this is the body','this is the title',4,4),
 (9,'this is the body','this is the title',4,4),
 (11,'this is the body','this is the title',4,4);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;


--
-- Definition of table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `twitter` varchar(45) NOT NULL,
  `website` varchar(45) NOT NULL,
  `linkedin` varchar(45) NOT NULL,
  `userid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profiles`
--

/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` (`id`,`twitter`,`website`,`linkedin`,`userid`) VALUES 
 (1,'mikehenke','http://www.henke.ws','n/a',1);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `profileid` int(10) unsigned NOT NULL,
  `email` varchar(45) NOT NULL,
  `age` int(10) unsigned NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`firstname`,`lastname`,`profileid`,`email`,`age`,`password`) VALUES 
 (1,'Mike','Henke',1,'henke.mike@gmail.com',33,'password');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
