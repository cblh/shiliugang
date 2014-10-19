--
-- 导出表中的数据 `weixin_ad`
--

INSERT INTO `weixin_ad` (`id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status`) VALUES
(1, 1, 'image', '智风信息', 'http://www.5cando.com', '1401/08/52cd425fc5957.png', '', '', '', 1389110400, 1444233600, 0, 0, 255, 1),
(2, 1, 'image', '智风微信营销', 'http://weixin.5cando.com', '1401/08/52cd42d54b961.jpg', '', '', '', 1389110400, 1421856000, 0, 0, 255, 1);

--
-- 导出表中的数据 `weixin_adboard`
--

INSERT INTO `weixin_adboard` (`id`, `name`, `tpl`, `width`, `height`, `description`, `status`) VALUES
(1, '首页焦点图', 'indexfocus', 730, 395, '小图调用扩展图', 1);

--
-- 导出表中的数据 `weixin_address`
--

INSERT INTO `weixin_address` (`id`, `contacts`, `Province`, `City`, `Area`, `address`, `postcode`, `mobile`, `phone`, `name`, `isno`, `status`, `ordid`) VALUES
(22, 'zhifeng', '河南省', '郑州市', '金水区', '丰乐路', '450000', '13821682248', '0371-6362262', '智风科技', '0', 1, 0);

--
-- 导出表中的数据 `weixin_admin_auth`
--


--
-- 导出表中的数据 `weixin_admin_role`
--

INSERT INTO `weixin_admin_role` (`id`, `name`, `remark`, `ordid`, `status`) VALUES
(1, '超级管理员', '超级管理员', 0, 1);

--
-- 导出表中的数据 `weixin_album`
--


--
-- 导出表中的数据 `weixin_album_cate`
--


--
-- 导出表中的数据 `weixin_album_comment`
--


--
-- 导出表中的数据 `weixin_album_follow`
--


--
-- 导出表中的数据 `weixin_album_item`
--

INSERT INTO `weixin_album_item` (`album_id`, `item_id`, `intro`, `add_time`) VALUES
(0, 127, 'windows主机，300M空间只收200元。', 1389174735),
(0, 128, '仿乐享、微盟多用户微信营销系统源码，完全开源，源码保证可用！\r\n\r\n本套源码是14.1.4日最新版！有喜帖和360全景功能！商城支持企业支付宝在线付款！测试网址http://weixin.5cando.com ,测试帐号：test   test', 1389174893),
(0, 129, '高速空间300M香港免备案', 1389175007),
(0, 130, '世纪东方行云主机2型', 1389175238),
(0, 131, '全网独家 价格全网最低 确保整站完整源码 后台完美修复！       \r\n\r\n 本源码全网独有！ 修改所有BUG 安全系统与后面全部封堵 无任何安全漏洞！\r\n\r\n指导改界面版权不像其他源码无法更改版权信息   修改过的后台可以实现所有功能', 1389175735);


--
-- 导出表中的数据 `weixin_article`
--


--
-- 导出表中的数据 `weixin_article_cate`
--

INSERT INTO `weixin_article_cate` (`id`, `type`, `name`, `alias`, `img`, `pid`, `spid`, `ordid`, `status`, `seo_title`, `seo_keys`, `seo_desc`) VALUES
(1, 1, '网站信息', '', '', 0, '0', 255, 1, '', '', ''),
(2, 1, '关于我们', '', '', 1, '1|', 255, 1, '', '', ''),
(3, 1, '联系我们', '', '', 1, '1|', 255, 1, '', '', ''),
(4, 1, '加入我们', '', '', 1, '1|', 255, 1, '', '', ''),
(6, 1, '积分规则', '', '', 5, '5|', 255, 1, '', '', ''),
(7, 1, '兑换说明', '', '', 5, '5|', 255, 1, '', '', '');

--
-- 导出表中的数据 `weixin_article_page`
--

INSERT INTO `weixin_article_page` (`cate_id`, `title`, `info`, `seo_title`, `seo_keys`, `seo_desc`, `last_time`) VALUES
(2, '关于我们', '<div>\r\n	欢迎来到PinPHP－拼品网， 拼品网是一个技术驱动创造时尚的互联网创业型公司，通过搜索引擎、图形处理、视觉搜索等核心技术研发优势，为中国千百万的个人站长提供一个解决如何快速抢建一个社会化的电子商务导购平台，它可以帮助爱美丽的女生找到适合的穿衣搭配、在哪里购买合适的时装搭配网购社区平台；我们将致力于为每一个时尚女孩都能轻松地创建属于自己的搭配宝典库而矢志不移的奉献青春年华。\r\n</div>\r\n<div>\r\n	<br />\r\n</div>\r\n<div>\r\n	　　来逛拼品网&nbsp;，你将发现更多喜爱的搭配风格，找到你最喜欢的时尚元素，你也将发现全球各地流行的风格与趋势，你还能很方便的在线拼贴搭配出你的时尚品味；懂得搭配的女人才更美丽，拉上你的好姐妹们一起来逛拼品网吧！\r\n</div>\r\n<div>\r\n	<br />\r\n</div>\r\n<div>\r\n	　　Logo寓意诠释：化蛹成碟的美丽蜕变，意思是通过来逛拼品网能让女孩们蜕变得更美丽！\r\n</div>', '', '', '', 0),
(3, '联系我们', '<p style="margin-top:0px;margin-bottom:0px;padding:0px;color:#666666;font-family:Arial;font-size:14px;line-height:22px;white-space:normal;background-color:#FFFFFF;">\r\n	联系电话：0571-28058597\r\n</p>\r\n<p style="margin-top:0px;margin-bottom:0px;padding:0px;color:#666666;font-family:Arial;font-size:14px;line-height:22px;white-space:normal;background-color:#FFFFFF;">\r\n	&nbsp;\r\n</p>\r\n<p style="margin-top:0px;margin-bottom:0px;padding:0px;color:#666666;font-family:Arial;font-size:14px;line-height:22px;white-space:normal;background-color:#FFFFFF;">\r\n	官方网站：www.pinphp.com\r\n</p>\r\n<p style="margin-top:0px;margin-bottom:0px;padding:0px;color:#666666;font-family:Arial;font-size:14px;line-height:22px;white-space:normal;background-color:#FFFFFF;">\r\n	&nbsp;\r\n</p>\r\n<p style="margin-top:0px;margin-bottom:0px;padding:0px;color:#666666;font-family:Arial;font-size:14px;line-height:22px;white-space:normal;background-color:#FFFFFF;">\r\n	地址：杭州市万塘路６９号华星科技苑Ａ楼\r\n</p>\r\n<p style="margin-top:0px;margin-bottom:0px;padding:0px;color:#666666;font-family:Arial;font-size:14px;line-height:22px;white-space:normal;background-color:#FFFFFF;">\r\n	&nbsp;\r\n</p>\r\n<p style="margin-top:0px;margin-bottom:0px;padding:0px;color:#666666;font-family:Arial;font-size:14px;line-height:22px;white-space:normal;background-color:#FFFFFF;">\r\n	邮编：３１００１２\r\n</p>', '', '', '', 0),
(4, '加入我们', '<span style="white-space:nowrap;"><strong>岗位名称：信息编辑</strong></span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp;<strong> 岗位职责：&nbsp;</strong></span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; &nbsp; 1、产业网站内容建设；&nbsp;</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; &nbsp; 2、产业数据搜集整理；</span><br />\r\n<span style="white-space:nowrap;">&nbsp;</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; <strong>任职要求 ：&nbsp;</strong></span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; &nbsp; 1、大专以上学历，传媒、新闻、电子商务相关专业优先；&nbsp;</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; &nbsp; 2、1年以上互联网行业媒体从业经验，有电子商务相关从业经历者优先；&nbsp;</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; &nbsp; 3、熟悉网页制作软件，良好的文字功底、有原创采写经验者优先；&nbsp;</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; &nbsp; 4、对新闻、电子商务等产业有持续关注兴趣，良好的英文阅读能力；&nbsp;</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; &nbsp; 5、具有较强学习能力和责任心，以及团队合作精神；&nbsp;</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; &nbsp; 6、优秀应届毕业生可放宽工作经验要求；</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; &nbsp;</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; &nbsp; 有意者请发送简历至：HR#insuny.com （#替换成@）</span><br />\r\n<span style="white-space:nowrap;"><br />\r\n</span><br />\r\n<span style="white-space:nowrap;"><strong>岗位名称：开发工程师</strong></span><br />\r\n<span style="white-space:nowrap;"><strong>&nbsp; &nbsp; 岗位职责：&nbsp;</strong></span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; &nbsp; 1、负责网站系统及B/S架构产品开发；&nbsp;</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; &nbsp; 2、负责产品体验优化；</span><br />\r\n<span style="white-space:nowrap;">&nbsp;</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp;<strong> 任职要求 ：</strong>&nbsp;</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; &nbsp; 1、大学专科及以上，计算机相关专业优先；&nbsp;</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; &nbsp; 2、2年以上B/S架构开发经验；有独立开发开发经验者优先；&nbsp;</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; &nbsp; 3、良好掌握PHP开发语言及MySQL数据库；&nbsp;</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; &nbsp; 4、熟练掌握javascript / ajax等；&nbsp;</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; &nbsp; 5、有激情，热爱互联网行业，熟悉web2.0应用；</span><br />\r\n<span style="white-space:nowrap;"><br />\r\n</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; 有意者请发送简历至：HR#insuny.com（#替换成@）</span><br />\r\n<span style="white-space:nowrap;"><br />\r\n</span><br />\r\n<span style="white-space:nowrap;"><strong>岗位名称：网页设计师</strong></span><br />\r\n<span style="white-space:nowrap;"><strong>&nbsp; &nbsp; 岗位职责：</strong>&nbsp;</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; &nbsp; 1、负责网站及B/S架构产品前端界面设计及重构；&nbsp;</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; &nbsp; 2、负责产品体验优化；</span><br />\r\n<span style="white-space:nowrap;">&nbsp;</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp;<strong> 任职要求 ：</strong>&nbsp;</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; &nbsp; 1、大学专科及以上，计算机相关专业优先；&nbsp;</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; &nbsp; 2、2年以上网站设计经验；有整站设计重构经验者优先；&nbsp;</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; &nbsp; 3、良好掌握XHTML，CSS手工书写页面，熟悉W3C标准，精通div+css；&nbsp;</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; &nbsp; 4、精通Photoshop、Dreamweaver、Flash等多种网页设计制作软件；&nbsp;</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; &nbsp; 5、有激情，热爱互联网行业，熟悉web2.0应用；</span><br />\r\n<span style="white-space:nowrap;"><br />\r\n</span><br />\r\n<span style="white-space:nowrap;">&nbsp; &nbsp; &nbsp; &nbsp;有意者请发送简历至：HR#insuny.com （#替换成@）</span><br />', '', '', '', 0),
(6, '会员加减分规则', '<p>\r\n	<strong>积分兑换</strong>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	积分是为了答谢支持PinPHP网站会员而制定的一种奖励方式，您可以进入账户中的积分页面查看积分明细，同时PinPHP会推出各类积分兑换活动，请随时关注关于积分的活动告知。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>积分获得：</strong>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	1、会员注册：会员注册即送20点积分，一个账户只能得一次注册积分；\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	2、每日登录：会员每日首次登录PinPHP网站能获得10积分，每日上限5次；\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	3、发布分享：会员分享新商品到PinPHP网站能获得20积分，每日上限10次；\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	4、添加喜欢：针对PinPHP网站上的商品会员点击喜欢可获得1积分，每日上限10次；\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	5、添加到专辑：会员把喜欢的商品添加进个人的专辑中可获得2积分，每日上限10次；\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	6、转发分享：会员转发PinPHP网站上商品到其他网站上可获2积分，每日上限10次；\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	7、发布评论：会员评论PinPHP网站商品可获1积分，每日上线5次。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>积分扣除：</strong>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	1、删除分享：会员删除自己添加的商品减20积分，每日上限100次；\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	2、兑换商品：会员使用积分兑换自己喜欢的商品会扣除相对应的积分。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<div>\r\n	<br />\r\n</div>', '', '', '', 0),
(7, '兑换说明', '1、奖品价格已经包含邮寄费用在内，您无须另行支付。兑奖前请确认您的帐户中有足够数量的积分！<br />\r\n2、奖品寄送方式：QQ直充类奖品兑奖审核通过后会直接充入您的QQ号码中，其余虚拟奖品采用在线发送卡密的方式；实体奖品全部采用快递方式。<br />\r\n3、虚拟奖品有效期：虚拟卡密类奖品除手机充值卡10/20/30元卡密，因为充值卡金额少，有效期比较短，大约一周左右,其余卡密类奖品有效期为1个月；虚拟卡直冲类为即时发货即时到账，无有效期限制！积分兑换含有有效期的奖品，请尽快充值使用，如过有效期未充值导致卡密失效，PinPHP网概不负责。<br />\r\n4、确认您的奖品邮寄地址、联系电话正确无误后提交兑奖申请！如因您未提供详细信息或信息错误，导致奖品错投或无法寄送，网站不负任何责任，并不再补发奖品。<br />\r\n5、实物奖品将在兑奖提交后的2-5工作日内发出(奖品状态您可通过“积分订单”查询)！<br />\r\n6、实物奖品按照会员申请的要求发出去之后，无破损、短缺等质量问题或因个人喜好（色泽、外观）要求退换货将无法受理。<br />\r\n7、兑奖中心所有实物奖品颜色均为随机发送, 敬请谅解！<br />\r\n<br />\r\n<strong>注意：</strong><br />\r\n<br />\r\n1、签收奖品前，务必仔细检查货物是否完好！如果发现有破损、短缺情况，请直接让快递公司退回，无需承担任何费用，并及时与我们联系。签收后提出货物破损等问题，一律责任自负！无法受理退换货要求！他人代签与本人签收一样。<br />\r\n2、收到奖品7天内，若发现质量问题，请及时与我们联系并提供图片说明。如因个人使用不当导致的奖品问题无法更换。<br />\r\n3、如提交兑奖后，由于商家缺货导致无法发货的情况，会员会收到站内信息通知并取消兑奖，请重新选择其他奖品兑换。<br />\r\n<br />\r\n兑奖过程中如有问题请通过“联系我们”联系咨询。<br />\r\n以上奖品图片仅供参考,请您以收取的实物为准！如有异议请联系客服人员确认奖品情况。<br />', '', '', '', 0);

--
-- 导出表中的数据 `weixin_auto_user`
--


--
-- 导出表中的数据 `weixin_badword`
--


--
-- 导出表中的数据 `weixin_brandlist`
--

INSERT INTO `weixin_brandlist` (`id`, `name`, `status`, `ordid`) VALUES
(1, '智风测试', 1, 0),
(14, '智风空间', 1, 0),
(13, '智风主机', 1, 0),
(15, '智风微信', 1, 0),
(16, '智风域名', 1, 0);

--
-- 导出表中的数据 `weixin_custom_menu`
--


--
-- 导出表中的数据 `weixin_delivery`
--

INSERT INTO `weixin_delivery` (`id`, `name`, `status`, `ordid`) VALUES
(1, 'EMS', 1, 0),
(2, '中通速递', 1, 0),
(3, '圆通速递', 1, 0),
(4, '汇通快运', 1, 0),
(5, '申通快递', 1, 0),
(6, '韵达快运', 1, 0),
(7, '顺丰速运', 1, 0);

--
-- 导出表中的数据 `weixin_flink`
--


--
-- 导出表中的数据 `weixin_flink_cate`
--


--
-- 导出表中的数据 `weixin_images`
--

INSERT INTO `weixin_images` (`iid`, `imgurl`) VALUES
(22, 'data/upload/keyword/1308/16/520dc84ee84b2.jpg'),
(23, 'data/upload/keyword/1401/06/52ca90ef04077.jpg'),
(24, 'data/upload/keyword/1401/06/52ca90fa16e1b.jpg'),
(25, 'data/upload/keyword/1401/06/52ca91cb8704e.jpg'),
(26, 'data/upload/keyword/1401/07/52cb5e24df3f4.jpg'),
(27, 'data/upload/keyword/1401/07/52cbaf5780316.jpg'),
(28, 'data/upload/keyword/1401/07/52cbb0f95d5fd.jpg'),
(29, 'data/upload/keyword/1401/07/52cbc4f80776c.jpg'),
(30, 'data/upload/keyword/1401/07/52cbc52384c65.jpg'),
(31, 'data/upload/keyword/1401/07/52cbc52a91bf4.jpg');

--
-- 导出表中的数据 `weixin_ipban`
--


--
-- 导出表中的数据 `weixin_item`
--

INSERT INTO `weixin_item` (`id`, `cate_id`, `orig_id`, `title`, `intro`, `img`, `price`, `rates`, `type`, `comments`, `cmt_taobao_time`, `add_time`, `ordid`, `status`, `info`, `news`, `tuijian`, `goods_stock`, `buy_num`, `brand`, `pingyou`, `kuaidi`, `ems`, `free`, `color`, `size`) VALUES
(127, 346, 0, '300Ｍ', 'windows主机，300M空间只收200元。', '1401/08/52cd1fce2b509.jpg', 200.00, 0.00, 1, 0, 0, 1389174735, 255, 1, '<p>\r\n	智风主机空间，稳定高速，值得推荐。\r\n</p>\r\n<p>\r\n	<div class="details-bottom-box" style="font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n		<span style="color:#FF0000;">W型</span>主机采用Windows为操作系统，同时支持asp、php等脚本语言并赠送mssql、mysql等数据库和邮局。超强的控制面板，40多项方便易用的主机功能:定期数据备份，自助恢复备份数据,空间使用情况，流量使用情况，伪静态设置，网站搬家，在线上传，远程下载，文件压缩等。我们完善的售后服务，可以完美保障用户利益，适合大多数用户的企业级应用。\r\n	</div>\r\n	<div class="details-bottom-box" style="font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n		<span style="color:#FF0000;">L型</span>为linux虚拟主机，采用专业的LAMP环境（Linux+Apache+ PHP + Perl + Shtml）,支持Php5+mysql4.0/Mysql5.0,支持eAccelerator/Memcache加速,完美支持Discuz、PhpWind、CmsTop、Shopex、ECShop、Wordpress、MT等php+mysql结构的应用系统。\r\n	</div>\r\n	<div class="details-bottom-box" style="font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n		&nbsp;\r\n	</div>\r\n	<div class="details-bottom-box" style="font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n		<span style="color:#FF0000;"><span style="font-size:18px;">亲需注意</span>，L型宝贝为200M空间，此款宝贝在保证质量的情况下已是底价，空间的好坏不仅仅是大小，还有其他的。更重要的是服务。选择智风，选择贴心服务。</span>\r\n	</div>\r\n	<div class="details-bottom-box" style="font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n		<span style="color:#FF0000;">另请注意，本主机只接受正规网站，违法的请出门左拐，严重者将报警。</span>\r\n	</div>\r\n	<div class="details-bottom-box" style="font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n		&nbsp;\r\n	</div>\r\n	<div class="details-bottom-box" style="font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n		<span style="color:#FF0000;"></span>&nbsp;功能介绍：\r\n	</div>\r\n	<div class="details-bottom-box" style="font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n		1.此空间支持上面介绍的的通用功能。\r\n	</div>\r\n	<div class="details-bottom-box" style="font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n		2.此空间会赠送一个iGenus邮局500M 5账号。功能足够满足您的需求。如有特殊需求，请联系客服。\r\n	</div>\r\n	<div class="details-bottom-box" style="font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n		3.此空间会赠送一个Mysql数据库。\r\n	</div>\r\n	<div class="details-bottom-box" style="font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n		&nbsp;\r\n	</div>\r\n	<div class="details-bottom-box" style="font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n		零风险保证：\r\n	</div>\r\n	<div style="font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n		我们拥有香港机房、美国机房等多款主机供您选择，如果您对本款主机不满意，可随时为您更换其他主机，绝不加价！\r\n	</div>\r\n	<div style="font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n		全能空间不只是说说：我们本空间完美支持PHP、CGI、Python、Zend、GD2、JQuery等语言，支持Discuz、PHPWind、DedeCMS、phpcms、Supesite、帝国CMS、Ecshop、Wordpress、Zen-cart、Joomla、PHP168等主流建站系统。\r\n	</div>\r\n</p>', 1, 1, 199, 0, 14, 0.00, 0.00, 0.00, 1, NULL, NULL),
(128, 349, 0, '最新微信源码 微信平台 仿乐享 微盟微信营销系统支持商城支付宝', '仿乐享、微盟多用户微信营销系统源码，完全开源，源码保证可用！\r\n\r\n本套源码是14.1.4日最新版！有喜帖和360全景功能！商城支持企业支付宝在线付款！测试网址http://weixin.5cando.com ,测试帐号：test   test', '1401/08/52cd20692bf6e.jpg', 100.00, 0.00, 1, 0, 0, 1389174893, 255, 1, '<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="font-size:18px;"><span style="color:#ff0000;font-family:simhei;">本系统支持最新，</span><span style="color:#444444;"><strong><span style="color:#FF0000;">最热</span></strong>的360全景，微喜帖，本地图片上传，支付版微商城（看清楚了并不是那些无良卖家的阉割版不带支付功能的商城哦！），快捷导航，一键拨号。版权设置，留言板，流量统计。前台5套模板（pigcms，微盟等热门模板），3G站32套模板。只要好评后续更新免费体验。</span></span>\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#FF0000;">最新修正bug：</span>\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#FF0000;">元旦我们仍在加班加点。。。下面放出更新。</span>\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="font-size:24px;"><span style="color:#FF0000;"><strong><span style="background-color:#FF0000;"><span style="background-color:#FF9900;"><span style="background-color:#F6B26B;"><span style="background-color:#00FFFF;"><span style="background-color:#A2C4C9;"><span style="background-color:#FFD966;"><span style="background-color:#FFFF00;">今日更新：</span></span></span></span></span></span></span></strong></span></span>\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	前台添加一副模板，增加首页链接，显示，增加部分功能链接显示，更加自由。修复会员卡部分bug。修复相册部分bug。\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#FF0000;">~~0102~修复bug</span>\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	1.增加支付宝3接口使用。测试支持担保、即时和双功能接口，让你不管申请哪个接口都能成功使用。\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	2.修复后台公众号管理页面跳转首页bug，修复公众号删除成功，跳转首页bug&nbsp;\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	3.修复喜帖场景图显示出错的bug。\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	4.更换喜帖视频，更换为支持优酷视频链接。接入更随心。\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#FF0000;">~~12.28~修复bug</span>\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	1.修复喜帖bug\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	2.模板小bug\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	3.修复会员卡自定义背景之后改为模板背景，保存背景失效bug。\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#FF0000;">~~12.28~修复bug</span>\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	1.会员充值支付宝功能修复\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	2.模板会员卡小bug修复。\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#FF0000;">~~12.24~修复bug</span>\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="font-size:24px;"><span style="color:#FF0000;"><strong><span style="background-color:#FF0000;"><span style="background-color:#FF9900;"><span style="background-color:#F6B26B;"><span style="background-color:#00FFFF;"><span style="background-color:#A2C4C9;"><span style="background-color:#FFD966;"><span style="background-color:#FFFF00;"></span></span></span></span></span></span></span></strong></span></span>&nbsp;1.修复前台仿微盟模板本地调试问题。\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	2.一些其他bug修复\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#FF0000;">~~12.24~修复bug</span>\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	1、系统实现可以本地开发测试\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	2、修正管理后台部分不能使用功能\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	3、修改导航版权不能设置问题\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	4、商家电话不能正确保存问题\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<strong><span style="font-size:24px;"><span style="color:#FF0000;">我们的优势：</span></span></strong>\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="font-size:18px;"><span style="color:#FF0000;"><span style="font-family:simsun;"><strong>1.8年网站技术经验，高水平公司技术团队</strong></span></span></span>\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="font-size:18px;"><span style="color:#FF0000;"><span style="font-family:simsun;"><strong>2.专业网站服务，售后服务有保障</strong></span></span></span>\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="font-size:18px;"><span style="color:#FF0000;"><span style="font-family:simsun;"><strong>3.程序源码持续更新，无后门，让您用着放心</strong></span></span></span>\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#FF0000;"><span style="font-size:24px;"><span style="font-family:simsun;"></span></span></span>\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#FF0000;"><span style="font-size:24px;"><span style="font-family:simsun;"></span></span></span>\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#3D85C6;"><span style="font-size:18px;">因源码的可复制性，一但发货后不接受任何理由退货退款，谢谢！源码保证可用，以演示网站为准。</span></span>\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#3D85C6;"><span style="font-size:18px;">为了满足客户需求，本店现在推出收费定制服务，每次根据功能大小不同收费20元以上，成功后直接转账即可，恕不退款，如遇问题安装问题请联系客服。</span></span>\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#FF9900;"><span style="font-size:18px;"><span style="color:#0000FF;">恶意退款套取源码直接拉黑投诉！6小时内确认五星好评联系客服索取</span><span style="color:#FF0000;">免费技术支持</span>！</span></span>\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#FF9900;"><span style="font-size:18px;">恶意差评者将视为放弃后续更新，并不负责任何售后，定制。望知悉。</span></span>\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="font-size:18px;"></span>\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="font-size:18px;"><span style="color:#ff0000;font-family:simhei;">修复版本会定期放出。功能开发版本同样在稳定进行中。。。</span></span>\r\n</p>', 1, 1, 200, 0, 15, 0.00, 0.00, 0.00, 1, NULL, NULL),
(129, 346, 0, '香港高速空间300M，独立IP云空间 全能空间，seo优化首先', '高速空间300M香港免备案', '1401/08/52cd20deb4a05.jpg', 200.00, 0.00, 1, 0, 0, 1389175007, 255, 1, '<div style="font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n		<img align="absMiddle" src="http://img01.taobaocdn.com/imgextra/i1/23736489/T2169PXsFXXXXXXXXX_!!23736489.jpg" style="vertical-align:top;" /><img align="absMiddle" src="http://img04.taobaocdn.com/imgextra/i4/23736489/T2L0eRXslXXXXXXXXX_!!23736489.jpg" style="vertical-align:top;" />\r\n	</p>\r\n	<div style="font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n		入门款，价格实惠\r\n	</div>\r\n</div>\r\n<div style="font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n</div>\r\n<div style="font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<h3 style="margin:1em 0px;padding:0px;">\r\n		W300型\r\n	</h3>\r\n网页空间：300MB支持语言：ASP/PHP/Perl/Python/Shtml数据库：赠送MySQL5 20M邮 局：赠送iGenus邮局500-5月流量：30 GB/月\r\n</div>', 1, 0, 200, 0, 14, 0.00, 0.00, 0.00, 1, NULL, NULL),
(130, 344, 0, 'vps 云主机租用', '世纪东方行云主机2型', '1401/08/52cd21c5cc5cc.png', 200.00, 0.00, 1, 0, 0, 1389175238, 255, 1, '<table border="0" cellspacing="0" cellpadding="0" style="border-spacing:0px;color:#000000;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;text-align:start;background-color:#FFFFFF;" class="ke-zeroborder">\r\n	<tbody>\r\n		<tr>\r\n			<td style="margin:0px;padding:0px;">\r\n				<div>\r\n					<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;">\r\n						此为，绵阳独享10M\r\n					</p>\r\n				</div>\r\n				<div style="margin-bottom:10px;font-size:14px;font-weight:bold;">\r\n					<span style="color:#FF0000;">什么是云主机?云主机于Vps的区别？</span>\r\n				</div>\r\n				<p style="margin-top:0px;margin-bottom:0px;padding:0px;list-style-type:none;text-indent:24px;">\r\n					VPS是采用虚拟软件，VZ或VM在一台服务器上虚拟出多个类似独立服务器的部分，每个部分都可以做单独的操作系统，管理方法同服务器一样。而云主机是一种类似VPS服务器的虚拟化技术， 云主机是在一组集群服务器上虚拟出多个类似独立服务器的部分，集群中每个服务器上都有云主机的一个镜像，从而大大提高了虚拟服务器的安全稳定性，除非所有的集群内服务器全部出现问题，云主机才会无法访问。云主机，是一种基于WEB服务，提供可调整云主机配置的弹性云技术，整合了计算、存储与网络资源的Iaas服务，具备按需使用和按需即时付费能力的云主机租用服务。在灵活性、可控性、扩展性及资源复用性上都有很大的提高\r\n				</p>\r\n				<p style="margin-top:0px;margin-bottom:0px;padding:0px;list-style-type:none;text-indent:24px;">\r\n					云主机主要受众群体为&nbsp;<strong><span style="color:#CC0000;">中小企业用户</span></strong>&nbsp;与&nbsp;<strong><span style="color:#CC0000;">高端个人用户</span></strong>（如个人站长），为其提供基于互联网的基础设施服务，这一用户群体庞大，且对互联网主机应用的需求日益增加。\r\n				</p>\r\n				<p style="margin-top:0px;margin-bottom:0px;padding:0px;list-style-type:none;text-indent:24px;">\r\n					通常他们有这些需求：\r\n				</p>\r\n				<p style="margin-top:0px;margin-bottom:0px;padding:0px;list-style-type:none;text-indent:24px;">\r\n					业务以主机租用与虚拟专用服务器为主，部分采用托管服务，但规模通常不大；\r\n				</p>\r\n				<p style="margin-top:0px;margin-bottom:0px;padding:0px;list-style-type:none;text-indent:24px;">\r\n					注重短期投资回报率，对产品的性价比要求较高；\r\n				</p>\r\n				<p style="margin-top:0px;margin-bottom:0px;padding:0px;list-style-type:none;text-indent:24px;">\r\n					个性化需求强，倾向于全价值链、傻瓜型产品 。\r\n				</p>\r\n				<p style="margin-top:0px;margin-bottom:0px;padding:0px;list-style-type:none;text-indent:24px;">\r\n					用户在采用传统的主机服务时，由于成本、运营商选择等诸多因素，不得不面对各种棘手的问题，而弹性计算服务的推出，则有效的解决了这一问题。\r\n				</p>\r\n				<p style="margin-top:0px;margin-bottom:0px;padding:0px;list-style-type:none;text-indent:24px;">\r\n					&nbsp;\r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<img align="absMiddle" src="http://img01.taobaocdn.com/imgextra/i1/23736489/T2yfSrXw4aXXXXXXXX_!!23736489.png" style="vertical-align:top;" /><img align="absMiddle" src="http://img02.taobaocdn.com/imgextra/i2/23736489/T2vkeFXr8aXXXXXXXX_!!23736489.png" style="vertical-align:top;" /><img align="absMiddle" src="http://img03.taobaocdn.com/imgextra/i3/23736489/T2iZOeXwNaXXXXXXXX_!!23736489.png" style="vertical-align:top;" />\r\n</p>', 1, 1, 199, 0, 13, 0.00, 0.00, 0.00, 1, NULL, NULL),
(131, 350, 0, '最新微信商城源码 微商城 独立微商城网站 可在线支付', '全网独家 价格全网最低 确保整站完整源码 后台完美修复！       \r\n\r\n 本源码全网独有！ 修改所有BUG 安全系统与后面全部封堵 无任何安全漏洞！\r\n\r\n指导改界面版权不像其他源码无法更改版权信息   修改过的后台可以实现所有功能', '1401/08/52cd23b430208.jpg', 20.00, 0.00, 1, 0, 0, 1389175735, 255, 1, '<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#0000FF;background-color:#B8D100;"><span style="font-size:18px;background-color:#B8D100;"><strong>已修复，调试模式开启下，前台后台出现的各种bug。</strong></span></span> \r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#0000ff;font-size:medium;"><b><span style="background-color:#B8D100;">更新能够在子目录下进行调试，适合个人开发。</span></b></span> \r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#0000FF;"><span style="font-size:18px;"><strong>套餐说明：<span style="background-color:#FF9900;"></span></strong></span></span> \r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#0000FF;"><span style="font-size:18px;"><strong>一、只要源码&nbsp; 拍一件=5元</strong></span></span> \r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#0000FF;"><span style="font-size:18px;"><strong>二、源码+安装调试服务&nbsp; 拍5件=25元</strong></span></span> \r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#0000FF;"><span style="font-size:18px;"><strong>三、源码+安装调试服务+精品域名空间&nbsp; 拍60件=300元</strong></span></span> \r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#FF0000;"><strong>微信公众平台演示号：weimilingshi（微零食)&nbsp; &nbsp;</strong></span> \r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	演示<strong>后台</strong>：http://wxshop.zz.idc916.com/admin.php&nbsp;&nbsp;&nbsp; admin&nbsp;&nbsp; admin888\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#FF0000;"><strong>全网独家 价格全网最低&nbsp;确保整站完整源码 后台完美修复！&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></span> \r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	&nbsp;<span style="color:#FF0000;"><strong>本源码全网独有！ 修改所有BUG 安全系统与后面全部封堵 无任何安全漏洞！</strong></span> \r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#FF0000;"><strong>指导改界面版权不像其他源码无法更改版权信息&nbsp;&nbsp; 修改过的后台可以实现所有功能</strong></span> \r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#FF0000;"></span> \r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#FF0000;"><strong><strong style="line-height:1.5;color:#0000FF;"><span style="font-size:18px;">本源码为仅供企业使用，<span style="color:#FF0000;">个人无法接入支付宝</span>！关于企业支付条件请看以下几点！</span></strong></strong></span> \r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#FF0000;"><strong><strong><span style="font-size:18px;"><span style="background-color:#9900FF;"><span style="background-color:#FFFFFF;"><span style="background-color:#FFFF00;">企业支付接口申请条件：</span></span></span></span></strong></strong></span> \r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#FF0000;"><strong><span style="color:#9900FF;"><span style="font-size:18px;">1.您必须有已建设完成的无线网站（不包含淘宝网店、团购类网站）或无线应用demo（支持.ipa .apk .xap .doc .docx .pdf格式）；<br />\r\n2.您的网站必须已通过ICP备案，备案信息与签约商户信息一致，网站经营的商品或服务内容明确、完整（古玩、珠宝等奢侈品、投资类行业无法申请本产品）；<br />\r\n3.您申请前必须拥有企业支付宝账号（不含个体工商户账号），且通过支付宝实名认证审核，公司实收资本≥10万元，注册企业账号。<br />\r\n<br />\r\n<a href="https://b.alipay.com/order/productDetail.htm?productId=2013080604609688" style="text-decoration:none;color:#3366CC;">https://b.alipay.com/order/productDetail.htm?productId=2013080604609688</a></span></span></strong></span> \r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<u><strong><span style="color:#FF0000;">温馨提示：本商品为虚拟商品，只要安装成功能正常使用，概不退款款！恶意退款套源码的、差评师绕道。发现投诉到底！</span></strong></u> \r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;">\r\n	<span style="color:#FF0000;"></span> \r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;color:#404040;">\r\n	<span style="color:#ff0000;font-size:medium;font-family:微软雅黑;"><img align="middle" src="http://img03.taobaocdn.com/imgextra/i3/67177571/T2VOMxXf4bXXXXXXXX-67177571.jpg" style="vertical-align:top;" /></span> \r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;color:#404040;">\r\n	<span style="color:#ff0000;font-size:medium;font-family:微软雅黑;"><span style="color:#0000ff;font-size:small;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#0000ff;font-size:small;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></span></span> \r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;color:#404040;">\r\n	<span style="color:#ff0000;font-size:medium;font-family:微软雅黑;"><span style="color:#0000ff;font-size:small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ff0000;font-size:large;"><strong>源码微信展示界面</strong></span></span></span> \r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;color:#404040;">\r\n	<br />\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;color:#404040;">\r\n	<span style="color:#ff0000;font-size:medium;font-family:微软雅黑;"><img align="middle" src="http://img01.taobaocdn.com/imgextra/i1/67177571/T2zuByXDhXXXXXXXXX-67177571.jpg" style="vertical-align:top;" /><img align="middle" src="http://img03.taobaocdn.com/imgextra/i3/67177571/T2snByXs8aXXXXXXXX-67177571.jpg" width="640" height="358" style="vertical-align:top;" /></span> \r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;color:#404040;">\r\n	<br />\r\n</p>\r\n<p style="margin-top:1.12em;margin-bottom:1.12em;padding:0px;font-family:tahoma, arial, 宋体, sans-serif;font-size:14px;line-height:21px;white-space:normal;background-color:#FFFFFF;color:#404040;">\r\n	<br />\r\n</p>', 0, 1, 200, 0, 15, 0.00, 0.00, 0.00, 1, NULL, NULL);

--
-- 导出表中的数据 `weixin_item_attr`
--


--
-- 导出表中的数据 `weixin_item_cate`
--

INSERT INTO `weixin_item_cate` (`id`, `name`, `tags`, `pid`, `spid`, `img`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `seo_title`, `seo_keys`, `seo_desc`) VALUES
(342, '主机空间', '', 0, '0', '', '', '', 0, 0, 0, 0, 255, 1, 1, 0, '', '', ''),
(343, '微信源码', '', 0, '0', '', '', '', 0, 0, 0, 0, 255, 1, 1, 0, '', '', ''),
(344, '云主机', '', 0, '0', '', '', '', 0, 0, 0, 0, 255, 1, 1, 0, '', '', ''),
(345, '域名注册', '', 0, '0', '', '', '', 0, 0, 0, 0, 255, 1, 1, 0, '', '', ''),
(346, '世纪东方', '', 342, '342|', '', '', '', 0, 0, 0, 0, 255, 1, 1, 0, '', '', ''),
(347, '郑州景安', '', 342, '342|', '', '', '', 0, 0, 0, 0, 255, 1, 1, 0, '', '', ''),
(348, '北京电信通', '', 342, '342|', '', '', '', 0, 0, 0, 0, 255, 1, 1, 0, '', '', ''),
(349, '微信营销平台', '', 343, '343|', '', '', '', 0, 0, 0, 0, 255, 1, 1, 0, '', '', ''),
(350, '微商城', '', 343, '343|', '', '', '', 0, 0, 0, 0, 255, 1, 1, 0, '', '', '');

--
-- 导出表中的数据 `weixin_item_cate_tag`
--

INSERT INTO `weixin_item_cate_tag` (`cate_id`, `tag_id`, `weight`) VALUES
(3, 1, 0),
(4, 2, 0),
(5, 3, 0),
(6, 4, 0),
(7, 5, 0),
(8, 6, 0),
(9, 7, 0),
(10, 8, 0),
(11, 9, 0),
(12, 10, 0),
(17, 11, 0),
(18, 12, 0),
(21, 13, 0),
(23, 14, 0),
(22, 15, 0),
(24, 16, 0),
(25, 17, 0),
(26, 18, 0),
(27, 19, 0),
(28, 20, 0),
(29, 21, 0),
(30, 22, 0),
(32, 23, 0),
(33, 24, 0),
(34, 25, 0),
(35, 26, 0),
(36, 27, 0),
(37, 28, 0),
(38, 29, 0),
(39, 30, 0),
(41, 31, 0),
(42, 32, 0),
(43, 33, 0),
(44, 34, 0),
(45, 35, 0),
(46, 14, 0),
(47, 36, 0),
(48, 37, 0),
(49, 38, 0),
(319, 39, 0),
(318, 40, 0),
(317, 41, 0),
(316, 42, 0),
(320, 43, 0),
(321, 44, 0),
(322, 45, 0),
(323, 46, 0),
(91, 96, 0),
(92, 97, 0),
(93, 98, 0),
(94, 99, 0),
(281, 100, 0),
(95, 101, 0),
(282, 102, 0),
(283, 103, 0),
(96, 104, 0),
(284, 105, 0),
(97, 106, 0),
(285, 107, 0),
(98, 108, 0),
(99, 109, 0),
(286, 110, 0),
(100, 111, 0),
(287, 112, 0),
(101, 113, 0),
(288, 114, 0),
(289, 115, 0),
(290, 116, 0),
(291, 117, 0),
(292, 118, 0),
(293, 119, 0),
(294, 120, 0),
(295, 121, 0),
(296, 122, 0),
(297, 123, 0),
(298, 124, 0),
(299, 125, 0),
(300, 126, 0),
(301, 127, 0),
(302, 128, 0),
(303, 129, 0),
(304, 130, 0),
(305, 131, 0),
(306, 132, 0),
(307, 133, 0),
(308, 134, 0),
(309, 135, 0),
(310, 136, 0),
(219, 137, 0),
(311, 138, 0),
(312, 139, 0),
(313, 140, 0),
(314, 141, 0),
(260, 142, 0),
(261, 143, 0),
(262, 144, 0),
(263, 145, 0),
(264, 146, 0),
(265, 147, 0),
(266, 148, 0),
(267, 149, 0),
(268, 150, 0),
(269, 151, 0),
(270, 152, 0),
(271, 153, 0),
(272, 154, 0),
(273, 155, 0),
(274, 156, 0),
(275, 157, 0),
(276, 158, 0),
(277, 159, 0),
(278, 160, 0),
(279, 161, 0),
(280, 162, 0),
(237, 163, 0),
(238, 164, 0),
(239, 165, 0),
(240, 166, 0),
(241, 167, 0),
(242, 168, 0),
(243, 169, 0),
(244, 170, 0),
(245, 171, 0),
(246, 172, 0),
(247, 173, 0),
(248, 174, 0),
(249, 175, 0),
(250, 176, 0),
(251, 177, 0),
(206, 178, 0),
(207, 179, 0),
(208, 180, 0),
(209, 181, 0),
(210, 182, 0),
(211, 183, 0),
(212, 184, 0),
(213, 185, 0),
(214, 186, 0),
(215, 187, 0),
(216, 188, 0),
(217, 189, 0),
(218, 190, 0),
(220, 191, 0),
(221, 192, 0),
(222, 193, 0),
(223, 194, 0),
(224, 195, 0),
(225, 196, 0),
(226, 196, 0),
(226, 137, 0),
(227, 197, 0),
(228, 198, 0),
(229, 199, 0),
(230, 200, 0),
(231, 201, 0),
(232, 202, 0),
(233, 203, 0),
(234, 204, 0),
(236, 205, 0),
(235, 206, 0),
(252, 207, 0),
(253, 208, 0),
(254, 209, 0),
(255, 210, 0),
(256, 211, 0),
(257, 212, 0),
(258, 213, 0),
(259, 214, 0),
(178, 215, 0),
(179, 216, 0),
(180, 267, 0),
(181, 268, 0),
(182, 269, 0),
(183, 270, 0),
(184, 271, 0),
(185, 289, 0),
(186, 290, 0),
(187, 291, 0),
(188, 292, 0),
(189, 293, 0),
(190, 294, 0),
(191, 295, 0),
(192, 296, 0),
(193, 297, 0),
(194, 330, 0),
(195, 336, 0),
(196, 337, 0),
(197, 338, 0),
(198, 339, 0),
(199, 340, 0),
(200, 341, 0),
(201, 342, 0),
(202, 343, 0),
(203, 344, 0),
(204, 345, 0),
(205, 346, 0),
(170, 347, 0),
(171, 25, 0),
(172, 26, 0),
(173, 30, 0),
(174, 348, 0),
(175, 27, 0),
(176, 349, 0),
(177, 259, 0),
(177, 28, 0),
(163, 350, 0),
(164, 351, 0),
(165, 352, 0),
(166, 353, 0),
(167, 354, 0),
(168, 355, 0),
(169, 314, 0),
(127, 356, 0),
(128, 357, 0),
(130, 358, 0),
(132, 359, 0),
(81, 360, 0),
(82, 301, 0),
(83, 323, 0),
(84, 361, 0),
(85, 300, 0),
(86, 318, 0),
(87, 362, 0),
(88, 332, 0),
(89, 192, 0),
(74, 363, 0),
(75, 364, 0),
(76, 365, 0),
(77, 366, 0),
(78, 367, 0),
(79, 368, 0),
(61, 97, 0),
(61, 369, 0),
(62, 370, 0),
(63, 371, 0),
(64, 372, 0),
(316, 373, 0),
(316, 374, 0),
(316, 375, 0),
(65, 376, 0),
(65, 377, 0),
(66, 378, 0),
(67, 379, 0),
(68, 380, 0),
(69, 381, 0),
(70, 382, 0),
(71, 308, 0),
(72, 383, 0),
(52, 384, 0),
(53, 349, 0),
(54, 385, 0),
(55, 28, 0),
(56, 27, 0),
(57, 386, 0),
(58, 25, 0),
(59, 30, 0),
(133, 387, 0),
(135, 388, 0),
(137, 389, 0),
(139, 390, 0),
(140, 246, 0),
(141, 391, 0),
(143, 392, 0),
(145, 241, 0),
(148, 393, 0),
(150, 394, 0),
(151, 259, 0),
(152, 395, 0),
(154, 237, 0),
(156, 238, 0),
(158, 396, 0),
(160, 397, 0),
(161, 218, 0),
(113, 398, 0),
(117, 371, 0),
(118, 372, 0),
(119, 399, 0),
(119, 400, 0),
(120, 27, 0),
(121, 28, 0),
(122, 401, 0),
(123, 233, 0),
(104, 220, 0),
(105, 402, 0),
(106, 403, 0),
(107, 404, 0),
(108, 405, 0),
(109, 406, 0),
(110, 302, 0),
(111, 223, 0),
(325, 42, 0),
(325, 374, 0),
(325, 375, 0),
(326, 39, 0),
(326, 407, 0),
(327, 46, 0),
(327, 408, 0),
(327, 409, 0),
(327, 410, 0),
(327, 411, 0),
(328, 41, 0),
(328, 412, 0),
(328, 413, 0),
(328, 414, 0),
(329, 44, 0),
(329, 415, 0),
(330, 45, 0),
(330, 416, 0),
(331, 43, 0),
(331, 373, 0),
(332, 40, 0),
(332, 417, 0),
(332, 418, 0);

--
-- 导出表中的数据 `weixin_item_comment`
--


--
-- 导出表中的数据 `weixin_item_img`
--

INSERT INTO `weixin_item_img` (`id`, `item_id`, `url`, `add_time`, `ordid`, `status`) VALUES
(521, 127, '1401/08/52cd1fcebe2b8.png', 1389174735, 255, 1),
(520, 127, '1401/08/52cd1fceb255d.jpg', 1389174735, 255, 1),
(519, 127, '1401/08/52cd1fce2b509.jpg', 1389174735, 255, 1),
(522, 128, '1401/08/52cd20692bf6e.jpg', 1389174893, 255, 1),
(523, 129, '1401/08/52cd20deb4a05.jpg', 1389175007, 255, 1),
(524, 130, '1401/08/52cd21c5cc5cc.png', 1389175238, 255, 1),
(525, 130, '1401/08/52cd21c6117ab.jpg', 1389175238, 255, 1),
(526, 131, '1401/08/52cd23b430208.jpg', 1389175735, 255, 1);

--
-- 导出表中的数据 `weixin_item_like`
--


--
-- 导出表中的数据 `weixin_item_order`
--


--
-- 导出表中的数据 `weixin_item_orig`
--

INSERT INTO `weixin_item_orig` (`id`, `img`, `name`, `url`, `ordid`) VALUES
(1, '50b2e721a6c1e_thumb.jpg', '淘宝', 'taobao.com', 0),
(2, '50b2e726d4ade_thumb.jpg', '天猫', 'tmall.com', 0);

--
-- 导出表中的数据 `weixin_item_site`
--


--
-- 导出表中的数据 `weixin_item_tag`
--

INSERT INTO `weixin_item_tag` (`item_id`, `tag_id`) VALUES
(127, 536),
(128, 537),
(128, 538),
(128, 539),
(128, 540),
(128, 541),
(128, 542),
(128, 543),
(128, 544),
(128, 545),
(129, 546),
(129, 547),
(129, 548),
(129, 549),
(129, 550),
(129, 551),
(129, 552),
(129, 553),
(129, 554),
(130, 555),
(130, 556),
(131, 537),
(131, 540),
(131, 543),
(131, 550),
(131, 557),
(131, 558);

--
-- 导出表中的数据 `weixin_keyword`
--

INSERT INTO `weixin_keyword` (`kid`, `kename`, `kecontent`, `type`, `kyword`, `titles`, `imageinfo`, `linkinfo`, `ismess`, `isfollow`, `iskey`) VALUES
(95, NULL, NULL, 2, NULL, 'a:3:{i:0;s:30:"欢迎关注我的微信号码";i:1;s:36:"多谢关注，送上优惠信息了";i:2;s:12:"新品推荐";}', 'a:3:{i:0;s:45:"data/upload/keyword/1401/07/52cbc52384c65.jpg";i:1;s:45:"data/upload/keyword/1401/07/52cbc4f80776c.jpg";i:2;s:45:"data/upload/keyword/1401/07/52cbc52384c65.jpg";}', 'a:3:{i:0;s:13:"wap.baidu.com";i:1;s:13:"wap.baidu.com";i:2;s:13:"wap.baidu.com";}', NULL, 1, NULL),
(93, '欢迎光临', '您好，欢迎光临<a href="/">温馨小店</a>', 1, '你好 您好', '', '', '', NULL, NULL, 1),
(94, NULL, NULL, 2, NULL, 'a:3:{i:0;s:39:"您好，进入商城优惠多多哦！";i:1;s:12:"热门优惠";i:2;s:12:"温馨家居";}', 'a:3:{i:0;s:45:"data/upload/keyword/1401/07/52cbb0f95d5fd.jpg";i:1;s:45:"data/upload/keyword/1401/07/52cbc52a91bf4.jpg";i:2;s:45:"data/upload/keyword/1401/07/52cbc52384c65.jpg";}', 'a:3:{i:0;s:13:"wap.baidu.com";i:1;s:14:"www.taobao.com";i:2;s:15:"www.sina.com.cn";}', 1, NULL, NULL);

--
-- 导出表中的数据 `weixin_mail_queue`
--


--
-- 导出表中的数据 `weixin_menu`
--

INSERT INTO `weixin_menu` (`id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display`) VALUES
(1, '全局', 0, 'setting', 'index', '', '', 0, 0, 1),
(2, '核心设置', 1, 'setting', 'index', '', '', 0, 0, 1),
(3, '全局参数', 148, 'setting', 'index', '&type=site', '', 0, 2, 1),
(4, '邮件设置', 148, 'setting', 'index', '&type=mail', '', 0, 5, 1),
(172, '专辑管理', 285, 'album', 'index', '', '', 0, 4, 1),
(6, '菜单管理', 2, 'menu', 'index', '', '', 0, 7, 0),
(7, '新增', 6, 'menu', 'add', '', '', 0, 0, 0),
(8, '编辑', 6, 'menu', 'edit', '', '', 0, 0, 0),
(9, '删除', 6, 'menu', 'delete', '', '', 0, 0, 0),
(10, '运营', 0, 'operate', 'index', '', '', 0, 4, 1),
(11, '广告管理', 10, 'advert', 'index', '', '', 0, 2, 1),
(12, '广告管理', 11, 'ad', 'index', '', '', 5, 0, 1),
(13, '广告位管理', 11, 'adboard', 'index', '', '', 0, 0, 1),
(14, '友情链接', 10, 'flink', 'index', '', '', 0, 3, 0),
(15, '友情链接', 14, 'flink', 'index', '', '', 0, 0, 1),
(16, '链接分类', 14, 'flink_cate', 'index', '', '', 0, 0, 1),
(17, '新增', 15, 'flink', 'add', '', '', 0, 0, 0),
(18, '编辑', 15, 'flink', 'edit', '', '', 0, 0, 0),
(19, '删除', 15, 'flink', 'delete', '', '', 0, 0, 0),
(20, '新增', 16, 'flink_cate', 'add', '', '', 0, 0, 0),
(21, '编辑', 16, 'flink_cate', 'edit', '', '', 0, 0, 0),
(22, '删除', 16, 'flink_cate', 'del', '', '', 0, 0, 0),
(23, '新增', 12, 'ad', 'add', '', '', 0, 0, 0),
(24, '编辑', 12, 'ad', 'edit', '', '', 0, 0, 0),
(25, '删除', 12, 'ad', 'delete', '', '', 0, 0, 0),
(26, '新增', 13, 'adboard', 'add', '', '', 0, 0, 0),
(27, '编辑', 13, 'adboard', 'edit', '', '', 0, 0, 0),
(28, '删除', 13, 'adboard', 'delete', '', '', 0, 0, 0),
(29, '数据', 0, 'data', 'index', '', '', 0, 5, 1),
(258, '商品分类', 256, 'score_item_cate', 'index', '', '', 0, 255, 1),
(31, '数据库管理', 29, 'backup', 'index', '', '', 0, 2, 1),
(32, '数据备份', 31, 'backup', 'index', '', '', 0, 0, 1),
(33, '数据恢复', 31, 'backup', 'restore', '', '', 0, 0, 1),
(34, '缓存管理', 254, 'cache', 'index', '', '', 0, 0, 1),
(195, '登陆接口', 245, 'oauth', 'index', '', '', 0, 2, 1),
(36, '黑名单管理', 117, 'ipban', 'index', '', '', 0, 3, 0),
(37, '新增', 36, 'ipban', 'add', '', '', 0, 0, 0),
(38, '编辑', 36, 'ipban', 'edit', '', '', 0, 0, 0),
(50, '商品', 0, 'content', 'index', '', '', 0, 1, 1),
(51, '商品管理', 50, 'article', 'index', '', '', 0, 1, 1),
(52, '商品管理', 51, 'item', 'index', '', '', 1, 1, 1),
(54, '编辑', 52, 'article', 'edit', '', '', 0, 3, 0),
(190, '删除', 52, 'item', 'delete', '', '', 0, 4, 0),
(56, '商品分类', 51, 'item_cate', 'index', '', '', 1, 6, 1),
(57, '新增', 56, 'article_cate', 'add', '', '', 0, 0, 0),
(58, '编辑', 56, 'article_cate', 'edit', '', '', 0, 0, 0),
(59, '删除', 56, 'article_cate', 'delete', '', '', 0, 0, 0),
(60, '管理员管理', 1, 'admin', 'index', '', '', 0, 4, 1),
(61, '管理员管理', 60, 'admin', 'index', '', '', 7, 0, 1),
(62, '新增', 61, 'admin', 'add', '', '', 0, 0, 0),
(63, '编辑', 61, 'admin', 'edit', '', '', 0, 0, 0),
(64, '删除', 61, 'admin', 'delete', '', '', 0, 0, 0),
(65, '角色管理', 60, 'admin_role', 'index', '', '', 7, 0, 1),
(66, '新增', 65, 'admin_role', 'add', '', '', 0, 0, 0),
(192, '淘宝采集', 164, 'collect_alimama', 'index', '', '', 0, 0, 0),
(70, '用户', 0, 'user', 'index', '', '', 0, 3, 1),
(119, '新增', 149, 'user', 'add', '', '', 0, 3, 0),
(118, '编辑', 149, 'user', 'edit', '', '', 0, 4, 0),
(117, '会员管理', 70, 'user', 'index', '', '', 0, 0, 1),
(156, '文章分类', 154, 'article_cate', 'index', '', '', 0, 3, 1),
(151, '导航设置', 216, 'nav', 'index', '', '', 0, 1, 1),
(149, '会员管理', 117, 'user', 'index', '', '', 0, 1, 1),
(150, '删除', 149, 'user', 'delete', '', '', 0, 5, 0),
(152, '主导航', 151, 'nav', 'index', '&type=main', '', 0, 1, 1),
(153, '底部导航', 151, 'nav', 'index', '&type=bottom', '', 0, 2, 1),
(154, '文章管理', 10, 'article', 'index', '', '', 0, 1, 1),
(155, '文章管理', 154, 'article', 'index', '', '', 0, 1, 1),
(148, '站点设置', 2, 'setting', 'index', '', '', 0, 0, 1),
(157, '添加文章', 155, 'article', 'add', '', '', 0, 2, 1),
(158, '编辑', 155, 'article', 'edit', '', '', 0, 3, 0),
(159, '删除', 155, 'article', 'delete', '', '', 0, 4, 0),
(160, '新增', 156, 'article_cate', 'add', '', '', 0, 0, 0),
(161, '编辑', 156, 'article_cate', '编辑', '', '', 0, 0, 0),
(162, '删除', 156, 'article_cate', 'delete', '', '', 0, 0, 0),
(164, '商品采集', 50, 'item_collect', 'index', '', '', 0, 2, 0),
(173, '专辑管理', 172, 'album', 'index', '', '', 0, 1, 1),
(174, '专辑分类', 172, 'album_cate', 'index', '', '', 0, 3, 1),
(175, '新增', 174, 'album_cate', 'add', '', '', 0, 0, 0),
(176, '编辑', 174, 'album_cate', 'edit', '', '', 0, 0, 0),
(177, '删除', 174, 'album_cate', 'delete', '', '', 0, 0, 0),
(178, '敏感词管理', 254, 'badword', 'index', '', '', 0, 4, 1),
(179, '新增', 178, 'badword', 'add', '', '', 0, 0, 0),
(180, '编辑', 178, 'badword', 'edit', '', '', 0, 0, 0),
(181, '删除', 36, 'ipban', 'delete', '', '', 0, 0, 0),
(182, '删除', 178, 'badword', 'delete', '', '', 0, 0, 0),
(255, '采集马甲', 117, 'auto_user', 'index', '', '', 0, 2, 0),
(184, '标签管理', 254, 'tag', 'index', '', '', 0, 3, 1),
(185, '商品接口', 245, 'item_site', 'index', '', '', 0, 1, 1),
(186, '商品评论', 51, 'item_comment', 'index', '', '', 0, 7, 0),
(187, '删除', 186, 'item_comment', 'delete', '', '', 0, 0, 0),
(265, '删除', 257, 'score_item', 'edit', '', '', 0, 4, 0),
(250, '一键删除', 51, 'item', 'delete_search', '', '', 0, 5, 0),
(198, '新增', 196, 'message', 'add', '', '', 0, 0, 1),
(199, '商品来源', 51, 'item_orig', 'index', '', '', 0, 6, 0),
(200, '新增', 199, 'item_orig', 'add', '', '', 0, 0, 0),
(201, '编辑', 199, 'item_orig', 'edit', '', '', 0, 0, 0),
(202, '删除', 199, 'item_orig', 'delete', '', '', 0, 0, 0),
(203, '商品审核', 51, 'item', 'check', '', '', 0, 5, 0),
(249, '添加商品', 51, 'item', 'add', '', '', 1, 3, 1),
(259, '新增', 258, 'score_item_cate', 'add', '', '', 0, 255, 0),
(268, '批量添加', 164, 'collect_batch', 'index', '', '', 0, 255, 0),
(269, '积分设置', 2, 'score', 'setting', '', '', 0, 3, 0),
(210, '专辑审核', 172, 'album', 'check', '', '', 0, 2, 1),
(257, '积分商品', 256, 'score_item', 'index', '', '', 0, 255, 1),
(212, '日志管理', 29, 'log', 'index', '', '', 0, 3, 1),
(213, '管理员日志', 212, 'log', 'index', '', '', 0, 0, 0),
(214, '用户日志', 212, 'log', 'user', '', '', 0, 0, 1),
(215, '积分日志', 212, 'log', 'score', '', '', 0, 0, 0),
(216, '界面设置', 1, 'setting', 'index', '&type=show', '', 0, 2, 0),
(256, '积分商城', 70, 'score_item', 'index', '', '', 0, 255, 0),
(254, '系统数据', 29, 'tag', 'index', '', '', 0, 1, 1),
(264, '编辑', 257, 'score_item', 'edit', '', '', 0, 3, 0),
(263, '添加商品', 257, 'score_item', 'add', '', '', 0, 2, 0),
(262, '积分订单', 256, 'score_order', 'index', '', '', 0, 255, 1),
(261, '删除', 258, 'score_item_cate', 'delete', '', '', 0, 255, 0),
(260, '编辑', 258, 'score_item_cate', 'edit', '', '', 0, 255, 0),
(232, '站内信管理', 70, 'message', 'index', '', '', 0, 0, 0),
(233, '系统通知', 232, 'message', 'index', '&type=1', '', 0, 0, 1),
(234, '用户私信', 232, 'message', 'index', '&type=2', '', 0, 0, 1),
(235, '通知模版', 2, 'message_tpl', 'index', '&type=msg', '', 0, 4, 0),
(236, '添加模版', 235, 'message_tpl', 'add', '', '', 0, 7, 0),
(237, '编辑', 235, 'message_tpl', 'edit', '', '', 0, 255, 0),
(238, '删除', 235, 'message_tpl', 'delete', '', '', 0, 255, 0),
(240, '单页管理', 154, 'article', 'page', '', '', 0, 2, 1),
(242, '积分记录', 269, 'score', 'logs', '', '', 0, 2, 0),
(244, '应用', 0, 'plugin', 'index', '', '', 0, 6, 0),
(245, '系统接口', 244, 'apis', 'index', '', '', 0, 1, 1),
(246, '应用管理', 244, 'plugin', 'index', '', '', 0, 3, 1),
(247, '应用中心', 246, 'plugin', 'index', '', '', 0, 0, 1),
(248, '已安装应用', 246, 'plugin', 'list', '', '', 0, 0, 1),
(252, '用户整合', 245, 'integrate', 'index', '', '', 0, 255, 1),
(253, '图片模式', 52, 'item', 'index', '&sm=image', '', 0, 2, 1),
(267, '批量注册', 149, 'user', 'add_users', '', '', 0, 2, 1),
(270, '邮件模板', 235, 'message_tpl', 'index', '&type=mail', '', 0, 6, 0),
(271, '短消息模板', 235, 'message_tpl', 'index', '&type=msg', '', 0, 5, 0),
(272, '附件设置', 148, 'setting', 'index', '&type=attachment', '', 0, 4, 1),
(273, '显示设置', 216, 'setting', 'index', '&type=style', '', 0, 2, 1),
(274, '模板管理', 216, 'template', 'index', '', '', 0, 3, 1),
(275, '站点设置', 148, 'setting', 'index', '', '', 6, 1, 1),
(276, '积分设置', 269, 'score', 'setting', '', '', 0, 1, 0),
(277, '商品管理', 52, 'item', 'index', '', '', 0, 1, 1),
(278, '文章管理', 155, 'article', 'index', '', '', 0, 1, 1),
(279, '会员管理', 149, 'user', 'index', '', '', 3, 1, 1),
(280, '积分商品', 257, 'score_item', 'index', '', '', 0, 1, 0),
(281, '淘宝评论', 164, 'cmt_taobao', 'index', '', '', 0, 255, 0),
(282, 'SEO设置', 2, 'seo', 'url', '', '', 0, 5, 0),
(283, 'UR静态化', 282, 'seo', 'url', '', '', 0, 255, 1),
(284, '页面SEO', 282, 'seo', 'page', '', '', 0, 255, 1),
(285, '专辑', 0, 'album', 'index', '', '', 0, 2, 0),
(286, '注册登陆', 2, 'setting', 'user', '', '', 6, 2, 0),
(293, '编辑', 291, 'brandlist', ' edit', '', '', 0, 255, 0),
(292, '新增', 291, 'brandlist', 'add', '', '', 0, 255, 0),
(291, '品牌管理', 51, 'brandlist', 'index', '', '', 1, 1, 1),
(294, '删除', 291, 'brandlist', 'delete', '', '', 0, 255, 0),
(295, '交易管理', 50, 'item_order', 'index', '', '', 0, 255, 1),
(296, '订单管理', 295, 'item_order', 'index', '', '', 2, 255, 1),
(297, '快递方式管理', 295, 'delivery', 'index', '', '', 2, 255, 1),
(298, '发货地址管理', 295, 'address', 'index', '', '', 2, 255, 1),
(299, '微信回复', 0, 'keyword', 'index', '', '', 0, 2, 1),
(300, '回复设置', 299, 'keyword', 'index', '', '', 0, 255, 1),
(301, '关键词自动回复', 300, 'keyword', 'addkeyword', '', '', 4, 255, 1),
(302, '消息自动回复', 300, 'keyword', 'addmess', '', '', 4, 255, 1),
(303, '关注自动回复', 300, 'keyword', 'addfollow', '', '', 4, 255, 1),
(304, '收款方式设置', 295, 'alipay', 'index', '', '', 2, 255, 1),
(305, '自定义菜单', 300, 'custom_menu', 'index', '', '', 4, 255, 1),
(306, '添加', 305, 'custom_menu', 'add', '', '', 0, 255, 0),
(307, '编辑', 305, 'custom_menu', 'edit', '', '', 0, 255, 0),
(308, '删除', 305, 'custom_menu', 'delete', '', '', 0, 255, 0),
(310, '管理', 302, 'keyword', 'showmess', '', '', 0, 255, 0),
(309, '编辑', 301, 'keyword', 'addkeyword_ajax', '', '', 0, 255, 0),
(311, '管理', 303, 'keyword', 'showfollow', '', '', 0, 255, 0),
(312, '图片选择', 301, 'keyword', 'allimages', '', '', 0, 255, 0),
(313, '图片上传', 301, 'keyword', 'ajaxupload', '', '', 0, 255, 0),
(314, '图片删除', 301, 'keyword', 'delimg', '', '', 0, 255, 0),
(315, '单页编辑', 240, 'article', 'page_edit', '', '', 0, 255, 0);


--
-- 导出表中的数据 `weixin_message`
--


--
-- 导出表中的数据 `weixin_message_tpl`
--

INSERT INTO `weixin_message_tpl` (`id`, `type`, `is_sys`, `name`, `alias`, `content`) VALUES
(1, 'msg', 1, '登录', 'login', '<p>\r\n	欢迎\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<div>\r\n	<p>\r\n		<span style="font-size:10.5000pt;font-family:''宋体'';">拼品网是一个集购物与分享与一体的网站，它会带给你惊喜，它让你与心仪的宝贝不期而遇，同时和朋友一起逛，分享每一次的购物乐趣，惊喜不断<span>~</span></span><span style="font-size:10.5000pt;font-family:''宋体'';"></span> \r\n	</p>\r\n	<p>\r\n		<span style="font-size:10.5000pt;font-family:''宋体'';"></span> \r\n	</p>\r\n	<p>\r\n		<span style="font-size:10.5000pt;font-family:''宋体'';">为了更好地开始专属于你的购物之旅，你可以：</span><span style="font-size:10.5000pt;font-family:''宋体'';"></span> \r\n	</p>\r\n	<p>\r\n		<span style="font-size:10.5000pt;font-family:''宋体'';"></span> \r\n	</p>\r\n	<p>\r\n		<span style="font-size:10.5000pt;font-family:''宋体'';">1<span>、发现更多美好</span></span><span style="font-size:10.5000pt;font-family:''宋体'';"></span> \r\n	</p>\r\n	<p>\r\n		<span style="font-size:10.5000pt;font-family:''宋体'';"></span> \r\n	</p>\r\n	<p>\r\n		<span style="font-size:10.5000pt;font-family:''宋体'';">2<span>、寻找喜好相投的好友</span></span><span style="font-size:10.5000pt;font-family:''宋体'';"></span> \r\n	</p>\r\n	<p>\r\n		<span style="font-size:10.5000pt;font-family:''宋体'';"></span> \r\n	</p>\r\n	<p>\r\n		<span style="font-size:10.5000pt;font-family:''宋体'';">4<span>、创建属于自己的专辑</span></span><span style="font-size:10.5000pt;font-family:''宋体'';"></span> \r\n	</p>\r\n	<p>\r\n		<span style="font-size:10.5000pt;font-family:''宋体'';"></span> \r\n	</p>\r\n	<p>\r\n		<span style="font-size:10.5000pt;font-family:''宋体'';">5<span>、邀请你的好友一起发现美丽</span></span><span style="font-size:10.5000pt;font-family:''宋体'';"></span> \r\n	</p>\r\n	<p>\r\n		<span style="font-size:10.5000pt;font-family:''宋体'';"></span> \r\n	</p>\r\n	<p>\r\n		<span style="font-size:10.5000pt;font-family:''宋体'';">6<span>、分享更多好东西</span></span><span style="font-size:10.5000pt;font-family:''宋体'';"></span> \r\n	</p>\r\n	<p>\r\n		<span style="font-size:10.5000pt;font-family:''宋体'';"></span> \r\n	</p>\r\n	<p>\r\n		<span style="font-size:10.5000pt;font-family:''宋体'';"></span> \r\n	</p>\r\n	<p>\r\n		<span style="font-size:10.5000pt;font-family:''宋体'';">欢迎联系使用拼品网，我们随时恭候你的提问和建议。</span><span style="font-size:10.5000pt;font-family:''宋体'';"></span> \r\n	</p>\r\n	<p>\r\n		<span style="font-size:10.5000pt;font-family:''宋体'';">祝您玩的愉快<span>^^</span></span> \r\n	</p>\r\n</div>\r\n<p>\r\n	<br />\r\n</p>'),
(3, 'mail', 1, '找回密码', 'findpwd', '<p>\r\n	尊敬的{$username}:\r\n</p>\r\n<p style="padding-left:30px;">\r\n	您好, 您刚才在 {$site_name} 申请了重置密码，请点击下面的链接进行重置：\r\n</p>\r\n<p style="padding-left:30px;">\r\n	<a href="{$reset_url}">{$reset_url}</a> \r\n</p>\r\n<p style="padding-left:30px;">\r\n	此链接只能使用一次, 如果失效请重新申请. 如果以上链接无法点击，请将它拷贝到浏览器(例如IE)的地址栏中。\r\n</p>\r\n<p style="text-align:right;">\r\n	{$site_name}\r\n</p>\r\n<p style="text-align:right;">\r\n	{$send_time}\r\n</p>');

--
-- 导出表中的数据 `weixin_nav`
--


--
-- 导出表中的数据 `weixin_oauth`
--


--
-- 导出表中的数据 `weixin_order_detail`
--

INSERT INTO `weixin_order_detail` (`id`, `orderId`, `itemId`, `title`, `img`, `price`, `quantity`) VALUES
(24, '201401081821181719', 130, 'vps 云主机租用', '1401/08/52cd21c5cc5cc.png', 200.00, 1),
(25, '201401081823421837', 127, '300Ｍ', '1401/08/52cd1fce2b509.jpg', 200.00, 1);

--
-- 导出表中的数据 `weixin_score_item`
--


--
-- 导出表中的数据 `weixin_score_item_cate`
--


--
-- 导出表中的数据 `weixin_score_log`
--


--
-- 导出表中的数据 `weixin_score_order`
--


--
-- 导出表中的数据 `weixin_setting`
--

INSERT INTO `weixin_setting` (`name`, `data`, `remark`) VALUES
('site_name', '智风商城', ''),
('site_title', '智风商城', ''),
('site_keyword', '智风微信商城,最新独立商城模式,电商领航者', ''),
('site_description', '智风科技专注微信客户端应用开发，众多真实案例，微信商城、微信餐饮系统、微房产、微汽车等产品受到广大商家和用户好评。因为真诚，所以值得信赖！', ''),
('site_status', '1', ''),
('closed_reason', '网站升级中。。', ''),
('site_icp', '', ''),
('statistics_code', '', ''),
('statics_url', '', ''),
('mail_server', '', ''),
('item_check', '0', ''),
('score_rule', 'a:16:{s:8:"register";s:2:"20";s:13:"register_nums";s:1:"1";s:5:"login";s:2:"10";s:10:"login_nums";s:1:"5";s:7:"pubitem";s:2:"20";s:12:"pubitem_nums";s:2:"10";s:8:"likeitem";s:1:"1";s:13:"likeitem_nums";s:2:"20";s:9:"joinalbum";s:1:"2";s:14:"joinalbum_nums";s:2:"10";s:6:"fwitem";s:1:"2";s:11:"fwitem_nums";s:2:"10";s:6:"pubcmt";s:1:"1";s:11:"pubcmt_nums";s:1:"5";s:7:"delitem";s:3:"-20";s:12:"delitem_nums";s:3:"100";}', ''),
('album_cover_items', '5', '专辑封面显示图片数量'),
('integrate_code', 'default', ''),
('integrate_config', '', ''),
('hot_tags', '家居,花园,美食,旅行,创意,建筑,户外,飘窗,卧室,城堡,DIY,萌宠,门厅,衣帽间,婚礼,书房,厨房,客厅,浴室,阳台,工作台,收纳,餐厅,阁楼,儿童房,小空间,性感', ''),
('wall_spage_max', '5', ''),
('wall_spage_size', '50', ''),
('book_page_max', '100', ''),
('default_keyword', '懒得逛了，我搜~', ''),
('album_default_title', '默认专辑', ''),
('avatar_size', '24,32,48,64,100,200', ''),
('attr_allow_exts', 'jpg,gif,png,jpeg,swf', ''),
('attr_allow_size', '2048', ''),
('itemcate_img', 'a:2:{s:5:"width";s:3:"150";s:6:"height";s:3:"170";}', ''),
('reg_protocol', '一、总则\r\n1．1　用户应当同意本协议的条款并按照页面上的提示完成全部的注册程序。用户在进行注册程序过程中点击"立即注册"按钮即表示用户与拼品网公司达成协议，完全接受本协议项下的全部条款。\r\n1．2　用户注册成功后，拼品网将给予每个用户一个用户帐号及相应的密码，该用户帐号和密码由用户负责保管；用户应当对以其用户帐号进行的所有活动和事件负法律责任。\r\n1．3　用户可以使用拼品网各个频道单项服务，当用户使用拼品网各单项服务时，用户的使用行为视为其对该单项服务的服务条款以及拼品网在该单项服务中发出的各类公告的同意。\r\n1．4　拼品网会员服务协议以及各个频道单项服务条款和公告可由拼品网公司随时更新，且无需另行通知。您在使用相关服务时,应关注并遵守其所适用的相关条款。\r\n您在使用拼品网提供的各项服务之前，应仔细阅读本服务协议。如您不同意本服务协议及/或随时对其的修改，您可以主动取消拼品网提供的服务；您一旦使用拼品网产品，即视为您已了解并完全同意本服务协议各项内容，包括拼品网对服务协议随时所做的任何修改，并成为拼品网用户。\r\n二、注册信息和隐私保护\r\n2．1　 拼品网帐号（即拼品网用户ID）的所有权归拼品网，用户完成注册申请手续后，获得拼品网帐号的使用权。用户应提供及时、详尽及准确的个人资料，并不断更新注册资料，符合及时、详尽准确的要求。所有原始键入的资料将引用为注册资料。如果因注册信息不真实而引起的问题，并对问题发生所带来的后果，拼品网概不负任何责任。\r\n2．2　用户不应将其帐号、密码转让或出借予他人使用。如用户发现其帐号遭他人非法使用，应立即通知拼品网。因黑客行为或用户的保管疏忽导致帐号、密码遭他人非法使用，拼品网不承担任何责任。\r\n2．3　拼品网不对外公开或向第三方提供单个用户的注册资料，除非：\r\n（1）事先获得用户的明确授权；\r\n（2）只有透露你的个人资料，才能提供你所要求的产品和服务；\r\n（3）根据有关的法律法规要求；\r\n（4）按照相关政府主管部门的要求；\r\n（5）为维护拼品网的合法权益。\r\n2．4　在你注册拼品网帐户，使用其他拼品网产品或服务，访问拼品网网页, 或参加促销和有奖游戏时，拼品网会收集你的个人身份识别资料，并会将这些资料用于：改进为你提供的服务及网页内容。\r\n三、使用规则\r\n3．1　用户在使用拼品网服务时，必须遵守中华人民共和国相关法律法规的规定，用户应同意将不会利用本服务进行任何违法或不正当的活动，包括但不限于下列行为∶\r\n（1）上载、展示、张贴、传播或以其它方式传送含有下列内容之一的信息：\r\n1） 反对宪法所确定的基本原则的； 2） 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的； 3） 损害国家荣誉和利益的； 4） 煽动民族仇恨、民族歧视、破坏民族团结的； 5） 破坏国家宗教政策，宣扬邪教和封建迷信的； 6） 散布谣言，扰乱社会秩序，破坏社会稳定的； 7） 散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的； 8） 侮辱或者诽谤他人，侵害他人合法权利的； 9） 含有虚假、有害、胁迫、侵害他人隐私、骚扰、侵害、中伤、粗俗、猥亵、或其它道德上令人反感的内容； 10） 含有中国法律、法规、规章、条例以及任何具有法律效力之规范所限制或禁止的其它内容的；\r\n（2）不得为任何非法目的而使用网络服务系统；\r\n（3）不利用拼品网服务从事以下活动：\r\n1) 未经允许，进入计算机信息网络或者使用计算机信息网络资源的；\r\n2) 未经允许，对计算机信息网络功能进行删除、修改或者增加的；\r\n3) 未经允许，对进入计算机信息网络中存储、处理或者传输的数据和应用程序进行删除、修改或者增加的；\r\n4) 故意制作、传播计算机病毒等破坏性程序的；\r\n5) 其他危害计算机信息网络安全的行为。\r\n3．2　 用户违反本协议或相关的服务条款的规定，导致或产生的任何第三方主张的任何索赔、要求或损失，包括合理的律师费，您同意赔偿拼品网与合作公司、关联公司，并使之免受损害。对此，拼品网有权视用户的行为性质，采取包括但不限于删除用户发布信息内容、暂停使用许可、终止服务、限制使用、回收拼品网帐号、追 究法律责任等措施。对恶意注册拼品网帐号或利用拼品网帐号进行违法活动、捣乱、骚扰、欺骗、其他用户以及其他违反本协议的行为，拼品网有权回收其帐号。同 时，拼品网公司会视司法部门的要求，协助调查。\r\n3．3　用户不得对本服务任何部分或本服务之使用或获得，进行复制、拷贝、出售、转售或用于任何其它商业目的。\r\n3．4　用户须对自己在使用拼品网服务过程中的行为承担法律责任。用户承担法律责任的形式包括但不限于：对受到侵害者进行赔偿，以及在拼品网公司首先承担了因用户行为导致的行政处罚或侵权损害赔偿责任后，用户应给予拼品网公司等额的赔偿。\r\n四、服务内容\r\n4．1　拼品网网络服务的具体内容由拼品网根据实际情况提供。\r\n4．2　除非本服务协议另有其它明示规定，拼品网所推出的新产品、新功能、新服务，均受到本服务协议之规范。\r\n4．3　为使用本服务，您必须能够自行经有法律资格对您提供互联网接入服务的第三方，进入国际互联网，并应自行支付相关服务费用。此外，您必须自行配备及负责与国际联网连线所需之一切必要装备，包括计算机、数据机或其它存取装置。\r\n4．4　鉴于网络服务的特殊性，用户同意拼品网有权不经事先通知，随时变更、中断或终止部分或全部的网络服务（包括收费网络服务）。拼品网不担保网络服务不会中断，对网络服务的及时性、安全性、准确性也都不作担保。\r\n4．5　拼品网需要定期或不定期地对提供网络服务的平台或相关的设备进行检修或者维护，如因此类情况而造成网络服务（包括收费网络服务）在合理时间内的中断，拼品网无需为此承担任何责任。拼品网保留不经事先通知为维修保养、升级或其它目的暂停本服务任何部分的权利。\r\n4．6　 本服务或第三人可提供与其它国际互联网上之网站或资源之链接。由于拼品网无法控制这些网站及资源，您了解并同意，此类网站或资源是否可供利用，拼品网不予负责，存在或源于此类网站或资源之任何内容、广告、产品或其它资料，拼品网亦不予保证或负责。因使用或依赖任何此类网站或资源发布的或经由此类网站或资 源获得的任何内容、商品或服务所产生的任何损害或损失，拼品网不承担任何责任。\r\n4．7　用户明确同意其使用拼品网网络服务所存在的风险将完全由其 自己承担。用户	理解并接受下载或通过拼品网服务取得的任何信息资料取决于用户自己，并由其承担系统受损、资料丢失以及其它任何风险。拼品网对在服务网上得 到的任何商品购物服	务、交易进程、招聘信息，都不作担保。\r\n4．8　3个月未登录的帐号，拼品网保留关闭的权利。\r\n4．9　拼品网有权于任何时间暂时或永久修改或终止本服务（或其任何部分），而无论其通知与否，拼品网对用户和任何第三人均无需承担任何责任。\r\n4．10　终止服务\r\n您同意拼品网得基于其自行之考虑，因任何理由，包含但不限于长时间未使用，或拼品网认为您已经违反本服务协议的文字及精神，终止您的密码、帐号或本服务之使 用（或服务之任何部分），并将您在本服务内任何内容加以移除并删除。您同意依本服务协议任何规定提供之本服务，无需进行事先通知即可中断或终止，您承认并 同意，拼品网可立即关闭或删除您的帐号及您帐号中所有相关信息及文件，及/或禁止继续使用前述文件或本服务。此外，您同意若本服务之使用被中断或终止或您 的帐号及相关信息和文件被关闭或删除，拼品网对您或任何第三人均不承担任何责任。\r\n五、知识产权和其他合法权益（包括但不限于名誉权、商誉权）\r\n5．1　用户专属权利\r\n拼品网尊重他人知识产权和合法权益，呼吁用户也要同样尊重知识产权和他人合法权益。若您认为您的知识产权或其他合法权益被侵犯，请按照以下说明向拼品网提供资料∶\r\n请注意：如果权利通知的陈述失实，权利通知提交者将承担对由此造成的全部法律责任（包括但不限于赔偿各种费用及律师费）。如果上述个人或单位不确定网络上可获取的资料是否侵犯了其知识产权和其他合法权益，拼品网建议该个人或单位首先咨询专业人士。\r\n为了拼品网有效处理上述个人或单位的权利通知，请使用以下格式（包括各条款的序号）：\r\n1. 权利人对涉嫌侵权内容拥有知识产权或其他合法权益和/或依法可以行使知识产权或其他合法权益的权属证明；\r\n2. 请充分、明确地描述被侵犯了知识产权或其他合法权益的情况并请提供涉嫌侵权的第三方网址（如果有）。\r\n3. 请指明涉嫌侵权网页的哪些内容侵犯了第2项中列明的权利。\r\n4. 请提供权利人具体的联络信息，包括姓名、身份证或护照复印件（对自然人）、单位登记证明复印件（对单位）、通信地址、电话号码、传真和电子邮件。\r\n5. 请提供涉嫌侵权内容在信息网络上的位置（如指明您举报的含有侵权内容的出处，即：指网页地址或网页内的位置）以便我们与您举报的含有侵权内容的网页的所有权人/管理人联系。\r\n5．1　 对于用户通过拼品网服务上传到拼品网网站上可公开获取区域的任何内容，用户同意拼品网在全世界范围内具有免费的、永久性的、不可撤销的、非独家的和完全再许可的权利和许可，以使用、复制、修改、改编、出版、翻译、据以创作衍生作品、传播、表演和展示此等内容（整体或部分），和/或将此等内容编入当前已知 的或以后开发的其他任何形式的作品、媒体或技术中。\r\n5．2　拼品网拥有本网站内所有资料的版权。任何被授权的浏览、复制、打印和传播属于本网站内的资料必须符合以下条件：所有的资料和图象均以获得信息为目的；\r\n所有的资料和图象均不得用于商业目的；\r\n所有的资料、图象及其任何部分都必须包括此版权声明；\r\n本网站（www.pinphp.com）所有的产品、技术与所有程序均属于拼品网知识产权，在此并未授权。\r\n“www.pinphp.com”, “拼品网”及相关图形等为拼品网的注册商标。\r\n未经拼品网许可，任何人不得擅自（包括但不限于：以非法的方式复制、传播、展示、镜像、上载、下载）使用。否则，拼品网将依法追究法律责任。\r\n六、青少年用户特别提示\r\n青少年用户必须遵守全国青少年网络文明公约：\r\n要善于网上学习，不浏览不良信息；要诚实友好交流，不侮辱欺诈他人；要增强自护意识，不随意约会网友；要维护网络安全，不破坏网络秩序；要有益身心健康，不沉溺虚拟时空。\r\n七、其他\r\n7．1　本协议的订立、执行和解释及争议的解决均应适用中华人民共和国法律。\r\n7．2　如双方就本协议内容或其执行发生任何争议，双方应尽量友好协商解决；协商不成时，任何一方均可向拼品网所在地的人民法院提起诉讼。\r\n7．3　拼品网未行使或执行本服务协议任何权利或规定，不构成对前述权利或权利之放弃。\r\n7．4　如本协议中的任何条款无论因何种原因完全或部分无效或不具有执行力，本协议的其余条款仍应有效并且有约束力。\r\n拼品网对本使用协议享有最终解释权。', ''),
('item_cover_comments', '2', ''),
('user_intro_default', '这个家伙太懒，什么都木留下~', ''),
('ipban_switch', '1', ''),
('score_item_img', 'a:4:{s:6:"swidth";s:3:"210";s:7:"sheight";s:3:"210";s:6:"bwidth";s:3:"350";s:7:"bheight";s:3:"350";}', ''),
('seo_config', 'a:6:{s:4:"book";a:3:{s:5:"title";s:23:"{tag_name}-{site_title}";s:8:"keywords";s:23:"逛宝贝，{site_name}";s:11:"description";s:18:"{site_description}";}s:4:"cate";a:3:{s:5:"title";s:23:"{cate_name}-{seo_title}";s:8:"keywords";s:14:"{seo_keywords}";s:11:"description";s:17:"{seo_description}";}s:5:"album";a:3:{s:5:"title";s:6:"专辑";s:8:"keywords";s:47:"{site_name},购物分享,淘宝网购物,专辑";s:11:"description";s:18:"{site_description}";}s:10:"album_cate";a:3:{s:5:"title";s:11:"{seo_title}";s:8:"keywords";s:14:"{seo_keywords}";s:11:"description";s:17:"{seo_description}";}s:12:"album_detail";a:3:{s:5:"title";s:13:"{album_title}";s:8:"keywords";s:13:"{album_intro}";s:11:"description";s:23:"杂志详细Description";}s:4:"item";a:3:{s:5:"title";s:12:"{item_title}";s:8:"keywords";s:10:"{item_tag}";s:11:"description";s:12:"{item_intro}";}}', ''),
('item_img', 'a:2:{s:5:"width";s:3:"210";s:6:"height";s:4:"1000";}', ''),
('item_simg', 'a:2:{s:5:"width";s:3:"100";s:6:"height";s:3:"100";}', ''),
('item_bimg', 'a:2:{s:5:"width";s:3:"468";s:6:"height";s:4:"1000";}', ''),
('attach_path', 'data/upload/', ''),
('wall_distance', '500', ''),
('reg_status', '1', ''),
('reg_closed_reason', '<h1>暂时关闭注册</h1>', ''),
('index_wall', '1', ''),
('weixin_img', '1401/07/52cbab3a8c694.jpg', ''),
('weixinshop_img', '1401/07/52cbab3aa4321.jpg', ''),
('appid', '121312', ''),
('appsecret', '13213132', '');

--
-- 导出表中的数据 `weixin_tag`
--

INSERT INTO `weixin_tag` (`id`, `name`) VALUES
(536, '300'),
(537, '源码'),
(538, '支付'),
(539, '支持'),
(540, '商城'),
(541, '营销'),
(542, '系统'),
(543, '最新'),
(544, '平台'),
(545, '乐享'),
(546, '空间'),
(547, '香港'),
(548, '全能'),
(549, '首先'),
(550, '独立'),
(551, '优化'),
(552, '高速'),
(553, '300M'),
(554, 'seo'),
(555, '主机租用'),
(556, 'vps'),
(557, '在线支付'),
(558, '网站');

--
-- 导出表中的数据 `weixin_topic`
--


--
-- 导出表中的数据 `weixin_topic_at`
--


--
-- 导出表中的数据 `weixin_topic_comment`
--


--
-- 导出表中的数据 `weixin_topic_index`
--


--
-- 导出表中的数据 `weixin_topic_relation`
--


--
-- 导出表中的数据 `weixin_user`
--

INSERT INTO `weixin_user` (`id`, `uc_uid`, `username`, `password`, `email`, `gender`, `tags`, `intro`, `byear`, `bmonth`, `bday`, `province`, `city`, `score`, `score_level`, `cover`, `reg_ip`, `reg_time`, `last_time`, `last_ip`, `status`, `shares`, `likes`, `follows`, `fans`, `albums`, `daren`) VALUES
(30, 0, 'test', 'e10adc3949ba59abbe56e057f20f883e', '123@16.com', 0, '', '', 0, 0, 0, '', '', 30, 30, '', '127.0.0.1', 1388639401, 1388639401, '127.0.0.1', 1, 0, 0, 0, 0, 0, 0);

--
-- 导出表中的数据 `weixin_user_address`
--

INSERT INTO `weixin_user_address` (`id`, `uid`, `consignee`, `address`, `mobile`, `sheng`, `shi`, `qu`) VALUES
(23, 30, '文章·', '丰乐路', '15132468218', '河南省', '郑州市', '金水区'),
(26, 30, '随便', '努力啦', '15132468318', '天津市', '市辖区', '河东区');

--
-- 导出表中的数据 `weixin_user_bind`
--


--
-- 导出表中的数据 `weixin_user_follow`
--


--
-- 导出表中的数据 `weixin_user_msgtip`
--


--
-- 导出表中的数据 `weixin_user_stat`
--

INSERT INTO `weixin_user_stat` (`uid`, `action`, `num`, `last_time`) VALUES
(9, 'login', 1, 1353909837),
(13, 'login', 1, 1353909897),
(16, 'login', 1, 1353909964),
(15, 'login', 1, 1353910012),
(11, 'login', 1, 1353910069),
(7, 'login', 1, 1353910109),
(12, 'login', 1, 1353910146),
(17, 'login', 1, 1353910177),
(20, 'login', 1, 1353910221),
(6, 'login', 1, 1353910265),
(18, 'login', 1, 1353910348),
(8, 'login', 1, 1353910407),
(19, 'login', 1, 1353910445),
(10, 'login', 1, 1353910499),
(14, 'login', 1, 1353910539),
(21, 'register', 1, 1374633583),
(21, 'login', 1, 1374633583),
(22, 'register', 1, 1374724879),
(22, 'login', 1, 1374724879),
(23, 'register', 1, 1374724936),
(23, 'login', 1, 1374724936),
(24, 'register', 1, 1374724990),
(24, 'login', 1, 1374724990),
(26, 'register', 1, 1375152929),
(26, 'login', 1, 1375152929),
(27, 'register', 1, 1375154088),
(27, 'login', 1, 1375154088),
(28, 'register', 1, 1375176967),
(28, 'login', 1, 1375176967),
(29, 'register', 1, 1375250687),
(29, 'login', 1, 1375250687),
(30, 'register', 1, 1388639401),
(30, 'login', 1, 1388639401),
(31, 'register', 1, 1389005403),
(31, 'login', 1, 1389005403);
