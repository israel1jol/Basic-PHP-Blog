-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2021 at 02:21 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sampleblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Technology'),
(2, 'Sports'),
(3, 'Fashion'),
(4, 'Business'),
(5, 'Health');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `created_by` varchar(20) NOT NULL DEFAULT 'guest',
  `msg` varchar(100) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `created_by`, `msg`, `post_id`, `created_at`) VALUES
(1, 'guest', 'keep it up', 1, '2021-08-13'),
(2, 'guest', 'proud of you', 2, '2021-08-13'),
(3, 'guest', 'Nice Article', 3, '2021-08-13'),
(4, 'todd', 'how does django store session data', 1, '2021-08-13'),
(7, 'Guest', 'nice article', 1, '2021-08-13'),
(9, 'Guest', 'noice', 1, '2021-08-14'),
(8, 'Guest', 'i want more like this', 1, '2021-08-13');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `user-id` varchar(13) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `user-id`, `created_at`, `category_id`) VALUES
(1, 'How to use Django\'s Built in Authentication Views', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?', 'b7fcc5322113f', '2021-08-13', 1),
(2, 'How Usain Bolt became a Role Model to young athlet', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?', 'b7fcc5322113f', '2021-08-13', 2),
(3, 'Are capr-pants still in Season?', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?', 'b7fcc5322113f', '2021-08-13', 3),
(4, 'How the tech start-up Figma became worth billions', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?', 'b7fcc5322113f', '2021-08-13', 4),
(5, 'Benefits of Jogging every morning ', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?', 'b7fcc5322113f', '2021-08-13', 5),
(6, 'Best PHP Frameworks in 2021', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?', 'b7fcc5322113f', '2021-08-13', 1),
(7, 'Everything you need to know about the 2021 Tokyo O', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?', 'b7fcc5322113f', '2021-08-13', 2),
(8, 'How to invest in Cryptocurrency', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?', 'b7fcc5322113f', '2021-08-13', 4),
(9, 'Guide to becoming a FullStack Developer in 2021', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?', 'b7fcc5322113f', '2021-08-13', 1),
(10, 'Steps to living a Healthy and Nourished Life', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?     Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse ab commodi fuga dolorem itaque! Pariatur dicta commodi voluptates natus, unde magnam quasi adipisci ipsa quas deleniti harum ea recusandae quae?', 'b7fcc5322113f', '2021-08-13', 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(13) NOT NULL,
  `username` varchar(50) NOT NULL,
  `userpwd` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `userpwd`) VALUES
('b7fcc5322113f', 'israel', '040d97bebf2972f61b6f730fc438b47d');

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
