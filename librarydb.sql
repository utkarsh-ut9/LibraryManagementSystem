-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2020 at 07:58 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librarydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `name`, `address`, `phone`) VALUES
(2, ' J. R. R. Tolkien', 'USA', 123456789),
(3, 'Lynley Dodd ', 'NZ', 123456789),
(4, 'Darrell Huff', 'USA', 124367263),
(5, 'Bob Kerr', 'NZ', 678649616),
(6, 'Eve Sutton', 'NZ', 378907512),
(8, ' G.V Kumbhojkar', 'India', 268596162),
(9, 'B.R Patil', 'India', 127325963),
(10, ' Malik and Singh', 'India', 325463733),
(11, 'Naidu', 'India', 73625852),
(12, 'S. Chand', 'India', 32675232),
(13, 'Upadhyaya', 'India', 123456789),
(14, 'G. Aruldhas', 'India	', 123456789),
(15, 'Gupta & Gaur', 'India', 123456789),
(16, 'Gupta & Gaur', 'India	', 123456789),
(17, 'Chandrika Prasad', 'India', 123456789),
(18, 'Ramana B.V', 'Indi', 123456789);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `bname` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `author` int(11) NOT NULL,
  `publisher` int(11) NOT NULL,
  `contents` varchar(255) NOT NULL,
  `pages` int(11) NOT NULL,
  `edition` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `bname`, `category`, `author`, `publisher`, `contents`, `pages`, `edition`) VALUES
(1, ' Hobbit', 5, 2, 4, 'Story', 1000, 1),
(3, 'Hairy Maclary', 6, 3, 5, 'Something', 463, 2),
(4, 'Mechanical Harry', 6, 5, 5, 'Something', 774, 5),
(5, 'My cat likes to hide in boxes', 6, 3, 5, 'cats', 523, 3),
(7, ' Maths-1', 12, 8, 22, 'First Yr Engg', 500, 1),
(8, 'Maths-3', 12, 8, 22, 'Laplace..', 345, 3),
(10, 'BEE', 6, 2, 4, '2', 435, 6),
(11, ' Data Structures', 12, 12, 11, '3', 500, 5);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `catname` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `catname`, `status`) VALUES
(6, 'Fiction', 'Active'),
(8, 'Sports', 'Active'),
(9, 'Autobiographies', 'Active'),
(10, 'Self Help', 'Active'),
(11, 'Philosophy', 'Active'),
(12, 'Engineering', 'Active'),
(13, 'Architecture', 'Active'),
(14, 'University selected', 'Active'),
(15, 'University Papers', 'Active'),
(16, 'Leisure', 'Active'),
(17, 'Research', 'Active'),
(18, 'Magazines', 'Active'),
(19, ' Basic Sciences', 'Active'),
(20, 'New Category', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `lendbook`
--

CREATE TABLE `lendbook` (
  `id` int(11) NOT NULL,
  `memberid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `issuedate` date NOT NULL,
  `returndate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lendbook`
--

INSERT INTO `lendbook` (`id`, `memberid`, `bookid`, `issuedate`, `returndate`) VALUES
(9, 23, 7, '2020-12-05', '2020-12-09'),
(10, 4, 8, '2020-12-05', '2020-12-10'),
(11, 13, 7, '2020-12-05', '2020-12-11'),
(12, 7, 1, '2020-12-01', '2020-12-04'),
(13, 22, 9, '2020-12-01', '2020-12-19'),
(14, 12, 7, '2020-12-05', '2020-12-08'),
(16, 6, 4, '2020-12-08', '2020-12-10'),
(21, 1, 9, '2020-12-11', '2020-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('abhishek', 'password'),
('admin', 'password'),
('saiprasad', 'password'),
('superuser', 'password'),
('utkarsh', 'password'),
('vedang', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `name`, `address`, `phone`) VALUES
(1, ' Utkarsh Rana', 'Powai', 95649726),
(2, 'Saiprasad N', 'Airoli', 367965146),
(3, 'Vedang badawe', 'Mumbai', 31657983),
(4, 'Abhishek L', 'Vashi', 367869453),
(5, 'Shashank', 'Delhi', 37645525),
(7, ' Molly', 'Powai', 346769264),
(8, 'Shilpa', 'Powai', 38235322),
(9, 'Jivan', 'Ghansoli', 738235323),
(10, 'Suraj', 'Kalyan', 378527544),
(11, 'Tanish', 'Kalyan	', 343266224),
(12, 'Asjad', 'Panvel', 27483522),
(13, 'Prathmesh', 'Kalyan', 36574864),
(14, 'Ashish', 'Mumbai Central', 234567752),
(15, 'Abhay U', 'Kalyan', 12345678),
(16, 'Shrishty', 'Kalyan', 98765432),
(17, 'Vaama', 'Vashi', 98765432),
(18, 'Rudresh', 'Kalyan', 23456785),
(19, 'Adnan', 'Chembur', 12345678),
(20, 'Amaan', 'Vashi', 112345678),
(21, 'Amrish', 'Kalyan', 2345678),
(22, 'Devesh', 'Koparkhairane	', 876543323),
(23, 'Jayant', 'Thane', 543234567),
(24, 'Gautam', 'Thane', 345543453),
(25, 'Shubham', 'Bhandup', 2345678),
(26, 'Sumit', 'Kalyan', 234567890),
(27, 'Swaraj', 'Kalyan', 23456);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`id`, `name`, `address`, `phone`) VALUES
(4, 'Houghton Mifflin', 'USA', 569157657),
(5, 'Mallinson Rendel', 'NZ', 625764844),
(6, 'W. W. Norton', 'USA', 635252782),
(7, 'Dundler Mifflin', 'Stranton', 637914568),
(9, 'Tata Mc Graw Hill', 'India	', 123456789),
(10, 'Pearson', 'India', 123456789),
(11, 'S.Chand Publishing', 'India', 123456789),
(12, 'Himalaya Publishing House', 'India', 123456789),
(13, 'PHI', 'India	', 123456789),
(14, 'Dhanpat Rai', 'India	', 123456789),
(15, 'Trinity', 'India', 123456789),
(16, 'AneBooks', 'India', 123456789),
(17, 'TMH', 'India', 123456789),
(18, 'Khanna Book Publishing', 'Delhi, India', 123456789),
(19, 'Tata McGraw', 'India', 123456789),
(20, 'Narayan & Mittal', 'India	', 123456789),
(21, 'Scitech Publishers', 'India', 395623765),
(22, ' C Jamnadas & Company', 'India', 272582464);

-- --------------------------------------------------------

--
-- Table structure for table `returnbook`
--

CREATE TABLE `returnbook` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `bname` varchar(255) NOT NULL,
  `returndate` varchar(255) NOT NULL,
  `elp` int(11) NOT NULL,
  `fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `returnbook`
--

INSERT INTO `returnbook` (`id`, `mid`, `mname`, `bname`, `returndate`, `elp`, `fine`) VALUES
(1, 1, 'Utkarsh Rana', 'Hairy Maclary', '2020-12-15', 0, 0),
(2, 2, 'Saiprasad N', 'Hairy Maclary', '2020-12-07', 0, 0),
(3, 3, 'Vedang badawe', 'My cat likes to hide in boxes', '2020-12-09', 0, 0),
(4, 4, 'Abhishek L', 'Hobbit', '2020-12-09', 0, 0),
(5, 17, 'Vaama', 'Hobbit', '2020-12-11', 0, 0),
(6, 8, 'Shilpa', 'My cat likes to hide in boxes', '2020-12-10', 0, 0),
(7, 10, 'Suraj', 'BEE', '2020-12-05', 3, 150),
(8, 1, 'Utkarsh Rana', 'Hairy Maclary', '2020-12-11', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lendbook`
--
ALTER TABLE `lendbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD UNIQUE KEY `email` (`username`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returnbook`
--
ALTER TABLE `returnbook`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `lendbook`
--
ALTER TABLE `lendbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `returnbook`
--
ALTER TABLE `returnbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
