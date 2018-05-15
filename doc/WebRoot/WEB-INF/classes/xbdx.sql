/*
Navicat MySQL Data Transfer

Source Server         : c
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : xbdx

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2018-03-30 15:46:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cg`
-- ----------------------------
DROP TABLE IF EXISTS `cg`;
CREATE TABLE `cg` (
  `id` int(11) NOT NULL,
  `price` double DEFAULT NULL,
  `yid` int(11) DEFAULT NULL,
  `times` datetime DEFAULT NULL,
  `gysid` int(11) DEFAULT NULL,
  `no` varchar(50) DEFAULT NULL,
  `gysno` varchar(50) DEFAULT NULL,
  `gysnames` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cg
-- ----------------------------
INSERT INTO `cg` VALUES ('1', '1', '1', '2018-02-22 15:25:31', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `cgmore`
-- ----------------------------
DROP TABLE IF EXISTS `cgmore`;
CREATE TABLE `cgmore` (
  `id` int(11) NOT NULL,
  `price` double DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `cgid` int(11) DEFAULT NULL,
  `sl` int(11) DEFAULT NULL,
  `times` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgmore
-- ----------------------------
INSERT INTO `cgmore` VALUES ('1', '1', '1', '1', '1', '2018-03-07 15:25:51');

-- ----------------------------
-- Table structure for `cust`
-- ----------------------------
DROP TABLE IF EXISTS `cust`;
CREATE TABLE `cust` (
  `id` int(11) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `sfz` varchar(50) DEFAULT NULL,
  `no` varchar(50) DEFAULT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `types` varchar(50) DEFAULT NULL,
  `jf` double DEFAULT NULL,
  `moneys` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cust
-- ----------------------------
INSERT INTO `cust` VALUES ('1', '4', '4', '4', '4', '4', '1', '0', '456');
INSERT INTO `cust` VALUES ('2', '', '44', '4', '4', '4', '1', '0', '0');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `names` varchar(50) DEFAULT NULL,
  `no` varchar(50) DEFAULT NULL,
  `descs` text,
  `price` double DEFAULT NULL,
  `jj` double DEFAULT NULL,
  `kc` int(11) DEFAULT NULL,
  `cbs` varchar(50) DEFAULT NULL,
  `zz` varchar(50) DEFAULT NULL,
  `pic` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '3', '3', '3', '3', '0', '0', null, null, '2018033014534570.png');

-- ----------------------------
-- Table structure for `gys`
-- ----------------------------
DROP TABLE IF EXISTS `gys`;
CREATE TABLE `gys` (
  `id` int(11) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `no` varchar(50) DEFAULT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gys
-- ----------------------------
INSERT INTO `gys` VALUES ('1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'a', 'a');

-- ----------------------------
-- Table structure for `xs`
-- ----------------------------
DROP TABLE IF EXISTS `xs`;
CREATE TABLE `xs` (
  `id` int(11) NOT NULL,
  `price` double DEFAULT NULL,
  `yid` int(11) DEFAULT NULL,
  `times` datetime DEFAULT NULL,
  `custid` int(11) DEFAULT NULL,
  `no` varchar(50) DEFAULT NULL,
  `custno` varchar(50) DEFAULT NULL,
  `custnames` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xs
-- ----------------------------
INSERT INTO `xs` VALUES ('1', '1', '1', '2018-03-28 15:26:22', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `xsmore`
-- ----------------------------
DROP TABLE IF EXISTS `xsmore`;
CREATE TABLE `xsmore` (
  `id` int(11) NOT NULL,
  `price` double DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `cgid` int(11) DEFAULT NULL,
  `sl` int(11) DEFAULT NULL,
  `times` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xsmore
-- ----------------------------
INSERT INTO `xsmore` VALUES ('1', '1', '1', '1', '1', '2018-03-14 15:26:37');

-- ----------------------------
-- Table structure for `yg`
-- ----------------------------
DROP TABLE IF EXISTS `yg`;
CREATE TABLE `yg` (
  `id` int(11) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `no` varchar(50) DEFAULT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `types` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yg
-- ----------------------------
INSERT INTO `yg` VALUES ('1', '1', '1', '1', '1', '店员', '1');
INSERT INTO `yg` VALUES ('2', '2', '2', '2', '2', '店员', '2');
