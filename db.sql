/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - wangyuebashidingpiao
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wangyuebashidingpiao` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wangyuebashidingpiao`;

/*Table structure for table `bashi` */

DROP TABLE IF EXISTS `bashi`;

CREATE TABLE `bashi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `bashi_name` varchar(200) DEFAULT NULL COMMENT '往返站点  Search111 ',
  `bashi_types` int(11) DEFAULT NULL COMMENT '巴士类型  Search111 ',
  `bashi_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `bashi_new_jifen` decimal(10,2) DEFAULT NULL COMMENT '积分',
  `bashi_time` timestamp NULL DEFAULT NULL COMMENT '发车时间',
  `zuowei_number` int(200) DEFAULT '0' COMMENT '座位数量',
  `selected` varchar(200) DEFAULT '' COMMENT '已购座位',
  `bashi_new_money` decimal(10,2) DEFAULT NULL COMMENT '票价',
  `bashi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `bashi_content` text COMMENT '简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='巴士信息';

/*Data for the table `bashi` */

insert  into `bashi`(`id`,`bashi_name`,`bashi_types`,`bashi_photo`,`bashi_new_jifen`,`bashi_time`,`zuowei_number`,`selected`,`bashi_new_money`,`bashi_delete`,`bashi_content`,`create_time`) values (23,'广西医科大学武鸣校区西2门，广西医科大学校本部',1,'http://localhost:8080/wangyuebashidingpiao/upload/1640498623604.png','10.00','2021-12-27 13:00:06',20,'4,7,10,3,6,9,12','30.00',1,'<p><span style=\"color: rgb(96, 98, 102);\">简介简介简介简介</span></p>','2021-12-26 14:03:45'),(24,'广西医科大学武鸣校区西1门，广西医科大学校本部',2,'http://localhost:8080/wangyuebashidingpiao/upload/1640587467303.png','20.00','2021-12-30 00:00:00',10,'1,2,4,3,5,6','50.00',1,'<p><span style=\"color: rgb(96, 98, 102);\">简介222222简介简介简介22222</span></p>','2021-12-27 14:43:35'),(25,'地点1 -》 地点2',1,'http://localhost:8080/wangyuebashidingpiao/upload/1640587933828.png','123.00','2022-05-07 00:00:00',4,'','9999.00',1,'<p><span style=\"color: rgb(96, 98, 102);\">简介简介简介简介简介简介简介123123123</span></p>','2021-12-27 14:54:31'),(26,'123',1,'http://localhost:8080/wangyuebashidingpiao/upload/1640678393463.png','123.00','2022-01-01 00:00:00',123,'','123.00',2,'<p>123</p>','2021-12-28 15:59:56');

/*Table structure for table `bashi_liuyan` */

DROP TABLE IF EXISTS `bashi_liuyan`;

CREATE TABLE `bashi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bashi_id` int(11) DEFAULT NULL COMMENT '巴士',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `bashi_liuyan_text` text COMMENT '评论内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='评论';

/*Data for the table `bashi_liuyan` */

insert  into `bashi_liuyan`(`id`,`bashi_id`,`yonghu_id`,`bashi_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (2,25,6,'我是评论内容',NULL,'2021-12-28 16:22:36',NULL,'2021-12-28 16:22:36');

/*Table structure for table `bashi_order` */

DROP TABLE IF EXISTS `bashi_order`;

CREATE TABLE `bashi_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bashi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `bashi_id` int(11) DEFAULT NULL COMMENT '巴士',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_zuowei` varchar(200) DEFAULT NULL COMMENT '购买的座位',
  `bashi_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格 ',
  `bashi_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `bashi_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COMMENT='巴士购票订单';

/*Data for the table `bashi_order` */

insert  into `bashi_order`(`id`,`bashi_order_uuid_number`,`bashi_id`,`yonghu_id`,`buy_zuowei`,`bashi_order_true_price`,`bashi_order_types`,`bashi_order_payment_types`,`insert_time`,`create_time`) values (79,'202112281624164769447',23,6,'3,6,9,12','120.00',3,1,'2021-12-28 16:24:02','2021-12-28 16:24:02'),(80,'2021122816242155119976',23,6,'4,7,10','90.00',2,1,'2021-12-28 16:24:22','2021-12-28 16:24:22');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='客服聊天';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,4,'12123','2021-12-26 15:34:00',NULL,NULL,2,1,'2021-12-26 15:34:00'),(2,4,'123123','2021-12-27 16:04:27',NULL,NULL,2,1,'2021-12-27 16:04:27'),(3,4,'333','2021-12-27 16:51:49',NULL,NULL,1,1,'2021-12-27 16:51:49'),(4,NULL,NULL,NULL,'22','2021-12-28 15:48:18',NULL,2,'2021-12-28 15:48:18'),(5,4,NULL,NULL,'22','2021-12-28 15:48:23',NULL,2,'2021-12-28 15:48:23'),(6,4,NULL,NULL,'33','2021-12-28 15:48:26',NULL,2,'2021-12-28 15:48:27'),(7,4,NULL,NULL,'管理可以根据用户发送的消息进行回答','2021-12-28 16:02:01',NULL,2,'2021-12-28 16:02:02'),(8,6,'可以像管理问问题','2021-12-28 16:23:33',NULL,NULL,1,1,'2021-12-28 16:23:34'),(9,6,'管理可以回复','2021-12-28 16:23:45',NULL,NULL,1,1,'2021-12-28 16:23:46');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/wangyuebashidingpiao/upload/1640503012746.png'),(2,'picture2','http://localhost:8080/wangyuebashidingpiao/upload/1640503020243.png'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (94,'sex_types','性别类型名称',1,'男',NULL,NULL,'2021-12-26 13:41:27'),(95,'sex_types','性别类型名称',2,'女',NULL,NULL,'2021-12-26 13:41:27'),(96,'news_types','新闻类型名称',1,'新闻类型1',NULL,NULL,'2021-12-26 13:41:27'),(97,'news_types','新闻类型名称',2,'新闻类型2',NULL,NULL,'2021-12-26 13:41:27'),(98,'bashi_types','巴士类型名称',1,'巴士类型1',NULL,NULL,'2021-12-26 13:41:27'),(99,'bashi_types','巴士类型名称',2,'巴士类型2',NULL,NULL,'2021-12-26 13:41:27'),(100,'jifneduihuan_types','物品类型名称',1,'物品类型1',NULL,NULL,'2021-12-26 13:41:27'),(101,'jifneduihuan_types','物品类型名称',2,'物品类型2',NULL,NULL,'2021-12-26 13:41:27'),(102,'bashi_order_types','订单类型',1,'已支付',NULL,NULL,'2021-12-26 13:41:27'),(103,'bashi_order_types','订单类型',2,'已退款',NULL,NULL,'2021-12-26 13:41:27'),(104,'bashi_order_types','订单类型',3,'已完成',NULL,NULL,'2021-12-26 13:41:27'),(105,'jifen_types','类型',1,'消费',NULL,NULL,'2021-12-26 13:41:27'),(106,'jifen_types','类型',2,'增加',NULL,NULL,'2021-12-26 13:41:27'),(107,'bashi_order_payment_types','支付方式',1,'余额支付',NULL,NULL,'2021-12-26 13:41:27'),(109,'chat_types','数据类型',1,'问题',NULL,NULL,'2021-12-26 13:41:27'),(110,'chat_types','数据类型',2,'回复',NULL,NULL,'2021-12-26 13:41:27'),(111,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2021-12-26 13:41:27'),(112,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2021-12-26 13:41:27');

/*Table structure for table `jifenjilu` */

DROP TABLE IF EXISTS `jifenjilu`;

CREATE TABLE `jifenjilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户姓名 ',
  `jifenjilu_name` varchar(200) DEFAULT NULL COMMENT '原因 ',
  `jifenjilu_number` decimal(10,2) DEFAULT NULL COMMENT '积分数量 ',
  `jifen_types` int(11) DEFAULT NULL COMMENT '类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '插入时间  ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COMMENT='积分记录';

/*Data for the table `jifenjilu` */

insert  into `jifenjilu`(`id`,`yonghu_id`,`jifenjilu_name`,`jifenjilu_number`,`jifen_types`,`insert_time`,`create_time`) values (86,6,'购买往返：广西医科大学武鸣校区西2门，广西医科大学校本部 巴士的3,6,9,12座位','40.00',2,'2021-12-28 16:24:02','2021-12-28 16:24:02'),(87,6,'购买往返：广西医科大学武鸣校区西2门，广西医科大学校本部 巴士的4,7,10座位','30.00',2,'2021-12-28 16:24:22','2021-12-28 16:24:22'),(88,6,'退往返：广西医科大学武鸣校区西2门，广西医科大学校本部 巴士中4,7,10座位的票','30.00',1,'2021-12-28 16:24:24','2021-12-28 16:24:24'),(89,6,'使用积分兑换物品2物品x1','10.00',1,'2021-12-28 16:24:48','2021-12-28 16:24:48'),(90,6,'使用积分兑换物品2物品x1','10.00',1,'2021-12-28 16:25:01','2021-12-28 16:25:01');

/*Table structure for table `jifneduihuan` */

DROP TABLE IF EXISTS `jifneduihuan`;

CREATE TABLE `jifneduihuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jifneduihuan_name` varchar(200) DEFAULT NULL COMMENT '物品名称  Search111 ',
  `jifneduihuan_types` int(11) DEFAULT NULL COMMENT '物品类型  Search111 ',
  `jifneduihuan_photo` varchar(200) DEFAULT NULL COMMENT '物品照片',
  `jifneduihuan_new_money` decimal(10,2) DEFAULT NULL COMMENT '积分',
  `jifneduihuan_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `jifneduihuan_content` text COMMENT '简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='积分兑换';

/*Data for the table `jifneduihuan` */

insert  into `jifneduihuan`(`id`,`jifneduihuan_name`,`jifneduihuan_types`,`jifneduihuan_photo`,`jifneduihuan_new_money`,`jifneduihuan_delete`,`jifneduihuan_content`,`create_time`) values (23,'物品1',1,'http://localhost:8080/wangyuebashidingpiao/upload/1640502854141.png','200.00',1,'<p><span style=\"color: rgb(96, 98, 102);\">简介1</span></p>','2021-12-26 15:14:23'),(24,'物品2',2,'http://localhost:8080/wangyuebashidingpiao/upload/1640502878223.jpg','10.00',1,'<p><span style=\"color: rgb(96, 98, 102);\">简介2</span></p>','2021-12-26 15:14:47'),(25,'物品3',1,'http://localhost:8080/wangyuebashidingpiao/upload/1640502896809.jpg','999.00',1,'<p><span style=\"color: rgb(96, 98, 102);\">简介3</span></p>','2021-12-26 15:15:05');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片 ',
  `news_types` int(11) NOT NULL COMMENT '新闻类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻发布时间 ',
  `news_content` text COMMENT '新闻详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='新闻信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`insert_time`,`news_content`,`create_time`) values (4,'新闻1','http://localhost:8080/wangyuebashidingpiao/upload/1640502920484.jpg',1,'2021-12-26 15:15:26','<p><span style=\"color: rgb(96, 98, 102);\">新闻详情1</span></p>','2021-12-26 15:15:26'),(5,'新闻2','http://localhost:8080/wangyuebashidingpiao/upload/1640502934795.jpg',2,'2021-12-26 15:15:38','<p><span style=\"color: rgb(96, 98, 102);\">新闻详情2</span></p>','2021-12-26 15:15:38');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','qgprj0n0qxc2zhkpg6gmlc9ewg414p5q','2021-12-26 13:59:29','2021-12-28 16:59:14'),(2,4,'111 ','yonghu','用户','eixzjrbsabulh8iol71x2kyjgns9ulf3','2021-12-26 14:10:13','2021-12-28 16:52:35'),(3,5,'222','yonghu','用户','8v2bi4x7uwi1t81du5vss6csqnks85o3','2021-12-28 16:05:19','2021-12-28 17:05:19'),(4,6,'222','yonghu','用户','hjnel5pu5f93bdoial92r824dnukanc2','2021-12-28 16:22:21','2021-12-28 17:22:22');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_new_jifen` decimal(10,2) DEFAULT NULL COMMENT '积分 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`sex_types`,`new_money`,`yonghu_new_jifen`,`yonghu_delete`,`create_time`) values (4,'111','123456','用户1','http://localhost:8080/wangyuebashidingpiao/upload/1640499097815.jpg','17798855961','410882198911261211',2,'0.00','0.00',1,'2021-12-26 14:05:16'),(6,'222','123456','张三','http://localhost:8080/wangyuebashidingpiao/upload/1640679787699.jpg','17785599841','410882199911211411',2,'9879.00','20.00',1,'2021-12-28 16:19:06');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
