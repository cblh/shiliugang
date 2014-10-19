-- TuanPhp SQL Dump Program
-- 
-- DATE : 2014-01-25 14:56:25
-- Vol : 1
DROP TABLE IF EXISTS `weixin_ad`;
CREATE TABLE `weixin_ad` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `board_id` smallint(5) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `extimg` varchar(255) NOT NULL,
  `extval` varchar(200) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `start_time` int(10) NOT NULL,
  `end_time` int(10) NOT NULL,
  `clicks` int(10) NOT NULL DEFAULT '0',
  `add_time` int(10) NOT NULL DEFAULT '0',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_ad ( `id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status` ) VALUES  ('1','1','image','智风信息','http://www.5cando.com','1401/08/52cd425fc5957.png','','','','1389110400','1444233600','0','0','255','1');
INSERT INTO weixin_ad ( `id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status` ) VALUES  ('2','1','image','智风微信营销','http://weixin.5cando.com','1401/08/52cd42d54b961.jpg','','','','1389110400','1421856000','0','0','255','1');
DROP TABLE IF EXISTS `weixin_adboard`;
CREATE TABLE `weixin_adboard` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `tpl` varchar(20) NOT NULL,
  `width` smallint(5) NOT NULL,
  `height` smallint(5) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_adboard ( `id`, `name`, `tpl`, `width`, `height`, `description`, `status` ) VALUES  ('1','首页焦点图','indexfocus','730','395','小图调用扩展图','1');
DROP TABLE IF EXISTS `weixin_address`;
CREATE TABLE `weixin_address` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `contacts` varchar(100) DEFAULT '联系人',
  `Province` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Area` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `postcode` varchar(30) DEFAULT NULL COMMENT '邮编',
  `mobile` varchar(50) DEFAULT NULL COMMENT '手机号码',
  `phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `name` varchar(50) NOT NULL COMMENT '公司名称',
  `isno` varchar(10) DEFAULT '0' COMMENT '0:否 1:是',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_address ( `id`, `contacts`, `Province`, `City`, `Area`, `address`, `postcode`, `mobile`, `phone`, `name`, `isno`, `status`, `ordid` ) VALUES  ('22','zhifeng','河南省','郑州市','金水区','丰乐路','450000','13821682248','0371-6362262','智风科技','0','1','0');
DROP TABLE IF EXISTS `weixin_admin`;
CREATE TABLE `weixin_admin` (
  `id` mediumint(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role_id` smallint(5) NOT NULL,
  `last_ip` varchar(15) NOT NULL,
  `last_time` int(10) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`username`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_admin ( `id`, `username`, `password`, `role_id`, `last_ip`, `last_time`, `email`, `status` ) VALUES  ('1','admin','d87278b14f517815b4fb021c32a2a248','1','127.0.0.1','1390629541','admin@qq.com','1');
DROP TABLE IF EXISTS `weixin_admin_auth`;
CREATE TABLE `weixin_admin_auth` (
  `role_id` tinyint(3) NOT NULL,
  `menu_id` smallint(6) NOT NULL,
  KEY `role_id` (`role_id`,`menu_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_admin_role`;
CREATE TABLE `weixin_admin_role` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `remark` text NOT NULL,
  `ordid` tinyint(3) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_admin_role ( `id`, `name`, `remark`, `ordid`, `status` ) VALUES  ('1','超级管理员','超级管理员','0','1');
DROP TABLE IF EXISTS `weixin_album`;
CREATE TABLE `weixin_album` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL,
  `uname` varchar(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `cover_cache` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `likes` int(10) NOT NULL,
  `items` int(10) unsigned NOT NULL DEFAULT '0',
  `follows` int(10) unsigned NOT NULL DEFAULT '0',
  `is_index` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_album_cate`;
CREATE TABLE `weixin_album_cate` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `albums` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_album_comment`;
CREATE TABLE `weixin_album_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `uname` varchar(20) NOT NULL,
  `info` text NOT NULL,
  `add_time` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_album_follow`;
CREATE TABLE `weixin_album_follow` (
  `uid` int(10) NOT NULL,
  `album_id` int(10) NOT NULL,
  `add_time` int(10) NOT NULL,
  UNIQUE KEY `uid` (`uid`,`album_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_album_item`;
CREATE TABLE `weixin_album_item` (
  `album_id` int(10) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `intro` varchar(255) NOT NULL,
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`album_id`,`item_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_album_item ( `album_id`, `item_id`, `intro`, `add_time` ) VALUES  ('0','127','windows主机，300M空间只收200元。','1389174735');
INSERT INTO weixin_album_item ( `album_id`, `item_id`, `intro`, `add_time` ) VALUES  ('0','128','仿乐享、微盟多用户微信营销系统源码，完全开源，源码保证可用！

本套源码是14.1.4日最新版！有喜帖和360全景功能！商城支持企业支付宝在线付款！测试网址http://weixin.5cando.com ,测试帐号：test   test','1389174893');
INSERT INTO weixin_album_item ( `album_id`, `item_id`, `intro`, `add_time` ) VALUES  ('0','129','高速空间300M香港免备案','1389175007');
INSERT INTO weixin_album_item ( `album_id`, `item_id`, `intro`, `add_time` ) VALUES  ('0','130','世纪东方行云主机2型','1389175238');
INSERT INTO weixin_album_item ( `album_id`, `item_id`, `intro`, `add_time` ) VALUES  ('0','131','全网独家 价格全网最低 确保整站完整源码 后台完美修复！       

 本源码全网独有！ 修改所有BUG 安全系统与后面全部封堵 无任何安全漏洞！

指导改界面版权不像其他源码无法更改版权信息   修改过的后台可以实现所有功能','1389175735');
DROP TABLE IF EXISTS `weixin_alipay`;
CREATE TABLE `weixin_alipay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alipayname` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '支付宝名称',
  `partner` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '合作身份者id',
  `key` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '安全检验码',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_article`;
CREATE TABLE `weixin_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` smallint(4) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `colors` varchar(10) NOT NULL,
  `author` varchar(100) NOT NULL,
  `tags` varchar(100) NOT NULL,
  `img` varchar(255) NOT NULL,
  `intro` varchar(255) NOT NULL,
  `info` text NOT NULL,
  `comments` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览数',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序值',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_time` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_article_cate`;
CREATE TABLE `weixin_article_cate` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `pid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `spid` varchar(50) NOT NULL,
  `ordid` smallint(4) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_article_cate ( `id`, `type`, `name`, `alias`, `img`, `pid`, `spid`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('1','1','网站信息','','','0','0','255','1','','','');
INSERT INTO weixin_article_cate ( `id`, `type`, `name`, `alias`, `img`, `pid`, `spid`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('2','1','关于我们','','','1','1|','255','1','','','');
INSERT INTO weixin_article_cate ( `id`, `type`, `name`, `alias`, `img`, `pid`, `spid`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('3','1','联系我们','','','1','1|','255','1','','','');
INSERT INTO weixin_article_cate ( `id`, `type`, `name`, `alias`, `img`, `pid`, `spid`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('4','1','加入我们','','','1','1|','255','1','','','');
INSERT INTO weixin_article_cate ( `id`, `type`, `name`, `alias`, `img`, `pid`, `spid`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('6','1','积分规则','','','5','5|','255','1','','','');
INSERT INTO weixin_article_cate ( `id`, `type`, `name`, `alias`, `img`, `pid`, `spid`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('7','1','兑换说明','','','5','5|','255','1','','','');
DROP TABLE IF EXISTS `weixin_article_page`;
CREATE TABLE `weixin_article_page` (
  `cate_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL,
  `info` text NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  `last_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cate_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_article_page ( `cate_id`, `title`, `info`, `seo_title`, `seo_keys`, `seo_desc`, `last_time` ) VALUES  ('2','关于我们','<div>
	欢迎来到PinPHP－拼品网， 拼品网是一个技术驱动创造时尚的互联网创业型公司，通过搜索引擎、图形处理、视觉搜索等核心技术研发优势，为中国千百万的个人站长提供一个解决如何快速抢建一个社会化的电子商务导购平台，它可以帮助爱美丽的女生找到适合的穿衣搭配、在哪里购买合适的时装搭配网购社区平台；我们将致力于为每一个时尚女孩都能轻松地创建属于自己的搭配宝典库而矢志不移的奉献青春年华。
</div>
<div>
	<br />
</div>
<div>
	　　来逛拼品网&nbsp;，你将发现更多喜爱的搭配风格，找到你最喜欢的时尚元素，你也将发现全球各地流行的风格与趋势，你还能很方便的在线拼贴搭配出你的时尚品味；懂得搭配的女人才更美丽，拉上你的好姐妹们一起来逛拼品网吧！
</div>
<div>
	<br />
</div>
<div>
	　　Logo寓意诠释：化蛹成碟的美丽蜕变，意思是通过来逛拼品网能让女孩们蜕变得更美丽！
</div>','','','','0');
INSERT INTO weixin_article_page ( `cate_id`, `title`, `info`, `seo_title`, `seo_keys`, `seo_desc`, `last_time` ) VALUES  ('3','联系我们','<p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#666666;font-family:Arial;font-size:14px;line-height:22px;white-space:normal;background-color:#FFFFFF;\">
	联系电话：0571-28058597
</p>
<p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#666666;font-family:Arial;font-size:14px;line-height:22px;white-space:normal;background-color:#FFFFFF;\">
	&nbsp;
</p>
<p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#666666;font-family:Arial;font-size:14px;line-height:22px;white-space:normal;background-color:#FFFFFF;\">
	官方网站：www.pinphp.com
</p>
<p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#666666;font-family:Arial;font-size:14px;line-height:22px;white-space:normal;background-color:#FFFFFF;\">
	&nbsp;
</p>
<p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#666666;font-family:Arial;font-size:14px;line-height:22px;white-space:normal;background-color:#FFFFFF;\">
	地址：杭州市万塘路６９号华星科技苑Ａ楼
</p>
<p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#666666;font-family:Arial;font-size:14px;line-height:22px;white-space:normal;background-color:#FFFFFF;\">
	&nbsp;
</p>
<p style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#666666;font-family:Arial;font-size:14px;line-height:22px;white-space:normal;background-color:#FFFFFF;\">
	邮编：３１００１２
</p>','','','','0');
INSERT INTO weixin_article_page ( `cate_id`, `title`, `info`, `seo_title`, `seo_keys`, `seo_desc`, `last_time` ) VALUES  ('4','加入我们','<span style=\"white-space:nowrap;\"><strong>岗位名称：信息编辑</strong></span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp;<strong> 岗位职责：&nbsp;</strong></span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; &nbsp; 1、产业网站内容建设；&nbsp;</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; &nbsp; 2、产业数据搜集整理；</span><br />
<span style=\"white-space:nowrap;\">&nbsp;</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; <strong>任职要求 ：&nbsp;</strong></span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; &nbsp; 1、大专以上学历，传媒、新闻、电子商务相关专业优先；&nbsp;</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; &nbsp; 2、1年以上互联网行业媒体从业经验，有电子商务相关从业经历者优先；&nbsp;</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; &nbsp; 3、熟悉网页制作软件，良好的文字功底、有原创采写经验者优先；&nbsp;</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; &nbsp; 4、对新闻、电子商务等产业有持续关注兴趣，良好的英文阅读能力；&nbsp;</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; &nbsp; 5、具有较强学习能力和责任心，以及团队合作精神；&nbsp;</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; &nbsp; 6、优秀应届毕业生可放宽工作经验要求；</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; &nbsp;</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; &nbsp; 有意者请发送简历至：HR#insuny.com （#替换成@）</span><br />
<span style=\"white-space:nowrap;\"><br />
</span><br />
<span style=\"white-space:nowrap;\"><strong>岗位名称：开发工程师</strong></span><br />
<span style=\"white-space:nowrap;\"><strong>&nbsp; &nbsp; 岗位职责：&nbsp;</strong></span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; &nbsp; 1、负责网站系统及B/S架构产品开发；&nbsp;</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; &nbsp; 2、负责产品体验优化；</span><br />
<span style=\"white-space:nowrap;\">&nbsp;</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp;<strong> 任职要求 ：</strong>&nbsp;</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; &nbsp; 1、大学专科及以上，计算机相关专业优先；&nbsp;</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; &nbsp; 2、2年以上B/S架构开发经验；有独立开发开发经验者优先；&nbsp;</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; &nbsp; 3、良好掌握PHP开发语言及MySQL数据库；&nbsp;</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; &nbsp; 4、熟练掌握javascript / ajax等；&nbsp;</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; &nbsp; 5、有激情，热爱互联网行业，熟悉web2.0应用；</span><br />
<span style=\"white-space:nowrap;\"><br />
</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; 有意者请发送简历至：HR#insuny.com（#替换成@）</span><br />
<span style=\"white-space:nowrap;\"><br />
</span><br />
<span style=\"white-space:nowrap;\"><strong>岗位名称：网页设计师</strong></span><br />
<span style=\"white-space:nowrap;\"><strong>&nbsp; &nbsp; 岗位职责：</strong>&nbsp;</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; &nbsp; 1、负责网站及B/S架构产品前端界面设计及重构；&nbsp;</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; &nbsp; 2、负责产品体验优化；</span><br />
<span style=\"white-space:nowrap;\">&nbsp;</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp;<strong> 任职要求 ：</strong>&nbsp;</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; &nbsp; 1、大学专科及以上，计算机相关专业优先；&nbsp;</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; &nbsp; 2、2年以上网站设计经验；有整站设计重构经验者优先；&nbsp;</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; &nbsp; 3、良好掌握XHTML，CSS手工书写页面，熟悉W3C标准，精通div+css；&nbsp;</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; &nbsp; 4、精通Photoshop、Dreamweaver、Flash等多种网页设计制作软件；&nbsp;</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; &nbsp; 5、有激情，热爱互联网行业，熟悉web2.0应用；</span><br />
<span style=\"white-space:nowrap;\"><br />
</span><br />
<span style=\"white-space:nowrap;\">&nbsp; &nbsp; &nbsp; &nbsp;有意者请发送简历至：HR#insuny.com （#替换成@）</span><br />','','','','0');
INSERT INTO weixin_article_page ( `cate_id`, `title`, `info`, `seo_title`, `seo_keys`, `seo_desc`, `last_time` ) VALUES  ('6','会员加减分规则','<p>
	<strong>积分兑换</strong>
</p>
<p>
	<br />
</p>
<p>
	积分是为了答谢支持PinPHP网站会员而制定的一种奖励方式，您可以进入账户中的积分页面查看积分明细，同时PinPHP会推出各类积分兑换活动，请随时关注关于积分的活动告知。
</p>
<p>
	<br />
</p>
<p>
	<strong>积分获得：</strong>
</p>
<p>
	<br />
</p>
<p>
	1、会员注册：会员注册即送20点积分，一个账户只能得一次注册积分；
</p>
<p>
	<br />
</p>
<p>
	2、每日登录：会员每日首次登录PinPHP网站能获得10积分，每日上限5次；
</p>
<p>
	<br />
</p>
<p>
	3、发布分享：会员分享新商品到PinPHP网站能获得20积分，每日上限10次；
</p>
<p>
	<br />
</p>
<p>
	4、添加喜欢：针对PinPHP网站上的商品会员点击喜欢可获得1积分，每日上限10次；
</p>
<p>
	<br />
</p>
<p>
	5、添加到专辑：会员把喜欢的商品添加进个人的专辑中可获得2积分，每日上限10次；
</p>
<p>
	<br />
</p>
<p>
	6、转发分享：会员转发PinPHP网站上商品到其他网站上可获2积分，每日上限10次；
</p>
<p>
	<br />
</p>
<p>
	7、发布评论：会员评论PinPHP网站商品可获1积分，每日上线5次。
</p>
<p>
	<br />
</p>
<p>
	<strong>积分扣除：</strong>
</p>
<p>
	<br />
</p>
<p>
	1、删除分享：会员删除自己添加的商品减20积分，每日上限100次；
</p>
<p>
	<br />
</p>
<p>
	2、兑换商品：会员使用积分兑换自己喜欢的商品会扣除相对应的积分。
</p>
<p>
	<br />
</p>
<div>
	<br />
</div>','','','','0');
INSERT INTO weixin_article_page ( `cate_id`, `title`, `info`, `seo_title`, `seo_keys`, `seo_desc`, `last_time` ) VALUES  ('7','兑换说明','1、奖品价格已经包含邮寄费用在内，您无须另行支付。兑奖前请确认您的帐户中有足够数量的积分！<br />
2、奖品寄送方式：QQ直充类奖品兑奖审核通过后会直接充入您的QQ号码中，其余虚拟奖品采用在线发送卡密的方式；实体奖品全部采用快递方式。<br />
3、虚拟奖品有效期：虚拟卡密类奖品除手机充值卡10/20/30元卡密，因为充值卡金额少，有效期比较短，大约一周左右,其余卡密类奖品有效期为1个月；虚拟卡直冲类为即时发货即时到账，无有效期限制！积分兑换含有有效期的奖品，请尽快充值使用，如过有效期未充值导致卡密失效，PinPHP网概不负责。<br />
4、确认您的奖品邮寄地址、联系电话正确无误后提交兑奖申请！如因您未提供详细信息或信息错误，导致奖品错投或无法寄送，网站不负任何责任，并不再补发奖品。<br />
5、实物奖品将在兑奖提交后的2-5工作日内发出(奖品状态您可通过“积分订单”查询)！<br />
6、实物奖品按照会员申请的要求发出去之后，无破损、短缺等质量问题或因个人喜好（色泽、外观）要求退换货将无法受理。<br />
7、兑奖中心所有实物奖品颜色均为随机发送, 敬请谅解！<br />
<br />
<strong>注意：</strong><br />
<br />
1、签收奖品前，务必仔细检查货物是否完好！如果发现有破损、短缺情况，请直接让快递公司退回，无需承担任何费用，并及时与我们联系。签收后提出货物破损等问题，一律责任自负！无法受理退换货要求！他人代签与本人签收一样。<br />
2、收到奖品7天内，若发现质量问题，请及时与我们联系并提供图片说明。如因个人使用不当导致的奖品问题无法更换。<br />
3、如提交兑奖后，由于商家缺货导致无法发货的情况，会员会收到站内信息通知并取消兑奖，请重新选择其他奖品兑换。<br />
<br />
兑奖过程中如有问题请通过“联系我们”联系咨询。<br />
以上奖品图片仅供参考,请您以收取的实物为准！如有异议请联系客服人员确认奖品情况。<br />','','','','0');
DROP TABLE IF EXISTS `weixin_auto_user`;
CREATE TABLE `weixin_auto_user` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `users` text NOT NULL,
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_badword`;
CREATE TABLE `weixin_badword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `word_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1：禁用；2：替换；3：审核',
  `badword` varchar(100) NOT NULL,
  `replaceword` varchar(100) NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_brandlist`;
CREATE TABLE `weixin_brandlist` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_brandlist ( `id`, `name`, `status`, `ordid` ) VALUES  ('1','智风测试','1','0');
INSERT INTO weixin_brandlist ( `id`, `name`, `status`, `ordid` ) VALUES  ('14','智风空间','1','0');
INSERT INTO weixin_brandlist ( `id`, `name`, `status`, `ordid` ) VALUES  ('13','智风主机','1','0');
INSERT INTO weixin_brandlist ( `id`, `name`, `status`, `ordid` ) VALUES  ('15','智风微信','1','0');
INSERT INTO weixin_brandlist ( `id`, `name`, `status`, `ordid` ) VALUES  ('16','智风域名','1','0');
DROP TABLE IF EXISTS `weixin_custom_menu`;
CREATE TABLE `weixin_custom_menu` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `tags` varchar(50) NOT NULL,
  `pid` smallint(4) unsigned NOT NULL,
  `spid` varchar(50) NOT NULL,
  `fcolor` varchar(10) NOT NULL,
  `remark` text NOT NULL,
  `add_time` int(10) NOT NULL,
  `items` int(10) unsigned NOT NULL DEFAULT '0',
  `likes` int(10) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0:商品分类 1:标签分类',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL,
  `is_index` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `keyword` varchar(255) DEFAULT NULL COMMENT '关键词',
  `key` varchar(255) DEFAULT NULL COMMENT 'key值',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_custom_menu ( `id`, `name`, `tags`, `pid`, `spid`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `keyword`, `key` ) VALUES  ('343','案例展示','','0','0','','','0','0','0','0','1','1','1','0','alzs','alzs');
INSERT INTO weixin_custom_menu ( `id`, `name`, `tags`, `pid`, `spid`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `keyword`, `key` ) VALUES  ('344','车联','','343','343|','','','0','0','0','0','1','1','1','0','cl','cl');
INSERT INTO weixin_custom_menu ( `id`, `name`, `tags`, `pid`, `spid`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `keyword`, `key` ) VALUES  ('345','餐饮','','343','343|','','','0','0','0','0','2','1','1','0','cy','cy');
INSERT INTO weixin_custom_menu ( `id`, `name`, `tags`, `pid`, `spid`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `keyword`, `key` ) VALUES  ('346','婚纱','','343','343|','','','0','0','0','0','3','1','1','0','hs','hs');
INSERT INTO weixin_custom_menu ( `id`, `name`, `tags`, `pid`, `spid`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `keyword`, `key` ) VALUES  ('349','微信商城','','343','343|','','','0','0','0','0','4','1','0','0','gw','gw');
INSERT INTO weixin_custom_menu ( `id`, `name`, `tags`, `pid`, `spid`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `keyword`, `key` ) VALUES  ('359','抽奖转盘','','358','358|','','','0','0','0','0','2','1','0','0','ty','cjzp');
INSERT INTO weixin_custom_menu ( `id`, `name`, `tags`, `pid`, `spid`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `keyword`, `key` ) VALUES  ('358','互动模块','','0','0','','','0','0','0','0','2','1','0','0','hdmk','hdmk');
INSERT INTO weixin_custom_menu ( `id`, `name`, `tags`, `pid`, `spid`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `keyword`, `key` ) VALUES  ('360','幸运机','','358','358|','','','0','0','0','0','3','1','0','0','ty','xyj');
INSERT INTO weixin_custom_menu ( `id`, `name`, `tags`, `pid`, `spid`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `keyword`, `key` ) VALUES  ('361','刮刮乐','','358','358|','','','0','0','0','0','1','1','0','0','ty','ggl');
INSERT INTO weixin_custom_menu ( `id`, `name`, `tags`, `pid`, `spid`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `keyword`, `key` ) VALUES  ('373','微团购','','371','371|','','','0','0','0','0','255','1','0','0','ty','wtg');
INSERT INTO weixin_custom_menu ( `id`, `name`, `tags`, `pid`, `spid`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `keyword`, `key` ) VALUES  ('372','微信会员卡','','371','371|','','','0','0','0','0','255','1','0','0','ty','wxhyk');
INSERT INTO weixin_custom_menu ( `id`, `name`, `tags`, `pid`, `spid`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `keyword`, `key` ) VALUES  ('371','会员模块','','0','0','','','0','0','0','0','3','1','0','0','ty','hymk');
INSERT INTO weixin_custom_menu ( `id`, `name`, `tags`, `pid`, `spid`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `keyword`, `key` ) VALUES  ('370','果蔬','','343','343|','','','0','0','0','0','255','1','0','0','gs','gs');
INSERT INTO weixin_custom_menu ( `id`, `name`, `tags`, `pid`, `spid`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `keyword`, `key` ) VALUES  ('374','微投票','','371','371|','','','0','0','0','0','255','1','0','0','ty','wtp');
DROP TABLE IF EXISTS `weixin_delivery`;
CREATE TABLE `weixin_delivery` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_delivery ( `id`, `name`, `status`, `ordid` ) VALUES  ('1','EMS','1','0');
INSERT INTO weixin_delivery ( `id`, `name`, `status`, `ordid` ) VALUES  ('2','中通速递','1','0');
INSERT INTO weixin_delivery ( `id`, `name`, `status`, `ordid` ) VALUES  ('3','圆通速递','1','0');
INSERT INTO weixin_delivery ( `id`, `name`, `status`, `ordid` ) VALUES  ('4','汇通快运','1','0');
INSERT INTO weixin_delivery ( `id`, `name`, `status`, `ordid` ) VALUES  ('5','申通快递','1','0');
INSERT INTO weixin_delivery ( `id`, `name`, `status`, `ordid` ) VALUES  ('6','韵达快运','1','0');
INSERT INTO weixin_delivery ( `id`, `name`, `status`, `ordid` ) VALUES  ('7','顺丰速运','1','0');
DROP TABLE IF EXISTS `weixin_flink`;
CREATE TABLE `weixin_flink` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `cate_id` smallint(5) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_flink_cate`;
CREATE TABLE `weixin_flink_cate` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_images`;
CREATE TABLE `weixin_images` (
  `iid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(300) NOT NULL,
  PRIMARY KEY (`iid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_images ( `iid`, `imgurl` ) VALUES  ('22','data/upload/keyword/1308/16/520dc84ee84b2.jpg');
INSERT INTO weixin_images ( `iid`, `imgurl` ) VALUES  ('23','data/upload/keyword/1401/06/52ca90ef04077.jpg');
INSERT INTO weixin_images ( `iid`, `imgurl` ) VALUES  ('24','data/upload/keyword/1401/06/52ca90fa16e1b.jpg');
INSERT INTO weixin_images ( `iid`, `imgurl` ) VALUES  ('25','data/upload/keyword/1401/06/52ca91cb8704e.jpg');
INSERT INTO weixin_images ( `iid`, `imgurl` ) VALUES  ('26','data/upload/keyword/1401/07/52cb5e24df3f4.jpg');
INSERT INTO weixin_images ( `iid`, `imgurl` ) VALUES  ('27','data/upload/keyword/1401/07/52cbaf5780316.jpg');
INSERT INTO weixin_images ( `iid`, `imgurl` ) VALUES  ('28','data/upload/keyword/1401/07/52cbb0f95d5fd.jpg');
INSERT INTO weixin_images ( `iid`, `imgurl` ) VALUES  ('29','data/upload/keyword/1401/07/52cbc4f80776c.jpg');
INSERT INTO weixin_images ( `iid`, `imgurl` ) VALUES  ('30','data/upload/keyword/1401/07/52cbc52384c65.jpg');
INSERT INTO weixin_images ( `iid`, `imgurl` ) VALUES  ('31','data/upload/keyword/1401/07/52cbc52a91bf4.jpg');
DROP TABLE IF EXISTS `weixin_ipban`;
CREATE TABLE `weixin_ipban` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `expires_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_item`;
CREATE TABLE `weixin_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` smallint(4) unsigned DEFAULT NULL,
  `orig_id` smallint(6) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `intro` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `rates` float(8,2) NOT NULL COMMENT '佣金比率xxx.xx%',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:商品,2:图片',
  `comments` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `cmt_taobao_time` int(10) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `info` text,
  `news` tinyint(4) DEFAULT '0',
  `tuijian` tinyint(4) DEFAULT '0',
  `goods_stock` int(11) DEFAULT '50' COMMENT '库存',
  `buy_num` int(11) DEFAULT '0' COMMENT '卖出数量',
  `brand` int(11) DEFAULT '1' COMMENT '品牌',
  `pingyou` decimal(10,2) DEFAULT '0.00',
  `kuaidi` decimal(10,2) DEFAULT '0.00',
  `ems` decimal(10,2) DEFAULT '0.00',
  `free` int(11) DEFAULT '1',
  `color` varchar(255) DEFAULT NULL COMMENT '颜色',
  `size` varchar(255) DEFAULT NULL COMMENT '尺寸',
  PRIMARY KEY (`id`),
  KEY `cid` (`cate_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_item ( `id`, `cate_id`, `orig_id`, `title`, `intro`, `img`, `price`, `rates`, `type`, `comments`, `cmt_taobao_time`, `add_time`, `ordid`, `status`, `info`, `news`, `tuijian`, `goods_stock`, `buy_num`, `brand`, `pingyou`, `kuaidi`, `ems`, `free`, `color`, `size` ) VALUES  ('127','346','0','300Ｍ','windows主机，300M空间只收200元。','1401/08/52cd1fce2b509.jpg','200.00','0.00','1','0','0','1389174735','255','1','<p>
	智风主机空间，稳定高速，值得推荐。
</p>
<p>
	<div class=\"details-bottom-box\" style=\"font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
		<span style=\"color:#FF0000;\">W型</span>主机采用Windows为操作系统，同时支持asp、php等脚本语言并赠送mssql、mysql等数据库和邮局。超强的控制面板，40多项方便易用的主机功能:定期数据备份，自助恢复备份数据,空间使用情况，流量使用情况，伪静态设置，网站搬家，在线上传，远程下载，文件压缩等。我们完善的售后服务，可以完美保障用户利益，适合大多数用户的企业级应用。
	</div>
	<div class=\"details-bottom-box\" style=\"font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
		<span style=\"color:#FF0000;\">L型</span>为linux虚拟主机，采用专业的LAMP环境（Linux+Apache+ PHP + Perl + Shtml）,支持Php5+mysql4.0/Mysql5.0,支持eAccelerator/Memcache加速,完美支持Discuz、PhpWind、CmsTop、Shopex、ECShop、Wordpress、MT等php+mysql结构的应用系统。
	</div>
	<div class=\"details-bottom-box\" style=\"font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
		&nbsp;
	</div>
	<div class=\"details-bottom-box\" style=\"font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
		<span style=\"color:#FF0000;\"><span style=\"font-size:18px;\">亲需注意</span>，L型宝贝为200M空间，此款宝贝在保证质量的情况下已是底价，空间的好坏不仅仅是大小，还有其他的。更重要的是服务。选择智风，选择贴心服务。</span>
	</div>
	<div class=\"details-bottom-box\" style=\"font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
		<span style=\"color:#FF0000;\">另请注意，本主机只接受正规网站，违法的请出门左拐，严重者将报警。</span>
	</div>
	<div class=\"details-bottom-box\" style=\"font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
		&nbsp;
	</div>
	<div class=\"details-bottom-box\" style=\"font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
		<span style=\"color:#FF0000;\"></span>&nbsp;功能介绍：
	</div>
	<div class=\"details-bottom-box\" style=\"font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
		1.此空间支持上面介绍的的通用功能。
	</div>
	<div class=\"details-bottom-box\" style=\"font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
		2.此空间会赠送一个iGenus邮局500M 5账号。功能足够满足您的需求。如有特殊需求，请联系客服。
	</div>
	<div class=\"details-bottom-box\" style=\"font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
		3.此空间会赠送一个Mysql数据库。
	</div>
	<div class=\"details-bottom-box\" style=\"font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
		&nbsp;
	</div>
	<div class=\"details-bottom-box\" style=\"font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
		零风险保证：
	</div>
	<div style=\"font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
		我们拥有香港机房、美国机房等多款主机供您选择，如果您对本款主机不满意，可随时为您更换其他主机，绝不加价！
	</div>
	<div style=\"font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
		全能空间不只是说说：我们本空间完美支持PHP、CGI、Python、Zend、GD2、JQuery等语言，支持Discuz、PHPWind、DedeCMS、phpcms、Supesite、帝国CMS、Ecshop、Wordpress、Zen-cart、Joomla、PHP168等主流建站系统。
	</div>
</p>','1','1','199','0','14','0.00','0.00','0.00','1','','');
INSERT INTO weixin_item ( `id`, `cate_id`, `orig_id`, `title`, `intro`, `img`, `price`, `rates`, `type`, `comments`, `cmt_taobao_time`, `add_time`, `ordid`, `status`, `info`, `news`, `tuijian`, `goods_stock`, `buy_num`, `brand`, `pingyou`, `kuaidi`, `ems`, `free`, `color`, `size` ) VALUES  ('128','349','0','最新微信源码 微信平台 仿乐享 微盟微信营销系统支持商城支付宝','仿乐享、微盟多用户微信营销系统源码，完全开源，源码保证可用！

本套源码是14.1.4日最新版！有喜帖和360全景功能！商城支持企业支付宝在线付款！测试网址http://weixin.5cando.com ,测试帐号：test   test','1401/08/52cd20692bf6e.jpg','100.00','0.00','1','0','0','1389174893','255','1','<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"font-size:18px;\"><span style=\"color:#ff0000;font-family:simhei;\">本系统支持最新，</span><span style=\"color:#444444;\"><strong><span style=\"color:#FF0000;\">最热</span></strong>的360全景，微喜帖，本地图片上传，支付版微商城（看清楚了并不是那些无良卖家的阉割版不带支付功能的商城哦！），快捷导航，一键拨号。版权设置，留言板，流量统计。前台5套模板（pigcms，微盟等热门模板），3G站32套模板。只要好评后续更新免费体验。</span></span>
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#FF0000;\">最新修正bug：</span>
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#FF0000;\">元旦我们仍在加班加点。。。下面放出更新。</span>
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"font-size:24px;\"><span style=\"color:#FF0000;\"><strong><span style=\"background-color:#FF0000;\"><span style=\"background-color:#FF9900;\"><span style=\"background-color:#F6B26B;\"><span style=\"background-color:#00FFFF;\"><span style=\"background-color:#A2C4C9;\"><span style=\"background-color:#FFD966;\"><span style=\"background-color:#FFFF00;\">今日更新：</span></span></span></span></span></span></span></strong></span></span>
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	前台添加一副模板，增加首页链接，显示，增加部分功能链接显示，更加自由。修复会员卡部分bug。修复相册部分bug。
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#FF0000;\">~~0102~修复bug</span>
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	1.增加支付宝3接口使用。测试支持担保、即时和双功能接口，让你不管申请哪个接口都能成功使用。
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	2.修复后台公众号管理页面跳转首页bug，修复公众号删除成功，跳转首页bug&nbsp;
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	3.修复喜帖场景图显示出错的bug。
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	4.更换喜帖视频，更换为支持优酷视频链接。接入更随心。
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#FF0000;\">~~12.28~修复bug</span>
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	1.修复喜帖bug
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	2.模板小bug
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	3.修复会员卡自定义背景之后改为模板背景，保存背景失效bug。
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#FF0000;\">~~12.28~修复bug</span>
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	1.会员充值支付宝功能修复
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	2.模板会员卡小bug修复。
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#FF0000;\">~~12.24~修复bug</span>
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"font-size:24px;\"><span style=\"color:#FF0000;\"><strong><span style=\"background-color:#FF0000;\"><span style=\"background-color:#FF9900;\"><span style=\"background-color:#F6B26B;\"><span style=\"background-color:#00FFFF;\"><span style=\"background-color:#A2C4C9;\"><span style=\"background-color:#FFD966;\"><span style=\"background-color:#FFFF00;\"></span></span></span></span></span></span></span></strong></span></span>&nbsp;1.修复前台仿微盟模板本地调试问题。
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	2.一些其他bug修复
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#FF0000;\">~~12.24~修复bug</span>
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	1、系统实现可以本地开发测试
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	2、修正管理后台部分不能使用功能
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	3、修改导航版权不能设置问题
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	4、商家电话不能正确保存问题
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<strong><span style=\"font-size:24px;\"><span style=\"color:#FF0000;\">我们的优势：</span></span></strong>
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"font-size:18px;\"><span style=\"color:#FF0000;\"><span style=\"font-family:simsun;\"><strong>1.8年网站技术经验，高水平公司技术团队</strong></span></span></span>
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"font-size:18px;\"><span style=\"color:#FF0000;\"><span style=\"font-family:simsun;\"><strong>2.专业网站服务，售后服务有保障</strong></span></span></span>
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"font-size:18px;\"><span style=\"color:#FF0000;\"><span style=\"font-family:simsun;\"><strong>3.程序源码持续更新，无后门，让您用着放心</strong></span></span></span>
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#FF0000;\"><span style=\"font-size:24px;\"><span style=\"font-family:simsun;\"></span></span></span>
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#FF0000;\"><span style=\"font-size:24px;\"><span style=\"font-family:simsun;\"></span></span></span>
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#3D85C6;\"><span style=\"font-size:18px;\">因源码的可复制性，一但发货后不接受任何理由退货退款，谢谢！源码保证可用，以演示网站为准。</span></span>
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#3D85C6;\"><span style=\"font-size:18px;\">为了满足客户需求，本店现在推出收费定制服务，每次根据功能大小不同收费20元以上，成功后直接转账即可，恕不退款，如遇问题安装问题请联系客服。</span></span>
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#FF9900;\"><span style=\"font-size:18px;\"><span style=\"color:#0000FF;\">恶意退款套取源码直接拉黑投诉！6小时内确认五星好评联系客服索取</span><span style=\"color:#FF0000;\">免费技术支持</span>！</span></span>
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#FF9900;\"><span style=\"font-size:18px;\">恶意差评者将视为放弃后续更新，并不负责任何售后，定制。望知悉。</span></span>
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"font-size:18px;\"></span>
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"font-size:18px;\"><span style=\"color:#ff0000;font-family:simhei;\">修复版本会定期放出。功能开发版本同样在稳定进行中。。。</span></span>
</p>','1','1','200','0','15','0.00','0.00','0.00','1','','');
INSERT INTO weixin_item ( `id`, `cate_id`, `orig_id`, `title`, `intro`, `img`, `price`, `rates`, `type`, `comments`, `cmt_taobao_time`, `add_time`, `ordid`, `status`, `info`, `news`, `tuijian`, `goods_stock`, `buy_num`, `brand`, `pingyou`, `kuaidi`, `ems`, `free`, `color`, `size` ) VALUES  ('129','346','0','香港高速空间300M，独立IP云空间 全能空间，seo优化首先','高速空间300M香港免备案','1401/08/52cd20deb4a05.jpg','200.00','0.00','1','0','0','1389175007','255','1','<div style=\"font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
		<img align=\"absMiddle\" src=\"http://img01.taobaocdn.com/imgextra/i1/23736489/T2169PXsFXXXXXXXXX_!!23736489.jpg\" style=\"vertical-align:top;\" /><img align=\"absMiddle\" src=\"http://img04.taobaocdn.com/imgextra/i4/23736489/T2L0eRXslXXXXXXXXX_!!23736489.jpg\" style=\"vertical-align:top;\" />
	</p>
	<div style=\"font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
		入门款，价格实惠
	</div>
</div>
<div style=\"font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
</div>
<div style=\"font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<h3 style=\"margin:1em 0px;padding:0px;\">
		W300型
	</h3>
网页空间：300MB支持语言：ASP/PHP/Perl/Python/Shtml数据库：赠送MySQL5 20M邮 局：赠送iGenus邮局500-5月流量：30 GB/月
</div>','1','0','200','0','14','0.00','0.00','0.00','1','','');
INSERT INTO weixin_item ( `id`, `cate_id`, `orig_id`, `title`, `intro`, `img`, `price`, `rates`, `type`, `comments`, `cmt_taobao_time`, `add_time`, `ordid`, `status`, `info`, `news`, `tuijian`, `goods_stock`, `buy_num`, `brand`, `pingyou`, `kuaidi`, `ems`, `free`, `color`, `size` ) VALUES  ('130','344','0','vps 云主机租用','世纪东方行云主机2型','1401/08/52cd21c5cc5cc.png','200.00','0.00','1','0','0','1389175238','255','1','<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-spacing:0px;color:#000000;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;text-align:start;background-color:#FFFFFF;\" class=\"ke-zeroborder\">
	<tbody>
		<tr>
			<td style=\"margin:0px;padding:0px;\">
				<div>
					<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;\">
						此为，绵阳独享10M
					</p>
				</div>
				<div style=\"margin-bottom:10px;font-size:14px;font-weight:bold;\">
					<span style=\"color:#FF0000;\">什么是云主机?云主机于Vps的区别？</span>
				</div>
				<p style=\"margin-top:0px;margin-bottom:0px;padding:0px;list-style-type:none;text-indent:24px;\">
					VPS是采用虚拟软件，VZ或VM在一台服务器上虚拟出多个类似独立服务器的部分，每个部分都可以做单独的操作系统，管理方法同服务器一样。而云主机是一种类似VPS服务器的虚拟化技术， 云主机是在一组集群服务器上虚拟出多个类似独立服务器的部分，集群中每个服务器上都有云主机的一个镜像，从而大大提高了虚拟服务器的安全稳定性，除非所有的集群内服务器全部出现问题，云主机才会无法访问。云主机，是一种基于WEB服务，提供可调整云主机配置的弹性云技术，整合了计算、存储与网络资源的Iaas服务，具备按需使用和按需即时付费能力的云主机租用服务。在灵活性、可控性、扩展性及资源复用性上都有很大的提高
				</p>
				<p style=\"margin-top:0px;margin-bottom:0px;padding:0px;list-style-type:none;text-indent:24px;\">
					云主机主要受众群体为&nbsp;<strong><span style=\"color:#CC0000;\">中小企业用户</span></strong>&nbsp;与&nbsp;<strong><span style=\"color:#CC0000;\">高端个人用户</span></strong>（如个人站长），为其提供基于互联网的基础设施服务，这一用户群体庞大，且对互联网主机应用的需求日益增加。
				</p>
				<p style=\"margin-top:0px;margin-bottom:0px;padding:0px;list-style-type:none;text-indent:24px;\">
					通常他们有这些需求：
				</p>
				<p style=\"margin-top:0px;margin-bottom:0px;padding:0px;list-style-type:none;text-indent:24px;\">
					业务以主机租用与虚拟专用服务器为主，部分采用托管服务，但规模通常不大；
				</p>
				<p style=\"margin-top:0px;margin-bottom:0px;padding:0px;list-style-type:none;text-indent:24px;\">
					注重短期投资回报率，对产品的性价比要求较高；
				</p>
				<p style=\"margin-top:0px;margin-bottom:0px;padding:0px;list-style-type:none;text-indent:24px;\">
					个性化需求强，倾向于全价值链、傻瓜型产品 。
				</p>
				<p style=\"margin-top:0px;margin-bottom:0px;padding:0px;list-style-type:none;text-indent:24px;\">
					用户在采用传统的主机服务时，由于成本、运营商选择等诸多因素，不得不面对各种棘手的问题，而弹性计算服务的推出，则有效的解决了这一问题。
				</p>
				<p style=\"margin-top:0px;margin-bottom:0px;padding:0px;list-style-type:none;text-indent:24px;\">
					&nbsp;
				</p>
			</td>
		</tr>
	</tbody>
</table>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<img align=\"absMiddle\" src=\"http://img01.taobaocdn.com/imgextra/i1/23736489/T2yfSrXw4aXXXXXXXX_!!23736489.png\" style=\"vertical-align:top;\" /><img align=\"absMiddle\" src=\"http://img02.taobaocdn.com/imgextra/i2/23736489/T2vkeFXr8aXXXXXXXX_!!23736489.png\" style=\"vertical-align:top;\" /><img align=\"absMiddle\" src=\"http://img03.taobaocdn.com/imgextra/i3/23736489/T2iZOeXwNaXXXXXXXX_!!23736489.png\" style=\"vertical-align:top;\" />
</p>','1','1','199','0','13','0.00','0.00','0.00','1','','');
INSERT INTO weixin_item ( `id`, `cate_id`, `orig_id`, `title`, `intro`, `img`, `price`, `rates`, `type`, `comments`, `cmt_taobao_time`, `add_time`, `ordid`, `status`, `info`, `news`, `tuijian`, `goods_stock`, `buy_num`, `brand`, `pingyou`, `kuaidi`, `ems`, `free`, `color`, `size` ) VALUES  ('131','350','0','最新微信商城源码 微商城 独立微商城网站 可在线支付','全网独家 价格全网最低 确保整站完整源码 后台完美修复！       

 本源码全网独有！ 修改所有BUG 安全系统与后面全部封堵 无任何安全漏洞！

指导改界面版权不像其他源码无法更改版权信息   修改过的后台可以实现所有功能','1401/08/52cd23b430208.jpg','20.00','0.00','1','0','0','1389175735','255','1','<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#0000FF;background-color:#B8D100;\"><span style=\"font-size:18px;background-color:#B8D100;\"><strong>已修复，调试模式开启下，前台后台出现的各种bug。</strong></span></span> 
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#0000ff;font-size:medium;\"><b><span style=\"background-color:#B8D100;\">更新能够在子目录下进行调试，适合个人开发。</span></b></span> 
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#0000FF;\"><span style=\"font-size:18px;\"><strong>套餐说明：<span style=\"background-color:#FF9900;\"></span></strong></span></span> 
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#0000FF;\"><span style=\"font-size:18px;\"><strong>一、只要源码&nbsp; 拍一件=5元</strong></span></span> 
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#0000FF;\"><span style=\"font-size:18px;\"><strong>二、源码+安装调试服务&nbsp; 拍5件=25元</strong></span></span> 
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#0000FF;\"><span style=\"font-size:18px;\"><strong>三、源码+安装调试服务+精品域名空间&nbsp; 拍60件=300元</strong></span></span> 
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#FF0000;\"><strong>微信公众平台演示号：weimilingshi（微零食)&nbsp; &nbsp;</strong></span> 
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	演示<strong>后台</strong>：http://wxshop.zz.idc916.com/admin.php&nbsp;&nbsp;&nbsp; admin&nbsp;&nbsp; admin888
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#FF0000;\"><strong>全网独家 价格全网最低&nbsp;确保整站完整源码 后台完美修复！&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></span> 
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	&nbsp;<span style=\"color:#FF0000;\"><strong>本源码全网独有！ 修改所有BUG 安全系统与后面全部封堵 无任何安全漏洞！</strong></span> 
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#FF0000;\"><strong>指导改界面版权不像其他源码无法更改版权信息&nbsp;&nbsp; 修改过的后台可以实现所有功能</strong></span> 
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#FF0000;\"></span> 
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#FF0000;\"><strong><strong style=\"line-height:1.5;color:#0000FF;\"><span style=\"font-size:18px;\">本源码为仅供企业使用，<span style=\"color:#FF0000;\">个人无法接入支付宝</span>！关于企业支付条件请看以下几点！</span></strong></strong></span> 
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#FF0000;\"><strong><strong><span style=\"font-size:18px;\"><span style=\"background-color:#9900FF;\"><span style=\"background-color:#FFFFFF;\"><span style=\"background-color:#FFFF00;\">企业支付接口申请条件：</span></span></span></span></strong></strong></span> 
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#FF0000;\"><strong><span style=\"color:#9900FF;\"><span style=\"font-size:18px;\">1.您必须有已建设完成的无线网站（不包含淘宝网店、团购类网站）或无线应用demo（支持.ipa .apk .xap .doc .docx .pdf格式）；<br />
2.您的网站必须已通过ICP备案，备案信息与签约商户信息一致，网站经营的商品或服务内容明确、完整（古玩、珠宝等奢侈品、投资类行业无法申请本产品）；<br />
3.您申请前必须拥有企业支付宝账号（不含个体工商户账号），且通过支付宝实名认证审核，公司实收资本≥10万元，注册企业账号。<br />
<br />
<a href=\"https://b.alipay.com/order/productDetail.htm?productId=2013080604609688\" style=\"text-decoration:none;color:#3366CC;\">https://b.alipay.com/order/productDetail.htm?productId=2013080604609688</a></span></span></strong></span> 
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<u><strong><span style=\"color:#FF0000;\">温馨提示：本商品为虚拟商品，只要安装成功能正常使用，概不退款款！恶意退款套源码的、差评师绕道。发现投诉到底！</span></strong></u> 
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;\">
	<span style=\"color:#FF0000;\"></span> 
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;color:#404040;\">
	<span style=\"color:#ff0000;font-size:medium;font-family:微软雅黑;\"><img align=\"middle\" src=\"http://img03.taobaocdn.com/imgextra/i3/67177571/T2VOMxXf4bXXXXXXXX-67177571.jpg\" style=\"vertical-align:top;\" /></span> 
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;color:#404040;\">
	<span style=\"color:#ff0000;font-size:medium;font-family:微软雅黑;\"><span style=\"color:#0000ff;font-size:small;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:#0000ff;font-size:small;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></span></span> 
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;color:#404040;\">
	<span style=\"color:#ff0000;font-size:medium;font-family:微软雅黑;\"><span style=\"color:#0000ff;font-size:small;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:#ff0000;font-size:large;\"><strong>源码微信展示界面</strong></span></span></span> 
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;color:#404040;\">
	<br />
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;color:#404040;\">
	<span style=\"color:#ff0000;font-size:medium;font-family:微软雅黑;\"><img align=\"middle\" src=\"http://img01.taobaocdn.com/imgextra/i1/67177571/T2zuByXDhXXXXXXXXX-67177571.jpg\" style=\"vertical-align:top;\" /><img align=\"middle\" src=\"http://img03.taobaocdn.com/imgextra/i3/67177571/T2snByXs8aXXXXXXXX-67177571.jpg\" width=\"640\" height=\"358\" style=\"vertical-align:top;\" /></span> 
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;color:#404040;\">
	<br />
</p>
<p style=\"margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;color:#404040;\">
	<br />
</p>','0','1','200','0','15','0.00','0.00','0.00','1','','');
DROP TABLE IF EXISTS `weixin_item_attr`;
CREATE TABLE `weixin_item_attr` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item_id` int(10) NOT NULL,
  `attr_name` varchar(50) NOT NULL,
  `attr_value` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_item_cate`;
CREATE TABLE `weixin_item_cate` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `tags` varchar(50) NOT NULL,
  `pid` smallint(4) unsigned NOT NULL,
  `spid` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `fcolor` varchar(10) NOT NULL,
  `remark` text NOT NULL,
  `add_time` int(10) NOT NULL,
  `items` int(10) unsigned NOT NULL DEFAULT '0',
  `likes` int(10) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0:商品分类 1:标签分类',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL,
  `is_index` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_item_cate ( `id`, `name`, `tags`, `pid`, `spid`, `img`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('342','鲜花','','0','0','','','','0','0','0','0','255','1','1','0','','','');
INSERT INTO weixin_item_cate ( `id`, `name`, `tags`, `pid`, `spid`, `img`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('343','盆栽','','0','0','','','','0','0','0','0','255','1','1','0','','','');
INSERT INTO weixin_item_cate ( `id`, `name`, `tags`, `pid`, `spid`, `img`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('344','红玫瑰','','342','342|','','','','0','0','0','0','255','1','1','0','','','');
INSERT INTO weixin_item_cate ( `id`, `name`, `tags`, `pid`, `spid`, `img`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('345','红玫瑰','','343','343|','','','','0','0','0','0','255','1','1','0','','','');
INSERT INTO weixin_item_cate ( `id`, `name`, `tags`, `pid`, `spid`, `img`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('346','分类','','342','342|','','','','0','0','0','0','255','1','1','0','','','');
INSERT INTO weixin_item_cate ( `id`, `name`, `tags`, `pid`, `spid`, `img`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('347','分类','','342','342|','','','','0','0','0','0','255','1','1','0','','','');
INSERT INTO weixin_item_cate ( `id`, `name`, `tags`, `pid`, `spid`, `img`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('348','分类','','342','342|','','','','0','0','0','0','255','1','1','0','','','');
INSERT INTO weixin_item_cate ( `id`, `name`, `tags`, `pid`, `spid`, `img`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('349','分类','','343','343|','','','','0','0','0','0','255','1','1','0','','','');
INSERT INTO weixin_item_cate ( `id`, `name`, `tags`, `pid`, `spid`, `img`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('350','分类','','343','343|','','','','0','0','0','0','255','1','1','0','','','');
INSERT INTO weixin_item_cate ( `id`, `name`, `tags`, `pid`, `spid`, `img`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `seo_title`, `seo_keys`, `seo_desc` ) VALUES  ('351','优惠信息','','0','0','','','','0','0','0','0','255','1','1','0','','','');
DROP TABLE IF EXISTS `weixin_item_cate_tag`;
CREATE TABLE `weixin_item_cate_tag` (
  `cate_id` smallint(4) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `weight` tinyint(3) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `cate_id` (`cate_id`,`tag_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('3','1','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('4','2','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('5','3','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('6','4','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('7','5','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('8','6','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('9','7','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('10','8','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('11','9','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('12','10','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('17','11','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('18','12','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('21','13','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('23','14','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('22','15','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('24','16','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('25','17','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('26','18','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('27','19','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('28','20','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('29','21','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('30','22','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('32','23','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('33','24','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('34','25','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('35','26','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('36','27','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('37','28','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('38','29','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('39','30','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('41','31','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('42','32','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('43','33','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('44','34','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('45','35','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('46','14','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('47','36','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('48','37','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('49','38','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('319','39','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('318','40','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('317','41','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('316','42','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('320','43','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('321','44','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('322','45','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('323','46','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('91','96','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('92','97','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('93','98','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('94','99','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('281','100','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('95','101','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('282','102','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('283','103','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('96','104','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('284','105','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('97','106','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('285','107','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('98','108','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('99','109','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('286','110','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('100','111','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('287','112','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('101','113','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('288','114','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('289','115','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('290','116','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('291','117','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('292','118','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('293','119','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('294','120','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('295','121','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('296','122','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('297','123','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('298','124','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('299','125','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('300','126','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('301','127','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('302','128','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('303','129','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('304','130','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('305','131','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('306','132','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('307','133','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('308','134','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('309','135','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('310','136','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('219','137','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('311','138','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('312','139','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('313','140','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('314','141','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('260','142','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('261','143','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('262','144','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('263','145','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('264','146','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('265','147','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('266','148','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('267','149','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('268','150','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('269','151','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('270','152','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('271','153','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('272','154','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('273','155','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('274','156','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('275','157','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('276','158','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('277','159','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('278','160','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('279','161','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('280','162','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('237','163','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('238','164','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('239','165','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('240','166','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('241','167','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('242','168','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('243','169','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('244','170','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('245','171','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('246','172','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('247','173','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('248','174','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('249','175','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('250','176','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('251','177','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('206','178','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('207','179','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('208','180','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('209','181','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('210','182','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('211','183','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('212','184','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('213','185','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('214','186','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('215','187','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('216','188','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('217','189','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('218','190','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('220','191','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('221','192','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('222','193','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('223','194','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('224','195','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('225','196','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('226','196','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('226','137','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('227','197','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('228','198','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('229','199','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('230','200','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('231','201','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('232','202','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('233','203','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('234','204','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('236','205','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('235','206','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('252','207','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('253','208','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('254','209','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('255','210','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('256','211','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('257','212','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('258','213','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('259','214','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('178','215','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('179','216','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('180','267','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('181','268','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('182','269','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('183','270','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('184','271','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('185','289','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('186','290','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('187','291','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('188','292','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('189','293','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('190','294','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('191','295','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('192','296','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('193','297','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('194','330','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('195','336','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('196','337','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('197','338','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('198','339','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('199','340','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('200','341','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('201','342','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('202','343','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('203','344','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('204','345','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('205','346','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('170','347','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('171','25','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('172','26','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('173','30','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('174','348','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('175','27','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('176','349','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('177','259','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('177','28','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('163','350','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('164','351','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('165','352','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('166','353','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('167','354','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('168','355','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('169','314','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('127','356','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('128','357','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('130','358','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('132','359','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('81','360','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('82','301','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('83','323','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('84','361','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('85','300','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('86','318','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('87','362','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('88','332','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('89','192','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('74','363','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('75','364','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('76','365','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('77','366','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('78','367','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('79','368','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('61','97','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('61','369','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('62','370','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('63','371','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('64','372','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('316','373','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('316','374','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('316','375','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('65','376','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('65','377','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('66','378','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('67','379','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('68','380','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('69','381','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('70','382','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('71','308','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('72','383','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('52','384','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('53','349','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('54','385','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('55','28','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('56','27','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('57','386','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('58','25','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('59','30','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('133','387','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('135','388','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('137','389','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('139','390','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('140','246','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('141','391','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('143','392','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('145','241','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('148','393','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('150','394','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('151','259','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('152','395','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('154','237','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('156','238','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('158','396','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('160','397','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('161','218','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('113','398','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('117','371','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('118','372','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('119','399','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('119','400','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('120','27','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('121','28','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('122','401','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('123','233','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('104','220','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('105','402','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('106','403','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('107','404','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('108','405','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('109','406','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('110','302','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('111','223','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('325','42','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('325','374','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('325','375','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('326','39','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('326','407','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('327','46','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('327','408','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('327','409','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('327','410','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('327','411','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('328','41','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('328','412','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('328','413','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('328','414','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('329','44','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('329','415','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('330','45','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('330','416','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('331','43','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('331','373','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('332','40','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('332','417','0');
INSERT INTO weixin_item_cate_tag ( `cate_id`, `tag_id`, `weight` ) VALUES  ('332','418','0');
DROP TABLE IF EXISTS `weixin_item_comment`;
CREATE TABLE `weixin_item_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `uname` varchar(20) NOT NULL,
  `info` text NOT NULL,
  `add_time` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_item_img`;
CREATE TABLE `weixin_item_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_item_img ( `id`, `item_id`, `url`, `add_time`, `ordid`, `status` ) VALUES  ('521','127','1401/08/52cd1fcebe2b8.png','1389174735','255','1');
INSERT INTO weixin_item_img ( `id`, `item_id`, `url`, `add_time`, `ordid`, `status` ) VALUES  ('520','127','1401/08/52cd1fceb255d.jpg','1389174735','255','1');
INSERT INTO weixin_item_img ( `id`, `item_id`, `url`, `add_time`, `ordid`, `status` ) VALUES  ('519','127','1401/08/52cd1fce2b509.jpg','1389174735','255','1');
INSERT INTO weixin_item_img ( `id`, `item_id`, `url`, `add_time`, `ordid`, `status` ) VALUES  ('522','128','1401/08/52cd20692bf6e.jpg','1389174893','255','1');
INSERT INTO weixin_item_img ( `id`, `item_id`, `url`, `add_time`, `ordid`, `status` ) VALUES  ('523','129','1401/08/52cd20deb4a05.jpg','1389175007','255','1');
INSERT INTO weixin_item_img ( `id`, `item_id`, `url`, `add_time`, `ordid`, `status` ) VALUES  ('524','130','1401/08/52cd21c5cc5cc.png','1389175238','255','1');
INSERT INTO weixin_item_img ( `id`, `item_id`, `url`, `add_time`, `ordid`, `status` ) VALUES  ('525','130','1401/08/52cd21c6117ab.jpg','1389175238','255','1');
INSERT INTO weixin_item_img ( `id`, `item_id`, `url`, `add_time`, `ordid`, `status` ) VALUES  ('526','131','1401/08/52cd23b430208.jpg','1389175735','255','1');
DROP TABLE IF EXISTS `weixin_item_like`;
CREATE TABLE `weixin_item_like` (
  `item_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `add_time` int(10) NOT NULL,
  PRIMARY KEY (`item_id`,`uid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_item_order`;
CREATE TABLE `weixin_item_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` varchar(50) NOT NULL COMMENT '订单号',
  `add_time` int(11) DEFAULT NULL COMMENT '下单时间',
  `goods_sumPrice` decimal(10,2) NOT NULL COMMENT '商品总额',
  `order_sumPrice` decimal(10,2) NOT NULL COMMENT '订单总额',
  `note` text CHARACTER SET utf8 COMMENT '客服备注',
  `userId` int(11) NOT NULL COMMENT '用户ID',
  `userName` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '用户名',
  `address_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '收货人',
  `mobile` varchar(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系手机',
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '收货地址',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '订单状态 1:待付款 2：待发货  3:待收货 4:完成 5:关闭',
  `supportmetho` tinyint(5) DEFAULT NULL COMMENT '支付方式 1:支付宝 2:货到付款',
  `freetype` int(11) DEFAULT NULL COMMENT '用户快递方式  1:平邮 2:快递 3:ems 0:卖家包邮',
  `freeprice` decimal(10,2) DEFAULT '0.00' COMMENT '快递费用',
  `closemsg` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '关闭原因',
  `support_time` int(11) DEFAULT NULL COMMENT '支付时间',
  `sellerRemark` text CHARACTER SET utf8 COMMENT '客服备注',
  `userfree` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '给用户配送快递方式 0:无需快递',
  `freecode` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '快递编号',
  `fahuoaddress` int(11) DEFAULT NULL COMMENT '发货地址',
  `fahuo_time` int(11) DEFAULT NULL COMMENT '发货时间',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_item_orig`;
CREATE TABLE `weixin_item_orig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_item_orig ( `id`, `img`, `name`, `url`, `ordid` ) VALUES  ('1','50b2e721a6c1e_thumb.jpg','淘宝','taobao.com','0');
INSERT INTO weixin_item_orig ( `id`, `img`, `name`, `url`, `ordid` ) VALUES  ('2','50b2e726d4ade_thumb.jpg','天猫','tmall.com','0');
DROP TABLE IF EXISTS `weixin_item_site`;
CREATE TABLE `weixin_item_site` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `config` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_item_tag`;
CREATE TABLE `weixin_item_tag` (
  `item_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `item_id` (`item_id`,`tag_id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('127','536');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('128','537');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('128','538');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('128','539');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('128','540');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('128','541');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('128','542');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('128','543');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('128','544');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('128','545');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('129','546');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('129','547');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('129','548');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('129','549');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('129','550');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('129','551');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('129','552');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('129','553');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('129','554');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('130','555');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('130','556');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('131','537');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('131','540');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('131','543');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('131','550');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('131','557');
INSERT INTO weixin_item_tag ( `item_id`, `tag_id` ) VALUES  ('131','558');
DROP TABLE IF EXISTS `weixin_keyword`;
CREATE TABLE `weixin_keyword` (
  `kid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kename` varchar(300) DEFAULT NULL,
  `kecontent` varchar(500) DEFAULT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1:文本 2：图文',
  `kyword` varchar(255) DEFAULT NULL,
  `titles` varchar(1000) DEFAULT NULL,
  `imageinfo` varchar(1000) DEFAULT NULL,
  `linkinfo` varchar(1000) DEFAULT NULL,
  `ismess` tinyint(1) DEFAULT NULL,
  `isfollow` tinyint(1) DEFAULT NULL,
  `iskey` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`kid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_keyword ( `kid`, `kename`, `kecontent`, `type`, `kyword`, `titles`, `imageinfo`, `linkinfo`, `ismess`, `isfollow`, `iskey` ) VALUES  ('95','','','2','','a:3:{i:0;s:30:\"欢迎关注我的微信号码\";i:1;s:36:\"多谢关注，送上优惠信息了\";i:2;s:12:\"新品推荐\";}','a:3:{i:0;s:45:\"data/upload/keyword/1401/07/52cbc52384c65.jpg\";i:1;s:45:\"data/upload/keyword/1401/07/52cbc4f80776c.jpg\";i:2;s:45:\"data/upload/keyword/1401/07/52cbc52384c65.jpg\";}','a:3:{i:0;s:13:\"wap.baidu.com\";i:1;s:13:\"wap.baidu.com\";i:2;s:13:\"wap.baidu.com\";}','','1','');
INSERT INTO weixin_keyword ( `kid`, `kename`, `kecontent`, `type`, `kyword`, `titles`, `imageinfo`, `linkinfo`, `ismess`, `isfollow`, `iskey` ) VALUES  ('93','欢迎光临','您好，欢迎光临<a href=\"/\">温馨小店</a>','1','你好 您好','','','','','','1');
INSERT INTO weixin_keyword ( `kid`, `kename`, `kecontent`, `type`, `kyword`, `titles`, `imageinfo`, `linkinfo`, `ismess`, `isfollow`, `iskey` ) VALUES  ('94','','','2','','a:3:{i:0;s:39:\"您好，进入商城优惠多多哦！\";i:1;s:12:\"热门优惠\";i:2;s:12:\"温馨家居\";}','a:3:{i:0;s:45:\"data/upload/keyword/1401/07/52cbb0f95d5fd.jpg\";i:1;s:45:\"data/upload/keyword/1401/07/52cbc52a91bf4.jpg\";i:2;s:45:\"data/upload/keyword/1401/07/52cbc52384c65.jpg\";}','a:3:{i:0;s:13:\"wap.baidu.com\";i:1;s:14:\"www.taobao.com\";i:2;s:15:\"www.sina.com.cn\";}','1','','');
DROP TABLE IF EXISTS `weixin_mail_queue`;
CREATE TABLE `weixin_mail_queue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mail_to` varchar(120) NOT NULL,
  `mail_subject` varchar(255) NOT NULL,
  `mail_body` text NOT NULL,
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `err_num` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL,
  `lock_expiry` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_menu`;
CREATE TABLE `weixin_menu` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pid` smallint(6) NOT NULL,
  `module_name` varchar(20) NOT NULL,
  `action_name` varchar(20) NOT NULL,
  `data` varchar(120) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `often` tinyint(1) NOT NULL DEFAULT '0',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `display` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('1','全局','0','setting','index','','','0','0','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('2','核心设置','1','setting','index','','','0','0','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('3','全局参数','148','setting','index','&type=site','','0','2','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('4','邮件设置','148','setting','index','&type=mail','','0','5','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('172','专辑管理','285','album','index','','','0','4','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('6','菜单管理','2','menu','index','','','0','7','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('7','新增','6','menu','add','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('8','编辑','6','menu','edit','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('9','删除','6','menu','delete','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('10','运营','0','operate','index','','','0','4','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('11','广告管理','10','advert','index','','','0','2','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('12','广告管理','11','ad','index','','','5','0','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('13','广告位管理','11','adboard','index','','','0','0','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('14','友情链接','10','flink','index','','','0','3','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('15','友情链接','14','flink','index','','','0','0','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('16','链接分类','14','flink_cate','index','','','0','0','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('17','新增','15','flink','add','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('18','编辑','15','flink','edit','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('19','删除','15','flink','delete','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('20','新增','16','flink_cate','add','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('21','编辑','16','flink_cate','edit','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('22','删除','16','flink_cate','del','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('23','新增','12','ad','add','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('24','编辑','12','ad','edit','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('25','删除','12','ad','delete','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('26','新增','13','adboard','add','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('27','编辑','13','adboard','edit','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('28','删除','13','adboard','delete','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('29','数据','0','data','index','','','0','5','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('258','商品分类','256','score_item_cate','index','','','0','255','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('31','数据库管理','29','backup','index','','','0','2','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('32','数据备份','31','backup','index','','','0','0','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('33','数据恢复','31','backup','restore','','','0','0','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('34','缓存管理','254','cache','index','','','0','0','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('195','登陆接口','245','oauth','index','','','0','2','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('36','黑名单管理','117','ipban','index','','','0','3','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('37','新增','36','ipban','add','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('38','编辑','36','ipban','edit','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('50','商品','0','content','index','','','0','1','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('51','商品管理','50','article','index','','','0','1','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('52','商品管理','51','item','index','','','1','1','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('54','编辑','52','article','edit','','','0','3','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('190','删除','52','item','delete','','','0','4','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('56','商品分类','51','item_cate','index','','','1','6','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('57','新增','56','article_cate','add','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('58','编辑','56','article_cate','edit','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('59','删除','56','article_cate','delete','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('60','管理员管理','1','admin','index','','','0','4','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('61','管理员管理','60','admin','index','','','7','0','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('62','新增','61','admin','add','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('63','编辑','61','admin','edit','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('64','删除','61','admin','delete','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('65','角色管理','60','admin_role','index','','','7','0','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('66','新增','65','admin_role','add','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('192','淘宝采集','164','collect_alimama','index','','','0','0','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('70','用户','0','user','index','','','0','3','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('119','新增','149','user','add','','','0','3','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('118','编辑','149','user','edit','','','0','4','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('117','会员管理','70','user','index','','','0','0','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('156','文章分类','154','article_cate','index','','','0','3','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('151','导航设置','216','nav','index','','','0','1','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('149','会员管理','117','user','index','','','0','1','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('150','删除','149','user','delete','','','0','5','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('152','主导航','151','nav','index','&type=main','','0','1','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('153','底部导航','151','nav','index','&type=bottom','','0','2','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('154','文章管理','10','article','index','','','0','1','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('155','文章管理','154','article','index','','','0','1','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('148','站点设置','2','setting','index','','','0','0','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('157','添加文章','155','article','add','','','0','2','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('158','编辑','155','article','edit','','','0','3','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('159','删除','155','article','delete','','','0','4','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('160','新增','156','article_cate','add','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('161','编辑','156','article_cate','编辑','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('162','删除','156','article_cate','delete','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('164','商品采集','50','item_collect','index','','','0','2','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('173','专辑管理','172','album','index','','','0','1','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('174','专辑分类','172','album_cate','index','','','0','3','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('175','新增','174','album_cate','add','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('176','编辑','174','album_cate','edit','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('177','删除','174','album_cate','delete','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('178','敏感词管理','254','badword','index','','','0','4','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('179','新增','178','badword','add','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('180','编辑','178','badword','edit','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('181','删除','36','ipban','delete','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('182','删除','178','badword','delete','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('255','采集马甲','117','auto_user','index','','','0','2','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('184','标签管理','254','tag','index','','','0','3','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('185','商品接口','245','item_site','index','','','0','1','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('186','商品评论','51','item_comment','index','','','0','7','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('187','删除','186','item_comment','delete','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('265','删除','257','score_item','edit','','','0','4','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('250','一键删除','51','item','delete_search','','','0','5','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('198','新增','196','message','add','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('199','商品来源','51','item_orig','index','','','0','6','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('200','新增','199','item_orig','add','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('201','编辑','199','item_orig','edit','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('202','删除','199','item_orig','delete','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('203','商品审核','51','item','check','','','0','5','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('249','添加商品','51','item','add','','','1','3','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('259','新增','258','score_item_cate','add','','','0','255','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('268','批量添加','164','collect_batch','index','','','0','255','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('269','积分设置','2','score','setting','','','0','3','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('210','专辑审核','172','album','check','','','0','2','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('257','积分商品','256','score_item','index','','','0','255','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('212','日志管理','29','log','index','','','0','3','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('213','管理员日志','212','log','index','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('214','用户日志','212','log','user','','','0','0','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('215','积分日志','212','log','score','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('216','界面设置','1','setting','index','&type=show','','0','2','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('256','积分商城','70','score_item','index','','','0','255','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('254','系统数据','29','tag','index','','','0','1','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('264','编辑','257','score_item','edit','','','0','3','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('263','添加商品','257','score_item','add','','','0','2','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('262','积分订单','256','score_order','index','','','0','255','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('261','删除','258','score_item_cate','delete','','','0','255','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('260','编辑','258','score_item_cate','edit','','','0','255','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('232','站内信管理','70','message','index','','','0','0','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('233','系统通知','232','message','index','&type=1','','0','0','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('234','用户私信','232','message','index','&type=2','','0','0','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('235','通知模版','2','message_tpl','index','&type=msg','','0','4','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('236','添加模版','235','message_tpl','add','','','0','7','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('237','编辑','235','message_tpl','edit','','','0','255','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('238','删除','235','message_tpl','delete','','','0','255','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('240','单页管理','154','article','page','','','0','2','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('242','积分记录','269','score','logs','','','0','2','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('244','应用','0','plugin','index','','','0','6','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('245','系统接口','244','apis','index','','','0','1','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('246','应用管理','244','plugin','index','','','0','3','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('247','应用中心','246','plugin','index','','','0','0','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('248','已安装应用','246','plugin','list','','','0','0','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('252','用户整合','245','integrate','index','','','0','255','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('253','图片模式','52','item','index','&sm=image','','0','2','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('267','批量注册','149','user','add_users','','','0','2','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('270','邮件模板','235','message_tpl','index','&type=mail','','0','6','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('271','短消息模板','235','message_tpl','index','&type=msg','','0','5','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('272','附件设置','148','setting','index','&type=attachment','','0','4','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('273','显示设置','216','setting','index','&type=style','','0','2','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('274','模板管理','216','template','index','','','0','3','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('275','站点设置','148','setting','index','','','6','1','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('276','积分设置','269','score','setting','','','0','1','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('277','商品管理','52','item','index','','','0','1','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('278','文章管理','155','article','index','','','0','1','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('279','会员管理','149','user','index','','','3','1','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('280','积分商品','257','score_item','index','','','0','1','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('281','淘宝评论','164','cmt_taobao','index','','','0','255','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('282','SEO设置','2','seo','url','','','0','5','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('283','UR静态化','282','seo','url','','','0','255','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('284','页面SEO','282','seo','page','','','0','255','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('285','专辑','0','album','index','','','0','2','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('286','注册登陆','2','setting','user','','','6','2','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('293','编辑','291','brandlist',' edit','','','0','255','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('292','新增','291','brandlist','add','','','0','255','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('291','品牌管理','51','brandlist','index','','','1','1','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('294','删除','291','brandlist','delete','','','0','255','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('295','交易管理','50','item_order','index','','','0','255','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('296','订单管理','295','item_order','index','','','2','255','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('297','快递方式管理','295','delivery','index','','','2','255','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('298','发货地址管理','295','address','index','','','2','255','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('299','微信回复','0','keyword','index','','','0','2','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('300','回复设置','299','keyword','index','','','0','255','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('301','关键词自动回复','300','keyword','addkeyword','','','4','255','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('302','消息自动回复','300','keyword','addmess','','','4','255','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('303','关注自动回复','300','keyword','addfollow','','','4','255','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('304','收款方式设置','295','alipay','index','','','2','255','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('305','自定义菜单','300','custom_menu','index','','','4','255','1');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('306','添加','305','custom_menu','add','','','0','255','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('307','编辑','305','custom_menu','edit','','','0','255','0');
INSERT INTO weixin_menu ( `id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display` ) VALUES  ('308','删除','305','custom_menu','delete','','','0','255','0');
DROP TABLE IF EXISTS `weixin_message`;
CREATE TABLE `weixin_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ftid` int(10) unsigned NOT NULL,
  `from_id` int(10) NOT NULL,
  `from_name` varchar(50) NOT NULL,
  `to_id` int(10) NOT NULL,
  `to_name` varchar(50) NOT NULL,
  `add_time` int(10) NOT NULL,
  `info` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_message_tpl`;
CREATE TABLE `weixin_message_tpl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `is_sys` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `alias` varchar(50) NOT NULL COMMENT '别名',
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_message_tpl ( `id`, `type`, `is_sys`, `name`, `alias`, `content` ) VALUES  ('1','msg','1','登录','login','<p>
	欢迎
</p>
<p>
	<br />
</p>
<div>
	<p>
		<span style=\"font-size:10.5000pt;font-family:\'宋体\';\">拼品网是一个集购物与分享与一体的网站，它会带给你惊喜，它让你与心仪的宝贝不期而遇，同时和朋友一起逛，分享每一次的购物乐趣，惊喜不断<span>~</span></span><span style=\"font-size:10.5000pt;font-family:\'宋体\';\"></span> 
	</p>
	<p>
		<span style=\"font-size:10.5000pt;font-family:\'宋体\';\"></span> 
	</p>
	<p>
		<span style=\"font-size:10.5000pt;font-family:\'宋体\';\">为了更好地开始专属于你的购物之旅，你可以：</span><span style=\"font-size:10.5000pt;font-family:\'宋体\';\"></span> 
	</p>
	<p>
		<span style=\"font-size:10.5000pt;font-family:\'宋体\';\"></span> 
	</p>
	<p>
		<span style=\"font-size:10.5000pt;font-family:\'宋体\';\">1<span>、发现更多美好</span></span><span style=\"font-size:10.5000pt;font-family:\'宋体\';\"></span> 
	</p>
	<p>
		<span style=\"font-size:10.5000pt;font-family:\'宋体\';\"></span> 
	</p>
	<p>
		<span style=\"font-size:10.5000pt;font-family:\'宋体\';\">2<span>、寻找喜好相投的好友</span></span><span style=\"font-size:10.5000pt;font-family:\'宋体\';\"></span> 
	</p>
	<p>
		<span style=\"font-size:10.5000pt;font-family:\'宋体\';\"></span> 
	</p>
	<p>
		<span style=\"font-size:10.5000pt;font-family:\'宋体\';\">4<span>、创建属于自己的专辑</span></span><span style=\"font-size:10.5000pt;font-family:\'宋体\';\"></span> 
	</p>
	<p>
		<span style=\"font-size:10.5000pt;font-family:\'宋体\';\"></span> 
	</p>
	<p>
		<span style=\"font-size:10.5000pt;font-family:\'宋体\';\">5<span>、邀请你的好友一起发现美丽</span></span><span style=\"font-size:10.5000pt;font-family:\'宋体\';\"></span> 
	</p>
	<p>
		<span style=\"font-size:10.5000pt;font-family:\'宋体\';\"></span> 
	</p>
	<p>
		<span style=\"font-size:10.5000pt;font-family:\'宋体\';\">6<span>、分享更多好东西</span></span><span style=\"font-size:10.5000pt;font-family:\'宋体\';\"></span> 
	</p>
	<p>
		<span style=\"font-size:10.5000pt;font-family:\'宋体\';\"></span> 
	</p>
	<p>
		<span style=\"font-size:10.5000pt;font-family:\'宋体\';\"></span> 
	</p>
	<p>
		<span style=\"font-size:10.5000pt;font-family:\'宋体\';\">欢迎联系使用拼品网，我们随时恭候你的提问和建议。</span><span style=\"font-size:10.5000pt;font-family:\'宋体\';\"></span> 
	</p>
	<p>
		<span style=\"font-size:10.5000pt;font-family:\'宋体\';\">祝您玩的愉快<span>^^</span></span> 
	</p>
</div>
<p>
	<br />
</p>');
INSERT INTO weixin_message_tpl ( `id`, `type`, `is_sys`, `name`, `alias`, `content` ) VALUES  ('3','mail','1','找回密码','findpwd','<p>
	尊敬的{$username}:
</p>
<p style=\"padding-left:30px;\">
	您好, 您刚才在 {$site_name} 申请了重置密码，请点击下面的链接进行重置：
</p>
<p style=\"padding-left:30px;\">
	<a href=\"{$reset_url}\">{$reset_url}</a> 
</p>
<p style=\"padding-left:30px;\">
	此链接只能使用一次, 如果失效请重新申请. 如果以上链接无法点击，请将它拷贝到浏览器(例如IE)的地址栏中。
</p>
<p style=\"text-align:right;\">
	{$site_name}
</p>
<p style=\"text-align:right;\">
	{$send_time}
</p>');
DROP TABLE IF EXISTS `weixin_nav`;
CREATE TABLE `weixin_nav` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `alias` varchar(20) NOT NULL,
  `link` varchar(255) NOT NULL,
  `target` tinyint(1) NOT NULL DEFAULT '1',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `mod` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_nav ( `id`, `type`, `name`, `alias`, `link`, `target`, `ordid`, `mod`, `status` ) VALUES  ('1','main','发现','book','','0','255','sys','1');
INSERT INTO weixin_nav ( `id`, `type`, `name`, `alias`, `link`, `target`, `ordid`, `mod`, `status` ) VALUES  ('2','main','专辑','album','','0','255','sys','1');
INSERT INTO weixin_nav ( `id`, `type`, `name`, `alias`, `link`, `target`, `ordid`, `mod`, `status` ) VALUES  ('3','main','集市','cate','?m=book&a=cate&cid=1','0','255','','1');
INSERT INTO weixin_nav ( `id`, `type`, `name`, `alias`, `link`, `target`, `ordid`, `mod`, `status` ) VALUES  ('4','bottom','发现','book','','0','255','sys','1');
INSERT INTO weixin_nav ( `id`, `type`, `name`, `alias`, `link`, `target`, `ordid`, `mod`, `status` ) VALUES  ('5','main','兑换','exchange','','0','255','sys','1');
INSERT INTO weixin_nav ( `id`, `type`, `name`, `alias`, `link`, `target`, `ordid`, `mod`, `status` ) VALUES  ('6','bottom','专辑','album','','0','255','sys','1');
INSERT INTO weixin_nav ( `id`, `type`, `name`, `alias`, `link`, `target`, `ordid`, `mod`, `status` ) VALUES  ('7','bottom','集市','cate','?m=book&a=cate&cid=1','0','255','','1');
INSERT INTO weixin_nav ( `id`, `type`, `name`, `alias`, `link`, `target`, `ordid`, `mod`, `status` ) VALUES  ('8','bottom','兑换','exchange','','0','255','sys','1');
DROP TABLE IF EXISTS `weixin_oauth`;
CREATE TABLE `weixin_oauth` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `config` text NOT NULL,
  `desc` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_order_detail`;
CREATE TABLE `weixin_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '订单编号',
  `itemId` int(11) NOT NULL COMMENT '商品ID',
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品名称',
  `img` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '图片路径',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '单价',
  `quantity` int(11) NOT NULL COMMENT '购买数量',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_order_detail ( `id`, `orderId`, `itemId`, `title`, `img`, `price`, `quantity` ) VALUES  ('24','201401081821181719','130','vps 云主机租用','1401/08/52cd21c5cc5cc.png','200.00','1');
INSERT INTO weixin_order_detail ( `id`, `orderId`, `itemId`, `title`, `img`, `price`, `quantity` ) VALUES  ('25','201401081823421837','127','300Ｍ','1401/08/52cd1fce2b509.jpg','200.00','1');
DROP TABLE IF EXISTS `weixin_score_item`;
CREATE TABLE `weixin_score_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` smallint(4) unsigned NOT NULL,
  `title` varchar(120) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0：实物；1：虚拟',
  `img` varchar(255) NOT NULL,
  `score` int(10) unsigned NOT NULL DEFAULT '0',
  `stock` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_num` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `buy_num` mediumint(8) NOT NULL DEFAULT '0',
  `desc` text NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_score_item_cate`;
CREATE TABLE `weixin_score_item_cate` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_score_log`;
CREATE TABLE `weixin_score_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `score` int(10) NOT NULL,
  `add_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_score_order`;
CREATE TABLE `weixin_score_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(100) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `uname` varchar(20) NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `item_name` varchar(120) NOT NULL,
  `item_num` mediumint(8) NOT NULL,
  `consignee` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `order_score` int(10) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_setting`;
CREATE TABLE `weixin_setting` (
  `name` varchar(100) NOT NULL,
  `data` text NOT NULL,
  `remark` varchar(255) NOT NULL,
  KEY `name` (`name`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('site_name','苏州花卉商城','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('site_title','苏州花卉商城','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('site_keyword','苏州花卉商城','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('site_description','苏州花卉商城','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('site_status','1','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('closed_reason','网站升级中。。','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('site_icp','','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('statistics_code','','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('statics_url','','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('mail_server','','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('item_check','0','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('score_rule','a:16:{s:8:\"register\";s:2:\"20\";s:13:\"register_nums\";s:1:\"1\";s:5:\"login\";s:2:\"10\";s:10:\"login_nums\";s:1:\"5\";s:7:\"pubitem\";s:2:\"20\";s:12:\"pubitem_nums\";s:2:\"10\";s:8:\"likeitem\";s:1:\"1\";s:13:\"likeitem_nums\";s:2:\"20\";s:9:\"joinalbum\";s:1:\"2\";s:14:\"joinalbum_nums\";s:2:\"10\";s:6:\"fwitem\";s:1:\"2\";s:11:\"fwitem_nums\";s:2:\"10\";s:6:\"pubcmt\";s:1:\"1\";s:11:\"pubcmt_nums\";s:1:\"5\";s:7:\"delitem\";s:3:\"-20\";s:12:\"delitem_nums\";s:3:\"100\";}','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('album_cover_items','5','专辑封面显示图片数量');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('integrate_code','default','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('integrate_config','','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('hot_tags','家居,花园,美食,旅行,创意,建筑,户外,飘窗,卧室,城堡,DIY,萌宠,门厅,衣帽间,婚礼,书房,厨房,客厅,浴室,阳台,工作台,收纳,餐厅,阁楼,儿童房,小空间,性感','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('wall_spage_max','5','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('wall_spage_size','50','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('book_page_max','100','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('default_keyword','懒得逛了，我搜~','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('album_default_title','默认专辑','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('avatar_size','24,32,48,64,100,200','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('attr_allow_exts','jpg,gif,png,jpeg,swf','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('attr_allow_size','2048','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('itemcate_img','a:2:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"170\";}','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('reg_protocol','一、总则
1．1　用户应当同意本协议的条款并按照页面上的提示完成全部的注册程序。用户在进行注册程序过程中点击\"立即注册\"按钮即表示用户与拼品网公司达成协议，完全接受本协议项下的全部条款。
1．2　用户注册成功后，拼品网将给予每个用户一个用户帐号及相应的密码，该用户帐号和密码由用户负责保管；用户应当对以其用户帐号进行的所有活动和事件负法律责任。
1．3　用户可以使用拼品网各个频道单项服务，当用户使用拼品网各单项服务时，用户的使用行为视为其对该单项服务的服务条款以及拼品网在该单项服务中发出的各类公告的同意。
1．4　拼品网会员服务协议以及各个频道单项服务条款和公告可由拼品网公司随时更新，且无需另行通知。您在使用相关服务时,应关注并遵守其所适用的相关条款。
您在使用拼品网提供的各项服务之前，应仔细阅读本服务协议。如您不同意本服务协议及/或随时对其的修改，您可以主动取消拼品网提供的服务；您一旦使用拼品网产品，即视为您已了解并完全同意本服务协议各项内容，包括拼品网对服务协议随时所做的任何修改，并成为拼品网用户。
二、注册信息和隐私保护
2．1　 拼品网帐号（即拼品网用户ID）的所有权归拼品网，用户完成注册申请手续后，获得拼品网帐号的使用权。用户应提供及时、详尽及准确的个人资料，并不断更新注册资料，符合及时、详尽准确的要求。所有原始键入的资料将引用为注册资料。如果因注册信息不真实而引起的问题，并对问题发生所带来的后果，拼品网概不负任何责任。
2．2　用户不应将其帐号、密码转让或出借予他人使用。如用户发现其帐号遭他人非法使用，应立即通知拼品网。因黑客行为或用户的保管疏忽导致帐号、密码遭他人非法使用，拼品网不承担任何责任。
2．3　拼品网不对外公开或向第三方提供单个用户的注册资料，除非：
（1）事先获得用户的明确授权；
（2）只有透露你的个人资料，才能提供你所要求的产品和服务；
（3）根据有关的法律法规要求；
（4）按照相关政府主管部门的要求；
（5）为维护拼品网的合法权益。
2．4　在你注册拼品网帐户，使用其他拼品网产品或服务，访问拼品网网页, 或参加促销和有奖游戏时，拼品网会收集你的个人身份识别资料，并会将这些资料用于：改进为你提供的服务及网页内容。
三、使用规则
3．1　用户在使用拼品网服务时，必须遵守中华人民共和国相关法律法规的规定，用户应同意将不会利用本服务进行任何违法或不正当的活动，包括但不限于下列行为∶
（1）上载、展示、张贴、传播或以其它方式传送含有下列内容之一的信息：
1） 反对宪法所确定的基本原则的； 2） 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的； 3） 损害国家荣誉和利益的； 4） 煽动民族仇恨、民族歧视、破坏民族团结的； 5） 破坏国家宗教政策，宣扬邪教和封建迷信的； 6） 散布谣言，扰乱社会秩序，破坏社会稳定的； 7） 散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的； 8） 侮辱或者诽谤他人，侵害他人合法权利的； 9） 含有虚假、有害、胁迫、侵害他人隐私、骚扰、侵害、中伤、粗俗、猥亵、或其它道德上令人反感的内容； 10） 含有中国法律、法规、规章、条例以及任何具有法律效力之规范所限制或禁止的其它内容的；
（2）不得为任何非法目的而使用网络服务系统；
（3）不利用拼品网服务从事以下活动：
1) 未经允许，进入计算机信息网络或者使用计算机信息网络资源的；
2) 未经允许，对计算机信息网络功能进行删除、修改或者增加的；
3) 未经允许，对进入计算机信息网络中存储、处理或者传输的数据和应用程序进行删除、修改或者增加的；
4) 故意制作、传播计算机病毒等破坏性程序的；
5) 其他危害计算机信息网络安全的行为。
3．2　 用户违反本协议或相关的服务条款的规定，导致或产生的任何第三方主张的任何索赔、要求或损失，包括合理的律师费，您同意赔偿拼品网与合作公司、关联公司，并使之免受损害。对此，拼品网有权视用户的行为性质，采取包括但不限于删除用户发布信息内容、暂停使用许可、终止服务、限制使用、回收拼品网帐号、追 究法律责任等措施。对恶意注册拼品网帐号或利用拼品网帐号进行违法活动、捣乱、骚扰、欺骗、其他用户以及其他违反本协议的行为，拼品网有权回收其帐号。同 时，拼品网公司会视司法部门的要求，协助调查。
3．3　用户不得对本服务任何部分或本服务之使用或获得，进行复制、拷贝、出售、转售或用于任何其它商业目的。
3．4　用户须对自己在使用拼品网服务过程中的行为承担法律责任。用户承担法律责任的形式包括但不限于：对受到侵害者进行赔偿，以及在拼品网公司首先承担了因用户行为导致的行政处罚或侵权损害赔偿责任后，用户应给予拼品网公司等额的赔偿。
四、服务内容
4．1　拼品网网络服务的具体内容由拼品网根据实际情况提供。
4．2　除非本服务协议另有其它明示规定，拼品网所推出的新产品、新功能、新服务，均受到本服务协议之规范。
4．3　为使用本服务，您必须能够自行经有法律资格对您提供互联网接入服务的第三方，进入国际互联网，并应自行支付相关服务费用。此外，您必须自行配备及负责与国际联网连线所需之一切必要装备，包括计算机、数据机或其它存取装置。
4．4　鉴于网络服务的特殊性，用户同意拼品网有权不经事先通知，随时变更、中断或终止部分或全部的网络服务（包括收费网络服务）。拼品网不担保网络服务不会中断，对网络服务的及时性、安全性、准确性也都不作担保。
4．5　拼品网需要定期或不定期地对提供网络服务的平台或相关的设备进行检修或者维护，如因此类情况而造成网络服务（包括收费网络服务）在合理时间内的中断，拼品网无需为此承担任何责任。拼品网保留不经事先通知为维修保养、升级或其它目的暂停本服务任何部分的权利。
4．6　 本服务或第三人可提供与其它国际互联网上之网站或资源之链接。由于拼品网无法控制这些网站及资源，您了解并同意，此类网站或资源是否可供利用，拼品网不予负责，存在或源于此类网站或资源之任何内容、广告、产品或其它资料，拼品网亦不予保证或负责。因使用或依赖任何此类网站或资源发布的或经由此类网站或资 源获得的任何内容、商品或服务所产生的任何损害或损失，拼品网不承担任何责任。
4．7　用户明确同意其使用拼品网网络服务所存在的风险将完全由其 自己承担。用户	理解并接受下载或通过拼品网服务取得的任何信息资料取决于用户自己，并由其承担系统受损、资料丢失以及其它任何风险。拼品网对在服务网上得 到的任何商品购物服	务、交易进程、招聘信息，都不作担保。
4．8　3个月未登录的帐号，拼品网保留关闭的权利。
4．9　拼品网有权于任何时间暂时或永久修改或终止本服务（或其任何部分），而无论其通知与否，拼品网对用户和任何第三人均无需承担任何责任。
4．10　终止服务
您同意拼品网得基于其自行之考虑，因任何理由，包含但不限于长时间未使用，或拼品网认为您已经违反本服务协议的文字及精神，终止您的密码、帐号或本服务之使 用（或服务之任何部分），并将您在本服务内任何内容加以移除并删除。您同意依本服务协议任何规定提供之本服务，无需进行事先通知即可中断或终止，您承认并 同意，拼品网可立即关闭或删除您的帐号及您帐号中所有相关信息及文件，及/或禁止继续使用前述文件或本服务。此外，您同意若本服务之使用被中断或终止或您 的帐号及相关信息和文件被关闭或删除，拼品网对您或任何第三人均不承担任何责任。
五、知识产权和其他合法权益（包括但不限于名誉权、商誉权）
5．1　用户专属权利
拼品网尊重他人知识产权和合法权益，呼吁用户也要同样尊重知识产权和他人合法权益。若您认为您的知识产权或其他合法权益被侵犯，请按照以下说明向拼品网提供资料∶
请注意：如果权利通知的陈述失实，权利通知提交者将承担对由此造成的全部法律责任（包括但不限于赔偿各种费用及律师费）。如果上述个人或单位不确定网络上可获取的资料是否侵犯了其知识产权和其他合法权益，拼品网建议该个人或单位首先咨询专业人士。
为了拼品网有效处理上述个人或单位的权利通知，请使用以下格式（包括各条款的序号）：
1. 权利人对涉嫌侵权内容拥有知识产权或其他合法权益和/或依法可以行使知识产权或其他合法权益的权属证明；
2. 请充分、明确地描述被侵犯了知识产权或其他合法权益的情况并请提供涉嫌侵权的第三方网址（如果有）。
3. 请指明涉嫌侵权网页的哪些内容侵犯了第2项中列明的权利。
4. 请提供权利人具体的联络信息，包括姓名、身份证或护照复印件（对自然人）、单位登记证明复印件（对单位）、通信地址、电话号码、传真和电子邮件。
5. 请提供涉嫌侵权内容在信息网络上的位置（如指明您举报的含有侵权内容的出处，即：指网页地址或网页内的位置）以便我们与您举报的含有侵权内容的网页的所有权人/管理人联系。
5．1　 对于用户通过拼品网服务上传到拼品网网站上可公开获取区域的任何内容，用户同意拼品网在全世界范围内具有免费的、永久性的、不可撤销的、非独家的和完全再许可的权利和许可，以使用、复制、修改、改编、出版、翻译、据以创作衍生作品、传播、表演和展示此等内容（整体或部分），和/或将此等内容编入当前已知 的或以后开发的其他任何形式的作品、媒体或技术中。
5．2　拼品网拥有本网站内所有资料的版权。任何被授权的浏览、复制、打印和传播属于本网站内的资料必须符合以下条件：所有的资料和图象均以获得信息为目的；
所有的资料和图象均不得用于商业目的；
所有的资料、图象及其任何部分都必须包括此版权声明；
本网站（www.pinphp.com）所有的产品、技术与所有程序均属于拼品网知识产权，在此并未授权。
“www.pinphp.com”, “拼品网”及相关图形等为拼品网的注册商标。
未经拼品网许可，任何人不得擅自（包括但不限于：以非法的方式复制、传播、展示、镜像、上载、下载）使用。否则，拼品网将依法追究法律责任。
六、青少年用户特别提示
青少年用户必须遵守全国青少年网络文明公约：
要善于网上学习，不浏览不良信息；要诚实友好交流，不侮辱欺诈他人；要增强自护意识，不随意约会网友；要维护网络安全，不破坏网络秩序；要有益身心健康，不沉溺虚拟时空。
七、其他
7．1　本协议的订立、执行和解释及争议的解决均应适用中华人民共和国法律。
7．2　如双方就本协议内容或其执行发生任何争议，双方应尽量友好协商解决；协商不成时，任何一方均可向拼品网所在地的人民法院提起诉讼。
7．3　拼品网未行使或执行本服务协议任何权利或规定，不构成对前述权利或权利之放弃。
7．4　如本协议中的任何条款无论因何种原因完全或部分无效或不具有执行力，本协议的其余条款仍应有效并且有约束力。
拼品网对本使用协议享有最终解释权。','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('item_cover_comments','2','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('user_intro_default','这个家伙太懒，什么都木留下~','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('ipban_switch','1','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('score_item_img','a:4:{s:6:\"swidth\";s:3:\"210\";s:7:\"sheight\";s:3:\"210\";s:6:\"bwidth\";s:3:\"350\";s:7:\"bheight\";s:3:\"350\";}','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('seo_config','a:6:{s:4:\"book\";a:3:{s:5:\"title\";s:23:\"{tag_name}-{site_title}\";s:8:\"keywords\";s:23:\"逛宝贝，{site_name}\";s:11:\"description\";s:18:\"{site_description}\";}s:4:\"cate\";a:3:{s:5:\"title\";s:23:\"{cate_name}-{seo_title}\";s:8:\"keywords\";s:14:\"{seo_keywords}\";s:11:\"description\";s:17:\"{seo_description}\";}s:5:\"album\";a:3:{s:5:\"title\";s:6:\"专辑\";s:8:\"keywords\";s:47:\"{site_name},购物分享,淘宝网购物,专辑\";s:11:\"description\";s:18:\"{site_description}\";}s:10:\"album_cate\";a:3:{s:5:\"title\";s:11:\"{seo_title}\";s:8:\"keywords\";s:14:\"{seo_keywords}\";s:11:\"description\";s:17:\"{seo_description}\";}s:12:\"album_detail\";a:3:{s:5:\"title\";s:13:\"{album_title}\";s:8:\"keywords\";s:13:\"{album_intro}\";s:11:\"description\";s:23:\"杂志详细Description\";}s:4:\"item\";a:3:{s:5:\"title\";s:12:\"{item_title}\";s:8:\"keywords\";s:10:\"{item_tag}\";s:11:\"description\";s:12:\"{item_intro}\";}}','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('item_img','a:2:{s:5:\"width\";s:3:\"210\";s:6:\"height\";s:4:\"1000\";}','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('item_simg','a:2:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:3:\"100\";}','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('item_bimg','a:2:{s:5:\"width\";s:3:\"468\";s:6:\"height\";s:4:\"1000\";}','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('attach_path','data/upload/','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('wall_distance','500','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('reg_status','1','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('reg_closed_reason','<h1>暂时关闭注册</h1>','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('index_wall','1','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('weixin_img','1401/07/52cbab3a8c694.jpg','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('weixinshop_img','1401/07/52cbab3aa4321.jpg','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('appid','121312','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('appsecret','13213132','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('site_name','苏州花卉商城','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('site_title','苏州花卉商城','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('site_keyword','苏州花卉商城','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('site_description','苏州花卉商城','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('site_status','1','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('closed_reason','网站升级中。。','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('site_icp','','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('statistics_code','','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('statics_url','','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('mail_server','','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('item_check','0','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('score_rule','a:16:{s:8:\"register\";s:2:\"20\";s:13:\"register_nums\";s:1:\"1\";s:5:\"login\";s:2:\"10\";s:10:\"login_nums\";s:1:\"5\";s:7:\"pubitem\";s:2:\"20\";s:12:\"pubitem_nums\";s:2:\"10\";s:8:\"likeitem\";s:1:\"1\";s:13:\"likeitem_nums\";s:2:\"20\";s:9:\"joinalbum\";s:1:\"2\";s:14:\"joinalbum_nums\";s:2:\"10\";s:6:\"fwitem\";s:1:\"2\";s:11:\"fwitem_nums\";s:2:\"10\";s:6:\"pubcmt\";s:1:\"1\";s:11:\"pubcmt_nums\";s:1:\"5\";s:7:\"delitem\";s:3:\"-20\";s:12:\"delitem_nums\";s:3:\"100\";}','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('album_cover_items','5','专辑封面显示图片数量');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('integrate_code','default','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('integrate_config','','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('hot_tags','家居,花园,美食,旅行,创意,建筑,户外,飘窗,卧室,城堡,DIY,萌宠,门厅,衣帽间,婚礼,书房,厨房,客厅,浴室,阳台,工作台,收纳,餐厅,阁楼,儿童房,小空间,性感','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('wall_spage_max','5','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('wall_spage_size','50','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('book_page_max','100','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('default_keyword','懒得逛了，我搜~','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('album_default_title','默认专辑','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('avatar_size','24,32,48,64,100,200','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('attr_allow_exts','jpg,gif,png,jpeg,swf','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('attr_allow_size','2048','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('itemcate_img','a:2:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"170\";}','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('reg_protocol','一、总则
1．1　用户应当同意本协议的条款并按照页面上的提示完成全部的注册程序。用户在进行注册程序过程中点击\"立即注册\"按钮即表示用户与拼品网公司达成协议，完全接受本协议项下的全部条款。
1．2　用户注册成功后，拼品网将给予每个用户一个用户帐号及相应的密码，该用户帐号和密码由用户负责保管；用户应当对以其用户帐号进行的所有活动和事件负法律责任。
1．3　用户可以使用拼品网各个频道单项服务，当用户使用拼品网各单项服务时，用户的使用行为视为其对该单项服务的服务条款以及拼品网在该单项服务中发出的各类公告的同意。
1．4　拼品网会员服务协议以及各个频道单项服务条款和公告可由拼品网公司随时更新，且无需另行通知。您在使用相关服务时,应关注并遵守其所适用的相关条款。
您在使用拼品网提供的各项服务之前，应仔细阅读本服务协议。如您不同意本服务协议及/或随时对其的修改，您可以主动取消拼品网提供的服务；您一旦使用拼品网产品，即视为您已了解并完全同意本服务协议各项内容，包括拼品网对服务协议随时所做的任何修改，并成为拼品网用户。
二、注册信息和隐私保护
2．1　 拼品网帐号（即拼品网用户ID）的所有权归拼品网，用户完成注册申请手续后，获得拼品网帐号的使用权。用户应提供及时、详尽及准确的个人资料，并不断更新注册资料，符合及时、详尽准确的要求。所有原始键入的资料将引用为注册资料。如果因注册信息不真实而引起的问题，并对问题发生所带来的后果，拼品网概不负任何责任。
2．2　用户不应将其帐号、密码转让或出借予他人使用。如用户发现其帐号遭他人非法使用，应立即通知拼品网。因黑客行为或用户的保管疏忽导致帐号、密码遭他人非法使用，拼品网不承担任何责任。
2．3　拼品网不对外公开或向第三方提供单个用户的注册资料，除非：
（1）事先获得用户的明确授权；
（2）只有透露你的个人资料，才能提供你所要求的产品和服务；
（3）根据有关的法律法规要求；
（4）按照相关政府主管部门的要求；
（5）为维护拼品网的合法权益。
2．4　在你注册拼品网帐户，使用其他拼品网产品或服务，访问拼品网网页, 或参加促销和有奖游戏时，拼品网会收集你的个人身份识别资料，并会将这些资料用于：改进为你提供的服务及网页内容。
三、使用规则
3．1　用户在使用拼品网服务时，必须遵守中华人民共和国相关法律法规的规定，用户应同意将不会利用本服务进行任何违法或不正当的活动，包括但不限于下列行为∶
（1）上载、展示、张贴、传播或以其它方式传送含有下列内容之一的信息：
1） 反对宪法所确定的基本原则的； 2） 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的； 3） 损害国家荣誉和利益的； 4） 煽动民族仇恨、民族歧视、破坏民族团结的； 5） 破坏国家宗教政策，宣扬邪教和封建迷信的； 6） 散布谣言，扰乱社会秩序，破坏社会稳定的； 7） 散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的； 8） 侮辱或者诽谤他人，侵害他人合法权利的； 9） 含有虚假、有害、胁迫、侵害他人隐私、骚扰、侵害、中伤、粗俗、猥亵、或其它道德上令人反感的内容； 10） 含有中国法律、法规、规章、条例以及任何具有法律效力之规范所限制或禁止的其它内容的；
（2）不得为任何非法目的而使用网络服务系统；
（3）不利用拼品网服务从事以下活动：
1) 未经允许，进入计算机信息网络或者使用计算机信息网络资源的；
2) 未经允许，对计算机信息网络功能进行删除、修改或者增加的；
3) 未经允许，对进入计算机信息网络中存储、处理或者传输的数据和应用程序进行删除、修改或者增加的；
4) 故意制作、传播计算机病毒等破坏性程序的；
5) 其他危害计算机信息网络安全的行为。
3．2　 用户违反本协议或相关的服务条款的规定，导致或产生的任何第三方主张的任何索赔、要求或损失，包括合理的律师费，您同意赔偿拼品网与合作公司、关联公司，并使之免受损害。对此，拼品网有权视用户的行为性质，采取包括但不限于删除用户发布信息内容、暂停使用许可、终止服务、限制使用、回收拼品网帐号、追 究法律责任等措施。对恶意注册拼品网帐号或利用拼品网帐号进行违法活动、捣乱、骚扰、欺骗、其他用户以及其他违反本协议的行为，拼品网有权回收其帐号。同 时，拼品网公司会视司法部门的要求，协助调查。
3．3　用户不得对本服务任何部分或本服务之使用或获得，进行复制、拷贝、出售、转售或用于任何其它商业目的。
3．4　用户须对自己在使用拼品网服务过程中的行为承担法律责任。用户承担法律责任的形式包括但不限于：对受到侵害者进行赔偿，以及在拼品网公司首先承担了因用户行为导致的行政处罚或侵权损害赔偿责任后，用户应给予拼品网公司等额的赔偿。
四、服务内容
4．1　拼品网网络服务的具体内容由拼品网根据实际情况提供。
4．2　除非本服务协议另有其它明示规定，拼品网所推出的新产品、新功能、新服务，均受到本服务协议之规范。
4．3　为使用本服务，您必须能够自行经有法律资格对您提供互联网接入服务的第三方，进入国际互联网，并应自行支付相关服务费用。此外，您必须自行配备及负责与国际联网连线所需之一切必要装备，包括计算机、数据机或其它存取装置。
4．4　鉴于网络服务的特殊性，用户同意拼品网有权不经事先通知，随时变更、中断或终止部分或全部的网络服务（包括收费网络服务）。拼品网不担保网络服务不会中断，对网络服务的及时性、安全性、准确性也都不作担保。
4．5　拼品网需要定期或不定期地对提供网络服务的平台或相关的设备进行检修或者维护，如因此类情况而造成网络服务（包括收费网络服务）在合理时间内的中断，拼品网无需为此承担任何责任。拼品网保留不经事先通知为维修保养、升级或其它目的暂停本服务任何部分的权利。
4．6　 本服务或第三人可提供与其它国际互联网上之网站或资源之链接。由于拼品网无法控制这些网站及资源，您了解并同意，此类网站或资源是否可供利用，拼品网不予负责，存在或源于此类网站或资源之任何内容、广告、产品或其它资料，拼品网亦不予保证或负责。因使用或依赖任何此类网站或资源发布的或经由此类网站或资 源获得的任何内容、商品或服务所产生的任何损害或损失，拼品网不承担任何责任。
4．7　用户明确同意其使用拼品网网络服务所存在的风险将完全由其 自己承担。用户	理解并接受下载或通过拼品网服务取得的任何信息资料取决于用户自己，并由其承担系统受损、资料丢失以及其它任何风险。拼品网对在服务网上得 到的任何商品购物服	务、交易进程、招聘信息，都不作担保。
4．8　3个月未登录的帐号，拼品网保留关闭的权利。
4．9　拼品网有权于任何时间暂时或永久修改或终止本服务（或其任何部分），而无论其通知与否，拼品网对用户和任何第三人均无需承担任何责任。
4．10　终止服务
您同意拼品网得基于其自行之考虑，因任何理由，包含但不限于长时间未使用，或拼品网认为您已经违反本服务协议的文字及精神，终止您的密码、帐号或本服务之使 用（或服务之任何部分），并将您在本服务内任何内容加以移除并删除。您同意依本服务协议任何规定提供之本服务，无需进行事先通知即可中断或终止，您承认并 同意，拼品网可立即关闭或删除您的帐号及您帐号中所有相关信息及文件，及/或禁止继续使用前述文件或本服务。此外，您同意若本服务之使用被中断或终止或您 的帐号及相关信息和文件被关闭或删除，拼品网对您或任何第三人均不承担任何责任。
五、知识产权和其他合法权益（包括但不限于名誉权、商誉权）
5．1　用户专属权利
拼品网尊重他人知识产权和合法权益，呼吁用户也要同样尊重知识产权和他人合法权益。若您认为您的知识产权或其他合法权益被侵犯，请按照以下说明向拼品网提供资料∶
请注意：如果权利通知的陈述失实，权利通知提交者将承担对由此造成的全部法律责任（包括但不限于赔偿各种费用及律师费）。如果上述个人或单位不确定网络上可获取的资料是否侵犯了其知识产权和其他合法权益，拼品网建议该个人或单位首先咨询专业人士。
为了拼品网有效处理上述个人或单位的权利通知，请使用以下格式（包括各条款的序号）：
1. 权利人对涉嫌侵权内容拥有知识产权或其他合法权益和/或依法可以行使知识产权或其他合法权益的权属证明；
2. 请充分、明确地描述被侵犯了知识产权或其他合法权益的情况并请提供涉嫌侵权的第三方网址（如果有）。
3. 请指明涉嫌侵权网页的哪些内容侵犯了第2项中列明的权利。
4. 请提供权利人具体的联络信息，包括姓名、身份证或护照复印件（对自然人）、单位登记证明复印件（对单位）、通信地址、电话号码、传真和电子邮件。
5. 请提供涉嫌侵权内容在信息网络上的位置（如指明您举报的含有侵权内容的出处，即：指网页地址或网页内的位置）以便我们与您举报的含有侵权内容的网页的所有权人/管理人联系。
5．1　 对于用户通过拼品网服务上传到拼品网网站上可公开获取区域的任何内容，用户同意拼品网在全世界范围内具有免费的、永久性的、不可撤销的、非独家的和完全再许可的权利和许可，以使用、复制、修改、改编、出版、翻译、据以创作衍生作品、传播、表演和展示此等内容（整体或部分），和/或将此等内容编入当前已知 的或以后开发的其他任何形式的作品、媒体或技术中。
5．2　拼品网拥有本网站内所有资料的版权。任何被授权的浏览、复制、打印和传播属于本网站内的资料必须符合以下条件：所有的资料和图象均以获得信息为目的；
所有的资料和图象均不得用于商业目的；
所有的资料、图象及其任何部分都必须包括此版权声明；
本网站（www.pinphp.com）所有的产品、技术与所有程序均属于拼品网知识产权，在此并未授权。
“www.pinphp.com”, “拼品网”及相关图形等为拼品网的注册商标。
未经拼品网许可，任何人不得擅自（包括但不限于：以非法的方式复制、传播、展示、镜像、上载、下载）使用。否则，拼品网将依法追究法律责任。
六、青少年用户特别提示
青少年用户必须遵守全国青少年网络文明公约：
要善于网上学习，不浏览不良信息；要诚实友好交流，不侮辱欺诈他人；要增强自护意识，不随意约会网友；要维护网络安全，不破坏网络秩序；要有益身心健康，不沉溺虚拟时空。
七、其他
7．1　本协议的订立、执行和解释及争议的解决均应适用中华人民共和国法律。
7．2　如双方就本协议内容或其执行发生任何争议，双方应尽量友好协商解决；协商不成时，任何一方均可向拼品网所在地的人民法院提起诉讼。
7．3　拼品网未行使或执行本服务协议任何权利或规定，不构成对前述权利或权利之放弃。
7．4　如本协议中的任何条款无论因何种原因完全或部分无效或不具有执行力，本协议的其余条款仍应有效并且有约束力。
拼品网对本使用协议享有最终解释权。','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('item_cover_comments','2','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('user_intro_default','这个家伙太懒，什么都木留下~','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('ipban_switch','1','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('score_item_img','a:4:{s:6:\"swidth\";s:3:\"210\";s:7:\"sheight\";s:3:\"210\";s:6:\"bwidth\";s:3:\"350\";s:7:\"bheight\";s:3:\"350\";}','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('seo_config','a:6:{s:4:\"book\";a:3:{s:5:\"title\";s:23:\"{tag_name}-{site_title}\";s:8:\"keywords\";s:23:\"逛宝贝，{site_name}\";s:11:\"description\";s:18:\"{site_description}\";}s:4:\"cate\";a:3:{s:5:\"title\";s:23:\"{cate_name}-{seo_title}\";s:8:\"keywords\";s:14:\"{seo_keywords}\";s:11:\"description\";s:17:\"{seo_description}\";}s:5:\"album\";a:3:{s:5:\"title\";s:6:\"专辑\";s:8:\"keywords\";s:47:\"{site_name},购物分享,淘宝网购物,专辑\";s:11:\"description\";s:18:\"{site_description}\";}s:10:\"album_cate\";a:3:{s:5:\"title\";s:11:\"{seo_title}\";s:8:\"keywords\";s:14:\"{seo_keywords}\";s:11:\"description\";s:17:\"{seo_description}\";}s:12:\"album_detail\";a:3:{s:5:\"title\";s:13:\"{album_title}\";s:8:\"keywords\";s:13:\"{album_intro}\";s:11:\"description\";s:23:\"杂志详细Description\";}s:4:\"item\";a:3:{s:5:\"title\";s:12:\"{item_title}\";s:8:\"keywords\";s:10:\"{item_tag}\";s:11:\"description\";s:12:\"{item_intro}\";}}','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('item_img','a:2:{s:5:\"width\";s:3:\"210\";s:6:\"height\";s:4:\"1000\";}','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('item_simg','a:2:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:3:\"100\";}','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('item_bimg','a:2:{s:5:\"width\";s:3:\"468\";s:6:\"height\";s:4:\"1000\";}','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('attach_path','data/upload/','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('wall_distance','500','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('reg_status','1','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('reg_closed_reason','<h1>暂时关闭注册</h1>','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('index_wall','1','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('weixin_img','1401/07/52cbab3a8c694.jpg','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('weixinshop_img','1401/07/52cbab3aa4321.jpg','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('appid','121312','');
INSERT INTO weixin_setting ( `name`, `data`, `remark` ) VALUES  ('appsecret','13213132','');
DROP TABLE IF EXISTS `weixin_tag`;
CREATE TABLE `weixin_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('536','300');
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('537','源码');
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('538','支付');
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('539','支持');
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('540','商城');
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('541','营销');
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('542','系统');
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('543','最新');
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('544','平台');
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('545','乐享');
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('546','空间');
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('547','香港');
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('548','全能');
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('549','首先');
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('550','独立');
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('551','优化');
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('552','高速');
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('553','300M');
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('554','seo');
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('555','主机租用');
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('556','vps');
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('557','在线支付');
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('558','网站');
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('559','sdfsa');
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('560','sdfsd');
INSERT INTO weixin_tag ( `id`, `name` ) VALUES  ('561','sdf');
DROP TABLE IF EXISTS `weixin_topic`;
CREATE TABLE `weixin_topic` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `uname` varchar(20) NOT NULL,
  `content` varchar(255) NOT NULL,
  `extra` text NOT NULL,
  `src_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '引用内容类型',
  `src_id` int(10) unsigned NOT NULL COMMENT '引用内容ID',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0，原创；1，转发；',
  `comments` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论数量',
  `forwards` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '转发数量',
  `add_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_topic_at`;
CREATE TABLE `weixin_topic_at` (
  `uid` int(10) unsigned NOT NULL,
  `tid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`uid`,`tid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_topic_comment`;
CREATE TABLE `weixin_topic_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `uname` varchar(20) NOT NULL,
  `tid` int(10) unsigned NOT NULL,
  `author_uid` int(10) unsigned NOT NULL,
  `content` varchar(255) NOT NULL,
  `add_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_topic_index`;
CREATE TABLE `weixin_topic_index` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `tid` int(10) unsigned NOT NULL COMMENT '信息ID',
  `author_id` int(10) unsigned NOT NULL COMMENT '发布者ID',
  `add_time` int(10) unsigned NOT NULL,
  KEY `uid` (`uid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_topic_relation`;
CREATE TABLE `weixin_topic_relation` (
  `tid` int(10) unsigned NOT NULL COMMENT '信息ID',
  `src_tid` int(10) unsigned NOT NULL COMMENT '被引用信息ID',
  `author_uid` int(10) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '操作类型(1,转发)',
  PRIMARY KEY (`tid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_user`;
CREATE TABLE `weixin_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uc_uid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(100) NOT NULL DEFAULT '0',
  `password` varchar(32) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1男，0女',
  `tags` varchar(50) NOT NULL COMMENT '个人标签',
  `intro` varchar(500) NOT NULL,
  `byear` smallint(4) unsigned NOT NULL,
  `bmonth` tinyint(2) unsigned NOT NULL,
  `bday` tinyint(2) unsigned NOT NULL,
  `province` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `score` int(10) unsigned NOT NULL DEFAULT '0',
  `score_level` int(10) unsigned NOT NULL DEFAULT '0',
  `cover` varchar(255) NOT NULL,
  `reg_ip` varchar(15) NOT NULL,
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(15) DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `shares` int(10) unsigned DEFAULT '0',
  `likes` int(10) unsigned DEFAULT '0',
  `follows` int(10) unsigned DEFAULT '0',
  `fans` int(10) unsigned DEFAULT '0',
  `albums` int(10) unsigned DEFAULT '0',
  `daren` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_user ( `id`, `uc_uid`, `username`, `password`, `email`, `gender`, `tags`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `cover`, `reg_ip`, `reg_time`, `last_time`, `last_ip`, `status`, `shares`, `likes`, `follows`, `fans`, `albums`, `daren` ) VALUES  ('30','0','test','e10adc3949ba59abbe56e057f20f883e','123@16.com','0','','','0','0','0','','','30','30','','127.0.0.1','1388639401','1388639401','127.0.0.1','1','0','0','0','0','0','0');
DROP TABLE IF EXISTS `weixin_user_address`;
CREATE TABLE `weixin_user_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `consignee` varchar(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `sheng` varchar(50) DEFAULT NULL,
  `shi` varchar(50) DEFAULT NULL,
  `qu` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_user_address ( `id`, `uid`, `consignee`, `address`, `mobile`, `sheng`, `shi`, `qu` ) VALUES  ('23','30','文章·','丰乐路','15132468218','河南省','郑州市','金水区');
INSERT INTO weixin_user_address ( `id`, `uid`, `consignee`, `address`, `mobile`, `sheng`, `shi`, `qu` ) VALUES  ('26','30','随便','努力啦','15132468318','天津市','市辖区','河东区');
DROP TABLE IF EXISTS `weixin_user_bind`;
CREATE TABLE `weixin_user_bind` (
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(60) NOT NULL,
  `keyid` varchar(100) NOT NULL,
  `info` text NOT NULL,
  KEY `uid` (`uid`),
  KEY `uid_type` (`uid`,`type`),
  KEY `type_keyid` (`type`,`keyid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_user_follow`;
CREATE TABLE `weixin_user_follow` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `follow_uid` int(10) unsigned NOT NULL COMMENT '被关注者ID',
  `add_time` int(10) unsigned NOT NULL,
  `mutually` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`follow_uid`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_user_msgtip`;
CREATE TABLE `weixin_user_msgtip` (
  `uid` int(10) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1:关注，2:提到，3:私信，4:通知',
  `num` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`type`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
DROP TABLE IF EXISTS `weixin_user_stat`;
CREATE TABLE `weixin_user_stat` (
  `uid` int(10) unsigned NOT NULL,
  `action` varchar(20) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `last_time` int(10) unsigned NOT NULL,
  UNIQUE KEY `uid_type` (`uid`,`action`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('9','login','1','1353909837');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('13','login','1','1353909897');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('16','login','1','1353909964');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('15','login','1','1353910012');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('11','login','1','1353910069');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('7','login','1','1353910109');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('12','login','1','1353910146');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('17','login','1','1353910177');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('20','login','1','1353910221');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('6','login','1','1353910265');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('18','login','1','1353910348');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('8','login','1','1353910407');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('19','login','1','1353910445');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('10','login','1','1353910499');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('14','login','1','1353910539');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('21','register','1','1374633583');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('21','login','1','1374633583');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('22','register','1','1374724879');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('22','login','1','1374724879');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('23','register','1','1374724936');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('23','login','1','1374724936');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('24','register','1','1374724990');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('24','login','1','1374724990');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('26','register','1','1375152929');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('26','login','1','1375152929');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('27','register','1','1375154088');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('27','login','1','1375154088');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('28','register','1','1375176967');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('28','login','1','1375176967');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('29','register','1','1375250687');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('29','login','1','1375250687');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('30','register','1','1388639401');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('30','login','1','1388639401');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('31','register','1','1389005403');
INSERT INTO weixin_user_stat ( `uid`, `action`, `num`, `last_time` ) VALUES  ('31','login','1','1389005403');
