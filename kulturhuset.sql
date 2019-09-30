-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 30, 2019 at 06:02 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `kulturhuset`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `events_title` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `events_title`) VALUES
(1, 'Dances', ''),
(2, 'Movies', ''),
(3, 'Music', ''),
(6, 'Workshops', ''),
(7, 'Garage Sale', ''),
(8, 'Courses', '');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `time` datetime NOT NULL,
  `duration` varchar(30) NOT NULL,
  `news` text NOT NULL,
  `events_title` text NOT NULL,
  `events_images` varchar(45) NOT NULL,
  `location` text NOT NULL,
  `price` varchar(45) DEFAULT NULL,
  `categories_id` int(11) NOT NULL,
  `images` varchar(45) NOT NULL,
  `movies_images` varchar(45) NOT NULL,
  `news_image` varchar(45) NOT NULL,
  `movies_title` varchar(45) NOT NULL,
  `quantity` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `time`, `duration`, `news`, `events_title`, `events_images`, `location`, `price`, `categories_id`, `images`, `movies_images`, `news_image`, `movies_title`, `quantity`, `username`, `password`) VALUES
(1, 'Dances', '2019-06-18 18:30:00', '1 hour', '1. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Dans På Bryggen', 'dans_bryggen.jpg', '\nIslands Brygge 18\n2300 København S\nDanmark ', '200 DKK', 1, 'dance.jpg', 'blade_runner.jpg', 'kulturhuset_2.jpg', 'Blade Runner', '1', 'admin', '1234'),
(2, 'Movies', '2017-06-07 21:00:00', '1 hour', '2. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Toves Tango', 'toves_tango.jpg', '\nIslands Brygge 18\n2300 København S\nDanmark ', '200 DKK', 2, 'movie.jpeg', 'teen_wolf.jpg', '', 'Teen Wolf', '2', '', ''),
(3, 'Music', '2017-01-29 10:00:00', '1 hour', '3. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Jungletrommer og Dans For Børn', 'jungle_trommer.jpg', '\nIslands Brygge 18\n2300 København S\nDanmark', '200 DKK', 3, 'music.jpeg', 'black_panther.jpg', '', 'Black Panther', '3', '', ''),
(4, 'Workshops', '2019-08-10 20:00:00', '1 hour', '4. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Salsa Jam & Social Mambo', 'salsa_jam.png', '\nIslands Brygge 18\n2300 København S\nDanmark', '200 DKK', 6, 'workshop.jpeg', 'anchorman_2.jpg', '', 'Anchorman', '4', '', ''),
(5, 'Garage Sale', '2019-03-05 20:30:00', '1 hour', '5. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lama Improteater', 'lama_improteater.jpg', '\nIslands Brygge 18\n2300 København S\nDanmark ', '200 DKK', 7, 'garage_sale.jpeg', 'avengers_endgame.jpg', '', 'Avengers Endgame', '5', '', ''),
(6, 'Courses', '2019-09-12 19:00:00', '1 hour', '6. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Salsa & Bachata Social', 'salsabine.png', '\nIslands Brygge 18\n2300 København S\nDanmark ', '200 DKK', 8, 'courses.jpg', 'rampage.jpg', '', 'Rampage', '6', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_categories_idx_idx` (`categories_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `fk_categories_idx` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
