-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2024 at 06:03 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `firstname`, `lastname`, `username`, `email`, `password`) VALUES
(1, 'Junard', 'Romanillos', 'Junard123', 'junard@gmail.com', '$2y$10$ADn.3NzhQGP5b14AmuwbB.NTBf1KQgT7vhX/DiK5HMwI7IoqCix32');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `author_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_id`, `user_id`, `username`) VALUES
(1, 1, 'junard'),
(2, 2, 'dud2'),
(3, 3, 'jay123');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `category_name`) VALUES
(1, 'Science'),
(2, 'Technology'),
(3, 'Literature');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `commentdate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment`, `user_id`, `post_id`, `commentdate`) VALUES
(2, 'YO!!!', 2, 1, '2023-12-03'),
(7, 'Hello.', 2, 19, '2023-12-11'),
(18, 'shit', 3, 1, '2023-12-26'),
(20, 'eyyy', 1, 1, '2023-12-30'),
(21, 'wut', 1, 15, '2023-12-30'),
(23, 'Wow', 1, 2, '2023-12-30'),
(24, 'holy shit!!', 1, 2, '2023-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `like_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `likedate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`like_id`, `post_id`, `user_id`, `likedate`) VALUES
(130, 1, 1, '2023-12-17'),
(159, 2, 2, '2023-12-17'),
(160, 15, 2, '2023-12-17'),
(162, 1, 3, '2023-12-20'),
(163, 2, 3, '2023-12-20'),
(164, 15, 3, '2023-12-20'),
(165, 20, 3, '2023-12-20'),
(166, 21, 1, '2023-12-24'),
(167, 1, 2, '2023-12-26'),
(168, 20, 1, '2023-12-30'),
(170, 15, 1, '2023-12-30'),
(171, 2, 1, '2023-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `user_id`, `message`, `date`) VALUES
(14, 0, 'hey', '2023-12-29'),
(15, 1, 'hello', '2023-12-31'),
(20, 2, 'Hi', '2023-12-31'),
(21, 3, 'Mornin\'', '2023-12-31'),
(22, 3, 'Sup bros.', '2023-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(25) NOT NULL,
  `details` text NOT NULL,
  `cat_id` int(11) NOT NULL,
  `publish` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `cover_url` varchar(255) NOT NULL,
  `publish_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `details`, `cat_id`, `publish`, `author_id`, `cover_url`, `publish_date`) VALUES
(1, 'The Spider', 'orem ipsum dolor sit amet consectetur adipisicing elit. Optio amet sunt fugiat cumque sapiente nobis iusto sit distinctio odio rerum dolores molestiae perferendis et hic ullam maiores repellat, cupiditate soluta?', 1, 1, 1, 'assets/img/upload/YeahMonsterBoys.png', '2023-11-21 12:11:14'),
(2, 'Aetherial', 'orem ipsum dolor sit amet consectetur adipisicing elit. Optio amet sunt fugiat cumque sapiente nobis iusto sit distinctio odio rerum dolores molestiae perferendis et hic ullam maiores repellat, cupiditate soluta?', 2, 1, 2, 'assets/img/upload/61bbd1a9a48c53e4cfe48f99b0ac0d31.jpg', '2023-11-21 12:53:11'),
(15, 'Recycle', 'orem ipsum dolor sit amet consectetur adipisicing elit. Optio amet sunt fugiat cumque sapiente nobis iusto sit distinctio odio rerum dolores molestiae perferendis et hic ullam maiores repellat, cupiditate soluta?', 3, 1, 1, 'assets/img/upload/images (3).jpeg', '2023-12-09 15:56:19'),
(16, 'Stellar', 'orem ipsum dolor sit amet consectetur adipisicing elit. Optio amet sunt fugiat cumque sapiente nobis iusto sit distinctio odio rerum dolores molestiae perferendis et hic ullam maiores repellat, cupiditate soluta?', 1, 0, 2, 'assets/img/upload/568446.jpg', '2023-12-09 20:26:41'),
(20, 'Instellar', 'ipaispaoapsx joaskaljskxja lksxlaksxla jshxa jshashasuh kjkjbkjbk', 2, 1, 3, 'assets/img/upload/568448.jpg', '2023-12-20 22:47:02'),
(21, 'Cool Bug Facts', 'ONE DAY YOU WILL HAVE TO ANSWER FOR ALL YOUR ACTIONS.\r\n.\r\n.\r\nAND GOD WILL NOT BE SO MERCIFUL.', 1, 1, 2, 'assets/img/upload/images (6).jpg', '2023-12-24 21:14:54'),
(22, 'The Fae Folk', 'PIXIE DUSTSS', 3, 1, 1, 'assets/img/upload/fairy doodles by tinypaint on DeviantArt.png', '2023-12-30 23:15:08');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `profilepic` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_session` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `username`, `profilepic`, `password`, `user_session`) VALUES
(1, 'Junard6', 'Romanillos', 'junard@gmail.com', 'junard', 'assets/img/upload/Zelda_Link_Chibi.png', '$2y$10$U8oKMZ5J2GSM1BwwTs.sO.O/egOlqU.bpxc5rrcsyHL6chdLejzse', '5bca2'),
(2, 'dud', 'dud', 'dud@gmail.com', 'dud2', 'assets/img/upload/1.png', '$2y$10$kZN3rJ6RjMojZds8dnvPB.MRbkyqF95Cf9c2Xf8hcgpjIWakil0fK', '0888a'),
(3, 'jay', 'dude', 'jay@gmail.com', 'jay123', '', '$2y$10$ADn.3NzhQGP5b14AmuwbB.NTBf1KQgT7vhX/DiK5HMwI7IoqCix32', 'ffdaf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
