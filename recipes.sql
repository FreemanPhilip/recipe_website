-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2023 at 09:50 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recipes`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catID`, `name`, `image`) VALUES
(1, 'breakfast', ''),
(2, 'pastries', ''),
(3, 'lunch', ''),
(4, 'salads', ''),
(5, 'Drinks', ''),
(6, 'Deserts', '');

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `recipe_id` int(11) NOT NULL,
  `recepe_name` varchar(255) NOT NULL,
  `ingredients` varchar(255) DEFAULT NULL,
  `image` blob DEFAULT NULL,
  `description` text DEFAULT NULL,
  `catID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`recipe_id`, `recepe_name`, `ingredients`, `image`, `description`, `catID`) VALUES
(1, 'Milo', 'sugar', '', 'put', 1),
(2, 'Milo', 'milo powder', '', 'put', 1),
(3, 'Milo', 'milk', '', 'put', 1),
(4, 'Milo', 'water', '', 'put', 1),
(5, 'Tea', 'sugar', '', 'put', 1),
(6, 'Tea', 'tea bag', '', 'put', 1),
(7, 'Tea', 'water', 0x5b76616c75652d345d, 'put', 1),
(8, 'Tea', 'milk', '', 'put', 1),
(9, 'Tombrown', 'sugar', '', 'put', 1),
(10, 'Tombrown', 'tombrown powder', '', 'put', 1),
(11, 'Tombrown', 'milk', '', 'put', 1),
(12, 'Tombrown', 'water', '', 'put', 1),
(13, 'pancake', 'water', '', 'put', 2),
(14, 'pancake', 'flour', '', 'put', 2),
(15, 'pancake', 'sugar', '', 'put', 2),
(16, 'pancake', 'baking powder', '', 'put', 2),
(17, 'pancake', 'salt', '', 'put', 2),
(18, 'pancake', 'milk', '', 'put', 2),
(19, 'pancake', 'butter', '', 'put', 2),
(20, 'pancake', 'oil', '', 'put', 2),
(21, 'pancake', 'egg', '', 'put', 2),
(22, 'meatpie', 'oil', '', 'put', 2),
(23, 'pancake', 'beef', '', 'put', 2),
(24, 'pancake', 'cube', '', 'put', 2),
(25, 'pancake', 'butter', '', 'put', 2),
(26, 'pancake', 'salt', '', 'put', 2),
(27, 'pancake', 'cold water', '', 'put', 2),
(28, 'pancake', 'egg', '', 'put', 2),
(29, 'springroll', 'vegatables', '', 'put', 2),
(30, 'springroll', 'oil', '', 'put', 2),
(31, 'springroll', 'salt', '', 'put', 2),
(32, 'springroll', 'flour', '', 'put', 2),
(33, 'springroll', 'baking powder', '', 'put', 2),
(34, 'springroll', 'flavour', '', 'put', 2),
(36, 'Gob3', 'beans', '', 'put', 3),
(37, 'Gob3', 'oil', '', 'put', 3),
(38, 'Gob3', 'gari', '', 'put', 3),
(39, 'Gob3', 'plantain', '', 'put', 3),
(40, 'Gob3', 'egg', '', 'put', 3),
(41, 'Gob3', 'water', '', 'put', 3),
(42, 'Gob3', 'salt', '', 'put', 3),
(43, 'waakye', 'salt', '', 'put', 3),
(44, 'waakye', 'beans', '', 'put', 3),
(45, 'waakye', 'rice', '', 'put', 3),
(46, 'waakye', 'oil', '', 'put', 3),
(47, 'waakye', 'water', '', 'put', 3),
(48, 'kenkey', 'water', '', 'put', 3),
(49, 'kenkey', 'corn dough', '', 'put', 3),
(50, 'kenkey', 'salt', '', 'put', 3),
(51, 'kenkey', 'corn leaves', '', 'put', 3),
(52, 'roasted salad', 'fresh', '', 'put', 4),
(53, 'roasted salad', 'cream', '', 'put', 4),
(54, 'roasted salad', 'flavour', '', 'put', 4),
(55, 'roasted salad', 'zesty', '', 'put', 4),
(56, 'peach salad', 'salmon', '', 'put', 4),
(57, 'peach salad', 'fresh herbs', '', 'put', 4),
(58, 'peach salad', 'fruits', '', 'put', 4),
(59, 'peach salad', 'cream', '', 'put', 4),
(60, 'Bombay Salad', 'cream', '', 'put', 4),
(61, 'Bombay Salad', 'vegetables', '', 'put', 4),
(62, 'Bombay Salad', 'eggs', '', 'put', 4),
(63, 'Bombay Salad', 'salt', '', 'put', 4),
(64, 'Bombay Salad', 'oil', '', 'put', 4),
(65, 'Beer', 'coriander', '', 'put', 5),
(66, 'Beer', 'cocoa beans', '', 'put', 5),
(67, 'Beer', 'cinnamon', '', 'put', 5),
(68, 'Beer', 'pepper', '', 'put', 5),
(69, 'Beer', 'coffee', '', 'put', 5),
(70, 'Beer', 'vanilla', '', 'put', 5),
(71, 'cider cocktail', 'apple cider', '', 'put', 5),
(72, 'cider cocktail', 'bourbon', '', 'put', 5),
(73, 'cider cocktail', 'lemon juice', '', 'put', 5),
(74, 'cider cocktail', 'ginger beer', '', 'put', 5),
(75, 'cider cocktail', 'apple slice', '', 'put', 5),
(76, 'wine', 'calcium', '', 'put', 5),
(77, 'wine', 'flavours', '', 'put', 5),
(78, 'wine', 'grape juice', '', 'put', 5),
(79, 'wine', 'non vegan mat', '', 'put', 5),
(80, 'wine', 'powdered tannis', '', 'put', 5),
(81, 'wine', 'potassium sorbate', '', 'put', 5),
(82, 'wine', 'sugar', '', 'put', 5),
(83, 'wine', 'water', '', 'put', 5),
(84, 'wine', 'yeast', '', 'put', 5),
(85, 'easy chocolate', 'butter', '', 'put', 6),
(86, 'easy chocolate', 'dark chocolate', '', 'put', 6),
(87, 'easy chocolate', 'brown sugar', '', 'put', 6),
(88, 'easy chocolate', 'large eggs', '', 'put', 6),
(89, 'easy chocolate', 'vanilla', '', 'put', 6),
(90, 'easy chocolate', 'cream', '', 'put', 6),
(91, 'easy chocolate', 'plain flour', '', 'put', 6),
(92, 'chocolate truffle', 'cornflakes', '', 'put', 6),
(93, 'chocolate truffle', 'dark chocolate', '', 'put', 6),
(94, 'chocolate truffle', 'golden syrup', '', 'put', 6),
(95, 'chocolate truffle', 'cream', '', 'put', 6),
(96, 'chocolate truffle', 'horneycomb bar', '', 'put', 6),
(97, 'No bake', 'butter', '', 'put', 6),
(98, 'No bake', 'biscuit', '', 'put', 6),
(99, 'No bake', 'cheese', '', 'put', 6),
(100, 'No bake', 'cream', '', 'put', 6),
(101, 'No bake', 'sugar', '', 'put', 6),
(102, 'No bake', 'jelly', '', 'put', 6),
(103, 'No bake', 'caster sugar', '', 'put', 6),
(104, 'kenkey', 'cassava dough', '', 'put', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catID`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`recipe_id`),
  ADD KEY `catID` (`catID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `recipe`
--
ALTER TABLE `recipe`
  ADD CONSTRAINT `recipe_ibfk_1` FOREIGN KEY (`catID`) REFERENCES `category` (`catID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
