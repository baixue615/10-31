/*
Navicat MySQL Data Transfer

Source Server         : taobao
Source Server Version : 50703
Source Host           : localhost:3306
Source Database       : liuyan

Target Server Type    : MYSQL
Target Server Version : 50703
File Encoding         : 65001

Date: 2017-10-31 20:46:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for list
-- ----------------------------
DROP TABLE IF EXISTS `list`;
CREATE TABLE `list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `con` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of list
-- ----------------------------
INSERT INTO `list` VALUES ('5', '111', '1111');
INSERT INTO `list` VALUES ('6', 'sdsds', 'sdasdsdas');
