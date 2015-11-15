-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2015 at 03:10 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `9gag`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 33, '2013-10-24 09:41:57', '2014-01-28 08:25:19'),
(2, 'Animals', 1, '2013-10-18 08:57:00', '2014-01-28 08:45:25'),
(25, 'News', 24, '2013-10-24 09:40:46', '2013-10-24 09:40:46'),
(29, 'Sports', 31, '2013-10-24 09:41:30', '2014-01-26 10:22:09'),
(31, 'Comics', 18, '2014-01-28 07:59:34', '2014-01-28 09:00:58'),
(32, 'Cartoon', 3, '2014-01-28 08:25:09', '2014-01-28 08:25:09'),
(33, 'Music', 22, '2014-01-28 08:44:11', '2014-01-28 08:44:11'),
(34, 'Architecture', 2, '2014-01-28 08:45:15', '2014-01-28 08:45:31'),
(35, 'Film', 20, '2014-01-28 09:00:22', '2014-01-28 09:00:22'),
(36, 'Family', 19, '2014-01-28 09:01:08', '2014-01-28 09:01:08'),
(37, 'Comedy', 13, '2014-01-30 21:11:41', '2014-01-30 21:11:41'),
(38, 'Vehicles', 38, '2014-01-30 21:20:05', '2014-01-30 21:20:05'),
(39, 'Food', 21, '2014-01-30 21:46:00', '2014-01-30 21:46:00'),
(40, 'Retro', 25, '2014-02-03 21:38:23', '2014-02-03 21:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pic_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vid_url` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment_flags`
--

CREATE TABLE IF NOT EXISTS `comment_flags` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment_votes`
--

CREATE TABLE IF NOT EXISTS `comment_votes` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `up` tinyint(1) NOT NULL DEFAULT '0',
  `down` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '1',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `vid` tinyint(1) NOT NULL DEFAULT '0',
  `pic` tinyint(1) NOT NULL DEFAULT '1',
  `pic_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic_url_multi` text COLLATE utf8_unicode_ci,
  `delete_img` text COLLATE utf8_unicode_ci,
  `vid_url` text COLLATE utf8_unicode_ci,
  `link_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nsfw` tinyint(1) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `user_id`, `category_id`, `title`, `slug`, `description`, `active`, `vid`, `pic`, `pic_url`, `pic_url_multi`, `delete_img`, `vid_url`, `link_url`, `tags`, `created_at`, `updated_at`, `nsfw`, `views`) VALUES
(94, 1, 1, 'What would you do?', 'what-would-you-do', '', 1, 0, 1, 'December2013/what_would_you_do.jpg', NULL, NULL, NULL, '', '', '2013-12-27 10:27:31', '2014-01-30 15:15:53', 0, 0),
(95, 1, 1, 'Google Fridge', 'google-fridge', '', 1, 0, 1, 'December2013/google-egg-fridge.jpg', NULL, NULL, NULL, '', '', '2013-12-27 10:29:21', '2014-01-30 15:15:53', 0, 0),
(96, 1, 39, 'Hamburger Helper', 'hamburger-helper', '', 1, 0, 1, 'December2013/hamburger-helper.jpg', NULL, NULL, NULL, '', '', '2013-12-27 10:30:03', '2014-02-08 10:34:01', 0, 0),
(97, 1, 39, 'Lies', 'lies', '', 1, 0, 1, 'December2013/lies.jpg', NULL, NULL, NULL, '', '', '2013-12-27 10:30:40', '2014-02-08 10:34:17', 0, 0),
(98, 1, 1, 'Tips-n-Tricks', 'tips-n-tricks', '', 1, 0, 1, 'December2013/tips-n-tricks.jpg', NULL, NULL, NULL, '', '', '2013-12-27 10:31:04', '2014-01-30 15:15:53', 0, 0),
(99, 1, 39, 'This Just in...', 'this-just-in', '', 1, 0, 1, 'December2013/cheeseburger-stabbing.jpg', NULL, NULL, NULL, '', '', '2013-12-27 10:31:42', '2014-02-08 10:34:25', 0, 0),
(100, 1, 1, 'Hold My Calls', 'hold-my-calls', '', 1, 0, 1, 'December2013/hold-my-calls.jpg', NULL, NULL, NULL, '', '', '2013-12-27 10:34:29', '2014-01-30 15:15:53', 0, 0),
(101, 1, 1, 'Welcome To The Jungle', 'welcome-to-the-jungle', '', 1, 0, 1, 'December2013/welcome_to_the_jungle.jpg', NULL, NULL, NULL, '', '', '2013-12-27 10:34:57', '2014-01-30 15:15:53', 0, 0),
(102, 1, 1, 'Will this be on the test?', 'will-this-be-on-the-test', '', 1, 0, 1, 'December2013/test-blackboard.jpg', NULL, NULL, NULL, '', '', '2013-12-27 10:35:19', '2014-01-30 15:15:53', 0, 0),
(103, 1, 2, 'Just keep on smilin fatty', 'just-keep-on-smilin-fatty', '', 1, 0, 1, 'December2013/just_keep_smilin_fatty.jpg', NULL, NULL, NULL, '', '', '2013-12-27 10:40:47', '2014-02-08 10:35:45', 0, 0),
(104, 1, 1, 'Choose your own adventure', 'choose-your-own-adventure', '', 1, 0, 1, 'December2013/choose_your_own_adventure.jpg', NULL, NULL, NULL, '', '', '2013-12-27 10:41:34', '2014-01-30 15:15:53', 0, 0),
(105, 1, 1, 'Keep up the adequate work!', 'keep-up-the-adequate-work', '', 1, 0, 1, 'December2013/adequate_work.jpg', NULL, NULL, NULL, '', '', '2013-12-27 10:41:52', '2014-01-30 15:15:53', 0, 0),
(106, 1, 1, 'Hey Ladies...', 'hey-ladies', '', 1, 0, 1, 'December2013/hey_ladies.jpg', NULL, NULL, NULL, '', '', '2013-12-27 10:42:10', '2014-01-30 15:15:53', 0, 0),
(107, 1, 1, 'A Case of the Mondays', 'a-case-of-the-mondays', '', 1, 0, 1, 'December2013/filled_with_excitement.jpg', NULL, NULL, NULL, '', '', '2013-12-27 10:42:33', '2014-01-30 15:15:53', 0, 0),
(108, 1, 1, 'Be Honest Now', 'be-honest-now', '', 1, 0, 1, 'December2013/be_honest_now.jpg', NULL, NULL, NULL, '', '', '2013-12-27 10:43:00', '2014-01-30 15:15:53', 0, 0),
(109, 1, 1, 'Meet Your New Cubemate', 'meet-your-new-cubemate', '', 1, 0, 1, 'December2013/cubemate_small.jpg', NULL, NULL, NULL, '', '', '2013-12-27 10:47:17', '2014-01-30 15:15:53', 0, 0),
(110, 1, 1, 'Those Bastards', 'those-bastards', '', 1, 0, 1, 'December2013/piano_robot.jpg', NULL, NULL, NULL, '', '', '2013-12-27 10:47:39', '2014-01-30 15:15:53', 0, 0),
(112, 1, 1, 'Is this a problem these days?', 'is-this-a-problem-these-days', '', 1, 0, 1, 'December2013/is-this-a-problem-these-days.jpg', NULL, NULL, NULL, '', '', '2013-12-27 19:51:52', '2014-01-30 15:15:53', 0, 0),
(113, 1, 1, 'Defense', 'defense', '', 1, 0, 1, 'December2013/defense.jpg', NULL, NULL, NULL, '', '', '2013-12-27 19:52:07', '2014-01-30 15:15:53', 0, 0),
(114, 1, 1, 'Ooops Sorry', 'ooops-sorry', '', 1, 0, 1, 'December2013/ooops-sorry.jpg', NULL, NULL, NULL, '', '', '2013-12-27 19:52:23', '2014-01-30 15:15:53', 0, 0),
(115, 1, 1, 'The day I lost control...', 'the-day-i-lost-control', '', 1, 0, 1, 'December2013/the-day-i-lost-control.jpg', NULL, NULL, NULL, '', '', '2013-12-27 19:52:48', '2014-01-30 15:15:53', 0, 0),
(116, 1, 1, 'What I remember most about LEGOs', 'what-i-remember-most-about-legos', '', 1, 0, 1, 'December2013/what-i-remember-most-about-legos.jpg', NULL, NULL, NULL, '', '', '2013-12-27 19:53:01', '2014-01-30 15:15:53', 0, 0),
(117, 1, 1, 'Tea Submarine', 'tea-submarine', '', 1, 0, 1, 'December2013/tea-submarine.jpg', NULL, NULL, NULL, '', '', '2013-12-27 19:53:28', '2014-01-30 15:15:53', 0, 0),
(118, 1, 1, 'Do we have a problem?', 'do-we-have-a-problem', '', 1, 0, 1, 'December2013/do-we-have-a-problem.jpg', NULL, NULL, NULL, '', '', '2013-12-27 19:53:44', '2014-01-30 15:15:53', 0, 0),
(119, 1, 1, 'Simplest rubiks cube solution', 'simplest-rubiks-cube-solution', '', 1, 0, 1, 'December2013/simplest-rubiks-cube-solution.jpg', NULL, NULL, NULL, '', '', '2013-12-27 20:03:45', '2014-01-30 15:15:53', 0, 0),
(120, 1, 1, 'IMPOSTER!', 'imposter', '', 1, 0, 1, 'December2013/imposter.jpg', NULL, NULL, NULL, '', '', '2013-12-27 20:04:03', '2014-01-30 15:15:53', 0, 0),
(121, 1, 1, 'Life is just a game.', 'life-is-just-a-game', '', 1, 0, 1, 'December2013/life-is-just-a-game.jpg', NULL, NULL, NULL, '', '', '2013-12-27 20:04:22', '2014-01-30 15:15:53', 0, 0),
(122, 1, 1, 'Pepsi Vs. Coke', 'pepsi-vs-coke', '', 1, 0, 1, 'December2013/pepsi-vs-coke.jpg', NULL, NULL, NULL, '', '', '2013-12-27 20:04:52', '2014-01-30 15:15:54', 0, 0),
(123, 1, 1, 'Shadow Faces', 'shadow-faces', '', 1, 0, 1, 'December2013/shadow-faces.jpg', NULL, NULL, NULL, '', '', '2013-12-27 20:05:08', '2014-01-30 15:15:54', 0, 0),
(124, 1, 1, 'Oh Google...', 'oh-google', '', 1, 0, 1, 'December2013/oh-google.jpg', NULL, NULL, NULL, '', '', '2013-12-27 20:05:23', '2014-01-30 15:15:54', 0, 0),
(125, 1, 1, 'Poker is not for everyone', 'poker-is-not-for-everyone', '', 1, 0, 1, 'December2013/poker-is-not-for-everyone.jpg', NULL, NULL, NULL, '', '', '2013-12-27 20:05:49', '2014-01-30 15:15:54', 0, 0),
(126, 1, 1, 'In case of nothing to do...', 'in-case-of-nothing-to-do', '', 1, 0, 1, 'December2013/in-case-of-nothing-to-do.jpg', NULL, NULL, NULL, '', '', '2013-12-27 20:06:03', '2014-01-30 15:15:54', 0, 0),
(127, 1, 1, 'Life was much easier...', 'life-was-much-easier', '', 1, 0, 1, 'December2013/life-was-much-easier.jpg', NULL, NULL, NULL, '', '', '2013-12-27 20:06:19', '2014-01-30 15:15:54', 0, 0),
(128, 1, 1, 'well played son, well played', 'well-played-son-well-played', '', 1, 0, 1, 'December2013/well-played-son-well-played.jpg', NULL, NULL, NULL, '', '', '2013-12-27 20:06:35', '2014-01-30 15:15:54', 0, 0),
(129, 1, 1, 'Seat Savers', 'seat-savers', '', 1, 0, 1, 'December2013/seat-savers.jpg', NULL, NULL, NULL, '', '', '2013-12-27 20:06:52', '2014-01-30 15:15:54', 0, 0),
(130, 1, 1, 'Harry Potter on Facebook', 'harry-potter-on-facebook', '', 1, 0, 1, 'December2013/harry-potter-on-facebook.jpg', NULL, NULL, NULL, '', '', '2013-12-27 20:07:01', '2014-01-30 15:15:54', 0, 0),
(131, 1, 1, 'Donuts\\'' escalator', 'donuts-escalator', '', 1, 0, 1, 'December2013/donuts-escalator.jpg', NULL, NULL, NULL, '', '', '2013-12-27 20:07:16', '2014-01-30 15:15:54', 0, 0),
(132, 1, 1, 'Ctrl-V, Ctrl-X, Ctrl-Z', 'ctrl-v-ctrl-x-ctrl-z', '', 1, 0, 1, 'December2013/ctrl-v-ctrl-x-ctrl-z.jpg', NULL, NULL, NULL, '', '', '2013-12-27 20:07:29', '2014-01-30 15:15:54', 0, 0),
(133, 1, 1, 'Cleverness', 'cleverness', '', 1, 0, 1, 'December2013/cleverness.jpg', NULL, NULL, NULL, '', '', '2013-12-27 20:08:13', '2014-01-30 15:15:54', 0, 0),
(134, 1, 1, 'If condoms had sponsors', 'if-condoms-had-sponsors', '', 1, 0, 1, 'December2013/if-condoms-had-sponsors.jpg', NULL, NULL, NULL, '', '', '2013-12-27 20:08:42', '2014-01-30 15:15:54', 0, 0),
(135, 1, 1, 'Eggregation', 'eggregation', '', 1, 0, 1, 'December2013/eggregation.jpg', NULL, NULL, NULL, '', '', '2013-12-27 20:08:53', '2014-01-30 15:15:54', 0, 0),
(136, 1, 1, 'Banana Bedtime', 'banana-bedtime', '', 1, 0, 1, 'December2013/banana-bedtime.jpg', NULL, NULL, NULL, '', '', '2013-12-27 20:09:11', '2014-01-30 15:15:54', 0, 0),
(137, 1, 1, 'Just Dream :)', 'just-dream', '', 1, 0, 1, 'December2013/just-dream.jpg', NULL, NULL, NULL, '', '', '2013-12-27 20:09:25', '2014-01-30 15:15:54', 0, 0),
(138, 1, 1, 'Formula of iPad', 'formula-of-ipad', '', 1, 0, 1, 'December2013/formula-of-ipad.jpg', NULL, NULL, NULL, '', '', '2013-12-28 08:32:42', '2014-01-30 15:15:54', 0, 0),
(139, 1, 1, 'How to draw an owl', 'how-to-draw-an-owl', '', 1, 0, 1, 'December2013/how-to-draw-an-owl.jpg', NULL, NULL, NULL, '', '', '2013-12-28 08:33:10', '2014-01-30 15:15:54', 0, 0),
(140, 1, 1, 'FALLING (in love) ROCKS', 'falling-in-love-rocks', '', 1, 0, 1, 'December2013/falling-in-love-rocks.jpg', NULL, NULL, NULL, '', '', '2013-12-28 08:33:30', '2014-01-30 15:15:54', 0, 0),
(141, 1, 1, 'That\\''s my plan', 'that-s-my-plan', '', 1, 0, 1, 'December2013/thats-my-plan.jpg', NULL, NULL, NULL, '', '', '2013-12-28 08:33:48', '2014-01-30 15:15:54', 0, 0),
(142, 1, 1, 'What the flip...', 'what-the-flip', '', 1, 0, 1, 'December2013/what-the-flip.jpg', NULL, NULL, NULL, '', '', '2013-12-28 08:34:17', '2014-01-30 15:15:54', 0, 0),
(143, 1, 1, 'Blood Puddle Pillows', 'blood-puddle-pillows', '', 1, 0, 1, 'December2013/blood-puddle-pillows.jpg', NULL, NULL, NULL, '', '', '2013-12-28 08:36:03', '2014-01-30 15:15:54', 0, 0),
(144, 1, 31, 'Play Outside', 'play-outside', '', 1, 0, 1, 'December2013/play-outside.jpg', NULL, NULL, NULL, '', '', '2013-12-28 08:36:23', '2014-02-08 10:35:56', 0, 0),
(145, 1, 1, 'Uses of Google', 'uses-of-google', '', 1, 0, 1, 'December2013/uses-of-google.jpg', NULL, NULL, NULL, '', '', '2013-12-28 08:36:38', '2014-01-30 15:15:54', 0, 0),
(146, 1, 1, 'Heavy Metal', 'heavy-metal', '', 1, 0, 1, 'December2013/heavy-metal.jpg', NULL, NULL, NULL, '', '', '2013-12-28 08:37:02', '2014-01-30 15:15:54', 0, 0),
(147, 1, 1, 'Check out what I can do...', 'check-out-what-i-can-do', '', 1, 0, 1, 'December2013/check-out-what-i-can-do.jpg', NULL, NULL, NULL, '', '', '2013-12-28 08:37:22', '2014-01-30 15:15:54', 0, 0),
(148, 1, 1, 'Bitchin', 'bitchin', '', 1, 0, 1, 'December2013/bitchin.jpg', NULL, NULL, NULL, '', '', '2013-12-28 08:37:40', '2014-01-30 15:15:54', 0, 0),
(149, 1, 1, 'Passport!', 'passport', '', 1, 0, 1, 'December2013/passport.jpg', NULL, NULL, NULL, '', '', '2013-12-28 08:37:54', '2014-01-30 15:15:54', 0, 0),
(150, 1, 1, 'Say goodbye to your friends and get in the car...', 'say-goodbye-to-your-friends-and-get-in-the-car', '', 1, 0, 1, 'December2013/say-goodbye-to-your-friends-and-get-in-the-car.jpg', NULL, NULL, NULL, '', '', '2013-12-28 08:38:09', '2014-01-30 15:15:54', 0, 0),
(151, 1, 1, 'Kitty Ping Pong', 'kitty-ping-pong', '', 1, 0, 1, 'January2014/kitty-gif.gif', NULL, NULL, '', '', 'funny,kitty,ping pong,cute', '2014-01-03 21:01:29', '2014-01-30 15:15:54', 0, 0),
(152, 1, 1, 'Cool Ball Flip', 'cool-ball-flip', '', 1, 0, 1, 'January2014/cool-ball-flip.gif', NULL, NULL, '', '', 'gif,cool ball flip,exercise ball', '2014-01-03 22:10:10', '2014-01-30 15:15:54', 0, 0),
(153, 1, 1, 'Alone In The Dark', 'alone-in-the-dark', '', 1, 0, 1, 'January2014/alone-in-the-dark.jpg', NULL, NULL, '', '', 'funny,black guys', '2014-01-03 22:12:40', '2014-01-30 15:15:54', 0, 0),
(154, 1, 1, 'Freedom of Speech', 'freedom-of-speech', '', 1, 0, 1, 'January2014/freedom-of-speech.jpg', NULL, NULL, '', '', 'freedom of speech,kids drawing,homework', '2014-01-03 22:14:13', '2014-01-30 15:15:54', 0, 0),
(156, 1, 1, 'Rainbow in your hand', 'rainbow-in-your-hand', '', 1, 0, 1, 'January2014/rainbow-in-your-hand.jpg', NULL, NULL, '', '', 'rainbow,cards,flipcards', '2014-01-03 22:16:19', '2014-01-30 15:15:54', 0, 0),
(157, 1, 1, 'I need some space', 'i-need-some-space', '', 1, 0, 1, 'January2014/i-need-some-space.jpg', NULL, NULL, '', '', 'cartoon,keyboard,characters', '2014-01-03 22:17:04', '2014-01-30 15:15:54', 0, 0),
(158, 1, 1, 'It\\''s too late...', 'it-s-too-late', '', 1, 0, 1, 'January2014/its-too-late.jpg', NULL, NULL, '', '', 'funny,food,egg,chicken', '2014-01-03 22:18:06', '2014-01-30 15:15:54', 0, 0),
(159, 1, 1, 'Pizza Cat', 'pizza-cat', '', 1, 0, 1, 'January2014/pizza-cat.jpg', NULL, NULL, '', '', 'pizza,food,cat', '2014-01-03 22:18:51', '2014-01-30 15:15:54', 0, 0),
(160, 1, 1, 'Space Saving Sofa Bed', 'space-saving-sofa-bed', '', 1, 0, 1, 'January2014/52ceb86074c03-space-saving-sofa-bed.jpg.jpg', NULL, NULL, '', '', 'couch,cool,space saving,transform', '2014-01-09 07:55:28', '2014-01-30 15:15:54', 0, 0),
(162, 1, 1, 'Guillotine Bowling Alley', 'guillotine-bowling-alley', '', 1, 0, 1, 'January2014/52ceb8f06dc47-guillotine-bowling-alley.jpg.jpg', NULL, NULL, '', '', 'guillotine,bowling', '2014-01-09 07:57:52', '2014-01-30 15:15:54', 0, 0),
(163, 1, 1, 'It\\''s A Boy!', 'it-s-a-boy', '', 1, 0, 1, 'January2014/its-a-boy.jpg', NULL, NULL, '', '', 'card,funny,babies', '2014-01-09 07:58:21', '2014-01-30 15:15:54', 0, 0),
(164, 1, 1, 'Secrets of the Warp Whistle', 'secrets-of-the-warp-whistle', '', 1, 0, 1, 'January2014/secrets-of-the-warp-whistle.jpg', NULL, NULL, '', '', 'mario,warp whistle,games', '2014-01-09 07:59:15', '2014-01-30 15:15:54', 0, 0),
(165, 1, 1, 'A common work occurrence', 'a-common-work-occurrence', '', 1, 0, 1, 'January2014/a-common-work-occurrence.jpg', NULL, NULL, '', '', 'funny,computer,music', '2014-01-09 08:00:16', '2014-01-30 15:15:54', 0, 0),
(166, 1, 1, 'Real Life Cartoon Boy', 'real-life-cartoon-boy', '', 1, 0, 1, 'January2014/real-life-cartoon-boy.jpg', NULL, NULL, '', '', 'up,movie', '2014-01-09 08:00:50', '2014-01-30 15:15:54', 0, 0),
(167, 1, 1, 'Timone and Pumba', 'timone-and-pumba', '', 1, 0, 1, 'January2014/timone-and-pumba.jpg', NULL, NULL, '', '', 'lion king,timone,pumba', '2014-01-09 08:01:18', '2014-01-30 15:15:54', 0, 0),
(168, 1, 1, 'This is how phobias begin', 'this-is-how-phobias-begin', '', 1, 0, 1, 'January2014/this-is-how-phobias-begin.jpg', NULL, NULL, '', '', 'easter,creepy,phobias', '2014-01-09 08:02:11', '2014-01-30 15:15:54', 0, 0),
(169, 1, 1, 'Back in my day...', 'back-in-my-day', '', 1, 0, 1, 'January2014/back-in-my-day.jpg', NULL, NULL, '', '', 'ipod,music', '2014-01-09 08:03:00', '2014-01-30 15:15:54', 0, 0),
(170, 1, 1, 'Flower Skirt', 'flower-skirt', '', 1, 0, 1, 'January2014/flower-skirt.jpg', NULL, NULL, '', '', 'flower,skirt,flower skirt', '2014-01-09 08:03:52', '2014-01-30 15:15:54', 0, 0),
(171, 1, 32, 'This music smells funny', 'this-music-smells-funny', '', 1, 0, 1, 'January2014/this-music-smells-funny.jpg', NULL, NULL, '', '', 'simpsons,cartoon,funny', '2014-01-28 08:26:02', '2014-01-30 15:15:54', 0, 0),
(172, 1, 2, 'Light me up!', 'light-me-up', '', 1, 0, 1, 'January2014/light-me-up.jpg', NULL, NULL, '', '', 'cigarette,lighter,bird,smoke', '2014-01-28 08:30:52', '2014-01-30 15:15:54', 0, 0),
(173, 1, 1, 'Bubble Pop', 'bubble-pop', '', 1, 0, 1, 'January2014/bubble-pop.jpg', NULL, NULL, '', '', 'bubble,pop,slow motion', '2014-01-28 08:34:22', '2014-01-30 15:15:54', 0, 0),
(174, 1, 32, 'The Pug Factory', 'the-pug-factory', '', 1, 0, 1, 'January2014/the-pug-factory.jpg', NULL, NULL, '', '', 'pugs,dogs,funny,cartoon', '2014-01-28 08:37:12', '2014-01-30 15:15:54', 0, 0),
(175, 1, 32, 'Conspiracy', 'conspiracy', '', 1, 0, 1, 'January2014/conspiracy.jpg', NULL, NULL, '', '', 'funny,fridge,conspiracy,toe', '2014-01-28 08:38:32', '2014-01-30 15:15:54', 0, 0),
(176, 1, 1, 'R2D2 Snowman', 'r2d2-snowman', '', 1, 0, 1, 'January2014/r2d2-snowman.jpg', NULL, NULL, '', '', 'snow,snowman', '2014-01-28 08:40:03', '2014-01-30 15:15:54', 0, 0),
(177, 1, 29, 'Skate or Die', 'skate-or-die', '', 1, 0, 1, 'January2014/skate-or-die.jpg', NULL, NULL, '', '', 'skate,fall,hurt,injury', '2014-01-28 08:41:32', '2014-01-30 15:15:54', 0, 0),
(178, 1, 36, 'The power of Christ compels you!', 'the-power-of-christ-compels-you', '', 1, 0, 1, 'January2014/the-power-of-christ-compels-you.jpg', NULL, NULL, '', '', 'funny,family photo,funny kid', '2014-01-28 09:01:54', '2014-01-30 15:15:54', 0, 0),
(179, 1, 35, 'Dumb and Dumber - Inception Style', 'dumb-and-dumber-inception-style', '', 1, 1, 1, 'January2014/dumb-and-dumber---inception-style.jpg', NULL, NULL, 'http://www.youtube.com/watch?v=zLDx-BPgxxA', '', 'dumb & dumber,remake,inception', '2014-01-28 09:02:46', '2014-01-30 15:15:54', 0, 0),
(180, 1, 35, 'Pick a vowel?', 'pick-a-vowel', '', 1, 0, 1, 'January2014/pick-a-vowel.jpg', NULL, NULL, '', '', 'scrubs,tv show', '2014-01-28 09:03:59', '2014-01-30 15:15:54', 0, 0),
(181, 1, 1, 'Go Go Gadget Mailbox', 'go-go-gadget-mailbox', '', 1, 0, 1, 'January2014/go-go-gadget-mailbox.jpg', NULL, NULL, '', '', 'mailbox,ghetto rig', '2014-01-28 09:04:51', '2014-01-30 15:15:54', 0, 0),
(182, 1, 2, 'Yodawg!', 'yodawg', '', 1, 0, 1, 'January2014/yodawg.jpg', NULL, NULL, '', '', 'yoda,dog,costume', '2014-01-28 09:05:58', '2014-01-30 15:15:54', 0, 0),
(184, 1, 2, 'Can I hold him?', 'can-i-hold-him', '', 1, 0, 1, 'January2014/can-i-hold-him.jpg', NULL, NULL, '', '', 'pig,bacon,funny', '2014-01-30 20:56:28', '2014-01-30 20:56:28', 0, 0),
(185, 1, 2, 'A dog towing a cat, towing a rat no, really', 'a-dog-towing-a-cat-towing-a-rat-no-really', '', 1, 0, 1, 'January2014/a-dog-towing-a-cat-towing-a-rat-no-really.jpg', NULL, NULL, '', '', 'dog,cat,rat,towing', '2014-01-30 20:57:47', '2014-01-30 20:57:47', 0, 0),
(186, 1, 1, 'BATMAAN!', 'batmaan', '', 1, 0, 1, 'January2014/batmaan.jpg', NULL, NULL, '', '', 'batman', '2014-01-30 21:01:51', '2014-01-30 21:01:51', 0, 0),
(187, 1, 32, 'Everybody Loves WiFi', 'everybody-loves-wifi', '', 1, 0, 1, 'January2014/everybody-loves-wifi.jpg', NULL, NULL, '', '', 'wifi,frog,alligator', '2014-01-30 21:04:23', '2014-01-30 21:04:23', 0, 0),
(188, 1, 2, 'Awwww.....now I can go to sleep....', 'awwww-now-i-can-go-to-sleep', '', 1, 0, 1, 'January2014/awwwwnow-i-can-go-to-sleep.jpg', NULL, NULL, '', '', 'cat,sleep,kitten', '2014-01-30 21:05:49', '2014-01-30 21:05:49', 0, 0),
(189, 1, 35, 'Pool Jumpers Trailer', 'pool-jumpers-trailer', '', 1, 1, 1, 'January2014/pool-jumpers-trailer.jpg', NULL, NULL, 'http://www.youtube.com/watch?v=5GIZ3cN4JwA', '', 'trailer,pool jumpers,pools', '2014-01-30 21:09:40', '2014-01-30 21:09:40', 0, 0),
(190, 1, 2, 'Slowest Reader Ever', 'slowest-reader-ever', '', 1, 0, 1, 'January2014/slowest-reader-ever.jpg', NULL, NULL, '', '', 'cat,reading,book', '2014-01-30 21:10:45', '2014-01-30 21:10:45', 0, 0),
(191, 1, 1, 'Fire Dragon... literally', 'fire-dragon-literally', '', 1, 0, 1, 'January2014/fire-dragon-literally.jpg', NULL, NULL, '', '', 'fire,dragon', '2014-01-30 21:13:52', '2014-01-30 21:13:52', 0, 0),
(192, 1, 37, 'Harvard Sailing Team - Boys Will Be Girls ', 'harvard-sailing-team-boys-will-be-girls', '', 1, 1, 1, 'January2014/harvard-sailing-team---boys-will-be-girls.jpg', NULL, NULL, 'http://www.youtube.com/watch?v=gspaoaecNAg', '', 'harvard,sailing,sailing team,funny', '2014-01-30 21:15:55', '2014-01-30 21:15:55', 0, 0),
(193, 1, 2, 'Rest up, little buddy.', 'rest-up-little-buddy', '', 1, 0, 1, 'January2014/rest-up-little-buddy.jpg', NULL, NULL, '', '', 'kitten,cast,cute,cat,hurt', '2014-01-30 21:17:03', '2014-01-30 21:17:03', 0, 0),
(194, 1, 2, 'Stealth Mode', 'stealth-mode', '', 1, 0, 1, 'January2014/stealth-mode.jpg', NULL, NULL, '', '', 'food,steal,stealth,cat', '2014-01-30 21:18:35', '2014-01-30 21:18:35', 0, 0),
(195, 1, 38, 'It''s ok, truck. Things will get better.', 'it-s-ok-truck-things-will-get-better', '', 1, 0, 1, 'January2014/its-ok-truck-things-will-get-better.jpg', NULL, NULL, '', '', 'vehicle,truck,sad', '2014-01-30 21:20:51', '2014-01-30 21:20:51', 0, 0),
(196, 1, 34, 'Book Cave', 'book-cave', '', 1, 0, 1, 'January2014/book-cave.jpg', NULL, NULL, '', '', 'books,cave,bookshelf', '2014-01-30 21:23:03', '2014-01-30 21:23:03', 0, 0),
(197, 1, 34, 'Invisible Bookshelf', 'invisible-bookshelf', '', 1, 0, 1, 'January2014/invisible-bookshelf.jpg', NULL, NULL, '', '', 'books,bookshelf', '2014-01-30 21:23:36', '2014-01-30 21:23:36', 0, 0),
(198, 1, 1, 'Awesome...', 'awesome', '', 1, 0, 1, 'January2014/awesome.jpg', NULL, NULL, '', '', 'outside,drive-in,theater', '2014-01-30 21:25:05', '2014-01-30 21:25:05', 0, 0),
(199, 1, 2, 'I have the same look when I get to sleep in', 'i-have-the-same-look-when-i-get-to-sleep-in', '', 1, 0, 1, 'January2014/i-have-the-same-look-when-i-get-to-sleep-in.jpg', NULL, NULL, '', '', 'pig,blanket,sleep,cute', '2014-01-30 21:26:17', '2014-01-30 21:26:17', 0, 0),
(200, 1, 1, 'Bare Necessities', 'bare-necessities', '', 1, 0, 1, 'January2014/bare-necessities.jpg', NULL, NULL, '', '', 'old school,nintendo,pizza', '2014-01-30 21:26:57', '2014-01-30 21:26:57', 0, 0),
(201, 1, 1, 'Brain Transplant', 'brain-transplant', '', 1, 0, 1, 'January2014/brain-transplant.jpg', NULL, NULL, '', '', 'brain transplant,brain,gummy bear,candy', '2014-01-30 21:28:35', '2014-01-30 21:28:35', 0, 0),
(204, 1, 39, 'Diet Coke Ninjas', 'diet-coke-ninjas', '', 1, 0, 1, 'January2014/diet-coke-ninjas.jpg', NULL, NULL, '', '', 'coke,ninjas', '2014-01-30 21:46:31', '2014-01-30 21:46:31', 0, 0),
(205, 1, 1, 'The additional sign was necessary', 'the-additional-sign-was-necessary', '', 1, 0, 1, 'January2014/the-additional-sign-was-necessary.jpg', NULL, NULL, '', '', 'batman,atm,sign', '2014-01-30 21:51:12', '2014-01-30 21:51:12', 0, 0),
(206, 1, 2, 'Raphael is Real', 'raphael-is-real', '', 1, 0, 1, 'January2014/raphael-is-real.jpg', NULL, NULL, '', '', 'ninja turtles,turtle,raphael,teenage mutant ninja turtles', '2014-01-30 21:52:34', '2014-01-30 21:52:34', 0, 0),
(210, 1, 2, 'Today Has Been Ruff', 'today-has-been-ruff', '', 1, 0, 1, 'February2014/today-has-been-ruff.jpg', NULL, NULL, '', '', 'funny,couch,dog', '2014-02-02 18:36:30', '2014-02-02 18:36:30', 0, 0),
(211, 1, 2, 'The Pug Life', 'the-pug-life', '', 1, 1, 1, 'February2014/the-pug-life.jpg', NULL, NULL, 'https://vine.co/v/hWvK0WqFWKp/embed', '', 'funny,dog,pug,thug life', '2014-02-02 19:03:41', '2014-02-02 19:03:41', 0, 0),
(212, 1, 40, 'Nintendo Bed', 'nintendo-bed', '', 1, 0, 1, 'February2014/nintendo-bed.jpg', NULL, NULL, '', '', 'nintendo,bed', '2014-02-03 21:39:09', '2014-02-03 21:39:09', 0, 0),
(213, 1, 32, 'Hate it when this happens!', 'hate-it-when-this-happens', '', 1, 0, 1, 'February2014/hate-it-when-this-happens.jpg', NULL, NULL, '', '', 'potato head,pee,urinal', '2014-02-03 21:39:59', '2014-02-03 21:39:59', 0, 0),
(214, 1, 2, 'Must be Monday', 'must-be-monday', '', 1, 0, 1, 'February2014/must-be-monday.gif', NULL, NULL, '', '', 'funny,dog,puppies,fall', '2014-02-08 09:58:11', '2014-02-08 09:58:11', 0, 0),
(215, 1, 39, 'Breakfast for One', 'breakfast-for-one', '', 1, 0, 1, 'February2014/breakfast-for-one.jpg', NULL, NULL, '', '', 'pan,solo,hans solo,pan solo', '2014-02-08 10:15:06', '2014-02-08 10:15:06', 0, 0),
(216, 1, 31, 'Highlight Anything Stupid', 'highlight-anything-stupid', '', 1, 0, 1, 'February2014/highlight-anything-stupid.jpg', NULL, NULL, '', '', 'xkcd,hightlighter,final project,comic', '2014-02-08 10:31:12', '2015-11-15 06:21:29', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `media_flags`
--

CREATE TABLE IF NOT EXISTS `media_flags` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_likes`
--

CREATE TABLE IF NOT EXISTS `media_likes` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
`id` int(10) unsigned NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `is_read` int(11) NOT NULL,
  `url_comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_facebook`
--

CREATE TABLE IF NOT EXISTS `oauth_facebook` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `oauth_userid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_google`
--

CREATE TABLE IF NOT EXISTS `oauth_google` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `oauth_userid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `show_in_menu` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reminders`
--

CREATE TABLE IF NOT EXISTS `password_reminders` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE IF NOT EXISTS `plugins` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugin_data`
--

CREATE TABLE IF NOT EXISTS `plugin_data` (
`id` int(10) unsigned NOT NULL,
  `plugin_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE IF NOT EXISTS `points` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`id`, `user_id`, `points`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 200, 'Registration', '2015-11-15 06:21:18', '2015-11-15 06:21:18');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
`id` int(10) unsigned NOT NULL,
  `website_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `theme` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fb_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fb_secret_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_page_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_secret_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_page_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter_page_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_title_length` int(11) NOT NULL,
  `auto_approve_posts` tinyint(1) NOT NULL,
  `custom_css` text COLLATE utf8_unicode_ci NOT NULL,
  `like_icon` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `secondary_color` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `primary_color` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `square_ad` text COLLATE utf8_unicode_ci NOT NULL,
  `color_scheme` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'light',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `analytics` text COLLATE utf8_unicode_ci NOT NULL,
  `user_registration` tinyint(1) NOT NULL DEFAULT '1',
  `infinite_scroll` tinyint(1) NOT NULL DEFAULT '1',
  `random_bar_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `media_description` tinyint(1) NOT NULL DEFAULT '0',
  `inbetween_ads` text COLLATE utf8_unicode_ci,
  `inbetween_ads_repeat` int(11) NOT NULL DEFAULT '5',
  `enable_watermark` tinyint(1) NOT NULL DEFAULT '0',
  `watermark_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'watermark.png',
  `watermark_position` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'bottom-right',
  `watermark_offset_x` int(11) NOT NULL DEFAULT '0',
  `watermark_offset_y` int(11) NOT NULL DEFAULT '0',
  `pages_in_menu` tinyint(1) NOT NULL DEFAULT '1',
  `pages_in_menu_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'More',
  `infinite_load_btn` tinyint(1) NOT NULL DEFAULT '0',
  `captcha` tinyint(1) NOT NULL DEFAULT '0',
  `captcha_public_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `captcha_private_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `custom_js` text COLLATE utf8_unicode_ci NOT NULL,
  `system_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'email@email.com'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `website_name`, `website_description`, `logo`, `favicon`, `theme`, `fb_key`, `fb_secret_key`, `facebook_page_id`, `google_key`, `google_secret_key`, `google_page_id`, `twitter_page_id`, `post_title_length`, `auto_approve_posts`, `custom_css`, `like_icon`, `secondary_color`, `primary_color`, `square_ad`, `color_scheme`, `created_at`, `updated_at`, `analytics`, `user_registration`, `infinite_scroll`, `random_bar_enabled`, `media_description`, `inbetween_ads`, `inbetween_ads_repeat`, `enable_watermark`, `watermark_image`, `watermark_position`, `watermark_offset_x`, `watermark_offset_y`, `pages_in_menu`, `pages_in_menu_text`, `infinite_load_btn`, `captcha`, `captcha_public_key`, `captcha_private_key`, `custom_js`, `system_email`) VALUES
(1, 'Ninja Media Script', 'Viral Fun Media Sharing Script', 'logo.png', 'favicon.png', '', '', '', 'envato', '', '', '+envato', 'envato', 0, 1, '', 'fa-thumbs-o-up', '#12c3ee', '#ee222e', '', 'light', '0000-00-00 00:00:00', '2014-01-03 17:08:17', '', 1, 1, 0, 0, NULL, 5, 0, 'watermark.png', 'bottom-right', 0, 0, 1, 'More', 0, 0, '', '', '', 'email@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `admin`, `active`, `email`, `password`, `avatar`, `created_at`, `updated_at`, `activation_code`, `remember_token`) VALUES
(1, 'admin', 1, 1, 'admin@gmail.com', '$2y$08$VZkXgUu8PIROzAJeJ2PUZuYm..epbGaGCi0.hrKQPBogjO1YpbGiK', 'default.jpg', '2015-11-15 06:21:18', '2015-11-15 06:21:18', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `user_flags`
--

CREATE TABLE IF NOT EXISTS `user_flags` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_flagged_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_flags`
--
ALTER TABLE `comment_flags`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_votes`
--
ALTER TABLE `comment_votes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_flags`
--
ALTER TABLE `media_flags`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_likes`
--
ALTER TABLE `media_likes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_facebook`
--
ALTER TABLE `oauth_facebook`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_google`
--
ALTER TABLE `oauth_google`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reminders`
--
ALTER TABLE `password_reminders`
 ADD KEY `password_reminders_email_index` (`email`), ADD KEY `password_reminders_token_index` (`token`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plugin_data`
--
ALTER TABLE `plugin_data`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_flags`
--
ALTER TABLE `user_flags`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comment_flags`
--
ALTER TABLE `comment_flags`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comment_votes`
--
ALTER TABLE `comment_votes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=217;
--
-- AUTO_INCREMENT for table `media_flags`
--
ALTER TABLE `media_flags`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `media_likes`
--
ALTER TABLE `media_likes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oauth_facebook`
--
ALTER TABLE `oauth_facebook`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oauth_google`
--
ALTER TABLE `oauth_google`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plugins`
--
ALTER TABLE `plugins`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plugin_data`
--
ALTER TABLE `plugin_data`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_flags`
--
ALTER TABLE `user_flags`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
