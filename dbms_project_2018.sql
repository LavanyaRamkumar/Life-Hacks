-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2018 at 01:03 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbms_project_2018`
--

-- --------------------------------------------------------

--
-- Table structure for table `cost`
--

CREATE TABLE `cost` (
  `Discount` int(11) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Room_id` varchar(10) NOT NULL,
  `H_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cost`
--

INSERT INTO `cost` (`Discount`, `Amount`, `Room_id`, `H_id`) VALUES
(12, 4250, 'HR_001', 'H001'),
(15, 2350, 'HR_001', 'H002'),
(22, 6250, 'HR_001', 'H003'),
(21, 7250, 'HR_001', 'H004'),
(26, 9250, 'HR_001', 'H005'),
(32, 5250, 'HR_001', 'H006'),
(12, 4250, 'HR_001', 'H007'),
(42, 4250, 'HR_001', 'H008'),
(2, 2250, 'HR_001', 'H009'),
(35, 4250, 'HR_001', 'H010'),
(12, 2250, 'HR_001', 'H011'),
(25, 6250, 'HR_001', 'H012'),
(35, 1250, 'HR_001', 'H013'),
(31, 11250, 'HR_001', 'H014'),
(35, 4250, 'HR_001', 'H015'),
(15, 2250, 'HR_001', 'H016'),
(12, 3250, 'HR_001', 'H017'),
(37, 4250, 'HR_001', 'H018'),
(30, 24250, 'HR_001', 'H019'),
(23, 1250, 'HR_001', 'H020'),
(12, 3250, 'HR_002', 'H001'),
(15, 2200, 'HR_002', 'H002'),
(22, 5250, 'HR_002', 'H003'),
(23, 6250, 'HR_002', 'H004'),
(26, 8250, 'HR_002', 'H005'),
(32, 4250, 'HR_002', 'H006'),
(12, 550, 'HR_002', 'H007'),
(45, 550, 'HR_002', 'H008'),
(2, 1550, 'HR_002', 'H009'),
(35, 550, 'HR_002', 'H010'),
(15, 250, 'HR_002', 'H011'),
(25, 650, 'HR_002', 'H012'),
(35, 1250, 'HR_002', 'H013'),
(31, 11550, 'HR_002', 'H014'),
(35, 550, 'HR_002', 'H015'),
(15, 2250, 'HR_002', 'H016'),
(12, 3450, 'HR_002', 'H017'),
(37, 550, 'HR_002', 'H018'),
(30, 22550, 'HR_002', 'H019'),
(23, 5250, 'HR_002', 'H020'),
(12, 1250, 'HR_003', 'H001'),
(15, 1250, 'HR_003', 'H002'),
(22, 4250, 'HR_003', 'H003'),
(21, 4250, 'HR_003', 'H004'),
(35, 5250, 'HR_003', 'H005'),
(31, 3250, 'HR_003', 'H006'),
(14, 6250, 'HR_003', 'H007'),
(45, 6250, 'HR_003', 'H008'),
(4, 950, 'HR_003', 'H009'),
(35, 6250, 'HR_003', 'H010'),
(15, 2250, 'HR_003', 'H011'),
(25, 6250, 'HR_003', 'H012'),
(35, 2250, 'HR_003', 'H013'),
(31, 11250, 'HR_003', 'H014'),
(35, 6250, 'HR_003', 'H015'),
(15, 2250, 'HR_003', 'H016'),
(21, 3250, 'HR_003', 'H017'),
(37, 6250, 'HR_003', 'H018'),
(30, 21250, 'HR_003', 'H019'),
(23, 1250, 'HR_003', 'H020'),
(15, 750, 'HR_004', 'H001'),
(19, 900, 'HR_004', 'H002'),
(25, 3250, 'HR_004', 'H003'),
(15, 1950, 'HR_004', 'H004'),
(24, 2650, 'HR_004', 'H005'),
(24, 1650, 'HR_004', 'H006'),
(12, 650, 'HR_004', 'H007'),
(42, 650, 'HR_004', 'H008'),
(2, 650, 'HR_004', 'H009'),
(32, 650, 'HR_004', 'H010'),
(12, 650, 'HR_004', 'H011'),
(22, 2650, 'HR_004', 'H012'),
(32, 1650, 'HR_004', 'H013'),
(31, 3650, 'HR_004', 'H014'),
(32, 650, 'HR_004', 'H015'),
(12, 650, 'HR_004', 'H016'),
(12, 1650, 'HR_004', 'H017'),
(37, 650, 'HR_004', 'H018'),
(30, 9650, 'HR_004', 'H019'),
(23, 650, 'HR_004', 'H020');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `F_id` varchar(10) DEFAULT NULL,
  `F_name` varchar(20) DEFAULT NULL,
  `Ph_number` varchar(15) DEFAULT NULL,
  `Designation` varchar(20) DEFAULT NULL,
  `H_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`F_id`, `F_name`, `Ph_number`, `Designation`, `H_id`) VALUES
('HF_001', 'Keith', '9686657181', 'Manager', 'H001'),
('HF_002', 'steve', '9683357181', 'Clerk', 'H001'),
('HF_003', 'Raman', '2346657181', 'Owner', 'H001'),
('HF_004', 'rakshit', '9686659081', 'Maintainance', 'H001'),
('HF_001', 'sam', '9655657181', 'Manager', 'H002'),
('HF_002', 'rohit', '9683227181', 'Clerk', 'H002'),
('HF_003', 'swetha', '2347757181', 'Owner', 'H002'),
('HF_004', 'ram', '9686559081', 'Maintainance', 'H002'),
('HF_001', 'Mohit', '9655657155', 'Manager', 'H003'),
('HF_002', 'Lohit', '9683327133', 'Clerk', 'H003'),
('HF_003', 'bruce', '2347757122', 'Owner', 'H003'),
('HF_004', 'chan', '9686449054', 'Maintainance', 'H003'),
('HF_001', 'lloyd', '9655657126', 'Manager', 'H004'),
('HF_002', 'keshav', '9683327153', 'Clerk', 'H004'),
('HF_003', 'rohin', '2347757100', 'Owner', 'H004'),
('HF_004', 'mel', '9686449055', 'Maintainance', 'H004'),
('HF_001', 'Floyd', '9655657133', 'Manager', 'H005'),
('HF_002', 'Manny', '9683327123', 'Clerk', 'H005'),
('HF_003', 'Krishna', '2347757167', 'Owner', 'H005'),
('HF_004', 'Tom', '9686449069', 'Maintainance', 'H005'),
('HF_001', 'Ramos', '9655657100', 'Manager', 'H006'),
('HF_002', 'Abdulla', '9683327144', 'Clerk', 'H006'),
('HF_003', 'Robin', '2347757172', 'Owner', 'H006'),
('HF_004', 'Tracy', '9686449001', 'Maintainance', 'H006'),
('HF_001', 'Seth', '9655657181', 'Manager', 'H007'),
('HF_002', 'Paul', '9683327134', 'Clerk', 'H007'),
('HF_003', 'Rooney', '2347757198', 'Owner', 'H007'),
('HF_004', 'Kent', '9686449044', 'Maintainance', 'H007'),
('HF_001', 'Prem', '9655657155', 'Manager', 'H008'),
('HF_002', 'Param', '9683327136', 'Clerk', 'H008'),
('HF_003', 'Lohit', '2347757198', 'Owner', 'H008'),
('HF_004', 'ram', '9686449081', 'Maintainance', 'H008'),
('HF_001', 'Yash', '9655657181', 'Manager', 'H009'),
('HF_002', 'Lekh', '9683327181', 'Clerk', 'H009'),
('HF_003', 'Singh', '2347757181', 'Owner', 'H009'),
('HF_004', 'Roy', '9686449081', 'Maintainance', 'H009'),
('HF_001', 'Sid', '9655657138', 'Manager', 'H010'),
('HF_002', 'Sophia', '9683327136', 'Clerk', 'H010'),
('HF_003', 'Abhishek', '2347757147', 'Owner', 'H010'),
('HF_004', 'Dinesh', '9686449069', 'Maintainance', 'H010'),
('HF_001', 'Sohail', '9655657138', 'Manager', 'H011'),
('HF_002', 'Deepak', '9683327136', 'Clerk', 'H011'),
('HF_003', 'Janardan', '2347757147', 'Owner', 'H011'),
('HF_004', 'Dan', '9686449069', 'Maintainance', 'H011'),
('HF_001', 'Sam', '9655657138', 'Manager', 'H012'),
('HF_002', 'pranjal', '9683327136', 'Clerk', 'H012'),
('HF_003', 'Abhi', '2347757147', 'Owner', 'H012'),
('HF_004', 'Karthik', '9686449069', 'Maintainance', 'H012'),
('HF_001', 'Arjun', '9655657138', 'Manager', 'H013'),
('HF_002', 'Chetan', '9683327136', 'Clerk', 'H013'),
('HF_003', 'Jai', '2347757147', 'Owner', 'H013'),
('HF_004', 'Guru', '9686449069', 'Maintainance', 'H013'),
('HF_001', 'Hemant', '9652357138', 'Manager', 'H014'),
('HF_002', 'Sinha', '9683327136', 'Clerk', 'H014'),
('HF_003', 'Troy', '234555147', 'Owner', 'H014'),
('HF_004', 'Ben', '9686434569', 'Maintainance', 'H014'),
('HF_001', 'Damian', '9611157138', 'Manager', 'H015'),
('HF_002', 'Derrek', '9634527136', 'Clerk', 'H015'),
('HF_003', 'sheik Sahab', '2346787147', 'Owner', 'H015'),
('HF_004', 'Paul', '9686441239', 'Maintainance', 'H015'),
('HF_001', 'Rao', '9655687138', 'Manager', 'H016'),
('HF_002', 'Karthik K', '9683123136', 'Clerk', 'H016'),
('HF_003', 'Ramesh', '2347333147', 'Owner', 'H016'),
('HF_004', 'John', '9686412369', 'Maintainance', 'H016'),
('HF_001', 'Keshav', '9651237138', 'Manager', 'H017'),
('HF_002', 'Sophie', '9685557136', 'Clerk', 'H017'),
('HF_003', 'ken', '2347751237', 'Owner', 'H017'),
('HF_004', 'Tim', '9686449069', 'Maintainance', 'H017'),
('HF_001', 'Ethan', '9655456138', 'Manager', 'H018'),
('HF_002', 'Hila', '9683344436', 'Clerk', 'H018'),
('HF_003', 'Malone', '2344567147', 'Owner', 'H018'),
('HF_004', 'Katie', '9686000069', 'Maintainance', 'H018'),
('HF_001', 'Steve', '9655123138', 'Manager', 'H019'),
('HF_002', 'Jim', '9683323456', 'Clerk', 'H019'),
('HF_003', 'Dwight', '2345677147', 'Owner', 'H019'),
('HF_004', 'Pam', '9686445669', 'Maintainance', 'H019'),
('HF_001', 'Will', '9655444138', 'Manager', 'H020'),
('HF_002', 'Farrel', '9634527136', 'Clerk', 'H020'),
('HF_003', 'Matt', '2347234147', 'Owner', 'H020'),
('HF_004', 'Damon', '9612399069', 'Maintainance', 'H020');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `H_id` varchar(10) NOT NULL,
  `Rating` int(11) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `U_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`H_id`, `Rating`, `Name`, `U_id`) VALUES
('H001', 5, 'The Lalit Ashok (Nor', 'SU10001'),
('H002', 4, 'Trebo Terminus', 'SU10002'),
('H003', 4, 'Treebo Orchard Green', 'SU10003'),
('H004', 5, 'The Taj Vivanta ', 'SU10004'),
('H005', 5, 'The Lalit Ashok (Sou', 'SU10005'),
('H006', 5, 'The Elanza', 'SU10006'),
('H007', 4, 'Novotel Grand', 'SU10007'),
('H008', 3, 'Terrace Gardens', 'SU10008'),
('H009', 5, 'The Marriot', 'SU10009'),
('H010', 2, 'Laika Boutique ', 'SU10010'),
('H011', 4, 'Taj West End', 'SU10011'),
('H012', 5, 'The Shangri-La', 'SU10012'),
('H013', 3, 'The Zuri Lodge', 'SU10013'),
('H014', 1, 'Hotel Amatra Delux', 'SU10014'),
('H015', 3, 'Ample INN', 'SU10015'),
('H016', 4, 'ibis Hotels', 'SU10016'),
('H017', 5, 'Keys Ltd', 'SU10017'),
('H018', 4, 'Perl REsidency', 'SU10018'),
('H019', 4, 'The Grand Mercure Ho', 'SU10019'),
('H020', 5, 'The Gateway Hotel', 'SU10020');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `Localaddress` varchar(50) DEFAULT NULL,
  `Pincode` varchar(10) DEFAULT NULL,
  `Town` varchar(20) DEFAULT NULL,
  `H_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`Localaddress`, `Pincode`, `Town`, `H_id`) VALUES
('Kumara Krupa High Grounds, Next to CM Guest House,', '560001', 'Bangalore', 'H001'),
('48, 4th B Cross Road, Koramangala Industrial Layou', '560034', 'Bangalore', 'H002'),
('1/13A, Haralur Road, Off Sarjapur Rd, Bengaluru, K', '560034', 'Bangalore', 'H003'),
('41/3, Mahatma Gandhi Road, Yellappa Garden, Yellap', '560001', 'Bangalore', 'H004'),
('Bellandur Main Road, Opposite Central Mall, Bellan', '560103', 'Bangalore', 'H005'),
('88/2, Richmond Road, Bengaluru, Karnataka', '560025', 'Bangalore', 'H006'),
('Opposite RMZ Ecospace Business Park, Marathahalli ', '560103', 'Bangalore', 'H007'),
('15, Brunton Cross Road, Oposite Hakims Ali salon N', '560025', 'Bangalore', 'H008'),
(' 24/1, Vittal Mallya Road, KG Halli, Shanthala Nag', '560001', 'Bangalore', 'H009'),
('51/24, Ratna Avenue, Richmond Road, Bengaluru, Kar', '560025', 'Bangalore', 'H010'),
('No.56-6B, Palace Road, Bengaluru, Karnataka ', '560052', 'Bangalore', 'H011'),
(' ITPL Main Rd, Maruthi Nagar, KIADB Export Promoti', '560048', 'Bangalore', 'H012'),
('Survey #45/3, Kasavanahalli Haraluru,, Sarjapur Ma', '560102', 'Bangalore', 'H013'),
('100 Feet Ring Road, Banashankari Stage III, Bengal', '560085', 'Bangalore', 'H014'),
('10, New Airport Road, T. Govindaswamy Layout, Tara', '562157', 'Bangalore', 'H015'),
(' Plot No 30 Rajaram Mohan Roy Road, Bengaluru, Kar', '560027', 'Bangalore', 'H016'),
('Hosur Rd, Singasandra, Bengaluru, Karnataka ', '560068', 'Bangalore', 'H017'),
('12th Main Road, 3rd Block, Koramangala, Bengaluru,', '560034', 'Bangalore', 'H018'),
('Bannerghatta Main Road, Opp Meenakshi Temple, Huli', '560076', 'Bangalore', 'H019'),
('66, Residency Road, Ashok Nagar, Bengaluru, Karnat', '560025', 'Bangalore', 'H020');

-- --------------------------------------------------------

--
-- Table structure for table `movie_actor`
--

CREATE TABLE `movie_actor` (
  `A_id` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `DOB` varchar(30) DEFAULT NULL,
  `SEX` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_actor`
--

INSERT INTO `movie_actor` (`A_id`, `Name`, `Age`, `DOB`, `SEX`) VALUES
(1, 'Tim Robbin', 34, '11-05-81', 'MALE'),
(2, 'Benedict Cumberbatch', 30, '12-07-88', 'MALE'),
(3, 'Rachel McAdams', 35, '23-05-83', 'FEMALE'),
(4, 'Chadwick Boseman', 40, '24-05-78', 'MALE'),
(6, 'Chris Hemsworth', 33, '12-07-86', 'MALE'),
(7, 'Chris Evans', 35, '11-05-81', 'MALE'),
(8, 'Finn Wolfhard', 21, '09-07-05', 'MALE'),
(9, 'Bradley Cooper', 27, '08-08-82', 'MALE'),
(10, 'Ryan Reynolds', 28, '01-03-89', 'MALE'),
(11, 'Leonardo Di Caprio', 29, '28-08-88', 'MALE'),
(12, 'Matthew McConaughey', 31, '24-03-86', 'MALE'),
(13, 'Hugh Jackman', 33, '23-07-84', 'MALE'),
(14, 'Ansel Elgort', 21, '21-03-96', 'MALE'),
(15, 'Matt Damon', 34, '19-07-83', 'MALE'),
(16, 'Chris Pratt', 34, '27-03-83', 'MALE'),
(17, 'Christian Bale', 34, '17-05-82', 'MALE'),
(18, 'Tom hardy', 34, '16-03-82', 'MALE'),
(19, 'Omar Sy', 34, '13-05-89', 'MALE'),
(20, 'Mark Hamill', 50, '12-12-68', 'MALE');

-- --------------------------------------------------------

--
-- Table structure for table `movie_also_as`
--

CREATE TABLE `movie_also_as` (
  `D_id` int(11) DEFAULT NULL,
  `A_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_also_as`
--

INSERT INTO `movie_also_as` (`D_id`, `A_id`) VALUES
(12, 16);

-- --------------------------------------------------------

--
-- Table structure for table `movie_director`
--

CREATE TABLE `movie_director` (
  `D_id` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `DOB` varchar(30) DEFAULT NULL,
  `SEX` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_director`
--

INSERT INTO `movie_director` (`D_id`, `Name`, `Age`, `DOB`, `SEX`) VALUES
(1, 'Frank Darabont', 34, '23-04-98', 'MALE'),
(2, 'Morten Tyldum', 30, '21-05-99', 'MALE'),
(3, 'Richard Curtis', 31, '22-06-87', 'MALE'),
(4, 'Scott Derrickson', 23, '20-07-86', 'MALE'),
(5, 'Ryan Coogler', 24, '21-08-87', 'MALE'),
(6, 'Taika Waititi', 33, '29-09-88', 'MALE'),
(7, 'Joe-Anthony Russo', 35, '12-11-89', 'MALE'),
(8, 'Andres Muschietti', 21, '01-12-75', 'MALE'),
(9, 'David O Russell', 37, '04-05-77', 'MALE'),
(10, 'Tim Miller', 28, '05-06-87', 'MALE'),
(11, 'Christopher Nolan', 29, '07-06-90', 'MALE'),
(12, 'Chris Pratt', 34, '27-03-83', 'MALE'),
(13, 'James Mangold', 31, '08-03-89', 'MALE'),
(14, 'Edgar wright', 33, '09-02-76', 'MALE'),
(15, 'Ridley Scott', 36, '10-01-89', 'MALE'),
(19, 'Olivier Nakache', 23, '12-07-88', 'MALE'),
(20, 'Rian Johnson', 36, '21-09-85', 'MALE');

-- --------------------------------------------------------

--
-- Table structure for table `movie_directs`
--

CREATE TABLE `movie_directs` (
  `D_id` int(11) DEFAULT NULL,
  `M_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_directs`
--

INSERT INTO `movie_directs` (`D_id`, `M_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(11, 12),
(13, 13),
(14, 14),
(15, 15),
(2, 16),
(11, 17),
(11, 18),
(19, 19),
(20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `movie_main`
--

CREATE TABLE `movie_main` (
  `M_id` int(11) NOT NULL,
  `Rating` int(11) DEFAULT NULL,
  `Title` varchar(40) DEFAULT NULL,
  `Genre` varchar(30) DEFAULT NULL,
  `length` varchar(30) DEFAULT NULL,
  `Company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_main`
--

INSERT INTO `movie_main` (`M_id`, `Rating`, `Title`, `Genre`, `length`, `Company_id`) VALUES
(1, 9, 'The Shawshank Redemption', 'Drama/Crime', '2h 22m', 3),
(2, 8, 'The Imitation Game', 'Drama/Thriller', '1h 54m', 5),
(3, 8, 'About Time', 'Drama/Fantasy', '2h 4m', 5),
(4, 7, 'Doctor Strange', 'Fantasy/Science Fiction', '1h 55m', 2),
(5, 8, 'Black Panther', 'Fantasy/Science Fiction', '2h 15m', 2),
(6, 8, 'Thor : Ragnarok', 'Fantasy/Science Fiction', '2h 10m', 2),
(7, 8, 'Captain America :Civil War', 'Fantasy/Science Fiction', '2h 20m', 2),
(8, 7, 'IT', 'Drama/Thriller', '2h 15m', 5),
(9, 8, 'Silver Linings Playbook', 'Drama/Romance', '2h 2m', 4),
(10, 8, 'Deadpool', 'Drama/Action', '1h 48m', 1),
(11, 9, 'Inception', 'Science Fiction/Thriller', '2h 28m', 5),
(12, 9, 'Interstellar', 'Drama/Mystery', '2h 49m', 4),
(13, 8, 'Logan', 'Drama/Science Fiction', '2h 21m', 1),
(14, 8, 'Baby Driver', 'Crime/Thriller', '1h 53m', 5),
(15, 9, 'The Martian', 'Drama/Fantasy', '2h 31m', 1),
(16, 7, 'Passengers', 'Drama/Thriller', '1h 56m', 1),
(17, 9, 'Dark Knight Rises', 'Thriller/Action', '2h 45m', 4),
(18, 9, 'Dunkirk', 'War/Thriller', '2h 48m', 4),
(19, 8, 'The Intouchables', 'Drama/Comedy', '1h 52m', 3),
(20, 9, 'Star wars:The Last Jedi', 'Fantasy/Science Fiction', '2h 32m', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movie_plays_in`
--

CREATE TABLE `movie_plays_in` (
  `M_id` int(11) DEFAULT NULL,
  `A_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_plays_in`
--

INSERT INTO `movie_plays_in` (`M_id`, `A_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 19),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 2),
(17, 3),
(18, 6),
(19, 9),
(20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `movie_p_company`
--

CREATE TABLE `movie_p_company` (
  `Company_id` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_p_company`
--

INSERT INTO `movie_p_company` (`Company_id`, `Name`, `Address`) VALUES
(1, '20th Century Fox', '112 Middle Rd, Singapore 18897'),
(2, 'Marvel Entertainment', 'New York,United States'),
(3, 'Castle Rock Entertainment', 'U.S.A'),
(4, 'New Line Cinema', '4000 Warner Blvd, â€ŽBurbank, '),
(5, 'Uni Production', 'New Jersey , U.S.A');

-- --------------------------------------------------------

--
-- Table structure for table `movie_schedule`
--

CREATE TABLE `movie_schedule` (
  `Date_` varchar(30) DEFAULT NULL,
  `Timing` varchar(30) DEFAULT NULL,
  `T_id` int(11) DEFAULT NULL,
  `played` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_schedule`
--

INSERT INTO `movie_schedule` (`Date_`, `Timing`, `T_id`, `played`) VALUES
('10-06-18', '2:40', 1, 'yes '),
('11-06-18', '2:40', 2, 'no '),
('13-06-18', '2:40', 3, 'yes '),
('15-06-18', '2:40', 4, 'no '),
('17-06-18', '2:40', 5, 'no '),
('18-06-18', '2:40', 2, 'no '),
('19-06-18', '2:34', 3, 'no '),
('20-06-18', '2:50', 4, 'no '),
('11-06-18', '3:30', 5, 'no '),
('21-06-18', '4:20', 1, 'no '),
('15-06-18', '3:55', 1, 'no '),
('17-09-18', '3:55', 3, 'no '),
('11-09-18', '3:55', 2, 'no '),
('18-09-18', '3:55', 4, 'no '),
('19-09-18', '3:55', 5, 'no '),
('12-09-18', '3:45', 5, 'no '),
('15-09-18', '3:45', 2, 'no '),
('17-09-18', '3:45', 4, 'no '),
('13-09-18', '3:45', 3, 'no '),
('15-09-18', '3:45', 1, 'no '),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, ''),
('', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `movie_screened_in`
--

CREATE TABLE `movie_screened_in` (
  `M_id` int(11) DEFAULT NULL,
  `T_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_screened_in`
--

INSERT INTO `movie_screened_in` (`M_id`, `T_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 2),
(7, 3),
(8, 4),
(9, 5),
(10, 1),
(11, 1),
(12, 3),
(13, 2),
(14, 4),
(15, 5),
(16, 5),
(17, 2),
(18, 4),
(19, 3),
(20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `movie_theatre`
--

CREATE TABLE `movie_theatre` (
  `T_id` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_theatre`
--

INSERT INTO `movie_theatre` (`T_id`, `Name`, `Address`) VALUES
(1, 'PVR_01', 'No 43,New Jersey'),
(2, 'GALAXY_01', 'No 85,Pittsburg'),
(3, 'IMAX_01', 'No 34,Los Angeles'),
(4, 'INOX_01', 'No 43,Detroit'),
(5, 'Cinepolis_01', 'No 43,Miami');

-- --------------------------------------------------------

--
-- Table structure for table `movie_ticket`
--

CREATE TABLE `movie_ticket` (
  `M_id` int(11) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Ticket_id` int(11) NOT NULL,
  `Date_` varchar(30) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `T_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_ticket`
--

INSERT INTO `movie_ticket` (`M_id`, `Amount`, `Ticket_id`, `Date_`, `userid`, `T_id`) VALUES
(1, 350, 1, '10-06-18', 0, 1),
(2, 400, 2, '11-06-18', 0, 2),
(3, 200, 3, '13-06-18', 0, 3),
(4, 250, 4, '15-06-18', 0, 4),
(5, 350, 5, '17-06-18', 0, 5),
(6, 350, 6, '18-06-18', 0, 6),
(7, 450, 7, '19-06-18', 0, 7),
(8, 400, 8, '20-06-18', 0, 8),
(9, 250, 9, '11-06-18', 0, 9),
(10, 270, 10, '21-06-18', 0, 10),
(11, 280, 11, '15-06-18', 0, 11),
(12, 450, 12, '17-09-18', 0, 12),
(13, 430, 13, '11-09-18', 0, 13),
(14, 300, 14, '18-09-18', 0, 14),
(15, 350, 15, '19-09-18', 0, 15),
(16, 375, 16, '12-09-18', 0, 16),
(17, 380, 17, '15-09-18', 0, 17),
(18, 380, 18, '17-09-18', 0, 18),
(19, 400, 19, '13-09-18', 0, 19),
(20, 300, 20, '15-09-18', 0, 20);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `Room_id` varchar(10) DEFAULT NULL,
  `Type` varchar(10) DEFAULT NULL,
  `Occupied` varchar(10) DEFAULT NULL,
  `H_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`Room_id`, `Type`, `Occupied`, `H_id`) VALUES
('HR_001', 'Delux', 'No', 'H001'),
('HR_002', 'Single', 'Yes', 'H001'),
('HR_003', 'Double', 'No', 'H001'),
('HR_004', 'Economy', 'Yes', 'H001'),
('HR_001', 'Delux', 'No', 'H002'),
('HR_002', 'Single', 'No', 'H002'),
('HR_003', 'Double', 'No', 'H002'),
('HR_004', 'Economy', 'Yes', 'H002'),
('HR_001', 'Delux', 'Yes', 'H003'),
('HR_002', 'Single', 'Yes', 'H003'),
('HR_003', 'Double', 'No', 'H003'),
('HR_004', 'Economy', 'Yes', 'H003'),
('HR_001', 'Delux', 'No', 'H004'),
('HR_002', 'Single', 'No', 'H004'),
('HR_003', 'Double', 'No', 'H004'),
('HR_004', 'Economy', 'No', 'H004'),
('HR_001', 'Delux', 'Yes', 'H005'),
('HR_002', 'Single', 'Yes', 'H005'),
('HR_003', 'Double', 'Yes', 'H005'),
('HR_004', 'Economy', 'Yes', 'H005'),
('HR_001', 'Delux', 'Yes', 'H006'),
('HR_002', 'Single', 'No', 'H006'),
('HR_003', 'Double', 'No', 'H006'),
('HR_004', 'Economy', 'Yes', 'H006'),
('HR_001', 'Delux', 'Yes', 'H007'),
('HR_002', 'Single', 'No', 'H007'),
('HR_003', 'Double', 'Yes', 'H007'),
('HR_004', 'Economy', 'No', 'H007'),
('HR_001', 'Delux', 'No', 'H008'),
('HR_002', 'Single', 'Yes', 'H008'),
('HR_003', 'Double', 'No', 'H008'),
('HR_004', 'Economy', 'No', 'H008'),
('HR_001', 'Delux', 'No', 'H009'),
('HR_002', 'Single', 'No', 'H009'),
('HR_003', 'Double', 'No', 'H009'),
('HR_004', 'Economy', 'No', 'H009'),
('HR_001', 'Delux', 'No', 'H010'),
('HR_002', 'Single', 'Yes', 'H010'),
('HR_003', 'Double', 'No', 'H010'),
('HR_004', 'Economy', 'Yes', 'H010'),
('HR_001', 'Delux', 'Yes', 'H011'),
('HR_002', 'Single', 'Yes', 'H011'),
('HR_003', 'Double', 'Yes', 'H011'),
('HR_004', 'Economy', 'Yes', 'H011'),
('HR_001', 'Delux', 'Yes', 'H012'),
('HR_002', 'Single', 'Yes', 'H012'),
('HR_003', 'Double', 'Yes', 'H012'),
('HR_004', 'Economy', 'Yes', 'H012'),
('HR_001', 'Delux', 'Yes', 'H013'),
('HR_002', 'Single', 'Yes', 'H013'),
('HR_003', 'Double', 'Yes', 'H013'),
('HR_004', 'Economy', 'Yes', 'H013'),
('HR_001', 'Delux', 'Yes', 'H014'),
('HR_002', 'Single', 'Yes', 'H014'),
('HR_003', 'Double', 'Yes', 'H014'),
('HR_004', 'Economy', 'Yes', 'H014'),
('HR_001', 'Delux', 'Yes', 'H015'),
('HR_002', 'Single', 'Yes', 'H015'),
('HR_003', 'Double', 'Yes', 'H015'),
('HR_004', 'Economy', 'Yes', 'H015'),
('HR_001', 'Delux', 'Yes', 'H016'),
('HR_002', 'Single', 'Yes', 'H016'),
('HR_003', 'Double', 'Yes', 'H016'),
('HR_004', 'Economy', 'Yes', 'H016'),
('HR_001', 'Delux', 'Yes', 'H017'),
('HR_002', 'Single', 'Yes', 'H017'),
('HR_003', 'Double', 'Yes', 'H017'),
('HR_004', 'Economy', 'Yes', 'H017'),
('HR_001', 'Delux', 'Yes', 'H018'),
('HR_002', 'Single', 'Yes', 'H018'),
('HR_003', 'Double', 'Yes', 'H018'),
('HR_004', 'Economy', 'Yes', 'H018'),
('HR_001', 'Delux', 'Yes', 'H019'),
('HR_002', 'Single', 'Yes', 'H019'),
('HR_003', 'Double', 'Yes', 'H019'),
('HR_004', 'Economy', 'Yes', 'H019'),
('HR_001', 'Delux', 'Yes', 'H020'),
('HR_002', 'Single', 'Yes', 'H020'),
('HR_003', 'Double', 'Yes', 'H020'),
('HR_004', 'Economy', 'Yes', 'H020');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_browses`
--

CREATE TABLE `shopping_browses` (
  `C_ID` varchar(30) DEFAULT NULL,
  `S_ID` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopping_browses`
--

INSERT INTO `shopping_browses` (`C_ID`, `S_ID`) VALUES
('WB_1', 'SU10001'),
('WB_2', 'SU10002'),
('WB_3', 'SU10003'),
('WB_4', 'SU10004'),
('WB_5', 'SU10005'),
('WB_6', 'SU10006'),
('WB_7', 'SU10007'),
('WB_8', 'SU10008'),
('WB_9', 'SU10009'),
('WB_10', 'SU10010'),
('WB_11', 'SU10011'),
('WB_12', 'SU10012'),
('WB_13', 'SU10013'),
('WB_14', 'SU10014'),
('WB_15', 'SU10015'),
('WB_16', 'SU10016'),
('WB_17', 'SU10017'),
('WB_18', 'SU10018'),
('WB_19', 'SU10019'),
('WB_20', 'SU10020'),
('WB_21', 'SU10021'),
('WB_22', 'SU10022'),
('WB_23', 'SU10023'),
('WB_24', 'SU10024'),
('WB_25', 'SU10025'),
('WB_26', 'SU10026'),
('WB_27', 'SU10027'),
('WB_28', 'SU10028'),
('WB_29', 'SU10029'),
('WB_30', 'SU10030'),
('WB_31', 'SU10031'),
('WB_32', 'SU10032'),
('WB_33', 'SU10033'),
('WB_34', 'SU10034'),
('WB_35', 'SU10035'),
('WB_36', 'SU10036'),
('WB_37', 'SU10037'),
('WB_38', 'SU10038'),
('WB_39', 'SU10039'),
('WB_40', 'SU10040'),
('WB_41', 'SU10041'),
('WB_42', 'SU10042'),
('WB_43', 'SU10043'),
('WB_44', 'SU10044'),
('WB_45', 'SU10045'),
('WB_46', 'SU10046'),
('WB_47', 'SU10047'),
('WB_48', 'SU10048'),
('WB_49', 'SU10049'),
('WB_50', 'SU10050'),
('WB_51', 'SU10051'),
('WB_30', 'SU10001'),
('WB_31', 'SU10002'),
('WB_32', 'SU10003'),
('WB_33', 'SU10004'),
('WB_34', 'SU10005'),
('WB_35', 'SU10006'),
('WB_36', 'SU10007'),
('WB_37', 'SU10008'),
('WB_38', 'SU10009'),
('WB_39', 'SU10010'),
('WB_15', 'SU10011'),
('WB_16', 'SU10012'),
('WB_17', 'SU10013'),
('WB_18', 'SU10014'),
('WB_19', 'SU10015'),
('WB_20', 'SU10016'),
('WB_21', 'SU10017'),
('WB_22', 'SU10018'),
('WB_23', 'SU10019'),
('WB_34', 'SU10020'),
('WB_35', 'SU10021'),
('WB_36', 'SU10022'),
('WB_37', 'SU10023'),
('WB_38', 'SU10024'),
('WB_39', 'SU10025'),
('WB_40', 'SU10026'),
('WB_41', 'SU10027'),
('WB_42', 'SU10028'),
('WB_43', 'SU10029'),
('WB_44', 'SU10030'),
('WB_45', 'SU10031'),
('WB_46', 'SU10032'),
('WB_5', 'SU10033'),
('WB_6', 'SU10008'),
('WB_7', 'SU10009'),
('WB_8', 'SU10010'),
('WB_9', 'SU10011'),
('WB_10', 'SU10012'),
('WB_11', 'SU10013'),
('WB_12', 'SU10014'),
('WB_13', 'SU10015'),
('WB_14', 'SU10016'),
('WB_15', 'SU10017'),
('WB_16', 'SU10018'),
('WB_17', 'SU10019'),
('WB_18', 'SU10020'),
('WB_19', 'SU10021'),
('WB_20', 'SU10022'),
('WB_21', 'SU10023'),
('WB_22', 'SU10024'),
('WB_23', 'SU10019');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_category`
--

CREATE TABLE `shopping_category` (
  `C_ID` varchar(30) NOT NULL,
  `C_Name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopping_category`
--

INSERT INTO `shopping_category` (`C_ID`, `C_Name`) VALUES
('1', 'BIKE_AND_CAR'),
('2', 'Personal_Care'),
('3', 'Clothing'),
('4', 'Electronic'),
('5', 'ALL');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_user`
--

CREATE TABLE `shopping_user` (
  `S_ID` varchar(30) NOT NULL,
  `Login_time` varchar(30) DEFAULT NULL,
  `Logout_time` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopping_user`
--

INSERT INTO `shopping_user` (`S_ID`, `Login_time`, `Logout_time`) VALUES
('SU10001', '29-04-18', '29-04-18'),
('SU10002', '30-04-18', '30-04-18'),
('SU10003', '01-05-18', '01-05-18'),
('SU10004', '02-05-18', '02-05-18'),
('SU10005', '03-05-18', '03-05-18'),
('SU10006', '04-05-18', '04-05-18'),
('SU10007', '05-05-18', '05-05-18'),
('SU10008', '06-05-18', '06-05-18'),
('SU10009', '07-05-18', '07-05-18'),
('SU10010', '08-05-18', '08-05-18'),
('SU10011', '09-05-18', '09-05-18'),
('SU10012', '10-05-18', '10-05-18'),
('SU10013', '11-05-18', '11-05-18'),
('SU10014', '12-05-18', '12-05-18'),
('SU10015', '13-05-18', '13-05-18'),
('SU10016', '14-05-18', '14-05-18'),
('SU10017', '15-05-18', '15-05-18'),
('SU10018', '16-05-18', '16-05-18'),
('SU10019', '17-05-18', '17-05-18'),
('SU10020', '18-05-18', '18-05-18');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_website_list`
--

CREATE TABLE `shopping_website_list` (
  `WB_ID` varchar(30) NOT NULL,
  `Website_name` varchar(30) DEFAULT NULL,
  `Website` varchar(40) DEFAULT NULL,
  `C_ID` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopping_website_list`
--

INSERT INTO `shopping_website_list` (`WB_ID`, `Website_name`, `Website`, `C_ID`) VALUES
('WB_1', 'amazon', 'https://www.amazon.in', '5'),
('WB_10', 'limeroad', 'https://www.limeroad.com', '5'),
('WB_11', 'fabindia', 'https://www.fabindia.com', '5'),
('WB_12', 'snapdeal', 'https://www.snapdeal.com', '5'),
('WB_13', 'flipkart', 'https://www.flipkart.com', '5'),
('WB_14', 'croma', 'https://www.croma.com', '4'),
('WB_15', 'Zopper', 'https://zopper.com', '4'),
('WB_16', 'Latestone', 'http://www.latestone.com', '4'),
('WB_17', 'Gonoise', 'https://www.gonoise.com', '4'),
('WB_18', 'Myntra', 'https://www.myntra.com', '3'),
('WB_19', 'Jabong', 'https://www.jabong.com', '3'),
('WB_2', 'ebay', 'https://www.ebay.in/', '5'),
('WB_20', 'Provogue', 'http://www.provogue.', '3'),
('WB_21', 'Yepme', 'http://yepme.com/', '3'),
('WB_22', 'Bluestone', 'https://www.blueston', '3'),
('WB_23', 'Fashionnandyou', 'https://www.fashiona', '3'),
('WB_24', 'Shoppersstop', 'https://www.shoppers', '3'),
('WB_25', 'voonik', 'https://www.voonik.c', '3'),
('WB_26', 'voyall', 'https://www.voylla.c', '3'),
('WB_27', 'mirraw', 'https://www.mirraw.com', '3'),
('WB_28', 'caratlane', 'https://mobile.carat', '3'),
('WB_29', 'chrono24', 'https://www.chrono24', '3'),
('WB_3', 'homeshop18', 'http://www.homeshop1', '5'),
('WB_30', 'indiarush', 'https://indiarush.com', '3'),
('WB_31', 'faballey', 'https://www.faballey.com', '3'),
('WB_32', 'santana', 'https://www.santana.', '3'),
('WB_33', 'healthkart', 'https://www.healthkart.com', '2'),
('WB_34', 'Netmeds', 'https://www.netmeds.', '2'),
('WB_35', 'Firstcry', 'http://www.firstcry.com', '2'),
('WB_36', 'Newu', 'https://www.newu.in/', '2'),
('WB_37', 'Zotezo', 'https://www.zotezo.com', '2'),
('WB_38', 'Purplle', 'https://www.purplle.', '2'),
('WB_39', 'Nykaa', 'https://www.nykaa.co', '2'),
('WB_4', 'infibeam', 'https://www.infibeam.com', '5'),
('WB_40', 'Archies', 'https://www.archiesonline.com/', '2'),
('WB_41', 'Sportsjam', 'http://www.sportsjam', '2'),
('WB_42', 'Sportss365', 'https://www.sports36', '2'),
('WB_43', 'Decathlon', 'https://www.decathlo', '2'),
('WB_44', 'Khelmart', 'http://www.khelmart.', '2'),
('WB_45', 'Sportxs', 'http://www.sportxs.com', '2'),
('WB_46', 'Auto(NDTV)', 'https://auto.ndtv.com', '1'),
('WB_47', 'Autocar', 'https://www.autocari', '1'),
('WB_48', 'ZigWheels', 'https://www.zigwheel', '1'),
('WB_49', 'Overdrive', 'http://overdrive.in/', '1'),
('WB_5', 'gadgetsnow', 'https://www.gadgetsn', '5'),
('WB_50', 'Maxabout', 'http://www.maxabout.com/', '1'),
('WB_51', 'MotorBeam', 'https://www.motorbeam.com', '1'),
('WB_6', 'shopping.rediff', 'http://shopping.rediff.com', '5'),
('WB_7', 'shopclues', 'https://www.shopclue', '5'),
('WB_8', 'paytm', 'https://paytm.com/', '5'),
('WB_9', 'naaptol', 'https://www.naaptol.', '5');

-- --------------------------------------------------------

--
-- Table structure for table `super_user`
--

CREATE TABLE `super_user` (
  `SU_ID` int(5) NOT NULL,
  `SU_Name` varchar(30) DEFAULT NULL,
  `SU_Email` varchar(30) DEFAULT NULL,
  `SU_DOB` varchar(10) DEFAULT NULL,
  `SU_Ph_No` varchar(11) DEFAULT NULL,
  `SU_Address` varchar(70) DEFAULT NULL,
  `SU_pass` varchar(32) DEFAULT 'root'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `super_user`
--

INSERT INTO `super_user` (`SU_ID`, `SU_Name`, `SU_Email`, `SU_DOB`, `SU_Ph_No`, `SU_Address`, `SU_pass`) VALUES
(1, 'Kiran', 'Kiran@gmail.com', '29-04-98', '9480027256', 'India', 'root'),
(2, 'Jaydeep', 'Jaydeep@gmail.com', '03-09-98', '9586645452', 'India', 'root'),
(3, 'Krishna', 'Krishna@gmail.com', '03-01-97', '9658858654', 'India', 'root'),
(4, 'Lavanya', 'Lavanya@gmail.com', '25-01-98', '9754008519', 'India', 'root'),
(5, 'Jai', 'Jai@gmail.com', '03-03-98', '9843424218', 'India', 'root'),
(6, 'Hemanth', 'Hemanth@gmail.com', '04-03-98', '9932839917', 'India', 'root'),
(7, 'Manas', 'Manas@gmail.com', '05-03-98', '9985654563', 'India', 'root'),
(8, 'Hari', 'Hari@gmail.com', '06-03-98', '9656236533', 'India', 'root'),
(9, 'Tanya', 'Tanya@gmail.com', '07-03-98', '9581640287', 'India', 'root'),
(10, 'Ktk', 'Ktk@gmail.com', '08-03-98', '9443338595', 'India', 'root'),
(11, 'Divya', 'Divya@gmail.com', '09-03-98', '9305036904', 'India', 'root'),
(12, 'Poorvi', 'Poorvi@gmail.com', '10-03-98', '9166735212', 'India', 'root'),
(13, 'Pragna', 'Pragna@gmail.com', '11-03-98', '9028433520', 'India', 'root'),
(14, 'Ram', 'Ram@gmail.com', '12-03-98', '8890131828', 'India', 'root'),
(15, 'Raj', 'Raj@gmail.com', '13-03-98', '8751830136', 'India', 'root'),
(16, 'Jack', 'Jack@gmail.com', '14-03-98', '8613528444', 'India', 'root'),
(17, 'Smith', 'Smith@gmail.com', '15-03-98', '8475226753', 'India', 'root'),
(18, 'Sam', 'Sam@gmail.com', '16-03-98', '8336925061', 'India', 'root'),
(19, 'Nihal', 'Nihal@gmail.com', '17-03-98', '8198623369', 'India', 'root'),
(20, 'Akash', 'Akash@gmail.com', '18-03-98', '8060321677', 'India', 'root'),
(21, 'kk', 'Kiran@hm.com', '1998-04-29', '1526365489', 'india', 'kk'),
(22, 'kiran', 'M@s.com', '2112-12-12', '1212121212', 'India', 'aa'),
(23, 'guru', 'GB@gb.com', '2225-01-24', '6877789478', 'india', 'gb'),
(24, 'Krish', 'Krishna@gmai.com', '1998-01-03', '5698741236', 'india', 'k'),
(25, 'lava', 'kiran@kkkf.com', '1999-01-26', '56565656565', 'india', 'l'),
(26, 'lll', 'klk@hmff.com', '1998-02-23', '5698745698', 'india', 'aa'),
(27, 'lol', 'ssdfsdf@adasdasd.com', '1998-02-12', '1234567898', 'india', 'lol'),
(28, 'poorvi', 'poorviachar@gmail.com', '1998-01-30', '5623729847', '38498, ty road ehriuewhrf', 'kiransucks'),
(29, 'nihal', 'nihakllk@fff.com', '1998-04-29', '1236547896', 'india', 'n'),
(30, 'aa', 'somjj@gmail.com', '1998-08-09', '8978765645', 'india', 'o'),
(31, 'kok', 'sasaas@gmail.com', '1992-03-23', '9898989898', 'india', 'kok'),
(32, 'gpg', 'Dave@gmail.com', '1998-03-12', '1234567898', 'india', 'gpg'),
(33, 'king', 'King@gmai.com', '1997-06-28', '677889098', 'india', 'k');

-- --------------------------------------------------------

--
-- Table structure for table `travel_airways_air`
--

CREATE TABLE `travel_airways_air` (
  `A_ID` varchar(10) NOT NULL,
  `A_name` varchar(30) DEFAULT NULL,
  `flight_type` varchar(10) DEFAULT NULL,
  `A_rating` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_airways_air`
--

INSERT INTO `travel_airways_air` (`A_ID`, `A_name`, `flight_type`, `A_rating`) VALUES
('AR_001', 'MODEL_01', 'Boeing 747', '9'),
('AR_002', 'MODEL_02', 'Boeing 743', '9'),
('AR_003', 'MODEL_03', 'Boeing 739', '8'),
('AR_004', 'MODEL_04', 'Boeing 747', '9'),
('AR_005', 'MODEL_05', 'Boeing 747', '10'),
('AR_006', 'MODEL_06', 'Boeing 747', '9'),
('AR_007', 'MODEL_07', 'Boeing 743', '8'),
('AR_008', 'MODEL_08', 'Boeing 739', '9'),
('AR_009', 'MODEL_09', 'Boeing 747', '9'),
('AR_010', 'MODEL_10', 'Boeing 747', '10');

-- --------------------------------------------------------

--
-- Table structure for table `travel_airways_airport`
--

CREATE TABLE `travel_airways_airport` (
  `Ar_ID` varchar(10) NOT NULL,
  `A_name` varchar(20) DEFAULT NULL,
  `A_location` varchar(60) DEFAULT NULL,
  `A_type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_airways_airport`
--

INSERT INTO `travel_airways_airport` (`Ar_ID`, `A_name`, `A_location`, `A_type`) VALUES
('A_001', 'Heathrow Airport', 'London,U.K.', 'Internatio'),
('A_002', 'Rajiv Gandhi Interna', 'Hyderabad,India.', 'Internatio'),
('A_003', 'Dubai International ', 'Garhoud,Dubai.', 'Internatio'),
('A_004', 'Los Angeles Airport', 'Los Angeles,U.S.', 'Internatio'),
('A_005', 'Beijing Internationa', 'Beijing,China', 'Internatio'),
('A_006', 'O’Hare International', 'Chicago,Illinois', 'Internatio'),
('A_007', 'Kempegowda Internati', 'Bengaluru,India', 'Internatio'),
('A_008', 'Frankfurt Airport', 'Frankfurt,Hesse.', 'Internatio'),
('A_009', 'Denver International', 'Denver,U.S.', 'Internatio'),
('A_010', 'Indira Gandhi Intern', 'Delhi,India.', 'Internatio');

-- --------------------------------------------------------

--
-- Table structure for table `travel_airways_air_travel`
--

CREATE TABLE `travel_airways_air_travel` (
  `User_ID` varchar(10) NOT NULL,
  `Vh_ID` varchar(10) NOT NULL,
  `A_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_airways_air_travel`
--

INSERT INTO `travel_airways_air_travel` (`User_ID`, `Vh_ID`, `A_ID`) VALUES
('10001', 'V0001', 'AR_001'),
('SU10002', 'V0002', 'AR_002'),
('SU10003', 'V0003', 'AR_003'),
('SU10004', 'V0004', 'AR_004'),
('SU10005', 'V0005', 'AR_005'),
('SU10006', 'V0006', 'AR_006'),
('SU10007', 'V0007', 'AR_007'),
('SU10008', 'V0008', 'AR_008'),
('SU10009', 'V0009', 'AR_009'),
('SU10010', 'V0010', 'AR_010');

-- --------------------------------------------------------

--
-- Table structure for table `travel_airways_a_travel`
--

CREATE TABLE `travel_airways_a_travel` (
  `A_ID` varchar(10) NOT NULL,
  `A_From` varchar(10) DEFAULT NULL,
  `A_to` varchar(10) DEFAULT NULL,
  `A_date` varchar(10) DEFAULT NULL,
  `A_Arr_time` varchar(10) DEFAULT NULL,
  `A_Dep_Time` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_airways_a_travel`
--

INSERT INTO `travel_airways_a_travel` (`A_ID`, `A_From`, `A_to`, `A_date`, `A_Arr_time`, `A_Dep_Time`) VALUES
('AR_001', 'A_001', 'A_002', '22-08-2014', '23-03-14 2', '23-03-14 2'),
('AR_002', 'A_002', 'A_003', '23-09-2015', '23-03-14 1', '23-03-14 2'),
('AR_003', 'A_003', 'A_004', '25-08-2016', '23-03-14 1', '23-03-14 2'),
('AR_004', 'A_004', 'A_005', '26-07-2014', '23-03-14 1', '23-03-14 1'),
('AR_005', 'A_005', 'A_006', '26-08-2016', '23-03-14 1', '23-03-14 1'),
('AR_006', 'A_006', 'A_007', '22-07-2104', '23-03-14 1', '23-03-14 1'),
('AR_007', 'A_007', 'A_008', '23-08-2014', '23-03-14 9', '23-03-14 1'),
('AR_008', 'A_008', 'A_009', '25-08-2014', '26-03-14 1', '26-03-14 1'),
('AR_009', 'A_009', 'A_010', '21-08-2014', '26-03-14 1', '26-03-14 1'),
('AR_010', 'A_010', 'A_007', '02-09-2014', '26-03-14 2', '26-03-14 8');

-- --------------------------------------------------------

--
-- Table structure for table `travel_airways_coach`
--

CREATE TABLE `travel_airways_coach` (
  `A_ID` varchar(10) NOT NULL,
  `Class` varchar(10) NOT NULL,
  `A_Availability` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_airways_coach`
--

INSERT INTO `travel_airways_coach` (`A_ID`, `Class`, `A_Availability`) VALUES
('AR_001', 'Business', 'Available'),
('AR_002', 'Business', 'Available'),
('AR_003', 'Business', 'Available'),
('AR_004', 'Business', 'Not Availa'),
('AR_005', 'Business', 'Available'),
('AR_006', 'Economy', 'Available'),
('AR_007', 'Economy', 'Not Availa'),
('AR_008', 'Economy', 'Available'),
('AR_009', 'Economy', 'Available'),
('AR_010', 'Economy', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `travel_airways_price`
--

CREATE TABLE `travel_airways_price` (
  `A_ID` varchar(10) NOT NULL,
  `A_From` varchar(10) NOT NULL,
  `A_to` varchar(10) NOT NULL,
  `Class` varchar(10) NOT NULL,
  `Amt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_airways_price`
--

INSERT INTO `travel_airways_price` (`A_ID`, `A_From`, `A_to`, `Class`, `Amt`) VALUES
('A_001', 'Heathrow A', 'London,U.K', 'Internatio', ''),
('A_002', 'Rajiv Gand', 'Hyderabad,', 'Internatio', ''),
('A_003', 'Dubai Inte', 'Garhoud,Du', 'Internatio', ''),
('A_004', 'Los Angele', 'Los Angele', 'Internatio', ''),
('A_005', 'Beijing In', 'Beijing,Ch', 'Internatio', ''),
('A_006', 'O’Hare Int', 'Chicago,Il', 'Internatio', ''),
('A_007', 'Kempegowda', 'Bengaluru,', 'Internatio', ''),
('A_008', 'Frankfurt ', 'Frankfurt,', 'Internatio', ''),
('A_009', 'Denver Int', 'Denver,U.S', 'Internatio', ''),
('A_010', 'Indira Gan', 'Delhi,Indi', 'Internatio', '');

-- --------------------------------------------------------

--
-- Table structure for table `travel_bus_bus`
--

CREATE TABLE `travel_bus_bus` (
  `B_ID` varchar(10) NOT NULL,
  `B_name` varchar(30) DEFAULT NULL,
  `Bus_type` varchar(10) DEFAULT NULL,
  `B_rating` varchar(5) DEFAULT NULL,
  `B_AC` varchar(10) DEFAULT NULL,
  `B_Availability` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_bus_bus`
--

INSERT INTO `travel_bus_bus` (`B_ID`, `B_name`, `Bus_type`, `B_rating`, `B_AC`, `B_Availability`) VALUES
('B001', 'SRS', 'Semi-Sleep', NULL, 'No', 'Yes'),
('B002', 'SRS', 'Semi-Sleep', NULL, 'Yes', 'Yes'),
('B003', 'VRL', 'Sleeper', NULL, 'No', 'Yes'),
('B004', 'Orange Tour', 'Sleeper', NULL, 'Yes', 'No'),
('B005', 'CANARA PINTO', 'Sleeper', NULL, 'Yes', 'Yes'),
('B006', 'Seabird Tourists', 'Semi-Sleep', NULL, 'Yes', 'Yes'),
('B007', 'Sharma', 'Semi-Sleep', NULL, 'No', 'Yes'),
('B008', 'National Travel', 'Sleeper', NULL, 'Yes', 'No'),
('B009', 'Anand Travels', 'Sleeper', NULL, 'yes', 'No'),
('B010', 'CLR Travel', 'Semi-Sleep', NULL, 'yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `travel_bus_bus_station`
--

CREATE TABLE `travel_bus_bus_station` (
  `BS_ID` varchar(10) NOT NULL,
  `B_name` varchar(20) DEFAULT NULL,
  `B_location` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_bus_bus_station`
--

INSERT INTO `travel_bus_bus_station` (`BS_ID`, `B_name`, `B_location`) VALUES
('BS_001', 'Poorna Pragnya stop', 'Pragnya layout , Bangalore '),
('BS_002', 'Sri Nanjundeshwara S', 'BSK , Bangalore '),
('BS_003', 'Banashankri Main Bus', 'BSK , Bangalore '),
('BS_004', 'Azzilus Bus stop', 'Vimannagar,Pune'),
('BS_005', 'Tempora stop ', 'Nandini layout ,Mumbai'),
('BS_006', 'Vidyanagar Bus Depo', 'Vidyanagar , Kolkatta'),
('BS_007', 'CST Bus Depo', 'MG road , Mumbai'),
('BS_008', 'RMZ Bus stop ', 'Vishaka layout ,  MP'),
('BS_009', 'CMR Bus Stop', 'Richmond Layout , Delhi'),
('BS_010', 'Subramanyam Bus Depo', 'Arumugam Layout , Chennai');

-- --------------------------------------------------------

--
-- Table structure for table `travel_bus_b_travel`
--

CREATE TABLE `travel_bus_b_travel` (
  `B_ID` varchar(10) NOT NULL,
  `B_From` varchar(10) DEFAULT NULL,
  `B_to` varchar(10) DEFAULT NULL,
  `B_date` varchar(10) DEFAULT NULL,
  `B_Arr_time` varchar(10) DEFAULT NULL,
  `B_Dep_Time` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_bus_b_travel`
--

INSERT INTO `travel_bus_b_travel` (`B_ID`, `B_From`, `B_to`, `B_date`, `B_Arr_time`, `B_Dep_Time`) VALUES
('B001', 'BS_001', 'BS_004', '01-08-18', '12:45', '13:15'),
('B002', 'BS_002', 'BS_005', '03-09-18', '13:45', '14:15'),
('B003', 'BS_007', 'BS_005', '08-08-18', '14:45', '15:15'),
('B004', 'BS_004', 'BS_001', '09-12-18', '15:45', '16:15'),
('B005', 'BS_003', 'BS_008', '02-08-18', '16:45', '17:15'),
('B006', 'BS_006', 'BS_009', '01-03-18', '17:45', '18:15'),
('B007', 'BS_005', 'BS_002', '07-08-18', '18:45', '19:15'),
('B008', 'BS_008', 'BS_0010', '05-05-18', '19:45', '20:15'),
('B009', 'BS_009', 'BS_006', '11-08-18', '20:45', '21:15'),
('B010', 'BS_010', 'BS_006', '13-08-18', '21:45', '22:15'),
('B011', 'BS_001', 'BS_002', '11-08-18', '22:45', '23:15'),
('B012', 'BS_003', 'BS_009', '12-11-18', '23:45', '0:15'),
('B013', 'BS_007', 'BS_004', '16-08-18', '0:45', '1:15'),
('B014', 'BS_001', 'BS_005', '18-08-18', '1:45', '2:15'),
('B015', 'BS_005', 'BS_008', '19-03-18', '2:45', '3:15'),
('B016', 'BS_006', 'BS_006', '20-08-18', '3:45', '4:15'),
('B017', 'BS_009', 'BS_001', '23-02-18', '4:45', '5:15'),
('B018', 'BS_008', 'BS_009', '25-08-18', '5:45', '6:15'),
('B019', 'BS_002', 'BS_010', '29-04-18', '6:45', '7:15'),
('B020', 'BS_010', 'BS_002', '30-08-18', '7:45', '8:15');

-- --------------------------------------------------------

--
-- Table structure for table `travel_bus_stops`
--

CREATE TABLE `travel_bus_stops` (
  `B_ID` varchar(10) NOT NULL,
  `BS_ID` varchar(10) NOT NULL,
  `B_Time` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_bus_stops`
--

INSERT INTO `travel_bus_stops` (`B_ID`, `BS_ID`, `B_Time`) VALUES
('B001', 'BS_001', '13:15'),
('B002', 'BS_002', '14:15'),
('B003', 'BS_007', '15:15'),
('B004', 'BS_004', '16:15'),
('B005', 'BS_003', '17:15'),
('B006', 'BS_006', '18:15'),
('B007', 'BS_005', '19:15'),
('B008', 'BS_008', '20:15'),
('B009', 'BS_009', '21:15'),
('B010', 'BS_010', '22:15'),
('B011', 'BS_001', '23:15'),
('B012', 'BS_003', '0:15'),
('B013', 'BS_007', '1:15'),
('B014', 'BS_001', '2:15'),
('B015', 'BS_005', '3:15'),
('B016', 'BS_006', '4:15'),
('B017', 'BS_009', '5:15'),
('B018', 'BS_008', '6:15'),
('B019', 'BS_002', '7:15'),
('B020', 'BS_010', '8:15'),
('B001', 'BS_004', '12:45'),
('B002', 'BS_005', '13:45'),
('B003', 'BS_005', '14:45'),
('B004', 'BS_001', '15:45'),
('B005', 'BS_008', '16:45'),
('B006', 'BS_009', '17:45'),
('B007', 'BS_002', '18:45'),
('B008', 'BS_0010', '19:45'),
('B009', 'BS_006', '20:45'),
('B010', 'BS_006', '21:45'),
('B011', 'BS_002', '22:45'),
('B012', 'BS_009', '23:45'),
('B013', 'BS_004', '0:45'),
('B014', 'BS_005', '1:45'),
('B015', 'BS_008', '2:45'),
('B016', 'BS_006', '3:45'),
('B017', 'BS_001', '4:45'),
('B018', 'BS_009', '5:45'),
('B019', 'BS_010', '6:45'),
('B020', 'BS_002', '7:45');

-- --------------------------------------------------------

--
-- Table structure for table `travel_payment`
--

CREATE TABLE `travel_payment` (
  `T_Date` varchar(10) DEFAULT NULL,
  `confirmation` varchar(3) DEFAULT NULL,
  `Pay_id` varchar(10) NOT NULL,
  `Ticket_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_payment`
--

INSERT INTO `travel_payment` (`T_Date`, `confirmation`, `Pay_id`, `Ticket_ID`) VALUES
('-03-18', 'yes', 'P0001', 'T00001'),
('19-03-18', 'yes', 'P0002', 'T00002'),
('20-03-18', 'yes', 'P0003', 'T00003'),
('21-03-18', 'yes', 'P0004', 'T00004'),
('22-03-18', 'yes', 'P0005', 'T00005'),
('23-03-18', 'yes', 'P0006', 'T00006'),
('24-03-18', 'no', 'P0007', 'T00007'),
('25-03-18', 'no', 'P0008', 'T00008'),
('26-03-18', 'no', 'P0009', 'T00009'),
('27-03-18', 'no', 'P0010', 'T00010'),
('28-03-18', 'no', 'P0011', 'T00011'),
('29-03-18', 'yre', 'P0012', 'T00012'),
('30-03-18', 'yre', 'P0013', 'T00013'),
('31-03-18', 'yre', 'P0014', 'T00014'),
('01-04-18', 'no', 'P0015', 'T00015'),
('02-04-18', 'no', 'P0016', 'T00016'),
('03-04-18', 'yes', 'P0017', 'T00017'),
('04-04-18', 'yes', 'P0018', 'T00018'),
('05-04-18', 'yes', 'P0019', 'T00019'),
('06-04-18', 'yes', 'P0020', 'T00020'),
('3-5-18', 'no', 'P1015', 'T10001'),
('3-5-18', 'no', 'P1015', 'T10001');

-- --------------------------------------------------------

--
-- Table structure for table `travel_railway_halts`
--

CREATE TABLE `travel_railway_halts` (
  `R_ID` varchar(10) NOT NULL,
  `S_ID` varchar(10) NOT NULL,
  `R_Time` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_railway_halts`
--

INSERT INTO `travel_railway_halts` (`R_ID`, `S_ID`, `R_Time`) VALUES
('11111', '123', '22:00'),
('11111', '126', '23:00'),
('12012', '124', '7:30'),
('12121', '125', '1:00'),
('12124', '127', '7:00'),
('12124', '129', '7:30'),
('12345', '125', '10:00');

-- --------------------------------------------------------

--
-- Table structure for table `travel_railway_price`
--

CREATE TABLE `travel_railway_price` (
  `R_ID` varchar(10) NOT NULL,
  `R_From` varchar(10) NOT NULL,
  `R_to` varchar(10) NOT NULL,
  `Coach` varchar(10) NOT NULL,
  `Amt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `travel_railway_rail`
--

CREATE TABLE `travel_railway_rail` (
  `R_ID` varchar(10) NOT NULL,
  `R_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_railway_rail`
--

INSERT INTO `travel_railway_rail` (`R_ID`, `R_name`) VALUES
('R_001', 'Rajdhani express'),
('R_002', 'vishaka express'),
('R_003', 'chennai express'),
('R_004', 'Duronto Express'),
('R_005', 'Shatabdi Express'),
('R_006', 'Garib Rath Express'),
('R_007', 'Lokamanya Express'),
('R_008', 'Tejas Express'),
('R_009', 'jaideep Express'),
('R_010', 'karnataka express');

-- --------------------------------------------------------

--
-- Table structure for table `travel_railway_station`
--

CREATE TABLE `travel_railway_station` (
  `S_ID` varchar(10) NOT NULL,
  `S_name` varchar(20) DEFAULT NULL,
  `S_location` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_railway_station`
--

INSERT INTO `travel_railway_station` (`S_ID`, `S_name`, `S_location`) VALUES
('121', 'bangalore East', 'yeshwanthpur,Bangalore'),
('122', 'bangalore Central', 'kempegowda,Bangalore'),
('123', 'Coimabatore Junction', 'Gandhipuram,Coimbatore'),
('124', 'Chennai Central', 'Ranganathan Street,Chennai'),
('125', 'Chathrapati Shivaji', 'ShivajiNagar,Mumbai'),
('126', 'Kanpur Central\n', 'Ganganagar,Kanpur'),
('127', 'Vijayawada Jn', 'Radhapura,Vijayawada'),
('128', 'Ahmedabad Jn', 'Raj Kunt,Ahmedabad'),
('129', 'Kurnool Jn', 'Devarayapura,Kurnool'),
('130', 'Hyderabad Jn', 'High Tech city,Hyderabad');

-- --------------------------------------------------------

--
-- Table structure for table `travel_railway_t_travel`
--

CREATE TABLE `travel_railway_t_travel` (
  `R_ID` varchar(10) NOT NULL,
  `R_From` varchar(10) DEFAULT NULL,
  `R_to` varchar(10) DEFAULT NULL,
  `R_date` varchar(10) DEFAULT NULL,
  `R_dept_time` varchar(10) DEFAULT NULL,
  `R_Arr_Time` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_railway_t_travel`
--

INSERT INTO `travel_railway_t_travel` (`R_ID`, `R_From`, `R_to`, `R_date`, `R_dept_time`, `R_Arr_Time`) VALUES
('R_001', '121', '124', '25/03/18', '20:00', '23:00'),
('R_002', '122', '125', '29/03/18', '7:00', '8:00'),
('R_003', '123', '126', '1/3/2018', '12:00', '2:00'),
('R_006', '125', '128', '22/03/18', '5:00', '8:00'),
('R_007', '122', '128', '11/03/18', '13:00', '17:00'),
('R_008', '126', '129', '13/03/18', '15:00', '18:00'),
('R_010', '124', '127', '15/03/18', '9:00', '11:00');

-- --------------------------------------------------------

--
-- Table structure for table `travel_ticket`
--

CREATE TABLE `travel_ticket` (
  `Ticket_ID` varchar(10) NOT NULL,
  `T_From` varchar(10) DEFAULT NULL,
  `T_TO` varchar(10) DEFAULT NULL,
  `VH_ID` varchar(10) DEFAULT NULL,
  `price` varchar(5) DEFAULT NULL,
  `a_Time` varchar(10) DEFAULT NULL,
  `d_Time` varchar(10) DEFAULT NULL,
  `T_DATE` varchar(10) DEFAULT NULL,
  `T_Status` varchar(10) DEFAULT NULL,
  `User_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_ticket`
--

INSERT INTO `travel_ticket` (`Ticket_ID`, `T_From`, `T_TO`, `VH_ID`, `price`, `a_Time`, `d_Time`, `T_DATE`, `T_Status`, `User_ID`) VALUES
('T00001', 'BS_001', 'BS_004', 'B001', '1350', '13:00', '15:30', '23-08-18', 'Waiting', 'SU10001'),
('T00002', 'BS_003', 'BS_005', 'B002', '1450', '14:00', '16:30', '24-08-18', 'Confirmed', 'SU10002'),
('T00003', 'BS_004', 'BS_007', 'B003', '1200', '15:00', '17:30', '25-08-18', 'Confirmed', 'SU10003'),
('T00004', 'BS_005', 'BS_008', 'B004', '1340', '16:00', '18:30', '26-08-18', 'Waiting', 'SU10004'),
('T00005', 'BS_010', 'BS_001', 'B005', '1500', '17:00', '19:30', '27-08-18', 'Confirmed', 'SU10005'),
('T00006', 'BS_007', 'BS_002', 'B006', '1050', '18:00', '20:30', '28-08-18', 'Waiting', 'SU10006'),
('T00007', 'BS_008', 'BS_003', 'B007', '1350', '19:00', '21:30', '29-08-18', 'Confirmed', 'SU10007'),
('T00008', 'BS_009', 'BS_006', 'B008', '1400', '20:00', '22:30', '30-08-18', 'Confirmed', 'SU10008'),
('T00009', 'BS_002', 'BS_009', 'B009', '1300', '21:00', '23:30', '31-08-18', 'Waiting', 'SU10009'),
('T00010', 'BS_006', 'BS_010', 'B010', '1400', '22:00', '0:30', '01-09-18', 'Confirmed', 'SU10010'),
('T00011', 'BS_001', 'BS_005', 'B001', '2500', '13:00', '15:30', '02-09-18', 'Waiting', 'SU10011'),
('T00012', 'BS_003', 'BS_006', 'B002', '2400', '14:00', '16:30', '03-09-18', 'Confirmed', 'SU10012'),
('T00013', 'BS_004', 'BS_007', 'B003', '2300', '15:00', '17:30', '04-09-18', 'Confirmed', 'SU10013'),
('T00014', 'BS_005', 'BS_008', 'B004', '1250', '16:00', '18:30', '05-09-18', 'Waiting', 'SU10014'),
('T00015', 'BS_010', 'BS_009', 'B005', '1400', '17:00', '19:30', '06-09-18', 'Confirmed', 'SU10015'),
('T00016', 'BS_007', 'BS_010', 'B006', '3000', '18:00', '20:30', '07-09-18', 'Waiting', 'SU10016'),
('T00017', 'BS_008', 'BS_001', 'B007', '1200', '19:00', '21:30', '08-09-18', 'Confirmed', 'SU10017'),
('T00018', 'BS_009', 'BS_002', 'B008', '1350', '20:00', '22:30', '09-09-18', 'Confirmed', 'SU10018'),
('T00019', 'BS_002', 'BS_003', 'B009', '1200', '21:00', '23:30', '10-09-18', 'Waiting', 'SU10019'),
('T00020', 'BS_006', 'BS_004', 'B010', '1340', '22:00', '0:30', '11-09-18', 'Confirmed', 'SU10020'),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', ''),
('0001', '121', '127', 'R_001', '250', '12:00', '12:20', '12-04-18', 'yes', 'SU10001'),
('T10002', '126', '123', 'R_002', '375', '13:00', '13:20', '13-04-18', 'yes', 'SU10002'),
('T10003', '126', '130', 'R_003', '342', '14:00', '14:20', '14-04-18', 'yes', 'SU10003'),
('T10004', '130', '125', 'R_004', '345', '15:00', '15:20', '15-04-18', 'yes', 'SU10004'),
('T10005', '123', '128', 'R_005', '368', '16:00', '16:20', '16-04-18', 'yes', 'SU10005'),
('T10006', '129', '130', 'R_006', '370', '17:00', '17:20', '17-04-18', 'yes', 'SU10006'),
('T10007', '128', '123', 'R_007', '300', '18:00', '18:20', '18-04-18', 'no', 'SU10007'),
('T10008', '124', '127', 'R_008', '234', '19:00', '19:20', '19-04-18', 'no', 'SU10008'),
('T10009', '125', '128', 'R_009', '150', '20:00', '20:20', '20-04-18', 'no', 'SU10009'),
('T10010', '126', '129', 'R_010', '190', '21:00', '21:20', '21-04-18', 'no', 'SU10010'),
('T10011', '127', '130', 'R_011', '208', '22:00', '22:20', '22-04-18', 'no', 'SU10011'),
('T10012', '128', '121', 'R_012', '400', '23:00', '23:20', '23-04-18', 'yes', 'SU10012'),
('T10013', '129', '122', 'R_013', '402', '0:00', '0:20', '24-04-18', 'yes', 'SU10013'),
('T10014', '130', '123', 'R_014', '256', '1:00', '1:20', '25-04-18', 'yes', 'SU10014'),
('T10015', '121', '124', 'R_015', '230', '2:00', '2:20', '26-04-18', 'yes', 'SU10015'),
('T10016', '122', '125', 'R_016', '238', '3:00', '3:20', '27-04-18', 'no', 'SU10016'),
('T10017', '123', '126', 'R_017', '260', '4:00', '4:20', '28-04-18', 'no', 'SU10017'),
('T10018', '124', '127', 'R_018', '270', '5:00', '5:20', '29-04-18', 'no', 'SU10018'),
('T10019', '125', '128', 'R_019', '270', '6:00', '6:20', '30-04-18', 'no', 'SU10019'),
('T10020', '126', '130', 'R_020', '290', '7:00', '7:20', '01-05-18', 'no', 'SU10020'),
('T10001', '133', '125', 'R_002', '500', '5:00', '6:00', '5-3-18', 'yes', 'SU10021');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_id` varchar(10) NOT NULL,
  `Check_in` varchar(10) DEFAULT NULL,
  `Check_out` varchar(10) DEFAULT NULL,
  `H_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_id`, `Check_in`, `Check_out`, `H_id`) VALUES
('SU10001', '10-3-2018 ', '10-3-2018 ', 'H001'),
('SU10002', '10-3-2018 ', '10-3-2018 ', 'H001'),
('SU10003', '13-3-2018 ', '19-3-2018 ', 'H003'),
('SU10004', '15-3-2018 ', '20-3-2018 ', 'H004'),
('SU10005', '20-3-2018 ', '23-3-2018 ', 'H005'),
('SU10006', '24-3-2018 ', '13-4-2018 ', 'H006'),
('SU10007', '27-3-2018 ', '30-3-2018 ', 'H007'),
('SU10008', '1-4-2018 ', '7-4-2018 ', 'H008'),
('SU10009', '7-4-2018 a', '13-4-2018 ', 'H009'),
('SU10010', '20-3-2018 ', '23-3-2018 ', 'H010'),
('SU10011', '30-4-2018 ', '31-5-2018 ', 'H011'),
('SU10012', '23-5-2018 ', '29-5-2018 ', 'H012'),
('SU10013', '13-6-2018 ', '25-6-2018 ', 'H013'),
('SU10014', '19-7-2018 ', '26-7-2018 ', 'H014'),
('SU10015', '10-8-2018 ', '26-8-2018 ', 'H015'),
('SU10016', '17-9-2018 ', '23-9-2018 ', 'H016'),
('SU10017', '18-10-2018', '29-10-2018', 'H017'),
('SU10018', '24-11-2018', '28-11-2018', 'H018'),
('SU10019', '26-2-2018 ', '30-2-2018 ', 'H019'),
('SU10020', '29-8-2018 ', '31-8-2018 ', 'H020');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cost`
--
ALTER TABLE `cost`
  ADD PRIMARY KEY (`Room_id`,`H_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`H_id`);

--
-- Indexes for table `movie_actor`
--
ALTER TABLE `movie_actor`
  ADD PRIMARY KEY (`A_id`);

--
-- Indexes for table `movie_director`
--
ALTER TABLE `movie_director`
  ADD PRIMARY KEY (`D_id`);

--
-- Indexes for table `movie_main`
--
ALTER TABLE `movie_main`
  ADD PRIMARY KEY (`M_id`);

--
-- Indexes for table `movie_p_company`
--
ALTER TABLE `movie_p_company`
  ADD PRIMARY KEY (`Company_id`);

--
-- Indexes for table `movie_theatre`
--
ALTER TABLE `movie_theatre`
  ADD PRIMARY KEY (`T_id`);

--
-- Indexes for table `movie_ticket`
--
ALTER TABLE `movie_ticket`
  ADD PRIMARY KEY (`Ticket_id`);

--
-- Indexes for table `shopping_category`
--
ALTER TABLE `shopping_category`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `shopping_user`
--
ALTER TABLE `shopping_user`
  ADD PRIMARY KEY (`S_ID`);

--
-- Indexes for table `shopping_website_list`
--
ALTER TABLE `shopping_website_list`
  ADD PRIMARY KEY (`WB_ID`);

--
-- Indexes for table `super_user`
--
ALTER TABLE `super_user`
  ADD PRIMARY KEY (`SU_ID`);

--
-- Indexes for table `travel_airways_air`
--
ALTER TABLE `travel_airways_air`
  ADD PRIMARY KEY (`A_ID`);

--
-- Indexes for table `travel_airways_airport`
--
ALTER TABLE `travel_airways_airport`
  ADD PRIMARY KEY (`Ar_ID`);

--
-- Indexes for table `travel_airways_air_travel`
--
ALTER TABLE `travel_airways_air_travel`
  ADD PRIMARY KEY (`A_ID`,`Vh_ID`,`User_ID`);

--
-- Indexes for table `travel_airways_a_travel`
--
ALTER TABLE `travel_airways_a_travel`
  ADD PRIMARY KEY (`A_ID`);

--
-- Indexes for table `travel_airways_coach`
--
ALTER TABLE `travel_airways_coach`
  ADD PRIMARY KEY (`A_ID`,`Class`);

--
-- Indexes for table `travel_airways_price`
--
ALTER TABLE `travel_airways_price`
  ADD PRIMARY KEY (`A_ID`,`A_From`,`A_to`,`Class`);

--
-- Indexes for table `travel_bus_bus`
--
ALTER TABLE `travel_bus_bus`
  ADD PRIMARY KEY (`B_ID`);

--
-- Indexes for table `travel_bus_bus_station`
--
ALTER TABLE `travel_bus_bus_station`
  ADD PRIMARY KEY (`BS_ID`);

--
-- Indexes for table `travel_bus_b_travel`
--
ALTER TABLE `travel_bus_b_travel`
  ADD PRIMARY KEY (`B_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `super_user`
--
ALTER TABLE `super_user`
  MODIFY `SU_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
