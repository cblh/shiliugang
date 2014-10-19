<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<title>会员中心 - 我的地址</title>
<link rel="stylesheet" type="text/css" href="../Style/shop.css" />
<script charset="utf-8" src="../Style/js/jquery.js" type="text/javascript"></script>
<script charset="utf-8" src="../Style/js/ecmall.js" type="text/javascript"></script>
<script charset="utf-8" src="../Style/js/touchslider.dev.js"></script>
<script charset="utf-8" type="text/javascript" src="../Style/js/dialog.js" id="dialog_js"></script>
<script charset="utf-8" type="text/javascript" src="../Style/js/jquery.ui.js" ></script>
<script charset="utf-8" type="text/javascript" src="../Style/js/jquery.validate.js" ></script>
<script charset="utf-8" type="text/javascript" src="../Style/js/mlselection.js" ></script>
</head>
<body>
<div id="head"><img height="50" src="../Style/images/store_logo.jpg"></div>
<div id="nav">
	<ul class="navlist">
    	<li id="n_0">
    	<span ></span>
        	<ul class="submenu">
        	<?php if(is_array($index_cate_list)): $i = 0; $__LIST__ = $index_cate_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>
                    <a href="<?php echo U('book/cate',array('cid'=>$vo['id']));?>" class="none_ico"> <?php echo ($vo["name"]); ?></a>
                </li><?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
        </li>
        <li class="r active" id="n_1"><a href="<?php echo U('Index/index');?>"><span></span></a></li>
        <li class="r" id="n_2"><a href="<?php echo U('User/index');?>"><span></span></a></li>
        <li class="r" id="n_3"><a href="<?php echo U('Shopcart/index');?>"><span></span></a><i></i></li>
    </ul>
    <script type="text/javascript">
    	$(".navlist > li#n_0").click(function(){
			$(this).toggleClass("active");
			
		});
		$(".navlist > li.r a").each(function() {
            href="index.php-app=member&act=login&ret_url=-index.php-app=member.htm"+$(this).attr("href");
			whref=window.location.href;
			if(whref.indexOf(href)!='-1'){
				$(this).parent("li").addClass("active");
			}
        });
    </script>
    
</div>
<div id="content">
    <div class="wrap">
        <div class="eject_btn" title="新增地址"><a class="enter" href="<?php echo U('User/addaddress');?>">新增地址</a></div> 
        <!-----------
        <ul class="address_list">
            <li class="no_address">
            <span class="noaddress">您没有添加收货地址</span>
            </li>
        </ul>
        ------>
        <ul class="address_list">
        <?php if(is_array($address_list)): $i = 0; $__LIST__ = $address_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>
                <p><?php echo ($vo["consignee"]); ?>(<?php echo ($vo["mobile"]); ?>)</p>
                <p><?php echo ($vo["sheng"]); ?>&nbsp;<?php echo ($vo["shi"]); ?>&nbsp;<?php echo ($vo["qu"]); ?>&nbsp;<?php echo ($vo["address"]); ?></p>
                <p class="new_line"><br /></p>
                <p class="address_action">
                    <span class="edit"><a href="<?php echo U('User/edit_address',array('id'=>$vo['id']));?>"><i class="edit_icon"></i>编辑</a></span>
                    <span><a href="<?php echo U('User/address',array('id'=>$vo['id'],'type'=>'del'));?>" class="delete float_none"><i class="delete_icon"></i>删除</a></span>
                </p>
            </li><?php endforeach; endif; else: echo "" ;endif; ?>
        </ul>
        <div class="public table" style="display:none;">
            <table class="table_head_line">
               
                <tr class="line_bold">
                    <th colspan="6"></th>
                </tr>
                <tr class="line tr_color">
                    <th>收货人姓名</th>
                    <th>所在地区</th>
                    <th class="width3">详细地址</th>
                    <th>邮政编码</th>
                    <th class="width5">电话/手机</th>
                    <th>操作</th>
                </tr>
                
                <tr>
                    <td colspan="6" class="member_no_records padding6">您没有添加收货地址</td>
                </tr>
            </table>
        </div>
        <div class="wrap_bottom"></div>
    </div>
</div>
<div id="footer">
    <p class="foot_nav">
        <a href="<?php echo U('Index/index');?>">商城首页</a> | <a href="<?php echo U('User/index');?>">会员中心</a> | <a href="<?php echo U('Shopcart/index');?>">购物车</a> | <a href="<?php echo U('aboutus/index', array('id'=>2));?>">品牌介绍</a>
    </p>
    <div style="height:40px; background:#fff; padding:0; overflow:hidden;">
        &copy;Copyright 2013-2014 <a href="__ROOT__/" class="tdu clr6" target="_blank"><?php echo C('pin_site_name');?></a> 版权所有 
    </div>
</div>

<script>
var PINER = {
    root: "__ROOT__",
    uid: "<?php echo $visitor['id'];?>", 
    async_sendmail: "<?php echo $async_sendmail;?>",
    config: {
        wall_distance: "<?php echo C('pin_wall_distance');?>",
        wall_spage_max: "<?php echo C('pin_wall_spage_max');?>"
    },
    //URL
    url: {}
};
//语言项目
var lang = {};
<?php $_result=L('js_lang');if(is_array($_result)): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?>lang.<?php echo ($key); ?> = "<?php echo ($val); ?>";<?php endforeach; endif; else: echo "" ;endif; ?>
</script>
<?php $tag_load_class = new loadTag;$data = $tag_load_class->js(array('type'=>'js','href'=>'__STATIC__/js/jquery/plugins/jquery.tools.min.js,__STATIC__/js/jquery/plugins/jquery.masonry.js,__STATIC__/js/jquery/plugins/formvalidator.js,__STATIC__/js/fileuploader.js,__STATIC__/js/pinphp.js,__STATIC__/js/dialog.js,__STATIC__/js/wall.js,__STATIC__/js/item.js,__STATIC__/js/user.js,__STATIC__/js/album.js','cache'=>'0','return'=>'data',));?>
</body>
</html>