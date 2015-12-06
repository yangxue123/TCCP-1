/*
Navicat MySQL Data Transfer

Source Server         : localhost：3306
Source Server Version : 50627
Source Host           : localhost:3306
Source Database       : tccp

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2015-12-06 19:30:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tccp_test
-- ----------------------------
DROP TABLE IF EXISTS `tccp_test`;
CREATE TABLE `tccp_test` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `age` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tccp_test
-- ----------------------------
INSERT INTO `tccp_test` VALUES ('1', 'tccp', '1');
INSERT INTO `tccp_test` VALUES ('2', '张三', '18');
INSERT INTO `tccp_test` VALUES ('3', '李四', '22');
INSERT INTO `tccp_test` VALUES ('5', '钱6', '24');
INSERT INTO `tccp_test` VALUES ('6', '王五', '33');

-- ----------------------------
-- Table structure for tccp_update_info
-- ----------------------------
DROP TABLE IF EXISTS `tccp_update_info`;
CREATE TABLE `tccp_update_info` (
  `info_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `cdate` datetime DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `describe` varchar(255) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`info_id`),
  KEY `ui` (`user_id`),
  CONSTRAINT `ui` FOREIGN KEY (`user_id`) REFERENCES `tccp_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tccp_update_info
-- ----------------------------

-- ----------------------------
-- Table structure for tccp_user
-- ----------------------------
DROP TABLE IF EXISTS `tccp_user`;
CREATE TABLE `tccp_user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `sex` int(10) NOT NULL DEFAULT '0',
  `phonenum` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `qq` varchar(50) NOT NULL,
  `blog` varchar(50) DEFAULT NULL,
  `github` varchar(50) DEFAULT NULL,
  `grade` varchar(50) NOT NULL,
  `major` varchar(50) NOT NULL,
  `birthday` datetime DEFAULT NULL,
  `workplace` varchar(50) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `priority` int(10) NOT NULL DEFAULT '2',
  `status` int(10) NOT NULL DEFAULT '0',
  `image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tccp_user
-- ----------------------------
