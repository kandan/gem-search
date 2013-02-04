-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 15, 2013 at 10:53 AM
-- Server version: 5.1.44
-- PHP Version: 5.3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gemtv_kandan_com_au`
--

-- --------------------------------------------------------

--
-- Table structure for table `adverts`
--

CREATE TABLE `adverts` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `knumber` varchar(6) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `category` tinyint(1) NOT NULL,
  `version` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notes` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `version` (`version`),
  KEY `category` (`category`),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1853 ;

--
-- Dumping data for table `adverts`
--

INSERT INTO `adverts` VALUES(34, 'ANZ-Info-030-00-FX_Airside_4', '', 3, 3, 4, '0000-00-00 00:00:00', 'Rates 19-24 rename as ANZ-Info-030-00-FX_Airside_4\r');
INSERT INTO `adverts` VALUES(35, 'ANZ-Info-031-42-News_National', '', 3, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(32, 'ANZ-Info-028-00-FX_Airside_2', '', 3, 3, 4, '0000-00-00 00:00:00', 'Rates 7-12 rename as ANZ-Info-028-00-FX_Airside_2\r');
INSERT INTO `adverts` VALUES(33, 'ANZ-Info-029-00-FX_Airside_3', '', 3, 3, 4, '0000-00-00 00:00:00', 'Rates 13-18 rename as ANZ-Info-029-00-FX_Airside_3\r');
INSERT INTO `adverts` VALUES(31, 'ANZ-Info-027-00-FX_Airside_1', '', 3, 3, 4, '0000-00-00 00:00:00', 'Rates 1-6 rename as ANZ-Info-027-00-FX_Airside_1\r');
INSERT INTO `adverts` VALUES(30, 'ANZ-Info-026-Weather_Spring_2010', '', 3, 3, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(29, 'ANZ-Info-025-00-FX_Portrait', '', 3, 3, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(28, 'ANZ-Info-023-Opening_Hours', '', 3, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(23, 'ANZ-Info-019-26-InternetBanking_5', '', 3, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(24, 'ANZ-Info-020-26-InternetBanking_6', '', 3, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(25, 'ANZ-Info-021-26-InternetBanking_7', '', 3, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(26, 'ANZ-Info-022-26-InternetBanking_8', '', 3, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(27, 'ANZ-Info-024-00-FX_Landscape', '', 3, 3, 1, '0000-00-00 00:00:00', '');
INSERT INTO `adverts` VALUES(22, 'ANZ-Info-018-26-InternetBanking_4', '', 3, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(21, 'ANZ-Info-017-26-InternetBanking_3', '', 3, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(18, 'ANZ-Info-014-00-Template_News_Aug2010', '', 3, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(19, 'ANZ-Info-015-26-InternetBanking_1', '', 3, 1, 3, '0000-00-00 00:00:00', 'Saved by Fujitsu as ANZ-Info-MB001-026-InternetBanking  \r');
INSERT INTO `adverts` VALUES(20, 'ANZ-Info-016-26-InternetBanking_2', '', 3, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(17, 'ANZ-Info-013-10-Weather_Winter_2010', '', 3, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(14, 'ANZ-Info-011-10-Weather_Autumn', '', 3, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(15, 'ANZ-Info-012-10-OpeningHours_revised', '', 3, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(16, 'ANZ-Info-008-040-News_New_Brand', '', 3, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(12, 'ANZ-Info-009-14-SeasonsGreetings', '', 3, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(13, 'ANZ-Info-010-14-SeasonsGreetings_Matrix', '', 3, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(10, 'ANZ-Info-007-10-Opening_Hours_NewBrand', '', 3, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(11, 'ANZ-Info-008-30-News_NewBrand', '', 3, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(1817, 'ANZ-Brand-051-32-Master_A-Z-Review', '', 1, 1, 3, '0000-00-00 00:00:00', '');
INSERT INTO `adverts` VALUES(2, 'ANZ-Tips-002-11-Reasons_to_move_02', '', 5, 3, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(3, 'ANZ-Tips-003-11-Reasons_to_move_03', '', 5, 3, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(4, 'ANZ-Info-001-10-Weather', '', 3, 3, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(5, 'ANZ-Info-002-10-Opening_Hours', '', 3, 3, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(6, 'ANZ-Info-003-30-News', '', 3, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(7, 'ANZ-Info-004-14-Christmas_2008', '', 3, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(8, 'ANZ-Info-005-18-Christmas2-2008', '', 3, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(9, 'ANZ-Info-006-10-Weather_NewBrand', '', 3, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(171, 'ANZ-Camp-110-21-RBS_Yoga', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(170, 'ANZ-Camp-109-32-SOFY_Woman', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(169, 'ANZ-Camp-108-32-SOFY_Man', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(168, 'ANZ-Camp-107-24-ShanghaiExpo', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(167, 'ANZ-Camp-106-40-HomeLoanFlexibility', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(166, 'ANZ-Camp-105-00-SmallBusinessStartups', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(165, 'ANZ-Camp-104-26-HomeInsurance', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(164, 'ANZ-Camp-103-00-InspiredMagazineMay_Matrix', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(163, 'ANZ-Camp-102-00-InspiredMagazineMay', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(162, 'ANZ-Camp-101-19-Rewards', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(161, 'ANZ-Camp-100-19-Rewards', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(160, 'ANZ-Camp-099-00-BusinessDebit', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(159, 'ANZ-Camp-098-00-Netball', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(158, 'ANZ-Camp-097-30-HILM', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(157, 'ANZ-Camp-096-12-Financial_Tips_Template', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(156, 'ANZ-Camp-095-15-FrequentFlyer_Thailand', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(155, 'ANZ-Camp-094-33-InspiredMagazine_Matrix', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(154, 'ANZ-Camp-093-35-LifeGuides_Matrix', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(153, 'ANZ-Camp-092-00-ATM_Limit', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(152, 'ANZ-Camp-091-33-InspiredMagazine', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(151, 'ANZ-Camp-090-35-LifeGuides', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(150, 'ANZ-Camp-089-24-InternetBanking_Feb10_Matrix', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(149, 'ANZ-Camp-088-24-SmallBusinessSpecialist_Feb10_Matrix', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(148, 'ANZ-Camp-087-24-FinancialPlanner_Feb10_Matrix', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(147, 'ANZ-Camp-086-19-LunarNewYear_Matrix', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(146, 'ANZ-Camp-085-23-TestCampaign', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(145, 'ANZ-Camp-084-24-InternetBanking_Feb10', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(144, 'ANZ-Camp-083-24-SmallBusinessSpecialist_Feb10', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(143, 'ANZ-Camp-082-24-FinancialPlanner_Feb10', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(142, 'ANZ-Camp-081-38-CustomerCharter', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(141, 'ANZ-Camp-080-15-LunarNewYear', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(140, 'ANZ-Camp-079-17-EverydayBanking', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(139, 'ANZ-Camp-078-28-WealthCreation', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(138, 'ANZ-Camp-077-20-RetirementBanking', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(137, 'ANZ-Camp-076-17-SmallBusinessDebit', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(136, 'ANZ-Camp-075-17-Febusave', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(135, 'ANZ-Camp-074-20-SydneyFestival', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(134, 'ANZ-Camp-073-19-AustralianOpen_Matrix', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(133, 'ANZ-Camp-072-19-AustralianOpen', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(132, 'ANZ-Camp-071-20-DebtConsolidation_Matrix', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(131, 'ANZ-Camp-070-20-DebtConsolidation', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(130, 'ANZ-Camp-069-24-InternetBankingImage_Matrix', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(129, 'ANZ-Camp-068-24-InternetBankingImage', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(128, 'ANZ-Camp-067-24-SmallBusinessSpecialistImage_Matrix', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(127, 'ANZ-Camp-066-24-SmallBusinessSpecialistImage', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(126, 'ANZ-Camp-065-24-FinancialPlannerImage_Matrix', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(125, 'ANZ-Camp-064-26-FinancialPlannerImage', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(124, 'ANZ-Camp-063-24-HomeLoans_Matrix', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(123, 'ANZ-Camp-062-24-HomeLoans', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(122, 'ANZ-Camp-061-19-InternetBanking_Matrix', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(121, 'ANZ-Camp-060-19-InternetBanking', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(120, 'ANZ-Camp-059-18-SmallBusinessSpecialist_Matrix', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(119, 'ANZ-Camp-058-18-SmallBusinessSpecialist', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(118, 'ANZ-Camp-057-18-FinancialPlanner_Matrix', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(117, 'ANZ-Camp-056-18-FinancialPlanner', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(116, 'ANZ-Camp-055-20-Opt-BuyingaHome09_Matrix', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(115, 'ANZ-Camp-054-14-Opt-Chinese09', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(114, 'ANZ-Camp-053-34-Opt-DebtConsolidation09', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(113, 'ANZ-Camp-052-30-Mortgages Spelling_Bee_Newspaper_09', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(112, 'ANZ-Camp-051-20-Travel_Card_INR', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(111, 'ANZ-Camp-050-20-Travel_Card_US', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(110, 'ANZ-Camp-048-31-MobileLender', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(109, 'ANZ-Camp-049-31-PersonalBanker', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(108, 'ANZ-Camp-046-30-FinancialPlanningMay09_Matrix', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(107, 'ANZ-Camp-045-23-EverydayBankingMay09_Matrix', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(106, 'ANZ-Camp-044-25-FinancialPlanningMay09', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(105, 'ANZ-Camp-043-23-EverydayBankingMay09', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(104, 'ANZ-Camp-042-30-BeMoneyConfident_Bubble04', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(103, 'ANZ-Camp-041-30-BeMoneyConfident_Bubble03', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(102, 'ANZ-Camp-040-30-BeMoneyConfident_Bubble02', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(101, 'ANZ-Camp-039-30-BeMoneyConfident_Bubble01', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(100, 'ANZ-Camp-038-19-Retirement_Banking_Specialist', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(99, 'ANZ-Camp-037-33-Access_Advantage_Dog', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(98, 'ANZ-Camp-036-30-FP_Uncertain_Times', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(97, 'ANZ-Camp-035-37-Opt_Reaching_Goals_09', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(96, 'ANZ-Camp-034-19-Opt_Small_Business_09', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(95, 'ANZ-Camp-033-21-Opt_Buying_A_Home_09', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(94, 'ANZ-Camp-032-37-Online_Investment_Account', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(93, 'ANZ-Camp-031-30-Fresh-Start', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(92, 'ANZ-Camp-030-25-Visa_Debit', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(91, 'ANZ-Camp-029-15-Insurance_Bonus_Home_Landlord', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(90, 'ANZ-Camp-028-30-Mortgages Spelling_Bee_Newspaper', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(89, 'ANZ-Camp-027-10-ANZ_Assured', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(88, 'ANZ-Camp-026-20-Mortgages_Spelling_Bee', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(87, 'ANZ-Camp-025-20-Small_Business_Select', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(86, 'ANZ-Camp-024-26-Faces_D', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(85, 'ANZ-Camp-024-20-Small_Business_CANNEX', '', 2, 1, 4, '0000-00-00 00:00:00', 'Note: There are 2 pieces with the same number but different names and content\r');
INSERT INTO `adverts` VALUES(84, 'ANZ-Camp-023-26-Faces_C', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(83, 'ANZ-Camp-022-27-Faces_B', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(82, 'ANZ-Camp-021-11-Opt_Small_Business_PZ', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(81, 'ANZ-Camp-020-13-Opt_Savings_PZ', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(80, 'ANZ-Camp-019-12-Opt_Planning_Ahead_PZ', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(79, 'ANZ-Camp-018-09-Opt_Debt_Consolidation_PZ', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(78, 'ANZ-Camp-017-29-Opt_Small_Business_Matrix', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(77, 'ANZ-Camp-016-29-Opt_Saving_Matrix', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(76, 'ANZ-Camp-015-33-Opt_Planning_Ahead_Matrix', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(75, 'ANZ-Camp-014-30-Opt_Small_Business', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(74, 'ANZ-Camp-013-20-Opt_Saving', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(73, 'ANZ-Camp-012-34-Opt_Planning_Ahead', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(72, 'ANZ-Camp-011-24-Opt_Debt_Consolidation', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(71, 'ANZ-Camp-010-26-Opt_Buying_A_Home', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(70, 'ANZ-Camp-009-15-HLLOTY_10Times', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(69, 'ANZ-Camp-008-15-Save-Organise', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(68, 'ANZ-Camp-007-25-Visa_Debit_Matrix', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(67, 'ANZ-Camp-006-05-Personal-Loan_Airfreshner_Matrix ', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(66, 'ANZ-Camp-005-28-Faces-D-Matrix ', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(65, 'ANZ-Camp-004-28-Faces-C-Matrix ', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(64, 'ANZ-Camp-003-15-Credit_Card_BT_0', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(63, 'ANZ-Camp-002-15-Pre_approved', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(62, 'ANZ-Camp-001-20-FP_No_Regrets', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(61, 'ANZ-Comm-018-36-SaverPlus', '', 4, 1, 3, '0000-00-00 00:00:00', 'New content created Feb 2011\r');
INSERT INTO `adverts` VALUES(60, 'ANZ-Comm-017-10-QldFloods2', '', 4, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(59, 'ANZ-Comm-016-10-QldFloods', '', 4, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(58, 'ANZ-Comm-015-10-MoneyMinded_Prospect', '', 4, 2, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(57, 'ANZ-Comm-014-30-MoneyMinded', '', 4, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(56, 'ANZ-Comm-013-17-Haiti', '', 4, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(55, 'ANZ-Comm-012-30-SaverPlus', '', 4, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(54, 'ANZ-Comm-011-10-PinkRibbonDay', '', 4, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(53, 'ANZ-Comm-010-23-DaffodilDay', '', 4, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(52, 'ANZ-Comm-009-30-SaverPlus', '', 4, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(51, 'ANZ-Comm-008-20-MostSatisfiedCustomers-PZ', '', 4, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(50, 'ANZ-Comm-007-10-MostSatisfiedCustomers-TZ&SZ', '', 4, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(49, 'ANZ-Comm-006-23-WomensSessions', '', 4, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(48, 'ANZ-Comm-005-29-Hardship_Program', '', 4, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(47, 'ANZ-Comm-004-15-Qld_floods', '', 4, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(46, 'ANZ-Comm-003-09-Bushfires', '', 4, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(45, 'ANZ-Comm-002-53-Financial_literacy_and_inclusion', '', 4, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(44, 'ANZ-Comm-001-45-Community_Giving', '', 4, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(39, 'ANZ-Info-035-42-News_Entertainment', '', 3, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(40, 'ANZ-Info-036-42-News_Technology', '', 3, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(41, 'ANZ-Info-026-Weather_Winter_2011', '', 3, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(42, 'ANZ-Info-037-17-Christmas_2011', '', 3, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(43, 'ANZ-Info-037-00-Smart-Choice-Super-ANZCentre', '', 3, 1, 4, '0000-00-00 00:00:00', 'Only to be played on stand alone screen at 833 Collins St\r');
INSERT INTO `adverts` VALUES(38, 'ANZ-Info-034-42-News_Sport', '', 3, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(37, 'ANZ-Info-033-42-News_World', '', 3, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(36, 'ANZ-Info-032-42-News_Business', '', 3, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(172, 'ANZ-Camp-111-21-RBS_Pool', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(173, 'ANZ-Camp-112-00-ANZ_Extras', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(174, 'ANZ-Camp-113-00-ANZ_Extras_Prospect', '', 2, 2, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(175, 'ANZ-Camp-114-00-ANZ_Extras_Matrix', '', 2, 4, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(176, 'ANZ-Camp-115-00-TD_Monday12July10', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(177, 'ANZ-Camp-116-00-TD_Tuesday13July10', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(178, 'ANZ-Camp-117-00-TD_Wednesday14July10', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(179, 'ANZ-Camp-118-00-TD_Monday26July10', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(180, 'ANZ-Camp-119-00-TD_Tuesday27July10', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(181, 'ANZ-Camp-120-00-TD_Wednesday28July10', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(182, 'ANZ-Camp-121-21-VisaDebit', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(183, 'ANZ-Camp-122-21-Migrant_VisaDebit', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(184, 'ANZ-Camp-123-09-SBS', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(185, 'ANZ-Camp-124-19-Women', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(186, 'ANZ-Camp-125-30-OIA', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(187, 'ANZ-Camp-130-22-VisaDebit_Matrix', '', 2, 4, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(188, 'ANZ-Camp-127-23-BalanceTransfer1', '', 2, 1, 3, '0000-00-00 00:00:00', 'Groceries\r');
INSERT INTO `adverts` VALUES(189, 'ANZ-Camp-128-23-BalanceTransfer2', '', 2, 1, 3, '0000-00-00 00:00:00', 'Petrol\r');
INSERT INTO `adverts` VALUES(190, 'ANZ-Camp-129-23-BalanceTransfer3', '', 2, 1, 3, '0000-00-00 00:00:00', 'House\r');
INSERT INTO `adverts` VALUES(191, 'ANZ-Camp-137-35-GoMoney_Long', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(192, 'ANZ-Camp-131-00-Fire_Your_Boss', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(193, 'ANZ-Camp-132-00-Property_Tracker', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(194, 'ANZ-Camp-133-15-Travel_Card', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(195, 'ANZ-Camp-134-37-Travel_Mainbank', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(196, 'ANZ-Camp-135-19-FX_availability', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(197, 'ANZ-Camp-136-17-BVD', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(198, 'ANZ-Camp-137-35-GoMoney_Long', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(199, 'ANZ-Camp-138-17-GoMoney_David', '', 2, 1, 3, '0000-00-00 00:00:00', 'Scheduled in mediabank ANZ-Camp-MB002-40-GoMoney\r');
INSERT INTO `adverts` VALUES(200, 'ANZ-Camp-139-10-GoMoney_Jill', '', 2, 1, 4, '0000-00-00 00:00:00', 'Scheduled in mediabank ANZ-Camp-MB002-40-GoMoney\r');
INSERT INTO `adverts` VALUES(201, 'ANZ-Camp-140-10-GoMoney_Maddy', '', 2, 1, 4, '0000-00-00 00:00:00', 'Scheduled in mediabank ANZ-Camp-MB002-40-GoMoney\r');
INSERT INTO `adverts` VALUES(202, 'ANZ-Camp-141-10-GoMoney_Mike', '', 2, 1, 4, '0000-00-00 00:00:00', 'Scheduled in mediabank ANZ-Camp-MB002-40-GoMoney\r');
INSERT INTO `adverts` VALUES(203, 'ANZ-Camp-142-16-LRMC-Q1-2010', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(204, 'ANZ-Camp-143-16-LRMC-Q1-2010-Matrix ', '', 2, 4, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(205, 'ANZ-Camp-144-14-TouchHere', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(206, 'ANZ-Camp-145-13-Q2_AZReview', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(207, 'ANZ-Camp-146-13-Q2_AZReview_Chinese', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(208, 'ANZ-Camp-147-13-Q2_ProgressSaver', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(209, 'ANZ-Camp-148-13-Q2_ProgressSaver_Chinese', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(210, 'ANZ-Camp-149-15-Q2_BalanceTransfer', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(211, 'ANZ-Camp-150-15-Q2_BalanceTransfer_Chinese', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(212, 'ANZ-Camp-151-30-Boat', '', 2, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(213, 'ANZ-Camp-152-30-DestroyYourCards', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(214, 'ANZ-Camp-153-20-ChineseNewYear', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(215, 'ANZ-Camp-154-30-ProgressSaver_TVC', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(216, 'ANZ-Camp-155-30-BT_TVC', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(217, 'ANZ-Camp-156-29-SBS ', '', 2, 1, 3, '0000-00-00 00:00:00', 'Replacing ANZ-Camp-156-17-SBS (previous version by Mark)\r');
INSERT INTO `adverts` VALUES(218, 'ANZ-Camp-157-20-Everyone_Deserves_A_Plan', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(219, 'ANZ-Camp-158-00-Breakfree', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(220, 'ANZ-Camp-159-17-CashPacks', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(221, 'ANZ-Camp-160-24-JuniorClub', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(222, 'ANZ-Camp-161-18-Advantages', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(223, 'ANZ-Camp-162-21-MostAwardedLender', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(224, 'ANZ-Camp-163-37-Tony Barber', '', 2, 1, 3, '0000-00-00 00:00:00', 'To replace ANZ-Camp-162-00-Most Awarded\r');
INSERT INTO `adverts` VALUES(225, 'ANZ-Camp-164-29-Home Insurance', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(226, 'ANZ-Camp-165-87-goMoneyv1', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(227, 'ANZ-Camp-166-71-50+LifeCover', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(228, 'ANZ-Camp-167-22-TravelCard_June2011', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(229, 'ANZ-Camp-168-45-Travel_Mainbank_June2011', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(230, 'ANZ-Camp-169-45-RBS_Master', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(231, 'ANZ-Camp-170-41-IBS_Master', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(232, 'ANZ-Camp-171-11-Staff Offer', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(233, 'ANZ-Camp-172-29-Frequent Flyer', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(234, 'ANZ-Camp-173-19-Everyone_Deserves_A_Plan_Matrix', '', 2, 4, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(235, 'ANZ-Camp-174-62-RBS_Master_Matrix', '', 2, 4, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(236, 'ANZ-Camp-175-33-Debt-Con', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(237, 'ANZ-Camp-176-00 - Debt-Con_Matrix', '', 2, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(238, 'ANZ-Camp-177-23-Staff Insurance', '', 2, 1, 3, '0000-00-00 00:00:00', 'August Staff Banking Campaign\r');
INSERT INTO `adverts` VALUES(239, 'ANZ-Camp-178-58-Travel_Mainbank_Aug2011', '', 2, 1, 3, '0000-00-00 00:00:00', 'Updated to include New Zealand on map\r');
INSERT INTO `adverts` VALUES(240, 'ANZ-Camp-179-56-Spring-Mortgages', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(241, 'ANZ-Camp-180-54-Spring-Mortgages_Matrix', '', 2, 4, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(242, 'ANZ-Camp-181-84-goMoneyv2', '', 2, 1, 3, '0000-00-00 00:00:00', 'Replaces ANZ-Camp-165-00-goMoneyv1\r');
INSERT INTO `adverts` VALUES(243, 'ANZ-Camp-182-10-Spring Mortgages_PZ', '', 2, 1, 3, '0000-00-00 00:00:00', '10SEC version for Propsect Zone\r');
INSERT INTO `adverts` VALUES(244, 'ANZ-Camp-183-34-Small Business AZ Review', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(245, 'ANZ-Camp-184-19-Small-Business-AZ-Review_Prospect', '', 2, 2, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(246, 'XXXX', '', 2, 2, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(1827, 'ANZ-Camp-193-23-student-Banking-Bilingual', '', 2, 1, 3, '0000-00-00 00:00:00', '');
INSERT INTO `adverts` VALUES(247, 'ANZ-Camp-185-11-SmallBusiness_StaffBankingOffer', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(248, 'ANZ-Camp-186-28-PropertyReport', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(249, 'ANZ-Camp-187-10-Property-Report_Prospect', '', 2, 2, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(250, 'ANZ-Camp-188-49-Insurance-Protect', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(251, 'ANZ-Camp-189-52-Credit-Cards-Festive-season', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(252, 'ANZ-Camp-190-13-Mobile-Lenders_Prospect', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(253, 'ANZ-Camp-191-21-Lunar-New-Year', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(254, 'ANZ-Camp-191-14-Lunar-New-Year_Prospect', '', 2, 2, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(255, 'ANZ-Camp-192-45-CashPack2', '', 2, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(256, 'ANZ-Brand-001-40-Customer_Charter', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(257, 'ANZ-Brand-002-31-Wicked', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(258, 'ANZ-Brand-003-31-Access_Advantage_TVC', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(259, 'ANZ-Brand-004-20-IPhone _TVC', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(260, 'ANZ-Brand-005-20-IPhone _TVC-V2', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(261, 'ANZ-Brand-006-45-Sydney_Festival_2009', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(262, 'ANZ-Brand-007-30-ANZ_Championship_2009', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(263, 'ANZ-Brand-008-30-Casting', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(264, 'ANZ-Brand-009-45-Wicked', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(265, 'ANZ-Brand-010-30-SmallBusiness', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(266, 'ANZ-Brand-011-10-Fewer_Fees', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(267, 'ANZ-Brand-013-08-Animated Logo', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(268, 'ANZ-Brand-014-24-Lifes Complicated', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(269, 'ANZ-Brand-015-24-Lifes Complicated_Matrix', '', 1, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(270, 'ANZ-Brand-016-62-NewBrandTVC', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(271, 'ANZ-Brand-017-60-NewBrandTVC_Matrix', '', 1, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(272, 'ANZ-Brand-018-48-MortgagesTVC', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(273, 'ANZ-Brand-019-48-MortgagesTVC_Matrix', '', 1, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(274, 'ANZ_Brand-020-33-ExtendedHours', '', 1, 1, 4, '0000-00-00 00:00:00', 'ddddd');
INSERT INTO `adverts` VALUES(275, 'ANZ-Brand-021-17-Security', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(276, 'ANZ-Brand-022-22-CustomerSatisfaction', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(277, 'ANZ-Brand-023-00-Transparency', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(278, 'ANZ-Brand-024-27-Security_Matrix', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(279, 'ANZ-Brand-025-00-CustomerSatisfaction_Matrix', '', 1, 4, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(280, 'ANZ-Brand-026-00-Transparency_Matrix', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(281, 'ANZ-Brand-027-58-NetballHighlights', '', 1, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(282, 'ANZ-Brand-028-15-HLOTY_2010', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(283, 'ANZ-Brand-028-15-HLOTY_2010(2)', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(284, 'ANZ-Brand-029-12-ProofPoint_SmallBusiness', '', 1, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(285, 'ANZ-Brand-030-20-ProofPoint_CallCentre', '', 1, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(286, 'ANZ-Brand-031-20-ProofPoint_MobileBanking', '', 1, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(287, 'ANZ-Brand-032-10-ProofPoint_RBS', '', 1, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(288, 'ANZ-Brand-033-30-ZooMonth2010', '', 1, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(289, 'ANZ-Brand-034-12-ProofPoint_SmallBusiness_Matrix', '', 1, 4, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(290, 'ANZ-Brand-035-19-ProofPoint_CallCentre_Matrix', '', 1, 4, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(291, 'ANZ-Brand-036-20-ProofPoint_MobileBanking_Matrix', '', 1, 4, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(292, 'ANZ-Brand-037-10-ProofPoint_RBS_Matrix', '', 1, 4, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(293, 'ANZ-Brand-038-00-AgriSpecialist', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(294, 'ANZ-Brand-039-49-175Years', '', 1, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(295, 'ANZ-Brand-040-13-FestiveSeason2010', '', 1, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(296, 'ANZ-Brand-041-20-175Years_Prospect', '', 1, 2, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(297, 'ANZ-Brand-042-20-175Years_Matrix', '', 1, 4, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(298, 'ANZ-Brand-043-15-AustralianOpen2011', '', 1, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(299, 'ANZ-Brand-044-19-SydneyFestival2011', '', 1, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(300, 'ANZ-Brand-045-20-175Years_Chinese', '', 1, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(301, 'ANZ-Brand-046-XX-SamStosur_OneDay', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(302, 'ANZ-Brand-047-21-SBS', '', 1, 1, 3, '0000-00-00 00:00:00', '"A-Z Review concept for prospect');
INSERT INTO `adverts` VALUES(303, 'ANZ-Brand-048-00-SuperRegional2011', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(304, 'ANZ-Brand-049-00-NetballHighlights2011', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(305, 'ANZ-Brand-050-00-Archibald', '', 1, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(306, 'ANZ-Brand-051-Master_A-Z-Review', '', 1, 1, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(307, 'XXXX', '', 1, 1, 4, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(308, 'ANZ-Brand-053-Master_A-Z Review_Matrix', '', 1, 4, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(309, 'ANZ-Brand-054-Master_goMoney_Matrix', '', 1, 4, 3, '0000-00-00 00:00:00', '\r');
INSERT INTO `adverts` VALUES(310, 'ANZ-Brand-055-19-ProofPoint_CallCentre_Matrix', '', 1, 4, 3, '0000-00-00 00:00:00', '');
INSERT INTO `adverts` VALUES(1818, 'ANZ-Brand-052-29-Master_goMoney', '', 1, 1, 3, '0000-00-00 00:00:00', '');
INSERT INTO `adverts` VALUES(1819, 'ANZ-Camp-127-10-TD_Tuesday17Aug10', '', 2, 1, 3, '0000-00-00 00:00:00', '');
INSERT INTO `adverts` VALUES(1820, 'ANZ-Camp-126-10-TD_Monday16Aug10', '', 2, 1, 3, '0000-00-00 00:00:00', '');
INSERT INTO `adverts` VALUES(1821, 'ANZ-Camp-127-10-TD_Tuesday17Aug10', '', 2, 1, 3, '0000-00-00 00:00:00', '');
INSERT INTO `adverts` VALUES(1822, 'ANZ-Camp-128-10-TD_Wednesday18Aug10', '', 2, 1, 3, '0000-00-00 00:00:00', '');
INSERT INTO `adverts` VALUES(1823, 'ANZ-Camp-129-10-TD_Thursday19Aug10', '', 2, 1, 3, '0000-00-00 00:00:00', '');
INSERT INTO `adverts` VALUES(1824, 'ANZ-Camp-130-10-TD_Friday20Aug10', '', 2, 1, 3, '0000-00-00 00:00:00', '');
INSERT INTO `adverts` VALUES(1825, 'ANZ-Camp-133-15-Travel', '', 2, 1, 3, '0000-00-00 00:00:00', '');
INSERT INTO `adverts` VALUES(1826, 'ANZ-Camp-138-17-LRMC_Q1_2010', '', 2, 1, 3, '0000-00-00 00:00:00', '');
INSERT INTO `adverts` VALUES(1828, 'ANZ-Camp-194-23-Student-Banking-English', '', 2, 1, 2, '0000-00-00 00:00:00', '');
INSERT INTO `adverts` VALUES(1829, 'ANZ-Camp-195-48-BuyReady-Pilot', '', 2, 1, 2, '0000-00-00 00:00:00', '');
INSERT INTO `adverts` VALUES(1830, 'ANZ-Camp-196-30-Credit-Card-Right-Card', '', 2, 1, 2, '0000-00-00 00:00:00', '');
INSERT INTO `adverts` VALUES(1831, 'test', '', 1, 1, 1, '0000-00-00 00:00:00', '');
INSERT INTO `adverts` VALUES(1832, 'test2', '', 1, 1, 1, '0000-00-00 00:00:00', 'wert');
INSERT INTO `adverts` VALUES(1833, 'test2', '', 1, 1, 1, '0000-00-00 00:00:00', 'wert');
INSERT INTO `adverts` VALUES(1834, 'zwexrct', '', 1, 2, 2, '0000-00-00 00:00:00', 'hgcdhgcvd');
INSERT INTO `adverts` VALUES(1835, 'XXXX', '', 1, 1, 4, '0000-00-00 00:00:00', 'ssssssrtffssonskjnskjns');
INSERT INTO `adverts` VALUES(1836, 'new', '', 1, 1, 1, '2012-03-08 14:43:37', '');
INSERT INTO `adverts` VALUES(1837, 'new', '', 1, 1, 1, '2012-03-08 14:43:42', '');
INSERT INTO `adverts` VALUES(1838, 'new', '', 1, 1, 1, '2012-03-08 14:46:39', '');
INSERT INTO `adverts` VALUES(1839, 'new', '', 1, 1, 1, '2012-03-08 15:18:38', '');
INSERT INTO `adverts` VALUES(1840, '1xxx23456789', '', 2, 1, 2, '2012-03-08 15:20:27', 'sss');
INSERT INTO `adverts` VALUES(1841, '1xxx23456789', '', 2, 1, 2, '2012-03-08 15:21:43', 'sss');
INSERT INTO `adverts` VALUES(1842, '1xxx23456789', '', 2, 1, 2, '2012-03-08 15:22:06', 'sss');
INSERT INTO `adverts` VALUES(1843, '1xxx23456789', '', 2, 1, 2, '2012-03-08 15:22:25', 'sss');
INSERT INTO `adverts` VALUES(1844, '1xxx23456789', '', 2, 1, 2, '2012-03-08 15:22:46', 'sss');
INSERT INTO `adverts` VALUES(1845, '1xxx23456789', '', 2, 1, 2, '2012-03-08 15:23:20', 'sss');
INSERT INTO `adverts` VALUES(1846, '1xxx23456789', '', 2, 1, 2, '2012-03-08 15:23:30', 'sss');
INSERT INTO `adverts` VALUES(1847, 'sssssss', '', 2, 1, 4, '2012-03-08 15:26:03', 'sss');
INSERT INTO `adverts` VALUES(1848, 'test67', '', 1, 1, 2, '2012-03-14 17:55:14', '222sss');
INSERT INTO `adverts` VALUES(1849, 'K10657-ANZ-FX-Template-Portrait', '', 3, 3, 1, '2012-04-12 15:43:46', '');
INSERT INTO `adverts` VALUES(1850, 'K10657-ANZ-FX-Template-Landscape', '', 3, 3, 1, '2012-04-12 16:58:43', '');
INSERT INTO `adverts` VALUES(1851, 'MercedesVideo', '', 6, 4, 5, '2012-04-24 15:53:42', 'MercVideo');
INSERT INTO `adverts` VALUES(1852, 'Coop', '', 6, 5, 5, '2012-04-26 10:07:29', 'sssss');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` tinyint(2) NOT NULL,
  `category` varchar(100) NOT NULL,
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` VALUES(1, 'BRAND');
INSERT INTO `category` VALUES(2, 'CAMPAIGN');
INSERT INTO `category` VALUES(3, 'INFO');
INSERT INTO `category` VALUES(4, 'COMMUNITY');
INSERT INTO `category` VALUES(5, 'TIPS');
INSERT INTO `category` VALUES(6, 'OTHER');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` tinyint(2) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` VALUES(1, 'IN PROGRESS');
INSERT INTO `status` VALUES(2, 'COMPLETE');
INSERT INTO `status` VALUES(3, 'ARCHIVE');
INSERT INTO `status` VALUES(4, 'DISABLED');
INSERT INTO `status` VALUES(5, 'OTHER');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `username` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_id` tinyint(1) NOT NULL,
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `User`
--

INSERT INTO `User` VALUES('as', '41c0e2ef26e1694996f82867429e2e1fb9e9f6b9', 'as', 1, 1);
INSERT INTO `User` VALUES('asd', 'feeec6d1c0244675f5f113faa97b667b3f8fc11d', 'asd', 1, 2);
INSERT INTO `User` VALUES('asdss', 'c2a6ab1bdca7f20070f20fc00f4b90c0df4e295a', 'as', 2, 3);
INSERT INTO `User` VALUES('aaaaa', '9d3afe740ed385db00b90c856c15bb1fbef88911', 'as', 1, 4);
INSERT INTO `User` VALUES('Kandan', '78c6d4a36535c9d05b765b8eb02473b24a491cbb', 'coop', 1, 5);
INSERT INTO `User` VALUES('Kandan2', 'c3a4938df83a3e1ef294a8b8470d75d25ae8083a', 'as', 1, 6);
INSERT INTO `User` VALUES('coop', 'fcfb0d962d7a83d8df70f6aee14decd81256117a', 'fd', 1, 7);
INSERT INTO `User` VALUES('Coops', '299ba5e85729f5cf32493a89afe6352cfdace395', '8aae7f108dc67bde88053488a0ff9367d0e78fe6', 1, 8);
INSERT INTO `User` VALUES('df', '45c7aa9dbf76722cc0b9d9943553e9ea380c2305', '253daef69a635e71ada4157756a81833697c6a38', 2, 9);
INSERT INTO `User` VALUES('mikoop', 'f0a8cca9b1b7918225d92a2f8b6e11d56d0666dd', '8eb0f5e002528f4ebb2145828a75b0bc099ea01e', 1, 10);
INSERT INTO `User` VALUES('cog', '004318dca3a8c1f52f97696dbd399744992c4762', 'f2d25c4dcb07bcae171c0dfc9f4c0b0a6a5689ef', 2, 11);
INSERT INTO `User` VALUES('dazza', '4092b7bf3c771fe45978962b4d9b95aaaf55f9a8', 'c5d3d4f9a912f431344a2d4baa4309c0e3369272', 1, 12);
INSERT INTO `User` VALUES('dude', 'dcc53e7b7dd07284ffb9d30dc9f0fdd8043e390b', '98a9e4b2c1ffba907da63bba10a152c0d7c0e4d3', 1, 13);
INSERT INTO `User` VALUES('sd', '8b624a22652c7549d5832b444231a26f26e7f5ce', '48cffd027fccef3ab6dae425bccdf7b666263962', 1, 14);
INSERT INTO `User` VALUES('kd', '7b564a8af3188a2a22782423757ec16042ea6069', '59bc91f22f94accb030a26583e9d3eac5cf55d84', 1, 15);
INSERT INTO `User` VALUES('ANZ', 'edc3242fc921c1af12fd195a598925727a5b538d', '88ae627a4c7fafee856e25eec4bab5a22a5d2213', 2, 16);
INSERT INTO `User` VALUES('user', '41c8ca51023714a0337f35a340695542a86c32c0', '4966d1e38c6583b6a44c53b8f3f34b7ea3a4d58b', 2, 17);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `user_id` tinyint(1) NOT NULL,
  `user_type` varchar(40) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` VALUES(1, 'admin');
INSERT INTO `user_type` VALUES(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `version`
--

CREATE TABLE `version` (
  `version_id` tinyint(1) NOT NULL,
  `version` varchar(40) NOT NULL,
  KEY `version_id` (`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `version`
--

INSERT INTO `version` VALUES(1, 'Standard Gem Advert');
INSERT INTO `version` VALUES(2, 'Prospect');
INSERT INTO `version` VALUES(3, 'Flash Template');
INSERT INTO `version` VALUES(4, 'Matrix');
INSERT INTO `version` VALUES(5, 'Other');
