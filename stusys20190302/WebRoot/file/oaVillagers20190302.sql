/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.23-log : Database - oavillagers20190302
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`oavillagers20190302` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `oavillagers20190302`;

/*Table structure for table `t_admin` */

DROP TABLE IF EXISTS `t_admin`;

CREATE TABLE `t_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `idcard` varchar(100) DEFAULT NULL,
  `job` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `creat_time` varchar(100) DEFAULT NULL,
  `role_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_admin` */

insert  into `t_admin`(`id`,`username`,`password`,`name`,`phone`,`idcard`,`job`,`address`,`creat_time`,`role_id`) values (1,'admin','123456',NULL,NULL,NULL,NULL,NULL,NULL,'1'),(2,'test1','123456','123','123123','1231233','123','123','2019-03-03 02:05:31','2'),(3,'123','123123','444','123123','213','123','123455','2019-03-03 02:07:35','2');

/*Table structure for table `t_assets` */

DROP TABLE IF EXISTS `t_assets`;

CREATE TABLE `t_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `purpose` varchar(100) DEFAULT NULL,
  `num` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `create_by` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_time` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `t_assets` */

insert  into `t_assets`(`id`,`name`,`purpose`,`num`,`status`,`create_by`,`user_id`,`create_time`) values (1,'123','123','123','新增','444',NULL,'2019-03-03 02:33:20');

/*Table structure for table `t_attendance` */

DROP TABLE IF EXISTS `t_attendance`;

CREATE TABLE `t_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `begin_time` varchar(100) DEFAULT NULL,
  `end_time` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `t_attendance` */

insert  into `t_attendance`(`id`,`user_id`,`name`,`begin_time`,`end_time`) values (4,3,'444','2019-03-03 13:56:50','2019-03-03 13:56:55'),(5,2,'123','2019-03-03 14:04:25','2019-03-03 14:04:30'),(6,1,NULL,'2019-03-03 14:47:28','2019-03-03 14:47:31');

/*Table structure for table `t_communicate` */

DROP TABLE IF EXISTS `t_communicate`;

CREATE TABLE `t_communicate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `job` varchar(100) DEFAULT NULL,
  `create_time` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `t_communicate` */

insert  into `t_communicate`(`id`,`name`,`address`,`phone`,`job`,`create_time`,`user_id`,`username`) values (1,'qwew','驱蚊器为w','qweqwe','请问',NULL,NULL,NULL),(2,'rr','rr','rr','rr','2019-03-03 03:08:10',NULL,'444');

/*Table structure for table `t_file` */

DROP TABLE IF EXISTS `t_file`;

CREATE TABLE `t_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(100) DEFAULT NULL,
  `file_path` varchar(200) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `create_time` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `t_file` */

insert  into `t_file`(`id`,`file_name`,`file_path`,`content`,`create_time`,`status`,`name`,`userid`) values (7,'rtrt二胎','upload/011ccc5bbdc686a8012099c8bc3d14.jpg@260w_195h_1c_1e_1o_100sh.jpg','二胎','2019-03-03 04:26:09','1','444',NULL),(8,'二维','F:\\tomcat\\apache-tomcat-7.0.79\\webapps\\oaVillagers20190302\\upload/0109755baf6afea8012099c8374698.jpg@260w_195h_1c_1e_1o_100sh.jpg','而','2019-03-03 04:28:16','1','444',NULL),(9,'444','F:\\tomcat\\apache-tomcat-7.0.79\\webapps\\oaVillagers20190302\\upload/0109755baf6afea8012099c8374698.jpg@260w_195h_1c_1e_1o_100sh.jpg','444','2019-03-03 04:34:24','1','444',NULL);

/*Table structure for table `t_finance` */

DROP TABLE IF EXISTS `t_finance`;

CREATE TABLE `t_finance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `income` varchar(100) DEFAULT NULL,
  `purpose` varchar(100) DEFAULT NULL,
  `use_time` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `t_finance` */

insert  into `t_finance`(`id`,`income`,`purpose`,`use_time`,`amount`,`user_id`,`name`) values (1,'支出','123123','2019-03-03','123123',NULL,NULL),(2,'收入','二维若翁而','2019-03-19','432',NULL,'444');

/*Table structure for table `t_job` */

DROP TABLE IF EXISTS `t_job`;

CREATE TABLE `t_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `t_job` */

insert  into `t_job`(`id`,`job_name`) values (1,'焊工'),(2,'教师'),(3,'程序员'),(5,'223');

/*Table structure for table `t_policy` */

DROP TABLE IF EXISTS `t_policy`;

CREATE TABLE `t_policy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `policy_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `t_policy` */

insert  into `t_policy`(`id`,`policy_name`) values (1,'扶贫政策'),(2,'计划生育政策'),(4,'233333');

/*Table structure for table `t_villagers` */

DROP TABLE IF EXISTS `t_villagers`;

CREATE TABLE `t_villagers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `house_num` varchar(100) DEFAULT NULL,
  `house_relations` varchar(100) DEFAULT NULL,
  `sex` varchar(100) DEFAULT NULL,
  `national` varchar(100) DEFAULT NULL,
  `id_card` varchar(100) DEFAULT NULL,
  `birth` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `marriage` varchar(100) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `education` varchar(100) DEFAULT NULL,
  `soldier` varchar(100) DEFAULT NULL,
  `party_date` varchar(100) DEFAULT NULL,
  `party` varchar(11) DEFAULT NULL,
  `health_care` varchar(100) DEFAULT NULL,
  `policy_id` int(11) DEFAULT NULL,
  `residence_move` varchar(100) DEFAULT NULL,
  `crime` varchar(255) DEFAULT NULL,
  `create_time` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `t_villagers` */

insert  into `t_villagers`(`id`,`name`,`house_num`,`house_relations`,`sex`,`national`,`id_card`,`birth`,`phone`,`marriage`,`job_id`,`education`,`soldier`,`party_date`,`party`,`health_care`,`policy_id`,`residence_move`,`crime`,`create_time`) values (1,'张建','123','123','男','汉族','123','2019-03-12','123123','未婚',2,'本科','未服役','2019-03-06','否','是',2,'未迁移','123',NULL),(3,'test','Q12','123','男','少数名族','123','2019-03-13','123','未婚',3,'本科','未服役','2019-03-11','否','是',2,'未迁移','123','2019-03-02 01:53:44'),(4,'张建','132','132','男','汉族','13213','','153132','未婚',NULL,'本科','未服役','','是','是',NULL,'未迁移','','2019-03-02 08:45:50'),(5,'请问','13','132','男','汉族','1346546','','2656+5+','未婚',NULL,'本科','未服役','','否','是',NULL,'未迁移','','2019-03-02 08:48:01'),(6,'6535+6','s45f4d6','afsd','男','汉族','sfd','1899-11-29','adsfasd','未婚',NULL,'本科','未服役','','否','是',NULL,'未迁移','','2019-03-02 08:48:19'),(7,'sdf46','asdf45','asdf5','男','汉族','54a645f','','asdf56+','未婚',NULL,'本科','未服役','1899-12-31','否','是',NULL,'未迁移','','2019-03-02 08:48:41'),(8,'456','s4f65we','sdf12','男','汉族','sdf123','1899-11-13','sfafd','未婚',NULL,'本科','未服役','','否','是',NULL,'未迁移','','2019-03-02 08:49:18'),(9,'456','546','456','男','汉族','456','1899-11-28','456456654','未婚',NULL,'本科','未服役','','否','是',NULL,'未迁移','','2019-03-02 10:52:15'),(10,'4565','465654','456456','男','汉族','45645','1899-11-07','5464','未婚',NULL,'本科','未服役','','否','是',NULL,'未迁移','','2019-03-02 10:52:31'),(11,'456','546','456','男','汉族','645','1899-12-31','645','未婚',NULL,'本科','未服役','','否','是',NULL,'未迁移','','2019-03-02 10:52:52'),(12,'546456','6546','6456','男','汉族','6456','1899-12-12','456','未婚',NULL,'本科','未服役','','否','是',NULL,'未迁移','','2019-03-02 10:53:13');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
