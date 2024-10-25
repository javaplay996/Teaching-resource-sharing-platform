/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jiaoxuezhiyuangongxiangpingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jiaoxuezhiyuangongxiangpingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jiaoxuezhiyuangongxiangpingtai`;

/*Table structure for table `chengji` */

DROP TABLE IF EXISTS `chengji`;

CREATE TABLE `chengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chengji_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名唯一编号 Search111 ',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chengji_kemu` varchar(200) DEFAULT NULL COMMENT '科目 ',
  `chengji_pigai` int(11) DEFAULT NULL COMMENT '分数',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '作业提交时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='成绩';

/*Data for the table `chengji` */

insert  into `chengji`(`id`,`chengji_uuid_number`,`laoshi_id`,`yonghu_id`,`chengji_kemu`,`chengji_pigai`,`insert_time`,`create_time`) values (1,'1682493001483',1,2,'科目1',369,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(2,'1682493001512',1,1,'科目2',378,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(3,'1682493001543',3,1,'科目3',183,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(4,'1682493001544',2,1,'科目4',463,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(5,'1682493001510',1,2,'科目5',81,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(6,'1682493001475',1,2,'科目6',282,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(7,'1682493001513',3,1,'科目7',51,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(8,'1682493001475',3,1,'科目8',367,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(9,'1682493001515',3,2,'科目9',233,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(10,'1682493001536',1,2,'科目10',167,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(11,'1682493001549',3,1,'科目11',489,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(12,'1682493001476',2,2,'科目12',118,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(13,'1682493001505',1,2,'科目13',37,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(14,'1682493001524',3,3,'科目14',73,'2023-04-26 15:10:01','2023-04-26 15:10:01');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-26 15:09:46'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-26 15:09:46'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-26 15:09:46'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-26 15:09:46'),(5,'forum_types','帖子类型',1,'在线交流',NULL,NULL,'2023-04-26 15:09:46'),(6,'forum_types','帖子类型',2,'答疑',NULL,NULL,'2023-04-26 15:09:46'),(7,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-26 15:09:46'),(8,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-26 15:09:46'),(9,'ziyua_types','教学资源类型',1,'教学资源类型1',NULL,NULL,'2023-04-26 15:09:47'),(10,'ziyua_types','教学资源类型',2,'教学资源类型2',NULL,NULL,'2023-04-26 15:09:47'),(11,'ziyua_types','教学资源类型',3,'教学资源类型3',NULL,NULL,'2023-04-26 15:09:47'),(12,'ziyua_types','教学资源类型',4,'教学资源类型4',NULL,NULL,'2023-04-26 15:09:47'),(13,'ziyua_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-26 15:09:47'),(14,'zuoye_types','作业类型',1,'作业类型1',NULL,NULL,'2023-04-26 15:09:47'),(15,'zuoye_types','作业类型',2,'作业类型2',NULL,NULL,'2023-04-26 15:09:47'),(16,'zuoye_types','作业类型',3,'作业类型3',NULL,NULL,'2023-04-26 15:09:47'),(17,'zuoye_types','作业类型',4,'作业类型4',NULL,NULL,'2023-04-26 15:09:47'),(18,'zuoye_tijiao_yesno_types','提交状态',1,'待批改',NULL,NULL,'2023-04-26 15:09:47'),(19,'zuoye_tijiao_yesno_types','提交状态',2,'已批改',NULL,NULL,'2023-04-26 15:09:47'),(20,'zuoye_tijiao_yesno_types','提交状态',3,'未批改',NULL,NULL,'2023-04-26 15:09:47');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='交流论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`laoshi_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,NULL,'发布内容1',326,1,1,'2023-04-26 15:10:01','2023-04-26 15:10:01','2023-04-26 15:10:01'),(2,'帖子标题2',2,NULL,NULL,'发布内容2',353,2,1,'2023-04-26 15:10:01','2023-04-26 15:10:01','2023-04-26 15:10:01'),(3,'帖子标题3',1,NULL,NULL,'发布内容3',15,1,1,'2023-04-26 15:10:01','2023-04-26 15:10:01','2023-04-26 15:10:01'),(4,'帖子标题4',3,NULL,NULL,'发布内容4',405,2,1,'2023-04-26 15:10:01','2023-04-26 15:10:01','2023-04-26 15:10:01'),(5,'帖子标题5',2,NULL,NULL,'发布内容5',284,2,1,'2023-04-26 15:10:01','2023-04-26 15:10:01','2023-04-26 15:10:01'),(6,'帖子标题6',1,NULL,NULL,'发布内容6',457,1,1,'2023-04-26 15:10:01','2023-04-26 15:10:01','2023-04-26 15:10:01'),(7,'帖子标题7',3,NULL,NULL,'发布内容7',471,1,1,'2023-04-26 15:10:01','2023-04-26 15:10:01','2023-04-26 15:10:01'),(8,'帖子标题8',1,NULL,NULL,'发布内容8',230,2,1,'2023-04-26 15:10:01','2023-04-26 15:10:01','2023-04-26 15:10:01'),(9,'帖子标题9',1,NULL,NULL,'发布内容9',134,2,1,'2023-04-26 15:10:01','2023-04-26 15:10:01','2023-04-26 15:10:01'),(10,'帖子标题10',1,NULL,NULL,'发布内容10',168,1,1,'2023-04-26 15:10:01','2023-04-26 15:10:01','2023-04-26 15:10:01'),(11,'帖子标题11',2,NULL,NULL,'发布内容11',245,2,1,'2023-04-26 15:10:01','2023-04-26 15:10:01','2023-04-26 15:10:01'),(12,'帖子标题12',3,NULL,NULL,'发布内容12',359,1,1,'2023-04-26 15:10:01','2023-04-26 15:10:01','2023-04-26 15:10:01'),(13,'帖子标题13',3,NULL,NULL,'发布内容13',496,1,1,'2023-04-26 15:10:01','2023-04-26 15:10:01','2023-04-26 15:10:01'),(14,'帖子标题14',3,NULL,NULL,'发布内容14',376,1,1,'2023-04-26 15:10:01','2023-04-26 15:10:01','2023-04-26 15:10:01'),(16,'测',1,NULL,NULL,'<p>丫丫</p>',NULL,1,1,'2023-04-26 16:17:41',NULL,'2023-04-26 16:17:41'),(17,NULL,NULL,1,NULL,'456456',16,NULL,2,'2023-04-26 16:22:55',NULL,'2023-04-26 16:22:55');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-04-26 15:10:01','公告详情1','2023-04-26 15:10:01'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-04-26 15:10:01','公告详情2','2023-04-26 15:10:01'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-04-26 15:10:01','公告详情3','2023-04-26 15:10:01'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-04-26 15:10:01','公告详情4','2023-04-26 15:10:01'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-04-26 15:10:01','公告详情5','2023-04-26 15:10:01'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-04-26 15:10:01','公告详情6','2023-04-26 15:10:01'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-04-26 15:10:01','公告详情7','2023-04-26 15:10:01'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-04-26 15:10:01','公告详情8','2023-04-26 15:10:01'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-04-26 15:10:01','公告详情9','2023-04-26 15:10:01'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-04-26 15:10:01','公告详情10','2023-04-26 15:10:01'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-04-26 15:10:01','公告详情11','2023-04-26 15:10:01'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-04-26 15:10:01','公告详情12','2023-04-26 15:10:01'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-04-26 15:10:01','公告详情13','2023-04-26 15:10:01'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-04-26 15:10:01','公告详情14','2023-04-26 15:10:01');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_uuid_number` varchar(200) DEFAULT NULL COMMENT '老师编号 Search111 ',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名 Search111 ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '老师身份证号',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `laoshi_email` varchar(200) DEFAULT NULL COMMENT '老师邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`username`,`password`,`laoshi_uuid_number`,`laoshi_name`,`laoshi_phone`,`laoshi_id_number`,`laoshi_photo`,`sex_types`,`laoshi_email`,`create_time`) values (1,'a1','123456','1682493001548','老师姓名1','17703786901','410224199010102001','upload/laoshi1.jpg',2,'1@qq.com','2023-04-26 15:10:01'),(2,'a2','123456','1682493001557','老师姓名2','17703786902','410224199010102002','upload/laoshi2.jpg',1,'2@qq.com','2023-04-26 15:10:01'),(3,'a3','123456','1682493001514','老师姓名3','17703786903','410224199010102003','upload/laoshi3.jpg',1,'3@qq.com','2023-04-26 15:10:01');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','u9ogo7fsnyonj8q4wqa2ggnmv24eirpi','2023-04-26 15:13:07','2023-04-26 17:17:13'),(2,1,'admin','users','管理员','8rzknphrtmffp1b6mojh8v4hs0y1xiqr','2023-04-26 15:20:16','2023-04-26 17:23:11'),(3,1,'a1','laoshi','老师','666dyt1hj7chdg9uc6ftrmsk9mfqmhvn','2023-04-26 15:24:09','2023-04-26 17:21:12');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-26 15:09:46');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','1682493001511','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','2023-04-26 15:10:01'),(2,'a2','123456','1682493001558','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','2023-04-26 15:10:01'),(3,'a3','123456','1682493001548','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','2023-04-26 15:10:01');

/*Table structure for table `ziyua` */

DROP TABLE IF EXISTS `ziyua`;

CREATE TABLE `ziyua` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `ziyua_name` varchar(200) DEFAULT NULL COMMENT '教学资源名称  Search111 ',
  `ziyua_uuid_number` varchar(200) DEFAULT NULL COMMENT '教学资源编号',
  `ziyua_photo` varchar(200) DEFAULT NULL COMMENT '教学资源照片',
  `ziyua_types` int(11) DEFAULT NULL COMMENT '教学资源类型 Search111',
  `ziyua_file` varchar(200) DEFAULT NULL COMMENT '资源下载',
  `ziyua_video` varchar(200) DEFAULT NULL COMMENT '资源视频',
  `ziyua_content` longtext COMMENT '教学资源介绍 ',
  `ziyua_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='教学资源';

/*Data for the table `ziyua` */

insert  into `ziyua`(`id`,`laoshi_id`,`ziyua_name`,`ziyua_uuid_number`,`ziyua_photo`,`ziyua_types`,`ziyua_file`,`ziyua_video`,`ziyua_content`,`ziyua_delete`,`insert_time`,`create_time`) values (1,1,'教学资源名称1','1682493001568','upload/ziyua1.jpg',2,'upload/file.rar','upload/video.mp4','教学资源介绍1',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(2,2,'教学资源名称2','1682493001488','upload/ziyua2.jpg',4,'upload/file.rar','upload/video.mp4','教学资源介绍2',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(3,2,'教学资源名称3','1682493001503','upload/ziyua3.jpg',4,'upload/file.rar','upload/video.mp4','教学资源介绍3',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(4,3,'教学资源名称4','1682493001541','upload/ziyua4.jpg',3,'upload/file.rar','upload/video.mp4','教学资源介绍4',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(5,1,'教学资源名称5','1682493001572','upload/ziyua5.jpg',1,'upload/file.rar','upload/video.mp4','教学资源介绍5',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(6,2,'教学资源名称6','1682493001520','upload/ziyua6.jpg',2,'upload/file.rar','upload/video.mp4','教学资源介绍6',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(7,2,'教学资源名称7','1682493001501','upload/ziyua7.jpg',2,'upload/file.rar','upload/video.mp4','教学资源介绍7',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(8,3,'教学资源名称8','1682493001541','upload/ziyua8.jpg',3,'upload/file.rar','upload/video.mp4','教学资源介绍8',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(9,1,'教学资源名称9','1682493001493','upload/ziyua9.jpg',3,'upload/file.rar','upload/video.mp4','教学资源介绍9',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(10,3,'教学资源名称10','1682493001569','upload/ziyua10.jpg',1,'upload/file.rar','upload/video.mp4','教学资源介绍10',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(11,1,'教学资源名称11','1682493001542','upload/ziyua11.jpg',2,'upload/file.rar','upload/video.mp4','教学资源介绍11',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(12,1,'教学资源名称12','1682493001513','upload/ziyua12.jpg',4,'upload/file.rar','upload/video.mp4','教学资源介绍12',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(13,2,'教学资源名称13','1682493001531','upload/ziyua13.jpg',1,'upload/file.rar','upload/video.mp4','教学资源介绍13',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(14,2,'教学资源名称14','1682493001560','upload/ziyua14.jpg',4,'upload/file.rar','upload/video.mp4','教学资源介绍14',1,'2023-04-26 15:10:01','2023-04-26 15:10:01');

/*Table structure for table `ziyua_collection` */

DROP TABLE IF EXISTS `ziyua_collection`;

CREATE TABLE `ziyua_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ziyua_id` int(11) DEFAULT NULL COMMENT '教学资源',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `ziyua_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='教学资源收藏';

/*Data for the table `ziyua_collection` */

insert  into `ziyua_collection`(`id`,`ziyua_id`,`yonghu_id`,`ziyua_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(2,2,3,1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(3,3,3,1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(4,4,2,1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(5,5,2,1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(6,6,3,1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(7,7,3,1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(8,8,1,1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(9,9,1,1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(10,10,2,1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(11,11,3,1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(12,12,2,1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(13,13,2,1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(15,14,1,1,'2023-04-26 16:18:04','2023-04-26 16:18:04');

/*Table structure for table `ziyua_liuyan` */

DROP TABLE IF EXISTS `ziyua_liuyan`;

CREATE TABLE `ziyua_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ziyua_id` int(11) DEFAULT NULL COMMENT '教学资源',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `ziyua_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='教学资源留言';

/*Data for the table `ziyua_liuyan` */

insert  into `ziyua_liuyan`(`id`,`ziyua_id`,`yonghu_id`,`ziyua_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2023-04-26 15:10:01','回复信息1','2023-04-26 15:10:01','2023-04-26 15:10:01'),(2,2,2,'留言内容2','2023-04-26 15:10:01','回复信息2','2023-04-26 15:10:01','2023-04-26 15:10:01'),(3,3,1,'留言内容3','2023-04-26 15:10:01','回复信息3','2023-04-26 15:10:01','2023-04-26 15:10:01'),(4,4,1,'留言内容4','2023-04-26 15:10:01','回复信息4','2023-04-26 15:10:01','2023-04-26 15:10:01'),(5,5,2,'留言内容5','2023-04-26 15:10:01','回复信息5','2023-04-26 15:10:01','2023-04-26 15:10:01'),(6,6,2,'留言内容6','2023-04-26 15:10:01','回复信息6','2023-04-26 15:10:01','2023-04-26 15:10:01'),(7,7,1,'留言内容7','2023-04-26 15:10:01','回复信息7','2023-04-26 15:10:01','2023-04-26 15:10:01'),(8,8,1,'留言内容8','2023-04-26 15:10:01','回复信息8','2023-04-26 15:10:01','2023-04-26 15:10:01'),(9,9,3,'留言内容9','2023-04-26 15:10:01','回复信息9','2023-04-26 15:10:01','2023-04-26 15:10:01'),(10,10,1,'留言内容10','2023-04-26 15:10:01','回复信息10','2023-04-26 15:10:01','2023-04-26 15:10:01'),(11,11,2,'留言内容11','2023-04-26 15:10:01','回复信息11','2023-04-26 15:10:01','2023-04-26 15:10:01'),(12,12,2,'留言内容12','2023-04-26 15:10:01','回复信息12','2023-04-26 15:10:01','2023-04-26 15:10:01'),(13,13,1,'留言内容13','2023-04-26 15:10:01','回复信息13','2023-04-26 15:10:01','2023-04-26 15:10:01'),(14,14,1,'留言内容14','2023-04-26 15:10:01','回复信息14','2023-04-26 15:10:01','2023-04-26 15:10:01'),(15,14,1,'阿萨德撒','2023-04-26 16:18:08',NULL,NULL,'2023-04-26 16:18:08');

/*Table structure for table `zuoye` */

DROP TABLE IF EXISTS `zuoye`;

CREATE TABLE `zuoye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `zuoye_name` varchar(200) DEFAULT NULL COMMENT '作业名称  Search111 ',
  `zuoye_uuid_number` varchar(200) DEFAULT NULL COMMENT '作业编号',
  `zuoye_photo` varchar(200) DEFAULT NULL COMMENT '作业封面',
  `zuoye_types` int(11) DEFAULT NULL COMMENT '作业类型 Search111',
  `zuoye_file` varchar(200) DEFAULT NULL COMMENT '作业下载',
  `zuoye_content` text COMMENT '作业介绍 ',
  `zuoye_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='作业';

/*Data for the table `zuoye` */

insert  into `zuoye`(`id`,`laoshi_id`,`zuoye_name`,`zuoye_uuid_number`,`zuoye_photo`,`zuoye_types`,`zuoye_file`,`zuoye_content`,`zuoye_delete`,`insert_time`,`create_time`) values (1,1,'作业名称1','1682493001505','upload/zuoye1.jpg',3,'upload/file.rar','作业介绍1',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(2,2,'作业名称2','1682493001491','upload/zuoye2.jpg',1,'upload/file.rar','作业介绍2',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(3,3,'作业名称3','1682493001493','upload/zuoye3.jpg',1,'upload/file.rar','作业介绍3',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(4,3,'作业名称4','1682493001577','upload/zuoye4.jpg',3,'upload/file.rar','作业介绍4',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(5,3,'作业名称5','1682493001519','upload/zuoye5.jpg',2,'upload/file.rar','作业介绍5',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(6,3,'作业名称6','1682493001517','upload/zuoye6.jpg',3,'upload/file.rar','作业介绍6',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(7,3,'作业名称7','1682493001541','upload/zuoye7.jpg',4,'upload/file.rar','作业介绍7',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(8,2,'作业名称8','1682493001578','upload/zuoye8.jpg',3,'upload/file.rar','作业介绍8',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(9,3,'作业名称9','1682493001556','upload/zuoye9.jpg',3,'upload/file.rar','作业介绍9',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(10,3,'作业名称10','1682493001493','upload/zuoye10.jpg',4,'upload/file.rar','作业介绍10',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(11,3,'作业名称11','1682493001481','upload/zuoye11.jpg',4,'upload/file.rar','作业介绍11',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(12,2,'作业名称12','1682493001528','upload/zuoye12.jpg',3,'upload/file.rar','作业介绍12',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(13,2,'作业名称13','1682493001565','upload/zuoye13.jpg',3,'upload/file.rar','作业介绍13',1,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(14,1,'作业名称14','1682493001545','upload/zuoye14.jpg',3,'upload/file.rar','作业介绍14',1,'2023-04-26 15:10:01','2023-04-26 15:10:01');

/*Table structure for table `zuoye_tijiao` */

DROP TABLE IF EXISTS `zuoye_tijiao`;

CREATE TABLE `zuoye_tijiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zuoye_tijiao_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名唯一编号 Search111 ',
  `zuoye_id` int(11) DEFAULT NULL COMMENT '作业',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zuoye_tijiao_text` text COMMENT '内容',
  `zuoye_shangchuan_file` varchar(200) DEFAULT NULL COMMENT '作业上传',
  `zuoye_tijiao_yesno_types` int(11) DEFAULT NULL COMMENT '提交状态 Search111 ',
  `zuoye_tijiao_pigai` int(11) DEFAULT NULL COMMENT '批改分数',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '作业提交时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='作业提交';

/*Data for the table `zuoye_tijiao` */

insert  into `zuoye_tijiao`(`id`,`zuoye_tijiao_uuid_number`,`zuoye_id`,`laoshi_id`,`yonghu_id`,`zuoye_tijiao_text`,`zuoye_shangchuan_file`,`zuoye_tijiao_yesno_types`,`zuoye_tijiao_pigai`,`insert_time`,`create_time`) values (1,'1682493001498',1,2,1,'内容1','upload/file.rar',1,168,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(2,'1682493001558',2,1,2,'内容2','upload/file.rar',1,277,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(3,'1682493001579',3,1,1,'内容3','upload/file.rar',1,132,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(4,'1682493001531',4,3,2,'内容4','upload/file.rar',1,422,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(5,'1682493001545',5,2,1,'内容5','upload/file.rar',1,147,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(6,'1682493001522',6,3,2,'内容6','upload/file.rar',1,437,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(7,'1682493001504',7,1,2,'内容7','upload/file.rar',1,248,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(8,'1682493001481',8,2,2,'内容8','upload/file.rar',1,377,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(9,'1682493001495',9,2,2,'内容9','upload/file.rar',1,462,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(10,'1682493001552',10,3,1,'内容10','upload/file.rar',1,6,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(11,'1682493001572',11,1,2,'内容11','upload/file.rar',1,435,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(12,'1682493001545',12,2,3,'内容12','upload/file.rar',1,46,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(13,'1682493001543',13,2,1,'内容13','upload/file.rar',1,88,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(14,'1682493001561',14,3,1,'内容14','upload/file.rar',1,33,'2023-04-26 15:10:01','2023-04-26 15:10:01'),(15,'1682497225774',14,1,1,'作业可以上传文件也可以上传视频','upload/1682497242057.jpg',2,80,'2023-04-26 16:20:57','2023-04-26 16:20:57');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
