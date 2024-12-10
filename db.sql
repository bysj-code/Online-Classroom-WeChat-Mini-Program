/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmowi8u
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmowi8u` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmowi8u`;

/*Table structure for table `banji` */

DROP TABLE IF EXISTS `banji`;

CREATE TABLE `banji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  PRIMARY KEY (`id`),
  UNIQUE KEY `banji` (`banji`)
) ENGINE=InnoDB AUTO_INCREMENT=1620709174864 DEFAULT CHARSET=utf8 COMMENT='班级';

/*Data for the table `banji` */

insert  into `banji`(`id`,`addtime`,`banji`) values (11,'2021-05-11 12:53:32','班级1');
insert  into `banji`(`id`,`addtime`,`banji`) values (12,'2021-05-11 12:53:32','班级2');
insert  into `banji`(`id`,`addtime`,`banji`) values (13,'2021-05-11 12:53:32','班级3');
insert  into `banji`(`id`,`addtime`,`banji`) values (14,'2021-05-11 12:53:32','班级4');
insert  into `banji`(`id`,`addtime`,`banji`) values (15,'2021-05-11 12:53:32','班级5');
insert  into `banji`(`id`,`addtime`,`banji`) values (16,'2021-05-11 12:53:32','班级6');
insert  into `banji`(`id`,`addtime`,`banji`) values (1620709174863,'2021-05-11 12:59:34','生工1902班');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmowi8u/upload/1620709262110.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmowi8u/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmowi8u/upload/1620709270093.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discusskechengziyuan` */

DROP TABLE IF EXISTS `discusskechengziyuan`;

CREATE TABLE `discusskechengziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COMMENT='课程资源评论表';

/*Data for the table `discusskechengziyuan` */

insert  into `discusskechengziyuan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (171,'2021-05-11 12:53:32',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusskechengziyuan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (172,'2021-05-11 12:53:32',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusskechengziyuan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (173,'2021-05-11 12:53:32',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusskechengziyuan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (174,'2021-05-11 12:53:32',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusskechengziyuan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (175,'2021-05-11 12:53:32',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusskechengziyuan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (176,'2021-05-11 12:53:32',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620709497915 DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`addtime`,`name`,`time`,`status`) values (1620709497914,'2021-05-11 13:04:57','高等数学期末测试',30,1);

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620709621134 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`addtime`,`paperid`,`papername`,`questionname`,`options`,`score`,`answer`,`analysis`,`type`,`sequence`) values (1620709534188,'2021-05-11 13:05:33',1620709497914,'高等数学期末测试','10以内的质数有几个','[{\"text\":\"A.2\",\"code\":\"A\"},{\"text\":\"B.3\",\"code\":\"B\"},{\"text\":\"C.4\",\"code\":\"C\"},{\"text\":\"D.5\",\"code\":\"D\"}]',25,'C','RT',0,1);
insert  into `examquestion`(`id`,`addtime`,`paperid`,`papername`,`questionname`,`options`,`score`,`answer`,`analysis`,`type`,`sequence`) values (1620709560524,'2021-05-11 13:05:59',1620709497914,'高等数学期末测试','10以内的合数有4个','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',25,'B','有5个',2,3);
insert  into `examquestion`(`id`,`addtime`,`paperid`,`papername`,`questionname`,`options`,`score`,`answer`,`analysis`,`type`,`sequence`) values (1620709598323,'2021-05-11 13:06:37',1620709497914,'高等数学期末测试','10以内的质数有哪些','[{\"text\":\"A.2\",\"code\":\"A\"},{\"text\":\"B.3\",\"code\":\"B\"},{\"text\":\"C.5\",\"code\":\"C\"},{\"text\":\"D.8\",\"code\":\"D\"}]',25,'A,B,C','RGTGH',1,2);
insert  into `examquestion`(`id`,`addtime`,`paperid`,`papername`,`questionname`,`options`,`score`,`answer`,`analysis`,`type`,`sequence`) values (1620709621133,'2021-05-11 13:07:00',1620709497914,'高等数学期末测试','10以内合数有哪些','[]',25,'468910','FREG',3,4);

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620710279196 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1620709767371,'2021-05-11 13:09:26',1620709200784,NULL,1620709497914,'高等数学期末测试',1620709534188,'10以内的质数有几个','[{\"text\":\"A.2\",\"code\":\"A\",\"checked\":false},{\"text\":\"B.3\",\"code\":\"B\",\"checked\":false},{\"text\":\"C.4\",\"code\":\"C\",\"checked\":true},{\"text\":\"D.5\",\"code\":\"D\",\"checked\":false}]',25,'C','RT',25,'C');
insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1620709768624,'2021-05-11 13:09:27',1620709200784,NULL,1620709497914,'高等数学期末测试',1620709598323,'10以内的质数有哪些','[{\"text\":\"A.2\",\"code\":\"A\",\"checked\":false},{\"text\":\"B.3\",\"code\":\"B\",\"checked\":false},{\"text\":\"C.5\",\"code\":\"C\",\"checked\":false},{\"text\":\"D.8\",\"code\":\"D\",\"checked\":false}]',25,'A,B,C','RGTGH',0,'');
insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1620709782185,'2021-05-11 13:09:42',1620709200784,NULL,1620709497914,'高等数学期末测试',1620709560524,'10以内的合数有4个','[{\"text\":\"A.对\",\"code\":\"A\",\"checked\":true},{\"text\":\"B.错\",\"code\":\"B\",\"checked\":false}]',25,'B','有5个',0,'A');
insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1620709787010,'2021-05-11 13:09:46',1620709200784,NULL,1620709497914,'高等数学期末测试',1620709621133,'10以内合数有哪些','[]',25,'468910','FREG',25,'468910');
insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1620710269548,'2021-05-11 13:17:48',1620710077398,NULL,1620709497914,'高等数学期末测试',1620709534188,'10以内的质数有几个','[{\"text\":\"A.2\",\"code\":\"A\",\"checked\":false},{\"text\":\"B.3\",\"code\":\"B\",\"checked\":false},{\"text\":\"C.4\",\"code\":\"C\",\"checked\":true},{\"text\":\"D.5\",\"code\":\"D\",\"checked\":false}]',25,'C','RT',25,'C');
insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1620710272982,'2021-05-11 13:17:52',1620710077398,NULL,1620709497914,'高等数学期末测试',1620709598323,'10以内的质数有哪些','[{\"text\":\"A.2\",\"code\":\"A\",\"checked\":true},{\"text\":\"B.3\",\"code\":\"B\",\"checked\":true},{\"text\":\"C.5\",\"code\":\"C\",\"checked\":true},{\"text\":\"D.8\",\"code\":\"D\",\"checked\":false}]',25,'A,B,C','RGTGH',25,'A,B,C');
insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1620710274385,'2021-05-11 13:17:54',1620710077398,NULL,1620709497914,'高等数学期末测试',1620709560524,'10以内的合数有4个','[{\"text\":\"A.对\",\"code\":\"A\",\"checked\":true},{\"text\":\"B.错\",\"code\":\"B\",\"checked\":false}]',25,'B','有5个',0,'A');
insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1620710279195,'2021-05-11 13:17:59',1620710077398,NULL,1620709497914,'高等数学期末测试',1620709621133,'10以内合数有哪些','[]',25,'468910','FREG',25,'468910');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `renjiaokecheng` varchar(200) DEFAULT NULL COMMENT '任教课程',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiaoshiyouxiang` varchar(200) DEFAULT NULL COMMENT '教师邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620709230947 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhaopian`,`zhicheng`,`renjiaokecheng`,`lianxidianhua`,`jiaoshiyouxiang`) values (31,'2021-05-11 12:53:32','教师1','123456','教师姓名1','男','http://localhost:8080/ssmowi8u/upload/jiaoshi_zhaopian1.jpg','职称1','任教课程1','13823888881','773890001@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhaopian`,`zhicheng`,`renjiaokecheng`,`lianxidianhua`,`jiaoshiyouxiang`) values (32,'2021-05-11 12:53:32','教师2','123456','教师姓名2','男','http://localhost:8080/ssmowi8u/upload/jiaoshi_zhaopian2.jpg','职称2','任教课程2','13823888882','773890002@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhaopian`,`zhicheng`,`renjiaokecheng`,`lianxidianhua`,`jiaoshiyouxiang`) values (33,'2021-05-11 12:53:32','教师3','123456','教师姓名3','男','http://localhost:8080/ssmowi8u/upload/jiaoshi_zhaopian3.jpg','职称3','任教课程3','13823888883','773890003@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhaopian`,`zhicheng`,`renjiaokecheng`,`lianxidianhua`,`jiaoshiyouxiang`) values (34,'2021-05-11 12:53:32','教师4','123456','教师姓名4','男','http://localhost:8080/ssmowi8u/upload/jiaoshi_zhaopian4.jpg','职称4','任教课程4','13823888884','773890004@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhaopian`,`zhicheng`,`renjiaokecheng`,`lianxidianhua`,`jiaoshiyouxiang`) values (35,'2021-05-11 12:53:32','教师5','123456','教师姓名5','男','http://localhost:8080/ssmowi8u/upload/jiaoshi_zhaopian5.jpg','职称5','任教课程5','13823888885','773890005@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhaopian`,`zhicheng`,`renjiaokecheng`,`lianxidianhua`,`jiaoshiyouxiang`) values (36,'2021-05-11 12:53:32','教师6','123456','教师姓名6','男','http://localhost:8080/ssmowi8u/upload/jiaoshi_zhaopian6.jpg','职称6','任教课程6','13823888886','773890006@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhaopian`,`zhicheng`,`renjiaokecheng`,`lianxidianhua`,`jiaoshiyouxiang`) values (1620709230946,'2021-05-11 13:00:30','2','22','张悦','女','http://localhost:8080/ssmowi8u/upload/1620709213495.jpg','高级教师','高等数学','12345678945','456@qq.com');

/*Table structure for table `kechengchengji` */

DROP TABLE IF EXISTS `kechengchengji`;

CREATE TABLE `kechengchengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `kaohechengji` int(11) DEFAULT NULL COMMENT '考核成绩',
  `pingyu` varchar(200) DEFAULT NULL COMMENT '评语',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620710339760 DEFAULT CHARSET=utf8 COMMENT='课程成绩';

/*Data for the table `kechengchengji` */

insert  into `kechengchengji`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`nianji`,`xueqi`,`kaohechengji`,`pingyu`,`dengjishijian`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`userid`) values (121,'2021-05-11 12:53:32','课程名称1','课程类型1','http://localhost:8080/ssmowi8u/upload/kechengchengji_tupian1.jpg','班级1','年级1','学期1',1,'评语1','2021-05-11','教师工号1','教师姓名1','学号1','学生姓名1',1);
insert  into `kechengchengji`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`nianji`,`xueqi`,`kaohechengji`,`pingyu`,`dengjishijian`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`userid`) values (122,'2021-05-11 12:53:32','课程名称2','课程类型2','http://localhost:8080/ssmowi8u/upload/kechengchengji_tupian2.jpg','班级2','年级2','学期2',2,'评语2','2021-05-11','教师工号2','教师姓名2','学号2','学生姓名2',2);
insert  into `kechengchengji`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`nianji`,`xueqi`,`kaohechengji`,`pingyu`,`dengjishijian`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`userid`) values (123,'2021-05-11 12:53:32','课程名称3','课程类型3','http://localhost:8080/ssmowi8u/upload/kechengchengji_tupian3.jpg','班级3','年级3','学期3',3,'评语3','2021-05-11','教师工号3','教师姓名3','学号3','学生姓名3',3);
insert  into `kechengchengji`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`nianji`,`xueqi`,`kaohechengji`,`pingyu`,`dengjishijian`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`userid`) values (124,'2021-05-11 12:53:32','课程名称4','课程类型4','http://localhost:8080/ssmowi8u/upload/kechengchengji_tupian4.jpg','班级4','年级4','学期4',4,'评语4','2021-05-11','教师工号4','教师姓名4','学号4','学生姓名4',4);
insert  into `kechengchengji`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`nianji`,`xueqi`,`kaohechengji`,`pingyu`,`dengjishijian`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`userid`) values (125,'2021-05-11 12:53:32','课程名称5','课程类型5','http://localhost:8080/ssmowi8u/upload/kechengchengji_tupian5.jpg','班级5','年级5','学期5',5,'评语5','2021-05-11','教师工号5','教师姓名5','学号5','学生姓名5',5);
insert  into `kechengchengji`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`nianji`,`xueqi`,`kaohechengji`,`pingyu`,`dengjishijian`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`userid`) values (126,'2021-05-11 12:53:32','课程名称6','课程类型6','http://localhost:8080/ssmowi8u/upload/kechengchengji_tupian6.jpg','班级6','年级6','学期6',6,'评语6','2021-05-11','教师工号6','教师姓名6','学号6','学生姓名6',6);
insert  into `kechengchengji`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`nianji`,`xueqi`,`kaohechengji`,`pingyu`,`dengjishijian`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`userid`) values (1620709948977,'2021-05-11 13:12:28','高等数学','公共课','http://localhost:8080/ssmowi8u/upload/1620709296731.jpg','生工1902班','大三','上学期',70,'继续加油','2021-05-11','2','张悦','1','陈一',1620709200784);
insert  into `kechengchengji`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`nianji`,`xueqi`,`kaohechengji`,`pingyu`,`dengjishijian`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`userid`) values (1620710339759,'2021-05-11 13:18:59','高等数学','公共课','http://localhost:8080/ssmowi8u/upload/1620709296731.jpg','生工1902班','大三','上学期',90,'继续加油','2021-05-11','2','张悦','3','张敏',1620710077398);

/*Table structure for table `kechengfenlei` */

DROP TABLE IF EXISTS `kechengfenlei`;

CREATE TABLE `kechengfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620709247226 DEFAULT CHARSET=utf8 COMMENT='课程分类';

/*Data for the table `kechengfenlei` */

insert  into `kechengfenlei`(`id`,`addtime`,`fenlei`) values (101,'2021-05-11 12:53:32','分类1');
insert  into `kechengfenlei`(`id`,`addtime`,`fenlei`) values (102,'2021-05-11 12:53:32','分类2');
insert  into `kechengfenlei`(`id`,`addtime`,`fenlei`) values (103,'2021-05-11 12:53:32','分类3');
insert  into `kechengfenlei`(`id`,`addtime`,`fenlei`) values (104,'2021-05-11 12:53:32','分类4');
insert  into `kechengfenlei`(`id`,`addtime`,`fenlei`) values (105,'2021-05-11 12:53:32','分类5');
insert  into `kechengfenlei`(`id`,`addtime`,`fenlei`) values (106,'2021-05-11 12:53:32','分类6');
insert  into `kechengfenlei`(`id`,`addtime`,`fenlei`) values (1620709247225,'2021-05-11 13:00:46','编程类');

/*Table structure for table `kechengpingjia` */

DROP TABLE IF EXISTS `kechengpingjia`;

CREATE TABLE `kechengpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `jiaoxuezhunbei` int(11) DEFAULT NULL COMMENT '教学准备',
  `jiaoxuesheji` int(11) DEFAULT NULL COMMENT '教学设计',
  `jiaoxuefangfa` int(11) DEFAULT NULL COMMENT '教学方法',
  `jiaoxuexiaoguo` int(11) DEFAULT NULL COMMENT '教学效果',
  `zongpingfen` varchar(200) DEFAULT NULL COMMENT '总评分',
  `zhengtipingjia` longtext COMMENT '整体评价',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620710218459 DEFAULT CHARSET=utf8 COMMENT='课程评价';

/*Data for the table `kechengpingjia` */

insert  into `kechengpingjia`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`jiaoshigonghao`,`jiaoshixingming`,`jiaoxuezhunbei`,`jiaoxuesheji`,`jiaoxuefangfa`,`jiaoxuexiaoguo`,`zongpingfen`,`zhengtipingjia`,`pingjiariqi`,`xuehao`,`xueshengxingming`,`userid`) values (131,'2021-05-11 12:53:32','课程名称1','课程类型1','http://localhost:8080/ssmowi8u/upload/kechengpingjia_tupian1.jpg','班级1','教师工号1','教师姓名1',10,10,10,10,'总评分1','整体评价1','2021-05-11','学号1','学生姓名1',1);
insert  into `kechengpingjia`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`jiaoshigonghao`,`jiaoshixingming`,`jiaoxuezhunbei`,`jiaoxuesheji`,`jiaoxuefangfa`,`jiaoxuexiaoguo`,`zongpingfen`,`zhengtipingjia`,`pingjiariqi`,`xuehao`,`xueshengxingming`,`userid`) values (132,'2021-05-11 12:53:32','课程名称2','课程类型2','http://localhost:8080/ssmowi8u/upload/kechengpingjia_tupian2.jpg','班级2','教师工号2','教师姓名2',10,10,10,10,'总评分2','整体评价2','2021-05-11','学号2','学生姓名2',2);
insert  into `kechengpingjia`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`jiaoshigonghao`,`jiaoshixingming`,`jiaoxuezhunbei`,`jiaoxuesheji`,`jiaoxuefangfa`,`jiaoxuexiaoguo`,`zongpingfen`,`zhengtipingjia`,`pingjiariqi`,`xuehao`,`xueshengxingming`,`userid`) values (133,'2021-05-11 12:53:32','课程名称3','课程类型3','http://localhost:8080/ssmowi8u/upload/kechengpingjia_tupian3.jpg','班级3','教师工号3','教师姓名3',10,10,10,10,'总评分3','整体评价3','2021-05-11','学号3','学生姓名3',3);
insert  into `kechengpingjia`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`jiaoshigonghao`,`jiaoshixingming`,`jiaoxuezhunbei`,`jiaoxuesheji`,`jiaoxuefangfa`,`jiaoxuexiaoguo`,`zongpingfen`,`zhengtipingjia`,`pingjiariqi`,`xuehao`,`xueshengxingming`,`userid`) values (134,'2021-05-11 12:53:32','课程名称4','课程类型4','http://localhost:8080/ssmowi8u/upload/kechengpingjia_tupian4.jpg','班级4','教师工号4','教师姓名4',10,10,10,10,'总评分4','整体评价4','2021-05-11','学号4','学生姓名4',4);
insert  into `kechengpingjia`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`jiaoshigonghao`,`jiaoshixingming`,`jiaoxuezhunbei`,`jiaoxuesheji`,`jiaoxuefangfa`,`jiaoxuexiaoguo`,`zongpingfen`,`zhengtipingjia`,`pingjiariqi`,`xuehao`,`xueshengxingming`,`userid`) values (135,'2021-05-11 12:53:32','课程名称5','课程类型5','http://localhost:8080/ssmowi8u/upload/kechengpingjia_tupian5.jpg','班级5','教师工号5','教师姓名5',10,10,10,10,'总评分5','整体评价5','2021-05-11','学号5','学生姓名5',5);
insert  into `kechengpingjia`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`jiaoshigonghao`,`jiaoshixingming`,`jiaoxuezhunbei`,`jiaoxuesheji`,`jiaoxuefangfa`,`jiaoxuexiaoguo`,`zongpingfen`,`zhengtipingjia`,`pingjiariqi`,`xuehao`,`xueshengxingming`,`userid`) values (136,'2021-05-11 12:53:32','课程名称6','课程类型6','http://localhost:8080/ssmowi8u/upload/kechengpingjia_tupian6.jpg','班级6','教师工号6','教师姓名6',10,10,10,10,'总评分6','整体评价6','2021-05-11','学号6','学生姓名6',6);
insert  into `kechengpingjia`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`jiaoshigonghao`,`jiaoshixingming`,`jiaoxuezhunbei`,`jiaoxuesheji`,`jiaoxuefangfa`,`jiaoxuexiaoguo`,`zongpingfen`,`zhengtipingjia`,`pingjiariqi`,`xuehao`,`xueshengxingming`,`userid`) values (1620709750409,'2021-05-11 13:09:09','高等数学','公共课','http://localhost:8080/ssmowi8u/upload/1620709296731.jpg','生工1902班','2','张悦',20,25,20,20,'85','课程设计合理，老师讲解细致','2021-05-11','1','陈一',1620709200784);
insert  into `kechengpingjia`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`jiaoshigonghao`,`jiaoshixingming`,`jiaoxuezhunbei`,`jiaoxuesheji`,`jiaoxuefangfa`,`jiaoxuexiaoguo`,`zongpingfen`,`zhengtipingjia`,`pingjiariqi`,`xuehao`,`xueshengxingming`,`userid`) values (1620710218458,'2021-05-11 13:16:58','高等数学','公共课','http://localhost:8080/ssmowi8u/upload/1620709296731.jpg','生工1902班','2','张悦',20,10,20,25,'75','课程设计不错','2021-05-11','3','张敏',1620710077398);

/*Table structure for table `kechengxinxi` */

DROP TABLE IF EXISTS `kechengxinxi`;

CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620709301769 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kechengxinxi` */

insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`xueqi`,`banji`,`faburiqi`,`jiaoshigonghao`,`jiaoshixingming`) values (41,'2021-05-11 12:53:32','课程名称1','公共课','http://localhost:8080/ssmowi8u/upload/1620708937620.jpg','大一','上学期','班级1','2021-05-11','教师工号1','教师姓名1');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`xueqi`,`banji`,`faburiqi`,`jiaoshigonghao`,`jiaoshixingming`) values (42,'2021-05-11 12:53:32','课程名称2','公共课','http://localhost:8080/ssmowi8u/upload/1620708944878.jpg','大一','上学期','班级2','2021-05-11','教师工号2','教师姓名2');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`xueqi`,`banji`,`faburiqi`,`jiaoshigonghao`,`jiaoshixingming`) values (43,'2021-05-11 12:53:32','课程名称3','公共课','http://localhost:8080/ssmowi8u/upload/1620708951814.jpg','大一','上学期','班级3','2021-05-11','教师工号3','教师姓名3');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`xueqi`,`banji`,`faburiqi`,`jiaoshigonghao`,`jiaoshixingming`) values (44,'2021-05-11 12:53:32','课程名称4','公共课','http://localhost:8080/ssmowi8u/upload/1620708962413.jpg','大一','上学期','班级4','2021-05-11','教师工号4','教师姓名4');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`xueqi`,`banji`,`faburiqi`,`jiaoshigonghao`,`jiaoshixingming`) values (45,'2021-05-11 12:53:32','课程名称5','公共课','http://localhost:8080/ssmowi8u/upload/1620708971229.jpg','大一','上学期','班级5','2021-05-11','教师工号5','教师姓名5');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`xueqi`,`banji`,`faburiqi`,`jiaoshigonghao`,`jiaoshixingming`) values (46,'2021-05-11 12:53:32','课程名称6','公共课','http://localhost:8080/ssmowi8u/upload/1620708979817.jpg','大一','上学期','班级6','2021-05-11','教师工号6','教师姓名6');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`xueqi`,`banji`,`faburiqi`,`jiaoshigonghao`,`jiaoshixingming`) values (1620709301768,'2021-05-11 13:01:41','高等数学','公共课','http://localhost:8080/ssmowi8u/upload/1620709296731.jpg','大三','上学期','生工1902班','2021-05-11','2','张悦');

/*Table structure for table `kechengziyuan` */

DROP TABLE IF EXISTS `kechengziyuan`;

CREATE TABLE `kechengziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbiaoti` varchar(200) NOT NULL COMMENT '课程标题',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `fengmiantu` varchar(200) NOT NULL COMMENT '封面图',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `xiangguanziliao` varchar(200) DEFAULT NULL COMMENT '相关资料',
  `kechengjieshao` longtext COMMENT '课程介绍',
  `kechengneirong` longtext COMMENT '课程内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620709482644 DEFAULT CHARSET=utf8 COMMENT='课程资源';

/*Data for the table `kechengziyuan` */

insert  into `kechengziyuan`(`id`,`addtime`,`kechengbiaoti`,`fenlei`,`fengmiantu`,`shipin`,`xiangguanziliao`,`kechengjieshao`,`kechengneirong`,`faburiqi`,`jiaoshigonghao`,`jiaoshixingming`,`clicktime`,`clicknum`) values (111,'2021-05-11 12:53:32','课程标题1','分类1','http://localhost:8080/ssmowi8u/upload/1620709095335.jpg','','','课程介绍1','<p>课程内容1</p>','2021-05-11','教师工号1','教师姓名1','2021-05-11 12:58:08',2);
insert  into `kechengziyuan`(`id`,`addtime`,`kechengbiaoti`,`fenlei`,`fengmiantu`,`shipin`,`xiangguanziliao`,`kechengjieshao`,`kechengneirong`,`faburiqi`,`jiaoshigonghao`,`jiaoshixingming`,`clicktime`,`clicknum`) values (112,'2021-05-11 12:53:32','课程标题2','分类2','http://localhost:8080/ssmowi8u/upload/1620709109158.jpg','','','课程介绍2','<p>课程内容2</p>','2021-05-11','教师工号2','教师姓名2','2021-05-11 12:58:21',3);
insert  into `kechengziyuan`(`id`,`addtime`,`kechengbiaoti`,`fenlei`,`fengmiantu`,`shipin`,`xiangguanziliao`,`kechengjieshao`,`kechengneirong`,`faburiqi`,`jiaoshigonghao`,`jiaoshixingming`,`clicktime`,`clicknum`) values (113,'2021-05-11 12:53:32','课程标题3','分类3','http://localhost:8080/ssmowi8u/upload/kechengziyuan_fengmiantu3.jpg','','','课程介绍3','课程内容3','2021-05-11','教师工号3','教师姓名3','2021-05-11 12:53:32',3);
insert  into `kechengziyuan`(`id`,`addtime`,`kechengbiaoti`,`fenlei`,`fengmiantu`,`shipin`,`xiangguanziliao`,`kechengjieshao`,`kechengneirong`,`faburiqi`,`jiaoshigonghao`,`jiaoshixingming`,`clicktime`,`clicknum`) values (114,'2021-05-11 12:53:32','课程标题4','分类4','http://localhost:8080/ssmowi8u/upload/1620709124006.jpg','','','课程介绍4','<p>课程内容4</p>','2021-05-11','教师工号4','教师姓名4','2021-05-11 12:58:33',5);
insert  into `kechengziyuan`(`id`,`addtime`,`kechengbiaoti`,`fenlei`,`fengmiantu`,`shipin`,`xiangguanziliao`,`kechengjieshao`,`kechengneirong`,`faburiqi`,`jiaoshigonghao`,`jiaoshixingming`,`clicktime`,`clicknum`) values (115,'2021-05-11 12:53:32','课程标题5','分类5','http://localhost:8080/ssmowi8u/upload/1620709133129.jpg','','','课程介绍5','<p>课程内容5</p>','2021-05-11','教师工号5','教师姓名5','2021-05-11 12:58:48',6);
insert  into `kechengziyuan`(`id`,`addtime`,`kechengbiaoti`,`fenlei`,`fengmiantu`,`shipin`,`xiangguanziliao`,`kechengjieshao`,`kechengneirong`,`faburiqi`,`jiaoshigonghao`,`jiaoshixingming`,`clicktime`,`clicknum`) values (116,'2021-05-11 12:53:32','课程标题6','分类6','http://localhost:8080/ssmowi8u/upload/1620709143006.jpg','','','课程介绍6','<p>课程内容6</p>','2021-05-11','教师工号6','教师姓名6','2021-05-11 12:58:57',7);
insert  into `kechengziyuan`(`id`,`addtime`,`kechengbiaoti`,`fenlei`,`fengmiantu`,`shipin`,`xiangguanziliao`,`kechengjieshao`,`kechengneirong`,`faburiqi`,`jiaoshigonghao`,`jiaoshixingming`,`clicktime`,`clicknum`) values (1620709482643,'2021-05-11 13:04:42','python基础语法','编程类','http://localhost:8080/ssmowi8u/upload/1620709332613.jpg','http://localhost:8080/ssmowi8u/upload/1620709345035.mp4','http://localhost:8080/ssmowi8u/upload/1620709472699.doc','课程简介','<p>课程内容KJKLGDYHJUFJ</p>','2021-05-11','2','张悦','2021-05-11 13:16:28',5);

/*Table structure for table `ketangqiandao` */

DROP TABLE IF EXISTS `ketangqiandao`;

CREATE TABLE `ketangqiandao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `qiandaoshijian` datetime DEFAULT NULL COMMENT '签到时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620710202718 DEFAULT CHARSET=utf8 COMMENT='课堂签到';

/*Data for the table `ketangqiandao` */

insert  into `ketangqiandao`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`xueqi`,`banji`,`qiandaoshijian`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`userid`) values (91,'2021-05-11 12:53:32','课程名称1','课程类型1','http://localhost:8080/ssmowi8u/upload/ketangqiandao_tupian1.jpg','年级1','学期1','班级1','2021-05-11 12:53:32','教师工号1','教师姓名1','学号1','学生姓名1',1);
insert  into `ketangqiandao`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`xueqi`,`banji`,`qiandaoshijian`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`userid`) values (92,'2021-05-11 12:53:32','课程名称2','课程类型2','http://localhost:8080/ssmowi8u/upload/ketangqiandao_tupian2.jpg','年级2','学期2','班级2','2021-05-11 12:53:32','教师工号2','教师姓名2','学号2','学生姓名2',2);
insert  into `ketangqiandao`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`xueqi`,`banji`,`qiandaoshijian`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`userid`) values (93,'2021-05-11 12:53:32','课程名称3','课程类型3','http://localhost:8080/ssmowi8u/upload/ketangqiandao_tupian3.jpg','年级3','学期3','班级3','2021-05-11 12:53:32','教师工号3','教师姓名3','学号3','学生姓名3',3);
insert  into `ketangqiandao`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`xueqi`,`banji`,`qiandaoshijian`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`userid`) values (94,'2021-05-11 12:53:32','课程名称4','课程类型4','http://localhost:8080/ssmowi8u/upload/ketangqiandao_tupian4.jpg','年级4','学期4','班级4','2021-05-11 12:53:32','教师工号4','教师姓名4','学号4','学生姓名4',4);
insert  into `ketangqiandao`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`xueqi`,`banji`,`qiandaoshijian`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`userid`) values (95,'2021-05-11 12:53:32','课程名称5','课程类型5','http://localhost:8080/ssmowi8u/upload/1620709081085.jpg','年级5','学期5','班级5','2021-05-11 12:53:32','教师工号5','教师姓名5','学号5','学生姓名5',5);
insert  into `ketangqiandao`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`xueqi`,`banji`,`qiandaoshijian`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`userid`) values (96,'2021-05-11 12:53:32','课程名称6','课程类型6','http://localhost:8080/ssmowi8u/upload/ketangqiandao_tupian6.jpg','年级6','学期6','班级6','2021-05-11 12:53:32','教师工号6','教师姓名6','学号6','学生姓名6',6);
insert  into `ketangqiandao`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`xueqi`,`banji`,`qiandaoshijian`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`userid`) values (1620709720137,'2021-05-11 13:08:40','高等数学','公共课','http://localhost:8080/ssmowi8u/upload/1620709296731.jpg','大三','上学期','生工1902班','2021-05-11 13:08:38','2','张悦','1','陈一',1620709200784);
insert  into `ketangqiandao`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`xueqi`,`banji`,`qiandaoshijian`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`userid`) values (1620710202717,'2021-05-11 13:16:41','高等数学','公共课','http://localhost:8080/ssmowi8u/upload/1620709296731.jpg','大三','上学期','生工1902班','2021-05-11 13:16:40','2','张悦','3','张敏',1620710077398);

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','ff1dddt3vojpmisbmsyhgfq9h5qtmjyx','2021-05-11 12:55:21','2021-05-11 14:12:51');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1620709230946,'2','jiaoshi','管理员','vkulipcjc98q6pov1gailp3o0i5w99xt','2021-05-11 13:01:19','2021-05-11 14:18:32');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1620709200784,'1','xuesheng','学生','sxj9zlvxf5pvugsp5683l0f7gjy4r7iu','2021-05-11 13:08:17','2021-05-11 14:08:18');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1620710077398,'3','xuesheng','学生','ayep8nki7y816vkjff0tu41gm666kleh','2021-05-11 13:14:43','2021-05-11 14:14:43');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-11 12:53:33');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620710077399 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`banji`,`shouji`,`youxiang`) values (21,'2021-05-11 12:53:32','学生1','123456','学生姓名1','男','http://localhost:8080/ssmowi8u/upload/xuesheng_touxiang1.jpg','班级1','13823888881','773890001@qq.com');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`banji`,`shouji`,`youxiang`) values (22,'2021-05-11 12:53:32','学生2','123456','学生姓名2','男','http://localhost:8080/ssmowi8u/upload/xuesheng_touxiang2.jpg','班级2','13823888882','773890002@qq.com');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`banji`,`shouji`,`youxiang`) values (23,'2021-05-11 12:53:32','学生3','123456','学生姓名3','男','http://localhost:8080/ssmowi8u/upload/xuesheng_touxiang3.jpg','班级3','13823888883','773890003@qq.com');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`banji`,`shouji`,`youxiang`) values (24,'2021-05-11 12:53:32','学生4','123456','学生姓名4','男','http://localhost:8080/ssmowi8u/upload/xuesheng_touxiang4.jpg','班级4','13823888884','773890004@qq.com');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`banji`,`shouji`,`youxiang`) values (25,'2021-05-11 12:53:32','学生5','123456','学生姓名5','男','http://localhost:8080/ssmowi8u/upload/xuesheng_touxiang5.jpg','班级5','13823888885','773890005@qq.com');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`banji`,`shouji`,`youxiang`) values (26,'2021-05-11 12:53:32','学生6','123456','学生姓名6','男','http://localhost:8080/ssmowi8u/upload/xuesheng_touxiang6.jpg','班级6','13823888886','773890006@qq.com');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`banji`,`shouji`,`youxiang`) values (1620709200784,'2021-05-11 13:00:00','1','1','陈一','女','http://localhost:8080/ssmowi8u/upload/1620709189170.jpg','生工1902班','12312312123','123@qq.com');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`banji`,`shouji`,`youxiang`) values (1620710077398,'2021-05-11 13:14:37','3','3','张敏','女','http://localhost:8080/ssmowi8u/upload/1620710089964.jpg','生工1902班','12345645645','456@qq.com');

/*Table structure for table `xueshengxuanke` */

DROP TABLE IF EXISTS `xueshengxuanke`;

CREATE TABLE `xueshengxuanke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `xuankeriqi` date DEFAULT NULL COMMENT '选课日期',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620710117532 DEFAULT CHARSET=utf8 COMMENT='学生选课';

/*Data for the table `xueshengxuanke` */

insert  into `xueshengxuanke`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`nianji`,`xueqi`,`xuankeriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`,`userid`) values (61,'2021-05-11 12:53:32','课程名称1','课程类型1','http://localhost:8080/ssmowi8u/upload/xueshengxuanke_tupian1.jpg','班级1','年级1','学期1','2021-05-11','教师工号1','教师姓名1','学号1','学生姓名1','是','',1);
insert  into `xueshengxuanke`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`nianji`,`xueqi`,`xuankeriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`,`userid`) values (62,'2021-05-11 12:53:32','课程名称2','课程类型2','http://localhost:8080/ssmowi8u/upload/xueshengxuanke_tupian2.jpg','班级2','年级2','学期2','2021-05-11','教师工号2','教师姓名2','学号2','学生姓名2','是','',2);
insert  into `xueshengxuanke`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`nianji`,`xueqi`,`xuankeriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`,`userid`) values (63,'2021-05-11 12:53:32','课程名称3','课程类型3','http://localhost:8080/ssmowi8u/upload/xueshengxuanke_tupian3.jpg','班级3','年级3','学期3','2021-05-11','教师工号3','教师姓名3','学号3','学生姓名3','是','',3);
insert  into `xueshengxuanke`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`nianji`,`xueqi`,`xuankeriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`,`userid`) values (64,'2021-05-11 12:53:32','课程名称4','课程类型4','http://localhost:8080/ssmowi8u/upload/xueshengxuanke_tupian4.jpg','班级4','年级4','学期4','2021-05-11','教师工号4','教师姓名4','学号4','学生姓名4','是','',4);
insert  into `xueshengxuanke`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`nianji`,`xueqi`,`xuankeriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`,`userid`) values (65,'2021-05-11 12:53:32','课程名称5','课程类型5','http://localhost:8080/ssmowi8u/upload/xueshengxuanke_tupian5.jpg','班级5','年级5','学期5','2021-05-11','教师工号5','教师姓名5','学号5','学生姓名5','是','',5);
insert  into `xueshengxuanke`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`nianji`,`xueqi`,`xuankeriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`,`userid`) values (66,'2021-05-11 12:53:32','课程名称6','课程类型6','http://localhost:8080/ssmowi8u/upload/xueshengxuanke_tupian6.jpg','班级6','年级6','学期6','2021-05-11','教师工号6','教师姓名6','学号6','学生姓名6','是','',6);
insert  into `xueshengxuanke`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`nianji`,`xueqi`,`xuankeriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`,`userid`) values (1620709702030,'2021-05-11 13:08:21','高等数学','公共课','http://localhost:8080/ssmowi8u/upload/1620709296731.jpg','生工1902班','大三','上学期','2021-05-11','2','张悦','1','陈一','是','ok',1620709200784);
insert  into `xueshengxuanke`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`nianji`,`xueqi`,`xuankeriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`,`userid`) values (1620710117531,'2021-05-11 13:15:17','高等数学','公共课','http://localhost:8080/ssmowi8u/upload/1620709296731.jpg','生工1902班','大三','上学期','2021-05-11','2','张悦','3','张敏','','',1620710077398);

/*Table structure for table `zuoyebuzhi` */

DROP TABLE IF EXISTS `zuoyebuzhi`;

CREATE TABLE `zuoyebuzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `zuoyeyaoqiu` varchar(200) DEFAULT NULL COMMENT '作业要求',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620709311366 DEFAULT CHARSET=utf8 COMMENT='作业布置';

/*Data for the table `zuoyebuzhi` */

insert  into `zuoyebuzhi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`faburiqi`,`banji`,`xueqi`,`zuoyeyaoqiu`,`jiaoshigonghao`,`jiaoshixingming`) values (51,'2021-05-11 12:53:32','课程名称1','课程类型1','http://localhost:8080/ssmowi8u/upload/1620708989026.jpg','年级1','2021-05-11','班级1','学期1','','教师工号1','教师姓名1');
insert  into `zuoyebuzhi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`faburiqi`,`banji`,`xueqi`,`zuoyeyaoqiu`,`jiaoshigonghao`,`jiaoshixingming`) values (52,'2021-05-11 12:53:32','课程名称2','课程类型2','http://localhost:8080/ssmowi8u/upload/1620708995821.jpg','年级2','2021-05-11','班级2','学期2','','教师工号2','教师姓名2');
insert  into `zuoyebuzhi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`faburiqi`,`banji`,`xueqi`,`zuoyeyaoqiu`,`jiaoshigonghao`,`jiaoshixingming`) values (53,'2021-05-11 12:53:32','课程名称3','课程类型3','http://localhost:8080/ssmowi8u/upload/1620709003520.jpg','年级3','2021-05-11','班级3','学期3','','教师工号3','教师姓名3');
insert  into `zuoyebuzhi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`faburiqi`,`banji`,`xueqi`,`zuoyeyaoqiu`,`jiaoshigonghao`,`jiaoshixingming`) values (54,'2021-05-11 12:53:32','课程名称4','课程类型4','http://localhost:8080/ssmowi8u/upload/1620709014319.jpg','年级4','2021-05-11','班级4','学期4','','教师工号4','教师姓名4');
insert  into `zuoyebuzhi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`faburiqi`,`banji`,`xueqi`,`zuoyeyaoqiu`,`jiaoshigonghao`,`jiaoshixingming`) values (55,'2021-05-11 12:53:32','课程名称5','课程类型5','http://localhost:8080/ssmowi8u/upload/1620709025625.jpg','年级5','2021-05-11','班级5','学期5','','教师工号5','教师姓名5');
insert  into `zuoyebuzhi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`faburiqi`,`banji`,`xueqi`,`zuoyeyaoqiu`,`jiaoshigonghao`,`jiaoshixingming`) values (56,'2021-05-11 12:53:32','课程名称6','课程类型6','http://localhost:8080/ssmowi8u/upload/1620709035575.jpg','年级6','2021-05-11','班级6','学期6','','教师工号6','教师姓名6');
insert  into `zuoyebuzhi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`faburiqi`,`banji`,`xueqi`,`zuoyeyaoqiu`,`jiaoshigonghao`,`jiaoshixingming`) values (1620709311365,'2021-05-11 13:01:50','高等数学','公共课','http://localhost:8080/ssmowi8u/upload/1620709296731.jpg','大三','2021-05-11','生工1902班','上学期','http://localhost:8080/ssmowi8u/upload/1620709309288.doc','2','张悦');

/*Table structure for table `zuoyepingfen` */

DROP TABLE IF EXISTS `zuoyepingfen`;

CREATE TABLE `zuoyepingfen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `pingfen` int(11) DEFAULT NULL COMMENT '评分',
  `pingyu` varchar(200) DEFAULT NULL COMMENT '评语',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620710323854 DEFAULT CHARSET=utf8 COMMENT='作业评分';

/*Data for the table `zuoyepingfen` */

insert  into `zuoyepingfen`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`xueqi`,`pingfen`,`pingyu`,`dengjiriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`userid`) values (81,'2021-05-11 12:53:32','课程名称1','课程类型1','http://localhost:8080/ssmowi8u/upload/zuoyepingfen_tupian1.jpg','班级1','学期1',1,'评语1','2021-05-11','教师工号1','教师姓名1','学号1','学生姓名1',1);
insert  into `zuoyepingfen`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`xueqi`,`pingfen`,`pingyu`,`dengjiriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`userid`) values (82,'2021-05-11 12:53:32','课程名称2','课程类型2','http://localhost:8080/ssmowi8u/upload/zuoyepingfen_tupian2.jpg','班级2','学期2',2,'评语2','2021-05-11','教师工号2','教师姓名2','学号2','学生姓名2',2);
insert  into `zuoyepingfen`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`xueqi`,`pingfen`,`pingyu`,`dengjiriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`userid`) values (83,'2021-05-11 12:53:32','课程名称3','课程类型3','http://localhost:8080/ssmowi8u/upload/zuoyepingfen_tupian3.jpg','班级3','学期3',3,'评语3','2021-05-11','教师工号3','教师姓名3','学号3','学生姓名3',3);
insert  into `zuoyepingfen`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`xueqi`,`pingfen`,`pingyu`,`dengjiriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`userid`) values (84,'2021-05-11 12:53:32','课程名称4','课程类型4','http://localhost:8080/ssmowi8u/upload/zuoyepingfen_tupian4.jpg','班级4','学期4',4,'评语4','2021-05-11','教师工号4','教师姓名4','学号4','学生姓名4',4);
insert  into `zuoyepingfen`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`xueqi`,`pingfen`,`pingyu`,`dengjiriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`userid`) values (85,'2021-05-11 12:53:32','课程名称5','课程类型5','http://localhost:8080/ssmowi8u/upload/zuoyepingfen_tupian5.jpg','班级5','学期5',5,'评语5','2021-05-11','教师工号5','教师姓名5','学号5','学生姓名5',5);
insert  into `zuoyepingfen`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`xueqi`,`pingfen`,`pingyu`,`dengjiriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`userid`) values (86,'2021-05-11 12:53:32','课程名称6','课程类型6','http://localhost:8080/ssmowi8u/upload/1620709069803.jpg','班级6','学期6',6,'评语6','2021-05-11','教师工号6','教师姓名6','学号6','学生姓名6',6);
insert  into `zuoyepingfen`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`xueqi`,`pingfen`,`pingyu`,`dengjiriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`userid`) values (1620709878006,'2021-05-11 13:11:17','高等数学','公共课','http://localhost:8080/ssmowi8u/upload/1620709296731.jpg','生工1902班','上学期',90,'完成不错','2021-05-11','2','张悦','1','陈一',1620709200784);
insert  into `zuoyepingfen`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`xueqi`,`pingfen`,`pingyu`,`dengjiriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`userid`) values (1620710323853,'2021-05-11 13:18:43','高等数学','公共课','http://localhost:8080/ssmowi8u/upload/1620709296731.jpg','生工1902班','上学期',90,'完成得不错','2021-05-11','2','张悦','3','张敏',1620710077398);

/*Table structure for table `zuoyetijiao` */

DROP TABLE IF EXISTS `zuoyetijiao`;

CREATE TABLE `zuoyetijiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zuoye` varchar(200) DEFAULT NULL COMMENT '作业',
  `tijiaoriqi` date DEFAULT NULL COMMENT '提交日期',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620710144998 DEFAULT CHARSET=utf8 COMMENT='作业提交';

/*Data for the table `zuoyetijiao` */

insert  into `zuoyetijiao`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`xueqi`,`banji`,`zuoye`,`tijiaoriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`,`userid`) values (71,'2021-05-11 12:53:32','课程名称1','课程类型1','http://localhost:8080/ssmowi8u/upload/zuoyetijiao_tupian1.jpg','年级1','学期1','班级1','','2021-05-11','教师工号1','教师姓名1','学号1','学生姓名1','是','',1);
insert  into `zuoyetijiao`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`xueqi`,`banji`,`zuoye`,`tijiaoriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`,`userid`) values (72,'2021-05-11 12:53:32','课程名称2','课程类型2','http://localhost:8080/ssmowi8u/upload/zuoyetijiao_tupian2.jpg','年级2','学期2','班级2','','2021-05-11','教师工号2','教师姓名2','学号2','学生姓名2','是','',2);
insert  into `zuoyetijiao`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`xueqi`,`banji`,`zuoye`,`tijiaoriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`,`userid`) values (73,'2021-05-11 12:53:32','课程名称3','课程类型3','http://localhost:8080/ssmowi8u/upload/1620709049346.jpg','年级3','学期3','班级3','','2021-05-11','教师工号3','教师姓名3','学号3','学生姓名3','是','',3);
insert  into `zuoyetijiao`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`xueqi`,`banji`,`zuoye`,`tijiaoriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`,`userid`) values (74,'2021-05-11 12:53:32','课程名称4','课程类型4','http://localhost:8080/ssmowi8u/upload/1620709056864.jpg','年级4','学期4','班级4','','2021-05-11','教师工号4','教师姓名4','学号4','学生姓名4','是','',4);
insert  into `zuoyetijiao`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`xueqi`,`banji`,`zuoye`,`tijiaoriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`,`userid`) values (75,'2021-05-11 12:53:32','课程名称5','课程类型5','http://localhost:8080/ssmowi8u/upload/zuoyetijiao_tupian5.jpg','年级5','学期5','班级5','','2021-05-11','教师工号5','教师姓名5','学号5','学生姓名5','是','',5);
insert  into `zuoyetijiao`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`xueqi`,`banji`,`zuoye`,`tijiaoriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`,`userid`) values (76,'2021-05-11 12:53:32','课程名称6','课程类型6','http://localhost:8080/ssmowi8u/upload/zuoyetijiao_tupian6.jpg','年级6','学期6','班级6','','2021-05-11','教师工号6','教师姓名6','学号6','学生姓名6','是','',6);
insert  into `zuoyetijiao`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`xueqi`,`banji`,`zuoye`,`tijiaoriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`,`userid`) values (1620709711364,'2021-05-11 13:08:31','高等数学','公共课','http://localhost:8080/ssmowi8u/upload/1620709296731.jpg','大三','上学期','生工1902班','http://localhost:8080/ssmowi8u/upload/1620709710085.png','2021-05-11','2','张悦','1','陈一','是','',1620709200784);
insert  into `zuoyetijiao`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`nianji`,`xueqi`,`banji`,`zuoye`,`tijiaoriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`,`userid`) values (1620710144997,'2021-05-11 13:15:44','高等数学','公共课','http://localhost:8080/ssmowi8u/upload/1620709296731.jpg','大三','上学期','生工1902班','http://localhost:8080/ssmowi8u/upload/1620710143229.png','2021-05-11','2','张悦','3','张敏','','',1620710077398);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
