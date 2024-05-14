/*
Navicat MySQL Data Transfer

Source Server         : localhost-mysql
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : client-car-rental

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2024-05-08 20:34:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `accessories`
-- ----------------------------
DROP TABLE IF EXISTS `accessories`;
CREATE TABLE `accessories` (
  `InternalId` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `IsActive` int(1) DEFAULT NULL,
  `ModifiedTime` datetime DEFAULT NULL,
  `UserSign` varchar(255) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`InternalId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of accessories
-- ----------------------------
INSERT INTO `accessories` VALUES ('1', 'Seat Covers', 'Enhance comfort and protect seats from wear and tear.', '1', null, 'admin@gmail.com', '2024-02-17 12:36:06');
INSERT INTO `accessories` VALUES ('2', 'Car Covers', 'Protect the exterior paint from weather elements, UV rays, and scratches.', '1', null, 'admin@gmail.com', '2024-02-17 12:36:35');
INSERT INTO `accessories` VALUES ('3', 'Roof Racks', 'Expand cargo capacity by allowing the attachment of luggage, bikes, or sports equipment.', '1', null, 'admin@gmail.com', '2024-02-17 12:37:01');
INSERT INTO `accessories` VALUES ('4', 'Dash Cams', 'Record video footage of the road ahead for security and insurance purposes.', '1', null, 'admin@gmail.com', '2024-02-17 12:37:28');
INSERT INTO `accessories` VALUES ('5', 'Phone Mounts', 'Allow safe and convenient hands-free use of smartphones for navigation and calls.', '1', null, 'admin@gmail.com', '2024-02-17 12:37:51');
INSERT INTO `accessories` VALUES ('6', 'Bluetooth Adapters', 'Enable wireless connectivity for streaming music and hands-free calling.', '1', null, 'admin@gmail.com', '2024-02-17 12:38:21');
INSERT INTO `accessories` VALUES ('7', 'Car Alarms and Security Systems', 'Enhance theft deterrence and provide peace of mind.', '1', null, 'admin@gmail.com', '2024-02-17 12:38:44');
INSERT INTO `accessories` VALUES ('8', 'Air Conditioning (Aircon)', 'Regulate the interior temperature, providing comfort to passengers, especially during hot weather.', '1', null, 'admin@gmail.com', '2024-02-17 12:39:09');

-- ----------------------------
-- Table structure for `audit_trail`
-- ----------------------------
DROP TABLE IF EXISTS `audit_trail`;
CREATE TABLE `audit_trail` (
  `InternalId` bigint(20) NOT NULL AUTO_INCREMENT,
  `UserId` bigint(20) DEFAULT NULL,
  `Module` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Data` text DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`InternalId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of audit_trail
-- ----------------------------
INSERT INTO `audit_trail` VALUES ('1', '2', 'Admin Login', 'Login User', 'Successfully Login', '{\"Email\":\"admin@gmail.com\",\"Password\":\"1234\"}', '2024-05-02 19:41:49');
INSERT INTO `audit_trail` VALUES ('2', '2', 'Admin Login', 'Login User', 'Successfully Login', '{\"Email\":\"admin@gmail.com\",\"Password\":\"1234\"}', '2024-05-04 12:08:46');
INSERT INTO `audit_trail` VALUES ('3', '2', 'Admin Login', 'Login User', 'Successfully Login', '{\"Email\":\"admin@gmail.com\",\"Password\":\"1234\"}', '2024-05-04 14:58:38');
INSERT INTO `audit_trail` VALUES ('4', '2', 'User', 'Update User', 'Updated User Successfully', '{\"Firstname\":\"Admin\",\"Middlename\":\"\",\"Lastname\":\"Staff\",\"Sex\":\"Male\",\"Birthday\":\"2000-03-12\",\"Birthplace\":\"Guagua, Pampanga\",\"ContactNo\":\"1234-567-98__\",\"Email\":\"admin@gmail.com\",\"IsAdmin\":\"1\",\"IsActive\":\"1\",\"UserSign\":\"admin@gmail.com\",\"ModifiedTime\":\"2024-05-04 03:10:04\"}', '2024-05-04 15:10:04');
INSERT INTO `audit_trail` VALUES ('5', '2', 'Gcash', 'Create Gcash', 'Created Gcash Successfully', '{\"GcashName\":\"Will Smith\",\"GcashNumber\":\"09123456789\",\"Status\":\"1\",\"UserSign\":\"admin@gmail.com\",\"Id\":1}', '2024-05-04 15:13:15');
INSERT INTO `audit_trail` VALUES ('6', '2', 'Gcash', 'Update Gcash', 'Updated Gcash Successfully', '{\"GcashName\":\"Will Smith\",\"GcashNumber\":\"09123456789\",\"Status\":\"0\",\"UserSign\":\"admin@gmail.com\",\"ModifiedTime\":\"2024-05-04 03:23:09\",\"Id\":\"1\"}', '2024-05-04 15:23:09');
INSERT INTO `audit_trail` VALUES ('7', '2', 'Gcash', 'Update Gcash', 'Updated Gcash Successfully', '{\"GcashName\":\"Will Smith\",\"GcashNumber\":\"09123456789\",\"Status\":\"1\",\"UserSign\":\"admin@gmail.com\",\"ModifiedTime\":\"2024-05-04 03:23:16\",\"Id\":\"1\"}', '2024-05-04 15:23:16');
INSERT INTO `audit_trail` VALUES ('8', '1', 'Login', 'Login User', 'Successfully Login', '{\"Email\":\"john@gmail.com\",\"Password\":\"1234\"}', '2024-05-04 15:24:43');
INSERT INTO `audit_trail` VALUES ('9', '1', 'Login', 'Login User', 'Successfully Login', '{\"Email\":\"john@gmail.com\",\"Password\":\"1234\"}', '2024-05-05 09:03:36');
INSERT INTO `audit_trail` VALUES ('10', '2', 'Admin Login', 'Login User', 'Successfully Login', '{\"Email\":\"admin@gmail.com\",\"Password\":\"1234\"}', '2024-05-05 10:32:23');
INSERT INTO `audit_trail` VALUES ('11', '2', 'User', 'Update User', 'Updated User Successfully', '{\"Firstname\":\"Admin\",\"Middlename\":\"\",\"Lastname\":\"Staff\",\"Sex\":\"Male\",\"Birthday\":\"2000-03-12\",\"Birthplace\":\"Guagua, Pampanga\",\"ContactNo\":\"1234-567-98__\",\"Email\":\"admin@gmail.com\",\"IsAdmin\":\"1\",\"IsActive\":\"1\",\"UserSign\":\"admin@gmail.com\",\"ModifiedTime\":\"2024-05-05 10:48:44\"}', '2024-05-05 10:48:44');

-- ----------------------------
-- Table structure for `booking`
-- ----------------------------
DROP TABLE IF EXISTS `booking`;
CREATE TABLE `booking` (
  `InternalId` bigint(20) NOT NULL AUTO_INCREMENT,
  `RentalGUID` varchar(255) DEFAULT NULL,
  `CustomerId` bigint(20) DEFAULT NULL,
  `CarId` bigint(20) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Days` int(11) DEFAULT NULL,
  `TotalAmount` decimal(16,8) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `ModifiedTime` datetime DEFAULT NULL,
  `UserSign` varchar(255) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`InternalId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of booking
-- ----------------------------
INSERT INTO `booking` VALUES ('1', '220239d1-46f9-7a9a-a6c9-93313ec912ab', '1', '1', '2024-05-13', '2024-05-15', '2', '6400.00000000', '1', null, null, 'john@gmail.com', '2024-05-05 10:33:59');

-- ----------------------------
-- Table structure for `brand`
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `InternalId` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Logo` varchar(255) DEFAULT NULL,
  `IsActive` int(1) DEFAULT NULL,
  `ModifiedTime` datetime DEFAULT NULL,
  `UserSign` varchar(255) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`InternalId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES ('1', 'Toyota', 'Toyota', 'toyota.png', '1', '2024-02-17 04:56:31', 'admin@gmail.com', '2024-02-17 11:56:31');
INSERT INTO `brand` VALUES ('2', 'Audi', 'Audi', 'audi.png', '1', null, 'admin@gmail.com', '2024-02-17 17:14:39');
INSERT INTO `brand` VALUES ('3', 'BMW', 'BMW', 'bmw.png', '1', null, 'admin@gmail.com', '2024-02-17 17:14:57');
INSERT INTO `brand` VALUES ('4', 'Chevrolet', 'Chevrolet', 'chevrolet.png', '1', null, 'admin@gmail.com', '2024-02-17 17:15:13');
INSERT INTO `brand` VALUES ('5', 'Ford', 'Ford', 'ford.png', '1', null, 'admin@gmail.com', '2024-02-17 17:15:30');
INSERT INTO `brand` VALUES ('6', 'Honda', 'Honda', 'honda.jpg', '1', null, 'admin@gmail.com', '2024-02-17 17:15:45');
INSERT INTO `brand` VALUES ('7', 'Mercedez Benz', 'Mercedez Benz', 'mercedes_benz.png', '1', null, 'admin@gmail.com', '2024-02-17 17:16:06');
INSERT INTO `brand` VALUES ('8', 'Nissan', 'Nissan', 'nissan.png', '1', null, 'admin@gmail.com', '2024-02-17 17:16:21');
INSERT INTO `brand` VALUES ('9', 'Porsche', 'Porsche', 'porsche.png', '1', null, 'admin@gmail.com', '2024-02-17 17:16:37');
INSERT INTO `brand` VALUES ('11', 'Volkswagen', 'Volkswagen', 'volkswagen.png', '1', null, 'admin@gmail.com', '2024-02-17 17:17:19');
INSERT INTO `brand` VALUES ('12', 'Mazda', 'Mazda', 'mazda.png', '1', null, 'admin@gmail.com', '2024-02-18 09:07:44');

-- ----------------------------
-- Table structure for `car`
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `InternalId` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `BrandId` bigint(20) DEFAULT NULL,
  `CategoryId` bigint(20) DEFAULT NULL,
  `FuelTypeId` bigint(20) DEFAULT NULL,
  `ModelYearId` bigint(20) DEFAULT NULL,
  `SeatingCapacityId` bigint(20) DEFAULT NULL,
  `Transmission` varchar(50) DEFAULT NULL,
  `Amount` decimal(16,8) DEFAULT NULL,
  `PlateNumber` varchar(255) DEFAULT NULL,
  `IsActive` int(1) DEFAULT NULL,
  `ModifiedTime` datetime DEFAULT NULL,
  `UserSign` varchar(255) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`InternalId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('1', 'Honda CR-V', '<p xss=\"removed\">The 2022 Honda CR-V is a midsize crossover SUV. For the Philippine market, it has three variants: the V Turbo CVT, VX Turbo CVT, and the RS e:HEV (hybrid) e-CVT. </p><p xss=\"removed\">The latest version of this Honda model has two different engine options. For the top-spec hybrid trim, it uses a 2.0-liter gasoline four-banger paired with a dual motor and lithium-ion battery. The combustion component alone produces up to 145 horsepower and 183 Nm of torque. The electric-powered component meanwhile, can churn out 181 horsepower and 335 Nm of torque. </p><p xss=\"removed\">Aboard the V and VX trims meanwhile is a 1.5-liter inline-4 engine that can churn out 187 horsepower and 240 Nm of torque. </p><p xss=\"removed\">Only the VX gets all-wheel-drive, while the rest are front-wheel-drive. All trims then use a continuously variable transmission (CVT), but the one on the hybrid trim is an electronic CVT (e-CVT). </p><p xss=\"removed\">In terms of dimensions, the all-new CR-V is 4,691mm long, 1,866mm wide, and 1,681mm (1,691mm for VX) in height. Both the hybrid and the V’s wheelbase then spans 2,701mm (2,700mm for VX). </p><p xss=\"removed\">Locally, the Honda CR-V competes against the likes of the Mazda CX-9, Cherry Tiggo 8 Pro, Kia Sorento, Hyundai Santa Fe, Peugeot 5008, etc. </p>', '6', '2', '2', '15', '2', 'Manual', '3200.00000000', 'NBC 1234', '1', '2024-02-19 05:19:07', 'admin@gmail.com', '2024-02-19 12:19:07');
INSERT INTO `car` VALUES ('2', 'Toyota Wigo 1.0G', '<p xss=removed><font color=\"#000000\">The Toyota Wigo 1.0G is a stylish and practical hatchback that excels in maneuverability and efficiency. With its compact size and agile handling, the Wigo is perfect for navigating through crowded city streets and tight parking spaces with ease.</font></p><p xss=removed><font color=\"#000000\">Under the hood, the Wigo is powered by a fuel-efficient 1.0-liter gasoline engine, delivering a balance of performance and fuel economy ideal for daily commuting and urban adventures. Its responsive engine ensures smooth acceleration and effortless cruising, while also keeping running costs low.</font></p><p xss=removed><font color=\"#000000\">Inside, the Wigo offers a comfortable and functional cabin designed with modern conveniences in mind. The spacious interior provides ample room for passengers and cargo, making it suitable for both short trips around town and longer journeys.</font></p><p xss=removed><font color=\"#000000\">Equipped with a range of features, the Wigo 1.0G enhances the driving experience with amenities such as air conditioning, power windows, and a touchscreen infotainment system with Bluetooth connectivity. Safety is also a priority, with features like dual airbags, ABS brakes, and a reinforced body structure providing peace of mind for both driver and passengers.</font></p><p xss=removed><font color=\"#000000\">Overall, the Toyota Wigo 1.0G combines practicality, efficiency, and affordability in a compact package, making it an excellent choice for urban dwellers seeking a reliable and versatile hatchback for their daily transportation needs.</font></p>', '1', '3', '2', '14', '2', 'Automatic', '3800.00000000', 'NBC 3528', '1', '2024-02-19 12:35:27', 'admin@gmail.com', '2024-02-19 19:35:27');
INSERT INTO `car` VALUES ('3', 'Mazda BT50 4x2 2.2', '<p><span xss=removed>Well-maintained</span><br xss=removed><span xss=removed>Mileage 126k (Casa Records)</span><br xss=removed><span xss=removed>Ending 1</span><br xss=removed><span xss=removed>Leather Seats</span><br xss=removed><span xss=removed>Multimedia Controls</span><br xss=removed><span xss=removed>Cruise Controls</span><br xss=removed><span xss=removed>All Stock</span><br xss=removed><span xss=removed>All Power</span><br xss=removed><span xss=removed>All Original</span><br xss=removed><span xss=removed>100% not flooded</span><br xss=removed><span xss=removed>100% no history of accidents</span><br xss=removed><span xss=removed>Mechanic Inspected</span><br xss=removed><span xss=removed>Complete set of Tools, Jack & Spare Tire</span><br xss=removed><span xss=removed>LTO Verified/MONEY BACK</span><br></p>', '12', '5', '2', '12', '2', 'Automatic', '3200.00000000', 'ABC 1234', '1', null, 'admin@gmail.com', '2024-02-18 09:14:18');

-- ----------------------------
-- Table structure for `car_accessories`
-- ----------------------------
DROP TABLE IF EXISTS `car_accessories`;
CREATE TABLE `car_accessories` (
  `InternalId` bigint(20) NOT NULL AUTO_INCREMENT,
  `CarId` bigint(20) DEFAULT NULL,
  `AccessoriesId` bigint(20) DEFAULT NULL,
  `UserSign` varchar(255) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`InternalId`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of car_accessories
-- ----------------------------
INSERT INTO `car_accessories` VALUES ('21', '3', '8', 'admin@gmail.com', '2024-02-18 09:14:18');
INSERT INTO `car_accessories` VALUES ('22', '3', '7', 'admin@gmail.com', '2024-02-18 09:14:18');
INSERT INTO `car_accessories` VALUES ('23', '3', '2', 'admin@gmail.com', '2024-02-18 09:14:18');
INSERT INTO `car_accessories` VALUES ('24', '3', '1', 'admin@gmail.com', '2024-02-18 09:14:18');
INSERT INTO `car_accessories` VALUES ('25', '1', '8', 'admin@gmail.com', '2024-02-19 12:19:07');
INSERT INTO `car_accessories` VALUES ('26', '1', '7', 'admin@gmail.com', '2024-02-19 12:19:07');
INSERT INTO `car_accessories` VALUES ('27', '1', '2', 'admin@gmail.com', '2024-02-19 12:19:07');
INSERT INTO `car_accessories` VALUES ('28', '1', '4', 'admin@gmail.com', '2024-02-19 12:19:07');
INSERT INTO `car_accessories` VALUES ('29', '1', '1', 'admin@gmail.com', '2024-02-19 12:19:07');
INSERT INTO `car_accessories` VALUES ('30', '2', '8', 'admin@gmail.com', '2024-02-19 12:40:26');
INSERT INTO `car_accessories` VALUES ('31', '2', '7', 'admin@gmail.com', '2024-02-19 12:40:26');
INSERT INTO `car_accessories` VALUES ('32', '2', '2', 'admin@gmail.com', '2024-02-19 12:40:26');
INSERT INTO `car_accessories` VALUES ('33', '2', '4', 'admin@gmail.com', '2024-02-19 12:40:26');
INSERT INTO `car_accessories` VALUES ('34', '2', '1', 'admin@gmail.com', '2024-02-19 12:40:26');

-- ----------------------------
-- Table structure for `car_image`
-- ----------------------------
DROP TABLE IF EXISTS `car_image`;
CREATE TABLE `car_image` (
  `InternalId` bigint(20) NOT NULL AUTO_INCREMENT,
  `CarId` bigint(20) DEFAULT NULL,
  `FileName` varchar(255) DEFAULT NULL,
  `FileType` varchar(255) DEFAULT NULL,
  `FileExt` varchar(255) DEFAULT NULL,
  `FileSize` decimal(11,8) DEFAULT NULL,
  `FilePath` varchar(255) DEFAULT NULL,
  `GUID` varchar(255) DEFAULT NULL,
  `UserSign` varchar(255) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`InternalId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of car_image
-- ----------------------------
INSERT INTO `car_image` VALUES ('1', '1', 'pic1.png', 'image/png', 'png', '877.56000000', 'dms/car_image/1', '91f4a6a8-6973-662b-e14e-ffec2090ecc2', 'admin@gmail.com', '2024-02-17 19:01:48');
INSERT INTO `car_image` VALUES ('2', '1', 'pic2.png', 'image/png', 'png', '273.32000000', 'dms/car_image/1', 'e49830f5-9319-f383-f733-4e00320935ba', 'admin@gmail.com', '2024-02-17 19:01:48');
INSERT INTO `car_image` VALUES ('3', '1', 'pic3.png', 'image/png', 'png', '258.30000000', 'dms/car_image/1', 'f0af1b54-44c4-2a0c-037e-dd5e0260ce23', 'admin@gmail.com', '2024-02-17 19:01:48');
INSERT INTO `car_image` VALUES ('4', '1', 'pic4.png', 'image/png', 'png', '262.10000000', 'dms/car_image/1', '9c23c945-5b0e-3940-8cb2-29ae59e04dcb', 'admin@gmail.com', '2024-02-17 19:01:48');
INSERT INTO `car_image` VALUES ('5', '2', 'pic1.jpeg', 'image/jpeg', 'jpeg', '68.41000000', 'dms/car_image/2', '363407ce-2289-1152-04c7-f248eda79cb1', 'admin@gmail.com', '2024-02-18 08:51:14');
INSERT INTO `car_image` VALUES ('6', '2', 'pic2.jpeg', 'image/jpeg', 'jpeg', '67.67000000', 'dms/car_image/2', 'c8251d84-166e-e18f-a59f-053a83fd9f05', 'admin@gmail.com', '2024-02-18 08:51:14');
INSERT INTO `car_image` VALUES ('7', '2', 'pick3.jpeg', 'image/jpeg', 'jpeg', '66.09000000', 'dms/car_image/2', '5df5fb78-a0a6-cc47-18c2-13a353db534d', 'admin@gmail.com', '2024-02-18 08:51:14');
INSERT INTO `car_image` VALUES ('8', '2', 'pick4.jpeg', 'image/jpeg', 'jpeg', '42.34000000', 'dms/car_image/2', '4254cf48-3462-14fc-5a81-529d55872673', 'admin@gmail.com', '2024-02-18 08:51:14');
INSERT INTO `car_image` VALUES ('9', '3', 'pic1.jpeg', 'image/jpeg', 'jpeg', '58.48000000', 'dms/car_image/3', '9bb2de4c-1ddc-54d9-4780-5704a82e9c1b', 'admin@gmail.com', '2024-02-18 09:14:18');
INSERT INTO `car_image` VALUES ('10', '3', 'pic2.jpeg', 'image/jpeg', 'jpeg', '56.16000000', 'dms/car_image/3', 'e1aec67d-4484-50d8-ae0e-f456b2283f21', 'admin@gmail.com', '2024-02-18 09:14:18');
INSERT INTO `car_image` VALUES ('11', '3', 'pic3.jpeg', 'image/jpeg', 'jpeg', '54.95000000', 'dms/car_image/3', '2b8c026b-47f7-3a6d-0681-3a1da0b1487a', 'admin@gmail.com', '2024-02-18 09:14:18');
INSERT INTO `car_image` VALUES ('12', '3', 'pic4.jpeg', 'image/jpeg', 'jpeg', '43.05000000', 'dms/car_image/3', 'a64300fa-c85d-db0c-b4b5-6ddd060a59f5', 'admin@gmail.com', '2024-02-18 09:14:18');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `InternalId` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `IsActive` int(1) DEFAULT NULL,
  `ModifiedTime` datetime DEFAULT NULL,
  `UserSign` varchar(255) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`InternalId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'Sedan', 'A sedan is a passenger car with a three-box configuration, typically featuring a separate compartment for the engine, passenger cabin, and cargo.', '1', null, 'admin@gmail.com', '2024-02-17 14:35:06');
INSERT INTO `category` VALUES ('2', 'SUV (Sport Utility Vehicle)', 'SUVs are vehicles designed for both on-road and off-road use, characterized by their high ground clearance, spacious interiors, and often, four-wheel-drive capability.', '1', null, 'admin@gmail.com', '2024-02-17 14:35:39');
INSERT INTO `category` VALUES ('3', 'Hatchback', 'Hatchbacks feature a rear door that opens upwards to provide access to the cargo area, which is integrated with the passenger cabin.', '1', null, 'admin@gmail.com', '2024-02-17 14:36:04');
INSERT INTO `category` VALUES ('4', 'Van', 'Vans are designed primarily for transporting passengers or cargo and typically feature a boxy shape with sliding side doors.', '1', null, 'admin@gmail.com', '2024-02-17 14:36:43');
INSERT INTO `category` VALUES ('5', 'Pickup', 'Pickup trucks are versatile vehicles used for a variety of purposes, including hauling cargo, towing trailers, and transporting passengers.', '1', null, 'admin@gmail.com', '2024-02-18 09:11:11');

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `InternalId` bigint(20) NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(255) DEFAULT NULL,
  `Middlename` varchar(255) DEFAULT NULL,
  `Lastname` varchar(255) DEFAULT NULL,
  `Suffix` varchar(50) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(32) DEFAULT NULL,
  `Sex` varchar(50) DEFAULT NULL,
  `ContactNo` varchar(50) DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `Birthplace` varchar(255) DEFAULT NULL,
  `IsActive` int(1) DEFAULT NULL,
  `Avatar` varchar(255) DEFAULT NULL,
  `ModifiedTime` datetime DEFAULT NULL,
  `UserSign` varchar(255) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`InternalId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', 'John', 'Smith', 'Doe', null, 'john@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '09123456798', '1993-05-05', 'Guagua, Pampanga', '1', 'user1-128x128.jpg', '2024-02-21 03:27:38', 'john@gmail.com', '2024-02-21 10:27:38');
INSERT INTO `customer` VALUES ('4', 'John Derrick', '', 'Datu', null, 'jddatu152@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '091234567890', '2024-04-15', 'San Fernando, Pampanga', '0', null, null, null, '2024-04-15 19:51:37');

-- ----------------------------
-- Table structure for `database_backup`
-- ----------------------------
DROP TABLE IF EXISTS `database_backup`;
CREATE TABLE `database_backup` (
  `InternalId` bigint(20) NOT NULL AUTO_INCREMENT,
  `FileName` varchar(255) DEFAULT '',
  `FileSize` bigint(20) DEFAULT NULL,
  `FilePath` varchar(255) DEFAULT NULL,
  `UserSign` varchar(255) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`InternalId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of database_backup
-- ----------------------------
INSERT INTO `database_backup` VALUES ('1', 'backup_on_02192024.zip', '8059', 'dms/db_backup/2024/', 'admin@gmail.com', '2024-02-19 18:56:20');

-- ----------------------------
-- Table structure for `email_verification`
-- ----------------------------
DROP TABLE IF EXISTS `email_verification`;
CREATE TABLE `email_verification` (
  `InternalId` bigint(20) NOT NULL AUTO_INCREMENT,
  `CustomerId` bigint(20) DEFAULT NULL,
  `Code` int(11) DEFAULT NULL,
  `Validation` int(1) DEFAULT NULL,
  `UserSign` varchar(255) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`InternalId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of email_verification
-- ----------------------------
INSERT INTO `email_verification` VALUES ('1', '4', '48403379', '1', 'jddatu152@gmail.com', '2024-04-15 20:13:42');

-- ----------------------------
-- Table structure for `feedback`
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `InternalId` bigint(20) NOT NULL AUTO_INCREMENT,
  `CustomerId` bigint(20) DEFAULT NULL,
  `BookingId` bigint(20) DEFAULT NULL,
  `Feedback` text DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `UserSign` varchar(255) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`InternalId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `fuel_type`
-- ----------------------------
DROP TABLE IF EXISTS `fuel_type`;
CREATE TABLE `fuel_type` (
  `InternalId` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `IsActive` int(1) DEFAULT NULL,
  `ModifiedTime` datetime DEFAULT NULL,
  `UserSign` varchar(255) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`InternalId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fuel_type
-- ----------------------------
INSERT INTO `fuel_type` VALUES ('1', 'Petrol', 'Gasoline / Petrol', '1', null, 'admin@gmail.com', '2024-02-17 12:05:46');
INSERT INTO `fuel_type` VALUES ('2', 'Diesel', 'Diesel', '1', null, 'admin@gmail.com', '2024-02-17 12:06:08');
INSERT INTO `fuel_type` VALUES ('3', 'Compressed Natural Gas', 'Compressed Natural Gas (CNG)', '1', '2024-02-17 05:14:05', 'admin@gmail.com', '2024-02-17 12:14:05');

-- ----------------------------
-- Table structure for `gcash_payment`
-- ----------------------------
DROP TABLE IF EXISTS `gcash_payment`;
CREATE TABLE `gcash_payment` (
  `InternalId` bigint(20) NOT NULL AUTO_INCREMENT,
  `GcashName` varchar(255) DEFAULT NULL,
  `GcashNumber` varchar(255) DEFAULT NULL,
  `GcashQR` varchar(255) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `ModifiedTime` datetime DEFAULT NULL,
  `UserSign` varchar(255) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`InternalId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of gcash_payment
-- ----------------------------
INSERT INTO `gcash_payment` VALUES ('1', 'Will Smith', '09123456789', 'Gcash-BMA-QRcode-768x1024.jpg', '1', '2024-05-04 03:23:16', 'admin@gmail.com', '2024-05-04 15:23:16');

-- ----------------------------
-- Table structure for `model_year`
-- ----------------------------
DROP TABLE IF EXISTS `model_year`;
CREATE TABLE `model_year` (
  `InternalId` bigint(20) NOT NULL AUTO_INCREMENT,
  `Year` varchar(255) DEFAULT '',
  `Description` varchar(255) DEFAULT NULL,
  `IsActive` int(1) DEFAULT NULL,
  `ModifiedTime` datetime DEFAULT NULL,
  `UserSign` varchar(255) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`InternalId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of model_year
-- ----------------------------
INSERT INTO `model_year` VALUES ('1', '2008', 'Released in 2008', '1', null, 'admin@gmail.com', '2024-02-17 13:53:52');
INSERT INTO `model_year` VALUES ('2', '2009', 'Released in 2009', '1', null, 'admin@gmail.com', '2024-02-17 13:54:08');
INSERT INTO `model_year` VALUES ('3', '2010', 'Released in 2010', '1', null, 'admin@gmail.com', '2024-02-17 13:54:23');
INSERT INTO `model_year` VALUES ('4', '2011', 'Released in 2011', '1', null, 'admin@gmail.com', '2024-02-17 13:54:39');
INSERT INTO `model_year` VALUES ('5', '2012', 'Released in 2012', '1', null, 'admin@gmail.com', '2024-02-17 13:55:00');
INSERT INTO `model_year` VALUES ('6', '2013', 'Released in 2013', '1', null, 'admin@gmail.com', '2024-02-17 13:55:23');
INSERT INTO `model_year` VALUES ('7', '2014', 'Released in 2014', '1', null, 'admin@gmail.com', '2024-02-17 13:55:49');
INSERT INTO `model_year` VALUES ('8', '2015', 'Released in 2015', '1', null, 'admin@gmail.com', '2024-02-17 13:56:06');
INSERT INTO `model_year` VALUES ('9', '2016', 'Released in 2016', '1', null, 'admin@gmail.com', '2024-02-17 18:48:16');
INSERT INTO `model_year` VALUES ('10', '2017', 'Released in 2017', '1', null, 'admin@gmail.com', '2024-02-17 18:48:38');
INSERT INTO `model_year` VALUES ('11', '2018', 'Released in 2018', '1', null, 'admin@gmail.com', '2024-02-17 18:48:51');
INSERT INTO `model_year` VALUES ('12', '2019', 'Released in 2019', '1', null, 'admin@gmail.com', '2024-02-17 18:49:16');
INSERT INTO `model_year` VALUES ('13', '2020', 'Released in 2020', '1', null, 'admin@gmail.com', '2024-02-17 18:49:28');
INSERT INTO `model_year` VALUES ('14', '2021', 'Released in 2021', '1', null, 'admin@gmail.com', '2024-02-17 18:49:41');
INSERT INTO `model_year` VALUES ('15', '2022', 'Released in 2022', '1', null, 'admin@gmail.com', '2024-02-17 18:49:56');
INSERT INTO `model_year` VALUES ('16', '2023', 'Released in 2023', '1', null, 'admin@gmail.com', '2024-02-17 18:50:09');

-- ----------------------------
-- Table structure for `module`
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `InternalId` bigint(20) NOT NULL AUTO_INCREMENT,
  `Module` varchar(255) DEFAULT NULL,
  `Link` varchar(255) DEFAULT NULL,
  `Icon` varchar(255) DEFAULT NULL,
  `IsActive` int(1) DEFAULT NULL,
  `IsParent` int(1) DEFAULT NULL,
  `ParentId` bigint(20) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`InternalId`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES ('10', 'Car Specification', null, 'fa-tools', '1', '1', '0', '2024-02-17 19:17:33');
INSERT INTO `module` VALUES ('11', 'Brand', 'admin/car_specification/brand', '', '1', '0', '10', '2024-02-17 13:51:17');
INSERT INTO `module` VALUES ('12', 'Fuel Type', 'admin/car_specification/fuel_type', '', '1', '0', '10', '2024-02-17 13:51:26');
INSERT INTO `module` VALUES ('13', 'Accessories', 'admin/car_specification/accessories', '', '1', '0', '10', '2024-02-17 13:51:24');
INSERT INTO `module` VALUES ('14', 'Model Year', 'admin/car_specification/model_year', '', '1', '0', '10', '2024-02-17 13:53:26');
INSERT INTO `module` VALUES ('15', 'Seating Capacity', 'admin/car_specification/seating_capacity', null, '1', '0', '10', '2024-02-17 14:16:48');
INSERT INTO `module` VALUES ('16', 'Category', 'admin/car_specification/category', null, '1', '0', '10', '2024-02-17 14:34:21');
INSERT INTO `module` VALUES ('20', 'Car', 'admin/car', 'fa-car', '1', '0', '0', '2024-02-17 19:17:36');
INSERT INTO `module` VALUES ('21', 'Customer', 'admin/customer', 'fa-users', '1', '0', '0', '2024-02-18 08:28:43');
INSERT INTO `module` VALUES ('22', 'Customer Booking', 'admin/customer_booking', 'fa-calendar-alt', '1', '0', '0', '2024-02-19 15:36:01');
INSERT INTO `module` VALUES ('23', 'Feedback', 'admin/feedback', 'fa-thumbs-up', '1', '0', '0', '2024-02-20 16:53:19');
INSERT INTO `module` VALUES ('30', 'Payment', null, 'fa-receipt', '1', '1', '0', '2024-05-04 15:08:31');
INSERT INTO `module` VALUES ('32', 'Gcash', 'admin/payment/gcash', null, '1', '0', '30', '2024-05-04 15:09:29');
INSERT INTO `module` VALUES ('33', 'Proof of Payment', 'admin/payment/proof_of_payment', null, '1', '0', '30', '2024-05-04 15:09:48');
INSERT INTO `module` VALUES ('50', 'Report', null, 'fa-file-alt', '1', '1', '0', '2024-05-05 10:47:56');
INSERT INTO `module` VALUES ('51', 'Audit Trail Report', 'admin/report/audit_trail_report', null, '1', '0', '50', '2024-05-05 10:48:24');

-- ----------------------------
-- Table structure for `module_access`
-- ----------------------------
DROP TABLE IF EXISTS `module_access`;
CREATE TABLE `module_access` (
  `InternalId` bigint(20) NOT NULL AUTO_INCREMENT,
  `UserId` bigint(20) DEFAULT NULL,
  `ModuleId` bigint(20) DEFAULT NULL,
  `ModifiedTime` datetime DEFAULT NULL,
  `UserSign` varchar(255) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`InternalId`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of module_access
-- ----------------------------
INSERT INTO `module_access` VALUES ('1', '3', '11', null, null, '2024-02-16 23:14:30');
INSERT INTO `module_access` VALUES ('2', '3', '2', null, null, '2024-02-16 23:14:30');
INSERT INTO `module_access` VALUES ('3', '3', '4', null, null, '2024-02-16 23:14:30');
INSERT INTO `module_access` VALUES ('4', '3', '3', null, null, '2024-02-16 23:14:30');
INSERT INTO `module_access` VALUES ('132', '2', '13', null, 'admin@gmail.com', '2024-05-05 10:48:44');
INSERT INTO `module_access` VALUES ('133', '2', '51', null, 'admin@gmail.com', '2024-05-05 10:48:44');
INSERT INTO `module_access` VALUES ('134', '2', '11', null, 'admin@gmail.com', '2024-05-05 10:48:44');
INSERT INTO `module_access` VALUES ('135', '2', '20', null, 'admin@gmail.com', '2024-05-05 10:48:44');
INSERT INTO `module_access` VALUES ('136', '2', '16', null, 'admin@gmail.com', '2024-05-05 10:48:44');
INSERT INTO `module_access` VALUES ('137', '2', '21', null, 'admin@gmail.com', '2024-05-05 10:48:44');
INSERT INTO `module_access` VALUES ('138', '2', '22', null, 'admin@gmail.com', '2024-05-05 10:48:44');
INSERT INTO `module_access` VALUES ('139', '2', '23', null, 'admin@gmail.com', '2024-05-05 10:48:44');
INSERT INTO `module_access` VALUES ('140', '2', '12', null, 'admin@gmail.com', '2024-05-05 10:48:44');
INSERT INTO `module_access` VALUES ('141', '2', '32', null, 'admin@gmail.com', '2024-05-05 10:48:44');
INSERT INTO `module_access` VALUES ('142', '2', '14', null, 'admin@gmail.com', '2024-05-05 10:48:44');
INSERT INTO `module_access` VALUES ('143', '2', '33', null, 'admin@gmail.com', '2024-05-05 10:48:44');
INSERT INTO `module_access` VALUES ('144', '2', '15', null, 'admin@gmail.com', '2024-05-05 10:48:44');

-- ----------------------------
-- Table structure for `proof_of_payment`
-- ----------------------------
DROP TABLE IF EXISTS `proof_of_payment`;
CREATE TABLE `proof_of_payment` (
  `InternalId` bigint(20) NOT NULL AUTO_INCREMENT,
  `CustomerBookingId` bigint(20) DEFAULT NULL,
  `ProofPayment` varchar(255) DEFAULT NULL,
  `UserSign` varchar(255) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`InternalId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of proof_of_payment
-- ----------------------------
INSERT INTO `proof_of_payment` VALUES ('1', '1', 'Sample-proof-of-transaction.png', 'john@gmail.com', '2024-05-05 10:34:00');

-- ----------------------------
-- Table structure for `seating_capacity`
-- ----------------------------
DROP TABLE IF EXISTS `seating_capacity`;
CREATE TABLE `seating_capacity` (
  `InternalId` bigint(20) NOT NULL AUTO_INCREMENT,
  `Capacity` int(10) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `IsActive` int(1) DEFAULT NULL,
  `ModifiedTime` datetime DEFAULT NULL,
  `UserSign` varchar(255) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`InternalId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of seating_capacity
-- ----------------------------
INSERT INTO `seating_capacity` VALUES ('1', '4', 'Compact Cars', '1', null, 'admin@gmail.com', '2024-02-17 14:20:26');
INSERT INTO `seating_capacity` VALUES ('2', '5', 'Midsize Sedans', '1', null, 'admin@gmail.com', '2024-02-17 14:20:44');
INSERT INTO `seating_capacity` VALUES ('3', '6', 'Full-Size Sedans', '1', null, 'admin@gmail.com', '2024-02-17 14:21:40');
INSERT INTO `seating_capacity` VALUES ('4', '7', 'Midsize SUVs', '1', null, 'admin@gmail.com', '2024-02-17 14:21:59');
INSERT INTO `seating_capacity` VALUES ('5', '8', 'Full-Size SUVs', '1', null, 'admin@gmail.com', '2024-02-17 14:22:19');
INSERT INTO `seating_capacity` VALUES ('6', '9', 'Minivans', '1', null, 'admin@gmail.com', '2024-02-17 14:22:53');
INSERT INTO `seating_capacity` VALUES ('7', '15', 'Passenger Vans', '1', null, 'admin@gmail.com', '2024-02-17 14:23:17');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `InternalId` bigint(20) NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(255) DEFAULT NULL,
  `Middlename` varchar(255) DEFAULT NULL,
  `Lastname` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(32) DEFAULT NULL,
  `Sex` varchar(50) DEFAULT NULL,
  `CivilStatus` bigint(20) DEFAULT NULL,
  `Religion` bigint(20) DEFAULT NULL,
  `Nationality` bigint(20) DEFAULT NULL,
  `ContactNo` varchar(50) DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `Birthplace` varchar(255) DEFAULT NULL,
  `IsAdmin` int(1) DEFAULT NULL,
  `IsActive` int(1) DEFAULT NULL,
  `Avatar` varchar(255) DEFAULT NULL,
  `ModifiedTime` datetime DEFAULT NULL,
  `UserSign` varchar(255) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`InternalId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'Sam', 'Doe', 'Smith', 'samsmith@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '1', '1', '1', '09123456789', '2004-05-02', 'Guagua, Pampanga', '0', '1', null, null, null, '2024-02-16 21:43:48');
INSERT INTO `user` VALUES ('2', 'Admin', '', 'Staff', 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', null, null, null, '1234-567-98__', '2000-03-12', 'Guagua, Pampanga', '1', '1', 'images.jpg', '2024-05-05 10:48:44', 'admin@gmail.com', '2024-05-05 10:48:44');
INSERT INTO `user` VALUES ('3', 'Jane', 'Marie', 'Johnson', 'jane.johnson@example.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Female', '2', '1', '1', '09123456789', '1995-05-05', 'Magalang, Pampanga', '0', '1', null, '2024-02-16 04:14:30', 'admin@gmail.com', '2024-02-16 23:14:30');
INSERT INTO `user` VALUES ('4', 'Michael', 'Dela Cruz', 'Williams', 'michael.williams@example.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '1', '1', '1', '09123456798', '1985-09-10', 'San Fernando, Pampanga', '0', '1', null, null, 'admin@gmail.com', '2024-02-16 21:43:51');
