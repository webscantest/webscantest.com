-- Adminer 4.8.0 MySQL 5.5.62-0ubuntu0.14.04.1 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) DEFAULT NULL,
  `passwd` varchar(100) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `accounts` (`id`, `uname`, `passwd`, `fname`, `lname`) VALUES
(1,	'admin',	'21232f297a57a5a743894a0e4a801fc3',	'Admin',	'King'),
(2,	'testuser',	'179ad45c6ce2cb97cf1029e212046e81',	'Test',	'User');

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `price` double(10,0) unsigned DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `inventory` (`id`, `name`, `description`, `price`) VALUES
(1,	'Rake',	'clean up leaves',	50),
(2,	'Shovel',	'Dig away',	45),
(3,	'Broom',	'Sweep it up',	40),
(4,	'Deluxe Rake',	'Premuim quality leave cleaneruper',	75),
(5,	'Economy Rake ',	'Cheapy rake',	20),
(6,	'Deluxe Shovel',	'dig better',	70),
(7,	'Economy Shovel',	'Make digging harder',	15),
(8,	'Deluxe Broom',	'Clean faster, better, easier',	65),
(9,	'Economy Broom',	'Dirtier when you are done than when you started',	20);

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `products` text NOT NULL,
  `shipping_firstname` varchar(100) DEFAULT NULL,
  `shipping_lastname` varchar(100) DEFAULT NULL,
  `shipping_address` varchar(100) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(2) DEFAULT NULL,
  `shipping_zip` varchar(15) DEFAULT NULL,
  `shipping_email` varchar(100) DEFAULT NULL,
  `billing_firstname` varchar(100) DEFAULT NULL,
  `billing_lastname` varchar(100) DEFAULT NULL,
  `billing_address` varchar(100) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(2) DEFAULT NULL,
  `billing_zip` varchar(15) DEFAULT NULL,
  `billing_email` varchar(100) DEFAULT NULL,
  `billing_CC_number` varchar(20) DEFAULT NULL,
  `billing_CC_expire` varchar(20) DEFAULT NULL,
  `billing_CC_CVV` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `price` double(10,0) unsigned DEFAULT NULL,
  `photo` varchar(512) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `products` (`id`, `name`, `description`, `price`, `photo`) VALUES
(1,	'Fancy Mop',	'A really fancy Mop',	100,	'http://www.krogerkrazy.com/wp-content/uploads/2011/11/rubbermaid-mop.jpg'),
(2,	'Fancy Vacuum',	'A very fancy vacuum.',	300,	'http://www.topvacuumsforpethair.com/wp-content/uploads/2014/03/71uOf512UkL._SL1500_.jpg'),
(3,	'Rainbow Towels',	'Towels in the assortment of rainbow',	10,	'http://www.towelstorm.com/image/cache/data/bath-towel/BT01/bt-800x800.jpg');

-- 2021-03-25 10:21:27
