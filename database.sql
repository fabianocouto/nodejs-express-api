/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 8.0.12 : Database - node_tasks
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`node_tasks` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;

USE `node_tasks`;

/*Table structure for table `tasks` */

DROP TABLE IF EXISTS `tasks`;

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `task` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `tasks` */

insert  into `tasks`(`id`,`created_at`,`task`,`status`) values (1,'2016-04-10 23:50:40','Find bugs',1);
insert  into `tasks`(`id`,`created_at`,`task`,`status`) values (2,'2016-04-10 23:50:40','Review code',1);
insert  into `tasks`(`id`,`created_at`,`task`,`status`) values (3,'2016-04-10 23:50:40','Fix bugs',1);
insert  into `tasks`(`id`,`created_at`,`task`,`status`) values (4,'2016-04-10 23:50:40','Refactor Code',1);
insert  into `tasks`(`id`,`created_at`,`task`,`status`) values (5,'2016-04-10 23:50:50','Push to prod',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
