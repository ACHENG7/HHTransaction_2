/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.7.17-log : Database - hhtransaction
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hhtransaction` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `hhtransaction`;

/*Table structure for table `t_cart` */

DROP TABLE IF EXISTS `t_cart`;

CREATE TABLE `t_cart` (
  `cartId` int(11) NOT NULL,
  `cartNum` int(11) DEFAULT NULL,
  `cartPrice` float DEFAULT NULL,
  PRIMARY KEY (`cartId`),
  CONSTRAINT `FKq1xsocov0fcxqph30p021lo61` FOREIGN KEY (`cartId`) REFERENCES `t_vipinfo` (`vipId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_cart` */

insert  into `t_cart`(`cartId`,`cartNum`,`cartPrice`) values (34,0,0),(35,0,0),(38,0,0),(39,0,0),(40,0,0),(44,0,0),(45,0,0);

/*Table structure for table `t_cartitem` */

DROP TABLE IF EXISTS `t_cartitem`;

CREATE TABLE `t_cartitem` (
  `cartId` int(11) NOT NULL,
  `goodsId` int(11) NOT NULL,
  PRIMARY KEY (`cartId`,`goodsId`),
  KEY `FKqbcai7i6qkxd2djulv7gow4ux` (`goodsId`),
  CONSTRAINT `FKnsjmrr2w1lmd0pp2ec5364sm` FOREIGN KEY (`cartId`) REFERENCES `t_cart` (`cartId`),
  CONSTRAINT `FKqbcai7i6qkxd2djulv7gow4ux` FOREIGN KEY (`goodsId`) REFERENCES `t_goods` (`goodsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_cartitem` */

/*Table structure for table `t_classify` */

DROP TABLE IF EXISTS `t_classify`;

CREATE TABLE `t_classify` (
  `classifyId` int(11) NOT NULL AUTO_INCREMENT,
  `classifyName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`classifyId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_classify` */

insert  into `t_classify`(`classifyId`,`classifyName`) values (1,'电子产品'),(2,'服装服饰'),(3,'文娱教育'),(4,'美容美化'),(5,'生活用品');

/*Table structure for table `t_goods` */

DROP TABLE IF EXISTS `t_goods`;

CREATE TABLE `t_goods` (
  `goodsId` int(11) NOT NULL AUTO_INCREMENT,
  `goodsName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `goodsIntroduction` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `goodsPrice` float DEFAULT NULL,
  `goodsNum` int(11) DEFAULT NULL,
  `goodsStatus` int(11) DEFAULT NULL,
  `classifyId` int(11) DEFAULT NULL,
  `vipId` int(11) DEFAULT NULL,
  `goodsImage` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`goodsId`),
  KEY `FKs39tyl264w1o3dnn5uvpaj389` (`classifyId`),
  KEY `FKq0dswp05w01scoasi5taviepx` (`vipId`),
  CONSTRAINT `FKq0dswp05w01scoasi5taviepx` FOREIGN KEY (`vipId`) REFERENCES `t_vipinfo` (`vipId`),
  CONSTRAINT `FKs39tyl264w1o3dnn5uvpaj389` FOREIGN KEY (`classifyId`) REFERENCES `t_classify` (`classifyId`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_goods` */

insert  into `t_goods`(`goodsId`,`goodsName`,`goodsIntroduction`,`goodsPrice`,`goodsNum`,`goodsStatus`,`classifyId`,`vipId`,`goodsImage`) values (55,'test','123',9999,1,1,5,40,'img/goods/201806130839375.jpg'),(56,'汉服','123',9999,1,1,5,40,'img/goods/201806130846006.jpg'),(57,'女生短袖','带吊牌！',25,1,1,2,40,'img/goods/20180613085133goods2.jpg'),(58,'95新三星','欢迎咨询',560,1,1,1,40,'img/goods/20180613085221goods1.jpg'),(59,'99新苹果机6s','价钱可面议',1500,1,1,1,40,'img/goods/201806130904546s.jpg'),(60,'联想电脑','价格可面议',3000,1,1,1,40,'img/goods/20180613085800u=3020855232,2488411186&fm=27&gp=0.jpg'),(61,'小米手环1','85新最低价啦',30,1,1,1,40,'img/goods/20180613085838u=328507604,4072240742&fm=27&gp=0.jpg'),(62,'华为平板','价格可以面议，喜欢联系我哦',1500,1,1,1,40,'img/goods/20180613085916timg225.jpg'),(63,'小米手环2','原价149没有戴过几次求带走',88,1,1,1,40,'img/goods/20180613085957timg123.jpg'),(64,'2017年新款ipad','128G急出，99新',2500,1,1,1,40,'img/goods/20180613090101timg22.jpg'),(65,'联想超薄本','内存8G！',5000,1,1,1,40,'img/goods/20180613090145timg.jpg'),(66,'老式电脑','性能很高',1000,1,1,1,40,'img/goods/20180613090225tim2g1.jpg'),(67,'苹果电脑急出','急需用钱跳楼卖',3000,1,1,1,40,'img/goods/20180613090331tim2g.jpg'),(68,'99新苹果机6s','急出急出',2500,1,1,1,40,'img/goods/201806130904546s.jpg'),(69,'粉色连衣裙','只穿过几次',30,1,1,2,40,'img/goods/20180613091035tim1g.jpg'),(70,'全新全新','求带走',20,1,1,2,40,'img/goods/20180613091100timg.jpg'),(71,'新裙子','s码，可以先试试',50,1,1,2,40,'img/goods/20180613091148timg3.jpg'),(72,'雪纺连衣裙','衣服太多带不走便宜甩卖',30,1,1,2,40,'img/goods/20180613091215timg4.jpg'),(73,'特别显瘦','要不要没关系，欢迎咨询',45,1,1,2,40,'img/goods/20180613091252timg6.jpg'),(74,'简单大方长裙子','原价189啊！真的带不走了',36,1,1,2,40,'img/goods/20180613091330timg7.jpg'),(75,'粉裙子','特别显气质，带吊牌哦全新',88,1,1,2,40,'img/goods/20180613091411timg9.jpg'),(76,'森女系裙子','可来宿舍试穿，还有许多同系列衣服',55,1,1,2,40,'img/goods/20180613091449timg12.jpg'),(77,'性感连衣裙','不多说了求带走',55,1,1,2,40,'img/goods/20180613091522timg77.jpg'),(78,'雪纺连衣裙','穿上真的超级凉快，骗你不要钱啊',50,1,1,2,40,'img/goods/20180613091603u=1223928227,583143460&fm=11&gp=0.jpg'),(79,'高兴死了','求带走',5,1,1,3,40,'img/goods/201806130917061.jpg'),(80,'技术领导力','书使人进步',5,1,1,3,40,'img/goods/2018061309174626.jpg'),(81,'7分钟理财','绝对正版！！！',5,1,1,3,40,'img/goods/2018061309181812.jpg'),(82,'深入浅出通信原理','技术书，学硬件的',10,1,1,3,40,'img/goods/2018061309184629.jpg'),(83,'深度学习','数据库学习使用',10,1,1,3,40,'img/goods/2018061309200027.jpg'),(84,'微服务器搭建','技多不压身啊同学',8,1,1,3,40,'img/goods/2018061309203325.jpg'),(85,'菲诗小铺洗面奶','十块一只快来拿',10,1,1,4,40,'img/goods/20180613092353tim11g.jpg'),(86,'泰国羽翼散粉','小仙女们快来围观呐',25,1,1,4,40,'img/goods/20180613092433timg.147jpg.jpg'),(87,'泰国羽翼整套全新','一整天洗面奶眼线液口红都有',250,1,1,4,40,'img/goods/20180613092518timg13.jpg'),(88,'小草莓唇膏','全新未拆封',5,1,1,4,40,'img/goods/20180613092623timg44.jpg'),(89,'羽翼眼线液','最便宜啦',20,1,1,4,40,'img/goods/20180613092649timg55.jpg'),(90,'菲诗小铺隔离','只有紫色的啦',15,1,1,4,40,'img/goods/20180613092719timg222.jpg'),(91,'羽翼粉底液','全新',38,1,1,2,40,'img/goods/20180613092806u=691090653,1645584224&fm=27&gp=0.jpg'),(92,'羽翼睫毛膏','还有很多',25,1,1,4,40,'img/goods/20180613092828timg999.jpg'),(94,'女生短袖','全新带吊牌！',56,1,1,2,35,NULL),(98,'海报','陈伟霆海报',15,1,1,3,44,'img/goods/2018062010582805.jpg'),(118,'新鲜空气！','新鲜空气！买不了吃亏买不了上当！',50000,1,1,5,44,'img/goods/20180620133747VEAP}(KZFOBQ$}_}BW]DG$2.jpg'),(119,'海报海报！！！','嘻嘻嘻',10,1,1,3,45,'img/goods/2018062013491805.jpg');

/*Table structure for table `t_message` */

DROP TABLE IF EXISTS `t_message`;

CREATE TABLE `t_message` (
  `messageId` int(11) NOT NULL AUTO_INCREMENT,
  `messageDate` timestamp NULL DEFAULT NULL,
  `messageContent` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `messageStatus` int(11) DEFAULT NULL,
  `vipSendId` int(11) DEFAULT NULL,
  `vipReceiveId` int(11) DEFAULT NULL,
  PRIMARY KEY (`messageId`),
  KEY `FKthea14i72cwn5ottv92x6r8gp` (`vipSendId`),
  KEY `FK8grrax01o6q8ad4rbhj96waep` (`vipReceiveId`),
  CONSTRAINT `FK8grrax01o6q8ad4rbhj96waep` FOREIGN KEY (`vipReceiveId`) REFERENCES `t_vipinfo` (`vipId`),
  CONSTRAINT `FKthea14i72cwn5ottv92x6r8gp` FOREIGN KEY (`vipSendId`) REFERENCES `t_vipinfo` (`vipId`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_message` */

insert  into `t_message`(`messageId`,`messageDate`,`messageContent`,`messageStatus`,`vipSendId`,`vipReceiveId`) values (1,'2018-06-06 14:01:55','你好，交个朋友吧',0,34,40),(2,'2018-06-06 14:07:55','好啊',0,40,34),(3,'2018-06-07 10:01:55','你叫什么名字呀',0,34,40),(4,'2018-06-08 11:01:55','静静，你呢？',0,40,34),(5,'2018-06-08 11:01:00','你好，那件衣服还能少点吗？',0,38,40),(16,'2018-06-14 19:33:08','青青嘻嘻',0,34,40),(17,'2018-06-14 19:35:04','可惜没有备注啊',0,40,34),(18,'2018-06-14 19:35:40','啊，那是不是给你说话的人多了，你就找不到我了？？？',0,34,40),(42,'2018-06-15 17:12:10','不可以哦',0,40,38),(43,'2018-06-15 17:12:18','暂时不行',0,40,34),(48,'2018-06-18 17:19:58','你好',0,38,40),(49,'2018-06-18 17:24:01','你好，这件衣服想要了解一下可以吗',0,39,40),(50,'2018-06-18 19:24:01','测试',1,39,34),(52,'2018-06-19 19:24:01','啊啊啊',0,38,39),(187,'2018-06-20 11:01:40','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=59\'>点击查看</a>成功!',0,40,44),(188,'2018-06-20 11:01:48','哈哈',0,44,40),(189,'2018-06-20 11:01:57','啊',0,44,40),(190,'2018-06-20 13:43:08','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=86\'>点击查看</a>成功!',0,40,44),(191,'2018-06-20 13:43:38','111',0,44,40),(192,'2018-06-20 13:49:57','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=85\'>点击查看</a>成功!',0,40,39),(193,'2018-06-20 13:51:15','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=118\'>新鲜空气！</a>成功!',0,44,39),(194,'2018-06-20 13:52:30','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=56\'>点击查看</a>成功!',0,40,45),(195,'2018-06-20 13:54:58','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=62\'>点击查看</a>成功!',0,40,39),(196,'2018-06-20 13:55:11','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=62\'>点击查看</a>成功!',0,40,39),(197,'2018-06-20 13:56:13','你好，这个平板还在吗？？？',1,39,40),(198,'2018-06-20 13:58:23','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=72\'>雪纺连衣裙</a>成功!',1,40,39),(199,'2018-06-20 13:58:23','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=89\'>羽翼眼线液</a>成功!',1,40,39),(200,'2018-06-20 13:58:23','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=89\'>羽翼眼线液</a>成功!',1,40,39),(201,'2018-06-20 13:58:49','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=84\'>微服务器搭建</a>成功!',1,40,39),(202,'2018-06-20 13:58:49','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=89\'>羽翼眼线液</a>成功!',1,40,39),(203,'2018-06-20 13:58:49','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=89\'>羽翼眼线液</a>成功!',1,40,39),(204,'2018-06-20 14:01:24','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=118\'>新鲜空气！</a>成功!',1,40,39),(205,'2018-06-20 14:01:24','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=118\'>新鲜空气！</a>成功!',1,44,39),(206,'2018-06-20 14:02:51','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=59\'>99新苹果机6s</a>成功!',1,40,39),(207,'2018-06-20 14:02:51','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=59\'>99新苹果机6s</a>成功!',1,40,39),(208,'2018-06-20 14:08:20','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=65\'>联想超薄本</a>成功!',1,40,45),(209,'2018-06-20 14:08:20','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=65\'>联想超薄本</a>成功!',1,40,45),(210,'2018-06-20 14:08:20','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=65\'>联想超薄本</a>成功!',1,40,45),(211,'2018-06-20 14:09:18','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=79\'>高兴死了</a>成功!',1,40,39),(212,'2018-06-20 14:09:18','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=79\'>高兴死了</a>成功!',1,40,39),(213,'2018-06-20 14:16:01','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=58\'>95新三星</a>成功!',1,40,39),(214,'2018-06-20 14:16:01','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=62\'>华为平板</a>成功!',1,40,39),(215,'2018-06-20 14:16:44','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=57\'>女生短袖</a>成功!',1,40,45),(216,'2018-06-20 14:16:44','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=58\'>95新三星</a>成功!',1,40,45),(217,'2018-06-20 14:17:27','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=61\'>小米手环1</a>成功!',1,40,44),(218,'2018-06-20 14:17:27','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=65\'>联想超薄本</a>成功!',1,40,44),(219,'2018-06-20 14:18:23','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=80\'>技术领导力</a>成功!',1,40,38),(220,'2018-06-20 14:18:23','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=80\'>技术领导力</a>成功!',1,40,38),(221,'2018-06-20 14:25:37','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=65\'>联想超薄本</a>成功!',1,40,39),(222,'2018-06-20 14:25:37','你已预购 商品：<a href=\'goods_findDetailGoods.action?goodsId=65\'>联想超薄本</a>成功!',1,40,39);

/*Table structure for table `t_order` */

DROP TABLE IF EXISTS `t_order`;

CREATE TABLE `t_order` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `orderDate` datetime DEFAULT NULL,
  `orderAddress` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `orderPrice` float DEFAULT NULL,
  `vipBuyId` int(11) DEFAULT NULL,
  `vipSellId` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `FKjl8k7f3p3qjdq7fkow56yqpwu` (`vipBuyId`),
  KEY `FKpw4lvykqsn01ym88b1v9jjtg1` (`vipSellId`),
  CONSTRAINT `FKjl8k7f3p3qjdq7fkow56yqpwu` FOREIGN KEY (`vipBuyId`) REFERENCES `t_vipinfo` (`vipId`),
  CONSTRAINT `FKpw4lvykqsn01ym88b1v9jjtg1` FOREIGN KEY (`vipSellId`) REFERENCES `t_vipinfo` (`vipId`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_order` */

insert  into `t_order`(`orderId`,`orderDate`,`orderAddress`,`orderPrice`,`vipBuyId`,`vipSellId`) values (38,'2018-06-20 14:25:39','信息工程学院',5030,39,NULL);

/*Table structure for table `t_orderitem` */

DROP TABLE IF EXISTS `t_orderitem`;

CREATE TABLE `t_orderitem` (
  `orderId` int(11) NOT NULL,
  `goodsId` int(11) NOT NULL,
  PRIMARY KEY (`orderId`,`goodsId`),
  KEY `FKn9t281hew8ue48pr35ld1pgbt` (`goodsId`),
  CONSTRAINT `FKn9t281hew8ue48pr35ld1pgbt` FOREIGN KEY (`goodsId`) REFERENCES `t_goods` (`goodsId`),
  CONSTRAINT `FKq0a07qn8ijiccku7iwhaepd6f` FOREIGN KEY (`orderId`) REFERENCES `t_order` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_orderitem` */

insert  into `t_orderitem`(`orderId`,`goodsId`) values (38,61),(38,65);

/*Table structure for table `t_vipinfo` */

DROP TABLE IF EXISTS `t_vipinfo`;

CREATE TABLE `t_vipinfo` (
  `vipId` int(11) NOT NULL AUTO_INCREMENT,
  `vipNickName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `vipPassWord` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `vipEmail` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `vipActiCode` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `vipStatus` int(11) DEFAULT NULL,
  `vipTokenTime` datetime DEFAULT NULL,
  `vipIntroduction` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`vipId`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_vipinfo` */

insert  into `t_vipinfo`(`vipId`,`vipNickName`,`vipPassWord`,`vipEmail`,`vipActiCode`,`vipStatus`,`vipTokenTime`,`vipIntroduction`) values (34,'admin','EFG@AB','lp995968535@qq.com',NULL,1,'2018-06-06 07:46:01','{\"dep\":\"\",\"img\":\"img/img_myinfo/myimage.jpg\",\"info\":\"\",\"myqq\":\"\",\"ssex\":\"女\",\"tel\":\"\"}'),(35,NULL,NULL,NULL,NULL,0,NULL,NULL),(38,'lpp','EFG@AB','2983526367@qq.com',NULL,1,'2018-06-06 14:01:55','{\"dep\":\"信息工程学院\",\"img\":\"img/head_img/201806181626381.jpg\",\"info\":\"买买买\",\"myqq\":\"995968535\",\"ssex\":\"女\",\"tel\":\"18339698456\"}'),(39,'test','EFG@AB','lp995968535@qq.com',NULL,1,'2018-06-06 14:36:53','{\"dep\":\"信息工程学院\",\"img\":\"img/head_img/20180618183325zhu.jpg\",\"info\":\"程序员\",\"myqq\":\"995968535\",\"ssex\":\"男\",\"tel\":\"15203883326\"}'),(40,'李盼盼','EFG@AB','lp995968535@qq.com',NULL,1,'2018-06-07 10:27:29','{\"dep\":\"信息工程學院\",\"img\":\"img/head_img/20180615183738prettygirl.jpg\",\"info\":\"程序员\",\"myqq\":\"995968535\",\"ssex\":\"女\",\"tel\":\"15203883326\"}'),(44,'大圣圣','EFG@AB','503211159@qq.com',NULL,1,'2018-06-20 10:56:57','{\"dep\":\"大大\",\"img\":\"img/img_myinfo/myimage.jpg\",\"info\":\"\",\"myqq\":\"503211159\",\"ssex\":\"女\",\"tel\":\"\"}'),(45,'陈陈陈大','EFG@AB','503211159@qq.com',NULL,1,'2018-06-20 13:48:11','{\"dep\":\"\",\"img\":\"img/head_img/20180620134842VEAP}(KZFOBQ$}_}BW]DG$2.jpg\",\"info\":\"\",\"myqq\":\"\",\"ssex\":\"\",\"tel\":\"\"}');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
