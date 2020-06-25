CREATE TABLE `Branch` (
  `branchId` int PRIMARY KEY AUTO_INCREMENT,
  `branchName` varchar(30),
  `branchImage` varchar(100)
);

CREATE TABLE `User` (
  `userId` int PRIMARY KEY AUTO_INCREMENT,
  `userName` varchar(50),
  `userPassword` varchar(32),
  `userRole` varchar(10)
);

CREATE TABLE `Customer` (
  `customerId` int PRIMARY KEY AUTO_INCREMENT,
  `customerFullname` varchar(50),
  `customerAddress` varchar(100),
  `customerPhone` varchar(15),
  `userId` int
);

CREATE TABLE `Employee` (
  `employeeId` int PRIMARY KEY AUTO_INCREMENT,
  `employeeFullname` varchar(50),
  `employeeAddress` varchar(100),
  `employeePhone` varchar(15),
  `employeeEmail` varchar(50),
  `employeeImage` varchar(100),
  `userId` int
);

CREATE TABLE `Shipper` (
  `shipperId` int PRIMARY KEY AUTO_INCREMENT,
  `shipperName` varchar(30),
  `shipperPhone` varchar(15)
);

CREATE TABLE `Order` (
  `orderId` int PRIMARY KEY AUTO_INCREMENT,
  `orderDate` datetime,
  `orderQuantity` int,
  `orderTotalPrice` double,
  `orderNote` varchar(250),
  `phoneId` int,
  `customerId` int
);

CREATE TABLE `Comment` (
  `commentId` int PRIMARY KEY AUTO_INCREMENT,
  `commentContent` text,
  `commentDate` datetime,
  `customerId` int
);

CREATE TABLE `Phone` (
  `phoneId` int PRIMARY KEY AUTO_INCREMENT,
  `phoneImage` varchar(100),
  `phoneName` varchar(70),
  `phoneDiscount` double,
  `phonePrice` double,
  `phoneShortDescription` varchar(250),
  `branchId` int,
  `phoneDetailId` int
);

CREATE TABLE `Display` (
  `displayId` int PRIMARY KEY AUTO_INCREMENT,
  `displayType` varchar(150),
  `displaySize` varchar(150),
  `displayResolution` varchar(150),
  `displayProtection` varchar(150)
);

CREATE TABLE `Platform` (
  `platformId` int PRIMARY KEY AUTO_INCREMENT,
  `platformOS` varchar(100),
  `platformChipset` varchar(150),
  `platformCPU` varchar(150),
  `platformGPU` varchar(150)
);

CREATE TABLE `Body` (
  `bodyId` int PRIMARY KEY AUTO_INCREMENT,
  `bodyDimensions` varchar(150),
  `bodyWeight` varchar(100),
  `bodyBuild` varchar(150)
);

CREATE TABLE `Connection` (
  `connectionId` int PRIMARY KEY AUTO_INCREMENT,
  `connectionSIM` varchar(150),
  `connectionMobileNetwork` varchar(150),
  `connectionWLAN` varchar(150),
  `connectionBluetooth` varchar(150),
  `connectionGPS` varchar(150),
  `connectionNFC` boolean,
  `connectionRadio` boolean,
  `connectionUSB` varchar(150),
  `connectionJack` boolean
);

CREATE TABLE `MainCamera` (
  `mainCameraId` int PRIMARY KEY AUTO_INCREMENT,
  `mainCameraResolution` varchar(150),
  `mainCameraFeatures` varchar(150),
  `mainCameraVideo` varchar(150)
);

CREATE TABLE `SelfieCamera` (
  `selfieCameraId` int PRIMARY KEY AUTO_INCREMENT,
  `selfieCameraResolution` varchar(150),
  `selfieCameraFeatures` varchar(150),
  `selfieCameraVideo` varchar(150)
);

CREATE TABLE `Battery` (
  `batteryId` int PRIMARY KEY AUTO_INCREMENT,
  `batteryCapacity` int,
  `batteryType` varchar(150),
  `batteryTechnology` varchar(150)
);

CREATE TABLE `Storage` (
  `storageId` int PRIMARY KEY AUTO_INCREMENT,
  `storageRAM` int,
  `storageInternal` int,
  `storageExternal` int
);

CREATE TABLE `PhoneDetail` (
  `phoneDetailId` int PRIMARY KEY AUTO_INCREMENT,
  `phoneDetailImage` varchar(100),
  `phoneDetailDescription` text,
  `phoneDetailVideo` varchar(100),
  `phoneDetailSpecialFeatures` varchar(150),
  `displayId` int,
  `bodyId` int,
  `platformId` int,
  `mainCameraId` int,
  `selfieCameraId` int,
  `storageId` int,
  `batteryId` int,
  `connectionId` int,
  `commentId` int
);

CREATE TABLE `OrderDetail` (
  `orderId` int,
  `phoneId` int,
  `shipperId` int,
  `employeeId` int,
  `orderDetailTotalPrice` double,
  `orderDetailQuantity` int
);

ALTER TABLE `Customer` ADD FOREIGN KEY (`userId`) REFERENCES `User` (`userId`);

ALTER TABLE `Employee` ADD FOREIGN KEY (`userId`) REFERENCES `User` (`userId`);

ALTER TABLE `Order` ADD FOREIGN KEY (`phoneId`) REFERENCES `Phone` (`phoneId`);

ALTER TABLE `Order` ADD FOREIGN KEY (`customerId`) REFERENCES `Customer` (`customerId`);

ALTER TABLE `Comment` ADD FOREIGN KEY (`customerId`) REFERENCES `Customer` (`customerId`);

ALTER TABLE `Phone` ADD FOREIGN KEY (`branchId`) REFERENCES `Branch` (`branchId`);

ALTER TABLE `Phone` ADD FOREIGN KEY (`phoneDetailId`) REFERENCES `PhoneDetail` (`phoneDetailId`);

ALTER TABLE `PhoneDetail` ADD FOREIGN KEY (`displayId`) REFERENCES `Display` (`displayId`);

ALTER TABLE `PhoneDetail` ADD FOREIGN KEY (`bodyId`) REFERENCES `Body` (`bodyId`);

ALTER TABLE `PhoneDetail` ADD FOREIGN KEY (`platformId`) REFERENCES `Platform` (`platformId`);

ALTER TABLE `PhoneDetail` ADD FOREIGN KEY (`mainCameraId`) REFERENCES `MainCamera` (`mainCameraId`);

ALTER TABLE `PhoneDetail` ADD FOREIGN KEY (`selfieCameraId`) REFERENCES `SelfieCamera` (`selfieCameraId`);

ALTER TABLE `PhoneDetail` ADD FOREIGN KEY (`storageId`) REFERENCES `Storage` (`storageId`);

ALTER TABLE `PhoneDetail` ADD FOREIGN KEY (`batteryId`) REFERENCES `Battery` (`batteryId`);

ALTER TABLE `PhoneDetail` ADD FOREIGN KEY (`connectionId`) REFERENCES `Connection` (`connectionId`);

ALTER TABLE `PhoneDetail` ADD FOREIGN KEY (`commentId`) REFERENCES `Comment` (`commentId`);

ALTER TABLE `OrderDetail` ADD FOREIGN KEY (`orderId`) REFERENCES `Order` (`orderId`);

ALTER TABLE `OrderDetail` ADD FOREIGN KEY (`phoneId`) REFERENCES `Phone` (`phoneId`);

ALTER TABLE `OrderDetail` ADD FOREIGN KEY (`shipperId`) REFERENCES `Shipper` (`shipperId`);

ALTER TABLE `OrderDetail` ADD FOREIGN KEY (`employeeId`) REFERENCES `Employee` (`employeeId`);
