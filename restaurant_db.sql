/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.7.11 : Database - restaurant_management_system
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`restaurant_management_system` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `restaurant_management_system`;

/*Table structure for table `tbl_balance` */

DROP TABLE IF EXISTS `tbl_balance`;

CREATE TABLE `tbl_balance` (
  `bal_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` varchar(50) NOT NULL,
  `open_bal_usd` decimal(18,2) NOT NULL,
  `open_bal_riel` int(11) NOT NULL,
  `exchange_rate` int(10) DEFAULT '0',
  `user_crea` varchar(20) NOT NULL,
  `date_crea` date NOT NULL,
  `user_updt` varchar(20) DEFAULT NULL,
  `date_updt` date DEFAULT NULL,
  PRIMARY KEY (`bal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_balance` */

insert  into `tbl_balance`(`bal_id`,`staff_id`,`open_bal_usd`,`open_bal_riel`,`exchange_rate`,`user_crea`,`date_crea`,`user_updt`,`date_updt`) values (23,'chheng.samnang',100.00,100000,4020,'admin','2017-01-04',NULL,NULL),(25,'chheng.samnang',200.00,800000,4020,'admin','2017-01-11',NULL,NULL);

/*Table structure for table `tbl_book` */

DROP TABLE IF EXISTS `tbl_book`;

CREATE TABLE `tbl_book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) NOT NULL,
  `tab_id` int(11) NOT NULL,
  `phone` char(13) NOT NULL,
  `people` tinyint(4) NOT NULL,
  `time_book` time NOT NULL,
  `des` text,
  `status` int(1) DEFAULT '0',
  `user_crea` varchar(100) NOT NULL,
  `date_crea` date NOT NULL,
  `user_updt` varchar(100) NOT NULL,
  `date_updt` date NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_book` */

insert  into `tbl_book`(`book_id`,`customer_name`,`tab_id`,`phone`,`people`,`time_book`,`des`,`status`,`user_crea`,`date_crea`,`user_updt`,`date_updt`) values (78,'Chheng Samnang',1,'070893164',4,'19:30:00','',1,'admin','2017-01-09','admin','2017-04-21'),(79,'Chou Meng',1,'0122323232',5,'14:02:00','',1,'admin','2017-01-09','admin','2017-01-09'),(80,'chheng samnang',2,'070893164',5,'19:30:00','',1,'admin','2017-04-21','','0000-00-00');

/*Table structure for table `tbl_category` */

DROP TABLE IF EXISTS `tbl_category`;

CREATE TABLE `tbl_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(150) CHARACTER SET latin1 NOT NULL,
  `cat_name_kh` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `desc` text CHARACTER SET latin1,
  `parent_id` int(11) NOT NULL,
  `user_crea` varchar(20) NOT NULL,
  `date_crea` date NOT NULL,
  `user_updt` varchar(20) DEFAULT NULL,
  `date_updt` date DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_category` */

insert  into `tbl_category`(`cat_id`,`cat_name`,`cat_name_kh`,`desc`,`parent_id`,`user_crea`,`date_crea`,`user_updt`,`date_updt`,`order`) values (1,'Food','អាហារ','<p>Test</p>',0,'0','2016-10-19','admin','2016-12-08',5),(4,'Drink','ភេសជ្ជៈ','',0,'','2016-10-31','chheng.samnang','2016-10-31',4),(6,'Others','ផ្សេងៗ','',0,'','2017-05-13',NULL,NULL,6),(7,'Soup','ស៊ុប','',0,'','2017-05-17',NULL,NULL,1),(8,'Vegetable','បន្លែ','',0,'','2017-05-17',NULL,NULL,3),(9,'Meat','សាច់','',0,'','2017-05-17',NULL,NULL,2);

/*Table structure for table `tbl_closeshift` */

DROP TABLE IF EXISTS `tbl_closeshift`;

CREATE TABLE `tbl_closeshift` (
  `clsft_id` int(11) NOT NULL AUTO_INCREMENT,
  `clsft_date` date NOT NULL,
  `staff_id` int(11) NOT NULL,
  `cash_usd` decimal(18,2) NOT NULL,
  `cash_riel` int(11) NOT NULL,
  `exchange_usd` decimal(18,2) NOT NULL,
  `exchange_riel` int(11) NOT NULL,
  `open_bal_usd` decimal(18,2) NOT NULL,
  `open_bal_riel` int(11) NOT NULL,
  `ending_bal_usd` decimal(18,2) NOT NULL,
  `ending_bal_riel` int(11) NOT NULL,
  `user_crea` varchar(20) NOT NULL,
  `date_crea` date NOT NULL,
  `user_updt` varchar(20) DEFAULT NULL,
  `date_updt` date DEFAULT NULL,
  PRIMARY KEY (`clsft_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_closeshift` */

/*Table structure for table `tbl_customer` */

DROP TABLE IF EXISTS `tbl_customer`;

CREATE TABLE `tbl_customer` (
  `cus_id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_name` varchar(150) NOT NULL,
  `desc` text,
  `discount` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `user_crea` varchar(20) NOT NULL,
  `date_crea` date NOT NULL,
  `user_updt` varchar(20) DEFAULT NULL,
  `date_updt` date DEFAULT NULL,
  PRIMARY KEY (`cus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_customer` */

insert  into `tbl_customer`(`cus_id`,`cus_name`,`desc`,`discount`,`count`,`user_crea`,`date_crea`,`user_updt`,`date_updt`) values (3,'General Customer','',0,0,'1','2016-11-01',NULL,NULL),(4,'VIP','',100,0,'1','2016-11-10',NULL,NULL),(5,'Bronze','',30,0,'1','2016-11-11',NULL,NULL);

/*Table structure for table `tbl_invoice_det` */

DROP TABLE IF EXISTS `tbl_invoice_det`;

CREATE TABLE `tbl_invoice_det` (
  `inv_det_id` int(11) NOT NULL AUTO_INCREMENT,
  `inv_id` varchar(100) NOT NULL,
  `m_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `cost` decimal(18,2) NOT NULL,
  `discount` int(11) NOT NULL,
  `total` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`inv_det_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_invoice_det` */

insert  into `tbl_invoice_det`(`inv_det_id`,`inv_id`,`m_id`,`qty`,`cost`,`discount`,`total`) values (1,'20170803163531',1,1,8.00,0,8.00),(2,'20170803163601',2,1,10.00,0,10.00),(3,'20170803163601',3,1,5.00,0,5.00),(4,'20170808051253',4,1,2.00,0,2.00),(5,'170809-0001',4,1,2.00,0,2.00),(6,'170809-0001',3,1,5.00,0,5.00),(7,'170812-0001',4,1,2.00,0,2.00),(8,'170812-0001',1,1,8.00,0,8.00),(9,'170812-0001',2,1,10.00,0,10.00),(10,'170812-0001',3,1,5.00,0,5.00);

/*Table structure for table `tbl_invoice_hdr` */

DROP TABLE IF EXISTS `tbl_invoice_hdr`;

CREATE TABLE `tbl_invoice_hdr` (
  `inv_id` varchar(100) NOT NULL,
  `inv_date` date NOT NULL,
  `tab_id` int(11) NOT NULL,
  `staff_id` varbinary(50) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `user_crea` varchar(20) NOT NULL,
  `date_crea` date NOT NULL,
  `user_updt` varchar(20) DEFAULT NULL,
  `date_updt` date DEFAULT NULL,
  `paid` int(1) DEFAULT '0',
  PRIMARY KEY (`inv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_invoice_hdr` */

insert  into `tbl_invoice_hdr`(`inv_id`,`inv_date`,`tab_id`,`staff_id`,`discount`,`user_crea`,`date_crea`,`user_updt`,`date_updt`,`paid`) values ('170809-0001','2017-08-09',1,'',NULL,'admin','2017-08-09',NULL,NULL,0),('170812-0001','2017-08-12',1,'',NULL,'admin','2017-08-12',NULL,NULL,1),('20170803163531','2017-08-03',1,'',NULL,'admin','2017-08-03',NULL,NULL,1),('20170803163601','2017-08-03',1,'',NULL,'admin','2017-08-03',NULL,NULL,1),('20170808051253','2017-08-08',1,'',NULL,'admin','2017-08-08',NULL,NULL,1);

/*Table structure for table `tbl_menu` */

DROP TABLE IF EXISTS `tbl_menu`;

CREATE TABLE `tbl_menu` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(150) NOT NULL,
  `m_name_kh` varchar(150) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `price` decimal(18,2) NOT NULL,
  `desc` text CHARACTER SET latin1,
  `desc_kh` text,
  `img` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `measure` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `user_crea` varchar(20) CHARACTER SET latin1 NOT NULL,
  `date_crea` date NOT NULL,
  `user_updt` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `date_updt` date DEFAULT NULL,
  `order` int(11) DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_menu` */

insert  into `tbl_menu`(`m_id`,`m_name`,`m_name_kh`,`cat_id`,`price`,`desc`,`desc_kh`,`img`,`measure`,`user_crea`,`date_crea`,`user_updt`,`date_updt`,`order`) values (1,'Barbeque','សាច់អាំង',1,8.00,'','','Barbeque1.png','','admin','2017-08-03','admin','2017-08-16',0),(2,'Barbeque2','សាច់អាំង២',1,10.00,'','','barbeque2.jpg','','admin','2017-08-03','admin','2017-08-16',0),(3,'Beef Steak','ប៊ីស្ទឹក',1,5.00,'','','Beef_Steak1.jpg','','admin','2017-08-03','admin','2017-08-16',0),(4,'Burger','បឺហ្គឺ',1,2.50,'','','Burger21.png','','admin','2017-08-03',NULL,NULL,0);

/*Table structure for table `tbl_order_det` */

DROP TABLE IF EXISTS `tbl_order_det`;

CREATE TABLE `tbl_order_det` (
  `ord_det_id` int(11) NOT NULL AUTO_INCREMENT,
  `ord_id` varchar(100) NOT NULL,
  `m_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `cost` decimal(18,2) NOT NULL,
  `discount` decimal(18,2) NOT NULL,
  `comment` text,
  `status` int(1) DEFAULT '0',
  PRIMARY KEY (`ord_det_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_order_det` */

insert  into `tbl_order_det`(`ord_det_id`,`ord_id`,`m_id`,`qty`,`cost`,`discount`,`comment`,`status`) values (1,'20170803163439',1,1,8.00,0.00,'',1),(2,'20170803163439',2,1,10.00,0.00,'',1),(3,'20170803163439',3,1,5.00,0.00,'',1),(4,'20170808051104',4,1,2.00,0.00,'',1),(5,'20170808051216',1,1,8.00,0.00,'',0),(6,'20170808051445',4,1,2.00,0.00,'',0),(7,'20170808051445',4,1,2.00,0.00,'',0),(8,'20170808051445',4,1,2.00,0.00,'',0);

/*Table structure for table `tbl_order_hdr` */

DROP TABLE IF EXISTS `tbl_order_hdr`;

CREATE TABLE `tbl_order_hdr` (
  `ord_id` varchar(100) NOT NULL,
  `ord_date` date NOT NULL,
  `tab_id` int(11) NOT NULL,
  `staff_id` varchar(30) NOT NULL,
  `user_crea` varchar(20) NOT NULL,
  `date_crea` date NOT NULL,
  `user_updt` varchar(20) NOT NULL,
  `date_updt` date NOT NULL,
  `paid` int(1) DEFAULT NULL,
  PRIMARY KEY (`ord_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_order_hdr` */

insert  into `tbl_order_hdr`(`ord_id`,`ord_date`,`tab_id`,`staff_id`,`user_crea`,`date_crea`,`user_updt`,`date_updt`,`paid`) values ('20170803163439','2017-08-03',4,'admin','admin','2017-08-03','','0000-00-00',1),('20170808051104','2017-08-08',4,'admin','admin','2017-08-08','','0000-00-00',1),('20170808051216','2017-08-08',4,'admin','admin','2017-08-08','','0000-00-00',1),('20170808051445','2017-08-08',4,'admin','admin','2017-08-08','','0000-00-00',0);

/*Table structure for table `tbl_permission` */

DROP TABLE IF EXISTS `tbl_permission`;

CREATE TABLE `tbl_permission` (
  `perm_id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) NOT NULL,
  `add` int(11) DEFAULT NULL,
  `edit` int(11) DEFAULT NULL,
  `delete` int(11) DEFAULT NULL,
  `form` varchar(50) NOT NULL,
  `user_crea` varchar(20) NOT NULL,
  `date_crea` date NOT NULL,
  `user_updt` varchar(20) DEFAULT NULL,
  `date_updt` date DEFAULT NULL,
  PRIMARY KEY (`perm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_permission` */

insert  into `tbl_permission`(`perm_id`,`user`,`add`,`edit`,`delete`,`form`,`user_crea`,`date_crea`,`user_updt`,`date_updt`) values (26,'chheng.samnang',1,0,0,'userController','admin','2016-11-04',NULL,NULL),(27,'chheng.samnang',1,0,0,'customer_C','admin','2016-11-04',NULL,NULL),(28,'chheng.samnang',1,0,0,'Menu_C','admin','2016-11-04',NULL,NULL),(29,'chheng.samnang',1,0,0,'table_C','admin','2016-11-04',NULL,NULL),(30,'chheng.samnang',1,0,0,'Position','admin','2016-11-04',NULL,NULL),(31,'chheng.samnang',1,0,0,'Category','admin','2016-11-04',NULL,NULL),(32,'chheng.samnang',1,0,0,'Balance','admin','2016-11-04',NULL,NULL),(33,'chheng.samnang',1,1,0,'staff','admin','2016-11-04','admin','2016-11-05');

/*Table structure for table `tbl_position` */

DROP TABLE IF EXISTS `tbl_position`;

CREATE TABLE `tbl_position` (
  `pos_id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_name` varchar(150) NOT NULL,
  `pos_name_kh` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `des` text,
  `user_crea` varchar(20) NOT NULL,
  `date_crea` date NOT NULL,
  `user_updt` varchar(20) DEFAULT NULL,
  `date_updt` date DEFAULT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_position` */

insert  into `tbl_position`(`pos_id`,`pos_name`,`pos_name_kh`,`des`,`user_crea`,`date_crea`,`user_updt`,`date_updt`) values (1,'System Admin','System Admin','test','1','2016-09-16','1','2016-09-16'),(5,'Cashier','បេឡា','','','0000-00-00',NULL,NULL);

/*Table structure for table `tbl_receipt` */

DROP TABLE IF EXISTS `tbl_receipt`;

CREATE TABLE `tbl_receipt` (
  `rec_id` int(11) NOT NULL AUTO_INCREMENT,
  `rec_no` varchar(100) DEFAULT NULL,
  `rec_date` date NOT NULL,
  `inv_id` varchar(100) NOT NULL,
  `ttl_usd` decimal(18,2) NOT NULL,
  `ttl_riel` int(11) NOT NULL,
  `cash_usd` decimal(18,2) NOT NULL,
  `cash_riel` int(11) NOT NULL,
  `exchange_usd` decimal(18,2) NOT NULL,
  `exchange_riel` int(11) NOT NULL,
  `ex_rate` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `user_crea` varchar(20) NOT NULL,
  `date_crea` date NOT NULL,
  `user_updt` varchar(20) NOT NULL,
  `date_updt` date NOT NULL,
  PRIMARY KEY (`rec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_receipt` */

insert  into `tbl_receipt`(`rec_id`,`rec_no`,`rec_date`,`inv_id`,`ttl_usd`,`ttl_riel`,`cash_usd`,`cash_riel`,`exchange_usd`,`exchange_riel`,`ex_rate`,`status`,`user_crea`,`date_crea`,`user_updt`,`date_updt`) values (1,'1501778146540','2017-08-03','20170803163531',8.00,32100,8.00,0,0.00,0,4000,NULL,'admin','2017-08-03','','0000-00-00'),(2,'1501778177843','2017-08-03','20170803163601',15.00,60100,15.00,0,0.00,0,4000,NULL,'admin','2017-08-03','','0000-00-00'),(3,'1502169222730','2017-08-08','20170808051253',2.00,8100,1.00,4000,0.00,0,4000,NULL,'admin','2017-08-08','','0000-00-00');

/*Table structure for table `tbl_recipe` */

DROP TABLE IF EXISTS `tbl_recipe`;

CREATE TABLE `tbl_recipe` (
  `rcp_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) DEFAULT NULL,
  `rcp_name` varchar(150) DEFAULT NULL,
  `rcp_desc` text,
  `rcp_status` int(1) DEFAULT NULL,
  `user_crea` varchar(50) DEFAULT NULL,
  `date_crea` date DEFAULT NULL,
  `user_updt` varchar(50) DEFAULT NULL,
  `date_updt` date DEFAULT NULL,
  PRIMARY KEY (`rcp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tbl_recipe` */

/*Table structure for table `tbl_recipe_det` */

DROP TABLE IF EXISTS `tbl_recipe_det`;

CREATE TABLE `tbl_recipe_det` (
  `rcp_det_id` int(11) NOT NULL AUTO_INCREMENT,
  `rcp_id` int(11) DEFAULT NULL,
  `ingredient` varchar(200) DEFAULT NULL,
  `measurement` varchar(50) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`rcp_det_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tbl_recipe_det` */

/*Table structure for table `tbl_staff` */

DROP TABLE IF EXISTS `tbl_staff`;

CREATE TABLE `tbl_staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_code` varchar(100) DEFAULT NULL,
  `staff_name` varchar(150) CHARACTER SET latin1 NOT NULL,
  `staff_name_kh` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `sex` char(1) CHARACTER SET latin1 NOT NULL,
  `dob` date NOT NULL,
  `pob` text CHARACTER SET latin1,
  `pos_id` int(11) NOT NULL,
  `addr` text CHARACTER SET latin1,
  `phone` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `fb` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `status` int(11) NOT NULL,
  `img` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `user_crea` varchar(35) NOT NULL,
  `date_crea` date NOT NULL,
  `user_updt` varchar(35) DEFAULT NULL,
  `date_updt` date DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_staff` */

insert  into `tbl_staff`(`staff_id`,`user_code`,`staff_name`,`staff_name_kh`,`sex`,`dob`,`pob`,`pos_id`,`addr`,`phone`,`email`,`fb`,`status`,`img`,`user_crea`,`date_crea`,`user_updt`,`date_updt`) values (24,'chheng.samnang','Chheng Samnang','ឆេង សំណាង','m','2016-12-16','Phnom Penh',1,'<p>St.138, #184, Tek Laok II, Toul Kok, Phnom Penh</p>','070893164','samnang164@gmail.com','chheng samnang',1,'avatar_icon_by_astrolink247-d9xxs6r14.jpg','0','2016-12-16','admin','2016-12-16');

/*Table structure for table `tbl_stock` */

DROP TABLE IF EXISTS `tbl_stock`;

CREATE TABLE `tbl_stock` (
  `stk_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) DEFAULT NULL,
  `stk_qty` int(11) DEFAULT NULL,
  `stk_price` decimal(18,2) DEFAULT NULL,
  `unit_price` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`stk_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_stock` */

insert  into `tbl_stock`(`stk_id`,`m_id`,`stk_qty`,`stk_price`,`unit_price`) values (1,57,24,1.00,1.50);

/*Table structure for table `tbl_sysdata` */

DROP TABLE IF EXISTS `tbl_sysdata`;

CREATE TABLE `tbl_sysdata` (
  `key_id` int(11) NOT NULL AUTO_INCREMENT,
  `key_type` varchar(100) NOT NULL,
  `key_code` varchar(100) NOT NULL,
  `key_data` varchar(100) NOT NULL,
  `key_data1` varchar(100) NOT NULL,
  `key_data2` varchar(100) NOT NULL,
  `key_desc` varchar(100) NOT NULL,
  `user_crea` varchar(30) NOT NULL,
  `date_crea` date NOT NULL,
  `user_updt` varchar(30) NOT NULL,
  `date_updt` date NOT NULL,
  PRIMARY KEY (`key_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_sysdata` */

insert  into `tbl_sysdata`(`key_id`,`key_type`,`key_code`,`key_data`,`key_data1`,`key_data2`,`key_desc`,`user_crea`,`date_crea`,`user_updt`,`date_updt`) values (2,'expense','kh02','Ice','2','','2000','admin','2016-12-15','admin','2016-12-15'),(3,'expense','kh03','Water','2','6','','chheng.samnang','2016-12-15','','0000-00-00'),(4,'expense','kh04','Vegetable','10','0','25000','admin','2016-12-18','','0000-00-00'),(5,'expense','kh05','Ice','10','0','25000','admin','2016-12-21','','0000-00-00'),(6,'expense','kh06','Cocacola','24','12.5','0','chheng.samnang','2016-12-22','','0000-00-00'),(7,'expense','kh07','Ice','1','0','2500','chheng.samnang','2017-01-11','','0000-00-00'),(23,'SET','20170504183945','1','2.50','','key_data store m_id','','0000-00-00','','0000-00-00'),(24,'SET','20170504183945','2','10.00','','key_data store m_id','','0000-00-00','','0000-00-00'),(25,'SET','20170504183945','3','1.00','','key_data store m_id','','0000-00-00','','0000-00-00'),(26,'SET','20170504183945','4','5.00','','key_data store m_id','','0000-00-00','','0000-00-00'),(27,'exrate','20170511104905','4000','','','','admin','2017-05-11','','0000-00-00');

/*Table structure for table `tbl_table` */

DROP TABLE IF EXISTS `tbl_table`;

CREATE TABLE `tbl_table` (
  `tab_id` int(11) NOT NULL AUTO_INCREMENT,
  `tab_name` varchar(50) NOT NULL,
  `sta` varchar(10) NOT NULL,
  `seats` int(11) DEFAULT NULL,
  `price` decimal(18,2) DEFAULT NULL,
  `user_crea` varchar(20) NOT NULL,
  `date_crea` date NOT NULL,
  `user_updt` varchar(20) DEFAULT NULL,
  `date_updt` date DEFAULT NULL,
  PRIMARY KEY (`tab_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_table` */

insert  into `tbl_table`(`tab_id`,`tab_name`,`sta`,`seats`,`price`,`user_crea`,`date_crea`,`user_updt`,`date_updt`) values (1,'T-001','Free',4,0.00,'1','2016-10-31','admin','2017-01-03'),(2,'T-002','Free',4,0.00,'1','2016-10-31','admin','2017-01-04'),(3,'T-003','Free',4,0.00,'1','2016-11-02','1','2016-11-22'),(4,'T-004','Busy',4,0.00,'1','2016-11-18',NULL,NULL),(5,'T-005','Free',4,0.00,'1','2016-11-18',NULL,NULL),(6,'T-006','Free',4,0.00,'1','2016-11-18',NULL,NULL),(7,'T-007','Free',4,0.00,'1','2016-11-18',NULL,NULL),(8,'T-008','Free',4,0.00,'1','2016-11-18',NULL,NULL),(9,'T-009','Free',4,0.00,'1','2016-11-18',NULL,NULL),(10,'T-010','Free',4,0.00,'1','2016-11-18',NULL,NULL);

/*Table structure for table `tbl_user` */

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userCode` varchar(50) NOT NULL,
  `userName` varchar(40) NOT NULL,
  `password` varchar(220) NOT NULL,
  `des` text,
  `status` int(11) NOT NULL,
  `user_crea` varchar(100) NOT NULL,
  `date_crea` date NOT NULL,
  `user_updt` varchar(100) DEFAULT NULL,
  `date_updt` date DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`user_id`,`userCode`,`userName`,`password`,`des`,`status`,`user_crea`,`date_crea`,`user_updt`,`date_updt`) values (6,'Admin','Adminstrator','40bd001563085fc35165329ea1ff5c5ecbdbbeef','<p>System default user</p>',1,'chheng.samnang','2016-11-01',NULL,NULL),(9,'chanthol','chanthol','40bd001563085fc35165329ea1ff5c5ecbdbbeef','',1,'chanthol','2017-05-13',NULL,NULL),(10,'Eng','Eng','40bd001563085fc35165329ea1ff5c5ecbdbbeef','',1,'chanthol','2017-05-13',NULL,NULL),(11,'Kunthea','Kunthea','40bd001563085fc35165329ea1ff5c5ecbdbbeef','',1,'chanthol','2017-05-13',NULL,NULL),(12,'Ny','Ny','40bd001563085fc35165329ea1ff5c5ecbdbbeef','',1,'chanthol','2017-05-13',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
