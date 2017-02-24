-- phpMyAdmin SQL Dump
-- version 4.2.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 24, 2016 at 07:14 PM
-- Server version: 5.6.20
-- PHP Version: 5.6.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Bootstrap'),
(2, 'Javascript'),
(3, 'PHP'),
(9, 'JAVA');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
`comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(1, 10, 'Teslim Ade', 'teslim@teslim.com', 'Yea I know I dont have anything to say. But I know I have to say something.', 'unapproved', '2016-04-21'),
(2, 10, 'teslim', 'teslim@teslim.com', 'Yea I can see it right nw', 'approved', '2016-04-27'),
(5, 1, 'Amina', 'amina@teslim.com', 'Ok oo. Now we know.', 'approved', '2016-04-27'),
(8, 11, 'Aisha', 'Aisha@aisha.com', 'Hmm. Good to know!', 'approved', '2016-04-27'),
(17, 1, 'teslim', 'teslim@teslim.com', 'wow. i hear', 'approved', '2016-04-27'),
(21, 1, 'Aisha', 'Aisha@aisha.com', 'hey ', 'approved', '2016-04-27'),
(22, 1, 'Amina', 'amina@teslim.com', 'Woohooo.', 'approved', '2016-04-27'),
(36, 11, 'teslim', 'teslim@teslim.com', 'hello girl!', 'approved', '2016-04-27'),
(37, 11, '', '', '', 'unapprove', '2016-04-27'),
(38, 1, '', '', '', 'unapprove', '2016-05-21'),
(39, 1, '', '', '', 'unapprove', '2016-05-21'),
(40, 1, '', '', '', 'unapprove', '2016-05-21'),
(41, 1, '', '', '', 'unapprove', '2016-05-21'),
(42, 1, '', '', '', 'unapprove', '2016-05-21'),
(43, 10, '', '', '', 'unapprove', '2016-05-21'),
(44, 15, '', '', '', 'unapprove', '2016-05-21');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) DEFAULT NULL,
  `post_status` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(1, 1, 'PHP CMS Courses', 'Teslim Adeyemo', '2016-05-07', 'tesmina.png', '			I really enjoy making this CMS																																																																', 'teslim, cms, php, javascript, oop', 21, 'published'),
(10, 3, 'PHP Course Post', 'Amina', '2016-05-07', 'Desert.jpg', '			I like writing great posts. Any body interested in developing his/her writing skills?\r\n\r\n		', 'php', 6, 'published'),
(11, 1, 'PHP and MYSQL Course', 'Tesmina', '2016-05-21', 'image_1.jpg', '									This content should appear now that I have fixed some things.												', 'php', 7, 'published'),
(12, 3, 'Example Post', 'Aisha', '2016-05-07', 'Penguins.jpg', '									Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.						', 'php, diaz', 4, 'published'),
(13, 1, 'For JavaScript Categorisation', 'Halima', '2016-05-21', 'Koala.jpg', '																		Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales at. Nulla tellus elit, varius non commodo eget, mattis vel eros. In sed ornare nulla. Donec consectetur, velit a pharetra ultricies, diam lorem lacinia risus, ac commodo orci erat eu massa. Sed sit amet nulla ipsum. Donec felis mauris, vulputate sed tempor at, aliquam a ligula. Pellentesque non pulvinar nisi.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales at. Nulla tellus elit, varius non commodo eget, mattis vel eros. In sed ornare nulla. Donec consectetur, velit a pharetra ultricies, diam lorem lacinia risus, ac commodo orci erat eu massa. Sed sit amet nulla ipsum. Donec felis mauris, vulputate sed tempor at, aliquam a ligula. Pellentesque non pulvinar nisi.												', 'javascript, programming', 4, 'published'),
(14, 1, 'Great Writings Are Simple', 'Teslim Adeyemo', '2016-05-21', 'Hydrangeas.jpg', '			Now I am a web developer. What do you think?		', 'writing', NULL, 'published'),
(15, 1, 'My Other Post', 'PHP Guy', '2016-05-21', 'Jellyfish.jpg', '						This is a new post men.				', 'php', NULL, 'draft');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(2, 'amina', '123', 'Amina', 'Teslim', 'aminata@gmail.com', '', 'admin', ''),
(3, 'wilo', '123', 'Wilooo', 'Olaolaaa', 'wiloman@gmail.com', '', 'subscriber', ''),
(4, 'aisha', '123', 'Aisha', 'Ahmed', 'aisha@ahmed.com', '', 'admin', ''),
(5, 'lyly', '123', 'Halima', 'Ahmed', 'lyly@ahmed.com', '', 'subscriber', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
 ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
