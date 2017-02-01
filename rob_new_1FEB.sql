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

-- Dumping structure for table rob.acos
CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) unsigned DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=latin1;

-- Dumping data for table rob.acos: ~91 rows (approximately)
/*!40000 ALTER TABLE `acos` DISABLE KEYS */;
INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
	(1, NULL, NULL, NULL, 'controllers', 1, 182),
	(3, 1, NULL, NULL, 'Groups', 2, 9),
	(4, 3, NULL, NULL, 'add', 3, 4),
	(14, 1, NULL, NULL, 'Pages', 10, 17),
	(15, 14, NULL, NULL, 'display', 11, 12),
	(16, 1, NULL, NULL, 'Users', 18, 37),
	(18, 16, NULL, NULL, 'login', 19, 20),
	(19, 16, NULL, NULL, 'add', 21, 22),
	(34, 16, NULL, NULL, 'logout', 23, 24),
	(91, 1, NULL, NULL, 'Api', 38, 55),
	(92, 91, NULL, NULL, 'api_login', 39, 40),
	(93, 91, NULL, NULL, 'categories_index', 41, 42),
	(94, 91, NULL, NULL, 'categories_view', 43, 44),
	(95, 91, NULL, NULL, 'categories_add', 45, 46),
	(96, 91, NULL, NULL, 'categories_edit', 47, 48),
	(97, 91, NULL, NULL, 'categories_delete', 49, 50),
	(98, 91, NULL, NULL, 'isAdmin', 51, 52),
	(99, 91, NULL, NULL, 'isAuthorized', 53, 54),
	(100, 1, NULL, NULL, 'Categories', 56, 81),
	(101, 100, NULL, NULL, 'index', 57, 58),
	(102, 100, NULL, NULL, 'view', 59, 60),
	(103, 100, NULL, NULL, 'add', 61, 62),
	(104, 100, NULL, NULL, 'edit', 63, 64),
	(105, 100, NULL, NULL, 'delete', 65, 66),
	(106, 100, NULL, NULL, 'admin_index', 67, 68),
	(107, 100, NULL, NULL, 'admin_view', 69, 70),
	(108, 100, NULL, NULL, 'admin_add', 71, 72),
	(109, 100, NULL, NULL, 'admin_edit', 73, 74),
	(110, 100, NULL, NULL, 'admin_delete', 75, 76),
	(111, 100, NULL, NULL, 'isAdmin', 77, 78),
	(112, 100, NULL, NULL, 'isAuthorized', 79, 80),
	(113, 3, NULL, NULL, 'isAdmin', 5, 6),
	(114, 3, NULL, NULL, 'isAuthorized', 7, 8),
	(115, 1, NULL, NULL, 'Outlets', 82, 97),
	(116, 115, NULL, NULL, 'index', 83, 84),
	(117, 115, NULL, NULL, 'view', 85, 86),
	(118, 115, NULL, NULL, 'add', 87, 88),
	(119, 115, NULL, NULL, 'edit', 89, 90),
	(120, 115, NULL, NULL, 'delete', 91, 92),
	(121, 115, NULL, NULL, 'isAdmin', 93, 94),
	(122, 115, NULL, NULL, 'isAuthorized', 95, 96),
	(123, 14, NULL, NULL, 'isAdmin', 13, 14),
	(124, 14, NULL, NULL, 'isAuthorized', 15, 16),
	(125, 1, NULL, NULL, 'UserLevelAccesses', 98, 113),
	(126, 125, NULL, NULL, 'index', 99, 100),
	(127, 125, NULL, NULL, 'view', 101, 102),
	(128, 125, NULL, NULL, 'add', 103, 104),
	(129, 125, NULL, NULL, 'edit', 105, 106),
	(130, 125, NULL, NULL, 'delete', 107, 108),
	(131, 125, NULL, NULL, 'isAdmin', 109, 110),
	(132, 125, NULL, NULL, 'isAuthorized', 111, 112),
	(133, 16, NULL, NULL, 'index', 25, 26),
	(134, 16, NULL, NULL, 'edit', 27, 28),
	(135, 16, NULL, NULL, 'delete', 29, 30),
	(136, 16, NULL, NULL, 'activate', 31, 32),
	(137, 16, NULL, NULL, 'isAdmin', 33, 34),
	(138, 16, NULL, NULL, 'isAuthorized', 35, 36),
	(139, 1, NULL, NULL, 'Acl', 114, 181),
	(140, 139, NULL, NULL, 'Acl', 115, 124),
	(141, 140, NULL, NULL, 'index', 116, 117),
	(142, 140, NULL, NULL, 'admin_index', 118, 119),
	(143, 140, NULL, NULL, 'isAdmin', 120, 121),
	(144, 140, NULL, NULL, 'isAuthorized', 122, 123),
	(145, 139, NULL, NULL, 'Acos', 125, 140),
	(146, 145, NULL, NULL, 'admin_index', 126, 127),
	(147, 145, NULL, NULL, 'admin_empty_acos', 128, 129),
	(148, 145, NULL, NULL, 'admin_build_acl', 130, 131),
	(149, 145, NULL, NULL, 'admin_prune_acos', 132, 133),
	(150, 145, NULL, NULL, 'admin_synchronize', 134, 135),
	(151, 145, NULL, NULL, 'isAdmin', 136, 137),
	(152, 145, NULL, NULL, 'isAuthorized', 138, 139),
	(153, 139, NULL, NULL, 'Aros', 141, 180),
	(154, 153, NULL, NULL, 'admin_index', 142, 143),
	(155, 153, NULL, NULL, 'admin_check', 144, 145),
	(156, 153, NULL, NULL, 'admin_users', 146, 147),
	(157, 153, NULL, NULL, 'admin_update_user_role', 148, 149),
	(158, 153, NULL, NULL, 'admin_ajax_role_permissions', 150, 151),
	(159, 153, NULL, NULL, 'admin_role_permissions', 152, 153),
	(160, 153, NULL, NULL, 'admin_user_permissions', 154, 155),
	(161, 153, NULL, NULL, 'admin_empty_permissions', 156, 157),
	(162, 153, NULL, NULL, 'admin_clear_user_specific_permissions', 158, 159),
	(163, 153, NULL, NULL, 'admin_grant_all_controllers', 160, 161),
	(164, 153, NULL, NULL, 'admin_deny_all_controllers', 162, 163),
	(165, 153, NULL, NULL, 'admin_get_role_controller_permission', 164, 165),
	(166, 153, NULL, NULL, 'admin_grant_role_permission', 166, 167),
	(167, 153, NULL, NULL, 'admin_deny_role_permission', 168, 169),
	(168, 153, NULL, NULL, 'admin_get_user_controller_permission', 170, 171),
	(169, 153, NULL, NULL, 'admin_grant_user_permission', 172, 173),
	(170, 153, NULL, NULL, 'admin_deny_user_permission', 174, 175),
	(171, 153, NULL, NULL, 'isAdmin', 176, 177),
	(172, 153, NULL, NULL, 'isAuthorized', 178, 179);
/*!40000 ALTER TABLE `acos` ENABLE KEYS */;


-- Dumping structure for table rob.aros
CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) unsigned DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table rob.aros: ~5 rows (approximately)
/*!40000 ALTER TABLE `aros` DISABLE KEYS */;
INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
	(2, NULL, 'Group', 1, 'Group', 3, 6),
	(3, NULL, 'Group', 2, 'Group', 7, 10),
	(4, 2, 'User', 1, 'User', 4, 5),
	(5, 3, 'User', 2, 'User', 8, 9),
	(6, 2, 'User', 3, '', 11, 12);
/*!40000 ALTER TABLE `aros` ENABLE KEYS */;


-- Dumping structure for table rob.aros_acos
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

-- Dumping data for table rob.aros_acos: ~5 rows (approximately)
/*!40000 ALTER TABLE `aros_acos` DISABLE KEYS */;
INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
	(1, 2, 1, '1', '1', '1', '1'),
	(2, 3, 1, '-1', '-1', '-1', '-1'),
	(3, 3, 19, '1', '1', '1', '1'),
	(4, 3, 34, '1', '1', '1', '1'),
	(5, 3, 18, '1', '1', '1', '1');
/*!40000 ALTER TABLE `aros_acos` ENABLE KEYS */;


-- Dumping structure for table rob.categories
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

-- Dumping data for table rob.categories: ~6 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `status`, `created_by`, `created_date`) VALUES
	(10, 'Test', '1', 2, '2017-01-10 18:06:00'),
	(11, 'test333', '1', 2, '2017-01-10 18:10:00'),
	(14, 'test json 2', '1', 2, '2017-01-11 11:43:00'),
	(15, 'test json 2444', '1', 2, '2017-01-11 11:43:00'),
	(16, 'Rest 1', '1', 2, '2017-01-11 11:43:00'),
	(17, 'Rest 2', '1', 2, '2017-01-11 11:43:00');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;


-- Dumping structure for table rob.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table rob.groups: ~2 rows (approximately)
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` (`id`, `name`, `created`, `modified`) VALUES
	(1, 'Admin', '2014-07-23 10:45:27', '2014-07-23 10:45:27'),
	(2, 'User', '2014-07-23 10:45:31', '2014-07-23 10:45:31');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;


-- Dumping structure for table rob.outlets
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
  `modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table rob.outlets: ~0 rows (approximately)
/*!40000 ALTER TABLE `outlets` DISABLE KEYS */;
INSERT INTO `outlets` (`id`, `name`, `category`, `outlet_user`, `email_id`, `mobile1`, `mobile2`, `landline`, `doorno`, `street`, `address`, `pincode`, `landmark`, `prefered_contact_name`, `prefered_contact_number`, `prefered_contact_time`, `geo_latitude`, `geo_longitude`, `unique_id`, `subscription_date`, `subscription_duration`, `subscription_amount`, `subscription_expiry`, `status`, `created_by`, `created_date`, `modified_by`, `modified_date`, `image`) VALUES
	(6, 'Outlet 1', 16, 3, 'test@test.com', '9010887760', '9011111111', '', '', '', '', '', '', '', '', '', '', '', '', '2017-01-12', NULL, NULL, '2017-01-12', '1', 1, '2017-01-12 07:24:00', 1, '2017-01-12 12:55:13', 'OUTLET1_6.jpg');
/*!40000 ALTER TABLE `outlets` ENABLE KEYS */;


-- Dumping structure for table rob.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table rob.posts: ~0 rows (approximately)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;


-- Dumping structure for table rob.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` char(40) NOT NULL,
  `group_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table rob.users: ~3 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `group_id`, `status`, `created`, `modified`) VALUES
	(1, 'Faruq Shaik', 'faruq', 'faruq@gmail.com', '2f513d0aefa2b4943892320890413111f92e1a2d', 1, 0, '2014-07-23 10:46:14', '2014-07-23 10:46:14'),
	(2, 'shaik', 'faruq1', 'faruq1256@gmail.com', '2f513d0aefa2b4943892320890413111f92e1a2d', 2, 0, '2014-07-23 10:58:53', '2014-07-23 10:58:53'),
	(3, '', 'shaik', 'shaik1256@gmail.com', 'f69a2881d349b34ae1518a04b646f3edb06bc4b8', 1, 0, '2017-01-11 19:19:14', '2017-01-11 19:19:14');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- Dumping structure for table rob.widgets
CREATE TABLE IF NOT EXISTS `widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `part_no` varchar(12) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table rob.widgets: ~0 rows (approximately)
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
