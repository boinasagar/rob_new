-- phpMyAdmin SQL Dump
-- version 4.4.15.8
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 12, 2017 at 09:11 PM
-- Server version: 5.6.31
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rob`
--

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) unsigned DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, NULL, NULL, 'controllers', 1, 158),
(3, 1, NULL, NULL, 'Groups', 2, 5),
(4, 3, NULL, NULL, 'add', 3, 4),
(14, 1, NULL, NULL, 'Pages', 6, 9),
(15, 14, NULL, NULL, 'display', 7, 8),
(16, 1, NULL, NULL, 'Users', 10, 19),
(18, 16, NULL, NULL, 'login', 11, 12),
(19, 16, NULL, NULL, 'add', 13, 14),
(34, 16, NULL, NULL, 'logout', 15, 16),
(91, 1, NULL, NULL, 'Api', 20, 33),
(92, 91, NULL, NULL, 'api_login', 21, 22),
(93, 91, NULL, NULL, 'categories_index', 23, 24),
(94, 91, NULL, NULL, 'categories_view', 25, 26),
(95, 91, NULL, NULL, 'categories_add', 27, 28),
(96, 91, NULL, NULL, 'categories_edit', 29, 30),
(97, 91, NULL, NULL, 'categories_delete', 31, 32),
(100, 1, NULL, NULL, 'Categories', 34, 55),
(101, 100, NULL, NULL, 'index', 35, 36),
(102, 100, NULL, NULL, 'view', 37, 38),
(103, 100, NULL, NULL, 'add', 39, 40),
(104, 100, NULL, NULL, 'edit', 41, 42),
(105, 100, NULL, NULL, 'delete', 43, 44),
(106, 100, NULL, NULL, 'admin_index', 45, 46),
(107, 100, NULL, NULL, 'admin_view', 47, 48),
(108, 100, NULL, NULL, 'admin_add', 49, 50),
(109, 100, NULL, NULL, 'admin_edit', 51, 52),
(110, 100, NULL, NULL, 'admin_delete', 53, 54),
(115, 1, NULL, NULL, 'Outlets', 56, 67),
(116, 115, NULL, NULL, 'index', 57, 58),
(117, 115, NULL, NULL, 'view', 59, 60),
(118, 115, NULL, NULL, 'add', 61, 62),
(119, 115, NULL, NULL, 'edit', 63, 64),
(120, 115, NULL, NULL, 'delete', 65, 66),
(125, 1, NULL, NULL, 'UserLevelAccesses', 68, 79),
(126, 125, NULL, NULL, 'index', 69, 70),
(127, 125, NULL, NULL, 'view', 71, 72),
(128, 125, NULL, NULL, 'add', 73, 74),
(129, 125, NULL, NULL, 'edit', 75, 76),
(130, 125, NULL, NULL, 'delete', 77, 78),
(173, 1, NULL, NULL, 'Posts', 80, 101),
(174, 173, NULL, NULL, 'index', 81, 82),
(175, 173, NULL, NULL, 'view', 83, 84),
(176, 173, NULL, NULL, 'add', 85, 86),
(177, 173, NULL, NULL, 'edit', 87, 88),
(178, 173, NULL, NULL, 'delete', 89, 90),
(179, 173, NULL, NULL, 'admin_index', 91, 92),
(180, 173, NULL, NULL, 'admin_view', 93, 94),
(181, 173, NULL, NULL, 'admin_add', 95, 96),
(182, 173, NULL, NULL, 'admin_edit', 97, 98),
(183, 173, NULL, NULL, 'admin_delete', 99, 100),
(184, 16, NULL, NULL, 'initDB', 17, 18),
(185, 1, NULL, NULL, 'Acl', 102, 157),
(186, 185, NULL, NULL, 'Acl', 103, 108),
(187, 186, NULL, NULL, 'index', 104, 105),
(188, 186, NULL, NULL, 'admin_index', 106, 107),
(189, 185, NULL, NULL, 'Acos', 109, 120),
(190, 189, NULL, NULL, 'admin_index', 110, 111),
(191, 189, NULL, NULL, 'admin_empty_acos', 112, 113),
(192, 189, NULL, NULL, 'admin_build_acl', 114, 115),
(193, 189, NULL, NULL, 'admin_prune_acos', 116, 117),
(194, 189, NULL, NULL, 'admin_synchronize', 118, 119),
(195, 185, NULL, NULL, 'Aros', 121, 156),
(196, 195, NULL, NULL, 'admin_index', 122, 123),
(197, 195, NULL, NULL, 'admin_check', 124, 125),
(198, 195, NULL, NULL, 'admin_users', 126, 127),
(199, 195, NULL, NULL, 'admin_update_user_role', 128, 129),
(200, 195, NULL, NULL, 'admin_ajax_role_permissions', 130, 131),
(201, 195, NULL, NULL, 'admin_role_permissions', 132, 133),
(202, 195, NULL, NULL, 'admin_user_permissions', 134, 135),
(203, 195, NULL, NULL, 'admin_empty_permissions', 136, 137),
(204, 195, NULL, NULL, 'admin_clear_user_specific_permissions', 138, 139),
(205, 195, NULL, NULL, 'admin_grant_all_controllers', 140, 141),
(206, 195, NULL, NULL, 'admin_deny_all_controllers', 142, 143),
(207, 195, NULL, NULL, 'admin_get_role_controller_permission', 144, 145),
(208, 195, NULL, NULL, 'admin_grant_role_permission', 146, 147),
(209, 195, NULL, NULL, 'admin_deny_role_permission', 148, 149),
(210, 195, NULL, NULL, 'admin_get_user_controller_permission', 150, 151),
(211, 195, NULL, NULL, 'admin_grant_user_permission', 152, 153),
(212, 195, NULL, NULL, 'admin_deny_user_permission', 154, 155);

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) unsigned DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(2, NULL, 'Group', 1, 'Group', 3, 6),
(3, NULL, 'Group', 2, 'Group', 7, 10),
(4, 2, 'User', 1, 'User', 4, 5),
(5, 3, 'User', 2, 'User', 8, 9),
(6, 2, 'User', 3, '', 11, 12);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(10) unsigned NOT NULL,
  `aro_id` int(10) unsigned NOT NULL,
  `aco_id` int(10) unsigned NOT NULL,
  `_create` char(2) NOT NULL DEFAULT '0',
  `_read` char(2) NOT NULL DEFAULT '0',
  `_update` char(2) NOT NULL DEFAULT '0',
  `_delete` char(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(1, 2, 1, '1', '1', '1', '1'),
(2, 3, 1, '-1', '-1', '-1', '-1'),
(3, 3, 19, '-1', '-1', '-1', '-1'),
(4, 3, 34, '1', '1', '1', '1'),
(5, 3, 18, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_by`, `created_date`) VALUES
(10, 'Test', '1', 2, '2017-01-10 12:36:00'),
(11, 'test333', '1', 2, '2017-01-10 12:40:00'),
(14, 'test json 2', '1', 2, '2017-01-11 06:13:00'),
(15, 'test json 2444', '1', 2, '2017-01-11 06:13:00'),
(16, 'Rest 1', '1', 2, '2017-01-11 06:13:00'),
(17, 'Rest 2', '1', 2, '2017-01-11 06:13:00');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Admin', '2014-07-23 10:45:27', '2014-07-23 10:45:27'),
(2, 'User', '2014-07-23 10:45:31', '2014-07-23 10:45:31');

-- --------------------------------------------------------

--
-- Table structure for table `outlets`
--

CREATE TABLE IF NOT EXISTS `outlets` (
  `id` int(11) NOT NULL,
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
  `image` text
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` char(40) NOT NULL,
  `group_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `group_id`, `status`, `created`, `modified`) VALUES
(1, 'Faruq Shaik', 'faruq@gmail.com', 'faruq@gmail.com', '2f513d0aefa2b4943892320890413111f92e1a2d', 1, 1, '2014-07-23 10:46:14', '2014-07-23 10:46:14'),
(2, 'shaik', 'faruq1', 'faruq1256@gmail.com', '2f513d0aefa2b4943892320890413111f92e1a2d', 2, 0, '2014-07-23 10:58:53', '2014-07-23 10:58:53'),
(3, '', 'shaik', 'shaik1256@gmail.com', 'f69a2881d349b34ae1518a04b646f3edb06bc4b8', 1, 0, '2017-01-11 19:19:14', '2017-01-11 19:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE IF NOT EXISTS `widgets` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `part_no` varchar(12) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acos`
--
ALTER TABLE `acos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aros`
--
ALTER TABLE `aros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aros_acos`
--
ALTER TABLE `aros_acos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_categories_users` (`created_by`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outlets`
--
ALTER TABLE `outlets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_outlets_users` (`outlet_user`),
  ADD KEY `FK_outlets_users_2` (`created_by`),
  ADD KEY `FK_outlets_users_3` (`modified_by`),
  ADD KEY `FK_outlets_categories` (`category`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acos`
--
ALTER TABLE `acos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=213;
--
-- AUTO_INCREMENT for table `aros`
--
ALTER TABLE `aros`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `aros_acos`
--
ALTER TABLE `aros_acos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `outlets`
--
ALTER TABLE `outlets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `FK_categories_users` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `outlets`
--
ALTER TABLE `outlets`
  ADD CONSTRAINT `FK_outlets_categories` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_outlets_users` FOREIGN KEY (`outlet_user`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_outlets_users_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_outlets_users_3` FOREIGN KEY (`modified_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
