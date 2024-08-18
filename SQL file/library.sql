--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Ayyaz khan', 'admin@gmail.com', 'admin', 'f925916e2754e5e03f75dd58a5733251', '2024-01-20 06:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Ayyaz khan', '2024-01-25 07:23:03', '2024-02-04 06:34:19'),
(2, 'Nabeel khan', '2024-01-25 07:23:03', '2024-02-04 06:34:26'),
(3, 'Noor', '2024-01-25 07:23:03', '2024-02-04 06:34:26'),
(4, 'Kamran', '2024-01-25 07:23:03', '2024-02-04 06:34:26'),
(5, 'Dr. Riaz ', '2024-01-25 07:23:03', '2024-02-04 06:34:26'),
(9, 'Asad khan', '2024-01-25 07:23:03', '2024-02-04 06:34:26'),
(10, 'muhammad Raza', '2024-01-25 07:23:03', '2024-02-04 06:34:26'),
(11, 'Dr. Waqas', '2024-01-25 07:23:03', '2024-02-04 06:34:26'),
(12, 'Waseem khan', '2024-01-25 07:23:03', '2024-02-04 06:34:26'),
(13, 'Dr. Faheem', '2024-01-25 07:23:03', '2024-02-04 06:34:26'),
(14, 'Dr. M hadi', '2024-01-25 07:23:03', '2024-02-04 06:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` varchar(25) DEFAULT NULL,
  `BookPrice` decimal(10,2) DEFAULT NULL,
  `bookImage` varchar(250) NOT NULL,
  `isIssued` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `bookImage`, `isIssued`, `RegDate`, `UpdationDate`) VALUES
(1, 'PHP And MySql programming', 5, 1, '222333', 20.00, '1efecc0ca822e40b7b673c0d79ae943f.jpg', 1, '2024-01-30 07:23:03', '2024-02-04 06:34:02'),
(3, 'physics', 6, 4, '1111', 15.00, 'dd8267b57e0e4feee5911cb1e1a03a79.jpg', 0, '2024-01-30 07:23:03', '2024-02-04 06:34:11'),
(5, 'Murach\'s MySQL', 5, 1, '9350237695', 455.00, '5939d64655b4d2ae443830d73abc35b6.jpg', 1, '2024-01-30 07:23:03', '2024-02-04 06:34:11'),
(6, 'WordPress for Beginners 2022: A Visual Step-by-Step Guide to Mastering WordPress', 5, 10, 'B019MO3WCM', 100.00, '144ab706ba1cb9f6c23fd6ae9c0502b3.jpg', NULL, '2024-01-30 07:23:03', '2024-02-04 06:34:11'),
(7, 'WordPress Mastery Guide:', 5, 11, 'B09NKWH7NP', 53.00, '90083a56014186e88ffca10286172e64.jpg', NULL, '2024-01-30 07:23:03', '2024-02-04 06:34:11'),
(8, 'Rich Dad Poor Dad: What the Rich Teach Their Kids About Money That the Poor and Middle Class Do Not', 8, 12, 'B07C7M8SX9', 120.00, '52411b2bd2a6b2e0df3eb10943a5b640.jpg', NULL, '2024-01-30 07:23:03', '2024-02-04 06:34:11'),
(9, 'The Girl Who Drank the Moon', 8, 13, '1848126476', 200.00, 'f05cd198ac9335245e1fdffa793207a7.jpg', NULL, '2024-01-30 07:23:03', '2024-02-04 06:34:11'),
(10, 'C++: The Complete Reference, 4th Edition', 5, 14, '007053246X', 142.00, '36af5de9012bf8c804e499dc3c3b33a5.jpg', 0, '2024-01-30 07:23:03', '2024-02-04 06:34:11'),
(11, 'ASP.NET Core 5 for Beginners', 9, 11, 'GBSJ36344563', 422.00, 'b1b6788016bbfab12cfd2722604badc9.jpg', 0, '2024-01-30 07:23:03', '2024-02-04 06:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Science', 1, '2024-01-20 08:01:12', '2024-01-20 08:01:12'),
(2, 'Computer', 1, '2024-01-20 08:01:22', '2024-01-20 08:01:22'),
(5, 'Software Engineering', 1, '2024-01-20 08:01:44', '2024-01-20 08:01:44'),
(6, 'Science', 1, '2024-01-20 08:02:20', '2024-01-20 08:02:20'),
(7, 'Math', 1, '2024-01-20 08:02:29', '2024-01-20 08:02:29'),
(8, 'Math', 1, '2024-01-20 08:02:41', '2024-01-20 08:02:41'),
(9, 'Programming Language', 1, '2024-01-20 08:03:00', '2024-01-20 08:03:00'),
(10, 'History', 1, '2024-01-20 08:03:00', '2024-01-20 08:03:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` int(11) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL,
  `RetrunStatus` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;



-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `StudentId` varchar(20) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` varchar(15) DEFAULT NULL,
  `Password` varchar(120) NOT NULL,
  `Status` int(1) DEFAULT '1',
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblstudentslog`
--

CREATE TABLE `tblstudentslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentid` int(11) DEFAULT NULL,
  `userip` varchar(100) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudentslog`
--

INSERT INTO `tblstudentslog` (`id`, `studentid`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, '::1', '2024-02-02 06:18:29', NULL, 1),
(2, 1, '::1', '2024-02-02 06:21:13', '2024-02-02 06:21:15', 1),
(3, 1, '::1', '2024-02-02 06:26:03', '2024-02-02 06:27:24', 1),
(4, 1, '::1', '2024-02-02 06:27:29', '2024-02-02 06:27:31', 1),
(5, 1, '::1', '2024-02-02 06:36:20', '2024-02-02 06:36:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategory` varchar(150) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`id`, `CategoryId`, `SubCategory`, `CreationDate`, `UpdationDate`) VALUES
(1, 2, 'Python', '2024-01-24 07:23:03', '2024-02-04 06:34:40'),
(2, 5, 'Web Programming', '2024-01-24 07:23:03', '2024-02-04 06:34:40'),
(4, 5, 'Networking', '2024-01-24 07:23:03', '2024-02-04 06:34:40'),
(5, 5, 'Computing', '2024-01-24 07:23:03', '2024-02-04 06:34:40'),
(6, 5, 'Math', '2024-01-24 07:23:03', '2024-02-04 06:34:40');
