/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.23-log : Database - studemo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`studemo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `studemo`;

/*Table structure for table `t_admin` */

DROP TABLE IF EXISTS `t_admin`;

CREATE TABLE `t_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_admin` */

insert  into `t_admin`(`id`,`username`,`password`) values (1,'admin','123456');

/*Table structure for table `t_class` */

DROP TABLE IF EXISTS `t_class`;

CREATE TABLE `t_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `class_name` varchar(255) DEFAULT NULL COMMENT '班级名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `t_class` */

insert  into `t_class`(`id`,`class_name`) values (1,'1'),(4,'2'),(5,'3'),(6,'12');

/*Table structure for table `t_course` */

DROP TABLE IF EXISTS `t_course`;

CREATE TABLE `t_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `course_name` varchar(255) DEFAULT NULL COMMENT '课程名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_course` */

insert  into `t_course`(`id`,`course_name`) values (2,'qweqwe'),(3,'e');

/*Table structure for table `t_menus` */

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

/*Data for the table `t_menus` */

insert  into `t_menus`(`id`,`text`,`icon`,`url`,`close`,`pid`) values (1,'首页',NULL,NULL,'false',0),(2,'菜单1',NULL,NULL,'false',0),(3,'菜单二',NULL,NULL,'false',0),(4,'菜单11',NULL,NULL,'false',2),(5,'菜单21',NULL,NULL,'false',3);

/*Table structure for table `t_notice` */

DROP TABLE IF EXISTS `t_notice`;

CREATE TABLE `t_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '通知标题',
  `content` varchar(255) DEFAULT NULL COMMENT '通知内容',
  `create_date` datetime DEFAULT NULL COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `t_notice` */

insert  into `t_notice`(`id`,`title`,`content`,`create_date`) values (3,'123123','123123123123','2018-11-09 21:01:31'),(4,'ad','asdasd','2018-11-09 21:04:47');

/*Table structure for table `t_profession` */

DROP TABLE IF EXISTS `t_profession`;

CREATE TABLE `t_profession` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profession_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `t_profession` */

insert  into `t_profession`(`id`,`profession_name`) values (1,'qwe'),(2,'werewr'),(3,'rtr33');

/*Table structure for table `t_room` */

DROP TABLE IF EXISTS `t_room`;

CREATE TABLE `t_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `room_name` varchar(255) DEFAULT NULL COMMENT '教室名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `t_room` */

insert  into `t_room`(`id`,`room_name`) values (1,'12322'),(3,'123'),(4,'444'),(5,'444'),(6,'555');

/*Table structure for table `t_score` */

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `t_score` */

insert  into `t_score`(`id`,`score_title`,`course_id`,`stu_id`,`tea_id`,`score`,`create_date`) values (1,'123',2,NULL,NULL,'123','2018-11-10 18:41:32'),(2,'123',2,NULL,NULL,'123','2018-11-10 18:42:19'),(7,'qwe',3,3,3,'123','2018-11-10 19:45:35');

/*Table structure for table `t_serie` */

DROP TABLE IF EXISTS `t_serie`;

CREATE TABLE `t_serie` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `serie_name` varchar(255) DEFAULT NULL COMMENT '系名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `t_serie` */

insert  into `t_serie`(`id`,`serie_name`) values (1,'qwe'),(3,'rrr'),(4,'wer');

/*Table structure for table `t_student` */

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `t_student` */

insert  into `t_student`(`id`,`stu_no`,`stu_name`,`stu_age`,`stu_sex`,`serie_id`,`profession_id`,`class_id`,`phone`,`enter_school`,`term_id`,`stu_pwd`) values (3,'232024','123123','123','1',1,1,1,'12312332','2018-11-09',4,'123456'),(4,'233501','qweqqwe','123','2',1,1,1,'123123','2018-11-09',4,'123456'),(5,'234813','sdfsd','123','1',3,3,4,'dsf','2018-11-09',15,'123456');

/*Table structure for table `t_teacher` */

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

/*Data for the table `t_teacher` */

insert  into `t_teacher`(`id`,`tea_no`,`tea_name`,`tea_age`,`tea_sex`,`tea_phone`,`profession_id`,`tea_pwd`) values (1,'001853','213','123','1','213',1,'123456'),(3,'005026','32432','234','1','324',1,'123456');

/*Table structure for table `t_term` */

DROP TABLE IF EXISTS `t_term`;

CREATE TABLE `t_term` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `term_name` varchar(255) DEFAULT NULL COMMENT '学期名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `t_term` */

insert  into `t_term`(`id`,`term_name`) values (4,'2018?????'),(5,'2018?????'),(7,'123123123'),(8,'qweqwe'),(9,'2018?????'),(10,'123??'),(11,'???'),(12,'123???'),(13,'???23222'),(14,'123123???'),(15,'123???'),(16,'??????sddssda'),(17,'dsaffdssdfds???'),(18,'????'),(19,'123123123eee'),(20,'12312312322ss'),(21,'123333'),(22,'123qweqwe'),(23,'12333');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
