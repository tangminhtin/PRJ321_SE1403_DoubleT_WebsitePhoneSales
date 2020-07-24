-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 24, 2020 at 05:14 PM
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
-- Table structure for table `Battery`
--

CREATE TABLE `battery` (
  `batteryId` int(11) NOT NULL,
  `batteryCapacity` int(11) DEFAULT NULL,
  `batteryType` varchar(150) DEFAULT NULL,
  `batteryTechnology` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Battery`
--

INSERT INTO `battery` (`batteryId`, `batteryCapacity`, `batteryType`, `batteryTechnology`) VALUES
(1, 1821, 'Non-removable Li-Ion 1821 mAh battery (6.96 Wh)', 'Fast charging 18W, 50% in 30 min (advertised) Qi wireless charging'),
(2, 3969, 'Non-removable Li-Ion 3969 mAh battery (15.04 Wh)', 'Fast charging 18W, 50% in 30 min (advertised) USB Power Delivery 2.0 Qi wireless charging'),
(3, 3110, 'Non-removable Li-Ion 3110 mAh battery (11.91 Wh)', 'Fast charging 18W, 50% in 30 min (advertised) USB Power Delivery 2.0 Qi wireless charging'),
(4, 3700, 'Non-removable Li-Po', 'Fast charging 18W USB Power Delivery 2.0 QI wireless charging'),
(5, 3300, 'Non-removable Li-Po 3300 mAh battery', 'Fast charging 15W Fast wireless charging'),
(6, 4500, 'Non-removable Li-Po 4500 mAh battery', 'Fast charging 25W'),
(7, 3174, 'Non-removable Li-Ion 3174 mAh battery (12.08 Wh)', 'Fast charging 15W, 50% in 30 min (advertised), Qi wireless charging'),
(8, 3430, 'Non-removable Li-Po 3430 mAh battery', 'Fast charging 18W USB Power Delivery 2.0 QI wireless charging');

-- --------------------------------------------------------

--
-- Table structure for table `Body`
--

CREATE TABLE `body` (
  `bodyId` int(11) NOT NULL,
  `bodyDimensions` varchar(150) DEFAULT NULL,
  `bodyWeight` varchar(100) DEFAULT NULL,
  `bodyBuild` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Body`
--

INSERT INTO `body` (`bodyId`, `bodyDimensions`, `bodyWeight`, `bodyBuild`) VALUES
(1, '138.4 x 67.3 x 7.3 mm (5.45 x 2.65 x 0.29 in)', '148 g (5.22 oz)', 'Glass front, glass back, aluminum frame'),
(2, '158 x 77.8 x 8.1 mm (6.22 x 3.06 x 0.32 in)', '226 g (7.97 oz)', 'Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame'),
(3, '150.9 x 75.7 x 8.3 mm (5.94 x 2.98 x 0.33 in)', '194 g (6.84 oz)', 'Glass front (Gorilla Glass), glass back (Gorilla Glass), aluminum frame (7000 series)'),
(4, '160.4 x 75.1 x 8.2 mm (6.31 x 2.96 x 0.32 in)', '193 g (6.81 oz)', 'Glass front (Gorilla Glass 5), glass back (Gorilla Glass 5), aluminum frame'),
(5, 'Unfolded: 167.3 x 73.6 x 7.2 mm, Folded: 87.4 x 73.6 x 17.3 mm', '183 g (6.46 oz)', 'Plastic front, glass back (Gorilla Glass 6), aluminum frame'),
(6, '162.5 x 75.5 x 8.1 mm (6.40 x 2.97 x 0.32 in)', '185 g (6.53 oz)', 'Glass front (Gorilla Glass 3), plastic back, plastic frame'),
(7, '157.5 x 77.4 x 7.7 mm (6.20 x 3.05 x 0.30 in)', '208 g (7.34 oz)', 'Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame'),
(8, '158 x 76.7 x 7.9 mm (6.22 x 3.02 x 0.31 in)', '184 g (6.49 oz)', 'Glass front (Gorilla Glass 5), glass back (Gorilla Glass 5), aluminum frame');

-- --------------------------------------------------------

--
-- Table structure for table `Brand`
--

CREATE TABLE `brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(30) DEFAULT NULL,
  `brandImage` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Brand`
--

INSERT INTO `brand` (`brandId`, `brandName`, `brandImage`) VALUES
(1, 'Apple', 'img/logoApple.jpg'),
(2, 'Samsung', 'img/logoGoogle.png'),
(3, 'Google', 'img/logoSamsung.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Comment`
--

CREATE TABLE `comment` (
  `commentId` int(11) NOT NULL,
  `commentContent` text DEFAULT NULL,
  `commentDate` datetime DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Comment`
--

INSERT INTO `comment` (`commentId`, `commentContent`, `commentDate`, `customerId`) VALUES
(1, 'I been a long time apple user until 2015. I particularly swore off the iphone not only for their lack of innovation, lack of usability across platforms, and proprietary functions; but the most annoying thing that drove me away is their predatory and ...', '2020-07-24 20:18:18', 1),
(2, 'tq for the opinion. in malaysia. now a lot of people are selling pixel 4/xl ftu (factory test unit) they claim its all same like retail unit. only u cant check imei on website. we dont know what is this ftu actually. where they get the stock etc. is ...', '2020-07-24 20:18:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Connection`
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
-- Dumping data for table `Connection`
--

INSERT INTO `connection` (`connectionId`, `connectionSIM`, `connectionMobileNetwork`, `connectionWLAN`, `connectionBluetooth`, `connectionGPS`, `connectionNFC`, `connectionRadio`, `connectionUSB`, `connectionJack`) VALUES
(1, 'Nano-SIM and/or eSIM', 'GSM / CDMA / HSPA / EVDO / LTE', 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot', '5.0, A2DP, LE', 'Yes, with A-GPS, GLONASS', 1, 0, '2.0, proprietary reversible connector', 0),
(2, 'Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by) - for China', 'GSM / CDMA / HSPA / EVDO / LTE', 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot', '5.0, A2DP, LE', 'Yes, with A-GPS, GLONASS, GALILEO, QZSS', 1, 0, '2.0, proprietary reversible connector', 0),
(3, 'Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by) - for China', 'GSM / CDMA / HSPA / EVDO / LTE', 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot', '5.0, A2DP, LE', 'Yes, with A-GPS, GLONASS, GALILEO, QZSS', 1, 0, '2.0, proprietary reversible connector', 0),
(4, 'Nano-SIM card & eSIM', 'GSM / CDMA / HSPA / EVDO / LTE', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, DLNA, hotspot', '5.0, A2DP, LE, aptX HD', 'Yes, with A-GPS, GLONASS, BDS, GALILEO', 1, 0, '3.1, Type-C 1.0 reversible connector', 0),
(5, 'Nano-SIM, eSIM', 'GSM / HSPA / LTE / 5G', 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, Wi-Fi Direct, hotspot', '5.0, A2DP, LE', 'Yes, with A-GPS, GLONASS, GALILEO, BDS', 1, 0, '3.1, Type-C 1.0 reversible connector, USB On-The-Go', 0),
(6, 'Nano-SIM', 'GSM / HSPA / LTE / 5G', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot', '5.0, A2DP, LE', 'Yes, with A-GPS, GLONASS, GALILEO, BDS', 1, 0, '2.0, Type-C 1.0 reversible connector, USB On-The-Go', 0),
(7, 'Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by) - for China', 'GSM / CDMA / HSPA / EVDO / LTE', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot', '5.0, A2DP, LE', 'Yes, with A-GPS, GLONASS, GALILEO, QZSS', 1, 0, '2.0, proprietary reversible connector', 0),
(8, 'Nano-SIM card & eSIM', 'GSM / CDMA / HSPA / EVDO / LTE', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, DLNA, hotspot', '5.0, A2DP, LE, aptX HD', 'Yes, with A-GPS, GLONASS, BDS, GALILEO', 1, 0, '3.1, Type-C 1.0 reversible connector', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
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
-- Dumping data for table `Customer`
--

INSERT INTO `customer` (`customerId`, `customerFullname`, `customerEmail`, `customerImage`, `customerAddress`, `customerPhone`, `userId`) VALUES
(1, 'Bach Nguyen Phuc Thinh', 'phucthinhbach@gmail.com', 'img/users/hien.jpg', 'Hau Giang', '0346845768', 2),
(2, 'Tang Minh Tin', 'minhtintang@gmail.com', 'img/users/user.png', 'Tien Giang', '0394328223', 5);

-- --------------------------------------------------------

--
-- Table structure for table `Display`
--

CREATE TABLE `display` (
  `displayId` int(11) NOT NULL,
  `displayType` varchar(150) DEFAULT NULL,
  `displaySize` varchar(150) DEFAULT NULL,
  `displayResolution` varchar(150) DEFAULT NULL,
  `displayProtection` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Display`
--

INSERT INTO `display` (`displayId`, `displayType`, `displaySize`, `displayResolution`, `displayProtection`) VALUES
(1, 'Retina IPS LCD capacitive touchscreen, 16M colors', '4.7 inches, 60.9 cm2 (~65.4% screen-to-body ratio)', '750 x 1334 pixels, 16:9 ratio (~326 ppi density)', 'Ion-strengthened glass, oleophobic coating, Wide color gamut'),
(2, 'Super Retina XDR OLED capacitive touchscreen, 16M colors', '6.5 inches, 102.9 cm2 (~83.7% screen-to-body ratio)', '1242 x 2688 pixels, 19.5:9 ratio (~458 ppi density)', 'Scratch-resistant glass, oleophobic coating, 800 nits max brightness (advertised), 120Hz touch-sensing'),
(3, 'Liquid Retina IPS LCD capacitive touchscreen, 16M colors', '6.1 inches, 90.3 cm2 (~79.0% screen-to-body ratio)', '828 x 1792 pixels, 19.5:9 ratio (~326 ppi density)', 'Scratch-resistant glass, oleophobic coating, Wide color gamut'),
(4, 'P-OLED capacitive touchscreen, 16M colors', '6.3 inches, 98.0 cm2 (~81.3% screen-to-body ratio)', '1440 x 3040 pixels, 19:9 ratio (~537 ppi density)', 'Corning Gorilla Glass 5, HDR, Always-on display, 90Hz refresh rate'),
(5, 'Foldable Dynamic AMOLED capacitive touchscreen, 16M colors', '6.7 inches, 101.6 cm2 (~82.5% screen-to-body ratio)', '1080 x 2636 pixels (~425 ppi density)', 'Cover display: 1.1\", Super AMOLED, 112 x 300 pixels'),
(6, 'Super AMOLED Plus capacitive touchscreen, 16M colors', '6.7 inches, 108.4 cm2 (~88.3% screen-to-body ratio)', '1080 x 2400 pixels, 20:9 ratio (~393 ppi density)', 'Corning Gorilla Glass 3'),
(7, 'Super Retina OLED capacitive touchscreen, 16M colors', '6.5 inches, 102.9 cm2 (~84.4% screen-to-body ratio)', '1242 x 2688 pixels, 19.5:9 ratio (~458 ppi density)', 'Scratch-resistant glass, oleophobic coating, 625 nits max brightness (advertised)'),
(8, 'P-OLED capacitive touchscreen, 16M colors', '6.3 inches, 100.3 cm2 (~82.8% screen-to-body ratio)', '1440 x 2960 pixels, 18.5:9 ratio (~523 ppi density)', 'Corning Gorilla Glass 5, Always-on display');

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
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
-- Dumping data for table `Employee`
--

INSERT INTO `employee` (`employeeId`, `employeeFullname`, `employeeAddress`, `employeePhone`, `employeeEmail`, `employeeImage`, `userId`) VALUES
(1, 'Nguyen son hao', 'Ben Tre', '03457685743', 'nguyensonhao@gmail.com', 'img/users/khang.jpeg', 3),
(2, 'Truong Nhat Nam', 'Vinh Long', '03245743234', 'truongnhatnam@gmail.com', 'img/users/nam.jpg', 4),
(3, 'Nguyen Tran Quang Hien', 'Dong Thap', '0457532674', 'nguyentranquanghien@gmail.com', 'img/users/hien.jpg', 6);

-- --------------------------------------------------------

--
-- Table structure for table `MainCamera`
--

CREATE TABLE `maincamera` (
  `mainCameraId` int(11) NOT NULL,
  `mainCameraResolution` varchar(150) DEFAULT NULL,
  `mainCameraFeatures` varchar(150) DEFAULT NULL,
  `mainCameraVideo` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MainCamera`
--

INSERT INTO `maincamera` (`mainCameraId`, `mainCameraResolution`, `mainCameraFeatures`, `mainCameraVideo`) VALUES
(1, '12 MP, f/1.8 (wide), PDAF, OIS', 'Quad-LED dual-tone flash, HDR, panorama', '4K@24/30/60fps, 1080p@30/60/120/240fps, HDR, OIS, stereo sound rec.'),
(2, '12 MP, f/1.8, 26mm (wide), 12 MP, f/2.0, 52mm (telephoto), 12 MP, f/2.4, 13mm (ultrawide)', 'Quad-LED dual-tone flash, HDR (photo/panorama)', '4K@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec.'),
(3, '12 MP, f/1.8, 26mm (wide), 12 MP, f/2.4, 13mm (ultrawide)', 'Quad-LED dual-tone flash, HDR (photo/panorama)', '4K@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec.'),
(4, '12.2 MP, f/1.7, 27mm (wide), 1/2.55', 'Dual-LED flash, Auto-HDR, panorama', '4K@30fps, 1080p@30/60/120fps, 1080p@30fps (gyro-EIS)'),
(5, '12 MP, f/1.8, 27mm (wide), 12 MP, f/2.2, 123Ë (ultrawide)', 'LED flash, HDR, panorama', '4K@30/60fps, 1080p@60/240fps, 720p@960fps, HDR10+'),
(6, '64 MP, f/1.8, 26mm (wide), 12 MP, f/2.2, 12mm (ultrawide), 5 MP, f/2.4, (macro), 5 MP, f/2.2, (depth)', 'LED flash, panorama, HDR', '4K@30fps, 1080p@30/240fps, 1080p@960fps; gyro-EIS'),
(7, '12 MP, f/1.8, 26mm (wide), 12 MP, f/2.4, 52mm (telephoto)', 'Quad-LED dual-tone flash, HDR (photo/panorama)', '4K@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec.'),
(8, '12.2 MP, f/1.8, 28mm (wide), 1/2.55\", 1.4Âµm, dual pixel PDAF, OIS', 'Dual-LED flash, Auto-HDR, panorama', '4K@30fps, 1080p@30/60/120fps, 1080p@30fps (gyro-EIS)');

-- --------------------------------------------------------

--
-- Table structure for table `Order`
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
-- Dumping data for table `Order`
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
(10, '2020-07-24 21:26:06', 5, 4601.84, '', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `OrderDetail`
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
-- Dumping data for table `OrderDetail`
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
(10, 4, 2, 2, 2625, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Phone`
--

CREATE TABLE `phone` (
  `phoneId` int(11) NOT NULL,
  `phoneImage` varchar(100) DEFAULT NULL,
  `phoneName` varchar(70) DEFAULT NULL,
  `phoneDiscount` double DEFAULT NULL,
  `phonePrice` double DEFAULT NULL,
  `phoneShortDescription` varchar(250) DEFAULT NULL,
  `brandId` int(11) DEFAULT NULL,
  `phoneDetailId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Phone`
--

INSERT INTO `phone` (`phoneId`, `phoneImage`, `phoneName`, `phoneDiscount`, `phonePrice`, `phoneShortDescription`, `brandId`, `phoneDetailId`) VALUES
(1, 'img/phones/Apple iPhone SE.jpg', 'Apple iPhone SE (2020)', 0, 378.26, 'The Apple iPhone SE (2020) retail box contains the prehistoric 5W charger and the usual Lightning cable. We do appreciate the EarPods that are included with every iPhone, though. Two Apple logo stickers and the SIM ejector complete the SE bundle.', 1, 1),
(2, 'img/phones/Apple iPhone 11 Pro Max.jpg', 'Apple iPhone 11 Pro Max', 0, 1436.84, 'The iPhone 11 Pro phones put an end to Apple\'s 3D Touch era and the Taptic Engine has assumed its role, too. Once full of potential, the 3D Touch tech was failed by Apple itself and from innovation it had become more of a burden.', 1, 1),
(3, 'img/phones/Apple iPhone 11.jpg', 'Apple iPhone 11', 0, 849, 'Apple managed to squeeze a larger battery in the same body as last year - now the iPhone 11 gets a 3,110mAh battery compared to 2,942mAh unit within the XR.', 1, 3),
(4, 'img/phones/Google Pixel 4 XL.jpg', 'Google Pixel 4 XL', 0, 875, 'The Google Pixel 4 duo was not Google\'s best-kept secret. We saw pictures of the phone weeks before the event, and we even learned about Face unlock while Google teased the Motion Sense features ahead of its event.', 3, 4),
(5, 'img/phones/Samsung Galaxy Z Flip 5G.jpg', 'Samsung Galaxy Z Flip 5G', 0, 543, 'The Galaxy Z Flip\'s box features a dual-layered logo shaped like a \"Z\". Our Mirror Purple model showed a purple \"Z\" and after cutting the seals, we can slide the sleeve off the actual box. Now you can lift the lid off the box and see the Z Flip.', 2, 5),
(6, 'img/phones/Samsung Galaxy A Quantum.jpg', 'Samsung Galaxy A Quantum', 0, 540, 'The rear camera of the smartphone consists of a 64 MP (wide) + 12 MP (ultrawide) + 5 MP (macro) + 5 MP (depth) while on the front there is a 32 MP (wide) camera for shooting selfies. ', 2, 6),
(7, 'img/phones/Apple iPhone XS Max.jpg', 'Apple iPhone XS Max', 0, 654.98, 'The iPhone XS Max supports both wireless charging and fast wired charging, though obviously, you can\'t benefit from either out of the box.', 1, 7),
(8, 'img/phones/Google Pixel 3 XL.jpg', 'Google Pixel 3 XL', 0, 529, 'The Pixel 3 XL is Google\'s latest flagship smartphone. It promises to bring everything we have come to expect with the Pixel brand, fast performance, quality camera and some cool software tricks that only Google can come up with.', 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `PhoneDetail`
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
-- Dumping data for table `PhoneDetail`
--

INSERT INTO `phonedetail` (`phoneDetailId`, `phoneDetailImage`, `phoneDetailDescription`, `phoneDetailVideo`, `phoneDetailSpecialFeatures`, `displayId`, `bodyId`, `platformId`, `mainCameraId`, `selfieCameraId`, `storageId`, `batteryId`, `connectionId`, `commentId`) VALUES
(1, 'img/phones/Apple iPhone SE.jpg', 'Ah, the Apple iPhone SE. The Special Edition. Even if the Smaller Edition was more appropriate. And just like the first iPhone SE, its second generation is both - Small, even if larger than the first one, and Special - as such launch happens once in four years or so. <br><br>\r\n\r\nWe are sure Apple had plans for a great premiere event last March, but COVID-19 turned everything upside down and such plans were abruptly scrapped. The new iPhone was unveiled fanfare-less on the maker\'s website, out of the blue, but it quickly became famous for being not only one of the cheapest iPhones ever made but also as one of the season\'s hottest bang for the buck offers. <br><br>\r\n\r\nApple did use the 2.5 years old iPhone 8 as a canvas in more than one way. The shell is the same, as is the screen (sans the 3D Touch layer), same front and rear cameras ergo photo and video capabilities, same stereo speakers, same battery capacity, same charging capabilities. <br><br>\r\n\r\nA thorough look reveals the iPhone SE (2020) is indeed small by today\'s standards, and while it brings features introduced more than two years ago, those are hardly outdated - the phone is water-resistant, its single camera offers numerous features such as portraits, Smart HDR and even 4K at 60 with both OIS and EIS available, while the stereo speakers are of an excellent quality that is tough to beat even to this very day. <br><br>', 'https://www.youtube.com/embed/CnSJYa3m9DM', 'Fingerprint (front-mounted), accelerometer, proximity, gyro, compass, barometer', 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(2, 'img/phones/Apple iPhone 11 Pro Max.jpg', 'It\'s September and the well-oiled Apple marketing machine is in full swing yet again. Apple\'s iPhone event this fall brought us the iPhone 11 trio. And with that, we say goodbye to the iPhone XR that was replaced by the iPhone 11, and begone iPhone XS - enter iPhone 11 Pro. <br><br>\r\n\r\nThe iPhone XS series, as any other S generation, brought new Bionic chip with a massive improvement in speed. Now, with the iPhone 11 Pro lineup, Apple is going after the camera and that\'s what the Pro moniker really stands for.<br><br>\r\n\r\nThe iPhone 11 Pro and 11 Pro Max are sequels to the iPhone XS and iPhone XS Max - if there was any doubt. They are just as big, with similar designs and screens, but come with improved performance, some big camera upgrades, larger batteries, and a new Apple U1 wideband chip. Indeed, there is a lot to explore, so don\'t let the familiar looks fool you.<br><br>\r\n\r\nIndeed, the iPhone 11 Pro design stays the same, or at least that\'s what the front suggests. There is a brand-new triple-camera setup on the back though, and the rear glass now has a frosted finish that we\'ve grown to love since the OnePlus 6. The water-protection has seen some improvement too, and now the eleventh iPhones can endure submersion in up to 4 meters deep water. <br><br>\r\n\r\nThe new A13 Bionic chip is an improved version of the last year\'s A12. It sure packs even more punch, a new ISP and DSP, among other things, but it is mostly based on the A12 design.<br><br>\r\n\r\nThe new triple camera is brand new, though. Now in addition to the wide and tele shooters, there is an ultrawide snapper. Night Mode finally makes it to the iPhones, and the 4K capture at 60fps gets the cool extended dynamic range as well. Probably the most awesome feature, showing off the power of Apple\'s chip, is the option to shoot with all four cameras (incl. selfie) at once. At 4K at 60fps with no limits. Imagine that! <br><br>\r\n\r\nAnd the front camera has finally gotten its long overdue update - it is now a 12MP shooter that can shoot in all resolution and framerates as the rear snappers. Slow-mo, called slofies, is available to the front cam as well, but we are yet to see if these slofies will be become a thing or not.', 'https://www.youtube.com/embed/cVEemOmHw9Y', 'Face ID, accelerometer, gyro, proximity, compass, barometer', 2, 2, 2, 2, 2, 2, 2, 2, NULL),
(3, 'img/phones/Apple iPhone 11.jpg', 'The iPhone XR was the first commercial success that came on the second attempt for making a more affordable iPhone. The iPhone 5c failed to impress in 2013, and we thought we\'d never see the maker give this idea another try. Well, last year the iPhone XR was more than well received being the best selling iPhone of the trio, so this year we welcome its sequel - the iPhone 11. <br><br>\r\n\r\nThe iPhone XR was indeed a cheaper, toned-down version of the XS generation, with an LCD screen, one camera short, and promised some excellent battery endurance. Well, when we say cheaper, we are not saying cheap, as those words mean something different in Apple\'s universe.  <br><br>\r\n\r\nBut truth be told, this year the iPhone 11 is even cheaper than the XR on launch - now priced at $700 instead of $750. The good news is that nothing has been left out and there are a few welcome additions to the low-tier iPhone.  <br><br>\r\n\r\nSo, the iPhone 11 keeps absolutely the same form factor and screen as the XR\'s. It employs the same 6.1\" IPS LCD screen with 326ppi and a notch on top that contains the Face ID tech. The screen specs are unchanged - same contrast, brightness, Haptic Touch, and whatnot.  <br><br>\r\n\r\nThe iPhone 11 boasts the new Apple A13 Bionic chip - the same SoC that powers the flagship iPhone 11 Pro duo. It also gets a second camera, and it\'s the new 12MP ultra wide-angle snapper, also brought from the Pro models. Features like Crop Out of Frame are available as well, and also shooting 4K videos with all cameras at once.  <br><br>\r\n\r\nApple iPhone 11 review\r\nThe new 12MP selfie camera has made it to the iPhone 11, too. It\'s another 12MP shooter with 23mm wide lens, and it can do regular 4K clips at 60fps, or 4K at 30fps videos with expanded dynamic range. Cinematic stabilization is available on the front cam on all modes. <br><br>\r\n\r\nApple managed to squeeze a larger battery in the same body as last year - now the iPhone 11 gets a 3,110mAh battery compared to 2,942mAh unit within the XR. <br><br>\r\n\r\nThe iPhone 11 supports 18W charging, but it is not bundled with a fast charger in the box as the Pro models. <br><br>\r\n\r\nSo, a new camera and new chip, among some new cool software tricks, are what\'s new in the iPhone 11 over the XR. Oh, and Apple is offering the 11 in some new colors like Green and Purple (the latter we have here for review). <br><br>', 'https://www.youtube.com/embed/hVpkbiQ9E4c', 'Face ID, accelerometer, gyro, proximity, compass, barometer', 3, 3, 3, 3, 3, 3, 3, 3, NULL),
(4, 'img/phones/Google Pixel 4 XL.jpg', 'The Google Pixel 4 duo was not Google\'s best-kept secret. We saw pictures of the phone weeks before the event, and we even learned about Face unlock while Google teased the Motion Sense features ahead of its event. The Google Pixel 4 XL represents everything that Google has learned in the first four iterations of the Google Pixel, including a mid-cycle and mid-range Pixel 3a which was very well received.\r\nThe Pixel 4 XL improves the camera even further, adding a new Astrophotography shooting mode and a viewfinder that will preview the HDR+ effect before you shoot the picture. There\'s also a new telephoto camera that, when combined with Super Res Zoom, can capture images from far away.\r\nGoogle first introduced the fingerprint scanner on its final generation of Nexus devices, the 6P and 5X. With the Pixel 4 and 4 XL, Google is replacing its \"Pixel Imprint\" with Face unlock. It works similarly to Apple\'s Face unlock and is a whole new concept for Google-branded devices.', 'https://www.youtube.com/watch?v=CGd_gzutdi8', 'Sensors : Face ID, accelerometer, gyro, proximity, compass, barometer', 4, 4, 4, 4, 4, 4, 4, 4, NULL),
(5, 'img/phones/Samsung Galaxy Z Flip 5G.jpg', 'Samsung wowed everyone last year when it introduced the Galaxy Fold. Sure, it took a few months to figure out the kinks after the first batch of units saw some fatal manufacturing defects. Once figured out, though, the Galaxy Fold turned out to be one of those milestone devices that would change the industry forever. <br><br>\r\n\r\nThe Galaxy Z Flip is Samsung\'s second-generation folding device, and the company\'s first-generation Galaxy Z product. In both cases, the Galaxy Z Flip is a unique device - combining the nostalgic form factor from almost two decades ago with the brilliance of Samsung\'s second-generation Hideaway Hinge and flexible display technology.<br><br>\r\n\r\nSamsung Galaxy Z Flip review\r\nThe AMOLED screen has a punch hole cut-out for the 10MP selfie camera and the dual 12MP cameras look promising. The Z Flip also keeps some of the flagship Galaxy\'s charging features like wireless charging and Power Share (reverse wireless charging). The 3,300 mAh battery seems a bit small, though.<br><br>\r\n\r\nSamsung Galaxy Z Flip review\r\nThe Galaxy Z Flip sees a couple of improvements in the hinge, as well as a new protective material in front of the display which Samsung calls \"UTG\" or Ultra Thin Glass. This glass is protected by the same polymer material as the Galaxy Fold so it\'s still not as scratch resistant as your typical Gorilla Glass handset.<br><br>\r\n\r\nThe Galaxy Fold\'s specs aren\'t groundbreaking, but they are certainly not midrange by any means. It\'s running the 2019 Snapdragon 855+ with 8GB of RAM and 256GB of storage - so it\'s basically a flagship Samsung Galaxy phone on the inside.', 'https://www.youtube.com/embed/XIHtB9A7HPU', 'Fingerprint (side-mounted), accelerometer, gyro, proximity, compass, barometer', 5, 5, 5, 5, 5, 5, 5, 5, NULL),
(6, 'img/phones/Samsung Galaxy A Quantum.jpg', 'The dimension of the smartphone is 162.5 x 75.5 x 8.1 mm and it weighs 185 grams. The smartphone has a Super AMOLED capacitive touchscreen providing 1080 x 2400 pixels resolution with 393 PPI density. The screen is also protected with Corning Gorilla Glass 3.<br><br>\r\n\r\nThe rear camera of the smartphone consists of a 64 MP (wide) + 12 MP (ultrawide) + 5 MP (macro) + 5 MP (depth) while on the front there is a 32 MP (wide) camera for shooting selfies. The smartphone is available in various color options such as Prism Cube Black, Prism Cube Sliver, and Prism Cube Blue.<br><br>\r\n\r\nThe Samsung Galaxy A Quantum is powered by the Exynos 980 (8 nm), QRNG security chipset Octa-core processor. The smartphone is fueled with a non-removable Li-Po 4500 mAh battery + Fast battery charging 25W.\r\n\r\nThe sensors include Fingerprint (under display, optical), accelerometer, gyro, proximity, and compass. Additionally, it features Bluetooth 5.0, GPS with  A-GPS, GLONASS, GALILEO, BDS, USB, and a 3.5mm jack.<br><br>\r\n\r\nThe device is pack with 8 GB RAM with 128 GB internal storage options which can be extended with the help of microSDXC (dedicated slot).', 'https://www.youtube.com/embed/6J2NTvu8Y7w', 'Fingerprint (under display, optical), accelerometer, gyro, proximity, compass, ANT+', 6, 6, 6, 6, 6, 6, 6, 6, NULL),
(7, 'img/phones/Apple iPhone XS Max.jpg', 'The iPhone X was not just a milestone for Apple. It also turned out to be the cornerstone the next generation of iPhones is being built around. And while the anniversary iPhone wowed everyone, many people voiced their wish for a Plus size model after the excitement had worn off. And this year Apple is righting this wrong with the iPhone XS Max. <br><br>\r\n\r\nApple iPhone XS Max reviewApple iPhone XS and XS Max\r\nWe have to admit we used all of our jokes on the iPhone XS review. But coming up with the iPhone XS Max name is probably the biggest joke anyway. Two letters, but one is a Roman numeral - we learned to deal with that. But the Max moniker after the XS name, well, this is funny everywhere on the globe.<br><br>\r\n\r\nThe iPhone XS Max is a wish come true for all of you who wanted an X Plus. The Max has a massive 6.5\" bezel-less OLED display, the fastest chipset on the planet, an improved dual-camera, louder speakers, and the largest battery the iPhones have seen to date.<br><br>\r\n\r\nApple iPhone XS Max reviewApple iPhone XS Max in the new Gold color\r\nThe iPhone XS didn\'t seem to pack enough punch to make a reasonable iPhone user upgrade, but the Max is an entirely different story. If you wanted an X with a bigger screen you\'ve probably pre-ordered and you have a tracking number in your mailbox already.<br><br>\r\n\r\nNobody doubted that a bigger iPhone would have costed more. But the iPhone XS Max is not just the most expensive iPhone yet. It\'s the most expensive smartphone there is right now. And despite what we\'d expect, this didn\'t turn down the fans, quite the opposite - the iPhone XS Max is massively outselling the XS.', 'https://www.youtube.com/embed/VtFc-5hviPY', 'Face ID, accelerometer, gyro, proximity, compass, barometer', 7, 7, 7, 7, 7, 7, 7, 7, NULL),
(8, 'img/phones/Google Pixel 3 XL.jpg', 'The Pixel 3 XL is Google\'s latest flagship smartphone. It promises to bring everything we have come to expect with the Pixel brand, including a clean build of Android, fast performance, quality camera and some cool software tricks that only Google can come up with. <br><br>\r\n\r\nGoogle Pixel 3 XL review\r\nThis year\'s launch has been mired in controversy. While the Pixel devices are no strangers to controversy, the Pixel 3 XL got its fair share even before the device was launched. Much of it had to do with the design of the phone, which, admittedly, isn\'t Google\'s finest work. <br><br>\r\n\r\nApart from that, we don\'t see a lot to complain about. On paper, the Pixel 3 XL comes across as a proper flagship smartphone. There are a few things that bother us, such as the 4GB memory and storage options that max out at 128GB, but we will have to wait and see if those present any issues later.<br><br>\r\n\r\nOverall, though, we are looking forward to diving into this phone. Pixel phones are always exciting, as they are a lot more than just hardware specifications, and Google is big on using software to work smarter, not harder. But, it\'s 2018, and you need both good software and hardware if you need to stand out. And considering the price Google charges for these things, we hope the Pixel 3 XL blows us away on both fronts.', 'https://www.youtube.com/embed/EeFqcmaw6iA', 'Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass, barometer', 8, 8, 8, 8, 8, 8, 8, 8, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Platform`
--

CREATE TABLE `platform` (
  `platformId` int(11) NOT NULL,
  `platformOS` varchar(100) DEFAULT NULL,
  `platformChipset` varchar(150) DEFAULT NULL,
  `platformCPU` varchar(150) DEFAULT NULL,
  `platformGPU` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Platform`
--

INSERT INTO `platform` (`platformId`, `platformOS`, `platformChipset`, `platformCPU`, `platformGPU`) VALUES
(1, 'iOS 13', 'Apple A13 Bionic (7 nm+)', 'Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)', 'Apple GPU (4-core graphics)'),
(2, 'iOS 13, upgradable to iOS 13.6', 'Apple A13 Bionic (7 nm+)', 'Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)', 'Apple GPU (4-core graphics)'),
(3, 'iOS 13, upgradable to iOS 13.6', 'Apple A13 Bionic (7 nm+)', 'Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)', 'Apple GPU (4-core graphics)'),
(4, 'Android 10', 'Qualcomm SM8150 Snapdragon 855 (7 nm)', 'Octa-core (1x2.84 GHz Kryo 485 & 3x2.42 GHz Kryo 485 & 4x1.78 GHz Kryo 485)', 'Adreno 640'),
(5, 'Android 10, One UI 2', 'Qualcomm SM8250 Snapdragon 865+ (7 nm+)', 'Octa-core (1x3.09 GHz Kryo 585 & 3x2.40 GHz Kryo 585 & 4x1.80 GHz Kryo 585)', 'Adreno 650'),
(6, 'Android 10, One UI 2', 'Exynos 980 (8 nm), QRNG security chipset', 'Octa-core (2x2.2 GHz Cortex-A77 & 6x1.8 GHz Cortex A55)', 'Mali-G76 MP5'),
(7, 'iOS 12, upgradable to iOS 13.6', 'Apple A12 Bionic (7 nm)', 'Hexa-core (2x2.5 GHz Vortex + 4x1.6 GHz Tempest)', 'Apple GPU (4-core graphics)'),
(8, 'Android 9.0 (Pie), upgradable to Android 10', 'Qualcomm SDM845 Snapdragon 845 (10 nm)', 'Octa-core (4x2.5 GHz Kryo 385 Gold & 4x1.6 GHz Kryo 385 Silver)', 'Adreno 630');

-- --------------------------------------------------------

--
-- Table structure for table `SelfieCamera`
--

CREATE TABLE `selfiecamera` (
  `selfieCameraId` int(11) NOT NULL,
  `selfieCameraResolution` varchar(150) DEFAULT NULL,
  `selfieCameraFeatures` varchar(150) DEFAULT NULL,
  `selfieCameraVideo` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SelfieCamera`
--

INSERT INTO `selfiecamera` (`selfieCameraId`, `selfieCameraResolution`, `selfieCameraFeatures`, `selfieCameraVideo`) VALUES
(1, '7 MP, f/2.2', 'Face detection, HDR, panorama', '1080p@30fps; gyro-EIS'),
(2, '12 MP, f/2.2, 23mm (wide), SL 3D, (depth/biometrics sensor)', 'HDR', '4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS'),
(3, '12 MP, f/2.2, 23mm (wide), SL 3D, (depth/biometrics sensor)', 'HDR', '4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS'),
(4, '8 MP, f/2.0, 22mm (wide), 1.22ÃÂµm, no AF TOF 3D, (depth/biometrics sensor)', 'Auto-HDR', '1080p@30fps'),
(5, '10 MP, f/2.4, 26mm (wide), 1.22Âµm', 'HDR', '4K@30fps'),
(6, '32 MP, f/2.2, 26mm (wide), 1/2.8\", 0.8Âµm', 'HDR', '1080p@30fps'),
(7, '7 MP, f/2.2, 32mm (standard)', 'HDR', '1080p@30/60fps, gyro-EIS'),
(8, '8 MP, f/1.8, 28mm (wide), PDAF', 'Auto-HDR', '1080p@30fps');

-- --------------------------------------------------------

--
-- Table structure for table `Shipper`
--

CREATE TABLE `shipper` (
  `shipperId` int(11) NOT NULL,
  `shipperName` varchar(30) DEFAULT NULL,
  `shipperPhone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Shipper`
--

INSERT INTO `shipper` (`shipperId`, `shipperName`, `shipperPhone`) VALUES
(1, 'Nguyen Vu Khang', '0129384756'),
(2, 'Truong Nhat Nam', '0987654678');

-- --------------------------------------------------------

--
-- Table structure for table `Storage`
--

CREATE TABLE `storage` (
  `storageId` int(11) NOT NULL,
  `storageRAM` int(11) DEFAULT NULL,
  `storageInternal` int(11) DEFAULT NULL,
  `storageExternal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Storage`
--

INSERT INTO `storage` (`storageId`, `storageRAM`, `storageInternal`, `storageExternal`) VALUES
(1, 3, 64, 0),
(2, 4, 512, 0),
(3, 4, 256, 0),
(4, 8, 128, 0),
(5, 8, 256, 0),
(6, 8, 128, 0),
(7, 4, 512, 0),
(8, 4, 128, 128);

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `userPassword` varchar(32) DEFAULT NULL,
  `userRole` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `User`
--

INSERT INTO `user` (`userId`, `userName`, `userPassword`, `userRole`) VALUES
(1, 'admin', '865bedd2fba8fe20b828ed07600c64a4', 'admin'),
(2, 'phucthinhbach', '202cb962ac59075b964b07152d234b70', 'customer'),
(3, 'nguyensonhao', '202cb962ac59075b964b07152d234b70', 'staff'),
(4, 'truongnhatnam', '202cb962ac59075b964b07152d234b70', 'staff'),
(5, 'minhtin', '202cb962ac59075b964b07152d234b70', 'customer'),
(6, 'nguyentranquanghien', '202cb962ac59075b964b07152d234b70', 'staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Battery`
--
ALTER TABLE `battery`
  ADD PRIMARY KEY (`batteryId`);

--
-- Indexes for table `Body`
--
ALTER TABLE `body`
  ADD PRIMARY KEY (`bodyId`);

--
-- Indexes for table `Brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `Comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`commentId`),
  ADD KEY `customerId` (`customerId`);

--
-- Indexes for table `Connection`
--
ALTER TABLE `connection`
  ADD PRIMARY KEY (`connectionId`);

--
-- Indexes for table `Customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerId`),
  ADD UNIQUE KEY `customerEmail` (`customerEmail`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `Display`
--
ALTER TABLE `display`
  ADD PRIMARY KEY (`displayId`);

--
-- Indexes for table `Employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `MainCamera`
--
ALTER TABLE `maincamera`
  ADD PRIMARY KEY (`mainCameraId`);

--
-- Indexes for table `Order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `phoneId` (`phoneId`),
  ADD KEY `customerId` (`customerId`);

--
-- Indexes for table `OrderDetail`
--
ALTER TABLE `orderdetail`
  ADD KEY `orderId` (`orderId`),
  ADD KEY `phoneId` (`phoneId`),
  ADD KEY `shipperId` (`shipperId`),
  ADD KEY `employeeId` (`employeeId`);

--
-- Indexes for table `Phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`phoneId`),
  ADD KEY `phoneDetailId` (`phoneDetailId`),
  ADD KEY `brandId` (`brandId`);

--
-- Indexes for table `PhoneDetail`
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
-- Indexes for table `Platform`
--
ALTER TABLE `platform`
  ADD PRIMARY KEY (`platformId`);

--
-- Indexes for table `SelfieCamera`
--
ALTER TABLE `selfiecamera`
  ADD PRIMARY KEY (`selfieCameraId`);

--
-- Indexes for table `Shipper`
--
ALTER TABLE `shipper`
  ADD PRIMARY KEY (`shipperId`);

--
-- Indexes for table `Storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`storageId`);

--
-- Indexes for table `User`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Battery`
--
ALTER TABLE `battery`
  MODIFY `batteryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Body`
--
ALTER TABLE `body`
  MODIFY `bodyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Brand`
--
ALTER TABLE `brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Comment`
--
ALTER TABLE `comment`
  MODIFY `commentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Connection`
--
ALTER TABLE `connection`
  MODIFY `connectionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Customer`
--
ALTER TABLE `customer`
  MODIFY `customerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Display`
--
ALTER TABLE `display`
  MODIFY `displayId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Employee`
--
ALTER TABLE `employee`
  MODIFY `employeeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `MainCamera`
--
ALTER TABLE `maincamera`
  MODIFY `mainCameraId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Order`
--
ALTER TABLE `order`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Phone`
--
ALTER TABLE `phone`
  MODIFY `phoneId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `PhoneDetail`
--
ALTER TABLE `phonedetail`
  MODIFY `phoneDetailId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Platform`
--
ALTER TABLE `platform`
  MODIFY `platformId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `SelfieCamera`
--
ALTER TABLE `selfiecamera`
  MODIFY `selfieCameraId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Shipper`
--
ALTER TABLE `shipper`
  MODIFY `shipperId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Storage`
--
ALTER TABLE `storage`
  MODIFY `storageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`);

--
-- Constraints for table `Customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`);

--
-- Constraints for table `Employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`);

--
-- Constraints for table `Order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`phoneId`) REFERENCES `phone` (`phoneId`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`);

--
-- Constraints for table `OrderDetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `order` (`orderId`),
  ADD CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`phoneId`) REFERENCES `phone` (`phoneId`),
  ADD CONSTRAINT `orderdetail_ibfk_3` FOREIGN KEY (`shipperId`) REFERENCES `shipper` (`shipperId`),
  ADD CONSTRAINT `orderdetail_ibfk_4` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`);

--
-- Constraints for table `Phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `phone_ibfk_2` FOREIGN KEY (`phoneDetailId`) REFERENCES `phonedetail` (`phoneDetailId`),
  ADD CONSTRAINT `phone_ibfk_3` FOREIGN KEY (`brandId`) REFERENCES `brand` (`brandId`);

--
-- Constraints for table `PhoneDetail`
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
