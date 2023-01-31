-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2023 at 09:33 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_student`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_borrowing`
--

CREATE TABLE `book_borrowing` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `TypeName` varchar(45) DEFAULT NULL,
  `Dte` varchar(45) DEFAULT NULL,
  `ReturnName` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_borrowing`
--

INSERT INTO `book_borrowing` (`ID`, `FirstName`, `BookName`, `TypeName`, `Dte`, `ReturnName`) VALUES
(1, 'ณัฐภัทร', 'เว็บไซต์', 'วิชาการ', '2/5/55', 'Yes'),
(2, 'จารุมน', 'แรงเงา', 'นิยาย', '4/2/55', 'No'),
(3, 'พรสรัญ', 'สถิติศาสตร์', 'วิชาการ', '10/5/55', 'No'),
(4, 'สมคิด', 'แพรว', 'นิตยสาร', '12/4/55', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `CountryCode` varchar(10) NOT NULL DEFAULT '',
  `EnName` varchar(45) DEFAULT NULL,
  `ThName` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`CountryCode`, `EnName`, `ThName`) VALUES
('EN', 'England', 'อังกฤษ'),
('JP', 'Japan', 'ญี่ปุ่น'),
('TH', 'Thailand', 'ไทย'),
('US', 'United States', 'สหรัฐอเมริกา');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` varchar(11) NOT NULL,
  `Nam` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `CountryCode` varchar(255) DEFAULT NULL,
  `Budget` varchar(255) DEFAULT NULL,
  `Used` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `Nam`, `Email`, `CountryCode`, `Budget`, `Used`) VALUES
('C001', 'Win Weerachai', 'win.weerachai@hotmail.com', 'TH', '100000', '600000'),
('C002', 'John Smith', 'john.smith@hotmail.com', 'EN', '2000000', '800000'),
('C003', 'Jame Born', 'jame.born@hotmail.com', 'US', '3000000', '600000'),
('C004', 'Chalee Angel', 'chalee.angel@hotmail.com', 'US', '4000000', '10000'),
('C005', 'Mickey Brown', 'mickey.brown@hotmail.com', 'JP', '100000', '600000');

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Age` varchar(10) DEFAULT NULL,
  `Income` varchar(45) DEFAULT NULL,
  `NA` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`ID`, `FirstName`, `Age`, `Income`, `NA`) VALUES
(1, 'ณัฐภัทร', '22', '15,000', 'Thai'),
(2, 'จารุมน', '15', '26,000', 'Eng'),
(3, 'พรสรัญ', '18', '14,000', 'Thai'),
(4, 'สมคิด', '55', '52,000', 'Sing');

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `P_id` int(11) NOT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`P_id`, `LastName`, `FirstName`, `Address`, `City`) VALUES
(1, 'Keawratta', 'Nutthapat', 'Bangplad', 'Bangkok'),
(2, 'Noo', 'Jarumon', 'Bangpsue', 'Bangkok'),
(3, 'Chai', 'Pornsarun', 'Dusit', 'Bangkok'),
(4, 'hiran', 'Somkid', 'Dusit', 'Bangkok');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `c_no` int(10) NOT NULL,
  `S_Name` varchar(45) NOT NULL,
  `S_LastName` varchar(45) NOT NULL,
  `S_Address` varchar(45) NOT NULL,
  `S_SubjectName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`c_no`, `S_Name`, `S_LastName`, `S_Address`, `S_SubjectName`) VALUES
(3, 'นัสรอ', 'บาเหะ', 'ยะรัง', 'เขียนโปรแกรม'),
(4, 'อมรรัตน์', 'ทองหมื่น', 'ยะลา', 'ไมโครคอนโทรเลอร์'),
(9, 'รอซีดี', 'เจ๊ะและ', 'สะบ้าย้อย', 'เครือข่าย');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `id_employee` int(11) NOT NULL,
  `N_nameepy` varchar(45) NOT NULL,
  `S_Lastnepy` varchar(45) NOT NULL,
  `S_Address` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id_product` int(5) NOT NULL,
  `N_nameprd` varchar(45) NOT NULL,
  `price` varchar(10) NOT NULL,
  `dateprd` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id_product`, `N_nameprd`, `price`, `dateprd`) VALUES
(1, 'สบู่', '52', '0000-00-00'),
(2, 'โลชั่นซิตร้า', '160', '0000-00-00'),
(3, '', '', '0000-00-00'),
(4, '', '', '0000-00-00'),
(5, '', '', '0000-00-00'),
(6, '', '', '0000-00-00'),
(7, '', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_type`
--

CREATE TABLE `tbl_product_type` (
  `id_product_type` int(11) NOT NULL,
  `nametype_prd` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product_type`
--

INSERT INTO `tbl_product_type` (`id_product_type`, `nametype_prd`) VALUES
(1, 'ของเหลว'),
(2, 'ของเหลว'),
(3, 'ของเหลว'),
(4, 'ของเหลว');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sale`
--

CREATE TABLE `tbl_sale` (
  `id_sale` int(11) NOT NULL,
  `num_sale` varchar(45) NOT NULL,
  `date_sale` date NOT NULL,
  `total_price` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `id_student` int(11) NOT NULL,
  `s_name` varchar(45) DEFAULT NULL,
  `s_lastname` varchar(45) DEFAULT NULL,
  `s_address` varchar(255) DEFAULT NULL,
  `s_subject` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`id_student`, `s_name`, `s_lastname`, `s_address`, `s_subject`) VALUES
(2, 'CHANANDA', 'SRIJANN', 'YALA UPDATE', 'COMPUTER'),
(3, 'HASSAN', 'KASOR', 'PATANI UPDATE', 'ACCOUNT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_borrowing`
--
ALTER TABLE `book_borrowing`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`CountryCode`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`P_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`c_no`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`id_employee`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `tbl_product_type`
--
ALTER TABLE `tbl_product_type`
  ADD PRIMARY KEY (`id_product_type`);

--
-- Indexes for table `tbl_sale`
--
ALTER TABLE `tbl_sale`
  ADD PRIMARY KEY (`id_sale`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`id_student`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `c_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `id_employee` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id_product` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_product_type`
--
ALTER TABLE `tbl_product_type`
  MODIFY `id_product_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_sale`
--
ALTER TABLE `tbl_sale`
  MODIFY `id_sale` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `id_student` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
