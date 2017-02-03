-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.16-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table rob_new.acos
CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) unsigned DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=latin1;

-- Dumping data for table rob_new.acos: ~95 rows (approximately)
/*!40000 ALTER TABLE `acos` DISABLE KEYS */;
INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
	(1, NULL, NULL, NULL, 'controllers', 1, 190),
	(3, 1, NULL, NULL, 'Groups', 2, 5),
	(4, 3, NULL, NULL, 'add', 3, 4),
	(14, 1, NULL, NULL, 'Pages', 6, 9),
	(15, 14, NULL, NULL, 'display', 7, 8),
	(16, 1, NULL, NULL, 'Users', 10, 19),
	(18, 16, NULL, NULL, 'login', 11, 12),
	(19, 16, NULL, NULL, 'add', 13, 14),
	(34, 16, NULL, NULL, 'logout', 15, 16),
	(91, 1, NULL, NULL, 'Api', 20, 49),
	(92, 91, NULL, NULL, 'api_login', 21, 22),
	(93, 91, NULL, NULL, 'categories_index', 23, 24),
	(94, 91, NULL, NULL, 'categories_view', 25, 26),
	(95, 91, NULL, NULL, 'categories_add', 27, 28),
	(96, 91, NULL, NULL, 'categories_edit', 29, 30),
	(97, 91, NULL, NULL, 'categories_delete', 31, 32),
	(100, 1, NULL, NULL, 'Categories', 50, 71),
	(101, 100, NULL, NULL, 'index', 51, 52),
	(102, 100, NULL, NULL, 'view', 53, 54),
	(103, 100, NULL, NULL, 'add', 55, 56),
	(104, 100, NULL, NULL, 'edit', 57, 58),
	(105, 100, NULL, NULL, 'delete', 59, 60),
	(106, 100, NULL, NULL, 'admin_index', 61, 62),
	(107, 100, NULL, NULL, 'admin_view', 63, 64),
	(108, 100, NULL, NULL, 'admin_add', 65, 66),
	(109, 100, NULL, NULL, 'admin_edit', 67, 68),
	(110, 100, NULL, NULL, 'admin_delete', 69, 70),
	(115, 1, NULL, NULL, 'Outlets', 72, 83),
	(116, 115, NULL, NULL, 'index', 73, 74),
	(117, 115, NULL, NULL, 'view', 75, 76),
	(118, 115, NULL, NULL, 'add', 77, 78),
	(119, 115, NULL, NULL, 'edit', 79, 80),
	(120, 115, NULL, NULL, 'delete', 81, 82),
	(125, 1, NULL, NULL, 'UserLevelAccesses', 84, 95),
	(126, 125, NULL, NULL, 'index', 85, 86),
	(127, 125, NULL, NULL, 'view', 87, 88),
	(128, 125, NULL, NULL, 'add', 89, 90),
	(129, 125, NULL, NULL, 'edit', 91, 92),
	(130, 125, NULL, NULL, 'delete', 93, 94),
	(173, 1, NULL, NULL, 'Posts', 96, 117),
	(174, 173, NULL, NULL, 'index', 97, 98),
	(175, 173, NULL, NULL, 'view', 99, 100),
	(176, 173, NULL, NULL, 'add', 101, 102),
	(177, 173, NULL, NULL, 'edit', 103, 104),
	(178, 173, NULL, NULL, 'delete', 105, 106),
	(179, 173, NULL, NULL, 'admin_index', 107, 108),
	(180, 173, NULL, NULL, 'admin_view', 109, 110),
	(181, 173, NULL, NULL, 'admin_add', 111, 112),
	(182, 173, NULL, NULL, 'admin_edit', 113, 114),
	(183, 173, NULL, NULL, 'admin_delete', 115, 116),
	(184, 16, NULL, NULL, 'initDB', 17, 18),
	(185, 1, NULL, NULL, 'Acl', 118, 173),
	(186, 185, NULL, NULL, 'Acl', 119, 124),
	(187, 186, NULL, NULL, 'index', 120, 121),
	(188, 186, NULL, NULL, 'admin_index', 122, 123),
	(189, 185, NULL, NULL, 'Acos', 125, 136),
	(190, 189, NULL, NULL, 'admin_index', 126, 127),
	(191, 189, NULL, NULL, 'admin_empty_acos', 128, 129),
	(192, 189, NULL, NULL, 'admin_build_acl', 130, 131),
	(193, 189, NULL, NULL, 'admin_prune_acos', 132, 133),
	(194, 189, NULL, NULL, 'admin_synchronize', 134, 135),
	(195, 185, NULL, NULL, 'Aros', 137, 172),
	(196, 195, NULL, NULL, 'admin_index', 138, 139),
	(197, 195, NULL, NULL, 'admin_check', 140, 141),
	(198, 195, NULL, NULL, 'admin_users', 142, 143),
	(199, 195, NULL, NULL, 'admin_update_user_role', 144, 145),
	(200, 195, NULL, NULL, 'admin_ajax_role_permissions', 146, 147),
	(201, 195, NULL, NULL, 'admin_role_permissions', 148, 149),
	(202, 195, NULL, NULL, 'admin_user_permissions', 150, 151),
	(203, 195, NULL, NULL, 'admin_empty_permissions', 152, 153),
	(204, 195, NULL, NULL, 'admin_clear_user_specific_permissions', 154, 155),
	(205, 195, NULL, NULL, 'admin_grant_all_controllers', 156, 157),
	(206, 195, NULL, NULL, 'admin_deny_all_controllers', 158, 159),
	(207, 195, NULL, NULL, 'admin_get_role_controller_permission', 160, 161),
	(208, 195, NULL, NULL, 'admin_grant_role_permission', 162, 163),
	(209, 195, NULL, NULL, 'admin_deny_role_permission', 164, 165),
	(210, 195, NULL, NULL, 'admin_get_user_controller_permission', 166, 167),
	(211, 195, NULL, NULL, 'admin_grant_user_permission', 168, 169),
	(212, 195, NULL, NULL, 'admin_deny_user_permission', 170, 171),
	(213, 91, NULL, NULL, 'rest_users', 33, 34),
	(214, 91, NULL, NULL, 'request_users', 35, 36),
	(215, 91, NULL, NULL, 'request_login', 37, 38),
	(216, 91, NULL, NULL, 'bills_index', 39, 40),
	(217, 91, NULL, NULL, 'bills_view', 41, 42),
	(218, 91, NULL, NULL, 'bills_add', 43, 44),
	(219, 91, NULL, NULL, 'bills_edit', 45, 46),
	(220, 91, NULL, NULL, 'bills_delete', 47, 48),
	(221, 1, NULL, NULL, 'Bills', 174, 185),
	(222, 221, NULL, NULL, 'index', 175, 176),
	(223, 221, NULL, NULL, 'view', 177, 178),
	(224, 221, NULL, NULL, 'add', 179, 180),
	(225, 221, NULL, NULL, 'edit', 181, 182),
	(226, 221, NULL, NULL, 'delete', 183, 184),
	(227, 1, NULL, NULL, 'AclExtras', 186, 187),
	(228, 1, NULL, NULL, 'BzUtils', 188, 189);
/*!40000 ALTER TABLE `acos` ENABLE KEYS */;


-- Dumping structure for table rob_new.aros
CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) unsigned DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table rob_new.aros: ~11 rows (approximately)
/*!40000 ALTER TABLE `aros` DISABLE KEYS */;
INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
	(2, NULL, 'Group', 1, 'Group', 3, 6),
	(3, NULL, 'Group', 2, 'Group', 7, 22),
	(4, 2, 'User', 1, 'User', 4, 5),
	(5, 3, 'User', 2, 'User', 8, 9),
	(6, 2, 'User', 3, '', 23, 24),
	(7, 3, 'User', 4, '', 10, 11),
	(8, 3, 'User', 6, '', 12, 13),
	(9, 3, 'User', 7, '', 14, 15),
	(10, 3, 'User', 8, '', 16, 17),
	(11, 3, 'User', 9, '', 18, 19),
	(12, 3, 'User', 10, '', 20, 21);
/*!40000 ALTER TABLE `aros` ENABLE KEYS */;


-- Dumping structure for table rob_new.aros_acos
CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) unsigned NOT NULL,
  `aco_id` int(10) unsigned NOT NULL,
  `_create` char(2) NOT NULL DEFAULT '0',
  `_read` char(2) NOT NULL DEFAULT '0',
  `_update` char(2) NOT NULL DEFAULT '0',
  `_delete` char(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table rob_new.aros_acos: ~5 rows (approximately)
/*!40000 ALTER TABLE `aros_acos` DISABLE KEYS */;
INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
	(1, 2, 1, '1', '1', '1', '1'),
	(2, 3, 1, '-1', '-1', '-1', '-1'),
	(3, 3, 19, '-1', '-1', '-1', '-1'),
	(4, 3, 34, '1', '1', '1', '1'),
	(5, 3, 18, '1', '1', '1', '1');
/*!40000 ALTER TABLE `aros_acos` ENABLE KEYS */;


-- Dumping structure for table rob_new.bills
CREATE TABLE IF NOT EXISTS `bills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_unique_id` varchar(256) DEFAULT NULL,
  `bill_amount` float DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `bill_user` int(11) DEFAULT NULL,
  `bill_image` text,
  `comments` text,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_bills_users` (`bill_user`),
  KEY `FK_bills_users_2` (`created_by`),
  KEY `FK_bills_users_3` (`updated_by`),
  CONSTRAINT `FK_bills_users` FOREIGN KEY (`bill_user`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_bills_users_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_bills_users_3` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table rob_new.bills: ~3 rows (approximately)
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` (`id`, `bill_unique_id`, `bill_amount`, `status`, `bill_user`, `bill_image`, `comments`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
	(1, NULL, 2345, 1, 2, 'data:image/gif;base64,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', 'test bill2', 2, '2017-01-18 14:49:00', 2, '2017-01-18 14:49:00'),
	(2, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00'),
	(3, NULL, NULL, 0, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;


-- Dumping structure for table rob_new.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_categories_users` (`created_by`),
  CONSTRAINT `FK_categories_users` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Dumping data for table rob_new.categories: ~6 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `status`, `created_by`, `created_date`) VALUES
	(10, 'Test', '1', 1, '2017-01-10 18:06:00'),
	(11, 'test333', '1', 1, '2017-01-10 18:10:00'),
	(14, 'test json 2', '1', 1, '2017-01-11 11:43:00'),
	(15, 'test json 2444', '1', 1, '2017-01-11 11:43:00'),
	(16, 'Rest 1', '1', 1, '2017-01-11 11:43:00'),
	(17, 'Rest 2', '1', 1, '2017-01-11 11:43:00');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;


-- Dumping structure for table rob_new.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table rob_new.groups: ~2 rows (approximately)
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` (`id`, `name`, `created`, `modified`) VALUES
	(1, 'Admin', '2014-07-23 10:45:27', '2014-07-23 10:45:27'),
	(2, 'User', '2014-07-23 10:45:31', '2014-07-23 10:45:31');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;


-- Dumping structure for table rob_new.outlets
CREATE TABLE IF NOT EXISTS `outlets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `outlet_user` int(11) DEFAULT NULL,
  `email_id` varchar(256) DEFAULT NULL,
  `mobile1` varchar(256) DEFAULT NULL,
  `mobile2` varchar(256) DEFAULT NULL,
  `landline` varchar(256) DEFAULT NULL,
  `doorno` varchar(256) DEFAULT NULL,
  `street` text,
  `address` text,
  `pincode` varchar(256) DEFAULT NULL,
  `landmark` text,
  `prefered_contact_name` varchar(256) DEFAULT NULL,
  `prefered_contact_number` varchar(256) DEFAULT NULL,
  `prefered_contact_time` text,
  `geo_latitude` varchar(256) DEFAULT NULL,
  `geo_longitude` varchar(256) DEFAULT NULL,
  `unique_id` text,
  `subscription_date` date DEFAULT NULL,
  `subscription_duration` int(11) DEFAULT NULL,
  `subscription_amount` decimal(10,0) DEFAULT NULL,
  `subscription_expiry` date DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `image` text,
  PRIMARY KEY (`id`),
  KEY `FK_outlets_users` (`outlet_user`),
  KEY `FK_outlets_users_2` (`created_by`),
  KEY `FK_outlets_users_3` (`modified_by`),
  KEY `FK_outlets_categories` (`category`),
  CONSTRAINT `FK_outlets_categories` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_outlets_users` FOREIGN KEY (`outlet_user`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_outlets_users_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_outlets_users_3` FOREIGN KEY (`modified_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table rob_new.outlets: ~0 rows (approximately)
/*!40000 ALTER TABLE `outlets` DISABLE KEYS */;
/*!40000 ALTER TABLE `outlets` ENABLE KEYS */;


-- Dumping structure for table rob_new.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table rob_new.posts: ~0 rows (approximately)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;


-- Dumping structure for table rob_new.promocode_cataegories
CREATE TABLE IF NOT EXISTS `promocode_cataegories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promo_code_type` varchar(256) NOT NULL,
  `promo_code_definition` varchar(256) NOT NULL,
  `rewards` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table rob_new.promocode_cataegories: ~4 rows (approximately)
/*!40000 ALTER TABLE `promocode_cataegories` DISABLE KEYS */;
INSERT INTO `promocode_cataegories` (`id`, `promo_code_type`, `promo_code_definition`, `rewards`) VALUES
	(1, 'M', 'Marketing', 160),
	(2, 'MU', 'Marketing User', 120),
	(3, 'U', 'User', 100),
	(4, 'T', 'Transfer', 0);
/*!40000 ALTER TABLE `promocode_cataegories` ENABLE KEYS */;


-- Dumping structure for table rob_new.promo_codes
CREATE TABLE IF NOT EXISTS `promo_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `promo_code` varchar(256) NOT NULL,
  `promo_code_cat` int(11) NOT NULL,
  `notes` text,
  PRIMARY KEY (`id`),
  KEY `FK_promo_codes_promocode_cataegories` (`promo_code_cat`),
  KEY `FK_promo_codes_users` (`user_id`),
  CONSTRAINT `FK_promo_codes_promocode_cataegories` FOREIGN KEY (`promo_code_cat`) REFERENCES `promocode_cataegories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_promo_codes_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table rob_new.promo_codes: ~8 rows (approximately)
/*!40000 ALTER TABLE `promo_codes` DISABLE KEYS */;
INSERT INTO `promo_codes` (`id`, `user_id`, `promo_code`, `promo_code_cat`, `notes`) VALUES
	(1, 42, '#KLEwt', 3, NULL),
	(2, 43, 'H9wevs', 3, NULL),
	(3, 44, 'C!ol0p', 3, NULL),
	(4, 45, 'c*T9Ym', 3, NULL),
	(5, 46, 'Ly7cIw', 3, NULL),
	(6, 47, 'fgzH75', 3, NULL),
	(7, 48, 'QZckU0', 3, NULL),
	(8, 49, '4N5dqv', 3, NULL);
/*!40000 ALTER TABLE `promo_codes` ENABLE KEYS */;


-- Dumping structure for table rob_new.rewards
CREATE TABLE IF NOT EXISTS `rewards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `promo_code` varchar(256) DEFAULT NULL,
  `promo_code_cat` int(11) DEFAULT NULL,
  `rewards` int(11) NOT NULL,
  `ref_user` int(11) NOT NULL,
  `type` varchar(256) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notes` text,
  PRIMARY KEY (`id`),
  KEY `FK_rewards_users` (`user_id`),
  KEY `FK_rewards_users_2` (`ref_user`),
  CONSTRAINT `FK_rewards_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_rewards_users_2` FOREIGN KEY (`ref_user`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table rob_new.rewards: ~5 rows (approximately)
/*!40000 ALTER TABLE `rewards` DISABLE KEYS */;
INSERT INTO `rewards` (`id`, `user_id`, `promo_code`, `promo_code_cat`, `rewards`, `ref_user`, `type`, `created`, `notes`) VALUES
	(1, 42, '#KLEwt', 3, 50, 42, 'Promocode', '0000-00-00 00:00:00', 'refferd user = 48'),
	(2, 48, '#KLEwt', 3, 50, 42, 'Promocode', '0000-00-00 00:00:00', 'signup user = 48'),
	(4, 45, 'c*T9Ym', 3, 50, 45, 'Promocode', '0000-00-00 00:00:00', 'refferd user = 49'),
	(5, 49, 'c*T9Ym', 3, 50, 45, 'Promocode', '0000-00-00 00:00:00', 'signup user = 49'),
	(6, 45, '544533', 3, 50, 45, 'Transfer', '0000-00-00 00:00:00', 'refferd user = 49'),
	(7, 45, '', 4, -10, 45, 'Transfer', '0000-00-00 00:00:00', 'transfer to 49 from 45'),
	(8, 49, '', 4, 10, 45, 'Transfer', '0000-00-00 00:00:00', 'transfer to 49 from 45');
/*!40000 ALTER TABLE `rewards` ENABLE KEYS */;


-- Dumping structure for table rob_new.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` char(40) NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT '2',
  `status` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

-- Dumping data for table rob_new.users: ~43 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `group_id`, `status`, `created`, `modified`) VALUES
	(1, 'Faruq Shaik', 'faruq@gmail.com', 'faruq@gmail.com', '2f513d0aefa2b4943892320890413111f92e1a2d', 1, 1, '2014-07-23 10:46:14', '2014-07-23 10:46:14'),
	(2, 'shaik', 'faruq1', 'faruq1256@gmail.com', '2f513d0aefa2b4943892320890413111f92e1a2d', 2, 0, '2014-07-23 10:58:53', '2014-07-23 10:58:53'),
	(3, '', 'shaik', 'shaik1256@gmail.com', 'f69a2881d349b34ae1518a04b646f3edb06bc4b8', 1, 0, '2017-01-11 19:19:14', '2017-01-11 19:19:14'),
	(4, 'test test lname', '', 'test@test.com', '8d8d29dd4370af717ddb1752da2a3c31936c3e60', 2, 0, '2017-01-19 09:58:31', '2017-01-19 09:58:31'),
	(6, 'test test lname', 'tester', 'test@test.com', '8d8d29dd4370af717ddb1752da2a3c31936c3e60', 2, 0, '2017-01-19 10:01:39', '2017-01-19 10:01:39'),
	(7, 'test test lname', 'tester2', 'test@test.com', '8d8d29dd4370af717ddb1752da2a3c31936c3e60', 2, 0, '2017-01-19 10:02:55', '2017-01-19 10:02:55'),
	(8, 'test test lname', 'tester3', 'test@test.com', '8d8d29dd4370af717ddb1752da2a3c31936c3e60', 2, 0, '2017-01-19 10:03:34', '2017-01-19 10:03:34'),
	(9, 'test test lname', 'tester4', 'test@test.com', '8d8d29dd4370af717ddb1752da2a3c31936c3e60', 2, 0, '2017-01-19 10:04:04', '2017-01-19 10:04:04'),
	(10, 'test fname test lname', 'tester5', 'test@test.com', '8d8d29dd4370af717ddb1752da2a3c31936c3e60', 2, 0, '2017-01-19 10:06:44', '2017-01-19 10:30:56'),
	(14, 'asdasdasd', 'Faruq', 'fshaik@gmail.com', 'fshaik', 2, 0, '2017-02-01 07:11:22', '2017-02-01 07:11:22'),
	(15, '4sdsdsd', '4sdsdsd', 'fshaik@gmail.com', 'fshaik', 2, 0, '2017-02-01 07:12:57', '2017-02-01 07:12:57'),
	(16, '4335', '4335', 'fshaik@gmail.com', 'fshaik', 2, 0, '2017-02-01 07:13:25', '2017-02-01 07:13:25'),
	(17, '3543345', 'fshaik@gmail.com', 'fshaik@gmail.com', 'fshaik', 2, 0, '2017-02-01 07:14:34', '2017-02-01 07:14:34'),
	(19, '424324', 'fshaik2@gmail.com', 'fshaik2@gmail.com', 'fshaik', 2, 0, '2017-02-01 07:22:48', '2017-02-01 07:22:48'),
	(20, 'sboina', 'sagarsijju2@gmail.com', 'sagarsijju2@gmail.com', 'sboina', 2, 0, '2017-02-01 07:55:33', '2017-02-01 07:55:33'),
	(21, 'sboina2', 'sagarsijju@gmail.com', 'sagarsijju@gmail.com', 'sboina', 2, 0, '2017-02-01 07:59:18', '2017-02-01 07:59:18'),
	(22, 'sboina3', 'sagarsijju3@gmail.com', 'sagarsijju3@gmail.com', 'sboina', 2, 0, '2017-02-01 09:14:58', '2017-02-01 09:14:58'),
	(23, 'sboina4', 'sagarsijju4@gmail.com', 'sagarsijju4@gmail.com', 'sboina', 2, 0, '2017-02-01 09:16:18', '2017-02-01 09:59:38'),
	(25, 'sboina5', 'sagarsijju5@gmail.com', 'sagarsijju5@gmail.com', 'sboina', 2, 0, '2017-02-01 09:17:02', '2017-02-01 09:17:02'),
	(26, 'sboina6', 'sagarsijju6@gmail.com', 'sagarsijju6@gmail.com', 'sboina', 2, 0, '2017-02-01 09:19:44', '2017-02-01 09:19:44'),
	(27, 'sboina7', 'sagarsijju7@gmail.com', 'sagarsijju7@gmail.com', 'sboina', 2, 0, '2017-02-01 09:28:36', '2017-02-01 09:28:36'),
	(28, 'sboina8', 'sagarsijju8@gmail.com', 'sagarsijju8@gmail.com', 'sboina', 2, 0, '2017-02-01 09:29:32', '2017-02-01 09:29:32'),
	(29, 'sboina9', 'sagarsijju9@gmail.com', 'sagarsijju9@gmail.com', 'sboina', 2, 0, '2017-02-01 09:32:31', '2017-02-01 09:32:31'),
	(30, 'sboina19', 'sagarsijju19@gmail.com', 'sagarsijju19@gmail.com', 'sboina', 2, 0, '2017-02-01 09:33:39', '2017-02-01 09:33:39'),
	(31, 'sboina18', 'sagarsijju18@gmail.com', 'sagarsijju18@gmail.com', 'sboina', 2, 0, '2017-02-01 09:35:42', '2017-02-01 09:35:42'),
	(32, 'sboina13', 'sagarsijju13@gmail.com', 'sagarsijju13@gmail.com', 'sboina', 2, 0, '2017-02-01 09:38:54', '2017-02-01 09:38:54'),
	(33, 'sboina12', 'sagarsijju12@gmail.com', 'sagarsijju12@gmail.com', 'sboina', 2, 0, '2017-02-01 09:39:16', '2017-02-01 09:39:16'),
	(34, 'sboina11', 'sagarsijju11@gmail.com', 'sagarsijju11@gmail.com', 'sboina', 2, 0, '2017-02-01 09:39:25', '2017-02-01 09:39:25'),
	(35, 'sboina111', 'sagarsijju111@gmail.com', 'sagarsijju111@gmail.com', 'sboina', 2, 0, '2017-02-01 09:43:42', '2017-02-01 09:43:42'),
	(36, 'sboina121', 'sagarsijju121@gmail.com', 'sagarsijju121@gmail.com', 'sboina', 2, 1, '2017-02-01 09:44:12', '2017-02-02 06:40:14'),
	(37, 'sboina122', 'sagarsijju122@gmail.com', 'sagarsijju122@gmail.com', 'sboina', 2, 0, '2017-02-02 07:01:45', '2017-02-02 07:01:45'),
	(38, 'sboina1233', 'sagarsijju1233@gmail.com', 'sagarsijju1233@gmail.com', 'sboina', 2, 0, '2017-02-02 07:02:59', '2017-02-02 07:02:59'),
	(39, 'sboina123344', 'sagarsijju123344@gmail.com', 'sagarsijju123344@gmail.com', 'sboina', 2, 0, '2017-02-02 10:41:37', '2017-02-02 10:41:37'),
	(40, 'sboina12334455', 'sagarsijju12334455@gmail.com', 'sagarsijju12334455@gmail.com', 'd6f451d3703c72eabe1be95a7f94c986f2432fe4', 2, 1, '2017-02-02 12:43:20', '2017-02-02 12:43:20'),
	(41, 'sboina123344557', 'sagarsijju123344557@gmail.com', 'sagarsijju123344557@gmail.com', 'd6f451d3703c72eabe1be95a7f94c986f2432fe4', 2, 0, '2017-02-02 12:53:18', '2017-02-02 12:53:18'),
	(42, 'test11', 'test11@gmail.com', 'test11@gmail.com', 'd6f451d3703c72eabe1be95a7f94c986f2432fe4', 2, 0, '2017-02-03 08:43:42', '2017-02-03 08:43:42'),
	(43, 'test12', 'test12@gmail.com', 'test12@gmail.com', 'd6f451d3703c72eabe1be95a7f94c986f2432fe4', 2, 0, '2017-02-03 08:51:49', '2017-02-03 08:51:49'),
	(44, 'test13', 'test13@gmail.com', 'test13@gmail.com', 'd6f451d3703c72eabe1be95a7f94c986f2432fe4', 2, 0, '2017-02-03 09:10:57', '2017-02-03 09:10:57'),
	(45, 'test14', 'test14@gmail.com', 'test14@gmail.com', 'd6f451d3703c72eabe1be95a7f94c986f2432fe4', 2, 0, '2017-02-03 09:11:39', '2017-02-03 09:11:39'),
	(46, 'test15', 'test15@gmail.com', 'test15@gmail.com', 'd6f451d3703c72eabe1be95a7f94c986f2432fe4', 2, 0, '2017-02-03 09:16:00', '2017-02-03 09:16:00'),
	(47, 'test16', 'test16@gmail.com', 'test16@gmail.com', 'd6f451d3703c72eabe1be95a7f94c986f2432fe4', 2, 0, '2017-02-03 09:24:08', '2017-02-03 09:24:08'),
	(48, 'test17', 'test17@gmail.com', 'test17@gmail.com', 'd6f451d3703c72eabe1be95a7f94c986f2432fe4', 2, 0, '2017-02-03 09:25:00', '2017-02-03 09:25:00'),
	(49, 'test18', 'test18@gmail.com', 'test18@gmail.com', 'd6f451d3703c72eabe1be95a7f94c986f2432fe4', 2, 0, '2017-02-03 09:29:09', '2017-02-03 09:29:09');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- Dumping structure for table rob_new.user_details
CREATE TABLE IF NOT EXISTS `user_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(256) DEFAULT NULL,
  `last_name` varchar(256) DEFAULT NULL,
  `mobile` varchar(256) DEFAULT NULL,
  `promo_code` varchar(256) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` text,
  `profile_pic` text,
  `ip_address` varchar(256) DEFAULT NULL,
  `reffered_by` varchar(256) DEFAULT NULL,
  `mobile_info` text,
  `wallet_amount` double DEFAULT '0',
  `otp` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__users` (`user_id`),
  CONSTRAINT `FK__users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- Dumping data for table rob_new.user_details: ~35 rows (approximately)
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` (`id`, `user_id`, `first_name`, `last_name`, `mobile`, `promo_code`, `dob`, `address`, `profile_pic`, `ip_address`, `reffered_by`, `mobile_info`, `wallet_amount`, `otp`) VALUES
	(2, 9, 'test', 'test lname', '8239892333', 'promo12324', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
	(3, 10, 'test fname', 'test lname', '8239892333', 'promo1234567890', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
	(4, 14, NULL, NULL, '9985033361', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
	(5, 15, NULL, NULL, '9985033361', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
	(6, 16, NULL, NULL, '9985033361', '1256', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
	(7, 17, NULL, NULL, '9985033361', '1256', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
	(8, 19, NULL, NULL, '9985033361', '1256', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
	(9, 20, NULL, NULL, '9010887760', '6666', NULL, NULL, NULL, NULL, NULL, NULL, 0, '378945'),
	(10, 21, NULL, NULL, '9010887760', '6666', NULL, NULL, NULL, NULL, NULL, NULL, 0, '643819'),
	(11, 22, NULL, NULL, '9010887760', '6666', NULL, NULL, NULL, NULL, NULL, NULL, 0, '391674'),
	(12, 23, NULL, NULL, '9010887760', '6666', NULL, NULL, NULL, NULL, NULL, NULL, 0, '816709'),
	(13, 25, NULL, NULL, '9010887760', '6666', NULL, NULL, NULL, NULL, NULL, NULL, 0, '254807'),
	(14, 26, NULL, NULL, '9010887760', '6666', NULL, NULL, NULL, NULL, NULL, NULL, 0, '815402'),
	(15, 27, NULL, NULL, '9010887760', '6666', NULL, NULL, NULL, NULL, NULL, NULL, 0, '027359'),
	(16, 28, NULL, NULL, '9010887760', '6666', NULL, NULL, NULL, NULL, NULL, NULL, 0, '478259'),
	(17, 29, NULL, NULL, '9010887760', '6666', NULL, NULL, NULL, NULL, NULL, NULL, 0, '498150'),
	(18, 30, NULL, NULL, '9010887760', '6666', NULL, NULL, NULL, NULL, NULL, NULL, 0, '693710'),
	(19, 31, NULL, NULL, '9010887760', '6666', NULL, NULL, NULL, NULL, NULL, NULL, 0, '012634'),
	(20, 33, NULL, NULL, '9010887760', '6666', NULL, NULL, NULL, NULL, NULL, NULL, 0, '830524'),
	(21, 34, NULL, NULL, '9010887760', '6666', NULL, NULL, NULL, NULL, NULL, NULL, 0, '651790'),
	(22, 35, NULL, NULL, '9010887760', '6666', NULL, NULL, NULL, NULL, NULL, NULL, 0, '902784'),
	(23, 36, NULL, NULL, '9010887760', '6666', NULL, NULL, NULL, NULL, NULL, NULL, 0, '053194'),
	(24, 37, NULL, NULL, '9985033361', '6666', NULL, NULL, NULL, NULL, NULL, NULL, 0, '079385'),
	(25, 38, NULL, NULL, '9010887760', '6666', NULL, NULL, NULL, NULL, NULL, NULL, 0, '674983'),
	(26, 39, NULL, NULL, '9010887760', '6666', NULL, NULL, NULL, NULL, NULL, NULL, 0, '457916'),
	(27, 40, NULL, NULL, '9010887760', '6666', NULL, NULL, NULL, NULL, NULL, NULL, 0, '517698'),
	(28, 41, NULL, NULL, '9010887760', '6666', NULL, NULL, NULL, NULL, NULL, NULL, 0, '736584'),
	(29, 42, NULL, NULL, '9010887760', '6666', NULL, NULL, NULL, NULL, NULL, NULL, 0, '968457'),
	(30, 43, NULL, NULL, '9010887760', '6666', NULL, NULL, NULL, NULL, NULL, NULL, 0, '790643'),
	(31, 44, NULL, NULL, '9010887760', '6666', NULL, NULL, NULL, NULL, NULL, NULL, 0, '365107'),
	(32, 45, NULL, NULL, '9010887760', '#KLEwt', NULL, NULL, NULL, NULL, NULL, NULL, 0, '694320'),
	(33, 46, NULL, NULL, '9010887760', '#KLEwt', NULL, NULL, NULL, NULL, NULL, NULL, 0, '348019'),
	(34, 47, NULL, NULL, '9010887760', '#KLEwt', NULL, NULL, NULL, NULL, NULL, NULL, 0, '829675'),
	(35, 48, NULL, NULL, '9010887760', '#KLEwt', NULL, NULL, NULL, NULL, NULL, NULL, 0, '796014'),
	(36, 49, NULL, NULL, '9010887760', 'c*T9Ym', NULL, NULL, NULL, NULL, NULL, NULL, 0, '716049');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;


-- Dumping structure for table rob_new.widgets
CREATE TABLE IF NOT EXISTS `widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `part_no` varchar(12) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table rob_new.widgets: ~0 rows (approximately)
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
