-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2023 at 02:27 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quill`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `AdminPassword` varchar(255) DEFAULT NULL,
  `AdminEmailId` varchar(255) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `userType`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', 'ryujinozengo@gmail.com', 1, '2023-08-27 04:30:00', '2023-08-27 08:23:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(9, 'Sports', 'All about sports', '2023-08-27 10:48:32', NULL, 1),
(10, 'Entertainment', 'All about films, songs and video-games.', '2023-08-27 10:49:18', '2023-08-27 10:50:00', 1),
(11, 'Politics', 'All about politics', '2023-08-27 10:51:12', NULL, 1),
(12, 'Business', 'All about business', '2023-08-27 10:52:08', NULL, 1),
(13, 'Technology', 'All about technology', '2023-08-27 10:54:39', NULL, 1),
(14, 'Science', 'All about science', '2023-08-27 10:55:05', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Quill', '<font face=\"Helvetica\"><span style=\"font-size: 16px; white-space-collapse: preserve;\">Quill News is your trustworthy destination for up-to-date, unbiased news coverage. Our dedicated team of experienced journalists is committed to delivering accurate and insightful stories across a range of topics. We believe in the power of informed citizens and aim to provide the information you need to stay engaged with the world. Welcome to Quill News - where knowledge meets clarity.</span></font><br>', '2023-08-27 04:30:00', '2023-08-27 10:47:12'),
(2, 'contactus', 'Contact Details', '<h4><font face=\"Helvetica\"><b>Address :&nbsp; </b>Kolkata India<br></font><font face=\"Helvetica\"><b>Phone Number : </b>+91-9836522512<br></font><font face=\"Helvetica\"><b>Email -id : </b>ryujinozengo@gmail.com</font></h4>', '2023-08-27 04:30:00', '2023-08-27 10:46:59');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  `viewCounter` int(11) DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `lastUpdatedBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `viewCounter`, `postedBy`, `lastUpdatedBy`) VALUES
(16, 'Lionel Messi scores a dazzling goal in MLS debut', 9, 11, '<p>At the 60-minute mark, Messi came off the bench alongside ex-Barcelona teammate Sergio Busquets. Despite previous scoreless debuts in La Liga and Ligue 1, Messi having a strong form in the USA had raised hopes of him scoring.</p><p>In the 88th minute, Messi had a chance with a set piece from 21 yards, but his shot hit the defensive wall. Yet, a minute later, he showcased brilliance inside the penalty area, making his debut memorable.&nbsp;</p><p>The play began with Miami having possession in midfield, as Busquets crossed to Alba inside the box. The pass of Alba using the side of his foot found Messi.<br></p>', '2023-08-27 11:17:00', '2023-08-27 12:18:59', 1, 'Lionel-Messi-scores-a-dazzling-goal-in-MLS-debut', 'c702c4aebed150e01dc7ae21dd8b4ea8.jpg', 12, 'Admin', 'Admin'),
(17, 'Sony confirms launch of PlayStation handheld device called Portal, reveals price', 10, 16, '<p>Sony has just unveiled some exciting updates in the world of gaming. They are introducing a new device called the PlayStation Portal remote player, which will be available later this year for $199.99 (roughly Rs 16,500). As the name suggests, this device lets you play your PS5 games remotely on an 8-inch LCD screen with HD visuals, adaptive triggers, and haptic feedback. It is great for gaming on the go or when you want to use a different screen.</p><p><br></p><p>The new Sony PlayStation Portal gets an 8-inch LCD screen that is capable of 1080p resolution at 60fps. Sony claims the device will provide a high-definition visual experience that is expected from the high-quality games.</p>', '2023-08-27 11:43:00', '2023-08-27 12:12:39', 1, 'Sony-confirms-launch-of-PlayStation-handheld-device-called-Portal,-reveals-price', '2da6957cfa35e14e2b7f13172f90b2ef.jpg', 11, 'Admin', NULL),
(18, 'Chandrayaan-3 lands on the Moon', 14, 19, '<p>The lander of Chandrayaan-3 achieved a smooth touchdown on the surface of the Moon a bit past 6 pm on Wednesday, marking India as the initial nation to approach the vicinity of the southern pole of the Moon. India has additionally emerged as the fourth country in the course of history to successfully reach the surface of the Moon, following the United States, the former Soviet Union, and China.</p><p>While the nation rejoices in the significant accomplishment of the Indian Space Research Organisation (ISRO), taking a glimpse at the preceding noteworthy achievements of the space agency across its three primary initiatives: satellites, launch vehicles, and planetary exploration.<br></p>', '2023-08-27 11:50:35', '2023-08-27 11:51:21', 1, 'Chandrayaan-3-lands-on-the-Moon', 'fc51149ffd9e77d957b44fbc1694b214.jpg', NULL, 'Admin', 'Admin'),
(19, 'BRICS invites 6 new members, including Saudi Arabia and Iran', 11, 17, '<p>The economic coalition of emerging markets known as BRICS extended membership invitations to six nations on Thursday, as stated by Cyril Ramaphosa, the South African President and current Chair of BRICS.</p><p>The current members of the BRICS alliance are Brazil, Russia, India, China, and South Africa. Ramaphosa announced that invitations have been extended to Argentina, Egypt, Ethiopia, Iran, Saudi Arabia, and the United Arab Emirates to join the coalition. This announcement was made in a speech published on the X social media platform, formerly known as Twitter.</p><p>The new members are expected to officially become part of BRICS from January 1, 2024.</p><p>The 15th BRICS summit is presently being hosted by South Africa, and the expansion of the group is a significant topic on the meeting agenda. Vladimir Putin, the President of Russia, was unable to attend the summit in person, possibly due to an International Criminal Court warrant. This warrant could have potentially required the host country, which is an ICC signatory, to carry out his arrest.</p>', '2023-08-27 11:57:14', '2023-08-27 12:04:19', 1, 'BRICS-invites-6-new-members,-including-Saudi-Arabia-and-Iran', '48b8a0a4a6e92ffbf5f7038385cd4a43.jpg', 2, 'Admin', NULL),
(20, 'Primary market schedule | 4 IPOs to be launched, 6 listings next week', 12, 20, '<p>In the upcoming week, the main primary market will witness the opening of subscriptions for four Initial Public Offerings (IPOs) valued at over Rs 500 crore, along with the listing of six stocks on the stock exchanges.</p><p>The initial IPO to watch is from Rishabh Instruments, a manufacturer of test and measuring instruments. The company is set to launch its first public offering on August 30 and conclude it on September 1. The anticipated funds raised by the company are around Rs 490.78 crore, assuming the upper range of the share price band at Rs 418-441 per share. This sum includes a fresh issuance of shares amounting to Rs 75 crore and an offer for sale of Rs 415.78 crore from investor SACEF Holdings II and the promoters.</p><p>Additionally, the IPO of Vishnu Prakash R Punglia, an infrastructure company, which began on August 24, will be ending next week on August 28. The offering has garnered a subscription rate of 10.63 times so far, with participation from various types of investors.</p>', '2023-08-27 12:00:40', NULL, 1, 'Primary-market-schedule-|-4-IPOs-to-be-launched,-6-listings-next-week', 'c9a5ca8e40b98b8b81a34dae88da20e8.jpg', NULL, 'Admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(11, 9, 'Football', 'Latest on football', '2023-08-27 10:55:39', NULL, 1),
(12, 9, 'Cricket', 'Latest on cricket', '2023-08-27 10:56:01', NULL, 1),
(13, 9, 'Basketball', 'Latest on basketball', '2023-08-27 10:56:28', NULL, 1),
(14, 10, 'Movies', 'Latest on movies', '2023-08-27 10:56:56', NULL, 1),
(15, 10, 'Songs', 'Latest on songs', '2023-08-27 10:57:17', NULL, 1),
(16, 10, 'Video-games', 'Latest on video-games', '2023-08-27 10:57:39', NULL, 1),
(17, 11, 'International', 'Latest on International politics', '2023-08-27 10:59:04', NULL, 1),
(18, 11, 'National', 'Latest on national politics', '2023-08-27 10:59:22', NULL, 1),
(19, 14, 'Space', 'Latest on space programmes', '2023-08-27 11:48:44', NULL, 1),
(20, 12, 'Finance', 'Latest on Finance', '2023-08-27 11:52:23', NULL, 1),
(21, 13, 'Smartphones', 'Latest on Smartphones', '2023-08-27 11:53:01', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AdminUserName` (`AdminUserName`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postId` (`postId`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postcatid` (`CategoryId`),
  ADD KEY `postsucatid` (`SubCategoryId`),
  ADD KEY `subadmin` (`postedBy`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`),
  ADD KEY `catid` (`CategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD CONSTRAINT `pid` FOREIGN KEY (`postId`) REFERENCES `tblposts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD CONSTRAINT `postcatid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `postsucatid` FOREIGN KEY (`SubCategoryId`) REFERENCES `tblsubcategory` (`SubCategoryId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `subadmin` FOREIGN KEY (`postedBy`) REFERENCES `tbladmin` (`AdminUserName`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD CONSTRAINT `catid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
