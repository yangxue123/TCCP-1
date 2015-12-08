/*
Navicat MySQL Data Transfer

Source Server         : localhost：3306
Source Server Version : 50627
Source Host           : localhost:3306
Source Database       : tccp

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2015-12-08 19:03:14
*/

SET FOREIGN_KEY_CHECKS=0;

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
  `birthday` date DEFAULT NULL,
  `workplace` varchar(50) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `priority` int(10) NOT NULL DEFAULT '2',
  `image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tccp_user
-- ----------------------------
INSERT INTO `tccp_user` VALUES ('2', 'testname', '123456', '0', '18829291491', '352862566@qq.com', '352862566', null, null, '大三', '计科', '1994-09-10', null, null, '2', null);
INSERT INTO `tccp_user` VALUES ('3', 'testname2', '123456', '0', '18829291923', '213312371@qq.com', '1233452133', null, null, '大三', '软件', '1993-09-11', null, null, '2', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `age` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'tccp', '1');
INSERT INTO `user` VALUES ('2', '张三', '18');
INSERT INTO `user` VALUES ('3', '李四', '22');
INSERT INTO `user` VALUES ('5', '钱六', '24');
INSERT INTO `user` VALUES ('6', '王五', '33');
