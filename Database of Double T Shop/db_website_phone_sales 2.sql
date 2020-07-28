-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 27, 2020 at 09:09 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_website_phone_sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `battery`
--

CREATE TABLE `battery` (
  `batteryId` int(11) NOT NULL,
  `batteryCapacity` int(11) DEFAULT NULL,
  `batteryType` varchar(150) DEFAULT NULL,
  `batteryTechnology` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `battery`
--

INSERT INTO `battery` (`batteryId`, `batteryCapacity`, `batteryType`, `batteryTechnology`) VALUES
(1, 1821, 'Non-removable Li-Ion 1821 mAh battery (6.96 Wh)', 'Fast charging 18W, 50% in 30 min (advertised) Qi wireless charging'),
(2, 3969, 'Non-removable Li-Ion 3969 mAh battery (15.04 Wh)', 'Fast charging 18W, 50% in 30 min (advertised) USB Power Delivery 2.0 Qi wireless charging'),
(3, 3110, 'Non-removable Li-Ion 3110 mAh battery (11.91 Wh)', 'Fast charging 18W, 50% in 30 min (advertised) USB Power Delivery 2.0 Qi wireless charging'),
(4, 3700, 'Non-removable Li-Po', 'Fast charging 18W USB Power Delivery 2.0 QI wireless charging'),
(5, 3300, 'Non-removable Li-Po 3300 mAh battery', 'Fast charging 15W Fast wireless charging'),
(6, 4500, 'Non-removable Li-Po 4500 mAh battery', 'Fast charging 25W'),
(7, 3174, 'Non-removable Li-Ion 3174 mAh battery (12.08 Wh)', 'Fast charging 15W, 50% in 30 min (advertised), Qi wireless charging'),
(8, 3430, 'Non-removable Li-Po 3430 mAh battery', 'Fast charging 18W USB Power Delivery 2.0 QI wireless charging'),
(9, 3700, 'Non-removable Li-Po 3700 mAh battery', 'Fast charging 18W, USB Power Delivery 2.0'),
(10, 3520, 'Non-removable Li-Ion 3520 mAh battery', 'Fast charging (capped at 10.5W), USB Power Delivery 2.0'),
(11, 3500, 'Non-removable Li-Ion 3500 mAh battery', 'Fast Qi/PMA wireless charging 12W, Reverse wireless charging 9W, USB Power Delivery 3.0'),
(12, 4235, 'Non-removable Li-Po 4235 mAh battery', 'Fast charging 15W, Fast wireless charging 15W, Reverse wireless charging 9W'),
(13, 2716, 'Non-removable Li-Ion 2716 mAh battery (10.35 Wh)', 'Fast charging 15W, 50% in 30 min (advertised), Qi wireless charging'),
(14, 2691, 'Non-removable Li-Ion 2691 mAh battery (10.28 Wh)', 'Qi wireless charging, Fast charging 15W, 50% in 30 min (advertised), '),
(15, 2942, 'Non-removable Li-Ion 2942 mAh battery (11.16 Wh)', 'USB Power Delivery 2.0, Qi wireless charging'),
(16, 2900, 'Non-removable Li-Ion 2900 mAh battery (11.1 Wh)', 'Fast charging');

-- --------------------------------------------------------

--
-- Table structure for table `body`
--

CREATE TABLE `body` (
  `bodyId` int(11) NOT NULL,
  `bodyDimensions` varchar(150) DEFAULT NULL,
  `bodyWeight` varchar(100) DEFAULT NULL,
  `bodyBuild` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `body`
--

INSERT INTO `body` (`bodyId`, `bodyDimensions`, `bodyWeight`, `bodyBuild`) VALUES
(1, '138.4 x 67.3 x 7.3 mm (5.45 x 2.65 x 0.29 in)', '148 g (5.22 oz)', 'Glass front, glass back, aluminum frame'),
(2, '158 x 77.8 x 8.1 mm (6.22 x 3.06 x 0.32 in)', '226 g (7.97 oz)', 'Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame'),
(3, '150.9 x 75.7 x 8.3 mm (5.94 x 2.98 x 0.33 in)', '194 g (6.84 oz)', 'Glass front (Gorilla Glass), glass back (Gorilla Glass), aluminum frame (7000 series)'),
(4, '160.4 x 75.1 x 8.2 mm (6.31 x 2.96 x 0.32 in)', '193 g (6.81 oz)', 'Glass front (Gorilla Glass 5), glass back (Gorilla Glass 5), aluminum frame'),
(5, 'Unfolded: 167.3 x 73.6 x 7.2 mm, Folded: 87.4 x 73.6 x 17.3 mm', '183 g (6.46 oz)', 'Plastic front, glass back (Gorilla Glass 6), aluminum frame'),
(6, '162.5 x 75.5 x 8.1 mm (6.40 x 2.97 x 0.32 in)', '185 g (6.53 oz)', 'Glass front (Gorilla Glass 3), plastic back, plastic frame'),
(7, '157.5 x 77.4 x 7.7 mm (6.20 x 3.05 x 0.30 in)', '208 g (7.34 oz)', 'Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame'),
(8, '158 x 76.7 x 7.9 mm (6.22 x 3.02 x 0.31 in)', '184 g (6.49 oz)', 'Glass front (Gorilla Glass 5), glass back (Gorilla Glass 5), aluminum frame'),
(9, '160.1 x 76.1 x 8.2 mm (6.30 x 3.00 x 0.32 in)', '167 g (5.89 oz)', 'Glass front (Asahi Dragontrail), plastic back, plastic frame'),
(10, '157.9 x 76.7 x 7.9 mm (6.22 x 3.02 x 0.31 in)', '175 g (6.17 oz)', 'Glass front (Gorilla Glass 5), aluminum/glass back, aluminum frame'),
(11, '151 x 71.8 x 7.9 mm (5.94 x 2.83 x 0.31 in)', '168 g (5.93 oz)', 'Glass front (Gorilla Glass 6), glass back (Gorilla Glass 6), aluminum frame'),
(12, 'Unfolded: 160.9 x 117.9 x 6.9 mm, Folded: 160.9 x 62.9 x 15.5 mm', '263 g (9.28 oz)', 'Glass front (folded), plastic front (unfolded), glass back, aluminum frame'),
(13, '143.6 x 70.9 x 7.7 mm (5.65 x 2.79 x 0.30 in)', '174 g (6.14 oz)', 'Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame'),
(14, '158.4 x 78.1 x 7.5 mm (6.24 x 3.07 x 0.30 in)', '202 g (7.13 oz)', 'Glass front (Gorilla Glass), glass back (Gorilla Glass), aluminum frame'),
(15, '150.9 x 75.7 x 8.3 mm (5.94 x 2.98 x 0.33 in)', '194 g (6.84 oz)', 'Glass front (Gorilla Glass), glass back (Gorilla Glass), aluminum frame (7000 series)'),
(16, '158.2 x 77.9 x 7.3 mm (6.23 x 3.07 x 0.29 in)', '188 g (6.63 oz)', 'Glass front (Gorilla Glass), aluminum back, aluminum frame');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(30) DEFAULT NULL,
  `brandImage` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brandId`, `brandName`, `brandImage`) VALUES
(1, 'Apple', 'img/logoApple.jpg'),
(2, 'Samsung', 'img/logoGoogle.png'),
(3, 'Google', 'img/logoSamsung.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `commentId` int(11) NOT NULL,
  `commentContent` text DEFAULT NULL,
  `commentDate` datetime DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`commentId`, `commentContent`, `commentDate`, `customerId`) VALUES
(1, 'I been a long time apple user until 2015. I particularly swore off the iphone not only for their lack of innovation, lack of usability across platforms, and proprietary functions; but the most annoying thing that drove me away is their predatory and ...', '2020-07-24 20:18:18', 1),
(2, 'tq for the opinion. in malaysia. now a lot of people are selling pixel 4/xl ftu (factory test unit) they claim its all same like retail unit. only u cant check imei on website. we dont know what is this ftu actually. where they get the stock etc. is ...', '2020-07-24 20:18:18', 1),
(3, 'The best iPhone in terms of battery thus far', '2020-07-26 12:17:35', 3),
(4, 'Facing same issue as my battery health drop woth two months about 5 to 6% not getting this thing although i am charging it very precisely and didnt use it while charging\r\n\r\n', '2020-07-26 12:30:21', 2);

-- --------------------------------------------------------

--
-- Table structure for table `connection`
--

CREATE TABLE `connection` (
  `connectionId` int(11) NOT NULL,
  `connectionSIM` varchar(150) DEFAULT NULL,
  `connectionMobileNetwork` varchar(150) DEFAULT NULL,
  `connectionWLAN` varchar(150) DEFAULT NULL,
  `connectionBluetooth` varchar(150) DEFAULT NULL,
  `connectionGPS` varchar(150) DEFAULT NULL,
  `connectionNFC` tinyint(1) DEFAULT NULL,
  `connectionRadio` tinyint(1) DEFAULT NULL,
  `connectionUSB` varchar(150) DEFAULT NULL,
  `connectionJack` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `connection`
--

INSERT INTO `connection` (`connectionId`, `connectionSIM`, `connectionMobileNetwork`, `connectionWLAN`, `connectionBluetooth`, `connectionGPS`, `connectionNFC`, `connectionRadio`, `connectionUSB`, `connectionJack`) VALUES
(1, 'Nano-SIM and/or eSIM', 'GSM / CDMA / HSPA / EVDO / LTE', 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot', '5.0, A2DP, LE', 'Yes, with A-GPS, GLONASS', 1, 0, '2.0, proprietary reversible connector', 0),
(2, 'Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by) - for China', 'GSM / CDMA / HSPA / EVDO / LTE', 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot', '5.0, A2DP, LE', 'Yes, with A-GPS, GLONASS, GALILEO, QZSS', 1, 0, '2.0, proprietary reversible connector', 0),
(3, 'Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by) - for China', 'GSM / CDMA / HSPA / EVDO / LTE', 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot', '5.0, A2DP, LE', 'Yes, with A-GPS, GLONASS, GALILEO, QZSS', 1, 0, '2.0, proprietary reversible connector', 0),
(4, 'Nano-SIM card & eSIM', 'GSM / CDMA / HSPA / EVDO / LTE', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, DLNA, hotspot', '5.0, A2DP, LE, aptX HD', 'Yes, with A-GPS, GLONASS, BDS, GALILEO', 1, 0, '3.1, Type-C 1.0 reversible connector', 0),
(5, 'Nano-SIM, eSIM', 'GSM / HSPA / LTE / 5G', 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, Wi-Fi Direct, hotspot', '5.0, A2DP, LE', 'Yes, with A-GPS, GLONASS, GALILEO, BDS', 1, 0, '3.1, Type-C 1.0 reversible connector, USB On-The-Go', 0),
(6, 'Nano-SIM', 'GSM / HSPA / LTE / 5G', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot', '5.0, A2DP, LE', 'Yes, with A-GPS, GLONASS, GALILEO, BDS', 1, 0, '2.0, Type-C 1.0 reversible connector, USB On-The-Go', 0),
(7, 'Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by) - for China', 'GSM / CDMA / HSPA / EVDO / LTE', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot', '5.0, A2DP, LE', 'Yes, with A-GPS, GLONASS, GALILEO, QZSS', 1, 0, '2.0, proprietary reversible connector', 0),
(8, 'Nano-SIM card & eSIM', 'GSM / CDMA / HSPA / EVDO / LTE', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, DLNA, hotspot', '5.0, A2DP, LE, aptX HD', 'Yes, with A-GPS, GLONASS, BDS, GALILEO', 1, 0, '3.1, Type-C 1.0 reversible connector', 0),
(9, 'Nano-SIM and/or eSIM', 'GSM / CDMA / HSPA / EVDO / LTE', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot', '5.0, A2DP, LE, aptX HD', 'Yes, with A-GPS, GLONASS, GALILEO', 1, 0, '2.0, Type-C 1.0 reversible connector', 1),
(10, 'Nano-SIM card & eSIM', 'GSM / CDMA / HSPA / EVDO / LTE', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, DLNA, hotspot', '5.0, A2DP, LE, aptX HD', 'Yes, with A-GPS, GLONASS, BDS, GALILEO', 1, 0, '3.1, Type-C 1.0 reversible connector', 0),
(11, 'Nano-SIM', 'GSM / CDMA / HSPA / EVDO / LTE / 5G', 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, Wi-Fi Direct, hotspot', '5.0, A2DP, LE, aptX', 'Yes, with A-GPS, GLONASS, BDS, GALILEO', 1, 1, '3.1, Type-C 1.0 reversible connector', 0),
(12, 'Nano-SIM', 'GSM / HSPA / LTE / 5G', 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, Wi-Fi Direct, hotspot', '5.0, A2DP, LE, aptX HD', 'Yes, with A-GPS, GLONASS, GALILEO, BDS', 1, 0, '3.1, Type-C 1.0 reversible connector', 0),
(13, 'Nano-SIM', 'GSM / HSPA / LTE', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot', '5.0, A2DP, LE', 'Yes, with A-GPS, GLONASS, GALILEO, QZSS', 1, 0, '2.0, proprietary reversible connector', 0),
(14, 'Nano-SIM', 'GSM / HSPA / LTE', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot', '5.0, A2DP, LE', 'Yes, with A-GPS, GLONASS, GALILEO, QZSS', 1, 0, '2.0, proprietary reversible connector', 0),
(15, 'Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by) - for China', 'GSM / CDMA / HSPA / EVDO / LTE', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot', '5.0, A2DP, LE', 'Yes, with A-GPS, GLONASS, GALILEO, QZSS', 1, 0, '2.0, proprietary reversible connector', 0),
(16, 'Nano-SIM', 'GSM / CDMA / HSPA / EVDO / LTE', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot', '4.2, A2DP, LE', 'Yes, with A-GPS, GLONASS, GALILEO, QZSS', 1, 0, '2.0, proprietary reversible connector', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerId` int(11) NOT NULL,
  `customerFullname` varchar(50) DEFAULT NULL,
  `customerEmail` varchar(50) NOT NULL,
  `customerImage` varchar(150) NOT NULL,
  `customerAddress` varchar(100) DEFAULT NULL,
  `customerPhone` varchar(15) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerId`, `customerFullname`, `customerEmail`, `customerImage`, `customerAddress`, `customerPhone`, `userId`) VALUES
(1, 'Bach Nguyen Phuc Thinh', 'phucthinhbach@gmail.com', 'img/users/thinh.jpg', 'Hau Giang', '0346845768', 2),
(2, 'Tang Minh Tin', 'minhtintang@gmail.com', 'img/users/user.png', 'Tien Giang', '0394328223', 5),
(3, 'Hua Quoc Vinh', 'huaquocvinh@gmail.com', 'img/users/vinh.jpg', 'Can Tho', '0394534758', 7),
(4, 'Tin', 'tin1@gmail.com', 'img/users/user.png', 'TG', '0394328223', 8);

-- --------------------------------------------------------

--
-- Table structure for table `display`
--

CREATE TABLE `display` (
  `displayId` int(11) NOT NULL,
  `displayType` varchar(150) DEFAULT NULL,
  `displaySize` varchar(150) DEFAULT NULL,
  `displayResolution` varchar(150) DEFAULT NULL,
  `displayProtection` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `display`
--

INSERT INTO `display` (`displayId`, `displayType`, `displaySize`, `displayResolution`, `displayProtection`) VALUES
(1, 'Retina IPS LCD capacitive touchscreen, 16M colors', '4.7 inches, 60.9 cm2 (~65.4% screen-to-body ratio)', '750 x 1334 pixels, 16:9 ratio (~326 ppi density)', 'Ion-strengthened glass, oleophobic coating, Wide color gamut'),
(2, 'Super Retina XDR OLED capacitive touchscreen, 16M colors', '6.5 inches, 102.9 cm2 (~83.7% screen-to-body ratio)', '1242 x 2688 pixels, 19.5:9 ratio (~458 ppi density)', 'Scratch-resistant glass, oleophobic coating, 800 nits max brightness (advertised), 120Hz touch-sensing'),
(3, 'Liquid Retina IPS LCD capacitive touchscreen, 16M colors', '6.1 inches, 90.3 cm2 (~79.0% screen-to-body ratio)', '828 x 1792 pixels, 19.5:9 ratio (~326 ppi density)', 'Scratch-resistant glass, oleophobic coating, Wide color gamut'),
(4, 'P-OLED capacitive touchscreen, 16M colors', '6.3 inches, 98.0 cm2 (~81.3% screen-to-body ratio)', '1440 x 3040 pixels, 19:9 ratio (~537 ppi density)', 'Corning Gorilla Glass 5, HDR, Always-on display, 90Hz refresh rate'),
(5, 'Foldable Dynamic AMOLED capacitive touchscreen, 16M colors', '6.7 inches, 101.6 cm2 (~82.5% screen-to-body ratio)', '1080 x 2636 pixels (~425 ppi density)', 'Cover display: 1.1\", Super AMOLED, 112 x 300 pixels'),
(6, 'Super AMOLED Plus capacitive touchscreen, 16M colors', '6.7 inches, 108.4 cm2 (~88.3% screen-to-body ratio)', '1080 x 2400 pixels, 20:9 ratio (~393 ppi density)', 'Corning Gorilla Glass 3'),
(7, 'Super Retina OLED capacitive touchscreen, 16M colors', '6.5 inches, 102.9 cm2 (~84.4% screen-to-body ratio)', '1242 x 2688 pixels, 19.5:9 ratio (~458 ppi density)', 'Scratch-resistant glass, oleophobic coating, 625 nits max brightness (advertised)'),
(8, 'P-OLED capacitive touchscreen, 16M colors', '6.3 inches, 100.3 cm2 (~82.8% screen-to-body ratio)', '1440 x 2960 pixels, 18.5:9 ratio (~523 ppi density)', 'Corning Gorilla Glass 5, Always-on display'),
(9, 'OLED capacitive touchscreen, 16M colors', '6.0 inches, 92.9 cm2 (~76.3% screen-to-body ratio)', '1080 x 2160 pixels, 18:9 ratio (~402 ppi density)', 'Asahi Dragontrail Glass, Always-on display'),
(10, 'P-OLED capacitive touchscreen, 16M colors', '6.0 inches, 92.6 cm2 (~76.4% screen-to-body ratio)', '1440 x 2880 pixels, 18:9 ratio (~538 ppi density)', 'Corning Gorilla Glass 5, Always-on display'),
(11, 'Dynamic AMOLED capacitive touchscreen, 16M colors', '6.3 inches, 98.6 cm2 (~90.9% screen-to-body ratio)', '1080 x 2280 pixels, 19:9 ratio (~401 ppi density)', 'Corning Gorilla Glass 6, HDR10+'),
(12, 'Foldable Dynamic AMOLED capacitive touchscreen, 16M colors', '7.3 inches, 162.6 cm2 (~85.7% screen-to-body ratio)', '1536 x 2152 pixels (~362 ppi density)', 'Cover display: 4.6\", Super AMOLED, 720 x 1680 pixels (21:9)'),
(13, 'Super Retina OLED capacitive touchscreen, 16M colors', '5.8 inches, 84.4 cm2 (~82.9% screen-to-body ratio)', '1125 x 2436 pixels, 19.5:9 ratio (~458 ppi density)', 'Scratch-resistant glass, oleophobic coating, 625 nits max brightness (advertised)'),
(14, 'Retina IPS LCD capacitive touchscreen, 16M colors', '5.5 inches, 83.4 cm2 (~67.4% screen-to-body ratio)', '1080 x 1920 pixels, 16:9 ratio (~401 ppi density)', 'Ion-strengthened glass, oleophobic coating, 625 nits max brightness (advertised)'),
(15, 'Liquid Retina IPS LCD capacitive touchscreen, 16M colors', '6.1 inches, 90.3 cm2 (~79.0% screen-to-body ratio)', '828 x 1792 pixels, 19.5:9 ratio (~326 ppi density)', 'Scratch-resistant glass, oleophobic coating, 625 nits max brightness (advertised)'),
(16, 'Retina IPS LCD capacitive touchscreen, 16M colors', '5.5 inches, 83.4 cm2 (~67.7% screen-to-body ratio)', '1080 x 1920 pixels, 16:9 ratio (~401 ppi density)', 'Ion-strengthened glass, oleophobic coating');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeId` int(11) NOT NULL,
  `employeeFullname` varchar(50) DEFAULT NULL,
  `employeeAddress` varchar(100) DEFAULT NULL,
  `employeePhone` varchar(15) DEFAULT NULL,
  `employeeEmail` varchar(50) DEFAULT NULL,
  `employeeImage` varchar(100) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employeeId`, `employeeFullname`, `employeeAddress`, `employeePhone`, `employeeEmail`, `employeeImage`, `userId`) VALUES
(1, 'Nguyen son hao', 'Ben Tre', '03457685743', 'nguyensonhao@gmail.com', 'img/users/hao.jpg', 3),
(2, 'Truong Nhat Nam', 'Vinh Long', '03245743234', 'truongnhatnam@gmail.com', 'img/users/nam.jpg', 4),
(3, 'Nguyen Tran Quang Hien', 'Dong Thap', '0457532674', 'nguyentranquanghien@gmail.com', 'img/users/hien.jpg', 6);

-- --------------------------------------------------------

--
-- Table structure for table `maincamera`
--

CREATE TABLE `maincamera` (
  `mainCameraId` int(11) NOT NULL,
  `mainCameraResolution` varchar(150) DEFAULT NULL,
  `mainCameraFeatures` varchar(150) DEFAULT NULL,
  `mainCameraVideo` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `maincamera`
--

INSERT INTO `maincamera` (`mainCameraId`, `mainCameraResolution`, `mainCameraFeatures`, `mainCameraVideo`) VALUES
(1, '12 MP, f/1.8 (wide), PDAF, OIS', 'Quad-LED dual-tone flash, HDR, panorama', '4K@24/30/60fps, 1080p@30/60/120/240fps, HDR, OIS, stereo sound rec.'),
(2, '12 MP, f/1.8, 26mm (wide), 12 MP, f/2.0, 52mm (telephoto), 12 MP, f/2.4, 13mm (ultrawide)', 'Quad-LED dual-tone flash, HDR (photo/panorama)', '4K@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec.'),
(3, '12 MP, f/1.8, 26mm (wide), 12 MP, f/2.4, 13mm (ultrawide)', 'Quad-LED dual-tone flash, HDR (photo/panorama)', '4K@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec.'),
(4, '12.2 MP, f/1.7, 27mm (wide), 1/2.55', 'Dual-LED flash, Auto-HDR, panorama', '4K@30fps, 1080p@30/60/120fps, 1080p@30fps (gyro-EIS)'),
(5, '12 MP, f/1.8, 27mm (wide), 12 MP, f/2.2, 123Ë (ultrawide)', 'LED flash, HDR, panorama', '4K@30/60fps, 1080p@60/240fps, 720p@960fps, HDR10+'),
(6, '64 MP, f/1.8, 26mm (wide), 12 MP, f/2.2, 12mm (ultrawide), 5 MP, f/2.4, (macro), 5 MP, f/2.2, (depth)', 'LED flash, panorama, HDR', '4K@30fps, 1080p@30/240fps, 1080p@960fps; gyro-EIS'),
(7, '12 MP, f/1.8, 26mm (wide), 12 MP, f/2.4, 52mm (telephoto)', 'Quad-LED dual-tone flash, HDR (photo/panorama)', '4K@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec.'),
(8, '12.2 MP, f/1.8, 28mm (wide), 1/2.55\", 1.4Âµm, dual pixel PDAF, OIS', 'Dual-LED flash, Auto-HDR, panorama', '4K@30fps, 1080p@30/60/120fps, 1080p@30fps (gyro-EIS)'),
(9, '12.2 MP, f/1.8, 28mm (wide), 1/2.55\", 1.4Âµm, dual pixel PDAF, OIS', 'Dual-LED flash, HDR, panorama', '4K@30fps, 1080p@30/60/120fps'),
(10, '12.2 MP, f/1.8, 27mm (wide), 1/2.55\", 1.4Âµm, dual pixel PDAF, Laser AF, OIS', 'Dual-LED flash, HDR, panorama', '4K@30fps (gyro-EIS), 1080p@30/60/120fps (gyro-EIS), 720p@240fps (gyro-EIS)'),
(11, '12 MP, f/1.5-2.4, 27mm (wide), 12 MP, f/2.1, 52mm (telephoto), 16 MP, f/2.2, 12mm (ultrawide)', 'LED flash, auto-HDR, panorama', '4K@30/60fps, 1080p@30/60/240fps, 720p@960fps, HDR10+, stereo sound rec., gyro-EIS & OIS'),
(12, '12 MP, f/1.5-2.4, 27mm (wide), 12 MP, f/2.4, 52mm (telephoto), 16 MP, f/2.2, 12mm (ultrawide)', 'LED flash, HDR, panorama', '4K@60fps, 1080p@60/240fps (gyro-EIS), 720p@960fps (gyro-EIS), HDR10'),
(13, '12 MP, f/1.8, 28mm (wide), 12 MP, f/2.4, 52mm (telephoto)', 'Quad-LED dual-tone flash, HDR (photo/panorama), panorama, HDR', '4K@24/30/60fps, 1080p@30/60/120/240fps'),
(14, '12 MP, f/1.8, 28mm (wide), 12 MP, f/2.8, 57mm (telephoto)', 'Quad-LED dual-tone flash, HDR', '4K@24/30/60fps, 1080p@30/60/120/240fps'),
(15, '12 MP, f/1.8, 26mm (wide), 1/2.55\", 1.4Âµm, PDAF, OIS', 'Quad-LED dual-tone flash, HDR (photo/panorama)', '4K@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec.'),
(16, '12 MP, f/1.8, 28mm (wide), 12 MP, f/2.8, 56mm (telephoto)', 'Quad-LED dual-tone flash, HDR', '4K@30fps, 1080p@30/60/120fps, 720p@240fps');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `orderId` int(11) NOT NULL,
  `orderDate` datetime DEFAULT current_timestamp(),
  `orderQuantity` int(11) DEFAULT NULL,
  `orderTotalPrice` double DEFAULT NULL,
  `orderNote` varchar(250) DEFAULT NULL,
  `phoneId` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`orderId`, `orderDate`, `orderQuantity`, `orderTotalPrice`, `orderNote`, `phoneId`, `customerId`) VALUES
(1, '2020-07-24 14:33:22', 3, 3251.94, 'Note', NULL, 1),
(2, '2020-07-24 14:36:40', 1, 378.26, '', NULL, 1),
(3, '2020-07-24 14:40:25', 1, 1436.84, '', NULL, 1),
(4, '2020-07-24 14:43:52', 3, 1605.52, '', NULL, 1),
(5, '2020-07-24 14:48:38', 5, 4479.2, '', NULL, 1),
(6, '2020-07-24 15:44:15', 4, 4061.84, '', NULL, 1),
(7, '2020-07-24 15:45:32', 4, 3565.1, '', NULL, 1),
(8, '2020-07-24 15:52:05', 3, 3748.68, '', NULL, 1),
(9, '2020-07-24 21:20:57', 6, 3692.98, '', NULL, 2),
(10, '2020-07-24 21:26:06', 5, 4601.84, '', NULL, 2),
(11, '2020-06-26 12:15:46', 3, 1691.98, 'Gift for girlfriend', NULL, 3),
(12, '2020-07-27 20:23:08', 1, 540, '', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `orderId` int(11) DEFAULT NULL,
  `phoneId` int(11) DEFAULT NULL,
  `shipperId` int(11) DEFAULT NULL,
  `employeeId` int(11) DEFAULT NULL,
  `orderDetailTotalPrice` double DEFAULT NULL,
  `orderDetailQuantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`orderId`, `phoneId`, `shipperId`, `employeeId`, `orderDetailTotalPrice`, `orderDetailQuantity`) VALUES
(1, 2, 2, 1, 2873.68, 2),
(1, 1, 2, 1, 378.26, 1),
(2, 1, 2, 1, 378.26, 1),
(3, 2, 1, 1, 1436.84, 1),
(4, 1, 1, 1, 756.52, 2),
(4, 3, 1, 1, 849, 1),
(5, 2, 2, 1, 2873.68, 2),
(5, 1, 2, 1, 756.52, 2),
(5, 3, 2, 1, 849, 1),
(6, 4, 2, 1, 2625, 3),
(6, 2, 2, 1, 1436.84, 1),
(7, 4, 1, 1, 1750, 2),
(7, 2, 1, 1, 1436.84, 1),
(7, 1, 1, 1, 378.26, 1),
(8, 2, 1, 2, 2873.68, 2),
(8, 4, 1, 2, 875, 1),
(9, 4, 1, 1, 875, 1),
(9, 5, 1, 1, 543, 1),
(9, 6, 1, 1, 1620, 3),
(9, 7, 1, 1, 654.98, 1),
(10, 2, 2, 2, 1436.84, 1),
(10, 6, 2, 2, 540, 1),
(10, 4, 2, 2, 2625, 3),
(11, 15, 2, 2, 749, 1),
(11, 16, 2, 2, 399.98, 1),
(11, 5, 2, 2, 543, 1),
(12, 6, 3, 1, 540, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE `phone` (
  `phoneId` int(11) NOT NULL,
  `phoneImage` varchar(100) DEFAULT NULL,
  `phoneName` varchar(70) DEFAULT NULL,
  `phoneDiscount` double DEFAULT NULL,
  `phonePrice` double DEFAULT NULL,
  `phoneShortDescription` varchar(250) DEFAULT NULL,
  `phoneStatus` int(11) NOT NULL DEFAULT 1,
  `brandId` int(11) DEFAULT NULL,
  `phoneDetailId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`phoneId`, `phoneImage`, `phoneName`, `phoneDiscount`, `phonePrice`, `phoneShortDescription`, `phoneStatus`, `brandId`, `phoneDetailId`) VALUES
(1, 'img/phones/Apple iPhone SE.jpg', 'Apple iPhone SE (2020)', 0, 378.26, 'The Apple iPhone SE (2020) retail box contains the prehistoric 5W charger and the usual Lightning cable. We do appreciate the EarPods that are included with every iPhone, though. Two Apple logo stickers and the SIM ejector complete the SE bundle.', 1, 1, 1),
(2, 'img/phones/Apple iPhone 11 Pro Max.jpg', 'Apple iPhone 11 Pro Max', 0, 1436.84, 'The iPhone 11 Pro phones put an end to Apple\'s 3D Touch era and the Taptic Engine has assumed its role, too. Once full of potential, the 3D Touch tech was failed by Apple itself and from innovation it had become more of a burden.', 1, 1, 1),
(3, 'img/phones/Apple iPhone 11.jpg', 'Apple iPhone 11', 0, 849, 'Apple managed to squeeze a larger battery in the same body as last year - now the iPhone 11 gets a 3,110mAh battery compared to 2,942mAh unit within the XR.', 1, 1, 3),
(4, 'img/phones/Google Pixel 4 XL.jpg', 'Google Pixel 4 XL', 0, 875, 'The Google Pixel 4 duo was not Google\'s best-kept secret. We saw pictures of the phone weeks before the event, and we even learned about Face unlock while Google teased the Motion Sense features ahead of its event.', 1, 3, 4),
(5, 'img/phones/Samsung Galaxy Z Flip 5G.jpg', 'Samsung Galaxy Z Flip 5G', 0, 543, 'The Galaxy Z Flip\'s box features a dual-layered logo shaped like a \"Z\". Our Mirror Purple model showed a purple \"Z\" and after cutting the seals, we can slide the sleeve off the actual box. Now you can lift the lid off the box and see the Z Flip.', 1, 2, 5),
(6, 'img/phones/Samsung Galaxy A Quantum.jpg', 'Samsung Galaxy A Quantum', 0, 540, 'The rear camera of the smartphone consists of a 64 MP (wide) + 12 MP (ultrawide) + 5 MP (macro) + 5 MP (depth) while on the front there is a 32 MP (wide) camera for shooting selfies. ', 1, 2, 6),
(7, 'img/phones/Apple iPhone XS Max.jpg', 'Apple iPhone XS Max', 0, 654.98, 'The iPhone XS Max supports both wireless charging and fast wired charging, though obviously, you can\'t benefit from either out of the box.', 1, 1, 7),
(8, 'img/phones/Google Pixel 3 XL.jpg', 'Google Pixel 3 XL', 0, 529, 'The Pixel 3 XL is Google\'s latest flagship smartphone. It promises to bring everything we have come to expect with the Pixel brand, fast performance, quality camera and some cool software tricks that only Google can come up with.', 1, 3, 8),
(9, 'img/phones/Google Pixel 3a XL.jpg', 'Google Pixel 3a XL', 0, 299.99, 'The price in question is $400 for the Pixel 3a and $480 for the Pixel 3a XL, half of what the Pixel 3/3 XL normally cost ($800/$900).', 1, 3, 9),
(10, 'img/phones/Google Pixel 2 XL.jpg', 'Google Pixel 2 XL', 0, 525.99, 'The Pixel 2 XL\'s camera did get a bump in specs. The camera now has OIS and the aperture has been bumped to f/1.8 from last year\'s f/2.0. ', 1, 3, 10),
(11, 'img/phones/Samsung Galaxy Note10 5G.png', 'Samsung Galaxy Note10 5G', 0, 949.99, 'Galaxy Note10\'s Dynamic AMOLED screen gives you seemingly endless light and only a tiny, front-facing camera lens, so you have brilliant color in all conditions.', 1, 2, 11),
(12, 'img/phones/Samsung Galaxy Fold 5G.jpg', 'Samsung Galaxy Fold 5G', 0, 3999.99, 'For starters the box contains all the usual necessities - an 18W charger that hasn\'t been changed for years and a USB-C cable. ', 1, 2, 12),
(13, 'img/phones/Apple iPhone X.jpg', 'Apple iPhone X', 0, 699.95, 'The iPhone X gets the best of everything Apple and its providers have had in the lab. A new AMOLED HDR screen. A new steel frame.', 1, 1, 13),
(14, 'img/phones/Apple iPhone 8 Plus.jpg', 'Apple iPhone 8 Plus', 0, 539.99, 'The iPhone 8 Plus is fresh off the assembly lines, but the iPhone X is just around the corner, while the iPhone 7 Plus is still relevant and cheaper.', 1, 1, 14),
(15, 'img/phones/Apple iPhone XR.jpg', 'Apple iPhone XR', 0, 749, 'The packaging is where the iPhone XR and the iPhone XS are identical. Both include the same accessories, which feature the measly 5W charger, Lightning to USB cable', 1, 1, 15),
(16, 'img/phones/Apple iPhone 7 Plus.jpg', 'Apple iPhone 7 Plus', 0, 399.98, 'The iPhone 7 Plus comes with a more refined design, it packs even more processing power, and ups the game with a new dual-camera setup on the back.', 1, 1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `phonedetail`
--

CREATE TABLE `phonedetail` (
  `phoneDetailId` int(11) NOT NULL,
  `phoneDetailImage` varchar(100) DEFAULT NULL,
  `phoneDetailDescription` text DEFAULT NULL,
  `phoneDetailVideo` varchar(100) DEFAULT NULL,
  `phoneDetailSpecialFeatures` varchar(150) DEFAULT NULL,
  `displayId` int(11) DEFAULT NULL,
  `bodyId` int(11) DEFAULT NULL,
  `platformId` int(11) DEFAULT NULL,
  `mainCameraId` int(11) DEFAULT NULL,
  `selfieCameraId` int(11) DEFAULT NULL,
  `storageId` int(11) DEFAULT NULL,
  `batteryId` int(11) DEFAULT NULL,
  `connectionId` int(11) DEFAULT NULL,
  `commentId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phonedetail`
--

INSERT INTO `phonedetail` (`phoneDetailId`, `phoneDetailImage`, `phoneDetailDescription`, `phoneDetailVideo`, `phoneDetailSpecialFeatures`, `displayId`, `bodyId`, `platformId`, `mainCameraId`, `selfieCameraId`, `storageId`, `batteryId`, `connectionId`, `commentId`) VALUES
(1, 'img/phones/Apple iPhone SE.jpg', 'Ah, the Apple iPhone SE. The Special Edition. Even if the Smaller Edition was more appropriate. And just like the first iPhone SE, its second generation is both - Small, even if larger than the first one, and Special - as such launch happens once in four years or so. <br><br>\r\n\r\nWe are sure Apple had plans for a great premiere event last March, but COVID-19 turned everything upside down and such plans were abruptly scrapped. The new iPhone was unveiled fanfare-less on the maker\'s website, out of the blue, but it quickly became famous for being not only one of the cheapest iPhones ever made but also as one of the season\'s hottest bang for the buck offers. <br><br>\r\n\r\nApple did use the 2.5 years old iPhone 8 as a canvas in more than one way. The shell is the same, as is the screen (sans the 3D Touch layer), same front and rear cameras ergo photo and video capabilities, same stereo speakers, same battery capacity, same charging capabilities. <br><br>\r\n\r\nA thorough look reveals the iPhone SE (2020) is indeed small by today\'s standards, and while it brings features introduced more than two years ago, those are hardly outdated - the phone is water-resistant, its single camera offers numerous features such as portraits, Smart HDR and even 4K at 60 with both OIS and EIS available, while the stereo speakers are of an excellent quality that is tough to beat even to this very day. <br><br>', 'https://www.youtube.com/embed/CnSJYa3m9DM', 'Fingerprint (front-mounted), accelerometer, proximity, gyro, compass, barometer', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'img/phones/Apple iPhone 11 Pro Max.jpg', 'It\'s September and the well-oiled Apple marketing machine is in full swing yet again. Apple\'s iPhone event this fall brought us the iPhone 11 trio. And with that, we say goodbye to the iPhone XR that was replaced by the iPhone 11, and begone iPhone XS - enter iPhone 11 Pro. <br><br>\r\n\r\nThe iPhone XS series, as any other S generation, brought new Bionic chip with a massive improvement in speed. Now, with the iPhone 11 Pro lineup, Apple is going after the camera and that\'s what the Pro moniker really stands for.<br><br>\r\n\r\nThe iPhone 11 Pro and 11 Pro Max are sequels to the iPhone XS and iPhone XS Max - if there was any doubt. They are just as big, with similar designs and screens, but come with improved performance, some big camera upgrades, larger batteries, and a new Apple U1 wideband chip. Indeed, there is a lot to explore, so don\'t let the familiar looks fool you.<br><br>\r\n\r\nIndeed, the iPhone 11 Pro design stays the same, or at least that\'s what the front suggests. There is a brand-new triple-camera setup on the back though, and the rear glass now has a frosted finish that we\'ve grown to love since the OnePlus 6. The water-protection has seen some improvement too, and now the eleventh iPhones can endure submersion in up to 4 meters deep water. <br><br>\r\n\r\nThe new A13 Bionic chip is an improved version of the last year\'s A12. It sure packs even more punch, a new ISP and DSP, among other things, but it is mostly based on the A12 design.<br><br>\r\n\r\nThe new triple camera is brand new, though. Now in addition to the wide and tele shooters, there is an ultrawide snapper. Night Mode finally makes it to the iPhones, and the 4K capture at 60fps gets the cool extended dynamic range as well. Probably the most awesome feature, showing off the power of Apple\'s chip, is the option to shoot with all four cameras (incl. selfie) at once. At 4K at 60fps with no limits. Imagine that! <br><br>\r\n\r\nAnd the front camera has finally gotten its long overdue update - it is now a 12MP shooter that can shoot in all resolution and framerates as the rear snappers. Slow-mo, called slofies, is available to the front cam as well, but we are yet to see if these slofies will be become a thing or not.', 'https://www.youtube.com/embed/cVEemOmHw9Y', 'Face ID, accelerometer, gyro, proximity, compass, barometer', 2, 2, 2, 2, 2, 2, 2, 2, 2),
(3, 'img/phones/Apple iPhone 11.jpg', 'The iPhone XR was the first commercial success that came on the second attempt for making a more affordable iPhone. The iPhone 5c failed to impress in 2013, and we thought we\'d never see the maker give this idea another try. Well, last year the iPhone XR was more than well received being the best selling iPhone of the trio, so this year we welcome its sequel - the iPhone 11. <br><br>\r\n\r\nThe iPhone XR was indeed a cheaper, toned-down version of the XS generation, with an LCD screen, one camera short, and promised some excellent battery endurance. Well, when we say cheaper, we are not saying cheap, as those words mean something different in Apple\'s universe.  <br><br>\r\n\r\nBut truth be told, this year the iPhone 11 is even cheaper than the XR on launch - now priced at $700 instead of $750. The good news is that nothing has been left out and there are a few welcome additions to the low-tier iPhone.  <br><br>\r\n\r\nSo, the iPhone 11 keeps absolutely the same form factor and screen as the XR\'s. It employs the same 6.1\" IPS LCD screen with 326ppi and a notch on top that contains the Face ID tech. The screen specs are unchanged - same contrast, brightness, Haptic Touch, and whatnot.  <br><br>\r\n\r\nThe iPhone 11 boasts the new Apple A13 Bionic chip - the same SoC that powers the flagship iPhone 11 Pro duo. It also gets a second camera, and it\'s the new 12MP ultra wide-angle snapper, also brought from the Pro models. Features like Crop Out of Frame are available as well, and also shooting 4K videos with all cameras at once.  <br><br>\r\n\r\nApple iPhone 11 review\r\nThe new 12MP selfie camera has made it to the iPhone 11, too. It\'s another 12MP shooter with 23mm wide lens, and it can do regular 4K clips at 60fps, or 4K at 30fps videos with expanded dynamic range. Cinematic stabilization is available on the front cam on all modes. <br><br>\r\n\r\nApple managed to squeeze a larger battery in the same body as last year - now the iPhone 11 gets a 3,110mAh battery compared to 2,942mAh unit within the XR. <br><br>\r\n\r\nThe iPhone 11 supports 18W charging, but it is not bundled with a fast charger in the box as the Pro models. <br><br>\r\n\r\nSo, a new camera and new chip, among some new cool software tricks, are what\'s new in the iPhone 11 over the XR. Oh, and Apple is offering the 11 in some new colors like Green and Purple (the latter we have here for review). <br><br>', 'https://www.youtube.com/embed/hVpkbiQ9E4c', 'Face ID, accelerometer, gyro, proximity, compass, barometer', 3, 3, 3, 3, 3, 3, 3, 3, NULL),
(4, 'img/phones/Google Pixel 4 XL.jpg', 'The Google Pixel 4 duo was not Google\'s best-kept secret. We saw pictures of the phone weeks before the event, and we even learned about Face unlock while Google teased the Motion Sense features ahead of its event. The Google Pixel 4 XL represents everything that Google has learned in the first four iterations of the Google Pixel, including a mid-cycle and mid-range Pixel 3a which was very well received.\r\nThe Pixel 4 XL improves the camera even further, adding a new Astrophotography shooting mode and a viewfinder that will preview the HDR+ effect before you shoot the picture. There\'s also a new telephoto camera that, when combined with Super Res Zoom, can capture images from far away.\r\nGoogle first introduced the fingerprint scanner on its final generation of Nexus devices, the 6P and 5X. With the Pixel 4 and 4 XL, Google is replacing its \"Pixel Imprint\" with Face unlock. It works similarly to Apple\'s Face unlock and is a whole new concept for Google-branded devices.', 'https://www.youtube.com/embed/CGd_gzutdi8', 'Sensors : Face ID, accelerometer, gyro, proximity, compass, barometer', 4, 4, 4, 4, 4, 4, 4, 4, NULL),
(5, 'img/phones/Samsung Galaxy Z Flip 5G.jpg', 'Samsung wowed everyone last year when it introduced the Galaxy Fold. Sure, it took a few months to figure out the kinks after the first batch of units saw some fatal manufacturing defects. Once figured out, though, the Galaxy Fold turned out to be one of those milestone devices that would change the industry forever. <br><br>\r\n\r\nThe Galaxy Z Flip is Samsung\'s second-generation folding device, and the company\'s first-generation Galaxy Z product. In both cases, the Galaxy Z Flip is a unique device - combining the nostalgic form factor from almost two decades ago with the brilliance of Samsung\'s second-generation Hideaway Hinge and flexible display technology.<br><br>\r\n\r\nSamsung Galaxy Z Flip review\r\nThe AMOLED screen has a punch hole cut-out for the 10MP selfie camera and the dual 12MP cameras look promising. The Z Flip also keeps some of the flagship Galaxy\'s charging features like wireless charging and Power Share (reverse wireless charging). The 3,300 mAh battery seems a bit small, though.<br><br>\r\n\r\nSamsung Galaxy Z Flip review\r\nThe Galaxy Z Flip sees a couple of improvements in the hinge, as well as a new protective material in front of the display which Samsung calls \"UTG\" or Ultra Thin Glass. This glass is protected by the same polymer material as the Galaxy Fold so it\'s still not as scratch resistant as your typical Gorilla Glass handset.<br><br>\r\n\r\nThe Galaxy Fold\'s specs aren\'t groundbreaking, but they are certainly not midrange by any means. It\'s running the 2019 Snapdragon 855+ with 8GB of RAM and 256GB of storage - so it\'s basically a flagship Samsung Galaxy phone on the inside.', 'https://www.youtube.com/embed/XIHtB9A7HPU', 'Fingerprint (side-mounted), accelerometer, gyro, proximity, compass, barometer', 5, 5, 5, 5, 5, 5, 5, 5, NULL),
(6, 'img/phones/Samsung Galaxy A Quantum.jpg', 'The dimension of the smartphone is 162.5 x 75.5 x 8.1 mm and it weighs 185 grams. The smartphone has a Super AMOLED capacitive touchscreen providing 1080 x 2400 pixels resolution with 393 PPI density. The screen is also protected with Corning Gorilla Glass 3.<br><br>\r\n\r\nThe rear camera of the smartphone consists of a 64 MP (wide) + 12 MP (ultrawide) + 5 MP (macro) + 5 MP (depth) while on the front there is a 32 MP (wide) camera for shooting selfies. The smartphone is available in various color options such as Prism Cube Black, Prism Cube Sliver, and Prism Cube Blue.<br><br>\r\n\r\nThe Samsung Galaxy A Quantum is powered by the Exynos 980 (8 nm), QRNG security chipset Octa-core processor. The smartphone is fueled with a non-removable Li-Po 4500 mAh battery + Fast battery charging 25W.\r\n\r\nThe sensors include Fingerprint (under display, optical), accelerometer, gyro, proximity, and compass. Additionally, it features Bluetooth 5.0, GPS with  A-GPS, GLONASS, GALILEO, BDS, USB, and a 3.5mm jack.<br><br>\r\n\r\nThe device is pack with 8 GB RAM with 128 GB internal storage options which can be extended with the help of microSDXC (dedicated slot).', 'https://www.youtube.com/embed/6J2NTvu8Y7w', 'Fingerprint (under display, optical), accelerometer, gyro, proximity, compass, ANT+', 6, 6, 6, 6, 6, 6, 6, 6, NULL),
(7, 'img/phones/Apple iPhone XS Max.jpg', 'The iPhone X was not just a milestone for Apple. It also turned out to be the cornerstone the next generation of iPhones is being built around. And while the anniversary iPhone wowed everyone, many people voiced their wish for a Plus size model after the excitement had worn off. And this year Apple is righting this wrong with the iPhone XS Max. <br><br>\r\n\r\nApple iPhone XS Max reviewApple iPhone XS and XS Max\r\nWe have to admit we used all of our jokes on the iPhone XS review. But coming up with the iPhone XS Max name is probably the biggest joke anyway. Two letters, but one is a Roman numeral - we learned to deal with that. But the Max moniker after the XS name, well, this is funny everywhere on the globe.<br><br>\r\n\r\nThe iPhone XS Max is a wish come true for all of you who wanted an X Plus. The Max has a massive 6.5\" bezel-less OLED display, the fastest chipset on the planet, an improved dual-camera, louder speakers, and the largest battery the iPhones have seen to date.<br><br>\r\n\r\nApple iPhone XS Max reviewApple iPhone XS Max in the new Gold color\r\nThe iPhone XS didn\'t seem to pack enough punch to make a reasonable iPhone user upgrade, but the Max is an entirely different story. If you wanted an X with a bigger screen you\'ve probably pre-ordered and you have a tracking number in your mailbox already.<br><br>\r\n\r\nNobody doubted that a bigger iPhone would have costed more. But the iPhone XS Max is not just the most expensive iPhone yet. It\'s the most expensive smartphone there is right now. And despite what we\'d expect, this didn\'t turn down the fans, quite the opposite - the iPhone XS Max is massively outselling the XS.', 'https://www.youtube.com/embed/VtFc-5hviPY', 'Face ID, accelerometer, gyro, proximity, compass, barometer', 7, 7, 7, 7, 7, 7, 7, 7, 4),
(8, 'img/phones/Google Pixel 3 XL.jpg', 'The Pixel 3 XL is Google\'s latest flagship smartphone. It promises to bring everything we have come to expect with the Pixel brand, including a clean build of Android, fast performance, quality camera and some cool software tricks that only Google can come up with. <br><br>\r\n\r\nGoogle Pixel 3 XL review\r\nThis year\'s launch has been mired in controversy. While the Pixel devices are no strangers to controversy, the Pixel 3 XL got its fair share even before the device was launched. Much of it had to do with the design of the phone, which, admittedly, isn\'t Google\'s finest work. <br><br>\r\n\r\nApart from that, we don\'t see a lot to complain about. On paper, the Pixel 3 XL comes across as a proper flagship smartphone. There are a few things that bother us, such as the 4GB memory and storage options that max out at 128GB, but we will have to wait and see if those present any issues later.<br><br>\r\n\r\nOverall, though, we are looking forward to diving into this phone. Pixel phones are always exciting, as they are a lot more than just hardware specifications, and Google is big on using software to work smarter, not harder. But, it\'s 2018, and you need both good software and hardware if you need to stand out. And considering the price Google charges for these things, we hope the Pixel 3 XL blows us away on both fronts.', 'https://www.youtube.com/embed/EeFqcmaw6iA', 'Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass, barometer', 8, 8, 8, 8, 8, 8, 8, 8, NULL),
(9, 'img/phones/Google Pixel 3a XL.jpg', 'The Pixel 3a is Google\'s attempt to return to the affordable premium smartphone category. After sunsetting the Nexus program, Google moved on to the ultra-high-end segment with the launch of the original Pixel back in 2016. <br><br>\r\n\r\nSince then, the company has only received a lukewarm response from the audience, many of whom were miffed that Google moved on from something that was accessible to something that mostly served as a marketing vehicle. <br><br>\r\n\r\nGoogle Pixel 3a Xl review<br>\r\nThe Pixel 3a, however, is not a Nexus. The lack of obvious naming difference aside, what we have here is not a premium smartphone at an affordable price, which is what the Nexus brand signified. Instead, what we are getting is a pared-down version of the Pixel 3 that was launched last year at a correspondingly lower price. <br><br>\r\n\r\nThe price in question is $400 for the Pixel 3a and $480 for the Pixel 3a XL, half of what the Pixel 3/3 XL normally cost ($800/$900). So, what do we lose in return for that price? There are design compromises, the processor is slower and one of the front cameras is missing along with a few other things. On paper, that doesn\'t seem all that bad, especially since Google has carried over the main rear camera of the Pixel 3 to the Pixel 3a. The software experience is identical too, with almost every feature announced for the Pixel 3 present here.<br><br>\r\n\r\nSeems like a fair trade-off, then. But how is the phone like to actually use on a day to day basis? And how does it compete in the even more crowded premium mid-range smartphone market, especially on the eve of OnePlus\' upcoming smartphone, which will likely have similar pricing and pack in more hardware as usual? We decided to find out.', 'https://www.youtube.com/embed/eEHEeH21pvw', 'Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass, barometer', 9, 9, 9, 9, 9, 9, 9, 9, NULL),
(10, 'img/phones/Google Pixel 2 XL.jpg', 'Google has come a long way since the days of Nexus smartphones. This is only the second iteration of the Google Pixel and it shows how much Google\'s software and hardware have evolved in the past year. Both Pixel smartphones got a refined, yet simpler appearance. This review is specifically for the larger Pixel 2 XL. We\'ll be reviewing the smaller Pixel 2 separately. <br><br>\r\n\r\nThis model has a couple of differences over the smaller Pixel 2. For starters, the Pixel 2 XL has a larger 6-inch display with the 18:9 aspect ratio of display that has taken 2017 by storm. This, and the Pixel 2 XL gets a 21% larger battery than the 5-inch Pixel 2. <br><br>\r\n\r\nGoogle offers the latest Qualcomm processor on both Pixels, along with its powerful HDR+ algorithm for taking photos. Combine these with Google\'s unparalleled Android experience, not to mention Google\'s unlimited photo storage with its official Photos app, and software updates directly from Google. <br><br>\r\n\r\nIs this, however, enough to get Android purists on-board with the Google\'s best vanilla Android Experience? That\'ll all depend on how much purists are willing to pay for such an experience, which starts at $850 in the US, and might soar even higher in other markets.<br><br>\r\n\r\nThe Pixel 2 XL\'s camera did get a bump in specs. The camera now has OIS and the aperture has been bumped to f/1.8 from last year\'s f/2.0. The real magic happens, though, thanks to Google\'s HDR+ algorithm, which gathered high praise with the first-gen Pixels. We are definitely excited to see what kind of images the new Pixels can capture. Google poked fun at Apple during the launch event saying it didn\'t reserve the better camera for the more expensive model. Both Pixels get identical cameras. And perhaps that must not have been easy as the two phones are manufactured by different companies.', 'https://www.youtube.com/embed/S2f7YYMLqFk', 'Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass, barometer', 10, 10, 10, 10, 10, 10, 10, 10, NULL),
(11, 'img/phones/Samsung Galaxy Note10 5G.png', 'Samsung, after years of touting its ability to design a phone that keeps the headphone jack and still give users everything they want, and yet the Galaxy Note 10 has ditched the headphone jack. <br><br>\r\n\r\nThe display on the Galaxy Note 10 features a single cutout, or hole punch, located in the middle of the screen near the top. That hole is for the front-facing camera, taking up as little space as possible. <br><br>\r\n\r\nGorgeous Galaxy Note 10 Plus: A 6.8-inch phone that kills the headphone jack CNET<br><br>\r\nOverall, the Galaxy Note 10 and Galaxy Note 10 Plus are thinner and lighter than the Note 9, and despite having a larger display, the Galaxy Note 10 Plus is only slightly taller than the Note 9 thanks to the new display. <br><br>\r\n\r\nAlong with ditching the headphone jack, Samsung has also done away with a dedicated Bixby button on the Galaxy Note 10. Instead, the sleep/wake button will double as a way to activate Bixby -- similar to how iPhone XS users activate Siri -- with a long-press. <br><br>\r\n\r\nOn the back of the Galaxy Note 10, you\'ll now find three different cameras, similar to the Galaxy S10 Plus. The three cameras add difference field-of-view options, and new AR features. There is no fingerprint sensor on the back of the Galaxy Note 10. ', 'https://www.youtube.com/embed/xv2qZAzFumI', 'Fingerprint (under display, ultrasonic), Samsung DeX (desktop experience support), Bixby natural language commands and dictation', 11, 11, 11, 11, 11, 11, 11, 11, NULL),
(12, 'img/phones/Samsung Galaxy Fold 5G.jpg', 'The Galaxy Fold was the \"one more thing\" at Samsung\'s MWC event this year and what a thing it was! A smartphone with a massive foldable AMOLED screen, a second AMOLED on the outside for mundane tasks, a bunch of trendy cameras all over - these wrapped within a unique body with a sophisticated hinge. And being a first of its kind, the Galaxy Fold promised one thing - to show you the future if you are ready to pay the price - and a steep price it is. <br><br>\r\n\r\nThe foldable handsets, once known as flip-phones or clamshells, have been around for years, though lately, they\'ve been out of commission. Not anymore though. While Xiaomi and Motorola were experimenting with sliders Samsung has taken a different path, one that was charted way back in 2013 when the maker launched the one and done Galaxy Round with a flexible display. But while both LG and Samsung tried to play the flexible card, it wasn\'t the thing the users wanted. But if you can flex it, why not fold it, right? <br><br>\r\n\r\nSamsung Galaxy Fold review\r\nFast-forward five and a half years and we are holding the gadget we really wanted back in 2013 - a foldable smartphone. But the one and done curse may just be striking again, as by the time we finished this review Samsung had already recalled all Galaxy Fold units because of broken screens and postponed the launch for an unknown period of time. <br><br>\r\n\r\nThe good news is Huawei Mate X is just around the corner and Samsung might be pressured to fix the Galaxy Fold. But the Galaxy Note7 fiasco was not so long ago and Samsung may decide not to risk another one and cuts its losses. <br><br>\r\n\r\nSamsung Galaxy Fold review\r\nAnyway, whatever happens, we are here to give you a glimpse of what\'s coming or what could have been. Either way, the Galaxy Fold is an incredible piece of technology worthy of experiencing. Because it might be the next big thing, whether it goes on sale or not. <br><br>\r\n\r\nThe Galaxy Fold employs every cutting-edge piece of technology available on a smartphone - the most current Snapdragon 855 chip, enhanced with 12GB of RAM, a half a terabyte of teh fastest flash storage there is, a triple camera on the back, a dual-camera on the inside, and even an extra autofocus selfie camera on the outside. There is also a large battery, a ton of connectivity options, stereo speakers, and whatnot. <br><br>\r\n\r\nThe one thing the Galaxy Fold can\'t do is withstand water. But it would have been a second technology miracle to capsulate the phone against water. <br><br>\r\n\r\nBut before we unfold the Galaxy Fold, and we promise the puns end here, let\'s see what\'s in its box.', 'https://www.youtube.com/embed/3xs3_S8BroE', 'Bixby natural language commands and dictation, Samsung DeX (desktop experience support), Fingerprint (side-mounted)', 12, 12, 12, 12, 12, 12, 12, 12, NULL),
(13, 'img/phones/Apple iPhone X.jpg', 'The anniversary iPhone is here. The iPhone X. Or the iPhone 10. The name is as confusing as the product itself is game-changing. Tim Cook\'s vision finally overwhelmed Steve Jobs ideological remnants. A new dawn for the iPhones has begun, free of the iconic Home key and the notorious screen bezels.<br><br>\r\n\r\nThese past ten years of iPhones has contributed a lot to the industry\'s development - the capacitive touchscreen, the glass design, the fingerprint scanner, the force press, the portrait mode. We\'ve seen Apple push the envelope each time by putting obscure technological breakthroughs in the hands of millions. And now they\'ve done it yet again.\r\n<br><br>\r\n\r\nThe Face ID. Once a software gimmick, Apple has made it the next-step in biometric security. The company was so sure in its capabilities that it immediately retired the Touch ID. The Face ID sensor also made possible a new level of selfies and incredible accurate facial expression tracking with the Animojis. A little nudge capable of pushing the whole industry.<br><br>\r\n\r\nApple iPhone X reviewThe iPhone X next to the iPhone 4s\r\nAnd of course, the bezel-less screen. Dropping the huge bezels alone was enough, but Apple went all in with an all-screen for the iPhone X. Moreover, an AMOLED one, how about that?! Rightfully deserved, especially for a special edition smartphone such as the X. Or the 10. It takes time to get used to the sound of it. We\'re way more used to seeing the letter rather than the number when it comes to phone names through the years.<br><br>\r\n\r\nThe iPhone X gets the best of everything Apple and its providers have had in the lab. A new AMOLED HDR screen. A new steel frame. A new camera with dual optical stabilization. The best chipset on the market. A new front camera with depth-detection. Wireless charging. All that at the expense of a little notch.<br><br>\r\n\r\nSome say the iPhone X screen is a notch bigger than the iPhone 8\'s and they aren\'t far away from the truth. And the notch itself may be annoyingly obvious at times, for sure. But it\'s not the name you have to remember, but the new iOS gestures with a steep learning curve and questionable logic.<br><br>\r\n\r\nApple iPhone X review\r\nThe history does not only remember Apple for its technological pushes, but also for some aggressive, ahead-of-the-curve cuts such as the analog jack, the memory expansion, and the non-removable battery to name a few. And now, the fingerprint sensor.<br><br>\r\n\r\nExit iPhone 8, enter iPhone X. It\'s time to see what Apple worked on in complete secrecy this past year. As we\'re bidding farewell to a cherished past, what does the future hold for us? Let\'s meet the X.', 'https://www.youtube.com/embed/mBBPkVbH-B4', 'Siri natural language commands and dictation', 13, 13, 13, 13, 13, 13, 13, 13, NULL),
(14, 'img/phones/Apple iPhone 8 Plus.jpg', 'In another place and another time, the Apple iPhone 8 Plus would have been one of the hottest things around. Swathed in hype, causing a stir, bringing the free ride of the competition\'s flagships to an abrupt and painful halt.<br><br>\r\n\r\nThis turbo-powered, glass-clad, sharp-shooting and fast-charging piece of a smartphone classic seems to have everything. Except... time. No, it\'s not going anywhere. It\'s just that its days as one of the hottest things around are numbered. Now, we\'re sure you know what we mean, so let\'s slow down and start over. Time isn\'t always a luxury - just don\'t tell this to an iPhone 8 Plus.<br><br>\r\n\r\nThe 8 series is about to leave generations of iPhones behind. It\'s been ten years of refining the visionary iPhone. We saw it grow bigger, better, more durable, more powerful. Apple kept adding more screen real estate, more processing power and advanced camera features. In spite of all novelties, the iPhone essence was always there, underneath the fancy add-ons. Now, that\'s about to change.<br><br>\r\n\r\nApple isn\'t just on the verge of breaking clean from the past. The future has already begun with the iPhone 8 and 8 Plus. But it doesn\'t belong to them.<br><br>\r\n\r\nBack to the here and now, the Apple iPhone 8 Plus comes across as the usual incremental upgrade. The 8 Plus gets to keep its overall styling but swaps aluminum for glass and finally gets wireless charging. The new A11 Bionic chipset boasts an extra two power-efficient cores and, for the first time ever, an in-house GPU. Then the base iPhone storage has been doubled and now starts at 64GB.<br><br>\r\n\r\nBrowsing the camera specs leave the wrong impression of copy and paste from the iPhone 7 Plus, when in fact both of the dual 12MP sensors have bigger pixels, backed by a superior flash and an exclusive new Portrait Lightning mode, which hopes to make the portrait shots look even better.<br><br>\r\n\r\nFinally, the screen size and resolution might be the same, but Apple has added HDR10 and Dolby Vision support, as well as iPad\'s True Tone color adjustment for life-like color presentation.', 'https://www.youtube.com/embed/7VrZ5NeCjgI', 'Siri natural language commands and dictation', 14, 14, 14, 14, 14, 14, 14, 14, NULL),
(15, 'img/phones/Apple iPhone XR.jpg', 'The iPhone XR is the third iPhone to be launched this year, after the iPhone XS and the iPhone XS Max. While the two iPhone XS models are nearly identical save for the size, the iPhone XR is a significant departure for the iPhone X series and possibly a new chapter going forward.<br><br>\r\n\r\nWhen Phil Schiller introduced the iPhone XR, he said Apple wanted to bring the technology and the experience of the iPhone XS to as many customers as possible, and the iPhone XR is Apple\'s solution to that. It aims to bring the design, features and much of the experience of the iPhone XS at a lower price.<br><br>\r\n\r\nFor starters, the iPhone XR starts at $749, which is $250 less than the base iPhone XS. So, what do you have to give up to get that price? There\'s now a lower resolution LCD, the body is thicker and heavier and made out of aluminum, and there\'s only one camera on the back.<br><br>\r\n\r\niPhone XR review\r\nWhat you still get is the same general iPhone X series design, the same powerful A12 Bionic chipset from the XS, the same TrueDepth camera with the faster Face ID system and the single camera on the back is the same as the main 12MP sensor on the back of the XS.<br><br>\r\n\r\nTo make things more interesting, the iPhone XR also comes in six colors, the most Apple has ever had for any iPhone.', 'https://www.youtube.com/embed/2NxHpieijOQ', 'Face ID, accelerometer, gyro, proximity, compass, barometer', 15, 15, 15, 15, 15, 15, 15, 15, 3),
(16, 'img/phones/Apple iPhone 7 Plus.jpg', 'The iPhone 7 Plus hardly needs an introduction. Apple\'s latest always get the attention no matter how much or how little the company has changed. An aura of controversy has always been part of Apple\'s marketing and some might argue that the polarized opinions actually work in their favor.<br><br>\r\n\r\nAnd the iPhone 7 duo tops the polarizing scale this season thanks to ditching the standard audio jack and the iconic hardware key. It seems this doesnât get in the way of the iPhone providing superb performance and superb user experience for yet another year in a row. Weâve already brought you the iPhone 7 review, and now itâs time for its bigger sibling.<br><br>\r\n\r\nCompared to its predecessor, the iPhone 7 Plus comes with a more refined design, it packs even more processing power, and ups the game with a new dual-camera setup on the back. And while the 7+ isn\'t the first to slap two snappers next to each other, it is the first to attach telephoto lens onto one of these.<br><br>\r\n\r\nAnd did we mention itâs waterproof now? The iPhone 7 Plus is certainly a nice upgrade over the 6s Plus even if, the design and screen bezels are the same for the third year in a row.<br><br>\r\n\r\nIndeed, a lot has changed since last year, but you can tell Apple is holding something back. Whether the company is keeping its best game for the iPhone\'s tenth anniversary next year, or just don\'t want to give it all at once, it doesn\'t really matter. If it weren\'t for the new Black editions, you can hardly tell the new iPhones from the previous generation. Same shape, same looks, same big screen bezels.<br><br>\r\n\r\nApple iPhone 7 Plus review\r\nThe list of omissions is shrinking with each year, but it\'s still far from a short one. But then again, opting for Apple has its ups and downs, and the latter don\'t come cheap. In order to keep iOS free of bugs, glitches, and throttles, Apple still poses lots of restrictions to both developers and users.<br><br>\r\n\r\nBut these are hardly a surprise to anyone, so let\'s not dwell on what can\'t be changed right now. Stays with us right after the break to see what\'s new, what got better, and what\'s gone for good.', 'https://www.youtube.com/embed/aEh0cJCwmTc', 'Fingerprint (front-mounted), accelerometer, gyro, proximity, compass, barometer', 16, 16, 16, 16, 16, 16, 16, 16, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `platform`
--

CREATE TABLE `platform` (
  `platformId` int(11) NOT NULL,
  `platformOS` varchar(100) DEFAULT NULL,
  `platformChipset` varchar(150) DEFAULT NULL,
  `platformCPU` varchar(150) DEFAULT NULL,
  `platformGPU` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `platform`
--

INSERT INTO `platform` (`platformId`, `platformOS`, `platformChipset`, `platformCPU`, `platformGPU`) VALUES
(1, 'iOS 13', 'Apple A13 Bionic (7 nm+)', 'Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)', 'Apple GPU (4-core graphics)'),
(2, 'iOS 13, upgradable to iOS 13.6', 'Apple A13 Bionic (7 nm+)', 'Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)', 'Apple GPU (4-core graphics)'),
(3, 'iOS 13, upgradable to iOS 13.6', 'Apple A13 Bionic (7 nm+)', 'Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)', 'Apple GPU (4-core graphics)'),
(4, 'Android 10', 'Qualcomm SM8150 Snapdragon 855 (7 nm)', 'Octa-core (1x2.84 GHz Kryo 485 & 3x2.42 GHz Kryo 485 & 4x1.78 GHz Kryo 485)', 'Adreno 640'),
(5, 'Android 10, One UI 2', 'Qualcomm SM8250 Snapdragon 865+ (7 nm+)', 'Octa-core (1x3.09 GHz Kryo 585 & 3x2.40 GHz Kryo 585 & 4x1.80 GHz Kryo 585)', 'Adreno 650'),
(6, 'Android 10, One UI 2', 'Exynos 980 (8 nm), QRNG security chipset', 'Octa-core (2x2.2 GHz Cortex-A77 & 6x1.8 GHz Cortex A55)', 'Mali-G76 MP5'),
(7, 'iOS 12, upgradable to iOS 13.6', 'Apple A12 Bionic (7 nm)', 'Hexa-core (2x2.5 GHz Vortex + 4x1.6 GHz Tempest)', 'Apple GPU (4-core graphics)'),
(8, 'Android 9.0 (Pie), upgradable to Android 10', 'Qualcomm SDM845 Snapdragon 845 (10 nm)', 'Octa-core (4x2.5 GHz Kryo 385 Gold & 4x1.6 GHz Kryo 385 Silver)', 'Adreno 630'),
(9, 'Android 9.0 (Pie), upgradable to Android 10', 'Qualcomm SDM670 Snapdragon 670 (10 nm)', 'Octa-core (2x2.0 GHz 360 Gold & 6x1.7 GHz Kryo 360 Silver)', 'Adreno 615'),
(10, 'Android 8.0 (Oreo), upgradable to Android 10', 'Qualcomm MSM8998 Snapdragon 835 (10 nm)', 'Octa-core (4x2.35 GHz Kryo & 4x1.9 GHz Kryo)', 'Adreno 540'),
(11, 'Android 9.0 (Pie), planned upgrade to Android 10, One UI 2', 'Exynos 9825 (7 nm) - EMEA/LATAM, Qualcomm SM8150 Snapdragon 855 (7 nm) - USA/China', 'Octa-core (2x2.73 GHz Mongoose M4 & 2x2.4 GHz Cortex-A75 & 4x1.9 GHz Cortex-A55) - EMEA/LATAM', 'Mali-G76 MP12 - EMEA/LATAM, Adreno 640 - USA/China'),
(12, 'Android 9.0 (Pie), upgradable to Android 10, One UI 2.1', 'Qualcomm SM8150 Snapdragon 855 (7 nm)', 'Octa-core (1x2.84 GHz Kryo 485 & 3x2.42 GHz Kryo 485 & 4x1.78 GHz Kryo 485)', 'Adreno 640'),
(13, 'iOS 11.1.1, upgradable to iOS 13.6', 'Apple A11 Bionic (10 nm)', 'Hexa-core 2.39 GHz (2x Monsoon + 4x Mistral)', 'Apple GPU (three-core graphics)'),
(14, 'iOS 11, upgradable to iOS 13.6', 'Apple A11 Bionic (10 nm)', 'Hexa-core (2x Monsoon + 4x Mistral)', 'Apple GPU (three-core graphics)'),
(15, 'iOS 12, upgradable to iOS 13.6', 'Apple A12 Bionic (7 nm)', 'Hexa-core (2x2.5 GHz Vortex + 4x1.6 GHz Tempest)', 'Apple GPU (4-core graphics)'),
(16, 'iOS 10.0.1, upgradable to iOS 13.6', 'Apple A10 Fusion (16 nm)', 'Quad-core 2.34 GHz (2x Hurricane + 2x Zephyr)', 'PowerVR Series7XT Plus (six-core graphics)');

-- --------------------------------------------------------

--
-- Table structure for table `selfiecamera`
--

CREATE TABLE `selfiecamera` (
  `selfieCameraId` int(11) NOT NULL,
  `selfieCameraResolution` varchar(150) DEFAULT NULL,
  `selfieCameraFeatures` varchar(150) DEFAULT NULL,
  `selfieCameraVideo` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `selfiecamera`
--

INSERT INTO `selfiecamera` (`selfieCameraId`, `selfieCameraResolution`, `selfieCameraFeatures`, `selfieCameraVideo`) VALUES
(1, '7 MP, f/2.2', 'Face detection, HDR, panorama', '1080p@30fps; gyro-EIS'),
(2, '12 MP, f/2.2, 23mm (wide), SL 3D, (depth/biometrics sensor)', 'HDR', '4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS'),
(3, '12 MP, f/2.2, 23mm (wide), SL 3D, (depth/biometrics sensor)', 'HDR', '4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS'),
(4, '8 MP, f/2.0, 22mm (wide), 1.22ÃÂÃÂÃÂÃÂµm, no AF TOF 3D, (depth/biometrics sensor)', 'Auto-HDR', '1080p@30fps'),
(5, '10 MP, f/2.4, 26mm (wide), 1.22Âµm', 'HDR', '4K@30fps'),
(6, '32 MP, f/2.2, 26mm (wide), 1/2.8\", 0.8Âµm', 'HDR', '1080p@30fps'),
(7, '7 MP, f/2.2, 32mm (standard)', 'HDR', '1080p@30/60fps, gyro-EIS'),
(8, '8 MP, f/1.8, 28mm (wide), PDAF', 'Auto-HDR', '1080p@30fps'),
(9, '8 MP, f/2.0, 24mm (wide), 1/4\", 1.12Âµm', 'HDR', '1080p@30fps'),
(10, '8 MP, f/2.4, 25mm (wide), 1/3.2\", 1.4Âµm', 'HDR', '1080p@30fps'),
(11, '10 MP, f/2.2, 26mm (wide), 1/3\", 1.22Âµm, Dual Pixel PDAF', 'Dual video call, Auto-HDR', '4K@30fps'),
(12, '10 MP, f/2.2, 26mm (wide), 8 MP, f/1.9, 24mm (wide), 10 MP, f/2.2, 26mm (wide)', 'HDR', '4K@30fps, 1080p@30fps, gyro-EIS'),
(13, '7 MP, f/2.2, 32mm (standard), SL 3D, (depth/biometrics sensor)', 'HDR', '1080p@30fps'),
(14, '7 MP, f/2.2, 32mm (standard)', 'Face detection, HDR', '1080p@30fps'),
(15, '7 MP, f/2.2, 32mm (standard)', 'HDR', '4K@30fps'),
(16, '7 MP, f/2.2, 32mm (standard)', 'Face detection, HDR', '1080p@30fps');

-- --------------------------------------------------------

--
-- Table structure for table `shipper`
--

CREATE TABLE `shipper` (
  `shipperId` int(11) NOT NULL,
  `shipperName` varchar(30) DEFAULT NULL,
  `shipperPhone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shipper`
--

INSERT INTO `shipper` (`shipperId`, `shipperName`, `shipperPhone`) VALUES
(1, 'Nguyen Vu Khang', '0129384756'),
(2, 'Truong Nhat Nam', '0987654678'),
(3, 'Nguyen Quoc An', '0347593840');

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE `storage` (
  `storageId` int(11) NOT NULL,
  `storageRAM` int(11) DEFAULT NULL,
  `storageInternal` int(11) DEFAULT NULL,
  `storageExternal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `storage`
--

INSERT INTO `storage` (`storageId`, `storageRAM`, `storageInternal`, `storageExternal`) VALUES
(1, 3, 64, 0),
(2, 4, 512, 0),
(3, 4, 256, 0),
(4, 8, 128, 0),
(5, 8, 256, 0),
(6, 8, 128, 0),
(7, 4, 512, 0),
(8, 4, 128, 128),
(9, 4, 64, 0),
(10, 4, 128, 256),
(11, 8, 256, 256),
(12, 12, 512, 1024),
(13, 3, 256, 0),
(14, 3, 245, 0),
(15, 3, 256, 0),
(16, 3, 256, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `userPassword` varchar(32) DEFAULT NULL,
  `userRole` varchar(10) DEFAULT NULL,
  `userStatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `userName`, `userPassword`, `userRole`, `userStatus`) VALUES
(1, 'admin', '865bedd2fba8fe20b828ed07600c64a4', 'admin', 1),
(2, 'phucthinhbach', '202cb962ac59075b964b07152d234b70', 'customer', 1),
(3, 'nguyensonhao', '202cb962ac59075b964b07152d234b70', 'staff', 1),
(4, 'truongnhatnam', '202cb962ac59075b964b07152d234b70', 'staff', 1),
(5, 'minhtin', '202cb962ac59075b964b07152d234b70', 'customer', 1),
(6, 'nguyentranquanghien', '202cb962ac59075b964b07152d234b70', 'staff', 1),
(7, 'huaquocvinh', '202cb962ac59075b964b07152d234b70', 'customer', 1),
(8, 'tin', '202cb962ac59075b964b07152d234b70', 'customer', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `battery`
--
ALTER TABLE `battery`
  ADD PRIMARY KEY (`batteryId`);

--
-- Indexes for table `body`
--
ALTER TABLE `body`
  ADD PRIMARY KEY (`bodyId`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`commentId`),
  ADD KEY `customerId` (`customerId`);

--
-- Indexes for table `connection`
--
ALTER TABLE `connection`
  ADD PRIMARY KEY (`connectionId`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerId`),
  ADD UNIQUE KEY `customerEmail` (`customerEmail`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `display`
--
ALTER TABLE `display`
  ADD PRIMARY KEY (`displayId`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `maincamera`
--
ALTER TABLE `maincamera`
  ADD PRIMARY KEY (`mainCameraId`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `phoneId` (`phoneId`),
  ADD KEY `customerId` (`customerId`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD KEY `orderId` (`orderId`),
  ADD KEY `phoneId` (`phoneId`),
  ADD KEY `shipperId` (`shipperId`),
  ADD KEY `employeeId` (`employeeId`);

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`phoneId`),
  ADD KEY `phoneDetailId` (`phoneDetailId`),
  ADD KEY `brandId` (`brandId`);

--
-- Indexes for table `phonedetail`
--
ALTER TABLE `phonedetail`
  ADD PRIMARY KEY (`phoneDetailId`),
  ADD KEY `displayId` (`displayId`),
  ADD KEY `bodyId` (`bodyId`),
  ADD KEY `platformId` (`platformId`),
  ADD KEY `mainCameraId` (`mainCameraId`),
  ADD KEY `selfieCameraId` (`selfieCameraId`),
  ADD KEY `storageId` (`storageId`),
  ADD KEY `batteryId` (`batteryId`),
  ADD KEY `connectionId` (`connectionId`),
  ADD KEY `commentId` (`commentId`);

--
-- Indexes for table `platform`
--
ALTER TABLE `platform`
  ADD PRIMARY KEY (`platformId`);

--
-- Indexes for table `selfiecamera`
--
ALTER TABLE `selfiecamera`
  ADD PRIMARY KEY (`selfieCameraId`);

--
-- Indexes for table `shipper`
--
ALTER TABLE `shipper`
  ADD PRIMARY KEY (`shipperId`);

--
-- Indexes for table `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`storageId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `battery`
--
ALTER TABLE `battery`
  MODIFY `batteryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `body`
--
ALTER TABLE `body`
  MODIFY `bodyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `commentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `connection`
--
ALTER TABLE `connection`
  MODIFY `connectionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `display`
--
ALTER TABLE `display`
  MODIFY `displayId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employeeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `maincamera`
--
ALTER TABLE `maincamera`
  MODIFY `mainCameraId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `phone`
--
ALTER TABLE `phone`
  MODIFY `phoneId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `phonedetail`
--
ALTER TABLE `phonedetail`
  MODIFY `phoneDetailId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `platform`
--
ALTER TABLE `platform`
  MODIFY `platformId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `selfiecamera`
--
ALTER TABLE `selfiecamera`
  MODIFY `selfieCameraId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `shipper`
--
ALTER TABLE `shipper`
  MODIFY `shipperId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `storage`
--
ALTER TABLE `storage`
  MODIFY `storageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`phoneId`) REFERENCES `phone` (`phoneId`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`);

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `order` (`orderId`),
  ADD CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`phoneId`) REFERENCES `phone` (`phoneId`),
  ADD CONSTRAINT `orderdetail_ibfk_3` FOREIGN KEY (`shipperId`) REFERENCES `shipper` (`shipperId`),
  ADD CONSTRAINT `orderdetail_ibfk_4` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`);

--
-- Constraints for table `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `phone_ibfk_2` FOREIGN KEY (`phoneDetailId`) REFERENCES `phonedetail` (`phoneDetailId`),
  ADD CONSTRAINT `phone_ibfk_3` FOREIGN KEY (`brandId`) REFERENCES `brand` (`brandId`);

--
-- Constraints for table `phonedetail`
--
ALTER TABLE `phonedetail`
  ADD CONSTRAINT `phonedetail_ibfk_1` FOREIGN KEY (`displayId`) REFERENCES `display` (`displayId`),
  ADD CONSTRAINT `phonedetail_ibfk_2` FOREIGN KEY (`bodyId`) REFERENCES `body` (`bodyId`),
  ADD CONSTRAINT `phonedetail_ibfk_3` FOREIGN KEY (`platformId`) REFERENCES `platform` (`platformId`),
  ADD CONSTRAINT `phonedetail_ibfk_4` FOREIGN KEY (`mainCameraId`) REFERENCES `maincamera` (`mainCameraId`),
  ADD CONSTRAINT `phonedetail_ibfk_5` FOREIGN KEY (`selfieCameraId`) REFERENCES `selfiecamera` (`selfieCameraId`),
  ADD CONSTRAINT `phonedetail_ibfk_6` FOREIGN KEY (`storageId`) REFERENCES `storage` (`storageId`),
  ADD CONSTRAINT `phonedetail_ibfk_7` FOREIGN KEY (`batteryId`) REFERENCES `battery` (`batteryId`),
  ADD CONSTRAINT `phonedetail_ibfk_8` FOREIGN KEY (`connectionId`) REFERENCES `connection` (`connectionId`),
  ADD CONSTRAINT `phonedetail_ibfk_9` FOREIGN KEY (`commentId`) REFERENCES `comment` (`commentId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
