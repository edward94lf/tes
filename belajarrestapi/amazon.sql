-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 25, 2020 at 12:49 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amazon`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `id_book` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `grade` double(11,1) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `offer` int(11) NOT NULL,
  `price` double(11,2) NOT NULL,
  `gambar` text NOT NULL,
  PRIMARY KEY (`id_book`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id_book`, `category`, `name`, `grade`, `writer`, `offer`, `price`, `gambar`) VALUES
(1, '', 'On Tyranny: Twenty Lessons from the Twentieth Cent', 0.0, '', 0, 0.00, ''),
(2, '', 'Too Much and Never Enough: How My Family Created t', 0.0, '', 0, 0.00, ''),
(3, '', 'My First Learn to Write Workbook: Practice for Kid', 0.0, '', 0, 0.00, ''),
(4, '', 'School Zone - Big Preschool Workbook - Ages 4 and ', 0.0, '', 0, 0.00, ''),
(5, '', 'White Fragility: Why It&#39;s So Hard for White Pe', 0.0, '', 0, 0.00, ''),
(6, '', 'The Answer Is . . .: Reflections on My Life', 0.0, '', 0, 0.00, ''),
(7, '', 'How to Destroy America in Three Easy Steps', 0.0, '', 0, 0.00, ''),
(8, '', 'Where the Crawdads Sing', 0.0, '', 0, 0.00, ''),
(9, '', 'Midnight Sun', 0.0, '', 0, 0.00, ''),
(10, '', 'How to Be an Antiracist', 0.0, '', 0, 0.00, ''),
(11, '', 'The Vanishing Half: A Novel', 0.0, '', 0, 0.00, ''),
(12, '', 'Untamed', 0.0, '', 0, 0.00, ''),
(13, '', 'If Animals Kissed Good Night', 0.0, '', 0, 0.00, ''),
(14, '', 'The Road to Unfreedom: Russia, Europe, America', 0.0, '', 0, 0.00, ''),
(15, '', '1984 (Signet Classics)', 0.0, '', 0, 0.00, ''),
(16, '', 'The Four Agreements: A Practical Guide to Personal', 0.0, '', 0, 0.00, ''),
(17, '', 'The Very Hungry Caterpillar', 0.0, '', 0, 0.00, ''),
(18, '', 'The Room Where It Happened: A White House Memoir', 0.0, '', 0, 0.00, ''),
(19, '', 'Giraffes Can&#39;t Dance', 0.0, '', 0, 0.00, ''),
(20, '', 'The Ballad of Songbirds and Snakes (A Hunger Games', 0.0, '', 0, 0.00, ''),
(21, '', 'I Love You to the Moon and Back', 0.0, '', 0, 0.00, ''),
(22, '', 'SuperLife: The 5 Simple Fixes That Will Make You H', 0.0, '', 0, 0.00, ''),
(23, '', 'Atomic Habits: An Easy & Proven Way to Build Good ', 0.0, '', 0, 0.00, ''),
(24, '', 'The 5 Love Languages: The Secret to Love that Last', 0.0, '', 0, 0.00, ''),
(25, '', 'Then She Was Gone: A Novel', 0.0, '', 0, 0.00, ''),
(26, '', 'School Zone - Big First Grade Workbook - Ages 6 to', 0.0, '', 0, 0.00, ''),
(27, '', 'My Preschool Workbook: 101 Games & Activities that', 0.0, '', 0, 0.00, ''),
(28, '', 'The Color of Law: A Forgotten History of How Our G', 0.0, '', 0, 0.00, ''),
(29, '', 'How to Catch a Mermaid', 0.0, '', 0, 0.00, ''),
(30, '', 'Kindergarten, Here I Come!', 0.0, '', 0, 0.00, ''),
(31, '', 'Memoirs and Misinformation: A novel', 0.0, '', 0, 0.00, ''),
(32, '', 'Alexander Hamilton', 0.0, '', 0, 0.00, ''),
(33, '', 'Brown Bear, Brown Bear, What Do You See?', 0.0, '', 0, 0.00, ''),
(34, '', 'The Body Keeps the Score: Brain, Mind, and Body in', 0.0, '', 0, 0.00, ''),
(35, '', 'Human Body Activity Book for Kids: Hands-On Fun fo', 0.0, '', 0, 0.00, ''),
(36, '', 'Stamped from the Beginning: The Definitive History', 0.0, '', 0, 0.00, ''),
(37, '', 'Becoming', 0.0, '', 0, 0.00, ''),
(38, '', 'LEWSER!: More Doonesbury in the Time of Trump', 0.0, '', 0, 0.00, ''),
(39, '', 'American Dirt (Oprah&#39;s Book Club): A Novel', 0.0, '', 0, 0.00, ''),
(40, '', 'BLITZ: Trump Will Smash the Left and Win', 0.0, '', 0, 0.00, ''),
(41, '', 'Breath: The New Science of a Lost Art', 0.0, '', 0, 0.00, ''),
(42, '', 'Rich Dad Poor Dad: What the Rich Teach Their Kids ', 0.0, '', 0, 0.00, ''),
(43, '', 'Goodnight Moon', 0.0, '', 0, 0.00, ''),
(44, '', 'Llama Llama Loves Camping', 0.0, '', 0, 0.00, ''),
(45, '', 'So You Want to Talk About Race', 0.0, '', 0, 0.00, ''),
(46, '', 'School Zone - Multiplication 0-12 Flash Cards - Ag', 0.0, '', 0, 0.00, ''),
(47, '', 'Prayer Journal for Women: 52 Week Scripture, Devot', 0.0, '', 0, 0.00, ''),
(48, '', 'Kindergarten Math Workbook: Kindergarten and 1st G', 0.0, '', 0, 0.00, ''),
(49, '', 'I Am Confident, Brave & Beautiful: A Coloring Book', 0.0, '', 0, 0.00, ''),
(50, '', 'The Backyard Bug Book for Kids: Storybook, Insect ', 0.0, '', 0, 0.00, '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
