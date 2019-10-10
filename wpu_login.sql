-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2019 at 09:36 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(6, 'Yeni Oktavia', 'yenokta08@gmail.com', 'IMG-20180820-WA0056.jpg', '$2y$10$09ufAFfvuezSgHnHGPNdU.h5vDUnAaX1E8OwMPGHHJjDgG8cR5PR2', 1, 1, 1566458512),
(11, 'Yeni Oktaviana', 'yenokta05@gmail.com', 'default.jpg', '$2y$10$UKDonOXipSmBpEzf1VFpKeqz9xj/KhEJFX07wipriHKFcxukQfw6K', 2, 0, 1567656292),
(12, 'ardinia', 'ardin@gmail.com', '20170817_161917.jpg', '$2y$10$mNcNGnyxCaHMUNBobeeYE.apYDlK0DlZZ8R.TNrIlMcLG2cFQ.8sG', 2, 1, 1567656445);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(22, 1, 1),
(25, 1, 11),
(26, 2, 2),
(27, 2, 11),
(33, 1, 2),
(34, 4, 2),
(37, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu'),
(7, 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(9, 4, 'Coba', 'coba/coba', 'fab fa-fw fa-youtube', 1),
(20, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(21, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(26, 2, 'My Profile', 'user/index', 'fas fa-fw fa-user', 1),
(27, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(28, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(2, 'yenokta05@gmail.com', 'pHVTm7mIC1o7RisdA6oY8lm4Wq4Zf2an5VqsEOr5hqI=', 1567655656),
(3, 'yenokta05@gmail.com', '/Ji/AEqz4urWlD7PurKCO2mS1aGmzd6dB+n6njPgT3I=', 1567655726),
(4, 'yenokta05@gmail.com', 'j0qDdr+cOUm1CFUZQ9GrdbTaIgyILz+woIUNuAoLSIc=', 1567656292),
(6, 'yeyen@gmail.com', 'R42KEGSXJHsOuHS+aUM3dMR7h/ykAh1gsrwARBgHbog=', 1567656534),
(7, 'oktaviana@gmail.com', 'hmOxZDZ7Cp/PL7bqEdzmDCotCaXQSPGQBq+sXsrYikU=', 1567657276),
(8, 'ardin@gmail.com', 'a3VuRY9bYomh7uX4+0T29P3wGJ+bzYXQpxKaV5TIiR4=', 1567664075),
(9, 'ardin@gmail.com', 'AcG15WhzDCf9YDlFbKy6LpwH57R5Jl7WB5Q34kjEaNc=', 1567665168),
(10, 'ardin@gmail.com', 'tmn/VSuVTt6dkv6UCdn0+v+bRdDvcoMvrAYCd1Phw9w=', 1567679588),
(11, 'yenokta08@gmail.com', 'yBFI1VxQGd5k7SMbIYs/L0Yu0jyr7emxUpq6S4Z6G3U=', 1567933605),
(12, 'yenokta08@gmail.com', '0Yh8eTlxL4v1Mfza0vshkAFRwF0Eyu4vx3RPL7fpCvA=', 1568330999);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
