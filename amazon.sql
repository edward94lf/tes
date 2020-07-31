-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 31, 2020 at 03:28 AM
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
  `category` text NOT NULL,
  `name` longtext NOT NULL,
  `grade` double(11,1) NOT NULL,
  `writer` text NOT NULL,
  `offer` text NOT NULL,
  `price` text NOT NULL,
  `gambar` text NOT NULL,
  PRIMARY KEY (`id_book`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id_book`, `category`, `name`, `grade`, `writer`, `offer`, `price`, `gambar`) VALUES
(1, 'Hardcover', 'Midnight Sun', 0.0, 'Stephenie Meyer', '0', '17.32', 'https://images-na.ssl-images-amazon.com/images/I/81zBVMvSjNL._AC_UL200_SR200,200_.jpg'),
(2, 'Hardcover', 'Too Much and Never E', 4.6, 'Mary L. Trump Ph.D.', '5,817', '16.80', 'https://images-na.ssl-images-amazon.com/images/I/816vxVXANgL._AC_UL200_SR200,200_.jpg'),
(3, 'Paperback', 'My First Learn to Wr', 4.8, 'Crystal Radke', '7,036', '5.50', 'https://images-na.ssl-images-amazon.com/images/I/71XQe19mZtL._AC_UL200_SR200,200_.jpg'),
(4, 'Paperback', 'School Zone - Big Pr', 4.8, 'School Zone', '9,765', '5.01', 'https://images-na.ssl-images-amazon.com/images/I/81HCcHPXZnL._AC_UL200_SR200,200_.jpg'),
(5, 'Hardcover', 'Where the Crawdads S', 4.8, 'Delia Owens', '57,180', '5.23', 'https://images-na.ssl-images-amazon.com/images/I/81-349iYbfL._AC_UL200_SR200,200_.jpg'),
(6, 'Paperback', 'White Fragility: Why', 4.3, 'Robin DiAngelo', '5,180', '9.60', 'https://images-na.ssl-images-amazon.com/images/I/81V8ozIJTVL._AC_UL200_SR200,200_.jpg'),
(7, 'Paperback', 'Walking with the Win', 4.8, 'John Lewis', '242', '11.41', 'https://images-na.ssl-images-amazon.com/images/I/71y46UQtd1L._AC_UL200_SR200,200_.jpg'),
(8, 'Hardcover', 'How to Be an Antirac', 4.7, 'Ibram X. Kendi', '2,426', '15.51', 'https://images-na.ssl-images-amazon.com/images/I/91NSKjk7UeL._AC_UL200_SR200,200_.jpg'),
(9, 'Hardcover', 'Untamed', 4.6, 'Glennon Doyle', '4,359', '13.50', 'https://images-na.ssl-images-amazon.com/images/I/91yeltFNrGL._AC_UL200_SR200,200_.jpg'),
(10, 'Hardcover', 'The Vanishing Half: ', 4.6, 'Brit Bennett', '1,312', '16.44', 'https://images-na.ssl-images-amazon.com/images/I/71KM0a%2BxPKL._AC_UL200_SR200,200_.jpg'),
(11, 'Board book', 'If Animals Kissed Go', 4.8, 'Ann Whitford Paul', '8,281', '4.79', 'https://images-na.ssl-images-amazon.com/images/I/817T4J3dzhL._AC_UL200_SR200,200_.jpg'),
(12, 'Hardcover', 'How to Destroy Ameri', 4.7, 'Ben Shapiro', '295', '17.39', 'https://images-na.ssl-images-amazon.com/images/I/91Aj-SVNdHL._AC_UL200_SR200,200_.jpg'),
(13, 'Hardcover', 'Finding Freedom: Har', 0.0, 'Omid Scobie', '0', '17.51', 'https://images-na.ssl-images-amazon.com/images/I/81ELenUQ0KL._AC_UL200_SR200,200_.jpg'),
(14, 'Paperback', 'Beware the Kakamora!', 4.8, 'RH Disney', '270', '1.48', 'https://images-na.ssl-images-amazon.com/images/I/A1U9uGcFvlL._AC_UL200_SR200,200_.jpg'),
(15, 'Paperback', 'SuperLife', 4.7, 'Olien', '194', '12.79', 'https://images-na.ssl-images-amazon.com/images/I/8129Uhf7zlL._AC_UL200_SR200,200_.jpg'),
(16, 'Hardcover', 'His Truth Is Marchin', 0.0, 'Jon Meacham', '0', '21.49', 'https://images-na.ssl-images-amazon.com/images/I/91q8DzhvbfL._AC_UL200_SR200,200_.jpg'),
(17, 'Board book', 'The Very Hungry Cate', 4.8, 'Eric Carle', '14,990', '0.58', 'https://images-na.ssl-images-amazon.com/images/I/71KilybDOoL._AC_UL200_SR200,200_.jpg'),
(18, 'Paperback', 'The Four Agreements:', 4.7, 'Don Miguel Ruiz', '13,727', '6.48', 'https://images-na.ssl-images-amazon.com/images/I/91Rp%2By1ePrL._AC_UL200_SR200,200_.jpg'),
(19, 'Board book', 'I Love You to the Mo', 4.9, 'Amelia Hepworth', '3,555', '1.65', 'https://images-na.ssl-images-amazon.com/images/I/81eB%2B7%2BCkUL._AC_UL200_SR200,200_.jpg'),
(20, 'Hardcover', 'The Plus: Self-Help ', 4.1, 'Greg Gutfeld', '12', '21.60', 'https://images-na.ssl-images-amazon.com/images/I/71MusQdFpLL._AC_UL200_SR200,200_.jpg'),
(21, 'Paperback', 'School Zone - Math B', 4.7, 'School Zone', '453', '2.68', 'https://images-na.ssl-images-amazon.com/images/I/81bAXw7C8EL._AC_UL200_SR200,200_.jpg'),
(22, 'Paperback', 'On Tyranny: Twenty L', 4.7, 'Timothy Snyder', '4,117', '5.79', 'https://images-na.ssl-images-amazon.com/images/I/71Y8W5ulGUL._AC_UL200_SR200,200_.jpg'),
(23, 'Mass Market Paperback', '1984 (Signet Classic', 4.6, 'George Orwell', '13,034', '4.55', 'https://images-na.ssl-images-amazon.com/images/I/71ADuoZdTBL._AC_UL200_SR200,200_.jpg'),
(24, 'Paperback', 'Then She Was Gone: A', 4.5, 'Lisa Jewell', '7,288', '8.79', 'https://images-na.ssl-images-amazon.com/images/I/91OCtNw13AL._AC_UL200_SR200,200_.jpg'),
(25, 'Paperback', 'School Zone - Big Fi', 4.8, 'School Zone', '2,365', '2.50', 'https://images-na.ssl-images-amazon.com/images/I/81-%2B-WTltXL._AC_UL200_SR200,200_.jpg'),
(26, 'Paperback', 'Kindergarten Math Wo', 4.7, 'Modern Kid Press', '1,217', '6.99', 'https://images-na.ssl-images-amazon.com/images/I/51JLprIlPTL._AC_UL200_SR200,200_.jpg'),
(27, 'Hardcover', 'BLITZ: Trump Will Sm', 4.5, 'David Horowitz', '579', '16.79', 'https://images-na.ssl-images-amazon.com/images/I/815ogy0LamL._AC_UL200_SR200,200_.jpg'),
(28, 'Paperback', 'The 5 Love Languages', 4.8, 'Gary Chapman', '17,462', '3.09', 'https://images-na.ssl-images-amazon.com/images/I/41ILRrgp5-L._AC_UL200_SR200,200_.jpg'),
(29, 'Hardcover', 'The Ballad of Songbi', 4.6, 'Suzanne Collins', '5,795', '14.38', 'https://images-na.ssl-images-amazon.com/images/I/61rGUKxLaBL._AC_UL200_SR200,200_.jpg'),
(30, 'Mass Market Paperback', 'Rich Dad Poor Dad: W', 4.7, 'Robert T. Kiyosaki', '20,523', '5.39', 'https://images-na.ssl-images-amazon.com/images/I/91VokXkn8hL._AC_UL200_SR200,200_.jpg'),
(31, 'Hardcover', 'How to Catch a Merma', 4.8, 'Adam Wallace', '3,046', '5.98', 'https://images-na.ssl-images-amazon.com/images/I/81Zj4ibm%2BhL._AC_UL200_SR200,200_.jpg'),
(32, 'Paperback', 'Across That Bridge', 4.8, 'John Lewis', '129', '9.65', 'https://images-na.ssl-images-amazon.com/images/I/71KVZx2vgHL._AC_UL200_SR200,200_.jpg'),
(33, 'Hardcover', 'Magnolia Table, Volu', 4.8, 'Joanna Gaines', '2,897', '13.87', 'https://images-na.ssl-images-amazon.com/images/I/81mnmZXBJ2L._AC_UL200_SR200,200_.jpg'),
(34, 'Board book', 'Chicka Chicka Boom B', 4.8, 'Bill Martin Jr.', '6,480', '5.00', 'https://images-na.ssl-images-amazon.com/images/I/91UvdebBM-L._AC_UL200_SR200,200_.jpg'),
(35, 'Board book', 'Brown Bear, Brown Be', 4.9, 'Bill Martin Jr.', '8,751', '5.67', 'https://images-na.ssl-images-amazon.com/images/I/81EVdWdmOKL._AC_UL200_SR200,200_.jpg'),
(36, 'Hardcover', 'The Answer Is . . .:', 4.8, 'Alex Trebek', '112', '15.60', 'https://images-na.ssl-images-amazon.com/images/I/81cn9%2B%2BMSVL._AC_UL200_SR200,200_.jpg'),
(37, 'Paperback', 'The Body Keeps the S', 4.8, 'Bessel van der Kolk M.D.', '7,043', '11.31', 'https://images-na.ssl-images-amazon.com/images/I/71oE1a7BYYL._AC_UL200_SR200,200_.jpg'),
(38, 'Hardcover', 'Atomic Habits: An Ea', 4.8, 'James Clear', '6,651', '16.20', 'https://images-na.ssl-images-amazon.com/images/I/91pR9wKJ3zL._AC_UL200_SR200,200_.jpg'),
(39, 'Paperback', 'Publication Manual o', 4.8, 'American Psychological Association', '1,951', '22.00', 'https://images-na.ssl-images-amazon.com/images/I/71lk10uajiL._AC_UL200_SR200,200_.jpg'),
(40, 'Paperback', 'The Color of Law: A ', 4.8, 'Richard Rothstein', '1,796', '10.77', 'https://images-na.ssl-images-amazon.com/images/I/81seTm-vu6L._AC_UL200_SR200,200_.jpg'),
(41, 'Paperback', 'Human Body Activity ', 4.7, 'Ph.D.', '2,699', '5.39', 'https://images-na.ssl-images-amazon.com/images/I/71agv-FgiaL._AC_UL200_SR200,200_.jpg'),
(42, 'Paperback', 'Our Class is a Famil', 4.9, 'Shannon Olsen', '353', '10.01', 'https://images-na.ssl-images-amazon.com/images/I/71aLultW5EL._AC_UL200_SR200,200_.jpg'),
(43, 'Paperback', 'Why Men Love Bitches', 4.6, 'Sherry Argov', '3,499', '11.31', 'https://images-na.ssl-images-amazon.com/images/I/71SLK1IXO0L._AC_UL200_SR200,200_.jpg'),
(44, 'Paperback', 'Peppa in Space (Pepp', 4.8, 'Scholastic', '939', '2.59', 'https://images-na.ssl-images-amazon.com/images/I/81bqJP-KLKL._AC_UL200_SR200,200_.jpg'),
(45, 'Hardcover', 'American Dirt (Oprah', 4.5, 'Jeanine Cummins', '5,884', '16.79', 'https://images-na.ssl-images-amazon.com/images/I/81iVsj91eQL._AC_UL200_SR200,200_.jpg'),
(46, 'Paperback', 'Preschool Math Workb', 4.7, 'Modern Kid Press', '1,698', '6.99', 'https://images-na.ssl-images-amazon.com/images/I/51RIZ1XDSVL._AC_UL200_SR200,200_.jpg'),
(47, 'Hardcover', 'Live Free Or Die: Am', 0.0, 'Sean Hannity', '0', '20.98', 'https://images-na.ssl-images-amazon.com/images/I/71WMhWfQseL._AC_UL200_SR200,200_.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
