/*
Navicat MySQL Data Transfer

Source Server         : myDB
Source Server Version : 50614
Source Host           : 127.0.0.1:3306
Source Database       : msxt

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2019-11-15 10:59:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for msmerchant
-- ----------------------------
DROP TABLE IF EXISTS `msmerchant`;
CREATE TABLE `msmerchant` (
  `id` int(100) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `merchantname` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '商家姓名',
  `merchantshopname` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '商家店铺名称',
  `merchantaccount` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '商家账号',
  `merchantpassword` varchar(60) COLLATE utf8_bin DEFAULT NULL COMMENT '商家密码',
  `merchantscope` varchar(600) COLLATE utf8_bin DEFAULT NULL COMMENT '商家经营范围',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of msmerchant
-- ----------------------------

-- ----------------------------
-- Table structure for msorder
-- ----------------------------
DROP TABLE IF EXISTS `msorder`;
CREATE TABLE `msorder` (
  `id` int(100) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `productid` int(100) DEFAULT NULL COMMENT '秒杀商品id',
  `payamount` int(50) DEFAULT NULL COMMENT '支付金额',
  `userid` int(200) DEFAULT NULL COMMENT '用户id',
  `merchantid` int(100) DEFAULT NULL COMMENT '商家id',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `paytime` datetime DEFAULT NULL COMMENT '支付时间',
  `paystatus` int(2) DEFAULT NULL COMMENT '支付状态',
  `receivingadress` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '收货人地址',
  `receivingname` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '收货人',
  `receivingphone` int(10) DEFAULT NULL COMMENT '收货人电话',
  `tradeserialnumber` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '交易流水号',
  `num` int(20) DEFAULT NULL COMMENT '数量',
  `paytype` int(4) DEFAULT NULL COMMENT '支付类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of msorder
-- ----------------------------

-- ----------------------------
-- Table structure for msproductdetail
-- ----------------------------
DROP TABLE IF EXISTS `msproductdetail`;
CREATE TABLE `msproductdetail` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `productid` int(200) DEFAULT NULL COMMENT '商品id',
  `merchantid` int(100) DEFAULT NULL COMMENT '商家id',
  `productplace` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '商品产地',
  `productname` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '商品名称',
  `brandname` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '品牌',
  `productweight` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '商品毛重',
  `specification` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '规格和包装',
  `productdetailpicture` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '商品详情图片地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of msproductdetail
-- ----------------------------

-- ----------------------------
-- Table structure for msproductinfo
-- ----------------------------
DROP TABLE IF EXISTS `msproductinfo`;
CREATE TABLE `msproductinfo` (
  `id` int(100) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `productid` int(100) DEFAULT NULL COMMENT '商品id',
  `producttitle` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `productpicture` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '商品图片',
  `miaoshaprice` int(20) DEFAULT NULL COMMENT '秒杀价格',
  `originalprice` int(20) DEFAULT NULL COMMENT '原价格',
  `msmerchantid` int(100) DEFAULT NULL COMMENT '商家id',
  `applydate` datetime DEFAULT NULL COMMENT '添加日期',
  `auditdate` datetime DEFAULT NULL COMMENT '审核日期',
  `auditstate` int(2) DEFAULT NULL COMMENT '审核状态',
  `starttime` datetime DEFAULT NULL COMMENT '开始时间',
  `endtime` datetime DEFAULT NULL COMMENT '结束时间',
  `productcount` int(20) DEFAULT NULL COMMENT '秒杀商品数',
  `stockcount` int(20) DEFAULT NULL COMMENT '剩余库存数',
  `description` varchar(1500) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of msproductinfo
-- ----------------------------

-- ----------------------------
-- Table structure for msuser
-- ----------------------------
DROP TABLE IF EXISTS `msuser`;
CREATE TABLE `msuser` (
  `id` int(100) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '用户姓名',
  `useraccount` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '用户账号',
  `userpassword` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '用户密码',
  `usersex` int(4) DEFAULT NULL COMMENT '用户性别',
  `userage` int(4) DEFAULT NULL COMMENT '用户年龄',
  `useraddress` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '用户住址',
  `useremail` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '用户邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of msuser
-- ----------------------------
