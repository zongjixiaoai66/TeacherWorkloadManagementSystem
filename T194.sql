/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t194`;
CREATE DATABASE IF NOT EXISTS `t194` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t194`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `daka`;
CREATE TABLE IF NOT EXISTS `daka` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `daka_content` text COMMENT '打卡备注',
  `insert_time` date DEFAULT NULL COMMENT '打卡日期',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='打卡';

DELETE FROM `daka`;
INSERT INTO `daka` (`id`, `jiaoshi_id`, `daka_content`, `insert_time`, `create_time`) VALUES
	(1, 1, '打卡备注1', '2022-03-17', '2022-03-17 05:50:06'),
	(2, 2, '打卡备注2', '2022-03-17', '2022-03-17 05:50:06'),
	(3, 3, '打卡备注3', '2022-03-17', '2022-03-17 05:50:06'),
	(4, 3, '打卡备注4', '2022-03-17', '2022-03-17 05:50:06'),
	(5, 3, '打卡备注5', '2022-03-17', '2022-03-17 05:50:06');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-03-17 05:49:49'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-03-17 05:49:49'),
	(3, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-03-17 05:49:50'),
	(4, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-03-17 05:49:50'),
	(5, 'togzhi_types', '通知类型', 1, '通知类型1', NULL, NULL, '2022-03-17 05:49:50'),
	(6, 'togzhi_types', '通知类型', 2, '通知类型2', NULL, NULL, '2022-03-17 05:49:50'),
	(7, 'gongzuoliang_types', '工作量类型', 1, '工作量类型1', NULL, NULL, '2022-03-17 05:49:50'),
	(8, 'gongzuoliang_types', '工作量类型', 2, '工作量类型2', NULL, NULL, '2022-03-17 05:49:50'),
	(9, 'gongzuoliang_yesno_types', '状态', 1, '待审核', NULL, NULL, '2022-03-17 05:49:50'),
	(10, 'gongzuoliang_yesno_types', '状态', 2, '同意', NULL, NULL, '2022-03-17 05:49:50'),
	(11, 'gongzuoliang_yesno_types', '状态', 3, '拒绝', NULL, NULL, '2022-03-17 05:49:50');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'http://localhost:8080/jiaoshigongzuoliang/upload/gonggao1.jpg', 2, '2022-03-17 05:50:06', '公告详情1', '2022-03-17 05:50:06'),
	(2, '公告名称2', 'http://localhost:8080/jiaoshigongzuoliang/upload/gonggao2.jpg', 1, '2022-03-17 05:50:06', '公告详情2', '2022-03-17 05:50:06'),
	(3, '公告名称3', 'http://localhost:8080/jiaoshigongzuoliang/upload/gonggao3.jpg', 1, '2022-03-17 05:50:06', '公告详情3', '2022-03-17 05:50:06'),
	(4, '公告名称4', 'http://localhost:8080/jiaoshigongzuoliang/upload/gonggao4.jpg', 2, '2022-03-17 05:50:06', '公告详情4', '2022-03-17 05:50:06'),
	(5, '公告名称5', 'http://localhost:8080/jiaoshigongzuoliang/upload/gonggao5.jpg', 1, '2022-03-17 05:50:06', '公告详情5', '2022-03-17 05:50:06');

DROP TABLE IF EXISTS `gongzi`;
CREATE TABLE IF NOT EXISTS `gongzi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `gongzi_name` varchar(200) DEFAULT NULL COMMENT '工资姓名 Search111 ',
  `gongzi_month` varchar(200) DEFAULT NULL COMMENT '月份 Search111 ',
  `dixin_money` decimal(10,2) DEFAULT NULL COMMENT '底薪 ',
  `jiangjin_money` decimal(10,2) DEFAULT NULL COMMENT '奖金 ',
  `qita_money` decimal(10,2) DEFAULT NULL COMMENT '其他 ',
  `wuxianyijin_money` decimal(10,2) DEFAULT NULL COMMENT '五险一金 ',
  `shifa_money` decimal(10,2) DEFAULT NULL COMMENT '实发 ',
  `beizhu_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='工资';

DELETE FROM `gongzi`;
INSERT INTO `gongzi` (`id`, `jiaoshi_id`, `gongzi_name`, `gongzi_month`, `dixin_money`, `jiangjin_money`, `qita_money`, `wuxianyijin_money`, `shifa_money`, `beizhu_content`, `insert_time`, `create_time`) VALUES
	(1, 1, '工资姓名1', '2022-02', 93.20, 992.28, 28.96, 472.46, 663.85, '备注1', '2022-03-17 05:50:06', '2022-03-17 05:50:06'),
	(2, 3, '工资姓名2', '2022-02', 488.00, 660.40, 535.96, 987.28, 914.13, '备注2', '2022-03-17 05:50:06', '2022-03-17 05:50:06'),
	(3, 3, '工资姓名3', '2022-02', 576.84, 321.57, 899.83, 580.38, 288.80, '备注3', '2022-03-17 05:50:06', '2022-03-17 05:50:06'),
	(4, 1, '工资姓名4', '2022-02', 686.18, 96.74, 176.57, 256.06, 376.77, '备注4', '2022-03-17 05:50:06', '2022-03-17 05:50:06'),
	(5, 1, '工资姓名5', '2022-02', 273.97, 920.20, 211.57, 23.51, 741.05, '备注5', '2022-03-17 05:50:06', '2022-03-17 05:50:06'),
	(6, 1, '教师姓名1的3月份工资', '2022-03', 300.00, 200.00, 100.00, 51.00, 549.00, '<p>是</p>', '2022-03-17 05:57:27', '2022-03-17 05:57:27'),
	(7, 2, '教师姓名2的2022年3月工资', '2022-03', 400.00, 401.00, 402.00, 30.00, 1173.00, '<p>萨达</p>', '2022-03-17 06:03:32', '2022-03-17 06:03:32');

DROP TABLE IF EXISTS `gongzuoliang`;
CREATE TABLE IF NOT EXISTS `gongzuoliang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `gongzuoliang_name` varchar(200) DEFAULT NULL COMMENT '工作量标题 Search111  ',
  `gongzuoliang_types` int NOT NULL COMMENT '工作量类型 ',
  `gongzuoliang_content` text COMMENT '工作量详情',
  `gongzuoliang_number` decimal(10,2) DEFAULT NULL COMMENT '工作量数值',
  `gongzuoliang_yesno_types` int NOT NULL COMMENT '状态  Search111  ',
  `gongzuoliang_yesno_text` text COMMENT '审核意见',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='工作量';

DELETE FROM `gongzuoliang`;
INSERT INTO `gongzuoliang` (`id`, `jiaoshi_id`, `gongzuoliang_name`, `gongzuoliang_types`, `gongzuoliang_content`, `gongzuoliang_number`, `gongzuoliang_yesno_types`, `gongzuoliang_yesno_text`, `insert_time`, `create_time`) VALUES
	(1, 1, '工作量标题1', 1, '工作量详情1', 371.12, 1, NULL, '2022-03-17 05:50:06', '2022-03-17 05:50:06'),
	(2, 1, '工作量标题2', 2, '工作量详情2', 172.69, 1, NULL, '2022-03-17 05:50:06', '2022-03-17 05:50:06'),
	(3, 3, '工作量标题3', 1, '工作量详情3', 3.83, 1, NULL, '2022-03-17 05:50:06', '2022-03-17 05:50:06'),
	(4, 1, '工作量标题4', 2, '工作量详情4', 128.79, 2, NULL, '2022-03-17 05:50:06', '2022-03-17 05:50:06'),
	(5, 3, '工作量标题5', 2, '工作量详情5', 613.44, 2, '订单', '2022-03-17 05:50:06', '2022-03-17 05:50:06'),
	(6, 1, '工作量标题1111', 2, '<p>萨达萨达</p>', 3.00, 1, '', '2022-03-17 06:04:32', '2022-03-17 06:04:32');

DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE IF NOT EXISTS `jiaoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名 Search111 ',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '教师手机号',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '教师身份证号',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '教师头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='教师';

DELETE FROM `jiaoshi`;
INSERT INTO `jiaoshi` (`id`, `username`, `password`, `jiaoshi_name`, `jiaoshi_phone`, `jiaoshi_id_number`, `jiaoshi_photo`, `sex_types`, `jiaoshi_email`, `create_time`) VALUES
	(1, '教师1', '123456', '教师姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/jiaoshigongzuoliang/upload/jiaoshi1.jpg', 2, '1@qq.com', '2022-03-17 05:50:06'),
	(2, '教师2', '123456', '教师姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/jiaoshigongzuoliang/upload/jiaoshi2.jpg', 2, '2@qq.com', '2022-03-17 05:50:06'),
	(3, '教师3', '123456', '教师姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/jiaoshigongzuoliang/upload/jiaoshi3.jpg', 2, '3@qq.com', '2022-03-17 05:50:06');

DROP TABLE IF EXISTS `togzhi`;
CREATE TABLE IF NOT EXISTS `togzhi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `togzhi_name` varchar(200) DEFAULT NULL COMMENT '通知标题 Search111  ',
  `togzhi_types` int NOT NULL COMMENT '通知类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '通知时间 ',
  `togzhi_content` text COMMENT '通知内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='通知信息';

DELETE FROM `togzhi`;
INSERT INTO `togzhi` (`id`, `jiaoshi_id`, `togzhi_name`, `togzhi_types`, `insert_time`, `togzhi_content`, `create_time`) VALUES
	(1, 2, '通知标题1', 1, '2022-03-17 05:50:06', '通知内容1', '2022-03-17 05:50:06'),
	(2, 1, '通知标题2', 1, '2022-03-17 05:50:06', '通知内容2', '2022-03-17 05:50:06'),
	(3, 2, '通知标题3', 2, '2022-03-17 05:50:06', '通知内容3', '2022-03-17 05:50:06'),
	(4, 1, '通知标题4', 1, '2022-03-17 05:50:06', '通知内容4', '2022-03-17 05:50:06'),
	(5, 3, '通知标题5', 1, '2022-03-17 05:50:06', '通知内容5', '2022-03-17 05:50:06');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'y24jgas2mtk0yo056ef5r5ymadp9aj4z', '2022-03-17 05:28:15', '2024-05-17 03:02:55'),
	(2, 1, 'a1', 'jiaoshi', '教师', 'l89fsz6lv2c1wlunpuew58f6dchu9ea1', '2022-03-17 06:03:53', '2024-05-17 03:03:50');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-02 06:51:13');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
