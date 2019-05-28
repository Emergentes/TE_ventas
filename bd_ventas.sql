/*
 Navicat Premium Data Transfer

 Source Server         : LOCAL
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : bd_ventas

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 13/05/2019 21:03:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `correo` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `celular` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES (2, 'Rizal', 'Manila', '77712345');
INSERT INTO `clientes` VALUES (3, 'Don', 'Laoag', '70512345');
INSERT INTO `clientes` VALUES (4, 'Jesus', 'Heaven', '70612345');
INSERT INTO `clientes` VALUES (5, 'Jam', 'Church', '79112345');
INSERT INTO `clientes` VALUES (6, 'Anna', 'Laoag', '72012345');
INSERT INTO `clientes` VALUES (7, 'JC', 'Bacarra', '71512345');
INSERT INTO `clientes` VALUES (11, 'Duque', 'Laoag', '72012345');

-- ----------------------------
-- Table structure for productos
-- ----------------------------
DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `precio` float NOT NULL,
  `descripcion` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of productos
-- ----------------------------
INSERT INTO `productos` VALUES (59, 'iPhone 4s', 20000, 'From Apple');
INSERT INTO `productos` VALUES (60, 'iPhone 5', 25000, 'iPhone 5 from Apple');
INSERT INTO `productos` VALUES (61, 'iPhone 5s', 35000, 'iPhone 5s is too expensive.');
INSERT INTO `productos` VALUES (62, 'iPad Air', 22000, 'iPad Air is thin like samurai!');
INSERT INTO `productos` VALUES (65, 'HTC One', 32995, 'Best of 2013');
INSERT INTO `productos` VALUES (66, 'God', 0, 'God is not on sale. Sorry.');
INSERT INTO `productos` VALUES (67, 'Samurai sword', 2000, 'This sword is so sharp that it can slice itself. Good for slicing jellies.');
INSERT INTO `productos` VALUES (69, 'Ultimate Killing Machine', 100000, 'Built by ultimate killing machines. For ultimate killing hobies.');
INSERT INTO `productos` VALUES (70, 'Life Jacket', 50000, 'This jacket could save you from heart attack. And maybe heartbreaks.');
INSERT INTO `productos` VALUES (71, 'Flashlight', 650, 'This helps you brighten things in the dark.');

-- ----------------------------
-- Table structure for transaccion
-- ----------------------------
DROP TABLE IF EXISTS `transaccion`;
CREATE TABLE `transaccion`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `producto_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of transaccion
-- ----------------------------
INSERT INTO `transaccion` VALUES (6, 0, 3, '2014-07-08');
INSERT INTO `transaccion` VALUES (7, 65, 6, '2014-07-08');
INSERT INTO `transaccion` VALUES (9, 69, 1, '2014-07-08');
INSERT INTO `transaccion` VALUES (10, 71, 11, '2014-07-08');
INSERT INTO `transaccion` VALUES (11, 71, 11, '2014-07-08');
INSERT INTO `transaccion` VALUES (12, 59, 5, '2019-05-07');

SET FOREIGN_KEY_CHECKS = 1;
