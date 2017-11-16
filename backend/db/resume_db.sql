-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2017 at 06:41 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resume_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bio`
--

CREATE TABLE `bio` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL DEFAULT '0',
  `bio` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bio`
--

INSERT INTO `bio` (`id`, `person_id`, `bio`) VALUES
(1, 1, 'Hello! I’m Dodi Prasetyo. I\'m a simple ordinary man that love to code and anything about technology. I really want to become a Profesional someday. With all the skills i have now, i hope i could learn more and more about this field to gain expertise. For me it\'s really important to understand the fundamental things, because if we understand the basic it will build strong foundation for us to go forward. i also really like to meet new people and enjoy small talk.');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  `level` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `detail` text NOT NULL,
  `icon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `person_id`, `level`, `name`, `date_from`, `date_to`, `detail`, `icon`) VALUES
(1, 1, 'Primary School', ' 08 Jatinegara Primary School', '2004-07-01', '2010-06-30', 'I completed my primary education from this prestigious school', 'P'),
(2, 1, 'Middle School', '27 Junior High School', '2010-07-01', '2013-06-30', 'I completed my junior high school education from this prestigious school.', 'M'),
(3, 1, 'High School', '26 Pembangunan Vocational High School', '2013-07-01', '2017-05-22', 'I completed my high school degree from this prestigious institution.', 'H'),
(4, 1, 'Computer Science', 'Mercubuana University', '2017-11-15', '0000-00-00', 'Currently I\'m studying at Mercubuana University and hoping to get my bachelor degree in 2021', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `position` varchar(250) NOT NULL,
  `at` varchar(250) NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `detail` text NOT NULL,
  `icon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id`, `person_id`, `position`, `at`, `date_from`, `date_to`, `detail`, `icon`) VALUES
(1, 1, 'PHP Programmer', 'PT Lantisse Pinnacle Asia', '2016-03-01', '2017-03-01', 'Internship as web developer. Build website using php framework Codeigniter', 'P'),
(2, 1, 'Junior Engineer', 'PT Juke Solusi Teknologi', '2017-04-01', '0000-00-00', 'Working as manage service and developer', 'JE');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `full_name` char(250) NOT NULL,
  `title` char(250) NOT NULL,
  `email` char(250) NOT NULL,
  `phone` char(50) NOT NULL,
  `address` char(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `full_name`, `title`, `email`, `phone`, `address`) VALUES
(1, 'Dodi Prasetyo', 'Software Engineer & IT Consultant', 'dodipras27@gmail.com', '+62 821 1462 2975', 'Buaran 1 Street RT 05 RW 08 No 179, Jakarta ID');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL DEFAULT '0',
  `name` char(250) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `grade` int(11) NOT NULL DEFAULT '0',
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `person_id`, `name`, `parent_id`, `grade`, `img`) VALUES
(1, 1, 'Profesional', 0, 90, ''),
(2, 1, 'Personal', 0, 88, ''),
(3, 1, 'Software', 0, 85, ''),
(4, 1, 'Programming', 1, 88, ''),
(5, 1, 'Networking', 1, 85, ''),
(6, 1, 'System Administrator', 1, 86, ''),
(7, 1, 'Comunication', 2, 84, ''),
(8, 1, 'Creativity', 2, 82, ''),
(9, 1, 'Teamwork', 2, 90, ''),
(10, 1, 'Leadership', 2, 80, ''),
(11, 1, 'Codeigniter', 4, 86, ''),
(12, 1, 'Laravel', 4, 85, ''),
(13, 1, 'AngularJS', 4, 78, ''),
(14, 1, 'Routing', 5, 80, ''),
(15, 1, 'Switching', 5, 78, ''),
(16, 1, 'PHP Storm', 3, 87, ''),
(17, 1, 'Git', 3, 88, ''),
(18, 1, 'CentOS', 6, 86, ''),
(19, 1, 'Debian', 6, 87, '');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(11) NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `icon` text,
  `class` text,
  `url` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `person_id`, `name`, `icon`, `class`, `url`) VALUES
(1, 1, 'Facebook', 'fa fa-facebook', 'indigo', 'https://www.facebook.com/dodi.prasetyo.562'),
(2, 1, 'Github', 'fa fa-github-alt', 'black', 'https://github.com/dodistyo'),
(3, 1, 'LinkedIn', 'fa fa-linkedin', 'indigo', 'https://www.linkedin.com/in/dodi-prasetyo-54457b122/'),
(4, 1, 'Google Plus', 'fa fa-google-plus', 'red', 'https://plus.google.com/u/0/112748821982196267233');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_resume`
-- (See below for the actual view)
--
CREATE TABLE `v_resume` (
`id` int(11)
,`full_name` char(250)
,`title` char(250)
,`email` char(250)
,`phone` char(50)
,`address` char(250)
,`bio` longtext
,`education_level` varchar(250)
,`education` varchar(250)
);

-- --------------------------------------------------------

--
-- Structure for view `v_resume`
--
DROP TABLE IF EXISTS `v_resume`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_resume`  AS  select `person`.`id` AS `id`,`person`.`full_name` AS `full_name`,`person`.`title` AS `title`,`person`.`email` AS `email`,`person`.`phone` AS `phone`,`person`.`address` AS `address`,`bio`.`bio` AS `bio`,`education`.`level` AS `education_level`,`education`.`name` AS `education` from ((`person` join `bio` on((`person`.`id` = `bio`.`person_id`))) join `education` on((`person`.`id` = `education`.`person_id`))) group by `person`.`id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bio`
--
ALTER TABLE `bio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_bio_person` (`person_id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_education_person` (`person_id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_experience_person` (`person_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_social_media_person` (`person_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bio`
--
ALTER TABLE `bio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bio`
--
ALTER TABLE `bio`
  ADD CONSTRAINT `FK_bio_person` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`);

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `FK_education_person` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`);

--
-- Constraints for table `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `FK_experience_person` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`);

--
-- Constraints for table `social_media`
--
ALTER TABLE `social_media`
  ADD CONSTRAINT `FK_social_media_person` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
