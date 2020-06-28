-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 28, 2020 at 03:37 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

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
(1, 1821, 'Non-removable Li-Ion', 'Fast charging 18W, 50% in 30 min (advertised)\r\nQi wireless charging'),
(2, 3300, 'Non-removable Li-Po', 'Fast charging 15W\r\nWireless charging'),
(3, 2800, 'Non-removable Li-Po', 'Fast charging 18W\r\nUSB Power Delivery 2.0\r\nQI wireless charging');

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
(2, 'Unfolded: 167.3 x 73.6 x 7.2 mm\r\nFolded: 87.4 x 73.6 x 17.3 mm', '183 g (6.46 oz)', 'Plastic front, glass back (Gorilla Glass 6), aluminum frame'),
(3, '147.1 x 68.8 x 8.2 mm (5.79 x 2.71 x 0.32 in)', '162 g (5.71 oz)', 'Glass front (Gorilla Glass 5), glass back (Gorilla Glass 5), aluminum frame');

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
(1, 'Apple', 'apple.png'),
(2, 'Samsung', 'samsung.png'),
(3, 'Google', 'google.png');

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
(1, 'Guys, these phone is really good. It may have an old design and single camera but personally itÂ’s better than those with many camera but no quality image and ugly large notch or large screen that burns out after a few years on the road. Being an And...', '2020-06-25 00:00:00', 1),
(2, 'See forget about the size that phone is guuuuud, the way it is, just take a look at the \"iPhone se\" it\'s also a small but mighty phone kinda like the z flip', '2020-06-25 00:00:00', 2),
(3, 'Best in any smartphone you have seen so far. If camera is the primary concern? This should be your choice. It also gets fastest android updates. But if you play games and do web browsing only and camera is not a primary concern, there are better ph...', '2020-06-25 00:00:00', 3);

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
(1, 'Nano-SIM and/or eSIM', 'GSM/CDMA/HSPA/EVDO/LTE', 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot', '5.0, A2DP, LE', 'Yes, with A-GPS, GLONASS', 1, 0, '2.0, proprietary reversible connector', 0),
(2, 'Nano-SIM, eSIM', 'HSPA 42.2/5.76 Mbps, LTE-A (5CA) Cat16 1000/150 Mbps', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot', '5.0, A2DP, LE', 'Yes, with A-GPS, GLONASS, GALILEO, BDS', 1, 0, '3.1, Type-C 1.0 reversible connector, USB On-The-Go', 0),
(3, 'Nano-SIM card & eSIM', 'HSPA 42.2/5.76 Mbps, LTE-A (5CA) Cat18 1200/150 Mbps', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, DLNA, hotspot', '5.0, A2DP, LE, aptX HD', 'Yes, with A-GPS, GLONASS, BDS, GALILEO', 1, 0, '3.1, Type-C 1.0 reversible connector', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerId` int(11) NOT NULL,
  `customerFullname` varchar(50) DEFAULT NULL,
  `customerAddress` varchar(100) DEFAULT NULL,
  `customerPhone` varchar(15) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerId`, `customerFullname`, `customerAddress`, `customerPhone`, `userId`) VALUES
(1, 'Hua Quoc Vinh', 'Can Tho', '0348432564', 3),
(2, 'Truong Nhat Nam', 'Vinh Long', '0684567813', 4),
(3, 'Nguyen Ngoc Anh Tu', 'An Giang', '0457894658', 5);

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
(1, 'Retina IPS LCD capacitive touchscreen, 16M colors', '4.7 inches, 60.9 cm2 (~65.4% screen-to-body ratio)', '750 x 1334 pixels, 16:9 ratio (~326 ppi density)', 'Ion-strengthened glass, oleophobic coating\r\n 	Wide color gamut\r\nTrue-tone\r\n625 nits max brightness (advertised)'),
(2, 'Foldable Dynamic AMOLED capacitive touchscreen, 16M colors', '	6.7 inches, 101.6 cm2 (~82.5% screen-to-body ratio)', '1080 x 2636 pixels (~425 ppi density)\r\n 	HDR10+\r\nCover display: 1.1\", Super AMOLED, 112 x 300 pixels', 'Corning Gorilla Glass 5'),
(3, 'P-OLED capacitive touchscreen, 16M colors', '5.7 inches, 80.7 cm2 (~79.8% screen-to-body ratio)', '1080 x 2280 pixels, 19:9 ratio (~444 ppi density)', 'Corning Gorilla Glass 5\r\n 	HDR\r\nAlways-on display\r\n90Hz refresh rate');

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
(1, 'Bach Nguyen Phuc Thinh', 'Hau Giang', '0354879462', 'bachnguyenphucthinh@gmail.com', NULL, 2),
(2, 'Huynh Thi Nhien', 'Hau Giang', '0367894562', 'huynhthinhien@gmail.com', NULL, 6);

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
(1, '12 MP, f/1.8 (wide), PDAF, OIS\r\n', 'Quad-LED dual-tone flash, HDR, panorama', '4K@24/30/60fps, 1080p@30/60/120/240fps, HDR, OIS, stereo sound rec'),
(2, '12 MP, f/1.8, 27mm (wide), 1/2.55\", 1.4µm, Dual Pixel PDAF, OIS, 12 MP, f/2.2, 12mm (ultrawide), 1.12µm', 'LED flash, HDR, panorama', '4K@30/60fps, 1080p@60/240fps, 720p@960fps, HDR10+'),
(3, '12.2 MP, f/1.7, 27mm (wide), 1/2.55\", 1.4µm, dual pixel PDAF, OIS\r\n16 MP, f/2.4, 50mm (telephoto), 1/3.6\", 1.0µm, PDAF, OIS, 2x optical zoom', 'Dual-LED flash, Auto-HDR, panorama', '4K@30fps, 1080p@30/60/120fps, 1080p@30fps (gyro-EIS)');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `orderId` int(11) NOT NULL,
  `orderDate` datetime DEFAULT NULL,
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
(1, '2020-06-25 00:00:00', 2, 798, 'Red', 1, 1),
(2, '2020-06-25 00:00:00', 1, 1050, 'Gold', 2, 2),
(3, '2020-06-25 00:00:00', 1, 549.99, 'Yellow', 3, 3);

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
(1, 1, 1, 2, 798, 2),
(2, 2, 2, 1, 1050, 1),
(3, 3, 3, 2, 459.99, 1);

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
  `brandId` int(11) DEFAULT NULL,
  `phoneDetailId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`phoneId`, `phoneImage`, `phoneName`, `phoneDiscount`, `phonePrice`, `phoneShortDescription`, `brandId`, `phoneDetailId`) VALUES
(1, 'https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-se-2020.jpg', 'Apple iPhone SE (2020)', 0, 399, 'Ah, the Apple iPhone SE. The Special Edition. Even if the Smaller Edition was more appropriate. And just like the first iPhone SE, its second generation is both - Small, even if larger than the first one, and Special - as such launch happens once in ', 1, 1),
(2, 'https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-z-flip-01.jpg', 'Samsung Galaxy Z Flip', 0, 1050, 'Samsung wowed everyone last year when it introduced the Galaxy Fold. Sure, it took a few months to figure out the kinks after the first batch of units saw some fatal manufacturing defects. ', 2, 2),
(3, 'https://fdn2.gsmarena.com/vv/bigpic/google-pixel-4-r1.jpg', 'Google Pixel 4', 0, 549.99, 'We already had the 4 XL for review and we have more than a general idea of this gen\'s pros and cons, but now we set out to discover how the small Pixel 4 performs and how it stands in the context of its own specific competitors.', 3, 3);

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
(1, 'https://www.gsmarena.com/apple_iphone_se_(2020)-pictures-10170.php', 'Ah, the Apple iPhone SE. The Special Edition. Even if the Smaller Edition was more appropriate. And just like the first iPhone SE, its second generation is both - Small, even if larger than the first one, and Special - as such launch happens once in four years or so.\r\n\r\n\r\n\r\nWe are sure Apple had plans for a great premiere event last March, but COVID-19 turned everything upside down and such plans were abruptly scrapped. The new iPhone was unveiled fanfare-less on the maker\'s website, out of the blue, but it quickly became famous for being not only one of the cheapest iPhones ever made but also as one of the season\'s hottest bang for the buck offers.\r\n\r\nApple iPhone SE 2020 review\r\nImagine that - bang for the buck coming from Apple! Indeed, the highlight feature of the new iPhone SE is the A13 Bionic chip - that\'s Apple\'s latest platform - the one that\'s powering the iPhone 11 trio. As for the rest, well, it\'s mostly iPhone 8.\r\n\r\nApple did use the 2.5 years old iPhone 8 as a canvas in more than one way. The shell is the same, as is the screen (sans the 3D Touch layer), same front and rear cameras ergo photo and video capabilities, same stereo speakers, same battery capacity, same charging capabilities.\r\n\r\nApple iPhone SE 2020 review\r\nA thorough look reveals the iPhone SE (2020) is indeed small by today\'s standards, and while it brings features introduced more than two years ago, those are hardly outdated - the phone is water-resistant, its single camera offers numerous features such as portraits, Smart HDR and even 4K at 60 with both OIS and EIS available, while the stereo speakers are of an excellent quality that is tough to beat even to this very day.\r\n\r\nApple iPhone SE (2020) key features\r\nBody: Aluminum frame, Gorilla Glass front with oleophobic coating, Gorilla Glass back with glossy finish, IP67 certified for water and dust resistance. Red, Black, and White color options; 138.4 x 67.3 x 7.3 mm; 148g.\r\nScreen: 4.7\" 16M-color LED-backlit IPS LCD screen of 750p resolution, 326ppi, True Tone adjustment via four-channel ambient light sensor.\r\nOS: Apple iOS 13.\r\nChipset: Apple A13 Bionic (7nm+) chip - 2x2.66 GHz Lightning + 4x1.8 GHz Thunder) Apple CPU, four-core Apple GPU, 8-core Apple NPU 3-gen.\r\nCamera: 12MP camera with F/1.8 lens, optical image stabilization, quad-LED flash with slow sync, phase detection auto focus, Smart HDR, wide color capture.\r\nVideo recording: 2160p@60/30fps, 1080p@30/60/120/240fps video recording\r\nSelfie: 7MP F/2.2 front-facing camera with BSI sensor and HDR mode, 1080p@30fps video\r\nStorage: 64GB, 128, or 256GB of built-in storage.\r\nConnectivity: 4G LTE Cat.12; Wi-Fi a/b/g/n/ac; Bluetooth 5.0; Lightning port; GPS with A-GPS, GLONASS, GALILEO, QZSS; NFC (Apple Pay only).\r\nBattery: 1,821mAh battery, 18W fast charging, wireless charging (Qi compatible).\r\nMisc: Stereo speakers, pressure-sensitive Home key with fingerprint scanner, Taptic Engine.\r\nThe bezels are what looked old on the iPhone 8, and now they look ancient on this new SE model. They are wonderful as thumb rests for when you are using the phone in landscape orientation for gaming or videos, but they will be a target for many laughs either way. And the battery capacity could have been improved a bit, but we are yet to see the new A13 chip in action, so let\'s not judge just yet.\r\n\r\nAnd now, it\'s time to unpack our red iPhone SE.\r\n\r\nUnboxing the Apple iPhone SE (2020)\r\nThe iPhone retail bundle has seen few changes over the year with the most prominent being the 18W charger replacing the 5W adapter for the iPhone 11 Pro models. That is not the case with the iPhone SE, though.\r\n\r\nThe Apple iPhone SE (2020) retail box contains the prehistoric 5W charger and the usual Lightning cable. We do appreciate the EarPods that are included with every iPhone, though. Two Apple logo stickers and the SIM ejector complete the SE bundle.\r\n\r\nApple iPhone SE 2020 review\r\nThe iPhone SE supports USB-PD fast charging (up to 18W), as well as wireless charging (up to 8W), so at least you are not without other options. You just have to get yourself a quick charger separately.', 'https://youtu.be/CnSJYa3m9DM', 'Fingerprint (front-mounted), accelerometer, proximity, gyro, compass, barometer\r\n 	Siri natural language commands and dictation', 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(2, 'https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-z-flip-01.jpg', 'Introduction\r\nSamsung wowed everyone last year when it introduced the Galaxy Fold. Sure, it took a few months to figure out the kinks after the first batch of units saw some fatal manufacturing defects. Once figured out, though, the Galaxy Fold turned out to be one of those milestone devices that would change the industry forever.\r\n\r\n\r\n\r\nThe Galaxy Z Flip is Samsung\'s second-generation folding device, and the company\'s first-generation Galaxy Z product. In both cases, the Galaxy Z Flip is a unique device - combining the nostalgic form factor from almost two decades ago with the brilliance of Samsung\'s second-generation Hideaway Hinge and flexible display technology.\r\n\r\nSamsung Galaxy Z Flip review\r\nThe AMOLED screen has a punch hole cut-out for the 10MP selfie camera and the dual 12MP cameras look promising. The Z Flip also keeps some of the flagship Galaxy\'s charging features like wireless charging and Power Share (reverse wireless charging). The 3,300 mAh battery seems a bit small, though.\r\n\r\nSamsung Galaxy Z Flip review\r\nThe Galaxy Z Flip sees a couple of improvements in the hinge, as well as a new protective material in front of the display which Samsung calls \"UTG\" or Ultra Thin Glass. This glass is protected by the same polymer material as the Galaxy Fold so it\'s still not as scratch resistant as your typical Gorilla Glass handset.\r\n\r\nSamsung Galaxy Z Flip Specs:\r\nBody: Hideaway Hinge; aluminum frames; Gorilla Glass 6; mirror finish; 183g\r\nDimensions: Closed: 87.4 x 73.7 x 15.4-18.33 mm; Open: 167.9 x 73.6 x 6.9-7.2 mm\r\nScreen: 6.7-Inch Infinity Flex Adaptive AMOLED display with Ultra Thin Glass layered under polymer-based protective surface; FHD+ (1080 x 2636 px), 21.5:9 aspect ratio\r\nCover Display: 1.1-inch (112 x 300 px) Super AMOLED\r\nChipset: Qualcomm Snapdragon 855+ Octa-core (1x2.95 GHz Kryo 485 & 3x2.41 GHz Kryo 485 & 4x1.78 GHz Kryo 485); Adreno 640 GPU\r\nMemory: 8GB RAM + 256GB UFS 3.0 internal storage (non-expandable)\r\nOS: Android 10; Samsung One UI 2.1\r\nBattery: 3,300 mAh, 15W Adaptive Fast Charge; Fast Wireless Charging; Wireless Powershare 9W\r\nCameras: Primary: 12MP (f/1.8, 27mm (wide), 1.4µm, Dual Pixel PDAF, OIS); Ultrawide: f/2.2, 12mm, 1.12µm; LED Flash\r\nSelfie camera: 10 MP, f/2.4, 26mm (wide), 1.22µm; PDAF\r\nConnectivity: Bluetooth 5.0; Wi-Fi a/b/g/n/ac; USB-C\r\nThe Galaxy Fold\'s specs aren\'t groundbreaking, but they are certainly not midrange by any means. It\'s running the 2019 Snapdragon 855+ with 8GB of RAM and 256GB of storage - so it\'s basically a flagship Samsung Galaxy phone on the inside.\r\n\r\nSamsung Galaxy Z Flip review\r\nSamsung went with a dual-camera setup on the Z Flip - there\'s no telephoto camera, but there\'s at least an ultra-wide. The selfie camera is a 10MP unit, though its aperture isn\'t as bright as we\'ve seen on other Galaxy Flagships.\r\n\r\nIn any case, we\'re here to let you know if the Samsung Galaxy Z Flip is worth it. Does this brand-new form factor offer enough bang for your buck?\r\n\r\nUnboxing\r\nThe Galaxy Z Flip\'s box features a dual-layered logo shaped like a \"Z\". Our Mirror Purple model showed a purple \"Z\" and after cutting the seals, we can slide the sleeve off the actual box. Now you can lift the lid off the box and see the Z Flip.\r\n\r\nSamsung Galaxy Z Flip review\r\nThe first thing you\'ll notice is the list of warnings on the protective film on the Z Flip. It warns not to use sharp objects near the screen, not to press too hard with your finger or fingernail, and to not attach any screen protectors to the display. It also warns that the phone is not water-resistant and that the strong magnets on the Z Flip may cause damage to credit cards or medical devices.\r\n\r\nSamsung Galaxy Z Flip review\r\nWe almost missed it, but there\'s a flat box hiding in the top half of the box with documentation, a SIM eject tool, and a protective plastic case for the Z Flip. It doesn\'t seem like it will actually protect the phone from damage in the event of a drop, but it should be fine to keep the outside safe from scratches.\r\n\r\nUnderneath the phone is a 15W Adaptive Fast Charge adapter, USB-C to USB-A cable, a content transfer adapter with a full-size USB-A port, and a pair of AKG headphones with USB-C connector.\r\n\r\nNow let\'s look at the design of the Z Flip.', 'https://youtu.be/XIHtB9A7HPU', '	Fingerprint (side-mounted), accelerometer, gyro, proximity, compass, barometer', 2, 2, 2, 2, 2, 2, 2, 2, NULL),
(3, 'https://fdn2.gsmarena.com/vv/bigpic/google-pixel-4-r1.jpg', 'Introduction\r\nIt wasn\'t with much excitement that we met the reveal of the Pixel 4 duo - Google\'s lack of effort to contain early leaks meant that not only were the specs unremarkable, but we also knew them in advance. We already had the 4 XL for review and we have more than a general idea of this gen\'s pros and cons, but now we set out to discover how the small Pixel 4 performs and how it stands in the context of its own specific competitors.\r\n\r\n\r\n\r\nThe Pixel 4 is essentially the same phone as the 4 XL, only scaled down in a couple of ways - display and battery. Where the XL packs a 6.3-inch QHD+ panel, the small phone stays at 5.7 inches (FullHD+ resolution, but that\'s fine at this size). Both are OLEDs too. Then there\'s battery - if the XL\'s 3,700mAh capacity sounded on the meh side of okay, the 2,800mAh figure in the Pixel 4 specsheet is downright worrisome.\r\n\r\nGoogle Pixel 4 review\r\nThe rest is all the same. The soon-to-be-replaced springtime Qualcomm top-dog of a chipset, the lowest amount of RAM of any current flagship, with low base storage and low maximum storage - it sure sounds exactly like Google\'s way of doing phones. That also means Android 10 in a flavor no one else has and if you\'re looking at a Pixel, you clearly enjoy that.\r\n\r\nGoogle Pixel 4 review\r\nThis generation of Pixels come with radar-based Motion Sense for gestures and a front ToF camera for 3D depth mapping, but is missing a fingerprint reader of any sort. It\'s got no ultra wide-angle camera either, but conversely, the small Pixel is one of the more affordable ways to get a telephoto from one of the big names - neither the iPhone 11 nor the Galaxy S10e has one.\r\n\r\nGoogle Pixel 4 specs\r\nBody: Texture-coated aluminum frame; Gorilla Glass 5 back (soft texture on the Clearly White and Oh So Orange color schemes, glossy on the Just Black); 147.1x68.8x8.2mm, 162g.\r\nScreen: 5.7\" P-OLED display, 90Hz variable refresh rate, 1080x2280px (~444ppi), 19:9 ratio, Gorilla Glass 5.\r\nChipset: Qualcomm Snapdragon 855, octa-core CPU (1x2.84GHz Kryo 485 + 3x2.42 GHz Kryo 485 + 4x1.78GHz Kryo 485); Adreno 640 GPU.\r\nMemory: 6GB RAM; 64/128GB storage, non-expandable.\r\nOS: Android 10.\r\nCameras: Main: 12.2MP, 1.4µm pixel size, 28mm equiv. focal length, f/1.7 aperture, dual pixel PDAF, OIS; Telephoto: 16MP, 1.0µm, 45mm, f/2.4, PDAF, OIS; LED flash; Nigh Sight; Live HDR viewfinder; Super Res Zoom; Video recording - 720p @ 240 fps, 1080p @ 120 fps, 2160p @ 30 fps.\r\nSelfie cam: 8MP, 1.22µm, 22mm, f/2.0; ToF 3D sensor.\r\nBattery: 2,800mAh Li-Po; 18W USB Power Delivery charging; 11W Qi wireless charging.\r\nConnectivity: Nano SIM + eSIM; Wi-Fi a/b/g/n/ac; Bluetooth 5.0 + LE; NFC; Wi-Fi direct; GPS, Galilleo, GLONASS.\r\nMisc: Face unlock; radar-based Motion Sense; stereo loudspeakers.\r\nGoogle Pixel 4 unboxing\r\nThe Pixel 4 that arrived at headquarters has a more conventional package with the phone printed on it as opposed to the colorful \'P 4\' markings on our US-bound XL unit. The contents are all the same, however.\r\n\r\nGoogle Pixel 4 review\r\nYou\'re getting an 18W USB Power Delivery adaptor, essentially the same one that shipped with the original Pixel (1), and a USB-C-to-C cable to go with it. There\'s also a USB-C-to-A adapter for plugging in thumb drives. There is no USB-C-to-3.5mm dongle, so if you want to hook up conventional wired headphones, you\'d need to provide your own. And, speaking of headphones, there aren\'t any in the box.', 'https://youtu.be/ZpymGfDnc6c', 'Face ID, accelerometer, gyro, proximity, compass, barometer', 3, 3, 3, 3, 3, 3, 3, 3, NULL);

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
(1, 'iOS 13\r\n', 'Apple A13 Bionic (7 nm+)', 'Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)', 'Apple GPU (4-core graphics)'),
(2, 'Android 10, One UI 2', 'Qualcomm SM8150 Snapdragon 855+ (7 nm)', 'Octa-core (1x2.95 GHz Kryo 485 & 3x2.41 GHz Kryo 485 & 4x1.78 GHz Kryo 485)', 'Adreno 640 (700 MHz)'),
(3, 'Android 10', 'Qualcomm SM8150 Snapdragon 855 (7 nm)', 'Octa-core (1x2.84 GHz Kryo 485 & 3x2.42 GHz Kryo 485 & 4x1.78 GHz Kryo 485)', 'Adreno 640');

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
(2, '10 MP, f/2.4, 26mm (wide), 1.22µm', 'HDR', '4K@30fps'),
(3, '8 MP, f/2.0, 22mm (wide), 1.22µm', 'Auto-HDR, no AF\r\nTOF 3D, (depth/biometrics sensor)', '1080p@30fps');

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
(1, 'Nguyen Vu Khang', '0329456784'),
(2, 'Nguyen Son Hao', '0366984554'),
(3, 'Nguyen Tran Quang Hien', '0682547893');

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
(2, 8, 256, 256),
(3, 6, 64, 256);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `userPassword` varchar(32) DEFAULT NULL,
  `userRole` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `userName`, `userPassword`, `userRole`) VALUES
(1, 'tangminhtin', '123456', 'admin'),
(2, 'bachnguyenphucthinh', '123456', 'staff'),
(3, 'huaquocvinh', '123456', 'customer'),
(4, 'truongnhatnam', '123456', 'customer'),
(5, 'nguyenngocanhtu', '123456', 'customer'),
(6, 'huynhthinhien', '123456', 'staff');

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
  ADD KEY `branchId` (`brandId`),
  ADD KEY `phoneDetailId` (`phoneDetailId`);

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
  MODIFY `batteryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `body`
--
ALTER TABLE `body`
  MODIFY `bodyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `commentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `connection`
--
ALTER TABLE `connection`
  MODIFY `connectionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `display`
--
ALTER TABLE `display`
  MODIFY `displayId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employeeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `maincamera`
--
ALTER TABLE `maincamera`
  MODIFY `mainCameraId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `phone`
--
ALTER TABLE `phone`
  MODIFY `phoneId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `phonedetail`
--
ALTER TABLE `phonedetail`
  MODIFY `phoneDetailId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `platform`
--
ALTER TABLE `platform`
  MODIFY `platformId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `selfiecamera`
--
ALTER TABLE `selfiecamera`
  MODIFY `selfieCameraId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipper`
--
ALTER TABLE `shipper`
  MODIFY `shipperId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `storage`
--
ALTER TABLE `storage`
  MODIFY `storageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  ADD CONSTRAINT `phone_ibfk_1` FOREIGN KEY (`brandId`) REFERENCES `brand` (`brandId`),
  ADD CONSTRAINT `phone_ibfk_2` FOREIGN KEY (`phoneDetailId`) REFERENCES `phonedetail` (`phoneDetailId`);

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
