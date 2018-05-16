/*
Navicat MySQL Data Transfer

Source Server         : 本机MySql
Source Server Version : 50721
Source Host           : 127.0.0.1:3306
Source Database       : myself

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-05-16 09:31:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL COMMENT '员工号（用来登录）',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `type` varchar(12) DEFAULT NULL COMMENT '工种',
  `telephone` varchar(11) DEFAULT NULL COMMENT ' 电话',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------

-- ----------------------------
-- Table structure for meal
-- ----------------------------
DROP TABLE IF EXISTS `meal`;
CREATE TABLE `meal` (
  `id` int(11) NOT NULL,
  `num` varchar(12) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `desc` text COMMENT '描述',
  `status` varchar(12) DEFAULT NULL COMMENT '审批状态 0待审批 1审批失败 2审批成功',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meal
-- ----------------------------

-- ----------------------------
-- Table structure for provider
-- ----------------------------
DROP TABLE IF EXISTS `provider`;
CREATE TABLE `provider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(12) NOT NULL COMMENT '供应商编号',
  `name` varchar(32) DEFAULT NULL COMMENT '供应商名字',
  `telephone` varchar(11) DEFAULT NULL COMMENT '电话号',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商';

-- ----------------------------
-- Records of provider
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL COMMENT '用户名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `type` varchar(12) NOT NULL COMMENT '用户类型 1管理员 2员工',
  `status` varchar(12) NOT NULL DEFAULT '1' COMMENT '用户状态 0失效 1有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for vip
-- ----------------------------
DROP TABLE IF EXISTS `vip`;
CREATE TABLE `vip` (
  `id` int(11) NOT NULL,
  `id_card` varchar(18) DEFAULT NULL COMMENT '身份证号',
  `name` varchar(32) DEFAULT NULL COMMENT '姓名',
  `telephone` varchar(11) DEFAULT NULL COMMENT '电话',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员';

-- ----------------------------
-- Records of vip
-- ----------------------------
