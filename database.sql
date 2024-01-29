/*
SQLyog Community Edition- MySQL GUI v7.01 
MySQL - 5.0.27-community-nt : Database - vidattendence
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`vidattendence` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `vidattendence`;

/*Table structure for table `attendence` */

CREATE TABLE IF NOT EXISTS `att` (
  `name` varchar(50) NOT NULL,
  `adate` varchar(50) NOT NULL,
  `pstatus` varchar(50) NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`,`adate`,`pstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `sid` varchar(100) default NULL,
  `Student_Name` varchar(100) default NULL,
  `Student_Std` varchar(100) default NULL,
  `phoneno` varchar(100) default NULL,
  `email` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`sid`,`Student_Name`,`Student_Std`,`phoneno`,`email`) values ('1414','bgfbbfgb','I.T.(B.E)','8478598598','gnghn@gmail.com');

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `username` varchar(100) default NULL,
  `password` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `teacher` */

insert  into `teacher`(`username`,`password`) values ('a','a');

/*Table structure for table `timetable` */

