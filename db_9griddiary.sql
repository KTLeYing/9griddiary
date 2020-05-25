/*
Navicat MySQL Data Transfer

Source Server         : localsystem
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : db_9griddiary

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-05-25 16:37:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_comments
-- ----------------------------
DROP TABLE IF EXISTS `tb_comments`;
CREATE TABLE `tb_comments` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '留言编号',
  `diary_id` int NOT NULL COMMENT '日记编号',
  `from_user_id` int NOT NULL COMMENT '留言人编号',
  `content` varchar(10000) NOT NULL COMMENT '留言内容',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '留言时间',
  `valid` varchar(1) NOT NULL DEFAULT 'Y' COMMENT '是否有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_comments
-- ----------------------------
INSERT INTO `tb_comments` VALUES ('5', '16', '7', '测试', '2017-07-26 14:57:48', 'Y');
INSERT INTO `tb_comments` VALUES ('6', '17', '7', '测试', '2017-07-26 14:58:43', 'Y');
INSERT INTO `tb_comments` VALUES ('7', '16', '7', '测试2', '2017-07-26 14:59:35', 'Y');
INSERT INTO `tb_comments` VALUES ('8', '18', '2', '测试好不好使', '2017-07-26 15:03:10', 'Y');
INSERT INTO `tb_comments` VALUES ('9', '16', '2', '留言试试', '2017-07-26 15:08:36', 'Y');
INSERT INTO `tb_comments` VALUES ('10', '17', '1', '留言', '2017-07-26 15:09:37', 'Y');
INSERT INTO `tb_comments` VALUES ('11', '17', '1', '测试', '2017-07-26 15:10:14', 'Y');
INSERT INTO `tb_comments` VALUES ('12', '18', '1', '我也留个言', '2017-07-26 15:10:28', 'Y');
INSERT INTO `tb_comments` VALUES ('13', '16', '1', 'fsdf ', '2017-07-26 15:20:14', 'Y');
INSERT INTO `tb_comments` VALUES ('14', '16', '1', 'fgd ', '2017-07-26 15:20:20', 'Y');
INSERT INTO `tb_comments` VALUES ('15', '19', '1', '我的日记', '2017-08-01 16:37:40', 'Y');
INSERT INTO `tb_comments` VALUES ('16', '19', '1', '', '2017-08-01 16:37:42', 'Y');
INSERT INTO `tb_comments` VALUES ('17', '19', '1', '', '2017-08-01 16:37:43', 'Y');
INSERT INTO `tb_comments` VALUES ('18', '19', '1', '', '2017-08-01 16:37:44', 'Y');
INSERT INTO `tb_comments` VALUES ('19', '19', '1', '', '2017-08-01 16:37:44', 'Y');
INSERT INTO `tb_comments` VALUES ('20', '19', '1', '', '2017-08-01 16:37:45', 'Y');
INSERT INTO `tb_comments` VALUES ('21', '19', '1', '', '2017-08-01 16:37:46', 'Y');
INSERT INTO `tb_comments` VALUES ('22', '16', '1', '', '2017-08-01 16:46:43', 'Y');
INSERT INTO `tb_comments` VALUES ('23', '16', '1', '', '2017-08-01 16:46:44', 'Y');
INSERT INTO `tb_comments` VALUES ('24', '20', '10', '，，，，，，', '2017-08-01 17:42:41', 'Y');
INSERT INTO `tb_comments` VALUES ('25', '14', '2', '不错不错', '2017-09-26 11:14:39', 'Y');
INSERT INTO `tb_comments` VALUES ('26', '14', '1', '谢谢', '2017-09-26 11:15:11', 'Y');
INSERT INTO `tb_comments` VALUES ('27', '15', '1', '活得挺充实嘛', '2017-12-04 15:51:21', 'Y');
INSERT INTO `tb_comments` VALUES ('28', '15', '1', '不错的\n', '2020-05-13 18:29:22', 'Y');
INSERT INTO `tb_comments` VALUES ('29', '15', '1', '', '2020-05-13 18:29:28', 'Y');
INSERT INTO `tb_comments` VALUES ('30', '15', '1', '很好', '2020-05-13 18:29:34', 'Y');
INSERT INTO `tb_comments` VALUES ('31', '15', '1', '很好', '2020-05-13 18:29:41', 'Y');
INSERT INTO `tb_comments` VALUES ('32', '15', '1', '很好', '2020-05-13 18:29:54', 'Y');
INSERT INTO `tb_comments` VALUES ('33', '15', '1', '很好', '2020-05-13 18:29:57', 'Y');
INSERT INTO `tb_comments` VALUES ('34', '15', '1', '很好', '2020-05-13 18:29:59', 'Y');
INSERT INTO `tb_comments` VALUES ('35', '15', '1', '很好', '2020-05-13 18:30:07', 'Y');
INSERT INTO `tb_comments` VALUES ('36', '15', '1', '很好', '2020-05-13 18:30:09', 'Y');
INSERT INTO `tb_comments` VALUES ('37', '15', '1', '很好', '2020-05-13 18:30:13', 'Y');
INSERT INTO `tb_comments` VALUES ('38', '15', '1', '很好', '2020-05-13 18:30:17', 'Y');
INSERT INTO `tb_comments` VALUES ('39', '32', '1', '不错', '2020-05-13 22:54:17', 'Y');
INSERT INTO `tb_comments` VALUES ('40', '34', '14', '哈哈', '2020-05-13 23:00:48', 'Y');
INSERT INTO `tb_comments` VALUES ('41', '32', '14', '哈哈哈哈哈\n', '2020-05-13 23:01:07', 'Y');
INSERT INTO `tb_comments` VALUES ('42', '35', '14', '哈哈哈', '2020-05-13 23:04:17', 'Y');

-- ----------------------------
-- Table structure for tb_diary
-- ----------------------------
DROP TABLE IF EXISTS `tb_diary`;
CREATE TABLE `tb_diary` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `address` varchar(50) NOT NULL COMMENT '日记保存的地址',
  `writeTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '时间',
  `userid` int unsigned NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_diary
-- ----------------------------
INSERT INTO `tb_diary` VALUES ('6', '请在此输入标题', '-1625618782951844312', '2017-05-26 09:40:10', '1');
INSERT INTO `tb_diary` VALUES ('8', '无题目', '-5039247624120215442', '2017-05-27 10:26:47', '1');
INSERT INTO `tb_diary` VALUES ('9', '心情不错', '241344336121425196', '2017-05-28 14:00:43', '1');
INSERT INTO `tb_diary` VALUES ('10', '无题', '2030326276105596531', '2017-05-28 14:03:08', '1');
INSERT INTO `tb_diary` VALUES ('11', '无尽的牵挂', '-2201304326449572193', '2017-05-28 14:09:18', '2');
INSERT INTO `tb_diary` VALUES ('31', '你好', '-1895839493794387381', '2020-05-13 22:46:23', '1');
INSERT INTO `tb_diary` VALUES ('32', '开心', '-8622041493333667205', '2020-05-13 22:49:05', '1');
INSERT INTO `tb_diary` VALUES ('33', '请在此输入标题', '-1264868024713175671', '2020-05-13 22:55:00', '1');
INSERT INTO `tb_diary` VALUES ('34', '请在此输入标题', '982181052987839294', '2020-05-13 22:56:14', '14');
INSERT INTO `tb_diary` VALUES ('35', '请在此输入标题', '-941933110243471695', '2020-05-13 23:03:51', '14');

-- ----------------------------
-- Table structure for tb_likes
-- ----------------------------
DROP TABLE IF EXISTS `tb_likes`;
CREATE TABLE `tb_likes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `diary_id` int NOT NULL,
  `from_user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_likes
-- ----------------------------
INSERT INTO `tb_likes` VALUES ('4', '16', '4');
INSERT INTO `tb_likes` VALUES ('10', '17', '1');
INSERT INTO `tb_likes` VALUES ('11', '18', '1');
INSERT INTO `tb_likes` VALUES ('12', '16', '1');
INSERT INTO `tb_likes` VALUES ('14', '19', '1');
INSERT INTO `tb_likes` VALUES ('15', '20', '1');
INSERT INTO `tb_likes` VALUES ('16', '20', '10');
INSERT INTO `tb_likes` VALUES ('17', '21', '10');
INSERT INTO `tb_likes` VALUES ('18', '14', '2');
INSERT INTO `tb_likes` VALUES ('19', '15', '1');
INSERT INTO `tb_likes` VALUES ('20', '10', '1');
INSERT INTO `tb_likes` VALUES ('21', '32', '1');
INSERT INTO `tb_likes` VALUES ('22', '34', '14');
INSERT INTO `tb_likes` VALUES ('23', '33', '14');
INSERT INTO `tb_likes` VALUES ('24', '31', '14');
INSERT INTO `tb_likes` VALUES ('25', '35', '14');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `pwd` varchar(50) NOT NULL COMMENT '密码',
  `email` varchar(100) DEFAULT NULL COMMENT 'E-mail',
  `question` varchar(45) DEFAULT NULL COMMENT '密码提示问题',
  `answer` varchar(45) DEFAULT NULL COMMENT '提示问题答案',
  `city` varchar(30) DEFAULT NULL COMMENT '所在地',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'mr', 'mrsoft', null, '', '', '');
INSERT INTO `tb_user` VALUES ('2', 'wgh', '111', null, '我的工作单位', '明日科技', '长春');
INSERT INTO `tb_user` VALUES ('3', 'qq', 'w123456', 'wgh000@sohu.com', '6', '6', '长春');
INSERT INTO `tb_user` VALUES ('4', 'h', 'hhhhhh', 'wgh000@sohu.com', '', '', '北京');
INSERT INTO `tb_user` VALUES ('5', 'w', 'wwwwww', 'www@sina.com', '', '', '北京');
INSERT INTO `tb_user` VALUES ('7', 'kk', 'kkkkkk', 'wgh@gggg.com', '', '', '长春');
INSERT INTO `tb_user` VALUES ('8', '888', 'wwwwww', 'www@si.com', '', '', '葫芦岛');
INSERT INTO `tb_user` VALUES ('9', '测试', 'aaaaaa', '78945613236@qq.com', '', '', '');
INSERT INTO `tb_user` VALUES ('10', '测试用户', 'aaaaaa', '458465@qq.com', '', '', '');
INSERT INTO `tb_user` VALUES ('11', '测试333', 'a1234567', 'asdasd@123123.com', '我的工作单位', '不知道', '宁波');
INSERT INTO `tb_user` VALUES ('12', 'mingrisoft', 'mingrisoft', 'mingrisoft@mingrisoft.com', '我的工作单位', '明日科技', '北京');
INSERT INTO `tb_user` VALUES ('13', 'qiqi', 'qq123456', 'mingrisoft@mingrisoft.com', '我的工作单位', '明日科技', '北京');
INSERT INTO `tb_user` VALUES ('14', 'aaaaaa', 'aaaaaa', '2222266@qq.com', 'aaaaa', 'aaaaa', '湛江');
