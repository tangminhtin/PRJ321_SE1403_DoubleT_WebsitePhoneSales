-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 03, 2020 lúc 10:21 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_website_phone_sales`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `battery`
--

CREATE TABLE `battery` (
  `batteryId` int(11) NOT NULL,
  `batteryCapacity` int(11) DEFAULT NULL,
  `batteryType` varchar(150) DEFAULT NULL,
  `batteryTechnology` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `battery`
--

INSERT INTO `battery` (`batteryId`, `batteryCapacity`, `batteryType`, `batteryTechnology`) VALUES
(1, 1821, 'Non-removable Li-Ion', 'Fast charging 18W, 50% in 30 min (advertised)\r\nQi wireless charging'),
(2, 3300, 'Non-removable Li-Po', 'Fast charging 15W\r\nWireless charging'),
(3, 2800, 'Non-removable Li-Po', 'Fast charging 18W\r\nUSB Power Delivery 2.0\r\nQI wireless charging'),
(4, 3969, 'Non-removable Li-Ion', 'Fast charging 18W, 50% in 30 min (advertised), USB Power Delivery 2.0, Qi wireless charging, up to 20 h (multimedia), up to 80 h.'),
(5, 5000, 'Non-removable Li-Po', 'Fast charging 45W ,USB Power Delivery 3.0 ,Fast Qi/PMA wireless charging 15W ,Reverse wireless charging 9W'),
(6, 3110, 'Non-removable Li-Ion', 'Fast charging 18W, 50% in 30 min (advertised)\r\nUSB Power Delivery 2.0\r\nQi wireless charging'),
(7, 3430, 'Non-removable Li-Po', 'Fast charging 18W, USB Power Delivery 2.0, QI wireless charging');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `body`
--

CREATE TABLE `body` (
  `bodyId` int(11) NOT NULL,
  `bodyDimensions` varchar(150) DEFAULT NULL,
  `bodyWeight` varchar(100) DEFAULT NULL,
  `bodyBuild` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `body`
--

INSERT INTO `body` (`bodyId`, `bodyDimensions`, `bodyWeight`, `bodyBuild`) VALUES
(1, '138.4 x 67.3 x 7.3 mm (5.45 x 2.65 x 0.29 in)', '148 g (5.22 oz)', 'Glass front, glass back, aluminum frame'),
(2, 'Unfolded: 167.3 x 73.6 x 7.2 mm\r\nFolded: 87.4 x 73.6 x 17.3 mm', '183 g (6.46 oz)', 'Plastic front, glass back (Gorilla Glass 6), aluminum frame'),
(3, '147.1 x 68.8 x 8.2 mm (5.79 x 2.71 x 0.32 in)', '162 g (5.71 oz)', 'Glass front (Gorilla Glass 5), glass back (Gorilla Glass 5), aluminum frame'),
(4, '158 x 77.8 x 8.1 mm (6.22 x 3.06 x 0.32 in)', '226 g (7.97 oz)', 'Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame'),
(5, '166.9 x 76 x 8.8 mm (6.57 x 2.99 x 0.35 in)', '222 g (7.83 oz)', 'Glass front (Gorilla Glass 6), glass back (Gorilla Glass 6), aluminum frame'),
(6, '150.9 x 75.7 x 8.3 mm (5.94 x 2.98 x 0.33 in)', '194 g (6.84 oz)', 'Glass front (Gorilla Glass), glass back (Gorilla Glass), aluminum frame (7000 series)'),
(7, '158 x 76.7 x 7.9 mm (6.22 x 3.02 x 0.31 in)', '184 g (6.49 oz)', 'Glass front (Gorilla Glass 5), glass back (Gorilla Glass 5), aluminum frame');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(30) DEFAULT NULL,
  `brandImage` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`brandId`, `brandName`, `brandImage`) VALUES
(1, 'Apple', 'apple.png'),
(2, 'Samsung', 'samsung.png'),
(3, 'Google', 'google.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `commentId` int(11) NOT NULL,
  `commentContent` text DEFAULT NULL,
  `commentDate` datetime DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`commentId`, `commentContent`, `commentDate`, `customerId`) VALUES
(1, 'Guys, these phone is really good. It may have an old design and single camera but personally itÂ’s better than those with many camera but no quality image and ugly large notch or large screen that burns out after a few years on the road. Being an And...', '2020-06-25 00:00:00', 1),
(2, 'See forget about the size that phone is guuuuud, the way it is, just take a look at the \"iPhone se\" it\'s also a small but mighty phone kinda like the z flip', '2020-06-25 00:00:00', 2),
(3, 'Best in any smartphone you have seen so far. If camera is the primary concern? This should be your choice. It also gets fastest android updates. But if you play games and do web browsing only and camera is not a primary concern, there are better ph...', '2020-06-25 00:00:00', 3),
(4, 'This is my first ever iphone and my experience is very good .everything is there which we expected in device good battery life,performance, camera ,gaming ,security everything is fabulous.just go for it', '2020-07-13 13:42:23', 2),
(5, 'The phone comes with wired AKG tuned earphones.... with C type connections instead 3.5 jack. Its better to have minimum openings in phone', '2020-07-01 14:08:34', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `connection`
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
-- Đang đổ dữ liệu cho bảng `connection`
--

INSERT INTO `connection` (`connectionId`, `connectionSIM`, `connectionMobileNetwork`, `connectionWLAN`, `connectionBluetooth`, `connectionGPS`, `connectionNFC`, `connectionRadio`, `connectionUSB`, `connectionJack`) VALUES
(1, 'Nano-SIM and/or eSIM', 'GSM/CDMA/HSPA/EVDO/LTE', 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot', '5.0, A2DP, LE', 'Yes, with A-GPS, GLONASS', 1, 0, '2.0, proprietary reversible connector', 0),
(2, 'Nano-SIM, eSIM', 'HSPA 42.2/5.76 Mbps, LTE-A (5CA) Cat16 1000/150 Mbps', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot', '5.0, A2DP, LE', 'Yes, with A-GPS, GLONASS, GALILEO, BDS', 1, 0, '3.1, Type-C 1.0 reversible connector, USB On-The-Go', 0),
(3, 'Nano-SIM card & eSIM', 'HSPA 42.2/5.76 Mbps, LTE-A (5CA) Cat18 1200/150 Mbps', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, DLNA, hotspot', '5.0, A2DP, LE, aptX HD', 'Yes, with A-GPS, GLONASS, BDS, GALILEO', 1, 0, '3.1, Type-C 1.0 reversible connector', 0),
(4, 'Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by) - for China', 'GSM/CDMA/HSPA/EVDO/LTE', 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot', '5.0, A2DP, LE', 'Yes, with A-GPS, GLONASS', 1, 0, '2.0, proprietary reversible connector', 0),
(5, 'Single SIM (Nano-SIM and/or eSIM) or Hybrid Dual SIM (Nano-SIM, dual stand-by)', 'LTE/5G/CDMA/HSPA', 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, Wi-Fi Direct, hotspot', '5.0, A2DP, LE', 'Yes, with A-GPS, GLONASS, BDS, GALILEO', 1, 1, '3.2, Type-C 1.0 reversible connector, USB On-The-Go', 0),
(6, 'Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by) - for China', 'GSM / CDMA / HSPA / EVDO / LTE\r\n', 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot', '5.0, A2DP, LE', 'Yes, with A-GPS, GLONASS, GALILEO, QZSS', 1, 0, '2.0, proprietary reversible connector', 0),
(7, 'Nano-SIM card & eSIM', 'GSM / CDMA / HSPA / EVDO / LTE', 'Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, DLNA, hotspot', '5.0, A2DP, LE, aptX HD', 'Yes, with A-GPS, GLONASS, BDS, GALILEO', 1, 0, '3.1, Type-C 1.0 reversible connector', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `customerId` int(11) NOT NULL,
  `customerFullname` varchar(50) DEFAULT NULL,
  `customerAddress` varchar(100) DEFAULT NULL,
  `customerPhone` varchar(15) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customerId`, `customerFullname`, `customerAddress`, `customerPhone`, `userId`) VALUES
(1, 'Hua Quoc Vinh', 'Can Tho', '0348432564', 3),
(2, 'Truong Nhat Nam', 'Vinh Long', '0684567813', 4),
(3, 'Nguyen Ngoc Anh Tu', 'An Giang', '0457894658', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `display`
--

CREATE TABLE `display` (
  `displayId` int(11) NOT NULL,
  `displayType` varchar(150) DEFAULT NULL,
  `displaySize` varchar(150) DEFAULT NULL,
  `displayResolution` varchar(150) DEFAULT NULL,
  `displayProtection` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `display`
--

INSERT INTO `display` (`displayId`, `displayType`, `displaySize`, `displayResolution`, `displayProtection`) VALUES
(1, 'Retina IPS LCD capacitive touchscreen, 16M colors', '4.7 inches, 60.9 cm2 (~65.4% screen-to-body ratio)', '750 x 1334 pixels, 16:9 ratio (~326 ppi density)', 'Ion-strengthened glass, oleophobic coating\r\n 	Wide color gamut\r\nTrue-tone\r\n625 nits max brightness (advertised)'),
(2, 'Foldable Dynamic AMOLED capacitive touchscreen, 16M colors', '	6.7 inches, 101.6 cm2 (~82.5% screen-to-body ratio)', '1080 x 2636 pixels (~425 ppi density)\r\n 	HDR10+\r\nCover display: 1.1\", Super AMOLED, 112 x 300 pixels', 'Corning Gorilla Glass 5'),
(3, 'P-OLED capacitive touchscreen, 16M colors', '5.7 inches, 80.7 cm2 (~79.8% screen-to-body ratio)', '1080 x 2280 pixels, 19:9 ratio (~444 ppi density)', 'Corning Gorilla Glass 5\r\n 	HDR\r\nAlways-on display\r\n90Hz refresh rate'),
(4, 'Super Retina XDR OLED capacitive touchscreen, 16M colors', '6.5 inches, 102.9 cm2 (~83.7% screen-to-body ratio)', '1242 x 2688 pixels, 19.5:9 ratio (~458 ppi density)', 'Scratch-resistant glass, oleophobic coating 800 nits max brightness (advertised), Dolby Vision, HDR10, Wide color gamut, True-tone, 120Hz touch-sensin'),
(5, 'Dynamic AMOLED 2X capacitive touchscreen, 16M colors, HDR10+, Always-on display , 120Hz@FHD/60Hz@QHD refresh rate', '6.9 inches, 114.0 cm2 (~89.9% screen-to-body ratio)', '1440 x 3200 pixels, 20:9 ratio (~511 ppi density)', 'Corning Gorilla Glass 6'),
(6, 'Liquid Retina IPS LCD capacitive touchscreen, 16M colors', '6.1 inches, 90.3 cm2 (~79.0% screen-to-body ratio)', '828 x 1792 pixels, 19.5:9 ratio (~326 ppi density)', 'Scratch-resistant glass, oleophobic coating, 625 nits max brightness (advertised), True-tone'),
(7, 'P-OLED capacitive touchscreen, 16M colors, HDR, Always-on display', '6.3 inches, 100.3 cm2 (~82.8% screen-to-body ratio)', '1440 x 2960 pixels, 18.5:9 ratio (~523 ppi density)', 'Corning Gorilla Glass 5');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employee`
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
-- Đang đổ dữ liệu cho bảng `employee`
--

INSERT INTO `employee` (`employeeId`, `employeeFullname`, `employeeAddress`, `employeePhone`, `employeeEmail`, `employeeImage`, `userId`) VALUES
(1, 'Bach Nguyen Phuc Thinh', 'Hau Giang', '0354879462', 'bachnguyenphucthinh@gmail.com', NULL, 2),
(2, 'Huynh Thi Nhien', 'Hau Giang', '0367894562', 'huynhthinhien@gmail.com', NULL, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maincamera`
--

CREATE TABLE `maincamera` (
  `mainCameraId` int(11) NOT NULL,
  `mainCameraResolution` varchar(150) DEFAULT NULL,
  `mainCameraFeatures` varchar(150) DEFAULT NULL,
  `mainCameraVideo` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `maincamera`
--

INSERT INTO `maincamera` (`mainCameraId`, `mainCameraResolution`, `mainCameraFeatures`, `mainCameraVideo`) VALUES
(1, '12 MP, f/1.8 (wide), PDAF, OIS\r\n', 'Quad-LED dual-tone flash, HDR, panorama', '4K@24/30/60fps, 1080p@30/60/120/240fps, HDR, OIS, stereo sound rec'),
(2, '12 MP, f/1.8, 27mm (wide), 1/2.55\", 1.4µm, Dual Pixel PDAF, OIS, 12 MP, f/2.2, 12mm (ultrawide), 1.12µm', 'LED flash, HDR, panorama', '4K@30/60fps, 1080p@60/240fps, 720p@960fps, HDR10+'),
(3, '12.2 MP, f/1.7, 27mm (wide), 1/2.55\", 1.4µm, dual pixel PDAF, OIS\r\n16 MP, f/2.4, 50mm (telephoto), 1/3.6\", 1.0µm, PDAF, OIS, 2x optical zoom', 'Dual-LED flash, Auto-HDR, panorama', '4K@30fps, 1080p@30/60/120fps, 1080p@30fps (gyro-EIS)'),
(4, '12 MP, f/1.8, 26mm (wide), 1/2.55\", 1.4µm, dual PDAF, OIS, 12 MP, f/2.0, 52mm (telephoto), 1/3.4\",1.0µm, PDAF, OIS, 2x, 12 MP, f/2.4, 13mm (ultrawide)', 'Quad-LED dual-tone flash, HDR (photo/panorama)', '4K@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec.'),
(5, '108 MP, f/1.8, 26mm (wide), 1/1.33\", 0.8µm, PDAF, OIS\r\n48 MP, f/3.5, 103mm (periscope telephoto), 1/2.0\", 0.8µm, PDAF, OIS, ', 'LED flash, auto-HDR, panorama', '8K@24fps, 4K@30/60fps, 1080p@30/60/240fps, 720p@960fps, HDR10+, stereo sound rec., gyro-EIS & OIS'),
(6, '12 MP, f/1.8, 26mm (wide), 1/2.55\", 1.4µm, dual pixel PDAF, OIS\r\n12 MP, f/2.4, 13mm (ultrawide)', 'Quad-LED dual-tone flash, HDR (photo/panorama)', '4K@24/30/60fps, 1080p@30/60/120/240fps, HDR, stereo sound rec.'),
(7, '12.2 MP, f/1.8, 28mm (wide), 1/2.55\", 1.4µm, dual pixel PDAF, OIS', 'Dual-LED flash, Auto-HDR, panorama', '	4K@30fps, 1080p@30/60/120fps, 1080p@30fps (gyro-EIS)');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
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
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`orderId`, `orderDate`, `orderQuantity`, `orderTotalPrice`, `orderNote`, `phoneId`, `customerId`) VALUES
(1, '2020-06-25 00:00:00', 2, 798, 'Red', 1, 1),
(2, '2020-06-25 00:00:00', 1, 1050, 'Gold', 2, 2),
(3, '2020-06-25 00:00:00', 1, 549.99, 'Yellow', 3, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetail`
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
-- Đang đổ dữ liệu cho bảng `orderdetail`
--

INSERT INTO `orderdetail` (`orderId`, `phoneId`, `shipperId`, `employeeId`, `orderDetailTotalPrice`, `orderDetailQuantity`) VALUES
(1, 1, 1, 2, 798, 2),
(2, 2, 2, 1, 1050, 1),
(3, 3, 3, 2, 459.99, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phone`
--

CREATE TABLE `phone` (
  `phoneId` int(11) NOT NULL,
  `phoneImage` varchar(120) DEFAULT NULL,
  `phoneName` varchar(70) DEFAULT NULL,
  `phoneDiscount` double DEFAULT NULL,
  `phonePrice` double DEFAULT NULL,
  `phoneShortDescription` varchar(250) DEFAULT NULL,
  `brandId` int(11) DEFAULT NULL,
  `phoneDetailId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `phone`
--

INSERT INTO `phone` (`phoneId`, `phoneImage`, `phoneName`, `phoneDiscount`, `phonePrice`, `phoneShortDescription`, `brandId`, `phoneDetailId`) VALUES
(1, 'https://fdn.gsmarena.com/imgroot/reviews/20/apple-iphone-se-2020/lifestyle/-1024w2/gsmarena_015.jpg', 'Apple iPhone SE (2020)', 0, 399, 'Ah, the Apple iPhone SE. The Special Edition. Even if the Smaller Edition was more appropriate. And just like the first iPhone SE, its second generation is both - Small, even if larger than the first one, and Special - as such launch happens once in ', 1, 1),
(2, 'https://fdn.gsmarena.com/imgroot/reviews/20/samsung-galaxy-z-flip/lifestyle/-1024w2/gsmarena_006.jpg', 'Samsung Galaxy Z Flip', 0, 1050, 'Samsung wowed everyone last year when it introduced the Galaxy Fold. Sure, it took a few months to figure out the kinks after the first batch of units saw some fatal manufacturing defects. ', 2, 2),
(3, 'https://fdn.gsmarena.com/imgroot/reviews/19/google-pixel-4/gal/-1024w2/gsmarena_007.jpg', 'Google Pixel 4', 0, 549.99, 'We already had the 4 XL for review and we have more than a general idea of this gen\'s pros and cons, but now we set out to discover how the small Pixel 4 performs and how it stands in the context of its own specific competitors.', 3, 3),
(4, 'https://fdn.gsmarena.com/imgroot/reviews/19/apple-iphone-11-pro-max/lifestyle/-1024w2/gsmarena_038.jpg', 'Iphone 11 Pro Max', 0, 1999.99, 'The iPhone XS series, as any other S generation, brought new Bionic chip with a massive improvement in speed. Now, with the iPhone 11 Pro lineup, Apple is going after the camera and that\'s what the Pro moniker really stands for.', 1, 4),
(5, 'https://fdn.gsmarena.com/imgroot/reviews/20/samsung-galaxy-s20-ultra/review/lifestyle/-1024w2/gsmarena_015.jpg', 'Samsung Galaxy S20 Ultra 5G', 0, 1509.95, 'Ultra - that\'s where you end up when you one-up your usual Plus. In other words, Samsung\'s outdone itself this year and has gone above and beyond its S20+ to give us the Galaxy S20 Ultra.', 2, 5),
(6, 'https://fdn.gsmarena.com/imgroot/reviews/19/apple-iphone-11/lifestyle/-1024w2/gsmarena_004.jpg', 'Apple iPhone 11', 0, 1399.79, 'We thought we\'d never see the maker give this idea another try. Well, last year the iPhone XR was more than well received being the best selling iPhone of the trio, so this year we welcome its sequel - the iPhone 11.', 1, 6),
(7, 'https://fdn.gsmarena.com/imgroot/reviews/18/google-pixel-3-xl/lifestyle/-1024w2/gsmarena_001.jpg', 'Google Pixel 3 XL', 0, 599.99, 'The Pixel 3 XL is Google\'s latest flagship smartphone. It promises to bring everything we have come to expect with the Pixel brand, including a clean build of Android.', 3, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phonedetail`
--

CREATE TABLE `phonedetail` (
  `phoneDetailId` int(11) NOT NULL,
  `phoneDetailImage` varchar(120) DEFAULT NULL,
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
-- Đang đổ dữ liệu cho bảng `phonedetail`
--

INSERT INTO `phonedetail` (`phoneDetailId`, `phoneDetailImage`, `phoneDetailDescription`, `phoneDetailVideo`, `phoneDetailSpecialFeatures`, `displayId`, `bodyId`, `platformId`, `mainCameraId`, `selfieCameraId`, `storageId`, `batteryId`, `connectionId`, `commentId`) VALUES
(1, 'https://fdn.gsmarena.com/imgroot/reviews/20/apple-iphone-se-2020/lifestyle/-1024w2/gsmarena_015.jpg', 'Ah, the Apple iPhone SE. The Special Edition. Even if the Smaller Edition was more appropriate. And just like the first iPhone SE, its second generation is both - Small, even if larger than the first one, and Special - as such launch happens once in four years or so.\r\n\r\n\r\n\r\nWe are sure Apple had plans for a great premiere event last March, but COVID-19 turned everything upside down and such plans were abruptly scrapped. The new iPhone was unveiled fanfare-less on the maker\'s website, out of the blue, but it quickly became famous for being not only one of the cheapest iPhones ever made but also as one of the season\'s hottest bang for the buck offers.\r\n\r\nApple iPhone SE 2020 review\r\nImagine that - bang for the buck coming from Apple! Indeed, the highlight feature of the new iPhone SE is the A13 Bionic chip - that\'s Apple\'s latest platform - the one that\'s powering the iPhone 11 trio. As for the rest, well, it\'s mostly iPhone 8.\r\n\r\nApple did use the 2.5 years old iPhone 8 as a canvas in more than one way. The shell is the same, as is the screen (sans the 3D Touch layer), same front and rear cameras ergo photo and video capabilities, same stereo speakers, same battery capacity, same charging capabilities.\r\n\r\nApple iPhone SE 2020 review\r\nA thorough look reveals the iPhone SE (2020) is indeed small by today\'s standards, and while it brings features introduced more than two years ago, those are hardly outdated - the phone is water-resistant, its single camera offers numerous features such as portraits, Smart HDR and even 4K at 60 with both OIS and EIS available, while the stereo speakers are of an excellent quality that is tough to beat even to this very day.\r\n\r\nApple iPhone SE (2020) key features\r\nBody: Aluminum frame, Gorilla Glass front with oleophobic coating, Gorilla Glass back with glossy finish, IP67 certified for water and dust resistance. Red, Black, and White color options; 138.4 x 67.3 x 7.3 mm; 148g.\r\nScreen: 4.7\" 16M-color LED-backlit IPS LCD screen of 750p resolution, 326ppi, True Tone adjustment via four-channel ambient light sensor.\r\nOS: Apple iOS 13.\r\nChipset: Apple A13 Bionic (7nm+) chip - 2x2.66 GHz Lightning + 4x1.8 GHz Thunder) Apple CPU, four-core Apple GPU, 8-core Apple NPU 3-gen.\r\nCamera: 12MP camera with F/1.8 lens, optical image stabilization, quad-LED flash with slow sync, phase detection auto focus, Smart HDR, wide color capture.\r\nVideo recording: 2160p@60/30fps, 1080p@30/60/120/240fps video recording\r\nSelfie: 7MP F/2.2 front-facing camera with BSI sensor and HDR mode, 1080p@30fps video\r\nStorage: 64GB, 128, or 256GB of built-in storage.\r\nConnectivity: 4G LTE Cat.12; Wi-Fi a/b/g/n/ac; Bluetooth 5.0; Lightning port; GPS with A-GPS, GLONASS, GALILEO, QZSS; NFC (Apple Pay only).\r\nBattery: 1,821mAh battery, 18W fast charging, wireless charging (Qi compatible).\r\nMisc: Stereo speakers, pressure-sensitive Home key with fingerprint scanner, Taptic Engine.\r\nThe bezels are what looked old on the iPhone 8, and now they look ancient on this new SE model. They are wonderful as thumb rests for when you are using the phone in landscape orientation for gaming or videos, but they will be a target for many laughs either way. And the battery capacity could have been improved a bit, but we are yet to see the new A13 chip in action, so let\'s not judge just yet.\r\n\r\nAnd now, it\'s time to unpack our red iPhone SE.\r\n\r\nUnboxing the Apple iPhone SE (2020)\r\nThe iPhone retail bundle has seen few changes over the year with the most prominent being the 18W charger replacing the 5W adapter for the iPhone 11 Pro models. That is not the case with the iPhone SE, though.\r\n\r\nThe Apple iPhone SE (2020) retail box contains the prehistoric 5W charger and the usual Lightning cable. We do appreciate the EarPods that are included with every iPhone, though. Two Apple logo stickers and the SIM ejector complete the SE bundle.\r\n\r\nApple iPhone SE 2020 review\r\nThe iPhone SE supports USB-PD fast charging (up to 18W), as well as wireless charging (up to 8W), so at least you are not without other options. You just have to get yourself a quick charger separately.', 'https://youtu.be/CnSJYa3m9DM', 'Fingerprint (front-mounted), accelerometer, proximity, gyro, compass, barometer\r\n 	Siri natural language commands and dictation', 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(2, 'https://fdn.gsmarena.com/imgroot/reviews/20/samsung-galaxy-z-flip/lifestyle/-1024w2/gsmarena_006.jpg', 'Introduction\r\nSamsung wowed everyone last year when it introduced the Galaxy Fold. Sure, it took a few months to figure out the kinks after the first batch of units saw some fatal manufacturing defects. Once figured out, though, the Galaxy Fold turned out to be one of those milestone devices that would change the industry forever.\r\n\r\n\r\n\r\nThe Galaxy Z Flip is Samsung\'s second-generation folding device, and the company\'s first-generation Galaxy Z product. In both cases, the Galaxy Z Flip is a unique device - combining the nostalgic form factor from almost two decades ago with the brilliance of Samsung\'s second-generation Hideaway Hinge and flexible display technology.\r\n\r\nSamsung Galaxy Z Flip review\r\nThe AMOLED screen has a punch hole cut-out for the 10MP selfie camera and the dual 12MP cameras look promising. The Z Flip also keeps some of the flagship Galaxy\'s charging features like wireless charging and Power Share (reverse wireless charging). The 3,300 mAh battery seems a bit small, though.\r\n\r\nSamsung Galaxy Z Flip review\r\nThe Galaxy Z Flip sees a couple of improvements in the hinge, as well as a new protective material in front of the display which Samsung calls \"UTG\" or Ultra Thin Glass. This glass is protected by the same polymer material as the Galaxy Fold so it\'s still not as scratch resistant as your typical Gorilla Glass handset.\r\n\r\nSamsung Galaxy Z Flip Specs:\r\nBody: Hideaway Hinge; aluminum frames; Gorilla Glass 6; mirror finish; 183g\r\nDimensions: Closed: 87.4 x 73.7 x 15.4-18.33 mm; Open: 167.9 x 73.6 x 6.9-7.2 mm\r\nScreen: 6.7-Inch Infinity Flex Adaptive AMOLED display with Ultra Thin Glass layered under polymer-based protective surface; FHD+ (1080 x 2636 px), 21.5:9 aspect ratio\r\nCover Display: 1.1-inch (112 x 300 px) Super AMOLED\r\nChipset: Qualcomm Snapdragon 855+ Octa-core (1x2.95 GHz Kryo 485 & 3x2.41 GHz Kryo 485 & 4x1.78 GHz Kryo 485); Adreno 640 GPU\r\nMemory: 8GB RAM + 256GB UFS 3.0 internal storage (non-expandable)\r\nOS: Android 10; Samsung One UI 2.1\r\nBattery: 3,300 mAh, 15W Adaptive Fast Charge; Fast Wireless Charging; Wireless Powershare 9W\r\nCameras: Primary: 12MP (f/1.8, 27mm (wide), 1.4µm, Dual Pixel PDAF, OIS); Ultrawide: f/2.2, 12mm, 1.12µm; LED Flash\r\nSelfie camera: 10 MP, f/2.4, 26mm (wide), 1.22µm; PDAF\r\nConnectivity: Bluetooth 5.0; Wi-Fi a/b/g/n/ac; USB-C\r\nThe Galaxy Fold\'s specs aren\'t groundbreaking, but they are certainly not midrange by any means. It\'s running the 2019 Snapdragon 855+ with 8GB of RAM and 256GB of storage - so it\'s basically a flagship Samsung Galaxy phone on the inside.\r\n\r\nSamsung Galaxy Z Flip review\r\nSamsung went with a dual-camera setup on the Z Flip - there\'s no telephoto camera, but there\'s at least an ultra-wide. The selfie camera is a 10MP unit, though its aperture isn\'t as bright as we\'ve seen on other Galaxy Flagships.\r\n\r\nIn any case, we\'re here to let you know if the Samsung Galaxy Z Flip is worth it. Does this brand-new form factor offer enough bang for your buck?\r\n\r\nUnboxing\r\nThe Galaxy Z Flip\'s box features a dual-layered logo shaped like a \"Z\". Our Mirror Purple model showed a purple \"Z\" and after cutting the seals, we can slide the sleeve off the actual box. Now you can lift the lid off the box and see the Z Flip.\r\n\r\nSamsung Galaxy Z Flip review\r\nThe first thing you\'ll notice is the list of warnings on the protective film on the Z Flip. It warns not to use sharp objects near the screen, not to press too hard with your finger or fingernail, and to not attach any screen protectors to the display. It also warns that the phone is not water-resistant and that the strong magnets on the Z Flip may cause damage to credit cards or medical devices.\r\n\r\nSamsung Galaxy Z Flip review\r\nWe almost missed it, but there\'s a flat box hiding in the top half of the box with documentation, a SIM eject tool, and a protective plastic case for the Z Flip. It doesn\'t seem like it will actually protect the phone from damage in the event of a drop, but it should be fine to keep the outside safe from scratches.\r\n\r\nUnderneath the phone is a 15W Adaptive Fast Charge adapter, USB-C to USB-A cable, a content transfer adapter with a full-size USB-A port, and a pair of AKG headphones with USB-C connector.\r\n\r\nNow let\'s look at the design of the Z Flip.', 'https://youtu.be/XIHtB9A7HPU', '	Fingerprint (side-mounted), accelerometer, gyro, proximity, compass, barometer', 2, 2, 2, 2, 2, 2, 2, 2, NULL),
(3, 'https://fdn.gsmarena.com/imgroot/reviews/19/google-pixel-4/gal/-1024w2/gsmarena_007.jpg', 'Introduction\r\nIt wasn\'t with much excitement that we met the reveal of the Pixel 4 duo - Google\'s lack of effort to contain early leaks meant that not only were the specs unremarkable, but we also knew them in advance. We already had the 4 XL for review and we have more than a general idea of this gen\'s pros and cons, but now we set out to discover how the small Pixel 4 performs and how it stands in the context of its own specific competitors.\r\n\r\n\r\n\r\nThe Pixel 4 is essentially the same phone as the 4 XL, only scaled down in a couple of ways - display and battery. Where the XL packs a 6.3-inch QHD+ panel, the small phone stays at 5.7 inches (FullHD+ resolution, but that\'s fine at this size). Both are OLEDs too. Then there\'s battery - if the XL\'s 3,700mAh capacity sounded on the meh side of okay, the 2,800mAh figure in the Pixel 4 specsheet is downright worrisome.\r\n\r\nGoogle Pixel 4 review\r\nThe rest is all the same. The soon-to-be-replaced springtime Qualcomm top-dog of a chipset, the lowest amount of RAM of any current flagship, with low base storage and low maximum storage - it sure sounds exactly like Google\'s way of doing phones. That also means Android 10 in a flavor no one else has and if you\'re looking at a Pixel, you clearly enjoy that.\r\n\r\nGoogle Pixel 4 review\r\nThis generation of Pixels come with radar-based Motion Sense for gestures and a front ToF camera for 3D depth mapping, but is missing a fingerprint reader of any sort. It\'s got no ultra wide-angle camera either, but conversely, the small Pixel is one of the more affordable ways to get a telephoto from one of the big names - neither the iPhone 11 nor the Galaxy S10e has one.\r\n\r\nGoogle Pixel 4 specs\r\nBody: Texture-coated aluminum frame; Gorilla Glass 5 back (soft texture on the Clearly White and Oh So Orange color schemes, glossy on the Just Black); 147.1x68.8x8.2mm, 162g.\r\nScreen: 5.7\" P-OLED display, 90Hz variable refresh rate, 1080x2280px (~444ppi), 19:9 ratio, Gorilla Glass 5.\r\nChipset: Qualcomm Snapdragon 855, octa-core CPU (1x2.84GHz Kryo 485 + 3x2.42 GHz Kryo 485 + 4x1.78GHz Kryo 485); Adreno 640 GPU.\r\nMemory: 6GB RAM; 64/128GB storage, non-expandable.\r\nOS: Android 10.\r\nCameras: Main: 12.2MP, 1.4µm pixel size, 28mm equiv. focal length, f/1.7 aperture, dual pixel PDAF, OIS; Telephoto: 16MP, 1.0µm, 45mm, f/2.4, PDAF, OIS; LED flash; Nigh Sight; Live HDR viewfinder; Super Res Zoom; Video recording - 720p @ 240 fps, 1080p @ 120 fps, 2160p @ 30 fps.\r\nSelfie cam: 8MP, 1.22µm, 22mm, f/2.0; ToF 3D sensor.\r\nBattery: 2,800mAh Li-Po; 18W USB Power Delivery charging; 11W Qi wireless charging.\r\nConnectivity: Nano SIM + eSIM; Wi-Fi a/b/g/n/ac; Bluetooth 5.0 + LE; NFC; Wi-Fi direct; GPS, Galilleo, GLONASS.\r\nMisc: Face unlock; radar-based Motion Sense; stereo loudspeakers.\r\nGoogle Pixel 4 unboxing\r\nThe Pixel 4 that arrived at headquarters has a more conventional package with the phone printed on it as opposed to the colorful \'P 4\' markings on our US-bound XL unit. The contents are all the same, however.\r\n\r\nGoogle Pixel 4 review\r\nYou\'re getting an 18W USB Power Delivery adaptor, essentially the same one that shipped with the original Pixel (1), and a USB-C-to-C cable to go with it. There\'s also a USB-C-to-A adapter for plugging in thumb drives. There is no USB-C-to-3.5mm dongle, so if you want to hook up conventional wired headphones, you\'d need to provide your own. And, speaking of headphones, there aren\'t any in the box.', 'https://youtu.be/ZpymGfDnc6c', 'Face ID, accelerometer, gyro, proximity, compass, barometer', 3, 3, 3, 3, 3, 3, 3, 3, NULL),
(4, 'https://fdn.gsmarena.com/imgroot/reviews/19/apple-iphone-11-pro-max/lifestyle/-1024w2/gsmarena_038.jpg', 'The iPhone 11 Pro and 11 Pro Max are sequels to the iPhone XS and iPhone XS Max - if there was any doubt. They are just as big, with similar designs and screens, but come with improved performance, some big camera upgrades, larger batteries, and a new Apple U1 wideband chip. Indeed, there is a lot to explore, so don\'t let the familiar looks fool you.\r\nIndeed, the iPhone 11 Pro design stays the same, or at least that\'s what the front suggests. There is a brand-new triple-camera setup on the back though, and the rear glass now has a frosted finish that we\'ve grown to love since the OnePlus 6. The water-protection has seen some improvement too, and now the eleventh iPhones can endure submersion in up to 4 meters deep water.\r\n\r\nThe new A13 Bionic chip is an improved version of the last year\'s A12. It sure packs even more punch, a new ISP and DSP, among other things, but it is mostly based on the A12 design.\r\n\r\nThe new triple camera is brand new, though. Now in addition to the wide and tele shooters, there is an ultrawide snapper. Night Mode finally makes it to the iPhones, and the 4K capture at 60fps gets the cool extended dynamic range as well. Probably the most awesome feature, showing off the power of Apple\'s chip, is the option to shoot with all four cameras (incl. selfie) at once. At 4K at 60fps with no limits. Imagine that!\r\n\r\nAnd the front camera has finally gotten its long overdue update - it is now a 12MP shooter that can shoot in all resolution and framerates as the rear snappers. Slow-mo, called slofies, is available to the front cam as well, but we are yet to see if these slofies will be become a thing or not.\r\n\r\nApple also integrated a new Apple U1 wideband chip, but its usage is yet to implemented fully within iOS.\r\n\r\nAnd finally, the iPhone 11 Pro now has 20% larger battery than the XS, while the 11 Pro Max enjoys a 25% bump in the capacity over the XS Max.', 'https://www.youtube.com/watch?v=e1-vykk8dy4', 'Face ID, accelerometer, gyro, proximity, compass, barometer, Siri natural language commands and dictation', 4, 4, 4, 4, 4, 5, 4, 4, 4),
(5, 'https://fdn.gsmarena.com/imgroot/reviews/20/samsung-galaxy-s20-ultra/review/lifestyle/-1024w2/gsmarena_015.jpg', 'Leading the spring-time roster this year, the Ultra marks a shift compared to the 2019 lineup. Where last year we had the similar in most ways S10 and S10+, and then the S10e positioned below them, this time around there\'s a model above the mainstream S20 and S20+ - the new moniker makes all the sense then.\r\n\r\nAnd it\'s ultra alright. Sure, it\'s got an even bigger display and packs a larger battery with faster charging than the other S20s, plus you can have it with up to a ridiculous 16GB of RAM, while the non-Ultras top out at a modest 12GB. But that\'s not it.\r\n\r\nIt\'s the camera - likely the most extraordinarily all-out setup we\'ve seen to date. The primary cam uses a sizeable 108MP sensor which combines 9 tiny pixels into one big one with processing designed to make use of the extra data being gathered - Nonacell as Samsung calls it.\r\n\r\nThen there\'s the telephoto shooter - it\'s got an unmatched combination of a big 48MP imager and a periscope lens offering 4x optical zoom over the main. Samsung has \'100X space zoom\' branding on the back of the phone and we\'ll be sure to check by just how much it misses the moon, but in any case it\'s a spectacularly impressive tele camera on paper.\r\n\r\nThe ultra wide isn\'t quite there. While it is a new unit with a big sensor and large pixels, it\'s still missing a vital part of what makes a truly good camera - autofocus.\r\n\r\nOver on the front, there\'s yet another ultra camera touch - Samsung\'s fitted a 40MP selfie module to set it apart from the so familiar 10MP units on the regular S20s. It\'s going to be one lengthy camera section.', 'https://www.youtube.com/watch?v=VyH-q7ZzSUk', 'Fingerprint (under display, ultrasonic), accelerometer, gyro, proximity, compass, barometer ANT+ Bixby natural language commands and dictation Samsung', 5, 5, 5, 5, 5, 6, 5, 5, 5),
(6, 'https://fdn.gsmarena.com/imgroot/reviews/19/apple-iphone-11/lifestyle/-1024w2/gsmarena_004.jpg', 'The iPhone XR was the first commercial success that came on the second attempt for making a more affordable iPhone. The iPhone 5c failed to impress in 2013, and we thought we\'d never see the maker give this idea another try. Well, last year the iPhone XR was more than well received being the best selling iPhone of the trio, so this year we welcome its sequel - the iPhone 11.\r\n\r\nThe iPhone XR was indeed a cheaper, toned-down version of the XS generation, with an LCD screen, one camera short, and promised some excellent battery endurance. Well, when we say cheaper, we are not saying cheap, as those words mean something different in Apple\'s universe.\r\n\r\nBut truth be told, this year the iPhone 11 is even cheaper than the XR on launch - now priced at $700 instead of $750. The good news is that nothing has been left out and there are a few welcome additions to the low-tier iPhone.\r\n\r\nSo, the iPhone 11 keeps absolutely the same form factor and screen as the XR\'s. It employs the same 6.1\" IPS LCD screen with 326ppi and a notch on top that contains the Face ID tech. The screen specs are unchanged - same contrast, brightness, Haptic Touch, and whatnot.\r\n\r\nThe iPhone 11 boasts the new Apple A13 Bionic chip - the same SoC that powers the flagship iPhone 11 Pro duo. It also gets a second camera, and it\'s the new 12MP ultra wide-angle snapper, also brought from the Pro models. Features like Crop Out of Frame are available as well, and also shooting 4K videos with all cameras at once.', 'https://www.youtube.com/watch?v=hVpkbiQ9E4c', 'Face ID, accelerometer, gyro, proximity, compass, barometer, Siri natural language commands and dictation', 6, 6, 6, 6, 6, 7, 6, 6, 5),
(7, 'https://fdn.gsmarena.com/imgroot/reviews/18/google-pixel-3-xl/lifestyle/-1024w2/gsmarena_001.jpg', 'The Pixel 3 XL is Google\'s latest flagship smartphone. It promises to bring everything we have come to expect with the Pixel brand, including a clean build of Android, fast performance, quality camera and some cool software tricks that only Google can come up with.\r\n\r\nThis year\'s launch has been mired in controversy. While the Pixel devices are no strangers to controversy, the Pixel 3 XL got its fair share even before the device was launched. Much of it had to do with the design of the phone, which, admittedly, isn\'t Google\'s finest work.\r\n\r\nApart from that, we don\'t see a lot to complain about. On paper, the Pixel 3 XL comes across as a proper flagship smartphone. There are a few things that bother us, such as the 4GB memory and storage options that max out at 128GB, but we will have to wait and see if those present any issues later.\r\n\r\nOverall, though, we are looking forward to diving into this phone. Pixel phones are always exciting, as they are a lot more than just hardware specifications, and Google is big on using software to work smarter, not harder. But, it\'s 2018, and you need both good software and hardware if you need to stand out. And considering the price Google charges for these things, we hope the Pixel 3 XL blows us away on both fronts.\r\n\r\nAnyway, enough introductions. It\'s time to take it up a notch (sorry, we had to).\r\n', 'https://www.youtube.com/watch?v=wEztI5OggTo', 'Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass, barometer', 7, 7, 7, 7, 7, 8, 7, 7, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `platform`
--

CREATE TABLE `platform` (
  `platformId` int(11) NOT NULL,
  `platformOS` varchar(100) DEFAULT NULL,
  `platformChipset` varchar(150) DEFAULT NULL,
  `platformCPU` varchar(150) DEFAULT NULL,
  `platformGPU` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `platform`
--

INSERT INTO `platform` (`platformId`, `platformOS`, `platformChipset`, `platformCPU`, `platformGPU`) VALUES
(1, 'iOS 13\r\n', 'Apple A13 Bionic (7 nm+)', 'Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)', 'Apple GPU (4-core graphics)'),
(2, 'Android 10, One UI 2', 'Qualcomm SM8150 Snapdragon 855+ (7 nm)', 'Octa-core (1x2.95 GHz Kryo 485 & 3x2.41 GHz Kryo 485 & 4x1.78 GHz Kryo 485)', 'Adreno 640 (700 MHz)'),
(3, 'Android 10', 'Qualcomm SM8150 Snapdragon 855 (7 nm)', 'Octa-core (1x2.84 GHz Kryo 485 & 3x2.42 GHz Kryo 485 & 4x1.78 GHz Kryo 485)', 'Adreno 640'),
(4, 'iOS 13, upgradable to iOS 13.5', 'Apple A13 Bionic (7 nm+)', 'Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)', 'Apple GPU (4-core graphics)'),
(5, 'Android 10, One UI 2', 'Exynos 990 (7 nm+) - Global, Qualcomm SM8250 Snapdragon 865 (7 nm+) - USA', 'Octa-core (2x2.73 GHz Mongoose M5 & 2x2.50 GHz Cortex-A76 & 4x2.0 GHz Cortex-A55)', 'Mali-G77 MP11 - Global\r\nAdreno 650 - USA'),
(6, 'iOS 13, upgradable to iOS 13.5', 'Apple A13 Bionic (7 nm+)', 'Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)', 'Apple GPU (4-core graphics)'),
(7, 'Android 9.0 (Pie), upgradable to Android 10', 'Qualcomm SDM845 Snapdragon 845 (10 nm)', 'Octa-core (4x2.5 GHz Kryo 385 Gold & 4x1.6 GHz Kryo 385 Silver)', 'Adreno 630');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `selfiecamera`
--

CREATE TABLE `selfiecamera` (
  `selfieCameraId` int(11) NOT NULL,
  `selfieCameraResolution` varchar(150) DEFAULT NULL,
  `selfieCameraFeatures` varchar(150) DEFAULT NULL,
  `selfieCameraVideo` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `selfiecamera`
--

INSERT INTO `selfiecamera` (`selfieCameraId`, `selfieCameraResolution`, `selfieCameraFeatures`, `selfieCameraVideo`) VALUES
(1, '7 MP, f/2.2', 'Face detection, HDR, panorama', '1080p@30fps; gyro-EIS'),
(2, '10 MP, f/2.4, 26mm (wide), 1.22µm', 'HDR', '4K@30fps'),
(3, '8 MP, f/2.0, 22mm (wide), 1.22µm', 'Auto-HDR, no AF\r\nTOF 3D, (depth/biometrics sensor)', '1080p@30fps'),
(4, 'Dual 12 MP, f/2.2, 23mm (wide), SL 3D, (depth/biometrics sensor)', 'HDR', '4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS'),
(5, '40 MP, f/2.2, 26mm (wide), 0.7µm, PDAF', 'Dual video call, Auto-HDR', '4K@30/60fps, 1080p@30fps'),
(6, '12 MP, f/2.2, 23mm (wide), SL 3D, (depth/biometrics sensor)', 'HDR', '4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS'),
(7, '8 MP, f/1.8, 28mm (wide), PDAF, 8 MP, f/2.2, 19mm (ultrawide), no AF', 'Auto-HDR', '1080p@30fps');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipper`
--

CREATE TABLE `shipper` (
  `shipperId` int(11) NOT NULL,
  `shipperName` varchar(30) DEFAULT NULL,
  `shipperPhone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `shipper`
--

INSERT INTO `shipper` (`shipperId`, `shipperName`, `shipperPhone`) VALUES
(1, 'Nguyen Vu Khang', '0329456784'),
(2, 'Nguyen Son Hao', '0366984554'),
(3, 'Nguyen Tran Quang Hien', '0682547893');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `storage`
--

CREATE TABLE `storage` (
  `storageId` int(11) NOT NULL,
  `storageRAM` int(11) DEFAULT NULL,
  `storageInternal` int(11) DEFAULT NULL,
  `storageExternal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `storage`
--

INSERT INTO `storage` (`storageId`, `storageRAM`, `storageInternal`, `storageExternal`) VALUES
(1, 3, 64, 0),
(2, 8, 256, 256),
(3, 6, 64, 256),
(5, 4, 512, NULL),
(6, 16, 512, 0),
(7, 4, 256, 0),
(8, 4, 128, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `userPassword` varchar(32) DEFAULT NULL,
  `userRole` varchar(10) DEFAULT 'customer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`userId`, `userName`, `userPassword`, `userRole`) VALUES
(1, 'tangminhtin', '123456', 'admin'),
(2, 'bachnguyenphucthinh', '123456', 'staff'),
(3, 'huaquocvinh', '123456', 'customer'),
(4, 'truongnhatnam', '123456', 'customer'),
(5, 'nguyenngocanhtu', '123456', 'customer'),
(6, 'huynhthinhien', '123456', 'staff'),
(7, 'phucthinhbach', 'd4f1d5711a23a6c2d211be77a40a7f88', 'admin'),
(8, 'minhtin', 'e10adc3949ba59abbe56e057f20f883e', 'customer'),
(9, 'admin', '202cb962ac59075b964b07152d234b70', 'customer');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `battery`
--
ALTER TABLE `battery`
  ADD PRIMARY KEY (`batteryId`);

--
-- Chỉ mục cho bảng `body`
--
ALTER TABLE `body`
  ADD PRIMARY KEY (`bodyId`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`commentId`),
  ADD KEY `customerId` (`customerId`);

--
-- Chỉ mục cho bảng `connection`
--
ALTER TABLE `connection`
  ADD PRIMARY KEY (`connectionId`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerId`),
  ADD KEY `userId` (`userId`);

--
-- Chỉ mục cho bảng `display`
--
ALTER TABLE `display`
  ADD PRIMARY KEY (`displayId`);

--
-- Chỉ mục cho bảng `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeId`),
  ADD KEY `userId` (`userId`);

--
-- Chỉ mục cho bảng `maincamera`
--
ALTER TABLE `maincamera`
  ADD PRIMARY KEY (`mainCameraId`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `phoneId` (`phoneId`),
  ADD KEY `customerId` (`customerId`);

--
-- Chỉ mục cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD KEY `orderId` (`orderId`),
  ADD KEY `phoneId` (`phoneId`),
  ADD KEY `shipperId` (`shipperId`),
  ADD KEY `employeeId` (`employeeId`);

--
-- Chỉ mục cho bảng `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`phoneId`),
  ADD KEY `branchId` (`brandId`),
  ADD KEY `phoneDetailId` (`phoneDetailId`);

--
-- Chỉ mục cho bảng `phonedetail`
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
-- Chỉ mục cho bảng `platform`
--
ALTER TABLE `platform`
  ADD PRIMARY KEY (`platformId`);

--
-- Chỉ mục cho bảng `selfiecamera`
--
ALTER TABLE `selfiecamera`
  ADD PRIMARY KEY (`selfieCameraId`);

--
-- Chỉ mục cho bảng `shipper`
--
ALTER TABLE `shipper`
  ADD PRIMARY KEY (`shipperId`);

--
-- Chỉ mục cho bảng `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`storageId`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `userName` (`userName`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `battery`
--
ALTER TABLE `battery`
  MODIFY `batteryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `body`
--
ALTER TABLE `body`
  MODIFY `bodyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `commentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `connection`
--
ALTER TABLE `connection`
  MODIFY `connectionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `customerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `display`
--
ALTER TABLE `display`
  MODIFY `displayId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `employee`
--
ALTER TABLE `employee`
  MODIFY `employeeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `maincamera`
--
ALTER TABLE `maincamera`
  MODIFY `mainCameraId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `phone`
--
ALTER TABLE `phone`
  MODIFY `phoneId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `phonedetail`
--
ALTER TABLE `phonedetail`
  MODIFY `phoneDetailId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `platform`
--
ALTER TABLE `platform`
  MODIFY `platformId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `selfiecamera`
--
ALTER TABLE `selfiecamera`
  MODIFY `selfieCameraId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `shipper`
--
ALTER TABLE `shipper`
  MODIFY `shipperId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `storage`
--
ALTER TABLE `storage`
  MODIFY `storageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`);

--
-- Các ràng buộc cho bảng `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`);

--
-- Các ràng buộc cho bảng `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`);

--
-- Các ràng buộc cho bảng `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`phoneId`) REFERENCES `phone` (`phoneId`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`);

--
-- Các ràng buộc cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `order` (`orderId`),
  ADD CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`phoneId`) REFERENCES `phone` (`phoneId`),
  ADD CONSTRAINT `orderdetail_ibfk_3` FOREIGN KEY (`shipperId`) REFERENCES `shipper` (`shipperId`),
  ADD CONSTRAINT `orderdetail_ibfk_4` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`);

--
-- Các ràng buộc cho bảng `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `phone_ibfk_1` FOREIGN KEY (`brandId`) REFERENCES `brand` (`brandId`),
  ADD CONSTRAINT `phone_ibfk_2` FOREIGN KEY (`phoneDetailId`) REFERENCES `phonedetail` (`phoneDetailId`);

--
-- Các ràng buộc cho bảng `phonedetail`
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
