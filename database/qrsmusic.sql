-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 28, 2020 at 01:58 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.0.33-23+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qrsmusic`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads_campaigns`
--

CREATE TABLE `ads_campaigns` (
  `campaign_id` int(10) NOT NULL,
  `campaign_user_id` int(10) UNSIGNED NOT NULL,
  `campaign_title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `campaign_start_date` datetime NOT NULL,
  `campaign_end_date` datetime NOT NULL,
  `campaign_budget` double NOT NULL,
  `campaign_spend` double NOT NULL DEFAULT '0',
  `campaign_bidding` enum('click','view') COLLATE utf8mb4_bin NOT NULL,
  `audience_countries` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `audience_gender` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `audience_relationship` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `ads_title` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ads_description` mediumtext COLLATE utf8mb4_bin,
  `ads_type` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `ads_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ads_page` int(10) UNSIGNED DEFAULT NULL,
  `ads_group` int(10) UNSIGNED DEFAULT NULL,
  `ads_event` int(10) UNSIGNED DEFAULT NULL,
  `ads_placement` enum('newsfeed','sidebar') COLLATE utf8mb4_bin NOT NULL,
  `ads_image` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `campaign_created_date` datetime NOT NULL,
  `campaign_is_active` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `campaign_views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `campaign_clicks` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `ads_system`
--

CREATE TABLE `ads_system` (
  `ads_id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `place` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `code` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `ads_users_wallet_transactions`
--

CREATE TABLE `ads_users_wallet_transactions` (
  `transaction_id` int(10) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `node_type` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `node_id` int(10) UNSIGNED DEFAULT NULL,
  `amount` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `type` enum('in','out') COLLATE utf8mb4_bin NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `affiliates_payments`
--

CREATE TABLE `affiliates_payments` (
  `payment_id` int(10) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `amount` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `method` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `announcement_id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `code` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `announcements_users`
--

CREATE TABLE `announcements_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `announcement_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `announcements_users`
--

INSERT INTO `announcements_users` (`id`, `announcement_id`, `user_id`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `banned_ips`
--

CREATE TABLE `banned_ips` (
  `ip_id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `blogs_categories`
--

CREATE TABLE `blogs_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `blogs_categories`
--

INSERT INTO `blogs_categories` (`category_id`, `category_name`) VALUES
(1, 'Art'),
(2, 'Causes'),
(3, 'Crafts'),
(4, 'Dance'),
(5, 'Drinks'),
(6, 'Film'),
(7, 'Fitness'),
(8, 'Food'),
(9, 'Games'),
(10, 'Gardening'),
(11, 'Health'),
(12, 'Home'),
(13, 'Literature'),
(14, 'Music'),
(15, 'Networking'),
(16, 'Other'),
(17, 'Party'),
(18, 'Religion'),
(19, 'Shopping'),
(20, 'Sports'),
(21, 'Theater'),
(22, 'Wellness');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `conversation_id` int(10) UNSIGNED NOT NULL,
  `last_message_id` int(10) UNSIGNED NOT NULL,
  `color` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`conversation_id`, `last_message_id`, `color`) VALUES
(1, 1, NULL),
(2, 9, NULL),
(3, 11, NULL),
(4, 17, NULL),
(5, 32, NULL),
(6, 37, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `conversations_messages`
--

CREATE TABLE `conversations_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `conversation_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_bin NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `conversations_messages`
--

INSERT INTO `conversations_messages` (`message_id`, `conversation_id`, `user_id`, `message`, `image`, `time`) VALUES
(1, 1, 2, 'Chat looks nicer', '', '2019-04-10 18:49:20'),
(2, 2, 4, 'are you in now?', '', '2019-05-01 14:30:07'),
(3, 2, 2, 'yeah, working on uploads', '', '2019-05-01 14:30:26'),
(4, 2, 4, 'Is file uploaded both midi and audio?', '', '2019-05-01 14:30:46'),
(5, 2, 2, 'Yeah they are two separate files.  Still working on the midi drawing.  ', '', '2019-05-01 14:31:53'),
(6, 2, 4, 'So playing back both am I hearing MIDI sounds with audio?', '', '2019-05-01 14:33:02'),
(7, 2, 2, 'Can&#039;t play back both at the same time.  I suspect weeks to implement that.', '', '2019-05-01 14:33:30'),
(8, 2, 2, 'We have to install a midi playback engine then figure out how to syncronize the two', '', '2019-05-01 14:33:57'),
(9, 2, 2, 'Currently it doesn&#039;t even have a midi playback capability.  Just a download link', '', '2019-05-01 14:34:27'),
(10, 3, 8, 'Test', '', '2019-10-18 17:33:16'),
(11, 3, 8, 'Sending', '', '2019-10-18 18:44:08'),
(12, 4, 20, 'Hi Dewayne!', '', '2020-01-29 20:17:12'),
(13, 4, 30, 'Hi Mike!', '', '2020-01-29 20:17:41'),
(14, 4, 30, 'Play something!', '', '2020-01-29 20:17:49'),
(15, 4, 30, 'I like Billy Joel.', '', '2020-01-29 20:18:04'),
(16, 4, 20, 'http://qrsconnectapp.s3-website.us-east-2.amazonaws.com/schedule', '', '2020-01-29 20:23:14'),
(17, 4, 30, 'Hey, are you there?', '', '2020-02-03 20:54:18'),
(18, 5, 32, 'Hey, I&#039;m here', '', '2020-02-03 21:36:14'),
(19, 5, 32, 'Awesome', '', '2020-02-03 21:36:20'),
(20, 5, 30, 'This is cool!', '', '2020-02-03 21:36:31'),
(21, 5, 30, 'Are you logged in?', '', '2020-02-04 20:02:52'),
(22, 5, 32, 'yes', '', '2020-02-04 20:03:17'),
(23, 5, 32, 'can you hear the session?', '', '2020-02-04 20:03:32'),
(24, 5, 30, 'Yes, it started right up!', '', '2020-02-04 20:03:49'),
(25, 5, 30, 'It&#039;s working great.', '', '2020-02-04 20:04:02'),
(26, 5, 32, 'it is great', '', '2020-02-04 20:04:26'),
(27, 5, 32, 'just needs a project manager to fix everything', '', '2020-02-04 20:04:35'),
(28, 5, 30, 'It&#039;s definitely pretty cool', '', '2020-02-04 20:04:56'),
(29, 5, 32, 'I just tried calling Dewayne P', '', '2020-02-04 20:05:12'),
(30, 5, 32, 'He&#039;s unplugged', '', '2020-02-04 20:05:15'),
(31, 5, 30, 'I&#039;ll plug my phone back in...', '', '2020-02-04 20:05:29'),
(32, 5, 30, 'I just plugged it back in.', '', '2020-02-04 20:06:38'),
(33, 6, 38, 'ghh', '', '2020-03-19 15:43:39'),
(34, 6, 37, ':D :( :( :( ', '', '2020-03-19 15:43:55'),
(35, 6, 38, ':no_mouth: ', '', '2020-03-19 15:44:39'),
(36, 6, 37, 'hyjhgjk', '', '2020-03-19 16:32:06'),
(37, 6, 38, 'jkl', '', '2020-03-19 16:32:19');

-- --------------------------------------------------------

--
-- Table structure for table `conversations_users`
--

CREATE TABLE `conversations_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `conversation_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `seen` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `deleted` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=FIXED;

--
-- Dumping data for table `conversations_users`
--

INSERT INTO `conversations_users` (`id`, `conversation_id`, `user_id`, `seen`, `deleted`) VALUES
(1, 1, 2, '1', '0'),
(2, 1, 3, '0', '0'),
(3, 2, 4, '1', '0'),
(4, 2, 2, '1', '0'),
(5, 3, 8, '1', '0'),
(6, 3, 2, '1', '0'),
(7, 4, 20, '1', '0'),
(8, 4, 30, '1', '1'),
(9, 5, 32, '1', '0'),
(10, 5, 30, '1', '1'),
(11, 6, 38, '1', '0'),
(12, 6, 37, '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `field_for` enum('user','page','group','event') COLLATE utf8mb4_bin NOT NULL DEFAULT 'user',
  `type` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `select_options` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `description` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `place` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `length` int(10) NOT NULL DEFAULT '32',
  `field_order` int(10) NOT NULL DEFAULT '1',
  `mandatory` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `in_registration` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `in_profile` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields_values`
--

CREATE TABLE `custom_fields_values` (
  `value_id` int(10) UNSIGNED NOT NULL,
  `value` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL,
  `node_type` enum('user','page','group','event') COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(20) NOT NULL,
  `userid` int(20) NOT NULL,
  `serial` varchar(255) NOT NULL,
  `nickName` text,
  `defauItGearId` int(11) DEFAULT NULL,
  `isOnline` tinyint(1) NOT NULL DEFAULT '0',
  `isUserAllowed` tinyint(1) NOT NULL DEFAULT '0',
  `picture` varchar(255) NOT NULL DEFAULT 'https://qrs-connect.com/resources/images/hoho1.png',
  `addedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `userid`, `serial`, `nickName`, `defauItGearId`, `isOnline`, `isUserAllowed`, `picture`, `addedDate`) VALUES
(3, 8, 'QRSC0819807003', 'Latest Hardware', 3, 1, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-10-11 12:58:10'),
(4, 2, 'QRSC0819807003', 'My New Hoho', 3, 1, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-10-11 12:58:10'),
(7, 8, 'QRSC0519000016', 'Studio', 3, 0, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-10-11 12:58:10'),
(8, 2, 'QRSC0519000016', 'Studio', 3, 0, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-10-11 14:58:10'),
(9, 1, 'QRSC0119000008', 'R2D2', NULL, 0, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-10-11 18:17:31'),
(10, 0, 'QRSC0119000008', NULL, 0, 0, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-10-14 16:12:11'),
(11, 2, 'QRSC1119000027', NULL, 0, 0, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-11-13 13:52:48'),
(12, 8, 'QRSC1119000027', NULL, 0, 0, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-11-14 14:01:45'),
(13, 12, 'QRSC0819807003', NULL, 0, 1, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-11-14 16:59:47'),
(14, 1, 'QRSC0819807003', NULL, 0, 1, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-11-14 17:07:29'),
(15, 13, 'QRSC0819807003', NULL, 0, 1, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-11-14 17:26:42'),
(16, 12, 'QRSC1119000027', NULL, 0, 0, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-11-15 17:45:51'),
(17, 1, 'QRSC1119000027', NULL, 0, 0, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-11-15 17:46:31'),
(18, 13, 'QRSC1119000027', NULL, 0, 0, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-11-15 17:48:39'),
(19, 12, 'QRSC1119000026', NULL, 0, 0, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-11-15 20:13:29'),
(20, 1, 'QRSC1119000034', 'C-3P0', 0, 1, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-11-20 14:06:58'),
(21, 8, 'QRSC1119000013', NULL, 0, 0, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-11-20 18:47:11'),
(22, 2, 'QRSC1119000013', NULL, 0, 0, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-11-20 21:01:48'),
(23, 4, 'QRSC0519000020', 'Tom\'s Demo', 0, 0, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-11-22 14:39:21'),
(24, 4, 'QRSC1119000016', NULL, 0, 1, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-11-25 15:15:42'),
(25, 4, 'QRSC1119000013', NULL, 0, 0, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-11-25 15:45:44'),
(26, 15, 'QRSC1119000024', NULL, 0, 1, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-12-05 15:48:50'),
(27, 8, 'QRSC1119000063', NULL, 0, 0, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-12-13 16:12:38'),
(28, 18, 'QRSC1119000063', NULL, 0, 0, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-12-13 18:16:45'),
(29, 19, 'QRSC1119000055', NULL, 0, 1, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-12-13 18:30:14'),
(30, 20, 'QRSC1119000046', NULL, 0, 0, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-12-13 18:49:33'),
(31, 8, 'QRSC1119000024', NULL, 0, 1, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-12-19 14:53:13'),
(32, 15, 'QRSC1119000013', NULL, 0, 0, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-12-19 15:26:37'),
(33, 8, 'QRSC1119000009', NULL, 0, 0, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-12-24 17:22:30'),
(34, 21, 'QRSC1119000029', NULL, 0, 0, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-12-30 15:14:14'),
(35, 21, 'QRSC1119000020', NULL, 0, 1, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-12-30 15:16:48'),
(36, 2, 'QRSC1119000009', NULL, 0, 0, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2019-12-31 20:09:03'),
(37, 24, 'QRSC1119000044', NULL, 0, 0, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2020-01-03 00:00:28'),
(38, 23, 'QRSC1119000031', NULL, 0, 0, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2020-01-03 12:33:15'),
(39, 22, 'QRSC1119000029', NULL, 0, 0, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2020-01-03 15:49:45'),
(40, 20, 'QRSC1119000034', NULL, 0, 1, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2020-01-14 23:37:33'),
(41, 28, 'QRSC1119000001', NULL, 0, 1, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2020-01-15 20:35:51'),
(42, 29, 'QRSC1119000001', NULL, 0, 1, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2020-01-17 02:14:36'),
(43, 30, 'QRSC1119000038', NULL, 0, 1, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2020-01-29 19:53:59'),
(44, 32, 'QRSC1119000046', NULL, 0, 1, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2020-02-03 21:25:35'),
(45, 1, 'QRSC1119000041', NULL, 0, 1, 1, 'https://qrs-connect.com/resources/images/hoho1.png', '2020-02-07 19:37:35');

-- --------------------------------------------------------

--
-- Table structure for table `emojis`
--

CREATE TABLE `emojis` (
  `emoji_id` int(10) UNSIGNED NOT NULL,
  `pattern` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `emojis`
--

INSERT INTO `emojis` (`emoji_id`, `pattern`, `class`) VALUES
(1, ':)', 'smile'),
(2, '(&lt;', 'joy'),
(3, ':D', 'smiley'),
(4, ':(', 'worried'),
(5, ':relaxed:', 'relaxed'),
(6, ':P', 'stuck-out-tongue'),
(7, ':O', 'open-mouth'),
(8, ':/', 'confused'),
(9, ';)', 'wink'),
(10, ';(', 'sob'),
(11, 'B|', 'sunglasses'),
(12, ':disappointed:', 'disappointed'),
(13, ':yum:', 'yum'),
(14, '^_^', 'grin'),
(15, ':no_mouth:', 'no-mouth'),
(16, '*_*', 'heart-eyes'),
(17, '*)', 'kissing-heart'),
(18, 'O:)', 'innocent'),
(19, ':angry:', 'angry'),
(20, ':rage:', 'rage'),
(21, ':smirk:', 'smirk'),
(22, ':flushed:', 'flushed'),
(23, ':satisfied:', 'satisfied'),
(24, ':relieved:', 'relieved'),
(25, ':sleeping:', 'sleeping'),
(26, ':stuck_out_tongue:', 'stuck-out-tongue'),
(27, ':stuck_out_tongue_closed_eyes:', 'stuck-out-tongue-closed-eyes'),
(28, ':frowning:', 'frowning'),
(29, ':anguished:', 'anguished'),
(30, ':open_mouth:', 'open-mouth'),
(31, ':grimacing:', 'grimacing'),
(32, ':hushed:', 'hushed'),
(33, ':expressionless:', 'expressionless'),
(34, ':unamused:', 'unamused'),
(35, ':sweat_smile:', 'sweat-smile'),
(36, ':sweat:', 'sweat'),
(37, ':confounded:', 'confounded'),
(38, ':weary:', 'weary'),
(39, ':pensive:', 'pensive'),
(40, ':fearful:', 'fearful'),
(41, ':cold_sweat:', 'cold-sweat'),
(42, ':persevere:', 'persevere'),
(43, ':cry:', 'cry'),
(44, ':astonished:', 'astonished'),
(45, ':scream:', 'scream'),
(46, ':mask:', 'mask'),
(47, ':tired_face:', 'tired-face'),
(48, ':triumph:', 'triumph'),
(49, ':dizzy_face:', 'dizzy-face'),
(50, ':imp:', 'imp'),
(51, ':smiling_imp:', 'smiling-imp'),
(52, ':neutral_face:', 'neutral-face'),
(53, ':alien:', 'alien'),
(54, ':yellow_heart:', 'yellow-heart'),
(55, ':blue_heart:', 'blue-heart'),
(56, ':blue_heart:', 'blue-heart'),
(57, ':heart:', 'heart'),
(58, ':green_heart:', 'green-heart'),
(59, ':broken_heart:', 'broken-heart'),
(60, ':heartbeat:', 'heartbeat'),
(61, ':heartpulse:', 'heartpulse'),
(62, ':two_hearts:', 'two-hearts'),
(63, ':revolving_hearts:', 'revolving-hearts'),
(64, ':cupid:', 'cupid'),
(65, ':sparkling_heart:', 'sparkling-heart'),
(66, ':sparkles:', 'sparkles'),
(67, ':star:', 'star'),
(68, ':star2:', 'star2'),
(69, ':dizzy:', 'dizzy'),
(70, ':boom:', 'boom'),
(71, ':exclamation:', 'exclamation'),
(72, ':anger:', 'anger'),
(73, ':question:', 'question'),
(74, ':grey_exclamation:', 'grey-exclamation'),
(75, ':grey_question:', 'grey-question'),
(76, ':zzz:', 'zzz'),
(77, ':dash:', 'dash'),
(78, ':sweat_drops:', 'sweat-drops'),
(79, ':notes:', 'notes'),
(80, ':musical_note:', 'musical-note'),
(81, ':fire:', 'fire'),
(82, ':poop:', 'poop'),
(83, ':thumbsup:', 'thumbsup'),
(84, ':thumbsdown:', 'thumbsdown'),
(85, ':ok_hand:', 'ok-hand'),
(86, ':punch:', 'punch'),
(87, ':fist:', 'fist'),
(88, ':v:', 'v'),
(89, ':wave:', 'wave'),
(90, ':hand:', 'hand'),
(91, ':raised_hand:', 'raised-hand'),
(92, ':open_hands:', 'open-hands'),
(93, ':point_up:', 'point-up'),
(94, ':point_down:', 'point-down'),
(95, ':point_left:', 'point-left'),
(96, ':point_right:', 'point-right'),
(97, ':raised_hands:', 'raised-hands'),
(98, ':pray:', 'pray'),
(99, ':clap:', 'clap'),
(100, ':muscle:', 'muscle'),
(101, ':runner:', 'runner'),
(102, ':couple:', 'couple'),
(103, ':family:', 'family'),
(104, ':two_men_holding_hands:', 'two-men-holding-hands'),
(105, ':two_women_holding_hands:', 'two-women-holding-hands'),
(106, ':dancer:', 'dancer'),
(107, ':dancers:', 'dancers'),
(108, ':ok_woman:', 'ok-woman'),
(109, ':no_good:', 'no-good'),
(110, ':information_desk_person:', 'information-desk-person'),
(111, ':bride_with_veil:', 'bride-with-veil'),
(112, ':couplekiss:', 'couplekiss'),
(113, ':couple_with_heart:', 'couple-with-heart'),
(114, ':nail_care:', 'nail-care'),
(115, ':boy:', 'boy'),
(116, ':girl:', 'girl'),
(117, ':woman:', 'woman'),
(118, ':man:', 'man'),
(119, ':baby:', 'baby'),
(120, ':older_woman:', 'older-woman'),
(121, ':older_man:', 'older-man'),
(122, ':cop:', 'cop'),
(123, ':angel:', 'angel'),
(124, ':princess:', 'princess'),
(125, ':smiley_cat:', 'smiley-cat'),
(126, ':smile_cat:', 'smile-cat'),
(127, ':heart_eyes_cat:', 'heart-eyes-cat'),
(128, ':kissing_cat:', 'kissing-cat'),
(129, ':smirk_cat:', 'smirk-cat'),
(130, ':scream_cat:', 'scream-cat'),
(131, ':crying_cat_face:', 'crying-cat-face'),
(132, ':joy_cat:', 'joy-cat'),
(133, ':pouting_cat:', 'pouting-cat'),
(134, ':japanese_ogre:', 'japanese-ogre'),
(135, ':see_no_evil:', 'see-no-evil'),
(136, ':hear_no_evil:', 'hear-no-evil'),
(137, ':speak_no_evil:', 'speak-no-evil'),
(138, ':guardsman:', 'guardsman'),
(139, ':skull:', 'skull'),
(140, ':feet:', 'feet'),
(141, ':lips:', 'lips'),
(142, ':kiss:', 'kiss'),
(143, ':droplet:', 'droplet'),
(144, ':ear:', 'ear'),
(145, ':eyes:', 'eyes'),
(146, ':nose:', 'nose'),
(147, ':tongue:', 'tongue'),
(148, ':love_letter:', 'love-letter'),
(149, ':speech_balloon:', 'speech-balloon'),
(150, ':thought_balloon:', 'thought-balloon'),
(151, ':sunny:', 'sunny');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(10) UNSIGNED NOT NULL,
  `event_privacy` enum('secret','closed','public') COLLATE utf8mb4_bin DEFAULT 'public',
  `event_admin` int(10) UNSIGNED NOT NULL,
  `event_category` int(10) UNSIGNED NOT NULL,
  `event_title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `event_location` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `event_description` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `event_start_date` datetime NOT NULL,
  `event_end_date` datetime NOT NULL,
  `event_cover` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `event_cover_id` int(10) UNSIGNED DEFAULT NULL,
  `event_cover_position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `event_album_covers` int(10) DEFAULT NULL,
  `event_album_timeline` int(10) DEFAULT NULL,
  `event_pinned_post` int(10) DEFAULT NULL,
  `event_invited` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `event_interested` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `event_going` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `event_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_privacy`, `event_admin`, `event_category`, `event_title`, `event_location`, `event_description`, `event_start_date`, `event_end_date`, `event_cover`, `event_cover_id`, `event_cover_position`, `event_album_covers`, `event_album_timeline`, `event_pinned_post`, `event_invited`, `event_interested`, `event_going`, `event_date`) VALUES
(1, 'public', 4, 14, 'Concert In The Park', 'Franklin Band Shell', '', '2019-06-15 19:30:00', '2019-06-15 22:30:00', 'user_uploads/4/photos/2019/06/qrs-connect_77308743db9fb746cf770498d130302b.jpg', 13, NULL, 10, NULL, NULL, 0, 2, 1, '2019-06-13 15:25:14'),
(3, 'secret', 11, 14, 'Omar&#039;s Lesson', 'Remote', '', '2019-11-21 09:00:00', '2019-11-21 10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, '2019-11-14 14:05:19'),
(4, 'closed', 11, 14, 'Omar&#039;s Amazing Performance', 'Remote', '', '2019-11-22 09:15:00', '2019-11-22 09:50:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '2019-11-14 14:15:22'),
(5, 'public', 36, 14, 'dfgvbdfg', 'fghfg', 'gfh', '2020-05-03 12:42:00', '2020-05-03 19:15:00', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '2020-03-21 13:45:47');

-- --------------------------------------------------------

--
-- Table structure for table `events_categories`
--

CREATE TABLE `events_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `events_categories`
--

INSERT INTO `events_categories` (`category_id`, `category_name`) VALUES
(14, 'Music');

-- --------------------------------------------------------

--
-- Table structure for table `events_members`
--

CREATE TABLE `events_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `is_invited` enum('0','1') COLLATE utf8mb4_bin DEFAULT '0',
  `is_interested` enum('0','1') COLLATE utf8mb4_bin DEFAULT '0',
  `is_going` enum('0','1') COLLATE utf8mb4_bin DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=FIXED;

--
-- Dumping data for table `events_members`
--

INSERT INTO `events_members` (`id`, `event_id`, `user_id`, `is_invited`, `is_interested`, `is_going`) VALUES
(1, 1, 4, '0', '1', '0'),
(3, 3, 11, '0', '1', '0'),
(4, 2, 11, '0', '1', '0'),
(8, 1, 2, '0', '1', '1'),
(11, 5, 36, '0', '1', '0'),
(12, 5, 37, '1', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `followings`
--

CREATE TABLE `followings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `following_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=FIXED;

--
-- Dumping data for table `followings`
--

INSERT INTO `followings` (`id`, `user_id`, `following_id`) VALUES
(1, 1, 2),
(2, 3, 2),
(3, 3, 1),
(4, 2, 3),
(5, 2, 1),
(6, 1, 3),
(7, 4, 1),
(8, 4, 2),
(9, 4, 3),
(13, 2, 8),
(12, 8, 2),
(14, 8, 3),
(15, 8, 1),
(16, 4, 8),
(17, 4, 9),
(18, 1, 8),
(19, 9, 1),
(20, 9, 4),
(22, 9, 2),
(23, 9, 3),
(24, 9, 8),
(25, 1, 9),
(26, 11, 8),
(27, 11, 3),
(28, 11, 4),
(29, 11, 10),
(30, 11, 9),
(31, 11, 1),
(32, 1, 11),
(33, 8, 11),
(34, 8, 10),
(35, 11, 12),
(36, 11, 2),
(37, 8, 12),
(38, 11, 13),
(39, 2, 11),
(40, 2, 9),
(41, 2, 10),
(42, 2, 12),
(43, 2, 13),
(44, 4, 11),
(45, 8, 4),
(46, 15, 8),
(47, 15, 2),
(48, 2, 15),
(49, 2, 4),
(50, 8, 15),
(51, 8, 9),
(52, 13, 2),
(53, 13, 11),
(54, 2, 19),
(55, 2, 20),
(56, 2, 18),
(63, 2, 28),
(58, 20, 30),
(59, 2, 30),
(60, 32, 30),
(61, 30, 2),
(62, 30, 32),
(78, 37, 38),
(79, 37, 36),
(76, 38, 37),
(80, 36, 37);

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
  `forum_id` int(10) UNSIGNED NOT NULL,
  `forum_section` int(10) UNSIGNED NOT NULL,
  `forum_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `forum_description` mediumtext COLLATE utf8mb4_bin,
  `forum_order` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `forum_threads` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_replies` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `forums_replies`
--

CREATE TABLE `forums_replies` (
  `reply_id` int(10) UNSIGNED NOT NULL,
  `thread_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `text` longtext COLLATE utf8mb4_bin NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `forums_threads`
--

CREATE TABLE `forums_threads` (
  `thread_id` int(10) UNSIGNED NOT NULL,
  `forum_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `text` longtext COLLATE utf8mb4_bin NOT NULL,
  `replies` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `time` datetime NOT NULL,
  `last_reply` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_one_id` int(10) UNSIGNED NOT NULL,
  `user_two_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `user_one_id`, `user_two_id`, `status`) VALUES
(1, 1, 2, 1),
(2, 3, 2, 1),
(3, 3, 1, 1),
(4, 4, 1, 1),
(31, 4, 2, 1),
(6, 4, 3, 0),
(7, 8, 2, 1),
(8, 8, 3, 0),
(9, 8, 1, 1),
(10, 4, 8, 1),
(11, 4, 9, 1),
(12, 9, 1, 1),
(14, 9, 2, 1),
(15, 9, 3, 0),
(16, 9, 8, 1),
(17, 11, 8, 1),
(18, 11, 3, 0),
(19, 11, 4, 1),
(20, 11, 10, 0),
(21, 11, 9, 0),
(22, 11, 1, 1),
(23, 8, 10, 0),
(24, 11, 12, 0),
(25, 11, 2, 1),
(26, 8, 12, 0),
(27, 11, 13, 1),
(28, 2, 10, 0),
(29, 2, 12, 0),
(30, 2, 13, 1),
(32, 15, 8, 1),
(33, 15, 2, 1),
(34, 2, 19, 0),
(35, 2, 20, 0),
(36, 2, 18, 0),
(40, 2, 28, 0),
(38, 2, 30, 1),
(39, 32, 30, 1),
(52, 37, 38, 1),
(53, 37, 36, 1);

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `game_id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `description` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `source` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `games_players`
--

CREATE TABLE `games_players` (
  `id` int(10) UNSIGNED NOT NULL,
  `game_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `last_played_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Table structure for table `gear`
--

CREATE TABLE `gear` (
  `id` int(20) NOT NULL,
  `userid` int(20) NOT NULL,
  `serial` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Brand` varchar(255) NOT NULL,
  `Model` varchar(255) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `Picture` varchar(255) NOT NULL DEFAULT 'resources/images/keyboard.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gear`
--

INSERT INTO `gear` (`id`, `userid`, `serial`, `Type`, `Brand`, `Model`, `Location`, `Picture`) VALUES
(1, 1, '123456', 'Keyboard', 'Korg', 'Stage EX-4', 'Studio', 'resources/images/keyboard.png'),
(2, 8, '123456rf', 'Keyboard', 'Korg', 'Stage EX-4', 'Studio', 'resources/images/keyboard.png'),
(3, 8, '123456rfw', 'Keyboard', 'Korg', 'Stage EX-4', 'Studio', 'resources/images/keyboard.png');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` int(10) UNSIGNED NOT NULL,
  `group_privacy` enum('secret','closed','public') COLLATE utf8mb4_bin DEFAULT 'public',
  `group_admin` int(10) UNSIGNED NOT NULL,
  `group_category` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `group_title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `group_description` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `group_picture` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `group_picture_id` int(10) UNSIGNED DEFAULT NULL,
  `group_cover` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `group_cover_id` int(10) UNSIGNED DEFAULT NULL,
  `group_cover_position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `group_album_pictures` int(10) DEFAULT NULL,
  `group_album_covers` int(10) DEFAULT NULL,
  `group_album_timeline` int(10) DEFAULT NULL,
  `group_pinned_post` int(10) DEFAULT NULL,
  `group_members` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `group_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `group_privacy`, `group_admin`, `group_category`, `group_name`, `group_title`, `group_description`, `group_picture`, `group_picture_id`, `group_cover`, `group_cover_id`, `group_cover_position`, `group_album_pictures`, `group_album_covers`, `group_album_timeline`, `group_pinned_post`, `group_members`, `group_date`) VALUES
(1, 'closed', 2, 4, 'class101', 'Class101', 'Learning How To Play Piano and Keeping Track Practice.', 'photos/2019/05/qrs-connect_458c5bac13b6b0130f3af5722dea0306_cropped.png', 11, NULL, NULL, '-47px', 8, 7, NULL, NULL, 2, '2019-04-29 17:27:42');

-- --------------------------------------------------------

--
-- Table structure for table `groups_admins`
--

CREATE TABLE `groups_admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=FIXED;

--
-- Dumping data for table `groups_admins`
--

INSERT INTO `groups_admins` (`id`, `group_id`, `user_id`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `groups_categories`
--

CREATE TABLE `groups_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `groups_categories`
--

INSERT INTO `groups_categories` (`category_id`, `category_name`) VALUES
(1, 'Cars and Vehicles'),
(2, 'Comedy'),
(3, 'Economics and Trade'),
(4, 'Education'),
(5, 'Entertainment'),
(6, 'Movies and Animation'),
(7, 'Gaming'),
(8, 'History and Facts'),
(9, 'Live Style'),
(10, 'Natural'),
(11, 'News and Politics'),
(12, 'People and Nations'),
(13, 'Pets and Animals'),
(14, 'Places and Regions'),
(15, 'Science and Technology'),
(16, 'Sport'),
(17, 'Travel and Events'),
(18, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `groups_members`
--

CREATE TABLE `groups_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `approved` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=FIXED;

--
-- Dumping data for table `groups_members`
--

INSERT INTO `groups_members` (`id`, `group_id`, `user_id`, `approved`) VALUES
(3, 1, 2, '1'),
(2, 1, 3, '1'),
(5, 1, 4, '0'),
(6, 1, 9, '0'),
(7, 1, 37, '0');

-- --------------------------------------------------------

--
-- Table structure for table `invitation_codes`
--

CREATE TABLE `invitation_codes` (
  `code_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `valid` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `invitation_codes`
--

INSERT INTO `invitation_codes` (`code_id`, `code`, `valid`, `date`) VALUES
(1, 'SdoPNMdH', '0', '2019-06-25 18:46:01'),
(2, '2EnwcMNB', '0', '2019-06-25 18:47:13'),
(3, 'I9d3ZDTc', '0', '2019-10-18 14:56:58'),
(4, 'KbRNnLBR', '0', '2019-11-14 17:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `market_categories`
--

CREATE TABLE `market_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `market_categories`
--

INSERT INTO `market_categories` (`category_id`, `category_name`) VALUES
(1, 'Apparel &amp; Accessories'),
(2, 'Autos &amp; Vehicles'),
(3, 'Baby &amp; Children&#039;s Products'),
(4, 'Beauty Products &amp; Services'),
(5, 'Computers &amp; Peripherals'),
(6, 'Consumer Electronics'),
(7, 'Dating Services'),
(8, 'Financial Services'),
(9, 'Gifts &amp; Occasions'),
(10, 'Home &amp; Garden'),
(11, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(10) UNSIGNED NOT NULL,
  `source` text COLLATE utf8mb4_bin NOT NULL,
  `source_type` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `description` text COLLATE utf8mb4_bin,
  `imdb_url` text COLLATE utf8mb4_bin,
  `stars` text COLLATE utf8mb4_bin,
  `release_year` int(10) DEFAULT NULL,
  `duration` int(10) DEFAULT NULL,
  `genres` mediumtext COLLATE utf8mb4_bin,
  `poster` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `movies_genres`
--

CREATE TABLE `movies_genres` (
  `genre_id` int(10) UNSIGNED NOT NULL,
  `genre_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `genre_description` text COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `movies_genres`
--

INSERT INTO `movies_genres` (`genre_id`, `genre_name`, `genre_description`) VALUES
(1, 'Action', ''),
(2, 'Adventure', ''),
(3, 'Animation', ''),
(4, 'Comedy', ''),
(5, 'Crime', ''),
(6, 'Documentary', ''),
(7, 'Drama', ''),
(8, 'Family', ''),
(9, 'Fantasy', ''),
(10, 'History', ''),
(11, 'Horror', ''),
(12, 'Musical', ''),
(13, 'Mythological', ''),
(14, 'Romance', ''),
(15, 'Sport', ''),
(16, 'TV Show', ''),
(17, 'Thriller', ''),
(18, 'War', '');

-- --------------------------------------------------------

--
-- Table structure for table `mqtt_acl`
--

CREATE TABLE `mqtt_acl` (
  `id` int(11) UNSIGNED NOT NULL,
  `allow` int(1) DEFAULT NULL COMMENT '0: deny, 1: allow',
  `ipaddr` varchar(60) DEFAULT NULL COMMENT 'IpAddress',
  `username` varchar(100) DEFAULT NULL COMMENT 'Username',
  `clientid` varchar(100) DEFAULT NULL COMMENT 'ClientId',
  `access` int(2) NOT NULL COMMENT '1: subscribe, 2: publish, 3: pubsub',
  `topic` varchar(100) NOT NULL DEFAULT '' COMMENT 'Topic Filter'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mqtt_acl`
--

INSERT INTO `mqtt_acl` (`id`, `allow`, `ipaddr`, `username`, `clientid`, `access`, `topic`) VALUES
(8, 1, NULL, 'qrs', NULL, 3, '#'),
(9, 1, NULL, '$all', NULL, 3, 'broadCast/#'),
(10, 1, NULL, '$all', NULL, 1, 'update/#'),
(11, 1, NULL, '$all', NULL, 3, 'midiSubscribe/#'),
(40, 1, NULL, 'qrs@', NULL, 3, '+/HoHo/out/midi/#'),
(41, 1, NULL, 'qrs', 'super', 3, '#'),
(46, 1, NULL, 'tomd@qrsinc.com', NULL, 3, 'QRSC0519000020/#'),
(47, 1, NULL, 'tomd@qrsinc.com', NULL, 3, 'QRSC0519000007/#'),
(50, 1, NULL, '$all', NULL, 3, 'userStatus/#'),
(71, 1, NULL, 'aarony@qrsinc.com', NULL, 3, 'QRSC0519000016/#'),
(77, 1, NULL, 'it@qrsinc.com', NULL, 3, 'QRSC0119000008/#'),
(87, 1, NULL, 'VeryBill', NULL, 3, '#'),
(98, 1, NULL, 'VeryBen', NULL, 3, 'QRSC0819807003/#'),
(99, 1, NULL, 'QRSAdmin', NULL, 3, 'QRSC0819807003/#'),
(100, 1, NULL, 'VeryAndrew', NULL, 3, 'QRSC0819807003/#'),
(104, 1, NULL, 'andrew@verypossible.com', NULL, 3, 'QRSC0819807003/#'),
(105, 1, NULL, 'ben.wheat@verypossible.com', NULL, 3, 'QRSC0819807003/#'),
(107, 1, NULL, 'VeryBen', NULL, 3, 'QRSC1119000027/#'),
(108, 1, NULL, 'QRSAdmin', NULL, 3, 'QRSC1119000027/#'),
(109, 1, NULL, 'VeryAndrew', NULL, 3, 'QRSC1119000027/#'),
(110, 1, NULL, 'Yo81', NULL, 3, 'QRSC0819807003/#'),
(111, 1, NULL, 'VeryBen', NULL, 3, 'QRSC1119000026/#'),
(112, 1, NULL, 'it@qrsinc.com', NULL, 3, 'QRSC1119000034/#'),
(115, 1, NULL, 'YO81', NULL, 3, 'QRSC1119000013/#'),
(117, 1, NULL, 'tomd@qrsinc.com', NULL, 3, 'QRSC1119000016/#'),
(122, 1, NULL, 'tomd@qrsinc.com', NULL, 3, 'QRSC1119000016/#'),
(125, 1, NULL, 'yostie81@gmail.com', NULL, 3, 'QRSC0819807003/#'),
(128, 1, NULL, 'nammdemo1@qrsinc.com', NULL, 3, 'QRSC1119000063/#'),
(129, 1, NULL, 'nammdemo2@qrsinc.com', NULL, 3, 'QRSC1119000055/#'),
(130, 1, NULL, 'nammdemo3@qrsinc.com', NULL, 3, 'QRSC1119000046/#'),
(131, 1, NULL, 'andrew@verypossible.com', NULL, 3, 'QRSC1119000027/#'),
(133, 1, NULL, 'yostie81@gmail.com', NULL, 3, 'QRSC1119000024/#'),
(134, 1, NULL, 'aaron_yost@hotmail.com', NULL, 3, 'QRSC1119000013/#'),
(136, 1, NULL, 'aarony@qrsinc.com', NULL, 3, 'QRSC0819807003/#'),
(137, 1, NULL, 'yostie81@gmail.com', NULL, 3, 'QRSC1119000009/#'),
(138, 1, NULL, 'namm1@qrsinc.com', NULL, 3, 'QRSC1119000029/#'),
(140, 1, NULL, 'aarony@qrsinc.com', NULL, 3, 'QRSC1119000009/#'),
(141, 1, NULL, 'namm4@qrsinc.com', NULL, 3, 'QRSC1119000044/#'),
(142, 1, NULL, 'namm3@qrsinc.com', NULL, 3, 'QRSC1119000031/#'),
(144, 1, NULL, 'namm2@qrsinc.com', NULL, 3, 'QRSC1119000029/#'),
(145, 1, NULL, 'namm1@qrsinc.com', NULL, 3, 'QRSC1119000020/#'),
(147, 1, NULL, 'nammdemofl@qrsinc.com', NULL, 3, 'QRSC1119000001/#'),
(148, 1, NULL, 'josh@pianomarvel.com', NULL, 3, 'QRSC1119000001/#'),
(149, 1, NULL, 'dewaynep@qrsinc.com', NULL, 3, 'QRSC1119000038/#'),
(151, 1, NULL, 'mikej@qrsinc.com', NULL, 3, 'QRSC1119000046/#'),
(152, 1, NULL, 'it@qrsinc.com', NULL, 3, 'QRSC1119000041/#');

-- --------------------------------------------------------

--
-- Table structure for table `mqtt_acl_bk`
--

CREATE TABLE `mqtt_acl_bk` (
  `id` int(11) UNSIGNED NOT NULL,
  `allow` int(1) DEFAULT NULL COMMENT '0: deny, 1: allow',
  `ipaddr` varchar(60) DEFAULT NULL COMMENT 'IpAddress',
  `username` varchar(100) DEFAULT NULL COMMENT 'Username',
  `clientid` varchar(100) DEFAULT NULL COMMENT 'ClientId',
  `access` int(2) NOT NULL COMMENT '1: subscribe, 2: publish, 3: pubsub',
  `topic` varchar(100) NOT NULL DEFAULT '' COMMENT 'Topic Filter'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mqtt_acl_bk`
--

INSERT INTO `mqtt_acl_bk` (`id`, `allow`, `ipaddr`, `username`, `clientid`, `access`, `topic`) VALUES
(1, 1, NULL, '$all', NULL, 2, '#'),
(2, 0, NULL, '$all', NULL, 1, '$SYS/#'),
(3, 0, NULL, '$all', NULL, 1, 'eq #'),
(5, 1, '127.0.0.1', NULL, NULL, 2, '$SYS/#'),
(6, 1, '127.0.0.1', NULL, NULL, 2, '#'),
(7, 1, NULL, 'dashboard', NULL, 1, '$SYS/#');

-- --------------------------------------------------------

--
-- Table structure for table `mqtt_acl_bkf2`
--

CREATE TABLE `mqtt_acl_bkf2` (
  `id` int(11) UNSIGNED NOT NULL,
  `allow` int(1) DEFAULT NULL COMMENT '0: deny, 1: allow',
  `ipaddr` varchar(60) DEFAULT NULL COMMENT 'IpAddress',
  `username` varchar(100) DEFAULT NULL COMMENT 'Username',
  `clientid` varchar(100) DEFAULT NULL COMMENT 'ClientId',
  `access` int(2) NOT NULL COMMENT '1: subscribe, 2: publish, 3: pubsub',
  `topic` varchar(100) NOT NULL DEFAULT '' COMMENT 'Topic Filter'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mqtt_acl_bkf2`
--

INSERT INTO `mqtt_acl_bkf2` (`id`, `allow`, `ipaddr`, `username`, `clientid`, `access`, `topic`) VALUES
(1, 1, NULL, '$all', NULL, 1, '#'),
(2, 0, NULL, '$all', NULL, 1, '$SYS/#'),
(3, 0, NULL, '$all', NULL, 1, 'eq #'),
(7, 1, NULL, 'dashboard', NULL, 1, '$SYS/#'),
(8, 1, NULL, 'notNeeded', NULL, 2, '+/HoHo/out/midi'),
(9, 1, NULL, 'aarony@qrsinc.com', NULL, 2, 'QRSC0519000016/#'),
(10, 1, NULL, 'aarony@qrsinc.com', NULL, 2, 'QRSC0819807003/#');

-- --------------------------------------------------------

--
-- Table structure for table `mqtt_user`
--

CREATE TABLE `mqtt_user` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `salt` varchar(20) DEFAULT NULL,
  `is_superuser` tinyint(1) DEFAULT '0',
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mqtt_user`
--

INSERT INTO `mqtt_user` (`id`, `username`, `password`, `salt`, `is_superuser`, `created`) VALUES
(1, 'qrs', 'mqtt', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `MUSIC_LIBRARY`
--

CREATE TABLE `MUSIC_LIBRARY` (
  `MUSIC_ID` int(20) NOT NULL,
  `FILE_PATH` text COLLATE utf8_unicode_ci,
  `FILE_TYPE_ID` int(11) NOT NULL,
  `MD5_SUM` text COLLATE utf8_unicode_ci,
  `FILE_SIZE` int(11) NOT NULL DEFAULT '0',
  `ACC_FILE_PATH` text COLLATE utf8_unicode_ci,
  `ACC_MD5_SUM` text COLLATE utf8_unicode_ci,
  `ACC_FILE_SIZE` int(11) NOT NULL DEFAULT '0',
  `NUMBER_OF_NOTES` int(11) NOT NULL DEFAULT '0',
  `LENGTH_MS` int(11) NOT NULL DEFAULT '0',
  `DELETED` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `LAST_UPDATED` int(11) NOT NULL,
  `MIDI_DELAY_MS` int(11) NOT NULL DEFAULT '0',
  `AUDIO_DELAY_MS` int(11) NOT NULL DEFAULT '0',
  `PITCH_CORRECTION` double NOT NULL DEFAULT '1',
  `SCRAMBLE_VALUE` int(11) NOT NULL DEFAULT '0',
  `MIN_FORCE_DIFF` int(11) NOT NULL DEFAULT '0',
  `REVISION` int(11) NOT NULL DEFAULT '0',
  `LAST_UPDATED_DATE` datetime DEFAULT NULL,
  `TITLE` text COLLATE utf8_unicode_ci,
  `ARTIST` text COLLATE utf8_unicode_ci,
  `AUTHOR` text COLLATE utf8_unicode_ci,
  `LYRICIST` text COLLATE utf8_unicode_ci,
  `COMPOSER` text COLLATE utf8_unicode_ci,
  `USER` text COLLATE utf8_unicode_ci,
  `ALBUM` text COLLATE utf8_unicode_ci,
  `GENRE` text COLLATE utf8_unicode_ci,
  `TRACK_IMAGE` text COLLATE utf8_unicode_ci,
  `KEY` text COLLATE utf8_unicode_ci,
  `TEMPO` text COLLATE utf8_unicode_ci,
  `METER` text COLLATE utf8_unicode_ci,
  `ACTIVITY_CATEGORY1` text COLLATE utf8_unicode_ci,
  `ACTIVITY_CATEGORY2` text COLLATE utf8_unicode_ci,
  `GEAR` text COLLATE utf8_unicode_ci,
  `SEGMENT` text COLLATE utf8_unicode_ci,
  `COURSE` text COLLATE utf8_unicode_ci,
  `DEVICE` text COLLATE utf8_unicode_ci,
  `KEYWORDS` text COLLATE utf8_unicode_ci,
  `LYRICS` text COLLATE utf8_unicode_ci,
  `WIKIPEDIA` text COLLATE utf8_unicode_ci,
  `PLAYED_BY` text COLLATE utf8_unicode_ci,
  `TRACK` int(11) DEFAULT NULL,
  `RELEASE_YEAR` int(11) DEFAULT NULL,
  `MULTI_GENRE` text COLLATE utf8_unicode_ci,
  `EVENTS` text COLLATE utf8_unicode_ci,
  `NEW_RELEASE_EPOCH` text COLLATE utf8_unicode_ci,
  `DEFAULT_CURVES` text COLLATE utf8_unicode_ci,
  `ORIGINAL_SYSTEM` text COLLATE utf8_unicode_ci,
  `EDITED_SYSTEMS_LIST` text COLLATE utf8_unicode_ci,
  `VIDEO_LINK` text COLLATE utf8_unicode_ci,
  `VIDEO_LINK_TYPE` int(11) DEFAULT NULL,
  `WEBSITE_LINK` text COLLATE utf8_unicode_ci,
  `COPYRIGHTS` text COLLATE utf8_unicode_ci,
  `RECORDED_DATE` datetime DEFAULT NULL,
  `scoreProcessed` tinyint(1) NOT NULL,
  `userid` int(11) UNSIGNED DEFAULT NULL,
  `notesOn` int(11) NOT NULL,
  `notesOff` int(11) NOT NULL,
  `pedalOn` int(11) NOT NULL,
  `pedalOff` int(11) NOT NULL,
  `songLength` int(11) NOT NULL,
  `songLengthHIS` text COLLATE utf8_unicode_ci NOT NULL,
  `songTimeBase` int(11) NOT NULL,
  `shortestNoteKey` text COLLATE utf8_unicode_ci NOT NULL,
  `shortestNoteTime` int(11) NOT NULL,
  `longestNoteKey` text COLLATE utf8_unicode_ci NOT NULL,
  `longestNoteTime` int(11) NOT NULL,
  `highestNoteFreq` int(11) NOT NULL,
  `highestNoteFreqPlayed` text COLLATE utf8_unicode_ci NOT NULL,
  `lowestNoteFreq` int(11) NOT NULL,
  `lowestNoteFreqPlayed` text COLLATE utf8_unicode_ci NOT NULL,
  `trackCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MUSIC_LIBRARY`
--

INSERT INTO `MUSIC_LIBRARY` (`MUSIC_ID`, `FILE_PATH`, `FILE_TYPE_ID`, `MD5_SUM`, `FILE_SIZE`, `ACC_FILE_PATH`, `ACC_MD5_SUM`, `ACC_FILE_SIZE`, `NUMBER_OF_NOTES`, `LENGTH_MS`, `DELETED`, `LAST_UPDATED`, `MIDI_DELAY_MS`, `AUDIO_DELAY_MS`, `PITCH_CORRECTION`, `SCRAMBLE_VALUE`, `MIN_FORCE_DIFF`, `REVISION`, `LAST_UPDATED_DATE`, `TITLE`, `ARTIST`, `AUTHOR`, `LYRICIST`, `COMPOSER`, `USER`, `ALBUM`, `GENRE`, `TRACK_IMAGE`, `KEY`, `TEMPO`, `METER`, `ACTIVITY_CATEGORY1`, `ACTIVITY_CATEGORY2`, `GEAR`, `SEGMENT`, `COURSE`, `DEVICE`, `KEYWORDS`, `LYRICS`, `WIKIPEDIA`, `PLAYED_BY`, `TRACK`, `RELEASE_YEAR`, `MULTI_GENRE`, `EVENTS`, `NEW_RELEASE_EPOCH`, `DEFAULT_CURVES`, `ORIGINAL_SYSTEM`, `EDITED_SYSTEMS_LIST`, `VIDEO_LINK`, `VIDEO_LINK_TYPE`, `WEBSITE_LINK`, `COPYRIGHTS`, `RECORDED_DATE`, `scoreProcessed`, `userid`, `notesOn`, `notesOff`, `pedalOn`, `pedalOff`, `songLength`, `songLengthHIS`, `songTimeBase`, `shortestNoteKey`, `shortestNoteTime`, `longestNoteKey`, `longestNoteTime`, `highestNoteFreq`, `highestNoteFreqPlayed`, `lowestNoteFreq`, `lowestNoteFreqPlayed`, `trackCount`) VALUES
(77, 'user_uploads/8/audio/2019/10/qrs-connect_f9068e45524d7d5cc29cea50d77c7c04.mid', 0, '', 0, '', '', 0, 0, 2015, '0', 77, 0, 0, 1, 0, 0, 0, '2019-10-07 15:40:25', 'Arpeggio', '', '', '', '', '', '', '', '', '', '119', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-07 10:20:43', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(79, 'user_uploads/8/audio/2019/10/qrs-connect_605f10c00c32ad69a2322f1330b271ca.mid', 0, '', 0, '', '', 0, 96, 12158, '0', 242, 0, 0, 1, 0, 0, 0, '2019-10-07 15:40:21', '2019_10_3_008', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-03 04:07:10', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(78, 'user_uploads/8/audio/2019/10/qrs-connect_ebba3c8d181e29a616f390966562f708.mid', 0, '', 0, '', '', 0, 226, 16720, '0', 241, 0, 0, 1, 0, 0, 0, '2019-10-07 15:40:21', '2019_10_3_007', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-03 04:05:56', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(77, 'user_uploads/8/audio/2019/10/qrs-connect_47d05029dc7a74742f20e4f7c8681325.mid', 0, '', 0, '', '', 0, 326, 30052, '0', 240, 0, 0, 1, 0, 0, 0, '2019-10-07 15:40:21', '2019_10_3_006', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-03 04:05:38', 0, 8, 326, 329, 156, 47, 280518, '00:00:28', 5000, 'E3', 162, 'C4', 16189, 69, 'C4', 2, 'Ab5', 1),
(89, 'user_uploads/8/audio/2019/10/qrs-connect_3b3b3f7b5e8c63d5749adc6fd1f6901c.mid', 0, '', 0, '', '', 0, 71, 21899, '0', 293, 0, 0, 1, 0, 0, 0, '2019-10-07 20:12:20', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-07 04:12:20', 0, 8, 71, 69, 301, 254, 198987, '00:00:19', 5000, 'E4', 705, 'B1', 31577, 29, 'Db4', 2, 'B1', 1),
(90, 'user_uploads/8/audio/2019/10/qrs-connect_006c37e65c381e031ca90ae421fdbe37.mid', 0, '', 0, '', '', 0, 225, 58929, '0', 580, 0, 0, 1, 0, 0, 0, '2019-10-08 12:33:15', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-08 08:33:15', 0, 8, 225, 219, 245, 75, 569295, '00:00:56', 5000, 'Eb4', 561, 'Ab2', 43522, 64, 'E4', 2, 'A2', 1),
(40, 'user_uploads/2/audio/2019/10/qrs-connect_b1cbec39b3b2fef59a85d450c44a0adc.mid', 0, '', 0, '', '', 0, 0, 80121, '0', 40, 0, 0, 1, 0, 0, 0, '2019-10-07 15:01:08', 'Test-Plunger-Hold-1-Second', '', '', '', '', '', '', '', '', '', '480', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-07 10:20:43', 0, 2, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(26, 'user_uploads/8/audio/2019/10/qrs-connect_f72bc8558034ba9bf440c1a5f0868574.mid', 0, '', 0, '', '', 0, 0, 19924, '0', 26, 0, 0, 1, 0, 0, 0, '2019-10-07 15:01:08', 'Test-Chromatic-Velocity-001', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-07 10:20:43', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(253, 'user_uploads/8/audio/2019/10/qrs-connect_3c6fda16216b8ed7702c9e7c1cd6fd2f.mid', 0, '', 0, '', '', 0, 27799, 2115393, '0', 241, 0, 0, 1, 0, 0, 0, '2019-10-07 15:01:05', '2019_9_27_002', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-27 09:34:36', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(233, 'user_uploads/8/audio/2019/10/qrs-connect_245ad94b4715805b75ed97f4468c455d.mid', 0, '', 0, '', '', 0, 4079, 278903, '0', 221, 0, 0, 1, 0, 0, 0, '2019-10-07 15:01:02', '2019_9_20_025', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 04:12:44', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(237, 'user_uploads/8/audio/2019/10/qrs-connect_0cfb1e3c75b4d5f155877875e0184e93.mid', 0, '', 0, '', '', 0, 276, 59367, '0', 225, 0, 0, 1, 0, 0, 0, '2019-10-07 15:01:02', '2019_9_22_001', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-22 11:18:10', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(20, 'user_uploads/8/audio/2019/10/qrs-connect_f77846f14a4caecb6f5b9f9f6d1cdcf9.mid', 0, '', 0, '', '', 0, 0, 41611, '0', 20, 0, 0, 1, 0, 0, 0, '2019-10-07 15:01:02', '2019_9_20_029', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 04:44:44', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(237, 'user_uploads/8/audio/2019/10/qrs-connect_5b43d0fe102ce7c28c4b11fbe8e6f82c.mid', 0, '', 0, '', '', 0, 276, 59367, '0', 225, 0, 0, 1, 0, 0, 0, '2019-10-07 15:01:02', '2019_9_22_001', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-22 11:18:10', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(254, 'user_uploads/8/audio/2019/10/qrs-connect_05c1daa240975b36cd14a65724f6fde0.mid', 0, '', 0, '', '', 0, 159, 46103, '0', 248, 0, 0, 1, 0, 0, 0, '2019-10-11 14:48:09', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-11 10:48:09', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(255, 'user_uploads/8/audio/2019/10/qrs-connect_f3e4e5be75a81ef126d84ac1d2c9a60c.mid', 0, '', 0, '', '', 0, 130, 14096, '0', 253, 0, 0, 1, 0, 0, 0, '2019-10-11 15:11:09', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-11 11:11:09', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(256, 'user_uploads/8/audio/2019/10/qrs-connect_3d4279f9d4aee53fed5e1899606ca4bd.mid', 0, '', 0, '', '', 0, 118, 11153, '0', 258, 0, 0, 1, 0, 0, 0, '2019-10-11 15:13:43', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-11 11:13:43', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(91, 'user_uploads/8/audio/2019/10/qrs-connect_c010eb8167269a630695ecd6587a9dc7.mid', 0, '', 0, '', '', 0, 515, 21054, '0', 1157, 0, 0, 1, 0, 0, 0, '2019-10-11 15:37:46', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-11 11:37:46', 0, 8, 515, 512, 84, 13, 208462, '00:00:20', 5000, 'Eb2', 13, 'Bb4', 11277, 75, 'Eb2', 2, 'F1', 1),
(92, 'user_uploads/8/audio/2019/10/qrs-connect_3ecbd8cc644251cd09a9ba606604207c.mid', 0, '', 0, '', '', 0, 95, 12541, '0', 1162, 0, 0, 1, 0, 0, 0, '2019-10-11 15:55:54', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-11 11:55:54', 0, 8, 95, 94, 259, 231, 105409, '00:00:10', 5000, 'Eb2', 23, 'Ab3', 2250, 44, 'D2', 2, 'Db3', 1),
(93, 'user_uploads/8/audio/2019/10/qrs-connect_2e1b752edacbd6af947bd64272200ddf.mid', 0, '', 0, '', '', 0, 7, 7484, '0', 1167, 0, 0, 1, 0, 0, 0, '2019-10-11 15:58:30', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-11 11:58:30', 0, 8, 7, 6, 0, 0, 54840, '00:00:05', 5000, 'C5', 8872, 'Eb5', 11581, 2, 'E5', 1, 'E4', 1),
(91, 'user_uploads/8/audio/2019/10/qrs-connect_3c884e06f01515b48ffa2b7ca77da8cd.mid', 0, '', 0, '', '', 0, 515, 21054, '0', 1158, 0, 0, 1, 0, 0, 0, '2019-10-11 15:37:50', '2019_10_11_001', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-11 11:37:46', 0, 8, 515, 512, 84, 13, 208462, '00:00:20.846', 5000, 'Eb2', 13, 'Bb4', 11277, 75, 'Eb2', 2, 'F1', 1),
(94, 'user_uploads/8/audio/2019/10/qrs-connect_c58685dca0806d116600c6fd4916d2b4.mid', 0, '', 0, '', '', 0, 39, 10313, '0', 1172, 0, 0, 1, 0, 0, 0, '2019-10-11 16:35:42', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-11 12:35:42', 0, 8, 39, 39, 0, 0, 83135, '00:00:08', 5000, 'E4', 639, 'C3', 1969, 30, 'C3', 2, 'D4', 1),
(95, 'user_uploads/8/audio/2019/10/qrs-connect_edad307cf3e0ef9735131bbb95ea4e47.mid', 0, '', 0, '', '', 0, 18, 5167, '0', 1177, 0, 0, 1, 0, 0, 0, '2019-10-11 16:56:57', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-11 12:56:57', 0, 8, 18, 18, 0, 0, 31674, '00:00:03', 5000, 'D6', 658, 'E6', 2520, 10, 'D6', 2, 'B6', 1),
(257, 'user_uploads/2/audio/2019/10/qrs-connect_627f2356823c1d7320ffea83742062f6.mid', 0, '', 0, '', '', 0, 31, 5832, '0', 263, 0, 0, 1, 0, 0, 0, '2019-10-11 16:58:13', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-11 12:58:13', 0, 2, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(96, 'user_uploads/8/audio/2019/10/qrs-connect_ce20d1597ec91c3dd9eaa4e947d3929a.mid', 0, '', 0, '', '', 0, 32, 5826, '0', 1182, 0, 0, 1, 0, 0, 0, '2019-10-11 16:58:15', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-11 12:58:15', 0, 8, 32, 31, 0, 0, 38258, '00:00:03', 5000, 'Eb5', 753, 'F4', 2135, 8, 'C5', 2, 'E5', 1),
(6, 'user_uploads/1/audio/2019/10/qrs-connect_734137ea723859ac4443aa62ff8da499.mid', 0, '', 0, '', '', 0, 0, 19924, '0', 6, 0, 0, 1, 0, 0, 0, '2019-10-11 17:46:14', 'Test-Chromatic-Velocity-001', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0119000008', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-11 01:32:38', 0, 1, 159, 159, 0, 0, 19140, '00:00:19.938', 480, '0', 0, 'Db1,D1,Eb1,E1,F1,F#1,G1,Ab1,A1,Bb1,B1,C2,Db2,D2,Eb2,E2,F2,F#2,G2,Ab2,A2,Bb2,B2,C3,Db3,D3,Eb3,E3,F3,F#3,G3,Ab3,A3,Bb3,B3,C4,Db4,D4,Eb4,E4,F4,F#4,G4,Ab4,A4,Bb4,B4,C5,Db5,D5,Eb5,E5,F5,F#5,G5,Ab5,A5,Bb5,B5,C6,Db6,D6,Eb6,E6,F6,F#6,G6,Ab6,A6,Bb6,B6,C7,Db7,D7,Eb7,E7,F7,F#7,G7,Ab7', 120, 4, 'Db1', 2, 'Ab7', 1),
(5, 'user_uploads/1/audio/2019/10/qrs-connect_fd4f74e53b33226fe872a668974bd222.mid', 0, '', 0, '', '', 0, 0, 2015, '0', 5, 0, 0, 1, 0, 0, 0, '2019-10-11 17:46:14', 'Arpeggio', '', '', '', '', '', '', '', '', '', '119', '', '', '', '', '', '', 'QRSC0119000008', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-11 01:32:38', 0, 1, 8, 8, 0, 0, 1536, '00:00:02.17', 384, '0', 0, 'C4,E4,G4,B4,D5,F5,A5,C6', 192, 2, 'C4', 2, 'C4', 1),
(258, 'user_uploads/2/audio/2019/10/qrs-connect_e0efdf0be113cfcc5c09025558852c2c.mid', 0, '', 0, '', '', 0, 20, 11554, '0', 760, 0, 0, 1, 0, 0, 0, '2019-10-14 16:30:38', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-14 12:30:38', 0, 2, 20, 20, 224, 224, 95523, '00:00:09', 5000, 'Bb1', 263, 'Bb1', 1580, 24, 'Db1', 16, 'Bb1', 1),
(259, 'user_uploads/2/audio/2019/10/qrs-connect_a7e51f4940745e736fe71d65de196b95.mid', 0, '', 0, '', '', 0, 19, 8336, '0', 765, 0, 0, 1, 0, 0, 0, '2019-10-14 16:30:56', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-14 12:30:56', 0, 2, 19, 19, 224, 224, 63360, '00:00:06', 5000, 'Ab7', 492, 'Db1', 1359, 36, 'Ab7', 2, 'Db1', 1),
(260, 'user_uploads/2/audio/2019/10/qrs-connect_c39aef02230d7c8d249dd45e20505e1a.mid', 0, '', 0, '', '', 0, 83, 25703, '0', 770, 0, 0, 1, 0, 0, 0, '2019-10-14 16:31:29', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-14 12:31:29', 0, 2, 83, 83, 224, 224, 237028, '00:00:23', 5000, 'Ab7', 570, 'Eb1', 1039, 164, 'Ab7', 2, 'Eb1', 1),
(261, 'user_uploads/2/audio/2019/10/qrs-connect_eb59cc174892d8c7246c8297eff6bbb9.mid', 0, '', 0, '', '', 0, 44, 16852, '0', 775, 0, 0, 1, 0, 0, 0, '2019-10-14 16:32:13', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-14 12:32:13', 0, 2, 44, 44, 224, 224, 148518, '00:00:14', 5000, 'Eb1', 323, 'Eb1', 8724, 52, 'Eb1', 2, 'E1', 1),
(262, 'user_uploads/2/audio/2019/10/qrs-connect_09d2f6bb99cdec3306ad1c140c60c44c.mid', 0, '', 0, '', '', 0, 8, 4293, '0', 780, 0, 0, 1, 0, 0, 0, '2019-10-14 16:33:20', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-14 12:33:20', 0, 2, 8, 8, 224, 224, 22914, '00:00:02', 5000, 'Eb1', 141, 'Eb1', 6866, 16, 'Eb1', 16, 'Eb1', 1),
(263, 'user_uploads/2/audio/2019/10/qrs-connect_302658f9837428eeb32e17db84859891.mid', 0, '', 0, '', '', 0, 21, 11150, '0', 785, 0, 0, 1, 0, 0, 0, '2019-10-14 16:33:38', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-14 12:33:38', 0, 2, 21, 21, 448, 448, 91476, '00:00:09', 5000, 'D1', 244, 'Db1', 1458, 26, 'Db1', 8, 'Eb1', 1),
(264, 'user_uploads/2/audio/2019/10/qrs-connect_3357c81c0ca2a0dc1ce10e606cba3fb6.mid', 0, '', 0, '', '', 0, 22, 5501, '0', 790, 0, 0, 1, 0, 0, 0, '2019-10-14 16:36:41', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-14 12:36:41', 0, 2, 22, 21, 224, 224, 34988, '00:00:03', 5000, 'F1', 1227, 'E1', 1255, 2, 'Db1', 1, 'Bb2', 1),
(265, 'user_uploads/2/audio/2019/10/qrs-connect_45c3eef35c91ff442007b77c6a4dbedd.mid', 0, '', 0, '', '', 0, 208, 20104, '0', 795, 0, 0, 1, 0, 0, 0, '2019-10-14 16:37:33', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-14 12:37:33', 0, 2, 208, 210, 292, 288, 181027, '00:00:18', 5000, 'F#4', 186, 'A4', 9653, 31, 'A4', 4, 'D1', 1),
(266, 'user_uploads/2/audio/2019/10/qrs-connect_f086223eba4e6ace999b1a357f7dcc4d.mid', 0, '', 0, '', '', 0, 184, 19731, '0', 800, 0, 0, 1, 0, 0, 0, '2019-10-14 16:37:52', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-14 12:37:52', 0, 2, 184, 183, 296, 288, 177307, '00:00:17', 5000, 'F#4', 141, 'A4', 12057, 24, 'A4', 2, 'E7', 1),
(267, 'user_uploads/2/audio/2019/10/qrs-connect_47432b9245796060bb49d249089a960e.mid', 0, '', 0, '', '', 0, 92, 36424, '0', 805, 0, 0, 1, 0, 0, 0, '2019-10-14 16:41:28', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-14 12:41:28', 0, 2, 92, 92, 448, 448, 344240, '00:00:34', 5000, 'Eb1', 317, 'Eb1', 8604, 112, 'Ab7', 4, 'E1', 1),
(268, 'user_uploads/2/audio/2019/10/qrs-connect_6ea3b4355c87e70ad84ad599c9786f05.mid', 0, '', 0, '', '', 0, 73, 23152, '0', 810, 0, 0, 1, 0, 0, 0, '2019-10-14 16:41:56', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-14 12:41:56', 0, 2, 73, 73, 224, 224, 211500, '00:00:21', 5000, 'Eb1', 330, 'Eb1', 1415, 134, 'Eb1', 12, 'Ab7', 1),
(269, 'user_uploads/2/audio/2019/10/qrs-connect_8284c40e6b0a551342a6281deab0157d.mid', 0, '', 0, '', '', 0, 1, 3091, '0', 815, 0, 0, 1, 0, 0, 0, '2019-10-14 16:42:01', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-14 12:42:01', 0, 2, 1, 1, 0, 0, 10915, '00:00:01', 5000, '0', 0, 'Eb7', 10913, 2, 'Eb7', 2, 'Eb7', 1),
(270, 'user_uploads/2/audio/2019/10/qrs-connect_da7e4d966ae76ee4d017ce132a65931f.mid', 0, '', 0, '', '', 0, 1, 3088, '0', 820, 0, 0, 1, 0, 0, 0, '2019-10-14 16:42:17', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-14 12:42:17', 0, 2, 1, 1, 0, 0, 10877, '00:00:01', 5000, '0', 0, 'D1', 10874, 2, 'D1', 2, 'D1', 1),
(271, 'user_uploads/2/audio/2019/10/qrs-connect_d2f755e9e894194b2d45d2958f5885d2.mid', 0, '', 0, '', '', 0, 1, 3066, '0', 825, 0, 0, 1, 0, 0, 0, '2019-10-14 16:42:21', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-14 12:42:21', 0, 2, 1, 1, 0, 0, 10662, '00:00:01', 5000, '0', 0, 'Db1', 10659, 2, 'Db1', 2, 'Db1', 1),
(272, 'user_uploads/2/audio/2019/10/qrs-connect_c1bcc1670e8d6fdc7a62eda9cab3cb95.mid', 0, '', 0, '', '', 0, 1, 3066, '0', 830, 0, 0, 1, 0, 0, 0, '2019-10-14 16:42:28', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-14 12:42:28', 0, 2, 1, 2, 0, 0, 10357, '00:00:01', 5000, '0', 0, 'Db1', 10355, 3, 'Db1', 3, 'Db1', 1),
(273, 'user_uploads/2/audio/2019/10/qrs-connect_034cb4a696d28a68531fc3724d90f23a.mid', 0, '', 0, '', '', 0, 2, 4610, '0', 835, 0, 0, 1, 0, 0, 0, '2019-10-14 16:42:55', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-14 12:42:55', 0, 2, 2, 3, 0, 0, 25818, '00:00:02', 5000, 'Db1', 10360, 'Eb1', 10873, 3, 'Db1', 2, 'Eb1', 1),
(274, 'user_uploads/2/audio/2019/10/qrs-connect_d734a268dd3895540db00e0909899c07.mid', 0, '', 0, '', '', 0, 655, 33079, '0', 840, 0, 0, 1, 0, 0, 0, '2019-10-14 16:49:32', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-14 12:49:32', 0, 2, 655, 666, 346, 277, 310801, '00:00:31', 5000, 'Eb4', 19, 'F#3', 97465, 116, 'C4', 2, 'Db2', 1),
(21, 'user_uploads/1/audio/2019/10/qrs-connect_24145cfb69f53b3f6fc157dac115b05c.mp3', 1, '', 0, '', '', 0, 0, 3000, '0', 21, 0, 0, 1, 0, 0, 0, '2019-10-11 18:31:24', 'Sweep', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0119000008', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-11 01:32:38', 0, 1, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(275, 'user_uploads/2/audio/2019/10/qrs-connect_6d45e8f18bfec5fc68f2b73103fcf9cd.mid', 0, '', 0, '', '', 0, 7, 5533, '0', 576, 0, 0, 1, 0, 0, 0, '2019-10-16 15:46:04', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-16 11:46:04', 0, 2, 7, 6, 240, 229, 35342, '00:00:03', 5000, 'A2', 5816, 'F#1', 14162, 2, 'D2', 1, 'D4', 1),
(276, 'user_uploads/2/audio/2019/10/qrs-connect_d87a22ce0fada55a04e6f5289a4e86b4.mid', 0, '', 0, '', '', 0, 21, 5971, '0', 581, 0, 0, 1, 0, 0, 0, '2019-10-16 16:07:55', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-16 12:07:55', 0, 2, 21, 20, 237, 228, 39718, '00:00:03', 5000, 'B2', 443, 'F#3', 14459, 7, 'B2', 1, 'G2', 1),
(277, 'user_uploads/2/audio/2019/10/qrs-connect_b54d04cf9a60c76bf7f45bc8f84accfd.mid', 0, '', 0, '', '', 0, 21, 6107, '0', 586, 0, 0, 1, 0, 0, 0, '2019-10-16 16:08:09', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-16 12:08:09', 0, 2, 21, 19, 237, 228, 41008, '00:00:04', 5000, 'D4', 603, 'D4', 13888, 10, 'D4', 3, 'G2', 1),
(278, 'user_uploads/2/audio/2019/10/qrs-connect_19ddcafaeef26ca1d676691d6e772142.mid', 0, '', 0, '', '', 0, 723, 47949, '0', 883, 0, 0, 1, 0, 0, 0, '2019-10-16 18:23:16', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-16 02:23:16', 0, 2, 723, 723, 288, 288, 459491, '00:00:45', 5000, 'Db1', 191, 'C5', 3005, 24, 'Db1', 8, 'Ab7', 1),
(279, 'user_uploads/2/audio/2019/10/qrs-connect_2634cc927b9a5166fbd09fcfbac164f7.mid', 0, '', 0, '', '', 0, 7148, 134404, '0', 888, 0, 0, 1, 0, 0, 0, '2019-10-16 18:25:32', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-16 02:25:32', 0, 2, 7148, 7153, 32, 32, 1324034, '00:02:12', 5000, 'C7', 3, 'F1', 4191, 250, 'A6', 48, 'E1', 1),
(280, 'user_uploads/2/audio/2019/10/qrs-connect_f03bc5916f8c99d4c051624a3ff09d34.mid', 0, '', 0, '', '', 0, 125, 10071, '0', 893, 0, 0, 1, 0, 0, 0, '2019-10-16 18:25:50', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-16 02:25:50', 0, 2, 125, 124, 224, 224, 80729, '00:00:08', 5000, 'E6', 109, 'E6', 8202, 12, 'G6', 4, 'E1', 1),
(281, 'user_uploads/2/audio/2019/10/qrs-connect_377a7702717f6bdc6b744b4deba16fea.mid', 0, '', 0, '', '', 0, 6484, 126075, '0', 898, 0, 0, 1, 0, 0, 0, '2019-10-16 18:34:26', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-16 02:34:26', 0, 2, 6484, 6489, 224, 224, 1240722, '00:02:04', 5000, 'C2', 3, 'F#2', 7430, 246, 'E4', 48, 'D1', 1),
(282, 'user_uploads/2/audio/2019/10/qrs-connect_91d15d53368e877e3868eb61200370ad.mid', 0, '', 0, '', '', 0, 4983, 160366, '0', 903, 0, 0, 1, 0, 0, 0, '2019-10-16 18:37:09', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-16 02:37:09', 0, 2, 4983, 5120, 566, 73, 1582881, '00:02:38', 5000, 'Eb5,G5', 3, 'Eb6', 13802, 692, 'Eb5', 4, 'Db3', 1),
(283, 'user_uploads/2/audio/2019/10/qrs-connect_26ae0c96f752cd7eedfe76d2d33385f5.mid', 0, '', 0, '', '', 0, 101, 8648, '0', 1512, 0, 0, 1, 0, 0, 0, '2019-10-18 20:43:46', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-18 04:43:46', 0, 2, 101, 102, 325, 208, 66487, '00:00:06', 5000, 'G3', 26, 'A2', 6595, 20, 'G3', 4, 'Db5', 1),
(284, 'user_uploads/2/audio/2019/10/qrs-connect_4917ee8f8513dd5baf70f2829624296d.mid', 0, '', 0, '', '', 0, 46, 5284, '0', 1517, 0, 0, 1, 0, 0, 0, '2019-10-18 21:10:07', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-18 05:10:07', 0, 2, 46, 45, 243, 198, 32851, '00:00:03', 5000, 'D4', 14, 'F5', 3623, 16, 'D5', 4, 'Db4', 1),
(285, 'user_uploads/2/audio/2019/10/qrs-connect_022322f6c52dbf93666ea1ff03385ca4.mid', 0, '', 0, '', '', 0, 1777, 62065, '0', 922, 0, 0, 1, 0, 0, 0, '2019-10-27 15:18:10', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-27 11:18:10', 0, 2, 1777, 1812, 237, 72, 600673, '00:01:00', 5000, 'C4', 2, 'Eb5', 88289, 385, 'Eb4', 4, 'Eb1', 1),
(2, 'user_uploads/8/audio/2019/11/qrs-connect_3e5f55a7d2864fafa5f3717cefdf338b.flac', 6, '', 0, '', '', 0, 0, -1, '0', 26, 0, 0, 1, 0, 0, 0, '2019-11-12 16:40:55', 'yes-tom1.flac-User_Recording-0-2019-11-12', 'User', 'User', '', 'User', '', 'My Album', 'Contemporary', '', '', '', '', 'Piano', '0', '', '', '', 'QRSC0819807003', '', '', '', 'User', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-23 12:04:44', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(102, 'user_uploads/8/audio/2019/11/qrs-connect_b8cbe2315e7370b25b4dbe5005f54fc0.flac', 6, '', 0, '', '', 0, 0, 11007, '0', 1276, 0, 0, 1, 0, 0, 0, '2019-11-12 16:43:48', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-12 11:43:48', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(103, 'user_uploads/8/audio/2019/11/qrs-connect_9c62204af99eca948b8cadbee3fd96a1.flac', 6, '', 0, '', '', 0, 0, 17801, '0', 1281, 0, 0, 1, 0, 0, 0, '2019-11-12 16:47:51', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-12 11:47:51', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(104, 'user_uploads/8/audio/2019/11/qrs-connect_6d9a746713ed073752463136c9bc430c.flac', 6, '', 0, '', '', 0, 0, 23206, '0', 1286, 0, 0, 1, 0, 0, 0, '2019-11-12 16:55:12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-12 11:55:12', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(105, 'user_uploads/8/audio/2019/11/qrs-connect_0f59c548ca5e877971b1f987ba3b96e2.flac', 6, '', 0, '', '', 0, 0, 20205, '0', 1291, 0, 0, 1, 0, 0, 0, '2019-11-12 16:57:27', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-12 11:57:28', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(106, 'user_uploads/8/audio/2019/11/qrs-connect_5e48ccf69846e96dfdcf89890afe61e3.flac', 6, '', 0, '', '', 0, 0, 15802, '0', 1296, 0, 0, 1, 0, 0, 0, '2019-11-12 17:33:27', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-12 12:33:27', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(107, 'user_uploads/8/audio/2019/11/qrs-connect_eba091f877b36fda1eed22e8a74bb3d9.flac', 6, '', 0, '', '', 0, 0, 18406, '0', 1301, 0, 0, 1, 0, 0, 0, '2019-11-12 17:38:57', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-12 12:38:57', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(108, 'user_uploads/8/audio/2019/11/qrs-connect_04dc9149a558c02b7fcf2b48a1cc94f0.flac', 6, '', 0, '', '', 0, 0, 20401, '0', 1306, 0, 0, 1, 0, 0, 0, '2019-11-12 17:41:07', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-12 12:41:07', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(109, 'user_uploads/8/audio/2019/11/qrs-connect_a090ac5d6b3177ccd9229c0fe1273039.flac', 6, '', 0, '', '', 0, 0, 22999, '0', 1311, 0, 0, 1, 0, 0, 0, '2019-11-12 17:41:40', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-12 12:41:40', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(110, 'user_uploads/8/audio/2019/11/qrs-connect_eea29397764f61d9afe431ae3f819443.flac', 6, '', 0, '', '', 0, 0, 13607, '0', 1316, 0, 0, 1, 0, 0, 0, '2019-11-12 17:42:05', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-12 12:42:05', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(111, 'user_uploads/8/audio/2019/11/qrs-connect_eba02200e0f11de9310b8db1ad674b5a.flac', 6, '', 0, '', '', 0, 0, 11389, '0', 1321, 0, 0, 1, 0, 0, 0, '2019-11-12 17:42:32', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-12 12:42:32', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(112, 'user_uploads/8/audio/2019/11/qrs-connect_29333441a14ad0c96de59b1258a37356.flac', 6, '', 0, '', '', 0, 0, 14005, '0', 1326, 0, 0, 1, 0, 0, 0, '2019-11-12 17:43:03', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-12 12:43:03', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(113, 'user_uploads/8/audio/2019/11/qrs-connect_80601607cffee8ba66692e87a4388c41.flac', 6, '', 0, '', '', 0, 0, 11605, '0', 1331, 0, 0, 1, 0, 0, 0, '2019-11-12 17:45:34', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-12 12:45:34', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(114, 'user_uploads/8/audio/2019/11/qrs-connect_06ce355c4b393d0cd4fdfb6b01849938.flac', 6, '', 0, '', '', 0, 0, 31200, '0', 1336, 0, 0, 1, 0, 0, 0, '2019-11-12 17:46:20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-12 12:46:21', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(115, 'user_uploads/8/audio/2019/11/qrs-connect_b7051791245d62cb77009839a208678f.flac', 6, '', 0, '', '', 0, 0, 14602, '0', 1341, 0, 0, 1, 0, 0, 0, '2019-11-12 17:46:42', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-12 12:46:42', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(116, 'user_uploads/8/audio/2019/11/qrs-connect_a53e6363af604ab8ba52f41d2d9e9cdd.flac', 6, '', 0, '', '', 0, 0, 20202, '0', 1346, 0, 0, 1, 0, 0, 0, '2019-11-12 17:47:30', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-12 12:47:30', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(117, 'user_uploads/8/audio/2019/11/qrs-connect_c20b8024dbd7182270d967cd3f6cd80b.flac', 6, '', 0, '', '', 0, 0, 11200, '0', 1351, 0, 0, 1, 0, 0, 0, '2019-11-12 17:48:45', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-12 12:48:45', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(118, 'user_uploads/8/audio/2019/11/qrs-connect_4d5ef5f45e6604fc030a8c4223b81e9f.flac', 6, '', 0, '', '', 0, 0, 14998, '0', 1356, 0, 0, 1, 0, 0, 0, '2019-11-12 17:50:07', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-12 12:50:07', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(119, 'user_uploads/8/audio/2019/11/qrs-connect_e0b4e5ac04e7ac983421b32eb83ed429.flac', 6, '', 0, '', '', 0, 0, 20795, '0', 1361, 0, 0, 1, 0, 0, 0, '2019-11-12 17:50:55', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-12 12:50:55', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(120, 'user_uploads/8/audio/2019/11/qrs-connect_ad9381f17963d3165fee6c9b42c3be51.flac', 6, '', 0, '', '', 0, 0, 11407, '0', 1366, 0, 0, 1, 0, 0, 0, '2019-11-12 18:46:08', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-12 01:46:08', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(121, 'user_uploads/8/audio/2019/11/qrs-connect_5ae288c70e8add4584298d1dfc64e516.flac', 6, '', 0, '', '', 0, 0, 55074, '0', 1371, 0, 0, 1, 0, 0, 0, '2019-11-12 18:49:31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-12 01:49:31', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(122, 'user_uploads/8/audio/2019/11/qrs-connect_307ca5c547a26cb013fc88460f04061b.flac', 6, '', 0, '', '', 0, 0, 9681, '0', 1376, 0, 0, 1, 0, 0, 0, '2019-11-12 18:54:07', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-12 01:54:07', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(286, 'user_uploads/2/audio/2019/11/qrs-connect_04188d55d0f0160a3d3abaa30a2ae1cd.mid', 0, '', 0, '', '', 0, 9492, 1391864, '0', 1543, 0, 0, 1, 0, 0, 0, '2019-11-12 20:05:05', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-12 03:05:05', 0, 2, 9492, 9493, 6486, 1833, 13898740, '00:23:09', 5000, 'Db2', 23, 'Eb2', 94017, 984, 'F5', 2, 'F#7', 1),
(1, 'user_uploads/2/audio/2019/11/qrs-connect_f2e5b7cdbdfcea9b7e05c5f0093bf6c1.flac', 6, '', 0, '', '', 0, 0, 11798, '0', 4, 0, 0, 1, 0, 0, 0, '2019-11-13 16:48:14', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC1119000027', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-13 11:48:15', 0, 2, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(2, 'user_uploads/13/audio/2019/11/qrs-connect_8c402a2bd97fe94d5ce0c561b304532e.flac', 6, '', 0, '', '', 0, 0, 14838, '0', 6, 0, 0, 1, 0, 0, 0, '2019-11-15 18:09:24', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC1119000027', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-15 01:09:24', 0, 13, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(1, 'user_uploads/12/audio/2019/11/qrs-connect_e0fffd36fde5d8601e736a089fdab05f.flac', 6, '', 0, '', '', 0, 0, 55609, '0', 4, 0, 0, 1, 0, 0, 0, '2019-11-15 20:17:35', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC1119000026', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-15 03:17:38', 0, 12, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(123, 'user_uploads/8/audio/2019/11/qrs-connect_b6b10d41d3351faf8b0e20b4c5f60ef1.flac', 6, '', 0, '', '', 0, 0, 34204, '0', 4, 0, 0, 1, 0, 0, 0, '2019-11-19 14:48:13', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-19 09:48:14', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(124, 'user_uploads/8/audio/2019/11/qrs-connect_fad05d6acd4d40805395d0aeeae19467.mid', 0, '', 0, '', '', 0, 18, 7750, '0', 9, 0, 0, 1, 0, 0, 0, '2019-11-19 15:12:05', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-19 10:12:05', 0, 8, 18, 18, 0, 0, 57495, '00:00:05', 5000, 'E3', 2786, 'G3', 8941, 12, 'B3', 2, 'F3', 1),
(125, 'user_uploads/8/audio/2019/11/qrs-connect_3f5fafe901126809a24c1c0f42a0c3c9.mid', 0, '', 0, '', '', 0, 9, 7589, '0', 14, 0, 0, 1, 0, 0, 0, '2019-11-19 15:12:43', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-19 10:12:43', 0, 8, 9, 9, 0, 0, 55893, '00:00:05', 5000, 'C4', 5005, 'F3', 15983, 8, 'C4', 4, 'A3', 1),
(126, 'user_uploads/8/audio/2019/11/qrs-connect_0639ffdb95c382cac3a10e43b2eaa463.flac', 6, '', 0, '', '', 0, 0, 20003, '0', 19, 0, 0, 1, 0, 0, 0, '2019-11-19 15:15:15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-19 10:15:16', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(24, 'user_uploads/1/audio/2019/11/qrs-connect_23d66d1896284e8a2a50dd66fca76483.mid', 0, '', 0, '', '', 0, 0, 19924, '0', 24, 0, 0, 1, 0, 0, 0, '2019-11-07 11:04:05', 'Test-Chromatic-Velocity-127', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000034', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-15 10:27:08', 0, 1, 159, 159, 0, 0, 19140, '00:00:19.938', 480, '0', 0, 'Db1,D1,Eb1,E1,F1,F#1,G1,Ab1,A1,Bb1,B1,C2,Db2,D2,Eb2,E2,F2,F#2,G2,Ab2,A2,Bb2,B2,C3,Db3,D3,Eb3,E3,F3,F#3,G3,Ab3,A3,Bb3,B3,C4,Db4,D4,Eb4,E4,F4,F#4,G4,Ab4,A4,Bb4,B4,C5,Db5,D5,Eb5,E5,F5,F#5,G5,Ab5,A5,Bb5,B5,C6,Db6,D6,Eb6,E6,F6,F#6,G6,Ab6,A6,Bb6,B6,C7,Db7,D7,Eb7,E7,F7,F#7,G7,Ab7', 120, 4, 'Db1', 2, 'Ab7', 1),
(127, 'user_uploads/8/audio/2019/11/qrs-connect_d35e24e6b7331d5f9b13b99c3f1c9e59.mid', 0, '', 0, '', '', 0, 32, 10368, '0', 292, 0, 0, 1, 0, 0, 0, '2019-11-20 15:40:21', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-20 10:40:21', 0, 8, 32, 32, 0, 0, 83681, '00:00:08', 5000, 'B3', 1008, 'C4', 5815, 26, 'C4', 6, 'G3', 1),
(128, 'user_uploads/8/audio/2019/11/qrs-connect_70fccb089b2becf5138ee151f70bd79e.flac', 6, '', 0, '', '', 0, 0, 61809, '0', 4, 0, 0, 1, 0, 0, 0, '2019-11-25 14:15:27', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-25 09:15:28', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(129, 'user_uploads/8/audio/2019/11/qrs-connect_0ee63c7487945814de84b8bbf2f8c336.mid', 0, '', 0, '', '', 0, 67, 11200, '0', 9, 0, 0, 1, 0, 0, 0, '2019-11-25 15:30:05', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-25 10:30:05', 0, 8, 67, 67, 0, 0, 91999, '00:00:09', 5000, 'G3', 995, 'C4', 4333, 36, 'F3', 2, 'F#3', 1),
(130, 'user_uploads/8/audio/2019/11/qrs-connect_f72021d14fc0b5df01e63f1828771167.flac', 6, '', 0, '', '', 0, 0, 14000, '0', 14, 0, 0, 1, 0, 0, 0, '2019-11-25 15:39:11', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-25 10:39:11', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(131, 'user_uploads/8/audio/2019/11/qrs-connect_da73db30e29f84ebefff03a288d8b15c.flac', 6, '', 0, '', '', 0, 0, 16411, '0', 19, 0, 0, 1, 0, 0, 0, '2019-11-25 16:28:06', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-25 11:28:06', 0, 8, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, 0, '', 0, '', 0),
(3, 'user_uploads/4/audio/2019/11/qrs-connect_c0d198c6f5ce5efd4e6c2c012b774d4c.mid', 0, '', 0, '', '', 0, 12, 8612, '0', 16, 0, 0, 1, 0, 0, 0, '2019-11-25 17:02:58', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000013', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-25 12:02:58', 0, 4, 12, 12, 0, 0, 66118, '00:00:06', 5000, 'F6', 900, 'F5', 6638, 8, 'F6', 2, 'G7', 1),
(4, 'user_uploads/4/audio/2019/11/qrs-connect_02ad35a087bbeffed18bff0f95ecd639.mid', 0, '', 0, '', '', 0, 8, 5174, '0', 21, 0, 0, 1, 0, 0, 0, '2019-11-25 17:04:07', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000013', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-25 12:04:07', 0, 4, 8, 18, 0, 0, 2475, '00:00:00', 5000, 'G5', 654, 'E3', 1135, 3, 'G2', 1, 'F3', 1),
(5, 'user_uploads/4/audio/2019/11/qrs-connect_37d0aee26a3cf22d2ad755fce3dd0f48.mid', 0, '', 0, '', '', 0, 9, 3972, '0', 26, 0, 0, 1, 0, 0, 0, '2019-11-25 17:05:29', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000013', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-25 12:05:29', 0, 4, 9, 13, 2, 2, 19617, '00:00:01', 5000, 'A3', 1308, 'D2', 19037, 2, 'D2', 1, 'E5', 1),
(6, 'user_uploads/4/audio/2019/11/qrs-connect_3f2510f624c577c27bd9c6539927a2cd.mid', 0, '', 0, '', '', 0, 15, 5454, '0', 31, 0, 0, 1, 0, 0, 0, '2019-11-25 17:05:36', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000013', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-25 12:05:36', 0, 4, 15, 6, 0, 0, 34544, '00:00:03', 5000, 'G5', 7650, 'D4', 12114, 4, 'E5', 1, 'C3', 1),
(7, 'user_uploads/4/audio/2019/11/qrs-connect_6a02f07b8c4510e82ccea3a1747d175c.mid', 0, '', 0, '', '', 0, 158, 111981, '0', 36, 0, 0, 1, 0, 0, 0, '2019-11-25 17:07:36', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000013', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-25 12:07:36', 0, 4, 158, 197, 273, 266, 1099797, '00:01:49', 5000, 'G6', 1222, 'C3', 285955, 34, 'B3', 1, 'Db5', 1),
(8, 'user_uploads/4/audio/2019/11/qrs-connect_b18a766a5ff6d432cd4a1040d2e2f761.mid', 0, '', 0, '', '', 0, 34, 46904, '0', 41, 0, 0, 1, 0, 0, 0, '2019-11-25 17:08:44', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000013', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-25 12:08:44', 0, 4, 34, 89, 6, 6, 426087, '00:00:42', 5000, 'C6', 7035, 'A5', 160084, 15, 'Bb5', 1, 'F4', 1),
(9, 'user_uploads/4/audio/2019/11/qrs-connect_35aba977bcfc02694cf9203106f2f13d.mid', 0, '', 0, '', '', 0, 13, 16472, '0', 46, 0, 0, 1, 0, 0, 0, '2019-11-25 17:09:00', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000013', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-25 12:09:00', 0, 4, 13, 10, 11, 11, 144722, '00:00:14', 5000, '0', 0, 'A4', 31015, 4, 'A4', 1, 'E4', 1),
(10, 'user_uploads/4/audio/2019/11/qrs-connect_d4ec0521133dc5704cad5f8292f33dfe.mid', 0, '', 0, '', '', 0, 5, 11029, '0', 51, 0, 0, 1, 0, 0, 0, '2019-11-25 17:09:13', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000013', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-25 12:09:13', 0, 4, 5, 26, 4, 3, 90294, '00:00:09', 5000, 'Eb5', 2313, 'D5', 52809, 5, 'D5', 1, 'A5', 1),
(11, 'user_uploads/4/audio/2019/11/qrs-connect_096aa8617e0f96eac2bbc6f34261fe1d.mid', 0, '', 0, '', '', 0, 7, 6344, '0', 56, 0, 0, 1, 0, 0, 0, '2019-11-25 17:15:06', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000013', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-25 12:15:06', 0, 4, 7, 2, 0, 0, 31465, '00:00:03', 5000, '0', 0, 'Eb6', 17304, 3, 'G5', 1, 'A5', 1),
(12, 'user_uploads/4/audio/2019/11/qrs-connect_1ccf8d602c960cab2605773b46cb2b1f.mid', 0, '', 0, '', '', 0, 3, 2105, '0', 61, 0, 0, 1, 0, 0, 0, '2019-11-25 17:15:11', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000013', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-25 12:15:11', 0, 4, 3, 0, 0, 0, 0, '00:00:00', 5000, '0', 0, '0', 0, 1, 'C6', 1, 'C6', 1),
(13, 'user_uploads/4/audio/2019/11/qrs-connect_8de024cb2bb206d0dd5f94d1f0d52c18.mid', 0, '', 0, '', '', 0, 3, 2938, '0', 66, 0, 0, 1, 0, 0, 0, '2019-11-25 17:15:20', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000013', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-25 12:15:20', 0, 4, 3, 1, 0, 0, 0, '00:00:00', 5000, '0', 0, '0', 0, 2, 'G5', 1, 'C6', 1),
(132, 'user_uploads/8/audio/2019/11/qrs-connect_179ed4b133c35d8a89572caff194d342.mid', 0, '', 0, '', '', 0, 22, 7483, '0', 24, 0, 0, 1, 0, 0, 0, '2019-11-25 17:44:27', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-11-25 12:44:27', 0, 8, 22, 21, 0, 0, 54817, '00:00:05', 5000, 'A4', 1900, 'Bb4', 4452, 14, 'Bb4', 6, 'G4', 1),
(13, 'user_uploads/15/audio/2019/12/qrs-connect_c90f3b8d0c005f3eb4d8a95d08c9e910.mid', 0, '', 0, '', '', 0, 441, 42990, '0', 110, 0, 0, 1, 0, 0, 0, '2019-12-05 15:55:30', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 10:55:30', 0, 15, 441, 463, 0, 0, 409907, '00:00:40', 5000, 'Db1', 110, 'D1', 3924, 344, 'Db1', 5, 'F#1', 1),
(14, 'user_uploads/15/audio/2019/12/qrs-connect_1f171cf2d00fb0d343321d4c7cd733fe.mid', 0, '', 0, '', '', 0, 12, 3746, '0', 141, 0, 0, 1, 0, 0, 0, '2019-12-05 16:07:11', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 11:07:11', 0, 15, 12, 14, 0, 0, 17462, '00:00:01', 5000, 'A5', 325, 'C2', 17369, 4, 'E4', 2, 'C2', 1),
(15, 'user_uploads/15/audio/2019/12/qrs-connect_192eb39e57b04ae6e80983081bc62f66.mid', 0, '', 0, '', '', 0, 137, 18656, '0', 146, 0, 0, 1, 0, 0, 0, '2019-12-05 16:08:34', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 11:08:34', 0, 15, 137, 146, 0, 0, 166489, '00:00:16', 5000, 'Ab1', 250, 'C5', 19328, 56, 'Ab1', 6, 'B1', 1),
(16, 'user_uploads/15/audio/2019/12/qrs-connect_5b863e79fb250f7faca1437d8041ff85.mid', 0, '', 0, '', '', 0, 645, 185710, '0', 151, 0, 0, 1, 0, 0, 0, '2019-12-05 16:17:36', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 11:17:36', 0, 15, 645, 526, 0, 0, 1831625, '00:03:03', 5000, 'F2', 5002, 'A4', 37317, 174, 'F2', 1, 'Db6', 1),
(17, 'user_uploads/15/audio/2019/12/qrs-connect_92827d668b2f9ea3b15f15c57d45a952.mid', 0, '', 0, '', '', 0, 170, 60721, '0', 156, 0, 0, 1, 0, 0, 0, '2019-12-05 16:18:41', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 11:18:41', 0, 15, 170, 107, 671, 518, 587195, '00:00:58', 5000, 'F2', 5155, 'F5', 36459, 57, 'F2', 2, 'Ab4', 1),
(18, 'user_uploads/15/audio/2019/12/qrs-connect_ddf4a40ff76c79f580f6dbe0e5595949.mid', 0, '', 0, '', '', 0, 853, 150964, '0', 161, 0, 0, 1, 0, 0, 0, '2019-12-05 17:58:04', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 12:58:04', 0, 15, 853, 853, 820, 358, 1489655, '00:02:28', 5000, 'F2', 420, 'F5', 36466, 310, 'F2', 2, 'Db6', 1),
(19, 'user_uploads/15/audio/2019/12/qrs-connect_d621cfff1e469472955afed872502387.mid', 0, '', 0, '', '', 0, 675, 116686, '0', 166, 0, 0, 1, 0, 0, 0, '2019-12-05 19:02:27', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 02:02:27', 0, 15, 675, 674, 685, 337, 1146874, '00:01:54', 5000, 'F2', 443, 'F5', 36463, 224, 'F2', 2, 'C3', 1),
(20, 'user_uploads/15/audio/2019/12/qrs-connect_a36b95b42d9532983d99ffa5afe87a49.mid', 0, '', 0, '', '', 0, 278, 60994, '0', 171, 0, 0, 1, 0, 0, 0, '2019-12-05 19:04:48', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 02:04:48', 0, 15, 278, 276, 458, 296, 589943, '00:00:58', 5000, 'F2', 444, 'F5', 36470, 136, 'F2', 2, 'Ab4', 1),
(21, 'user_uploads/15/audio/2019/12/qrs-connect_d7eca48d27ee564a9a795b76af0386b9.mid', 0, '', 0, '', '', 0, 76, 20081, '0', 176, 0, 0, 1, 0, 0, 0, '2019-12-05 19:05:27', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 02:05:27', 0, 15, 76, 73, 293, 258, 180803, '00:00:18', 5000, 'F3', 1079, 'A5', 24762, 51, 'F2', 1, 'A4', 1),
(22, 'user_uploads/15/audio/2019/12/qrs-connect_9eedb5698c28759722646f4505c80d37.mid', 0, '', 0, '', '', 0, 18, 10145, '0', 181, 0, 0, 1, 0, 0, 0, '2019-12-05 19:06:01', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 02:06:01', 0, 15, 18, 17, 217, 202, 81457, '00:00:08', 5000, 'F3', 1430, 'F2', 7245, 21, 'F2', 14, 'F3', 1);
INSERT INTO `MUSIC_LIBRARY` (`MUSIC_ID`, `FILE_PATH`, `FILE_TYPE_ID`, `MD5_SUM`, `FILE_SIZE`, `ACC_FILE_PATH`, `ACC_MD5_SUM`, `ACC_FILE_SIZE`, `NUMBER_OF_NOTES`, `LENGTH_MS`, `DELETED`, `LAST_UPDATED`, `MIDI_DELAY_MS`, `AUDIO_DELAY_MS`, `PITCH_CORRECTION`, `SCRAMBLE_VALUE`, `MIN_FORCE_DIFF`, `REVISION`, `LAST_UPDATED_DATE`, `TITLE`, `ARTIST`, `AUTHOR`, `LYRICIST`, `COMPOSER`, `USER`, `ALBUM`, `GENRE`, `TRACK_IMAGE`, `KEY`, `TEMPO`, `METER`, `ACTIVITY_CATEGORY1`, `ACTIVITY_CATEGORY2`, `GEAR`, `SEGMENT`, `COURSE`, `DEVICE`, `KEYWORDS`, `LYRICS`, `WIKIPEDIA`, `PLAYED_BY`, `TRACK`, `RELEASE_YEAR`, `MULTI_GENRE`, `EVENTS`, `NEW_RELEASE_EPOCH`, `DEFAULT_CURVES`, `ORIGINAL_SYSTEM`, `EDITED_SYSTEMS_LIST`, `VIDEO_LINK`, `VIDEO_LINK_TYPE`, `WEBSITE_LINK`, `COPYRIGHTS`, `RECORDED_DATE`, `scoreProcessed`, `userid`, `notesOn`, `notesOff`, `pedalOn`, `pedalOff`, `songLength`, `songLengthHIS`, `songTimeBase`, `shortestNoteKey`, `shortestNoteTime`, `longestNoteKey`, `longestNoteTime`, `highestNoteFreq`, `highestNoteFreqPlayed`, `lowestNoteFreq`, `lowestNoteFreqPlayed`, `trackCount`) VALUES
(23, 'user_uploads/15/audio/2019/12/qrs-connect_fa3ee3d17a21f5f93f81ddefde55331b.mid', 0, '', 0, '', '', 0, 66, 18751, '0', 186, 0, 0, 1, 0, 0, 0, '2019-12-05 19:06:50', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 02:06:50', 0, 15, 66, 66, 286, 254, 167510, '00:00:16', 5000, 'F3', 1084, 'A5', 24748, 46, 'F2', 2, 'Eb5', 1),
(24, 'user_uploads/15/audio/2019/12/qrs-connect_9143f09566a645ec56a5f56797c97817.mid', 0, '', 0, '', '', 0, 1077, 198104, '0', 191, 0, 0, 1, 0, 0, 0, '2019-12-05 19:14:12', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 02:14:12', 0, 15, 1077, 1079, 1036, 428, 1961025, '00:03:16', 5000, 'Ab2', 81, 'F2', 59219, 376, 'F2', 2, 'Db6', 1),
(25, 'user_uploads/15/audio/2019/12/qrs-connect_e640a57d4e9cfae0c2ce0a67968f46c0.mid', 0, '', 0, '', '', 0, 492, 57499, '0', 196, 0, 0, 1, 0, 0, 0, '2019-12-05 19:15:10', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 02:15:10', 0, 15, 492, 489, 846, 693, 555010, '00:00:55', 5000, 'Ab5', 17, 'Eb4', 26360, 110, 'Eb2', 2, 'C8', 1),
(26, 'user_uploads/15/audio/2019/12/qrs-connect_daac5d90bc4b0d8139086fe7c7737b09.mid', 0, '', 0, '', '', 0, 434, 47732, '0', 201, 0, 0, 1, 0, 0, 0, '2019-12-05 19:16:04', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 02:16:04', 0, 15, 434, 433, 449, 448, 457299, '00:00:45', 5000, 'G1', 938, 'C8', 1059, 10, 'A0', 8, 'G7', 1),
(27, 'user_uploads/15/audio/2019/12/qrs-connect_3e93064d9ea2ed0d1c846b7c90e08b44.mid', 0, '', 0, '', '', 0, 28, 30967, '0', 206, 0, 0, 1, 0, 0, 0, '2019-12-05 19:17:20', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 02:17:20', 0, 15, 28, 27, 449, 448, 289664, '00:00:28', 5000, 'D7,Eb7', 5000, 'D7', 5028, 42, 'D7', 13, 'Eb7', 1),
(28, 'user_uploads/15/audio/2019/12/qrs-connect_90715ec31b910274c5adbe90e0d168a3.mid', 0, '', 0, '', '', 0, 102, 103975, '0', 211, 0, 0, 1, 0, 0, 0, '2019-12-05 19:19:05', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 02:19:05', 0, 15, 102, 101, 225, 224, 1019757, '00:01:41', 5000, 'A0', 4982, 'A0', 5021, 203, 'A0', 203, 'A0', 1),
(29, 'user_uploads/15/audio/2019/12/qrs-connect_ef9c9b3dca4d014e1e693aaabd1e0e77.mid', 0, '', 0, '', '', 0, 41, 7158, '0', 216, 0, 0, 1, 0, 0, 0, '2019-12-05 19:19:37', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 02:19:37', 0, 15, 41, 39, 224, 224, 51588, '00:00:05', 5000, 'Eb4', 981, 'F#2', 4443, 31, 'F#2', 12, 'Eb4', 1),
(30, 'user_uploads/15/audio/2019/12/qrs-connect_c4b9cd277d5c1d22f5fce9e35834675e.mid', 0, '', 0, '', '', 0, 192, 18244, '0', 221, 0, 0, 1, 0, 0, 0, '2019-12-05 19:26:54', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 02:26:54', 0, 15, 192, 189, 224, 224, 162438, '00:00:16', 5000, 'B3', 954, 'F#2', 4447, 131, 'F#2', 1, 'D4', 1),
(31, 'user_uploads/15/audio/2019/12/qrs-connect_d77499068143a523adeeb402b242b4c0.mid', 0, '', 0, '', '', 0, 1790, 89616, '0', 226, 0, 0, 1, 0, 0, 0, '2019-12-05 19:28:30', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 02:28:30', 0, 15, 1790, 1787, 229, 224, 876157, '00:01:27', 5000, 'B3', 143, 'D4', 213684, 1036, 'B3', 14, 'D4', 1),
(32, 'user_uploads/15/audio/2019/12/qrs-connect_a20f0fbca89043ee2ee20184d95c51c6.mid', 0, '', 0, '', '', 0, 37, 6860, '0', 231, 0, 0, 1, 0, 0, 0, '2019-12-05 19:28:56', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 02:28:56', 0, 15, 37, 35, 224, 224, 48605, '00:00:04', 5000, 'Eb4', 1003, 'F#2', 4454, 29, 'F#2', 10, 'F#4', 1),
(33, 'user_uploads/15/audio/2019/12/qrs-connect_789d2811afbab2f87c41eabb180e06f1.mid', 0, '', 0, '', '', 0, 14, 5117, '0', 236, 0, 0, 1, 0, 0, 0, '2019-12-05 19:32:07', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 02:32:07', 0, 15, 14, 12, 224, 224, 31175, '00:00:03', 5000, 'F#4', 1051, 'F#2', 4433, 13, 'F#2', 2, 'F#4', 1),
(34, 'user_uploads/15/audio/2019/12/qrs-connect_31b15849ce5bb9d3e09e61dd835ab4a8.mid', 0, '', 0, '', '', 0, 50, 7846, '0', 241, 0, 0, 1, 0, 0, 0, '2019-12-05 19:42:17', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 02:42:17', 0, 15, 50, 48, 224, 224, 58451, '00:00:05', 5000, 'Eb4', 988, 'F#2', 4438, 37, 'F#2', 14, 'F#4', 1),
(35, 'user_uploads/15/audio/2019/12/qrs-connect_bf3df789d8667061ea3095e884674988.mid', 0, '', 0, '', '', 0, 106, 7530, '0', 246, 0, 0, 1, 0, 0, 0, '2019-12-05 19:44:23', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 02:44:23', 0, 15, 106, 103, 229, 229, 55313, '00:00:05', 5000, 'F3', 276, 'D5', 5432, 28, 'F3', 1, 'A4', 1),
(36, 'user_uploads/15/audio/2019/12/qrs-connect_a5c69f3a507888f7dcea96369bc46f60.mid', 0, '', 0, '', '', 0, 1017, 67895, '0', 251, 0, 0, 1, 0, 0, 0, '2019-12-05 19:48:47', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 02:48:47', 0, 15, 1017, 1016, 323, 319, 658930, '00:01:05', 5000, 'C6', 3, 'F6', 11088, 150, 'Bb3', 2, 'Db2', 1),
(37, 'user_uploads/15/audio/2019/12/qrs-connect_cdfec7d42d1c8729d8f627697460f8da.mid', 0, '', 0, '', '', 0, 274, 28108, '0', 256, 0, 0, 1, 0, 0, 0, '2019-12-05 19:55:48', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 02:55:48', 0, 15, 274, 269, 228, 224, 261087, '00:00:26', 5000, 'F#2', 603, 'C4', 23362, 89, 'F#2', 2, 'A2', 1),
(38, 'user_uploads/15/audio/2019/12/qrs-connect_84ce62ac550bde9c665f42412399d02c.mid', 0, '', 0, '', '', 0, 507, 46220, '0', 261, 0, 0, 1, 0, 0, 0, '2019-12-05 19:57:11', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 02:57:11', 0, 15, 507, 497, 412, 285, 442200, '00:00:44', 5000, 'Bb2', 518, 'C6', 25581, 69, 'Bb3', 2, 'E3', 1),
(39, 'user_uploads/15/audio/2019/12/qrs-connect_00d7df7be4989de5b691419e2134c1a2.mid', 0, '', 0, '', '', 0, 110, 10334, '0', 266, 0, 0, 1, 0, 0, 0, '2019-12-05 19:57:42', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 02:57:42', 0, 15, 110, 99, 256, 238, 83326, '00:00:08', 5000, 'Bb3', 1550, 'Bb1', 20065, 21, 'Bb3', 1, 'E4', 1),
(40, 'user_uploads/15/audio/2019/12/qrs-connect_76536d90320f4ce16afd8c5809aec355.mid', 0, '', 0, '', '', 0, 98, 9165, '0', 271, 0, 0, 1, 0, 0, 0, '2019-12-05 19:58:19', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 02:58:19', 0, 15, 98, 91, 252, 237, 71654, '00:00:07', 5000, 'Bb3', 1550, 'Bb1', 20040, 19, 'Bb3', 1, 'C3', 1),
(41, 'user_uploads/15/audio/2019/12/qrs-connect_5ef25b4a8790a6ed5b52bbcd90224454.mid', 0, '', 0, '', '', 0, 80, 8095, '0', 276, 0, 0, 1, 0, 0, 0, '2019-12-05 19:58:51', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 02:58:51', 0, 15, 80, 72, 247, 234, 60947, '00:00:06', 5000, 'Bb3', 1556, 'Bb1', 20066, 15, 'Bb3', 1, 'Eb3', 1),
(42, 'user_uploads/15/audio/2019/12/qrs-connect_55961a7cbfc81e9e27354ac6b189f6eb.mid', 0, '', 0, '', '', 0, 370, 33504, '0', 281, 0, 0, 1, 0, 0, 0, '2019-12-05 20:00:39', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 03:00:39', 0, 15, 370, 362, 356, 272, 315045, '00:00:31', 5000, 'C3', 767, 'C6', 25576, 52, 'Bb3', 2, 'E3', 1),
(43, 'user_uploads/15/audio/2019/12/qrs-connect_a918b784bbc92fdffc656bbb61d8bebb.mid', 0, '', 0, '', '', 0, 126, 12386, '0', 286, 0, 0, 1, 0, 0, 0, '2019-12-05 20:00:59', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 03:00:59', 0, 15, 126, 113, 265, 240, 103865, '00:00:10', 5000, 'Bb3', 1540, 'Bb1', 20111, 22, 'Bb3', 1, 'F1', 1),
(44, 'user_uploads/15/audio/2019/12/qrs-connect_a63573f6f4da0d35c17b1bd0fa38404d.mid', 0, '', 0, '', '', 0, 1565, 131376, '0', 291, 0, 0, 1, 0, 0, 0, '2019-12-05 20:04:33', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000024', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-05 03:04:33', 0, 15, 1565, 1557, 761, 353, 1293771, '00:02:09', 5000, 'F3', 330, 'C5', 37479, 172, 'G5', 2, 'D1', 1),
(133, 'user_uploads/8/audio/2019/12/qrs-connect_66a39daeb627dbd8a6d499585aca5fd1.mid', 0, '', 0, '', '', 0, 58, 5617, '0', 140, 0, 0, 1, 0, 0, 0, '2019-12-11 15:28:25', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-11 10:28:25', 0, 8, 58, 58, 0, 0, 36179, '00:00:03', 5000, 'F3', 368, 'G3', 1175, 42, 'G3', 2, 'F3', 1),
(134, 'user_uploads/8/audio/2019/12/qrs-connect_2f9eea4a3e924ec267e01d225384e688.mid', 0, '', 0, '', '', 0, 2, 3149, '0', 142, 0, 0, 1, 0, 0, 0, '2019-12-13 17:55:03', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-13 12:55:03', 0, 8, 2, 0, 3, 0, 0, '00:00:00', 5000, '0', 0, '0', 0, 1, 'Eb3', 1, 'Eb3', 1),
(135, 'user_uploads/8/audio/2019/12/qrs-connect_4c127bedf1dddf6a10cc94fbd874f506.mid', 0, '', 0, '', '', 0, 6, 3046, '0', 147, 0, 0, 1, 0, 0, 0, '2019-12-13 17:55:07', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-13 12:55:07', 0, 8, 6, 6, 0, 0, 10466, '00:00:01', 5000, 'A3', 986, 'A3', 1526, 12, 'A3', 12, 'A3', 1),
(2, 'user_uploads/20/audio/2019/12/qrs-connect_a372c7a3131c3637c67c491a265fdbce.mid', 0, '', 0, '', '', 0, 12, 2866, '0', 7, 0, 0, 1, 0, 0, 0, '2019-12-13 18:55:40', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000046', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-13 01:55:40', 0, 20, 12, 12, 0, 0, 8665, '00:00:00', 5000, 'C3', 2664, 'E3', 3022, 8, 'A3', 8, 'A3', 1),
(3, 'user_uploads/20/audio/2019/12/qrs-connect_1c4e5b4a174757a9e53625aba677ddd7.mid', 0, '', 0, '', '', 0, 19, 6896, '0', 12, 0, 0, 1, 0, 0, 0, '2019-12-13 18:55:47', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000046', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-13 01:55:47', 0, 20, 12, 12, 0, 0, 8665, '00:00:00', 5000, 'C3', 2664, 'E3', 3022, 8, 'A3', 8, 'A3', 1),
(4, 'user_uploads/20/audio/2019/12/qrs-connect_d3e138050d030ea5abac4474bdf1b9f0.mid', 0, '', 0, '', '', 0, 25, 6560, '0', 17, 0, 0, 1, 0, 0, 0, '2019-12-13 18:56:15', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000046', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-13 01:56:15', 0, 20, 25, 25, 0, 0, 45602, '00:00:04', 5000, 'E3', 268, 'E3', 4127, 20, 'A3', 10, 'E3', 1),
(2, 'user_uploads/19/audio/2019/12/qrs-connect_22585a98485dd6a5cbe1ee38a0b52d2d.mid', 0, '', 0, '', '', 0, 4, 3839, '0', 7, 0, 0, 1, 0, 0, 0, '2019-12-13 19:01:59', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000055', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-13 02:01:59', 0, 19, 4, 4, 0, 0, 18395, '00:00:01', 5000, '0', 0, 'C4', 11350, 6, 'E4', 2, 'C4', 1),
(2, 'user_uploads/18/audio/2019/12/qrs-connect_629d34afb2075abf5cb747df3957feb7.mid', 0, '', 0, '', '', 0, 5, 4384, '0', 6, 0, 0, 1, 0, 0, 0, '2019-12-13 19:06:08', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000063', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-13 02:06:08', 0, 18, 5, 5, 0, 0, 23836, '00:00:02', 5000, 'E4', 774, 'C4', 11698, 8, 'E4', 2, 'C4', 1),
(21, 'user_uploads/8/audio/2019/12/qrs-connect_68db0d1f6cff37b6a32c910d579ef57c.mid', 0, '', 0, '', '', 0, 582, 79385, '0', 130, 0, 0, 1, 0, 0, 0, '2019-12-26 16:44:44', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-26 11:44:44', 0, 8, 582, 580, 479, 224, 773842, '00:01:17', 5000, 'G3', 382, 'C5', 23051, 94, 'A4', 2, 'Bb1', 1),
(22, 'user_uploads/8/audio/2019/12/qrs-connect_504177975304a74d5d9307c56e37537b.mid', 0, '', 0, '', '', 0, 12317, 1910580, '0', 135, 0, 0, 1, 0, 0, 0, '2019-12-26 18:15:24', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-26 01:15:24', 0, 8, 12317, 12317, 7427, 1536, 19105968, '00:31:50', 5000, 'Eb4', 3, 'C3', 63477, 1478, 'C4', 2, 'G7', 1),
(23, 'user_uploads/8/audio/2019/12/qrs-connect_757f8e86b43f1b0964b433036ccf7bd4.mid', 0, '', 0, '', '', 0, 11706, 1914427, '0', 140, 0, 0, 1, 0, 0, 0, '2019-12-26 18:47:19', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-26 01:47:19', 0, 8, 11706, 11704, 7578, 1618, 19144445, '00:31:54', 5000, 'C4', 7, 'C3', 63482, 1698, 'G4', 2, 'F7', 1),
(24, 'user_uploads/8/audio/2019/12/qrs-connect_3c44a4e7f51988127dec3688968d6067.mid', 0, '', 0, '', '', 0, 11971, 1907336, '0', 145, 0, 0, 1, 0, 0, 0, '2019-12-26 19:19:10', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-26 02:19:10', 0, 8, 11971, 11970, 7560, 1627, 19073505, '00:31:47', 5000, 'Eb4', 2, 'F2', 59201, 1594, 'C4', 2, 'F#1', 1),
(25, 'user_uploads/8/audio/2019/12/qrs-connect_4de9875d3405dd68066eda71293a4390.mid', 0, '', 0, '', '', 0, 11992, 1903468, '0', 150, 0, 0, 1, 0, 0, 0, '2019-12-26 19:50:57', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-26 02:50:57', 0, 8, 11992, 11991, 7424, 1517, 19034381, '00:31:43', 5000, 'Eb4', 2, 'C3', 63464, 1408, 'G4', 2, 'F7', 1),
(26, 'user_uploads/8/audio/2019/12/qrs-connect_5ae7eea9ae020e17f504bae8537c4434.mid', 0, '', 0, '', '', 0, 11995, 1904867, '0', 155, 0, 0, 1, 0, 0, 0, '2019-12-26 20:22:46', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-26 03:22:46', 0, 8, 11995, 11996, 7631, 1704, 19048872, '00:31:44', 5000, 'Ab4', 23, 'F2', 39782, 1766, 'C4', 2, 'Eb1', 1),
(27, 'user_uploads/8/audio/2019/12/qrs-connect_396060e8ac1a67019a126f0f1c22908a.mid', 0, '', 0, '', '', 0, 11894, 1903082, '0', 160, 0, 0, 1, 0, 0, 0, '2019-12-26 20:54:32', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-26 03:54:32', 0, 8, 11894, 11892, 7387, 1484, 19028550, '00:31:42', 5000, 'C4', 3, 'C3', 63465, 1351, 'C4', 2, 'G1', 1),
(28, 'user_uploads/8/audio/2019/12/qrs-connect_5f1e17821f62744c9ab59188669b465c.mid', 0, '', 0, '', '', 0, 11953, 1899918, '0', 165, 0, 0, 1, 0, 0, 0, '2019-12-26 21:26:16', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-26 04:26:16', 0, 8, 11953, 11954, 7713, 1860, 18997242, '00:31:39', 5000, 'C4', 7, 'F2', 39753, 1884, 'C4', 2, 'Eb1', 1),
(29, 'user_uploads/8/audio/2019/12/qrs-connect_e82e4f2964f3476ecc21f4eee5d84b6f.mid', 0, '', 0, '', '', 0, 12198, 1890464, '0', 170, 0, 0, 1, 0, 0, 0, '2019-12-26 21:57:47', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-26 04:57:47', 0, 8, 12198, 12197, 7366, 1522, 18904705, '00:31:30', 5000, 'Eb4', 2, 'C3', 63469, 1462, 'C4', 2, 'G7', 1),
(30, 'user_uploads/8/audio/2019/12/qrs-connect_65d0faf2892bae739de167ccd4005542.mid', 0, '', 0, '', '', 0, 11588, 1889484, '0', 175, 0, 0, 1, 0, 0, 0, '2019-12-26 22:29:19', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-26 05:29:19', 0, 8, 11588, 11587, 7477, 1582, 18893841, '00:31:29', 5000, 'C4', 4, 'C3', 63444, 1692, 'G4', 2, 'F7', 1),
(31, 'user_uploads/8/audio/2019/12/qrs-connect_f14c2e6868ab017d998a284d10d5e53d.mid', 0, '', 0, '', '', 0, 11864, 1887937, '0', 180, 0, 0, 1, 0, 0, 0, '2019-12-26 23:00:49', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-26 06:00:49', 0, 8, 11864, 11867, 7478, 1610, 18879407, '00:31:27', 5000, 'Eb4', 2, 'F2', 59232, 1562, 'C4', 2, 'F#1', 1),
(32, 'user_uploads/8/audio/2019/12/qrs-connect_d1891b264c1ffb2ccc6d6097ce8993ce.mid', 0, '', 0, '', '', 0, 11830, 1885182, '0', 185, 0, 0, 1, 0, 0, 0, '2019-12-26 23:32:16', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-26 06:32:16', 0, 8, 11830, 11833, 7376, 1529, 18851864, '00:31:25', 5000, 'Eb4', 2, 'C3', 63494, 1406, 'G4', 2, 'F7', 1),
(33, 'user_uploads/8/audio/2019/12/qrs-connect_da4aa5328b9db6ef7838d5b55551a026.mid', 0, '', 0, '', '', 0, 11870, 1881294, '0', 190, 0, 0, 1, 0, 0, 0, '2019-12-27 00:03:41', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-26 07:03:41', 0, 8, 11870, 11868, 7525, 1676, 18805434, '00:31:20', 5000, 'Ab4', 22, 'F2', 39817, 1749, 'C4', 2, 'Eb1', 1),
(34, 'user_uploads/8/audio/2019/12/qrs-connect_ffc9b07a81792f527ef8419e8a0ce9d1.mid', 0, '', 0, '', '', 0, 11495, 1890157, '0', 195, 0, 0, 1, 0, 0, 0, '2019-12-27 00:35:14', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-26 07:35:14', 0, 8, 11495, 11495, 7335, 1447, 18901170, '00:31:30', 5000, 'Eb4', 2, 'C3', 63471, 1374, 'C4', 2, 'Ab7', 1),
(35, 'user_uploads/8/audio/2019/12/qrs-connect_d8ab376729fed3dcc702682a9f558bcd.mid', 0, '', 0, '', '', 0, 12216, 1869415, '0', 200, 0, 0, 1, 0, 0, 0, '2019-12-27 01:06:26', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-26 08:06:26', 0, 8, 12216, 12214, 7567, 1746, 18694320, '00:31:09', 5000, 'C4', 2, 'F2', 39789, 1830, 'C4', 2, 'Eb1', 1),
(36, 'user_uploads/8/audio/2019/12/qrs-connect_f8f2b5990ac4a774fc396e10fc9c954b.mid', 0, '', 0, '', '', 0, 11901, 1867949, '0', 205, 0, 0, 1, 0, 0, 0, '2019-12-27 01:37:36', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-26 08:37:36', 0, 8, 11901, 11904, 7239, 1482, 18678250, '00:31:07', 5000, 'Eb4', 4, 'C3', 63436, 1390, 'C4', 2, 'G7', 1),
(37, 'user_uploads/8/audio/2019/12/qrs-connect_39d241ce25102d977c9b30cbe5188963.mid', 0, '', 0, '', '', 0, 11677, 1866201, '0', 210, 0, 0, 1, 0, 0, 0, '2019-12-27 02:08:45', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-26 09:08:45', 0, 8, 11677, 11672, 7421, 1613, 18660299, '00:31:06', 5000, 'Ab3', 9, 'C3', 63477, 1636, 'C4', 2, 'Eb1', 1),
(38, 'user_uploads/8/audio/2019/12/qrs-connect_f80ed165b914c3cbe4e0e9e930238cff.mid', 0, '', 0, '', '', 0, 11451, 1866961, '0', 215, 0, 0, 1, 0, 0, 0, '2019-12-27 02:39:55', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-26 09:39:55', 0, 8, 11451, 11449, 7434, 1700, 18665882, '00:31:06', 5000, 'Eb4', 2, 'F2', 59231, 1481, 'C4', 2, 'F#1', 1),
(40, 'user_uploads/8/audio/2019/12/qrs-connect_a94271ccb42ed77a489b3422a8063c09.mid', 0, '', 0, '', '', 0, 12161, 1874122, '0', 224, 0, 0, 1, 0, 0, 0, '2019-12-27 03:30:45', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-26 10:30:45', 0, 8, 12161, 12160, 7291, 1464, 18739020, '00:31:13', 5000, 'Eb4', 2, 'C3', 63468, 1454, 'C4', 2, 'G7', 1),
(41, 'user_uploads/8/audio/2019/12/qrs-connect_327013837b644f5049b54967fc019ec6.mid', 0, '', 0, '', '', 0, 11488, 1863398, '0', 229, 0, 0, 1, 0, 0, 0, '2019-12-27 04:01:53', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-26 11:01:53', 0, 8, 11488, 11485, 7361, 1525, 18632796, '00:31:03', 5000, 'C4', 3, 'C3', 63467, 1688, 'G4', 2, 'Ab6', 1),
(42, 'user_uploads/8/audio/2019/12/qrs-connect_9ec56d2fd134468dd2d21cd4a6a7f9b7.mid', 0, '', 0, '', '', 0, 11723, 1869159, '0', 234, 0, 0, 1, 0, 0, 0, '2019-12-27 04:33:06', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-26 11:33:06', 0, 8, 11723, 11718, 7418, 1658, 18689901, '00:31:08', 5000, 'Eb4', 2, 'F2', 59237, 1508, 'C4', 2, 'F#1', 1),
(43, 'user_uploads/8/audio/2019/12/qrs-connect_1e92e944bab057ae3f1d995e4ffda65e.mid', 0, '', 0, '', '', 0, 11840, 1867192, '0', 239, 0, 0, 1, 0, 0, 0, '2019-12-27 05:04:17', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 12:04:17', 0, 8, 11840, 11836, 7313, 1525, 18672022, '00:31:07', 5000, 'Eb4', 2, 'C3', 63452, 1416, 'G4', 2, 'F7', 1),
(44, 'user_uploads/8/audio/2019/12/qrs-connect_9d92792db95ec47064cdcd3b2d3bba76.mid', 0, '', 0, '', '', 0, 11777, 1868356, '0', 244, 0, 0, 1, 0, 0, 0, '2019-12-27 05:35:30', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 12:35:30', 0, 8, 11777, 11778, 7463, 1646, 18683668, '00:31:08', 5000, 'Ab4', 24, 'Bb1', 39409, 1742, 'C4', 2, 'Bb6', 1),
(45, 'user_uploads/8/audio/2019/12/qrs-connect_98303b288fc3a9323f207b18dc733762.mid', 0, '', 0, '', '', 0, 11259, 1868069, '0', 249, 0, 0, 1, 0, 0, 0, '2019-12-27 06:06:41', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 01:06:41', 0, 8, 11259, 11256, 7240, 1411, 18677197, '00:31:07', 5000, 'Eb4', 2, 'C3', 63471, 1322, 'C4', 2, 'Ab7', 1),
(46, 'user_uploads/8/audio/2019/12/qrs-connect_5a364783eea0e69a338b41187324f614.mid', 0, '', 0, '', '', 0, 12230, 1860850, '0', 254, 0, 0, 1, 0, 0, 0, '2019-12-27 06:37:45', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 01:37:45', 0, 8, 12230, 12225, 7519, 1737, 18608577, '00:31:00', 5000, 'G4', 3, 'F2', 39780, 1825, 'C4', 2, 'Eb1', 1),
(47, 'user_uploads/8/audio/2019/12/qrs-connect_1841f020d46c881af855a12d7952c80e.mid', 0, '', 0, '', '', 0, 11509, 1844084, '0', 259, 0, 0, 1, 0, 0, 0, '2019-12-27 07:08:32', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 02:08:32', 0, 8, 11509, 11509, 7166, 1467, 18440939, '00:30:44', 5000, 'Eb4', 15, 'C3', 63482, 1340, 'C4', 2, 'G1', 1),
(48, 'user_uploads/8/audio/2019/12/qrs-connect_b599e77b41254f3ee97e742db487c724.mid', 0, '', 0, '', '', 0, 11702, 1854520, '0', 264, 0, 0, 1, 0, 0, 0, '2019-12-27 07:39:28', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 02:39:28', 0, 8, 11702, 11700, 7393, 1632, 18542431, '00:30:54', 5000, 'G4', 3, 'F2', 39798, 1724, 'C4', 2, 'Eb1', 1),
(49, 'user_uploads/8/audio/2019/12/qrs-connect_3bae66e47ff2279a0b00150ab02955b5.mid', 0, '', 0, '', '', 0, 11591, 1849190, '0', 269, 0, 0, 1, 0, 0, 0, '2019-12-27 08:10:18', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 03:10:18', 0, 8, 11591, 11591, 7305, 1614, 18491017, '00:30:49', 5000, 'Eb4', 2, 'C3', 63445, 1408, 'C4', 2, 'G7', 1),
(50, 'user_uploads/8/audio/2019/12/qrs-connect_64f68c9424780b5d13f6f0a47d7b52a8.mid', 0, '', 0, '', '', 0, 11468, 1846558, '0', 274, 0, 0, 1, 0, 0, 0, '2019-12-27 08:41:08', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 03:41:08', 0, 8, 11468, 11465, 7292, 1526, 18464167, '00:30:46', 5000, 'F#5', 4, 'C3', 63469, 1636, 'G4', 2, 'F7', 1),
(51, 'user_uploads/8/audio/2019/12/qrs-connect_65a9e6e0e9f67266114e65019de9ddbf.mid', 0, '', 0, '', '', 0, 11638, 1852329, '0', 279, 0, 0, 1, 0, 0, 0, '2019-12-27 09:12:03', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 04:12:03', 0, 8, 11638, 11640, 7333, 1584, 18522135, '00:30:52', 5000, 'Eb4', 2, 'F2', 59229, 1564, 'C4', 2, 'F#1', 1),
(52, 'user_uploads/8/audio/2019/12/qrs-connect_d0b6e3ae57cf030fdd2db948ac5e3dfe.mid', 0, '', 0, '', '', 0, 11605, 1835813, '0', 284, 0, 0, 1, 0, 0, 0, '2019-12-27 09:42:40', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 04:42:40', 0, 8, 11605, 11601, 7179, 1497, 18358249, '00:30:35', 5000, 'Eb4', 2, 'C3', 63449, 1372, 'G4', 2, 'F7', 1),
(53, 'user_uploads/8/audio/2019/12/qrs-connect_4a4c4e620bcacceaa1d1c858531a73c4.mid', 0, '', 0, '', '', 0, 11653, 1835096, '0', 289, 0, 0, 1, 0, 0, 0, '2019-12-27 10:13:17', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 05:13:17', 0, 8, 11653, 11655, 7337, 1639, 18351060, '00:30:35', 5000, 'C4', 22, 'Bb1', 39404, 1725, 'C4', 2, 'Eb1', 1),
(54, 'user_uploads/8/audio/2019/12/qrs-connect_7a8ef05f08303d67cf868fe8b3c4294b.mid', 0, '', 0, '', '', 0, 11075, 1831172, '0', 294, 0, 0, 1, 0, 0, 0, '2019-12-27 10:43:52', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 05:43:52', 0, 8, 11075, 11070, 7095, 1383, 18311508, '00:30:31', 5000, 'Eb4', 2, 'C3', 63471, 1296, 'C4', 2, 'Ab7', 1),
(55, 'user_uploads/8/audio/2019/12/qrs-connect_45dcb8c17e4706aa3284103c748de9a8.mid', 0, '', 0, '', '', 0, 11841, 1832989, '0', 299, 0, 0, 1, 0, 0, 0, '2019-12-27 11:14:26', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 06:14:26', 0, 8, 11841, 11845, 7421, 1733, 18328933, '00:30:32', 5000, 'G4', 3, 'F2', 39792, 1756, 'C4', 2, 'Eb1', 1),
(56, 'user_uploads/8/audio/2019/12/qrs-connect_ceed9219d8262653cb441a2d2cf72844.mid', 0, '', 0, '', '', 0, 11586, 1831184, '0', 304, 0, 0, 1, 0, 0, 0, '2019-12-27 11:44:59', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 06:44:59', 0, 8, 11586, 11583, 7077, 1413, 18311947, '00:30:31', 5000, 'Eb4', 2, 'C3', 63469, 1302, 'C4', 2, 'G1', 1),
(57, 'user_uploads/8/audio/2019/12/qrs-connect_f2f43f3391c2edb13c57523ffc2fefce.mid', 0, '', 0, '', '', 0, 11341, 1832148, '0', 309, 0, 0, 1, 0, 0, 0, '2019-12-27 12:15:35', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 07:15:35', 0, 8, 11341, 11339, 7411, 1739, 18319452, '00:30:31', 5000, 'G4,Ab3', 9, 'F2', 39756, 1776, 'C4', 2, 'Eb1', 1),
(58, 'user_uploads/8/audio/2019/12/qrs-connect_9efd8f59660bc1edc680d7acbb42b41f.mid', 0, '', 0, '', '', 0, 11927, 1832798, '0', 314, 0, 0, 1, 0, 0, 0, '2019-12-27 12:46:11', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 07:46:11', 0, 8, 11927, 11928, 7141, 1457, 18324192, '00:30:32', 5000, 'Eb4', 2, 'C3', 63481, 1418, 'C4', 2, 'G7', 1),
(59, 'user_uploads/8/audio/2019/12/qrs-connect_0d134147553dd20318a54fbb974eaef2.mid', 0, '', 0, '', '', 0, 11332, 1832568, '0', 319, 0, 0, 1, 0, 0, 0, '2019-12-27 13:16:49', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 08:16:49', 0, 8, 11332, 11326, 7239, 1505, 18319528, '00:30:31', 5000, 'G4', 6, 'C3', 63455, 1666, 'G4', 2, 'Ab6', 1),
(60, 'user_uploads/8/audio/2019/12/qrs-connect_a210728013ed8ee0aa9b890c402a6f52.mid', 0, '', 0, '', '', 0, 11354, 1832937, '0', 324, 0, 0, 1, 0, 0, 0, '2019-12-27 13:47:24', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 08:47:24', 0, 8, 11354, 11355, 7286, 1648, 18328718, '00:30:32', 5000, 'Eb4', 2, 'F2', 59221, 1454, 'C4', 2, 'F#1', 1),
(61, 'user_uploads/8/audio/2019/12/qrs-connect_d5e0e0b143f22f6b6de52e6f66ff2518.mid', 0, '', 0, '', '', 0, 11720, 1832850, '0', 329, 0, 0, 1, 0, 0, 0, '2019-12-27 14:18:01', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 09:18:01', 0, 8, 11720, 11719, 7199, 1480, 18328372, '00:30:32', 5000, 'Ab3', 4, 'C3', 63459, 1462, 'G4', 2, 'F7', 1),
(62, 'user_uploads/8/audio/2019/12/qrs-connect_966255e7936f46e92fb409f8801781b0.mid', 0, '', 0, '', '', 0, 11402, 1830697, '0', 334, 0, 0, 1, 0, 0, 0, '2019-12-27 14:48:35', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 09:48:35', 0, 8, 11402, 11401, 7264, 1584, 18305864, '00:30:30', 5000, 'C4', 22, 'Ab1', 56098, 1652, 'C4', 2, 'Bb6', 1),
(63, 'user_uploads/8/audio/2019/12/qrs-connect_a8168371bf8c3e98869efd1dd3110590.mid', 0, '', 0, '', '', 0, 11505, 1831893, '0', 339, 0, 0, 1, 0, 0, 0, '2019-12-27 15:19:08', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 10:19:08', 0, 8, 11505, 11498, 7116, 1402, 18313374, '00:30:31', 5000, 'C4', 2, 'C3', 63484, 1323, 'C4', 2, 'F7', 1),
(64, 'user_uploads/8/audio/2019/12/qrs-connect_84f8778296090523e3058cefbacb0a8a.mid', 0, '', 0, '', '', 0, 11424, 1822874, '0', 344, 0, 0, 1, 0, 0, 0, '2019-12-27 15:49:32', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 10:49:32', 0, 8, 11424, 11421, 7352, 1696, 18223450, '00:30:22', 5000, 'C4', 27, 'F2', 39804, 1703, 'C4', 2, 'Eb1', 1),
(65, 'user_uploads/8/audio/2019/12/qrs-connect_4b29b593434abcf2294a27cfa0ad965f.mid', 0, '', 0, '', '', 0, 11129, 1813981, '0', 349, 0, 0, 1, 0, 0, 0, '2019-12-27 16:19:48', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 11:19:48', 0, 8, 11129, 11126, 7040, 1434, 18138667, '00:30:13', 5000, 'Eb4', 2, 'C3', 63455, 1300, 'C4', 2, 'G1', 1),
(66, 'user_uploads/8/audio/2019/12/qrs-connect_e5447b0a51168b3d34e58e0a7911f761.mid', 0, '', 0, '', '', 0, 11824, 1813456, '0', 354, 0, 0, 1, 0, 0, 0, '2019-12-27 16:50:05', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 11:50:05', 0, 8, 11824, 11824, 7321, 1649, 18132627, '00:30:13', 5000, 'G4', 6, 'F2', 39773, 1806, 'C4', 2, 'Eb1', 1),
(67, 'user_uploads/8/audio/2019/12/qrs-connect_766660cd4b961362c8ce53f5ca50006a.mid', 0, '', 0, '', '', 0, 11450, 1816454, '0', 359, 0, 0, 1, 0, 0, 0, '2019-12-27 17:20:23', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 12:20:23', 0, 8, 11450, 11450, 7090, 1523, 18164517, '00:30:16', 5000, 'Eb4', 2, 'C3', 63500, 1346, 'C4', 2, 'G1', 1),
(68, 'user_uploads/8/audio/2019/12/qrs-connect_15a9b0cbf85fb9c3847f642e1736ab70.mid', 0, '', 0, '', '', 0, 11315, 1803688, '0', 364, 0, 0, 1, 0, 0, 0, '2019-12-27 17:50:29', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-27 12:50:29', 0, 8, 11315, 11312, 7173, 1549, 18036510, '00:30:03', 5000, 'G4', 3, 'F2', 39793, 1627, 'C4', 2, 'Eb1', 1),
(69, 'user_uploads/8/audio/2019/12/qrs-connect_510a135a359a817d3169b2a3d640ae65.mid', 0, '', 0, '', '', 0, 16914, 1636151, '0', 238, 0, 0, 1, 0, 0, 0, '2019-12-30 15:42:15', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-30 10:42:15', 0, 8, 16914, 16910, 6620, 1627, 16341901, '00:27:14', 5000, 'B3,E4', 1, 'A3', 83039, 1815, 'C4', 2, 'F#7', 1),
(70, 'user_uploads/8/audio/2019/12/qrs-connect_bb9356f36961a26a69328d5c0047e918.mid', 0, '', 0, '', '', 0, 21, 6512, '0', 243, 0, 0, 1, 0, 0, 0, '2019-12-30 15:43:33', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-30 10:43:33', 0, 8, 21, 15, 240, 232, 45125, '00:00:04', 5000, 'E5', 2910, 'F2', 15101, 7, 'G4', 1, 'Ab4', 1),
(71, 'user_uploads/8/audio/2019/12/qrs-connect_06589adcfb90b6c23b559a28fe265cb4.mid', 0, '', 0, '', '', 0, 12091, 1909528, '0', 369, 0, 0, 1, 0, 0, 0, '2019-12-31 19:33:00', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-31 02:33:00', 0, 8, 12091, 12085, 7522, 1588, 19095302, '00:31:49', 5000, 'Db4', 2, 'Db4', 72690, 1079, 'G4', 2, 'C1', 1),
(72, 'user_uploads/8/audio/2019/12/qrs-connect_da7f797fd00fc7af1f4370f72f291f54.mid', 0, '', 0, '', '', 0, 499, 31916, '0', 497, 0, 0, 1, 0, 0, 0, '2019-12-31 19:54:31', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-31 02:54:31', 0, 8, 499, 504, 337, 232, 299186, '00:00:29', 5000, 'G5', 8, 'F3', 12381, 65, 'B4', 2, 'B2', 1),
(73, 'user_uploads/2/audio/2019/12/qrs-connect_24cb5e6efeaa4e282743550d52b09827.mid', 0, '', 0, '', '', 0, 12846, 1434314, '0', 502, 0, 0, 1, 0, 0, 0, '2019-12-31 20:19:28', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-31 03:19:28', 0, 2, 12846, 12841, 5826, 1407, 14323642, '00:23:52', 5000, 'D5', 49, 'F4', 105320, 1194, 'F4', 2, 'C1', 1),
(74, 'user_uploads/2/audio/2019/12/qrs-connect_467382a19e0be2eef97a0e40bfb2c050.mid', 0, '', 0, '', '', 0, 91, 86578, '0', 507, 0, 0, 1, 0, 0, 0, '2019-12-31 20:21:10', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000009', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-12-31 03:21:10', 0, 2, 91, 90, 256, 256, 845791, '00:01:24', 5000, 'Ab1', 1238, 'F1', 9991, 4, 'Db1', 2, 'C2', 1),
(5, 'user_uploads/24/audio/2020/01/qrs-connect_f64816ab0fd166c7c585468cbf420beb.mid', 0, '', 0, '', '', 0, 29, 4651, '0', 18, 0, 0, 1, 0, 0, 0, '2020-01-03 00:02:32', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000044', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2020-01-02 07:02:32', 0, 24, 29, 29, 0, 0, 26508, '00:00:02', 5000, 'E4', 893, 'C2', 9772, 18, 'C4', 2, 'D4', 1),
(6, 'user_uploads/24/audio/2020/01/qrs-connect_5331e55ddddc779caa815e42a7895f7a.mid', 0, '', 0, '', '', 0, 55, 4847, '0', 23, 0, 0, 1, 0, 0, 0, '2020-01-03 00:02:50', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000044', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2020-01-02 07:02:50', 0, 24, 55, 55, 0, 0, 28473, '00:00:02', 5000, 'G4', 445, 'C3', 2189, 26, 'G4', 4, 'F4', 1),
(7, 'user_uploads/24/audio/2020/01/qrs-connect_e3ea3af6f3233424c184df486a754313.mid', 0, '', 0, '', '', 0, 28, 7908, '0', 28, 0, 0, 1, 0, 0, 0, '2020-01-03 11:38:05', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000044', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2020-01-03 06:38:05', 0, 24, 28, 28, 0, 0, 59064, '00:00:05', 5000, 'F4', 1037, 'C4', 6513, 14, 'C5', 2, 'B4', 1),
(8, 'user_uploads/24/audio/2020/01/qrs-connect_5b8fa368a2fea4dfc1533ac06a60160c.mid', 0, '', 0, '', '', 0, 10, 7345, '0', 33, 0, 0, 1, 0, 0, 0, '2020-01-03 14:05:42', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000044', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2020-01-03 09:05:42', 0, 24, 10, 10, 0, 0, 53452, '00:00:05', 5000, 'Ab2', 6923, 'F2', 53444, 4, 'G2', 2, 'F2', 1),
(9, 'user_uploads/24/audio/2020/01/qrs-connect_75569fc33ec306a223640cc27dd75ca8.mid', 0, '', 0, '', '', 0, 2, 3297, '0', 38, 0, 0, 1, 0, 0, 0, '2020-01-03 14:12:15', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000044', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2020-01-03 09:12:15', 0, 24, 2, 2, 0, 0, 12976, '00:00:01', 5000, '0', 0, 'D5', 12928, 2, 'D5', 2, 'D5', 1),
(10, 'user_uploads/24/audio/2020/01/qrs-connect_281c78599f9d0278f94c59468d01b069.mid', 0, '', 0, '', '', 0, 5, 4171, '0', 43, 0, 0, 1, 0, 0, 0, '2020-01-03 14:12:27', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000044', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2020-01-03 09:12:27', 0, 24, 5, 5, 0, 0, 21715, '00:00:02', 5000, 'E5', 6375, 'D5', 21712, 4, 'C5', 2, 'D5', 1),
(11, 'user_uploads/24/audio/2020/01/qrs-connect_c629770e364c73bbc020041eeb1ea971.mid', 0, '', 0, '', '', 0, 86, 13623, '0', 112, 0, 0, 1, 0, 0, 0, '2020-01-04 18:22:14', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000044', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2020-01-04 01:22:14', 0, 24, 86, 86, 0, 0, 116226, '00:00:11', 5000, 'D4', 323, 'E5', 2870, 30, 'A4', 2, 'E5', 1),
(3, 'user_uploads/22/audio/2020/01/qrs-connect_c8cb28083b1da453970b93ab7288566a.mid', 0, '', 0, '', '', 0, 4, 2700, '0', 26, 0, 0, 1, 0, 0, 0, '2020-01-14 23:44:56', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC1119000029', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2020-01-14 06:44:56', 0, 22, 4, 4, 0, 0, 6998, '00:00:00', 5000, '0', 0, 'E3', 1700, 6, 'E3', 2, 'D3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `MUSIC_LIBRARY_BAK`
--

CREATE TABLE `MUSIC_LIBRARY_BAK` (
  `MUSIC_ID` int(20) NOT NULL,
  `FILE_PATH` text COLLATE utf8_unicode_ci,
  `FILE_TYPE_ID` int(11) NOT NULL,
  `MD5_SUM` text COLLATE utf8_unicode_ci,
  `FILE_SIZE` int(11) NOT NULL DEFAULT '0',
  `ACC_FILE_PATH` text COLLATE utf8_unicode_ci,
  `ACC_MD5_SUM` text COLLATE utf8_unicode_ci,
  `ACC_FILE_SIZE` int(11) NOT NULL DEFAULT '0',
  `NUMBER_OF_NOTES` int(11) NOT NULL DEFAULT '0',
  `LENGTH_MS` int(11) NOT NULL DEFAULT '0',
  `DELETED` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `LAST_UPDATED` int(11) NOT NULL,
  `MIDI_DELAY_MS` int(11) NOT NULL DEFAULT '0',
  `AUDIO_DELAY_MS` int(11) NOT NULL DEFAULT '0',
  `PITCH_CORRECTION` double NOT NULL DEFAULT '1',
  `SCRAMBLE_VALUE` int(11) NOT NULL DEFAULT '0',
  `MIN_FORCE_DIFF` int(11) NOT NULL DEFAULT '0',
  `REVISION` int(11) NOT NULL DEFAULT '0',
  `LAST_UPDATED_DATE` datetime DEFAULT NULL,
  `TITLE` text COLLATE utf8_unicode_ci,
  `ARTIST` text COLLATE utf8_unicode_ci,
  `AUTHOR` text COLLATE utf8_unicode_ci,
  `LYRICIST` text COLLATE utf8_unicode_ci,
  `COMPOSER` text COLLATE utf8_unicode_ci,
  `USER` text COLLATE utf8_unicode_ci,
  `ALBUM` text COLLATE utf8_unicode_ci,
  `GENRE` text COLLATE utf8_unicode_ci,
  `TRACK_IMAGE` text COLLATE utf8_unicode_ci,
  `KEY` text COLLATE utf8_unicode_ci,
  `TEMPO` text COLLATE utf8_unicode_ci,
  `METER` text COLLATE utf8_unicode_ci,
  `ACTIVITY_CATEGORY1` text COLLATE utf8_unicode_ci,
  `ACTIVITY_CATEGORY2` text COLLATE utf8_unicode_ci,
  `GEAR` text COLLATE utf8_unicode_ci,
  `SEGMENT` text COLLATE utf8_unicode_ci,
  `COURSE` text COLLATE utf8_unicode_ci,
  `DEVICE` text COLLATE utf8_unicode_ci,
  `KEYWORDS` text COLLATE utf8_unicode_ci,
  `LYRICS` text COLLATE utf8_unicode_ci,
  `WIKIPEDIA` text COLLATE utf8_unicode_ci,
  `PLAYED_BY` text COLLATE utf8_unicode_ci,
  `TRACK` int(11) DEFAULT NULL,
  `RELEASE_YEAR` int(11) DEFAULT NULL,
  `MULTI_GENRE` text COLLATE utf8_unicode_ci,
  `EVENTS` text COLLATE utf8_unicode_ci,
  `NEW_RELEASE_EPOCH` text COLLATE utf8_unicode_ci,
  `DEFAULT_CURVES` text COLLATE utf8_unicode_ci,
  `ORIGINAL_SYSTEM` text COLLATE utf8_unicode_ci,
  `EDITED_SYSTEMS_LIST` text COLLATE utf8_unicode_ci,
  `VIDEO_LINK` text COLLATE utf8_unicode_ci,
  `VIDEO_LINK_TYPE` int(11) DEFAULT NULL,
  `WEBSITE_LINK` text COLLATE utf8_unicode_ci,
  `COPYRIGHTS` text COLLATE utf8_unicode_ci,
  `RECORDED_DATE` datetime DEFAULT NULL,
  `scoreProcessed` tinyint(1) NOT NULL,
  `userid` int(11) UNSIGNED DEFAULT NULL,
  `notesOn` int(11) NOT NULL,
  `notesOff` int(11) NOT NULL,
  `pedalOn` int(11) NOT NULL,
  `pedalOff` int(11) NOT NULL,
  `songLength` int(11) NOT NULL,
  `songLengthHIS` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MUSIC_LIBRARY_BAK`
--

INSERT INTO `MUSIC_LIBRARY_BAK` (`MUSIC_ID`, `FILE_PATH`, `FILE_TYPE_ID`, `MD5_SUM`, `FILE_SIZE`, `ACC_FILE_PATH`, `ACC_MD5_SUM`, `ACC_FILE_SIZE`, `NUMBER_OF_NOTES`, `LENGTH_MS`, `DELETED`, `LAST_UPDATED`, `MIDI_DELAY_MS`, `AUDIO_DELAY_MS`, `PITCH_CORRECTION`, `SCRAMBLE_VALUE`, `MIN_FORCE_DIFF`, `REVISION`, `LAST_UPDATED_DATE`, `TITLE`, `ARTIST`, `AUTHOR`, `LYRICIST`, `COMPOSER`, `USER`, `ALBUM`, `GENRE`, `TRACK_IMAGE`, `KEY`, `TEMPO`, `METER`, `ACTIVITY_CATEGORY1`, `ACTIVITY_CATEGORY2`, `GEAR`, `SEGMENT`, `COURSE`, `DEVICE`, `KEYWORDS`, `LYRICS`, `WIKIPEDIA`, `PLAYED_BY`, `TRACK`, `RELEASE_YEAR`, `MULTI_GENRE`, `EVENTS`, `NEW_RELEASE_EPOCH`, `DEFAULT_CURVES`, `ORIGINAL_SYSTEM`, `EDITED_SYSTEMS_LIST`, `VIDEO_LINK`, `VIDEO_LINK_TYPE`, `WEBSITE_LINK`, `COPYRIGHTS`, `RECORDED_DATE`, `scoreProcessed`, `userid`, `notesOn`, `notesOff`, `pedalOn`, `pedalOff`, `songLength`, `songLengthHIS`) VALUES
(1, 'user_uploads/2/audio/2019/05/qrs-connect_2656b12a0261b536034144e97ee2ca93.flac', 6, '', 0, '', '', 0, 0, -1, '1', 599, 0, 0, 1, 0, 0, 0, '2019-05-02 17:32:33', '01.-2019_1_28_001.flac-User_Recording', 'User', 'User', '', 'User', '', 'My Album', 'Contemporary', '', '', '', '', 'Piano', '0', '', '', '', 'QRSC0219000005', '', '', '', 'User', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-01-28 03:17:26', 0, 2, 0, 0, 0, 0, 0, ''),
(1, 'user_uploads/2/audio/2019/05/qrs-connect_d1f4e4d3424377ad740f8ef7930fb7c9.flac', 6, '', 0, '', '', 0, 0, -1, '1', 600, 0, 0, 1, 0, 0, 0, '2019-05-02 17:33:00', '01.-2019_1_28_001.flac-User_Recording', 'User', 'User', '', 'User', '', 'My Album', 'Contemporary', '', '', '', '', 'Piano', '0', '', '', '', 'QRSC0219000005', '', '', '', 'User', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-01-28 03:17:26', 0, 2, 0, 0, 0, 0, 0, ''),
(21, 'user_uploads/2/audio/2019/05/qrs-connect_6a69f90b1099fb704214f64003c0773f.mid', 6, '', 0, 'user_uploads/2/audio/2019/05/qrs-connect_d70361378e32384379977105f226a7d2.flac', '', 0, 0, -1, '0', 601, 0, 0, 1, 0, 0, 0, '2019-05-02 17:34:11', '01.-2019_2_4_001.flac-User_Recording', 'User', 'User', '', 'User', '', 'My Album', 'Contemporary', '', '', '120', '', 'Piano', '0', '', '', '', 'QRSC0219000005', '', '', '', 'User', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-02-04 10:36:50', 0, 2, 0, 0, 0, 0, 0, ''),
(1, 'user_uploads/2/audio/2019/05/qrs-connect_0dbcb8b1bd276e5b0dcbcbf43e40f717.flac', 6, '', 0, '', '', 0, 0, -1, '1', 602, 0, 0, 1, 0, 0, 0, '2019-05-02 19:02:29', '01.-2019_1_28_001.flac-User_Recording', 'User', 'User', '', 'User', '', 'My Album', 'Contemporary', '', '', '', '', 'Piano', '0', '', '', '', 'QRSC0219000005', '', '', '', 'User', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-01-28 03:17:26', 0, 2, 0, 0, 0, 0, 0, ''),
(1, 'user_uploads/2/audio/2019/05/qrs-connect_867a865e17fa6aec04e5754b0f81cede.flac', 6, '', 0, '', '', 0, 0, -1, '1', 603, 0, 0, 1, 0, 0, 0, '2019-05-02 19:11:51', '01.-2019_1_28_001.flac-User_Recording', 'User', 'User', '', 'User', '', 'My Album', 'Contemporary', '', '', '', '', 'Piano', '0', '', '', '', 'QRSC0219000005', '', '', '', 'User', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-01-28 03:17:26', 0, 2, 0, 0, 0, 0, 0, ''),
(1, 'user_uploads/2/audio/2019/05/qrs-connect_00dbf0a2737c22db425ec365e81081a9.flac', 6, '', 0, '', '', 0, 0, -1, '1', 604, 0, 0, 1, 0, 0, 0, '2019-05-02 19:27:38', '01.-2019_1_28_001.flac-User_Recording', 'User', 'User', '', 'User', '', 'My Album', 'Contemporary', '', '', '', '', 'Piano', '0', '', '', '', 'QRSC0219000005', '', '', '', 'User', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-01-28 03:17:26', 0, 2, 0, 0, 0, 0, 0, ''),
(1, 'user_uploads/2/audio/2019/05/qrs-connect_5e3918b33c4b94ae776c83068a61342c.flac', 6, '', 0, '', '', 0, 0, -1, '1', 605, 0, 0, 1, 0, 0, 0, '2019-05-02 19:32:43', '01.-2019_1_28_001.flac-User_Recording', 'User', 'User', '', 'User', '', 'My Album', 'Contemporary', '', '', '', '', 'Piano', '0', '', '', '', 'QRSC0219000005', '', '', '', 'User', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-01-28 03:17:26', 0, 2, 0, 0, 0, 0, 0, ''),
(1, 'user_uploads/2/audio/2019/05/qrs-connect_fc9b8fadb7a41488f9c042bd14e6eb81.flac', 6, '', 0, '', '', 0, 0, -1, '1', 606, 0, 0, 1, 0, 0, 0, '2019-05-02 19:34:02', '01.-2019_1_28_001.flac-User_Recording', 'User', 'User', '', 'User', '', 'My Album', 'Contemporary', '', '', '', '', 'Piano', '0', '', '', '', 'QRSC0219000005', '', '', '', 'User', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-01-28 03:17:26', 0, 2, 0, 0, 0, 0, 0, ''),
(21, 'user_uploads/2/audio/2019/05/qrs-connect_3e183940558a03d2ef35bc814f1626c3.mid', 6, '', 0, 'user_uploads/2/audio/2019/05/qrs-connect_b51ed5701743fa2e10191df162e40860.flac', '', 0, 0, -1, '0', 607, 0, 0, 1, 0, 0, 0, '2019-05-02 20:26:40', '01.-2019_2_4_001.flac-User_Recording', 'User', 'User', '', 'User', '', 'My Album', 'Contemporary', '', '', '120', '', 'Piano', '0', '', '', '', 'QRSC0219000005', '', '', '', 'User', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-02-04 10:36:50', 0, 2, 0, 0, 0, 0, 0, ''),
(47, 'user_uploads/2/audio/2019/05/qrs-connect_8dbad3f6b57854866302d36be0c6aa6c.mp3', 1, '', 0, '', '', 0, 0, -1, '0', 50, 0, 0, 1, 0, 0, 0, '2019-05-09 18:54:43', 'Yes-kick', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-05-08 12:10:13', 0, 2, 0, 0, 0, 0, 0, ''),
(52, 'user_uploads/2/audio/2019/05/qrs-connect_efbc4fe419739e8ad4a65c61dad95d78.mid', 0, '', 0, '', '', 0, 0, 19924, '0', 55, 0, 0, 1, 0, 0, 0, '2019-05-09 18:54:43', 'Test-Chromatic-Velocity-127', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-05-08 12:10:13', 0, 2, 0, 0, 0, 0, 0, ''),
(50, 'user_uploads/2/audio/2019/05/qrs-connect_8d1724bca20eaa7203d5411d04c1eb93.mid', 0, '', 0, '', '', 0, 0, 80121, '0', 53, 0, 0, 1, 0, 0, 0, '2019-05-09 18:54:43', 'Test-Plunger-Hold-1-Second', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-05-08 12:10:13', 0, 2, 0, 0, 0, 0, 0, ''),
(52, 'user_uploads/2/audio/2019/05/qrs-connect_cc0371527e5923e730abebc4afc35f22.mid', 0, '', 0, '', '', 0, 0, 19924, '0', 55, 0, 0, 1, 0, 0, 0, '2019-05-09 18:54:43', 'Test-Chromatic-Velocity-127', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-05-08 12:10:13', 0, 2, 0, 0, 0, 0, 0, ''),
(52, 'user_uploads/2/audio/2019/05/qrs-connect_b02f65c4e1efeb80806d6a693b6e6d9e.mid', 0, '', 0, '', '', 0, 0, 19924, '0', 55, 0, 0, 1, 0, 0, 0, '2019-05-09 18:54:43', 'Test-Chromatic-Velocity-127', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-05-08 12:10:13', 0, 2, 0, 0, 0, 0, 0, ''),
(50, 'user_uploads/2/audio/2019/05/qrs-connect_e26ebd1a31561380e20969be82047967.mid', 0, '', 0, '', '', 0, 0, 80121, '0', 53, 0, 0, 1, 0, 0, 0, '2019-05-09 18:54:43', 'Test-Plunger-Hold-1-Second', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-05-08 12:10:13', 0, 2, 0, 0, 0, 0, 0, ''),
(38, 'user_uploads/2/audio/2019/06/qrs-connect_9c58789b99c6aa1c1ea64cfecdccb820.mid', 0, '', 0, '', '', 0, 0, 3997, '0', 41, 0, 0, 1, 0, 0, 0, '2019-06-04 14:41:35', 'Middle_c', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-06-04 08:14:57', 0, 2, 0, 0, 0, 0, 0, ''),
(116, 'user_uploads/2/audio/2019/06/qrs-connect_3a8d2592c3fbb3936a934187fb4eea7b.mid', 0, '', 0, '', '', 0, 1103, 73828, '0', 235, 0, 0, 1, 0, 0, 0, '2019-06-04 14:41:34', '2019_5_30_001', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-05-30 09:12:42', 0, 2, 0, 0, 0, 0, 0, ''),
(117, 'user_uploads/2/audio/2019/06/qrs-connect_b7acd7aca86c7765cfe64a188b3ddf32.mid', 0, '', 0, '', '', 0, 38, 8538, '0', 236, 0, 0, 1, 0, 0, 0, '2019-06-04 14:41:34', '2019_5_30_002', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-05-30 09:16:20', 0, 2, 0, 0, 0, 0, 0, ''),
(123, 'user_uploads/2/audio/2019/06/qrs-connect_3a226323deff7c983307085abca52fb5.mid', 0, '', 0, '', '', 0, 75, 3891, '0', 516, 0, 0, 1, 0, 0, 0, '2019-06-04 17:13:18', '2019_6_4_004', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-06-04 01:04:28', 0, 2, 0, 0, 0, 0, 0, ''),
(128, 'user_uploads/2/audio/2019/06/qrs-connect_dff3745beec98d57293f5bcfa0ff7508.mid', 0, '', 0, '', '', 0, 110, 5074, '0', 532, 0, 0, 1, 0, 0, 0, '2019-06-04 17:48:15', '2019_6_4_009', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-06-04 01:48:13', 0, 2, 0, 0, 0, 0, 0, ''),
(49, 'user_uploads/2/audio/2019/06/qrs-connect_b5904037a83c0d82419b15000a37bced.mp3', 1, '', 0, '', '', 0, 0, -1, '0', 52, 0, 0, 1, 0, 0, 0, '2019-06-04 17:13:20', 'OPHAT1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-06-04 08:14:57', 0, 2, 0, 0, 0, 0, 0, ''),
(21, 'user_uploads/2/audio/2019/06/qrs-connect_9be91bbc3bdb7c4afd9bba21a2775934.mp3', 1, '', 0, '', '', 0, 0, 3000, '0', 21, 0, 0, 1, 0, 0, 0, '2019-06-17 20:15:39', 'Sweep', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-06-17 09:55:24', 0, 2, 0, 0, 0, 0, 0, ''),
(19, 'user_uploads/2/audio/2019/06/qrs-connect_cee7049c98bd2b26244c6a7426009a0a.mp3', 1, '', 0, '', '', 0, 0, -1, '0', 19, 0, 0, 1, 0, 0, 0, '2019-06-17 20:15:39', 'OPHAT1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-06-17 09:55:24', 0, 2, 0, 0, 0, 0, 0, ''),
(20, 'user_uploads/2/audio/2019/06/qrs-connect_e55e14d63ae42a4ef5fc75737e37d63b.mid', 0, '', 0, '', '', 0, 0, 80121, '0', 20, 0, 0, 1, 0, 0, 0, '2019-06-17 20:15:39', 'Test-Plunger-Hold-1-Second', '', '', '', '', '', '', '', '', '', '480', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-06-17 09:55:24', 0, 2, 0, 0, 0, 0, 0, ''),
(15, 'user_uploads/2/audio/2019/06/qrs-connect_09620884fee310e5d0f7639f83c4ebb8.mid', 0, '', 0, '', '', 0, 0, 19924, '0', 15, 0, 0, 1, 0, 0, 0, '2019-06-17 20:15:39', 'Test-Chromatic-Velocity-064', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-06-17 09:55:24', 0, 2, 0, 0, 0, 0, 0, ''),
(18, 'user_uploads/2/audio/2019/06/qrs-connect_d16498d4129567d3177a5214a5590c35.mp3', 1, '', 0, '', '', 0, 0, -1, '0', 18, 0, 0, 1, 0, 0, 0, '2019-06-17 20:15:39', 'RIM3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-06-17 09:55:24', 0, 2, 0, 0, 0, 0, 0, ''),
(20, 'user_uploads/2/audio/2019/06/qrs-connect_eda0a4ac0e7246c9830f29e790b8f9bc.mid', 0, '', 0, '', '', 0, 0, 80121, '0', 20, 0, 0, 1, 0, 0, 0, '2019-06-17 20:15:39', 'Test-Plunger-Hold-1-Second', '', '', '', '', '', '', '', '', '', '480', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-06-17 09:55:24', 0, 2, 0, 0, 0, 0, 0, ''),
(8, 'user_uploads/2/audio/2019/06/qrs-connect_9d055bdfdf5082b8036e98a4dd3dfb63.mid', 0, '', 0, '', '', 0, 0, 3997, '0', 8, 0, 0, 1, 0, 0, 0, '2019-06-17 20:15:39', 'Middle_c', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-06-17 09:55:24', 0, 2, 0, 0, 0, 0, 0, ''),
(5, 'user_uploads/2/audio/2019/06/qrs-connect_cf58771e8650ad82be5e9b6b5a356a2b.mp3', 1, '', 0, '', '', 0, 0, -1, '0', 5, 0, 0, 1, 0, 0, 0, '2019-06-17 20:15:39', 'Yes-tom1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-06-17 09:55:24', 0, 2, 0, 0, 0, 0, 0, ''),
(5, 'user_uploads/2/audio/2019/06/qrs-connect_11677d705aa5f07c7b63e6db41f2f3c4.mp3', 1, '', 0, '', '', 0, 0, -1, '0', 5, 0, 0, 1, 0, 0, 0, '2019-06-17 20:15:39', 'Yes-tom1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-06-17 09:55:24', 0, 2, 0, 0, 0, 0, 0, ''),
(20, 'user_uploads/2/audio/2019/06/qrs-connect_967a79b89eaa148f1679e8f4f2c24737.mid', 0, '', 0, '', '', 0, 0, 80121, '0', 20, 0, 0, 1, 0, 0, 0, '2019-06-17 20:15:39', 'Test-Plunger-Hold-1-Second', '', '', '', '', '', '', '', '', '', '480', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-06-17 09:55:24', 0, 2, 0, 0, 0, 0, 0, ''),
(20, 'user_uploads/2/audio/2019/06/qrs-connect_58bcf7bb999099feadc0b1d0bdf3fdd1.mid', 0, '', 0, '', '', 0, 0, 80121, '0', 20, 0, 0, 1, 0, 0, 0, '2019-06-17 20:15:39', 'Test-Plunger-Hold-1-Second', '', '', '', '', '', '', '', '', '', '480', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-06-17 09:55:24', 0, 2, 0, 0, 0, 0, 0, ''),
(5, 'user_uploads/2/audio/2019/06/qrs-connect_747ad3bb5697ae05679ce5a5154c7d50.mp3', 1, '', 0, '', '', 0, 0, -1, '0', 5, 0, 0, 1, 0, 0, 0, '2019-06-17 20:15:39', 'Yes-tom1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-06-17 09:55:24', 0, 2, 0, 0, 0, 0, 0, ''),
(22, 'user_uploads/2/audio/2019/06/qrs-connect_36f11d004bc9f08124b180fa701a9e3c.mid', 0, '', 0, '', '', 0, 0, 19924, '0', 22, 0, 0, 1, 0, 0, 0, '2019-06-17 20:15:40', 'Test-Chromatic-Velocity-127', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-06-17 09:55:24', 0, 2, 0, 0, 0, 0, 0, ''),
(3, 'user_uploads/2/audio/2019/06/qrs-connect_8a8d18ab4d833b34c657826a9c7e1dd8.mid', 0, '', 0, '', '', 0, 0, 2015, '0', 3, 0, 0, 1, 0, 0, 0, '2019-06-17 20:15:39', 'Arpeggio', '', '', '', '', '', '', '', '', '', '119', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-06-17 09:55:24', 0, 2, 0, 0, 0, 0, 0, ''),
(11, 'user_uploads/2/audio/2019/06/qrs-connect_06c4c74b728846eaf6635cdc0ac53386.mid', 0, '', 0, '', '', 0, 0, 76800, '0', 11, 0, 0, 1, 0, 0, 0, '2019-06-17 20:15:39', 'PedalKeySync', '', '', '', '', '', '', '', '', '', '100', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-06-17 09:55:24', 0, 2, 0, 0, 0, 0, 0, ''),
(15, 'user_uploads/2/audio/2019/06/qrs-connect_f89c09b905f696a26a5de939443b6458.mid', 0, '', 0, '', '', 0, 0, 19924, '0', 15, 0, 0, 1, 0, 0, 0, '2019-06-17 20:15:39', 'Test-Chromatic-Velocity-064', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-06-17 09:55:24', 0, 2, 0, 0, 0, 0, 0, ''),
(21, 'user_uploads/2/audio/2019/06/qrs-connect_a580bd590a372eff8bad06ce845d5e9e.mp3', 1, '', 0, '', '', 0, 0, 3000, '0', 21, 0, 0, 1, 0, 0, 0, '2019-06-17 20:15:39', 'Sweep', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-06-17 09:55:24', 0, 2, 0, 0, 0, 0, 0, ''),
(93, 'user_uploads/2/audio/2019/06/qrs-connect_92950cb0b3c5250560671b3310efd91f.mid', 6, '', 0, 'user_uploads/2/audio/2019/06/qrs-connect_731d1e3d5ced419a90481fe733f876b9.flac', '', 0, 1300, 201902, '0', 415, 0, 0, 1, 0, 0, 0, '2019-06-25 18:22:46', '2019_6_25_006', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-06-25 02:22:47', 0, 2, 0, 0, 0, 0, 0, ''),
(93, 'user_uploads/2/audio/2019/06/qrs-connect_85f816c1dc0b7f89c83c989b8a5384e0.mid', 6, '', 0, 'user_uploads/2/audio/2019/06/qrs-connect_cebd08833026c7cd4a7895cb7d83176b.flac', '', 0, 1300, 201902, '0', 415, 0, 0, 1, 0, 0, 0, '2019-06-25 18:22:46', '2019_6_25_006', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-06-25 02:22:47', 0, 2, 0, 0, 0, 0, 0, ''),
(162, 'user_uploads/2/audio/2019/07/qrs-connect_4869413b532a96896ac6047ff7b0e541.flac', 6, '', 0, '', '', 0, 0, 15002, '0', 448, 0, 0, 1, 0, 0, 0, '2019-07-26 16:30:28', '2019_7_26_022', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-07-26 12:30:21', 0, 2, 0, 0, 0, 0, 0, ''),
(2, 'user_uploads/2/audio/2019/07/qrs-connect_9e923cc07b7ae951a63d7591a4bfdd1d.flac', 6, '', 0, '', '', 0, 0, -1, '1', 70, 0, 0, 1, 0, 0, 0, '2019-07-26 19:31:36', '01._2019_7_26_001.flac_User_Recordingdc_Organ', 'User', 'User', '', 'User', '', 'My Album', 'Contemporary', '', '', '', '', 'Organ', '0', '', '', '', 'QRSC0519000016', '', '', '', 'User', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-07-26 03:31:35', 0, 2, 0, 0, 0, 0, 0, ''),
(3, 'user_uploads/2/audio/2019/07/qrs-connect_59d6a3ebf1445e7f144885cd00e02356.flac', 6, '', 0, '', '', 0, 0, -1, '1', 71, 0, 0, 1, 0, 0, 0, '2019-07-26 19:32:46', '02._2019_7_26_002.flac_User_Recordingdc_Organ', 'User', 'User', '', 'User', '', 'My Album', 'Contemporary', '', '', '', '', 'Organ', '0', '', '', '', 'QRSC0519000016', '', '', '', 'User', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-07-26 03:32:45', 0, 2, 0, 0, 0, 0, 0, ''),
(4, 'user_uploads/2/audio/2019/07/qrs-connect_c36026cb07e91ea4c2874e61d3765600.flac', 6, '', 0, '', '', 0, 0, -1, '1', 72, 0, 0, 1, 0, 0, 0, '2019-07-26 19:37:51', '03._2019_7_26_003.flac_User_Recordingdc_Organ', 'User', 'User', '', 'User', '', 'My Album', 'Contemporary', '', '', '', '', 'Organ', '0', '', '', '', 'QRSC0519000016', '', '', '', 'User', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-07-26 03:37:50', 0, 2, 0, 0, 0, 0, 0, ''),
(5, 'user_uploads/2/audio/2019/07/qrs-connect_ffe8e8efcbba4fc193dd9b8e7be4c2f8.flac', 6, '', 0, '', '', 0, 0, -1, '1', 73, 0, 0, 1, 0, 0, 0, '2019-07-26 19:38:26', '04._2019_7_26_004.flac_User_Recordingdc_Organ', 'User', 'User', '', 'User', '', 'My Album', 'Contemporary', '', '', '', '', 'Organ', '0', '', '', '', 'QRSC0519000016', '', '', '', 'User', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-07-26 03:38:26', 0, 2, 0, 0, 0, 0, 0, ''),
(6, 'user_uploads/2/audio/2019/07/qrs-connect_8c0ed5fa7876c3c03789a178a9ad0c03.flac', 6, '', 0, '', '', 0, 0, -1, '1', 74, 0, 0, 1, 0, 0, 0, '2019-07-26 19:38:57', '05._2019_7_26_005.flac_User_Recordingdc_Organ', 'User', 'User', '', 'User', '', 'My Album', 'Contemporary', '', '', '', '', 'Organ', '0', '', '', '', 'QRSC0519000016', '', '', '', 'User', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-07-26 03:38:57', 0, 2, 0, 0, 0, 0, 0, ''),
(7, 'user_uploads/2/audio/2019/07/qrs-connect_52cbe1a32aaa5951c70fd6f1cafb7bef.flac', 6, '', 0, '', '', 0, 0, -1, '1', 75, 0, 0, 1, 0, 0, 0, '2019-07-26 19:39:30', '06._2019_7_26_006.flac_User_Recordingdc_Organ', 'User', 'User', '', 'User', '', 'My Album', 'Contemporary', '', '', '', '', 'Organ', '0', '', '', '', 'QRSC0519000016', '', '', '', 'User', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-07-26 03:39:29', 0, 2, 0, 0, 0, 0, 0, ''),
(8, 'user_uploads/2/audio/2019/07/qrs-connect_2fdcc61d222e9f0f15261c0c0e01762d.flac', 6, '', 0, '', '', 0, 0, -1, '1', 76, 0, 0, 1, 0, 0, 0, '2019-07-26 19:40:11', '07._2019_7_26_007.flac_User_Recordingdc_Organ', 'User', 'User', '', 'User', '', 'My Album', 'Contemporary', '', '', '', '', 'Organ', '0', '', '', '', 'QRSC0519000016', '', '', '', 'User', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-07-26 03:40:10', 0, 2, 0, 0, 0, 0, 0, ''),
(9, 'user_uploads/2/audio/2019/07/qrs-connect_18dee7743b8f2e4ec34ec21bcb1417ce.flac', 6, '', 0, '', '', 0, 0, -1, '1', 77, 0, 0, 1, 0, 0, 0, '2019-07-26 19:50:24', '08._2019_7_26_008.flac_User_Recordingdc_Organ', 'User', 'User', '', 'User', '', 'My Album', 'Contemporary', '', '', '', '', 'Organ', '0', '', '', '', 'QRSC0519000016', '', '', '', 'User', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-07-26 03:50:23', 0, 2, 0, 0, 0, 0, 0, ''),
(10, 'user_uploads/2/audio/2019/07/qrs-connect_4a02570552111e66c065af3296f52f61.flac', 6, '', 0, '', '', 0, 0, -1, '1', 78, 0, 0, 1, 0, 0, 0, '2019-07-26 19:51:28', '09._2019_7_26_009.flac_User_Recordingdc_Organ', 'User', 'User', '', 'User', '', 'My Album', 'Contemporary', '', '', '', '', 'Organ', '0', '', '', '', 'QRSC0519000016', '', '', '', 'User', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-07-26 03:51:27', 0, 2, 0, 0, 0, 0, 0, ''),
(7, 'user_uploads/2/audio/2019/08/qrs-connect_2bb6ad26084af2563e5cc6cbfbe5d61f.flac', 6, '', 0, '', '', 0, 0, -1, '0', 7, 0, 0, 1, 0, 0, 0, '2019-08-15 19:40:15', 'Snare1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-09 11:33:24', 0, 2, 0, 0, 0, 0, 0, ''),
(40, 'user_uploads/2/audio/2019/08/qrs-connect_8932d4f86cee0d6a3a5f5acc70e558ea.mid', 0, '', 0, '', '', 0, 15, 12670, '0', 552, 0, 0, 1, 0, 0, 0, '2019-08-20 17:39:20', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-20 01:39:20', 0, 2, 0, 0, 0, 0, 0, ''),
(184, 'user_uploads/2/audio/2019/08/qrs-connect_a5c9cba445546191fd9120a9738d3af7.mid', 0, '', 0, '', '', 0, 0, 9576, '0', 430, 0, 0, 1, 0, 0, 0, '2019-08-26 14:13:54', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-26 10:13:54', 0, 2, 0, 0, 0, 0, 0, ''),
(185, 'user_uploads/2/audio/2019/08/qrs-connect_ed2813a5c45ade2465c318feff13486f.mid', 0, '', 0, '', '', 0, 0, 6361, '0', 435, 0, 0, 1, 0, 0, 0, '2019-08-26 14:14:03', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-26 10:14:03', 0, 2, 0, 0, 0, 0, 0, ''),
(186, 'user_uploads/2/audio/2019/08/qrs-connect_246f1bb7f733202a44ccbc52b5fc5262.mid', 0, '', 0, '', '', 0, 0, 8538, '0', 440, 0, 0, 1, 0, 0, 0, '2019-08-26 14:14:42', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-26 10:14:42', 0, 2, 0, 0, 0, 0, 0, ''),
(187, 'user_uploads/2/audio/2019/08/qrs-connect_c6d3141aadd927d34b93ce8151db702f.mid', 0, '', 0, '', '', 0, 0, 16718, '0', 445, 0, 0, 1, 0, 0, 0, '2019-08-26 14:15:03', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-26 10:15:03', 0, 2, 0, 0, 0, 0, 0, ''),
(188, 'user_uploads/2/audio/2019/08/qrs-connect_d993737c34161c5cdc9b7869cf522aad.mid', 0, '', 0, '', '', 0, 0, 13940, '0', 450, 0, 0, 1, 0, 0, 0, '2019-08-26 14:15:22', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-26 10:15:22', 0, 2, 0, 0, 0, 0, 0, ''),
(189, 'user_uploads/2/audio/2019/08/qrs-connect_e41d89546eb36a66e428fa9e912e2491.mid', 0, '', 0, '', '', 0, 0, 5308, '0', 455, 0, 0, 1, 0, 0, 0, '2019-08-26 14:15:31', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-26 10:15:31', 0, 2, 0, 0, 0, 0, 0, ''),
(190, 'user_uploads/2/audio/2019/08/qrs-connect_3f7dbe35fa6ded1939f1702ad9e717dc.mid', 0, '', 0, '', '', 0, 0, 6179, '0', 460, 0, 0, 1, 0, 0, 0, '2019-08-26 14:15:42', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-26 10:15:42', 0, 2, 0, 0, 0, 0, 0, ''),
(191, 'user_uploads/2/audio/2019/08/qrs-connect_5d3f6fd4be0e2204187d3a4751b6f31e.mid', 0, '', 0, '', '', 0, 0, 23157, '0', 465, 0, 0, 1, 0, 0, 0, '2019-08-26 14:16:08', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-26 10:16:08', 0, 2, 0, 0, 0, 0, 0, ''),
(192, 'user_uploads/2/audio/2019/08/qrs-connect_7fb4a0234097ed7178b6da658a5ca13d.mid', 0, '', 0, '', '', 0, 0, 32832, '0', 470, 0, 0, 1, 0, 0, 0, '2019-08-26 14:16:45', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-26 10:16:45', 0, 2, 0, 0, 0, 0, 0, ''),
(193, 'user_uploads/2/audio/2019/08/qrs-connect_754381ca765b6720cec58ec08fa77570.mid', 0, '', 0, '', '', 0, 0, 16653, '0', 475, 0, 0, 1, 0, 0, 0, '2019-08-26 14:17:04', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-26 10:17:04', 0, 2, 0, 0, 0, 0, 0, ''),
(194, 'user_uploads/2/audio/2019/08/qrs-connect_d0c1a72688176bb9fb2e54fd1f865393.mid', 0, '', 0, '', '', 0, 0, 66752, '0', 480, 0, 0, 1, 0, 0, 0, '2019-08-26 14:18:14', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-26 10:18:14', 0, 2, 0, 0, 0, 0, 0, ''),
(195, 'user_uploads/2/audio/2019/08/qrs-connect_2ec767008ba7cc167fe0ba8de148d40c.mid', 0, '', 0, '', '', 0, 0, 10549, '0', 485, 0, 0, 1, 0, 0, 0, '2019-08-26 14:35:40', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-26 10:35:40', 0, 2, 0, 0, 0, 0, 0, ''),
(196, 'user_uploads/2/audio/2019/08/qrs-connect_e98166e5ae5022d29141b416513f1cf2.mid', 0, '', 0, '', '', 0, 0, 174833, '0', 490, 0, 0, 1, 0, 0, 0, '2019-08-26 14:38:54', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-26 10:38:54', 0, 2, 0, 0, 0, 0, 0, ''),
(197, 'user_uploads/2/audio/2019/08/qrs-connect_b71153b824a33540daa4d4788326b991.mid', 0, '', 0, '', '', 0, 0, 17000, '0', 495, 0, 0, 1, 0, 0, 0, '2019-08-26 14:55:48', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-26 10:55:48', 0, 2, 0, 0, 0, 0, 0, ''),
(198, 'user_uploads/2/audio/2019/08/qrs-connect_3c9fcc59e70deed7e7845bd6baba8bfa.mid', 0, '', 0, '', '', 0, 0, 72864, '0', 500, 0, 0, 1, 0, 0, 0, '2019-08-26 15:01:21', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-26 11:01:21', 0, 2, 0, 0, 0, 0, 0, ''),
(199, 'user_uploads/2/audio/2019/08/qrs-connect_3ef213948bdab0a0bd247909bd301f6a.mid', 0, '', 0, '', '', 0, 0, 112627, '0', 505, 0, 0, 1, 0, 0, 0, '2019-08-26 15:14:39', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-26 11:14:39', 0, 2, 0, 0, 0, 0, 0, ''),
(200, 'user_uploads/2/audio/2019/08/qrs-connect_5c42b7844c859e42f1e79f05de7fd782.mid', 0, '', 0, '', '', 0, 0, 41405, '0', 510, 0, 0, 1, 0, 0, 0, '2019-08-26 15:16:11', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-26 11:16:11', 0, 2, 0, 0, 0, 0, 0, ''),
(201, 'user_uploads/2/audio/2019/08/qrs-connect_9ca4acf16e9779213a386da45bb7feba.mid', 0, '', 0, '', '', 0, 0, 3732, '0', 515, 0, 0, 1, 0, 0, 0, '2019-08-26 15:16:19', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-26 11:16:19', 0, 2, 0, 0, 0, 0, 0, ''),
(202, 'user_uploads/2/audio/2019/08/qrs-connect_59f0a8538dc5ae729aa10f8d38723155.mid', 0, '', 0, '', '', 0, 0, 7188, '0', 520, 0, 0, 1, 0, 0, 0, '2019-08-26 15:16:29', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-26 11:16:29', 0, 2, 0, 0, 0, 0, 0, ''),
(203, 'user_uploads/2/audio/2019/08/qrs-connect_fb6702514cb669a385fc1b58e8687bf8.mid', 0, '', 0, '', '', 0, 0, 35645, '0', 525, 0, 0, 1, 0, 0, 0, '2019-08-26 17:22:44', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-26 01:22:44', 0, 2, 0, 0, 0, 0, 0, ''),
(204, 'user_uploads/2/audio/2019/08/qrs-connect_f4b0fb34486819ae20d7463f1a25ed08.mid', 0, '', 0, '', '', 0, 0, 5475, '0', 530, 0, 0, 1, 0, 0, 0, '2019-08-26 17:23:12', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-26 01:23:12', 0, 2, 0, 0, 0, 0, 0, ''),
(205, 'user_uploads/2/audio/2019/08/qrs-connect_28e635f9fa65fd2588abccd55aa8abce.mid', 0, '', 0, '', '', 0, 0, 9822, '0', 535, 0, 0, 1, 0, 0, 0, '2019-08-26 17:23:22', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-26 01:23:22', 0, 2, 0, 0, 0, 0, 0, ''),
(206, 'user_uploads/2/audio/2019/08/qrs-connect_7c967c85ea0ed187b908baa00e2559c8.mid', 0, '', 0, '', '', 0, 0, 53552, '0', 540, 0, 0, 1, 0, 0, 0, '2019-08-26 17:25:16', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-26 01:25:16', 0, 2, 0, 0, 0, 0, 0, ''),
(41, 'user_uploads/2/audio/2019/08/qrs-connect_e0178450d57faa4e499d881a2a1a1bef.mid', 0, '', 0, '', '', 0, 5261, 570009, '0', 47, 0, 0, 1, 0, 0, 0, '2019-08-27 13:54:42', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-27 09:54:42', 0, 2, 0, 0, 0, 0, 0, ''),
(42, 'user_uploads/2/audio/2019/08/qrs-connect_7c0e7e9bfbb736d06cbb3f69b59ca0ff.mid', 0, '', 0, '', '', 0, 512, 75978, '0', 97, 0, 0, 1, 0, 0, 0, '2019-08-27 15:19:51', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-27 11:19:51', 0, 2, 0, 0, 0, 0, 0, ''),
(43, 'user_uploads/2/audio/2019/08/qrs-connect_d6cc616355acaf6547331f6514dec436.mid', 0, '', 0, '', '', 0, 115, 25914, '0', 51, 0, 0, 1, 0, 0, 0, '2019-08-27 16:24:03', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-27 12:24:03', 0, 2, 0, 0, 0, 0, 0, ''),
(44, 'user_uploads/2/audio/2019/08/qrs-connect_3d378395c65ba86c99681711a6b2b345.mid', 0, '', 0, '', '', 0, 250, 57054, '0', 56, 0, 0, 1, 0, 0, 0, '2019-08-27 16:25:03', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-27 12:25:03', 0, 2, 0, 0, 0, 0, 0, ''),
(45, 'user_uploads/2/audio/2019/08/qrs-connect_05431a61d2ba96614bafad640325e97d.mid', 0, '', 0, '', '', 0, 145, 21217, '0', 61, 0, 0, 1, 0, 0, 0, '2019-08-27 16:25:31', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-27 12:25:31', 0, 2, 0, 0, 0, 0, 0, ''),
(46, 'user_uploads/2/audio/2019/08/qrs-connect_d9ab72c7b7ba5bd63fc46ddd9752b9b1.mid', 0, '', 0, '', '', 0, 400, 74872, '0', 66, 0, 0, 1, 0, 0, 0, '2019-08-27 16:31:50', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-27 12:31:50', 0, 2, 0, 0, 0, 0, 0, ''),
(47, 'user_uploads/2/audio/2019/08/qrs-connect_da6cfec1edb5f87c8ef60f60617c0e10.mid', 0, '', 0, '', '', 0, 64, 20561, '0', 71, 0, 0, 1, 0, 0, 0, '2019-08-27 16:32:24', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-27 12:32:24', 0, 2, 0, 0, 0, 0, 0, ''),
(48, 'user_uploads/2/audio/2019/08/qrs-connect_d3d8e10e1df109c8c070dad2fbe77de5.mid', 0, '', 0, '', '', 0, 171, 48578, '0', 76, 0, 0, 1, 0, 0, 0, '2019-08-27 16:34:05', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-27 12:34:05', 0, 2, 0, 0, 0, 0, 0, ''),
(49, 'user_uploads/2/audio/2019/08/qrs-connect_904b0f08e454f56894e9ce9fbfee828b.mid', 0, '', 0, '', '', 0, 993, 237576, '0', 63, 0, 0, 1, 0, 0, 0, '2019-08-27 19:50:11', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-27 03:50:11', 0, 2, 0, 0, 0, 0, 0, ''),
(50, 'user_uploads/2/audio/2019/08/qrs-connect_21450fce6a78c6eadd166322df5dc921.mid', 0, '', 0, '', '', 0, 1133, 132394, '0', 68, 0, 0, 1, 0, 0, 0, '2019-08-27 19:52:32', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-27 03:52:32', 0, 2, 0, 0, 0, 0, 0, ''),
(208, 'user_uploads/2/audio/2019/08/qrs-connect_1bb69899d0b3f2befed41f63b6545973.mid', 0, '', 0, '', '', 0, 899, 111163, '0', 308, 0, 0, 1, 0, 0, 0, '2019-08-27 20:00:34', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-27 04:00:34', 0, 2, 0, 0, 0, 0, 0, ''),
(209, 'user_uploads/2/audio/2019/08/qrs-connect_20b57936e609cd5e5e3ae9df218dc262.mid', 0, '', 0, '', '', 0, 2057, 158649, '0', 313, 0, 0, 1, 0, 0, 0, '2019-08-27 20:04:20', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-27 04:04:20', 0, 2, 0, 0, 0, 0, 0, ''),
(210, 'user_uploads/2/audio/2019/08/qrs-connect_7bf4c22e6b040ec31470f515e1fe2783.mid', 0, '', 0, '', '', 0, 2802, 392806, '0', 318, 0, 0, 1, 0, 0, 0, '2019-08-27 20:11:01', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-27 04:11:01', 0, 2, 0, 0, 0, 0, 0, ''),
(211, 'user_uploads/2/audio/2019/08/qrs-connect_72ee636f7707d1f84474b1227d1a9a88.mid', 0, '', 0, '', '', 0, 1177, 167216, '0', 323, 0, 0, 1, 0, 0, 0, '2019-08-27 20:13:57', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-27 04:13:57', 0, 2, 0, 0, 0, 0, 0, ''),
(212, 'user_uploads/2/audio/2019/08/qrs-connect_74faee9dbac17821c78236dc4fcd744a.mid', 0, '', 0, '', '', 0, 1246, 157511, '0', 328, 0, 0, 1, 0, 0, 0, '2019-08-27 20:17:17', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-27 04:17:17', 0, 2, 0, 0, 0, 0, 0, ''),
(213, 'user_uploads/2/audio/2019/08/qrs-connect_e0c5279f636799bc66cff80a472a0295.mid', 0, '', 0, '', '', 0, 2474, 288727, '0', 333, 0, 0, 1, 0, 0, 0, '2019-08-27 20:22:10', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-27 04:22:10', 0, 2, 0, 0, 0, 0, 0, ''),
(214, 'user_uploads/2/audio/2019/08/qrs-connect_cec419566cc36eb848d6cd598131b5cc.mid', 0, '', 0, '', '', 0, 2346, 270669, '0', 338, 0, 0, 1, 0, 0, 0, '2019-08-27 20:27:09', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-27 04:27:09', 0, 2, 0, 0, 0, 0, 0, ''),
(215, 'user_uploads/2/audio/2019/08/qrs-connect_383d4e318b179bf068574e5af3aa836f.mid', 0, '', 0, '', '', 0, 3572, 230805, '0', 343, 0, 0, 1, 0, 0, 0, '2019-08-27 20:31:09', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-27 04:31:10', 0, 2, 0, 0, 0, 0, 0, ''),
(216, 'user_uploads/2/audio/2019/08/qrs-connect_5a342e5f294b157d0b37fa7421836ab3.mid', 0, '', 0, '', '', 0, 1696, 107488, '0', 348, 0, 0, 1, 0, 0, 0, '2019-08-27 20:33:07', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-27 04:33:07', 0, 2, 0, 0, 0, 0, 0, ''),
(217, 'user_uploads/2/audio/2019/08/qrs-connect_01f537343daa05184cc5a8136a7fa375.mid', 0, '', 0, '', '', 0, 1222, 159783, '0', 353, 0, 0, 1, 0, 0, 0, '2019-08-27 20:36:02', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-27 04:36:02', 0, 2, 0, 0, 0, 0, 0, ''),
(218, 'user_uploads/2/audio/2019/08/qrs-connect_6211529c650c1908d4c5da74b601a5f7.mid', 0, '', 0, '', '', 0, 133, 20609, '0', 358, 0, 0, 1, 0, 0, 0, '2019-08-27 20:38:10', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-27 04:38:10', 0, 2, 0, 0, 0, 0, 0, ''),
(219, 'user_uploads/2/audio/2019/08/qrs-connect_2b58e14dd1f16dcfa44e9ed6cdb7942a.mid', 0, '', 0, '', '', 0, 22, 5601, '0', 363, 0, 0, 1, 0, 0, 0, '2019-08-27 20:38:29', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-27 04:38:29', 0, 2, 0, 0, 0, 0, 0, ''),
(220, 'user_uploads/2/audio/2019/08/qrs-connect_11341dea8607e75d931b5fd2dc7a88f5.mid', 0, '', 0, '', '', 0, 387, 38358, '0', 368, 0, 0, 1, 0, 0, 0, '2019-08-27 20:39:22', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-27 04:39:22', 0, 2, 0, 0, 0, 0, 0, ''),
(221, 'user_uploads/2/audio/2019/08/qrs-connect_4d3db0921175639a6ab3d79337b59c52.mid', 0, '', 0, '', '', 0, 58, 62003, '0', 373, 0, 0, 1, 0, 0, 0, '2019-08-27 20:42:12', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-27 04:42:12', 0, 2, 0, 0, 0, 0, 0, ''),
(51, 'user_uploads/2/audio/2019/09/qrs-connect_cdf7f1bd4f6f9288db7f74a6fb4401c7.mid', 0, '', 0, '', '', 0, 839, 84903, '0', 193, 0, 0, 1, 0, 0, 0, '2019-09-03 16:21:45', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-03 12:21:45', 0, 2, 0, 0, 0, 0, 0, ''),
(57, 'user_uploads/2/audio/2019/09/qrs-connect_5d1e83ede1880c9866bdc3faadf9f711.mid', 0, '', 0, '', '', 0, 33, 12518, '0', 304, 0, 0, 1, 0, 0, 0, '2019-09-04 15:46:20', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-04 11:46:20', 0, 2, 0, 0, 0, 0, 0, ''),
(58, 'user_uploads/2/audio/2019/09/qrs-connect_360a4cd5ea15787fba79f165573b4765.flac', 6, '', 0, '', '', 0, 0, 38008, '0', 309, 0, 0, 1, 0, 0, 0, '2019-09-04 18:26:37', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-04 02:26:38', 0, 2, 0, 0, 0, 0, 0, ''),
(59, 'user_uploads/2/audio/2019/09/qrs-connect_f9373ebfc0468b7d4a8c422d541057af.flac', 6, '', 0, '', '', 0, 0, 36965, '0', 241, 0, 0, 1, 0, 0, 0, '2019-09-04 20:25:23', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-04 04:25:24', 0, 2, 0, 0, 0, 0, 0, ''),
(7, 'user_uploads/2/audio/2019/09/qrs-connect_7502182485e3879a555c3b48b041b9d7.mid', 0, '', 0, '', '', 0, 0, 4179, '0', 7, 0, 0, 1, 0, 0, 0, '2019-09-10 15:47:08', '2019_8_26_007', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0519000016', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-08-26 10:15:42', 0, 2, 0, 0, 0, 0, 0, ''),
(66, 'user_uploads/8/audio/2019/09/qrs-connect_7c210688a62da595dc18cb03cea8cdc4.flac', 6, '', 0, '', '', 0, 0, 28155, '0', 109, 0, 0, 1, 0, 0, 0, '2019-09-13 17:30:27', '2019_9_13_004', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-13 01:30:28', 0, 8, 0, 0, 0, 0, 0, ''),
(66, 'user_uploads/8/audio/2019/09/qrs-connect_6cbb62c77ef83f0fc27a2e44af904bde.flac', 6, '', 0, '', '', 0, 0, 28155, '0', 109, 0, 0, 1, 0, 0, 0, '2019-09-13 17:30:27', '2019_9_13_004', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-13 01:30:28', 0, 8, 0, 0, 0, 0, 0, ''),
(66, 'user_uploads/8/audio/2019/09/qrs-connect_8884cdde6dde3870bd641e9becece0f5.flac', 6, '', 0, '', '', 0, 0, 28155, '0', 109, 0, 0, 1, 0, 0, 0, '2019-09-13 17:30:27', '2019_9_13_004', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-13 01:30:28', 0, 8, 0, 0, 0, 0, 0, ''),
(66, 'user_uploads/8/audio/2019/09/qrs-connect_3527f541def3bce857fb449867ea3f99.flac', 6, '', 0, '', '', 0, 0, 28155, '0', 109, 0, 0, 1, 0, 0, 0, '2019-09-13 17:30:27', '2019_9_13_004', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-13 01:30:28', 0, 8, 0, 0, 0, 0, 0, ''),
(66, 'user_uploads/8/audio/2019/09/qrs-connect_69355f045c6507d48e948804f550a293.flac', 6, '', 0, '', '', 0, 0, 28155, '0', 378, 0, 0, 1, 0, 0, 0, '2019-09-19 19:15:12', '2019_9_13_004', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-13 01:30:28', 0, 8, 0, 0, 0, 0, 0, ''),
(65, 'user_uploads/8/audio/2019/09/qrs-connect_c73a4151aa278e91da83e604bb92e9e9.flac', 6, '', 0, '', '', 0, 0, 103517, '0', 377, 0, 0, 1, 0, 0, 0, '2019-09-19 19:15:12', '2019_9_13_003', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-13 01:29:32', 0, 8, 0, 0, 0, 0, 0, ''),
(210, 'user_uploads/2/audio/2019/09/qrs-connect_00f960bf7b087b031a06e13b490523d1.mid', 0, '', 0, '', '', 0, 385, 41915, '0', 162, 0, 0, 1, 0, 0, 0, '2019-09-20 12:08:44', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 08:08:44', 0, 2, 0, 0, 0, 0, 0, ''),
(211, 'user_uploads/2/audio/2019/09/qrs-connect_10e8f1649b14e826f705ad45a03d5167.mid', 0, '', 0, '', '', 0, 1594, 114590, '0', 167, 0, 0, 1, 0, 0, 0, '2019-09-20 15:09:57', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 11:09:57', 0, 2, 0, 0, 0, 0, 0, ''),
(212, 'user_uploads/2/audio/2019/09/qrs-connect_27699eb5ad8aa2931a6d7ec13473502e.mid', 0, '', 0, '', '', 0, 988, 81787, '0', 172, 0, 0, 1, 0, 0, 0, '2019-09-20 18:04:16', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 02:04:16', 0, 2, 0, 0, 0, 0, 0, ''),
(213, 'user_uploads/2/audio/2019/09/qrs-connect_10505ac865e87fa6be23958a97ac0a3f.mid', 0, '', 0, '', '', 0, 25, 7356, '0', 177, 0, 0, 1, 0, 0, 0, '2019-09-20 18:04:37', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 02:04:37', 0, 2, 0, 0, 0, 0, 0, ''),
(214, 'user_uploads/2/audio/2019/09/qrs-connect_bb63a144fbc238888d7449d27483807d.mid', 0, '', 0, '', '', 0, 4079, 278907, '0', 182, 0, 0, 1, 0, 0, 0, '2019-09-20 18:09:53', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 02:09:53', 0, 2, 0, 0, 0, 0, 0, ''),
(215, 'user_uploads/2/audio/2019/09/qrs-connect_7ee29557ca8829675c5789e1a324f0b1.mid', 0, '', 0, '', '', 0, 2286, 201267, '0', 187, 0, 0, 1, 0, 0, 0, '2019-09-20 18:13:20', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 02:13:20', 0, 2, 0, 0, 0, 0, 0, ''),
(216, 'user_uploads/2/audio/2019/09/qrs-connect_0ff856840616def73c45bf90525108a5.mid', 0, '', 0, '', '', 0, 2469, 227307, '0', 192, 0, 0, 1, 0, 0, 0, '2019-09-20 18:17:11', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 02:17:11', 0, 2, 0, 0, 0, 0, 0, ''),
(217, 'user_uploads/2/audio/2019/09/qrs-connect_2b829ff830b93843274b9b0b2ea3242c.mid', 0, '', 0, '', '', 0, 1738, 202232, '0', 197, 0, 0, 1, 0, 0, 0, '2019-09-20 18:20:38', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 02:20:38', 0, 2, 0, 0, 0, 0, 0, ''),
(218, 'user_uploads/2/audio/2019/09/qrs-connect_c228d4528ef06f464a4a8c1854a1b6cc.mid', 0, '', 0, '', '', 0, 2094, 220826, '0', 202, 0, 0, 1, 0, 0, 0, '2019-09-20 18:42:28', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 02:42:28', 0, 2, 0, 0, 0, 0, 0, ''),
(219, 'user_uploads/2/audio/2019/09/qrs-connect_a9610dccba13a41df3719f4ee977eb9e.mid', 0, '', 0, '', '', 0, 2131, 240121, '0', 207, 0, 0, 1, 0, 0, 0, '2019-09-20 18:46:37', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 02:46:37', 0, 2, 0, 0, 0, 0, 0, ''),
(220, 'user_uploads/2/audio/2019/09/qrs-connect_247fae56853778c3aecadfcf950dfbc7.mid', 0, '', 0, '', '', 0, 2780, 266258, '0', 212, 0, 0, 1, 0, 0, 0, '2019-09-20 18:51:10', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 02:51:10', 0, 2, 0, 0, 0, 0, 0, ''),
(221, 'user_uploads/2/audio/2019/09/qrs-connect_4026970d5c672056125789316c64e9a2.mid', 0, '', 0, '', '', 0, 2231, 182999, '0', 217, 0, 0, 1, 0, 0, 0, '2019-09-20 18:54:16', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 02:54:16', 0, 2, 0, 0, 0, 0, 0, ''),
(222, 'user_uploads/2/audio/2019/09/qrs-connect_49c3dfe647d62619e54ec8549283f70b.mid', 0, '', 0, '', '', 0, 2135, 187746, '0', 222, 0, 0, 1, 0, 0, 0, '2019-09-20 18:57:29', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 02:57:29', 0, 2, 0, 0, 0, 0, 0, ''),
(223, 'user_uploads/2/audio/2019/09/qrs-connect_9a1f674e91427310a8b49fcf82f01003.mid', 0, '', 0, '', '', 0, 2965, 202803, '0', 227, 0, 0, 1, 0, 0, 0, '2019-09-20 19:01:05', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 03:01:05', 0, 2, 0, 0, 0, 0, 0, ''),
(224, 'user_uploads/2/audio/2019/09/qrs-connect_4d777921951d4a8d44eb3faac7740491.mid', 0, '', 0, '', '', 0, 1027, 107405, '0', 232, 0, 0, 1, 0, 0, 0, '2019-09-20 19:03:01', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 03:03:01', 0, 2, 0, 0, 0, 0, 0, ''),
(225, 'user_uploads/2/audio/2019/09/qrs-connect_f9e6299d0ddc21e63968a73c54fd68be.mid', 0, '', 0, '', '', 0, 5, 3691, '0', 237, 0, 0, 1, 0, 0, 0, '2019-09-20 19:07:42', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 03:07:42', 0, 2, 0, 0, 0, 0, 0, ''),
(226, 'user_uploads/2/audio/2019/09/qrs-connect_29ab45c3a0e2a1e0eb58c968d52d6198.mid', 0, '', 0, '', '', 0, 31, 13457, '0', 242, 0, 0, 1, 0, 0, 0, '2019-09-20 19:07:58', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 03:07:58', 0, 2, 0, 0, 0, 0, 0, ''),
(227, 'user_uploads/2/audio/2019/09/qrs-connect_a9b8d89e3ead7ed5889e42b6b70f1302.mid', 0, '', 0, '', '', 0, 12, 7651, '0', 247, 0, 0, 1, 0, 0, 0, '2019-09-20 19:20:29', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 03:20:29', 0, 2, 0, 0, 0, 0, 0, ''),
(228, 'user_uploads/2/audio/2019/09/qrs-connect_dbe4eb63639120df3bdff602516cf33f.mid', 0, '', 0, '', '', 0, 72, 22417, '0', 252, 0, 0, 1, 0, 0, 0, '2019-09-20 19:23:33', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 03:23:33', 0, 2, 0, 0, 0, 0, 0, ''),
(229, 'user_uploads/2/audio/2019/09/qrs-connect_2d5900df8c1b4e3c1040d93c31c9cbf3.mid', 0, '', 0, '', '', 0, 474, 59333, '0', 257, 0, 0, 1, 0, 0, 0, '2019-09-20 19:25:43', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 03:25:43', 0, 2, 0, 0, 0, 0, 0, ''),
(230, 'user_uploads/2/audio/2019/09/qrs-connect_42217a510c0838529a61fad156df89a7.mid', 0, '', 0, '', '', 0, 153, 30781, '0', 262, 0, 0, 1, 0, 0, 0, '2019-09-20 19:35:34', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 03:35:34', 0, 2, 0, 0, 0, 0, 0, '');
INSERT INTO `MUSIC_LIBRARY_BAK` (`MUSIC_ID`, `FILE_PATH`, `FILE_TYPE_ID`, `MD5_SUM`, `FILE_SIZE`, `ACC_FILE_PATH`, `ACC_MD5_SUM`, `ACC_FILE_SIZE`, `NUMBER_OF_NOTES`, `LENGTH_MS`, `DELETED`, `LAST_UPDATED`, `MIDI_DELAY_MS`, `AUDIO_DELAY_MS`, `PITCH_CORRECTION`, `SCRAMBLE_VALUE`, `MIN_FORCE_DIFF`, `REVISION`, `LAST_UPDATED_DATE`, `TITLE`, `ARTIST`, `AUTHOR`, `LYRICIST`, `COMPOSER`, `USER`, `ALBUM`, `GENRE`, `TRACK_IMAGE`, `KEY`, `TEMPO`, `METER`, `ACTIVITY_CATEGORY1`, `ACTIVITY_CATEGORY2`, `GEAR`, `SEGMENT`, `COURSE`, `DEVICE`, `KEYWORDS`, `LYRICS`, `WIKIPEDIA`, `PLAYED_BY`, `TRACK`, `RELEASE_YEAR`, `MULTI_GENRE`, `EVENTS`, `NEW_RELEASE_EPOCH`, `DEFAULT_CURVES`, `ORIGINAL_SYSTEM`, `EDITED_SYSTEMS_LIST`, `VIDEO_LINK`, `VIDEO_LINK_TYPE`, `WEBSITE_LINK`, `COPYRIGHTS`, `RECORDED_DATE`, `scoreProcessed`, `userid`, `notesOn`, `notesOff`, `pedalOn`, `pedalOff`, `songLength`, `songLengthHIS`) VALUES
(231, 'user_uploads/2/audio/2019/09/qrs-connect_60864c0aededbc588d9d36afc0d42377.mid', 0, '', 0, '', '', 0, 61, 20045, '0', 267, 0, 0, 1, 0, 0, 0, '2019-09-20 19:37:32', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 03:37:32', 0, 2, 0, 0, 0, 0, 0, ''),
(232, 'user_uploads/2/audio/2019/09/qrs-connect_f71c7782da49acd3ea2dc25dc4761540.mid', 0, '', 0, '', '', 0, 1729, 136112, '0', 272, 0, 0, 1, 0, 0, 0, '2019-09-20 20:04:28', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 04:04:28', 0, 2, 0, 0, 0, 0, 0, ''),
(233, 'user_uploads/2/audio/2019/09/qrs-connect_e2166d0378c4cdab71f97d737c020db8.mid', 0, '', 0, '', '', 0, 4079, 278903, '0', 277, 0, 0, 1, 0, 0, 0, '2019-09-20 20:12:45', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 04:12:45', 0, 2, 0, 0, 0, 0, 0, ''),
(234, 'user_uploads/2/audio/2019/09/qrs-connect_4973be21f2bf5d9b05dbd9d4940e2e9c.mid', 0, '', 0, '', '', 0, 2286, 201264, '0', 282, 0, 0, 1, 0, 0, 0, '2019-09-20 20:16:11', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 04:16:11', 0, 2, 0, 0, 0, 0, 0, ''),
(235, 'user_uploads/2/audio/2019/09/qrs-connect_1765c754ed13e75eaf93edc304470985.mid', 0, '', 0, '', '', 0, 1833, 164359, '0', 287, 0, 0, 1, 0, 0, 0, '2019-09-20 20:18:59', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 04:18:59', 0, 2, 0, 0, 0, 0, 0, ''),
(236, 'user_uploads/2/audio/2019/09/qrs-connect_7bbbc435d86265f3411bbae996b161be.mid', 0, '', 0, '', '', 0, 517, 87000, '0', 292, 0, 0, 1, 0, 0, 0, '2019-09-20 20:28:33', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-20 04:28:33', 0, 2, 0, 0, 0, 0, 0, ''),
(237, 'user_uploads/2/audio/2019/09/qrs-connect_64e7351e067629b7e4437054c9f1812e.mid', 0, '', 0, '', '', 0, 276, 59367, '0', 297, 0, 0, 1, 0, 0, 0, '2019-09-22 15:18:11', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-22 11:18:11', 0, 2, 0, 0, 0, 0, 0, ''),
(238, 'user_uploads/2/audio/2019/09/qrs-connect_8b7512d676670bbcaf38d96bfbefee6a.mid', 0, '', 0, '', '', 0, 11038, 1780764, '0', 302, 0, 0, 1, 0, 0, 0, '2019-09-23 12:08:19', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-23 08:08:19', 0, 2, 0, 0, 0, 0, 0, ''),
(239, 'user_uploads/2/audio/2019/09/qrs-connect_3ebe8fbcb75e00bcb00254e18dda63c5.mid', 0, '', 0, '', '', 0, 17508, 2290811, '0', 307, 0, 0, 1, 0, 0, 0, '2019-09-23 12:58:09', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-23 08:58:09', 0, 2, 0, 0, 0, 0, 0, ''),
(240, 'user_uploads/2/audio/2019/09/qrs-connect_3ea9146ae53089040a04bf959eb7a898.mid', 0, '', 0, '', '', 0, 24281, 2271128, '0', 312, 0, 0, 1, 0, 0, 0, '2019-09-23 13:36:04', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-23 09:36:04', 0, 2, 0, 0, 0, 0, 0, ''),
(241, 'user_uploads/2/audio/2019/09/qrs-connect_71aaf3f7ac02d029f742c3c81faf1475.mid', 0, '', 0, '', '', 0, 19592, 2287504, '0', 317, 0, 0, 1, 0, 0, 0, '2019-09-23 14:14:13', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-23 10:14:13', 0, 2, 0, 0, 0, 0, 0, ''),
(242, 'user_uploads/2/audio/2019/09/qrs-connect_862fab41cc6ad6b4ceacee5ee888823d.mid', 0, '', 0, '', '', 0, 18541, 2284142, '0', 322, 0, 0, 1, 0, 0, 0, '2019-09-23 14:52:22', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-23 10:52:22', 0, 2, 0, 0, 0, 0, 0, ''),
(243, 'user_uploads/2/audio/2019/09/qrs-connect_fe4e02a681a2fdca2a463a98b6103962.mid', 0, '', 0, '', '', 0, 19860, 2261009, '0', 327, 0, 0, 1, 0, 0, 0, '2019-09-23 15:30:06', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-23 11:30:06', 0, 2, 0, 0, 0, 0, 0, ''),
(244, 'user_uploads/2/audio/2019/09/qrs-connect_a6813c12514dadc8eaadb19e73b2a308.mid', 0, '', 0, '', '', 0, 18067, 2278607, '0', 332, 0, 0, 1, 0, 0, 0, '2019-09-23 16:08:06', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-23 12:08:06', 0, 2, 0, 0, 0, 0, 0, ''),
(245, 'user_uploads/2/audio/2019/09/qrs-connect_d05d64ae2a7e6f30e50579984158d388.mid', 0, '', 0, '', '', 0, 22188, 2244495, '0', 337, 0, 0, 1, 0, 0, 0, '2019-09-23 16:45:34', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-23 12:45:34', 0, 2, 0, 0, 0, 0, 0, ''),
(246, 'user_uploads/2/audio/2019/09/qrs-connect_5144597ee32ee5575e5cf5a785d4ada8.mid', 0, '', 0, '', '', 0, 16010, 2249815, '0', 342, 0, 0, 1, 0, 0, 0, '2019-09-23 17:23:06', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-23 01:23:06', 0, 2, 0, 0, 0, 0, 0, ''),
(247, 'user_uploads/2/audio/2019/09/qrs-connect_ed31a94e879f4a2de8687a1ee494494c.mid', 0, '', 0, '', '', 0, 16907, 2256894, '0', 347, 0, 0, 1, 0, 0, 0, '2019-09-23 18:00:46', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-23 02:00:46', 0, 2, 0, 0, 0, 0, 0, ''),
(248, 'user_uploads/2/audio/2019/09/qrs-connect_9882e160c8dd869be4002505012fbe68.mid', 0, '', 0, '', '', 0, 4173, 394510, '0', 352, 0, 0, 1, 0, 0, 0, '2019-09-23 18:07:25', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-23 02:07:25', 0, 2, 0, 0, 0, 0, 0, ''),
(249, 'user_uploads/2/audio/2019/09/qrs-connect_0fa5ff0123c3ea5ef6af5153591edb2c.mid', 0, '', 0, '', '', 0, 154, 28959, '0', 706, 0, 0, 1, 0, 0, 0, '2019-09-25 14:16:03', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-25 10:16:03', 0, 2, 0, 0, 0, 0, 0, ''),
(250, 'user_uploads/2/audio/2019/09/qrs-connect_eb0a5bdcd5f9cc1883dae0cfd8cb034c.mid', 0, '', 0, '', '', 0, 75, 13283, '0', 711, 0, 0, 1, 0, 0, 0, '2019-09-25 14:16:50', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-25 10:16:50', 0, 2, 0, 0, 0, 0, 0, ''),
(251, 'user_uploads/2/audio/2019/09/qrs-connect_5d7a4390ff3ae7fc100735493ab1e07b.mid', 0, '', 0, '', '', 0, 4456, 203731, '0', 242, 0, 0, 1, 0, 0, 0, '2019-09-25 19:32:06', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-25 03:32:06', 0, 2, 0, 0, 0, 0, 0, ''),
(253, 'user_uploads/2/audio/2019/09/qrs-connect_a9a095c5f6bf4929f0f96fa0af451a5f.mid', 0, '', 0, '', '', 0, 27799, 2115393, '0', 251, 0, 0, 1, 0, 0, 0, '2019-09-27 13:34:36', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-09-27 09:34:36', 0, 2, 0, 0, 0, 0, 0, ''),
(67, 'user_uploads/8/audio/2019/10/qrs-connect_3284344bd757488131b09d70326d0eca.mid', 0, '', 0, '', '', 0, 0, 43477, '0', 1049, 0, 0, 1, 0, 0, 0, '2019-10-02 20:08:36', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-02 04:08:36', 0, 8, 0, 0, 0, 0, 0, ''),
(68, 'user_uploads/8/audio/2019/10/qrs-connect_c4af91612b0d43fe3feb492d75be4634.mid', 0, '', 0, '', '', 0, 109, 14422, '0', 198, 0, 0, 1, 0, 0, 0, '2019-10-03 19:39:28', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-03 03:39:28', 0, 8, 0, 0, 0, 0, 0, ''),
(69, 'user_uploads/8/audio/2019/10/qrs-connect_18e6d5c40c68f2f12c483988334e3e33.mid', 0, '', 0, '', '', 0, 144, 15350, '0', 269, 0, 0, 1, 0, 0, 0, '2019-10-03 19:41:46', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-03 03:41:46', 0, 8, 0, 0, 0, 0, 0, ''),
(70, 'user_uploads/8/audio/2019/10/qrs-connect_03041e7431ea00e41cf6e23a23dd74e6.mid', 0, '', 0, '', '', 0, 43, 7838, '0', 274, 0, 0, 1, 0, 0, 0, '2019-10-03 19:45:20', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-03 03:45:20', 0, 8, 0, 0, 0, 0, 0, ''),
(71, 'user_uploads/8/audio/2019/10/qrs-connect_23af034a4b22a1845fb4a4a03b3dcfbf.mid', 0, '', 0, '', '', 0, 1198, 110224, '0', 279, 0, 0, 1, 0, 0, 0, '2019-10-03 19:49:09', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-03 03:49:09', 0, 8, 0, 0, 0, 0, 0, ''),
(72, 'user_uploads/8/audio/2019/10/qrs-connect_b485243a94a5fdce99e9fafd6415857b.mid', 0, '', 0, '', '', 0, 535, 47932, '0', 313, 0, 0, 1, 0, 0, 0, '2019-10-03 19:50:27', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-03 03:50:27', 0, 8, 0, 0, 0, 0, 0, ''),
(73, 'user_uploads/8/audio/2019/10/qrs-connect_b28ece9b5ec3215fce5b3bfda881f2c9.mid', 0, '', 0, '', '', 0, 58, 11329, '0', 111, 0, 0, 1, 0, 0, 0, '2019-10-03 19:58:11', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-03 03:58:11', 0, 8, 0, 0, 0, 0, 0, ''),
(74, 'user_uploads/8/audio/2019/10/qrs-connect_11c38ca107c287ef8af93cde66c31422.mid', 0, '', 0, '', '', 0, 40, 6609, '0', 225, 0, 0, 1, 0, 0, 0, '2019-10-03 20:03:28', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-03 04:03:28', 0, 8, 0, 0, 0, 0, 0, ''),
(75, 'user_uploads/8/audio/2019/10/qrs-connect_d7aa7c52517b7a80a89e94fcf0a1b7cd.mid', 0, '', 0, '', '', 0, 332, 34067, '0', 230, 0, 0, 1, 0, 0, 0, '2019-10-03 20:04:02', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-03 04:04:02', 0, 8, 0, 0, 0, 0, 0, ''),
(76, 'user_uploads/8/audio/2019/10/qrs-connect_a024dce8b0edc13d87e2dcdc2bc0ba38.mid', 0, '', 0, '', '', 0, 439, 30806, '0', 235, 0, 0, 1, 0, 0, 0, '2019-10-03 20:05:07', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-03 04:05:07', 0, 8, 0, 0, 0, 0, 0, ''),
(77, 'user_uploads/8/audio/2019/10/qrs-connect_6e89d5e3e8ea149549bc29a373769bbb.mid', 0, '', 0, '', '', 0, 326, 30052, '0', 240, 0, 0, 1, 0, 0, 0, '2019-10-03 20:05:39', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-03 04:05:39', 0, 8, 0, 0, 0, 0, 0, ''),
(78, 'user_uploads/8/audio/2019/10/qrs-connect_bb8d8806f6c054ce684f280cede659a7.mid', 0, '', 0, '', '', 0, 226, 16720, '0', 245, 0, 0, 1, 0, 0, 0, '2019-10-03 20:05:57', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-03 04:05:57', 0, 8, 0, 0, 0, 0, 0, ''),
(79, 'user_uploads/8/audio/2019/10/qrs-connect_8e97f47a88d128d02335e2ad03a13e22.mid', 0, '', 0, '', '', 0, 96, 12158, '0', 250, 0, 0, 1, 0, 0, 0, '2019-10-03 20:07:10', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-03 04:07:10', 0, 8, 0, 0, 0, 0, 0, ''),
(79, 'user_uploads/8/audio/2019/10/qrs-connect_9dc1e22ea415c0a13f4618d03b4b9056.mid', 0, '', 0, '', '', 0, 96, 12158, '0', 487, 0, 0, 1, 0, 0, 0, '2019-10-07 14:21:05', '2019_10_3_008', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-03 04:07:10', 0, 8, 0, 0, 0, 0, 0, ''),
(80, 'user_uploads/8/audio/2019/10/qrs-connect_7dc302e2c3157886ae72053ae2c0cfbc.mid', 0, '', 0, '', '', 0, 76, 10632, '0', 125, 0, 0, 1, 0, 0, 0, '2019-10-07 15:10:28', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-07 11:10:28', 0, 8, 0, 0, 0, 0, 0, ''),
(81, 'user_uploads/8/audio/2019/10/qrs-connect_34c01cd5175cd32e770d06149a4489a3.mid', 0, '', 0, '', '', 0, 50, 14186, '0', 253, 0, 0, 1, 0, 0, 0, '2019-10-07 15:41:23', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-07 11:41:23', 0, 8, 0, 0, 0, 0, 0, ''),
(79, 'user_uploads/8/audio/2019/10/qrs-connect_c9be4de3e805a36e4025c7cdcbac494d.flac', 6, '', 0, '', '', 0, 0, -1, '0', 79, 0, 0, 1, 0, 0, 0, '2019-10-07 15:40:25', 'Snare1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-07 10:20:43', 0, 8, 0, 0, 0, 0, 0, ''),
(82, 'user_uploads/8/audio/2019/10/qrs-connect_591a1a369bf40e7af37521711750742f.mid', 0, '', 0, '', '', 0, 72, 37903, '0', 258, 0, 0, 1, 0, 0, 0, '2019-10-07 17:31:54', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-07 01:31:54', 0, 8, 0, 0, 0, 0, 0, ''),
(83, 'user_uploads/8/audio/2019/10/qrs-connect_9e8594f524bf95e8ac4bc0187b66370c.mid', 0, '', 0, '', '', 0, 983, 154533, '0', 263, 0, 0, 1, 0, 0, 0, '2019-10-07 17:34:45', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-07 01:34:45', 0, 8, 0, 0, 0, 0, 0, ''),
(84, 'user_uploads/8/audio/2019/10/qrs-connect_81d3b848829368f2ede7aaa8e75b933d.mid', 0, '', 0, '', '', 0, 1768, 157325, '0', 268, 0, 0, 1, 0, 0, 0, '2019-10-07 17:38:13', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-07 01:38:13', 0, 8, 0, 0, 0, 0, 0, ''),
(85, 'user_uploads/8/audio/2019/10/qrs-connect_3ccfc3c82b6592aa9a78638c2ea4f52f.mid', 0, '', 0, '', '', 0, 34, 12907, '0', 273, 0, 0, 1, 0, 0, 0, '2019-10-07 17:51:32', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-07 01:51:32', 0, 8, 0, 0, 0, 0, 0, ''),
(86, 'user_uploads/8/audio/2019/10/qrs-connect_cd7891a0eafc8921cd24b3ba2d8c03f3.mid', 0, '', 0, '', '', 0, 80, 83745, '0', 278, 0, 0, 1, 0, 0, 0, '2019-10-07 17:54:21', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-07 01:54:21', 0, 8, 0, 0, 0, 0, 0, ''),
(96, 'user_uploads/8/audio/2019/10/qrs-connect_f275a6ed8b089f983f44ed2e067f8379.mid', 0, '', 0, '', '', 0, 0, 19924, '0', 96, 0, 0, 1, 0, 0, 0, '2019-10-07 15:40:26', 'Test-Chromatic-Velocity-127', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-07 10:20:43', 0, 8, 0, 0, 0, 0, 0, ''),
(92, 'user_uploads/8/audio/2019/10/qrs-connect_b7a898f20fddf14ab0e3ca5b9158731a.mid', 0, '', 0, '', '', 0, 0, 80121, '0', 92, 0, 0, 1, 0, 0, 0, '2019-10-07 15:40:26', 'Test-Plunger-Hold-1-Second', '', '', '', '', '', '', '', '', '', '480', '', '', '', '', '', '', 'QRSC0819807003', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-07 10:20:43', 0, 8, 0, 0, 0, 0, 0, ''),
(87, 'user_uploads/8/audio/2019/10/qrs-connect_11cf6c75b77fa93a2aecaa3d4e1881eb.mid', 0, '', 0, '', '', 0, 80, 85750, '0', 283, 0, 0, 1, 0, 0, 0, '2019-10-07 18:28:24', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-07 02:28:24', 0, 8, 0, 0, 0, 0, 0, ''),
(88, 'user_uploads/8/audio/2019/10/qrs-connect_36ff8797a57a345dc66c7830e7372cd9.mid', 0, '', 0, '', '', 0, 2023, 97688, '0', 288, 0, 0, 1, 0, 0, 0, '2019-10-07 18:57:10', '', '', '', '', '', '', '', '', '', '', '120', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', 0, '', '', '2019-10-07 02:57:10', 0, 8, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(10) UNSIGNED NOT NULL,
  `to_user_id` int(10) UNSIGNED NOT NULL,
  `from_user_id` int(10) UNSIGNED NOT NULL,
  `action` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `node_type` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `node_url` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `notify_id` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `message` mediumtext COLLATE utf8mb4_bin,
  `time` datetime DEFAULT NULL,
  `seen` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `to_user_id`, `from_user_id`, `action`, `node_type`, `node_url`, `notify_id`, `message`, `time`, `seen`) VALUES
(1, 2, 1, 'friend_add', '', 'QRSAdmin', '', NULL, '2019-04-10 18:35:04', '1'),
(2, 2, 1, 'follow', '', '', '', NULL, '2019-04-10 18:35:04', '1'),
(3, 2, 3, 'friend_add', '', 'QRSParker', '', NULL, '2019-04-10 18:36:40', '1'),
(4, 2, 3, 'follow', '', '', '', NULL, '2019-04-10 18:36:40', '1'),
(5, 1, 3, 'friend_add', '', 'QRSParker', '', NULL, '2019-04-10 18:36:41', '1'),
(6, 1, 3, 'follow', '', '', '', NULL, '2019-04-10 18:36:41', '1'),
(7, 3, 2, 'friend_accept', '', 'MetalGuitar_1981', '', NULL, '2019-04-10 18:38:15', '0'),
(8, 3, 2, 'follow', '', '', '', NULL, '2019-04-10 18:38:15', '0'),
(9, 1, 2, 'friend_accept', '', 'MetalGuitar_1981', '', NULL, '2019-04-10 18:38:16', '1'),
(10, 1, 2, 'follow', '', '', '', NULL, '2019-04-10 18:38:16', '1'),
(11, 2, 1, 'profile_visit', '', '', '', NULL, '2019-04-10 18:38:23', '1'),
(12, 3, 1, 'friend_accept', '', 'QRSAdmin', '', NULL, '2019-04-10 18:38:28', '0'),
(13, 3, 1, 'follow', '', '', '', NULL, '2019-04-10 18:38:28', '0'),
(14, 2, 1, 'profile_visit', '', '', '', NULL, '2019-04-24 15:31:51', '1'),
(15, 1, 4, 'friend_add', '', 'qrstad', '', NULL, '2019-04-25 18:57:49', '1'),
(16, 1, 4, 'follow', '', '', '', NULL, '2019-04-25 18:57:49', '1'),
(17, 2, 4, 'friend_add', '', 'qrstad', '', NULL, '2019-04-25 18:57:49', '1'),
(18, 2, 4, 'follow', '', '', '', NULL, '2019-04-25 18:57:49', '1'),
(19, 3, 4, 'friend_add', '', 'qrstad', '', NULL, '2019-04-25 18:57:50', '0'),
(20, 3, 4, 'follow', '', '', '', NULL, '2019-04-25 18:57:50', '0'),
(21, 4, 1, 'profile_visit', '', '', '', NULL, '2019-04-25 18:57:56', '1'),
(22, 4, 1, 'friend_accept', '', 'QRSAdmin', '', NULL, '2019-04-25 18:57:59', '1'),
(36, 4, 2, 'profile_visit', '', '', '', NULL, '2019-05-01 18:32:34', '1'),
(24, 4, 1, 'profile_visit', '', '', '', NULL, '2019-04-25 19:01:40', '1'),
(25, 2, 1, 'profile_visit', '', '', '', NULL, '2019-04-26 14:49:42', '1'),
(26, 4, 2, 'friend_accept', '', 'MetalGuitar_1981', '', NULL, '2019-04-26 19:10:51', '1'),
(37, 2, 8, 'friend_add', '', 'Yo81', '', NULL, '2019-05-03 15:13:49', '1'),
(28, 3, 5, 'profile_visit', '', '', '', NULL, '2019-04-26 22:01:15', '0'),
(29, 3, 2, 'group_add', 'Class101', 'class101', '', NULL, '2019-04-29 17:41:51', '0'),
(30, 3, 2, 'profile_visit', '', '', '', NULL, '2019-04-30 13:53:51', '0'),
(31, 5, 2, 'profile_visit', '', '', '', NULL, '2019-04-30 16:26:18', '0'),
(32, 5, 2, 'profile_visit', '', '', '', NULL, '2019-04-30 16:26:41', '0'),
(33, 5, 1, 'profile_visit', '', '', '', NULL, '2019-04-30 17:18:56', '0'),
(34, 4, 1, 'profile_visit', '', '', '', NULL, '2019-05-01 18:14:19', '1'),
(35, 2, 1, 'profile_visit', '', '', '', NULL, '2019-05-01 18:14:25', '1'),
(38, 2, 8, 'follow', '', '', '', NULL, '2019-05-03 15:13:49', '1'),
(39, 8, 2, 'friend_accept', '', 'MetalGuitar_1981', '', NULL, '2019-05-03 15:14:06', '1'),
(40, 8, 2, 'follow', '', '', '', NULL, '2019-05-03 15:14:06', '1'),
(41, 2, 1, 'profile_visit', '', '', '', NULL, '2019-06-12 15:54:00', '1'),
(42, 2, 4, 'like', 'post', '368', '', NULL, '2019-06-12 15:54:05', '1'),
(43, 4, 1, 'profile_visit', '', '', '', NULL, '2019-06-12 15:57:27', '1'),
(44, 2, 4, 'like', 'post', '94', '', NULL, '2019-07-03 20:26:51', '1'),
(45, 2, 4, 'like', 'post', '404', '', NULL, '2019-07-10 21:27:26', '1'),
(46, 9, 1, 'profile_visit', '', '', '', NULL, '2019-08-05 17:48:08', '1'),
(47, 9, 2, 'profile_visit', '', '', '', NULL, '2019-08-08 16:14:02', '1'),
(48, 2, 4, 'group_join', 'Class101', 'class101', '', NULL, '2019-08-14 14:16:41', '1'),
(49, 4, 2, 'group_accept', 'Class101', 'class101', '', NULL, '2019-08-14 16:24:32', '1'),
(50, 8, 2, 'profile_visit', '', '', '', NULL, '2019-09-05 19:36:04', '1'),
(51, 3, 8, 'friend_add', '', 'Yo81', '', NULL, '2019-09-05 20:14:50', '0'),
(52, 3, 8, 'follow', '', '', '', NULL, '2019-09-05 20:14:50', '0'),
(53, 1, 8, 'friend_add', '', 'Yo81', '', NULL, '2019-09-05 20:14:51', '1'),
(54, 1, 8, 'follow', '', '', '', NULL, '2019-09-05 20:14:51', '1'),
(55, 9, 4, 'profile_visit', '', '', '', NULL, '2019-09-09 19:22:22', '1'),
(56, 8, 4, 'friend_add', '', 'qrstad', '', NULL, '2019-09-09 19:22:29', '1'),
(57, 8, 4, 'follow', '', '', '', NULL, '2019-09-09 19:22:29', '1'),
(58, 9, 4, 'friend_add', '', 'qrstad', '', NULL, '2019-09-09 19:22:34', '1'),
(59, 9, 4, 'follow', '', '', '', NULL, '2019-09-09 19:22:34', '1'),
(60, 2, 4, 'group_join', 'Class101', 'class101', '', NULL, '2019-09-09 19:22:37', '1'),
(61, 8, 1, 'friend_accept', '', 'QRSAdmin', '', NULL, '2019-09-09 19:47:03', '1'),
(62, 8, 1, 'follow', '', '', '', NULL, '2019-09-09 19:47:03', '1'),
(63, 1, 9, 'friend_add', '', 'connectdemo', '', NULL, '2019-09-26 17:57:30', '1'),
(64, 1, 9, 'follow', '', '', '', NULL, '2019-09-26 17:57:30', '1'),
(65, 4, 9, 'friend_accept', '', 'connectdemo', '', NULL, '2019-09-26 17:58:30', '1'),
(66, 4, 9, 'follow', '', '', '', NULL, '2019-09-26 17:58:30', '1'),
(67, 2, 9, 'friend_add', '', 'connectdemo', '', NULL, '2019-09-26 20:00:10', '1'),
(69, 2, 9, 'friend_add', '', 'connectdemo', '', NULL, '2019-09-26 20:00:12', '1'),
(70, 2, 9, 'follow', '', '', '', NULL, '2019-09-26 20:00:12', '1'),
(71, 3, 9, 'friend_add', '', 'connectdemo', '', NULL, '2019-09-26 20:00:13', '0'),
(72, 3, 9, 'follow', '', '', '', NULL, '2019-09-26 20:00:13', '0'),
(73, 8, 9, 'friend_add', '', 'connectdemo', '', NULL, '2019-09-26 20:00:14', '1'),
(74, 8, 9, 'follow', '', '', '', NULL, '2019-09-26 20:00:14', '1'),
(75, 2, 9, 'group_join', 'Class101', 'class101', '', NULL, '2019-09-26 20:00:15', '1'),
(76, 4, 9, 'profile_visit', '', '', '', NULL, '2019-09-26 20:40:25', '1'),
(77, 9, 1, 'profile_visit', '', '', '', NULL, '2019-10-11 15:08:43', '0'),
(78, 9, 1, 'friend_accept', '', 'QRSAdmin', '', NULL, '2019-10-11 15:08:46', '0'),
(79, 9, 1, 'follow', '', '', '', NULL, '2019-10-11 15:08:46', '0'),
(80, 2, 1, 'profile_visit', '', '', '', NULL, '2019-10-14 19:19:02', '1'),
(81, 2, 8, 'profile_visit', '', '', '', NULL, '2019-10-18 17:34:55', '1'),
(82, 2, 8, 'like', 'post', '707', '', NULL, '2019-10-18 17:36:00', '1'),
(83, 2, 8, 'profile_visit', '', '', '', NULL, '2019-10-18 17:47:39', '1'),
(84, 2, 8, 'profile_visit', '', '', '', NULL, '2019-10-18 17:47:41', '1'),
(85, 2, 8, 'profile_visit', '', '', '', NULL, '2019-10-18 17:47:49', '1'),
(86, 8, 2, 'connect', '', '', '', 'ERASED', '2019-09-26 20:00:14', '1'),
(87, 2, 8, 'profile_visit', '', '', '', NULL, '2019-10-18 18:33:09', '1'),
(88, 2, 8, 'profile_visit', '', '', '', NULL, '2019-10-18 18:39:44', '1'),
(89, 2, 8, 'profile_visit', '', '', '', NULL, '2019-10-18 18:40:47', '1'),
(90, 2, 8, 'profile_visit', '', '', '', NULL, '2019-10-18 18:41:12', '1'),
(91, 2, 8, 'profile_visit', '', '', '', NULL, '2019-10-18 18:41:39', '1'),
(92, 8, 2, 'connect', '', '', '', 'Another Message', '2019-09-26 20:00:14', '1'),
(93, 8, 2, 'connect', '', '', '', 'Another Message 2', '2019-09-26 20:00:14', '1'),
(94, 8, 11, 'friend_add', '', 'VeryOmar', '', NULL, '2019-11-06 15:22:33', '1'),
(95, 8, 11, 'follow', '', '', '', NULL, '2019-11-06 15:22:33', '1'),
(96, 3, 11, 'friend_add', '', 'VeryOmar', '', NULL, '2019-11-06 15:22:37', '0'),
(97, 3, 11, 'follow', '', '', '', NULL, '2019-11-06 15:22:37', '0'),
(98, 4, 11, 'friend_add', '', 'VeryOmar', '', NULL, '2019-11-06 15:22:38', '0'),
(99, 4, 11, 'follow', '', '', '', NULL, '2019-11-06 15:22:38', '0'),
(100, 10, 11, 'friend_add', '', 'VeryOmar', '', NULL, '2019-11-06 15:22:38', '0'),
(101, 10, 11, 'follow', '', '', '', NULL, '2019-11-06 15:22:38', '0'),
(102, 9, 11, 'friend_add', '', 'VeryOmar', '', NULL, '2019-11-06 15:22:39', '0'),
(103, 9, 11, 'follow', '', '', '', NULL, '2019-11-06 15:22:39', '0'),
(104, 1, 11, 'profile_visit', '', '', '', NULL, '2019-11-06 20:20:49', '1'),
(105, 4, 11, 'profile_visit', '', '', '', NULL, '2019-11-06 20:21:02', '0'),
(106, 11, 1, 'profile_visit', '', '', '', NULL, '2019-11-07 13:44:51', '1'),
(107, 10, 1, 'profile_visit', '', '', '', NULL, '2019-11-07 13:45:14', '0'),
(108, 1, 11, 'profile_visit', '', '', '', NULL, '2019-11-07 14:21:24', '1'),
(109, 1, 11, 'friend_add', '', 'VeryOmar', '', NULL, '2019-11-07 14:21:30', '1'),
(110, 1, 11, 'follow', '', '', '', NULL, '2019-11-07 14:21:30', '1'),
(111, 11, 1, 'friend_accept', '', 'QRSAdmin', '', NULL, '2019-11-07 16:37:43', '1'),
(112, 11, 1, 'follow', '', '', '', NULL, '2019-11-07 16:37:43', '1'),
(113, 11, 8, 'friend_accept', '', 'Yo81', '', NULL, '2019-11-08 18:59:37', '1'),
(114, 11, 8, 'follow', '', '', '', NULL, '2019-11-08 18:59:37', '1'),
(115, 10, 8, 'friend_add', '', 'Yo81', '', NULL, '2019-11-08 18:59:42', '0'),
(116, 10, 8, 'follow', '', '', '', NULL, '2019-11-08 18:59:42', '0'),
(117, 2, 11, 'profile_visit', '', '', '', NULL, '2019-11-11 15:36:18', '1'),
(118, 12, 11, 'friend_add', '', 'VeryOmar', '', NULL, '2019-11-11 21:06:52', '1'),
(119, 12, 11, 'follow', '', '', '', NULL, '2019-11-11 21:06:52', '1'),
(120, 2, 11, 'friend_add', '', 'VeryOmar', '', NULL, '2019-11-14 14:03:54', '1'),
(121, 2, 11, 'follow', '', '', '', NULL, '2019-11-14 14:03:54', '1'),
(122, 4, 11, 'profile_visit', '', '', '', NULL, '2019-11-14 18:15:36', '0'),
(123, 12, 8, 'friend_add', '', 'Yo81', '', NULL, '2019-11-14 18:48:58', '0'),
(124, 12, 8, 'follow', '', '', '', NULL, '2019-11-14 18:48:58', '0'),
(125, 13, 11, 'friend_add', '', 'VeryOmar', '', NULL, '2019-11-14 22:18:32', '1'),
(126, 13, 11, 'follow', '', '', '', NULL, '2019-11-14 22:18:32', '1'),
(127, 11, 2, 'friend_accept', '', 'MetalGuitar_1981', '', NULL, '2019-11-21 16:23:25', '1'),
(128, 11, 2, 'follow', '', '', '', NULL, '2019-11-21 16:23:25', '1'),
(129, 9, 2, 'friend_accept', '', 'MetalGuitar_1981', '', NULL, '2019-11-21 16:23:27', '0'),
(130, 9, 2, 'follow', '', '', '', NULL, '2019-11-21 16:23:27', '0'),
(131, 10, 2, 'friend_add', '', 'MetalGuitar_1981', '', NULL, '2019-11-21 17:52:12', '0'),
(132, 10, 2, 'follow', '', '', '', NULL, '2019-11-21 17:52:12', '0'),
(133, 12, 2, 'friend_add', '', 'MetalGuitar_1981', '', NULL, '2019-11-21 17:52:13', '0'),
(134, 12, 2, 'follow', '', '', '', NULL, '2019-11-21 17:52:13', '0'),
(135, 13, 2, 'friend_add', '', 'MetalGuitar_1981', '', NULL, '2019-11-21 17:52:14', '1'),
(136, 13, 2, 'follow', '', '', '', NULL, '2019-11-21 17:52:14', '1'),
(137, 11, 4, 'friend_accept', '', 'qrstad', '', NULL, '2019-12-05 13:22:33', '1'),
(138, 11, 4, 'follow', '', '', '', NULL, '2019-12-05 13:22:33', '1'),
(139, 4, 8, 'friend_accept', '', 'Yo81', '', NULL, '2019-12-05 13:23:03', '0'),
(140, 4, 8, 'follow', '', '', '', NULL, '2019-12-05 13:23:03', '0'),
(141, 2, 4, 'friend_add', '', 'qrstad', '', NULL, '2019-12-05 13:26:50', '1'),
(142, 8, 15, 'friend_add', '', 'QRSConnector', '', NULL, '2019-12-05 15:32:25', '1'),
(143, 8, 15, 'follow', '', '', '', NULL, '2019-12-05 15:32:25', '1'),
(144, 2, 15, 'friend_add', '', 'QRSConnector', '', NULL, '2019-12-05 15:33:36', '1'),
(145, 2, 15, 'follow', '', '', '', NULL, '2019-12-05 15:33:36', '1'),
(146, 15, 2, 'friend_accept', '', 'MetalGuitar_1981', '', NULL, '2019-12-05 15:33:54', '0'),
(147, 15, 2, 'follow', '', '', '', NULL, '2019-12-05 15:33:54', '0'),
(148, 4, 2, 'friend_accept', '', 'MetalGuitar_1981', '', NULL, '2019-12-05 15:33:55', '0'),
(149, 4, 2, 'follow', '', '', '', NULL, '2019-12-05 15:33:55', '0'),
(150, 15, 8, 'friend_accept', '', 'Yo81', '', NULL, '2019-12-05 15:34:05', '0'),
(151, 15, 8, 'follow', '', '', '', NULL, '2019-12-05 15:34:05', '0'),
(152, 9, 8, 'friend_accept', '', 'Yo81', '', NULL, '2019-12-05 15:34:06', '0'),
(153, 9, 8, 'follow', '', '', '', NULL, '2019-12-05 15:34:06', '0'),
(154, 2, 13, 'friend_accept', '', 'VeryAndrew', '', NULL, '2019-12-18 19:29:43', '1'),
(155, 2, 13, 'follow', '', '', '', NULL, '2019-12-18 19:29:43', '1'),
(156, 11, 13, 'friend_accept', '', 'VeryAndrew', '', NULL, '2019-12-18 19:29:44', '0'),
(157, 11, 13, 'follow', '', '', '', NULL, '2019-12-18 19:29:44', '0'),
(158, 19, 2, 'friend_add', '', 'MetalGuitar_1981', '', NULL, '2019-12-18 22:05:30', '0'),
(159, 19, 2, 'follow', '', '', '', NULL, '2019-12-18 22:05:30', '0'),
(160, 20, 2, 'friend_add', '', 'MetalGuitar_1981', '', NULL, '2019-12-18 22:05:31', '1'),
(161, 20, 2, 'follow', '', '', '', NULL, '2019-12-18 22:05:31', '1'),
(162, 18, 2, 'friend_add', '', 'MetalGuitar_1981', '', NULL, '2019-12-18 22:05:31', '1'),
(163, 18, 2, 'follow', '', '', '', NULL, '2019-12-18 22:05:31', '1'),
(164, 20, 30, 'friend_add', '', 'dtp432msn', '', NULL, '2020-01-29 20:13:34', '1'),
(176, 28, 2, 'friend_add', '', 'MetalGuitar_1981', '', NULL, '2020-03-05 21:52:23', '0'),
(166, 30, 20, 'friend_accept', '', 'nammdemo3', '', NULL, '2020-01-29 20:15:28', '1'),
(167, 30, 20, 'follow', '', '', '', NULL, '2020-01-29 20:15:28', '1'),
(168, 30, 2, 'friend_add', '', 'MetalGuitar_1981', '', NULL, '2020-01-30 17:10:54', '1'),
(169, 30, 2, 'follow', '', '', '', NULL, '2020-01-30 17:10:54', '1'),
(170, 30, 32, 'friend_add', '', 'mikej', '', NULL, '2020-02-03 21:35:47', '1'),
(171, 30, 32, 'follow', '', '', '', NULL, '2020-02-03 21:35:47', '1'),
(172, 2, 30, 'friend_accept', '', 'dtp432msn', '', NULL, '2020-02-03 21:36:02', '1'),
(173, 2, 30, 'follow', '', '', '', NULL, '2020-02-03 21:36:02', '1'),
(174, 32, 30, 'friend_accept', '', 'dtp432msn', '', NULL, '2020-02-03 21:36:03', '1'),
(175, 32, 30, 'follow', '', '', '', NULL, '2020-02-03 21:36:03', '1'),
(177, 28, 2, 'follow', '', '', '', NULL, '2020-03-05 21:52:23', '0'),
(178, 2, 1, 'like', 'post', '935', '', NULL, '2020-03-06 15:38:42', '1'),
(179, 2, 1, 'comment', 'post', '935', 'comment_2', NULL, '2020-03-06 15:38:53', '1'),
(180, 31, 37, 'friend_add', '', 'rajeshk3chetucom', '', NULL, '2020-03-12 13:32:56', '0'),
(202, 38, 37, 'friend_add', '', 'rajeshk3chetucom', '', NULL, '2020-03-19 11:48:54', '1'),
(182, 21, 37, 'friend_add', '', 'rajeshk3chetucom', '', NULL, '2020-03-12 17:39:41', '0'),
(184, 21, 37, 'friend_add', '', 'rajeshk3chetucom', '', NULL, '2020-03-12 17:39:48', '0'),
(186, 25, 37, 'friend_add', '', 'rajeshk3chetucom', '', NULL, '2020-03-12 17:39:49', '0'),
(188, 28, 37, 'friend_add', '', 'rajeshk3chetucom', '', NULL, '2020-03-12 17:39:51', '0'),
(190, 3, 37, 'friend_add', '', 'rajeshk3chetucom', '', NULL, '2020-03-13 10:47:13', '0'),
(192, 3, 37, 'friend_add', '', 'rajeshk3chetucom', '', NULL, '2020-03-13 10:47:16', '0'),
(194, 3, 37, 'friend_add', '', 'rajeshk3chetucom', '', NULL, '2020-03-13 16:23:44', '0'),
(208, 38, 37, 'follow', '', '', '', NULL, '2020-03-19 15:45:21', '1'),
(196, 28, 37, 'friend_add', '', 'rajeshk3chetucom', '', NULL, '2020-03-13 16:23:51', '0'),
(198, 14, 37, 'friend_add', '', 'rajeshk3chetucom', '', NULL, '2020-03-13 16:25:23', '0'),
(200, 18, 37, 'friend_add', '', 'rajeshk3chetucom', '', NULL, '2020-03-13 16:25:25', '0'),
(204, 2, 37, 'group_join', 'Class101', 'class101', '', NULL, '2020-03-19 11:53:53', '0'),
(205, 37, 38, 'friend_accept', '', 'rajeshk3chetucom1', '', NULL, '2020-03-19 15:42:13', '1'),
(206, 37, 38, 'follow', '', '', '', NULL, '2020-03-19 15:42:13', '1'),
(209, 36, 37, 'friend_add', '', 'rajeshk3chetucom', '', NULL, '2020-03-21 07:18:31', '1'),
(210, 36, 37, 'follow', '', '', '', NULL, '2020-03-21 07:18:31', '1'),
(211, 37, 36, 'friend_accept', '', 'ajay', '', NULL, '2020-03-21 13:46:43', '1'),
(212, 37, 36, 'follow', '', '', '', NULL, '2020-03-21 13:46:43', '1'),
(213, 37, 36, 'event_invitation', 'dfgvbdfg', '5', '', NULL, '2020-03-21 13:47:07', '1');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `package_id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `period_num` int(10) UNSIGNED NOT NULL,
  `period` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `color` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `boost_posts_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `boost_posts` int(10) UNSIGNED NOT NULL,
  `boost_pages_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `boost_pages` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `packages_payments`
--

CREATE TABLE `packages_payments` (
  `payment_id` int(10) NOT NULL,
  `payment_date` datetime NOT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `package_price` varchar(32) COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(10) UNSIGNED NOT NULL,
  `page_admin` int(10) UNSIGNED NOT NULL,
  `page_category` int(10) UNSIGNED NOT NULL,
  `page_name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `page_picture` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `page_picture_id` int(10) UNSIGNED DEFAULT NULL,
  `page_cover` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `page_cover_id` int(10) UNSIGNED DEFAULT NULL,
  `page_cover_position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `page_album_pictures` int(10) UNSIGNED DEFAULT NULL,
  `page_album_covers` int(10) UNSIGNED DEFAULT NULL,
  `page_album_timeline` int(10) UNSIGNED DEFAULT NULL,
  `page_pinned_post` int(10) UNSIGNED DEFAULT NULL,
  `page_verified` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `page_boosted` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `page_boosted_by` int(10) UNSIGNED DEFAULT NULL,
  `page_company` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `page_phone` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `page_website` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `page_location` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `page_description` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `page_action_text` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `page_action_color` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `page_action_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `page_social_facebook` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `page_social_twitter` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `page_social_google` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `page_social_youtube` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `page_social_instagram` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `page_social_linkedin` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `page_social_vkontakte` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `page_likes` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `page_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `pages_admins`
--

CREATE TABLE `pages_admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `pages_categories`
--

CREATE TABLE `pages_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `pages_invites`
--

CREATE TABLE `pages_invites` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `from_user_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Table structure for table `pages_likes`
--

CREATE TABLE `pages_likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Table structure for table `points_payments`
--

CREATE TABLE `points_payments` (
  `payment_id` int(10) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `amount` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `method` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` enum('user','page') COLLATE utf8mb4_bin NOT NULL,
  `in_group` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `in_event` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `event_id` int(10) UNSIGNED DEFAULT NULL,
  `in_wall` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `wall_id` int(10) UNSIGNED DEFAULT NULL,
  `post_type` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `origin_id` int(10) UNSIGNED DEFAULT NULL,
  `time` datetime NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `privacy` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `text` longtext COLLATE utf8mb4_bin,
  `feeling_action` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `feeling_value` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `boosted` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `boosted_by` int(10) UNSIGNED DEFAULT NULL,
  `comments_disabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `likes` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `comments` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `shares` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `user_type`, `in_group`, `group_id`, `in_event`, `event_id`, `in_wall`, `wall_id`, `post_type`, `origin_id`, `time`, `location`, `privacy`, `text`, `feeling_action`, `feeling_value`, `boosted`, `boosted_by`, `comments_disabled`, `likes`, `comments`, `shares`) VALUES
(1, 1, 'user', '0', NULL, '0', NULL, '0', NULL, 'profile_picture', NULL, '2019-04-10 18:25:51', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', 0, 0, 0),
(2, 1, 'user', '0', NULL, '0', NULL, '0', NULL, 'profile_cover', NULL, '2019-04-10 18:29:53', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', 0, 0, 0),
(3, 3, 'user', '0', NULL, '0', NULL, '0', NULL, 'profile_picture', NULL, '2019-04-10 18:36:16', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', 0, 0, 0),
(4, 2, 'user', '0', NULL, '0', NULL, '0', NULL, 'profile_cover', NULL, '2019-04-10 18:50:27', NULL, 'me', NULL, NULL, NULL, '0', NULL, '0', 0, 0, 0),
(93, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-01 17:39:48', '', 'friends', 'Uploaded from QRSC0219000005', '', '', '0', NULL, '0', 0, 0, 0),
(94, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-01 18:05:51', '', 'friends', 'Uploaded from QRSC0219000005', '', '', '0', NULL, '0', 1, 0, 0),
(8, 4, 'user', '0', NULL, '0', NULL, '0', NULL, 'profile_picture', NULL, '2019-04-25 18:55:47', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', 0, 0, 0),
(162, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-20 18:29:55', '', 'me', 'Uploaded from QRSC0219000005 614 Notes Played Total Time: 00:01:44', '', '', '0', NULL, '0', 0, 0, 0),
(17, 2, 'user', '1', 1, '0', 0, '0', 0, 'audio', NULL, '2019-04-30 17:57:14', '', 'custom', '', '', '', '0', NULL, '0', 0, 0, 0),
(157, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-20 18:19:39', '', 'me', 'Uploaded from QRSC0219000005 1271 Notes Played Total Time: 00:04:34', '', '', '0', NULL, '0', 0, 0, 0),
(158, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-20 18:20:58', '', 'me', 'Uploaded from QRSC0219000005 840 Notes Played Total Time: 00:01:18', '', '', '0', NULL, '0', 0, 0, 0),
(159, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-20 18:23:05', '', 'me', 'Uploaded from QRSC0219000005 565 Notes Played Total Time: 00:02:04', '', '', '0', NULL, '0', 0, 0, 0),
(160, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-20 18:25:42', '', 'me', 'Uploaded from QRSC0219000005 553 Notes Played Total Time: 00:02:33', '', '', '0', NULL, '0', 0, 0, 0),
(161, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-20 18:28:09', '', 'me', 'Uploaded from QRSC0219000005 673 Notes Played Total Time: 00:02:22', '', '', '0', NULL, '0', 0, 0, 0),
(117, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-14 19:43:30', '', 'me', 'Uploaded from ', '', '', '0', NULL, '0', 0, 0, 0),
(118, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-16 17:42:08', '', 'me', 'Uploaded from QRSC0219000005 c Notes Played Total Time: c', '', '', '0', NULL, '0', 0, 0, 0),
(154, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-20 17:45:51', '', 'me', 'Uploaded from QRSC0219000005 75 Notes Played Total Time: 00:00:12', '', '', '0', NULL, '0', 0, 0, 0),
(152, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-20 17:44:03', '', 'me', 'Uploaded from QRSC0219000005 15 Notes Played Total Time: 00:00:07', '', '', '0', NULL, '0', 0, 0, 0),
(155, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-20 17:58:35', '', 'me', 'Uploaded from QRSC0219000005 3080 Notes Played Total Time: 00:04:41', '', '', '0', NULL, '0', 0, 0, 0),
(156, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-20 18:00:35', '', 'me', 'Uploaded from QRSC0219000005 2705 Notes Played Total Time: 00:01:58', '', '', '0', NULL, '0', 0, 0, 0),
(123, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-16 19:02:40', '', 'public', 'Uploaded from QRSC0219000005', '', '', '0', NULL, '0', 0, 0, 0),
(79, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-01 14:05:32', '', 'friends', 'Uploaded from QRSC0219000005', '', '', '0', NULL, '0', 0, 0, 0),
(129, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-20 13:39:31', '', 'me', 'Uploaded from QRSC0219000005 1886 Notes Played Total Time: 00:03:19.835', '', '', '0', NULL, '0', 0, 0, 0),
(95, 2, 'user', '0', NULL, '0', NULL, '0', NULL, 'profile_picture', NULL, '2019-05-01 18:33:51', NULL, 'me', NULL, NULL, NULL, '0', NULL, '0', 0, 0, 0),
(96, 2, 'user', '1', 1, '0', NULL, '0', NULL, 'group_picture', NULL, '2019-05-01 18:34:35', NULL, 'custom', NULL, NULL, NULL, '0', NULL, '0', 0, 0, 0),
(115, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-14 19:27:41', '', 'me', 'Uploaded from ', '', '', '0', NULL, '0', 0, 0, 0),
(116, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-14 19:33:20', '', 'me', 'Uploaded from ', '', '', '0', NULL, '0', 0, 0, 0),
(100, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-02 19:02:06', '', 'friends', '', '', '', '0', NULL, '0', 0, 0, 0),
(109, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-02 19:48:06', '', 'friends', 'Uploaded from QRSC0219000005 1886 Notes Played Total Time: 00:03:19.835', '', '', '0', NULL, '0', 1, 0, 0),
(112, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-02 20:27:04', '', 'friends', 'Uploaded from QRSC0219000005 1508 Notes Played Total Time: 00:06:09.808', '', '', '0', NULL, '0', 0, 0, 0),
(163, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-20 18:34:08', '', 'me', 'Uploaded from QRSC0219000005 766 Notes Played Total Time: 00:04:07', '', '', '0', NULL, '0', 0, 0, 0),
(164, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-20 18:34:50', '', 'me', 'Uploaded from QRSC0219000005 199 Notes Played Total Time: 00:00:41', '', '', '0', NULL, '0', 0, 0, 0),
(165, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-20 18:37:24', '', 'me', 'Uploaded from QRSC0219000005 452 Notes Played Total Time: 00:01:40', '', '', '0', NULL, '0', 0, 0, 0),
(166, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-20 18:38:04', '', 'me', 'Uploaded from QRSC0219000005 447 Notes Played Total Time: 00:00:36', '', '', '0', NULL, '0', 0, 0, 0),
(167, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-20 18:40:37', '', 'me', 'Uploaded from QRSC0219000005 455 Notes Played Total Time: 00:02:26', '', '', '0', NULL, '0', 0, 0, 0),
(168, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-20 18:42:22', '', 'me', 'Uploaded from QRSC0219000005 464 Notes Played Total Time: 00:01:43', '', '', '0', NULL, '0', 0, 0, 0),
(169, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-20 18:44:28', '', 'me', 'Uploaded from QRSC0219000005 474 Notes Played Total Time: 00:01:44', '', '', '0', NULL, '0', 0, 0, 0),
(153, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-20 17:44:49', '', 'me', 'Uploaded from QRSC0219000005 75 Notes Played Total Time: 00:00:11', '', '', '0', NULL, '0', 0, 0, 0),
(170, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-20 18:46:56', '', 'me', 'Uploaded from QRSC0219000005 596 Notes Played Total Time: 00:02:09', '', '', '0', NULL, '0', 0, 0, 0),
(171, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-20 18:47:32', '', 'me', 'Uploaded from QRSC0219000005 40 Notes Played Total Time: 00:00:10', '', '', '0', NULL, '0', 0, 0, 0),
(172, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-20 18:50:01', '', 'me', 'Uploaded from QRSC0219000005 60 Notes Played Total Time: 00:00:16', '', '', '0', NULL, '0', 0, 0, 0),
(173, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-20 18:50:44', '', 'me', 'Uploaded from QRSC0219000005 14 Notes Played Total Time: 00:00:04', '', '', '0', NULL, '0', 0, 0, 0),
(176, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-22 16:27:08', '', 'public', 'Uploaded from QRSC0219000005 29 Notes Played Total Time: 00:00:07', '', '', '0', NULL, '0', 0, 0, 0),
(177, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-22 20:58:18', '', 'me', 'Uploaded from QRSC0219000005 8 Notes Played Total Time: 00:00:02', '', '', '0', NULL, '0', 0, 0, 0),
(178, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 13:09:58', '', 'me', 'Uploaded from QRSC0219000005 30 Notes Played Total Time: 00:00:08', '', '', '0', NULL, '0', 0, 0, 0),
(179, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 13:31:24', '', 'me', 'Uploaded from QRSC0219000005 20 Notes Played Total Time: 00:00:06', '', '', '0', NULL, '0', 0, 0, 0),
(180, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 13:34:20', '', 'me', 'Uploaded from QRSC0219000005 33 Notes Played Total Time: 00:00:09', '', '', '0', NULL, '0', 0, 0, 0),
(181, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 13:35:23', '', 'me', 'Uploaded from QRSC0219000005 33 Notes Played Total Time: 00:00:08', '', '', '0', NULL, '0', 0, 0, 0),
(182, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 13:39:11', '', 'me', 'Uploaded from QRSC0219000005 51 Notes Played Total Time: 00:00:13', '', '', '0', NULL, '0', 0, 0, 0),
(183, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 13:39:30', '', 'me', 'Uploaded from QRSC0219000005 10 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(184, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 13:46:01', '', 'me', 'Uploaded from QRSC0219000005 12 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(185, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 14:26:35', '', 'me', 'Uploaded from QRSC0219000005 4 Notes Played Total Time: 00:00:00', '', '', '0', NULL, '0', 0, 0, 0),
(186, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 14:28:20', '', 'me', 'Uploaded from QRSC0219000005 3 Notes Played Total Time: 00:00:00', '', '', '0', NULL, '0', 0, 0, 0),
(187, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 14:29:43', '', 'me', 'Uploaded from QRSC0219000005 3 Notes Played Total Time: 00:00:00', '', '', '0', NULL, '0', 0, 0, 0),
(188, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 14:30:53', '', 'me', 'Uploaded from QRSC0219000005 3 Notes Played Total Time: 00:00:00', '', '', '0', NULL, '0', 0, 0, 0),
(189, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 14:31:04', '', 'me', 'Uploaded from QRSC0219000005 3 Notes Played Total Time: 00:00:00', '', '', '0', NULL, '0', 0, 0, 0),
(190, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 14:35:59', '', 'me', 'Uploaded from QRSC0219000005 6 Notes Played Total Time: 00:00:00', '', '', '0', NULL, '0', 0, 0, 0),
(191, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 14:36:39', '', 'me', 'Uploaded from QRSC0219000005 6 Notes Played Total Time: 00:00:00', '', '', '0', NULL, '0', 0, 0, 0),
(192, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 14:39:44', '', 'me', 'Uploaded from QRSC0219000005 16 Notes Played Total Time: 00:00:04', '', '', '0', NULL, '0', 0, 0, 0),
(193, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 14:39:48', '', 'me', 'Uploaded from QRSC0219000005 6 Notes Played Total Time: 00:00:01', '', '', '0', NULL, '0', 0, 0, 0),
(194, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 14:42:43', '', 'me', 'Uploaded from QRSC0219000005 9 Notes Played Total Time: 00:00:02', '', '', '0', NULL, '0', 0, 0, 0),
(195, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 14:44:15', '', 'me', 'Uploaded from QRSC0219000005 3 Notes Played Total Time: 00:00:00', '', '', '0', NULL, '0', 0, 0, 0),
(196, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 14:46:52', '', 'me', 'Uploaded from QRSC0219000005 4 Notes Played Total Time: 00:00:00', '', '', '0', NULL, '0', 0, 0, 0),
(197, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 14:47:15', '', 'me', 'Uploaded from QRSC0219000005 29 Notes Played Total Time: 00:00:07', '', '', '0', NULL, '0', 0, 0, 0),
(198, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 15:08:48', '', 'me', 'Uploaded from QRSC0219000005 662 Notes Played Total Time: 00:02:29', '', '', '0', NULL, '0', 0, 0, 0),
(199, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 15:10:18', '', 'me', 'Uploaded from QRSC0219000005 646 Notes Played Total Time: 00:01:25', '', '', '0', NULL, '0', 0, 0, 0),
(200, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 15:14:31', '', 'me', 'Uploaded from QRSC0219000005 1429 Notes Played Total Time: 00:04:07', '', '', '0', NULL, '0', 0, 0, 0),
(201, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 15:16:12', '', 'me', 'Uploaded from QRSC0219000005 1210 Notes Played Total Time: 00:01:39', '', '', '0', NULL, '0', 0, 0, 0),
(202, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 15:19:42', '', 'me', 'Uploaded from QRSC0219000005 1793 Notes Played Total Time: 00:03:20', '', '', '0', NULL, '0', 0, 0, 0),
(203, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 15:22:02', '', 'me', 'Uploaded from QRSC0219000005 843 Notes Played Total Time: 00:02:21', '', '', '0', NULL, '0', 0, 0, 0),
(204, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 15:24:11', '', 'me', 'Uploaded from QRSC0219000005 586 Notes Played Total Time: 00:01:48', '', '', '0', NULL, '0', 0, 0, 0),
(205, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 15:24:46', '', 'me', 'Uploaded from QRSC0219000005 24 Notes Played Total Time: 00:00:11', '', '', '0', NULL, '0', 0, 0, 0),
(206, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 15:25:52', '', 'me', 'Uploaded from QRSC0219000005 56 Notes Played Total Time: 00:00:21', '', '', '0', NULL, '0', 0, 0, 0),
(207, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 15:29:05', '', 'me', 'Uploaded from QRSC0219000005 540 Notes Played Total Time: 00:01:39', '', '', '0', NULL, '0', 0, 0, 0),
(208, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 18:50:43', '', 'me', 'Uploaded from QRSC0219000005 3054 Notes Played Total Time: 00:04:10', '', '', '0', NULL, '0', 0, 0, 0),
(209, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 18:52:01', '', 'me', 'Uploaded from QRSC0219000005 924 Notes Played Total Time: 00:01:26', '', '', '0', NULL, '0', 0, 0, 0),
(210, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 18:52:56', '', 'me', 'Uploaded from QRSC0219000005 1766 Notes Played Total Time: 00:00:47', '', '', '0', NULL, '0', 0, 0, 0),
(211, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-23 19:16:39', '', 'me', 'Uploaded from QRSC0219000005 9 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(212, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-05-26 15:18:10', '', 'me', 'Uploaded from QRSC0219000005 323 Notes Played Total Time: 00:00:58', '', '', '0', NULL, '0', 0, 0, 0),
(213, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-04 15:30:54', '', 'me', 'Uploaded from  8 Notes Played Total Time: 00:00:03.999', '', '', '0', NULL, '0', 0, 0, 0),
(214, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-04 16:05:09', '', 'me', 'Uploaded from  1103 Notes Played Total Time: 00:01:12', '', '', '0', NULL, '0', 0, 0, 0),
(222, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-04 17:50:39', '', 'me', 'Uploaded from  110 Notes Played Total Time: 00:00:04.75', '', '', '0', NULL, '0', 0, 0, 0),
(219, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-04 17:47:10', '', 'me', 'Uploaded from  75 Notes Played Total Time: 00:00:02', '', '', '0', NULL, '0', 0, 0, 0),
(218, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-04 17:10:18', '', 'me', 'Uploaded from  38 Notes Played Total Time: 00:00:07.539', '', '', '0', NULL, '0', 0, 0, 0),
(221, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-04 17:48:15', '', 'me', 'Uploaded from QRSC0219000005 110 Notes Played Total Time: 00:00:04', '', '', '0', NULL, '0', 0, 0, 0),
(236, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-04 19:55:10', '', 'me', 'Uploaded from QRSC0219000005 373 Notes Played Total Time: 00:00:12', '', '', '0', NULL, '0', 0, 0, 0),
(224, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-04 17:55:41', '', 'me', 'Uploaded from QRSC0219000005 2872 Notes Played Total Time: 00:00:58', '', '', '0', NULL, '0', 0, 0, 0),
(237, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 12:40:08', '', 'me', 'Uploaded from QRSC0219000005 440 Notes Played Total Time: 00:00:14', '', '', '0', NULL, '0', 0, 0, 0),
(238, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 12:50:54', '', 'me', 'Uploaded from QRSC0219000005 155 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(239, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 12:53:47', '', 'me', 'Uploaded from QRSC0219000005 2371 Notes Played Total Time: 00:02:15', '', '', '0', NULL, '0', 0, 0, 0),
(240, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 12:55:01', '', 'me', 'Uploaded from QRSC0219000005 890 Notes Played Total Time: 00:00:51', '', '', '0', NULL, '0', 0, 0, 0),
(241, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 12:59:12', '', 'me', 'Uploaded from QRSC0219000005 2995 Notes Played Total Time: 00:02:48', '', '', '0', NULL, '0', 0, 0, 0),
(242, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 13:02:17', '', 'me', 'Uploaded from QRSC0219000005 1678 Notes Played Total Time: 00:03:12', '', '', '0', NULL, '0', 0, 0, 0),
(243, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 13:06:21', '', 'me', 'Uploaded from QRSC0219000005 2352 Notes Played Total Time: 00:03:42', '', '', '0', NULL, '0', 0, 0, 0),
(244, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 13:12:21', '', 'me', 'Uploaded from QRSC0219000005 2910 Notes Played Total Time: 00:06:03', '', '', '0', NULL, '0', 0, 0, 0),
(245, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 13:15:37', '', 'me', 'Uploaded from QRSC0219000005 1320 Notes Played Total Time: 00:02:56', '', '', '0', NULL, '0', 0, 0, 0),
(246, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 13:25:29', '', 'me', 'Uploaded from QRSC0219000005 3686 Notes Played Total Time: 00:03:31', '', '', '0', NULL, '0', 0, 0, 0),
(247, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 13:25:44', '', 'me', 'Uploaded from QRSC0219000005 887 Notes Played Total Time: 00:00:46', '', '', '0', NULL, '0', 0, 0, 0),
(248, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 13:28:11', '', 'me', 'Uploaded from QRSC0219000005 2467 Notes Played Total Time: 00:02:01', '', '', '0', NULL, '0', 0, 0, 0),
(249, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 13:30:01', '', 'me', 'Uploaded from QRSC0219000005 1786 Notes Played Total Time: 00:02:04', '', '', '0', NULL, '0', 0, 0, 0),
(250, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 13:32:25', '', 'me', 'Uploaded from QRSC0219000005 2023 Notes Played Total Time: 00:02:08', '', '', '0', NULL, '0', 0, 0, 0),
(251, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 15:34:49', '', 'me', 'Uploaded from QRSC0219000005 2644 Notes Played Total Time: 00:04:09', '', '', '0', NULL, '0', 0, 0, 0),
(252, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 15:39:03', '', 'me', 'Uploaded from QRSC0219000005 1779 Notes Played Total Time: 00:04:12', '', '', '0', NULL, '0', 0, 0, 0),
(253, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 15:41:42', '', 'me', 'Uploaded from QRSC0219000005 674 Notes Played Total Time: 00:02:30', '', '', '0', NULL, '0', 0, 0, 0),
(254, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 15:52:35', '', 'me', 'Uploaded from QRSC0219000005 1631 Notes Played Total Time: 00:04:31', '', '', '0', NULL, '0', 0, 0, 0),
(255, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 15:55:52', '', 'me', 'Uploaded from QRSC0219000005 1900 Notes Played Total Time: 00:03:10', '', '', '0', NULL, '0', 0, 0, 0),
(256, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 16:00:02', '', 'me', 'Uploaded from QRSC0219000005 1778 Notes Played Total Time: 00:03:53', '', '', '0', NULL, '0', 0, 0, 0),
(257, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 16:00:50', '', 'me', 'Uploaded from QRSC0219000005 232 Notes Played Total Time: 00:00:50', '', '', '0', NULL, '0', 0, 0, 0),
(258, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 16:02:39', '', 'me', 'Uploaded from QRSC0219000005 529 Notes Played Total Time: 00:01:40', '', '', '0', NULL, '0', 0, 0, 0),
(259, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 16:45:19', '', 'me', 'Uploaded from QRSC0219000005 174 Notes Played Total Time: 00:00:43', '', '', '0', NULL, '0', 0, 0, 0),
(260, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 17:09:44', '', 'friends', 'Uploaded from QRSC0219000005 1770 Notes Played Total Time: 00:04:51', '', '', '0', NULL, '0', 0, 0, 0),
(261, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 17:15:21', '', 'friends', 'Uploaded from QRSC0219000005 2883 Notes Played Total Time: 00:05:21', '', '', '0', NULL, '0', 0, 0, 0),
(262, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 17:18:35', '', 'me', 'Uploaded from QRSC0219000005 1219 Notes Played Total Time: 00:03:09', '', '', '0', NULL, '0', 0, 0, 0),
(263, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-05 17:20:32', '', 'me', 'Uploaded from QRSC0219000005 886 Notes Played Total Time: 00:01:48', '', '', '0', NULL, '0', 0, 0, 0),
(264, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-06 16:15:38', '', 'me', 'Uploaded from QRSC0219000005 263 Notes Played Total Time: 00:00:40', '', '', '0', NULL, '0', 0, 0, 0),
(265, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-06 16:18:42', '', 'me', 'Uploaded from QRSC0219000005 1006 Notes Played Total Time: 00:01:57', '', '', '0', NULL, '0', 0, 0, 0),
(266, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-06 16:18:46', '', 'me', 'Uploaded from QRSC0219000005 77 Notes Played Total Time: 00:00:06', '', '', '0', NULL, '0', 0, 0, 0),
(267, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-06 16:19:49', '', 'me', 'Uploaded from QRSC0219000005 394 Notes Played Total Time: 00:00:56', '', '', '0', NULL, '0', 0, 0, 0),
(268, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-06 16:23:58', '', 'me', 'Uploaded from QRSC0219000005 2056 Notes Played Total Time: 00:03:17', '', '', '0', NULL, '0', 0, 0, 0),
(269, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-06 16:28:27', '', 'me', 'Uploaded from QRSC0219000005 2644 Notes Played Total Time: 00:04:09', '', '', '0', NULL, '0', 0, 0, 0),
(270, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-06 16:32:35', '', 'me', 'Uploaded from QRSC0219000005 1779 Notes Played Total Time: 00:04:12', '', '', '0', NULL, '0', 0, 0, 0),
(271, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-06 16:37:04', '', 'me', 'Uploaded from QRSC0219000005 1396 Notes Played Total Time: 00:04:23', '', '', '0', NULL, '0', 0, 0, 0),
(272, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-06 16:41:45', '', 'me', 'Uploaded from QRSC0219000005 1631 Notes Played Total Time: 00:04:32', '', '', '0', NULL, '0', 0, 0, 0),
(273, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-06 16:44:57', '', 'me', 'Uploaded from QRSC0219000005 1900 Notes Played Total Time: 00:03:10', '', '', '0', NULL, '0', 0, 0, 0),
(274, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-06 16:49:07', '', 'me', 'Uploaded from QRSC0219000005 1778 Notes Played Total Time: 00:03:53', '', '', '0', NULL, '0', 0, 0, 0),
(275, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-06 16:54:00', '', 'me', 'Uploaded from QRSC0219000005 1770 Notes Played Total Time: 00:04:51', '', '', '0', NULL, '0', 0, 0, 0),
(276, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-06 16:59:36', '', 'me', 'Uploaded from QRSC0219000005 2883 Notes Played Total Time: 00:05:21', '', '', '0', NULL, '0', 0, 0, 0),
(277, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-06 17:02:52', '', 'me', 'Uploaded from QRSC0219000005 1219 Notes Played Total Time: 00:03:09', '', '', '0', NULL, '0', 0, 0, 0),
(278, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-06 17:06:12', '', 'me', 'Uploaded from QRSC0219000005 1960 Notes Played Total Time: 00:03:11', '', '', '0', NULL, '0', 0, 0, 0),
(279, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-06 17:26:42', '', 'friends', 'Uploaded from QRSC0219000005 2454 Notes Played Total Time: 00:03:40', '', '', '0', NULL, '0', 0, 0, 0),
(280, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-06 17:29:13', '', 'me', 'Uploaded from QRSC0219000005 645 Notes Played Total Time: 00:02:19', '', '', '0', NULL, '0', 0, 0, 0),
(281, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-06 17:29:52', '', 'me', 'Uploaded from QRSC0219000005 99 Notes Played Total Time: 00:00:28', '', '', '0', NULL, '0', 0, 0, 0),
(282, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-06 18:20:01', '', 'me', 'Uploaded from QRSC0219000005 615 Notes Played Total Time: 00:00:40', '', '', '0', NULL, '0', 0, 0, 0),
(283, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-06 18:20:06', '', 'me', 'Uploaded from QRSC0219000005 13 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(284, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-06 18:20:13', '', 'me', 'Uploaded from QRSC0219000005 8 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(285, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-06 18:20:28', '', 'me', 'Uploaded from QRSC0219000005 19 Notes Played Total Time: 00:00:11', '', '', '0', NULL, '0', 0, 0, 0),
(286, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-06 18:20:35', '', 'me', 'Uploaded from QRSC0219000005 26 Notes Played Total Time: 00:00:04', '', '', '0', NULL, '0', 0, 0, 0),
(287, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 13:09:07', '', 'me', 'Uploaded from QRSC0219000005 20 Notes Played Total Time: 00:00:04', '', '', '0', NULL, '0', 0, 0, 0),
(288, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 13:09:17', '', 'me', 'Uploaded from QRSC0219000005 58 Notes Played Total Time: 00:00:08', '', '', '0', NULL, '0', 0, 0, 0),
(289, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 13:09:22', '', 'me', 'Uploaded from QRSC0219000005 7 Notes Played Total Time: 00:00:01', '', '', '0', NULL, '0', 0, 0, 0),
(290, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 13:09:45', '', 'me', 'Uploaded from QRSC0219000005 96 Notes Played Total Time: 00:00:22', '', '', '0', NULL, '0', 0, 0, 0),
(291, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 13:11:31', '', 'me', 'Uploaded from QRSC0219000005 14 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(292, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 13:11:43', '', 'me', 'Uploaded from QRSC0219000005 93 Notes Played Total Time: 00:00:07', '', '', '0', NULL, '0', 0, 0, 0),
(293, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 13:26:11', '', 'me', 'Uploaded from QRSC0219000005 77 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(294, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 13:49:49', '', 'me', 'Uploaded from QRSC0219000005 1487 Notes Played Total Time: 00:02:55', '', '', '0', NULL, '0', 0, 0, 0),
(295, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 13:52:49', '', 'me', 'Uploaded from QRSC0219000005 850 Notes Played Total Time: 00:02:46', '', '', '0', NULL, '0', 0, 0, 0),
(296, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 13:57:00', '', 'me', 'Uploaded from QRSC0219000005 1007 Notes Played Total Time: 00:03:40', '', '', '0', NULL, '0', 0, 0, 0),
(297, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 14:00:49', '', 'me', 'Uploaded from QRSC0219000005 1525 Notes Played Total Time: 00:03:40', '', '', '0', NULL, '0', 0, 0, 0),
(298, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 14:05:17', '', 'me', 'Uploaded from QRSC0219000005 2308 Notes Played Total Time: 00:03:27', '', '', '0', NULL, '0', 0, 0, 0),
(299, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 14:09:10', '', 'me', 'Uploaded from QRSC0219000005 932 Notes Played Total Time: 00:03:49', '', '', '0', NULL, '0', 0, 0, 0),
(300, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 14:14:20', '', 'me', 'Uploaded from QRSC0219000005 1514 Notes Played Total Time: 00:04:56', '', '', '0', NULL, '0', 0, 0, 0),
(301, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 14:17:36', '', 'me', 'Uploaded from QRSC0219000005 2414 Notes Played Total Time: 00:03:07', '', '', '0', NULL, '0', 0, 0, 0),
(302, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 14:21:26', '', 'me', 'Uploaded from QRSC0219000005 1423 Notes Played Total Time: 00:03:35', '', '', '0', NULL, '0', 0, 0, 0),
(303, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 14:25:08', '', 'me', 'Uploaded from QRSC0219000005 922 Notes Played Total Time: 00:03:23', '', '', '0', NULL, '0', 0, 0, 0),
(304, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 14:28:35', '', 'me', 'Uploaded from QRSC0219000005 856 Notes Played Total Time: 00:03:17', '', '', '0', NULL, '0', 0, 0, 0),
(305, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 14:32:05', '', 'me', 'Uploaded from QRSC0219000005 1531 Notes Played Total Time: 00:03:04', '', '', '0', NULL, '0', 0, 0, 0),
(306, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 14:34:08', '', 'me', 'Uploaded from QRSC0219000005 16 Notes Played Total Time: 00:00:11', '', '', '0', NULL, '0', 0, 0, 0),
(307, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 14:36:03', '', 'me', 'Uploaded from QRSC0219000005 790 Notes Played Total Time: 00:01:51', '', '', '0', NULL, '0', 0, 0, 0),
(308, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 14:36:22', '', 'me', 'Uploaded from QRSC0219000005 31 Notes Played Total Time: 00:00:17', '', '', '0', NULL, '0', 0, 0, 0),
(309, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 14:36:34', '', 'me', 'Uploaded from QRSC0219000005 15 Notes Played Total Time: 00:00:08', '', '', '0', NULL, '0', 0, 0, 0),
(310, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 14:37:00', '', 'me', 'Uploaded from QRSC0219000005 6 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(311, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 14:42:33', '', 'me', 'Uploaded from QRSC0219000005 4 Notes Played Total Time: 00:00:01', '', '', '0', NULL, '0', 0, 0, 0),
(312, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 14:45:36', '', 'me', 'Uploaded from QRSC0219000005 1253 Notes Played Total Time: 00:02:58', '', '', '0', NULL, '0', 0, 0, 0),
(313, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 14:45:41', '', 'me', 'Uploaded from QRSC0219000005 8 Notes Played Total Time: 00:00:04', '', '', '0', NULL, '0', 0, 0, 0),
(314, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 14:47:44', '', 'me', 'Uploaded from QRSC0219000005 21 Notes Played Total Time: 00:00:16', '', '', '0', NULL, '0', 0, 0, 0),
(315, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 14:51:59', '', 'me', 'Uploaded from QRSC0219000005 1299 Notes Played Total Time: 00:03:09', '', '', '0', NULL, '0', 0, 0, 0),
(316, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 14:52:20', '', 'me', 'Uploaded from QRSC0219000005 36 Notes Played Total Time: 00:00:14', '', '', '0', NULL, '0', 0, 0, 0),
(317, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 14:56:23', '', 'me', 'Uploaded from QRSC0219000005 1355 Notes Played Total Time: 00:03:55', '', '', '0', NULL, '0', 0, 0, 0),
(318, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 14:57:24', '', 'me', 'Uploaded from QRSC0219000005 6 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(319, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 15:32:33', '', 'me', 'Uploaded from QRSC0219000005 57 Notes Played Total Time: 00:00:18', '', '', '0', NULL, '0', 0, 0, 0),
(320, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 15:33:41', '', 'me', 'Uploaded from QRSC0219000005 151 Notes Played Total Time: 00:01:02', '', '', '0', NULL, '0', 0, 0, 0),
(321, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 15:34:18', '', 'me', 'Uploaded from QRSC0219000005 102 Notes Played Total Time: 00:00:32', '', '', '0', NULL, '0', 0, 0, 0),
(322, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 15:34:35', '', 'me', 'Uploaded from QRSC0219000005 72 Notes Played Total Time: 00:00:20', '', '', '0', NULL, '0', 0, 0, 0),
(323, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 15:35:04', '', 'me', 'Uploaded from QRSC0219000005 66 Notes Played Total Time: 00:00:28', '', '', '0', NULL, '0', 0, 0, 0),
(324, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 15:35:21', '', 'me', 'Uploaded from QRSC0219000005 25 Notes Played Total Time: 00:00:13', '', '', '0', NULL, '0', 0, 0, 0),
(325, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 15:35:33', '', 'me', 'Uploaded from QRSC0219000005 27 Notes Played Total Time: 00:00:07', '', '', '0', NULL, '0', 0, 0, 0),
(326, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 15:35:53', '', 'me', 'Uploaded from QRSC0219000005 45 Notes Played Total Time: 00:00:21', '', '', '0', NULL, '0', 0, 0, 0),
(327, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 15:45:04', '', 'me', 'Uploaded from QRSC0219000005 699 Notes Played Total Time: 00:02:08', '', '', '0', NULL, '0', 0, 0, 0),
(328, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 16:46:32', '', 'me', 'Uploaded from QRSC0219000005 8 Notes Played Total Time: 00:00:01', '', '', '0', NULL, '0', 0, 0, 0),
(329, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 16:49:07', '', 'me', 'Uploaded from QRSC0219000005 694 Notes Played Total Time: 00:02:26', '', '', '0', NULL, '0', 0, 0, 0),
(330, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 16:50:04', '', 'me', 'Uploaded from QRSC0219000005 239 Notes Played Total Time: 00:01:03', '', '', '0', NULL, '0', 0, 0, 0),
(331, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 16:50:29', '', 'me', 'Uploaded from QRSC0219000005 42 Notes Played Total Time: 00:00:21', '', '', '0', NULL, '0', 0, 0, 0),
(332, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 16:52:58', '', 'me', 'Uploaded from QRSC0219000005 584 Notes Played Total Time: 00:02:19', '', '', '0', NULL, '0', 0, 0, 0),
(333, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 16:54:03', '', 'me', 'Uploaded from QRSC0219000005 202 Notes Played Total Time: 00:01:08', '', '', '0', NULL, '0', 0, 0, 0),
(334, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 16:54:16', '', 'me', 'Uploaded from QRSC0219000005 23 Notes Played Total Time: 00:00:09', '', '', '0', NULL, '0', 0, 0, 0),
(335, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 16:54:20', '', 'me', 'Uploaded from QRSC0219000005 14 Notes Played Total Time: 00:00:04', '', '', '0', NULL, '0', 0, 0, 0),
(336, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 16:54:29', '', 'me', 'Uploaded from QRSC0219000005 8 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(337, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 16:54:37', '', 'me', 'Uploaded from QRSC0219000005 21 Notes Played Total Time: 00:00:06', '', '', '0', NULL, '0', 0, 0, 0),
(338, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 16:57:28', '', 'me', 'Uploaded from QRSC0219000005 383 Notes Played Total Time: 00:01:04', '', '', '0', NULL, '0', 0, 0, 0),
(339, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 16:57:37', '', 'me', 'Uploaded from QRSC0219000005 34 Notes Played Total Time: 00:00:10', '', '', '0', NULL, '0', 0, 0, 0),
(340, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 16:58:47', '', 'me', 'Uploaded from QRSC0219000005 170 Notes Played Total Time: 00:00:56', '', '', '0', NULL, '0', 0, 0, 0),
(341, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 16:58:57', '', 'me', 'Uploaded from QRSC0219000005 45 Notes Played Total Time: 00:00:13', '', '', '0', NULL, '0', 0, 0, 0),
(342, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 16:59:10', '', 'me', 'Uploaded from QRSC0219000005 25 Notes Played Total Time: 00:00:06', '', '', '0', NULL, '0', 0, 0, 0),
(343, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 17:00:01', '', 'me', 'Uploaded from QRSC0219000005 25 Notes Played Total Time: 00:00:06', '', '', '0', NULL, '0', 0, 0, 0),
(344, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 17:01:06', '', 'me', 'Uploaded from QRSC0219000005 180 Notes Played Total Time: 00:01:01', '', '', '0', NULL, '0', 0, 0, 0),
(345, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 17:01:19', '', 'me', 'Uploaded from QRSC0219000005 11 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(346, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 17:01:36', '', 'me', 'Uploaded from QRSC0219000005 45 Notes Played Total Time: 00:00:13', '', '', '0', NULL, '0', 0, 0, 0),
(347, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 17:04:09', '', 'me', 'Uploaded from QRSC0219000005 930 Notes Played Total Time: 00:02:31', '', '', '0', NULL, '0', 0, 0, 0),
(348, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 17:08:05', '', 'me', 'Uploaded from QRSC0219000005 273 Notes Played Total Time: 00:00:49', '', '', '0', NULL, '0', 0, 0, 0),
(349, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 17:08:40', '', 'me', 'Uploaded from QRSC0219000005 133 Notes Played Total Time: 00:00:36', '', '', '0', NULL, '0', 0, 0, 0),
(350, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 17:08:58', '', 'me', 'Uploaded from QRSC0219000005 4 Notes Played Total Time: 00:00:02', '', '', '0', NULL, '0', 0, 0, 0),
(351, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 17:09:02', '', 'me', 'Uploaded from QRSC0219000005 4 Notes Played Total Time: 00:00:01', '', '', '0', NULL, '0', 0, 0, 0),
(352, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 17:09:14', '', 'me', 'Uploaded from QRSC0219000005 17 Notes Played Total Time: 00:00:09', '', '', '0', NULL, '0', 0, 0, 0),
(353, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 17:18:31', '', 'me', 'Uploaded from QRSC0219000005 12 Notes Played Total Time: 00:00:01', '', '', '0', NULL, '0', 0, 0, 0),
(354, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 17:21:23', '', 'me', 'Uploaded from QRSC0219000005 83 Notes Played Total Time: 00:00:42', '', '', '0', NULL, '0', 0, 0, 0),
(355, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 17:21:46', '', 'me', 'Uploaded from QRSC0219000005 45 Notes Played Total Time: 00:00:13', '', '', '0', NULL, '0', 0, 0, 0),
(356, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 17:21:58', '', 'me', 'Uploaded from QRSC0219000005 4 Notes Played Total Time: 00:00:02', '', '', '0', NULL, '0', 0, 0, 0),
(357, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 17:22:02', '', 'me', 'Uploaded from QRSC0219000005 4 Notes Played Total Time: 00:00:01', '', '', '0', NULL, '0', 0, 0, 0),
(358, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 17:22:58', '', 'me', 'Uploaded from QRSC0219000005 4 Notes Played Total Time: 00:00:01', '', '', '0', NULL, '0', 0, 0, 0),
(359, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 17:23:14', '', 'me', 'Uploaded from QRSC0219000005 25 Notes Played Total Time: 00:00:14', '', '', '0', NULL, '0', 0, 0, 0),
(360, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 17:23:31', '', 'me', 'Uploaded from QRSC0219000005 38 Notes Played Total Time: 00:00:13', '', '', '0', NULL, '0', 0, 0, 0),
(361, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 17:24:07', '', 'me', 'Uploaded from QRSC0219000005 113 Notes Played Total Time: 00:00:36', '', '', '0', NULL, '0', 0, 0, 0),
(362, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 17:24:17', '', 'me', 'Uploaded from QRSC0219000005 15 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(363, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 17:27:09', '', 'me', 'Uploaded from QRSC0219000005 189 Notes Played Total Time: 00:01:14', '', '', '0', NULL, '0', 0, 0, 0),
(364, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 17:27:15', '', 'me', 'Uploaded from QRSC0219000005 11 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(365, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 17:27:37', '', 'me', 'Uploaded from QRSC0219000005 45 Notes Played Total Time: 00:00:19', '', '', '0', NULL, '0', 0, 0, 0),
(366, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 17:27:43', '', 'me', 'Uploaded from QRSC0219000005 6 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(367, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-07 17:28:22', '', 'me', 'Uploaded from QRSC0219000005 91 Notes Played Total Time: 00:00:38', '', '', '0', NULL, '0', 0, 0, 0),
(368, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-09 15:18:11', '', 'public', 'Uploaded from QRSC0219000005 911 Notes Played Total Time: 00:00:59', '', '', '0', NULL, '0', 2, 0, 0),
(369, 4, 'user', '0', NULL, '0', NULL, '0', NULL, 'profile_cover', NULL, '2019-06-12 23:57:20', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', 0, 0, 0),
(370, 4, 'user', '0', NULL, '1', 1, '0', NULL, 'event_cover', NULL, '2019-06-13 15:25:53', NULL, 'custom', NULL, NULL, NULL, '0', NULL, '0', 0, 0, 0),
(372, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-18 19:49:23', '', 'me', 'Uploaded from ', '', '', '0', NULL, '0', 0, 0, 0),
(373, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-18 20:35:54', '', 'friends', 'Uploaded from  80 Notes Played Total Time: 00:01:20.250', '', '', '0', NULL, '0', 0, 0, 0),
(374, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-18 20:52:30', '', 'me', 'Uploaded from  159 Notes Played Total Time: 00:00:19.938', '', '', '0', NULL, '0', 0, 0, 0),
(377, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-19 12:38:08', '', 'me', 'Uploaded from  80 Notes Played Total Time: 00:01:20.250', '', '', '0', NULL, '0', 0, 0, 0),
(378, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-19 12:40:18', '', 'me', 'Uploaded from  8 Notes Played Total Time: 00:00:03.999', '', '', '0', NULL, '0', 0, 0, 0),
(388, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-19 14:11:22', '', 'me', 'Sweep.mp3 Uploaded from QRSC0519000016', '', '', '0', NULL, '0', 0, 0, 0),
(389, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-20 14:14:25', '', 'me', '2019_6_20_001.mid Uploaded from QRSC0519000016 62 Notes Played Total Time: 00:00:06', '', '', '0', NULL, '0', 0, 0, 0),
(390, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-20 14:14:55', '', 'me', '2019_6_20_002.mid Uploaded from QRSC0519000016 69 Notes Played Total Time: 00:00:08', '', '', '0', NULL, '0', 0, 0, 0),
(386, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-19 13:00:25', '', 'friends', 'PedalKeySync.MID Uploaded from QRSC0519000016 16 Notes Played Total Time: 00:01:16.800', '', '', '0', NULL, '0', 0, 0, 0),
(387, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-19 13:31:06', '', 'friends', 'Test-chromatic-velocity-064.mid Uploaded from QRSC0519000016 159 Notes Played Total Time: 00:00:19.938', '', '', '0', NULL, '0', 0, 0, 0),
(391, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-20 14:38:13', '', 'me', '2019_6_20_003.mid Uploaded from QRSC0519000016 0 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(393, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-20 14:53:15', '', 'me', '2019_6_20_005.flac Uploaded from QRSC0519000016 2859 Notes Played Total Time: 00:06:35', '', '', '0', NULL, '0', 0, 0, 0),
(394, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-20 14:55:00', '', 'me', '2019_6_20_009.flac Uploaded from QRSC0519000016 155 Notes Played Total Time: 00:00:32', '', '', '0', NULL, '0', 0, 0, 0),
(405, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-20 17:32:03', '', 'me', '2019_6_20_020.mid Uploaded from QRSC0519000016 43 Notes Played Total Time: 00:00:07', '', '', '0', NULL, '0', 0, 0, 0),
(406, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-20 17:53:28', '', 'me', '2019_6_20_021.flac Uploaded from QRSC0519000016 691 Notes Played Total Time: 00:02:01', '', '', '0', NULL, '0', 0, 0, 0),
(404, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-20 16:53:59', '', 'friends', '2019_6_20_019.flac Uploaded from QRSC0519000016 173 Notes Played Total Time: 00:00:37', '', '', '0', NULL, '0', 1, 0, 0),
(407, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-20 17:58:37', '', 'me', '2019_6_20_023.mid Uploaded from QRSC0519000016 21 Notes Played Total Time: 00:00:04', '', '', '0', NULL, '0', 0, 0, 0),
(408, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-20 19:10:12', '', 'me', '2019_6_20_024.mid Uploaded from QRSC0519000016 2859 Notes Played Total Time: 00:06:35', '', '', '0', NULL, '0', 0, 0, 0),
(437, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-21 18:24:03', '', 'me', '2019_6_21_001.mid Uploaded from QRSC0519000016 92 Notes Played Total Time: 00:00:19', '', '', '0', NULL, '0', 0, 0, 0),
(438, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-21 18:41:49', '', 'me', '2019_6_21_002.mid Uploaded from QRSC0519000016 9 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(439, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-21 18:45:33', '', 'me', '2019_6_21_003.flac Uploaded from QRSC0519000016 260 Notes Played Total Time: 00:00:19', '', '', '0', NULL, '0', 0, 0, 0),
(440, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-21 18:45:57', '', 'me', '2019_6_21_004.mid Uploaded from QRSC0519000016 24 Notes Played Total Time: 00:00:04', '', '', '0', NULL, '0', 0, 0, 0),
(441, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-21 18:47:00', '', 'me', '2019_6_21_005.mid Uploaded from QRSC0519000016 12 Notes Played Total Time: 00:00:06', '', '', '0', NULL, '0', 0, 0, 0),
(442, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-21 18:47:42', '', 'me', '2019_6_21_006.mid Uploaded from QRSC0519000016 34 Notes Played Total Time: 00:00:11', '', '', '0', NULL, '0', 0, 0, 0),
(443, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-21 18:57:57', '', 'me', '2019_6_21_007.flac Uploaded from QRSC0519000016 88 Notes Played Total Time: 00:00:20', '', '', '0', NULL, '0', 0, 0, 0),
(446, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-21 19:31:12', '', 'me', '2019_6_21_003.mid Uploaded from QRSC0519000016 55 Notes Played Total Time: 00:00:11', '', '', '0', NULL, '0', 0, 0, 0),
(447, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-21 19:31:45', '', 'me', '2019_6_21_004.mid Uploaded from QRSC0519000016 75 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(448, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-21 19:38:07', '', 'me', '2019_6_21_005.mid Uploaded from QRSC0519000016 125 Notes Played Total Time: 00:00:06', '', '', '0', NULL, '0', 0, 0, 0),
(419, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-20 20:20:51', '', 'me', '2019_6_20_035.mid Uploaded from QRSC0519000016 1392 Notes Played Total Time: 00:02:29', '', '', '0', NULL, '0', 0, 0, 0),
(420, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-20 20:21:22', '', 'me', '2019_6_20_036.mid Uploaded from QRSC0519000016 158 Notes Played Total Time: 00:00:19', '', '', '0', NULL, '0', 0, 0, 0),
(421, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-20 20:22:34', '', 'me', '2019_6_20_037.mid Uploaded from QRSC0519000016 26 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(422, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-20 20:26:51', '', 'me', '2019_6_20_038.mid Uploaded from QRSC0519000016 24 Notes Played Total Time: 00:00:02', '', '', '0', NULL, '0', 0, 0, 0),
(423, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-20 20:32:02', '', 'me', '2019_6_20_039.mid Uploaded from QRSC0519000016 67 Notes Played Total Time: 00:00:08', '', '', '0', NULL, '0', 0, 0, 0),
(424, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-20 20:33:36', '', 'me', '2019_6_20_040.mid Uploaded from QRSC0519000016 17 Notes Played Total Time: 00:00:02', '', '', '0', NULL, '0', 0, 0, 0),
(425, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-20 20:34:40', '', 'me', '2019_6_20_041.mid Uploaded from QRSC0519000016 113 Notes Played Total Time: 00:00:13', '', '', '0', NULL, '0', 0, 0, 0),
(426, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-20 20:34:57', '', 'me', '2019_6_20_042.mid Uploaded from QRSC0519000016 88 Notes Played Total Time: 00:00:10', '', '', '0', NULL, '0', 0, 0, 0),
(449, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-21 19:40:14', '', 'me', '2019_6_21_006.mid Uploaded from QRSC0519000016 88 Notes Played Total Time: 00:00:04', '', '', '0', NULL, '0', 0, 0, 0),
(450, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-21 19:40:52', '', 'me', '2019_6_21_007.mid Uploaded from QRSC0519000016 73 Notes Played Total Time: 00:00:04', '', '', '0', NULL, '0', 0, 0, 0),
(451, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-21 19:58:29', '', 'me', '2019_6_21_008.flac Uploaded from QRSC0519000016 192 Notes Played Total Time: 00:00:11', '', '', '0', NULL, '0', 0, 0, 0),
(452, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-21 20:18:05', '', 'me', '2019_6_21_009.mid Uploaded from QRSC0519000016 52 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0);
INSERT INTO `posts` (`post_id`, `user_id`, `user_type`, `in_group`, `group_id`, `in_event`, `event_id`, `in_wall`, `wall_id`, `post_type`, `origin_id`, `time`, `location`, `privacy`, `text`, `feeling_action`, `feeling_value`, `boosted`, `boosted_by`, `comments_disabled`, `likes`, `comments`, `shares`) VALUES
(453, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-23 15:18:18', '', 'me', '2019_6_23_001.mid Uploaded from QRSC0519000016 1024 Notes Played Total Time: 00:00:59', '', '', '0', NULL, '0', 0, 0, 0),
(459, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-24 13:38:46', '', 'me', '2019_6_24_006.mid Uploaded from QRSC0519000016 46 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(460, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-24 13:45:20', '', 'me', '2019_6_24_007.mid Uploaded from QRSC0519000016 290 Notes Played Total Time: 00:00:18', '', '', '0', NULL, '0', 0, 0, 0),
(461, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-24 14:01:16', '', 'me', '2019_6_24_008.mid Uploaded from QRSC0519000016 3751 Notes Played Total Time: 00:03:36', '', '', '0', NULL, '0', 0, 0, 0),
(436, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-20 20:59:15', '', 'me', '2019_6_20_052.mid Uploaded from QRSC0519000016 21 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(462, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-24 14:03:45', '', 'me', '2019_6_24_009.mid Uploaded from QRSC0519000016 26 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(458, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-24 13:01:04', '', 'friends', '2019_6_24_005.flac Uploaded from QRSC0519000016 47 Notes Played Total Time: 00:00:11', '', '', '0', NULL, '0', 0, 0, 0),
(463, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-24 14:06:03', '', 'me', '2019_6_24_010.mid Uploaded from QRSC0519000016 387 Notes Played Total Time: 00:00:25', '', '', '0', NULL, '0', 0, 0, 0),
(464, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-24 14:26:08', '', 'me', '2019_6_24_011.mid Uploaded from QRSC0519000016 248 Notes Played Total Time: 00:00:16', '', '', '0', NULL, '0', 0, 0, 0),
(465, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-24 14:26:55', '', 'me', '2019_6_24_012.mid Uploaded from QRSC0519000016 200 Notes Played Total Time: 00:00:13', '', '', '0', NULL, '0', 0, 0, 0),
(466, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-24 16:21:22', '', 'me', '2019_6_24_013.mid Uploaded from QRSC0519000016 56 Notes Played Total Time: 00:00:06', '', '', '0', NULL, '0', 0, 0, 0),
(467, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-24 16:24:03', '', 'me', '2019_6_24_014.mid Uploaded from QRSC0519000016 35 Notes Played Total Time: 00:00:04', '', '', '0', NULL, '0', 0, 0, 0),
(468, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-24 16:26:35', '', 'me', '2019_6_24_015.mid Uploaded from QRSC0519000016 45 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(469, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-24 16:30:13', '', 'me', '2019_6_24_016.flac Uploaded from QRSC0519000016 320 Notes Played Total Time: 00:00:39', '', '', '0', NULL, '0', 0, 0, 0),
(470, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-24 16:30:30', '', 'me', '2019_6_24_017.mid Uploaded from QRSC0519000016 32 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(471, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-24 16:31:37', '', 'me', '2019_6_24_018.flac Uploaded from QRSC0519000016 104 Notes Played Total Time: 00:00:11', '', '', '0', NULL, '0', 0, 0, 0),
(472, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-24 16:44:04', '', 'me', '2019_6_24_019.mid Uploaded from QRSC0519000016 25 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(473, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-24 16:44:48', '', 'me', '2019_6_24_020.mid Uploaded from QRSC0519000016 10 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(474, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-24 20:11:51', '', 'me', '2019_6_24_001.mid Uploaded from QRSC0519000016 29 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(475, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-25 15:57:45', '', 'me', '2019_6_25_001.mid Uploaded from QRSC0519000016 137 Notes Played Total Time: 00:00:15', '', '', '0', NULL, '0', 0, 0, 0),
(476, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-25 16:46:27', '', 'me', '2019_6_25_003.mid Uploaded from QRSC0519000016 5 Notes Played Total Time: 00:00:01', '', '', '0', NULL, '0', 0, 0, 0),
(477, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-25 17:52:51', '', 'me', '2019_6_25_004.mid Uploaded from QRSC0519000016 64 Notes Played Total Time: 00:00:07', '', '', '0', NULL, '0', 0, 0, 0),
(478, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-25 17:53:40', '', 'me', '2019_6_25_005.mid Uploaded from QRSC0519000016 12 Notes Played Total Time: 00:00:01', '', '', '0', NULL, '0', 0, 0, 0),
(479, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-25 18:25:26', '', 'me', '2019_6_25_006.flac Uploaded from QRSC0519000016 1300 Notes Played Total Time: 00:03:19', '', '', '0', NULL, '0', 0, 0, 0),
(482, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-25 20:32:06', '', 'me', '2019_6_25_007.mid Uploaded from QRSC0519000016 1765 Notes Played Total Time: 00:02:27', '', '', '0', NULL, '0', 0, 0, 0),
(483, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-25 20:38:49', '', 'me', '2019_6_25_008.flac Uploaded from QRSC0519000016 2206 Notes Played Total Time: 00:04:33', '', '', '0', NULL, '0', 0, 0, 0),
(484, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-25 20:39:16', '', 'me', '2019_6_25_009.mid Uploaded from QRSC0519000016 317 Notes Played Total Time: 00:00:17', '', '', '0', NULL, '0', 0, 0, 0),
(485, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-26 17:55:07', '', 'me', '2019_6_26_001.mid Uploaded from QRSC0519000016 312 Notes Played Total Time: 00:01:00', '', '', '0', NULL, '0', 0, 0, 0),
(486, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-26 17:57:50', '', 'me', '2019_6_26_002.mid Uploaded from QRSC0519000016 524 Notes Played Total Time: 00:01:50', '', '', '0', NULL, '0', 0, 0, 0),
(487, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-26 20:43:16', '', 'me', '2019_6_26_003.mid Uploaded from QRSC0519000016 12 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(488, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-26 20:43:48', '', 'me', '2019_6_26_004.mid Uploaded from QRSC0519000016 3 Notes Played Total Time: 00:00:01', '', '', '0', NULL, '0', 0, 0, 0),
(489, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-26 20:44:27', '', 'me', '2019_6_26_005.mid Uploaded from QRSC0519000016 45 Notes Played Total Time: 00:00:09', '', '', '0', NULL, '0', 0, 0, 0),
(490, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-26 20:45:09', '', 'me', '2019_6_26_006.mid Uploaded from QRSC0519000016 17 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(491, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-26 20:46:04', '', 'me', '2019_6_26_007.mid Uploaded from QRSC0519000016 6 Notes Played Total Time: 00:00:01', '', '', '0', NULL, '0', 0, 0, 0),
(492, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-26 21:02:03', '', 'me', '2019_6_26_008.mid Uploaded from QRSC0519000016 5233 Notes Played Total Time: 00:15:37', '', '', '0', NULL, '0', 0, 0, 0),
(493, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-27 16:04:19', '', 'me', '2019_6_27_001.mid Uploaded from QRSC0519000016 36 Notes Played Total Time: 00:00:12', '', '', '0', NULL, '0', 0, 0, 0),
(494, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-06-30 15:18:13', '', 'me', '2019_6_30_001.mid Uploaded from QRSC0519000016 292 Notes Played Total Time: 00:00:58', '', '', '0', NULL, '0', 0, 0, 0),
(495, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-07 15:18:16', '', 'me', '2019_7_7_001.mid Uploaded from QRSC0519000016 1331 Notes Played Total Time: 00:00:58', '', '', '0', NULL, '0', 0, 0, 0),
(496, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-09 15:34:27', '', 'me', '2019_7_9_001.mid Uploaded from QRSC0519000016 0 Notes Played Total Time: 00:00:01', '', '', '0', NULL, '0', 0, 0, 0),
(497, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-09 20:18:44', '', 'me', '2019_7_9_002.mid Uploaded from QRSC0519000016 13 Notes Played Total Time: 00:00:02', '', '', '0', NULL, '0', 0, 0, 0),
(498, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-09 20:33:14', '', 'me', '2019_7_9_003.mid Uploaded from QRSC0519000016 2418 Notes Played Total Time: 00:02:29', '', '', '0', NULL, '0', 0, 0, 0),
(499, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-09 20:34:03', '', 'me', '2019_7_9_004.mid Uploaded from QRSC0519000016 98 Notes Played Total Time: 00:00:13', '', '', '0', NULL, '0', 0, 0, 0),
(500, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-09 20:35:47', '', 'me', '2019_7_9_005.mid Uploaded from QRSC0519000016 60 Notes Played Total Time: 00:00:06', '', '', '0', NULL, '0', 0, 0, 0),
(501, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-10 17:15:13', '', 'me', '2019_7_10_002.mid Uploaded from QRSC0519000016 1263 Notes Played Total Time: 00:03:00', '', '', '0', NULL, '0', 0, 0, 0),
(502, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-10 17:19:47', '', 'me', '2019_7_10_003.mid Uploaded from QRSC0519000016 2644 Notes Played Total Time: 00:04:09', '', '', '0', NULL, '0', 0, 0, 0),
(503, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-10 17:23:59', '', 'me', '2019_7_10_004.mid Uploaded from QRSC0519000016 1779 Notes Played Total Time: 00:04:12', '', '', '0', NULL, '0', 0, 0, 0),
(504, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-10 17:28:30', '', 'me', '2019_7_10_005.mid Uploaded from QRSC0519000016 1396 Notes Played Total Time: 00:04:23', '', '', '0', NULL, '0', 0, 0, 0),
(505, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-10 17:33:07', '', 'me', '2019_7_10_006.mid Uploaded from QRSC0519000016 1631 Notes Played Total Time: 00:04:32', '', '', '0', NULL, '0', 0, 0, 0),
(506, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-10 17:36:19', '', 'me', '2019_7_10_007.mid Uploaded from QRSC0519000016 1900 Notes Played Total Time: 00:03:10', '', '', '0', NULL, '0', 0, 0, 0),
(507, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-10 17:45:26', '', 'me', '2019_7_10_008.mid Uploaded from QRSC0519000016 3548 Notes Played Total Time: 00:08:49', '', '', '0', NULL, '0', 0, 0, 0),
(508, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-10 17:46:41', '', 'me', '2019_7_10_009.mid Uploaded from QRSC0519000016 477 Notes Played Total Time: 00:01:06', '', '', '0', NULL, '0', 0, 0, 0),
(509, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-10 17:52:15', '', 'me', '2019_7_10_010.mid Uploaded from QRSC0519000016 2405 Notes Played Total Time: 00:04:14', '', '', '0', NULL, '0', 0, 0, 0),
(510, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-10 17:54:55', '', 'me', '2019_7_10_011.mid Uploaded from QRSC0519000016 1000 Notes Played Total Time: 00:02:33', '', '', '0', NULL, '0', 0, 0, 0),
(511, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-10 18:00:48', '', 'me', '2019_7_10_012.mid Uploaded from QRSC0519000016 2667 Notes Played Total Time: 00:04:24', '', '', '0', NULL, '0', 0, 0, 0),
(512, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-10 18:02:04', '', 'me', '2019_7_10_013.mid Uploaded from QRSC0519000016 299 Notes Played Total Time: 00:01:05', '', '', '0', NULL, '0', 0, 0, 0),
(513, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-10 18:25:57', '', 'me', '2019_7_10_014.mid Uploaded from QRSC0519000016 960 Notes Played Total Time: 00:03:17', '', '', '0', NULL, '0', 0, 0, 0),
(514, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-10 18:29:32', '', 'me', '2019_7_10_015.mid Uploaded from QRSC0519000016 660 Notes Played Total Time: 00:01:42', '', '', '0', NULL, '0', 0, 0, 0),
(515, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-10 18:58:51', '', 'me', '2019_7_10_016.mid Uploaded from QRSC0519000016 361 Notes Played Total Time: 00:01:14', '', '', '0', NULL, '0', 0, 0, 0),
(516, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-10 20:02:34', '', 'me', '2019_7_10_017.mid Uploaded from QRSC0519000016 45 Notes Played Total Time: 00:00:10', '', '', '0', NULL, '0', 0, 0, 0),
(517, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-10 20:10:19', '', 'me', '2019_7_10_018.mid Uploaded from QRSC0519000016 20 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(518, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-10 20:14:23', '', 'me', '2019_7_10_019.mid Uploaded from QRSC0519000016 24 Notes Played Total Time: 00:00:08', '', '', '0', NULL, '0', 0, 0, 0),
(519, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-10 20:21:32', '', 'me', '2019_7_10_020.mid Uploaded from QRSC0519000016 6 Notes Played Total Time: 00:00:02', '', '', '0', NULL, '0', 0, 0, 0),
(520, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-10 20:24:47', '', 'me', '2019_7_10_021.mid Uploaded from QRSC0519000016 3 Notes Played Total Time: 00:00:01', '', '', '0', NULL, '0', 0, 0, 0),
(521, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-12 19:15:32', '', 'me', '2019_7_12_001.mid Uploaded from QRSC0519000016 18 Notes Played Total Time: 00:00:04', '', '', '0', NULL, '0', 0, 0, 0),
(552, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-26 19:50:29', '', 'me', '2019_7_26_008.flac Uploaded from QRSC0519000016', '', '', '0', NULL, '0', 0, 0, 0),
(553, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-26 19:51:32', '', 'me', '2019_7_26_009.flac Uploaded from QRSC0519000016', '', '', '0', NULL, '0', 0, 0, 0),
(554, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-28 15:18:26', '', 'me', '2019_7_28_001.flac Uploaded from QRSC0519000016', '', '', '0', NULL, '0', 0, 0, 0),
(559, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-29 12:37:11', '', 'me', '2019_7_29_005.flac Uploaded from QRSC0519000016', '', '', '0', NULL, '0', 0, 0, 0),
(556, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-29 12:13:11', '', 'me', '2019_7_29_002.flac Uploaded from QRSC0519000016', '', '', '0', NULL, '0', 0, 0, 0),
(550, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-26 19:39:38', '', 'me', '2019_7_26_006.flac Uploaded from QRSC0519000016', '', '', '0', NULL, '0', 0, 0, 0),
(561, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-29 12:46:57', '', 'me', '2019_7_29_007.flac Uploaded from QRSC0519000016', '', '', '0', NULL, '0', 0, 0, 0),
(560, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-29 12:42:59', '', 'me', '2019_7_29_006.flac Uploaded from QRSC0519000016', '', '', '0', NULL, '0', 0, 0, 0),
(562, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-29 12:51:29', '', 'me', '2019_7_29_008.flac Uploaded from QRSC0519000016', '', '', '0', NULL, '0', 0, 0, 0),
(563, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-29 12:52:49', '', 'me', '2019_7_29_009.flac Uploaded from QRSC0519000016', '', '', '0', NULL, '0', 0, 0, 0),
(564, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-29 12:57:41', '', 'me', '2019_7_29_010.flac Uploaded from QRSC0519000016', '', '', '0', NULL, '0', 0, 0, 0),
(565, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-07-29 12:58:43', '', 'me', '2019_7_29_011.flac Uploaded from QRSC0519000016', '', '', '0', NULL, '0', 0, 0, 0),
(566, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-09 20:11:15', '', 'me', '2019_8_9_001.mid Uploaded from QRSC0819807003 181 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(567, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-09 20:24:27', '', 'me', '2019_8_9_002.mid Uploaded from QRSC0819807003 226 Notes Played Total Time: 00:00:08', '', '', '0', NULL, '0', 0, 0, 0),
(568, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-12 12:29:14', '', 'me', '2019_8_12_001.mid Uploaded from QRSC0819807003 57 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(569, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-14 16:53:10', '', 'me', '2019_8_14_001.mid Uploaded from QRSC0819807003 3552 Notes Played Total Time: 00:02:43', '', '', '0', NULL, '0', 0, 0, 0),
(570, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-14 16:59:32', '', 'me', '2019_8_14_002.mid Uploaded from QRSC0819807003 3054 Notes Played Total Time: 00:06:10', '', '', '0', NULL, '0', 0, 0, 0),
(571, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-14 17:03:58', '', 'me', '2019_8_14_003.mid Uploaded from QRSC0819807003 2770 Notes Played Total Time: 00:04:23', '', '', '0', NULL, '0', 0, 0, 0),
(572, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-14 17:06:57', '', 'me', '2019_8_14_004.mid Uploaded from QRSC0819807003 705 Notes Played Total Time: 00:02:52', '', '', '0', NULL, '0', 0, 0, 0),
(573, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-14 17:10:07', '', 'me', '2019_8_14_005.mid Uploaded from QRSC0819807003 547 Notes Played Total Time: 00:03:02', '', '', '0', NULL, '0', 0, 0, 0),
(574, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-14 17:13:40', '', 'me', '2019_8_14_006.mid Uploaded from QRSC0819807003 704 Notes Played Total Time: 00:02:56', '', '', '0', NULL, '0', 0, 0, 0),
(575, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-14 17:32:16', '', 'me', '2019_8_14_007.mid Uploaded from QRSC0819807003 8368 Notes Played Total Time: 00:18:03', '', '', '0', NULL, '0', 0, 0, 0),
(576, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-14 17:37:30', '', 'me', '2019_8_14_008.mid Uploaded from QRSC0819807003 3871 Notes Played Total Time: 00:05:24', '', '', '0', NULL, '0', 0, 0, 0),
(577, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-14 17:40:30', '', 'me', '2019_8_14_009.mid Uploaded from QRSC0819807003 1115 Notes Played Total Time: 00:02:58', '', '', '0', NULL, '0', 0, 0, 0),
(578, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-14 17:47:35', '', 'me', '2019_8_14_010.mid Uploaded from QRSC0819807003 4789 Notes Played Total Time: 00:06:56', '', '', '0', NULL, '0', 0, 0, 0),
(579, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-15 17:37:38', '', 'me', '2019_8_15_001.mid Uploaded from QRSC0819807003 4115 Notes Played Total Time: 00:06:26', '', '', '0', NULL, '0', 0, 0, 0),
(580, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-15 17:39:39', '', 'me', '2019_8_15_002.mid Uploaded from QRSC0819807003 821 Notes Played Total Time: 00:01:59', '', '', '0', NULL, '0', 0, 0, 0),
(581, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-15 17:40:07', '', 'me', '2019_8_15_003.mid Uploaded from QRSC0819807003 22 Notes Played Total Time: 00:00:21', '', '', '0', NULL, '0', 0, 0, 0),
(582, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-15 17:43:20', '', 'me', '2019_8_15_004.mid Uploaded from QRSC0819807003 721 Notes Played Total Time: 00:03:06', '', '', '0', NULL, '0', 0, 0, 0),
(583, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-15 17:46:08', '', 'me', '2019_8_15_005.mid Uploaded from QRSC0819807003 530 Notes Played Total Time: 00:01:09', '', '', '0', NULL, '0', 0, 0, 0),
(584, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-15 17:56:31', '', 'me', '2019_8_15_006.mid Uploaded from QRSC0819807003 3160 Notes Played Total Time: 00:04:42', '', '', '0', NULL, '0', 0, 0, 0),
(585, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-15 18:00:48', '', 'me', '2019_8_15_007.mid Uploaded from QRSC0819807003 1253 Notes Played Total Time: 00:02:34', '', '', '0', NULL, '0', 0, 0, 0),
(586, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-15 18:04:09', '', 'me', '2019_8_15_008.mid Uploaded from QRSC0819807003 1392 Notes Played Total Time: 00:03:11', '', '', '0', NULL, '0', 0, 0, 0),
(587, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-15 18:07:08', '', 'me', '2019_8_15_009.mid Uploaded from QRSC0819807003 1029 Notes Played Total Time: 00:02:51', '', '', '0', NULL, '0', 0, 0, 0),
(588, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-15 18:21:03', '', 'me', '2019_8_15_010.mid Uploaded from QRSC0819807003 9170 Notes Played Total Time: 00:13:15', '', '', '0', NULL, '0', 0, 0, 0),
(589, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-15 18:28:34', '', 'me', '2019_8_15_011.mid Uploaded from QRSC0819807003 4185 Notes Played Total Time: 00:07:56', '', '', '0', NULL, '0', 0, 0, 0),
(590, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-15 18:31:19', '', 'me', '2019_8_15_012.mid Uploaded from QRSC0819807003 2203 Notes Played Total Time: 00:02:36', '', '', '0', NULL, '0', 0, 0, 0),
(591, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-15 18:35:31', '', 'me', '2019_8_15_013.mid Uploaded from QRSC0819807003 2888 Notes Played Total Time: 00:04:02', '', '', '0', NULL, '0', 0, 0, 0),
(592, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-15 18:39:21', '', 'me', '2019_8_15_014.mid Uploaded from QRSC0819807003 2230 Notes Played Total Time: 00:03:30', '', '', '0', NULL, '0', 0, 0, 0),
(593, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-15 18:45:29', '', 'me', '2019_8_15_015.mid Uploaded from QRSC0819807003 2695 Notes Played Total Time: 00:05:54', '', '', '0', NULL, '0', 0, 0, 0),
(594, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-15 18:49:17', '', 'me', '2019_8_15_016.mid Uploaded from QRSC0819807003 917 Notes Played Total Time: 00:03:38', '', '', '0', NULL, '0', 0, 0, 0),
(595, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-15 18:59:15', '', 'me', '2019_8_15_017.mid Uploaded from QRSC0819807003 6394 Notes Played Total Time: 00:10:00', '', '', '0', NULL, '0', 0, 0, 0),
(596, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-15 19:02:41', '', 'me', '2019_8_15_018.mid Uploaded from QRSC0819807003 1771 Notes Played Total Time: 00:03:12', '', '', '0', NULL, '0', 0, 0, 0),
(597, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-15 19:05:18', '', 'me', '2019_8_15_019.mid Uploaded from QRSC0819807003 1368 Notes Played Total Time: 00:02:32', '', '', '0', NULL, '0', 0, 0, 0),
(598, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-15 19:11:58', '', 'me', '2019_8_15_020.mid Uploaded from QRSC0819807003 4117 Notes Played Total Time: 00:06:26', '', '', '0', NULL, '0', 0, 0, 0),
(599, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-15 19:22:43', '', 'me', '2019_8_15_021.mid Uploaded from QRSC0819807003 5504 Notes Played Total Time: 00:10:21', '', '', '0', NULL, '0', 0, 0, 0),
(600, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-15 19:26:27', '', 'me', '2019_8_15_022.mid Uploaded from QRSC0819807003 1328 Notes Played Total Time: 00:03:54', '', '', '0', NULL, '0', 0, 0, 0),
(601, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-15 19:42:13', '', 'me', '2019_8_15_023.mid Uploaded from QRSC0819807003 3211 Notes Played Total Time: 00:05:43', '', '', '0', NULL, '0', 0, 0, 0),
(602, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-15 19:42:43', '', 'me', '2019_8_15_024.mid Uploaded from QRSC0819807003 122 Notes Played Total Time: 00:00:26', '', '', '0', NULL, '0', 0, 0, 0),
(603, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-19 12:35:58', '', 'me', 'Snare1.flac Uploaded from QRSC0519000016', '', '', '0', NULL, '0', 0, 0, 0),
(604, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-20 17:39:23', '', 'me', '2019_8_20_001.mid Uploaded from QRSC0819807003 15 Notes Played Total Time: 00:00:10', '', '', '0', NULL, '0', 0, 0, 0),
(605, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-26 14:13:57', '', 'me', '2019_8_26_001.mid Uploaded from QRSC0519000016 0 Notes Played Total Time: 00:00:07', '', '', '0', NULL, '0', 0, 0, 0),
(606, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-26 14:14:06', '', 'me', '2019_8_26_002.mid Uploaded from QRSC0519000016 0 Notes Played Total Time: 00:00:04', '', '', '0', NULL, '0', 0, 0, 0),
(607, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-26 14:14:45', '', 'me', '2019_8_26_003.mid Uploaded from QRSC0519000016 0 Notes Played Total Time: 00:00:06', '', '', '0', NULL, '0', 0, 0, 0),
(608, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-26 14:15:05', '', 'me', '2019_8_26_004.mid Uploaded from QRSC0519000016 0 Notes Played Total Time: 00:00:14', '', '', '0', NULL, '0', 0, 0, 0),
(609, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-26 14:15:25', '', 'me', '2019_8_26_005.mid Uploaded from QRSC0519000016 0 Notes Played Total Time: 00:00:11', '', '', '0', NULL, '0', 0, 0, 0),
(610, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-26 14:15:33', '', 'me', '2019_8_26_006.mid Uploaded from QRSC0519000016 0 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(611, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-26 14:15:44', '', 'me', '2019_8_26_007.mid Uploaded from QRSC0519000016 0 Notes Played Total Time: 00:00:04', '', '', '0', NULL, '0', 0, 0, 0),
(612, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-26 14:16:10', '', 'me', '2019_8_26_008.mid Uploaded from QRSC0519000016 0 Notes Played Total Time: 00:00:21', '', '', '0', NULL, '0', 0, 0, 0),
(613, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-26 14:16:48', '', 'me', '2019_8_26_009.mid Uploaded from QRSC0519000016 0 Notes Played Total Time: 00:00:30', '', '', '0', NULL, '0', 0, 0, 0),
(614, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-26 14:17:06', '', 'me', '2019_8_26_010.mid Uploaded from QRSC0519000016 0 Notes Played Total Time: 00:00:14', '', '', '0', NULL, '0', 0, 0, 0),
(615, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-26 14:18:17', '', 'me', '2019_8_26_011.mid Uploaded from QRSC0519000016 0 Notes Played Total Time: 00:01:04', '', '', '0', NULL, '0', 0, 0, 0),
(616, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-26 14:35:41', '', 'me', '2019_8_26_012.mid Uploaded from QRSC0519000016 0 Notes Played Total Time: 00:00:08', '', '', '0', NULL, '0', 0, 0, 0),
(617, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-26 14:38:58', '', 'me', '2019_8_26_013.mid Uploaded from QRSC0519000016 0 Notes Played Total Time: 00:02:52', '', '', '0', NULL, '0', 0, 0, 0),
(618, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-26 14:55:51', '', 'me', '2019_8_26_014.mid Uploaded from QRSC0519000016 0 Notes Played Total Time: 00:00:15', '', '', '0', NULL, '0', 0, 0, 0),
(619, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-26 15:01:25', '', 'me', '2019_8_26_015.mid Uploaded from QRSC0519000016 0 Notes Played Total Time: 00:01:10', '', '', '0', NULL, '0', 0, 0, 0),
(620, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-26 15:14:44', '', 'me', '2019_8_26_016.mid Uploaded from QRSC0519000016 0 Notes Played Total Time: 00:01:50', '', '', '0', NULL, '0', 0, 0, 0),
(621, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-26 15:16:17', '', 'me', '2019_8_26_017.mid Uploaded from QRSC0519000016 0 Notes Played Total Time: 00:00:39', '', '', '0', NULL, '0', 0, 0, 0),
(622, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-26 15:16:23', '', 'me', '2019_8_26_018.mid Uploaded from QRSC0519000016 0 Notes Played Total Time: 00:00:01', '', '', '0', NULL, '0', 0, 0, 0),
(623, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-26 15:16:32', '', 'me', '2019_8_26_019.mid Uploaded from QRSC0519000016 0 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(624, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-26 17:22:49', '', 'me', '2019_8_26_020.mid Uploaded from QRSC0519000016 0 Notes Played Total Time: 00:00:33', '', '', '0', NULL, '0', 0, 0, 0),
(625, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-26 17:23:17', '', 'me', '2019_8_26_021.mid Uploaded from QRSC0519000016 0 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(626, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-26 17:23:27', '', 'me', '2019_8_26_022.mid Uploaded from QRSC0519000016 0 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(627, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-26 17:25:21', '', 'me', '2019_8_26_023.mid Uploaded from QRSC0519000016 0 Notes Played Total Time: 00:00:51', '', '', '0', NULL, '0', 0, 0, 0),
(628, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-27 13:54:50', '', 'me', '2019_8_27_001.mid Uploaded from QRSC0819807003 5261 Notes Played Total Time: 00:09:25', '', '', '0', NULL, '0', 0, 0, 0),
(629, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-27 15:19:53', '', 'me', '2019_8_27_002.mid Uploaded from QRSC0819807003 512 Notes Played Total Time: 00:01:12', '', '', '0', NULL, '0', 0, 0, 0),
(630, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-27 16:24:16', '', 'me', '2019_8_27_003.mid Uploaded from QRSC0819807003 115 Notes Played Total Time: 00:00:23', '', '', '0', NULL, '0', 0, 0, 0),
(631, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-27 16:25:19', '', 'me', '2019_8_27_004.mid Uploaded from QRSC0819807003 250 Notes Played Total Time: 00:00:55', '', '', '0', NULL, '0', 0, 0, 0),
(632, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-27 16:25:37', '', 'me', '2019_8_27_005.mid Uploaded from QRSC0819807003 145 Notes Played Total Time: 00:00:19', '', '', '0', NULL, '0', 0, 0, 0),
(633, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-27 16:32:20', '', 'me', '2019_8_27_006.mid Uploaded from QRSC0819807003 400 Notes Played Total Time: 00:01:11', '', '', '0', NULL, '0', 0, 0, 0),
(634, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-27 16:32:35', '', 'me', '2019_8_27_007.mid Uploaded from QRSC0819807003 64 Notes Played Total Time: 00:00:17', '', '', '0', NULL, '0', 0, 0, 0),
(635, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-27 16:34:22', '', 'me', '2019_8_27_008.mid Uploaded from QRSC0819807003 171 Notes Played Total Time: 00:00:43', '', '', '0', NULL, '0', 0, 0, 0),
(636, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-27 19:50:14', '', 'me', '2019_8_27_009.mid Uploaded from QRSC0819807003 993 Notes Played Total Time: 00:03:55', '', '', '0', NULL, '0', 0, 0, 0),
(637, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-27 19:52:37', '', 'me', '2019_8_27_010.mid Uploaded from QRSC0819807003 1133 Notes Played Total Time: 00:02:10', '', '', '0', NULL, '0', 0, 0, 0),
(638, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-27 20:00:38', '', 'me', '2019_8_27_001.mid Uploaded from QRSC0519000016 899 Notes Played Total Time: 00:01:47', '', '', '0', NULL, '0', 0, 0, 0),
(639, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-27 20:04:25', '', 'me', '2019_8_27_002.mid Uploaded from QRSC0519000016 2057 Notes Played Total Time: 00:02:35', '', '', '0', NULL, '0', 0, 0, 0),
(640, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-27 20:11:08', '', 'me', '2019_8_27_003.mid Uploaded from QRSC0519000016 2802 Notes Played Total Time: 00:06:28', '', '', '0', NULL, '0', 0, 0, 0),
(641, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-27 20:14:01', '', 'me', '2019_8_27_004.mid Uploaded from QRSC0519000016 1177 Notes Played Total Time: 00:02:45', '', '', '0', NULL, '0', 0, 0, 0),
(642, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-27 20:17:22', '', 'me', '2019_8_27_005.mid Uploaded from QRSC0519000016 1246 Notes Played Total Time: 00:02:35', '', '', '0', NULL, '0', 0, 0, 0),
(643, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-27 20:22:16', '', 'me', '2019_8_27_006.mid Uploaded from QRSC0519000016 2474 Notes Played Total Time: 00:04:46', '', '', '0', NULL, '0', 0, 0, 0),
(644, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-27 20:27:15', '', 'me', '2019_8_27_007.mid Uploaded from QRSC0519000016 2346 Notes Played Total Time: 00:04:28', '', '', '0', NULL, '0', 0, 0, 0),
(645, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-27 20:31:17', '', 'me', '2019_8_27_008.mid Uploaded from QRSC0519000016 3572 Notes Played Total Time: 00:03:48', '', '', '0', NULL, '0', 0, 0, 0),
(646, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-27 20:33:11', '', 'me', '2019_8_27_009.mid Uploaded from QRSC0519000016 1696 Notes Played Total Time: 00:01:45', '', '', '0', NULL, '0', 0, 0, 0),
(647, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-27 20:36:06', '', 'me', '2019_8_27_010.mid Uploaded from QRSC0519000016 1222 Notes Played Total Time: 00:02:37', '', '', '0', NULL, '0', 0, 0, 0),
(648, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-27 20:38:13', '', 'me', '2019_8_27_011.mid Uploaded from QRSC0519000016 133 Notes Played Total Time: 00:00:17', '', '', '0', NULL, '0', 0, 0, 0),
(649, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-27 20:38:32', '', 'me', '2019_8_27_012.mid Uploaded from QRSC0519000016 22 Notes Played Total Time: 00:00:02', '', '', '0', NULL, '0', 0, 0, 0),
(650, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-27 20:39:25', '', 'me', '2019_8_27_013.mid Uploaded from QRSC0519000016 387 Notes Played Total Time: 00:00:36', '', '', '0', NULL, '0', 0, 0, 0),
(651, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-08-27 20:42:15', '', 'me', '2019_8_27_014.mid Uploaded from QRSC0519000016 58 Notes Played Total Time: 00:01:00', '', '', '0', NULL, '0', 0, 0, 0),
(652, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-03 16:21:49', '', 'me', '2019_9_3_001.mid Uploaded from QRSC0819807003 839 Notes Played Total Time: 00:01:22', '', '', '0', NULL, '0', 0, 0, 0),
(653, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-04 15:46:22', '', 'me', '2019_9_4_001.mid Uploaded from QRSC0819807003 33 Notes Played Total Time: 00:00:10', '', '', '0', NULL, '0', 0, 0, 0),
(654, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-04 18:26:48', '', 'me', '2019_9_4_002.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(655, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-04 20:25:33', '', 'me', '2019_9_4_003.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(664, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 14:00:34', '', 'me', '', '', '', '0', NULL, '0', 0, 0, 0),
(666, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 15:10:02', '', 'me', '2019_9_20_003.mid Uploaded from QRSC0519000016 1594 Notes Played Total Time: 00:01:52', '', '', '0', NULL, '0', 0, 0, 0),
(657, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-13 17:44:32', '', 'me', '2019_9_13_004.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(658, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-13 17:45:30', '', 'me', '2019_9_13_004.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(659, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-13 17:45:54', '', 'me', '2019_9_13_004.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(660, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-13 17:46:01', '', 'me', '2019_9_13_004.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(661, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-19 20:34:26', '', 'me', '2019_9_13_004.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(662, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-19 20:35:10', '', 'me', '2019_9_13_003.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(663, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 12:08:47', '', 'me', '2019_9_20_002.mid Uploaded from QRSC0519000016 385 Notes Played Total Time: 00:00:39', '', '', '0', NULL, '0', 0, 0, 0),
(667, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 18:04:20', '', 'me', '2019_9_20_004.mid Uploaded from QRSC0519000016 988 Notes Played Total Time: 00:01:19', '', '', '0', NULL, '0', 0, 0, 0),
(668, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 18:04:38', '', 'me', '2019_9_20_005.mid Uploaded from QRSC0519000016 25 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(669, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 18:09:59', '', 'me', '2019_9_20_006.mid Uploaded from QRSC0519000016 4079 Notes Played Total Time: 00:04:36', '', '', '0', NULL, '0', 0, 0, 0),
(670, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 18:13:24', '', 'me', '2019_9_20_007.mid Uploaded from QRSC0519000016 2286 Notes Played Total Time: 00:03:19', '', '', '0', NULL, '0', 0, 0, 0),
(671, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 18:17:16', '', 'me', '2019_9_20_008.mid Uploaded from QRSC0519000016 2469 Notes Played Total Time: 00:03:45', '', '', '0', NULL, '0', 0, 0, 0),
(672, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 18:20:42', '', 'me', '2019_9_20_009.mid Uploaded from QRSC0519000016 1738 Notes Played Total Time: 00:03:20', '', '', '0', NULL, '0', 0, 0, 0),
(673, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 18:42:33', '', 'me', '2019_9_20_010.mid Uploaded from QRSC0519000016 2094 Notes Played Total Time: 00:03:38', '', '', '0', NULL, '0', 0, 0, 0),
(674, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 18:46:42', '', 'me', '2019_9_20_011.mid Uploaded from QRSC0519000016 2131 Notes Played Total Time: 00:03:58', '', '', '0', NULL, '0', 0, 0, 0),
(675, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 18:51:19', '', 'me', '2019_9_20_012.mid Uploaded from QRSC0519000016 2780 Notes Played Total Time: 00:04:24', '', '', '0', NULL, '0', 0, 0, 0),
(676, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 18:54:20', '', 'me', '2019_9_20_013.mid Uploaded from QRSC0519000016 2231 Notes Played Total Time: 00:03:01', '', '', '0', NULL, '0', 0, 0, 0),
(677, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 18:57:33', '', 'me', '2019_9_20_014.mid Uploaded from QRSC0519000016 2135 Notes Played Total Time: 00:03:05', '', '', '0', NULL, '0', 0, 0, 0),
(678, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 19:01:10', '', 'me', '2019_9_20_015.mid Uploaded from QRSC0519000016 2965 Notes Played Total Time: 00:03:20', '', '', '0', NULL, '0', 0, 0, 0),
(679, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 19:03:06', '', 'me', '2019_9_20_016.mid Uploaded from QRSC0519000016 1027 Notes Played Total Time: 00:01:45', '', '', '0', NULL, '0', 0, 0, 0),
(680, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 19:07:44', '', 'me', '2019_9_20_017.mid Uploaded from QRSC0519000016 5 Notes Played Total Time: 00:00:01', '', '', '0', NULL, '0', 0, 0, 0),
(681, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 19:07:59', '', 'me', '2019_9_20_018.mid Uploaded from QRSC0519000016 31 Notes Played Total Time: 00:00:11', '', '', '0', NULL, '0', 0, 0, 0),
(682, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 19:20:31', '', 'me', '2019_9_20_019.mid Uploaded from QRSC0519000016 12 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(683, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 19:23:35', '', 'me', '2019_9_20_020.mid Uploaded from QRSC0519000016 72 Notes Played Total Time: 00:00:20', '', '', '0', NULL, '0', 0, 0, 0),
(684, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 19:25:46', '', 'me', '2019_9_20_021.mid Uploaded from QRSC0519000016 474 Notes Played Total Time: 00:00:57', '', '', '0', NULL, '0', 0, 0, 0),
(685, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 19:35:36', '', 'me', '2019_9_20_022.mid Uploaded from QRSC0519000016 153 Notes Played Total Time: 00:00:28', '', '', '0', NULL, '0', 0, 0, 0),
(686, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 19:37:34', '', 'me', '2019_9_20_023.mid Uploaded from QRSC0519000016 61 Notes Played Total Time: 00:00:18', '', '', '0', NULL, '0', 0, 0, 0),
(687, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 20:04:33', '', 'me', '2019_9_20_024.mid Uploaded from QRSC0519000016 1729 Notes Played Total Time: 00:02:14', '', '', '0', NULL, '0', 0, 0, 0),
(688, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 20:12:51', '', 'me', '2019_9_20_025.mid Uploaded from QRSC0519000016 4079 Notes Played Total Time: 00:04:36', '', '', '0', NULL, '0', 0, 0, 0),
(689, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 20:16:17', '', 'me', '2019_9_20_026.mid Uploaded from QRSC0519000016 2286 Notes Played Total Time: 00:03:19', '', '', '0', NULL, '0', 0, 0, 0),
(690, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 20:19:03', '', 'me', '2019_9_20_027.mid Uploaded from QRSC0519000016 1833 Notes Played Total Time: 00:02:42', '', '', '0', NULL, '0', 0, 0, 0),
(691, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-20 20:28:36', '', 'me', '2019_9_20_028.mid Uploaded from QRSC0519000016 517 Notes Played Total Time: 00:01:25', '', '', '0', NULL, '0', 0, 0, 0),
(692, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-22 15:18:14', '', 'me', '2019_9_22_001.mid Uploaded from QRSC0519000016 276 Notes Played Total Time: 00:00:57', '', '', '0', NULL, '0', 0, 0, 0),
(693, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-23 12:08:35', '', 'me', '2019_9_23_001.mid Uploaded from QRSC0519000016 11038 Notes Played Total Time: 00:29:38', '', '', '0', NULL, '0', 0, 0, 0),
(694, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-23 12:59:40', '', 'me', '2019_9_23_002.mid Uploaded from QRSC0519000016 17508 Notes Played Total Time: 00:38:10', '', '', '0', NULL, '0', 0, 0, 0),
(695, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-23 13:37:53', '', 'me', '2019_9_23_003.mid Uploaded from QRSC0519000016 24281 Notes Played Total Time: 00:37:50', '', '', '0', NULL, '0', 0, 0, 0),
(696, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-23 14:15:48', '', 'me', '2019_9_23_004.mid Uploaded from QRSC0519000016 19592 Notes Played Total Time: 00:38:07', '', '', '0', NULL, '0', 0, 0, 0),
(697, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-23 14:54:06', '', 'me', '2019_9_23_005.mid Uploaded from QRSC0519000016 18541 Notes Played Total Time: 00:38:03', '', '', '0', NULL, '0', 0, 0, 0),
(698, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-23 15:31:54', '', 'me', '2019_9_23_006.mid Uploaded from QRSC0519000016 19860 Notes Played Total Time: 00:37:41', '', '', '0', NULL, '0', 0, 0, 0),
(699, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-23 16:09:29', '', 'me', '2019_9_23_007.mid Uploaded from QRSC0519000016 18067 Notes Played Total Time: 00:37:58', '', '', '0', NULL, '0', 0, 0, 0),
(700, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-23 16:47:13', '', 'me', '2019_9_23_008.mid Uploaded from QRSC0519000016 22188 Notes Played Total Time: 00:37:24', '', '', '0', NULL, '0', 0, 0, 0),
(701, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-23 17:24:33', '', 'me', '2019_9_23_009.mid Uploaded from QRSC0519000016 16010 Notes Played Total Time: 00:37:29', '', '', '0', NULL, '0', 0, 0, 0),
(702, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-23 18:02:13', '', 'me', '2019_9_23_010.mid Uploaded from QRSC0519000016 16907 Notes Played Total Time: 00:37:36', '', '', '0', NULL, '0', 0, 0, 0),
(703, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-23 18:07:33', '', 'me', '2019_9_23_011.mid Uploaded from QRSC0519000016 4173 Notes Played Total Time: 00:06:32', '', '', '0', NULL, '0', 0, 0, 0),
(704, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-25 14:16:07', '', 'me', '2019_9_25_001.mid Uploaded from QRSC0519000016 154 Notes Played Total Time: 00:00:26', '', '', '0', NULL, '0', 0, 0, 0),
(705, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-25 14:16:52', '', 'me', '2019_9_25_002.mid Uploaded from QRSC0519000016 75 Notes Played Total Time: 00:00:11', '', '', '0', NULL, '0', 0, 0, 0),
(706, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-25 19:32:13', '', 'me', '2019_9_25_003.mid Uploaded from QRSC0519000016 4456 Notes Played Total Time: 00:03:21', '', '', '0', NULL, '0', 0, 0, 0),
(707, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-26 20:57:40', '', 'friends', '', '', '', '0', NULL, '0', 1, 0, 0),
(708, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-09-27 13:35:14', '', 'me', '2019_9_27_002.mid Uploaded from QRSC0519000016 27799 Notes Played Total Time: 00:35:13', '', '', '0', NULL, '0', 0, 0, 0),
(709, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-02 20:08:39', '', 'me', '2019_10_2_001.mid Uploaded from QRSC0819807003 0 Notes Played Total Time: 00:00:37', '', '', '0', NULL, '0', 0, 0, 0),
(710, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-03 19:39:30', '', 'me', '2019_10_3_001.mid Uploaded from QRSC0819807003 109 Notes Played Total Time: 00:00:12', '', '', '0', NULL, '0', 0, 0, 0),
(711, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-03 19:41:47', '', 'me', '2019_10_3_001.mid Uploaded from QRSC0819807003 109 Notes Played Total Time: 00:00:12.424', '', '', '0', NULL, '0', 0, 0, 0),
(712, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-03 19:45:21', '', 'me', '2019_10_3_002.mid Uploaded from QRSC0819807003 43 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(713, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-03 19:49:13', '', 'me', '2019_10_3_003.mid Uploaded from QRSC0819807003 1198 Notes Played Total Time: 00:01:48', '', '', '0', NULL, '0', 0, 0, 0),
(714, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-03 19:50:29', '', 'me', '2019_10_3_004.mid Uploaded from QRSC0819807003 535 Notes Played Total Time: 00:00:45', '', '', '0', NULL, '0', 0, 0, 0),
(715, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-03 19:58:12', '', 'me', '2019_10_3_002.mid Uploaded from QRSC0819807003 58 Notes Played Total Time: 00:00:09', '', '', '0', NULL, '0', 0, 0, 0),
(716, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-03 20:03:34', '', 'me', '2019_10_3_003.mid Uploaded from QRSC0819807003 40 Notes Played Total Time: 00:00:04', '', '', '0', NULL, '0', 0, 0, 0),
(717, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-03 20:04:06', '', 'me', '2019_10_3_004.mid Uploaded from QRSC0819807003 332 Notes Played Total Time: 00:00:32', '', '', '0', NULL, '0', 0, 0, 0),
(718, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-03 20:05:13', '', 'me', '2019_10_3_005.mid Uploaded from QRSC0819807003 439 Notes Played Total Time: 00:00:28', '', '', '0', NULL, '0', 0, 0, 0),
(719, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-03 20:05:44', '', 'me', '2019_10_3_006.mid Uploaded from QRSC0819807003 326 Notes Played Total Time: 00:00:28', '', '', '0', NULL, '0', 0, 0, 0),
(720, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-03 20:06:00', '', 'me', '2019_10_3_007.mid Uploaded from QRSC0819807003 226 Notes Played Total Time: 00:00:14', '', '', '0', NULL, '0', 0, 0, 0),
(721, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-03 20:07:15', '', 'me', '2019_10_3_008.mid Uploaded from QRSC0819807003 96 Notes Played Total Time: 00:00:10', '', '', '0', NULL, '0', 0, 0, 0),
(722, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-07 14:45:46', '', 'me', '2019_10_3_008.mid Uploaded from QRSC0819807003 96 Notes Played Total Time: 00:00:10', '', '', '0', NULL, '0', 0, 0, 0),
(723, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-07 15:10:31', '', 'me', '2019_10_7_001.mid Uploaded from QRSC0819807003 76 Notes Played Total Time: 00:00:08', '', '', '0', NULL, '0', 0, 0, 0),
(724, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-07 15:41:26', '', 'me', '2019_10_7_002.mid Uploaded from QRSC0819807003 50 Notes Played Total Time: 00:00:12', '', '', '0', NULL, '0', 0, 0, 0),
(725, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-07 17:24:53', '', 'me', 'Snare1.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(726, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-07 17:31:56', '', 'me', '2019_10_7_003.mid Uploaded from QRSC0819807003 72 Notes Played Total Time: 00:00:35', '', '', '0', NULL, '0', 0, 0, 0),
(727, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-07 17:34:47', '', 'me', '2019_10_7_004.mid Uploaded from QRSC0819807003 983 Notes Played Total Time: 00:02:32', '', '', '0', NULL, '0', 0, 0, 0),
(728, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-07 17:38:15', '', 'me', '2019_10_7_005.mid Uploaded from QRSC0819807003 1768 Notes Played Total Time: 00:02:35', '', '', '0', NULL, '0', 0, 0, 0),
(729, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-07 17:51:33', '', 'me', '2019_10_7_006.mid Uploaded from QRSC0819807003 34 Notes Played Total Time: 00:00:10', '', '', '0', NULL, '0', 0, 0, 0),
(730, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-07 17:54:23', '', 'me', '2019_10_7_007.mid Uploaded from QRSC0819807003 80 Notes Played Total Time: 00:01:21', '', '', '0', NULL, '0', 0, 0, 0),
(731, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-07 18:05:43', '', 'me', 'Test-chromatic-velocity-127.mid Uploaded from QRSC0819807003 159 Notes Played Total Time: 00:00:19.938', '', '', '0', NULL, '0', 0, 0, 0),
(732, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-07 18:06:02', '', 'me', 'Test-plunger-hold-1-second.mid Uploaded from QRSC0819807003 80 Notes Played Total Time: 00:01:20.250', '', '', '0', NULL, '0', 1, 1, 0),
(733, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-07 18:28:25', '', 'me', '2019_10_7_008.mid Uploaded from QRSC0819807003 80 Notes Played Total Time: 00:01:23', '', '', '0', NULL, '0', 0, 0, 0);
INSERT INTO `posts` (`post_id`, `user_id`, `user_type`, `in_group`, `group_id`, `in_event`, `event_id`, `in_wall`, `wall_id`, `post_type`, `origin_id`, `time`, `location`, `privacy`, `text`, `feeling_action`, `feeling_value`, `boosted`, `boosted_by`, `comments_disabled`, `likes`, `comments`, `shares`) VALUES
(734, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-07 18:57:13', '', 'me', '2019_10_7_009.mid Uploaded from QRSC0819807003 2023 Notes Played Total Time: 00:01:35', '', '', '0', NULL, '0', 0, 0, 0),
(735, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-07 20:06:45', '', 'me', 'Arpeggio.mid Uploaded from QRSC0819807003 8 Notes Played Total Time: 00:00:02.17', '', '', '0', NULL, '0', 0, 0, 0),
(736, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-07 20:08:08', '', 'me', '2019_10_3_008.mid Uploaded from QRSC0819807003 96 Notes Played Total Time: 00:00:10', '', '', '0', NULL, '0', 0, 0, 0),
(737, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-07 20:08:51', '', 'me', '2019_10_3_007.mid Uploaded from QRSC0819807003 226 Notes Played Total Time: 00:00:14', '', '', '0', NULL, '0', 0, 0, 0),
(738, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-07 20:11:02', '', 'me', '2019_10_3_006.mid Uploaded from QRSC0819807003 326 Notes Played Total Time: 00:00:28', '', '', '0', NULL, '0', 0, 0, 0),
(739, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-07 20:12:23', '', 'me', '2019_10_7_010.mid Uploaded from QRSC0819807003 71 Notes Played Total Time: 00:00:19', '', '', '0', NULL, '0', 0, 0, 0),
(740, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-08 12:33:17', '', 'me', '2019_10_8_001.mid Uploaded from QRSC0819807003 225 Notes Played Total Time: 00:00:56', '', '', '0', NULL, '0', 0, 0, 0),
(741, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-10 19:42:45', '', 'me', 'Test-plunger-hold-1-second.mid Uploaded from QRSC0519000016 80 Notes Played Total Time: 00:01:20.250', '', '', '0', NULL, '0', 0, 0, 0),
(742, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-10 20:10:51', '', 'me', 'Test-chromatic-velocity-001.mid Uploaded from QRSC0519000016 159 Notes Played Total Time: 00:00:19.938', '', '', '0', NULL, '0', 0, 0, 0),
(743, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-10 20:27:50', '', 'me', '2019_9_27_002.mid Uploaded from QRSC0519000016 27799 Notes Played Total Time: 00:35:13', '', '', '0', NULL, '0', 0, 0, 0),
(744, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-10 20:28:25', '', 'me', '2019_9_20_025.mid Uploaded from QRSC0519000016 4079 Notes Played Total Time: 00:04:36', '', '', '0', NULL, '0', 0, 0, 0),
(745, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-10 20:30:20', '', 'me', '2019_9_22_001.mid Uploaded from QRSC0519000016 276 Notes Played Total Time: 00:00:57', '', '', '0', NULL, '0', 0, 0, 0),
(746, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-10 20:30:22', '', 'me', '2019_9_20_029.mid Uploaded from QRSC0519000016 257 Notes Played Total Time: 00:00:41', '', '', '0', NULL, '0', 0, 0, 0),
(747, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-11 11:42:20', '', 'me', '2019_9_22_001.mid Uploaded from QRSC0519000016 276 Notes Played Total Time: 00:00:57', '', '', '0', NULL, '0', 0, 0, 0),
(748, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-11 14:48:11', '', 'me', '2019_10_11_001.mid Uploaded from QRSC0519000016 159 Notes Played Total Time: 00:00:44', '', '', '0', NULL, '0', 0, 0, 0),
(749, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-11 15:11:11', '', 'me', '2019_10_11_002.mid Uploaded from QRSC0519000016 130 Notes Played Total Time: 00:00:12', '', '', '0', NULL, '0', 0, 0, 0),
(750, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-11 15:13:45', '', 'me', '2019_10_11_003.mid Uploaded from QRSC0519000016 118 Notes Played Total Time: 00:00:09', '', '', '0', NULL, '0', 0, 0, 0),
(751, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-11 15:37:50', '', 'me', '2019_10_11_001.mid Uploaded from QRSC0819807003 515 Notes Played Total Time: 00:00:20', '', '', '0', NULL, '0', 0, 0, 0),
(752, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-11 15:55:56', '', 'me', '2019_10_11_002.mid Uploaded from QRSC0819807003 95 Notes Played Total Time: 00:00:10', '', '', '0', NULL, '0', 0, 0, 0),
(753, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-11 15:58:31', '', 'me', '2019_10_11_003.mid Uploaded from QRSC0819807003 7 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(754, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-11 15:59:00', '', 'me', '2019_10_11_001.mid Uploaded from QRSC0819807003 515 Notes Played Total Time: 00:00:20.846', '', '', '0', NULL, '0', 0, 0, 0),
(755, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-11 16:35:43', '', 'me', '2019_10_11_004.mid Uploaded from QRSC0819807003 39 Notes Played Total Time: 00:00:08', '', '', '0', NULL, '0', 0, 0, 0),
(756, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-11 16:56:58', '', 'me', '2019_10_11_005.mid Uploaded from QRSC0819807003 18 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(757, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-11 16:58:14', '', 'me', '2019_10_11_004.mid Uploaded from QRSC0519000016 31 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(758, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-11 16:58:16', '', 'me', '2019_10_11_006.mid Uploaded from QRSC0819807003 32 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(759, 1, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-11 18:00:04', '', 'me', 'Test-chromatic-velocity-001.mid Uploaded from QRSC0119000008 159 Notes Played Total Time: 00:00:19.938', '', '', '0', NULL, '0', 0, 0, 0),
(760, 1, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-11 18:08:36', '', 'me', 'Arpeggio.mid Uploaded from QRSC0119000008 8 Notes Played Total Time: 00:00:02.17', '', '', '0', NULL, '0', 0, 0, 0),
(761, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-14 16:30:39', '', 'me', '2019_10_14_001.mid Uploaded from QRSC0519000016 20 Notes Played Total Time: 00:00:09', '', '', '0', NULL, '0', 0, 0, 0),
(762, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-14 16:30:57', '', 'me', '2019_10_14_002.mid Uploaded from QRSC0519000016 19 Notes Played Total Time: 00:00:06', '', '', '0', NULL, '0', 0, 0, 0),
(763, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-14 16:31:31', '', 'me', '2019_10_14_003.mid Uploaded from QRSC0519000016 83 Notes Played Total Time: 00:00:23', '', '', '0', NULL, '0', 0, 0, 0),
(764, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-14 16:32:14', '', 'me', '2019_10_14_004.mid Uploaded from QRSC0519000016 44 Notes Played Total Time: 00:00:14', '', '', '0', NULL, '0', 0, 0, 0),
(765, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-14 16:33:22', '', 'me', '2019_10_14_005.mid Uploaded from QRSC0519000016 8 Notes Played Total Time: 00:00:02', '', '', '0', NULL, '0', 0, 0, 0),
(766, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-14 16:33:39', '', 'me', '2019_10_14_006.mid Uploaded from QRSC0519000016 21 Notes Played Total Time: 00:00:09', '', '', '0', NULL, '0', 0, 0, 0),
(767, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-14 16:36:43', '', 'me', '2019_10_14_007.mid Uploaded from QRSC0519000016 22 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(768, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-14 16:37:35', '', 'me', '2019_10_14_008.mid Uploaded from QRSC0519000016 208 Notes Played Total Time: 00:00:18', '', '', '0', NULL, '0', 0, 0, 0),
(769, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-14 16:37:53', '', 'me', '2019_10_14_009.mid Uploaded from QRSC0519000016 184 Notes Played Total Time: 00:00:17', '', '', '0', NULL, '0', 0, 0, 0),
(770, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-14 16:41:29', '', 'me', '2019_10_14_010.mid Uploaded from QRSC0519000016 92 Notes Played Total Time: 00:00:34', '', '', '0', NULL, '0', 0, 0, 0),
(771, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-14 16:41:57', '', 'me', '2019_10_14_011.mid Uploaded from QRSC0519000016 73 Notes Played Total Time: 00:00:21', '', '', '0', NULL, '0', 0, 0, 0),
(772, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-14 16:42:02', '', 'me', '2019_10_14_012.mid Uploaded from QRSC0519000016 1 Notes Played Total Time: 00:00:01', '', '', '0', NULL, '0', 0, 0, 0),
(773, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-14 16:42:18', '', 'me', '2019_10_14_013.mid Uploaded from QRSC0519000016 1 Notes Played Total Time: 00:00:01', '', '', '0', NULL, '0', 0, 0, 0),
(774, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-14 16:42:22', '', 'me', '2019_10_14_014.mid Uploaded from QRSC0519000016 1 Notes Played Total Time: 00:00:01', '', '', '0', NULL, '0', 0, 0, 0),
(775, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-14 16:42:29', '', 'me', '2019_10_14_015.mid Uploaded from QRSC0519000016 1 Notes Played Total Time: 00:00:01', '', '', '0', NULL, '0', 0, 0, 0),
(776, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-14 16:42:56', '', 'me', '2019_10_14_016.mid Uploaded from QRSC0519000016 2 Notes Played Total Time: 00:00:02', '', '', '0', NULL, '0', 0, 0, 0),
(777, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-14 16:49:34', '', 'me', '2019_10_14_017.mid Uploaded from QRSC0519000016 655 Notes Played Total Time: 00:00:31', '', '', '0', NULL, '0', 0, 0, 0),
(778, 1, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-14 19:09:23', '', 'me', 'Sweep.mp3 Uploaded from QRSC0119000008', '', '', '0', NULL, '0', 0, 0, 0),
(779, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-16 15:46:11', '', 'me', '2019_10_16_001.mid Uploaded from QRSC0519000016 7 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(780, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-16 16:07:58', '', 'me', '2019_10_16_002.mid Uploaded from QRSC0519000016 21 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(781, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-16 16:08:11', '', 'me', '2019_10_16_003.mid Uploaded from QRSC0519000016 21 Notes Played Total Time: 00:00:04', '', '', '0', NULL, '0', 0, 0, 0),
(782, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-16 18:23:25', '', 'me', '2019_10_16_004.mid Uploaded from QRSC0519000016 723 Notes Played Total Time: 00:00:45', '', '', '0', NULL, '0', 0, 0, 0),
(783, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-16 18:25:47', '', 'me', '2019_10_16_005.mid Uploaded from QRSC0519000016 7148 Notes Played Total Time: 00:02:12', '', '', '0', NULL, '0', 0, 0, 0),
(784, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-16 18:25:52', '', 'me', '2019_10_16_006.mid Uploaded from QRSC0519000016 125 Notes Played Total Time: 00:00:08', '', '', '0', NULL, '0', 0, 0, 0),
(785, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-16 18:34:52', '', 'public', '2019_10_16_007.mid Uploaded from QRSC0519000016 6484 Notes Played Total Time: 00:02:04', '', '', '0', NULL, '0', 1, 0, 0),
(786, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-16 18:37:17', '', 'me', '2019_10_16_008.mid Uploaded from QRSC0519000016 4983 Notes Played Total Time: 00:02:38', '', '', '0', NULL, '0', 0, 0, 0),
(789, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-18 20:43:48', '', 'me', '2019_10_18_001.mid Uploaded from QRSC0519000016 101 Notes Played Total Time: 00:00:06', '', '', '0', NULL, '0', 0, 0, 0),
(788, 8, 'user', '0', NULL, '0', NULL, '0', NULL, 'profile_picture', NULL, '2019-10-18 18:47:49', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', 0, 0, 0),
(790, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-18 21:10:09', '', 'me', '2019_10_18_002.mid Uploaded from QRSC0519000016 46 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(791, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-10-27 15:18:18', '', 'me', '2019_10_27_001.mid Uploaded from QRSC0519000016 1777 Notes Played Total Time: 00:01:00', '', '', '0', NULL, '0', 0, 0, 0),
(792, 11, 'user', '0', NULL, '0', NULL, '0', NULL, 'profile_picture', NULL, '2019-11-06 15:21:28', NULL, 'public', NULL, NULL, NULL, '0', NULL, '0', 0, 0, 0),
(793, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-12 16:40:57', '', 'me', 'Yes-tom1.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(794, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-12 16:43:59', '', 'me', '2019_11_12_001.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(795, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-12 16:48:10', '', 'me', '2019_11_12_002.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(796, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-12 16:55:35', '', 'me', '2019_11_12_003.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(797, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-12 16:57:46', '', 'me', '2019_11_12_004.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(798, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-12 17:33:34', '', 'me', '2019_11_12_005.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(799, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-12 17:39:13', '', 'me', '2019_11_12_006.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(800, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-12 17:41:26', '', 'me', '2019_11_12_007.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(801, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-12 17:42:03', '', 'me', '2019_11_12_008.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(802, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-12 17:42:16', '', 'me', '2019_11_12_009.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(803, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-12 17:42:47', '', 'me', '2019_11_12_010.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(804, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-12 17:43:21', '', 'me', '2019_11_12_011.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(805, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-12 17:45:44', '', 'me', '2019_11_12_012.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(806, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-12 17:46:39', '', 'me', '2019_11_12_013.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(807, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-12 17:46:54', '', 'me', '2019_11_12_014.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(808, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-12 17:47:45', '', 'me', '2019_11_12_015.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(809, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-12 17:48:53', '', 'me', '2019_11_12_016.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(810, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-12 17:50:18', '', 'me', '2019_11_12_017.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(811, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-12 17:51:09', '', 'me', '2019_11_12_018.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(812, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-12 18:46:16', '', 'me', '2019_11_12_019.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(813, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-12 18:49:45', '', 'me', '2019_11_12_020.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(814, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-12 18:54:12', '', 'me', '2019_11_12_021.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(815, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-12 20:05:20', '', 'me', '2019_11_12_001.mid Uploaded from QRSC0519000016 9492 Notes Played Total Time: 00:23:09', '', '', '0', NULL, '0', 0, 0, 0),
(816, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-13 16:48:24', '', 'me', '2019_11_13_001.flac Uploaded from QRSC1119000027', '', '', '0', NULL, '0', 0, 0, 0),
(817, 13, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-15 18:09:30', '', 'me', '2019_11_15_001.flac Uploaded from QRSC1119000027', '', '', '0', NULL, '0', 0, 0, 0),
(819, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-19 14:48:35', '', 'me', '2019_11_19_001.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(820, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-19 15:12:07', '', 'me', '2019_11_19_002.mid Uploaded from QRSC0819807003 18 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(821, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-19 15:12:45', '', 'me', '2019_11_19_003.mid Uploaded from QRSC0819807003 9 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(822, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-19 15:15:32', '', 'me', '2019_11_19_004.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(823, 11, 'user', '0', 0, '0', 0, '0', 0, '', NULL, '2019-11-19 21:15:43', '', 'friends', 'hey todd', '', '', '0', NULL, '0', 0, 0, 0),
(824, 1, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-20 14:12:54', '', 'me', 'Test-chromatic-velocity-127.mid Uploaded from QRSC1119000034 159 Notes Played Total Time: 00:00:19.938', '', '', '0', NULL, '0', 0, 0, 0),
(825, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-20 15:40:23', '', 'me', '2019_11_20_001.mid Uploaded from QRSC0819807003 32 Notes Played Total Time: 00:00:08', '', '', '0', NULL, '0', 0, 0, 0),
(826, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-25 14:16:00', '', 'me', '2019_11_25_001.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(827, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-25 15:30:08', '', 'me', '2019_11_25_002.mid Uploaded from QRSC0819807003 67 Notes Played Total Time: 00:00:09', '', '', '0', NULL, '0', 0, 0, 0),
(828, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-25 15:39:18', '', 'me', '2019_11_25_003.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(829, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-25 16:28:20', '', 'me', '2019_11_25_004.flac Uploaded from QRSC0819807003', '', '', '0', NULL, '0', 0, 0, 0),
(830, 4, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-25 17:03:00', '', 'me', '2019_11_25_003.mid Uploaded from QRSC1119000013 12 Notes Played Total Time: 00:00:06', '', '', '0', NULL, '0', 0, 0, 0),
(831, 4, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-25 17:04:10', '', 'me', '2019_11_25_004.mid Uploaded from QRSC1119000013 8 Notes Played Total Time: 00:00:00', '', '', '0', NULL, '0', 0, 0, 0),
(832, 4, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-25 17:05:32', '', 'me', '2019_11_25_005.mid Uploaded from QRSC1119000013 9 Notes Played Total Time: 00:00:01', '', '', '0', NULL, '0', 0, 0, 0),
(833, 4, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-25 17:05:38', '', 'me', '2019_11_25_006.mid Uploaded from QRSC1119000013 15 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(834, 4, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-25 17:07:38', '', 'me', '2019_11_25_007.mid Uploaded from QRSC1119000013 158 Notes Played Total Time: 00:01:49', '', '', '0', NULL, '0', 0, 0, 0),
(835, 4, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-25 17:08:49', '', 'me', '2019_11_25_008.mid Uploaded from QRSC1119000013 34 Notes Played Total Time: 00:00:42', '', '', '0', NULL, '0', 0, 0, 0),
(836, 4, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-25 17:09:03', '', 'me', '2019_11_25_009.mid Uploaded from QRSC1119000013 13 Notes Played Total Time: 00:00:14', '', '', '0', NULL, '0', 0, 0, 0),
(837, 4, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-25 17:09:14', '', 'me', '2019_11_25_010.mid Uploaded from QRSC1119000013 5 Notes Played Total Time: 00:00:09', '', '', '0', NULL, '0', 0, 0, 0),
(838, 4, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-25 17:15:09', '', 'me', '2019_11_25_011.mid Uploaded from QRSC1119000013 7 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(839, 4, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-25 17:15:12', '', 'me', '2019_11_25_012.mid Uploaded from QRSC1119000013 3 Notes Played Total Time: 00:00:00', '', '', '0', NULL, '0', 0, 0, 0),
(840, 4, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-25 17:15:22', '', 'me', '2019_11_25_013.mid Uploaded from QRSC1119000013 3 Notes Played Total Time: 00:00:00', '', '', '0', NULL, '0', 0, 0, 0),
(841, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-11-25 17:44:30', '', 'me', '2019_11_25_005.mid Uploaded from QRSC0819807003 22 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(842, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 15:55:34', '', 'me', '2019_12_5_001.mid Uploaded from QRSC1119000024 441 Notes Played Total Time: 00:00:40', '', '', '0', NULL, '0', 0, 0, 0),
(843, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 16:07:14', '', 'me', '2019_12_5_002.mid Uploaded from QRSC1119000024 12 Notes Played Total Time: 00:00:01', '', '', '0', NULL, '0', 0, 0, 0),
(844, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 16:08:37', '', 'me', '2019_12_5_003.mid Uploaded from QRSC1119000024 137 Notes Played Total Time: 00:00:16', '', '', '0', NULL, '0', 0, 0, 0),
(845, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 16:17:41', '', 'me', '2019_12_5_004.mid Uploaded from QRSC1119000024 645 Notes Played Total Time: 00:03:03', '', '', '0', NULL, '0', 0, 0, 0),
(846, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 16:18:44', '', 'me', '2019_12_5_005.mid Uploaded from QRSC1119000024 170 Notes Played Total Time: 00:00:58', '', '', '0', NULL, '0', 0, 0, 0),
(847, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 17:58:07', '', 'me', '2019_12_5_006.mid Uploaded from QRSC1119000024 853 Notes Played Total Time: 00:02:28', '', '', '0', NULL, '0', 0, 0, 0),
(848, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 19:02:30', '', 'me', '2019_12_5_007.mid Uploaded from QRSC1119000024 675 Notes Played Total Time: 00:01:54', '', '', '0', NULL, '0', 0, 0, 0),
(849, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 19:04:51', '', 'me', '2019_12_5_008.mid Uploaded from QRSC1119000024 278 Notes Played Total Time: 00:00:58', '', '', '0', NULL, '0', 0, 0, 0),
(850, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 19:05:29', '', 'me', '2019_12_5_009.mid Uploaded from QRSC1119000024 76 Notes Played Total Time: 00:00:18', '', '', '0', NULL, '0', 0, 0, 0),
(851, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 19:06:04', '', 'me', '2019_12_5_010.mid Uploaded from QRSC1119000024 18 Notes Played Total Time: 00:00:08', '', '', '0', NULL, '0', 0, 0, 0),
(852, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 19:06:52', '', 'me', '2019_12_5_011.mid Uploaded from QRSC1119000024 66 Notes Played Total Time: 00:00:16', '', '', '0', NULL, '0', 0, 0, 0),
(853, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 19:14:21', '', 'me', '2019_12_5_012.mid Uploaded from QRSC1119000024 1077 Notes Played Total Time: 00:03:16', '', '', '0', NULL, '0', 0, 0, 0),
(854, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 19:15:14', '', 'me', '2019_12_5_013.mid Uploaded from QRSC1119000024 492 Notes Played Total Time: 00:00:55', '', '', '0', NULL, '0', 0, 0, 0),
(855, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 19:16:08', '', 'me', '2019_12_5_014.mid Uploaded from QRSC1119000024 434 Notes Played Total Time: 00:00:45', '', '', '0', NULL, '0', 0, 0, 0),
(856, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 19:17:22', '', 'me', '2019_12_5_015.mid Uploaded from QRSC1119000024 28 Notes Played Total Time: 00:00:28', '', '', '0', NULL, '0', 0, 0, 0),
(857, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 19:19:07', '', 'me', '2019_12_5_016.mid Uploaded from QRSC1119000024 102 Notes Played Total Time: 00:01:41', '', '', '0', NULL, '0', 0, 0, 0),
(858, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 19:19:40', '', 'me', '2019_12_5_017.mid Uploaded from QRSC1119000024 41 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(859, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 19:26:56', '', 'me', '2019_12_5_018.mid Uploaded from QRSC1119000024 192 Notes Played Total Time: 00:00:16', '', '', '0', NULL, '0', 0, 0, 0),
(860, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 19:28:33', '', 'me', '2019_12_5_019.mid Uploaded from QRSC1119000024 1790 Notes Played Total Time: 00:01:27', '', '', '0', NULL, '0', 0, 0, 0),
(861, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 19:28:58', '', 'me', '2019_12_5_020.mid Uploaded from QRSC1119000024 37 Notes Played Total Time: 00:00:04', '', '', '0', NULL, '0', 0, 0, 0),
(862, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 19:32:10', '', 'me', '2019_12_5_021.mid Uploaded from QRSC1119000024 14 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(863, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 19:42:19', '', 'me', '2019_12_5_022.mid Uploaded from QRSC1119000024 50 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(864, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 19:44:26', '', 'me', '2019_12_5_023.mid Uploaded from QRSC1119000024 106 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(865, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 19:48:50', '', 'me', '2019_12_5_024.mid Uploaded from QRSC1119000024 1017 Notes Played Total Time: 00:01:05', '', '', '0', NULL, '0', 0, 0, 0),
(866, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 19:55:51', '', 'me', '2019_12_5_025.mid Uploaded from QRSC1119000024 274 Notes Played Total Time: 00:00:26', '', '', '0', NULL, '0', 0, 0, 0),
(867, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 19:57:14', '', 'me', '2019_12_5_026.mid Uploaded from QRSC1119000024 507 Notes Played Total Time: 00:00:44', '', '', '0', NULL, '0', 0, 0, 0),
(868, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 19:57:45', '', 'me', '2019_12_5_027.mid Uploaded from QRSC1119000024 110 Notes Played Total Time: 00:00:08', '', '', '0', NULL, '0', 0, 0, 0),
(869, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 19:58:21', '', 'me', '2019_12_5_028.mid Uploaded from QRSC1119000024 98 Notes Played Total Time: 00:00:07', '', '', '0', NULL, '0', 0, 0, 0),
(870, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 19:58:54', '', 'me', '2019_12_5_029.mid Uploaded from QRSC1119000024 80 Notes Played Total Time: 00:00:06', '', '', '0', NULL, '0', 0, 0, 0),
(871, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 20:00:43', '', 'me', '2019_12_5_030.mid Uploaded from QRSC1119000024 370 Notes Played Total Time: 00:00:31', '', '', '0', NULL, '0', 0, 0, 0),
(872, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 20:01:02', '', 'me', '2019_12_5_031.mid Uploaded from QRSC1119000024 126 Notes Played Total Time: 00:00:10', '', '', '0', NULL, '0', 0, 0, 0),
(873, 15, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-05 20:04:38', '', 'me', '2019_12_5_032.mid Uploaded from QRSC1119000024 1565 Notes Played Total Time: 00:02:09', '', '', '0', NULL, '0', 0, 0, 0),
(874, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-11 15:28:33', '', 'me', '2019_12_11_001.mid Uploaded from QRSC0819807003 58 Notes Played Total Time: 00:00:03', '', '', '0', NULL, '0', 0, 0, 0),
(875, 17, 'user', '0', 0, '0', 0, '0', 0, 'link', NULL, '2019-12-13 08:21:26', '', 'friends', 'Gf-machine provide complete freeze drying solutions for all kinds of products.\nAll GUANFENG #vegetableprocessingmachine, #lyophilizationequipment and food processing lines are completely made of SUS304 stainless steel and manufactured to ISO and CE food processing industry standards.\nhttps://www.gf-machine.com/\n', '', '', '0', NULL, '0', 0, 0, 0),
(876, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-13 17:55:05', '', 'me', '2019_12_13_001.mid Uploaded from QRSC0819807003 2 Notes Played Total Time: 00:00:00', '', '', '0', NULL, '0', 0, 0, 0),
(877, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-13 17:55:09', '', 'me', '2019_12_13_002.mid Uploaded from QRSC0819807003 6 Notes Played Total Time: 00:00:01', '', '', '0', NULL, '0', 0, 0, 0),
(878, 20, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-13 18:55:44', '', 'me', '2019_12_13_001.mid Uploaded from QRSC1119000046 12 Notes Played Total Time: 00:00:00', '', '', '0', NULL, '0', 0, 0, 0),
(879, 20, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-13 18:55:48', '', 'me', '2019_12_13_001.mid Uploaded from QRSC1119000046 12 Notes Played Total Time: 00:00:00', '', '', '0', NULL, '0', 0, 0, 0),
(880, 20, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-13 18:56:16', '', 'me', '2019_12_13_002.mid Uploaded from QRSC1119000046 25 Notes Played Total Time: 00:00:04', '', '', '0', NULL, '0', 0, 0, 0),
(881, 19, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-13 19:02:02', '', 'me', '2019_12_13_001.mid Uploaded from QRSC1119000055 4 Notes Played Total Time: 00:00:01', '', '', '0', NULL, '0', 0, 0, 0),
(882, 18, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-13 19:06:11', '', 'me', '2019_12_13_001.mid Uploaded from QRSC1119000063 5 Notes Played Total Time: 00:00:02', '', '', '0', NULL, '0', 0, 0, 0),
(883, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-26 16:44:47', '', 'me', '2019_12_26_001.mid Uploaded from QRSC1119000009 582 Notes Played Total Time: 00:01:17', '', '', '0', NULL, '0', 0, 0, 0),
(884, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-26 18:16:21', '', 'me', '2019_12_26_002.mid Uploaded from QRSC1119000009 12317 Notes Played Total Time: 00:31:50', '', '', '0', NULL, '0', 0, 0, 0),
(885, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-26 18:48:10', '', 'me', '2019_12_26_003.mid Uploaded from QRSC1119000009 11706 Notes Played Total Time: 00:31:54', '', '', '0', NULL, '0', 0, 0, 0),
(886, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-26 19:20:01', '', 'me', '2019_12_26_004.mid Uploaded from QRSC1119000009 11971 Notes Played Total Time: 00:31:47', '', '', '0', NULL, '0', 0, 0, 0),
(887, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-26 19:51:50', '', 'me', '2019_12_26_005.mid Uploaded from QRSC1119000009 11992 Notes Played Total Time: 00:31:43', '', '', '0', NULL, '0', 0, 0, 0),
(888, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-26 20:23:38', '', 'me', '2019_12_26_006.mid Uploaded from QRSC1119000009 11995 Notes Played Total Time: 00:31:44', '', '', '0', NULL, '0', 0, 0, 0),
(889, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-26 20:55:24', '', 'me', '2019_12_26_007.mid Uploaded from QRSC1119000009 11894 Notes Played Total Time: 00:31:42', '', '', '0', NULL, '0', 0, 0, 0),
(890, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-26 21:27:09', '', 'me', '2019_12_26_008.mid Uploaded from QRSC1119000009 11953 Notes Played Total Time: 00:31:39', '', '', '0', NULL, '0', 0, 0, 0),
(891, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-26 21:58:37', '', 'me', '2019_12_26_009.mid Uploaded from QRSC1119000009 12198 Notes Played Total Time: 00:31:30', '', '', '0', NULL, '0', 0, 0, 0),
(892, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-26 22:30:11', '', 'me', '2019_12_26_010.mid Uploaded from QRSC1119000009 11588 Notes Played Total Time: 00:31:29', '', '', '0', NULL, '0', 0, 0, 0),
(893, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-26 23:01:44', '', 'me', '2019_12_26_011.mid Uploaded from QRSC1119000009 11864 Notes Played Total Time: 00:31:27', '', '', '0', NULL, '0', 0, 0, 0),
(894, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-26 23:33:07', '', 'me', '2019_12_26_012.mid Uploaded from QRSC1119000009 11830 Notes Played Total Time: 00:31:25', '', '', '0', NULL, '0', 0, 0, 0),
(895, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 00:04:34', '', 'me', '2019_12_27_001.mid Uploaded from QRSC1119000009 11870 Notes Played Total Time: 00:31:20', '', '', '0', NULL, '0', 0, 0, 0),
(896, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 00:36:10', '', 'me', '2019_12_27_002.mid Uploaded from QRSC1119000009 11495 Notes Played Total Time: 00:31:30', '', '', '0', NULL, '0', 0, 0, 0),
(897, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 01:07:18', '', 'me', '2019_12_27_003.mid Uploaded from QRSC1119000009 12216 Notes Played Total Time: 00:31:09', '', '', '0', NULL, '0', 0, 0, 0),
(898, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 01:38:31', '', 'me', '2019_12_27_004.mid Uploaded from QRSC1119000009 11901 Notes Played Total Time: 00:31:07', '', '', '0', NULL, '0', 0, 0, 0),
(899, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 02:09:35', '', 'me', '2019_12_27_005.mid Uploaded from QRSC1119000009 11677 Notes Played Total Time: 00:31:06', '', '', '0', NULL, '0', 0, 0, 0),
(900, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 02:40:43', '', 'me', '2019_12_27_006.mid Uploaded from QRSC1119000009 11451 Notes Played Total Time: 00:31:06', '', '', '0', NULL, '0', 0, 0, 0),
(901, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 03:31:27', '', 'me', '2019_12_27_008.mid Uploaded from QRSC1119000009 12161 Notes Played Total Time: 00:31:13', '', '', '0', NULL, '0', 0, 0, 0),
(902, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 04:02:36', '', 'me', '2019_12_27_009.mid Uploaded from QRSC1119000009 11488 Notes Played Total Time: 00:31:03', '', '', '0', NULL, '0', 0, 0, 0),
(903, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 04:33:51', '', 'me', '2019_12_27_010.mid Uploaded from QRSC1119000009 11723 Notes Played Total Time: 00:31:08', '', '', '0', NULL, '0', 0, 0, 0),
(904, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 05:05:04', '', 'me', '2019_12_27_011.mid Uploaded from QRSC1119000009 11840 Notes Played Total Time: 00:31:07', '', '', '0', NULL, '0', 0, 0, 0),
(905, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 05:36:23', '', 'me', '2019_12_27_012.mid Uploaded from QRSC1119000009 11777 Notes Played Total Time: 00:31:08', '', '', '0', NULL, '0', 0, 0, 0),
(906, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 06:07:27', '', 'me', '2019_12_27_013.mid Uploaded from QRSC1119000009 11259 Notes Played Total Time: 00:31:07', '', '', '0', NULL, '0', 0, 0, 0),
(907, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 06:38:47', '', 'me', '2019_12_27_014.mid Uploaded from QRSC1119000009 12230 Notes Played Total Time: 00:31:00', '', '', '0', NULL, '0', 0, 0, 0),
(908, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 07:09:32', '', 'me', '2019_12_27_015.mid Uploaded from QRSC1119000009 11509 Notes Played Total Time: 00:30:44', '', '', '0', NULL, '0', 0, 0, 0),
(909, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 07:40:20', '', 'me', '2019_12_27_016.mid Uploaded from QRSC1119000009 11702 Notes Played Total Time: 00:30:54', '', '', '0', NULL, '0', 0, 0, 0),
(910, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 08:11:06', '', 'me', '2019_12_27_017.mid Uploaded from QRSC1119000009 11591 Notes Played Total Time: 00:30:49', '', '', '0', NULL, '0', 0, 0, 0),
(911, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 08:41:57', '', 'me', '2019_12_27_018.mid Uploaded from QRSC1119000009 11468 Notes Played Total Time: 00:30:46', '', '', '0', NULL, '0', 0, 0, 0),
(912, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 09:12:54', '', 'me', '2019_12_27_019.mid Uploaded from QRSC1119000009 11638 Notes Played Total Time: 00:30:52', '', '', '0', NULL, '0', 0, 0, 0),
(913, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 09:43:27', '', 'me', '2019_12_27_020.mid Uploaded from QRSC1119000009 11605 Notes Played Total Time: 00:30:35', '', '', '0', NULL, '0', 0, 0, 0),
(914, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 10:14:04', '', 'me', '2019_12_27_021.mid Uploaded from QRSC1119000009 11653 Notes Played Total Time: 00:30:35', '', '', '0', NULL, '0', 0, 0, 0),
(915, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 10:44:36', '', 'me', '2019_12_27_022.mid Uploaded from QRSC1119000009 11075 Notes Played Total Time: 00:30:31', '', '', '0', NULL, '0', 0, 0, 0),
(916, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 11:15:17', '', 'me', '2019_12_27_023.mid Uploaded from QRSC1119000009 11841 Notes Played Total Time: 00:30:32', '', '', '0', NULL, '0', 0, 0, 0),
(917, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 11:45:41', '', 'me', '2019_12_27_024.mid Uploaded from QRSC1119000009 11586 Notes Played Total Time: 00:30:31', '', '', '0', NULL, '0', 0, 0, 0),
(918, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 12:16:25', '', 'me', '2019_12_27_025.mid Uploaded from QRSC1119000009 11341 Notes Played Total Time: 00:30:31', '', '', '0', NULL, '0', 0, 0, 0),
(919, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 12:46:57', '', 'me', '2019_12_27_026.mid Uploaded from QRSC1119000009 11927 Notes Played Total Time: 00:30:32', '', '', '0', NULL, '0', 0, 0, 0),
(920, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 13:17:40', '', 'me', '2019_12_27_027.mid Uploaded from QRSC1119000009 11332 Notes Played Total Time: 00:30:31', '', '', '0', NULL, '0', 0, 0, 0),
(921, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 13:48:11', '', 'me', '2019_12_27_028.mid Uploaded from QRSC1119000009 11354 Notes Played Total Time: 00:30:32', '', '', '0', NULL, '0', 0, 0, 0),
(922, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 14:18:53', '', 'me', '2019_12_27_029.mid Uploaded from QRSC1119000009 11720 Notes Played Total Time: 00:30:32', '', '', '0', NULL, '0', 0, 0, 0),
(923, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 14:49:24', '', 'me', '2019_12_27_030.mid Uploaded from QRSC1119000009 11402 Notes Played Total Time: 00:30:30', '', '', '0', NULL, '0', 0, 0, 0),
(924, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 15:19:58', '', 'me', '2019_12_27_031.mid Uploaded from QRSC1119000009 11505 Notes Played Total Time: 00:30:31', '', '', '0', NULL, '0', 0, 0, 0),
(925, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 15:50:20', '', 'me', '2019_12_27_032.mid Uploaded from QRSC1119000009 11424 Notes Played Total Time: 00:30:22', '', '', '0', NULL, '0', 0, 0, 0),
(926, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 16:20:37', '', 'me', '2019_12_27_033.mid Uploaded from QRSC1119000009 11129 Notes Played Total Time: 00:30:13', '', '', '0', NULL, '0', 0, 0, 0),
(927, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 16:50:53', '', 'me', '2019_12_27_034.mid Uploaded from QRSC1119000009 11824 Notes Played Total Time: 00:30:13', '', '', '0', NULL, '0', 0, 0, 0),
(928, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 17:21:15', '', 'me', '2019_12_27_035.mid Uploaded from QRSC1119000009 11450 Notes Played Total Time: 00:30:16', '', '', '0', NULL, '0', 0, 0, 0),
(929, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-27 17:51:19', '', 'me', '2019_12_27_036.mid Uploaded from QRSC1119000009 11315 Notes Played Total Time: 00:30:03', '', '', '0', NULL, '0', 0, 0, 0),
(930, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-30 15:42:33', '', 'me', '2019_12_30_001.mid Uploaded from QRSC1119000009 16914 Notes Played Total Time: 00:27:14', '', '', '0', NULL, '0', 0, 0, 0),
(931, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-30 15:43:35', '', 'me', '2019_12_30_002.mid Uploaded from QRSC1119000009 21 Notes Played Total Time: 00:00:04', '', '', '0', NULL, '0', 0, 0, 0),
(932, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-31 19:33:58', '', 'me', '2019_12_31_001.mid Uploaded from QRSC1119000009 12091 Notes Played Total Time: 00:31:49', '', '', '0', NULL, '0', 0, 0, 0),
(933, 8, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-31 19:54:35', '', 'me', '2019_12_31_002.mid Uploaded from QRSC1119000009 499 Notes Played Total Time: 00:00:29', '', '', '0', NULL, '0', 0, 0, 0),
(934, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-31 20:19:44', '', 'friends', '2019_12_31_003.mid Uploaded from QRSC1119000009 12846 Notes Played Total Time: 00:23:52', '', '', '0', NULL, '0', 0, 0, 0),
(935, 2, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2019-12-31 20:21:13', '', 'friends', '2019_12_31_004.mid Uploaded from QRSC1119000009 91 Notes Played Total Time: 00:01:24', '', '', '0', NULL, '0', 1, 1, 0),
(936, 24, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2020-01-03 00:02:34', '', 'me', '2020_1_3_001.mid Uploaded from QRSC1119000044 29 Notes Played Total Time: 00:00:02', '', '', '0', NULL, '0', 0, 0, 0),
(937, 24, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2020-01-03 00:02:51', '', 'me', '2020_1_3_002.mid Uploaded from QRSC1119000044 55 Notes Played Total Time: 00:00:02', '', '', '0', NULL, '0', 0, 0, 0),
(938, 24, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2020-01-03 11:38:07', '', 'me', '2020_1_3_003.mid Uploaded from QRSC1119000044 28 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(939, 24, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2020-01-03 14:05:43', '', 'me', '2020_1_3_004.mid Uploaded from QRSC1119000044 10 Notes Played Total Time: 00:00:05', '', '', '0', NULL, '0', 0, 0, 0),
(940, 24, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2020-01-03 14:12:16', '', 'me', '2020_1_3_005.mid Uploaded from QRSC1119000044 2 Notes Played Total Time: 00:00:01', '', '', '0', NULL, '0', 0, 0, 0),
(941, 24, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2020-01-03 14:12:28', '', 'me', '2020_1_3_006.mid Uploaded from QRSC1119000044 5 Notes Played Total Time: 00:00:02', '', '', '0', NULL, '0', 0, 0, 0),
(942, 24, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2020-01-04 18:22:16', '', 'me', '2020_1_4_001.mid Uploaded from QRSC1119000044 86 Notes Played Total Time: 00:00:11', '', '', '0', NULL, '0', 0, 0, 0),
(943, 22, 'user', '0', 0, '0', 0, '0', 0, 'audio', NULL, '2020-01-14 23:44:58', '', 'me', '2020_1_14_001.mid Uploaded from QRSC1119000029 4 Notes Played Total Time: 00:00:00', '', '', '0', NULL, '0', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts_articles`
--

CREATE TABLE `posts_articles` (
  `article_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `text` longtext COLLATE utf8mb4_bin NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `tags` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_audios`
--

CREATE TABLE `posts_audios` (
  `audio_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `posts_audios`
--

INSERT INTO `posts_audios` (`audio_id`, `post_id`, `source`) VALUES
(145, 158, 'user_uploads/2/audio/2019/05/qrs-connect_2c23f2792f36252c8ead63f2b8e4a9d0.mid|user_uploads/2/audio/2019/05/qrs-connect_7382b380d4a1e21601538d5c774f9cd1.json'),
(146, 159, 'user_uploads/2/audio/2019/05/qrs-connect_25650859946768f26a8b5bfa6a3c9e25.mid|user_uploads/2/audio/2019/05/qrs-connect_7d16323033481e58e4f33ea10cb589d2.json'),
(110, 123, 'user_uploads/2/audio/2019/05/qrs-connect_2d5a5af6ad23c90aab22f12a6bfc7cbe.flac'),
(7, 17, ''),
(82, 93, 'user_uploads/2/audio/2019/05/qrs-connect_2940441736da7c5578f7d7a40c1e651a.flac|user_uploads/2/audio/2019/05/qrs-connect_dc9c704c664305b64d93df584035c4a1.mid|user_uploads/2/audio/2019/05/qrs-connect_2eaa91044d3c3f4a9f43268d21f32132.json'),
(83, 94, 'user_uploads/2/audio/2019/05/qrs-connect_b36a800b2469bec49757046fac02bba4.flac|user_uploads/2/audio/2019/05/qrs-connect_b2cc3b0e5318ec64564633f0e818da08.mid|user_uploads/2/audio/2019/05/qrs-connect_5632247a623e345da7ffad6c15b50009.json'),
(141, 154, 'user_uploads/2/audio/2019/05/qrs-connect_534742a5f3103673e7fef679601f1aa0.mid|user_uploads/2/audio/2019/05/qrs-connect_1c8c2c466bfb2cc22b6e709f7a7e443a.json'),
(102, 115, 'user_uploads/2/audio/2019/05/qrs-connect_8d1724bca20eaa7203d5411d04c1eb93.mid'),
(103, 116, 'user_uploads/2/audio/2019/05/qrs-connect_cc0371527e5923e730abebc4afc35f22.mid'),
(96, 109, 'user_uploads/2/audio/2019/05/qrs-connect_97e12f386e5a1cfa0654c1aaf70ec4bc.mid|user_uploads/2/audio/2019/05/qrs-connect_c3837938f1548869d782a4d2556004c3.json'),
(87, 100, 'user_uploads/2/audio/2019/05/qrs-connect_0dbcb8b1bd276e5b0dcbcbf43e40f717.flac'),
(99, 112, 'user_uploads/2/audio/2019/05/qrs-connect_b51ed5701743fa2e10191df162e40860.flac|user_uploads/2/audio/2019/05/qrs-connect_3e183940558a03d2ef35bc814f1626c3.mid|user_uploads/2/audio/2019/05/qrs-connect_a948d7f90f3e032173ad6ada8e42c142.json'),
(104, 117, 'user_uploads/2/audio/2019/05/qrs-connect_e26ebd1a31561380e20969be82047967.mid'),
(105, 118, 'user_uploads/2/audio/2019/05/qrs-connect_ff8aa433025aeef43daf91dc5b2aa432.mid|user_uploads/2/audio/2019/05/qrs-connect_957bcce26f877f2bbf1deadc88954118.json'),
(139, 152, 'user_uploads/2/audio/2019/05/qrs-connect_eb9b5752a5e7683e6a711564b7988af6.mid|user_uploads/2/audio/2019/05/qrs-connect_567437511e1b0fe6f7c8720f25f27475.json'),
(142, 155, 'user_uploads/2/audio/2019/05/qrs-connect_968dc273534eec9c7e5b777171cfeb41.mid|user_uploads/2/audio/2019/05/qrs-connect_9a8c98b983b067aee8cc9dfad2a9434e.json'),
(143, 156, 'user_uploads/2/audio/2019/05/qrs-connect_6d03d1a1c560659e08aed0f1e39e6199.mid|user_uploads/2/audio/2019/05/qrs-connect_ebb31a1c33c5ee39b016db6196798916.json'),
(144, 157, 'user_uploads/2/audio/2019/05/qrs-connect_f29cb0ad940e02ef87e67b291d728588.mid|user_uploads/2/audio/2019/05/qrs-connect_cd68945b9437fc1373a55220c558f996.json'),
(68, 79, 'user_uploads/2/audio/2019/05/qrs-connect_ae98ad7d8fc76580271b644b27c6593f.flac'),
(148, 161, 'user_uploads/2/audio/2019/05/qrs-connect_795eac4b3e4547cd6021deea3cae95fc.mid|user_uploads/2/audio/2019/05/qrs-connect_66f03b39e2f1a35507a2a948dcfb95b6.json'),
(149, 162, 'user_uploads/2/audio/2019/05/qrs-connect_eb4dfa02feb6217e13e2ad05105a9e56.mid|user_uploads/2/audio/2019/05/qrs-connect_c9276fec5d62a3f43725469f39e74a18.json'),
(116, 129, 'user_uploads/2/audio/2019/05/qrs-connect_3efb7d9f6625c84577050c452d5a8c05.mid|user_uploads/2/audio/2019/05/qrs-connect_0712b6aecfe801c95e2d5b8f60643c96.json'),
(147, 160, 'user_uploads/2/audio/2019/05/qrs-connect_eca81ac88dcb802c2bdc75cc5e72436c.mid|user_uploads/2/audio/2019/05/qrs-connect_99ca012a66c6ad716d557367b1220d00.json'),
(150, 163, 'user_uploads/2/audio/2019/05/qrs-connect_7a603e066bd7e4c7fd9eaced40941924.mid|user_uploads/2/audio/2019/05/qrs-connect_ca404ccbebf31b95f78079626b8ab82a.json'),
(151, 164, 'user_uploads/2/audio/2019/05/qrs-connect_6aa4f174f41051509ca5aa571ba0c97f.mid|user_uploads/2/audio/2019/05/qrs-connect_698dbbab820daeaa2ea425b4e31609c7.json'),
(152, 165, 'user_uploads/2/audio/2019/05/qrs-connect_b9220e5d450b6309c0148e1277ee60e4.mid|user_uploads/2/audio/2019/05/qrs-connect_3a02b3115dfa0c1279ae2eebfb456c5f.json'),
(153, 166, 'user_uploads/2/audio/2019/05/qrs-connect_089a2da2c8ef27240648814fad4c20ed.mid|user_uploads/2/audio/2019/05/qrs-connect_3afe78ad8f3cb672f66a063a3e903330.json'),
(154, 167, 'user_uploads/2/audio/2019/05/qrs-connect_fd25245da008e29a24fb9008ff1912ae.mid|user_uploads/2/audio/2019/05/qrs-connect_cfc425b02e5e3721443573564ccdd163.json'),
(155, 168, 'user_uploads/2/audio/2019/05/qrs-connect_9dcc8ced1b82773fd4d1c9d3119e7444.mid|user_uploads/2/audio/2019/05/qrs-connect_b0e6e18b5ed91c004da2c49a0b4f699e.json'),
(156, 169, 'user_uploads/2/audio/2019/05/qrs-connect_2a724d517471cd3d6fb3a84a662b829a.mid|user_uploads/2/audio/2019/05/qrs-connect_25e6ed8f4fb30a153e9dccb490c32e18.json'),
(157, 170, 'user_uploads/2/audio/2019/05/qrs-connect_6a5bcc98ed5bcbb099364ed48501ea8f.mid|user_uploads/2/audio/2019/05/qrs-connect_7c26e9e416a280b9807203114b57f3b1.json'),
(158, 171, 'user_uploads/2/audio/2019/05/qrs-connect_f9c763ee1c0b2910d3cc8712840a7213.mid|user_uploads/2/audio/2019/05/qrs-connect_f7b3d3737699d44bb55336513e848bf0.json'),
(159, 172, 'user_uploads/2/audio/2019/05/qrs-connect_1b254b89d2ad46b0e8eb07ffb15144a5.mid|user_uploads/2/audio/2019/05/qrs-connect_3c2f723355a27201863244994e989df8.json'),
(140, 153, 'user_uploads/2/audio/2019/05/qrs-connect_e620c627f6ff1171ac627cd5dd93ff23.mid|user_uploads/2/audio/2019/05/qrs-connect_7408cd4c8bbd7ad13d0f530bb4c0de67.json'),
(160, 173, 'user_uploads/2/audio/2019/05/qrs-connect_0bd62df88b5793a71cef733782af8f7a.mid|user_uploads/2/audio/2019/05/qrs-connect_74a9cf2b29e12c78e2e4441373033277.json'),
(163, 176, 'user_uploads/2/audio/2019/05/qrs-connect_2bba6df186d598e0302fc6d23cbe2c28.mid|user_uploads/2/audio/2019/05/qrs-connect_f0586216eed26ae2203d2e4d491d9ca9.json'),
(164, 177, 'user_uploads/2/audio/2019/05/qrs-connect_7384466ca8bcf4c3416611f70dfaacac.mid|user_uploads/2/audio/2019/05/qrs-connect_4849aa04ae4a2918e19fec3f5ae6775a.json'),
(165, 178, 'user_uploads/2/audio/2019/05/qrs-connect_d520446dccfa948eb823be54de012d5b.mid|user_uploads/2/audio/2019/05/qrs-connect_a6f5de90122599762b0c47361d343aea.json'),
(166, 179, 'user_uploads/2/audio/2019/05/qrs-connect_48b1ba9d22b10be208ca941aa9a1d3c7.mid|user_uploads/2/audio/2019/05/qrs-connect_6cf9a6c2fc31a67c828931cbae6bba3d.json'),
(167, 180, 'user_uploads/2/audio/2019/05/qrs-connect_29af2b63eba40fc155369767e4b830a5.mid|user_uploads/2/audio/2019/05/qrs-connect_d3286ea174c9e8095f32e6672d747b7e.json'),
(168, 181, 'user_uploads/2/audio/2019/05/qrs-connect_32f66dea9f7e2c2c72e792cafce0bb6a.mid|user_uploads/2/audio/2019/05/qrs-connect_eb43a604602af3ec217f08720f0ab2f4.json'),
(169, 182, 'user_uploads/2/audio/2019/05/qrs-connect_0e7da37dd7a61b392987c8cf6d8da9eb.mid|user_uploads/2/audio/2019/05/qrs-connect_e09c0fd44d3a051f2902e9deeec41051.json'),
(170, 183, 'user_uploads/2/audio/2019/05/qrs-connect_bdfc83f157075ff235eaa90acf5657f0.mid|user_uploads/2/audio/2019/05/qrs-connect_523b2a5bdef8c2225e6d1279edf0d060.json'),
(171, 184, 'user_uploads/2/audio/2019/05/qrs-connect_21712dc3e969f4305fb780aef2bd3517.mid|user_uploads/2/audio/2019/05/qrs-connect_d4ed8bfa79ce6a5de74d766e5053d2b0.json'),
(172, 185, 'user_uploads/2/audio/2019/05/qrs-connect_ca5f81fb15aac3f043876e62be24dd2e.mid|user_uploads/2/audio/2019/05/qrs-connect_005df98465a7b09f288165ffff489788.json'),
(173, 186, 'user_uploads/2/audio/2019/05/qrs-connect_8f9819ebb1dd31b6cb4dca7a2d616642.mid|user_uploads/2/audio/2019/05/qrs-connect_24769b4937a8af846eba95e3c3537df4.json'),
(174, 187, 'user_uploads/2/audio/2019/05/qrs-connect_bc7ad035405038ac2da900149dea9a44.mid|user_uploads/2/audio/2019/05/qrs-connect_f5c9bf44d1d1b8e96325b10e334202f7.json'),
(175, 188, 'user_uploads/2/audio/2019/05/qrs-connect_f8fd0cd1ac1e40224adbb961653cfcb0.mid|user_uploads/2/audio/2019/05/qrs-connect_5d82c26727a09cb0725be5ea6f89c8b8.json'),
(176, 189, 'user_uploads/2/audio/2019/05/qrs-connect_8af0ec21a2c82278fccd221429cadd2d.mid|user_uploads/2/audio/2019/05/qrs-connect_e90ac33b815a0365fd37a6c6a6dd3c93.json'),
(177, 190, 'user_uploads/2/audio/2019/05/qrs-connect_8d365c49b990755b453c4ec09089aa32.mid|user_uploads/2/audio/2019/05/qrs-connect_ba300b466b4790cc2f52fd56e8d7850f.json'),
(178, 191, 'user_uploads/2/audio/2019/05/qrs-connect_51492c9d800421402ef6c6eaebc755a4.mid|user_uploads/2/audio/2019/05/qrs-connect_a01cb940a7e64a1e9fa8bb1dd463ad04.json'),
(179, 192, 'user_uploads/2/audio/2019/05/qrs-connect_d4d9b3547eaa48becec75992950c46ee.mid|user_uploads/2/audio/2019/05/qrs-connect_41a3217169f01eb9bca258b098e772f2.json'),
(180, 193, 'user_uploads/2/audio/2019/05/qrs-connect_fc48f6db1e593036481e4c7be8a476ed.mid|user_uploads/2/audio/2019/05/qrs-connect_713cae3b9bfed83113401e544a635c3b.json'),
(181, 194, 'user_uploads/2/audio/2019/05/qrs-connect_e4a2aedb7566a135d05c85d933d6b3f8.mid|user_uploads/2/audio/2019/05/qrs-connect_e6e9b715007feef70979be9502084326.json'),
(182, 195, 'user_uploads/2/audio/2019/05/qrs-connect_a5bed29670ddfde7d1031911c6500160.mid|user_uploads/2/audio/2019/05/qrs-connect_643eba33b9c0cf63464d0c4074ff1f20.json'),
(183, 196, 'user_uploads/2/audio/2019/05/qrs-connect_9eaa7975b067ab3f2f385d24b9f38bbb.mid|user_uploads/2/audio/2019/05/qrs-connect_cb43d95d6bf5e0cbaf76c413ba367ef3.json'),
(184, 197, 'user_uploads/2/audio/2019/05/qrs-connect_3aa50fe1c58f471833a4716bfd393155.mid|user_uploads/2/audio/2019/05/qrs-connect_900254965d04b4314bdf17a6c6b31826.json'),
(185, 198, 'user_uploads/2/audio/2019/05/qrs-connect_d409500d96adff733fc76398edfe4466.mid|user_uploads/2/audio/2019/05/qrs-connect_f51587c0474f5dd6f86203b192eda95b.json'),
(186, 199, 'user_uploads/2/audio/2019/05/qrs-connect_c8341f386d6feae6bcf2faa99257e252.mid|user_uploads/2/audio/2019/05/qrs-connect_886f4eb15f0ac7b67eba95aac45dab72.json'),
(187, 200, 'user_uploads/2/audio/2019/05/qrs-connect_4ce31257ca0c948b5dc624ae888f52b3.mid|user_uploads/2/audio/2019/05/qrs-connect_5f04f91f74459b845f5f6ff4eb75da5d.json'),
(188, 201, 'user_uploads/2/audio/2019/05/qrs-connect_75c12d0f0cc1bb7b3d022a8499e54f14.mid|user_uploads/2/audio/2019/05/qrs-connect_2d4e722a84150c9456db335080dcddda.json'),
(189, 202, 'user_uploads/2/audio/2019/05/qrs-connect_187146b94f2f0214a86a7c6f900e9924.mid|user_uploads/2/audio/2019/05/qrs-connect_c972782ed36221f5e39fa8dfcb188fb2.json'),
(190, 203, 'user_uploads/2/audio/2019/05/qrs-connect_4a9bca0e4a601514242d8504db5b3e7a.mid|user_uploads/2/audio/2019/05/qrs-connect_9360bf8a2896752714332e6055edb0fa.json'),
(191, 204, 'user_uploads/2/audio/2019/05/qrs-connect_ae52f759a99bbffa245aca7b2a6cd9cd.mid|user_uploads/2/audio/2019/05/qrs-connect_f27c816fbf9beb0c58e19c1aedd8ebf3.json'),
(192, 205, 'user_uploads/2/audio/2019/05/qrs-connect_b4cf2681224c11591615a8348ef877c2.mid|user_uploads/2/audio/2019/05/qrs-connect_a835ba29c585f0020894d89052672963.json'),
(193, 206, 'user_uploads/2/audio/2019/05/qrs-connect_c6b4d4bea7d766cd0372cb48e7d008f8.mid|user_uploads/2/audio/2019/05/qrs-connect_2811c65cc1efd3103e0833c266112703.json'),
(194, 207, 'user_uploads/2/audio/2019/05/qrs-connect_1aea1dbc4f8eea9b91b8c8929bf285eb.mid|user_uploads/2/audio/2019/05/qrs-connect_e37ceae248d43666e457a995bb897072.json'),
(195, 208, 'user_uploads/2/audio/2019/05/qrs-connect_c760ab6e29b5de85f9ccbd695b79086a.mid|user_uploads/2/audio/2019/05/qrs-connect_7961e9f1036d48e9111aa08ddc8659d5.json'),
(196, 209, 'user_uploads/2/audio/2019/05/qrs-connect_9a483fc9fe2569586ea094b70e96943f.mid|user_uploads/2/audio/2019/05/qrs-connect_4c7788538d294d0f8eb0454a3e8bd269.json'),
(197, 210, 'user_uploads/2/audio/2019/05/qrs-connect_648b7f53e2c1bab55f1a6d3ecfd07867.mid|user_uploads/2/audio/2019/05/qrs-connect_5d30a6cd8e2789bcc8a195b5f89f9404.json'),
(198, 211, 'user_uploads/2/audio/2019/05/qrs-connect_213f016545e28780b5ea7246d95d44cd.mid|user_uploads/2/audio/2019/05/qrs-connect_7ec4e17c486f1739526be9399d15b9f1.json'),
(199, 212, 'user_uploads/2/audio/2019/05/qrs-connect_b4fb71e3557de2a1775a77bc9cb2af33.mid|user_uploads/2/audio/2019/05/qrs-connect_b5afa67d3d5e46b4c113b6529e4613c0.json'),
(200, 213, 'user_uploads/2/audio/2019/06/qrs-connect_9c58789b99c6aa1c1ea64cfecdccb820.mid|user_uploads/2/audio/2019/06/qrs-connect_eda2a9d9813fc6f9622ccb3dd809aaf8.json'),
(201, 214, 'user_uploads/2/audio/2019/06/qrs-connect_3a8d2592c3fbb3936a934187fb4eea7b.mid|user_uploads/2/audio/2019/06/qrs-connect_daee85f5890bcd7f2684409263c3fd17.json'),
(206, 219, 'user_uploads/2/audio/2019/06/qrs-connect_3a226323deff7c983307085abca52fb5.mid|user_uploads/2/audio/2019/06/qrs-connect_d6cced93a84785b9714608cae7355ada.json'),
(205, 218, 'user_uploads/2/audio/2019/06/qrs-connect_b7acd7aca86c7765cfe64a188b3ddf32.mid|user_uploads/2/audio/2019/06/qrs-connect_28613df4bcd10c42e44f7e67373fffb9.json'),
(209, 222, 'user_uploads/2/audio/2019/06/qrs-connect_dff3745beec98d57293f5bcfa0ff7508.mid|user_uploads/2/audio/2019/06/qrs-connect_85ab2b8fe8928978b93c6ec4db8577fb.json'),
(208, 221, 'user_uploads/2/audio/2019/06/qrs-connect_68c9e3840503776de65b1e2912afbfc4.mid'),
(223, 236, 'user_uploads/2/audio/2019/06/qrs-connect_d541d0c5bc15ff083e4735e6d59173be.mid|user_uploads/2/audio/2019/06/qrs-connect_785dbb0febfdc08cf1add09828a74ba4.json'),
(211, 224, 'user_uploads/2/audio/2019/06/qrs-connect_f30e86d4c16aeb514778db114a853ffb.mid|user_uploads/2/audio/2019/06/qrs-connect_c947fc844bfff9a6554d47551b38962c.json'),
(224, 237, 'user_uploads/2/audio/2019/06/qrs-connect_92c6e0ce92914934d9845ccb8c91d4df.mid|user_uploads/2/audio/2019/06/qrs-connect_8da31164d5f745803898ef4c72abbbff.json'),
(225, 238, 'user_uploads/2/audio/2019/06/qrs-connect_61ed085d06f1e25240d857c3c16320f0.mid|user_uploads/2/audio/2019/06/qrs-connect_795865324fe2baf5f2a05191c1011ae1.json'),
(226, 239, 'user_uploads/2/audio/2019/06/qrs-connect_83fba9b82380a6854ab33d06f9a5c2ee.mid|user_uploads/2/audio/2019/06/qrs-connect_2ea20d1f27d3e83b98a3340cc5cd80e2.json'),
(227, 240, 'user_uploads/2/audio/2019/06/qrs-connect_eac163e68d336e7ba514951450e867ba.mid|user_uploads/2/audio/2019/06/qrs-connect_5e94a39bb101c99baf351853e151152e.json'),
(228, 241, 'user_uploads/2/audio/2019/06/qrs-connect_41dd6f919d4240e8a7e3847bcf645952.mid|user_uploads/2/audio/2019/06/qrs-connect_de50634c852e09c3159855a5a04b0074.json'),
(229, 242, 'user_uploads/2/audio/2019/06/qrs-connect_23ee8142fd858b836f223a428ec5c451.mid|user_uploads/2/audio/2019/06/qrs-connect_d31d818eeb2b85ff458fafff299008b5.json'),
(230, 243, 'user_uploads/2/audio/2019/06/qrs-connect_5805ce6299aa9a5e251393a5b9108c1d.mid|user_uploads/2/audio/2019/06/qrs-connect_d0d4ed3568594b39a71d5e0fc22415ea.json'),
(231, 244, 'user_uploads/2/audio/2019/06/qrs-connect_7e7c295b5fe3cc3d10f2617d7d72b0d1.mid|user_uploads/2/audio/2019/06/qrs-connect_e5bbb81526e86dbb567829d60faeb00e.json'),
(232, 245, 'user_uploads/2/audio/2019/06/qrs-connect_9d01120b0b158da774cb69772852b1c2.mid|user_uploads/2/audio/2019/06/qrs-connect_162528378bde625cb321bf1daee7908b.json'),
(233, 246, 'user_uploads/2/audio/2019/06/qrs-connect_dd4d080f29eefdac886d0ba2e6830df0.mid|user_uploads/2/audio/2019/06/qrs-connect_42379579961475af4133191f74c51c94.json'),
(234, 247, 'user_uploads/2/audio/2019/06/qrs-connect_072c67c8df5bff11b147f159c8de9491.mid|user_uploads/2/audio/2019/06/qrs-connect_223cb9ff411771ca4180c9039bc53c2c.json'),
(235, 248, 'user_uploads/2/audio/2019/06/qrs-connect_e85999c789b3c70366a497a9fb8c3b96.mid|user_uploads/2/audio/2019/06/qrs-connect_fae4e56b9887597b1db944e910c8692b.json'),
(236, 249, 'user_uploads/2/audio/2019/06/qrs-connect_1e235bc61a72d1842ee6a0dc4203db74.mid|user_uploads/2/audio/2019/06/qrs-connect_3434578441a15ffc9f7e3c467e7333dd.json'),
(237, 250, 'user_uploads/2/audio/2019/06/qrs-connect_b524a96be76850aa203eb9f21e9952e2.mid|user_uploads/2/audio/2019/06/qrs-connect_1ca851b58c914ab83900018160de3ea8.json'),
(238, 251, 'user_uploads/2/audio/2019/06/qrs-connect_9e8efbe2326c1d53b4490ef61c2029a3.mid|user_uploads/2/audio/2019/06/qrs-connect_dd1c3d0717cacf312a18c343a41dc8b7.json'),
(239, 252, 'user_uploads/2/audio/2019/06/qrs-connect_426c583999665473551fb004e6013e2b.mid|user_uploads/2/audio/2019/06/qrs-connect_029ac2fb7a78810a6f5ac664aa512d90.json'),
(240, 253, 'user_uploads/2/audio/2019/06/qrs-connect_e64364c4071b1a9b62d7c2e8772142e6.mid|user_uploads/2/audio/2019/06/qrs-connect_a98179fd10569c3b1c2200176bdae31e.json'),
(241, 254, 'user_uploads/2/audio/2019/06/qrs-connect_52dba5541ca8eb7921d834a3d160d2a0.mid|user_uploads/2/audio/2019/06/qrs-connect_fd60cb3dac333dcdaba05d7b782ad2c3.json'),
(242, 255, 'user_uploads/2/audio/2019/06/qrs-connect_536638f55355fe19db07ed4ca0ffd184.mid|user_uploads/2/audio/2019/06/qrs-connect_a68b27f8523d2ada935fb8904f497373.json'),
(243, 256, 'user_uploads/2/audio/2019/06/qrs-connect_50c25a103d093e664eca9cb721b22744.mid|user_uploads/2/audio/2019/06/qrs-connect_7d548dc32eaeb7dad79c003b0bab8efd.json'),
(244, 257, 'user_uploads/2/audio/2019/06/qrs-connect_ab64b002a7596434f563fbb31129b7a3.mid|user_uploads/2/audio/2019/06/qrs-connect_65c764a91177591230e5d837a50520b5.json'),
(245, 258, 'user_uploads/2/audio/2019/06/qrs-connect_3fb96bcd3c51f2c776a0a1b7fec4d08c.mid|user_uploads/2/audio/2019/06/qrs-connect_a66df5668141a602affc2aefaeb2d1a3.json'),
(246, 259, 'user_uploads/2/audio/2019/06/qrs-connect_415f05f93bcfba3076528e62ea70764c.mid|user_uploads/2/audio/2019/06/qrs-connect_927b6cd7c42ebab9a7dc48501ce4d6ae.json'),
(247, 260, 'user_uploads/2/audio/2019/06/qrs-connect_b842a188cda4b0c98fb977644e719025.mid|user_uploads/2/audio/2019/06/qrs-connect_1074a32f23fd07d88a8b20f7600e9317.json'),
(248, 261, 'user_uploads/2/audio/2019/06/qrs-connect_353f6e53c502736fc6181c4b7fe48758.mid|user_uploads/2/audio/2019/06/qrs-connect_f7aa20e7ea918277d18a1582c7148658.json'),
(249, 262, 'user_uploads/2/audio/2019/06/qrs-connect_03251fd300b982a57d3b2e89dc14766b.mid|user_uploads/2/audio/2019/06/qrs-connect_31696bd24c705122caaa6e259ff82c55.json'),
(250, 263, 'user_uploads/2/audio/2019/06/qrs-connect_eb49968090d495710d52c048194b6215.mid|user_uploads/2/audio/2019/06/qrs-connect_7946540c275fa61e6d57376a97856d89.json'),
(251, 264, 'user_uploads/2/audio/2019/06/qrs-connect_119f2a34f25e7c9d9b71792b56d3e361.mid|user_uploads/2/audio/2019/06/qrs-connect_7ad197a5cbc1ea69e9b8587cedab1464.json'),
(252, 265, 'user_uploads/2/audio/2019/06/qrs-connect_56447f58af71a45c73a96b2e23df6d6d.mid|user_uploads/2/audio/2019/06/qrs-connect_29319132d55a8c41a88230122c3959dd.json'),
(253, 266, 'user_uploads/2/audio/2019/06/qrs-connect_76536a473a0139b46664565f2d3a4182.mid|user_uploads/2/audio/2019/06/qrs-connect_25aa79a76249ab3eec89ac3edb9bfa10.json'),
(254, 267, 'user_uploads/2/audio/2019/06/qrs-connect_0d232f4a2420f7238dbc4f561a0bf8d8.mid|user_uploads/2/audio/2019/06/qrs-connect_b4935b09c44cd5621181b0b26ae1c400.json'),
(255, 268, 'user_uploads/2/audio/2019/06/qrs-connect_adfa098a741a8213993c8b17e3be7228.mid|user_uploads/2/audio/2019/06/qrs-connect_3d2d51867ba2a64d567dc08da1a42435.json'),
(256, 269, 'user_uploads/2/audio/2019/06/qrs-connect_f2d397d6fa59518692f62f115cecc78b.mid|user_uploads/2/audio/2019/06/qrs-connect_947de5d630ab2894c3230839e27c91a9.json'),
(257, 270, 'user_uploads/2/audio/2019/06/qrs-connect_b252bf96ee20d4dfdba5f527c1b16294.mid|user_uploads/2/audio/2019/06/qrs-connect_465a771c3fbeb2a7f7be8f67d4ca21fb.json'),
(258, 271, 'user_uploads/2/audio/2019/06/qrs-connect_89847fd44faeee8cd6fb3f3d42eb8d62.mid|user_uploads/2/audio/2019/06/qrs-connect_2f008f332ede531ac25664c3929d6a37.json'),
(259, 272, 'user_uploads/2/audio/2019/06/qrs-connect_c032658ae5ab01321446a065cb0c0d3c.mid|user_uploads/2/audio/2019/06/qrs-connect_eb6866f8a5f1f4911f7df0fe01d04da3.json'),
(260, 273, 'user_uploads/2/audio/2019/06/qrs-connect_a017596384267ee87a7562d5fee9461a.mid|user_uploads/2/audio/2019/06/qrs-connect_f4a1d74f66ab20bbb6f48a404df71c3c.json'),
(261, 274, 'user_uploads/2/audio/2019/06/qrs-connect_cebeef36c394029de42010d30a802623.mid|user_uploads/2/audio/2019/06/qrs-connect_3355ed641a7a9e76cd9c62c188effa20.json'),
(262, 275, 'user_uploads/2/audio/2019/06/qrs-connect_5a7ae397f0b939dd29ef761c76529e54.mid|user_uploads/2/audio/2019/06/qrs-connect_4dd19e7afb0301c3b551275eb0fb1930.json'),
(263, 276, 'user_uploads/2/audio/2019/06/qrs-connect_987180679b9cceec411978e732da6902.mid|user_uploads/2/audio/2019/06/qrs-connect_23d79f334b75052cd7df5a5381e734d8.json'),
(264, 277, 'user_uploads/2/audio/2019/06/qrs-connect_3c1881963b2918c1519be21c915ecbdd.mid|user_uploads/2/audio/2019/06/qrs-connect_ab826b8fe48f2ef072243d98faaf2124.json'),
(265, 278, 'user_uploads/2/audio/2019/06/qrs-connect_3633932c1c77ca2d033cf5e1f6506ff1.mid|user_uploads/2/audio/2019/06/qrs-connect_78659d34ee91afbdfba56f99cc64a17d.json'),
(266, 279, 'user_uploads/2/audio/2019/06/qrs-connect_c744b925f0f1b7964b354e8e9af77e2d.mid|user_uploads/2/audio/2019/06/qrs-connect_6720f660b97dc008f0be041d4f75be41.json'),
(267, 280, 'user_uploads/2/audio/2019/06/qrs-connect_63d25c56439a45f2a6fa994e49618d37.mid|user_uploads/2/audio/2019/06/qrs-connect_520ba0957d790789ae9a6a0d84563f52.json'),
(268, 281, 'user_uploads/2/audio/2019/06/qrs-connect_2658d2327317c72b7e9f7003c099839c.mid|user_uploads/2/audio/2019/06/qrs-connect_58bc9ee585eb7dc25c9e2b19b8b75b12.json'),
(269, 282, 'user_uploads/2/audio/2019/06/qrs-connect_6a5ce78d3a55b356a35b49c5cb3ce1ad.mid|user_uploads/2/audio/2019/06/qrs-connect_31582133e22a442b3474105af0a34c43.json'),
(270, 283, 'user_uploads/2/audio/2019/06/qrs-connect_097ca66379088b604a920c7619e10f53.mid|user_uploads/2/audio/2019/06/qrs-connect_15393ec52fe01b22d69434f567fbf2a4.json'),
(271, 284, 'user_uploads/2/audio/2019/06/qrs-connect_2c20cda88cbf9dda42e3194d20b9a375.mid|user_uploads/2/audio/2019/06/qrs-connect_4b0e8fa5e954872d17c4a3d9239e024b.json'),
(272, 285, 'user_uploads/2/audio/2019/06/qrs-connect_f0a8b5e5a0f566e09ddb2eaee7662b03.mid|user_uploads/2/audio/2019/06/qrs-connect_ee7be68b8ac1f7a0f551c7d931968a05.json'),
(273, 286, 'user_uploads/2/audio/2019/06/qrs-connect_eced7e7ddb4750a193889581c27b9946.mid|user_uploads/2/audio/2019/06/qrs-connect_729458c28e83f7eb15001da469078a49.json'),
(274, 287, 'user_uploads/2/audio/2019/06/qrs-connect_bc6f3362362a189b988a812a124cf7d2.mid|user_uploads/2/audio/2019/06/qrs-connect_cad0c922ee4df724b2b1b9192392dec0.json'),
(275, 288, 'user_uploads/2/audio/2019/06/qrs-connect_7871e889caa958fd0d3a4ad151c1b082.mid|user_uploads/2/audio/2019/06/qrs-connect_8e0cbf3360bab115f386c617a2c5d1c1.json'),
(276, 289, 'user_uploads/2/audio/2019/06/qrs-connect_8b1ca3d9a90042a74ca0e3ba58c59474.mid|user_uploads/2/audio/2019/06/qrs-connect_d43e13744695227b2e884c39a666ad55.json'),
(277, 290, 'user_uploads/2/audio/2019/06/qrs-connect_de1493a096bb3e251e8d1f4822edc4fc.mid|user_uploads/2/audio/2019/06/qrs-connect_1e98aa566085bc51bc53b077a376f2d2.json'),
(278, 291, 'user_uploads/2/audio/2019/06/qrs-connect_1a0802adcfd6531085419f16881c735c.mid|user_uploads/2/audio/2019/06/qrs-connect_4b36cd04355cc185c85c6737659c5e95.json'),
(279, 292, 'user_uploads/2/audio/2019/06/qrs-connect_61b35b75d478ba39a765547eb917be4f.mid|user_uploads/2/audio/2019/06/qrs-connect_5f5cc43d13def076d77a65b1dca6b672.json'),
(280, 293, 'user_uploads/2/audio/2019/06/qrs-connect_6845f8106d5069b9a519fd0d0829ee50.mid|user_uploads/2/audio/2019/06/qrs-connect_26305f7afb12da59e5f45ad1ff72ad43.json'),
(281, 294, 'user_uploads/2/audio/2019/06/qrs-connect_6b5adeadf004542e286c819c40d46943.mid|user_uploads/2/audio/2019/06/qrs-connect_05920153ce420e12b52b544ea697f144.json'),
(282, 295, 'user_uploads/2/audio/2019/06/qrs-connect_db781597e53419ceb93b235dfd02357a.mid|user_uploads/2/audio/2019/06/qrs-connect_80e5297faede0a0964d4499b99c7c142.json'),
(283, 296, 'user_uploads/2/audio/2019/06/qrs-connect_e5c2ac7c193f447061f563a204faa4a0.mid|user_uploads/2/audio/2019/06/qrs-connect_57e195a50ec392c1e6efba0ca1d95bc3.json'),
(284, 297, 'user_uploads/2/audio/2019/06/qrs-connect_7f1001bf7da331e66adc7baa24768052.mid|user_uploads/2/audio/2019/06/qrs-connect_aa7e2a80c8edeb479e50fbfe87385915.json'),
(285, 298, 'user_uploads/2/audio/2019/06/qrs-connect_aaaa33976d306dbb54ebcc9a5675dfd9.mid|user_uploads/2/audio/2019/06/qrs-connect_1b2be88d29919d6efed499d72f3328f5.json'),
(286, 299, 'user_uploads/2/audio/2019/06/qrs-connect_dd94376cdb86a1486e2a4db2da485511.mid|user_uploads/2/audio/2019/06/qrs-connect_b117058b257a24a76d6360a8d9b8fb0b.json'),
(287, 300, 'user_uploads/2/audio/2019/06/qrs-connect_c9489bf8b06dae2cd2196e01001c66a4.mid|user_uploads/2/audio/2019/06/qrs-connect_cfc905ec2c78a2f29f41fcdd6c223a67.json'),
(288, 301, 'user_uploads/2/audio/2019/06/qrs-connect_3b90386d71ac73fab862972c5e89746e.mid|user_uploads/2/audio/2019/06/qrs-connect_5c11224680f1c087da7d568d4e271e95.json'),
(289, 302, 'user_uploads/2/audio/2019/06/qrs-connect_dbefc82c3ccccec108fc806420b1683f.mid|user_uploads/2/audio/2019/06/qrs-connect_20de98794e383edd6fe193718c05b1eb.json'),
(290, 303, 'user_uploads/2/audio/2019/06/qrs-connect_475839ed5891178e0e8eaaf53a2e8286.mid|user_uploads/2/audio/2019/06/qrs-connect_c2e270b8a9af12e3d3b46868641c1652.json'),
(291, 304, 'user_uploads/2/audio/2019/06/qrs-connect_e8328e7a100b0e6563e499a9fedc0b56.mid|user_uploads/2/audio/2019/06/qrs-connect_f57ddba32d31222290eaf56ce95549ce.json'),
(292, 305, 'user_uploads/2/audio/2019/06/qrs-connect_29e3fb88ab022a9c709bb5a92b04e026.mid|user_uploads/2/audio/2019/06/qrs-connect_4a7429ed39bc03a98b99a9a3076690ab.json'),
(293, 306, 'user_uploads/2/audio/2019/06/qrs-connect_b63dee15f7156c700c60980b43087ee3.mid|user_uploads/2/audio/2019/06/qrs-connect_79e47ea0245dfb035b0f69a0664c3d1d.json'),
(294, 307, 'user_uploads/2/audio/2019/06/qrs-connect_3d876b51cf34b65ffcc4d482b47ebc9e.mid|user_uploads/2/audio/2019/06/qrs-connect_bff9994112013f9361fe97ecf1894638.json'),
(295, 308, 'user_uploads/2/audio/2019/06/qrs-connect_0c424a1cd07ab3ae3c4a705137220bbd.mid|user_uploads/2/audio/2019/06/qrs-connect_5bec296ad5436a1e19a4c440b82495a7.json'),
(296, 309, 'user_uploads/2/audio/2019/06/qrs-connect_828cd26a0e0d49fde30b7f229725613c.mid|user_uploads/2/audio/2019/06/qrs-connect_533ba0d0335af2297d6de8e627ace7ff.json'),
(297, 310, 'user_uploads/2/audio/2019/06/qrs-connect_93d53deb4e38c323a4cb57384b4564ab.mid|user_uploads/2/audio/2019/06/qrs-connect_51c9a4cb570b7e5c88fc9c36e1e87de2.json'),
(298, 311, 'user_uploads/2/audio/2019/06/qrs-connect_f78ad511206b115851aa72eb295f499e.mid|user_uploads/2/audio/2019/06/qrs-connect_e0dc89e894143f65ad15cc9760dc63e5.json'),
(299, 312, 'user_uploads/2/audio/2019/06/qrs-connect_c467c1f0b283822f6914c7f0c45e42dc.mid|user_uploads/2/audio/2019/06/qrs-connect_885eb83d26ff9b80a42a42cc36f6aafd.json'),
(300, 313, 'user_uploads/2/audio/2019/06/qrs-connect_041aa6f49b22afb6a1c8030debea8b34.mid|user_uploads/2/audio/2019/06/qrs-connect_b702616005ed14140f2c9d55ebc1bcc0.json'),
(301, 314, 'user_uploads/2/audio/2019/06/qrs-connect_8ea84d62d27d46025a36edaccd2ce022.mid|user_uploads/2/audio/2019/06/qrs-connect_6e3626f893c2b95481aed6c1625769d6.json'),
(302, 315, 'user_uploads/2/audio/2019/06/qrs-connect_d1ad7702fcd15419594aac76284975e7.mid|user_uploads/2/audio/2019/06/qrs-connect_d25bdd575771714c665df3e88c4c8e74.json'),
(303, 316, 'user_uploads/2/audio/2019/06/qrs-connect_26b18fb332fec996b2beed1327cf1b4e.mid|user_uploads/2/audio/2019/06/qrs-connect_b6dfd96ec228cd2459bc14467d3b01df.json'),
(304, 317, 'user_uploads/2/audio/2019/06/qrs-connect_34f6b450742a1904680e635a6b52c264.mid|user_uploads/2/audio/2019/06/qrs-connect_c419a24447fda993444f6637f93969b3.json'),
(305, 318, 'user_uploads/2/audio/2019/06/qrs-connect_f333350023a7a701c8bb63468e1d691c.mid|user_uploads/2/audio/2019/06/qrs-connect_a69db987e8e30be693bf9e6704923779.json'),
(306, 319, 'user_uploads/2/audio/2019/06/qrs-connect_b70cea11f01f8f99e6d24b7be01ef660.mid|user_uploads/2/audio/2019/06/qrs-connect_aa852fc912230a4d2907a1da17005bc7.json'),
(307, 320, 'user_uploads/2/audio/2019/06/qrs-connect_58f644277dd3b351f1bdd093311169fe.mid|user_uploads/2/audio/2019/06/qrs-connect_d4e2899532755e0aaba458310bdbe5e6.json'),
(308, 321, 'user_uploads/2/audio/2019/06/qrs-connect_e507475d413fa308c083df99fac67b82.mid|user_uploads/2/audio/2019/06/qrs-connect_b772d474ce408a9553be478b2a74f1c6.json'),
(309, 322, 'user_uploads/2/audio/2019/06/qrs-connect_1055c69ba4f90c11aa644963eed07a9b.mid|user_uploads/2/audio/2019/06/qrs-connect_7dc66aafd669f7f2873f472a600a4774.json'),
(310, 323, 'user_uploads/2/audio/2019/06/qrs-connect_cd4d0b0cbf074671ab66b056b928661d.mid|user_uploads/2/audio/2019/06/qrs-connect_f1a6fa3b72d1a9cb4fa4aba3b860703b.json'),
(311, 324, 'user_uploads/2/audio/2019/06/qrs-connect_1d39f74bfa671a012fadadb2c548fcd0.mid|user_uploads/2/audio/2019/06/qrs-connect_28b96226615e1d5083049de3f04a5720.json'),
(312, 325, 'user_uploads/2/audio/2019/06/qrs-connect_a93bf4e776d67077d7509294b1913898.mid|user_uploads/2/audio/2019/06/qrs-connect_96b6295f2143462983323a468fd2cc49.json'),
(313, 326, 'user_uploads/2/audio/2019/06/qrs-connect_362282859e75e8d421503e5a54f12b5c.mid|user_uploads/2/audio/2019/06/qrs-connect_8659f108971c1c16e8b4cd20bb6c0c1b.json'),
(314, 327, 'user_uploads/2/audio/2019/06/qrs-connect_19240daaa02d65864d76fcd8cd372e22.mid|user_uploads/2/audio/2019/06/qrs-connect_63fa9642bc1c5c3457a5bc9abcb0d3d6.json'),
(315, 328, 'user_uploads/2/audio/2019/06/qrs-connect_1dbfadd60523bc31912e4dc52e0bb443.mid|user_uploads/2/audio/2019/06/qrs-connect_ed429b8d27b99b4c4080e27d9beebed0.json'),
(316, 329, 'user_uploads/2/audio/2019/06/qrs-connect_7a1080df0cc996db84940d371c98906e.mid|user_uploads/2/audio/2019/06/qrs-connect_e9aa9e173cc3656f2d4e1b38e12d53c4.json'),
(317, 330, 'user_uploads/2/audio/2019/06/qrs-connect_9713058dd77b7cfc8c5a8ca1891ea373.mid|user_uploads/2/audio/2019/06/qrs-connect_adf1e8329a07875d8d00d3cba1d05777.json'),
(318, 331, 'user_uploads/2/audio/2019/06/qrs-connect_7586b635ed96715ad364bd7e271163dc.mid|user_uploads/2/audio/2019/06/qrs-connect_dac71d64bad15a48f0ee8a8847d62d38.json'),
(319, 332, 'user_uploads/2/audio/2019/06/qrs-connect_487452e3f4a1900709353f792da03ff8.mid|user_uploads/2/audio/2019/06/qrs-connect_9155de93018016a49a778eaa897d17b0.json'),
(320, 333, 'user_uploads/2/audio/2019/06/qrs-connect_9450c1718769b62c124081ed64a4552f.mid|user_uploads/2/audio/2019/06/qrs-connect_95ddc51770798354fde0cc3b3268ad96.json'),
(321, 334, 'user_uploads/2/audio/2019/06/qrs-connect_256403a623766ea57bd801e9ccbc26bb.mid|user_uploads/2/audio/2019/06/qrs-connect_2cdec857e4512572e6b593b9e5e8d507.json'),
(322, 335, 'user_uploads/2/audio/2019/06/qrs-connect_37dc43a6d144e563a045796b98a63751.mid|user_uploads/2/audio/2019/06/qrs-connect_e1838352368511a9df7e831a70b3fad3.json'),
(323, 336, 'user_uploads/2/audio/2019/06/qrs-connect_b2a7971a67f2a02aeaca6ffd677855c4.mid|user_uploads/2/audio/2019/06/qrs-connect_a01347162cfb1557b76f2369a540890f.json'),
(324, 337, 'user_uploads/2/audio/2019/06/qrs-connect_7c43f9afbb015a4e1bbbcadf7dee1a39.mid|user_uploads/2/audio/2019/06/qrs-connect_faa4768e0ec47da2c04f88cd94282c77.json'),
(325, 338, 'user_uploads/2/audio/2019/06/qrs-connect_75e92681a58b008280e51b865eadd579.mid|user_uploads/2/audio/2019/06/qrs-connect_b5b109a6bea319357f43eeaf6a66dbad.json'),
(326, 339, 'user_uploads/2/audio/2019/06/qrs-connect_926d9b6e4d906c64867f5691c641fd37.mid|user_uploads/2/audio/2019/06/qrs-connect_47ab1f3985b9846c019bf6db00b9e83a.json'),
(327, 340, 'user_uploads/2/audio/2019/06/qrs-connect_08a8db18424f3147667cb39bc67d0860.mid|user_uploads/2/audio/2019/06/qrs-connect_caaa960c617ee3e3c109ba13c6222f79.json'),
(328, 341, 'user_uploads/2/audio/2019/06/qrs-connect_314dc17a97f0418718cb08d2b53f813a.mid|user_uploads/2/audio/2019/06/qrs-connect_43edf2d2e24b08ff368f2244e283ee18.json'),
(329, 342, 'user_uploads/2/audio/2019/06/qrs-connect_a1f548a2e893936de9d538c684b0ec19.mid|user_uploads/2/audio/2019/06/qrs-connect_f3e19a260f1a5cc196cd7fdc050f2159.json'),
(330, 343, 'user_uploads/2/audio/2019/06/qrs-connect_f9a87d4d02f07e263b0ebe8b892c78bf.mid|user_uploads/2/audio/2019/06/qrs-connect_ceee7d9b95984c73baa84a831a41770b.json'),
(331, 344, 'user_uploads/2/audio/2019/06/qrs-connect_f0cf6980b212752d88dd633a4b826172.mid|user_uploads/2/audio/2019/06/qrs-connect_f30e108e48b64090e2d7d4cc855b2976.json'),
(332, 345, 'user_uploads/2/audio/2019/06/qrs-connect_c8a24f7eb14adba3508e505c66e1e6ab.mid|user_uploads/2/audio/2019/06/qrs-connect_234fdeb005e13d6c33ce21cf4b95c9d8.json'),
(333, 346, 'user_uploads/2/audio/2019/06/qrs-connect_a4db8c9dda5c772f9c2d1cc1ab03485b.mid|user_uploads/2/audio/2019/06/qrs-connect_bcd36be9213d41983b60c35133b258d0.json'),
(334, 347, 'user_uploads/2/audio/2019/06/qrs-connect_607bb3a8ee099f9749a729b1c9c1853f.mid|user_uploads/2/audio/2019/06/qrs-connect_69c143cce51888503cdcdbabadd3223b.json'),
(335, 348, 'user_uploads/2/audio/2019/06/qrs-connect_68e4afd823c3a1d5f4fa2f9cd2bf480c.mid|user_uploads/2/audio/2019/06/qrs-connect_1474884ce2cf3a1c5b5218a49d04ff55.json'),
(336, 349, 'user_uploads/2/audio/2019/06/qrs-connect_918054a1702fcb7a26135b826fbba0d2.mid|user_uploads/2/audio/2019/06/qrs-connect_e8dd715f3455dcc85d77302b1a8d0c99.json'),
(337, 350, 'user_uploads/2/audio/2019/06/qrs-connect_fbcb5bf77d433718df2aea71a2dc95a7.mid|user_uploads/2/audio/2019/06/qrs-connect_b6f234f77e178627787aa291bc23d466.json'),
(338, 351, 'user_uploads/2/audio/2019/06/qrs-connect_4d19d18a885ed110f6e0abc48e8b78b1.mid|user_uploads/2/audio/2019/06/qrs-connect_d6ad7139bddefe7bbb1dd5eb7b238320.json'),
(339, 352, 'user_uploads/2/audio/2019/06/qrs-connect_9446d9c686c1dfc8879f95a9acf3354c.mid|user_uploads/2/audio/2019/06/qrs-connect_2fe3dc44f21322044f3173bade6a2da2.json'),
(340, 353, 'user_uploads/2/audio/2019/06/qrs-connect_353a37aa2664cc0c51a3a3a36428bb74.mid|user_uploads/2/audio/2019/06/qrs-connect_7d62956fedcae263485eef89e8a49a2f.json'),
(341, 354, 'user_uploads/2/audio/2019/06/qrs-connect_ad63eefdbfd25b445f4ab572b18dc68a.mid|user_uploads/2/audio/2019/06/qrs-connect_3b27aad626a54f3d2119245cf21d9b7b.json'),
(342, 355, 'user_uploads/2/audio/2019/06/qrs-connect_446e5f56766f94afe51ece56ac0f2660.mid|user_uploads/2/audio/2019/06/qrs-connect_d0741e7b2efe288840401726d65f8c30.json'),
(343, 356, 'user_uploads/2/audio/2019/06/qrs-connect_1509d82f0281090163bd84c2660c0373.mid|user_uploads/2/audio/2019/06/qrs-connect_7e7388bea57dc007a2a15a779ef7f813.json'),
(344, 357, 'user_uploads/2/audio/2019/06/qrs-connect_31b48e4dde752ef2c9f67c6e5afa7507.mid|user_uploads/2/audio/2019/06/qrs-connect_b74471a7b719547f9df614045630b052.json'),
(345, 358, 'user_uploads/2/audio/2019/06/qrs-connect_5f18fc47d7e8799f66072c883a83eef8.mid|user_uploads/2/audio/2019/06/qrs-connect_5ea62b1b5954aa962fae614a9186f153.json'),
(346, 359, 'user_uploads/2/audio/2019/06/qrs-connect_6ae5b4ced37f4c8b1a452ea633496eb5.mid|user_uploads/2/audio/2019/06/qrs-connect_fc59a2fbb1005f1fa191c955967439d7.json'),
(347, 360, 'user_uploads/2/audio/2019/06/qrs-connect_6e3c5495300e68dcb327463c4f461c02.mid|user_uploads/2/audio/2019/06/qrs-connect_01668b2541e6c134a0a739f7c0a4cf0c.json'),
(348, 361, 'user_uploads/2/audio/2019/06/qrs-connect_3bed5cf6506bc6bf1357bd1195220749.mid|user_uploads/2/audio/2019/06/qrs-connect_f57d9f41b1adc7504722dd85a867d491.json'),
(349, 362, 'user_uploads/2/audio/2019/06/qrs-connect_90a6a63ba9abccbcd18a65f87f76d60f.mid|user_uploads/2/audio/2019/06/qrs-connect_e58101ef90bb7e3beb06daf9b58fa584.json'),
(350, 363, 'user_uploads/2/audio/2019/06/qrs-connect_f2ca52152c18cc11425a34525c9fea38.mid|user_uploads/2/audio/2019/06/qrs-connect_b9c67607e9d9a33e987f79309fd862d8.json'),
(351, 364, 'user_uploads/2/audio/2019/06/qrs-connect_97836608629a44f77299728e265fd96a.mid|user_uploads/2/audio/2019/06/qrs-connect_57dee77dac1a231f1cc45e4fb525fcb2.json'),
(352, 365, 'user_uploads/2/audio/2019/06/qrs-connect_51a0571e79f12faf8ebf0acf84c555d7.mid|user_uploads/2/audio/2019/06/qrs-connect_0905abed2c41c9e58baee919ddf95afc.json'),
(353, 366, 'user_uploads/2/audio/2019/06/qrs-connect_2afa3d446847bf3c2aaa83e51f27ef67.mid|user_uploads/2/audio/2019/06/qrs-connect_1f2dbf1d5e1950b444031282207abe11.json'),
(354, 367, 'user_uploads/2/audio/2019/06/qrs-connect_a2c26ba8ea37d436ce531b215e704a85.mid|user_uploads/2/audio/2019/06/qrs-connect_8f61d473785549d050b62be725867d43.json'),
(355, 368, 'user_uploads/2/audio/2019/06/qrs-connect_25fe6299bbb4adae1209a1008ac82103.mid|user_uploads/2/audio/2019/06/qrs-connect_dd1b82fdd2ce16169bf9dda77e1c4efc.json'),
(359, 374, 'user_uploads/2/audio/2019/06/qrs-connect_09620884fee310e5d0f7639f83c4ebb8.mid|user_uploads/2/audio/2019/06/qrs-connect_ace35f58cacaad91adc9e51646239912.json'),
(357, 372, 'user_uploads/2/audio/2019/06/qrs-connect_cee7049c98bd2b26244c6a7426009a0a.mp3'),
(358, 373, 'user_uploads/2/audio/2019/06/qrs-connect_e55e14d63ae42a4ef5fc75737e37d63b.mid|user_uploads/2/audio/2019/06/qrs-connect_507a37262ef2789da6f14d55e5c2b510.json'),
(362, 377, 'user_uploads/2/audio/2019/06/qrs-connect_eda0a4ac0e7246c9830f29e790b8f9bc.mid|user_uploads/2/audio/2019/06/qrs-connect_118e542d9124a03b4b90c67b496baf09.json'),
(363, 378, 'user_uploads/2/audio/2019/06/qrs-connect_9d055bdfdf5082b8036e98a4dd3dfb63.mid|user_uploads/2/audio/2019/06/qrs-connect_c30a80f6061ce9397d57951ee10feb9b.json'),
(373, 388, 'user_uploads/2/audio/2019/06/qrs-connect_a580bd590a372eff8bad06ce845d5e9e.mp3'),
(374, 389, 'user_uploads/2/audio/2019/06/qrs-connect_076ff9970a5e01a21770ada04391b81d.mid|user_uploads/2/audio/2019/06/qrs-connect_c2c8f0c547a2c8b47d51022cba52b98b.json'),
(375, 390, 'user_uploads/2/audio/2019/06/qrs-connect_cc5fdcd3319826f3d98feff56fa0d6f9.mid|user_uploads/2/audio/2019/06/qrs-connect_c887a1bbf4993546bb704eab3bf4b821.json'),
(371, 386, 'user_uploads/2/audio/2019/06/qrs-connect_06c4c74b728846eaf6635cdc0ac53386.mid|user_uploads/2/audio/2019/06/qrs-connect_06367b14d8396db61a74ecc1ad395ea3.json'),
(372, 387, 'user_uploads/2/audio/2019/06/qrs-connect_f89c09b905f696a26a5de939443b6458.mid|user_uploads/2/audio/2019/06/qrs-connect_5ceb36a9f3771eac579ea1c86e859744.json'),
(376, 391, 'user_uploads/2/audio/2019/06/qrs-connect_9049a17dd4332b466539adf2f4e694f3.mid|user_uploads/2/audio/2019/06/qrs-connect_0a9cdc37a67afccc050ad7d484256802.json'),
(378, 393, 'user_uploads/2/audio/2019/06/qrs-connect_dda57462cbaa4fdf3a229b4a93f4bb79.flac|user_uploads/2/audio/2019/06/qrs-connect_f0f105a0404f3c588eb30ded7a8fc5fa.mid|user_uploads/2/audio/2019/06/qrs-connect_d2204b02b199fb5434378e7ad0d54411.json'),
(379, 394, 'user_uploads/2/audio/2019/06/qrs-connect_1967be72da9d9db6ff8b74917f7c53a9.flac|user_uploads/2/audio/2019/06/qrs-connect_8cabf4d72cce8afa05dacc090c51aa20.mid|user_uploads/2/audio/2019/06/qrs-connect_5ea667c47da144f24fe19f488fa87f73.json'),
(390, 405, 'user_uploads/2/audio/2019/06/qrs-connect_5447770c4c6adbd1c39720ff3fb6c6cb.mid|user_uploads/2/audio/2019/06/qrs-connect_dd3821cd93b8b8c2f9a82824a11bc87f.json'),
(391, 406, 'user_uploads/2/audio/2019/06/qrs-connect_754c53a6d100a8432d825f3710b00051.flac|user_uploads/2/audio/2019/06/qrs-connect_48f52a007d7af5b68474a72284812694.mid|user_uploads/2/audio/2019/06/qrs-connect_358ea0ec40f5cf5943c184e6b7b178a7.json'),
(389, 404, 'user_uploads/2/audio/2019/06/qrs-connect_62f1d19e170698632612d414e8b83674.flac|user_uploads/2/audio/2019/06/qrs-connect_7ff7d4f8b89621ebf74999e0f79afb2c.mid|user_uploads/2/audio/2019/06/qrs-connect_b17aa1de72715df98236cd7931953ad1.json'),
(392, 407, 'user_uploads/2/audio/2019/06/qrs-connect_f7a1bff0aea74185a810dec3f8ad1a8a.mid|user_uploads/2/audio/2019/06/qrs-connect_a459cddaab7e4a012c76ebdee824155f.json'),
(393, 408, 'user_uploads/2/audio/2019/06/qrs-connect_e5d76b50b18ef8b67dcfe634c901cdc5.mid|user_uploads/2/audio/2019/06/qrs-connect_4e7bf766aec3504af974c02248b22ec8.json'),
(422, 437, 'user_uploads/2/audio/2019/06/qrs-connect_99f1806b613a913c9c195946c1af4fc9.mid|user_uploads/2/audio/2019/06/qrs-connect_11c8493676ca2696981afe0f22b329de.json'),
(423, 438, 'user_uploads/2/audio/2019/06/qrs-connect_abbfc3591baf730327565e1e49b12501.mid|user_uploads/2/audio/2019/06/qrs-connect_e52508dc98217c20c86dfb098240a5e0.json'),
(424, 439, 'user_uploads/2/audio/2019/06/qrs-connect_3c4e10511ed2a1e09781c2bc2e02dab3.flac|user_uploads/2/audio/2019/06/qrs-connect_a2df4528eea0801985ecb2785807ca85.mid|user_uploads/2/audio/2019/06/qrs-connect_d9261bd4429e6ea849ee00da71e67b35.json'),
(425, 440, 'user_uploads/2/audio/2019/06/qrs-connect_0336d3b4e85d697f784b7666202bd67d.mid|user_uploads/2/audio/2019/06/qrs-connect_44957daa7cba8221cceefdfc1ec7d03e.json'),
(426, 441, 'user_uploads/2/audio/2019/06/qrs-connect_b3c37cae0636ba7f36ae36c48e5446f9.mid|user_uploads/2/audio/2019/06/qrs-connect_1b9d9c8ab84a2771e48cb8659d4af1a0.json'),
(427, 442, 'user_uploads/2/audio/2019/06/qrs-connect_8375955c40fb1e4a0096b0bc22eabd15.mid|user_uploads/2/audio/2019/06/qrs-connect_b8eb8f1ac9b52fc87ae65079d0a5a4e4.json'),
(428, 443, 'user_uploads/2/audio/2019/06/qrs-connect_bef5f7c00b865d71a75e3f65329f695b.flac|user_uploads/2/audio/2019/06/qrs-connect_fb0260eb19f6c4fe77ebc6885b03c765.mid|user_uploads/2/audio/2019/06/qrs-connect_232852ef2e8e724fa97e408005647ae4.json'),
(431, 446, 'user_uploads/2/audio/2019/06/qrs-connect_e12e490abeee45e634eb016df9a6b0be.mid|user_uploads/2/audio/2019/06/qrs-connect_7ace16e28951eef9922ff744cb33047a.json'),
(432, 447, 'user_uploads/2/audio/2019/06/qrs-connect_5896fd191af3abc0a2b4eb42ffc85b10.mid|user_uploads/2/audio/2019/06/qrs-connect_d5e4fe12dce08b8c0076721f3d252813.json'),
(404, 419, 'user_uploads/2/audio/2019/06/qrs-connect_bfd597f6c807c0d37494200133e1d3c9.mid|user_uploads/2/audio/2019/06/qrs-connect_0b0fe855ad4cf7ac595db6196a1dc63c.json'),
(405, 420, 'user_uploads/2/audio/2019/06/qrs-connect_d5d75a3264eb1ba79510541b65a144fa.mid|user_uploads/2/audio/2019/06/qrs-connect_2a8b9b1c639ede5b1e37fc7d8b681c0d.json'),
(406, 421, 'user_uploads/2/audio/2019/06/qrs-connect_541e60b2c82946b63be0083ec44aa0be.mid|user_uploads/2/audio/2019/06/qrs-connect_08165499bfc2142744e674af3223a993.json'),
(407, 422, 'user_uploads/2/audio/2019/06/qrs-connect_037efeac01db4ebf819e1144e9dabcec.mid|user_uploads/2/audio/2019/06/qrs-connect_b678de02d2c18252b9369f993d208884.json'),
(408, 423, 'user_uploads/2/audio/2019/06/qrs-connect_d2f18eb1b4fd177f2f7194f9c111124e.mid|user_uploads/2/audio/2019/06/qrs-connect_7c803be9523f9bda87eff9bb6f8d8aca.json'),
(409, 424, 'user_uploads/2/audio/2019/06/qrs-connect_6e16d6a6e13b78a1839c3d4566d126f9.mid|user_uploads/2/audio/2019/06/qrs-connect_95dc781c910816ccce215d83a38ff64d.json'),
(410, 425, 'user_uploads/2/audio/2019/06/qrs-connect_296ec4ee85a5dd6e7a1ffabe89ddc612.mid|user_uploads/2/audio/2019/06/qrs-connect_b26510f11a135f3c1d43fa5f16964efc.json'),
(411, 426, 'user_uploads/2/audio/2019/06/qrs-connect_dcd951ef3f39456ba68040c7f50ee6eb.mid|user_uploads/2/audio/2019/06/qrs-connect_475b96e6b3a60f6657ef75e67e8fa5ab.json'),
(433, 448, 'user_uploads/2/audio/2019/06/qrs-connect_778e9da307014db16e55a042ecc1588b.mid|user_uploads/2/audio/2019/06/qrs-connect_789a40844efb118985399cbf8b5bfba0.json'),
(434, 449, 'user_uploads/2/audio/2019/06/qrs-connect_09158672e5797f6baa6dec3539bfb79f.mid|user_uploads/2/audio/2019/06/qrs-connect_73b27890579f6a3c6705ab2ebf1d05d6.json'),
(435, 450, 'user_uploads/2/audio/2019/06/qrs-connect_0beb5300672565480cd7977b92b72433.mid|user_uploads/2/audio/2019/06/qrs-connect_e406fab1c0fa224ca060b76fe836f3e8.json'),
(436, 451, 'user_uploads/2/audio/2019/06/qrs-connect_b8c9cf72ec52ed26344788c554f5ffcd.flac|user_uploads/2/audio/2019/06/qrs-connect_f4cc05079046f034d32c4962e45b5d91.mid|user_uploads/2/audio/2019/06/qrs-connect_5b6f632d7d10d1e36a2e26b32b2804a6.json'),
(437, 452, 'user_uploads/2/audio/2019/06/qrs-connect_9a42a2887a198fa684418e4bb1ea0f65.mid|user_uploads/2/audio/2019/06/qrs-connect_909cab3c4f398afad0038c0f3ddc4e32.json'),
(438, 453, 'user_uploads/2/audio/2019/06/qrs-connect_1aaff63cbf9a98320f934a7ce1fcdd67.mid|user_uploads/2/audio/2019/06/qrs-connect_d93c6b79a7a6aae2dc77dd6c464c672e.json'),
(444, 459, 'user_uploads/2/audio/2019/06/qrs-connect_17696bd1c29c362916e8f0332f153ce8.mid|user_uploads/2/audio/2019/06/qrs-connect_0a6d221226fae556b0cce59ae6fc9973.json'),
(445, 460, 'user_uploads/2/audio/2019/06/qrs-connect_daf39810d062aa7d9364cf767dfe87ae.mid|user_uploads/2/audio/2019/06/qrs-connect_19d50d352e60abc351b4f2e72d459b29.json'),
(421, 436, 'user_uploads/2/audio/2019/06/qrs-connect_6ecd7ad2a9a48020b1bcccee66865847.mid|user_uploads/2/audio/2019/06/qrs-connect_f0a95ce9c7da0f7f49836de24e87aead.json'),
(446, 461, 'user_uploads/2/audio/2019/06/qrs-connect_55c1d00280eab7e3eed5b6a74d5116af.mid|user_uploads/2/audio/2019/06/qrs-connect_1ce9b1ec199c88e118b637c295405f04.json'),
(447, 462, 'user_uploads/2/audio/2019/06/qrs-connect_b93dc4b5640c97d1061323e924777c16.mid|user_uploads/2/audio/2019/06/qrs-connect_6fcac8d64716147f6b1af18b1c782f68.json'),
(448, 463, 'user_uploads/2/audio/2019/06/qrs-connect_a4d58f9d2732b706879bf2388deb76ab.mid|user_uploads/2/audio/2019/06/qrs-connect_9f09235198ccf6d252c15435bad89fc5.json'),
(443, 458, 'user_uploads/2/audio/2019/06/qrs-connect_331b84cfb16521ad1dbd509d395fc606.flac|user_uploads/2/audio/2019/06/qrs-connect_4df363457313d8bcf48c4a4649bf0850.mid|user_uploads/2/audio/2019/06/qrs-connect_a6d5ff94630f2a7e679fcdfcd66e49cb.json'),
(449, 464, 'user_uploads/2/audio/2019/06/qrs-connect_87a9857ddb0b9de20321b723b9305e7b.mid|user_uploads/2/audio/2019/06/qrs-connect_c712d7105bbfde7b5419901cb8601743.json'),
(450, 465, 'user_uploads/2/audio/2019/06/qrs-connect_7e68633f3ab11d43f57a33ad1f6b93c6.mid|user_uploads/2/audio/2019/06/qrs-connect_acef4ab92566461a4ce37ac00f643fd2.json'),
(451, 466, 'user_uploads/2/audio/2019/06/qrs-connect_318db40a2b5d6fb045363b0caab7ecaf.mid|user_uploads/2/audio/2019/06/qrs-connect_38f56d54411a29a3638c943e38095a17.json'),
(452, 467, 'user_uploads/2/audio/2019/06/qrs-connect_145a73cd6173acc46db9bfa02267a693.mid|user_uploads/2/audio/2019/06/qrs-connect_3135af494477656f0f6b718652d644ee.json'),
(453, 468, 'user_uploads/2/audio/2019/06/qrs-connect_2e72cfcca1d39fc12ab11efb33fd50a1.mid|user_uploads/2/audio/2019/06/qrs-connect_a4294acd3f4e398a6cc004640ba0b370.json'),
(454, 469, 'user_uploads/2/audio/2019/06/qrs-connect_961354002bd9376052c9bf726d25d72f.flac|user_uploads/2/audio/2019/06/qrs-connect_0a118986e85079085145d5dc0a640ce2.mid|user_uploads/2/audio/2019/06/qrs-connect_de56aa59e22cb42152737cd1eb9036b7.json'),
(455, 470, 'user_uploads/2/audio/2019/06/qrs-connect_3a670a25aa13946fc0005caa6b3d0178.mid|user_uploads/2/audio/2019/06/qrs-connect_33cb84508334118037c29e12e4363f52.json'),
(456, 471, 'user_uploads/2/audio/2019/06/qrs-connect_82719ac7604026682259967d53496d3b.flac|user_uploads/2/audio/2019/06/qrs-connect_1fd80713118607ce757c218a258e424a.mid|user_uploads/2/audio/2019/06/qrs-connect_aab1af24c0aa3fbc4b58f86a8d465f0d.json'),
(457, 472, 'user_uploads/2/audio/2019/06/qrs-connect_906f357fa10bd45c8a42fa3735120f7c.mid|user_uploads/2/audio/2019/06/qrs-connect_a2ec9fbe42d879f90bdd0496239930af.json'),
(458, 473, 'user_uploads/2/audio/2019/06/qrs-connect_bbaf0036c9a1892f95d354b8bb9bde4e.mid|user_uploads/2/audio/2019/06/qrs-connect_c4f98e29d45dbfe791b49ad54161d1ce.json'),
(459, 474, 'user_uploads/2/audio/2019/06/qrs-connect_ac753f4e2fb5ef87732203af36f2682e.mid|user_uploads/2/audio/2019/06/qrs-connect_e460a6c2aefa8ca9aa1a1fb44a5c836a.json'),
(460, 475, 'user_uploads/2/audio/2019/06/qrs-connect_b1550e04435126a0049803a252a4fca7.mid|user_uploads/2/audio/2019/06/qrs-connect_07ecec161018fb14a1e42bf363766e17.json'),
(461, 476, 'user_uploads/2/audio/2019/06/qrs-connect_649dfb065a822013202c3a84a3043ba5.mid|user_uploads/2/audio/2019/06/qrs-connect_176099902bad3b02a7a977fa58a6617d.json'),
(462, 477, 'user_uploads/2/audio/2019/06/qrs-connect_8b48857cdf6ce0788bd762b62759066e.mid|user_uploads/2/audio/2019/06/qrs-connect_0768dd5450b2a64c17396dbb8cf2d313.json'),
(463, 478, 'user_uploads/2/audio/2019/06/qrs-connect_dd9845a60ad736689510ec5ffefeaec0.mid|user_uploads/2/audio/2019/06/qrs-connect_d907794fbfd0d4d0adfeef6ec26b55ff.json'),
(464, 479, 'user_uploads/2/audio/2019/06/qrs-connect_e8047b863c2fea6112c445084ca6fcb2.flac|user_uploads/2/audio/2019/06/qrs-connect_562b69b14e8d779352cd7f44297ffbfe.mid|user_uploads/2/audio/2019/06/qrs-connect_69ec60285db82df12cfe22b84125af72.json'),
(467, 482, 'user_uploads/2/audio/2019/06/qrs-connect_898884787a17ffdf3ce2da91767170ca.mid|user_uploads/2/audio/2019/06/qrs-connect_637b930741be363e0dda9cf5058507ef.json'),
(468, 483, 'user_uploads/2/audio/2019/06/qrs-connect_de3b991bb9d59d6a6e434ab49310e88c.flac|user_uploads/2/audio/2019/06/qrs-connect_3a12c736b4e8073e3bcc10ab43faafbb.mid|user_uploads/2/audio/2019/06/qrs-connect_b6b972a8645e994df56e3ebbe91a389e.json'),
(469, 484, 'user_uploads/2/audio/2019/06/qrs-connect_666ba349cecd0ac21d0d3d38b817a535.mid|user_uploads/2/audio/2019/06/qrs-connect_a7a9875b8892ec4a2ac6c82c1decf1c2.json'),
(470, 485, 'user_uploads/2/audio/2019/06/qrs-connect_57a66cc41f270cb03d0de027ad895906.mid|user_uploads/2/audio/2019/06/qrs-connect_c6e747381938c6cfdd60b1bf2d2c9f81.json'),
(471, 486, 'user_uploads/2/audio/2019/06/qrs-connect_21551224615feb24dafe337be2478453.mid|user_uploads/2/audio/2019/06/qrs-connect_3ada2395fb13869fbdaf7d598f86b9c6.json'),
(472, 487, 'user_uploads/2/audio/2019/06/qrs-connect_a9ef305767619cda1b7fd0f4262df5d0.mid|user_uploads/2/audio/2019/06/qrs-connect_16bd5bd5ceb785d506daee35b46c64f7.json'),
(473, 488, 'user_uploads/2/audio/2019/06/qrs-connect_4edb2dfcc07e80591a8df00b61f2be61.mid|user_uploads/2/audio/2019/06/qrs-connect_633b0980b1f7f43352697a4fa8ee9210.json'),
(474, 489, 'user_uploads/2/audio/2019/06/qrs-connect_4e6e795d708f3d0fff335389bfe03a4b.mid|user_uploads/2/audio/2019/06/qrs-connect_49b1caef5aeeadc51d199b9e110d8d08.json'),
(475, 490, 'user_uploads/2/audio/2019/06/qrs-connect_044a441a0ae852c364854deecbca48c3.mid|user_uploads/2/audio/2019/06/qrs-connect_0a5f07a15d3dd4c18108c7f0bce5c4d9.json'),
(476, 491, 'user_uploads/2/audio/2019/06/qrs-connect_56fae7fb20ef191ee92d9ec4a6f39157.mid|user_uploads/2/audio/2019/06/qrs-connect_5664219fda25585f9612380569058874.json'),
(477, 492, 'user_uploads/2/audio/2019/06/qrs-connect_783fdf2619969af430971cd46e14d2fa.mid|user_uploads/2/audio/2019/06/qrs-connect_a5408ee6564badbe2890c39295efd8b0.json'),
(478, 493, 'user_uploads/2/audio/2019/06/qrs-connect_adcb1e4f25221ced6f203c124f23ebd7.mid|user_uploads/2/audio/2019/06/qrs-connect_60d5290b868d0c6bcfb81c3befef04cf.json'),
(479, 494, 'user_uploads/2/audio/2019/06/qrs-connect_529f8af21afe018d63af9ef817624ba1.mid|user_uploads/2/audio/2019/06/qrs-connect_9e0b1e435b8ae54f73b877391ca73de6.json'),
(480, 495, 'user_uploads/2/audio/2019/07/qrs-connect_969c78c35d40d9e523f6d382a52c054d.mid|user_uploads/2/audio/2019/07/qrs-connect_15f27d196bf2b4ceecbf5b9a126a892e.json'),
(481, 496, 'user_uploads/2/audio/2019/07/qrs-connect_594c6b91707495c3b7e39d7cdbece874.mid|user_uploads/2/audio/2019/07/qrs-connect_9e4882c7cc043e2ae9bbc9e43f56cd21.json');
INSERT INTO `posts_audios` (`audio_id`, `post_id`, `source`) VALUES
(482, 497, 'user_uploads/2/audio/2019/07/qrs-connect_a6a05ae463e058e7199bdaf2b5134aa1.mid|user_uploads/2/audio/2019/07/qrs-connect_47768360b3a0c37ea17e9e76f6a5fcc5.json'),
(483, 498, 'user_uploads/2/audio/2019/07/qrs-connect_6783c34279bf0d2bbee8ad989aef9603.mid|user_uploads/2/audio/2019/07/qrs-connect_a84eeb975da3fd8e3ae1077fda756934.json'),
(484, 499, 'user_uploads/2/audio/2019/07/qrs-connect_c6cdf8a953437cc981380a12a9e0dae4.mid|user_uploads/2/audio/2019/07/qrs-connect_325b8e10aa523ee7b2359820e39bed49.json'),
(485, 500, 'user_uploads/2/audio/2019/07/qrs-connect_90d58e361364f4de7c599f4c2ccfb08d.mid|user_uploads/2/audio/2019/07/qrs-connect_38760d6da871373a8bada8a234bb334b.json'),
(486, 501, 'user_uploads/2/audio/2019/07/qrs-connect_62fc9cc53fc8c2060f5fbc9c675e325d.mid|user_uploads/2/audio/2019/07/qrs-connect_fa3d218ef227307b0bfe548de2309ce5.json'),
(487, 502, 'user_uploads/2/audio/2019/07/qrs-connect_9cc106168106cb93d49c45bb8d8ae368.mid|user_uploads/2/audio/2019/07/qrs-connect_c3f2b81c78c3882f2c7d32de0b70e9b7.json'),
(488, 503, 'user_uploads/2/audio/2019/07/qrs-connect_ce93ee8033325d401e3439ee5a17a7f4.mid|user_uploads/2/audio/2019/07/qrs-connect_1415fa88189abce7c0822dc59834df5d.json'),
(489, 504, 'user_uploads/2/audio/2019/07/qrs-connect_e5805f9bf13fdd50eed1ee6f2e567d6d.mid|user_uploads/2/audio/2019/07/qrs-connect_e2285aec36da851376dba17fc3e13e80.json'),
(490, 505, 'user_uploads/2/audio/2019/07/qrs-connect_b743f41b83b192a753f50168892c54c2.mid|user_uploads/2/audio/2019/07/qrs-connect_fc56da024531f1aaa8d229b119662858.json'),
(491, 506, 'user_uploads/2/audio/2019/07/qrs-connect_ad5a3fb1e507734a9d061f8a9f166fe2.mid|user_uploads/2/audio/2019/07/qrs-connect_9e294872192b1755505fd129b2c6e884.json'),
(492, 507, 'user_uploads/2/audio/2019/07/qrs-connect_699b41a5efb533de1174dd1271d52a52.mid|user_uploads/2/audio/2019/07/qrs-connect_119f35fd175b4435157297c6fc12c86c.json'),
(493, 508, 'user_uploads/2/audio/2019/07/qrs-connect_7e7a360cb0ed735089494ecb7e8c7c88.mid|user_uploads/2/audio/2019/07/qrs-connect_587060a9918e1346922e3cab9831ec39.json'),
(494, 509, 'user_uploads/2/audio/2019/07/qrs-connect_1cf6fcb6082f8511424829d88e365dcd.mid|user_uploads/2/audio/2019/07/qrs-connect_12372486a03fbf800813757dd0c17c70.json'),
(495, 510, 'user_uploads/2/audio/2019/07/qrs-connect_07fc9e5c3d236e4a12f596f4c7818e11.mid|user_uploads/2/audio/2019/07/qrs-connect_ac4b41e0e5e5359249500ab304e0139d.json'),
(496, 511, 'user_uploads/2/audio/2019/07/qrs-connect_851103986400f0157ff29fed328e1240.mid|user_uploads/2/audio/2019/07/qrs-connect_96758f9317a13482679e54f4c8b89d51.json'),
(497, 512, 'user_uploads/2/audio/2019/07/qrs-connect_cd93abda438b7daca7297f17c87145aa.mid|user_uploads/2/audio/2019/07/qrs-connect_8b715a0efa7e844ec4aa06f8bce1d2ba.json'),
(498, 513, 'user_uploads/2/audio/2019/07/qrs-connect_3a8b270838e74989f95af4b4a8ca15bb.mid|user_uploads/2/audio/2019/07/qrs-connect_375c788938d8cb735c546d0ce37ca8a5.json'),
(499, 514, 'user_uploads/2/audio/2019/07/qrs-connect_aeae0559a0491c83cdb8b0ea12cd323f.mid|user_uploads/2/audio/2019/07/qrs-connect_38255fdc70fdfefc27fdf2b6e823ddfb.json'),
(500, 515, 'user_uploads/2/audio/2019/07/qrs-connect_d014bd736ea52bce0f58062411c21540.mid|user_uploads/2/audio/2019/07/qrs-connect_66d3774fe360382b94a363d281afacd5.json'),
(501, 516, 'user_uploads/2/audio/2019/07/qrs-connect_9eed78e5084dad03da3b13bea5552603.mid|user_uploads/2/audio/2019/07/qrs-connect_46cdc7a2ef1e58b15119e165a2ba2e3f.json'),
(502, 517, 'user_uploads/2/audio/2019/07/qrs-connect_da4dd821a2c550e626c9fc0630ea0279.mid|user_uploads/2/audio/2019/07/qrs-connect_24d1aa3801e28c74cb50c1b24a5facfc.json'),
(503, 518, 'user_uploads/2/audio/2019/07/qrs-connect_722c7d6f9c4bcf6be3274fef6a8d980a.mid|user_uploads/2/audio/2019/07/qrs-connect_9884382517bf387f82ba8e0308918d55.json'),
(504, 519, 'user_uploads/2/audio/2019/07/qrs-connect_62c7819291917e97ca32ceff5c57cf44.mid|user_uploads/2/audio/2019/07/qrs-connect_b7f227ca5e69e71b2243c95f4e30a1da.json'),
(505, 520, 'user_uploads/2/audio/2019/07/qrs-connect_605dc2e1183e1efe54a9afb69ba6227a.mid|user_uploads/2/audio/2019/07/qrs-connect_a902f9b53c420c8558303e5b2a563e8a.json'),
(506, 521, 'user_uploads/2/audio/2019/07/qrs-connect_de19c15f4ee312de7d3c37ec82b91454.mid|user_uploads/2/audio/2019/07/qrs-connect_1faf8715baaba4b3da2de1cb6d33b86c.json'),
(537, 552, 'user_uploads/2/audio/2019/07/qrs-connect_18dee7743b8f2e4ec34ec21bcb1417ce.flac'),
(538, 553, 'user_uploads/2/audio/2019/07/qrs-connect_4a02570552111e66c065af3296f52f61.flac'),
(539, 554, 'user_uploads/2/audio/2019/07/qrs-connect_93769f1a06b66a4823be068fc007d76e.flac'),
(544, 559, 'user_uploads/2/audio/2019/07/qrs-connect_3195fc1c6eaccf762960db6db3466b7a.flac'),
(541, 556, 'user_uploads/2/audio/2019/07/qrs-connect_e3a492a3a6d07da47bf0154e4bb2809a.flac'),
(535, 550, 'user_uploads/2/audio/2019/07/qrs-connect_52cbe1a32aaa5951c70fd6f1cafb7bef.flac'),
(546, 561, 'user_uploads/2/audio/2019/07/qrs-connect_a0ff9fe040be463c6ef28717ebb5987e.flac'),
(547, 562, 'user_uploads/2/audio/2019/07/qrs-connect_80bda95ccff3776fe168e90417d690e8.flac'),
(548, 563, 'user_uploads/2/audio/2019/07/qrs-connect_29067b6e602de4951fbe665e30bb039d.flac'),
(549, 564, 'user_uploads/2/audio/2019/07/qrs-connect_6c0464a4fecd52f81b02a7ac70a7174e.flac'),
(550, 565, 'user_uploads/2/audio/2019/07/qrs-connect_e460a145aa5ef8af155353f7681130f3.flac'),
(551, 566, 'user_uploads/2/audio/2019/08/qrs-connect_d8471f05341e712b9b4f2d44ff0391aa.mid|user_uploads/2/audio/2019/08/qrs-connect_1b71415a12b8f6972d18c976c0f5253e.json'),
(552, 567, 'user_uploads/2/audio/2019/08/qrs-connect_ae3b890f4f0510c6e609d54df46aaf45.mid|user_uploads/2/audio/2019/08/qrs-connect_105de7aa9e97fc0c58926eee293f10d2.json'),
(545, 560, 'user_uploads/2/audio/2019/07/qrs-connect_d15aa74c8480a22cb335a1612e45352f.flac'),
(553, 568, 'user_uploads/2/audio/2019/08/qrs-connect_074de5454a9aacf1ad3c3905c64e689c.mid|user_uploads/2/audio/2019/08/qrs-connect_176833258f1b3ca8182ea606e9e7250d.json'),
(554, 569, 'user_uploads/2/audio/2019/08/qrs-connect_5d84081d510d51cca2a66202f11e95da.mid|user_uploads/2/audio/2019/08/qrs-connect_fa28bb9125a7a557be4f2659ec39e507.json'),
(555, 570, 'user_uploads/2/audio/2019/08/qrs-connect_901e7f8b6addb20d707da9379d9a9440.mid|user_uploads/2/audio/2019/08/qrs-connect_784d831eb2a0ff77781fe05171371d3b.json'),
(556, 571, 'user_uploads/2/audio/2019/08/qrs-connect_9540e67809b3604caae342a93eaff1b9.mid|user_uploads/2/audio/2019/08/qrs-connect_c822d8288e840a256255e57ed64a6937.json'),
(557, 572, 'user_uploads/2/audio/2019/08/qrs-connect_30fe53a3ded80c3415def0f966d5e572.mid|user_uploads/2/audio/2019/08/qrs-connect_274a92cf8a26b171e8ba49937a2dc195.json'),
(558, 573, 'user_uploads/2/audio/2019/08/qrs-connect_83c73fd131e85854b13027343d98a212.mid|user_uploads/2/audio/2019/08/qrs-connect_40bcb2d8724abbe47c166439ef454af4.json'),
(559, 574, 'user_uploads/2/audio/2019/08/qrs-connect_05c5b2b3a5a1d97f7f84bc2af13100c5.mid|user_uploads/2/audio/2019/08/qrs-connect_1475ae2819e7ed8f8013e8b1e15c2286.json'),
(560, 575, 'user_uploads/2/audio/2019/08/qrs-connect_730ee0708cc0f8b6d76b2020d20d6eef.mid|user_uploads/2/audio/2019/08/qrs-connect_a87e8672b07b83829783a8d43943630e.json'),
(561, 576, 'user_uploads/2/audio/2019/08/qrs-connect_8caa21a148304a49d9e8c7a4360e2fe7.mid|user_uploads/2/audio/2019/08/qrs-connect_62292b8d86029243d0584ae96ad8b83c.json'),
(562, 577, 'user_uploads/2/audio/2019/08/qrs-connect_dae2a7e19f52e74baa71a3598c5e3819.mid|user_uploads/2/audio/2019/08/qrs-connect_5a8fc049d7d1bde0c5abe10988d9a728.json'),
(563, 578, 'user_uploads/2/audio/2019/08/qrs-connect_afa696f3137d9251bdb4438472fb6a5b.mid|user_uploads/2/audio/2019/08/qrs-connect_bac890bfd01ca169a935f3159099ccf4.json'),
(564, 579, 'user_uploads/2/audio/2019/08/qrs-connect_9ca23627eb858cac48f267d8c5a01126.mid|user_uploads/2/audio/2019/08/qrs-connect_b5e08682cf570be98db26f73c219c341.json'),
(565, 580, 'user_uploads/2/audio/2019/08/qrs-connect_0516c0fb52dd11819a1c157bd752a8ad.mid|user_uploads/2/audio/2019/08/qrs-connect_a693541a2de39da7c4a7303cce2e1f56.json'),
(566, 581, 'user_uploads/2/audio/2019/08/qrs-connect_9f48d6fd0367fe96dfa1139a82fb51a3.mid|user_uploads/2/audio/2019/08/qrs-connect_191196896520ba1f42a5f14d9b165752.json'),
(567, 582, 'user_uploads/2/audio/2019/08/qrs-connect_7fb491c635bbf3b12abc79ca093d735f.mid|user_uploads/2/audio/2019/08/qrs-connect_0de7640c99fb036e697df22ea879425b.json'),
(568, 583, 'user_uploads/2/audio/2019/08/qrs-connect_6c6e0ebcd5d1afab2c8845ab22102750.mid|user_uploads/2/audio/2019/08/qrs-connect_d177ec7ff25a6eec2fe5f629a0101ad8.json'),
(569, 584, 'user_uploads/2/audio/2019/08/qrs-connect_141176df092537238e7a24d6aecb80a9.mid|user_uploads/2/audio/2019/08/qrs-connect_c23c3a7ae62cd18f89e73703d8eca701.json'),
(570, 585, 'user_uploads/2/audio/2019/08/qrs-connect_9cf1edffc66e1f76147a08ba6f11b722.mid|user_uploads/2/audio/2019/08/qrs-connect_c1d478f3dd93d920b9f11ccab14f02ea.json'),
(571, 586, 'user_uploads/2/audio/2019/08/qrs-connect_443aaed9d07329edb97408f48bf63350.mid|user_uploads/2/audio/2019/08/qrs-connect_4a010b9b782dda8deb47ee210674a46c.json'),
(572, 587, 'user_uploads/2/audio/2019/08/qrs-connect_4a6c8e532735521c11c10e873a6dbfa2.mid|user_uploads/2/audio/2019/08/qrs-connect_bdab5ae3a9e781508c289e5d5b0dea23.json'),
(573, 588, 'user_uploads/2/audio/2019/08/qrs-connect_42471731ccc8f24a46155de1c206789f.mid|user_uploads/2/audio/2019/08/qrs-connect_d2ebd79c2fff14ac5f2d791b96a04bcf.json'),
(574, 589, 'user_uploads/2/audio/2019/08/qrs-connect_8e48c27892b9a067d91d4ffa4ab31934.mid|user_uploads/2/audio/2019/08/qrs-connect_b44ee68ca07024378af214f6d8d0307c.json'),
(575, 590, 'user_uploads/2/audio/2019/08/qrs-connect_6b9714940ece0d3ec502f4edaf4e31ee.mid|user_uploads/2/audio/2019/08/qrs-connect_682a8834e9c79e2cd48e50d84b0304b8.json'),
(576, 591, 'user_uploads/2/audio/2019/08/qrs-connect_9a5593a23d992fd436444f189caca727.mid|user_uploads/2/audio/2019/08/qrs-connect_78772de569c8239023e5eb3e2a04238b.json'),
(577, 592, 'user_uploads/2/audio/2019/08/qrs-connect_9c7c7bc99145dfd56a3f11db64737bec.mid|user_uploads/2/audio/2019/08/qrs-connect_212162dda20aef24d32c47d47b0d9e8b.json'),
(578, 593, 'user_uploads/2/audio/2019/08/qrs-connect_94b936475d7cd25c870af0939711c8af.mid|user_uploads/2/audio/2019/08/qrs-connect_ed159de9f23768c840c012b8898abe81.json'),
(579, 594, 'user_uploads/2/audio/2019/08/qrs-connect_a8b6c3f9a53246e811a88807ae6dbabe.mid|user_uploads/2/audio/2019/08/qrs-connect_43301ed8a2adb2fbb1207e7ec7721db1.json'),
(580, 595, 'user_uploads/2/audio/2019/08/qrs-connect_127072466968ba9b6a4032b7c285f229.mid|user_uploads/2/audio/2019/08/qrs-connect_90adfcabaccb0b473899289f1ced1288.json'),
(581, 596, 'user_uploads/2/audio/2019/08/qrs-connect_eca34ad8493e35b5facfae3eeacde43e.mid|user_uploads/2/audio/2019/08/qrs-connect_6dcfbc0b25aaf321dde788d076ae2f8d.json'),
(582, 597, 'user_uploads/2/audio/2019/08/qrs-connect_df0372f5c310f0a5fbb666f7ed1319a8.mid|user_uploads/2/audio/2019/08/qrs-connect_b7d3557643a0ebd5c172b737ebdd26f9.json'),
(583, 598, 'user_uploads/2/audio/2019/08/qrs-connect_d71d26b4750ac95d972eac2e2fc09bfd.mid|user_uploads/2/audio/2019/08/qrs-connect_5c0e810fffe81ce7ba3171214c2a7b76.json'),
(584, 599, 'user_uploads/2/audio/2019/08/qrs-connect_1624b143e169ee5075cd1d9aeffadcf5.mid|user_uploads/2/audio/2019/08/qrs-connect_2100cbfca18a13fe00a86f77364aba81.json'),
(585, 600, 'user_uploads/2/audio/2019/08/qrs-connect_3689ff9cbd73af30695aa0803f920173.mid|user_uploads/2/audio/2019/08/qrs-connect_4251c928ce66f82a2e195013b3ae3e77.json'),
(586, 601, 'user_uploads/2/audio/2019/08/qrs-connect_b0238065b5e4cdf76a6a471b4fd69633.mid|user_uploads/2/audio/2019/08/qrs-connect_d8f476c7597a3755ee01b8a0cb0e65b8.json'),
(587, 602, 'user_uploads/2/audio/2019/08/qrs-connect_a2672deda00c221084c422b6823cf5fd.mid|user_uploads/2/audio/2019/08/qrs-connect_22fcf1951b751abcb30b543c89c23827.json'),
(588, 603, 'user_uploads/2/audio/2019/08/qrs-connect_2bb6ad26084af2563e5cc6cbfbe5d61f.flac'),
(589, 604, 'user_uploads/2/audio/2019/08/qrs-connect_8932d4f86cee0d6a3a5f5acc70e558ea.mid|user_uploads/2/audio/2019/08/qrs-connect_74558835ead7cfc174dd635909bdb917.json'),
(590, 605, 'user_uploads/2/audio/2019/08/qrs-connect_a5c9cba445546191fd9120a9738d3af7.mid|user_uploads/2/audio/2019/08/qrs-connect_ea12ead8eda806fe45b5a5900d267fec.json'),
(591, 606, 'user_uploads/2/audio/2019/08/qrs-connect_ed2813a5c45ade2465c318feff13486f.mid|user_uploads/2/audio/2019/08/qrs-connect_b2409bf4e2e6d50873a337c3e31c8045.json'),
(592, 607, 'user_uploads/2/audio/2019/08/qrs-connect_246f1bb7f733202a44ccbc52b5fc5262.mid|user_uploads/2/audio/2019/08/qrs-connect_05a95fa09e5bf486fc1db83b0dbd671a.json'),
(593, 608, 'user_uploads/2/audio/2019/08/qrs-connect_c6d3141aadd927d34b93ce8151db702f.mid|user_uploads/2/audio/2019/08/qrs-connect_a559d582de80c53beebb8124ac7f3c1c.json'),
(594, 609, 'user_uploads/2/audio/2019/08/qrs-connect_d993737c34161c5cdc9b7869cf522aad.mid|user_uploads/2/audio/2019/08/qrs-connect_4b6fa3c134d1c9c4027641b32567ce3e.json'),
(595, 610, 'user_uploads/2/audio/2019/08/qrs-connect_e41d89546eb36a66e428fa9e912e2491.mid|user_uploads/2/audio/2019/08/qrs-connect_7e0db88ce9e7321362850018f3b494a0.json'),
(596, 611, 'user_uploads/2/audio/2019/08/qrs-connect_3f7dbe35fa6ded1939f1702ad9e717dc.mid|user_uploads/2/audio/2019/08/qrs-connect_9c461a955c99deb61c0935444c897513.json'),
(597, 612, 'user_uploads/2/audio/2019/08/qrs-connect_5d3f6fd4be0e2204187d3a4751b6f31e.mid|user_uploads/2/audio/2019/08/qrs-connect_5d227cde72b62055fc529af9b3337f13.json'),
(598, 613, 'user_uploads/2/audio/2019/08/qrs-connect_7fb4a0234097ed7178b6da658a5ca13d.mid|user_uploads/2/audio/2019/08/qrs-connect_8aad0afc8077d103b6b023b21329a6f8.json'),
(599, 614, 'user_uploads/2/audio/2019/08/qrs-connect_754381ca765b6720cec58ec08fa77570.mid|user_uploads/2/audio/2019/08/qrs-connect_392e36b7a4d9ec56fc52da38d3b51253.json'),
(600, 615, 'user_uploads/2/audio/2019/08/qrs-connect_d0c1a72688176bb9fb2e54fd1f865393.mid|user_uploads/2/audio/2019/08/qrs-connect_a82d34656ec53cb8cc844cc85df587e5.json'),
(601, 616, 'user_uploads/2/audio/2019/08/qrs-connect_2ec767008ba7cc167fe0ba8de148d40c.mid|user_uploads/2/audio/2019/08/qrs-connect_443d70b05c1e7fb4ffcb4929eee64f77.json'),
(602, 617, 'user_uploads/2/audio/2019/08/qrs-connect_e98166e5ae5022d29141b416513f1cf2.mid|user_uploads/2/audio/2019/08/qrs-connect_9c0dd6b6d4b33a9a9d18dae88e6aa40f.json'),
(603, 618, 'user_uploads/2/audio/2019/08/qrs-connect_b71153b824a33540daa4d4788326b991.mid|user_uploads/2/audio/2019/08/qrs-connect_8d202855602fba7978e289f524a39f03.json'),
(604, 619, 'user_uploads/2/audio/2019/08/qrs-connect_3c9fcc59e70deed7e7845bd6baba8bfa.mid|user_uploads/2/audio/2019/08/qrs-connect_5d5b941a03d299f48a5ca2eb8d2389c2.json'),
(605, 620, 'user_uploads/2/audio/2019/08/qrs-connect_3ef213948bdab0a0bd247909bd301f6a.mid|user_uploads/2/audio/2019/08/qrs-connect_e1fa34dcc80b8933a73c5af2041de269.json'),
(606, 621, 'user_uploads/2/audio/2019/08/qrs-connect_5c42b7844c859e42f1e79f05de7fd782.mid|user_uploads/2/audio/2019/08/qrs-connect_edb4441aad2acc71f8c1b81c4de50892.json'),
(607, 622, 'user_uploads/2/audio/2019/08/qrs-connect_9ca4acf16e9779213a386da45bb7feba.mid|user_uploads/2/audio/2019/08/qrs-connect_614b28441ba77ecebb5e820bec0493da.json'),
(608, 623, 'user_uploads/2/audio/2019/08/qrs-connect_59f0a8538dc5ae729aa10f8d38723155.mid|user_uploads/2/audio/2019/08/qrs-connect_42e9179e05a4364d40ffdce3dca851a8.json'),
(609, 624, 'user_uploads/2/audio/2019/08/qrs-connect_fb6702514cb669a385fc1b58e8687bf8.mid|user_uploads/2/audio/2019/08/qrs-connect_ad3ea502db5c210f3ba950a650939549.json'),
(610, 625, 'user_uploads/2/audio/2019/08/qrs-connect_f4b0fb34486819ae20d7463f1a25ed08.mid|user_uploads/2/audio/2019/08/qrs-connect_33f4498266ca7bacb30ba96a5596343f.json'),
(611, 626, 'user_uploads/2/audio/2019/08/qrs-connect_28e635f9fa65fd2588abccd55aa8abce.mid|user_uploads/2/audio/2019/08/qrs-connect_b0eae603143b5ba8febc7623c1420846.json'),
(612, 627, 'user_uploads/2/audio/2019/08/qrs-connect_7c967c85ea0ed187b908baa00e2559c8.mid|user_uploads/2/audio/2019/08/qrs-connect_fe0cb6eccac74a22e89fc735887c482d.json'),
(613, 628, 'user_uploads/2/audio/2019/08/qrs-connect_e0178450d57faa4e499d881a2a1a1bef.mid|user_uploads/2/audio/2019/08/qrs-connect_e1032c783a18ecb74f2083b59122aaf3.json'),
(614, 629, 'user_uploads/2/audio/2019/08/qrs-connect_7c0e7e9bfbb736d06cbb3f69b59ca0ff.mid|user_uploads/2/audio/2019/08/qrs-connect_bbb1932390e31417d4518c940d159669.json'),
(615, 630, 'user_uploads/2/audio/2019/08/qrs-connect_d6cc616355acaf6547331f6514dec436.mid|user_uploads/2/audio/2019/08/qrs-connect_b09f074701a38c1c148b1299c35c60d3.json'),
(616, 631, 'user_uploads/2/audio/2019/08/qrs-connect_3d378395c65ba86c99681711a6b2b345.mid|user_uploads/2/audio/2019/08/qrs-connect_2f6b2fbec65a7adcaf89c6fe9d212135.json'),
(617, 632, 'user_uploads/2/audio/2019/08/qrs-connect_05431a61d2ba96614bafad640325e97d.mid|user_uploads/2/audio/2019/08/qrs-connect_03ed95b833947f9354df33049f88a8dc.json'),
(618, 633, 'user_uploads/2/audio/2019/08/qrs-connect_d9ab72c7b7ba5bd63fc46ddd9752b9b1.mid|user_uploads/2/audio/2019/08/qrs-connect_8e850d59c5a052261f54855e90d67e18.json'),
(619, 634, 'user_uploads/2/audio/2019/08/qrs-connect_da6cfec1edb5f87c8ef60f60617c0e10.mid|user_uploads/2/audio/2019/08/qrs-connect_9bffcf8f57168ba225f89de4e77730e6.json'),
(620, 635, 'user_uploads/2/audio/2019/08/qrs-connect_d3d8e10e1df109c8c070dad2fbe77de5.mid|user_uploads/2/audio/2019/08/qrs-connect_a2ad506a4607d6869921c6d75b56f01f.json'),
(621, 636, 'user_uploads/2/audio/2019/08/qrs-connect_904b0f08e454f56894e9ce9fbfee828b.mid|user_uploads/2/audio/2019/08/qrs-connect_806a8fd5d21c7f43b3d452d0062df9b8.json'),
(622, 637, 'user_uploads/2/audio/2019/08/qrs-connect_21450fce6a78c6eadd166322df5dc921.mid|user_uploads/2/audio/2019/08/qrs-connect_7d40f8f4e85290635564ec3577ae324e.json'),
(623, 638, 'user_uploads/2/audio/2019/08/qrs-connect_1bb69899d0b3f2befed41f63b6545973.mid|user_uploads/2/audio/2019/08/qrs-connect_a835440d2e6ec59c0a5b445c414aa101.json'),
(624, 639, 'user_uploads/2/audio/2019/08/qrs-connect_20b57936e609cd5e5e3ae9df218dc262.mid|user_uploads/2/audio/2019/08/qrs-connect_4fdd25ece33b280ae6d99618fd25be50.json'),
(625, 640, 'user_uploads/2/audio/2019/08/qrs-connect_7bf4c22e6b040ec31470f515e1fe2783.mid|user_uploads/2/audio/2019/08/qrs-connect_f6585d20d078691c45529c5aef534c4b.json'),
(626, 641, 'user_uploads/2/audio/2019/08/qrs-connect_72ee636f7707d1f84474b1227d1a9a88.mid|user_uploads/2/audio/2019/08/qrs-connect_4816e3a0272400eb55e4ef07dd67d38f.json'),
(627, 642, 'user_uploads/2/audio/2019/08/qrs-connect_74faee9dbac17821c78236dc4fcd744a.mid|user_uploads/2/audio/2019/08/qrs-connect_a8936341abe319404146b171e4f6c076.json'),
(628, 643, 'user_uploads/2/audio/2019/08/qrs-connect_e0c5279f636799bc66cff80a472a0295.mid|user_uploads/2/audio/2019/08/qrs-connect_364e0d12342895620e1363e0fd99ad5a.json'),
(629, 644, 'user_uploads/2/audio/2019/08/qrs-connect_cec419566cc36eb848d6cd598131b5cc.mid|user_uploads/2/audio/2019/08/qrs-connect_398766c89bb8c290181f9d145bdcbfa0.json'),
(630, 645, 'user_uploads/2/audio/2019/08/qrs-connect_383d4e318b179bf068574e5af3aa836f.mid|user_uploads/2/audio/2019/08/qrs-connect_5f3f495cf70ca08339ac85f74d6706c2.json'),
(631, 646, 'user_uploads/2/audio/2019/08/qrs-connect_5a342e5f294b157d0b37fa7421836ab3.mid|user_uploads/2/audio/2019/08/qrs-connect_2d7e117b0c30d5cfc9fa24feb88e1c2e.json'),
(632, 647, 'user_uploads/2/audio/2019/08/qrs-connect_01f537343daa05184cc5a8136a7fa375.mid|user_uploads/2/audio/2019/08/qrs-connect_b7f097719563d76a0b0e1a05a383434e.json'),
(633, 648, 'user_uploads/2/audio/2019/08/qrs-connect_6211529c650c1908d4c5da74b601a5f7.mid|user_uploads/2/audio/2019/08/qrs-connect_d3a84810ebb8f06dba2147ea1a7289ba.json'),
(634, 649, 'user_uploads/2/audio/2019/08/qrs-connect_2b58e14dd1f16dcfa44e9ed6cdb7942a.mid|user_uploads/2/audio/2019/08/qrs-connect_130aa6c6974a60672a26d01b0aa2b163.json'),
(635, 650, 'user_uploads/2/audio/2019/08/qrs-connect_11341dea8607e75d931b5fd2dc7a88f5.mid|user_uploads/2/audio/2019/08/qrs-connect_a829b69f124015bbd09dcba82b904f26.json'),
(636, 651, 'user_uploads/2/audio/2019/08/qrs-connect_4d3db0921175639a6ab3d79337b59c52.mid|user_uploads/2/audio/2019/08/qrs-connect_b0cf25a013b7d9a18b167668de508a2c.json'),
(637, 652, 'user_uploads/2/audio/2019/09/qrs-connect_cdf7f1bd4f6f9288db7f74a6fb4401c7.mid|user_uploads/2/audio/2019/09/qrs-connect_8164cdd0e25c265be27134aa67fc34fb.json'),
(638, 653, 'user_uploads/2/audio/2019/09/qrs-connect_5d1e83ede1880c9866bdc3faadf9f711.mid|user_uploads/2/audio/2019/09/qrs-connect_57d2ddc9f3d648fabcb28b619b8b84d1.json'),
(639, 654, 'user_uploads/2/audio/2019/09/qrs-connect_360a4cd5ea15787fba79f165573b4765.flac'),
(640, 655, 'user_uploads/2/audio/2019/09/qrs-connect_f9373ebfc0468b7d4a8c422d541057af.flac'),
(649, 664, ''),
(651, 666, 'user_uploads/2/audio/2019/09/qrs-connect_10e8f1649b14e826f705ad45a03d5167.mid|user_uploads/2/audio/2019/09/qrs-connect_7ac40d293591493576698738d2da83b1.json'),
(642, 657, 'user_uploads/8/audio/2019/09/qrs-connect_7c210688a62da595dc18cb03cea8cdc4.flac'),
(643, 658, 'user_uploads/8/audio/2019/09/qrs-connect_6cbb62c77ef83f0fc27a2e44af904bde.flac'),
(644, 659, 'user_uploads/8/audio/2019/09/qrs-connect_8884cdde6dde3870bd641e9becece0f5.flac'),
(645, 660, 'user_uploads/8/audio/2019/09/qrs-connect_3527f541def3bce857fb449867ea3f99.flac'),
(646, 661, 'user_uploads/8/audio/2019/09/qrs-connect_69355f045c6507d48e948804f550a293.flac'),
(647, 662, 'user_uploads/8/audio/2019/09/qrs-connect_c73a4151aa278e91da83e604bb92e9e9.flac'),
(648, 663, 'user_uploads/2/audio/2019/09/qrs-connect_00f960bf7b087b031a06e13b490523d1.mid|user_uploads/2/audio/2019/09/qrs-connect_53f53ff18388c1cd0ee294dfc4900def.json'),
(652, 667, 'user_uploads/2/audio/2019/09/qrs-connect_27699eb5ad8aa2931a6d7ec13473502e.mid|user_uploads/2/audio/2019/09/qrs-connect_faf81e1b12cd3d00f44b0c5a899ce521.json'),
(653, 668, 'user_uploads/2/audio/2019/09/qrs-connect_10505ac865e87fa6be23958a97ac0a3f.mid|user_uploads/2/audio/2019/09/qrs-connect_7badaaf982227f665dbf3f0d213dc680.json'),
(654, 669, 'user_uploads/2/audio/2019/09/qrs-connect_bb63a144fbc238888d7449d27483807d.mid|user_uploads/2/audio/2019/09/qrs-connect_f0e24fcede11147e69b7bf677ad3e440.json'),
(655, 670, 'user_uploads/2/audio/2019/09/qrs-connect_7ee29557ca8829675c5789e1a324f0b1.mid|user_uploads/2/audio/2019/09/qrs-connect_534c1fa69dd097b364f7ca0b39b6c4d1.json'),
(656, 671, 'user_uploads/2/audio/2019/09/qrs-connect_0ff856840616def73c45bf90525108a5.mid|user_uploads/2/audio/2019/09/qrs-connect_445020c0cf9ae8d95676417ca3fdd234.json'),
(657, 672, 'user_uploads/2/audio/2019/09/qrs-connect_2b829ff830b93843274b9b0b2ea3242c.mid|user_uploads/2/audio/2019/09/qrs-connect_840bb55f946832f892a84e71b494a804.json'),
(658, 673, 'user_uploads/2/audio/2019/09/qrs-connect_c228d4528ef06f464a4a8c1854a1b6cc.mid|user_uploads/2/audio/2019/09/qrs-connect_52c9da689595815149646a1a297f85ff.json'),
(659, 674, 'user_uploads/2/audio/2019/09/qrs-connect_a9610dccba13a41df3719f4ee977eb9e.mid|user_uploads/2/audio/2019/09/qrs-connect_83944ddb97d6adccf2ce5b990afed079.json'),
(660, 675, 'user_uploads/2/audio/2019/09/qrs-connect_247fae56853778c3aecadfcf950dfbc7.mid|user_uploads/2/audio/2019/09/qrs-connect_3552b0db3141141abdec29956977ff09.json'),
(661, 676, 'user_uploads/2/audio/2019/09/qrs-connect_4026970d5c672056125789316c64e9a2.mid|user_uploads/2/audio/2019/09/qrs-connect_0d37912c726111a3800d70c8057d546b.json'),
(662, 677, 'user_uploads/2/audio/2019/09/qrs-connect_49c3dfe647d62619e54ec8549283f70b.mid|user_uploads/2/audio/2019/09/qrs-connect_0e776fc702a0192b176f284546139ba2.json'),
(663, 678, 'user_uploads/2/audio/2019/09/qrs-connect_9a1f674e91427310a8b49fcf82f01003.mid|user_uploads/2/audio/2019/09/qrs-connect_922e4c3f2d5d11c6f82cdef5e3fecbda.json'),
(664, 679, 'user_uploads/2/audio/2019/09/qrs-connect_4d777921951d4a8d44eb3faac7740491.mid|user_uploads/2/audio/2019/09/qrs-connect_0704b18145997b666c66784face6c301.json'),
(665, 680, 'user_uploads/2/audio/2019/09/qrs-connect_f9e6299d0ddc21e63968a73c54fd68be.mid|user_uploads/2/audio/2019/09/qrs-connect_010bd550b054bde0b70aebf1533979cf.json'),
(666, 681, 'user_uploads/2/audio/2019/09/qrs-connect_29ab45c3a0e2a1e0eb58c968d52d6198.mid|user_uploads/2/audio/2019/09/qrs-connect_7301877eaedfac1ca35061369f5b92c4.json'),
(667, 682, 'user_uploads/2/audio/2019/09/qrs-connect_a9b8d89e3ead7ed5889e42b6b70f1302.mid|user_uploads/2/audio/2019/09/qrs-connect_000e1b204876d4cab6e67983488e6117.json'),
(668, 683, 'user_uploads/2/audio/2019/09/qrs-connect_dbe4eb63639120df3bdff602516cf33f.mid|user_uploads/2/audio/2019/09/qrs-connect_23c8f117d67af4b742e40d1dbf86dd6b.json'),
(669, 684, 'user_uploads/2/audio/2019/09/qrs-connect_2d5900df8c1b4e3c1040d93c31c9cbf3.mid|user_uploads/2/audio/2019/09/qrs-connect_8fbe6882e9084b1e415e9356a6e74008.json'),
(670, 685, 'user_uploads/2/audio/2019/09/qrs-connect_42217a510c0838529a61fad156df89a7.mid|user_uploads/2/audio/2019/09/qrs-connect_4491cc2f1566431b6d026d02f03410bb.json'),
(671, 686, 'user_uploads/2/audio/2019/09/qrs-connect_60864c0aededbc588d9d36afc0d42377.mid|user_uploads/2/audio/2019/09/qrs-connect_ea5196d6defb63924c6af1ff48917e15.json'),
(672, 687, 'user_uploads/2/audio/2019/09/qrs-connect_f71c7782da49acd3ea2dc25dc4761540.mid|user_uploads/2/audio/2019/09/qrs-connect_d30a7726422d12748069b6ec02d04f70.json'),
(673, 688, 'user_uploads/2/audio/2019/09/qrs-connect_e2166d0378c4cdab71f97d737c020db8.mid|user_uploads/2/audio/2019/09/qrs-connect_ac22973a3ae092e4c7fc2d08063d3487.json'),
(674, 689, 'user_uploads/2/audio/2019/09/qrs-connect_4973be21f2bf5d9b05dbd9d4940e2e9c.mid|user_uploads/2/audio/2019/09/qrs-connect_4cbbc859a1911931c428518276fb30f2.json'),
(675, 690, 'user_uploads/2/audio/2019/09/qrs-connect_1765c754ed13e75eaf93edc304470985.mid|user_uploads/2/audio/2019/09/qrs-connect_a0d3ab873223a41b91add1e4287b718a.json'),
(676, 691, 'user_uploads/2/audio/2019/09/qrs-connect_7bbbc435d86265f3411bbae996b161be.mid|user_uploads/2/audio/2019/09/qrs-connect_7f288ba5648948cfb6a48ac25f8e762b.json'),
(677, 692, 'user_uploads/2/audio/2019/09/qrs-connect_64e7351e067629b7e4437054c9f1812e.mid|user_uploads/2/audio/2019/09/qrs-connect_3cacc39be1a2de0584948be9e8223956.json'),
(678, 693, 'user_uploads/2/audio/2019/09/qrs-connect_8b7512d676670bbcaf38d96bfbefee6a.mid|user_uploads/2/audio/2019/09/qrs-connect_3aa9ed2fd10e66c3cb866af0d10cee54.json'),
(679, 694, 'user_uploads/2/audio/2019/09/qrs-connect_3ebe8fbcb75e00bcb00254e18dda63c5.mid|user_uploads/2/audio/2019/09/qrs-connect_a7c1ecf305ebbfd78fd307764a9cf20a.json'),
(680, 695, 'user_uploads/2/audio/2019/09/qrs-connect_3ea9146ae53089040a04bf959eb7a898.mid|user_uploads/2/audio/2019/09/qrs-connect_21a79fa376bf85ca28520dfe979e8967.json'),
(681, 696, 'user_uploads/2/audio/2019/09/qrs-connect_71aaf3f7ac02d029f742c3c81faf1475.mid|user_uploads/2/audio/2019/09/qrs-connect_3f2dc80c254900155fc066846b153573.json'),
(682, 697, 'user_uploads/2/audio/2019/09/qrs-connect_862fab41cc6ad6b4ceacee5ee888823d.mid|user_uploads/2/audio/2019/09/qrs-connect_ae88bf5fe759f6f22d287680d1637628.json'),
(683, 698, 'user_uploads/2/audio/2019/09/qrs-connect_fe4e02a681a2fdca2a463a98b6103962.mid|user_uploads/2/audio/2019/09/qrs-connect_0b57a6b1290f0643a751ab0da3348ad3.json'),
(684, 699, 'user_uploads/2/audio/2019/09/qrs-connect_a6813c12514dadc8eaadb19e73b2a308.mid|user_uploads/2/audio/2019/09/qrs-connect_1684bdf3d2affd6a431cf82a0cbac948.json'),
(685, 700, 'user_uploads/2/audio/2019/09/qrs-connect_d05d64ae2a7e6f30e50579984158d388.mid|user_uploads/2/audio/2019/09/qrs-connect_de1a2e0fa69e7ac5198b7e6bbd0e1281.json'),
(686, 701, 'user_uploads/2/audio/2019/09/qrs-connect_5144597ee32ee5575e5cf5a785d4ada8.mid|user_uploads/2/audio/2019/09/qrs-connect_c3607f184357a133c27c6c8a034ddbf7.json'),
(687, 702, 'user_uploads/2/audio/2019/09/qrs-connect_ed31a94e879f4a2de8687a1ee494494c.mid|user_uploads/2/audio/2019/09/qrs-connect_5673ff5a257153b36e40be8991121693.json'),
(688, 703, 'user_uploads/2/audio/2019/09/qrs-connect_9882e160c8dd869be4002505012fbe68.mid|user_uploads/2/audio/2019/09/qrs-connect_b311ff0680f33d4582a1656f4dbc98f8.json'),
(689, 704, 'user_uploads/2/audio/2019/09/qrs-connect_0fa5ff0123c3ea5ef6af5153591edb2c.mid|user_uploads/2/audio/2019/09/qrs-connect_ec4dc4201ca8ffa723a8ba5735524804.json'),
(690, 705, 'user_uploads/2/audio/2019/09/qrs-connect_eb0a5bdcd5f9cc1883dae0cfd8cb034c.mid|user_uploads/2/audio/2019/09/qrs-connect_796cd90713913d4fba1be2b6042132da.json'),
(691, 706, 'user_uploads/2/audio/2019/09/qrs-connect_5d7a4390ff3ae7fc100735493ab1e07b.mid|user_uploads/2/audio/2019/09/qrs-connect_18fd9ae2ec4721935db6e3d017d9c3d7.json'),
(692, 707, ''),
(693, 708, 'user_uploads/2/audio/2019/09/qrs-connect_a9a095c5f6bf4929f0f96fa0af451a5f.mid|user_uploads/2/audio/2019/09/qrs-connect_fd6227aab614d2a1875e1913d5cdd777.json'),
(694, 709, 'user_uploads/8/audio/2019/10/qrs-connect_3284344bd757488131b09d70326d0eca.mid|user_uploads/8/audio/2019/10/qrs-connect_ce49a78045698e522a4bab73d62ad87e.json'),
(695, 710, 'user_uploads/8/audio/2019/10/qrs-connect_c4af91612b0d43fe3feb492d75be4634.mid|user_uploads/8/audio/2019/10/qrs-connect_b2f67c7e6a47679a302a364f33f13daf.json'),
(696, 711, 'user_uploads/8/audio/2019/10/qrs-connect_18e6d5c40c68f2f12c483988334e3e33.mid|user_uploads/8/audio/2019/10/qrs-connect_f4bc8aae5481681697140ef23d7cd8ea.json'),
(697, 712, 'user_uploads/8/audio/2019/10/qrs-connect_03041e7431ea00e41cf6e23a23dd74e6.mid|user_uploads/8/audio/2019/10/qrs-connect_7856ce790b5c89f2fdd5fcfbd2034258.json'),
(698, 713, 'user_uploads/8/audio/2019/10/qrs-connect_23af034a4b22a1845fb4a4a03b3dcfbf.mid|user_uploads/8/audio/2019/10/qrs-connect_3d2d86701c9fc68522f37e32a92bcb35.json'),
(699, 714, 'user_uploads/8/audio/2019/10/qrs-connect_b485243a94a5fdce99e9fafd6415857b.mid|user_uploads/8/audio/2019/10/qrs-connect_3830dd805c2ef2e297f00c669128dc0f.json'),
(700, 715, 'user_uploads/8/audio/2019/10/qrs-connect_b28ece9b5ec3215fce5b3bfda881f2c9.mid|user_uploads/8/audio/2019/10/qrs-connect_54ba3bcce08f0db77636c4b8ea042849.json'),
(701, 716, 'user_uploads/8/audio/2019/10/qrs-connect_11c38ca107c287ef8af93cde66c31422.mid|user_uploads/8/audio/2019/10/qrs-connect_ea9caf0de75cfc2511b76b8e132ea8f8.json'),
(702, 717, 'user_uploads/8/audio/2019/10/qrs-connect_d7aa7c52517b7a80a89e94fcf0a1b7cd.mid|user_uploads/8/audio/2019/10/qrs-connect_052f7cd55b269deff88877cc1a8f450c.json'),
(703, 718, 'user_uploads/8/audio/2019/10/qrs-connect_a024dce8b0edc13d87e2dcdc2bc0ba38.mid|user_uploads/8/audio/2019/10/qrs-connect_ddb8b38ccf683f5bb0274c6b252ea6e1.json'),
(704, 719, 'user_uploads/8/audio/2019/10/qrs-connect_6e89d5e3e8ea149549bc29a373769bbb.mid|user_uploads/8/audio/2019/10/qrs-connect_50cc3e0f381ebe72371bd221e975a43a.json'),
(705, 720, 'user_uploads/8/audio/2019/10/qrs-connect_bb8d8806f6c054ce684f280cede659a7.mid|user_uploads/8/audio/2019/10/qrs-connect_9a96ec037b7da900e9f042c046dfdaeb.json'),
(706, 721, 'user_uploads/8/audio/2019/10/qrs-connect_8e97f47a88d128d02335e2ad03a13e22.mid|user_uploads/8/audio/2019/10/qrs-connect_d9f8ca2ed144a0d777c2ae890cbc168e.json'),
(707, 722, 'user_uploads/8/audio/2019/10/qrs-connect_9dc1e22ea415c0a13f4618d03b4b9056.mid|user_uploads/8/audio/2019/10/qrs-connect_4dc64cb5bce0e162a6bfbb3a46084294.json'),
(708, 723, 'user_uploads/8/audio/2019/10/qrs-connect_7dc302e2c3157886ae72053ae2c0cfbc.mid|user_uploads/8/audio/2019/10/qrs-connect_e62f8a7e635f7f05d01039aadf004a43.json'),
(709, 724, 'user_uploads/8/audio/2019/10/qrs-connect_34c01cd5175cd32e770d06149a4489a3.mid|user_uploads/8/audio/2019/10/qrs-connect_67573119644e3f7d138bae0698e6ed16.json'),
(710, 725, 'user_uploads/8/audio/2019/10/qrs-connect_c9be4de3e805a36e4025c7cdcbac494d.flac'),
(711, 726, 'user_uploads/8/audio/2019/10/qrs-connect_591a1a369bf40e7af37521711750742f.mid|user_uploads/8/audio/2019/10/qrs-connect_9d93328250c46dd5c7214a37d64011e5.json'),
(712, 727, 'user_uploads/8/audio/2019/10/qrs-connect_9e8594f524bf95e8ac4bc0187b66370c.mid|user_uploads/8/audio/2019/10/qrs-connect_ae6ef4c69f1b1d0c079a8b5db4973347.json'),
(713, 728, 'user_uploads/8/audio/2019/10/qrs-connect_81d3b848829368f2ede7aaa8e75b933d.mid|user_uploads/8/audio/2019/10/qrs-connect_ea292c462d39d1b6144b8f5ea24b0f8c.json'),
(714, 729, 'user_uploads/8/audio/2019/10/qrs-connect_3ccfc3c82b6592aa9a78638c2ea4f52f.mid|user_uploads/8/audio/2019/10/qrs-connect_62e584bd15632dc966f26e0f3390caf7.json'),
(715, 730, 'user_uploads/8/audio/2019/10/qrs-connect_cd7891a0eafc8921cd24b3ba2d8c03f3.mid|user_uploads/8/audio/2019/10/qrs-connect_2a1183c2891f3cc3c74a607cd8b23269.json'),
(716, 731, 'user_uploads/8/audio/2019/10/qrs-connect_f275a6ed8b089f983f44ed2e067f8379.mid|user_uploads/8/audio/2019/10/qrs-connect_45125bdfd45b31e980afc986fe904d26.json'),
(717, 732, 'user_uploads/8/audio/2019/10/qrs-connect_b7a898f20fddf14ab0e3ca5b9158731a.mid|user_uploads/8/audio/2019/10/qrs-connect_8cc958fa10bc49780dd25f40421bb1dd.json'),
(718, 733, 'user_uploads/8/audio/2019/10/qrs-connect_11cf6c75b77fa93a2aecaa3d4e1881eb.mid|user_uploads/8/audio/2019/10/qrs-connect_7c7b85db6ddfc83136f1257480ccc756.json'),
(719, 734, 'user_uploads/8/audio/2019/10/qrs-connect_36ff8797a57a345dc66c7830e7372cd9.mid|user_uploads/8/audio/2019/10/qrs-connect_d3fae2341ad8603bd6b49c3e3519fd28.json'),
(720, 735, 'user_uploads/8/audio/2019/10/qrs-connect_f9068e45524d7d5cc29cea50d77c7c04.mid|user_uploads/8/audio/2019/10/qrs-connect_84c910ce5f7dd51d6c43e7c032c76be9.json'),
(721, 736, 'user_uploads/8/audio/2019/10/qrs-connect_605f10c00c32ad69a2322f1330b271ca.mid|user_uploads/8/audio/2019/10/qrs-connect_dbb16df56a48fa5ed381f5ebec23b03f.json'),
(722, 737, 'user_uploads/8/audio/2019/10/qrs-connect_ebba3c8d181e29a616f390966562f708.mid|user_uploads/8/audio/2019/10/qrs-connect_8674bf0b1f542427b7d004de7288b83f.json'),
(723, 738, 'user_uploads/8/audio/2019/10/qrs-connect_47d05029dc7a74742f20e4f7c8681325.mid|user_uploads/8/audio/2019/10/qrs-connect_d94c6f53a1d70569a602894bc0ac84d2.json'),
(724, 739, 'user_uploads/8/audio/2019/10/qrs-connect_3b3b3f7b5e8c63d5749adc6fd1f6901c.mid|user_uploads/8/audio/2019/10/qrs-connect_3ffc6b94edcd25408f6bb9294338b66e.json'),
(725, 740, 'user_uploads/8/audio/2019/10/qrs-connect_006c37e65c381e031ca90ae421fdbe37.mid|user_uploads/8/audio/2019/10/qrs-connect_6cb69b10224c982952147b5f197ddb48.json'),
(726, 741, 'user_uploads/2/audio/2019/10/qrs-connect_b1cbec39b3b2fef59a85d450c44a0adc.mid|user_uploads/2/audio/2019/10/qrs-connect_bde0c015b087625bd01bb183a0ceddea.json'),
(727, 742, 'user_uploads/8/audio/2019/10/qrs-connect_f72bc8558034ba9bf440c1a5f0868574.mid|user_uploads/8/audio/2019/10/qrs-connect_add7ac29d092b9e6a0a92a1e68bf0a6e.json'),
(728, 743, 'user_uploads/8/audio/2019/10/qrs-connect_3c6fda16216b8ed7702c9e7c1cd6fd2f.mid|user_uploads/8/audio/2019/10/qrs-connect_fba095d79b26def7ce2ed0392cda6caa.json'),
(729, 744, 'user_uploads/8/audio/2019/10/qrs-connect_245ad94b4715805b75ed97f4468c455d.mid|user_uploads/8/audio/2019/10/qrs-connect_99947f69e8d43ea8e4ac7ca55ea03545.json'),
(730, 745, 'user_uploads/8/audio/2019/10/qrs-connect_0cfb1e3c75b4d5f155877875e0184e93.mid|user_uploads/8/audio/2019/10/qrs-connect_27bd618d7ec917815120296248c6cf75.json'),
(731, 746, 'user_uploads/8/audio/2019/10/qrs-connect_f77846f14a4caecb6f5b9f9f6d1cdcf9.mid|user_uploads/8/audio/2019/10/qrs-connect_911b83dc64c6325dbcce696b086370c7.json'),
(732, 747, 'user_uploads/8/audio/2019/10/qrs-connect_5b43d0fe102ce7c28c4b11fbe8e6f82c.mid|user_uploads/8/audio/2019/10/qrs-connect_4f1cd048d6dd658a17bdd9679033e236.json'),
(733, 748, 'user_uploads/8/audio/2019/10/qrs-connect_05c1daa240975b36cd14a65724f6fde0.mid|user_uploads/8/audio/2019/10/qrs-connect_00ebe681f6ba8803c67f4c298893a872.json'),
(734, 749, 'user_uploads/8/audio/2019/10/qrs-connect_f3e4e5be75a81ef126d84ac1d2c9a60c.mid|user_uploads/8/audio/2019/10/qrs-connect_495355a3abb3265ef5bc626b80a3133c.json'),
(735, 750, 'user_uploads/8/audio/2019/10/qrs-connect_3d4279f9d4aee53fed5e1899606ca4bd.mid|user_uploads/8/audio/2019/10/qrs-connect_877691314e84644f893709c0bddf7a15.json'),
(736, 751, 'user_uploads/8/audio/2019/10/qrs-connect_c010eb8167269a630695ecd6587a9dc7.mid|user_uploads/8/audio/2019/10/qrs-connect_cbf654b317b38912210d877150855e12.json'),
(737, 752, 'user_uploads/8/audio/2019/10/qrs-connect_3ecbd8cc644251cd09a9ba606604207c.mid|user_uploads/8/audio/2019/10/qrs-connect_42c9bd52a225b43079b597b667ab4589.json'),
(738, 753, 'user_uploads/8/audio/2019/10/qrs-connect_2e1b752edacbd6af947bd64272200ddf.mid|user_uploads/8/audio/2019/10/qrs-connect_b61ebad54d9b8c0807d929798f144b56.json'),
(739, 754, 'user_uploads/8/audio/2019/10/qrs-connect_3c884e06f01515b48ffa2b7ca77da8cd.mid|user_uploads/8/audio/2019/10/qrs-connect_e390f4953cca01d02195c468b54d09f2.json'),
(740, 755, 'user_uploads/8/audio/2019/10/qrs-connect_c58685dca0806d116600c6fd4916d2b4.mid|user_uploads/8/audio/2019/10/qrs-connect_c2fa42f3a925fb414efb171eba996371.json'),
(741, 756, 'user_uploads/8/audio/2019/10/qrs-connect_edad307cf3e0ef9735131bbb95ea4e47.mid|user_uploads/8/audio/2019/10/qrs-connect_c26dda816f5a7679f26e447e294a987d.json'),
(742, 757, 'user_uploads/2/audio/2019/10/qrs-connect_627f2356823c1d7320ffea83742062f6.mid|user_uploads/2/audio/2019/10/qrs-connect_d795b6cd5cd138bebc58c0633cc66157.json'),
(743, 758, 'user_uploads/8/audio/2019/10/qrs-connect_ce20d1597ec91c3dd9eaa4e947d3929a.mid|user_uploads/8/audio/2019/10/qrs-connect_aa8ecdba60467ccae6d6f1fab97c3bf0.json'),
(744, 759, 'user_uploads/1/audio/2019/10/qrs-connect_734137ea723859ac4443aa62ff8da499.mid|user_uploads/1/audio/2019/10/qrs-connect_c4f97534e92e73f2bebe26c6e84e68b1.json'),
(745, 760, 'user_uploads/1/audio/2019/10/qrs-connect_fd4f74e53b33226fe872a668974bd222.mid|user_uploads/1/audio/2019/10/qrs-connect_4d9a59ebd7b8521f8247ead7ca32738e.json'),
(746, 761, 'user_uploads/2/audio/2019/10/qrs-connect_e0efdf0be113cfcc5c09025558852c2c.mid|user_uploads/2/audio/2019/10/qrs-connect_2aa7a9435246d5e978aa91ab18fdcdb9.json'),
(747, 762, 'user_uploads/2/audio/2019/10/qrs-connect_a7e51f4940745e736fe71d65de196b95.mid|user_uploads/2/audio/2019/10/qrs-connect_11fe179dd5477ebb4dad9eeda1a05d95.json'),
(748, 763, 'user_uploads/2/audio/2019/10/qrs-connect_c39aef02230d7c8d249dd45e20505e1a.mid|user_uploads/2/audio/2019/10/qrs-connect_72e42c9dd48f0fefe55e48a218774611.json'),
(749, 764, 'user_uploads/2/audio/2019/10/qrs-connect_eb59cc174892d8c7246c8297eff6bbb9.mid|user_uploads/2/audio/2019/10/qrs-connect_3684f9b7acd6039c67ab47e7b7d3ae1d.json'),
(750, 765, 'user_uploads/2/audio/2019/10/qrs-connect_09d2f6bb99cdec3306ad1c140c60c44c.mid|user_uploads/2/audio/2019/10/qrs-connect_54cbc07d53018172576273f6ba8ad19e.json'),
(751, 766, 'user_uploads/2/audio/2019/10/qrs-connect_302658f9837428eeb32e17db84859891.mid|user_uploads/2/audio/2019/10/qrs-connect_319cb95a1ba23d438a7f36710b4b8098.json'),
(752, 767, 'user_uploads/2/audio/2019/10/qrs-connect_3357c81c0ca2a0dc1ce10e606cba3fb6.mid|user_uploads/2/audio/2019/10/qrs-connect_95ef952b734bb94f0df4104865d902f5.json'),
(753, 768, 'user_uploads/2/audio/2019/10/qrs-connect_45c3eef35c91ff442007b77c6a4dbedd.mid|user_uploads/2/audio/2019/10/qrs-connect_9b3e44022a546a7f1cae588b31ee7aa9.json'),
(754, 769, 'user_uploads/2/audio/2019/10/qrs-connect_f086223eba4e6ace999b1a357f7dcc4d.mid|user_uploads/2/audio/2019/10/qrs-connect_cfd28d59d1217556d1b8bc01719c7b18.json'),
(755, 770, 'user_uploads/2/audio/2019/10/qrs-connect_47432b9245796060bb49d249089a960e.mid|user_uploads/2/audio/2019/10/qrs-connect_c9e60fd86af5f1bc26272c31efe8be4d.json'),
(756, 771, 'user_uploads/2/audio/2019/10/qrs-connect_6ea3b4355c87e70ad84ad599c9786f05.mid|user_uploads/2/audio/2019/10/qrs-connect_4340a610265b43931ac0213197306d6d.json'),
(757, 772, 'user_uploads/2/audio/2019/10/qrs-connect_8284c40e6b0a551342a6281deab0157d.mid|user_uploads/2/audio/2019/10/qrs-connect_8f4ef2b56da2394260e211d1178283a4.json'),
(758, 773, 'user_uploads/2/audio/2019/10/qrs-connect_da7e4d966ae76ee4d017ce132a65931f.mid|user_uploads/2/audio/2019/10/qrs-connect_fcae2d311a64814e0e4177568c15c84d.json'),
(759, 774, 'user_uploads/2/audio/2019/10/qrs-connect_d2f755e9e894194b2d45d2958f5885d2.mid|user_uploads/2/audio/2019/10/qrs-connect_88787d72f540d893704586cf40a46fb3.json'),
(760, 775, 'user_uploads/2/audio/2019/10/qrs-connect_c1bcc1670e8d6fdc7a62eda9cab3cb95.mid|user_uploads/2/audio/2019/10/qrs-connect_1ee3ae5866e95cab66d66a81c916de3a.json'),
(761, 776, 'user_uploads/2/audio/2019/10/qrs-connect_034cb4a696d28a68531fc3724d90f23a.mid|user_uploads/2/audio/2019/10/qrs-connect_1d938de95b2ecb6fbd36587cda840653.json'),
(762, 777, 'user_uploads/2/audio/2019/10/qrs-connect_d734a268dd3895540db00e0909899c07.mid|user_uploads/2/audio/2019/10/qrs-connect_74ccf0b82f31929d3bc244ecfb0e4654.json'),
(763, 778, 'user_uploads/1/audio/2019/10/qrs-connect_24145cfb69f53b3f6fc157dac115b05c.mp3'),
(764, 779, 'user_uploads/2/audio/2019/10/qrs-connect_6d45e8f18bfec5fc68f2b73103fcf9cd.mid|user_uploads/2/audio/2019/10/qrs-connect_f9e1a73ce41a7f4f3aadfe678b94785d.json'),
(765, 780, 'user_uploads/2/audio/2019/10/qrs-connect_d87a22ce0fada55a04e6f5289a4e86b4.mid|user_uploads/2/audio/2019/10/qrs-connect_af25109355e308c520b043e835096d8e.json'),
(766, 781, 'user_uploads/2/audio/2019/10/qrs-connect_b54d04cf9a60c76bf7f45bc8f84accfd.mid|user_uploads/2/audio/2019/10/qrs-connect_db0448783bfca8aa533471ed3a7053e1.json'),
(767, 782, 'user_uploads/2/audio/2019/10/qrs-connect_19ddcafaeef26ca1d676691d6e772142.mid|user_uploads/2/audio/2019/10/qrs-connect_19a60d8177af4e9982bc36f10867c2b9.json'),
(768, 783, 'user_uploads/2/audio/2019/10/qrs-connect_2634cc927b9a5166fbd09fcfbac164f7.mid|user_uploads/2/audio/2019/10/qrs-connect_a72749ca5f168f1f55f0ef243d9201e6.json'),
(769, 784, 'user_uploads/2/audio/2019/10/qrs-connect_f03bc5916f8c99d4c051624a3ff09d34.mid|user_uploads/2/audio/2019/10/qrs-connect_5966b6a265f37a4d9917b02c0370dc87.json'),
(770, 785, 'user_uploads/2/audio/2019/10/qrs-connect_377a7702717f6bdc6b744b4deba16fea.mid|user_uploads/2/audio/2019/10/qrs-connect_42f5bde6d0c70edb224699eb101504e9.json'),
(771, 786, 'user_uploads/2/audio/2019/10/qrs-connect_91d15d53368e877e3868eb61200370ad.mid|user_uploads/2/audio/2019/10/qrs-connect_4288931329b5d03f0f77d626f40e96a2.json'),
(772, 789, 'user_uploads/2/audio/2019/10/qrs-connect_26ae0c96f752cd7eedfe76d2d33385f5.mid|user_uploads/2/audio/2019/10/qrs-connect_02e361dba0f3fa2e01453187c3e5654d.json'),
(773, 790, 'user_uploads/2/audio/2019/10/qrs-connect_4917ee8f8513dd5baf70f2829624296d.mid|user_uploads/2/audio/2019/10/qrs-connect_03b2a28601ce6060dbdc12f0b449a437.json'),
(774, 791, 'user_uploads/2/audio/2019/10/qrs-connect_022322f6c52dbf93666ea1ff03385ca4.mid|user_uploads/2/audio/2019/10/qrs-connect_aa35961efe5c8a3de87cb85d2ed20d87.json'),
(775, 793, 'user_uploads/8/audio/2019/11/qrs-connect_3e5f55a7d2864fafa5f3717cefdf338b.flac'),
(776, 794, 'user_uploads/8/audio/2019/11/qrs-connect_b8cbe2315e7370b25b4dbe5005f54fc0.flac'),
(777, 795, 'user_uploads/8/audio/2019/11/qrs-connect_9c62204af99eca948b8cadbee3fd96a1.flac'),
(778, 796, 'user_uploads/8/audio/2019/11/qrs-connect_6d9a746713ed073752463136c9bc430c.flac'),
(779, 797, 'user_uploads/8/audio/2019/11/qrs-connect_0f59c548ca5e877971b1f987ba3b96e2.flac'),
(780, 798, 'user_uploads/8/audio/2019/11/qrs-connect_5e48ccf69846e96dfdcf89890afe61e3.flac'),
(781, 799, 'user_uploads/8/audio/2019/11/qrs-connect_eba091f877b36fda1eed22e8a74bb3d9.flac'),
(782, 800, 'user_uploads/8/audio/2019/11/qrs-connect_04dc9149a558c02b7fcf2b48a1cc94f0.flac'),
(783, 801, 'user_uploads/8/audio/2019/11/qrs-connect_a090ac5d6b3177ccd9229c0fe1273039.flac'),
(784, 802, 'user_uploads/8/audio/2019/11/qrs-connect_eea29397764f61d9afe431ae3f819443.flac'),
(785, 803, 'user_uploads/8/audio/2019/11/qrs-connect_eba02200e0f11de9310b8db1ad674b5a.flac'),
(786, 804, 'user_uploads/8/audio/2019/11/qrs-connect_29333441a14ad0c96de59b1258a37356.flac'),
(787, 805, 'user_uploads/8/audio/2019/11/qrs-connect_80601607cffee8ba66692e87a4388c41.flac'),
(788, 806, 'user_uploads/8/audio/2019/11/qrs-connect_06ce355c4b393d0cd4fdfb6b01849938.flac'),
(789, 807, 'user_uploads/8/audio/2019/11/qrs-connect_b7051791245d62cb77009839a208678f.flac'),
(790, 808, 'user_uploads/8/audio/2019/11/qrs-connect_a53e6363af604ab8ba52f41d2d9e9cdd.flac'),
(791, 809, 'user_uploads/8/audio/2019/11/qrs-connect_c20b8024dbd7182270d967cd3f6cd80b.flac'),
(792, 810, 'user_uploads/8/audio/2019/11/qrs-connect_4d5ef5f45e6604fc030a8c4223b81e9f.flac'),
(793, 811, 'user_uploads/8/audio/2019/11/qrs-connect_e0b4e5ac04e7ac983421b32eb83ed429.flac'),
(794, 812, 'user_uploads/8/audio/2019/11/qrs-connect_ad9381f17963d3165fee6c9b42c3be51.flac'),
(795, 813, 'user_uploads/8/audio/2019/11/qrs-connect_5ae288c70e8add4584298d1dfc64e516.flac'),
(796, 814, 'user_uploads/8/audio/2019/11/qrs-connect_307ca5c547a26cb013fc88460f04061b.flac'),
(797, 815, 'user_uploads/2/audio/2019/11/qrs-connect_04188d55d0f0160a3d3abaa30a2ae1cd.mid|user_uploads/2/audio/2019/11/qrs-connect_dc650832648cc274bee6dc63737ab6d3.json'),
(798, 816, 'user_uploads/2/audio/2019/11/qrs-connect_f2e5b7cdbdfcea9b7e05c5f0093bf6c1.flac'),
(799, 817, 'user_uploads/13/audio/2019/11/qrs-connect_8c402a2bd97fe94d5ce0c561b304532e.flac'),
(801, 819, 'user_uploads/8/audio/2019/11/qrs-connect_b6b10d41d3351faf8b0e20b4c5f60ef1.flac'),
(802, 820, 'user_uploads/8/audio/2019/11/qrs-connect_fad05d6acd4d40805395d0aeeae19467.mid|user_uploads/8/audio/2019/11/qrs-connect_7d0037004d0be8a4dce7447972d7dfc6.json'),
(803, 821, 'user_uploads/8/audio/2019/11/qrs-connect_3f5fafe901126809a24c1c0f42a0c3c9.mid|user_uploads/8/audio/2019/11/qrs-connect_6e6148b0a63ff423483623491bad324f.json'),
(804, 822, 'user_uploads/8/audio/2019/11/qrs-connect_0639ffdb95c382cac3a10e43b2eaa463.flac'),
(805, 824, 'user_uploads/1/audio/2019/11/qrs-connect_23d66d1896284e8a2a50dd66fca76483.mid|user_uploads/1/audio/2019/11/qrs-connect_29fa1ce49defc26a879ac69278630cd3.json'),
(806, 825, 'user_uploads/8/audio/2019/11/qrs-connect_d35e24e6b7331d5f9b13b99c3f1c9e59.mid|user_uploads/8/audio/2019/11/qrs-connect_07c9a3080f6f5638b35faedbb43dedc4.json'),
(807, 826, 'user_uploads/8/audio/2019/11/qrs-connect_70fccb089b2becf5138ee151f70bd79e.flac'),
(808, 827, 'user_uploads/8/audio/2019/11/qrs-connect_0ee63c7487945814de84b8bbf2f8c336.mid|user_uploads/8/audio/2019/11/qrs-connect_10935b439baf0a4d2a28dee529bf7369.json'),
(809, 828, 'user_uploads/8/audio/2019/11/qrs-connect_f72021d14fc0b5df01e63f1828771167.flac'),
(810, 829, 'user_uploads/8/audio/2019/11/qrs-connect_da73db30e29f84ebefff03a288d8b15c.flac'),
(811, 830, 'user_uploads/4/audio/2019/11/qrs-connect_c0d198c6f5ce5efd4e6c2c012b774d4c.mid|user_uploads/4/audio/2019/11/qrs-connect_51fb9f9cce561e8e6f265ad39711d94f.json'),
(812, 831, 'user_uploads/4/audio/2019/11/qrs-connect_02ad35a087bbeffed18bff0f95ecd639.mid|user_uploads/4/audio/2019/11/qrs-connect_fc757d83bdbb67ceacb82e0b7fbf795f.json'),
(813, 832, 'user_uploads/4/audio/2019/11/qrs-connect_37d0aee26a3cf22d2ad755fce3dd0f48.mid|user_uploads/4/audio/2019/11/qrs-connect_82c6471a4e2886f3b82854407dfbe0af.json'),
(814, 833, 'user_uploads/4/audio/2019/11/qrs-connect_3f2510f624c577c27bd9c6539927a2cd.mid|user_uploads/4/audio/2019/11/qrs-connect_65644ce477994d15590773276d2d6906.json'),
(815, 834, 'user_uploads/4/audio/2019/11/qrs-connect_6a02f07b8c4510e82ccea3a1747d175c.mid|user_uploads/4/audio/2019/11/qrs-connect_3a4b549d6924d7c6351cea42da16b088.json'),
(816, 835, 'user_uploads/4/audio/2019/11/qrs-connect_b18a766a5ff6d432cd4a1040d2e2f761.mid|user_uploads/4/audio/2019/11/qrs-connect_16680fa35c435b8c6e616a51077b100e.json'),
(817, 836, 'user_uploads/4/audio/2019/11/qrs-connect_35aba977bcfc02694cf9203106f2f13d.mid|user_uploads/4/audio/2019/11/qrs-connect_fb1464eb208661bbb5a8f01d9badcfa3.json'),
(818, 837, 'user_uploads/4/audio/2019/11/qrs-connect_d4ec0521133dc5704cad5f8292f33dfe.mid|user_uploads/4/audio/2019/11/qrs-connect_d585212115da08dfd84cf20ad124e468.json'),
(819, 838, 'user_uploads/4/audio/2019/11/qrs-connect_096aa8617e0f96eac2bbc6f34261fe1d.mid|user_uploads/4/audio/2019/11/qrs-connect_e6eb8da77f59b8a9e639f5e85d07069f.json'),
(820, 839, 'user_uploads/4/audio/2019/11/qrs-connect_1ccf8d602c960cab2605773b46cb2b1f.mid|user_uploads/4/audio/2019/11/qrs-connect_32599a027233293abda578d82ef90f67.json'),
(821, 840, 'user_uploads/4/audio/2019/11/qrs-connect_8de024cb2bb206d0dd5f94d1f0d52c18.mid|user_uploads/4/audio/2019/11/qrs-connect_15a08426a0837ea9f9c696a64ba70ec7.json'),
(822, 841, 'user_uploads/8/audio/2019/11/qrs-connect_179ed4b133c35d8a89572caff194d342.mid|user_uploads/8/audio/2019/11/qrs-connect_4b4cb878aa43107ead128d2c4166dece.json'),
(823, 842, 'user_uploads/15/audio/2019/12/qrs-connect_c90f3b8d0c005f3eb4d8a95d08c9e910.mid|user_uploads/15/audio/2019/12/qrs-connect_046786993cb30e8d8343cbdb400486f1.json'),
(824, 843, 'user_uploads/15/audio/2019/12/qrs-connect_1f171cf2d00fb0d343321d4c7cd733fe.mid|user_uploads/15/audio/2019/12/qrs-connect_c54aa3ab6133d09763c877cc8f0a0fff.json'),
(825, 844, 'user_uploads/15/audio/2019/12/qrs-connect_192eb39e57b04ae6e80983081bc62f66.mid|user_uploads/15/audio/2019/12/qrs-connect_3527024376379e3f2e0ca07bf495d414.json'),
(826, 845, 'user_uploads/15/audio/2019/12/qrs-connect_5b863e79fb250f7faca1437d8041ff85.mid|user_uploads/15/audio/2019/12/qrs-connect_fcf1ef23384bb1ca6adce12c44737b3e.json'),
(827, 846, 'user_uploads/15/audio/2019/12/qrs-connect_92827d668b2f9ea3b15f15c57d45a952.mid|user_uploads/15/audio/2019/12/qrs-connect_06e7733212a2d1484c910bd33bd7d702.json'),
(828, 847, 'user_uploads/15/audio/2019/12/qrs-connect_ddf4a40ff76c79f580f6dbe0e5595949.mid|user_uploads/15/audio/2019/12/qrs-connect_86c822d171ab77df3316a8a89ce79cac.json'),
(829, 848, 'user_uploads/15/audio/2019/12/qrs-connect_d621cfff1e469472955afed872502387.mid|user_uploads/15/audio/2019/12/qrs-connect_374f6d3debe66a7e90748342ed680173.json'),
(830, 849, 'user_uploads/15/audio/2019/12/qrs-connect_a36b95b42d9532983d99ffa5afe87a49.mid|user_uploads/15/audio/2019/12/qrs-connect_75c03f5dd6af5c7abdaa9e70b97a6806.json'),
(831, 850, 'user_uploads/15/audio/2019/12/qrs-connect_d7eca48d27ee564a9a795b76af0386b9.mid|user_uploads/15/audio/2019/12/qrs-connect_d0d0d1aa639b0da45e0e9b49c1ad3aac.json'),
(832, 851, 'user_uploads/15/audio/2019/12/qrs-connect_9eedb5698c28759722646f4505c80d37.mid|user_uploads/15/audio/2019/12/qrs-connect_1df9293bb8b70c836de7d3b318a68140.json'),
(833, 852, 'user_uploads/15/audio/2019/12/qrs-connect_fa3ee3d17a21f5f93f81ddefde55331b.mid|user_uploads/15/audio/2019/12/qrs-connect_e8c193db219b558fd452158c76a4d2df.json'),
(834, 853, 'user_uploads/15/audio/2019/12/qrs-connect_9143f09566a645ec56a5f56797c97817.mid|user_uploads/15/audio/2019/12/qrs-connect_45326d69579e64d1f9b667347f1d7391.json'),
(835, 854, 'user_uploads/15/audio/2019/12/qrs-connect_e640a57d4e9cfae0c2ce0a67968f46c0.mid|user_uploads/15/audio/2019/12/qrs-connect_9d0839dab868160f2bb5fcb3f680a5ee.json');
INSERT INTO `posts_audios` (`audio_id`, `post_id`, `source`) VALUES
(836, 855, 'user_uploads/15/audio/2019/12/qrs-connect_daac5d90bc4b0d8139086fe7c7737b09.mid|user_uploads/15/audio/2019/12/qrs-connect_54b49d7ae5b5f375dd3663824a88e1bb.json'),
(837, 856, 'user_uploads/15/audio/2019/12/qrs-connect_3e93064d9ea2ed0d1c846b7c90e08b44.mid|user_uploads/15/audio/2019/12/qrs-connect_bc725bbddb2248a5e0aea16ef8c0ab03.json'),
(838, 857, 'user_uploads/15/audio/2019/12/qrs-connect_90715ec31b910274c5adbe90e0d168a3.mid|user_uploads/15/audio/2019/12/qrs-connect_945667b49d250e7a510ac782a3a2b405.json'),
(839, 858, 'user_uploads/15/audio/2019/12/qrs-connect_ef9c9b3dca4d014e1e693aaabd1e0e77.mid|user_uploads/15/audio/2019/12/qrs-connect_4bb5f02cc1212514ae7fcb7f5ae75243.json'),
(840, 859, 'user_uploads/15/audio/2019/12/qrs-connect_c4b9cd277d5c1d22f5fce9e35834675e.mid|user_uploads/15/audio/2019/12/qrs-connect_89082f85a12a0a5b8efa4c8764d68e66.json'),
(841, 860, 'user_uploads/15/audio/2019/12/qrs-connect_d77499068143a523adeeb402b242b4c0.mid|user_uploads/15/audio/2019/12/qrs-connect_924cb8cfa1f4708424f8dfc4410d7a97.json'),
(842, 861, 'user_uploads/15/audio/2019/12/qrs-connect_a20f0fbca89043ee2ee20184d95c51c6.mid|user_uploads/15/audio/2019/12/qrs-connect_a7518ecbb8bda7ce0a3194533ef1f62a.json'),
(843, 862, 'user_uploads/15/audio/2019/12/qrs-connect_789d2811afbab2f87c41eabb180e06f1.mid|user_uploads/15/audio/2019/12/qrs-connect_48be5efc4d0f4e44190bc5d9bbe8d3cd.json'),
(844, 863, 'user_uploads/15/audio/2019/12/qrs-connect_31b15849ce5bb9d3e09e61dd835ab4a8.mid|user_uploads/15/audio/2019/12/qrs-connect_b833a78c3b6c79161b9cd41d2d3d8cdf.json'),
(845, 864, 'user_uploads/15/audio/2019/12/qrs-connect_bf3df789d8667061ea3095e884674988.mid|user_uploads/15/audio/2019/12/qrs-connect_ced6fd4e5c2f07aa473e3be31bb08525.json'),
(846, 865, 'user_uploads/15/audio/2019/12/qrs-connect_a5c69f3a507888f7dcea96369bc46f60.mid|user_uploads/15/audio/2019/12/qrs-connect_fc180c01e13ebb080141c54aac75b185.json'),
(847, 866, 'user_uploads/15/audio/2019/12/qrs-connect_cdfec7d42d1c8729d8f627697460f8da.mid|user_uploads/15/audio/2019/12/qrs-connect_591adf7247f93b9756d07f9017c40dea.json'),
(848, 867, 'user_uploads/15/audio/2019/12/qrs-connect_84ce62ac550bde9c665f42412399d02c.mid|user_uploads/15/audio/2019/12/qrs-connect_1204b141bfeeb0ac4a81800a64bc2a12.json'),
(849, 868, 'user_uploads/15/audio/2019/12/qrs-connect_00d7df7be4989de5b691419e2134c1a2.mid|user_uploads/15/audio/2019/12/qrs-connect_52458f0f15e6ec9dc7d6caaac87d3d67.json'),
(850, 869, 'user_uploads/15/audio/2019/12/qrs-connect_76536d90320f4ce16afd8c5809aec355.mid|user_uploads/15/audio/2019/12/qrs-connect_0d3db5da1f6f85ef8c7d793bb48faec1.json'),
(851, 870, 'user_uploads/15/audio/2019/12/qrs-connect_5ef25b4a8790a6ed5b52bbcd90224454.mid|user_uploads/15/audio/2019/12/qrs-connect_54a9c9e533d5dd413f9bf2dc5faf8479.json'),
(852, 871, 'user_uploads/15/audio/2019/12/qrs-connect_55961a7cbfc81e9e27354ac6b189f6eb.mid|user_uploads/15/audio/2019/12/qrs-connect_c4649be9f571f0e4431fc783a4014425.json'),
(853, 872, 'user_uploads/15/audio/2019/12/qrs-connect_a918b784bbc92fdffc656bbb61d8bebb.mid|user_uploads/15/audio/2019/12/qrs-connect_4c06f9f1096625f33e3a560709c33fb9.json'),
(854, 873, 'user_uploads/15/audio/2019/12/qrs-connect_a63573f6f4da0d35c17b1bd0fa38404d.mid|user_uploads/15/audio/2019/12/qrs-connect_7edf5dbf0fd16672f125ac3ec72cd782.json'),
(855, 874, 'user_uploads/8/audio/2019/12/qrs-connect_66a39daeb627dbd8a6d499585aca5fd1.mid|user_uploads/8/audio/2019/12/qrs-connect_c78ae044fc54305b00336a9482442733.json'),
(856, 876, 'user_uploads/8/audio/2019/12/qrs-connect_2f9eea4a3e924ec267e01d225384e688.mid|user_uploads/8/audio/2019/12/qrs-connect_280d68f8d12c47a4ffdc34860e980329.json'),
(857, 877, 'user_uploads/8/audio/2019/12/qrs-connect_4c127bedf1dddf6a10cc94fbd874f506.mid|user_uploads/8/audio/2019/12/qrs-connect_b4050009b0fc70d26a2114ee90f51afb.json'),
(858, 878, 'user_uploads/20/audio/2019/12/qrs-connect_a372c7a3131c3637c67c491a265fdbce.mid|user_uploads/20/audio/2019/12/qrs-connect_f56c307b14f61a6ece8c27df9f103bde.json'),
(859, 879, 'user_uploads/20/audio/2019/12/qrs-connect_1c4e5b4a174757a9e53625aba677ddd7.mid|user_uploads/20/audio/2019/12/qrs-connect_60803ebf02533e28171a98821f365293.json'),
(860, 880, 'user_uploads/20/audio/2019/12/qrs-connect_d3e138050d030ea5abac4474bdf1b9f0.mid|user_uploads/20/audio/2019/12/qrs-connect_5a6cd2753a21395539cb59194bd42afb.json'),
(861, 881, 'user_uploads/19/audio/2019/12/qrs-connect_22585a98485dd6a5cbe1ee38a0b52d2d.mid|user_uploads/19/audio/2019/12/qrs-connect_b777ee658ef36779e24eac77a0b8fd75.json'),
(862, 882, 'user_uploads/18/audio/2019/12/qrs-connect_629d34afb2075abf5cb747df3957feb7.mid|user_uploads/18/audio/2019/12/qrs-connect_27da1800d54af9e5560691126d34eb11.json'),
(863, 883, 'user_uploads/8/audio/2019/12/qrs-connect_68db0d1f6cff37b6a32c910d579ef57c.mid|user_uploads/8/audio/2019/12/qrs-connect_c71cbe3dd6e15a1a4dc44e6288663d33.json'),
(864, 884, 'user_uploads/8/audio/2019/12/qrs-connect_504177975304a74d5d9307c56e37537b.mid|user_uploads/8/audio/2019/12/qrs-connect_20791fe726b56944ccc702fe46f3618c.json'),
(865, 885, 'user_uploads/8/audio/2019/12/qrs-connect_757f8e86b43f1b0964b433036ccf7bd4.mid|user_uploads/8/audio/2019/12/qrs-connect_7360b1ac5034fb69dc96b1afd786b61c.json'),
(866, 886, 'user_uploads/8/audio/2019/12/qrs-connect_3c44a4e7f51988127dec3688968d6067.mid|user_uploads/8/audio/2019/12/qrs-connect_2436d01dc5cd23265eacc075d4c039af.json'),
(867, 887, 'user_uploads/8/audio/2019/12/qrs-connect_4de9875d3405dd68066eda71293a4390.mid|user_uploads/8/audio/2019/12/qrs-connect_0336d8e88d25e0a5be59fff53c7f33f9.json'),
(868, 888, 'user_uploads/8/audio/2019/12/qrs-connect_5ae7eea9ae020e17f504bae8537c4434.mid|user_uploads/8/audio/2019/12/qrs-connect_190d6e192be5a5aff25cf1b38e7cf55e.json'),
(869, 889, 'user_uploads/8/audio/2019/12/qrs-connect_396060e8ac1a67019a126f0f1c22908a.mid|user_uploads/8/audio/2019/12/qrs-connect_ed52a846c96076756ba25f49ecaa5ed3.json'),
(870, 890, 'user_uploads/8/audio/2019/12/qrs-connect_5f1e17821f62744c9ab59188669b465c.mid|user_uploads/8/audio/2019/12/qrs-connect_325d42b49f6e68946f90f383aaa30db8.json'),
(871, 891, 'user_uploads/8/audio/2019/12/qrs-connect_e82e4f2964f3476ecc21f4eee5d84b6f.mid|user_uploads/8/audio/2019/12/qrs-connect_8c00a0b0a77e534b2295fa9e486012de.json'),
(872, 892, 'user_uploads/8/audio/2019/12/qrs-connect_65d0faf2892bae739de167ccd4005542.mid|user_uploads/8/audio/2019/12/qrs-connect_c8de93b0b501e9d879c82d053ce46c23.json'),
(873, 893, 'user_uploads/8/audio/2019/12/qrs-connect_f14c2e6868ab017d998a284d10d5e53d.mid|user_uploads/8/audio/2019/12/qrs-connect_731b28bccff07f3c2d2415e2e9c854b2.json'),
(874, 894, 'user_uploads/8/audio/2019/12/qrs-connect_d1891b264c1ffb2ccc6d6097ce8993ce.mid|user_uploads/8/audio/2019/12/qrs-connect_e4d53819455b7f0549b5e7faadd67e79.json'),
(875, 895, 'user_uploads/8/audio/2019/12/qrs-connect_da4aa5328b9db6ef7838d5b55551a026.mid|user_uploads/8/audio/2019/12/qrs-connect_77bf98713353dcb6b614911d19b0ba1d.json'),
(876, 896, 'user_uploads/8/audio/2019/12/qrs-connect_ffc9b07a81792f527ef8419e8a0ce9d1.mid|user_uploads/8/audio/2019/12/qrs-connect_d3e20353faef4edc12664d28b4eb00f4.json'),
(877, 897, 'user_uploads/8/audio/2019/12/qrs-connect_d8ab376729fed3dcc702682a9f558bcd.mid|user_uploads/8/audio/2019/12/qrs-connect_cbf0f7de0ab39046be2cc333e59e1b0d.json'),
(878, 898, 'user_uploads/8/audio/2019/12/qrs-connect_f8f2b5990ac4a774fc396e10fc9c954b.mid|user_uploads/8/audio/2019/12/qrs-connect_02a1b35779601c885fd766d7b6caa5b8.json'),
(879, 899, 'user_uploads/8/audio/2019/12/qrs-connect_39d241ce25102d977c9b30cbe5188963.mid|user_uploads/8/audio/2019/12/qrs-connect_bb68c29a27ad211b4bd8e6641e925cde.json'),
(880, 900, 'user_uploads/8/audio/2019/12/qrs-connect_f80ed165b914c3cbe4e0e9e930238cff.mid|user_uploads/8/audio/2019/12/qrs-connect_9cd0c8d8af82c2fe3c2a81ca84e96413.json'),
(881, 901, 'user_uploads/8/audio/2019/12/qrs-connect_a94271ccb42ed77a489b3422a8063c09.mid|user_uploads/8/audio/2019/12/qrs-connect_3d20a47fd810e1f7c0632e7391ae07f7.json'),
(882, 902, 'user_uploads/8/audio/2019/12/qrs-connect_327013837b644f5049b54967fc019ec6.mid|user_uploads/8/audio/2019/12/qrs-connect_545293af98db13b9ca96261a2d6e43fb.json'),
(883, 903, 'user_uploads/8/audio/2019/12/qrs-connect_9ec56d2fd134468dd2d21cd4a6a7f9b7.mid|user_uploads/8/audio/2019/12/qrs-connect_ca5c6df4eaca6d336e27d12b8af94d30.json'),
(884, 904, 'user_uploads/8/audio/2019/12/qrs-connect_1e92e944bab057ae3f1d995e4ffda65e.mid|user_uploads/8/audio/2019/12/qrs-connect_ac469fe012fd5ed0e32daa498a495868.json'),
(885, 905, 'user_uploads/8/audio/2019/12/qrs-connect_9d92792db95ec47064cdcd3b2d3bba76.mid|user_uploads/8/audio/2019/12/qrs-connect_e010e38838d01b6c1bdae1abcaf8fd9f.json'),
(886, 906, 'user_uploads/8/audio/2019/12/qrs-connect_98303b288fc3a9323f207b18dc733762.mid|user_uploads/8/audio/2019/12/qrs-connect_eaf204b0796669fdf389883443971317.json'),
(887, 907, 'user_uploads/8/audio/2019/12/qrs-connect_5a364783eea0e69a338b41187324f614.mid|user_uploads/8/audio/2019/12/qrs-connect_3ec9988d7132a0f96970217d4770c08b.json'),
(888, 908, 'user_uploads/8/audio/2019/12/qrs-connect_1841f020d46c881af855a12d7952c80e.mid|user_uploads/8/audio/2019/12/qrs-connect_83a25f29ea902202ebb0b02226e6a545.json'),
(889, 909, 'user_uploads/8/audio/2019/12/qrs-connect_b599e77b41254f3ee97e742db487c724.mid|user_uploads/8/audio/2019/12/qrs-connect_cde814359f79a16960dae6ea2b18cfec.json'),
(890, 910, 'user_uploads/8/audio/2019/12/qrs-connect_3bae66e47ff2279a0b00150ab02955b5.mid|user_uploads/8/audio/2019/12/qrs-connect_45bd783b1db1d7d853c2027ecd80036b.json'),
(891, 911, 'user_uploads/8/audio/2019/12/qrs-connect_64f68c9424780b5d13f6f0a47d7b52a8.mid|user_uploads/8/audio/2019/12/qrs-connect_918ae80b23a3d1b87c76c2c8ea85d270.json'),
(892, 912, 'user_uploads/8/audio/2019/12/qrs-connect_65a9e6e0e9f67266114e65019de9ddbf.mid|user_uploads/8/audio/2019/12/qrs-connect_ddca3533692e2e7a8502b032a68d5c9f.json'),
(893, 913, 'user_uploads/8/audio/2019/12/qrs-connect_d0b6e3ae57cf030fdd2db948ac5e3dfe.mid|user_uploads/8/audio/2019/12/qrs-connect_b6d236f06ecd93a78bdf79175c2b4be3.json'),
(894, 914, 'user_uploads/8/audio/2019/12/qrs-connect_4a4c4e620bcacceaa1d1c858531a73c4.mid|user_uploads/8/audio/2019/12/qrs-connect_4ba0cf695474a179bdbd89e6489ce6ad.json'),
(895, 915, 'user_uploads/8/audio/2019/12/qrs-connect_7a8ef05f08303d67cf868fe8b3c4294b.mid|user_uploads/8/audio/2019/12/qrs-connect_ee025c2cfde66307e753d7ed441e8f73.json'),
(896, 916, 'user_uploads/8/audio/2019/12/qrs-connect_45dcb8c17e4706aa3284103c748de9a8.mid|user_uploads/8/audio/2019/12/qrs-connect_8e57a470cee624d8b079b32c77f3bd07.json'),
(897, 917, 'user_uploads/8/audio/2019/12/qrs-connect_ceed9219d8262653cb441a2d2cf72844.mid|user_uploads/8/audio/2019/12/qrs-connect_9fabfd7d3c9d76d9f257a63e0feffd74.json'),
(898, 918, 'user_uploads/8/audio/2019/12/qrs-connect_f2f43f3391c2edb13c57523ffc2fefce.mid|user_uploads/8/audio/2019/12/qrs-connect_0badf8b8955b6b678dbd3daa9e67c007.json'),
(899, 919, 'user_uploads/8/audio/2019/12/qrs-connect_9efd8f59660bc1edc680d7acbb42b41f.mid|user_uploads/8/audio/2019/12/qrs-connect_937ccb0a6dff527325e3018e1b10da5f.json'),
(900, 920, 'user_uploads/8/audio/2019/12/qrs-connect_0d134147553dd20318a54fbb974eaef2.mid|user_uploads/8/audio/2019/12/qrs-connect_bc1eab5de12328f6a58a7450d5f70615.json'),
(901, 921, 'user_uploads/8/audio/2019/12/qrs-connect_a210728013ed8ee0aa9b890c402a6f52.mid|user_uploads/8/audio/2019/12/qrs-connect_f85f8009ba8dc5d331e28d45ded8574e.json'),
(902, 922, 'user_uploads/8/audio/2019/12/qrs-connect_d5e0e0b143f22f6b6de52e6f66ff2518.mid|user_uploads/8/audio/2019/12/qrs-connect_27b530d7852fbc9398690d165ef3e620.json'),
(903, 923, 'user_uploads/8/audio/2019/12/qrs-connect_966255e7936f46e92fb409f8801781b0.mid|user_uploads/8/audio/2019/12/qrs-connect_74a0655af33868918d0d54c65c5b005b.json'),
(904, 924, 'user_uploads/8/audio/2019/12/qrs-connect_a8168371bf8c3e98869efd1dd3110590.mid|user_uploads/8/audio/2019/12/qrs-connect_634e28f91ee70f9f73dda1fd89e0cf90.json'),
(905, 925, 'user_uploads/8/audio/2019/12/qrs-connect_84f8778296090523e3058cefbacb0a8a.mid|user_uploads/8/audio/2019/12/qrs-connect_71e175e9b10e494131de7c53906e5c26.json'),
(906, 926, 'user_uploads/8/audio/2019/12/qrs-connect_4b29b593434abcf2294a27cfa0ad965f.mid|user_uploads/8/audio/2019/12/qrs-connect_f6537d3ba0d758f27d77dc57b72fc2fd.json'),
(907, 927, 'user_uploads/8/audio/2019/12/qrs-connect_e5447b0a51168b3d34e58e0a7911f761.mid|user_uploads/8/audio/2019/12/qrs-connect_b0501366af4628651d32563bd46f7a57.json'),
(908, 928, 'user_uploads/8/audio/2019/12/qrs-connect_766660cd4b961362c8ce53f5ca50006a.mid|user_uploads/8/audio/2019/12/qrs-connect_b015318d9d981eb661b1b1d23a27ae0f.json'),
(909, 929, 'user_uploads/8/audio/2019/12/qrs-connect_15a9b0cbf85fb9c3847f642e1736ab70.mid|user_uploads/8/audio/2019/12/qrs-connect_861c68fb0404a9fd0fe41b5e79861cbb.json'),
(910, 930, 'user_uploads/8/audio/2019/12/qrs-connect_510a135a359a817d3169b2a3d640ae65.mid|user_uploads/8/audio/2019/12/qrs-connect_6b253db0b7ab624cd1e581853fb46c37.json'),
(911, 931, 'user_uploads/8/audio/2019/12/qrs-connect_bb9356f36961a26a69328d5c0047e918.mid|user_uploads/8/audio/2019/12/qrs-connect_7f9ee19bfb6a809820cf24fa74980a8d.json'),
(912, 932, 'user_uploads/8/audio/2019/12/qrs-connect_06589adcfb90b6c23b559a28fe265cb4.mid|user_uploads/8/audio/2019/12/qrs-connect_bb5465279ba68f6876f24a80de36e7d1.json'),
(913, 933, 'user_uploads/8/audio/2019/12/qrs-connect_da7f797fd00fc7af1f4370f72f291f54.mid|user_uploads/8/audio/2019/12/qrs-connect_8a94a948a20dfcf87f4276078a18117d.json'),
(914, 934, 'user_uploads/2/audio/2019/12/qrs-connect_24cb5e6efeaa4e282743550d52b09827.mid|user_uploads/2/audio/2019/12/qrs-connect_c8b1a914979b567fdebeb4881e84e6bb.json'),
(915, 935, 'user_uploads/2/audio/2019/12/qrs-connect_467382a19e0be2eef97a0e40bfb2c050.mid|user_uploads/2/audio/2019/12/qrs-connect_9ed0def663e0991f74c0a217030319c1.json'),
(916, 936, 'user_uploads/24/audio/2020/01/qrs-connect_f64816ab0fd166c7c585468cbf420beb.mid|user_uploads/24/audio/2020/01/qrs-connect_3ac21f73fd7f08dd82d941870196f950.json'),
(917, 937, 'user_uploads/24/audio/2020/01/qrs-connect_5331e55ddddc779caa815e42a7895f7a.mid|user_uploads/24/audio/2020/01/qrs-connect_1832e86f06498442d7b7cd123d87f43f.json'),
(918, 938, 'user_uploads/24/audio/2020/01/qrs-connect_e3ea3af6f3233424c184df486a754313.mid|user_uploads/24/audio/2020/01/qrs-connect_9952c79a1ebdda1d523b3a1351506a8f.json'),
(919, 939, 'user_uploads/24/audio/2020/01/qrs-connect_5b8fa368a2fea4dfc1533ac06a60160c.mid|user_uploads/24/audio/2020/01/qrs-connect_80baf122dd774e184d93246d0ffd13a9.json'),
(920, 940, 'user_uploads/24/audio/2020/01/qrs-connect_75569fc33ec306a223640cc27dd75ca8.mid|user_uploads/24/audio/2020/01/qrs-connect_cbee245888084cf192d71cf9e4086b3f.json'),
(921, 941, 'user_uploads/24/audio/2020/01/qrs-connect_281c78599f9d0278f94c59468d01b069.mid|user_uploads/24/audio/2020/01/qrs-connect_f2723370e483320df11376198e598bd7.json'),
(922, 942, 'user_uploads/24/audio/2020/01/qrs-connect_c629770e364c73bbc020041eeb1ea971.mid|user_uploads/24/audio/2020/01/qrs-connect_64a1ce63dadfd86c83fc09cbdbc7f59f.json'),
(923, 943, 'user_uploads/22/audio/2020/01/qrs-connect_c8cb28083b1da453970b93ab7288566a.mid|user_uploads/22/audio/2020/01/qrs-connect_171f8a5a9d5894d8a3bcafcb6bc29165.json');

-- --------------------------------------------------------

--
-- Table structure for table `posts_comments`
--

CREATE TABLE `posts_comments` (
  `comment_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL,
  `node_type` enum('post','photo','comment') COLLATE utf8mb4_bin NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` enum('user','page') COLLATE utf8mb4_bin NOT NULL,
  `text` longtext COLLATE utf8mb4_bin NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `time` datetime NOT NULL,
  `likes` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `replies` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `posts_comments`
--

INSERT INTO `posts_comments` (`comment_id`, `node_id`, `node_type`, `user_id`, `user_type`, `text`, `image`, `time`, `likes`, `replies`) VALUES
(1, 732, 'post', 8, 'user', ':relieved: ', '', '2019-10-07 18:21:22', 0, 0),
(2, 935, 'post', 1, 'user', 'Nice slide!', '', '2020-03-06 15:38:53', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts_comments_likes`
--

CREATE TABLE `posts_comments_likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `posts_files`
--

CREATE TABLE `posts_files` (
  `file_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_hidden`
--

CREATE TABLE `posts_hidden` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `posts_likes`
--

CREATE TABLE `posts_likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `posts_likes`
--

INSERT INTO `posts_likes` (`id`, `post_id`, `user_id`) VALUES
(1, 109, 2),
(2, 368, 2),
(3, 368, 4),
(4, 94, 4),
(5, 404, 4),
(6, 732, 8),
(7, 707, 8),
(8, 785, 2),
(9, 935, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts_links`
--

CREATE TABLE `posts_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `source_url` text COLLATE utf8mb4_bin NOT NULL,
  `source_host` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `source_title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `source_text` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `source_thumbnail` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `posts_links`
--

INSERT INTO `posts_links` (`link_id`, `post_id`, `source_url`, `source_host`, `source_title`, `source_text`, `source_thumbnail`) VALUES
(1, 875, 'https://www.gf-machine.com/', 'www.gf-machine.com', 'Freeze Dry Machine |  Gf-machine Manufacturers&amp;Suppliers', 'GuanFeng Freeze Dry Machine, Dryer Machine handle a wide variety of applications, It can all be freeze dried without losing most of their taste, size, shape and nutritional value.', 'https://www.gf-machine.com/wp-content/themes/guanfengshipin/images/logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `posts_media`
--

CREATE TABLE `posts_media` (
  `media_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) NOT NULL,
  `source_url` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `source_provider` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `source_type` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `source_title` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `source_text` mediumtext COLLATE utf8mb4_bin,
  `source_html` mediumtext COLLATE utf8mb4_bin
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `posts_photos`
--

CREATE TABLE `posts_photos` (
  `photo_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `album_id` int(10) UNSIGNED DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `likes` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `comments` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `posts_photos`
--

INSERT INTO `posts_photos` (`photo_id`, `post_id`, `album_id`, `source`, `likes`, `comments`) VALUES
(1, 1, 1, 'photos/2019/04/sngine_ded1b5daa6421a231b36c56c91377342.png', 0, 0),
(2, 2, 2, 'photos/2019/04/sngine_5a7271c6528e9bbd20cad6f1b0efa4f3.jpg', 0, 0),
(3, 3, 3, 'photos/2019/04/sngine_e5f47d7b9bf8f7274b989ec197dad07a.jpg', 0, 0),
(4, 4, 4, 'photos/2019/04/sngine_a02849eb9d1f577601a5858b03bbde49.jpg', 0, 0),
(11, 96, 8, 'user_uploads/2/photos/2019/05/qrs-connect_825ac786b0d298ac6b74d327f02a3c77.png', 0, 0),
(6, 8, 6, 'photos/2019/04/qrsconnect_a2bd5a48fe7127e430523d585898a6e3.jpg', 0, 0),
(10, 95, 5, 'user_uploads/2/photos/2019/05/qrs-connect_0a32c529cb342582e942729f7a32e517.jpg', 0, 0),
(12, 369, 9, 'user_uploads/4/photos/2019/06/qrs-connect_ca6526b485b907dc7e9bb1782dac8766.jpg', 0, 0),
(13, 370, 10, 'user_uploads/4/photos/2019/06/qrs-connect_77308743db9fb746cf770498d130302b.jpg', 0, 0),
(16, 792, 12, 'user_uploads/11/photos/2019/11/qrs-connect_06b0047ed7f83513ad93cf8470118e56.jpg', 0, 0),
(15, 788, 11, 'user_uploads/8/photos/2019/10/qrs-connect_b2b8d32384dac52d576c7f4ddf6d8eeb.png', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts_photos_albums`
--

CREATE TABLE `posts_photos_albums` (
  `album_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` enum('user','page') COLLATE utf8mb4_bin NOT NULL,
  `in_group` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `in_event` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `event_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `privacy` enum('me','friends','public','custom') COLLATE utf8mb4_bin NOT NULL DEFAULT 'public'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `posts_photos_albums`
--

INSERT INTO `posts_photos_albums` (`album_id`, `user_id`, `user_type`, `in_group`, `group_id`, `in_event`, `event_id`, `title`, `privacy`) VALUES
(1, 1, 'user', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(2, 1, 'user', '0', NULL, '0', NULL, 'Cover Photos', 'public'),
(3, 3, 'user', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(4, 2, 'user', '0', NULL, '0', NULL, 'Cover Photos', 'public'),
(5, 2, 'user', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(6, 4, 'user', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(7, 2, 'user', '1', 1, '0', NULL, 'Cover Photos', 'public'),
(8, 2, 'user', '1', 1, '0', NULL, 'Profile Pictures', 'public'),
(9, 4, 'user', '0', NULL, '0', NULL, 'Cover Photos', 'public'),
(10, 4, 'user', '0', NULL, '1', 1, 'Cover Photos', 'public'),
(11, 8, 'user', '0', NULL, '0', NULL, 'Profile Pictures', 'public'),
(12, 11, 'user', '0', NULL, '0', NULL, 'Profile Pictures', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `posts_photos_likes`
--

CREATE TABLE `posts_photos_likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Table structure for table `posts_polls`
--

CREATE TABLE `posts_polls` (
  `poll_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `votes` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_polls_options`
--

CREATE TABLE `posts_polls_options` (
  `option_id` int(10) UNSIGNED NOT NULL,
  `poll_id` int(10) UNSIGNED NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_polls_options_users`
--

CREATE TABLE `posts_polls_options_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `poll_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Table structure for table `posts_products`
--

CREATE TABLE `posts_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `status` enum('new','old') COLLATE utf8mb4_bin NOT NULL DEFAULT 'new',
  `location` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `available` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts_saved`
--

CREATE TABLE `posts_saved` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `posts_saved`
--

INSERT INTO `posts_saved` (`id`, `post_id`, `user_id`, `time`) VALUES
(1, 368, 4, '2019-06-12 15:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `posts_videos`
--

CREATE TABLE `posts_videos` (
  `video_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `remoteSessions`
--

CREATE TABLE `remoteSessions` (
  `host` varchar(255) COLLATE utf8_bin NOT NULL,
  `allowedCallers` varchar(255) COLLATE utf8_bin NOT NULL,
  `inSession` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `report_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL,
  `node_type` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`report_id`, `user_id`, `node_id`, `node_type`, `time`) VALUES
(1, 8, 98, 'post', '2019-05-03 15:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `static_pages`
--

CREATE TABLE `static_pages` (
  `page_id` int(10) NOT NULL,
  `page_url` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `page_text` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `page_in_footer` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `static_pages`
--

INSERT INTO `static_pages` (`page_id`, `page_url`, `page_title`, `page_text`, `page_in_footer`) VALUES
(1, 'about', 'About', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;\r\n&lt;h3 class=&quot;text-info&quot;&gt;Big Title&lt;/h3&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;\r\n&lt;h3 class=&quot;text-info&quot;&gt;Big Title&lt;/h3&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;', '0'),
(2, 'terms', 'Terms', '&lt;p&gt;&lt;strong&gt; We run this website and permits its use according to the following terms and conditions: &lt;/strong&gt;&lt;/p&gt;\r\n&lt;h3 class=&quot;text-info&quot;&gt;Basic Terms:&lt;/h3&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;Using this website implies your acceptance of these conditions. If you do not fully accept them, your entry to this site will be considered unauthorized and you will have to stop using it immediately&lt;/li&gt;\r\n&lt;li&gt;You must be 13 years or older to use this site.&lt;/li&gt;\r\n&lt;li&gt;You are responsible for any activity that occurs under your screen name.&lt;/li&gt;\r\n&lt;li&gt;You are responsible for keeping your account secure.&lt;/li&gt;\r\n&lt;li&gt;You must not abuse, harass, threaten or intimidate other Sngine users.&lt;/li&gt;\r\n&lt;li&gt;You are solely responsible for your conduct and any data, text, information, screen names, graphics, photos, profiles, audio and video clips, links (&quot;Content&quot;) that you submit, post, and display on the Sngine service.&lt;/li&gt;\r\n&lt;li&gt;You must not modify, adapt or hack Sngine or modify another website so as to falsely imply that it is associated with Sngine&lt;/li&gt;\r\n&lt;li&gt;You must not create or submit unwanted email to any Sngine members (&quot;Spam&quot;).&lt;/li&gt;\r\n&lt;li&gt;You must not transmit any worms or viruses or any code of a destructive nature.&lt;/li&gt;\r\n&lt;li&gt;You must not, in the use of Sngine, violate any laws in your jurisdiction (including but not limited to copyright laws).&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;Violation of any of these agreements will result in the termination of your Sngine account. While Sngine prohibits such conduct and content on its site, you understand and agree that Sngine cannot be responsible for the Content posted on its web site and you nonetheless may be exposed to such materials and that you use the Sngine service at your own risk.&lt;/p&gt;\r\n&lt;h3 class=&quot;text-info&quot;&gt;General Conditions:&lt;/h3&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;We reserve the right to modify or terminate the Sngine service for any reason, without notice at any time.&lt;/li&gt;\r\n&lt;li&gt;We reserve the right to alter these Terms of Use at any time. If the alterations constitute a material change to the Terms of Use, we will notify you via internet mail according to the preference expressed on your account. What constitutes a &quot;material change&quot; will be determined at our sole discretion, in good faith and using common sense and reasonable judgement.&lt;/li&gt;\r\n&lt;li&gt;We reserve the right to refuse service to anyone for any reason at any time.&lt;/li&gt;\r\n&lt;li&gt;We may, but have no obligation to, remove Content and accounts containing Content that we determine in our sole discretion are unlawful, offensive, threatening, libelous, defamatory, obscene or otherwise objectionable or violates any party&#039;s intellectual property or these Terms of Use.&lt;/li&gt;\r\n&lt;li&gt;Sngine service makes it possible to post images and text hosted on Sngine to outside websites. This use is accepted (and even encouraged!). However, pages on other websites which display data hosted on Sngine must provide a link back to Sngine.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;h3 class=&quot;text-info&quot;&gt;Copyright (What&#039;s Yours is Yours):&lt;/h3&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;We claim no intellectual property rights over the material you provide to the Sngine service. Your profile and materials uploaded remain yours. You can remove your profile at any time by deleting your account. This will also remove any text and images you have stored in the system.&lt;/li&gt;\r\n&lt;li&gt;We encourage users to contribute their creations to the public domain or consider progressive licensing terms.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;&lt;small&gt; &lt;em&gt;Last updated on: Jan 29, 2016&lt;/em&gt; &lt;/small&gt;&lt;/p&gt;', '0'),
(3, 'privacy', 'Privacy', '&lt;p&gt;We recognize that your privacy is very important and take it seriously. This Privacy Policy describes Sngine&#039;s policies and procedures on the collection, use and disclosure of your information when you use the Sngine Service. We will not use or share your information with anyone except as described in this Privacy Policy.&lt;/p&gt;\r\n&lt;h3 class=&quot;text-info&quot;&gt;Information Collection and Use&lt;/h3&gt;\r\n&lt;p&gt;We uses information we collect to analyze how the Service is used, diagnose service or technical problems, maintain security, personalize content, remember information to help you efficiently access your account, monitor aggregate metrics such as total number of visitors, traffic, and demographic patterns, and track User Content and users as necessary to comply with the Digital Millennium Copyright Act and other applicable laws.&lt;/p&gt;\r\n&lt;h4 class=&quot;text-danger&quot;&gt;User-Provided Information:&lt;/h4&gt;\r\n&lt;p&gt;You provide us information about yourself, such as your name and e-mail address, if you register for a member account with the Service. Your name and other information you choose to add to your profile will be available for public viewing on the Service. We may use your email address to send you Service-related notices. You can control receipt of certain Service-related messages on your Settings page. We may also use your contact information to send you marketing messages. If you do not want to receive such messages, you may opt out by following the instructions in the message. If you correspond with us by email, we may retain the content of your email messages, your email address and our responses.&lt;/p&gt;\r\n&lt;p&gt;You also provide us information in User Content you post to the Service. Your posts and other contributions on the Service, and metadata about them (such as when you posted them), are publicly viewable on the Service, along with your name (unless the Service permits you to post anonymously). This information may be searched by search engines and be republished elsewhere on the Web in accordance with our Terms of Service.&lt;/p&gt;\r\n&lt;p&gt;If you choose to use our invitation service to invite a friend to the Service, we will ask you for that person&#039;s email address and automatically send an email invitation. We stores this information to send this email, to register your friend if your invitation is accepted, and to track the success of our invitation service.&lt;/p&gt;\r\n&lt;h4 class=&quot;text-danger&quot;&gt;Cookies:&lt;/h4&gt;\r\n&lt;p&gt;When you visit the Service, we may send one or more &quot;cookies&quot; - small data files - to your computer to uniquely identify your browser and let Sngine help you log in faster and enhance your navigation through the site. A cookie may convey anonymous information about how you browse the Service to us, but does not collect personal information about you. A persistent cookie remains on your computer after you close your browser so that it can be used by your browser on subsequent visits to the Service. Persistent cookies can be removed by following your web browser&#039;s directions. A session cookie is temporary and disappears after you close your browser. You can reset your web browser to refuse all cookies or to indicate when a cookie is being sent. However, some features of the Service may not function properly if the ability to accept cookies is disabled.&lt;/p&gt;\r\n&lt;h4 class=&quot;text-danger&quot;&gt;Log Files:&lt;/h4&gt;\r\n&lt;p&gt;Log file information is automatically reported by your browser each time you access a web page. When you use the Service, our servers automatically record certain information that your web browser sends whenever you visit any website. These server logs may include information such as your web request, Internet Protocol (&quot;IP&quot;) address, browser type, referring / exit pages and URLs, number of clicks, domain names, landing pages, pages viewed, and other such information.&lt;/p&gt;\r\n&lt;h4 class=&quot;text-danger&quot;&gt;Third Party Services:&lt;/h4&gt;\r\n&lt;p&gt;We may use Google Analytics or Mixpanel to help understand use of the Service. Google Analytics and Mixpanel collect the information sent by your browser as part of a web page request, including cookies and your IP address. Google Analytics and Mixpanel also receive this information and their use of it is governed by their Privacy Policies.&lt;/p&gt;\r\n&lt;h3 class=&quot;text-info&quot;&gt;How We Share Your Information&lt;/h3&gt;\r\n&lt;h4 class=&quot;text-danger&quot;&gt;Personally Identifiable Information:&lt;/h4&gt;\r\n&lt;p&gt;We may share your personally identifiable information with third parties for the purpose of providing the Service to you. If we do this, such third parties&#039; use of your information will be bound by this Privacy Policy. We may store personal information in locations outside the direct control of Sngine (for instance, on servers or databases co-located with hosting providers).&lt;/p&gt;\r\n&lt;p&gt;We may share or disclose your information with your consent, such as if you choose to sign on to the Service through a third-party service. We cannot control third parties&#039; use of your information.&lt;/p&gt;\r\n&lt;p&gt;Sngine may disclose your personal information if required to do so by law or subpoena or if we believe that it is reasonably necessary to comply with a law, regulation or legal request; to protect the safety of any person; to address fraud, security or technical issues; or to protect Sngine&#039;s rights or property.&lt;/p&gt;\r\n&lt;h4 class=&quot;text-danger&quot;&gt;Non-Personally Identifiable Information:&lt;/h4&gt;\r\n&lt;p&gt;We may share non-personally identifiable information (such as anonymous usage data, referring/exit pages and URLs, platform types, number of clicks, etc.) with interested third parties to help them understand the usage patterns for certain Sngine services.&lt;/p&gt;\r\n&lt;p&gt;Sngine may allow third-party ad servers or ad networks to serve advertisements on the Service. These third-party ad servers or ad networks use technology to send, directly to your browser, the advertisements and links that appear on Sngine. They automatically receive your IP address when this happens. They may also use other technologies (such as cookies, JavaScript, or web beacons) to measure the effectiveness of their advertisements and to personalize the advertising content. Sngine does not provide any personally identifiable information to these third-party ad servers or ad networks without your consent. However, please note that if an advertiser asks Sngine to show an advertisement to a certain audience and you respond to that advertisement, the advertiser or ad server may conclude that you fit the description of the audience they are trying to reach. The Sngine Privacy Policy does not apply to, and we cannot control the activities of, third-party advertisers. Please consult the respective privacy policies of such advertisers for more information.&lt;/p&gt;\r\n&lt;h3 class=&quot;text-info&quot;&gt;How We Protect Your Information&lt;/h3&gt;\r\n&lt;p&gt;We uses commercially reasonable physical, managerial, and technical safeguards to preserve the integrity and security of your personal information. We cannot, however, ensure or warrant the security of any information you transmit to Sngine or guarantee that your information on the Service may not be accessed, disclosed, altered, or destroyed by breach of any of our physical, technical, or managerial safeguards.&lt;/p&gt;\r\n&lt;h3 class=&quot;text-info&quot;&gt;Your Choices About Your Information&lt;/h3&gt;\r\n&lt;p&gt;You may, of course, decline to submit personally identifiable information through the Service, in which case Sngine may not be able to provide certain services to you. You may update or correct your account information and email preferences at any time by logging in to your account.&lt;/p&gt;\r\n&lt;h3 class=&quot;text-info&quot;&gt;Links to Other Web Sites&lt;/h3&gt;\r\n&lt;p&gt;We are not responsible for the practices employed by websites linked to or from the Service, nor the information or content contained therein. Please remember that when you use a link to go from the Service to another website, our Privacy Policy is no longer in effect. Your browsing and interaction on any other website, including those that have a link on our website, is subject to that website&#039;s own rules and policies.&lt;/p&gt;\r\n&lt;h3 class=&quot;text-info&quot;&gt;Changes to Our Privacy Policy&lt;/h3&gt;\r\n&lt;p&gt;If we change our privacy policies and procedures, we will post those changes on this page to keep you aware of what information we collect, how we use it and under what circumstances we may disclose it. Changes to this Privacy Policy are effective when they are posted on this page.&lt;/p&gt;\r\n&lt;h4 class=&quot;text-danger&quot;&gt;&lt;small&gt; &lt;em&gt;Last updated on: Jan 29, 2016&lt;/em&gt; &lt;/small&gt;&lt;/h4&gt;', '0');

-- --------------------------------------------------------

--
-- Table structure for table `stickers`
--

CREATE TABLE `stickers` (
  `sticker_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `stickers`
--

INSERT INTO `stickers` (`sticker_id`, `image`) VALUES
(1, 'stickers/1.png'),
(2, 'stickers/2.png'),
(3, 'stickers/3.png'),
(4, 'stickers/4.png'),
(5, 'stickers/5.png'),
(6, 'stickers/6.png'),
(7, 'stickers/7.png'),
(8, 'stickers/8.png'),
(9, 'stickers/9.png'),
(10, 'stickers/10.png'),
(11, 'stickers/11.png'),
(12, 'stickers/12.png'),
(13, 'stickers/13.png'),
(14, 'stickers/14.png'),
(15, 'stickers/15.png'),
(16, 'stickers/16.png'),
(17, 'stickers/17.png'),
(18, 'stickers/18.png');

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `story_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `stories_media`
--

CREATE TABLE `stories_media` (
  `media_id` int(10) UNSIGNED NOT NULL,
  `story_id` int(10) UNSIGNED NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `is_photo` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `text` text COLLATE utf8mb4_bin NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `system_countries`
--

CREATE TABLE `system_countries` (
  `country_id` int(10) UNSIGNED NOT NULL,
  `country_code` varchar(2) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `country_name` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `system_countries`
--

INSERT INTO `system_countries` (`country_id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `system_languages`
--

CREATE TABLE `system_languages` (
  `language_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `flag` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `dir` enum('LTR','RTL') COLLATE utf8mb4_bin NOT NULL,
  `default` enum('0','1') COLLATE utf8mb4_bin NOT NULL,
  `enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `system_languages`
--

INSERT INTO `system_languages` (`language_id`, `code`, `title`, `flag`, `dir`, `default`, `enabled`) VALUES
(1, 'en_us', 'English', 'flags/en_us.png', 'LTR', '1', '1'),
(2, 'ar_sa', 'Arabic', 'flags/ar_sa.png', 'RTL', '0', '1'),
(3, 'fr_fr', 'Fran&ccedil;ais', 'flags/fr_fr.png', 'LTR', '0', '1'),
(4, 'es_es', 'Espa&ntilde;ol', 'flags/es_es.png', 'LTR', '0', '1'),
(5, 'pt_pt', 'Portugu&ecirc;s', 'flags/pt_pt.png', 'LTR', '0', '1'),
(6, 'de_de', 'Deutsch', 'flags/de_de.png', 'LTR', '0', '1'),
(7, 'tr_tr', 'T&uuml;rk&ccedil;e', 'flags/tr_tr.png', 'LTR', '0', '1'),
(8, 'nl_nl', 'Dutch', 'flags/nl_nl.png', 'LTR', '0', '1'),
(9, 'it_it', 'Italiano', 'flags/it_it.png', 'LTR', '0', '1'),
(10, 'ru_ru', 'Russian', 'flags/ru_ru.png', 'LTR', '0', '1'),
(11, 'ro_ro', 'Romaian', 'flags/ro_ro.png', 'LTR', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `system_options`
--

CREATE TABLE `system_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `system_public` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `system_live` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `system_message` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `system_title` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT 'Sngine',
  `system_description` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `system_keywords` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `system_email` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `contact_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `directory_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `pages_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `groups_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `events_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `blogs_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `users_blogs_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `market_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `movies_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `games_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `daytime_msg_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `profile_notification_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `browser_notifications_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `noty_notifications_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `cookie_consent_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `adblock_detector_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `stories_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `wall_posts_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `social_share_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `polls_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `gif_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `giphy_key` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `geolocation_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `geolocation_key` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `post_translation_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `yandex_key` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `smart_yt_player` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `default_privacy` enum('public','friends','me') COLLATE utf8mb4_bin NOT NULL DEFAULT 'public',
  `registration_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `registration_type` enum('free','paid') COLLATE utf8mb4_bin NOT NULL DEFAULT 'free',
  `invitation_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `packages_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `activation_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `activation_type` enum('email','sms') COLLATE utf8mb4_bin NOT NULL DEFAULT 'email',
  `two_factor_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `two_factor_type` enum('email','sms','google') COLLATE utf8mb4_bin NOT NULL DEFAULT 'email',
  `verification_requests` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `age_restriction` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `minimum_age` tinyint(1) UNSIGNED DEFAULT NULL,
  `getting_started` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `delete_accounts_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `max_accounts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `social_login_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `facebook_login_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `facebook_appid` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `facebook_secret` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `twitter_login_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `twitter_appid` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `twitter_secret` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `instagram_login_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `instagram_appid` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `instagram_secret` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `linkedin_login_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `linkedin_appid` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `linkedin_secret` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `vkontakte_login_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `vkontakte_appid` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `vkontakte_secret` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `email_smtp_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `email_smtp_authentication` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `email_smtp_ssl` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `email_smtp_server` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `email_smtp_port` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `email_smtp_username` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `email_smtp_password` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `email_smtp_setfrom` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `email_notifications` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `email_post_likes` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `email_post_comments` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `email_post_shares` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `email_wall_posts` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `email_mentions` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `email_profile_visits` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `email_friend_requests` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `twilio_sid` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `twilio_token` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `twilio_phone` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `system_phone` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `chat_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `chat_status_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `s3_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `s3_bucket` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `s3_region` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `s3_key` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `s3_secret` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `uploads_directory` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT 'content/uploads',
  `uploads_prefix` varchar(255) COLLATE utf8mb4_bin DEFAULT 'sngine',
  `max_avatar_size` int(10) UNSIGNED NOT NULL DEFAULT '5120',
  `max_cover_size` int(10) UNSIGNED NOT NULL DEFAULT '5120',
  `photos_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `max_photo_size` int(10) UNSIGNED NOT NULL DEFAULT '5120',
  `uploads_quality` enum('high','medium','low') COLLATE utf8mb4_bin NOT NULL DEFAULT 'medium',
  `videos_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `max_video_size` int(10) UNSIGNED NOT NULL DEFAULT '5120',
  `video_extensions` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `audio_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `max_audio_size` int(10) UNSIGNED NOT NULL DEFAULT '5120',
  `audio_extensions` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `file_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `max_file_size` int(10) UNSIGNED NOT NULL DEFAULT '5120',
  `file_extensions` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `censored_words_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `censored_words` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `reCAPTCHA_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `reCAPTCHA_site_key` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `reCAPTCHA_secret_key` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `session_hash` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `paypal_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `paypal_mode` enum('live','sandbox') COLLATE utf8mb4_bin NOT NULL DEFAULT 'sandbox',
  `paypal_id` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `paypal_secret` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `creditcard_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `alipay_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `stripe_mode` enum('live','test') COLLATE utf8mb4_bin NOT NULL DEFAULT 'test',
  `stripe_test_secret` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `stripe_test_publishable` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `stripe_live_secret` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `stripe_live_publishable` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `system_currency` varchar(64) COLLATE utf8mb4_bin DEFAULT 'USD',
  `data_heartbeat` int(10) UNSIGNED NOT NULL DEFAULT '5',
  `chat_heartbeat` int(10) UNSIGNED NOT NULL DEFAULT '5',
  `offline_time` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `min_results` int(10) UNSIGNED NOT NULL DEFAULT '5',
  `max_results` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `min_results_even` int(10) UNSIGNED NOT NULL DEFAULT '6',
  `max_results_even` int(10) UNSIGNED NOT NULL DEFAULT '12',
  `analytics_code` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `system_theme_night_on` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `system_theme_mode_select` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `system_logo` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `system_wallpaper_default` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `system_wallpaper` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `system_random_profiles` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `system_favicon_default` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `system_favicon` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `system_ogimage_default` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `system_ogimage` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `css_customized` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `css_background` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `css_link_color` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `css_header` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `css_header_search` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `css_header_search_color` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `css_btn_primary` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `css_custome_css` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `custome_js_header` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `custome_js_footer` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `forums_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `forums_online_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `forums_statistics_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `affiliates_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `affiliate_type` enum('registration','packages') COLLATE utf8mb4_bin NOT NULL DEFAULT 'registration',
  `affiliate_payment_method` enum('paypal','skrill','both') COLLATE utf8mb4_bin NOT NULL DEFAULT 'both',
  `affiliates_min_withdrawal` int(10) UNSIGNED NOT NULL DEFAULT '50',
  `affiliates_per_user` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '0.1',
  `points_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `points_money_withdraw_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `points_payment_method` enum('paypal','skrill','both') COLLATE utf8mb4_bin NOT NULL DEFAULT 'both',
  `points_min_withdrawal` int(10) UNSIGNED NOT NULL DEFAULT '50',
  `points_money_transfer_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `points_per_currency` int(10) UNSIGNED NOT NULL DEFAULT '100',
  `points_per_post` int(10) UNSIGNED NOT NULL DEFAULT '20',
  `points_per_comment` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `points_per_reaction` int(10) UNSIGNED NOT NULL DEFAULT '5',
  `ads_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `ads_cost_click` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '0.05',
  `ads_cost_view` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '0.01'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `system_options`
--

INSERT INTO `system_options` (`id`, `system_public`, `system_live`, `system_message`, `system_title`, `system_description`, `system_keywords`, `system_email`, `contact_enabled`, `directory_enabled`, `pages_enabled`, `groups_enabled`, `events_enabled`, `blogs_enabled`, `users_blogs_enabled`, `market_enabled`, `movies_enabled`, `games_enabled`, `daytime_msg_enabled`, `profile_notification_enabled`, `browser_notifications_enabled`, `noty_notifications_enabled`, `cookie_consent_enabled`, `adblock_detector_enabled`, `stories_enabled`, `wall_posts_enabled`, `social_share_enabled`, `polls_enabled`, `gif_enabled`, `giphy_key`, `geolocation_enabled`, `geolocation_key`, `post_translation_enabled`, `yandex_key`, `smart_yt_player`, `default_privacy`, `registration_enabled`, `registration_type`, `invitation_enabled`, `packages_enabled`, `activation_enabled`, `activation_type`, `two_factor_enabled`, `two_factor_type`, `verification_requests`, `age_restriction`, `minimum_age`, `getting_started`, `delete_accounts_enabled`, `max_accounts`, `social_login_enabled`, `facebook_login_enabled`, `facebook_appid`, `facebook_secret`, `twitter_login_enabled`, `twitter_appid`, `twitter_secret`, `instagram_login_enabled`, `instagram_appid`, `instagram_secret`, `linkedin_login_enabled`, `linkedin_appid`, `linkedin_secret`, `vkontakte_login_enabled`, `vkontakte_appid`, `vkontakte_secret`, `email_smtp_enabled`, `email_smtp_authentication`, `email_smtp_ssl`, `email_smtp_server`, `email_smtp_port`, `email_smtp_username`, `email_smtp_password`, `email_smtp_setfrom`, `email_notifications`, `email_post_likes`, `email_post_comments`, `email_post_shares`, `email_wall_posts`, `email_mentions`, `email_profile_visits`, `email_friend_requests`, `twilio_sid`, `twilio_token`, `twilio_phone`, `system_phone`, `chat_enabled`, `chat_status_enabled`, `s3_enabled`, `s3_bucket`, `s3_region`, `s3_key`, `s3_secret`, `uploads_directory`, `uploads_prefix`, `max_avatar_size`, `max_cover_size`, `photos_enabled`, `max_photo_size`, `uploads_quality`, `videos_enabled`, `max_video_size`, `video_extensions`, `audio_enabled`, `max_audio_size`, `audio_extensions`, `file_enabled`, `max_file_size`, `file_extensions`, `censored_words_enabled`, `censored_words`, `reCAPTCHA_enabled`, `reCAPTCHA_site_key`, `reCAPTCHA_secret_key`, `session_hash`, `paypal_enabled`, `paypal_mode`, `paypal_id`, `paypal_secret`, `creditcard_enabled`, `alipay_enabled`, `stripe_mode`, `stripe_test_secret`, `stripe_test_publishable`, `stripe_live_secret`, `stripe_live_publishable`, `system_currency`, `data_heartbeat`, `chat_heartbeat`, `offline_time`, `min_results`, `max_results`, `min_results_even`, `max_results_even`, `analytics_code`, `system_theme_night_on`, `system_theme_mode_select`, `system_logo`, `system_wallpaper_default`, `system_wallpaper`, `system_random_profiles`, `system_favicon_default`, `system_favicon`, `system_ogimage_default`, `system_ogimage`, `css_customized`, `css_background`, `css_link_color`, `css_header`, `css_header_search`, `css_header_search_color`, `css_btn_primary`, `css_custome_css`, `custome_js_header`, `custome_js_footer`, `forums_enabled`, `forums_online_enabled`, `forums_statistics_enabled`, `affiliates_enabled`, `affiliate_type`, `affiliate_payment_method`, `affiliates_min_withdrawal`, `affiliates_per_user`, `points_enabled`, `points_money_withdraw_enabled`, `points_payment_method`, `points_min_withdrawal`, `points_money_transfer_enabled`, `points_per_currency`, `points_per_post`, `points_per_comment`, `points_per_reaction`, `ads_enabled`, `ads_cost_click`, `ads_cost_view`) VALUES
(1, '0', '1', '', 'QRS Connect', '', '', 'it@qrsinc.com', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '1', '0', '0', '', '0', '', '0', '', '1', 'friends', '1', 'free', '0', '0', '1', 'email', '1', 'google', '0', '0', 13, '1', '1', 0, '0', '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '0', NULL, NULL, '1', '1', '1', 'mail.qrs-connect.com', '465', 'qrsadmin@qrs-connect.com', 'Fl2beach!', 'qrsadmin@qrs-connect.com', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, '1', '1', '0', NULL, NULL, NULL, NULL, 'content/uploads', 'qrs-connect', 5120, 5120, '1', 5120, 'medium', '1', 200000, 'mp4, mov,MP4,MOV', '1', 200000, 'mp3, wav, json, ogg, flac, mid', '1', 200000, 'txt, zip,json,pls,wav,flac,mp3,mid,ogg,mp4,mpg', '1', 'pussy,fuck,shit,asshole,dick,tits,boobs', '0', NULL, NULL, '26ZRBtcaZ-2QmWR-2vBGf-2Wl57-35RKp-aca9ab0146dd', '0', 'sandbox', NULL, NULL, '0', '0', 'test', NULL, NULL, NULL, NULL, 'USD', 5, 5, 10, 5, 10, 6, 12, '', '0', '0', 'user_uploads/1/photos/2019/06/qrs-connect_4968473266020ed1ebc7cea3246c0956.png', '1', NULL, '1', '0', 'photos/2019/04/sngine_aae165ba3623676ce7cd02ea12dac7f1.png', '1', '', '1', '', '#D51928', '#000000', '#777777', '#FFFFFF', '#6557F5', '/* \r\n\r\nAdd here your custom css styles \r\nExample:\r\np { text-align: center; color: red; }\r\nButton Primary =#D51928\r\n\r\n*/\r\n.nav-home {\r\n    background: #e9eaee;\r\n    z-index: 2;\r\n    border: 1px solid #CCC;\r\n    border-radius: 2px;\r\n    margin: 2px;\r\n}\r\n.main-header .search-wrapper .form-control {\r\n\r\n     background: #666;\r\n\r\n}\r\n/*.btn-success, .btn-success.disabled, .btn-success:disabled, .btn-success:not(:disabled):not(.disabled).active, .btn-success:not(:disabled):not(.disabled):active, .show&gt;.btn-success.dropdown-toggle {\r\n    color: #fff;\r\n    border-color: #dc3545;\r\n    background-color: #dc3545;\r\n}*/\r\n\r\n.card-register .card-header .card-title {\r\n    position: relative;\r\n    font-size: 4em;\r\n    font-weight: 900;\r\n    color: #eee;\r\n    text-transform: unset; \r\n    margin-left: 5px;\r\n}\r\n\r\n/*create post css */\r\n\r\n .bs-select-hidden{\r\n        display: none;\r\n    }\r\n    .bs-select-hidden1{\r\n        display: none;\r\n    }\r\n    .update-name{\r\n        display: none;\r\n    }\r\n    .bs-select-hidden-h5{\r\n        display: none;\r\n    }\r\n    .bs-select-hidden-checkbox{\r\n        display: none;\r\n    }\r\n    .bs-select-hidden2{\r\n        display: none;\r\n    }\r\n    .bs-select-hidden3{\r\n        display: none;\r\n    }\r\n    .bs-select-hidden4{\r\n        display: none;\r\n    }\r\n    #usr3{\r\n        display: none;\r\n    }\r\n\r\n\r\n.create_post{\r\n  margin-bottom: 0px;\r\n}\r\n.inner-create_post{\r\n  padding-top:40px;\r\n}\r\n.inner-create_post label{\r\n  font-weight:bold;\r\n  color:#696d82;\r\n}\r\n\r\n\r\n.event-view-page-box label{\r\n  font-weight:bold;\r\n  color:#696d82;\r\n}\r\n\r\n.event-view-page-box p{\r\n  font-weight:bold;\r\n  margin-top: 35px;\r\n}\r\n\r\n.event-view-page-box{\r\n  min-height:60vh;\r\n} \r\n\r\n.page-box{\r\n  width:85%;\r\n  float:right;\r\n}\r\n#event-board{\r\n  display:none;\r\n}\r\n\r\n#connect-friends{\r\n  display:none;\r\n  height:65vh;\r\n}\r\n\r\n#join-group{\r\n  display:none;\r\n}\r\n\r\n#request-performance{\r\n  display:none;\r\n}\r\n\r\n#request-lesson{\r\n  display:none;\r\n}\r\n\r\n#calendar-view{\r\n  display:none;\r\n}\r\n\r\n#create-session{\r\n  display:none;\r\n  height:75vh;\r\n}\r\n\r\n#create-concert{\r\n  display:none;\r\n  height:94vh;\r\n}\r\n\r\n#join-concert{\r\n  display:none;\r\n}\r\n\r\n#connect-connector{\r\n  display:none;\r\n}\r\n\r\n.public-event-invite-friends{\r\n  width:100%;\r\n  float:left;\r\n}\r\n\r\n.form-control, .input-group-text {\r\n    border-radius: 4px;\r\n    border: 2px solid #d3dce3;\r\n}\r\n\r\n.bell-icon i{\r\n   font-size: 24px;\r\n   color: #4b5c6b;\r\n}\r\n\r\n.bell-icon {\r\n  background-color: #ffffff;\r\n  border-bottom: none;\r\n}\r\n\r\n.custom-notification{\r\n  min-height:80vh;\r\n  height:100vh;\r\n}\r\n\r\n&lt;!--\r\n&lt;/style&gt;\r\n&lt;link rel=&quot;stylesheet&quot; href=&quot;ext/hoho-all.css?v=0.89&quot;&gt;\r\n&lt;link rel=&quot;stylesheet&quot; href=&quot;ext/calendar/material/resources/calendar-all.css?v=0.89&quot;&gt;\r\n--&gt;', '/* \r\nYou can add your JavaScript code here\r\n\r\nExample:\r\n\r\nvar x, y, z;\r\nx = 1;\r\ny = 2;\r\nz = x + y;\r\n*/\r\n\r\ndrawCanvas=function(canvas,path){\r\n	setTimeout(&quot;drawCanvas2(&#039;&quot;+canvas+&quot;&#039;,&#039;&quot;+path+&quot;&#039;);&quot;,2000)\r\n	//window.requestAnimationFrame(drawCanvas2(canvas,path))\r\n}\r\n\r\ndrawCanvas2 = function (canvas, path) {\r\n	qrs = {};\r\n	var canvas = document.getElementById(canvas);\r\n	var context = canvas.getContext(&quot;2d&quot;);\r\n	if (qrs.loadedTrack + canvas.width == qrs.selectedTrack + canvas.width) {\r\n		return;\r\n	}\r\n	qrs.loadedTrack = qrs.selectedTrack + canvas.width;\r\n	channel1_fill = &quot;blue&quot;,\r\n	channel1_stroke = &quot;blue&quot;;\r\n	pedal_fill = &quot;blue&quot;,\r\n	pedal_stroke = &quot;green&quot;;\r\n	context.clearRect(0, 0, canvas.width, canvas.height);\r\n	context.beginPath();\r\n	context.font = &quot;10px Arial&quot;;\r\n	context.fillStyle = &quot;darkblue&quot;;\r\n	context.fill();\r\n	function msToMinSec(ms) {\r\n		var minutes = Math.floor(ms / 60000);\r\n		var seconds = ((ms % 60000) / 1000).toFixed(0);\r\n		return minutes + &quot;:&quot; + (seconds &lt; 10 ? &#039;0&#039; : &#039;&#039;) + seconds;\r\n	}\r\n	channelColors = [&quot;&quot;, &quot;green&quot;, &quot;blue&quot;, &quot;darkblue&quot;, &quot;light blue&quot;, &quot;grey&quot;, &quot;darkgray&quot;, &quot;pink&quot;, &quot;orange&quot;, &quot;red&quot;, &quot;darkred&quot;, &quot;black&quot;, &quot;darkgreen&quot;, &quot;green&quot;, &quot;olive&quot;, &quot;lightgreen&quot;, &quot;yellow&quot;, &quot;magenta&quot;]\r\n	mySong = &quot;&quot;;\r\n	midiTextCanvas = function (text, color) {\r\n		color = (typeof color != &#039;undefined&#039;) ? color : &quot;darkgray&quot;;\r\n		context.beginPath();\r\n		context.fillStyle = &quot;Green&quot;;\r\n		context.fill();\r\n		context.fillText(text, 0, 15);\r\n		context.closePath()\r\n	}\r\n	var settings = {\r\n		&quot;async&quot;: true,\r\n		&quot;url&quot;: path\r\n	}\r\n	$.ajax(settings).done(function (response) {\r\n		mySong = response;\r\n		if (typeof mySong == &#039;undefined&#039;) {\r\n			midiTextCanvas(&#039; Error Parsing File&#039;, &#039;red&#039;, context);\r\n			return;\r\n		}\r\n		if (typeof mySong[&quot;notesSummary&quot;] == &#039;undefined&#039;) {\r\n			midiTextCanvas(&#039; Error Reading File&#039;, &#039;red&#039;, context);\r\n			return;\r\n		}\r\n		if (typeof mySong[&quot;notesSummary&quot;][&quot;songLength&quot;] == &#039;undefined&#039;) {\r\n			midiTextCanvas(&#039; Error File Is Empty&#039;, &#039;red&#039;, context);\r\n			return;\r\n		}\r\n		scale = (mySong[&quot;notesSummary&quot;][&quot;songLength&quot;]) / canvas.width\r\n		for (times in mySong[&quot;noteDurations&quot;]) {\r\n			scaledTime = times / scale;\r\n			//noteY is what note number\r\n			for (channel in mySong[&quot;noteDurations&quot;][times]) {\r\n				//THESE ARE TRACKS\r\n				for (W in mySong[&quot;noteDurations&quot;][times][channel]) {\r\n					context.beginPath();\r\n					//noteX is the value for length. so Duration/1000 Y is Height\r\n					noteY = 95+(-1*(W)) + 21; //mySong[&quot;noteDurations&quot;][x];\r\n					noteW = mySong[&quot;noteDurations&quot;][times][channel][W] / scale\r\n		\r\n						context.rect(scaledTime, noteY, noteW, 1);\r\n					context.fillStyle = channelColors[channel]; //Ext.ComponentQuery.query(&#039;#dashboard&#039;)[0].controller.colorNameToRGB(channelColors[channel],1);//mySong[&quot;noteDurations&quot;][times][channel][W][0]/127);\r\n					//console.log(Ext.ComponentQuery.query(&#039;#dashboard&#039;)[0].controller.colorNameToRGB(channelColors[channel],mySong[&quot;noteDurations&quot;][times][channel][W][0]/127))\r\n					context.fill();\r\n					context.strokeStyle = channelColors[channel];\r\n					context.closePath();\r\n					// context.fillStyle = &quot;rgba(255, 255, 255, &quot;+mySong[&quot;noteDurations&quot;][times][channel][W][0]/127+&quot;)&quot;;\r\n				}\r\n				// context.strokeStyle = channelColors[channel];\r\n				// context.stroke();\r\n			}\r\n		}\r\n		\r\n		//PEDAL or CC\r\n		for (times in mySong[&quot;ccDurations&quot;]) {\r\n			scaledTime = times / scale;\r\n			//noteY is what note number\r\n			for (channel in mySong[&quot;ccDurations&quot;][times]) {\r\n				for (W in mySong[&quot;ccDurations&quot;][times][channel]) {\r\n					//noteX is the value for length. so Duration/1000 Y is height\r\n					context.beginPath();\r\n					noteY = 100 - mySong[&quot;ccDurations&quot;][times][channel][W][0]; //mySong[&quot;noteDurations&quot;][x];\r\n					noteW = mySong[&quot;ccDurations&quot;][times][channel][W] / scale;\r\n					noteW = (noteW &lt;= 1 || isNaN(noteW) ) ? 1 : noteW;\r\n					//console.log(noteY,noteW,scaledTime)\r\n					context.rect(scaledTime, noteY, noteW, mySong[&quot;ccDurations&quot;][times][channel][W][0]);\r\n					context.fillStyle = channelColors[channel]; //Ext.ComponentQuery.query(&#039;#dashboard&#039;)[0].controller.colorNameToRGB(channelColors[channel],1);//(mySong[&quot;ccDurations&quot;][times][channel][W][0]&lt;2)?2:mySong[&quot;ccDurations&quot;][times][channel][W][0]/127);\r\n					//console.log(Ext.ComponentQuery.query(&#039;#dashboard&#039;)[0].controller.colorNameToRGB(channelColors[channel],(mySong[&quot;ccDurations&quot;][times][channel][W][0]&lt;2)?2:mySong[&quot;ccDurations&quot;][times][channel][W][0]/127))\r\n					//context.fillStyle = &quot;rgba(255, 255, 255, &quot;+mySong[&quot;ccDurations&quot;][times][channel][W][0]/127+&quot;)&quot;;\r\n					context.strokeStyle = channelColors[channel];\r\n					context.fill();\r\n					context.closePath()\r\n				}\r\n				//Each Channel is a color.\r\n				// context.fillStyle =  channelColors[channel];\r\n				//	context.fill();\r\n				//	context.strokeStyle =  channelColors[channel];\r\n				//	context.stroke();\r\n			}\r\n		}\r\n\r\n\r\n		/*for (times in mySong[&quot;noteDurations&quot;]) {\r\n			scaledTime = times / scale;\r\n			for (channel in mySong[&quot;noteDurations&quot;][times]) {\r\n				for (W in mySong[&quot;noteDurations&quot;][times][channel]) {\r\n					context.beginPath();\r\n					noteY = W - 21;\r\n					noteW = mySong[&quot;noteDurations&quot;][times][channel][W] / scale\r\n						context.rect(scaledTime, noteY, noteW, 1);\r\n					context.fillStyle = channelColors[channel];\r\n					context.fill();\r\n					context.strokeStyle = channelColors[channel];\r\n					context.closePath();\r\n				}\r\n			}\r\n		}\r\n		for (times in mySong[&quot;ccDurations&quot;]) {\r\n			scaledTime = times / scale;\r\n			for (channel in mySong[&quot;ccDurations&quot;][times]) {\r\n				for (W in mySong[&quot;ccDurations&quot;][times][channel]) {\r\n					context.beginPath();\r\n					noteY = 89 - mySong[&quot;ccDurations&quot;][times][channel][W][0];\r\n					noteW = mySong[&quot;ccDurations&quot;][times][channel][W] / scale;\r\n					noteW = (noteW &lt;= 1) ? 2 : noteW;\r\n					context.rect(scaledTime, noteY, noteW, mySong[&quot;ccDurations&quot;][times][channel][W][0]);\r\n					context.fillStyle = channelColors[channel];\r\n					context.strokeStyle = channelColors[channel];\r\n					context.fill();\r\n					context.closePath()\r\n				}\r\n			}\r\n		}*/\r\n		//midiTextCanvas(&quot;Notes Played: &quot;+mySong[&quot;notesSummary&quot;][&quot;notesOn&quot;]+&quot; &quot;,&#039;darkslategray&#039;)\r\n	});\r\n}\r\n\r\n&lt;/script&gt;\r\n&lt;!--\r\n\r\n  \r\n &lt;script type=&quot;text/javascript&quot; src=&quot;ext/ext-modern-all.js?v=0.89&quot;&gt;&lt;/script&gt;\r\n&lt;script type=&quot;text/javascript&quot; src=&quot;ext/theme-material/theme-material.js?v=0.89&quot;&gt;&lt;/script&gt;\r\n    &lt;script type=&quot;text/javascript&quot; src=&quot;ext/calendar/calendar.js?v=0.89&quot;&gt;&lt;/script&gt;\r\n  --&gt;\r\n      \r\n\r\n      \r\n', '/* \r\nYou can add your JavaScript code here\r\n\r\nExample:\r\n\r\nvar x, y, z;\r\nx = 1;\r\ny = 2;\r\nz = x + y;\r\n*/\r\n$(&quot;#create_connection&quot;).click(function(){\r\n    $(&quot;#event-board&quot;).css(&#039;display&#039;,&#039;flex&#039;);\r\n})\r\n\r\n\r\n\r\n', '0', '1', '1', '0', 'registration', 'both', 50, '0.10', '0', '1', 'both', 50, '1', 100, 20, 10, 5, '0', '0.05', '0.01');

-- --------------------------------------------------------

--
-- Table structure for table `system_themes`
--

CREATE TABLE `system_themes` (
  `theme_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `default` enum('0','1') COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `system_themes`
--

INSERT INTO `system_themes` (`theme_id`, `name`, `default`) VALUES
(1, 'default', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group` tinyint(10) UNSIGNED NOT NULL DEFAULT '3',
  `user_name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `user_email` varchar(64) CHARACTER SET utf8 NOT NULL,
  `user_email_verified` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `user_email_verification_code` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `user_phone` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `user_phone_verified` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `user_phone_verification_code` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `user_password` varchar(64) CHARACTER SET utf8 NOT NULL,
  `user_two_factor_enabled` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `user_two_factor_type` enum('email','sms','google') COLLATE utf8mb4_bin DEFAULT NULL,
  `user_two_factor_key` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `user_two_factor_gsecret` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `user_activated` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `user_reseted` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `user_reset_key` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `user_subscribed` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `user_package` int(10) UNSIGNED DEFAULT NULL,
  `user_subscription_date` datetime DEFAULT NULL,
  `user_boosted_posts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_boosted_pages` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_started` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `user_verified` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `user_banned` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `user_live_requests_counter` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_live_requests_lastid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_live_messages_counter` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_live_messages_lastid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_live_notifications_counter` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_live_notifications_lastid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_latitude` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `user_longitude` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `user_location_updated` datetime DEFAULT NULL,
  `user_firstname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `user_lastname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_gender` enum('male','female','other') CHARACTER SET utf8 NOT NULL,
  `user_picture` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_picture_id` int(10) UNSIGNED DEFAULT NULL,
  `user_cover` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_cover_id` int(10) UNSIGNED DEFAULT NULL,
  `user_cover_position` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_album_pictures` int(10) UNSIGNED DEFAULT NULL,
  `user_album_covers` int(10) UNSIGNED DEFAULT NULL,
  `user_album_timeline` int(10) UNSIGNED DEFAULT NULL,
  `user_pinned_post` int(10) UNSIGNED DEFAULT NULL,
  `user_registered` datetime DEFAULT NULL,
  `user_last_seen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_country` int(10) UNSIGNED DEFAULT NULL,
  `user_birthdate` date DEFAULT NULL,
  `user_relationship` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_biography` text CHARACTER SET utf8,
  `user_website` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_work_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_work_place` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_work_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_current_city` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_hometown` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_edu_major` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_edu_school` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_edu_class` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_social_facebook` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_social_twitter` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_social_google` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_social_youtube` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_social_instagram` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_social_linkedin` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_social_vkontakte` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_chat_enabled` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `user_privacy_wall` enum('me','friends','public') CHARACTER SET utf8 NOT NULL DEFAULT 'friends',
  `user_privacy_birthdate` enum('me','friends','public') CHARACTER SET utf8 NOT NULL DEFAULT 'public',
  `user_privacy_relationship` enum('me','friends','public') CHARACTER SET utf8 NOT NULL DEFAULT 'public',
  `user_privacy_basic` enum('me','friends','public') CHARACTER SET utf8 NOT NULL DEFAULT 'public',
  `user_privacy_work` enum('me','friends','public') CHARACTER SET utf8 NOT NULL DEFAULT 'public',
  `user_privacy_location` enum('me','friends','public') CHARACTER SET utf8 NOT NULL DEFAULT 'public',
  `user_privacy_education` enum('me','friends','public') CHARACTER SET utf8 NOT NULL DEFAULT 'public',
  `user_privacy_other` enum('me','friends','public') CHARACTER SET utf8 NOT NULL DEFAULT 'public',
  `user_privacy_friends` enum('me','friends','public') CHARACTER SET utf8 NOT NULL DEFAULT 'public',
  `user_privacy_photos` enum('me','friends','public') CHARACTER SET utf8 NOT NULL DEFAULT 'public',
  `user_privacy_pages` enum('me','friends','public') CHARACTER SET utf8 NOT NULL DEFAULT 'public',
  `user_privacy_groups` enum('me','friends','public') CHARACTER SET utf8 NOT NULL DEFAULT 'public',
  `user_privacy_events` enum('me','friends','public') CHARACTER SET utf8 NOT NULL DEFAULT 'public',
  `user_privacy_newsletter` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `email_post_likes` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `email_post_comments` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `email_post_shares` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `email_wall_posts` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `email_mentions` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `email_profile_visits` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `email_friend_requests` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `facebook_connected` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `facebook_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `twitter_connected` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `twitter_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `instagram_connected` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `instagram_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `linkedin_connected` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `linkedin_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `vkontakte_connected` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `vkontakte_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_referrer_id` int(10) DEFAULT NULL,
  `user_affiliate_balance` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `user_wallet_balance` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `user_points` int(10) NOT NULL DEFAULT '0',
  `chat_sound` enum('0','1') COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `notifications_sound` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_group`, `user_name`, `user_email`, `user_email_verified`, `user_email_verification_code`, `user_phone`, `user_phone_verified`, `user_phone_verification_code`, `user_password`, `user_two_factor_enabled`, `user_two_factor_type`, `user_two_factor_key`, `user_two_factor_gsecret`, `user_activated`, `user_reseted`, `user_reset_key`, `user_subscribed`, `user_package`, `user_subscription_date`, `user_boosted_posts`, `user_boosted_pages`, `user_started`, `user_verified`, `user_banned`, `user_live_requests_counter`, `user_live_requests_lastid`, `user_live_messages_counter`, `user_live_messages_lastid`, `user_live_notifications_counter`, `user_live_notifications_lastid`, `user_latitude`, `user_longitude`, `user_location_updated`, `user_firstname`, `user_lastname`, `user_gender`, `user_picture`, `user_picture_id`, `user_cover`, `user_cover_id`, `user_cover_position`, `user_album_pictures`, `user_album_covers`, `user_album_timeline`, `user_pinned_post`, `user_registered`, `user_last_seen`, `user_country`, `user_birthdate`, `user_relationship`, `user_biography`, `user_website`, `user_work_title`, `user_work_place`, `user_work_url`, `user_current_city`, `user_hometown`, `user_edu_major`, `user_edu_school`, `user_edu_class`, `user_social_facebook`, `user_social_twitter`, `user_social_google`, `user_social_youtube`, `user_social_instagram`, `user_social_linkedin`, `user_social_vkontakte`, `user_chat_enabled`, `user_privacy_wall`, `user_privacy_birthdate`, `user_privacy_relationship`, `user_privacy_basic`, `user_privacy_work`, `user_privacy_location`, `user_privacy_education`, `user_privacy_other`, `user_privacy_friends`, `user_privacy_photos`, `user_privacy_pages`, `user_privacy_groups`, `user_privacy_events`, `user_privacy_newsletter`, `email_post_likes`, `email_post_comments`, `email_post_shares`, `email_wall_posts`, `email_mentions`, `email_profile_visits`, `email_friend_requests`, `facebook_connected`, `facebook_id`, `twitter_connected`, `twitter_id`, `instagram_connected`, `instagram_id`, `linkedin_connected`, `linkedin_id`, `vkontakte_connected`, `vkontakte_id`, `user_referrer_id`, `user_affiliate_balance`, `user_wallet_balance`, `user_points`, `chat_sound`, `notifications_sound`) VALUES
(1, 1, 'QRSAdmin', 'it@qrsinc.com', '1', NULL, NULL, '0', NULL, '$2y$10$gWcUmjVGT.4AKb/wNsbGwekC6.4Qtkx2YO03uO3.vKqGkCxOajOfi', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '1', '1', '0', 0, 0, 0, 0, 0, 0, '-79.7071983', '41.3765268', '2020-03-10 14:47:01', 'QRSAdmin', NULL, 'male', 'photos/2019/04/sngine_fc98495b5c6902ecdf28bb1ec10f6c14_cropped.png', 1, 'photos/2019/04/sngine_edf72ff56d31d47b6f904da0669be1be_cropped.jpg', 2, '0px', 1, 2, NULL, NULL, '2019-04-10 18:19:12', '2020-03-11 18:04:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '0'),
(2, 1, 'MetalGuitar_1981', 'aarony@qrsinc.com', '1', '78001b7e39f87da4729cfc6ae5be5dd2', NULL, '0', NULL, '$2y$10$f/vajF6IrC5iOjrLI7.HxeXgIJ/PoucaftyBRh8WBoj5XfCneVTAy', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '1', '1', '0', 0, 0, 0, 11, 1, 0, '-79.70632069999999', '41.368687699999995', '2020-03-12 12:49:23', 'Aaron', 'Yost', 'male', 'photos/2019/05/qrs-connect_b44a41e2f9771d7eb2b5ff84d14fe8e0_cropped.jpg', 10, 'photos/2019/04/sngine_f62da8e7a4fee195f41629387a2a452c_cropped.jpg', 4, '-52px', 5, 4, NULL, NULL, '2019-04-10 18:23:32', '2020-03-12 12:50:14', 230, '1905-03-17', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'friends', 'friends', 'friends', 'friends', 'friends', 'friends', 'friends', 'friends', 'friends', 'friends', 'friends', 'friends', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(3, 1, 'QRSParker', 'parkerw@qrsinc.com', '1', '580f71f96795c3cb2ca2279a207e4baf', NULL, '0', NULL, '$2y$10$R2Z9XXV9RGLZV7o5klQeP.auhpBIZu8wfJ2Q306HCQjcP0fvNIM/O', '0', NULL, NULL, NULL, '1', '1', 'Otm8U3', '0', NULL, NULL, 0, 0, '1', '1', '0', 4, 0, 1, 1, 15, 0, '0', '0', NULL, 'Parker', 'Welch', 'male', 'photos/2019/04/sngine_f249e030e3664980418e9342a980e673_cropped.jpg', 3, NULL, NULL, NULL, 3, NULL, NULL, NULL, '2019-04-10 18:35:44', '2019-04-10 18:37:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(4, 3, 'qrstad', 'tomd@qrsinc.com', '1', 'cf43c433bfc2c34a62275e544647891c', NULL, '0', NULL, '$2y$10$HmDAGmaKuFYb6ldjruXcfeNnOa76f1flWLlgWv4BYUvwT.o0Rqava', '0', NULL, NULL, NULL, '1', '0', 'EUNM8w', '0', NULL, NULL, 0, 0, '1', '0', '0', 0, 0, 0, 9, 8, 0, '-115.10599370000001', '36.0733038', '2020-03-06 21:52:09', 'Thomas', 'Dolan', 'male', 'photos/2019/04/qrsconnect_a2bd5a48fe7127e430523d585898a6e3.jpg', 6, 'user_uploads/4/photos/2019/06/qrs-connect_ca6526b485b907dc7e9bb1782dac8766.jpg', 12, NULL, 6, 9, NULL, NULL, '2019-04-25 18:53:57', '2020-03-06 22:09:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(30, 3, 'dtp432msn', 'dewaynep@qrsinc.com', '1', '1e8118d9bd57b6f8cf655613da77f722', NULL, '0', NULL, '$2y$10$r8gVk./vBjd3T3A6khgjN.F5FV0AtUISZx4Jb56ZfOt96xsolTYba', '0', NULL, NULL, '4EMQO2CCFU6W3LOL', '1', '0', NULL, '0', NULL, NULL, 0, 0, '1', '0', '0', 0, 0, 0, 32, 0, 0, '-78.98316799999999', '43.0383104', '2020-02-05 17:55:24', 'Dewayne', 'Parkinson', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-29 14:43:33', '2020-02-05 20:30:32', NULL, '1970-07-19', NULL, NULL, NULL, 'Chief Cook and Bottle Washer', 'QRS Music Technologies', 'http://www.qrsmusic.com', 'Jamestown', 'Jamestown', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'me', 'me', 'me', 'me', 'me', 'me', 'me', 'me', 'me', 'me', 'me', 'me', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(9, 3, 'connectdemo', 'connectdemo@qrs-connect.com', '0', NULL, NULL, '0', NULL, '$2y$10$QCePEbsXjCOpICjd2eaqfunWIBh/JRi.zrZ0Jy2WELDej.fN1V80K', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '1', '1', '0', 1, 0, 0, 0, 9, 0, '-77.1366912', '39.193804799999995', '2019-10-04 19:52:27', 'Connect', 'Demo', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-05 17:44:51', '2019-10-04 21:08:39', 230, NULL, NULL, '', NULL, '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '1', 'friends', 'friends', 'friends', 'friends', 'friends', 'friends', 'friends', 'friends', 'friends', 'friends', 'friends', 'friends', 'friends', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(8, 3, 'Yo81', 'yostie81@gmail.com', '1', '259a274e6a8b3b8a2ad00c9ee5ca2d26', NULL, '0', NULL, '$2y$10$VjOqBnEtozUYoKaZTrMZTuAKV4ZaPYh57e7t7KzDBMGkZgfFk/cK.', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '1', '0', '0', 0, 0, 0, 11, 0, 0, '-79.7065216', '41.368780799999996', '2019-12-05 15:34:46', 'Yo81', 'Yo81', 'male', 'photos/2019/10/qrs-connect_8ad7734f6402e180fedb7bbd002aedfd_cropped.png', 15, NULL, NULL, NULL, 11, NULL, NULL, NULL, '2019-05-03 15:11:31', '2019-12-31 19:54:35', 230, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(10, 1, 'VeryBill', 'bill@verypossible.com', '1', 'b373f8c4acb5245d14299e76acf2b974', NULL, '0', NULL, '$2y$10$h3KKqDhrY8m7j2.0t37rD.q0GdDoTUIXcG0UnPn1Uz2CLmnz75LIm', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '1', '1', '0', 3, 0, 0, 0, 7, 0, '-74.0059', '40.7127', '2019-10-31 18:41:07', 'Bill', 'Brock', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-18 14:59:38', '2019-10-31 19:16:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(11, 1, 'VeryOmar', 'omar@verypossible.com', '1', '102ba26f87f0e5b24443374c72750a33', NULL, '0', NULL, '$2y$10$lxohNxdoj2aJP7DZWPFOSe4izh8BMtKqtJc3Unxrn7qbSjTJfotcG', '0', NULL, NULL, 'S6L3UVSXPKDM7VAH', '1', '0', NULL, '0', NULL, NULL, 0, 0, '1', '1', '0', 0, 0, 0, 0, 2, 0, '-75.1895462', '40.0931187', '2019-12-10 17:43:47', 'Omar', 'Antila', 'male', 'photos/2019/11/qrs-connect_47dfb28ae86609866f477a1889e81156_cropped.jpg', 16, NULL, NULL, NULL, 12, NULL, NULL, NULL, '2019-11-06 15:17:57', '2019-12-10 17:43:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(12, 1, 'VeryBen', 'ben.wheat@verypossible.com', '1', '818c96a2d5f153ee923fb3aaff5482d3', NULL, '0', NULL, '$2y$10$N76M2Iq8THgi6vvIzv0iBuL8lm4I78NELF8k9bhTMU3wyCeunbuqy', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '1', '1', '0', 2, 0, 0, 0, 4, 0, '-79.70632069999999', '41.368687699999995', '2019-11-15 20:20:23', 'Ben', 'Wheat', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-11 17:55:20', '2020-01-09 18:59:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(13, 1, 'VeryAndrew', 'andrew@verypossible.com', '0', 'c3aea62ddfd608293bf670e9d8ea39d5', NULL, '0', NULL, '$2y$10$tDDqqYVHWoeiXB0T4o1.zuQuI.7G9J9SW2kB8WgcD5W5yCp15ldzi', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '1', '1', '0', 0, 0, 0, 0, 0, 0, '-85.303296', '35.0691328', '2020-01-06 19:39:07', 'Andrew', 'Frank', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-14 17:15:39', '2020-01-06 19:40:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(15, 3, 'QRSConnector', 'aaron_yost@hotmail.com', '1', 'e54e13b0b14f8d63eed1b52ac674484c', NULL, '0', NULL, '$2y$10$yQXuJW.A41YTwEBA9Bi7A.GqOkFuuKLPEyl0gOFgKzvO2/MLAYXmu', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '1', '0', '0', 0, 0, 0, 0, 4, 0, '-79.70632069999999', '41.368687699999995', '2019-12-23 13:24:53', 'QRS', 'Connector', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-05 15:26:50', '2019-12-27 13:29:26', NULL, '1905-03-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(14, 1, 'VeryTodd', 'todd@verypossible.com', '1', 'e884fd828e0c2e4fcc54b0c4ee4f6dd0', NULL, '0', NULL, '$2y$10$MEYdEvBReQw9gccXHT5YheGi7e2C2ekBuE4MScNXZ.BdyCvQ804Xa', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '1', '1', '0', 0, 0, 0, 0, 0, 0, '0', '0', NULL, 'Todd', 'Hartzelle', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-25 15:58:51', '2020-01-03 20:10:36', NULL, '1985-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(16, 3, 'SamsungPass', 'markulan47@gmail.com', '0', '5b482d70969ffaeb8b9ecdcf7c128ac8', NULL, '0', NULL, '$2y$10$/C5WXiz74nicZ4vzZuWUCeNa6EBQVSf.X3rbSViKQHYYXnHiMyixe', '0', NULL, NULL, NULL, '0', '0', NULL, '0', NULL, NULL, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, '0', '0', NULL, 'Mark', 'Ulankiewicz', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-07 20:52:43', '2019-12-07 20:54:11', NULL, '1947-10-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(17, 3, 'gffreezedrymachine', 'entezromd@gmail.com', '1', '9ce332ed9e15ebf9ddab28d671e7fb85', NULL, '0', NULL, '$2y$10$5QkV96M0/W4ZorI6ay6uCewfoP0UU3Ezshfv5fPOsvM32vmHdPfQa', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '1', '0', '0', 0, 0, 0, 0, 0, 0, '-87.6847', '41.8369', '2019-12-13 08:21:03', 'Guanfeng', 'Gfmachine', 'female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-13 08:13:08', '2019-12-20 07:18:53', NULL, '1991-06-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(18, 3, 'nammdemo1', 'nammdemo1@qrsinc.com', '0', 'a6fcfc2da4ca6d5a95d99cb34e25ccb9', NULL, '0', NULL, '$2y$10$.lfesGbNVlXNF64mgraFOORPeWdYzqrclY3RcSKGc1QEnbPgJNbda', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '0', '1', '0', 0, 0, 0, 0, 0, 0, '0', '0', NULL, 'Namm', 'Demo1', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-13 17:45:47', '2020-03-03 14:35:58', NULL, '1923-01-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(19, 3, 'nammdemo2', 'nammdemo2@qrsinc.com', '0', '6068f3015cac7ae003c621982defcfa4', NULL, '0', NULL, '$2y$10$mxtY47F3zNxkU31i6lhs.umrM/5XNRCPTmO9eshllK5CY/akWftou', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '0', '1', '0', 0, 0, 0, 0, 2, 0, '0', '0', NULL, 'Namm', 'Demo2', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-13 17:46:39', '2020-01-29 20:14:10', NULL, '1923-01-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(20, 3, 'nammdemo3', 'nammdemo3@qrsmusic.com', '0', 'ac3c8962d572ab745ac9f80c7afc72a4', NULL, '0', NULL, '$2y$10$x.9wicwiUsNBD.t9pdFmcOkvroDkEiHLRNJVTdLFyxOu5LLCzAEL6', '0', NULL, NULL, 'Y3NFYE5CXYYO6JDE', '0', '0', NULL, '0', NULL, NULL, 0, 0, '1', '1', '0', 0, 0, 0, 17, 0, 0, '0', '0', NULL, 'Namm', 'Demo3', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-13 17:47:17', '2020-02-03 21:03:50', NULL, '1923-03-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(32, 3, 'mikej', 'mikej@qrsinc.com', '0', '925588a547c3d1f3b1d95ba054ceea6f', NULL, '0', NULL, '$2y$10$4SbZ6/QtMvzUftEqpHee6OCVHt323J7cNg39cuLKydIRDzXzTyI/e', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '1', '1', '0', 0, 0, 0, 32, 0, 0, '0', '0', NULL, 'Michael', 'Jones', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-03 21:04:33', '2020-02-26 20:28:47', NULL, '1973-12-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(21, 3, 'namm1', 'namm1@qrsinc.com', '0', '09ecd94b42fcbfe6c2b7ee604af771c1', NULL, '0', NULL, '$2y$10$g90oKPdHMmIpP6qjJKD5Be5x2hPZWzQjwQRAQmRr0vT4D9arooL0i', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '0', '1', '0', 0, 0, 0, 0, 0, 0, '0', '0', NULL, 'Namm', 'Ana1', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-23 13:26:20', '2020-01-04 17:46:37', NULL, '1925-10-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(22, 3, 'Namm2', 'namm2@qrsinc.com', '0', 'f7f3e46f12dc32e913d0dfaf31586b6e', NULL, '0', NULL, '$2y$10$3b8Df1IMvjYQfzANNjhcZ.mVIGH6MHi0FTkFifV7/ugWHpFGmI.ce', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '0', '1', '0', 0, 0, 0, 0, 0, 0, '0', '0', NULL, 'Namm', 'Ana2', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-23 13:26:56', '2020-01-14 23:53:40', NULL, '1922-11-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(23, 3, 'Namm3', 'namm3@qrsinc.com', '0', '598ec7556c540c38f486a6e36823053d', NULL, '0', NULL, '$2y$10$tbOBC5e038L/eZtzKIfUJueAJUvqodM9Dn/yg.0RseUVQKqF9awFi', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '0', '1', '0', 0, 0, 0, 0, 0, 0, '0', '0', NULL, 'Namm', 'Ana3', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-23 13:27:31', '2020-01-03 13:59:15', NULL, '1923-10-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(24, 3, 'namm4', 'namm4@qrsinc.com', '0', 'e9855a4e0f2f729af388e11e5c9983af', NULL, '0', NULL, '$2y$10$.AoVkg3FTp4KaleYW7VU4ehSjJ2h9hJMv5.GENMhMf.S4N3gogH3a', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '1', '1', '0', 0, 0, 0, 0, 0, 0, '-117.92001119999998', '33.7998014', '2020-01-15 21:07:55', 'Namm', 'Ana4', 'female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-23 13:28:06', '2020-01-18 18:00:45', NULL, '1919-08-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(25, 3, 'namm5', 'namm5@qrsinc.com', '0', 'a3077ad1d3a6bbe55031c059b6fab0b3', NULL, '0', NULL, '$2y$10$aN6AsTCgtOubXwrI2OsN8.cD3vwzngdBz7/AHDzp9C8MbrrMXfX3e', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '0', '1', '0', 0, 0, 0, 0, 0, 0, '0', '0', NULL, 'Namm', 'Ana5', 'female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-23 13:28:36', '2019-12-23 13:28:41', NULL, '1908-10-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(26, 3, 'nammdemolv', 'nammdemolv@qrsinc.com', '0', 'b7be96cb3394ac1a3fada786d5480676', NULL, '0', NULL, '$2y$10$noD5k/FOCcq7.YMhWodveuJAqcJ4FBaM4lQhOI4U.jjV/6Wx/jyCy', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '0', '1', '0', 0, 0, 0, 0, 0, 0, '0', '0', NULL, 'Namm', 'Demo LV', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-11 21:58:48', '2020-01-11 21:59:09', NULL, '1906-03-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(27, 3, 'nammdemolv2', 'nammdemolv2@qrsinc.com', '0', '4b71e3788456ef9cfa05348d5ffcc76c', NULL, '0', NULL, '$2y$10$CHA2B2hki3j7SfTbNb8AL.PGM77icZT8Ihqzsr3Ydkhf105grBLbS', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '0', '1', '0', 0, 0, 0, 0, 0, 0, '0', '0', NULL, 'Namm', 'Demo LV2', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-11 22:00:35', '2020-01-11 22:00:41', NULL, '1922-03-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(28, 3, 'nammdemofl', 'nammdemofl@qrsinc.com', '0', '68d563e5c903ae9c1c846bb6577b7890', NULL, '0', NULL, '$2y$10$BvMF9eSgAZgzH3VcdSonsu5fjhGcSp04mCE9T0neQrD2VjMvR3GXe', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '1', '1', '0', 1, 0, 0, 0, 2, 0, '0', '0', NULL, 'Namm', 'Demo FL', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-15 20:32:04', '2020-01-29 22:03:14', NULL, '1917-03-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(29, 3, 'millsj1134', 'josh@pianomarvel.com', '1', '73a22db6170097e421247f39a6ccb126', NULL, '0', NULL, '$2y$10$vyd4PZlmnV1SsdzHvfKAT.tFV5f.m07B7qe./SbK2K5m1yz2RQQ22', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '1', '0', '0', 0, 0, 0, 0, 0, 0, '-87.6847', '41.8369', '2020-01-17 02:12:38', 'Josh', 'Mills', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-17 02:10:32', '2020-01-29 22:04:08', NULL, '1990-12-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(31, 3, 'benfonville', 'benfonville@amromusic.com', '1', '6144257f898bd9a47644347f3a52337d', NULL, '0', NULL, '$2y$10$y8T/FadZ7zf3w0Q1n.9kweXuxnPX5pnOb76v0n5mfNYI8Z2OgebI.', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '1', '0', '0', 0, 0, 0, 0, 0, 0, '0', '0', NULL, 'Ben', 'Fonville', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-30 21:54:02', '2020-02-15 14:48:01', NULL, '1983-02-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(33, 3, 'kjipsen', 'kerwin@daynesmusic.com', '0', 'c1d389b05f05f264a6aee5c4572223f8', NULL, '0', NULL, '$2y$10$4L32t.xcoRPxc1e9DT.zQ.LPQCxRCwmf2rRQiyVw3tNbqn/hs2pmq', '0', NULL, NULL, NULL, '0', '0', NULL, '0', NULL, NULL, 0, 0, '1', '1', '0', 0, 0, 0, 0, 0, 0, '0', '0', NULL, 'Kerwin', 'Ipsen', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-04 18:15:01', '2020-02-04 19:28:34', NULL, '1959-04-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(34, 3, 'Toddb', 'toddb@qrsinc.com', '0', 'cb1b79d0402d17ee1a5642726e900591', NULL, '0', NULL, '$2y$10$JGOhN8X8To3AOTL5oCWvwehzRHFfDCvNsNEzh5sE5qmkI3N7ZUjKe', '0', NULL, NULL, NULL, '0', '0', NULL, '0', NULL, NULL, 0, 0, '1', '0', '0', 0, 0, 0, 0, 0, 0, '0', '0', NULL, 'Todd', 'Brown', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-06 15:40:54', '2020-02-08 01:22:53', NULL, '1967-11-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(35, 3, 'JCA', 'fineartpaintings@outlook.com', '0', '76b89b8064dbd6910b56bfe19da4f146', NULL, '0', NULL, '$2y$10$83WudGSR1rD/K4n3epAV2ODuYn2xpi/kbaJMkaw3ZhZBYjyL4yunm', '0', NULL, NULL, NULL, '0', '0', NULL, '0', NULL, NULL, 0, 0, '1', '0', '0', 0, 0, 0, 0, 0, 0, '0', '0', NULL, 'Joseph', 'Anderson', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-07 05:14:34', '2020-03-07 05:28:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(36, 3, 'ajay', 'ajayk2@chetu.com', '1', '09180dcbee5f9fd8bb60bc766b7f4720', NULL, '0', NULL, '$2y$10$Fpb1WL3MYWApRwUM99A1k.PwXas9x9eUTqwILvpZ18sN05iC2JtKG', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '1', '1', '0', 0, 0, 0, 0, 0, 0, '77.389849', '28.6282231', '2020-03-21 13:47:12', 'Ajay', 'Kumar', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-07 11:50:06', '2020-03-21 15:38:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(37, 1, 'rajeshk3chetucom', 'rajeshk3@chetu.com', '1', '09180dcbee5f9fd8bb60bc766b7f4720', NULL, '0', NULL, '$2y$10$Axch2.VScPadNwsmyOqF0euTu4dmRSy3.hHssyzPdTiBO3VHltRGm', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '1', '1', '0', 0, 0, 0, 37, 0, 0, '77.389849', '28.6282231', '2020-03-28 08:17:04', 'Rajesh', 'Kumar', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-12 13:02:28', '2020-03-28 08:28:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1'),
(38, 1, 'rajeshk3chetucom1', 'rajeshk31@chetu.com1', '1', '9c1c14196808b3169a155d55bbd2e966', NULL, '0', NULL, '$2y$10$h0FGMp7BObSFG7sl.6qXO.QznxBLz/V8JmJs23zI6Jqib0BQg.wpO', '0', NULL, NULL, NULL, '1', '0', NULL, '0', NULL, NULL, 0, 0, '1', '1', '0', 0, 0, 0, 37, 0, 0, '77.389849', '28.6282231', '2020-03-19 17:47:01', 'Rajesh1', 'Kumar', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-19 11:44:36', '2020-03-19 18:17:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'friends', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', 'public', '1', '1', '1', '1', '1', '1', '1', '1', '0', NULL, '0', NULL, '0', NULL, '0', NULL, '0', NULL, NULL, '0', '0', 0, '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users_blocks`
--

CREATE TABLE `users_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `blocked_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Table structure for table `users_searches`
--

CREATE TABLE `users_searches` (
  `log_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL,
  `node_type` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users_searches`
--

INSERT INTO `users_searches` (`log_id`, `user_id`, `node_id`, `node_type`, `time`) VALUES
(1, 32, 30, 'user', '2020-02-03 21:35:46');

-- --------------------------------------------------------

--
-- Table structure for table `users_sessions`
--

CREATE TABLE `users_sessions` (
  `session_id` int(10) UNSIGNED NOT NULL,
  `session_token` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `session_date` datetime NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_browser` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `user_os` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `user_ip` varchar(64) COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users_sessions`
--

INSERT INTO `users_sessions` (`session_id`, `session_token`, `session_date`, `user_id`, `user_browser`, `user_os`, `user_ip`) VALUES
(8, '4ea4400bbab58f9da472bac0bbb3f199', '2019-04-16 17:58:52', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(7, 'ef40411a01a03efefaff7d0a80f1529a', '2019-04-16 17:58:13', 2, 'Chrome', 'Windows 7', '50.254.194.105'),
(4, 'eaac3ee7af1d1ff3120351b078143d5e', '2019-04-10 18:35:45', 3, 'Internet Explorer', 'Windows 7', '50.254.194.109'),
(6, '375dd91c30e7920f9d7791215256e330', '2019-04-10 18:39:21', 1, 'Chrome', 'Windows 10', '23.161.192.101'),
(9, '8f56ae13c0def26f09c641f26d46dbac', '2019-04-16 18:50:34', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(10, 'e39be50188730c90a3319820dbd6b4f4', '2019-04-16 20:07:17', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(11, 'ca68c0fba5c988dcb3ae60ded859db3a', '2019-04-16 20:09:57', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(12, 'd166307e0ff75532670a0a6e13610edf', '2019-04-17 12:22:33', 2, 'Chrome', 'Mac OS X', '50.254.194.105'),
(13, '2b912fc11eb947b15c6e89beddf2e9b1', '2019-04-18 18:25:50', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(14, '55cf9a021ded53ebfb6b8fec1a78c1c6', '2019-04-23 20:08:09', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(15, '1f543916096c3a3987121a70a4d73c61', '2019-04-23 20:12:45', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(16, '065d5232fd6827ffd9a4ab6eedacb878', '2019-04-23 20:13:21', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(17, '57fc21e8eb7aed4b37c1f35fcbd80e7f', '2019-04-23 20:15:37', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(18, 'd423a3f4f5c523f91eb143c8f62c92ed', '2019-04-23 20:16:03', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(19, '3153ee7e5e75633f5e44353071a68f38', '2019-04-23 20:17:16', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(20, 'd4375d235a5c994ac50ccf96c915d050', '2019-04-23 20:17:41', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(21, 'eebbc1382d57282ae3e3d29377938cc3', '2019-04-23 20:18:56', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(22, 'c7ea28e6b935d28d61a022591c588f3c', '2019-04-24 12:49:49', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(23, '2e4443669e0b41e7b511ec8e064020b7', '2019-04-24 13:36:20', 1, 'Chrome', 'Windows 10', '50.254.194.105'),
(112, '85065d1575deceae7bcc080b6cebf241', '2019-05-03 14:34:24', 6, 'Chrome', 'Windows 7', '50.254.194.105'),
(25, '6a795988dd67261117c8f8869bd5fa83', '2019-04-24 14:01:28', 1, 'Chrome', 'Windows 10', '50.254.194.105'),
(26, '9539dce4fccdd60c7f84ec473fa52919', '2019-04-24 14:05:17', 1, 'Chrome', 'Windows 10', '50.254.194.105'),
(27, '0f64ce3ada2a2cfc4d12f3f17e419e73', '2019-04-24 14:05:32', 1, 'Chrome', 'Windows 10', '50.254.194.105'),
(28, 'b6ce6005daedc4ce9e00828bba33b547', '2019-04-24 14:05:56', 1, 'Chrome', 'Windows 10', '50.254.194.105'),
(29, '482eb52f308385f6ee357db468e5879c', '2019-04-24 14:06:25', 1, 'Chrome', 'Windows 10', '50.254.194.105'),
(30, '97863cde595c5f57c9b4685a06c325cb', '2019-04-24 14:06:58', 1, 'Chrome', 'Windows 10', '23.161.192.101'),
(32, '2c8d77f2340aab53acda3a6041a2d6cd', '2019-04-24 14:08:05', 1, 'Chrome', 'Windows 10', '50.254.194.105'),
(33, 'c6a43392e7091fd4567b0d4fc1c7b6ef', '2019-04-24 14:08:13', 1, 'Chrome', 'Windows 10', '50.254.194.105'),
(34, '9b4ec0b6bc85e0c789b818bf161c1cad', '2019-04-24 14:08:47', 1, 'Chrome', 'Windows 10', '50.254.194.105'),
(35, 'd7b78ac65c5d47565b45169777e39b4d', '2019-04-24 14:09:10', 1, 'Firefox', 'Windows 10', '50.254.194.105'),
(114, 'fe04a0493cebe340f79480439f6c9ef3', '2019-05-03 14:48:51', 7, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(37, 'a7678e6bb9a14cdcf41e877f1756d5fa', '2019-04-24 14:28:55', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(38, 'f112b26e52fcb9cd7f020db570fd0737', '2019-04-24 14:34:01', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(39, '8fb5230233dfee1f8dab262df1047475', '2019-04-24 14:34:28', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(40, '1720e6b7fdf52545bb713dc23343a029', '2019-04-24 14:34:32', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(41, 'c644754c120598b629f72840d3096e52', '2019-04-24 14:34:35', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(42, 'b37c450529887944643f60858fd97384', '2019-04-24 14:34:40', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(43, 'be1aa62310bc84d00f1455086354bcb4', '2019-04-24 14:34:44', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(44, '9da34a1a2708feb3581b8beb891064d5', '2019-04-24 14:34:50', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(45, 'af5fae23a8f07d4ad63a1a5fb9566534', '2019-04-24 14:42:03', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(46, 'd4b7a2ded717521c88782d2923755089', '2019-04-24 14:42:14', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(47, 'd554082e55b4189192d7a8f8af9661b0', '2019-04-24 14:45:33', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(48, 'bc7a684d2a9a47c0e3f3b43328b4ea13', '2019-04-24 14:45:51', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(49, '6fa6e797b8877c33c70171de25ef8b45', '2019-04-24 14:46:10', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(50, '4ad5e909708a64339e9ca2a3a6f6fab3', '2019-04-24 14:49:14', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(51, 'fbc3d4bb6286620662c07cbda1319d20', '2019-04-24 14:49:16', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(52, '272daa1a7f53eb6b449600af8f3190e1', '2019-04-24 14:49:18', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(53, '40f6cd7d238ef6b6ab09e050498da8dd', '2019-04-24 14:49:20', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(54, '6d40cfcbae938340c87d18e1b9fc619a', '2019-04-24 14:51:13', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(55, 'e2d4ed1ddab8984851169433244f0404', '2019-04-24 14:53:37', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(56, '6f00fb9342f939fe6b5ae237352d5507', '2019-04-24 14:53:39', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(57, 'b827b278d538fc1e6c3ca728d098ab93', '2019-04-24 14:54:03', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(58, 'e9bc039b4f92790b1a6f1a9fa0d86545', '2019-04-24 14:54:09', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(59, '7d6a5b71c06954e5322dd20e5e7cb371', '2019-04-24 14:54:35', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(60, 'efa9cf9f20acf606944c349b4cca6bb0', '2019-04-24 14:56:52', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(61, 'd821155fccda64de1e487c136b4ca8ff', '2019-04-24 14:56:54', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(62, '1b453bfe144afd6a22447c2222f0d3d0', '2019-04-24 14:57:45', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(63, '41fd5ecca7ce98590a3f0fc74c0397d5', '2019-04-24 15:00:41', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(64, '6d706b31982e7566663594e713c40655', '2019-04-24 15:00:43', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(65, 'c34d48ad999f13f343592b062eaba24d', '2019-04-24 15:01:01', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(66, '21fc700471e3540a90964a050c298bd4', '2019-04-24 15:01:04', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(67, '39f73162f40e4bb2e1f43afdb6456b91', '2019-04-24 15:01:35', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(68, '1f8b1f77b2b1900525d428a0a7bc4aad', '2019-04-24 15:01:37', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(103, 'fa52a4ce25319bae74f00a380fe5516e', '2019-04-30 20:27:01', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(95, '50221ec87aaf0cd0f56fdb3cf3eb0951', '2019-04-25 18:53:57', 4, 'Edge', 'Windows 10', '107.3.202.62'),
(96, '0149033ef8b7fe4ce0bc88012a439b07', '2019-04-25 18:56:31', 1, 'Chrome', 'Windows 10', '50.254.194.105'),
(97, '75615e69941ab8215321bd17bfa4afb1', '2019-04-26 21:55:38', 5, 'Chrome', 'Windows XP', '24.231.157.246'),
(98, '92c599c293314217796b9a5e5c5d97ec', '2019-04-26 21:58:07', 5, 'Handheld Browser', 'iPhone', '24.231.157.246'),
(99, 'a548edb03c9d0716770506897f3aa76f', '2019-04-26 21:58:17', 5, 'Edge', 'Windows 10', '66.102.8.218'),
(100, '9f17153e0ef85da743f4959c07daaec7', '2019-04-27 16:35:34', 5, 'Chrome', 'Windows XP', '24.231.157.246'),
(101, '592b1f80ecd7aeaec905098237ac1b8d', '2019-04-30 13:47:58', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(102, '8c513c27503d88f448db0b1a8607530f', '2019-04-30 13:55:26', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(107, 'a6d3d47837fc389a4ac40b559f2f6ad5', '2019-05-01 14:37:31', 4, 'Edge', 'Windows 10', '107.3.202.62'),
(110, '81719c8609bd6e939dec1335c0516135', '2019-05-01 20:18:38', 2, 'Handheld Browser', 'iPhone', '73.236.178.22'),
(115, 'e0f890d1c5335027e884e52fc240d6d3', '2019-05-03 14:49:20', 7, 'Chrome', 'Windows 7', '50.254.194.105'),
(182, 'd8605fca62878216b49681076f85f7f3', '2019-06-03 17:00:00', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(117, '44540189a1d5c5ab3ef726bd1519504b', '2019-05-03 15:11:31', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(123, '7c1e056f0b91c65ab68c541f4e99b13d', '2019-05-03 16:40:52', 8, 'Chrome', 'Windows 10', '66.102.8.214'),
(125, '93c8be3da80acecd037b77be5d73bda9', '2019-05-08 14:09:44', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(126, '47348501935ccc80530cfc0f85bf6dcd', '2019-05-08 20:47:23', 1, 'Chrome', 'Windows 10', '23.161.192.101'),
(129, 'af15ffde0cc1bab7b176a3aa9619e5cc', '2019-05-14 20:03:43', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(157, '393c4955992e935750f93a9a2ffef94e', '2019-05-22 20:15:53', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(151, '0a3fcfc2fe793574fd54021b29777293', '2019-05-22 20:07:46', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(152, '0e0a4b5c4afd50ad092cb76fa4c0f483', '2019-05-22 20:12:06', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(153, 'f39cf498221e7ad19925b624ad2be2e7', '2019-05-22 20:13:54', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(154, '789fe6b2a53fffcda7be037f46cd2d2e', '2019-05-22 20:14:49', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(155, '8edd4723d601d38f3c131fa7f28ce3a0', '2019-05-22 20:15:02', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(158, '3de0220e4288be3a9462a3513a0beb0b', '2019-05-22 20:16:52', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(177, '3f772c6e4c50897d4ffa17a7b1a9febb', '2019-05-23 13:09:19', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(178, '65f6e7e6a01dee98aba4b4344f8afadc', '2019-05-23 18:19:32', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(179, 'd53e6efdbdacd23bbeef82cdf323b166', '2019-05-25 18:22:16', 2, 'Handheld Browser', 'iPhone', '174.242.37.120'),
(180, '73add0ab9b63eebf46ecd2c68c3dc8c8', '2019-05-29 14:17:58', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(181, '9a3ba5c35f734444797aa28e80364c82', '2019-05-30 17:35:50', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(471, '9d2fdc260e1d071e002e101708056580', '2019-11-18 18:38:17', 11, 'Chrome', 'Mac OS X', '190.70.53.29'),
(184, 'd4e211be3858ccfcbbda1a6dbdda4372', '2019-06-04 15:30:29', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(185, 'c4ee09fe2b30a7bd9644304441527d96', '2019-06-04 17:47:02', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(186, 'bb381e7969478c08ce4ffe994a4e6171', '2019-06-05 15:23:39', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(187, '2736eb318bff2fbf0ef2c15c6c6fe5a3', '2019-06-05 15:27:02', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(188, '35cd6d9ecb7ba0330a6a16106a77c83d', '2019-06-05 16:05:22', 4, 'Edge', 'Windows 10', '50.254.194.105'),
(189, '07d8c60abe103861b6faed6898abd490', '2019-06-06 15:48:41', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(194, '3ed7f4fa769ed13deeb3b80f91cc72dc', '2019-06-12 15:52:07', 1, 'Chrome', 'Windows 10', '38.132.122.177'),
(193, '48ea874ae6ff8859153f43143c01d58d', '2019-06-12 15:38:32', 4, 'Edge', 'Windows 10', '107.3.202.62'),
(195, '2cd966e299d283048b5ced1793fd93a4', '2019-06-12 23:51:22', 4, 'Handheld Browser', 'Android', '107.3.202.62'),
(198, '6a5df2d7b0b3a9fde1d3544f513fdaec', '2019-06-13 21:37:08', 4, 'Edge', 'Windows 10', '107.3.202.62'),
(199, '758c7f9f2b8d19eb6a5903d7e96e37d0', '2019-06-13 21:37:15', 4, 'Firefox', 'Mac OS X', '69.27.7.150'),
(200, '35b6824aca83fd4b0a10c94a7da96d64', '2019-06-17 17:48:36', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(201, 'ab4fd08c6c82ac2f206dd15e565a0b91', '2019-06-18 19:30:24', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(354, '2a7bfa2cfe31a741f21f351c9a934a9f', '2019-10-11 16:57:51', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(203, '33e5ade2ff6d014f308058fcc6d0af29', '2019-06-18 20:51:17', 4, 'Edge', 'Windows 10', '107.3.202.62'),
(204, 'bb41c506b2bfc910f38db44498990a13', '2019-06-23 02:55:21', 4, 'Handheld Browser', 'Android', '24.11.253.194'),
(209, '8f7c4f5259e5454716d664786a92257e', '2019-06-25 18:17:56', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(210, '42dbe34c144872f31f36609554f3540b', '2019-06-27 20:39:55', 4, 'Handheld Browser', 'Android', '107.3.202.62'),
(211, '69996ccc17686e6ed66d491186673866', '2019-06-28 15:44:30', 4, 'Safari', 'Mac OS X', '69.136.158.241'),
(212, 'bccc5e9a16e8b2ee340dbfe8aef6a3fc', '2019-06-28 15:44:42', 4, 'Edge', 'Windows 10', '107.3.202.62'),
(213, '2b53a522f725b00ef8b3eeed75649f01', '2019-07-03 20:26:01', 4, 'Edge', 'Windows 10', '73.23.139.180'),
(214, '1ea1033a9285286bce2d2f331b533d3f', '2019-07-10 17:33:08', 4, 'Handheld Browser', 'Android', '68.177.13.247'),
(215, '3663797be40c70a85403b4950dc03741', '2019-07-12 21:25:31', 4, 'Edge', 'Windows 10', '68.177.13.253'),
(216, 'b0687e0ea3b33f30141e2241eabef18d', '2019-07-19 17:14:27', 4, 'Handheld Browser', 'Android', '99.203.96.156'),
(217, '98bd8a0280c6c581a908329d05e96e30', '2019-08-01 18:27:43', 2, 'Chrome', 'Mac OS X', '50.254.194.105'),
(218, 'bfc4f01c2d846b00262c40266959e4db', '2019-08-01 21:09:53', 4, 'Edge', 'Windows 10', '50.254.194.105'),
(219, '39f2652a4c3f04c051597aac9de79de7', '2019-08-05 17:42:40', 1, 'Chrome', 'Windows 10', '185.232.22.155'),
(314, '8662997416aa1e2026ef6b60d429860c', '2019-09-20 14:20:52', 4, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(221, 'b46c3e23bb703b66abc4c5147a19b47a', '2019-08-14 00:07:17', 4, 'Handheld Browser', 'Android', '99.203.96.10'),
(222, 'daa89f9c5814826a6dda0fbe3f733c85', '2019-08-14 14:12:02', 1, 'Chrome', 'Windows 10', '50.254.194.105'),
(223, 'bd4d25b690f51e9c2dc37230c9114ce6', '2019-08-14 14:13:30', 4, 'Handheld Browser', 'Android', '107.3.202.62'),
(224, 'df2755ee06fdac00d016c96e8005810e', '2019-08-14 16:53:53', 4, 'Edge', 'Windows 10', '107.3.202.62'),
(226, '8042b2f0ce495b6e5b529a1a34aa1bbd', '2019-08-15 16:19:01', 1, 'Chrome', 'Windows 10', '50.254.194.105'),
(227, 'f0ba70795077e361c28e37ecfdc8cf36', '2019-08-15 16:29:19', 2, 'Firefox', 'Windows 7', '50.254.194.105'),
(228, 'bcbe1c24e72b7aa5db1f8cb08414d00d', '2019-08-15 16:32:04', 2, 'Chrome', 'Windows 7', '50.254.194.105'),
(229, '643470e2da54e5251da0300629b52237', '2019-08-15 19:24:34', 4, 'Edge', 'Windows 10', '107.3.202.62'),
(230, 'ff5ca83237c41a674a800b5d880051f6', '2019-08-16 12:38:54', 2, 'Handheld Browser', 'iPhone', '50.254.194.105'),
(231, '39e8ce43ccda05f478d0d0c96c59ff4a', '2019-08-16 12:43:36', 2, 'Handheld Browser', 'iPhone', '50.254.194.105'),
(232, '72227dd04b62fa01a0223401ffc3c5eb', '2019-08-21 04:13:52', 4, 'Edge', 'Windows 10', '219.137.250.130'),
(233, 'f42050d54650f2964d94034c111044fa', '2019-08-22 06:57:47', 4, 'Edge', 'Windows 10', '219.137.250.130'),
(234, '7c3c03a3809c64e42b7eff6ea0e4f7de', '2019-08-25 21:17:49', 4, 'Handheld Browser', 'Android', '104.227.193.87'),
(235, '904fb977b8f235787246b47666622191', '2019-08-26 14:00:03', 1, 'Chrome', 'Windows 10', '50.254.194.105'),
(236, '3992131aee402e7cd89f3eadb96073a1', '2019-09-03 13:36:15', 4, 'Edge', 'Windows 10', '107.3.202.62'),
(237, '04c35665a34b7401faa649c5a515398e', '2019-09-05 14:42:55', 4, 'Edge', 'Windows 10', '107.3.202.62'),
(239, 'bf3df4e37937f6a45c51848db24116a2', '2019-09-05 19:36:53', 8, 'Firefox', 'Windows 7', '50.254.194.105'),
(240, '8cd8b0fb24764a68b9405034acaf67e1', '2019-09-09 18:26:23', 4, 'Edge', 'Windows 10', '107.3.202.62'),
(241, 'faefa9422223b89091e23f5544c451f7', '2019-09-09 19:53:21', 1, 'Chrome', 'Windows 10', '38.132.122.177'),
(242, '9d8d3da7043480984ebb3c555052ed84', '2019-09-13 16:20:18', 8, 'Unknown Browser', 'Windows 7', '50.254.194.105'),
(375, 'e22744dd52966308737c4b6d1292e12d', '2019-10-14 18:35:27', 1, 'Chrome', 'Windows 10', '185.232.22.168'),
(352, '387ba22dcc66e33f10b3e132d8be43b6', '2019-10-11 14:18:08', 2, 'Firefox', 'Windows 7', '50.254.194.105'),
(245, '5f2fc3f77064d8bee4b70f649315500c', '2019-09-16 12:43:49', 8, 'Unknown Browser', 'Windows 7', '50.254.194.105'),
(246, 'f8f7a5f3a589a1d22ace6456d4eb3d84', '2019-09-17 16:57:54', 4, 'Chrome', 'Windows 10', '50.254.194.105'),
(247, 'f4b73d6f3f8ef2c86d624c642f6049af', '2019-09-18 14:01:43', 4, 'Handheld Browser', 'Android', '50.254.194.105'),
(315, '05ab0e7e109fa6577abd44f19db72992', '2019-09-20 14:20:52', 4, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(316, 'd9f4494aa98d3ef15f558cf065ce459c', '2019-09-20 14:51:20', 4, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(318, '41a7c77ea2cb17810245d0ee18e9af2a', '2019-09-26 14:19:59', 1, 'Chrome', 'Windows 10', '104.254.93.180'),
(322, '3e30e878a8a48d543559781b43ed2db2', '2019-09-26 17:56:51', 9, 'Chrome', 'Mac OS X', '68.47.162.167'),
(320, '150fcd8973cd6dfe3cba7a844669109c', '2019-09-26 15:42:54', 4, 'Edge', 'Windows 10', '107.3.202.62'),
(323, 'e2e0dd1c84f2646acadca4540feba751', '2019-09-26 18:01:53', 9, 'Chrome', 'Windows 10', '98.233.32.3'),
(324, 'e998fed25f40ebfc7a5dd1787d3c48cd', '2019-10-02 12:35:05', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(325, '5621c1b61b4199311900c1444bfefcff', '2019-10-04 20:47:06', 1, 'Chrome', 'Windows 10', '185.232.22.168'),
(326, '3cdcba7db3a93759a2d57458fdcf50bc', '2019-10-04 20:51:43', 9, 'Chrome', 'Mac OS X', '76.99.149.185'),
(343, '700d1255d508328b1e5017becb512059', '2019-10-07 14:19:27', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(346, 'dfdb14a336b22f2f521f7fa8ab2a5ecc', '2019-10-08 00:00:07', 4, 'Handheld Browser', 'Android', '99.203.142.170'),
(347, '63e66c430d78325ab22c2b682691e724', '2019-10-09 16:20:36', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(376, '4b019482918fcb6fa60b38dd13d37717', '2019-10-14 18:37:24', 4, 'Handheld Browser', 'Android', '107.3.202.62'),
(360, '3f58757cb483fb5411455d2253b491f2', '2019-10-11 17:58:18', 1, 'Chrome', 'Windows 10', '185.232.22.168'),
(361, '3a9e52287fd23e8616908748ca46a3e7', '2019-10-11 17:58:40', 1, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(377, '8047b4998e11ebaf3dcfacddaef6db58', '2019-10-14 18:37:26', 4, 'Handheld Browser', 'iPhone', '174.60.101.52'),
(378, '1d7aff2f794df3fff7110e703d941f9c', '2019-10-17 14:28:22', 2, 'Firefox', 'Windows 7', '50.254.194.105'),
(434, '2e4ff97a798c2034b877c61321f4fe9b', '2019-11-14 19:16:17', 13, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(380, '7a1e8fb4caee55ce8858037fd6a5b14a', '2019-10-17 17:29:39', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(387, '26edbf6cccbcd74dfe05899781333360', '2019-10-18 15:05:18', 10, 'Chrome', 'Mac OS X', '68.47.162.167'),
(388, 'cb33647bfac6d9d7fabf662162c527b7', '2019-10-18 15:05:28', 10, 'Chrome', 'Windows 10', '74.125.210.26'),
(389, '80cd3a9b6047fd7a10bee41ac490d592', '2019-10-18 19:24:22', 8, 'Handheld Browser', 'iPhone', '50.254.194.105'),
(390, '4b1f1bd76e16a49c0704e75327f353b8', '2019-10-21 19:10:47', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(397, '29fb8b279c8575a175a34b029042fb37', '2019-11-06 15:18:10', 1, 'Chrome', 'Windows 10', '207.189.22.6'),
(394, '628c0b066596e5edf7874100e6aac92f', '2019-10-31 18:40:55', 10, 'Chrome', 'Mac OS X', '68.47.162.167'),
(395, '9432b85c1dc6bfe8e5678722536e708d', '2019-10-31 18:40:59', 10, 'Chrome', 'Windows 10', '66.102.8.152'),
(398, '66fcd69b3b40ec9cde9b65693f618f7e', '2019-11-06 15:20:29', 11, 'Chrome', 'Mac OS X', '5.181.234.212'),
(399, 'c4a89be40ab5733a246a1e88c7922c2b', '2019-11-06 15:22:15', 11, 'Chrome', 'Windows 10', '66.102.8.152'),
(412, '3c25df9c52ae1ec77876ce05972a98bc', '2019-11-12 23:03:18', 12, 'Chrome', 'Mac OS X', '47.185.222.19'),
(437, '40f8a917f1a11faea2ae90fedb407edf', '2019-11-14 21:57:05', 13, 'Unknown Browser', 'Unknown OS Platform', '207.244.72.212'),
(407, '4524c3bac39a4e1b189a7cb1ad3eaa93', '2019-11-12 15:00:43', 8, 'Unknown Browser', 'Unknown OS Platform', '207.244.124.56'),
(470, '58f255f96a07ff0a82793f7025e34ded', '2019-11-18 14:43:18', 1, 'Chrome', 'Windows 10', '68.235.50.227'),
(456, '3a1ee625a9b70e189e90abfb56ea466a', '2019-11-15 15:16:14', 11, 'Chrome', 'Mac OS X', '72.78.103.234'),
(416, '51c9eafd5fe6530a72427b92bb09811f', '2019-11-13 21:19:58', 11, 'Chrome', 'Mac OS X', '198.254.94.169'),
(435, '47a9b7ccc96167b7470fefade0d2e1ab', '2019-11-14 21:52:48', 12, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(436, 'a47932bd2921a3fbe60f950307e60d4d', '2019-11-14 21:53:56', 13, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(438, 'aa206934d26714fe7f90a45a6ac6b332', '2019-11-14 21:57:30', 13, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(439, '7ec7a52c9361b9aa594a425382656223', '2019-11-14 21:59:23', 13, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(440, '2b6b365f04bfa132c150f9f3ae945040', '2019-11-14 22:12:14', 13, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(441, 'e8f64823add4608306fff4f572b94d3a', '2019-11-15 13:37:22', 12, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(442, '4890ec99f47f7a1c7f6fa4d7e735a696', '2019-11-15 13:38:21', 12, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(443, '249134d0ab4eba4b2b873fcefbf3b0c4', '2019-11-15 13:38:42', 1, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(444, '2205ab3aa51e9f4794d6372a21ecbba5', '2019-11-15 13:42:59', 13, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(445, '10146e4998d7d16f01fdc9d806703a79', '2019-11-15 13:43:03', 13, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(446, '514eaa1540d3616d6a6a6df8806ea30d', '2019-11-15 13:43:40', 13, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(447, '71fd10ce159c1f61d000101dc6d24cb4', '2019-11-15 13:43:54', 13, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(448, '4b51cdc38403bbc18948279578cc65c3', '2019-11-15 13:47:24', 1, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(449, 'ebcc730c26306668bb472e685035485b', '2019-11-15 13:48:26', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(450, 'a47e0b223bdf0e53f569c2de1a4f7765', '2019-11-15 13:49:31', 1, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(451, 'e2c70e068e516af0fb86a4dd80d479fb', '2019-11-15 13:50:48', 12, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(452, 'd2df79688d50f60602cbb914e468e3b5', '2019-11-15 13:51:50', 12, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(453, '3874819e8c96f05657eabbea42f7c9ee', '2019-11-15 13:52:27', 13, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(454, 'ad5a2cfda904a6b988be8cdc711d5146', '2019-11-15 13:52:39', 1, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(455, '325f1a94f5920820ea5855a2065fd860', '2019-11-15 13:53:16', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(457, '8bdd7690ddc87dcb4f3ad69744b91a61', '2019-11-15 17:45:51', 12, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(458, 'ada801a5b726e391dfc817218c81a4c7', '2019-11-15 17:46:31', 1, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(459, '523477028d472a2e3787f6e1db44cc06', '2019-11-15 17:48:39', 13, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(460, 'cd1f274761001cb0676161cb0f5ba988', '2019-11-15 17:50:53', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(461, '2014d8db2249d10969db361dfa9cd117', '2019-11-15 17:50:56', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(462, '5ed4a83ba92931db73a039cc54f79468', '2019-11-15 17:51:01', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(463, 'cc3cbfdc76f49fb52d79b2ead46af430', '2019-11-15 17:51:03', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(464, 'a28a9ea729bdb4b853744082e31619a4', '2019-11-15 17:52:20', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(465, 'cb914d7889912acb408615d4349f81b0', '2019-11-15 17:57:53', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(466, 'af4afea3577a365899bb70cada195b8d', '2019-11-15 20:13:29', 12, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(473, 'b80a6b66db49bd7d906b396b919b832c', '2019-11-19 21:07:05', 11, 'Chrome', 'Mac OS X', '198.254.94.169'),
(474, '75656334c08b069d27091e2e858f7152', '2019-11-20 14:06:57', 1, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(475, 'e66b4c947ee9de026a1016f5282c1dab', '2019-11-20 18:47:11', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(476, '33ddbf258f522e1db7b8fa3467ac4a07', '2019-11-20 21:01:48', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(477, 'dbb20bb1a3abec7640e0952331c37271', '2019-11-20 21:07:46', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(478, '51e0268eb47959716534b18eeb0534c9', '2019-11-20 21:07:55', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(479, '810be6c94105568c74346835e95fa8db', '2019-11-20 21:09:35', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(480, 'd59c181bb4ee70f02af74cc07cdb33c5', '2019-11-20 21:10:44', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(481, '5f66724884991b08e235bb37c7b7a59b', '2019-11-20 21:15:56', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(482, '7bbdbee4b8c03d05a8d20886948e114f', '2019-11-21 15:51:25', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(483, 'edd48af1017957ddbe1850ed0bbfa1ca', '2019-11-21 15:51:31', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(484, '71ad31912b1afe173fe1a44db14d0089', '2019-11-21 15:51:42', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(485, 'd7084b8b8623ff44799f9bf711c19bd6', '2019-11-21 15:58:46', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(488, 'c3ad7a4fb16f8fc620a292544a7abd5f', '2019-11-21 17:23:29', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(492, '047dbbb9357ec63bec2d6cfff5caec0f', '2019-11-22 14:39:21', 4, 'Unknown Browser', 'Unknown OS Platform', '107.3.202.62'),
(493, 'a488736e66fb092724df9595854271de', '2019-11-22 14:43:41', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(494, '5483ed7dfe38c543c4ad80f9e468d196', '2019-11-22 15:43:17', 4, 'Unknown Browser', 'Unknown OS Platform', '107.3.202.62'),
(497, '26f2b19b9dfc77101d1ff1897fff0a1e', '2019-11-25 15:45:44', 4, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(496, '9e0834192eac15bc00348e3a89b4edbd', '2019-11-25 15:15:42', 4, 'Unknown Browser', 'Unknown OS Platform', '107.3.202.62'),
(499, '1a0c4dcfc1b85a65d6c558ee3587f119', '2019-11-25 15:58:58', 1, 'Chrome', 'Windows 10', '68.235.50.227'),
(504, '4df341396cc32acda409623482f89352', '2019-12-04 19:00:17', 4, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(502, 'ef5f33f2b8dd57bf0082d78f2a3d063f', '2019-12-02 22:10:43', 14, 'Chrome', 'Mac OS X', '97.92.255.183'),
(505, '6ff0b261fa97cfd29129a160a1d88681', '2019-12-05 13:10:17', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(516, '796ce6998748b9a42635e7bcfd4022df', '2019-12-05 15:48:50', 15, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(513, 'ff5030c202aabc569b05588fb59d4f1b', '2019-12-05 15:30:45', 15, 'Handheld Browser', 'iPhone', '50.254.194.105'),
(517, '394c778788647be66a6280b5cc49d2ca', '2019-12-06 13:45:15', 4, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(518, '419d9396dd682470b8c3281575124bdd', '2019-12-07 20:52:43', 16, 'Handheld Browser', 'Android', '99.116.27.161'),
(572, '57ee5fa6b071be4b4cf38907f0c43593', '2020-01-15 20:35:50', 28, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(520, '9f098194e2aa17d804681ef7e6b3d9bb', '2019-12-10 20:16:36', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(521, 'f18f56660f7ed1c3397f791647f9a632', '2019-12-13 08:13:08', 17, 'Chrome', 'Windows 10', '208.115.232.2'),
(522, '733213394230dd6fbe930c4a11cfde67', '2019-12-13 08:20:58', 17, 'Chrome', 'Windows 8.1', '66.102.8.154'),
(528, 'c24a6d85b65a263ad0a55b1a7928ef90', '2019-12-13 18:16:45', 18, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(529, '52ce26dc80974ad3b1b3ad66448cac3c', '2019-12-13 18:30:14', 19, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(603, 'a2c028809e34489ceaaf17616d72d685', '2020-02-03 21:04:33', 32, 'Safari', 'Mac OS X', '67.246.170.41'),
(531, '4442325cf4a7a5a8ccf9503219d45485', '2019-12-13 19:05:42', 18, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(532, '946df12f42146d47c647c7403b8d9b63', '2019-12-18 19:24:28', 13, 'Chrome', 'Mac OS X', '107.77.234.42'),
(533, 'b9c6445f7bdc5f693228eaca5a41d3f5', '2019-12-18 19:25:56', 13, 'Unknown Browser', 'Unknown OS Platform', '107.77.234.42'),
(542, '08d9918e237d077d979ac2e8db8a2c57', '2019-12-19 16:50:11', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(539, '03eda4fd72bb17b1db6e147012bf01b3', '2019-12-19 14:53:13', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(540, 'd47ca5b2b81eafc8cc9709114b187667', '2019-12-19 15:26:37', 15, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(543, 'b3e856cd5f6f7845bac4ac2b1cfb418b', '2019-12-20 07:18:27', 17, 'Chrome', 'Windows 10', '74.222.14.83'),
(550, '9bedb1b6c5f78cb86efdda240b38acb0', '2019-12-24 17:22:30', 8, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(551, '049e618bab63325f711c26e306e0e360', '2019-12-27 13:29:22', 15, 'Unknown Browser', 'Unknown OS Platform', '73.236.178.22'),
(552, 'b1efa5fdb45a0ba8abd0a2b9c2b2e290', '2019-12-30 15:14:14', 21, 'Unknown Browser', 'Unknown OS Platform', '107.77.224.70'),
(553, '696e4163bd5ee2894c3af20499a97a75', '2019-12-30 15:16:48', 21, 'Unknown Browser', 'Unknown OS Platform', '107.77.224.70'),
(557, 'ee306c33f4cd79a14dec241e27328178', '2020-01-03 00:00:28', 24, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(555, '84c3a14302eb5c0cc5cc29acba74e1ba', '2019-12-31 20:09:03', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(556, '27c2b34ec73253669b577b49d12f5e8a', '2019-12-31 20:09:06', 2, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(558, 'b76395421d09f65719e475788b268e01', '2020-01-03 00:01:40', 24, 'Chrome', 'Windows 10', '50.254.194.105'),
(559, '7a54dbcc61c526abd795b1a3a6164c09', '2020-01-03 12:33:15', 23, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(561, '8b1753df293fe47f5a4122d9848b3ded', '2020-01-03 15:50:30', 22, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(562, 'eac2751bb3684cbbdbc4258ee2a38597', '2020-01-03 18:43:36', 14, 'Chrome', 'Mac OS X', '97.92.255.183'),
(563, '2b1f86db6927261183bddda20aacb478', '2020-01-04 01:33:56', 21, 'Unknown Browser', 'Unknown OS Platform', '50.254.194.105'),
(564, '072f9c7a5306a6224e5753c2f670119b', '2020-01-11 21:55:19', 4, 'Chrome', 'Windows 10', '24.234.131.226'),
(569, '219ee58f032ea73a25b44a6f5f6f2e8b', '2020-01-14 23:40:00', 22, 'Unknown Browser', 'Unknown OS Platform', '208.115.65.150'),
(575, '77f22f1073acb2103226bcdb9eb77fe8', '2020-01-15 22:44:47', 2, 'Chrome', 'Windows 7', '50.254.194.105'),
(574, 'b245d63a52c72ccfef1d8eac9a0da9a8', '2020-01-15 21:06:58', 24, 'Chrome', 'Windows 10', '208.115.65.150'),
(576, '3c2a3e060297b8577d52dd04d9bac178', '2020-01-17 02:10:32', 29, 'Safari', 'Mac OS X', '69.180.75.93'),
(577, 'cc871159a3ae7c802f183fda91df57d1', '2020-01-17 02:12:32', 29, 'Chrome', 'Windows 10', '66.102.8.150'),
(578, 'ce30291087681125952bb568d6431849', '2020-01-17 02:14:36', 29, 'Unknown Browser', 'Unknown OS Platform', '69.180.75.93'),
(579, '260ed0621985f82e3a38be950638d370', '2020-01-17 02:14:37', 29, 'Unknown Browser', 'Unknown OS Platform', '69.180.75.93'),
(580, '9225b7ebd5d381ac0d6975c51f4ca188', '2020-01-23 20:35:28', 1, 'Chrome', 'Windows 10', '107.150.31.157'),
(605, 'cc5ca5e0fa82f8fe6357d1cee9e55a02', '2020-02-04 18:15:01', 33, 'Safari', 'Mac OS X', '69.27.7.150'),
(606, 'f5db21813e290a206b29637ea3975e2f', '2020-02-04 20:02:21', 32, 'Safari', 'Mac OS X', '50.75.183.162'),
(607, '156469799f25f595664120404d5bb8de', '2020-02-04 20:02:28', 30, 'Chrome', 'Windows 10', '74.69.190.86'),
(598, '737842f63313547032194157e6e47737', '2020-02-03 20:49:17', 20, 'Safari', 'Mac OS X', '67.246.170.41'),
(590, '9578ef02266c5b044a9b81c5fe71eadf', '2020-01-29 22:03:29', 29, 'Safari', 'Mac OS X', '69.180.75.93'),
(589, '9dc0c0e19a8e3e39567b62e0992c9148', '2020-01-29 21:45:43', 28, 'Unknown Browser', 'Unknown OS Platform', '69.180.75.93'),
(591, 'a3d7ef3bc9fcd89b78b3fa6ab2878a4b', '2020-01-30 17:04:23', 2, 'Unknown Browser', 'Windows 7', '50.254.194.105'),
(592, '0d6ba29a4ab20a6517a493f82fe7ba60', '2020-01-30 21:54:02', 31, 'Chrome', 'Windows 10', '12.151.203.210'),
(593, 'e590fa3f88d825f4ae39aa2aa879b722', '2020-01-30 21:54:19', 31, 'Unknown Browser', 'Windows 7', '40.77.167.24'),
(604, 'db26942a54940dc166787be02c39a5d1', '2020-02-03 21:25:35', 32, 'Unknown Browser', 'Unknown OS Platform', '67.246.170.41'),
(595, 'd4441b7c540794650f0e6b74ce1e9f49', '2020-02-03 19:56:45', 30, 'Chrome', 'Windows 10', '74.69.190.86'),
(596, '6f8ae5fe4c1ed0d029dcef138576dff4', '2020-02-03 20:35:16', 20, 'Safari', 'Mac OS X', '67.246.170.41'),
(608, '3a05b85d3db9ef39bcb002058322ea8e', '2020-02-05 16:18:28', 30, 'Chrome', 'Windows 7', '70.104.62.139'),
(609, '413afc6c87d0ca5cb5604665b6a4ae37', '2020-02-06 15:40:54', 34, 'Safari', 'Mac OS X', '69.136.158.241'),
(610, 'e5ffc0590cb460f0a1cf7c5202580b32', '2020-02-06 15:43:05', 4, 'Handheld Browser', 'iPhone', '69.136.158.241'),
(611, 'b5b008559b3d7b656fdec47700086086', '2020-02-07 19:37:35', 1, 'Unknown Browser', 'Unknown OS Platform', '24.234.131.226'),
(612, 'eccb9343c2b566892cdf28aa7ef2446e', '2020-02-15 14:47:42', 31, 'Chrome', 'Windows 10', '12.151.203.210'),
(613, '72582e45a7842abfacb6e9acb67cc104', '2020-02-19 05:09:11', 4, 'Handheld Browser', 'Android', '99.203.87.76'),
(614, 'df1e766d4e7e2ba19fe787f73b0d57c7', '2020-02-20 16:37:47', 18, 'Chrome', 'Windows 10', '103.42.91.34'),
(615, '6de26b7258fc2c6cab59243cc6e7873e', '2020-02-26 19:42:43', 32, 'Safari', 'Mac OS X', '67.246.170.41'),
(616, '70ef3e1bd4716d3efcf3e9ab39c395b8', '2020-02-27 18:49:13', 2, 'Chrome', 'Windows 7', '50.254.194.105'),
(617, '20b474bf28f6a554fd831abe9c816b0d', '2020-03-03 14:18:37', 18, 'Chrome', 'Windows 10', '103.42.91.34'),
(618, '3d4306a1062b03338ab544e47ce6dc8c', '2020-03-05 20:52:09', 4, 'Chrome', 'Windows 10', '24.234.131.226'),
(619, '3cfea61d420d8c8ad7828a49cc071800', '2020-03-06 15:38:38', 1, 'Chrome', 'Windows 10', '38.132.122.154'),
(620, '197aead1fd8ed6d5288c3b36fa2aedb0', '2020-03-06 15:46:22', 4, 'Edge', 'Windows 10', '24.234.78.54'),
(621, 'dce483e5dded4f2de67215d026bf4d4e', '2020-03-06 20:25:27', 1, 'Chrome', 'Windows 10', '50.254.194.105'),
(622, '79d682562cfedd9944f0f88e8826e251', '2020-03-06 21:51:00', 4, 'Chrome', 'Windows 10', '23.229.103.138'),
(623, '3a451758415a8599c77cf24affdd713a', '2020-03-07 05:14:34', 35, 'Edge', 'Windows 10', '72.203.127.220'),
(625, '4d4b47d0dcae93f6ae334b53c4c3802c', '2020-03-07 11:51:29', 36, 'Chrome', 'Linux', '103.42.91.34'),
(626, '6ea09aec0641564b436879eaa0750945', '2020-03-07 11:56:53', 36, 'Firefox', 'Ubuntu', '103.42.91.34'),
(628, '094d37e095bc34a89a6ddffc01b502b1', '2020-03-13 10:34:11', 37, 'Chrome', 'Linux', '::1'),
(629, 'fe2f94610d1a35a0ce2c061a26231e47', '2020-03-13 10:41:56', 37, 'Chrome', 'Linux', '::1'),
(630, '6ef0cd00d684ceb5349ca259d74ba37e', '2020-03-16 09:05:45', 37, 'Chrome', 'Linux', '::1'),
(631, '6619dd964856b8b43d0808872dbf37e7', '2020-03-16 13:20:56', 37, 'Chrome', 'Linux', '::1'),
(632, 'ad9b07efd49139ed3061aad42fb08b00', '2020-03-17 11:45:11', 37, 'Chrome', 'Linux', '::1'),
(634, 'a9d08469466bb3b18886b3054afb50e2', '2020-03-19 11:44:59', 37, 'Chrome', 'Linux', '::1'),
(635, 'a8f365ed2943f47afbc982bec3dd1a9c', '2020-03-19 11:45:58', 38, 'Chrome', 'Linux', '::1'),
(636, '4d5ae6d67f8672ff5be1de64cc52dbca', '2020-03-19 15:43:23', 38, 'Chrome', 'Linux', '::1'),
(638, '30a97144724631545da06a8cd6f14284', '2020-03-20 14:34:32', 37, 'Firefox', 'Ubuntu', '127.0.0.1'),
(639, '476b760c8c1f011da27569f68f35695d', '2020-03-20 14:34:47', 37, 'Chrome', 'Linux', '::1'),
(640, 'd7b396b582e73d85cdd9f416524e5532', '2020-03-20 16:34:00', 37, 'Chrome', 'Linux', '::1'),
(641, '150cf5f0d84b1f5e063d9be9883e4d65', '2020-03-21 09:32:01', 36, 'Chrome', 'Linux', '::1'),
(642, '0b71183d84ef24f1f0b0f1919224ad0f', '2020-03-21 12:05:58', 36, 'Chrome', 'Linux', '::1'),
(644, '7a0c36dcd3207560cf376b3ce6a07cc7', '2020-03-27 16:34:42', 37, 'Chrome', 'Linux', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `verification_requests`
--

CREATE TABLE `verification_requests` (
  `request_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL,
  `node_type` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `passport` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `message` text COLLATE utf8mb4_bin,
  `time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `widget_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `place` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `code` mediumtext COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads_campaigns`
--
ALTER TABLE `ads_campaigns`
  ADD PRIMARY KEY (`campaign_id`);

--
-- Indexes for table `ads_system`
--
ALTER TABLE `ads_system`
  ADD PRIMARY KEY (`ads_id`);

--
-- Indexes for table `ads_users_wallet_transactions`
--
ALTER TABLE `ads_users_wallet_transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `affiliates_payments`
--
ALTER TABLE `affiliates_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`announcement_id`);

--
-- Indexes for table `announcements_users`
--
ALTER TABLE `announcements_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `announcement_id_user_id` (`announcement_id`,`user_id`);

--
-- Indexes for table `banned_ips`
--
ALTER TABLE `banned_ips`
  ADD PRIMARY KEY (`ip_id`);

--
-- Indexes for table `blogs_categories`
--
ALTER TABLE `blogs_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`conversation_id`);

--
-- Indexes for table `conversations_messages`
--
ALTER TABLE `conversations_messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `conversations_users`
--
ALTER TABLE `conversations_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `conversation_id_user_id` (`conversation_id`,`user_id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`field_id`);

--
-- Indexes for table `custom_fields_values`
--
ALTER TABLE `custom_fields_values`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `field_id_node_id_node_type` (`field_id`,`node_id`,`node_type`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `emojis`
--
ALTER TABLE `emojis`
  ADD PRIMARY KEY (`emoji_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `events_categories`
--
ALTER TABLE `events_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `events_members`
--
ALTER TABLE `events_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_id_user_id` (`event_id`,`user_id`);

--
-- Indexes for table `followings`
--
ALTER TABLE `followings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_following_id` (`user_id`,`following_id`);

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`forum_id`);

--
-- Indexes for table `forums_replies`
--
ALTER TABLE `forums_replies`
  ADD PRIMARY KEY (`reply_id`);

--
-- Indexes for table `forums_threads`
--
ALTER TABLE `forums_threads`
  ADD PRIMARY KEY (`thread_id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_one_id_user_two_id` (`user_one_id`,`user_two_id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`game_id`);

--
-- Indexes for table `games_players`
--
ALTER TABLE `games_players`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `game_id_user_id` (`game_id`,`user_id`);

--
-- Indexes for table `gear`
--
ALTER TABLE `gear`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `serial` (`serial`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `username` (`group_name`);

--
-- Indexes for table `groups_admins`
--
ALTER TABLE `groups_admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `groups_categories`
--
ALTER TABLE `groups_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `groups_members`
--
ALTER TABLE `groups_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `invitation_codes`
--
ALTER TABLE `invitation_codes`
  ADD PRIMARY KEY (`code_id`);

--
-- Indexes for table `market_categories`
--
ALTER TABLE `market_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `movies_genres`
--
ALTER TABLE `movies_genres`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `mqtt_acl`
--
ALTER TABLE `mqtt_acl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mqtt_acl_bk`
--
ALTER TABLE `mqtt_acl_bk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mqtt_acl_bkf2`
--
ALTER TABLE `mqtt_acl_bkf2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mqtt_user`
--
ALTER TABLE `mqtt_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mqtt_username` (`username`);

--
-- Indexes for table `MUSIC_LIBRARY`
--
ALTER TABLE `MUSIC_LIBRARY`
  ADD UNIQUE KEY `MUSIC_ID` (`MUSIC_ID`,`FILE_PATH`(50),`userid`) USING BTREE,
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `MUSIC_LIBRARY_BAK`
--
ALTER TABLE `MUSIC_LIBRARY_BAK`
  ADD UNIQUE KEY `MUSIC_ID` (`MUSIC_ID`,`FILE_PATH`(50),`userid`) USING BTREE,
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `packages_payments`
--
ALTER TABLE `packages_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`),
  ADD UNIQUE KEY `username` (`page_name`);

--
-- Indexes for table `pages_admins`
--
ALTER TABLE `pages_admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_id_user_id` (`page_id`,`user_id`);

--
-- Indexes for table `pages_categories`
--
ALTER TABLE `pages_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `pages_invites`
--
ALTER TABLE `pages_invites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_id_user_id_from_user_id` (`page_id`,`user_id`,`from_user_id`);

--
-- Indexes for table `pages_likes`
--
ALTER TABLE `pages_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_id_user_id` (`page_id`,`user_id`);

--
-- Indexes for table `points_payments`
--
ALTER TABLE `points_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `posts_articles`
--
ALTER TABLE `posts_articles`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `posts_audios`
--
ALTER TABLE `posts_audios`
  ADD PRIMARY KEY (`audio_id`);

--
-- Indexes for table `posts_comments`
--
ALTER TABLE `posts_comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts_comments_likes`
--
ALTER TABLE `posts_comments_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `comment_id_user_id` (`comment_id`,`user_id`);

--
-- Indexes for table `posts_files`
--
ALTER TABLE `posts_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `posts_hidden`
--
ALTER TABLE `posts_hidden`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_id_user_id` (`post_id`,`user_id`);

--
-- Indexes for table `posts_likes`
--
ALTER TABLE `posts_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_id_user_id` (`post_id`,`user_id`);

--
-- Indexes for table `posts_links`
--
ALTER TABLE `posts_links`
  ADD PRIMARY KEY (`link_id`);

--
-- Indexes for table `posts_media`
--
ALTER TABLE `posts_media`
  ADD PRIMARY KEY (`media_id`);

--
-- Indexes for table `posts_photos`
--
ALTER TABLE `posts_photos`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `posts_photos_albums`
--
ALTER TABLE `posts_photos_albums`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `posts_photos_likes`
--
ALTER TABLE `posts_photos_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_photo_id` (`user_id`,`photo_id`);

--
-- Indexes for table `posts_polls`
--
ALTER TABLE `posts_polls`
  ADD PRIMARY KEY (`poll_id`);

--
-- Indexes for table `posts_polls_options`
--
ALTER TABLE `posts_polls_options`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `posts_polls_options_users`
--
ALTER TABLE `posts_polls_options_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_poll_id` (`user_id`,`poll_id`);

--
-- Indexes for table `posts_products`
--
ALTER TABLE `posts_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `posts_saved`
--
ALTER TABLE `posts_saved`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_id_user_id` (`post_id`,`user_id`);

--
-- Indexes for table `posts_videos`
--
ALTER TABLE `posts_videos`
  ADD PRIMARY KEY (`video_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `static_pages`
--
ALTER TABLE `static_pages`
  ADD PRIMARY KEY (`page_id`),
  ADD UNIQUE KEY `page_url` (`page_url`);

--
-- Indexes for table `stickers`
--
ALTER TABLE `stickers`
  ADD PRIMARY KEY (`sticker_id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`story_id`);

--
-- Indexes for table `stories_media`
--
ALTER TABLE `stories_media`
  ADD PRIMARY KEY (`media_id`);

--
-- Indexes for table `system_countries`
--
ALTER TABLE `system_countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `system_languages`
--
ALTER TABLE `system_languages`
  ADD PRIMARY KEY (`language_id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `system_options`
--
ALTER TABLE `system_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_themes`
--
ALTER TABLE `system_themes`
  ADD PRIMARY KEY (`theme_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`),
  ADD UNIQUE KEY `facebook_id` (`facebook_id`),
  ADD UNIQUE KEY `twitter_id` (`twitter_id`),
  ADD UNIQUE KEY `linkedin_id` (`linkedin_id`),
  ADD UNIQUE KEY `vkontakte_id` (`vkontakte_id`),
  ADD UNIQUE KEY `instagram_id` (`instagram_id`),
  ADD UNIQUE KEY `user_phone` (`user_phone`);

--
-- Indexes for table `users_blocks`
--
ALTER TABLE `users_blocks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_blocked_id` (`user_id`,`blocked_id`);

--
-- Indexes for table `users_searches`
--
ALTER TABLE `users_searches`
  ADD PRIMARY KEY (`log_id`),
  ADD UNIQUE KEY `node_id_node_type` (`node_id`,`node_type`);

--
-- Indexes for table `users_sessions`
--
ALTER TABLE `users_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_token` (`session_token`),
  ADD KEY `user_ip` (`user_ip`);

--
-- Indexes for table `verification_requests`
--
ALTER TABLE `verification_requests`
  ADD PRIMARY KEY (`request_id`),
  ADD UNIQUE KEY `node_id_node_type` (`node_id`,`node_type`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`widget_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads_campaigns`
--
ALTER TABLE `ads_campaigns`
  MODIFY `campaign_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ads_system`
--
ALTER TABLE `ads_system`
  MODIFY `ads_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ads_users_wallet_transactions`
--
ALTER TABLE `ads_users_wallet_transactions`
  MODIFY `transaction_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `affiliates_payments`
--
ALTER TABLE `affiliates_payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `announcement_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `announcements_users`
--
ALTER TABLE `announcements_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `banned_ips`
--
ALTER TABLE `banned_ips`
  MODIFY `ip_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blogs_categories`
--
ALTER TABLE `blogs_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `conversation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `conversations_messages`
--
ALTER TABLE `conversations_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `conversations_users`
--
ALTER TABLE `conversations_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `field_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `custom_fields_values`
--
ALTER TABLE `custom_fields_values`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `emojis`
--
ALTER TABLE `emojis`
  MODIFY `emoji_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `events_categories`
--
ALTER TABLE `events_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `events_members`
--
ALTER TABLE `events_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `followings`
--
ALTER TABLE `followings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `forum_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `forums_replies`
--
ALTER TABLE `forums_replies`
  MODIFY `reply_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `forums_threads`
--
ALTER TABLE `forums_threads`
  MODIFY `thread_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `game_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `games_players`
--
ALTER TABLE `games_players`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gear`
--
ALTER TABLE `gear`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `groups_admins`
--
ALTER TABLE `groups_admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `groups_categories`
--
ALTER TABLE `groups_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `groups_members`
--
ALTER TABLE `groups_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `invitation_codes`
--
ALTER TABLE `invitation_codes`
  MODIFY `code_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `market_categories`
--
ALTER TABLE `market_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `movies_genres`
--
ALTER TABLE `movies_genres`
  MODIFY `genre_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `mqtt_acl`
--
ALTER TABLE `mqtt_acl`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
--
-- AUTO_INCREMENT for table `mqtt_acl_bk`
--
ALTER TABLE `mqtt_acl_bk`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `mqtt_acl_bkf2`
--
ALTER TABLE `mqtt_acl_bkf2`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `mqtt_user`
--
ALTER TABLE `mqtt_user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;
--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `package_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `packages_payments`
--
ALTER TABLE `packages_payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages_admins`
--
ALTER TABLE `pages_admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages_categories`
--
ALTER TABLE `pages_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `pages_invites`
--
ALTER TABLE `pages_invites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages_likes`
--
ALTER TABLE `pages_likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `points_payments`
--
ALTER TABLE `points_payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=944;
--
-- AUTO_INCREMENT for table `posts_articles`
--
ALTER TABLE `posts_articles`
  MODIFY `article_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts_audios`
--
ALTER TABLE `posts_audios`
  MODIFY `audio_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=924;
--
-- AUTO_INCREMENT for table `posts_comments`
--
ALTER TABLE `posts_comments`
  MODIFY `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `posts_comments_likes`
--
ALTER TABLE `posts_comments_likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts_files`
--
ALTER TABLE `posts_files`
  MODIFY `file_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `posts_hidden`
--
ALTER TABLE `posts_hidden`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts_likes`
--
ALTER TABLE `posts_likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `posts_links`
--
ALTER TABLE `posts_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `posts_media`
--
ALTER TABLE `posts_media`
  MODIFY `media_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts_photos`
--
ALTER TABLE `posts_photos`
  MODIFY `photo_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `posts_photos_albums`
--
ALTER TABLE `posts_photos_albums`
  MODIFY `album_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `posts_photos_likes`
--
ALTER TABLE `posts_photos_likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts_polls`
--
ALTER TABLE `posts_polls`
  MODIFY `poll_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts_polls_options`
--
ALTER TABLE `posts_polls_options`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts_polls_options_users`
--
ALTER TABLE `posts_polls_options_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts_products`
--
ALTER TABLE `posts_products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts_saved`
--
ALTER TABLE `posts_saved`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `posts_videos`
--
ALTER TABLE `posts_videos`
  MODIFY `video_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `report_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `static_pages`
--
ALTER TABLE `static_pages`
  MODIFY `page_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `stickers`
--
ALTER TABLE `stickers`
  MODIFY `sticker_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `story_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stories_media`
--
ALTER TABLE `stories_media`
  MODIFY `media_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_countries`
--
ALTER TABLE `system_countries`
  MODIFY `country_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;
--
-- AUTO_INCREMENT for table `system_languages`
--
ALTER TABLE `system_languages`
  MODIFY `language_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `system_options`
--
ALTER TABLE `system_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `system_themes`
--
ALTER TABLE `system_themes`
  MODIFY `theme_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `users_blocks`
--
ALTER TABLE `users_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_searches`
--
ALTER TABLE `users_searches`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_sessions`
--
ALTER TABLE `users_sessions`
  MODIFY `session_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=645;
--
-- AUTO_INCREMENT for table `verification_requests`
--
ALTER TABLE `verification_requests`
  MODIFY `request_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `widget_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
