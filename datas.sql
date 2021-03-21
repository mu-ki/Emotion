-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2021 at 10:32 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datas`
--

-- --------------------------------------------------------

--
-- Table structure for table `emotion`
--

CREATE TABLE `emotion` (
  `id` int(11) NOT NULL,
  `emoji` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emotion`
--

INSERT INTO `emotion` (`id`, `emoji`, `date`) VALUES
(45, 'angry', '2021-03-06 09:08:13'),
(46, 'happy', '2021-03-06 09:08:19'),
(47, 'happy', '2021-03-06 09:08:23'),
(48, 'angry', '2021-03-06 09:08:29'),
(49, 'angry', '2021-03-06 09:08:43'),
(50, 'neutral', '2021-03-06 09:08:52'),
(51, 'neutral', '2021-03-06 09:09:02'),
(52, 'neutral', '2021-03-06 09:09:12'),
(53, 'happy', '2021-03-06 09:09:17'),
(54, 'angry', '2021-03-06 09:09:21'),
(55, 'happy', '2021-03-06 09:09:25'),
(56, 'neutral', '2021-03-06 09:09:30'),
(57, 'happy', '2021-03-06 09:09:37'),
(58, 'happy', '2021-03-06 09:09:43'),
(59, 'happy', '2021-03-06 09:09:48'),
(60, 'neutral', '2021-03-06 09:09:52'),
(61, 'happy', '2021-03-06 09:09:56'),
(62, 'neutral', '2021-03-06 09:09:59'),
(63, 'neutral', '2021-03-06 09:17:53'),
(64, 'neutral', '2021-03-06 09:17:59'),
(65, 'neutral', '2021-03-06 09:18:04'),
(66, 'neutral', '2021-03-06 09:18:08'),
(67, 'neutral', '2021-03-06 09:18:13'),
(68, 'neutral', '2021-03-06 09:18:17'),
(69, 'neutral', '2021-03-06 09:18:21'),
(70, 'neutral', '2021-03-06 09:18:24'),
(71, 'neutral', '2021-03-06 09:18:27'),
(72, 'neutral', '2021-03-06 09:18:31'),
(73, 'neutral', '2021-03-06 09:18:34'),
(74, 'neutral', '2021-03-06 09:18:39'),
(75, 'happy', '2021-03-06 09:18:42'),
(76, 'happy', '2021-03-06 09:18:48'),
(77, 'neutral', '2021-03-06 09:18:56'),
(78, 'neutral', '2021-03-06 09:21:26'),
(79, 'neutral', '2021-03-06 09:21:30'),
(80, 'neutral', '2021-03-06 09:21:34'),
(81, 'neutral', '2021-03-06 09:21:37'),
(82, 'neutral', '2021-03-06 09:21:41'),
(83, 'happy', '2021-03-06 09:21:46'),
(84, 'scared', '2021-03-06 09:21:49'),
(85, 'neutral', '2021-03-06 09:21:53'),
(86, 'neutral', '2021-03-06 09:21:57'),
(87, 'neutral', '2021-03-06 09:22:01'),
(88, 'neutral', '2021-03-06 09:22:05'),
(89, 'neutral', '2021-03-06 09:22:09'),
(90, 'scared', '2021-03-06 09:22:13'),
(91, 'neutral', '2021-03-06 09:22:17'),
(92, 'neutral', '2021-03-06 09:25:34'),
(93, 'neutral', '2021-03-06 09:25:38'),
(94, 'happy', '2021-03-06 09:25:42'),
(95, 'neutral', '2021-03-06 09:25:46'),
(96, 'neutral', '2021-03-06 09:25:50'),
(97, 'neutral', '2021-03-06 09:25:54'),
(98, 'neutral', '2021-03-06 09:25:57'),
(99, 'neutral', '2021-03-06 09:26:01'),
(100, 'neutral', '2021-03-06 09:31:25'),
(101, 'neutral', '2021-03-06 09:31:30'),
(102, 'scared', '2021-03-06 09:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emotion`
--
ALTER TABLE `emotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emotion`
--
ALTER TABLE `emotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
