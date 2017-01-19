-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 10, 2017 at 03:23 PM
-- Server version: 5.1.33
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rob`
--

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) unsigned DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=91 ;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, NULL, NULL, 'controllers', 1, 98),
(3, 1, NULL, NULL, 'Groups', 2, 5),
(4, 3, NULL, NULL, 'add', 3, 4),
(14, 1, NULL, NULL, 'Pages', 6, 9),
(15, 14, NULL, NULL, 'display', 7, 8),
(16, 1, NULL, NULL, 'Users', 10, 19),
(18, 16, NULL, NULL, 'login', 11, 12),
(19, 16, NULL, NULL, 'add', 13, 14),
(22, 1, NULL, NULL, 'Posts', 20, 41),
(23, 22, NULL, NULL, 'index', 21, 22),
(24, 22, NULL, NULL, 'view', 23, 24),
(25, 22, NULL, NULL, 'add', 25, 26),
(26, 22, NULL, NULL, 'edit', 27, 28),
(27, 22, NULL, NULL, 'delete', 29, 30),
(28, 22, NULL, NULL, 'admin_index', 31, 32),
(29, 22, NULL, NULL, 'admin_view', 33, 34),
(30, 22, NULL, NULL, 'admin_add', 35, 36),
(31, 22, NULL, NULL, 'admin_edit', 37, 38),
(32, 22, NULL, NULL, 'admin_delete', 39, 40),
(33, 16, NULL, NULL, 'initDB', 15, 16),
(34, 16, NULL, NULL, 'logout', 17, 18),
(63, 1, NULL, NULL, 'Acl', 42, 97),
(64, 63, NULL, NULL, 'Acl', 43, 48),
(65, 64, NULL, NULL, 'index', 44, 45),
(66, 64, NULL, NULL, 'admin_index', 46, 47),
(67, 63, NULL, NULL, 'Acos', 49, 60),
(68, 67, NULL, NULL, 'admin_index', 50, 51),
(69, 67, NULL, NULL, 'admin_empty_acos', 52, 53),
(70, 67, NULL, NULL, 'admin_build_acl', 54, 55),
(71, 67, NULL, NULL, 'admin_prune_acos', 56, 57),
(72, 67, NULL, NULL, 'admin_synchronize', 58, 59),
(73, 63, NULL, NULL, 'Aros', 61, 96),
(74, 73, NULL, NULL, 'admin_index', 62, 63),
(75, 73, NULL, NULL, 'admin_check', 64, 65),
(76, 73, NULL, NULL, 'admin_users', 66, 67),
(77, 73, NULL, NULL, 'admin_update_user_role', 68, 69),
(78, 73, NULL, NULL, 'admin_ajax_role_permissions', 70, 71),
(79, 73, NULL, NULL, 'admin_role_permissions', 72, 73),
(80, 73, NULL, NULL, 'admin_user_permissions', 74, 75),
(81, 73, NULL, NULL, 'admin_empty_permissions', 76, 77),
(82, 73, NULL, NULL, 'admin_clear_user_specific_permissions', 78, 79),
(83, 73, NULL, NULL, 'admin_grant_all_controllers', 80, 81),
(84, 73, NULL, NULL, 'admin_deny_all_controllers', 82, 83),
(85, 73, NULL, NULL, 'admin_get_role_controller_permission', 84, 85),
(86, 73, NULL, NULL, 'admin_grant_role_permission', 86, 87),
(87, 73, NULL, NULL, 'admin_deny_role_permission', 88, 89),
(88, 73, NULL, NULL, 'admin_get_user_controller_permission', 90, 91),
(89, 73, NULL, NULL, 'admin_grant_user_permission', 92, 93),
(90, 73, NULL, NULL, 'admin_deny_user_permission', 94, 95);

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) unsigned DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(2, NULL, 'Group', 1, 'Group', 3, 6),
(3, NULL, 'Group', 2, 'Group', 7, 10),
(4, 2, 'User', 1, 'User', 4, 5),
(5, 3, 'User', 2, 'User', 8, 9);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) unsigned NOT NULL,
  `aco_id` int(10) unsigned NOT NULL,
  `_create` char(2) NOT NULL DEFAULT '0',
  `_read` char(2) NOT NULL DEFAULT '0',
  `_update` char(2) NOT NULL DEFAULT '0',
  `_delete` char(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(1, 2, 1, '1', '1', '1', '1'),
(2, 3, 1, '-1', '-1', '-1', '-1'),
(3, 3, 19, '1', '1', '1', '1'),
(4, 3, 34, '1', '1', '1', '1'),
(5, 3, 18, '1', '1', '1', '1'),
(6, 5, 25, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Admin', '2014-07-23 10:45:27', '2014-07-23 10:45:27'),
(2, 'User', '2014-07-23 10:45:31', '2014-07-23 10:45:31');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `posts`
--


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` char(40) NOT NULL,
  `group_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `group_id`, `status`, `created`, `modified`) VALUES
(1, 'faruq', 'faruq@gmail.com', '2f513d0aefa2b4943892320890413111f92e1a2d', 1, 0, '2014-07-23 10:46:14', '2014-07-23 10:46:14'),
(2, 'faruq1', '', '2f513d0aefa2b4943892320890413111f92e1a2d', 2, 0, '2014-07-23 10:58:53', '2014-07-23 10:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE IF NOT EXISTS `widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `part_no` varchar(12) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `widgets`
--

