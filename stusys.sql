/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : stusys

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2019-06-15 11:30:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', '123456');

-- ----------------------------
-- Table structure for `t_class`
-- ----------------------------
DROP TABLE IF EXISTS `t_class`;
CREATE TABLE `t_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `class_name` varchar(255) DEFAULT NULL COMMENT '班级名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_class
-- ----------------------------
INSERT INTO `t_class` VALUES ('1', '1');
INSERT INTO `t_class` VALUES ('4', '2');
INSERT INTO `t_class` VALUES ('5', '3');
INSERT INTO `t_class` VALUES ('7', '4');
INSERT INTO `t_class` VALUES ('8', '水果');

-- ----------------------------
-- Table structure for `t_course`
-- ----------------------------
DROP TABLE IF EXISTS `t_course`;
CREATE TABLE `t_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `course_name` varchar(255) DEFAULT NULL COMMENT '课程名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_course
-- ----------------------------
INSERT INTO `t_course` VALUES ('2', 'qweqwe');
INSERT INTO `t_course` VALUES ('3', 'e');

-- ----------------------------
-- Table structure for `t_holiday`
-- ----------------------------
DROP TABLE IF EXISTS `t_holiday`;
CREATE TABLE `t_holiday` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) DEFAULT NULL,
  `tea_id` int(11) DEFAULT NULL,
  `begin_time` varchar(100) DEFAULT NULL,
  `end_time` varchar(100) DEFAULT NULL,
  `day_num` varchar(100) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL COMMENT '0:申请中  1:申请拒绝 2：销假申请 3：销假成功 4：申请提交 5：申请成功',
  `aduit_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_holiday
-- ----------------------------
INSERT INTO `t_holiday` VALUES ('1', '4', null, '2019-03-01 13:25', '2019-03-04 13:25', '3天0小时0分0秒', '请问请问', '1', null);
INSERT INTO `t_holiday` VALUES ('2', '6', null, '2019-03-01 13:35', '2019-03-08 13:35', '7天0小时0分0秒', '我去饿', '5', 'admin');

-- ----------------------------
-- Table structure for `t_menus`
-- ----------------------------
DROP TABLE IF EXISTS `t_menus`;
CREATE TABLE `t_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(100) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `close` varchar(100) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menus
-- ----------------------------
INSERT INTO `t_menus` VALUES ('1', '首页', null, null, 'false', '0');
INSERT INTO `t_menus` VALUES ('2', '菜单1', null, null, 'false', '0');
INSERT INTO `t_menus` VALUES ('3', '菜单二', null, null, 'false', '0');
INSERT INTO `t_menus` VALUES ('4', '菜单11', null, null, 'false', '2');
INSERT INTO `t_menus` VALUES ('5', '菜单21', null, null, 'false', '3');

-- ----------------------------
-- Table structure for `t_notice`
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '通知标题',
  `content` varchar(255) DEFAULT NULL COMMENT '通知内容',
  `create_date` datetime DEFAULT NULL COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_notice
-- ----------------------------
INSERT INTO `t_notice` VALUES ('3', '好消息', '60周年庆', '2018-11-09 21:01:31');
INSERT INTO `t_notice` VALUES ('4', 'ad', 'asdasd', '2018-11-09 21:04:47');

-- ----------------------------
-- Table structure for `t_profession`
-- ----------------------------
DROP TABLE IF EXISTS `t_profession`;
CREATE TABLE `t_profession` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profession_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_profession
-- ----------------------------
INSERT INTO `t_profession` VALUES ('1', 'qwe');
INSERT INTO `t_profession` VALUES ('2', 'werewr');
INSERT INTO `t_profession` VALUES ('3', 'rtr33');

-- ----------------------------
-- Table structure for `t_room`
-- ----------------------------
DROP TABLE IF EXISTS `t_room`;
CREATE TABLE `t_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `room_name` varchar(255) DEFAULT NULL COMMENT '教室名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_room
-- ----------------------------
INSERT INTO `t_room` VALUES ('1', '12322');
INSERT INTO `t_room` VALUES ('3', '123');
INSERT INTO `t_room` VALUES ('4', '444');
INSERT INTO `t_room` VALUES ('5', '444');
INSERT INTO `t_room` VALUES ('6', '555');
INSERT INTO `t_room` VALUES ('7', '的方法');

-- ----------------------------
-- Table structure for `t_score`
-- ----------------------------
DROP TABLE IF EXISTS `t_score`;
CREATE TABLE `t_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score_title` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `stu_id` int(11) DEFAULT NULL,
  `tea_id` int(11) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_score
-- ----------------------------
INSERT INTO `t_score` VALUES ('1', '123', '2', null, null, '123', '2018-11-10 18:41:32');
INSERT INTO `t_score` VALUES ('2', '123', '2', null, null, '123', '2018-11-10 18:42:19');

-- ----------------------------
-- Table structure for `t_serie`
-- ----------------------------
DROP TABLE IF EXISTS `t_serie`;
CREATE TABLE `t_serie` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `serie_name` varchar(255) DEFAULT NULL COMMENT '系名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_serie
-- ----------------------------
INSERT INTO `t_serie` VALUES ('1', '数学与计算机科学学院');
INSERT INTO `t_serie` VALUES ('3', 'rrr');
INSERT INTO `t_serie` VALUES ('4', 'wer');

-- ----------------------------
-- Table structure for `t_student`
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_no` varchar(255) DEFAULT NULL,
  `stu_name` varchar(255) DEFAULT NULL,
  `stu_age` varchar(255) DEFAULT NULL,
  `stu_sex` varchar(255) DEFAULT NULL,
  `serie_id` int(11) DEFAULT NULL,
  `profession_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `enter_school` date DEFAULT NULL,
  `term_id` int(11) DEFAULT NULL,
  `stu_pwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('4', '233501', 'qweqqwe', '123', '2', '1', '1', '1', '123123', '2018-11-09', '4', '123456');
INSERT INTO `t_student` VALUES ('5', '234813', 'sdfsd', '123', '1', '3', '3', '4', 'dsf', '2018-11-09', '15', '123456');
INSERT INTO `t_student` VALUES ('6', '001853', '564', '6446', '1', '3', '2', '4', '54646', '2018-11-10', '12', '123456');
INSERT INTO `t_student` VALUES ('7', '1531111', '???', '45', '1', '1', '2', '1', '45678', '2018-11-11', '16', '123456');
INSERT INTO `t_student` VALUES ('8', null, null, null, null, null, null, null, null, '2019-03-01', null, '123456');
INSERT INTO `t_student` VALUES ('9', null, null, null, null, null, null, null, null, '2019-03-01', null, '123456');

-- ----------------------------
-- Table structure for `t_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE `t_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tea_no` varchar(255) DEFAULT NULL,
  `tea_name` varchar(255) DEFAULT NULL,
  `tea_age` varchar(255) DEFAULT NULL,
  `tea_sex` varchar(255) DEFAULT NULL,
  `tea_phone` varchar(255) DEFAULT NULL,
  `profession_id` int(11) DEFAULT NULL,
  `tea_pwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_teacher
-- ----------------------------
INSERT INTO `t_teacher` VALUES ('1', '001853', '213', '123', '1', '213', '1', '123456');
INSERT INTO `t_teacher` VALUES ('3', '005026', '32432', '234', '1', '324', '1', '123456');

-- ----------------------------
-- Table structure for `t_term`
-- ----------------------------
DROP TABLE IF EXISTS `t_term`;
CREATE TABLE `t_term` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `term_name` varchar(255) DEFAULT NULL COMMENT '学期名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_term
-- ----------------------------
INSERT INTO `t_term` VALUES ('4', '2018上学期');
INSERT INTO `t_term` VALUES ('7', '123123123');
INSERT INTO `t_term` VALUES ('9', '2018下学期');
INSERT INTO `t_term` VALUES ('10', '123学期');
INSERT INTO `t_term` VALUES ('11', '测试学期');
INSERT INTO `t_term` VALUES ('12', '1234学期');
INSERT INTO `t_term` VALUES ('14', '123123学期');
INSERT INTO `t_term` VALUES ('15', '1234学期');
INSERT INTO `t_term` VALUES ('16', 'sddssda');
INSERT INTO `t_term` VALUES ('17', 'dsaffdssdfds');
INSERT INTO `t_term` VALUES ('18', 'sfsf');
INSERT INTO `t_term` VALUES ('19', '123123123eee');
INSERT INTO `t_term` VALUES ('20', '12312312322ss');
INSERT INTO `t_term` VALUES ('21', '123333');
INSERT INTO `t_term` VALUES ('22', '123qweqwe');
INSERT INTO `t_term` VALUES ('23', '12333');
INSERT INTO `t_term` VALUES ('24', 'qwe');
INSERT INTO `t_term` VALUES ('25', '2019上学期');
