-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2020 at 12:14 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aId` int(6) NOT NULL,
  `Uname` varchar(15) NOT NULL,
  `Pwd` varchar(10) NOT NULL,
  `Fname` varchar(15) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `DOJ` date NOT NULL,
  `DOB` date NOT NULL,
  `contNo` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `visitcnt` int(11) NOT NULL,
  `gender` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aId`, `Uname`, `Pwd`, `Fname`, `Lname`, `DOJ`, `DOB`, `contNo`, `Email`, `visitcnt`, `gender`) VALUES
(1, 'khanjan569', 'khanjan*78', 'Khanjan', 'Dave', '2015-01-01', '1999-06-05', '3216547895', 'khanjan@yahoo.com', 15, 'Male'),
(2, 'saadmansuri', 'saad123', 'Saad', 'Mansuri', '2015-01-01', '1998-09-24', '2121212121', 'saad123@gmail.com', 10, 'Male'),
(3, 'dhavalalagiya', 'dhaval85', 'Dhaval', 'Alagiya', '2015-01-01', '1998-08-23', '3211231232', 'dhaval85@gmail.com', 12, 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catId` int(6) NOT NULL,
  `catName` varchar(25) NOT NULL,
  `catImg` varchar(40) DEFAULT NULL,
  `catIsDisplay` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catId`, `catName`, `catImg`, `catIsDisplay`) VALUES
(1002, 'Housekeeping Supplies ', 'housekeepingsupplies.jpg', 'yes'),
(1003, 'Pantry Products ', 'pantryproduct.jpg', 'yes'),
(1004, 'Office Electronics ', 'office-electronics.jpg', 'yes'),
(1007, 'Packing Material', '', 'Yes'),
(1008, 'Office Stationery', '', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `cmproleamount`
--

CREATE TABLE `cmproleamount` (
  `crId` int(6) NOT NULL,
  `cmpId` int(6) NOT NULL,
  `RoleId` int(6) NOT NULL,
  `amount` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cmproleamount1`
--

CREATE TABLE `cmproleamount1` (
  `crId` int(6) NOT NULL,
  `cmpId` int(6) NOT NULL,
  `RoleId` int(6) NOT NULL,
  `RoleName` varchar(40) NOT NULL,
  `amount` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cmproleamount1`
--

INSERT INTO `cmproleamount1` (`crId`, `cmpId`, `RoleId`, `RoleName`, `amount`) VALUES
(1, 5, 1, 'accounts manager', '500'),
(2, 5, 2, 'Recruitment manager', '750'),
(3, 5, 3, 'Technology Manager', '500'),
(4, 5, 4, 'Store Manager', '480'),
(5, 5, 5, 'Regional Manager', '450'),
(6, 5, 6, 'Functional Manager', '550'),
(7, 5, 7, 'Departmental Manager', '510'),
(8, 5, 8, 'General Manager', '580'),
(9, 5, 9, 'Chief Executive Officer', '600'),
(10, 5, 10, 'Chief Operating Officer', '650'),
(11, 5, 11, 'Chief Financial Officer', '690'),
(12, 5, 12, 'Chief Technology Officer', '550'),
(13, 5, 13, 'Chief Marketing Officer', '500'),
(14, 5, 14, 'Chief Legal Officer', '400'),
(15, 5, 15, 'Employees', '350'),
(16, 5, 16, 'peons', '300'),
(17, 5, 17, 'coder', '550'),
(18, 5, 18, 'tester', '400'),
(19, 5, 19, 'developer', '500'),
(20, 6, 1, 'accounts manager', '600'),
(21, 6, 2, 'Recruitment manager', '650'),
(22, 6, 3, 'Technology Manager', '400'),
(23, 6, 4, 'Store Manager', '500'),
(24, 6, 5, 'Regional Manager', '400'),
(25, 6, 6, 'Functional Manager', '580'),
(26, 6, 7, 'Departmental Manager', '510'),
(27, 6, 8, 'General Manager', '600'),
(28, 6, 9, 'Chief Executive Officer', '700'),
(29, 6, 10, 'Chief Operating Officer', '650'),
(30, 6, 11, 'Chief Financial Officer', '600'),
(31, 6, 12, 'Chief Technology Officer', '500'),
(32, 6, 13, 'Chief Marketing Officer', '550'),
(33, 6, 14, 'Chief Legal Officer', '400'),
(35, 6, 15, 'Employees', '450'),
(36, 6, 16, 'peons', '400'),
(37, 6, 17, 'coder', '500'),
(38, 6, 18, 'tester', '350'),
(39, 6, 19, 'developer', '450'),
(40, 7, 1, 'accounts manager', '600'),
(41, 7, 2, 'Recruitment manager', '750'),
(42, 7, 3, 'Technology Manager', '700'),
(43, 7, 4, 'Store Manager', '600'),
(44, 7, 5, 'Regional Manager', '450'),
(45, 7, 6, 'Functional Manager', '500'),
(46, 7, 7, 'Departmental Manager', '510'),
(47, 7, 8, 'General Manager', '600'),
(48, 7, 9, 'Chief Executive Officer', '650'),
(49, 7, 10, 'Chief Operating Officer', '650'),
(50, 7, 11, 'Chief Financial Officer', '650'),
(51, 7, 12, 'Chief Technology Officer', '550'),
(52, 7, 13, 'Chief Marketing Officer', '500'),
(53, 7, 14, 'Chief Legal Officer', '400'),
(54, 7, 15, 'Employees', '450'),
(55, 7, 16, 'peons', '400'),
(56, 7, 17, 'coder', '500'),
(57, 7, 18, 'tester', '400'),
(58, 7, 19, 'developer', '450'),
(59, 8, 1, 'accounts manager', '600'),
(60, 8, 2, 'Recruitment manager', '750'),
(61, 8, 3, 'Technology Manager', '500'),
(62, 8, 4, 'Store Manager', '480'),
(63, 8, 5, 'Regional Manager', '450'),
(64, 8, 6, 'Functional Manager', '550'),
(65, 8, 7, 'Departmental Manager', '510'),
(66, 8, 8, 'General Manager', '580'),
(67, 8, 9, 'Chief Executive Officer', '600'),
(68, 8, 10, 'Chief Operating Officer', '650'),
(69, 8, 11, 'Chief Financial Officer', '690'),
(70, 8, 12, 'Chief Technology Officer', '550'),
(71, 8, 13, 'Chief Marketing Officer', '500'),
(72, 8, 14, 'Chief Legal Officer', '400'),
(73, 8, 15, 'Employees', '350'),
(74, 8, 16, 'peons', '300'),
(75, 8, 17, 'coder', '550'),
(76, 8, 18, 'tester', '400'),
(77, 8, 19, 'developer', '500'),
(78, 9, 1, 'accounts manager', '500'),
(79, 9, 2, 'Recruitment manager', '750'),
(80, 9, 3, 'Technology Manager', '500'),
(81, 9, 4, 'Store Manager', '480'),
(82, 9, 5, 'Regional Manager', '450'),
(83, 9, 6, 'Functional Manager', '550'),
(84, 9, 7, 'Departmental Manager', '510'),
(85, 9, 8, 'General Manager', '580'),
(86, 9, 9, 'Chief Executive Officer', '600'),
(87, 9, 10, 'Chief Operating Officer', '650'),
(88, 9, 11, 'Chief Financial Officer', '690'),
(89, 9, 12, 'Chief Technology Officer', '550'),
(90, 9, 13, 'Chief Marketing Officer', '500'),
(91, 9, 14, 'Chief Legal Officer', '400'),
(92, 9, 15, 'Employees', '350'),
(93, 9, 16, 'peons', '300'),
(94, 9, 17, 'coder', '550'),
(95, 9, 18, 'tester', '400'),
(96, 9, 19, 'developer', '500'),
(97, 10, 1, 'accounts manager', '500'),
(98, 10, 2, 'Recruitment manager', '750'),
(99, 10, 3, 'Technology Manager', '500'),
(100, 10, 4, 'Store Manager', '480'),
(101, 10, 5, 'Regional Manager', '450'),
(102, 10, 6, 'Functional Manager', '550'),
(103, 10, 7, 'Departmental Manager', '510'),
(104, 10, 8, 'General Manager', '580'),
(105, 10, 9, 'Chief Executive Officer', '600'),
(106, 10, 10, 'Chief Operating Officer', '650'),
(107, 10, 11, 'Chief Financial Officer', '690'),
(108, 10, 12, 'Chief Technology Officer', '550'),
(109, 10, 13, 'Chief Marketing Officer', '500'),
(110, 10, 14, 'Chief Legal Officer', '400'),
(111, 10, 15, 'Employees', '350'),
(112, 10, 16, 'peons', '300'),
(113, 10, 17, 'coder', '550'),
(114, 10, 18, 'tester', '400'),
(115, 10, 19, 'developer', '500');

-- --------------------------------------------------------

--
-- Table structure for table `cmproleamount2`
--

CREATE TABLE `cmproleamount2` (
  `crId` int(6) NOT NULL,
  `cmpId` int(6) NOT NULL,
  `amount` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cmproleamount2`
--

INSERT INTO `cmproleamount2` (`crId`, `cmpId`, `amount`) VALUES
(1, 5, '25000'),
(2, 6, '12000'),
(3, 7, '10000'),
(4, 8, '16000'),
(5, 9, '20000'),
(6, 10, '14000');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `cmpId` int(6) NOT NULL,
  `cmoName` varchar(30) NOT NULL,
  `pwd` varchar(10) NOT NULL,
  `cmpLogo` int(11) NOT NULL,
  `cmpDetails` varchar(20) NOT NULL,
  `contactprsn` varchar(20) NOT NULL,
  `cmpEmail` varchar(20) NOT NULL,
  `cmpContactNo` varchar(10) NOT NULL,
  `Doj` date NOT NULL,
  `IsActive` varchar(3) NOT NULL,
  `sId` int(6) NOT NULL,
  `package` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `company1`
--

CREATE TABLE `company1` (
  `cmpId` int(6) NOT NULL,
  `cmpname` varchar(30) NOT NULL,
  `Pwd` varchar(25) NOT NULL,
  `contactperson` varchar(25) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `cmpuname` varchar(20) NOT NULL,
  `cmpdetail` varchar(50) NOT NULL,
  `EmailId` varchar(30) DEFAULT NULL,
  `IsActive` varchar(3) NOT NULL,
  `package` int(10) NOT NULL,
  `crId` int(6) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company1`
--

INSERT INTO `company1` (`cmpId`, `cmpname`, `Pwd`, `contactperson`, `contactno`, `cmpuname`, `cmpdetail`, `EmailId`, `IsActive`, `package`, `crId`, `address`) VALUES
(5, 'Swagat Group of Company', 'swagat0050', 'Sunil Singh', '8000665280', 'swagatcompany', 'Software Company', 'swagat0050@gmail.com', 'Yes', 100000, 1, '10, jay Bhavani Chamber, Near Malav-Talav, Jivraaj-Park Road, Ahmedabad-51. '),
(6, 'Indian Bulls', 'indian123', 'Suraj Sharma', '9856324178', 'indianbulls', 'Financial Services', 'indianbullst123@gmail.com', 'Yes', 110000, 2, 'D/113, Rajratna Shopping Center, near Rajendra Cross Road, Odhav, Ahmedabad.'),
(7, 'Tata Technologies', 'tatatech99', 'Fuzel Shaikh', '9251426378', 'tatatechnologies', 'Hardware and Software Company', 'tatatech99@gmail.com', 'Yes', 140000, 3, 'M/2, Sutirath Apartment, Opp. Sanjivni Hospital, Vastrapur, Ahmedabad.'),
(8, 'ACC Limited ', 'acclimited', 'Arpit Khanna', '8452634145', 'acclimited', 'Cement ', 'acclimited454@gmail.com', 'Yes', 150000, 4, 'S.F/11, Marutinandan Complex, near Baseball Ground, Bopal, Ahmedabad.'),
(9, 'ABG Shipyard', 'abgshipyard', 'Dhaval Rathod', '8452135684', 'abgshipyard', 'Commercial Vehicle & Trucks', 'abgshpyard65@gmail.com', 'Yes', 90000, 5, 'B/1, Sector 6/A, lain no.29, Stanling Campus, Karnavati, Ahmedabad.'),
(10, 'Aftek Technology', 'aftek1010', 'Rahul Pandya', '7854123659', 'aftektech', 'Computer Services', 'aftektech1010@gmail.com', 'Yes', 115000, 6, 'A-39, Tirupati Campus, behind G.S.T. Cross, New Ranip, Ahmedabad.  '),
(11, 'Action Group ', 'action555', 'Manohar Lal', '8564234568', 'actiongroup', 'Apparel,Chemicals,retail,steel', 'actiongroup555@gmail.com', 'Yes', 120000, 7, 'P-01, Anand Chambers, opp. RTO Cross, Ranip, Ahmedabad.  '),
(12, 'Ambuja Cements', 'ambujacements', 'Ashutosh Arora', '7545631545', 'ambujacements', 'Cement', 'ambujacements01@gmail.com', 'Yes', 130000, 0, 'A-11, Sagar Building, near Alpha Multiplex, Iscon, S.G Road, Ahmedabad.  '),
(13, 'Amul Dairy', 'amuldairy22', 'Parth Roy', '8521345689', 'amuldairy', 'Dairy', 'amuldairy22@gmail.com', 'Yes', 140000, 0, 'Z/11, Qatar Chamber, near Sanand Road, Sarkhej, Ahmedabad.  '),
(14, 'Amartex ', 'amartex66', 'Harsh Rathod', '7452631245', 'amartex', 'Clothing Retail', 'amartex66@gmail.com', 'Yes', 100000, 0, 'T-5, Asia Campus, opp. Himalaya, Drive-in Road, Ahmedabad.  '),
(15, 'Apollo Hospitals', 'apollo8787', 'Umesh Yadav', '9152634587', 'apollohospitals', 'Hospital Chain', 'apollohospital8787@gmail.com', 'Yes', 95000, 0, '1778, 5th-Floor, Classic Apartment, Vishala Circle, Vasna, Ahmedabad.  '),
(16, 'Apollo Tyres', 'apollotyres19', 'Kartik Modi', '7845126395', 'apollotyres', 'Tyres, Parts', 'apollotyress19@gmail.com', 'Yes', 125000, 0, 'B/99, Al-Burooj Hights, 100 fits Ring Road , New Dwarka, Ahmedabad.  '),
(17, 'Amrutanjan Healthcare', 'amrutanjan55', 'Rohit Shetty', '9365214879', 'amrutanjanhealthcare', 'Medicine, Pharmacy', 'amrutanjan55@gmail.com', 'Yes', 70000, 0, '10, Chinar Campus, behind Jay-MAngal B.R.T.S, Helmet Circle, Ahmedabad.  '),
(18, 'Asia Motor Works', 'asiamotor001', 'Amitabh Rana', '7845652314', 'asiamotorworks', 'Trucks', 'asiamotorworks@gmail.com', 'Yes', 130000, 0, 'S/11, Royel Akber, near Sonal Cross Road, Sahibag, Ahmedabad.  '),
(19, 'Asian Paints LTD', 'asianpaints88', 'Nitish Rana', '7652314864', 'asianpaintsltd', 'Paints', 'asianpaints88@gmail.com', 'Yes', 135000, 0, 'J/69, RK Chamber, behind Italian Restaurant, Gurukul, Ahmedabad.  '),
(20, 'Bharat Petroleum', 'bharatpetroleum99', 'Vijay Shankar', '8234568974', 'bharatpetroleum', 'State Petrochemical', 'bharatpetroleum99@gmail.com', 'Yes', 150000, 0, 'H/11, Amber Campus, opp. Karaoke Bar, C.G. Road, Paldi, Ahmedabad.  '),
(21, 'saadmansuri', 'saad123', '', '', '', '', NULL, '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `deliveryboy`
--

CREATE TABLE `deliveryboy` (
  `Did` int(6) NOT NULL,
  `Duname` varchar(15) NOT NULL,
  `pwd` varchar(10) NOT NULL,
  `Dfname` varchar(20) NOT NULL,
  `Dlname` varchar(25) NOT NULL,
  `DOJ` date NOT NULL,
  `DOB` date NOT NULL,
  `Contactno` varchar(10) NOT NULL,
  `Emailid` varchar(30) NOT NULL,
  `Visitcnt` int(11) NOT NULL,
  `Lseen` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deliveryboy`
--

INSERT INTO `deliveryboy` (`Did`, `Duname`, `pwd`, `Dfname`, `Dlname`, `DOJ`, `DOB`, `Contactno`, `Emailid`, `Visitcnt`, `Lseen`) VALUES
(1, 'mahesh123', '123456', 'mahesh', 'patel', '2018-08-07', '2018-06-04', '1234567899', 'mh@gmail.com', 20, '2018-12-19'),
(2, 'gajanan23', 'gjn123', 'gajanan', 'patel', '2018-10-08', '1990-02-10', '3216549877', 'ggn@gmail.com', 10, '2019-01-05'),
(3, 'suresh45', 'suresh45', 'suresh', 'yadav', '2018-02-18', '1995-08-10', '7845457878', 'ss@yahoo.com', 7, '2019-01-07'),
(4, 'harpal32', 'harpal32', 'harpal', 'singh', '2018-08-25', '1988-05-20', '6598231475', 'harpal@yahoo.com', 15, '2019-01-06'),
(5, 'umesh54', 'umesh54', 'umesh', 'patel', '2018-07-12', '1993-11-17', '9563145288', 'umeshp@gmail.com', 11, '2019-01-01'),
(6, 'chaitanya78', 'chaitn78', 'chaitanya', 'kapoor', '2018-09-25', '1991-08-23', '8546321542', 'chaitanya@yahoo.com', 20, '2019-01-09'),
(7, 'rahul65', 'rahul65', 'rahul', 'rajput', '2018-10-10', '1989-07-15', '5623458965', 'rahul@yahoo.com', 17, '2019-01-08');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eId` int(6) NOT NULL,
  `eUname` varchar(10) DEFAULT NULL,
  `Pwd` varchar(10) DEFAULT NULL,
  `fName` varchar(15) DEFAULT NULL,
  `lName` varchar(15) DEFAULT NULL,
  `crId` int(6) NOT NULL,
  `cmpId` int(6) DEFAULT NULL,
  `DOJ` date DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `ContantNo` varchar(20) DEFAULT NULL,
  `EmailId` varchar(20) DEFAULT NULL,
  `VisitCnt` int(6) DEFAULT NULL,
  `LSeen` date DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee1`
--

CREATE TABLE `employee1` (
  `eId` int(6) NOT NULL,
  `eUname` varchar(20) NOT NULL,
  `Pwd` varchar(15) NOT NULL,
  `fName` varchar(30) NOT NULL,
  `lName` varchar(30) NOT NULL,
  `crId` int(6) NOT NULL,
  `cmpId` int(6) NOT NULL,
  `DOB` date NOT NULL,
  `ContactNo` varchar(10) NOT NULL,
  `EmailId` varchar(30) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `empimg` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee1`
--

INSERT INTO `employee1` (`eId`, `eUname`, `Pwd`, `fName`, `lName`, `crId`, `cmpId`, `DOB`, `ContactNo`, `EmailId`, `gender`, `empimg`) VALUES
(1, 'sanketsingh', 'sanket123', 'Sanket', 'Singh', 1, 5, '1998-10-15', '9426041107', 'sanket45@gmail.com', 'Male', 'sd.jpg'),
(2, 'niravshah78', 'niravshah78', 'Nirav', 'Shah', 2, 5, '1996-02-02', '7845685987', 'niravshah78@gmail.com', 'Male', 'sz.jpg'),
(3, 'ranjityadav', 'ranjit55', 'Ranjit ', 'Yadav', 3, 5, '1997-03-04', '8000665288', 'ranjityadav55@gmail.com', 'Male', 'ms.jpg'),
(4, 'hirenparmar', 'hiren98', 'Hiren', 'Parmar', 4, 5, '1995-05-05', '9456824585', 'hirenparmar98@gmail.com', 'Male', 'ds.jpg'),
(5, 'tejaspatel', 'tejas86', 'Tejas', 'Patel', 5, 5, '1994-09-24', '7565425235', 'tejaspatel86@gmail.com', 'Male', 'vs.jpg'),
(6, 'aaminbhati', 'aamin44', 'Aamin ', 'bhati', 6, 5, '1998-05-16', '7856425153', 'aaminbhati44@gmail.com', 'Male', 'wd.jpg'),
(7, 'imranjadav', 'imran53', 'Imran', 'Jadav', 7, 5, '1993-09-17', '8565234512', 'imranjadav53@gmail.com', 'Male', 'pm.jpg'),
(8, 'danishmirza', 'danish15', 'Danish', 'Mirza', 8, 5, '1991-09-27', '8545621235', 'danishmirza15@gmail.com', 'Male', 'ss.jpg'),
(9, 'raviraaj', 'ravi11', 'Ravi', 'Raaj', 9, 5, '1996-09-24', '7545859656', 'raviraaj11@gmail.com', 'Male', 'dk.jpg'),
(10, 'ashoksavalsa', 'ashok36', 'Ashok', 'Savalsa', 10, 5, '1992-12-15', '8596741235', 'ashoksavalsa11@gmail.com', 'Male', 'mb.jpg'),
(11, 'kainatazim', 'kainat33', 'Kainat', 'Azim', 11, 5, '1995-11-10', '8745213658', 'kainatazim33@gmail.com', 'Female', 'km.jpg'),
(12, 'surajthakor', 'suraj69', 'Suraj', 'Thakor', 12, 5, '1992-10-23', '9654235645', 'surajthakor69@gmail.com', 'Male', 'ss.jpg'),
(13, 'laxmanprajapati', 'laxman77', 'Laxaman', 'Prajapati', 13, 5, '1996-02-26', '9585456253', 'laxmanprajapati77@gmail.com', 'Male', 'jg.jpg'),
(14, 'bharatghadvi1', 'bharat1', 'Bharat', 'Ghadvi', 14, 5, '1998-09-24', '9586758412', 'bharatghadvi1@gmail.comm', 'Male', 'kk.jpg'),
(15, 'sahoopriya', 'sahoopriya02', 'Sahoo', 'Priya', 15, 5, '1997-12-27', '7125869545', 'sahoopriya02@gmail.com', 'Female', 'jj.jpg'),
(16, 'kashyapvidhi', 'kashyap15', 'Kashyap', 'Vidhi', 16, 5, '1995-07-17', '9398564521', 'kashyapvidhi15@gmail.com', 'Female', 'pd.jpg'),
(17, 'hardikchavda', 'hardik61', 'Hardik', 'Chavda', 17, 5, '1996-11-19', '9452635685', 'hardikchavda61@gmail.com', 'Male', 'bm.jpg'),
(18, 'muskanshaikh52', 'muskan52', 'Muskan', 'Shaikh', 18, 5, '1995-08-17', '7412369854', 'muskanshaikh52@gmail.com', 'Male', 'kt.jpg'),
(19, 'divyasingh', 'divya81', 'Divya', 'Singh', 19, 5, '1993-05-25', '7325658945', 'divyasingh81@gmail.com', 'Male', 'gf.jpg'),
(20, 'umeshjangid', 'umesh011', 'Umesh', 'Jangid', 1, 6, '1998-08-21', '9658475486', 'umeshjangid011@gmail.com', 'Male', 'bf.jpg'),
(21, 'manoharborana', 'manohar55', 'Manohar', 'Borana', 2, 6, '1996-05-24', '3521487549', 'manoharborana55@gmail.com', 'Male', 'am.jpg'),
(22, 'satyampatel', 'satyam098', 'Satyam', 'Patel', 3, 6, '1989-05-14', '9847584578', 'satyampatel098@gmail.com', 'Male', 'sk.jpg'),
(23, 'harshraval', 'harsh091', 'Harsh', 'Dave', 4, 6, '1995-07-16', '8258475967', 'harshraval091@gmail.com', 'Male', 'dk11.jpg'),
(24, 'govindkumavat', 'govind76', 'Govind', 'Kumavat', 5, 6, '1992-03-25', '9547859614', 'govind76@gmail.com', 'Male', 'pk11.jpg'),
(25, 'sahilpatel', 'sahil18', 'Sahil', 'Patel', 6, 6, '1992-02-14', '8259654785', 'sahilpatel18@gmail.com', 'Male', 'db11.jpg'),
(26, 'milanvora', 'milan07', 'Milan', 'Vora', 7, 6, '1994-02-15', '9247859614', 'milan07@gmail.com', 'male', 'rk11.jpg'),
(27, 'jaypatel', 'jay44', 'Jay', 'Patel', 8, 6, '1993-07-21', '8264257611', 'jay44@gmail.com', 'male', 'dc11.jpg'),
(28, 'maheshbavishi', 'mahesh22', 'Mahesh', 'Bavishi', 9, 6, '1998-03-22', '8866986669', 'mahesh22@gmail.com', 'male', 'rj11.jpg'),
(29, 'bhagyeshsoni', 'bhagyesh39', 'Bhagyesh', 'Soni', 10, 6, '1998-07-12', '7685986669', 'bhagyesh39@gmail.com', 'male', 'rs11.jpg'),
(30, 'ankitsoni', 'ankit10', 'Ankit', 'Soni', 11, 6, '1995-07-19', '7045988611', 'ankitsoni10@gmail.com', 'Male', 'rf11.jpg'),
(31, 'zyanmirza', 'zyan45', 'Zyan', 'Mirza', 12, 6, '1990-08-27', '8562457812', 'zyanmirza45@gmail.com', 'Male', 'et11.jpg'),
(32, 'pravinkumar', 'pravink44', 'Pravin', 'Kumar', 13, 6, '1990-08-20', '9512357812', 'pravinkumar44@gmail.com', 'Male', 'dd11.jpg'),
(33, 'mananvohra', 'mananv82', 'Manan', 'Vohra', 14, 6, '1990-09-20', '9822357812', 'mananvohra82@gmail.com', 'Male', 'ed11.jpg'),
(34, 'tusharchouhan', 'tushar12', 'Tushar', 'Chouhan', 15, 6, '1990-05-19', '9586758412', 'tusharchouhan12@gmail.com', 'Male', 'ks11.jpg'),
(35, 'paragchouhan', 'parag44', 'Parag', 'Chouhan', 16, 6, '1995-04-10', '9586758412', 'paragchouhan44@gmail.com', 'Male', 'ld11.jpg'),
(36, 'roshansoni', 'roshan23', 'Roshan', 'Soni', 17, 6, '1993-08-19', '6354239174', 'roshansoni23@gmail.com', 'Male', 'op11.jpg'),
(37, 'jayeshrathod', 'jayesh78', 'Jayesh', 'Rathod', 18, 6, '1994-01-19', '6365984562', 'jayeshrathod@gmail.com', 'Male', 'cc11.jpg'),
(38, 'sachinrajput', 'sachin25', 'Sachin', 'Rajput', 19, 6, '1992-11-26', '8012458596', 'sachinrajput25@gmail.com', 'Male', 'cd11.jpg'),
(39, 'amanchaturvedi', 'aman50', 'Aman', 'Chaturvedi', 1, 7, '1998-01-05', '6354041144', 'aman50@gmail.com', 'Male', 'am1.jpg'),
(40, 'rahulprajapati', 'rahul98', 'Rahul', 'Prajapati', 2, 7, '1996-02-05', '8542635174', 'rahul98@gmail.com', 'Male', 'rp1.jpg'),
(41, 'amitchavda', 'amit44', 'Amit', 'Chavda', 3, 7, '1991-09-14', '8874526361', 'amitchavda44@gmail.com', 'Male', 'ac1.jpg'),
(42, 'kirtanrami', 'kirtan21', 'Kirtan', 'Rami', 4, 7, '1993-11-28', '7452634589', 'kirtanrami21@gmail.com', 'Male', 'kr1.jpg'),
(43, 'pallavisuthar', 'pallavi03', 'Pallavi', 'Suthar', 5, 7, '1996-11-11', '7452634589', 'pallavisuthar03@gmail.com', 'Male', 'ps1.jpg'),
(44, 'malviyanaresh', 'naresh66', 'Naresh', 'Malviya', 6, 7, '1995-09-16', '9012526345', 'malviyanaresh66@gmail.com', 'Male', 'mn1.jpg'),
(45, 'chiragmistry', 'chirag36', 'Chirag', 'Mistry', 7, 7, '1995-03-09', '9745235642', 'chiragmistry36@gmail.com', 'Male', 'cm1.jpg'),
(46, 'manishsaroj', 'manish85', 'Manish', 'Saroj', 8, 7, '1994-02-28', '9563524585', 'manishasaroj85@gmail.com', 'Female', 'ms1.jpg'),
(47, 'rushitparmar', 'rushit52', 'Rushit', 'Parmar', 9, 7, '1994-02-24', '9023524585', 'rushitparmar52@gmail.com', 'Male', 'rp11.jpg'),
(48, 'vishaldave', 'vishal93', 'Vishal', 'Dave', 10, 7, '1993-05-21', '7452125632', 'vishaldave93@gmail.com', 'Male', 'vd1.jpg'),
(49, 'junedansarri', 'juned94', 'Juned', 'Ansari', 11, 7, '1991-07-11', '8563524578', 'junedansari94@gmail.com', 'Male', 'ja1.jpg'),
(50, 'prachidarji', 'prachi12', 'Prachi', 'Darji', 12, 7, '1993-02-11', '6523145285', 'prachidarji12@gmail.com', 'Female', 'pd1.jpg'),
(51, 'jaydeepdarji', 'jaydeep30', 'Jaydeep', 'Darji', 13, 7, '1996-09-21', '7452457896', 'jaydeepdarji30@gmail.com', 'Male', 'jd1.jpg'),
(52, 'asifdarbar', 'asif10', 'Asif', 'Darbar', 14, 7, '1997-03-01', '8656234125', 'asifdarbar10@gmail.com', 'Male', 'ad1.jpg'),
(53, 'sabamiza', 'saba63', 'Saba', 'Mirza', 15, 7, '1992-09-19', '8563524185', 'sabamirza63@gmail.com', 'Male', 'sm11.jpg'),
(54, 'meetshukla', 'meet11', 'Meet', 'Shukla', 16, 7, '1992-12-13', '7895635245', 'meetshukla11@gmail.com', 'Male', 'ms11.jpg'),
(55, 'lataparmar', 'lata48', 'Lata', 'Parmar', 17, 7, '1996-05-05', '6785452123', 'lataparmar48@gmail.com', 'Female', 'lp1.jpg'),
(56, 'sandiptrivedi', 'sandip77', 'Sandip', 'Trivedi', 18, 7, '1993-06-16', '9185426253', 'sandiptrivedi77@gmail.com', 'Male', 'st1.jpg'),
(57, 'muskanbloch', 'muskan55', 'Muskan', 'Baloch', 19, 7, '1990-08-06', '8956451235', 'muskanbloch55@gmail.com', 'Female', 'mb1.jpg'),
(58, 'moinkhan', 'moin70', 'Moin', 'Khan', 1, 8, '1995-06-16', '8541426252', 'moinkhan70@gmail.com', 'Male', 'mk3.jpg'),
(59, 'riteshdarji', 'riteshd51', 'Ritesh', 'Darji', 2, 8, '1994-07-05', '9585456253', 'riteshdarji51@gmail.com', 'Male', 'rd3.jpg'),
(60, 'safvanshaikh', 'safvan66', 'Safvan', 'Shaikh', 3, 8, '1993-05-14', '9052415685', 'safvanshaikh66@gmail.com', 'Male', 'ss3.jpg'),
(61, 'harishninama', 'harish88', 'Harish', 'Ninama', 4, 8, '1998-09-24', '9187425635', 'harishninama88@gmail.com', 'Male', 'hn3.jpg'),
(62, 'dhruminpatel', 'dhrumin40', 'Dhrumin', 'Patel', 5, 8, '1995-11-03', '8542526252', 'dhruminpatel40@gmail.com', 'Male', 'dp3.jpg'),
(63, 'ranjitparmar', 'ranjit91', 'Ranjit', 'Parmar', 6, 8, '1996-05-10', '9475265341', 'ranjitparmar91@gmail.com', 'Male', 'rp3.jpg'),
(64, 'vandanamaravi', 'vandana33', 'Vandana', 'Maravi', 7, 8, '1997-04-04', '7596524252', 'vandanamaravi33@gmail.com', 'Female', 'vm3.jpg'),
(65, 'manishpandey', 'manish52', 'Manish', 'Pandey', 8, 8, '1991-06-25', '7012526345', 'manishapandey52@gmail.com', 'Male', 'mp3.jpg'),
(66, 'ravipatidar', 'ravi63', 'Ravi', 'Patidar', 9, 8, '1996-09-20', '6354897123', 'ravipatidar63@gmail.com', 'Male', 'rp3.jpg'),
(67, 'akmalqureshi', 'akmal91', 'Akmal', 'Qureshi', 10, 8, '1996-01-26', '9043917526', 'akmalquresh91i@gmail.com', 'Male', 'aq3.jpg'),
(68, 'nazimmalek', 'nazim80', 'Nazim', 'Malek', 11, 8, '1993-12-16', '9486758496', 'nazimmalek80@gmail.com', 'Male', 'nm3.jpg'),
(69, 'priyashah', 'priyas52', 'Priya', 'Shah', 12, 8, '1996-04-12', '9245147895', 'priyashah52@gmail.com', 'Female', 'ps3.jpg'),
(70, 'priyashah', 'priyas52', 'Priya', 'Shah', 13, 8, '1996-04-12', '9245147895', 'priyashah52@gmail.com', 'Female', 'ps3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Fid` int(6) NOT NULL,
  `Eid` int(6) NOT NULL,
  `Dof` date NOT NULL,
  `Fmsg` varchar(50) NOT NULL,
  `Cid` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `odId` int(6) NOT NULL,
  `oId` int(6) NOT NULL,
  `pId` int(6) NOT NULL,
  `qty` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetailss`
--

CREATE TABLE `orderdetailss` (
  `odId` int(6) NOT NULL,
  `oId` int(6) NOT NULL,
  `pId` int(6) NOT NULL,
  `pName` varchar(20) NOT NULL,
  `qty` varchar(6) NOT NULL,
  `pPrice` int(6) NOT NULL,
  `pimg` varchar(20) NOT NULL,
  `pq` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdetailss`
--

INSERT INTO `orderdetailss` (`odId`, `oId`, `pId`, `pName`, `qty`, `pPrice`, `pimg`, `pq`) VALUES
(913, 37, 110, 'eraser', '1', 5, '', 5),
(914, 37, 102, 'cello', '1', 5, '', 5),
(915, 38, 110, 'eraser', '3', 5, '', 15),
(916, 38, 110, 'eraser', '4', 5, '', 20),
(917, 38, 110, 'eraser', '1', 5, '', 5),
(918, 38, 110, 'eraser', '4', 5, '', 20),
(919, 38, 101, 'saino softek', '3', 3, '', 9),
(920, 38, 110, 'eraser', '3', 5, '', 15),
(921, 38, 110, 'eraser', '3', 5, '', 15),
(922, 38, 101, 'saino softek', '5', 3, '', 15),
(923, 38, 110, 'eraser', '4', 5, '', 20),
(924, 38, 110, 'eraser', '2', 5, '', 10),
(925, 38, 110, 'eraser', '3', 5, '', 15),
(926, 38, 110, 'eraser', '3', 5, '', 15),
(927, 38, 110, 'eraser', '3', 5, '', 15),
(928, 38, 110, 'eraser', '1', 5, '', 5),
(929, 38, 110, 'eraser', '2', 5, '', 10),
(930, 38, 110, 'eraser', '1', 5, '', 5),
(931, 38, 110, 'eraser', '1', 5, '', 5),
(932, 38, 110, 'eraser', '1', 5, '', 5),
(933, 38, 110, 'eraser', '1', 5, '', 5),
(934, 38, 110, 'eraser', '1', 5, '', 5),
(935, 38, 110, 'eraser', '1', 5, '', 5),
(936, 38, 110, 'eraser', '1', 5, '', 5),
(937, 38, 110, 'eraser', '1', 5, '', 5),
(938, 38, 110, 'eraser', '1', 5, '', 5),
(939, 38, 110, 'eraser', '1', 5, '', 5),
(940, 38, 110, 'eraser', '2', 5, '', 10),
(941, 38, 110, 'eraser', '1', 5, '', 5),
(942, 38, 110, 'eraser', '1', 5, '', 5),
(943, 38, 110, 'eraser', '1', 5, '', 5),
(944, 38, 102, 'cello', '1', 5, '', 5),
(945, 38, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(946, 38, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(947, 38, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(948, 38, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(949, 38, 110, 'eraser', '3', 5, 'eraser.jpg', 15),
(950, 38, 113, 'Camlin Exam Sharpene', '4', 3, 'camlinsharpener.jpg', 12),
(951, 38, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(952, 38, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(953, 38, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(954, 38, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(955, 38, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(956, 38, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(957, 38, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(958, 38, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(959, 38, 111, 'Apsara Non Dust Eras', '5', 3, 'apsaraeraser.jpg', 15),
(960, 38, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(961, 39, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(962, 39, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(963, 39, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(964, 39, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(965, 39, 110, 'eraser', '3', 5, 'eraser.jpg', 15),
(966, 39, 113, 'Camlin Exam Sharpene', '4', 3, 'camlinsharpener.jpg', 12),
(967, 39, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(968, 39, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(969, 39, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(970, 39, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(971, 39, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(972, 39, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(973, 39, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(974, 39, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(975, 39, 111, 'Apsara Non Dust Eras', '5', 3, 'apsaraeraser.jpg', 15),
(976, 39, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(977, 39, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(978, 39, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(979, 40, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(980, 40, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(981, 40, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(982, 40, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(983, 40, 110, 'eraser', '3', 5, 'eraser.jpg', 15),
(984, 40, 113, 'Camlin Exam Sharpene', '4', 3, 'camlinsharpener.jpg', 12),
(985, 40, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(986, 40, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(987, 40, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(988, 40, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(989, 40, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(990, 40, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(991, 40, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(992, 40, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(993, 40, 111, 'Apsara Non Dust Eras', '5', 3, 'apsaraeraser.jpg', 15),
(994, 40, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(995, 40, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(996, 40, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(997, 41, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(998, 41, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(999, 41, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(1000, 41, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(1001, 41, 110, 'eraser', '3', 5, 'eraser.jpg', 15),
(1002, 41, 113, 'Camlin Exam Sharpene', '4', 3, 'camlinsharpener.jpg', 12),
(1003, 41, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1004, 41, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1005, 41, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1006, 41, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1007, 41, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1008, 41, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1009, 41, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1010, 41, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1011, 41, 111, 'Apsara Non Dust Eras', '5', 3, 'apsaraeraser.jpg', 15),
(1012, 41, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1013, 41, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1014, 41, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1015, 42, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(1016, 42, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(1017, 42, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(1018, 42, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(1019, 42, 110, 'eraser', '3', 5, 'eraser.jpg', 15),
(1020, 42, 113, 'Camlin Exam Sharpene', '4', 3, 'camlinsharpener.jpg', 12),
(1021, 42, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1022, 42, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1023, 42, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1024, 42, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1025, 42, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1026, 42, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1027, 42, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1028, 42, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1029, 42, 111, 'Apsara Non Dust Eras', '5', 3, 'apsaraeraser.jpg', 15),
(1030, 42, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1031, 42, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1032, 42, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1033, 42, 112, 'Camlin Exam All Clea', '1', 3, 'camlineraser.jpg', 3),
(1034, 43, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(1035, 43, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(1036, 43, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(1037, 43, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(1038, 43, 110, 'eraser', '3', 5, 'eraser.jpg', 15),
(1039, 43, 113, 'Camlin Exam Sharpene', '4', 3, 'camlinsharpener.jpg', 12),
(1040, 43, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1041, 43, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1042, 43, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1043, 43, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1044, 43, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1045, 43, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1046, 43, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1047, 43, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1048, 43, 111, 'Apsara Non Dust Eras', '5', 3, 'apsaraeraser.jpg', 15),
(1049, 43, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1050, 43, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1051, 43, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1052, 43, 112, 'Camlin Exam All Clea', '1', 3, 'camlineraser.jpg', 3),
(1053, 44, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(1054, 44, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(1055, 44, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(1056, 44, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(1057, 44, 110, 'eraser', '3', 5, 'eraser.jpg', 15),
(1058, 44, 113, 'Camlin Exam Sharpene', '4', 3, 'camlinsharpener.jpg', 12),
(1059, 44, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1060, 44, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1061, 44, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1062, 44, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1063, 44, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1064, 44, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1065, 44, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1066, 44, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1067, 44, 111, 'Apsara Non Dust Eras', '5', 3, 'apsaraeraser.jpg', 15),
(1068, 44, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1069, 44, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1070, 44, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1071, 44, 112, 'Camlin Exam All Clea', '1', 3, 'camlineraser.jpg', 3),
(1072, 45, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(1073, 45, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(1074, 45, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(1075, 45, 110, 'eraser', '1', 5, 'eraser.jpg', 5),
(1076, 45, 110, 'eraser', '3', 5, 'eraser.jpg', 15),
(1077, 45, 113, 'Camlin Exam Sharpene', '4', 3, 'camlinsharpener.jpg', 12),
(1078, 45, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1079, 45, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1080, 45, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1081, 45, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1082, 45, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1083, 45, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1084, 45, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1085, 45, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1086, 45, 111, 'Apsara Non Dust Eras', '5', 3, 'apsaraeraser.jpg', 15),
(1087, 45, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1088, 45, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1089, 45, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1090, 45, 112, 'Camlin Exam All Clea', '1', 3, 'camlineraser.jpg', 3),
(1091, 46, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1092, 46, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1093, 46, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1094, 46, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1095, 46, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1096, 46, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1097, 46, 112, 'Camlin Exam All Clea', '1', 3, 'camlineraser.jpg', 3),
(1098, 47, 113, 'Camlin Exam Sharpene', '1', 3, 'camlinsharpener.jpg', 3),
(1099, 47, 112, 'Camlin Exam All Clea', '1', 3, 'camlineraser.jpg', 3),
(1100, 47, 112, 'Camlin Exam All Clea', '1', 3, 'camlineraser.jpg', 3),
(1101, 48, 112, 'Camlin Exam All Clea', '1', 3, 'camlineraser.jpg', 3),
(1102, 49, 112, 'Camlin Exam All Clea', '1', 3, 'camlineraser.jpg', 3),
(1103, 50, 112, 'Camlin Exam All Clea', '1', 3, 'camlineraser.jpg', 3),
(1104, 50, 113, 'Camlin Exam Sharpene', '1', 3, 'camlinsharpener.jpg', 3),
(1105, 51, 113, 'Camlin Exam Sharpene', '1', 3, 'camlinsharpener.jpg', 3),
(1106, 51, 116, 'Add Gel GR 50 Refill', '1', 45, 'refillblack50.jpg', 45),
(1107, 52, 118, 'Add Gel Pro Tack Bal', '3', 42, 'ballpenblue.jpg', 126),
(1108, 52, 396, 'Apsara Glass Marking', '2', 55, 'apsaraglasspg.jpg', 110),
(1109, 53, 112, 'Camlin Exam All Clea', '1', 3, 'camlineraser.jpg', 3),
(1110, 54, 112, 'Camlin Exam All Clea', '1', 3, 'camlineraser.jpg', 3),
(1111, 54, 194, 'Foot Mate Paper', '1', 2, 'footmatepaper.jpg', 2),
(1112, 55, 111, 'Apsara Non Dust Eras', '1', 3, 'apsaraeraser.jpg', 3),
(1113, 56, 134, 'Binders Clips 25mm', '3', 30, 'bclips25mm.jpg', 90),
(1114, 56, 136, 'Binders Clips 41mm', '3', 67, 'bclips41mm.jpg', 201),
(1115, 57, 114, 'Add Gel GR 20Refill ', '1', 21, 'refillblue.jpg', 21),
(1116, 58, 194, 'Foot Mate Paper', '1', 2, 'footmatepaper.jpg', 2),
(1117, 58, 194, 'Foot Mate Paper', '1', 2, 'footmatepaper.jpg', 2),
(1118, 58, 194, 'Foot Mate Paper', '1', 2, 'footmatepaper.jpg', 2),
(1119, 58, 194, 'Foot Mate Paper', '1', 2, 'footmatepaper.jpg', 2),
(1120, 58, 194, 'Foot Mate Paper', '1', 2, 'footmatepaper.jpg', 2),
(1121, 58, 194, 'Foot Mate Paper', '1', 2, 'footmatepaper.jpg', 2),
(1122, 58, 194, 'Foot Mate Paper', '1', 2, 'footmatepaper.jpg', 2),
(1123, 58, 194, 'Foot Mate Paper', '1', 2, 'footmatepaper.jpg', 2),
(1124, 58, 194, 'Foot Mate Paper', '1', 2, 'footmatepaper.jpg', 2),
(1125, 58, 197, 'Paper Napkin', '1', 55, 'papernapkin.jpg', 55),
(1126, 59, 197, 'Paper Napkin', '1', 55, 'papernapkin.jpg', 55),
(1127, 59, 195, 'Toilet Roll ', '1', 25, 'toiletroll.jpg', 25),
(1128, 60, 194, 'Foot Mate Paper', '1', 2, 'footmatepaper.jpg', 2),
(1129, 60, 194, 'Foot Mate Paper', '1', 2, 'footmatepaper.jpg', 2),
(1130, 60, 194, 'Foot Mate Paper', '1', 2, 'footmatepaper.jpg', 2),
(1131, 60, 194, 'Foot Mate Paper', '1', 2, 'footmatepaper.jpg', 2),
(1132, 60, 208, 'Dettol Cool Soap', '1', 42, 'dettolcoolsoap.jpg', 42),
(1133, 61, 208, 'Dettol Cool Soap', '1', 42, 'dettolcoolsoap.jpg', 42),
(1134, 62, 195, 'Toilet Roll ', '1', 25, 'toiletroll.jpg', 25),
(1135, 62, 194, 'Foot Mate Paper', '1', 2, 'footmatepaper.jpg', 2),
(1136, 62, 195, 'Toilet Roll ', '2', 25, 'toiletroll.jpg', 50);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `oId` int(6) NOT NULL,
  `odate` date NOT NULL,
  `eId` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders1`
--

CREATE TABLE `orders1` (
  `oId` int(6) NOT NULL,
  `odate` date NOT NULL,
  `eId` int(6) DEFAULT NULL,
  `cmpId` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders1`
--

INSERT INTO `orders1` (`oId`, `odate`, `eId`, `cmpId`) VALUES
(17, '2019-02-02', 1, 0),
(18, '2019-02-02', 1, 0),
(19, '2019-02-02', 1, 0),
(20, '2019-02-02', 1, 0),
(21, '2019-02-02', 1, 0),
(22, '2019-02-02', 1, 0),
(23, '2019-02-02', 1, 0),
(24, '2019-02-02', 1, 0),
(25, '2019-02-02', 1, 0),
(26, '2019-02-02', 1, 0),
(27, '2019-02-02', 1, 0),
(28, '2019-02-02', 1, 0),
(29, '2019-02-02', 1, 0),
(30, '2019-02-03', 2, 0),
(31, '2019-02-03', 1, 0),
(32, '2019-02-03', 1, 0),
(33, '2019-02-03', 1, 0),
(34, '2019-02-03', 1, 0),
(35, '2019-02-03', 1, 0),
(36, '2019-02-03', 1, 0),
(37, '2019-02-04', 1, 0),
(38, '2019-02-28', 1, 0),
(39, '2019-02-28', 1, 0),
(40, '2019-02-28', NULL, 0),
(41, '2019-02-28', NULL, 5),
(42, '2019-02-28', NULL, 5),
(43, '2019-02-28', NULL, 5),
(44, '2019-02-28', NULL, 5),
(45, '2019-02-28', NULL, 5),
(46, '2019-03-06', 1, NULL),
(47, '2019-03-06', 5, NULL),
(48, '2019-03-06', 5, NULL),
(49, '2019-03-07', NULL, 5),
(50, '2019-03-07', 5, NULL),
(51, '2019-03-12', NULL, 5),
(52, '2019-03-12', NULL, 5),
(53, '2019-03-13', 5, NULL),
(54, '2019-04-03', NULL, 5),
(55, '2019-04-03', NULL, 5),
(56, '2019-04-03', NULL, 5),
(57, '2019-04-03', 5, NULL),
(58, '2019-11-24', NULL, 5),
(59, '2019-11-24', NULL, 6),
(60, '2019-11-24', 2, NULL),
(61, '2019-11-24', 2, NULL),
(62, '2020-08-31', 8, NULL),
(63, '2020-09-01', NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payid` int(6) NOT NULL,
  `Amt` varchar(10) NOT NULL,
  `Dopay` date NOT NULL,
  `Cardno` varchar(10) NOT NULL,
  `Cardonname` varchar(30) NOT NULL,
  `Accountno` varchar(15) NOT NULL,
  `Nameofaccountholder` varchar(30) NOT NULL,
  `Cmpid` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pId` int(6) NOT NULL,
  `pName` varchar(70) NOT NULL,
  `pPrice` int(5) NOT NULL,
  `pimg` varchar(40) NOT NULL,
  `scatId` int(6) NOT NULL,
  `isDisplay` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pId`, `pName`, `pPrice`, `pimg`, `scatId`, `isDisplay`) VALUES
(111, 'Apsara Non Dust Eraser', 3, 'apsaraeraser.jpg', 1, 'yes'),
(112, 'Camlin Exam All Clear Eraser', 3, 'camlineraser.jpg', 1, 'yes'),
(113, 'Camlin Exam Sharpener', 3, 'camlinsharpener.jpg', 1, 'yes'),
(114, 'Add Gel GR 20Refill Blue ', 21, 'refillblue.jpg', 1, 'yes'),
(115, 'Add Gel GR 20 Refill Black', 21, 'refillblack.jpg', 1, 'yes'),
(116, 'Add Gel GR 50 Refill Black', 45, 'refillblack50.jpg', 1, 'yes'),
(117, 'Add Gel Pro Teck Black', 42, 'addgelproteckblack.jpg', 1, 'yes'),
(118, 'Add Gel Pro Tack Ball Pen Blue', 42, 'ballpenblue.jpg', 1, 'yes'),
(119, 'Add Gel Pro Tack Ball Pen Red', 42, 'ballpenred.jpg', 1, 'yes'),
(120, 'Add Gel Pin Gel Pen Black', 17, 'gelpenblack.jpg', 1, 'yes'),
(121, 'Add Gel Pin Gel Pen Blue', 17, 'gelpenblue.jpg', 1, 'yes'),
(122, 'Add Gel Pin Gel Pen Green', 17, 'gelpengreen.jpg', 1, 'yes'),
(123, 'Add Gel Pin Gel Pen Red', 17, 'gelpenred.jpg', 1, 'yes'),
(124, 'Add Gel Permanent Marker Blue', 15, 'markerblue.jpg', 1, 'yes'),
(125, 'Add Gel Permanent Marker Black', 15, 'markerblack.jpg', 1, 'yes'),
(126, 'Vision Pocket Diary 40 Pages', 10, 'visionpocketdairy.jpg', 2, 'yes'),
(127, 'Vision Writing Pad 40 Pages', 17, 'visionwritingpad.jpg', 2, 'Yes'),
(128, 'Classmate Exercise Book', 20, 'classmateEbook.jpg', 2, 'yes'),
(129, 'Enlivo Drawing Book 40 Pages', 45, 'enlivodrawingbook.jpg', 2, 'yes'),
(130, 'Vision Conference Pad (20 Pages)', 10, 'vconferencepad20p.jpg', 2, 'yes'),
(131, 'Notebook 92 Pages', 20, 'notebook92p.jpg', 2, 'yes'),
(132, 'Luxor Converge Side Spiral Notepad', 35, 'spiralnotepad.jpg', 2, 'yes'),
(133, 'Binders Clips 19mm', 22, 'bclips19mm.jpg', 3, 'yes'),
(134, 'Binders Clips 25mm', 30, 'bclips25mm.jpg', 3, 'yes'),
(135, 'Binders Clips 32mm', 52, 'bclips32mm.jpg', 3, 'yes'),
(136, 'Binders Clips 41mm', 67, 'bclips41mm.jpg', 3, 'yes'),
(137, 'Paper Clips Supreme', 120, 'paperclipssupreme.jpg', 3, 'yes'),
(138, 'Ring Binders File ', 115, 'ringbindersfile.jpg', 4, 'yes'),
(139, 'Ring File with Pocket', 110, 'ringfilewithpocket.jpg', 4, 'yes'),
(140, '4 Flap File', 65, '4flapfile.jpg', 4, 'yes'),
(141, 'Expanding File', 242, 'expandingfile.jpg', 4, 'yes'),
(142, 'Lever Clip File', 76, 'leverclipfile.jpg', 4, 'yes'),
(143, 'Spring Clip File', 76, 'springclipfile.jpg', 4, 'yes'),
(144, 'Box File', 60, 'boxfile.jpg', 4, 'yes'),
(145, 'Lever Arch File', 155, 'leverarchfile.jpg', 4, 'yes'),
(146, 'File Aluminium Clip', 40, 'filealuminiumclip.jpg', 4, 'yes'),
(147, 'Report File ', 21, 'reportfile.jpg', 4, 'yes'),
(148, 'Bank Folder ', 8, 'bankfolder.jpg', 4, 'yes'),
(149, 'Computer File', 41, 'computerfile.jpg', 4, 'yes'),
(150, 'Scotch Glue Stick', 21, 'scotchgluestick.jpg', 5, 'yes'),
(151, 'Scotch Scissors', 30, 'scotchscissors.jpg', 5, 'yes'),
(152, 'Display Board', 400, 'displayboard.jpg', 5, 'yes'),
(153, 'Steel Exam Board', 60, 'steelexamboard.jpg', 5, 'yes'),
(154, 'Tripod Whiteboard Stand', 2150, 'tripodwhiteboardstand.jpg', 5, 'yes'),
(155, 'Push Pin Boox', 25, 'pushpin.jpg', 5, 'yes'),
(156, 'Carbon Papers', 162, 'carbonpaper.jpg', 5, 'yes'),
(157, 'Whiteboard Duster', 35, 'whiteboardduster.jpg', 5, 'yes'),
(158, 'Rubber Band ', 220, 'rubberband.jpg', 5, 'yes'),
(159, 'Fevicol Craft Glue', 10, 'fevicolcraftglue.jpg', 5, 'yes'),
(160, 'Fevikwik Instant Adhesive', 10, 'fevikwikinstantadhesive.jpg', 5, 'yes'),
(161, 'Paper Cutter', 26, 'papercutter.jpg', 5, 'yes'),
(162, 'Heavy Duty Stapler', 200, 'heavydutystapler.jpg', 5, 'yes'),
(163, 'Eyelet Punch', 190, 'eyeletpunch.jpg', 5, 'yes'),
(164, 'Heavy Duty Punching ', 1100, 'heavydutypunching.jpg', 5, 'yes'),
(165, 'Mini Stapler', 20, 'ministapler.jpg', 5, 'yes'),
(166, 'Pin Remover', 35, 'pinremover.jpg', 5, 'yes'),
(167, 'Stamp Pad Medium Black', 34, 'stamppadmediumblack.jpg', 6, 'yes'),
(168, 'Stamp Pad Mediu Red', 34, 'stamppadmediumred.jpg', 6, 'yes'),
(169, 'Stamp Pad Medium Violet', 34, 'stamppadmediumviolet.jpg', 6, 'yes'),
(170, 'Paper Weight', 102, 'paperweight.jpg', 6, 'yes'),
(171, 'Stamp Pad Ink Black', 20, 'stamppadinkblack.jpg', 6, 'yes'),
(172, 'Stamp Pad Ink Red', 0, 'stamppadinkred.jpg', 6, 'yes'),
(173, 'Stamp Pad Ink Violet', 20, 'stamppadinkviolet.jpg', 6, 'yes'),
(174, 'Draft\'sman Clip Plastic ', 17, 'draftsmanclipplastic.jpg', 6, 'yes'),
(175, 'Diamond Book Cover Roll', 50, 'bookcoverroll.jpg', 6, 'yes'),
(176, 'Pencil Cup', 60, 'pencilcup.jpg', 6, 'yes'),
(177, 'Dater Stamp', 68, 'daterstamp.jpg', 6, 'yes'),
(178, 'Plastic Ducument Tray', 50, 'plasticdocumenttray.jpg', 6, 'yes'),
(179, 'Pen stand', 40, 'penstand.jpg', 6, 'yes'),
(180, 'Camlin Exam Scale', 5, 'camlinexamscale.jpg', 7, 'yes'),
(181, 'Protector Semi Circular', 5, 'protectorsemicircular.jpg', 7, 'yes'),
(182, '360 Degree Protector', 10, '360degreeprotector.jpg', 7, 'yes'),
(183, 'Steel Foot Ruler', 12, 'steelfootruler.jpg', 7, 'yes'),
(184, 'Tailor Measure Tape', 15, 'tailormeauretape.jpg', 7, 'yes'),
(185, 'Camlin Exam Compass', 17, 'camlinexamcompass.jpg', 7, 'yes'),
(186, 'Math Instrument Set', 17, 'mathinstrumentset.jpg', 7, 'yes'),
(187, 'Magnifying Lens', 24, 'magnifyinglens.jpg', 7, 'yes'),
(188, 'Fiberglass Measure Tape', 399, 'fiberglassmeasuretape.jpg', 7, 'yes'),
(189, 'Continueus Computer Paper Everyday', 900, 'computerpaper.jpg', 8, 'yes'),
(190, 'Color Printing Paper', 300, 'colorprintingpaper.jpg', 8, 'yes'),
(191, 'Excel Bond Paper', 360, 'excelbondpaper.jpg', 8, 'yes'),
(192, 'Max Copier Paper', 200, 'maxcopierpaper.jpg', 8, 'yes'),
(193, 'Thermal Paper Fax Roll', 47, 'thermalpaperfaxroll.jpg', 8, 'yes'),
(194, 'Foot Mate Paper', 2, 'footmatepaper.jpg', 9, 'yes'),
(195, 'Toilet Roll ', 25, 'toiletroll.jpg', 9, 'yes'),
(196, 'Soft Facial Tissue', 80, 'softfacialtissue.jpg', 9, 'yes'),
(197, 'Paper Napkin', 55, 'papernapkin.jpg', 9, 'yes'),
(198, 'Premier Special Face Tissue', 240, 'premierspecialfacetissue.jpg', 9, 'yes'),
(199, 'All out All Night Mosquito And Fly Protection', 99, 'alloutallnight.jpg', 10, 'yes'),
(200, 'All out Super Liquid Refill ', 89, 'alloutsuperliquidrefill.jpg', 10, 'yes'),
(201, 'Glue Mouse Tape', 100, 'gluemousetape.jpg', 10, 'yes'),
(202, 'Good Knight Active System', 78, 'goodknightactivesystem.jpg', 10, 'yes'),
(203, 'Good Knight Fast Card', 95, 'goodknightfastcard.jpg', 10, 'yes'),
(204, 'Hit Anti Roach Gel', 145, 'hitantiroachgel.jpg', 10, 'yes'),
(205, 'Hit Flying Insect Killer Spray', 91, 'hitflyinginsectkillerspray.jpg', 10, 'yes'),
(206, 'Hit Kills Hidden Cockroaches Spray', 89, 'hitkillshidden.jpg', 10, 'yes'),
(207, 'Hit Kills Rat Cubs', 10, 'hitkillsratcubs.jpg', 10, 'yes'),
(208, 'Dettol Cool Soap', 42, 'dettolcoolsoap.jpg', 11, 'yes'),
(209, 'Dettol Hygiene Liquid ', 150, 'dettolhygieneliquid.jpg', 11, 'yes'),
(210, 'Dettol Original Liquid Handwash', 95, 'dettoloriginalliquidhandwash.jpg', 11, 'yes'),
(211, 'Dettol Original Liquid Handwash Pouch', 122, 'dettoloriginalliquidpouch.jpg', 11, 'yes'),
(212, 'Dettol Sensitive Handwash', 95, 'dettolsensitivehandwash.jpg', 11, 'yes'),
(213, 'Lifebuoy Cool Fresh Handwash', 174, 'lifebuoycoolfreshhandwash.jpg', 11, 'yes'),
(214, 'Air Freshner Tablets', 210, 'airfreshnertablets.jpg', 12, 'yes'),
(215, 'Room Freshner 5 ltr', 950, 'roomfreshner5ltr.jpg', 12, 'yes'),
(216, 'Air Wick Everfresh Gel Citrus Splash ', 63, 'airwickeverfreshgelcitrussplash.jpg', 12, 'yes'),
(217, 'Auto Perfume Dispenser', 1250, 'autoperfumedispenser.jpg', 12, 'yes'),
(218, 'Cycle Agarbatti', 50, 'cycleagarbatti.jpg', 12, 'yes'),
(219, 'Good Home Freshner Green Apple', 49, 'goodhomefreshnergreenapple.jpg', 12, 'yes'),
(220, 'Good Home Freshner Jasmine', 49, 'goodhomefreshnerjasmine.jpg', 12, 'yes'),
(221, 'Good Home Freshner Lavender', 49, 'goodhomefreshnerlavender.jpg', 12, 'yes'),
(222, 'Good Home Freshner Rose', 49, 'goodhomefreshnerrose.jpg', 12, 'yes'),
(223, 'Iris Fragrance Sachet Blueberry', 50, 'irisfragrancesachetblueberry.jpg', 12, 'yes'),
(224, 'Iris Fragrance Sachet Jasmine ', 50, 'irisfragrancesachetjasmine.jpg', 12, 'yes'),
(225, 'Iris Fragrance Sachet Lavender', 50, 'irisfragrancesachetlavender.jpg', 12, 'yes'),
(226, 'Iris Fragrance Sachet Lemon Grass', 50, 'irisfragrancesachetlemongrass.jpg', 12, 'yes'),
(227, 'Iris Fragrance Sachet Rose', 50, 'irisfragrancesachetrose.jpg', 12, 'yes'),
(228, '3M Dishwash Liquid Litre ', 824, '3Mdishwashliquidlitre.jpg', 13, 'yes'),
(229, '3M General Purpose Cleaner 5 Litre', 773, '3Mgeneralpurposecleaner5litre.jpg', 13, 'yes'),
(230, '3M glass Cleaner 5 litre', 953, '3Mglasscleaner5litre.jpg', 13, 'yes'),
(231, '3M Handrub 500ml', 485, '3Mhandrub500ml.jpg', 13, 'yes'),
(232, '3M Toilet Cleaner 5 litre ', 670, '3Mtoiletcleaner5litre.jpg', 13, 'yes'),
(233, 'Bengal Chemical Black Phenyl', 540, 'bengalchemicalblackphenyl.jpg', 13, 'yes'),
(234, 'Carpet Brushq', 82, 'carpetbrush.jpg', 14, 'yes'),
(235, 'Celling Broom', 80, 'cellingbroom.jpg', 14, 'yes'),
(236, 'clip And Fit Floor Mop', 188, 'clipandfitfloormop.jpg', 14, 'yes'),
(237, 'Cotton Cleaning Mop With Plasitc cup', 104, 'cottoncleaningmopwithplasticcup.jpg', 14, 'yes'),
(238, 'Double Hockey Toilet Brush', 55, 'doublehockeytoiletbrush.jpg', 14, 'yes'),
(239, 'Dry Dust Acrylic Mop', 425, 'drydustacrylicmop.jpg', 14, 'yes'),
(240, 'Easy Clean Dust Pan', 30, 'easycleandustpan.jpg', 14, 'yes'),
(241, 'Feather Brush', 50, 'featherbrush.jpg', 14, 'yes'),
(242, 'Floor Wiper', 125, 'floorwiper.jpg', 14, 'yes'),
(243, 'Gala Angle Wiper', 80, 'galaanglewiper.jpg', 14, 'yes'),
(244, 'Gala Bathroom Wiper', 179, 'galabathroomwiper.jpg', 14, 'yes'),
(245, 'Gala Chandra Kharata Plastic Broom', 76, 'galachandrakharataplasticbroom.jpg', 14, 'yes'),
(246, 'Gala Deck Mop', 242, 'galadeckmop.jpg', 14, 'yes'),
(247, 'Gala Hockey Bathroom Cleaning Brush', 99, 'galahockeybathroomcleningbrush.jpg', 14, 'yes'),
(248, 'Gala Dust Pan', 54, 'galadustpan.jpg', 14, 'yes'),
(249, 'Gala Mark Small Cloth Brush', 49, 'galamarksmallclothbrush.jpg', 14, 'yes'),
(250, 'Gala Window Washer', 100, 'galawindowwasher.jpg', 14, 'yes'),
(251, 'Hard Broom', 30, 'hardbroom.jpg', 14, 'yes'),
(252, 'Khajuri Broom', 25, 'khajuribroom.jpg', 14, 'yes'),
(253, 'Dustbin Stainless Steel', 350, 'dustbinstainlesssteel.jpg', 15, 'yes'),
(254, 'Kaptan Dustbin 60 Liter', 500, 'kaptandustbin60liter.jpg', 15, 'yes'),
(255, 'Kaptan Swing Dustbin ', 450, 'kaptanswingdustbin.jpg', 15, 'yes'),
(256, 'Mark Bathroom Dustbin', 100, 'markbathroomdustbin.jpg', 15, 'yes'),
(257, 'Mesh Wire Dustbin Big ', 250, 'meshwiredustbinbig.jpg', 15, 'yes'),
(258, 'Mesh Wire Dustbin Medium', 200, 'meshwiredustbinmedium.jpg', 15, 'yes'),
(259, 'Mesh Wire Dustbin Small', 150, 'meshwiredustbinsmall.jpg', 15, 'yes'),
(260, 'Pedal Dustbin', 150, 'pedaldusbin.jpg', 15, 'yes'),
(261, 'Bru Gold Instant Coffee 50g', 120, 'brugoldinstantcoffee50g.jpg', 16, 'yes'),
(262, 'Bru Instant Coffee 200g', 315, 'bruinstantcoffee200g.jpg', 16, 'yes'),
(263, 'Nescafe Classic Coffee 200g', 440, 'nescafeclassiccoffee200g.jpg', 16, 'yes'),
(264, 'Nescafe Classic Coffee 500g', 950, 'nescafeclassiccoffee500g.jpg', 16, 'yes'),
(265, 'Nescafe Classic Coffee 50g', 130, 'nescafeclassiccoffee50g.jpg', 16, 'yes'),
(266, 'Nescafe Sunrise Premium Coffee Sachet 50g', 50, 'sunrisepremiumcoffesachet50g.jpg', 16, 'yes'),
(267, 'Nescafe Sunrise Premium Coffee Sachet 9g', 10, 'nescafesunrise9g.jpg', 16, 'yes'),
(268, 'Hershey\'s Chocolate syrup ', 180, 'harsheyschocolatesyrup.jpg', 17, 'yes'),
(269, 'Madhur Pure And hygienic Sugar 1kg', 65, 'madhurpureandhygienicsugar1kg.jpg', 17, 'yes'),
(270, 'Madhur Pure And hygienic Sugar 5kg', 245, 'madhurpureandhygienicsugar5kg.jpg', 17, 'yes'),
(271, 'MB Sugar Sachets', 198, 'MBsugarsachets.jpg', 17, 'yes'),
(272, 'Sugar Free Gold', 240, 'sugarfreegold.jpg', 17, 'yes'),
(273, 'Sugar Free Natura', 155, 'sugarfreenatura.jpg', 17, 'yes'),
(274, 'Badshah Kamal Tea Masala 100g', 80, 'badshahkamalteamasala100g.jpg', 18, 'yes'),
(275, 'Brooke Bond Red Label Tea Loaf 500g', 180, 'brookebondredlabeltealoaf500g.jpg', 18, 'yes'),
(276, 'Brooke Bond Taj Mahal Leaf 100 Tea Bags', 136, 'brookebondtajmahalleaf100teabags.jpg', 18, 'yes'),
(277, 'Girnar Detox Green Tea Desi Kahwa ', 100, 'Girnardetoxgreenteadesikahwa.jpg', 18, 'yes'),
(278, 'Girnar Green Tea ', 120, 'girnargreentea.jpg', 18, 'yes'),
(279, 'Girnar Green Tea - Cardamom', 100, 'girnargreentea-cardamom.jpg', 18, 'yes'),
(280, 'Girnar Green Tea Gourmet Collection', 285, 'girnargreenteagourmetcollection.jpg', 18, 'yes'),
(281, 'Girnar Green Tea - Lemon', 100, 'girnargreentealemon.jpg', 18, 'yes'),
(282, 'Wagh Bakri Premium Leaf Tea 500g', 185, 'waghbakripremiumleaftea500g.jpg', 18, 'yes'),
(283, 'Wagh Bakri Dust Tea 1kg', 355, 'waghbakridusttea1kg.jpg', 18, 'yes'),
(284, 'Disposable Bowl Big', 90, 'disposablebowlbig.jpg', 20, 'yes'),
(285, 'Disposable Bowl Medium', 70, 'disposablebowlmedium.jpg', 20, 'yes'),
(286, 'Disposable Dishes 12\"', 80, 'disposabledishes12.jpg', 20, 'yes'),
(287, 'Disposable Dishes 9\"', 50, 'disposabledishes9.jpg', 20, 'yes'),
(288, 'Disposable Fork ', 50, 'disposablefork.jpg', 20, 'yes'),
(289, 'Disposable Glasses Clear 200ml', 90, 'disposableglassesclear200ml.jpg', 20, 'yes'),
(290, 'Disposable Paper Cup 100ml', 70, 'disposablepapercup100ml.jpg', 20, 'yes'),
(291, 'Disposable Paper Cup 150ml', 90, 'disposablepapercup150ml.jpg', 20, 'yes'),
(292, 'Disposable Spoon', 70, 'disposablespoon.jpg', 20, 'yes'),
(293, 'Food Grade Glasses', 180, 'foodgradeglasses.jpg', 20, 'yes'),
(294, 'Paper Plates Big (pack of 40)', 70, 'paperplatesbig.jpg', 20, 'yes'),
(295, 'Paper Plates Small (pack of 40)', 50, 'paperplatessmall.jpg', 20, 'yes'),
(296, 'Plastic Fork Jumbo (pack of 50)', 120, 'plasticforkjumbo.jpg', 20, 'yes'),
(297, 'Plastic Spoon Jumbo (pack of 50)', 150, 'plasticspoonjumbo.jpg', 20, 'yes'),
(298, 'Plastic Stirrer Stick', 150, 'plasticstirrerstick.jpg', 20, 'yes'),
(299, 'Velox Aluminium Foil (72 mtr)', 250, 'veloxaluminiumfoil.jpg', 20, 'yes'),
(300, 'Bisleri Mineral Water 1 Liter (Pack of 12)', 180, 'bislerimineralwater.jpg', 21, 'yes'),
(301, 'Bisleri Mineral Water 250 ml (Pack of 24)', 144, 'bislerimineralwater.jpg', 21, 'yes'),
(302, 'Bisleri Mineral Water 500ml (Pack of 24)', 240, 'bislerimineralwater500ml.jpg', 21, 'yes'),
(303, 'Clear Mineral Water Bottle 200 ml (Pack of 48)', 220, 'clearmineralwaterbottle500ml.jpg', 21, 'yes'),
(304, 'Clear Mineral Water Bottle 500 ml (Pack of 24)', 240, 'clearmineralwaterbottle200ml.jpg', 21, 'yes'),
(305, 'Himalayan Natural Mineral Bottle1 Liter (Pack of 1', 720, 'himalayannaturalmineralbottle1liter.jpg', 21, 'yes'),
(306, 'Himalayan Natural Mineral Bottle 200 ml (Pack of 48)', 864, 'himalayannaturalmineralbottle200ml.jpg', 21, 'yes'),
(307, 'Himalayan Natural Mineral Bottle 750 ml (Pack of 12)', 540, 'himalayannaturalmineralbottle750ml.jpg', 21, 'yes'),
(308, 'Coca Cola Can 300 ml (Pack of 24)', 840, 'cocacolacan300ml.jpg', 23, 'yes'),
(309, 'Diet Coke Can 300 ml (Pack of 24)', 840, 'dietcokecan300ml.jpg', 23, 'yes'),
(310, 'Kinley Club Soda 750ml (Pack of 24)', 384, 'kinleyclubsoda.jpg', 23, 'yes'),
(311, 'Sprite Bottle 2.25 litre (Pack of 9)', 810, 'spritebottle2.25ltr.jpg', 23, 'yes'),
(312, 'Sprite Can 300 ml (Pack of 24)', 840, 'spritecan300ml.jpg', 23, 'yes'),
(313, 'Logitech Media Wired Keyboard and Mouse Combo MK20', 895, 'keyboard01.jpg', 24, 'yes'),
(314, 'Logitech Optical USB Mouse M100', 446, 'logitechmouse.jpg', 25, 'yes'),
(315, 'Logitech Wireless Mini Mouse M187', 800, 'wirelessmouse.jpg', 25, 'yes'),
(316, 'Mouse Pad Comfort', 25, 'mousepad.jpg', 25, 'yes'),
(317, 'Mouse Pad Surface', 22, 'mousepadsurface.jpg', 25, 'yes'),
(318, 'Bambalio Calculator BL-555M', 320, 'bambaliocalci.jpg', 26, 'yes'),
(319, 'Bambalio Scientific Calculator BL-82Ms', 336, 'bambscientificcalci.jpg', 26, 'yes'),
(320, 'Casio Calculator DJ-120D', 554, 'casiocalci.jpg', 26, 'yes'),
(321, 'Casio Calculator DJ-120D Plus', 587, 'casiocalciplus.jpg', 26, 'yes'),
(322, 'Casio Calculator HL-122TV', 371, 'casiocalcihl.jpg', 26, 'yes'),
(323, 'Casio Calculator HL-4A', 89, 'casiocalcihl4a.jpg', 26, 'yes'),
(324, 'Casio Calculator MJ-100Da', 344, 'casiocalsiml.jpg', 26, 'yes'),
(325, 'Casio Calculator MJ-120Da', 399, 'casiocalcimj120d.jpg', 26, 'yes'),
(326, 'Casio Calculator MJ-12D', 319, 'casiocalciml12d.jpg', 26, 'yes'),
(327, 'Chrome Calculator 9230', 190, 'chromecalci.jpg', 26, 'yes'),
(328, 'Chrome Calculator 9231', 250, 'chromecalculator9231.jpg', 26, 'yes'),
(329, 'Chrome Calculator 9231W', 263, 'chromecalci9231W.jpg', 26, 'yes'),
(330, 'Citizen Calculator CT-500Js', 573, 'citizencalcict500js.jpg', 26, 'yes'),
(331, 'Citizen Calculator CT-555N', 441, 'citizencalcict555n.jpg', 26, 'yes'),
(332, 'Citizen Calculator CT-555W', 441, 'citizencalcict555w.jpg', 26, 'yes'),
(333, 'Citizen Calculator CT-600J', 714, 'citizencalcict600j.jpg', 26, 'yes'),
(334, 'Citizen Calculator CT-666N', 658, 'citizencalcict666w.jpg', 26, 'yes'),
(335, 'Claro Calculator CL-512C', 300, 'clarocalculatorcl512c.jpg', 26, 'yes'),
(336, 'Claro Calculator CL-837C', 309, 'clarocalculatorcl837c.jpg', 26, 'yes'),
(337, 'Claro Calculator CL-82MS', 420, 'clarocalculatorcl82ms.jpg', 26, 'yes'),
(338, 'Claro Calculator CL-991MS', 420, 'clarocalculatorcl991ms.jpg', 26, 'yes'),
(339, 'Duracell AA Battery', 36, 'duracellaa.jpg', 27, 'yes'),
(340, 'Duracell AAA Battery ', 36, 'duracellaaa.jpg', 27, 'yes'),
(341, 'Duracell C2 Battery ', 250, 'duracellc2.jpg', 27, 'yes'),
(342, 'Duracell D2 Battery (Pack of 2) ', 270, 'duracelld2.jpg', 27, 'yes'),
(343, 'Eveready 9V Battery 1216', 22, 'eveready9V.jpg', 27, 'yes'),
(344, 'Eveready AA Battery ', 13, 'evereadyaa.jpg', 27, 'yes'),
(345, 'Eveready AAA Battery', 12, 'evereadyaaa.jpg', 27, 'yes'),
(346, 'Eveready Blue AA Battery ', 10, 'evereadyblueaa.jpg', 27, 'yes'),
(347, 'Eveready Blue AAA Battery ', 6, 'evereadyblueaaa.jpg', 27, 'yes'),
(348, 'Beetel Basic Corded Phones C11', 430, 'beetelbasiccordedpc11.jpg', 28, 'yes'),
(349, 'Beetel Basic Corded Phones B11', 500, 'beetelbasiccordedpb11.jpg', 28, 'yes'),
(350, 'Beetel Basic Corded Phones B15', 520, 'beetelbasiccordedpb25.jpg', 28, 'yes'),
(351, 'Beetel Basic Corded Phones B25', 520, 'beetelbasiccordedpb15.jpg', 28, 'yes'),
(352, 'Beetel Corded Landline Phone M17', 700, 'beetellandlinepm17.jpg', 28, 'yes'),
(353, 'Orpat Corded Landline Phone 1600-LR', 469, 'orpatlandlinep1600lr.jpg', 28, 'yes'),
(354, 'Oreva OR-1187 Caller Id Telephone', 925, 'orevacalleridp.jpg', 28, 'yes'),
(355, '3M Scotch Brown Tape', 80, '3mscotchbrowntape.jpg', 29, 'yes'),
(356, '3M Scotch Double Sided Foam Tape', 102, '3mdoublesidedfoamtape.jpg', 29, 'yes'),
(357, '3M Scotch Magic Tape 810 series ', 76, '3mmagictape.jpg', 29, 'yes'),
(358, '3M Scotch Magic Tape Dispenser', 119, '3mmagictapedispenser.jpg', 29, 'yes'),
(359, '3M Scotch Transparent Tape', 20, '3mscotchtransparent.jpg', 29, 'yes'),
(360, '3M Scotch Wall Safe Tape', 170, '3mscotchwallsafetape.jpg', 29, 'yes'),
(361, 'Ajanta Tape Dispenser Handy', 89, 'ajantatapedispenserhandy.jpg', 29, 'yes'),
(362, 'Ajanta Tape Dispenser', 99, 'ajantatapedispenser.jpg', 29, 'yes'),
(363, 'Ajanta Tape Dispenser small', 35, 'ajantatapedispensersmall.jpg', 29, 'yes'),
(364, 'BOPP Brown Cello Tape', 10, 'boppbrowncellotape.jpg', 29, 'yes'),
(365, 'BOPP Cello Tape Blue ', 30, 'boppbluetape.jpg', 29, 'yes'),
(366, 'BOPP Transparent Cello Tape', 7, 'bopptransparenttape.jpg', 29, 'yes'),
(367, 'Kangaro Heavy Duty Stapler', 700, 'kangaroheavudutystapler.jpg', 30, 'yes'),
(368, 'Kangaro Heavy Duty Stapler HD', 1065, 'kangaroheavudutystaplerhd.jpg', 30, 'yes'),
(369, 'Kangaro Gun Tacker ', 364, 'kangaroguntacker.jpg', 30, 'yes'),
(370, 'Kangaro Mini 10', 30, 'kangaromini10.jpg', 30, 'yes'),
(371, 'Kangaro Pin Remover ', 34, 'kangaropinremover.jpg', 30, 'yes'),
(372, 'Kangaro Pin Remover SR-300', 105, 'kangaropinremoversr300.jpg', 30, 'yes'),
(373, 'Kangaro Pin Remover SR-45', 34, 'kangaropinremoversr45.jpg', 30, 'yes'),
(374, 'Kangaro Pin Remover SR-500', 139, 'kangaropinremoversr500.jpg', 30, 'yes'),
(375, 'Kangaro Stapler Gold ', 44, 'kangarostaplergold.jpg', 30, 'yes'),
(376, 'Kangaro Stapler Icon', 49, 'kangarostaplericon.jpg', 30, 'yes'),
(377, 'Kangaro Stapler Pin', 31, 'kgstaplerpin.jpg', 30, 'yes'),
(378, 'Calmin Glue 700ml', 55, 'calminglue700ml.jpg', 31, 'yes'),
(379, 'Faber Castle White Glue - 250ml', 100, 'fbrwhitwglue250ml.jpg', 31, 'yes'),
(380, 'Fevicol A+ Craft Glue 85g', 50, 'fevicol.jpg', 31, 'yes'),
(381, 'Fevicol Glue Drop', 9, 'fevicolgluedrop.jpg', 31, 'yes'),
(382, 'Fevicol MR Bottle 22g', 9, 'fevicolbottle.jpg', 31, 'yes'),
(383, 'Fevicol White Adhesive ', 200, 'fevicolwhiteadhesive.jpg', 31, 'yes'),
(384, 'Fevicryl Fabric Glue ', 13, 'fevicolfabricglue.jpg', 31, 'yes'),
(385, 'Fevi Gum Lime ', 30, 'fevigumlime.jpg', 31, 'yes'),
(386, 'Fevikwik Instant Adhesive ', 9, 'fevikwikinstantadhesive.jpg', 31, 'yes'),
(387, 'Pidilite Fevibond Tube ', 10, 'padilitefevibondtube.jpg', 31, 'yes'),
(388, 'Air Bubble Roll 180 Gauge', 1300, 'airbubbleroll.jpg', 32, 'yes'),
(389, 'KSS Nylon Cable Tie CV 250', 205, 'nyloncabletie.jpg', 33, 'yes'),
(390, 'Scotch Brite Lint Roller', 450, 'scotchbritelintroller.jpg', 33, 'yes'),
(391, 'Plastic Bag Self Adhesive 5kg', 950, 'plasticbagself.jpg', 34, 'yes'),
(392, 'Plastic Carry Bag 1kg', 240, 'plasticcarrybag.jpg', 34, 'yes'),
(393, 'Zip Lock Bag', 150, 'ziplockbag.jpg', 34, 'yes'),
(394, 'Apsara Drawing Pencil 2H (Pack of 10)', 54, 'apsara2h.jpg', 1, 'yes'),
(395, 'Apsara Drawing Pencil 2H (Pack of 10)', 60, 'apsara3h.jpg', 1, 'yes'),
(396, 'Apsara Glass Marking Pencil Green ', 55, 'apsaraglasspg.jpg', 1, 'yes'),
(397, 'Apsara Glass Marking Pencil White', 55, 'apsaraglasspw.jpg', 1, 'yes'),
(398, 'Apsara Glass Marking Pencil Yellow', 55, 'apsaraglasspy.jpg', 1, 'yes'),
(399, 'Apsara Gold Pencil Box', 38, 'apsaragoldpencil.jpg', 1, 'yes'),
(400, 'Apsara Non Dust Jumbo Eraser', 5, 'apsarajumboera.jpg', 1, 'yes'),
(401, 'Apsara Platinum Extra Dark Pencil', 45, 'apsaradarkpencil.jpg', 1, 'yes'),
(402, 'Camlin BLAK Pencil', 26, 'camlinblakpencil.jpg', 1, 'yes'),
(403, 'Camlin Colour Pencil 12 Shades', 43, 'camlincolourpencil.jpg', 1, 'yes'),
(404, 'Camlin Exam Pencil 2.0mm', 26, 'camlinexampencil.jpg', 1, 'yes'),
(405, 'Camlin Flora Pencil', 34, 'camlinflorapencil.jpg', 1, 'yes'),
(406, 'Add Gel 2k Ball Pen Blue', 25, 'addgelballpenblue.jpg', 1, 'yes'),
(407, 'Add Gel Ace Mechanical Pencil', 42, 'addgelacemechanicalpencil.jpg', 1, 'yes'),
(408, 'Add Gel Achiever Gel Pen Black', 42, 'addgelpenblack.jpg', 1, 'yes'),
(409, 'Add Gel Achiever Gel Pen Blue', 42, 'addgelpenblue.jpg', 1, 'yes'),
(410, 'Add Gel Achiever Gel Pen Red', 42, 'addgelpenred.jpg', 1, 'yes'),
(411, 'Add Gel Classic Roller Ball Pen Blue', 100, 'addgelclassicrollerballpenblue.jpg', 1, 'yes'),
(412, 'Add Gel GR 50 Refill Blue', 3, 'refillblue50.jpg', 1, 'yes'),
(413, 'Add Gel Permanent Marker Red', 15, 'markerred.jpg', 1, 'yes'),
(415, 'Camlin BOLD-E Paint Marker Blue', 43, 'camlinmarkerblue.jpg', 1, 'yes'),
(416, 'Camlin BOLD-E Paint Marker Green', 43, 'camlinmarkergreen.jpg', 1, 'yes'),
(417, 'Camlin BOLD-E Paint Marker White', 43, 'camlinmarkerwhite.jpg', 1, 'yes'),
(418, 'Camlin BOLD-E Paint Marker Yellow', 43, 'camlinmarkeryellow.jpg', 1, 'yes'),
(419, 'Vision Pocket Diary 80 Pages', 14, 'visionpocketdairy80.jpg', 2, 'yes'),
(420, 'Signture Writing Pad 40 Pages', 17, 'signaturewritingpad.jpg', 2, 'Yes'),
(421, 'Vision Full Scape Register 1 QR', 30, 'visionfullscaperegister.jpg', 2, 'yes'),
(422, 'Luxor Converge Top Spiral Notepad', 35, 'topspiralnotepad.jpg', 2, 'yes'),
(423, 'KSS Nylon Cable Tie CV 200', 205, 'nyloncabletie200.jpg', 33, 'yes'),
(424, 'KSS Nylon Cable Tie CV 150', 205, 'nyloncabletie150.jpg', 33, 'yes'),
(425, 'KSS Nylon Cable Tie CV 300', 225, 'nyloncabletie300.jpg', 33, 'yes'),
(426, 'Banana Chips (Pack of 10)', 200, 'bananachips.jpg', 22, 'yes'),
(428, 'Wholemeal Bread', 40, 'bread.jpg', 22, 'yes'),
(429, 'Fruit Jam & Sauce', 70, 'fruitjam.jpg', 22, 'yes'),
(430, 'Fresh Fruits', 100, 'freshfruits.jpg', 22, 'yes'),
(431, 'Dried Fruits (1kg)', 600, 'driedfruits.jpg', 22, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `RoleId` int(6) NOT NULL,
  `RoleName` varchar(40) NOT NULL,
  `cmpId` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`RoleId`, `RoleName`, `cmpId`) VALUES
(1, 'Accounts manager', 5),
(2, 'Recruitment manager', 0),
(3, 'Technology Manager', 0),
(4, 'Store Manager', 0),
(5, 'Regional Manager', 0),
(6, 'Functional Manager', 0),
(7, 'Departmental Manager', 0),
(8, 'General Manager', 0),
(9, 'Chief Executive Officer', 0),
(10, 'Chief Operating Officer', 0),
(11, 'Chief Financial Officer', 0),
(12, 'Chief Technology Officer', 0),
(13, 'Chief Marketing Officer', 0),
(14, 'Chief Legal Officer', 0),
(15, 'Employees', 0),
(16, 'peons', 0),
(17, 'coder', 0),
(18, 'tester', 0),
(19, 'developer', 0),
(21, 'worker', 0),
(22, 'ssssss', 0),
(23, 'Web Developer', 5);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `scatId` int(6) NOT NULL,
  `scName` varchar(30) NOT NULL,
  `scatImg` varchar(30) NOT NULL,
  `scatIsDisp` varchar(3) NOT NULL,
  `catId` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`scatId`, `scName`, `scatImg`, `scatIsDisp`, `catId`) VALUES
(1, 'Writing Supplies', 'writtingsuppliess.jpg', 'yes', 1001),
(2, 'Note-Book & Pads', 'notebook&pads.jpg', 'yes', 1001),
(3, 'Binders', 'binders.jpg', 'yes', 1001),
(4, 'Files & Folders', 'files&folders.jpg', 'yes', 1001),
(5, 'Office Basics', 'officebasic.jpg', 'yes', 1001),
(6, 'Desk Organizers & Accessories', 'deskorganizers.jpg', 'yes', 1001),
(7, 'Scale-Measuring Instruments', 'scalemeasuring.jpg', 'yes', 1001),
(8, 'Printer Paper', 'printerpaper.jpg', 'yes', 1001),
(9, 'Paper Product ', 'paperproducts.jpg', 'yes', 1002),
(10, 'Pest Control', 'pestcontrol.jpg', 'yes', 1002),
(11, 'Hand Wash', 'handwash.jpg', 'yes', 1002),
(12, 'Air Freshener ', 'airfreshner.jpg', 'yes', 1002),
(13, 'Cleaning Chemicals', 'cleaningchemicals.jpg', 'yes', 1002),
(14, 'Cleaning Tools', 'cleaningtools.jpg', 'yes', 1002),
(15, 'Dustbins', 'dustbins.jpg', 'yes', 1002),
(16, 'Coffee Powder', 'coffeepowder.jpg', 'yes', 1003),
(17, 'Sugar Sachet', 'sugarsachet.jpg', 'yes', 1003),
(18, 'Tea Bags', 'teabags.jpg', 'yes', 1003),
(19, 'Cookies', 'cookies.jpg', 'yes', 1003),
(20, 'Disposable Cups & Plats', 'disposablecups&plats.jpg', 'yes', 1003),
(21, 'Mineral Water', 'mineralwater.jpg', 'yes', 1003),
(22, 'Snack Food', 'snackfood.jpg', 'yes', 1003),
(23, 'Energy Drinks', 'energydrinks.jpg', 'yes', 1003),
(24, 'Keyboard', 'keyboard.jpg', 'yes', 1004),
(25, 'Mouse', 'mouse.jpg', 'yes', 1004),
(26, 'Calculator', 'calculator.jpg', 'yes', 1004),
(27, 'Battery Cell', 'batterycell.jpg', 'yes', 1004),
(28, 'Phones ', 'phones.jpg', 'yes', 1004),
(29, 'Cellotape', 'cellotape.jpg', 'yes', 1005),
(30, 'Stapler', 'stapler.jpg', 'yes', 1005),
(31, 'Adhesive', 'adhesive.jpg', 'yes', 1005),
(32, 'Bubble Wrap', 'bubblewrap.jpg', 'yes', 1005),
(33, 'Cable Tie', 'cabletie.jpg', 'yes', 1005),
(34, 'Plastic Bags', 'plasticbags.jpg', 'yes', 1005);

-- --------------------------------------------------------

--
-- Table structure for table `tempcart`
--

CREATE TABLE `tempcart` (
  `tid` int(6) NOT NULL,
  `pId` int(6) NOT NULL,
  `pName` varchar(30) NOT NULL,
  `pPrice` varchar(6) NOT NULL,
  `qty` varchar(6) NOT NULL,
  `pq` varchar(10) NOT NULL,
  `pimg` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `cmproleamount`
--
ALTER TABLE `cmproleamount`
  ADD PRIMARY KEY (`crId`),
  ADD KEY `cmpId` (`cmpId`),
  ADD KEY `RoleId` (`RoleId`);

--
-- Indexes for table `cmproleamount1`
--
ALTER TABLE `cmproleamount1`
  ADD PRIMARY KEY (`crId`);

--
-- Indexes for table `cmproleamount2`
--
ALTER TABLE `cmproleamount2`
  ADD PRIMARY KEY (`crId`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`cmpId`),
  ADD KEY `sId` (`sId`);

--
-- Indexes for table `company1`
--
ALTER TABLE `company1`
  ADD PRIMARY KEY (`cmpId`);

--
-- Indexes for table `deliveryboy`
--
ALTER TABLE `deliveryboy`
  ADD PRIMARY KEY (`Did`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eId`),
  ADD KEY `cmpId` (`cmpId`),
  ADD KEY `crId` (`crId`);

--
-- Indexes for table `employee1`
--
ALTER TABLE `employee1`
  ADD PRIMARY KEY (`eId`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`Fid`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`odId`),
  ADD KEY `oId` (`oId`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `orderdetailss`
--
ALTER TABLE `orderdetailss`
  ADD PRIMARY KEY (`odId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oId`),
  ADD KEY `eId` (`eId`);

--
-- Indexes for table `orders1`
--
ALTER TABLE `orders1`
  ADD PRIMARY KEY (`oId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pId`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`RoleId`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`scatId`);

--
-- Indexes for table `tempcart`
--
ALTER TABLE `tempcart`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;

--
-- AUTO_INCREMENT for table `cmproleamount`
--
ALTER TABLE `cmproleamount`
  MODIFY `crId` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cmproleamount1`
--
ALTER TABLE `cmproleamount1`
  MODIFY `crId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `cmproleamount2`
--
ALTER TABLE `cmproleamount2`
  MODIFY `crId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `cmpId` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company1`
--
ALTER TABLE `company1`
  MODIFY `cmpId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `deliveryboy`
--
ALTER TABLE `deliveryboy`
  MODIFY `Did` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `eId` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee1`
--
ALTER TABLE `employee1`
  MODIFY `eId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `Fid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `odId` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderdetailss`
--
ALTER TABLE `orderdetailss`
  MODIFY `odId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1137;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `oId` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders1`
--
ALTER TABLE `orders1`
  MODIFY `oId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Payid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=432;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `RoleId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `scatId` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tempcart`
--
ALTER TABLE `tempcart`
  MODIFY `tid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cmproleamount`
--
ALTER TABLE `cmproleamount`
  ADD CONSTRAINT `cmproleamount_ibfk_1` FOREIGN KEY (`cmpId`) REFERENCES `company` (`cmpId`) ON DELETE CASCADE,
  ADD CONSTRAINT `cmproleamount_ibfk_2` FOREIGN KEY (`RoleId`) REFERENCES `role` (`RoleId`) ON DELETE CASCADE;

--
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_ibfk_1` FOREIGN KEY (`sId`) REFERENCES `deliveryboy` (`Did`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`cmpId`) REFERENCES `company` (`cmpId`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`crId`) REFERENCES `cmproleamount` (`crId`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`oId`) REFERENCES `orders` (`oId`),
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`pId`) REFERENCES `product` (`pId`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`eId`) REFERENCES `employee` (`eId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
