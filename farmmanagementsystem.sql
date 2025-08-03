-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2025 at 09:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farmmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `crop`
--

CREATE TABLE `crop` (
  `crop_id` int(20) NOT NULL,
  `field_id` int(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `variety` varchar(20) NOT NULL,
  `harvest_season` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crop`
--

INSERT INTO `crop` (`crop_id`, `field_id`, `name`, `variety`, `harvest_season`) VALUES
(13, 16, 'William Green', 'Vegetable', 'Summer'),
(30, 48, 'Johnny Robinson', 'Vegetable', 'Summer'),
(85, 94, 'Johnny Robinson', 'Grain', 'Spring'),
(1368, 16, 'William Green', 'Vegetable', 'Summer'),
(30786, 48, 'Johnny Robinson', 'Vegetable', 'Summer'),
(857865, 94, 'Johnny Robinson', 'Grain', 'Spring');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `contact_number` int(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `contact_number`, `email`, `address`) VALUES
(35, 'Gloria Robinson', 0, '778-336-4820x78196', 'Oak Avenue'),
(36, 'William Johnson', 0, '246.929.9031', 'Elm Road'),
(48, 'Todd Mercer', 0, '098-491-9070x5875', 'Birch Court'),
(64, 'Sarah Hurley', 0, '(925)996-1200x807', 'Cedar Lane'),
(67, 'Timothy Pacheco', 0, '791-617-2973x404', 'Maple Street'),
(69, 'Timothy Pacheco', 1713789115, 'hmullins@gmail.com', 'Maple Street'),
(70, 'Mariah Wilkinson', 0, '+1-452-817-2718x5710', 'Sunset Boulevard'),
(73, 'Patricia Lang', 0, '477.236.5398x5434', 'Willow Crescent');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `delivery_id` int(20) NOT NULL,
  `delivery_date` date NOT NULL,
  `delivery_status` varchar(10) NOT NULL,
  `delivered_by` varchar(20) NOT NULL,
  `employee_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `position` varchar(20) NOT NULL,
  `salary` int(15) NOT NULL,
  `contact_info` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `first_name`, `last_name`, `position`, `salary`, `contact_info`) VALUES
(8, 'Justin', 'Wilson', 'Technician', 42000, 0),
(18, 'Jason', 'Hess', 'Worker', 29500, 0),
(21, 'Derek', 'Davila', 'Worker', 32000, 0),
(59, 'Kathy', 'Phillips', 'Worker', 30000, 0),
(61, 'Kathryn', 'Kelley', 'Manager', 55000, 0),
(64, 'Cynthia', 'Anthony', 'Worker', 31000, 0),
(65, 'Donald', 'Doyle', 'Manager', 58000, 0),
(184, 'Jason', 'Hess', 'Worker', 29500, 0),
(217, 'Derek', 'Davila', 'Worker', 32000, 0),
(594, 'Kathy', 'Phillips', 'Worker', 30000, 0),
(615, 'Kathryn', 'Kelley', 'Manager', 55000, 0),
(644, 'Cynthia', 'Anthony', 'Worker', 31000, 0),
(653, 'Donald', 'Doyle', 'Manager', 58000, 0),
(873, 'Justin', 'Wilson', 'Technician', 42000, 0),
(12199, 'Gregory', 'Williams', 'Worker', 30000, 0),
(18477, 'Jason', 'Hess', 'Worker', 29500, 0),
(21788, 'Derek', 'Davila', 'Worker', 32000, 0),
(25303, 'Elizabeth', 'Ramirez', 'Worker', 31000, 0),
(34604, 'Tyrone', 'Austin', 'Worker', 29500, 0),
(41101, 'Alicia', 'Jackson', 'Worker', 33000, 0),
(58766, 'Mary', 'Miller', 'Worker', 30500, 0),
(59477, 'Kathy', 'Phillips', 'Worker', 30000, 0),
(61500, 'Kathryn', 'Kelley', 'Manager', 55000, 0),
(64444, 'Cynthia', 'Anthony', 'Worker', 31000, 0),
(65333, 'Jenny', 'Gibbs', 'Technician', 41000, 0),
(65355, 'Donald', 'Doyle', 'Manager', 58000, 0),
(72702, 'April', 'Black', 'Manager', 56000, 0),
(77507, 'Nicole', 'Hoffman', 'Technician', 43000, 0),
(87322, 'Justin', 'Wilson', 'Technician', 42000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employeetask`
--

CREATE TABLE `employeetask` (
  `task_id` int(10) NOT NULL,
  `employee_id` int(20) NOT NULL,
  `task_description` varchar(150) NOT NULL,
  `assigned_date` date NOT NULL,
  `completion_date` date NOT NULL,
  `field_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employeetask`
--

INSERT INTO `employeetask` (`task_id`, `employee_id`, `task_description`, `assigned_date`, `completion_date`, `field_id`) VALUES
(24, 64, 'Mouth child material little stay plant why case.', '1998-06-20', '1998-07-06', 48),
(33, 25303, 'In ball away fact.', '1982-03-05', '1982-03-24', 49),
(62, 21788, 'Bit a mention easy painting study.', '1973-01-05', '1973-01-24', 48),
(69, 8, 'Sound wait great above cultural.', '2023-07-01', '2023-07-17', 6),
(74, 65, 'Already environmental team able radio maintain option.', '1974-06-25', '1974-07-19', 42),
(76, 34604, 'Standard air scene how such food audience large.', '2009-07-28', '2009-08-16', 49),
(77, 8, 'Matter share foreign artist beyond.', '2017-10-10', '2017-10-25', 6),
(79, 59, 'Purpose finish west.', '1979-01-15', '1979-02-06', 42),
(80, 58766, 'Media free minute and city so.', '1999-09-12', '1999-09-30', 94),
(99, 58766, 'Late air one most total road Mr.', '2011-05-20', '2011-06-08', 94),
(199, 8, 'Matter share foreign artist beyond.', '2017-10-10', '2017-10-25', 6),
(241, 64, 'Mouth child material little stay plant why case.', '1998-06-20', '1998-07-06', 48),
(691, 8, 'Sound wait great above cultural.', '2023-07-01', '2023-07-17', 6),
(771, 58766, 'Result beat number clear water indeed.', '1982-06-28', '1982-07-16', 164),
(772, 8, 'Matter share foreign artist beyond.', '2017-10-10', '2017-10-25', 6),
(795, 59, 'Purpose finish west.', '1979-01-15', '1979-02-06', 42),
(1999, 8, 'Matter share foreign artist beyond.', '2017-10-10', '2017-10-25', 6),
(6969, 8, 'Sound wait great above cultural.', '2023-07-01', '2023-07-17', 6),
(7725, 8, 'Matter share foreign artist beyond.', '2017-10-10', '2017-10-25', 6),
(7729, 8, 'Matter share foreign artist beyond.', '2017-10-10', '2017-10-25', 6),
(7959, 59, 'Purpose finish west.', '1979-01-15', '1979-02-06', 42),
(12999, 8, 'Matter share foreign artist beyond.', '2017-10-10', '2017-10-25', 6),
(19998, 8, 'Matter share foreign artist beyond.', '2017-10-10', '2017-10-25', 6),
(45753, 41101, 'Firm skill technology best network strategy likely.', '1995-01-05', '1995-01-24', 3036),
(71299, 8, 'Matter share foreign artist beyond.', '2017-10-10', '2017-10-25', 6),
(76453, 34604, 'Standard air scene how such food audience large.', '2009-07-28', '2009-08-16', 49),
(77299, 8, 'Matter share foreign artist beyond.', '2017-10-10', '2017-10-25', 6),
(80586, 65333, 'Loss technology watch those drop.', '1997-08-20', '1997-09-12', 3036),
(236786, 65333, 'Away claim author expert including mention throughout on.', '2009-07-05', '2009-07-23', 164),
(696969, 8, 'Sound wait great above cultural.', '2023-07-01', '2023-07-17', 6),
(712999, 8, 'Matter share foreign artist beyond.', '2017-10-10', '2017-10-25', 6),
(795915, 59, 'Purpose finish west.', '1979-01-15', '1979-02-06', 42),
(804435, 58766, 'Media free minute and city so.', '1999-09-12', '1999-09-30', 94),
(994435, 8, 'Matter share foreign artist beyond.', '2017-10-10', '2017-10-25', 6),
(1994435, 8, 'Matter share foreign artist beyond.', '2017-10-10', '2017-10-25', 6),
(1999844, 8, 'Matter share foreign artist beyond.', '2017-10-10', '2017-10-25', 6),
(2413453, 64, 'Mouth child material little stay plant why case.', '1998-06-20', '1998-07-06', 48),
(3334533, 25303, 'In ball away fact.', '1982-03-05', '1982-03-24', 49),
(3878638, 58766, 'Move quickly experience truth dog campaign wish night.', '1995-11-20', '1995-12-08', 4985),
(6243245, 21788, 'Bit a mention easy painting study.', '1973-01-05', '1973-01-24', 48),
(6696969, 8, 'Sound wait great above cultural.', '2023-07-01', '2023-07-17', 6),
(7493453, 65, 'Already environmental team able radio maintain option.', '1974-06-25', '1974-07-19', 42),
(9923753, 58766, 'Late air one most total road Mr.', '2011-05-20', '2011-06-08', 94),
(19998449, 8, 'Matter share foreign artist beyond.', '2017-10-10', '2017-10-25', 6),
(69696969, 8, 'Sound wait great above cultural.', '2023-07-01', '2023-07-17', 6),
(2147483647, 8, 'Sound wait great above cultural.', '2023-07-01', '2023-07-17', 6);

-- --------------------------------------------------------

--
-- Table structure for table `farm`
--

CREATE TABLE `farm` (
  `farm_id` int(20) NOT NULL,
  `name` varchar(25) NOT NULL,
  `location` varchar(25) NOT NULL,
  `owner_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farm`
--

INSERT INTO `farm` (`farm_id`, `name`, `location`, `owner_id`) VALUES
(3, 'Sunrise Grove', 'Martinezton', 48),
(4, 'Adkins Farm', 'Adkinsburgh', 88),
(15, 'Golden Harvest', 'Port Joshua', 43),
(17, 'Tiffany Meadows', 'East Tiffany', 81),
(23, 'Amber Hills', 'Port Amberberg', 44),
(24, 'Wheat Valley', 'Wubury', 55),
(35, 'Derek Pastures', 'North Derek', 78),
(38, 'Green Acres', 'Lake Elizabethshire', 5),
(39, 'Green Acres', 'Lake Elizabethshire', 5),
(80, 'Sunny Fields', 'Lake Isaac', 1),
(81, 'Sunny Fields', 'Lake Isaac', 1),
(83, 'Chapman Ranch', 'Chapmanton', 66),
(87, 'Marvin Hills', 'Marvinchester', 88),
(88, 'Riverbend Farm', 'Jordanmouth', 5),
(89, 'Sunny Fields', 'Lake Isaac', 1),
(90, 'Sunny Fields', 'Lake Isaac', 1),
(1514, 'Golden Harvest', 'Port Joshua', 43),
(1717, 'Tiffany Meadows', 'East Tiffany', 78),
(2344, 'Amber Hills', 'Port Amberberg', 44),
(2466, 'Wheat Valley', 'Wubury', 55),
(3444, 'Sunrise Grove', 'Martinezton', 48),
(3527, 'Derek Pastures', 'North Derek', 78),
(3914, 'Green Acres', 'Lake Elizabethshire', 5),
(4565, 'Mathews Fields', 'Mathewsburgh', 55),
(4654, 'Adkins Farm', 'Adkinsburgh', 88),
(5115, 'Rhonda Creek', 'Rhondamouth', 91),
(7374, 'Oconnell Farmstead', 'Oconnellfort', 98),
(8614, 'Riverbend Farm', 'Jordanmouth', 5),
(8686, 'Chapman Ranch', 'Chapmanton', 66),
(8778, 'Marvin Hills', 'Marvinchester', 88),
(9024, 'Sunny Fields', 'Lake Isaac', 1);

-- --------------------------------------------------------

--
-- Table structure for table `feed`
--

CREATE TABLE `feed` (
  `feed_id` int(20) NOT NULL,
  `livestock_id` int(20) NOT NULL,
  `feed_type` varchar(20) NOT NULL,
  `quantity` int(20) NOT NULL,
  `feeding_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `employee_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feed`
--

INSERT INTO `feed` (`feed_id`, `livestock_id`, `feed_type`, `quantity`, `feeding_time`, `employee_id`) VALUES
(1763, 452557, 'dairy', 1, '0000-00-00 00:00:00', 18),
(5176, 723375745, 'meat', 45, '0000-00-00 00:00:00', 8),
(5766, 452557, 'vegetable', 41, '0000-00-00 00:00:00', 18),
(7476, 723375745, 'fruit', 48, '0000-00-00 00:00:00', 8),
(44776, 452557, 'meat', 54, '0000-00-00 00:00:00', 61),
(49467, 723375745, 'dairy', 2, '0000-00-00 00:00:00', 8),
(52766, 452557, 'fruit', 47, '0000-00-00 00:00:00', 18),
(84786, 452557, 'meat', 43, '0000-00-00 00:00:00', 18),
(85783, 747866, 'vegetable', 99, '0000-00-00 00:00:00', 217),
(86786, 452557, 'dairy', 64, '0000-00-00 00:00:00', 61),
(87868, 9444, 'dairy', 86, '0000-00-00 00:00:00', 217),
(94786, 747866, 'grain', 57, '0000-00-00 00:00:00', 64),
(95786, 747866, 'dairy', 90, '0000-00-00 00:00:00', 217),
(494657, 1, 'dairy', 2, '0000-00-00 00:00:00', 8),
(517676, 1, 'meat', 45, '0000-00-00 00:00:00', 8),
(527677, 9744, 'fruit', 47, '0000-00-00 00:00:00', 18),
(576756, 9744, 'vegetable', 41, '0000-00-00 00:00:00', 18),
(946757, 1, 'dairy', 2, '0000-00-00 00:00:00', 8),
(4475576, 747866, 'meat', 54, '0000-00-00 00:00:00', 61),
(4946757, 1, 'dairy', 2, '0000-00-00 00:00:00', 8),
(8477586, 9444, 'meat', 43, '0000-00-00 00:00:00', 18),
(8675786, 452557, 'dairy', 64, '0000-00-00 00:00:00', 61),
(9477586, 543476, 'grain', 57, '0000-00-00 00:00:00', 64),
(9575786, 543476, 'dairy', 90, '0000-00-00 00:00:00', 217),
(17757563, 9444, 'dairy', 1, '0000-00-00 00:00:00', 18),
(51767576, 1, 'meat', 45, '0000-00-00 00:00:00', 8),
(74777566, 1, 'fruit', 48, '0000-00-00 00:00:00', 8),
(946775757, 1, 'dairy', 2, '0000-00-00 00:00:00', 8);

-- --------------------------------------------------------

--
-- Table structure for table `fertilizer`
--

CREATE TABLE `fertilizer` (
  `fertilizer_id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `nutrient_content` varchar(20) NOT NULL,
  `expiry_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fertilizer`
--

INSERT INTO `fertilizer` (`fertilizer_id`, `name`, `nutrient_content`, `expiry_date`) VALUES
(3, 'Morgan Wilkins', 'Ammonium Sulfate', '2026-09-09'),
(4, 'Carol Le', 'Urea 46%', '2027-06-14'),
(6, 'Jennifer Franklin', 'Potassium 30%', '2027-01-10'),
(13, 'Margaret Skinner', 'Organic Compost', '2026-12-31'),
(15, 'Michelle Davidson', 'NPK 20-10-10', '2027-08-15'),
(23, 'Holly Smith', 'Calcium Nitrate', '2026-11-10'),
(37, 'Amanda Nichols', 'Phosphorus 18%', '2026-07-25'),
(53, 'Terri Ortiz', 'Nitrogen 25%', '2027-03-18'),
(57, 'Michael Peterson', 'Urea 46%', '2027-02-20'),
(68, 'Rhonda Baxter', 'NPK 15-15-15', '2026-10-22'),
(69, 'Jamie Li', 'NPK 10-10-10', '2026-11-30'),
(70, 'Kevin Yates', 'Potash 60%', '2026-10-01'),
(81, 'Jeffrey Edwards', 'NPK 16-16-8', '2027-03-05'),
(82, 'Michael Wilson', 'NPK 12-24-12', '2027-05-27'),
(85, 'Timothy Cooper', 'Phosphorus 20%', '2026-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `field`
--

CREATE TABLE `field` (
  `field_id` int(20) NOT NULL,
  `farm_id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `size` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `field`
--

INSERT INTO `field` (`field_id`, `farm_id`, `name`, `size`) VALUES
(6, 15, 'West Orchard', 37),
(16, 3, 'Harvest Zone A', 43),
(31, 4, 'Sunrise Patch', 9),
(42, 24, 'Golden Patch', 18),
(48, 15, 'Crop Sector C', 40),
(49, 24, 'Greenline Row', 19),
(51, 35, 'Sunset Division', 26),
(56, 38, 'Riverside Bed', 35),
(87, 23, 'Willow Strip', 17),
(94, 3, 'South Field Block', 26),
(95, 23, 'Highland Bay', 48),
(96, 3, 'South Field Block', 26),
(161, 3, 'Harvest Zone A', 43),
(164, 3, 'Harvest Zone A', 43),
(165, 3, 'Harvest Zone A', 43),
(1613, 35, 'Harvest Zone B', 37),
(1650, 3, 'Harvest Zone A', 43),
(2442, 38, 'Meadow Ridge', 5),
(3036, 80, 'East Garden Plot', 8),
(3112, 4, 'Sunrise Patch', 9),
(3139, 80, 'North Terrace', 43),
(4263, 24, 'Golden Patch', 18),
(4832, 15, 'Crop Sector C', 40),
(4985, 24, 'Greenline Row', 19),
(5142, 35, 'Sunset Division', 26),
(5614, 38, 'Riverside Bed', 35),
(6343, 15, 'West Orchard', 37),
(8778, 23, 'Willow Strip', 17),
(9541, 23, 'Highland Bay', 48),
(9601, 3, 'South Field Block', 26);

-- --------------------------------------------------------

--
-- Table structure for table `harvest`
--

CREATE TABLE `harvest` (
  `harvest_id` int(20) NOT NULL,
  `crop_id` int(20) DEFAULT NULL,
  `quantity` int(20) NOT NULL,
  `harvest_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `harvest`
--

INSERT INTO `harvest` (`harvest_id`, `crop_id`, `quantity`, `harvest_date`) VALUES
(2876, 13, 22, '2000-03-28'),
(4176, 13, 14, '2008-03-30'),
(4976, 85, 32, '2015-01-23'),
(7072, 857865, 2, '2021-04-05'),
(8176, 857865, 8, '1976-09-11'),
(8278, 857865, 40, '1992-01-14'),
(8766, 30, 36, '1992-12-20'),
(33786, 30, 40, '1970-03-11'),
(39786, 30, 49, '2011-04-21'),
(41786, 85, 12, '2016-06-13'),
(45786, 85, 39, '2025-01-28'),
(48786, 85, 32, '2012-01-18'),
(64557, 857865, 28, '1974-07-07'),
(67575, 13, 21, '1995-02-21'),
(94786, 857865, 19, '2000-11-26');

-- --------------------------------------------------------

--
-- Table structure for table `livestock`
--

CREATE TABLE `livestock` (
  `livestock_id` int(20) NOT NULL,
  `farm_id` int(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `breed` varchar(20) NOT NULL,
  `tag_number` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `livestock`
--

INSERT INTO `livestock` (`livestock_id`, `farm_id`, `type`, `breed`, `tag_number`) VALUES
(1, 15, 'meat', 'Angus', 0),
(9444, 3, 'vegetable', 'N/A', 0),
(9744, 15, 'meat', 'Angus', 0),
(243645, 4, 'fruit', 'N/A', 0),
(401120, 15, 'meat', 'Angus', 0),
(414441, 15, 'meat', 'Angus', 0),
(419944, 15, 'meat', 'Angus', 0),
(421447, 15, 'meat', 'Angus', 0),
(423244, 15, 'meat', 'Angus', 0),
(434231, 3, 'vegetable', 'N/A', 0),
(434456, 3, 'vegetable', 'N/A', 0),
(434744, 3, 'vegetable', 'N/A', 0),
(440112, 15, 'meat', 'Angus', 0),
(452517, 15, 'meat', 'Angus', 0),
(452557, 15, 'meat', 'Angus', 0),
(530076, 3, 'fruit', 'N/A', 0),
(543474, 3, 'dairy', 'Jersey', 0),
(543476, 3, 'dairy', 'Jersey', 0),
(544076, 3, 'vegetable', 'N/A', 0),
(723345, 4, 'grain', 'N/A', 0),
(723745, 4, 'grain', 'N/A', 0),
(747866, 35, 'grain', 'N/A', 0),
(752576, 15, 'meat', 'Angus', 0),
(940120, 15, 'meat', 'Angus', 0),
(941299, 15, 'meat', 'Angus', 0),
(944544, 3, 'vegetable', 'N/A', 0),
(944564, 3, 'vegetable', 'N/A', 0),
(971244, 15, 'meat', 'Angus', 0),
(971454, 15, 'meat', 'Angus', 0),
(974464, 15, 'meat', 'Angus', 0),
(975715, 15, 'meat', 'Angus', 0),
(975761, 15, 'meat', 'Angus', 0),
(1224403, 15, 'meat', 'Angus', 0),
(1433423, 3, 'vegetable', 'N/A', 0),
(2542343, 3, 'dairy', 'Jersey', 0),
(2543454, 3, 'dairy', 'Jersey', 0),
(3234453, 4, 'fruit', 'N/A', 0),
(3723345, 4, 'grain', 'N/A', 0),
(3734453, 24, 'meat', 'Hereford', 0),
(4129944, 15, 'meat', 'Angus', 0),
(4324474, 3, 'vegetable', 'N/A', 0),
(4334231, 3, 'vegetable', 'N/A', 0),
(4342310, 3, 'vegetable', 'N/A', 0),
(4344124, 3, 'vegetable', 'N/A', 0),
(4344231, 3, 'vegetable', 'N/A', 0),
(4401120, 15, 'meat', 'Angus', 0),
(4525147, 15, 'meat', 'Angus', 0),
(4525557, 15, 'meat', 'Angus', 0),
(6004786, 35, 'fruit', 'N/A', 0),
(7525761, 15, 'meat', 'Angus', 0),
(9401120, 15, 'meat', 'Angus', 0),
(9434456, 3, 'vegetable', 'N/A', 0),
(9445454, 3, 'vegetable', 'N/A', 0),
(9705761, 15, 'meat', 'Angus', 0),
(9714521, 15, 'meat', 'Angus', 0),
(9714541, 15, 'meat', 'Angus', 0),
(9757145, 15, 'meat', 'Angus', 0),
(12244011, 15, 'meat', 'Angus', 0),
(12244032, 15, 'meat', 'Angus', 0),
(14334231, 3, 'vegetable', 'N/A', 0),
(14334234, 3, 'vegetable', 'N/A', 0),
(22440112, 15, 'meat', 'Angus', 0),
(23445366, 4, 'fruit', 'N/A', 0),
(23645456, 4, 'fruit', 'N/A', 0),
(33445376, 24, 'meat', 'Hereford', 0),
(39414376, 23, 'fruit', 'N/A', 0),
(41299449, 15, 'meat', 'Angus', 0),
(42444154, 15, 'meat', 'Angus', 0),
(43342310, 3, 'vegetable', 'N/A', 0),
(43474456, 3, 'vegetable', 'N/A', 0),
(45251476, 15, 'meat', 'Angus', 0),
(54345476, 3, 'dairy', 'Jersey', 0),
(97145214, 15, 'meat', 'Angus', 0),
(97145244, 15, 'meat', 'Angus', 0),
(97525761, 15, 'meat', 'Angus', 0),
(122440112, 15, 'meat', 'Angus', 0),
(243645456, 4, 'fruit', 'N/A', 0),
(254234315, 3, 'dairy', 'Jersey', 0),
(254345476, 3, 'dairy', 'Jersey', 0),
(323445366, 4, 'fruit', 'N/A', 0),
(421445277, 15, 'meat', 'Angus', 0),
(434544231, 3, 'vegetable', 'N/A', 0),
(453045376, 23, 'grain', 'N/A', 0),
(723375745, 4, 'grain', 'N/A', 0);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `owner_id` int(20) NOT NULL,
  `First_name` varchar(20) NOT NULL,
  `Last_name` varchar(20) NOT NULL,
  `contact_number` int(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`owner_id`, `First_name`, `Last_name`, `contact_number`, `email`, `address`) VALUES
(1, 'Carrie', 'Romero', 1713789115, 'carrie.romero@example.com', 'Katrinaview'),
(5, 'Rachel', 'Daniels', 1713789115, 'rachel.daniels@example.com', 'Salinasland'),
(26, 'Charles', 'Dixon', 1713789115, 'charles.dixon@example.com', 'Mooretown'),
(30, 'Joel', 'Fritz', 1713789115, 'joel.fritz@example.com', 'Annetteland'),
(43, 'Stephanie', 'Wood', 1713789115, 'stephanie.wood@example.com', 'East Kristin'),
(44, 'Renee', 'Carlson', 1713789115, 'renee.carlson@example.com', 'Lake Drewview'),
(48, 'Robert', 'Lee', 1713789115, 'robert.lee@example.com', 'Douglasberg'),
(55, 'Erin', 'Sloan', 1713789115, 'erin.sloan@example.com', 'Davisview'),
(66, 'Joseph', 'Brewer', 1713789115, 'joseph.brewer@example.com', 'New Eric'),
(78, 'Patricia', 'Shaw', 1713789115, 'patricia.shaw@example.com', 'North Thomaschester'),
(81, 'Elizabeth', 'Wang', 1713789115, 'elizabeth.wang@example.com', 'North Teresaland'),
(88, 'Suzanne', 'Quinn', 1713789115, 'suzanne.quinn@example.com', 'East Amandaview'),
(90, 'Ashley', 'Huerta', 1713789115, 'ashley.huerta@example.com', 'Port Johnshire'),
(91, 'Briana', 'Martin', 1713789115, 'briana.martin@example.com', 'Port Marc'),
(98, 'Paul', 'Wright', 1713789115, 'paul.wright@example.com', 'Port Mark');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(20) NOT NULL,
  `sale_id` int(20) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `quantity` int(20) NOT NULL,
  `product_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productstorage`
--

CREATE TABLE `productstorage` (
  `storage_id` int(20) NOT NULL,
  `farm_id` int(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `capacity` int(20) NOT NULL,
  `current_stock` int(20) NOT NULL,
  `temperature_c` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productstorage`
--

INSERT INTO `productstorage` (`storage_id`, `farm_id`, `location`, `capacity`, `current_stock`, `temperature_c`) VALUES
(2672, 3, 'North Katherine', 80, 75, '15.8'),
(3627, 4, 'Reyesshire', 10, 7, '12.4'),
(3911, 4, 'Steveport', 100, 84, '16.7'),
(5673, 4, 'North Joanna', 110, 99, '19.3'),
(7243, 80, 'Jefferyhaven', 40, 33, '17.5'),
(7576, 80, 'Taylorshire', 25, 18, '13.9'),
(8276, 81, 'Richardmouth', 15, 10, '16.0'),
(8976, 38, 'West Patricialand', 100, 86, '20.0'),
(9276, 38, 'North Johnfort', 30, 25, '11.7'),
(12425, 3, 'Port Julie', 100, 81, '18.0'),
(23423, 3, 'Lake Kristin', 100, 89, '14.5'),
(26732, 3, 'West Traceyfurt', 60, 52, '17.2'),
(72425, 3, 'Port Julie', 100, 81, '18.0'),
(267275, 3, 'North Katherine', 80, 75, '15.8'),
(1242545, 3, 'Port Julie', 100, 81, '18.0'),
(2342345, 3, 'Lake Kristin', 100, 89, '14.5'),
(7242545, 3, 'Port Julie', 100, 81, '18.0'),
(26732745, 3, 'West Traceyfurt', 60, 52, '17.2');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseitem`
--

CREATE TABLE `purchaseitem` (
  `item_id` int(20) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `quantity` int(20) NOT NULL,
  `total_price` int(10) NOT NULL,
  `po_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchaseitem`
--

INSERT INTO `purchaseitem` (`item_id`, `product_name`, `quantity`, `total_price`, `po_id`) VALUES
(1, 'Product X', 52, 5065, 1175),
(3, 'Product Y', 98, 46352, 1175),
(9, 'Product Z', 45, 8678, 3376),
(10, 'Product AA', 94, 5540, 3376),
(1986, 'Product AD', 93, 8335, 7876),
(3576, 'Product Y', 98, 46352, 1175),
(4376, 'Product AH', 20, 6643, 9575),
(5876, 'Product AI', 10, 2558, 9575),
(8224, 'Product AJ', 76, 15585, 9575),
(9347, 'Product AK', 19, 4547, 8476),
(9545, 'Product AL', 76, 7978, 8476),
(10475, 'Product AA', 94, 5540, 3376),
(10575, 'Product AB', 28, 12937, 1445),
(14567, 'Product AC', 91, 29923, 1445),
(15657, 'Product X', 52, 5065, 1175),
(32786, 'Product AE', 56, 27442, 7876),
(33786, 'Product AF', 74, 18505, 8476),
(36786, 'Product AG', 27, 12460, 9575),
(95675, 'Product Z', 45, 8678, 3376);

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorder`
--

CREATE TABLE `purchaseorder` (
  `po_id` int(20) NOT NULL,
  `order_date` date NOT NULL,
  `total_amount` int(20) NOT NULL,
  `delivery_due_date` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `supplier_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchaseorder`
--

INSERT INTO `purchaseorder` (`po_id`, `order_date`, `total_amount`, `delivery_due_date`, `status`, `supplier_id`) VALUES
(1175, '2019-08-24', 492, '2019-09-03', 'delivered', 876),
(1445, '1990-06-23', 10, '1990-07-06', 'pending', 1176),
(2576, '1992-08-18', 404, '1992-08-31', 'shipped', 6167),
(3376, '1976-06-25', 494, '1976-07-08', 'delivered', 82455),
(4076, '2025-02-28', 425, '2025-03-13', 'pending', 82455),
(4176, '1979-04-09', 306, '1979-04-20', 'delivered', 82455),
(4776, '2022-09-23', 457, '2022-10-06', 'shipped', 8456),
(5176, '1983-06-25', 240, '1983-07-06', 'delivered', 8456),
(6676, '2015-07-18', 236, '2015-07-29', 'pending', 8456),
(7876, '1990-08-05', 381, '1990-08-17', 'pending', 7246),
(8476, '1977-03-26', 470, '1977-04-05', 'delivered', 6167),
(9575, '2025-02-07', 42, '2025-02-17', 'pending', 8),
(17756, '2006-01-18', 292, '2006-01-29', 'shipped', 876),
(70786, '1977-07-24', 129, '1977-08-05', 'shipped', 7246),
(86766, '2013-03-15', 229, '2013-03-26', 'shipped', 6167);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(20) NOT NULL,
  `customer_id` int(20) NOT NULL,
  `product_type` varchar(20) NOT NULL,
  `quantity` int(20) NOT NULL,
  `sale_date` date NOT NULL,
  `total_amount` int(20) NOT NULL,
  `product_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `addresss` varchar(30) NOT NULL,
  `product_types` varchar(20) NOT NULL,
  `phone` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `name`, `email`, `addresss`, `product_types`, `phone`) VALUES
(8, 'William Erickson', 'william.erickson@exa', 'West Thomasmouth', 'Feeds', 1713789115),
(876, 'Anna Preston', 'anna.preston@example', 'Samanthatown', 'Fertilizers', 1713789115),
(1176, 'Jason Barnes', 'jason.barnes@example', 'Martinland', 'Seeds', 1713789115),
(1776, 'Joy Macias', 'joy.macias@example.c', 'Port William', 'Machinery', 1713789115),
(4376, 'Lisa Bowman', 'lisa.bowman@example.', 'Kimberlyburgh', 'Animal Feed', 1713789115),
(5176, 'Whitney Henry', 'whitney.henry@exampl', 'East Jennifer', 'Grains', 1713789115),
(5976, 'Ashley Thompson', 'ashley.thompson@exam', 'West Justin', 'Herbicides', 1713789115),
(6144, 'Paul Lee', 'paul.lee@example.com', 'Torresport', 'Seeds', 1713789115),
(6167, 'Heather Clark', 'heather.clark@exampl', 'Williamschester', 'Fertilizers', 1713789115),
(6645, 'Michael Ford', 'michael.ford@example', 'Adamsland', 'Feeds', 1713789115),
(7246, 'Alexander Rosales', 'alexander.rosales@ex', 'South Alexanderville', 'Fruits', 1713789115),
(8246, 'Krystal French', 'krystal.french@examp', 'Lake Karenfurt', 'Dairy', 1713789115),
(8456, 'William Erickson', 'william.erickson@exa', 'West Thomasmouth', 'Feeds', 1713789115),
(26786, 'Aaron Dawson', 'aaron.dawson@example', 'Thomasville', 'Tools', 1713789115),
(28786, 'Keith Davis', 'keith.davis@example.', 'Seanside', 'Pesticides', 1713789115),
(82455, 'Thomas Perez', 'thomas.perez@example', 'West Martinhaven', 'Vegetables', 1713789115);

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `transport_id` int(10) NOT NULL,
  `vehicle` varchar(15) NOT NULL,
  `driver_name` varchar(20) NOT NULL,
  `transport_type` varchar(20) NOT NULL,
  `capacity` int(11) NOT NULL,
  `delivery_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crop`
--
ALTER TABLE `crop`
  ADD PRIMARY KEY (`crop_id`),
  ADD KEY `field_id` (`field_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`delivery_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `employeetask`
--
ALTER TABLE `employeetask`
  ADD PRIMARY KEY (`task_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `field_id` (`field_id`);

--
-- Indexes for table `farm`
--
ALTER TABLE `farm`
  ADD PRIMARY KEY (`farm_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `feed`
--
ALTER TABLE `feed`
  ADD PRIMARY KEY (`feed_id`),
  ADD KEY `livestock_id` (`livestock_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `fertilizer`
--
ALTER TABLE `fertilizer`
  ADD PRIMARY KEY (`fertilizer_id`);

--
-- Indexes for table `field`
--
ALTER TABLE `field`
  ADD PRIMARY KEY (`field_id`),
  ADD KEY `farm_id` (`farm_id`);

--
-- Indexes for table `harvest`
--
ALTER TABLE `harvest`
  ADD PRIMARY KEY (`harvest_id`),
  ADD KEY `crop_id` (`crop_id`);

--
-- Indexes for table `livestock`
--
ALTER TABLE `livestock`
  ADD PRIMARY KEY (`livestock_id`),
  ADD KEY `farm_id` (`farm_id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`owner_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Indexes for table `productstorage`
--
ALTER TABLE `productstorage`
  ADD PRIMARY KEY (`storage_id`),
  ADD KEY `farm_id` (`farm_id`);

--
-- Indexes for table `purchaseitem`
--
ALTER TABLE `purchaseitem`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `po_id` (`po_id`);

--
-- Indexes for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  ADD PRIMARY KEY (`po_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`transport_id`),
  ADD KEY `delivery_id` (`delivery_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `crop`
--
ALTER TABLE `crop`
  ADD CONSTRAINT `crop_ibfk_1` FOREIGN KEY (`field_id`) REFERENCES `field` (`field_id`);

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `employeetask`
--
ALTER TABLE `employeetask`
  ADD CONSTRAINT `employeetask_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`),
  ADD CONSTRAINT `employeetask_ibfk_2` FOREIGN KEY (`field_id`) REFERENCES `field` (`field_id`);

--
-- Constraints for table `farm`
--
ALTER TABLE `farm`
  ADD CONSTRAINT `farm_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`owner_id`);

--
-- Constraints for table `feed`
--
ALTER TABLE `feed`
  ADD CONSTRAINT `feed_ibfk_1` FOREIGN KEY (`livestock_id`) REFERENCES `livestock` (`livestock_id`),
  ADD CONSTRAINT `feed_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `field`
--
ALTER TABLE `field`
  ADD CONSTRAINT `field_ibfk_1` FOREIGN KEY (`farm_id`) REFERENCES `farm` (`farm_id`);

--
-- Constraints for table `harvest`
--
ALTER TABLE `harvest`
  ADD CONSTRAINT `harvest_ibfk_1` FOREIGN KEY (`crop_id`) REFERENCES `crop` (`crop_id`);

--
-- Constraints for table `livestock`
--
ALTER TABLE `livestock`
  ADD CONSTRAINT `livestock_ibfk_1` FOREIGN KEY (`farm_id`) REFERENCES `farm` (`farm_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`sale_id`);

--
-- Constraints for table `productstorage`
--
ALTER TABLE `productstorage`
  ADD CONSTRAINT `productstorage_ibfk_1` FOREIGN KEY (`farm_id`) REFERENCES `farm` (`farm_id`);

--
-- Constraints for table `purchaseitem`
--
ALTER TABLE `purchaseitem`
  ADD CONSTRAINT `purchaseitem_ibfk_1` FOREIGN KEY (`po_id`) REFERENCES `purchaseorder` (`po_id`);

--
-- Constraints for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  ADD CONSTRAINT `purchaseorder_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`);

--
-- Constraints for table `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `sale_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `transport`
--
ALTER TABLE `transport`
  ADD CONSTRAINT `transport_ibfk_1` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`delivery_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
