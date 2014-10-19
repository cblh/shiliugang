<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title><?php echo ($page_seo["title"]); ?></title>
<meta name="keywords" content="<?php echo ($page_seo["keywords"]); ?>" />
<meta name="description" content="<?php echo ($page_seo["description"]); ?>" />
<meta content="width=device-width,minimum-scale=1.0,maximum-scale=1.0" name="viewport">
<link type="text/css" rel="stylesheet" href="../Style/shop.css">
<script charset="utf-8" src="../Style/js/jquery.js" type="text/javascript"></script>
<script charset="utf-8" src="../Style/js/ecmall.js" type="text/javascript"></script>
<script type="text/javascript" src="../Style/js/index.js"></script>
<script src="../Style/js/touchslider.dev.js"></script>
</head>
<script type="text/javascript">
//<!CDATA[
var SITE_URL = __ROOT__;
var PRICE_FORMAT = '¥%s';

$(function(){
    var span = $("#child_nav");
    span.hover(function(){
        $("#float_layer:not(:animated)").show();
    }, function(){
        $("#float_layer").hide();
    });
});
//]]>
</script>
<script charset="utf-8" type="text/javascript" src="../Style/js/dialog.js" id="dialog_js"></script>
<link href="../Style/dialog.css" rel="stylesheet" type="text/css">
<script charset="utf-8" type="text/javascript" src="../Style/js/jquery.ui.js" ></script>
<script charset="utf-8" type="text/javascript" src="../Style/js/jquery.validate.js" ></script>
<script charset="utf-8" type="text/javascript" src="../Style/js/mlselection.js" ></script>
<script type="text/javascript" language="javascript" src='../Style/js/dizhi2.js'></script>
<script type="text/javascript" language="javascript" src='../Style/js/diqu2.js'></script>
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
    <h4 class="add_title"><a class="enter" href="<?php echo U('user/address');?>">管理收货地址</a></h4>
    <div class="order_address_list">
        <h4 class="add_title">收货人地址</h4>
       <script type="text/javascript">

       <script type="text/javascript">
       $(function(){
       	$('#order_form').validate({
       		errorPlacement: function(error, element){
       			$(element).next("label").append(error);
       		},
       		success       : function(label){
       			//label.addClass('validate_right').text('OK!');
       		},
       		onsubmit:true,// 是否在提交是验证
       		onkeyup : false,
       		rules : {
       			consignee : {
       				required : true,
       			},
       			address : {
       				required : true
       			},

       		},
       		messages : {
       			consignee : {
       				required : '您必须提供一个用户名',
       				remote   : '用户名不存在！'
       			},
       			address  : {
       				required : '请如实填写收货人详细地址'
       			}
       		}
       	});
       });
        </script>
      
        <script>
        $(function(){

        	$('input[name=address_options]').change(function(){
        		if($(this).val()==0)
        		{
        			$('#address_form').show();
        		}else
        		{
        			$('#address_form').hide();
        		}
        	});
        	set_address();
        })

        function set_address()
        {
        	var addr_id = $("input[name='address_options']:checked").val();

        	if(addr_id == 0)
        	{

        		$('#address_form').show();
        	}
        	else
        	{
        		$('#address_form').hide();

        	}
        }

        function ordertj()
        {
        	var addr_id = $("input[name='address_options']:checked").val();
        	if(addr_id == 0)
        	{
        		var consignee=  $.trim($('#consignee').val());
        		var address=  $.trim($('#address').val());
        		var phone_mob=  $.trim($('#phone_mob').val());
        		var sheng=  $.trim($('#s1').val());

        		if(consignee=='')
        		{
        			alert('请输入收货人姓名');
        			return false;
        		}
        		if(sheng=='')
        		{
        			alert('请选择所在地区');return false;
        		}

        		if(address=='')
        		{
        			alert('请输入详细地址');
        			return false;
        		}
        		if(phone_mob=='')
        		{
        			alert('请输入手机号码');
        			return false;
        		}
        		if(isNaN(phone_mob))
        		{
        			alert('请输入正确的手机号码');return false;
        		}
        	}
        	$('#order_form').submit();

        }
        </script>
       
         
       <form method="POST"  action="<?php echo U('Order/pay');?>" id="order_form" name="order_form"   >
        <?php if(count($address_list)!=0){ ?>
        
        <?php if(is_array($address_list)): $i = 0; $__LIST__ = $address_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><ul class="receive_add address_item selected_address">
            <li class="radio"><input id="address_<?php echo ($vo["id"]); ?>" checked="checked"  name="address_options" value="<?php echo ($vo["id"]); ?>" type="radio"></li>
            <li class="particular"><?php echo ($vo["sheng"]); ?>&nbsp;<?php echo ($vo["shi"]); ?>&nbsp;<?php echo ($vo["qu"]); ?>&nbsp;<?php echo ($vo["address"]); ?></li>
            <li class="name">收货人姓名: <?php echo ($vo["consignee"]); ?></li>
            <li class="mobile">手机号码:<?php echo ($vo["mobile"]); ?></li>
        </ul><?php endforeach; endif; else: echo "" ;endif; ?>
        <ul class="new_receive_add address_item">
            <li class="radio">
            <input name="address_options" id="use_new_address" value="0"  type="radio">
            </li><li class="particular">使用新的收货地址</li>
        </ul>    
           
        <ul style="display: none;" class="fill_in_content" id="address_form">
            <li>
                <p class="title">收货人姓名</p>
                <p><input value="" name="consignee" id="consignee" class="text" type="text"></p>
            </li>
            <li>
                <p class="title">所在地区</p>
                <p></p>
                <div id="region">
                 <select name="sheng" id="s1"></select>
                <select name="shi" id="s2"></select>
                <select name="qu" id="s3"></select>
                </div>
                	<script language="javascript">
								new PCAS("sheng","shi","qu","","","");
			</script>
                <p></p>
            </li>
            <li>
                <p class="title">详细地址</p>
                <p><input value="" name="address" id="address" class="text width1" placeholder="如：华师生活北区10栋222" type="text"></p>
            </li>
            <li>
                <p class="title">手机号码</p>
                <p><input value="" id="phone_mob" name="phone_mob" class="text" type="text"></p>
            </li>
            <li>
                <p class="title">&nbsp;</p>
                <p>
                    <label>
                        <input value="1" id="save_address" name="save_address" type="checkbox">&nbsp;自动保存收货地址
                        <span class="explain">&nbsp;(&nbsp;选择后该地址将会保存到您的收货地址列表&nbsp;)&nbsp;</span>
                    </label>
                </p>
            </li>
        </ul>
        <?php }else{ ?>
           <ul class="new_receive_add address_item">
            <li class="radio">
            <input checked='checked' name="address_options" id="use_new_address" value="0"  type="radio">
            </li><li class="particular">使用新的收货地址</li>
            </ul> 
       
        <ul  class="fill_in_content" id="address_form">
            <li>
                <p class="title">收货人姓名</p>
                <p><input value="" name="consignee" id="consignee" class="text" type="text"></p>
            </li>
            <li>
                <p class="title">所在地区</p>
                <p></p>
                <div id="region">
                 <select name="sheng" id="s1"></select>
                <select name="shi" id="s2"></select>
                <select name="qu" id="s3"></select>
                </div>
                	<script language="javascript">
								new PCAS("sheng","shi","qu","","","");
			</script>
                <p></p>
            </li>
            <li>
                <p class="title">详细地址</p>
                <p><input value="" name="address" id="address" class="text width1" type="text">如：华师生活北区10栋</p>
            </li>
            <li>
                <p class="title">手机号码</p>
                <p><input value="" id="phone_mob" name="phone_mob" class="text" type="text"></p>
            </li>
            <li>
                <p class="title">&nbsp;</p>
                <p>
                    <label>
                        <input value="1" id="save_address" name="save_address" type="checkbox">&nbsp;自动保存收货地址
                        <span class="explain">&nbsp;(&nbsp;选择后该地址将会保存到您的收货地址列表&nbsp;)&nbsp;</span>
                    </label>
                </p>
            </li>
        </ul>
        <?php } ?>
        
    </div>			
    <div class="order_delivery">
     <?php if($freesum<=0) {?>
     卖家承担运费
     <?php }else{ ?>
        <h4 class="add_title">选择配送方式</h4>
        <div class="fashion_list">
        <?php if(is_array($freearr)): $k = 0; $__LIST__ = $freearr;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?><ul class="receive_add" shipping_id="<?php echo ($vo["value"]); ?>">
                  <li class="radio"><input id="<?php echo ($vo["price"]); ?>" <?php if($k == 1): ?>checked="checked"<?php endif; ?>  name="shipping_id" value="<?php echo ($vo["value"]); ?>" type="radio"></li>
                  <li class="fashion">
                  <?php switch($vo["value"]): case "1": ?>平邮<?php break;?>
                  <?php case "2": ?>快递<?php break;?>
                  <?php default: ?>EMS<?php endswitch;?>
                  </li>
                  <li class="pay">配送费用:&nbsp;<span class="money" ectype="shipping_fee">¥<?php echo ($vo["price"]); ?></span></li>
                  <li class="explain"></li>
                  <input type="hidden" id="price_<?php echo ($vo["value"]); ?>" value="<?php echo ($vo["price"]); ?>" >
              </ul><?php endforeach; endif; else: echo "" ;endif; ?>
            <!--   <ul class="receive_add" shipping_id="2">
                  <li class="radio"><input checked="checked" name="shipping_id" value="2" type="radio"></li>
                  <li class="fashion">快递</li>
                  <li class="pay">配送费用:&nbsp;<span class="money" ectype="shipping_fee">¥0.01</span></li>
                  <li class="explain"></li>
              </ul>
               <ul class="receive_add" shipping_id="3">
                  <li class="radio"><input checked="checked" name="shipping_id" value="3" type="radio"></li>
                  <li class="fashion">EMS</li>
                  <li class="pay">配送费用:&nbsp;<span class="money" ectype="shipping_fee">¥0.01</span></li>
                  <li class="explain"></li>
              </ul>-->
        </div>
        <?php } ?>
    </div>
    <div class="message_box">
        <script type="text/javascript">
        function postscript_activation(tt){
        	if (!tt.name)
        	{
        		tt.value    = '';
        		tt.name = 'postscript';
        	}

        }
        </script>
        <span class="add_title">给卖家的附言</span>
        <div class="message">
            <textarea id="postscript"  onclick="postscript_activation(this);">选填，可以告诉卖家您对商品的特殊需求，如颜色、尺码等</textarea>
        </div>
        <span class="add_title">送货时间</span>        
        <select id="delivery_time" name="delivery_time">
          <option value="周一" selected="selected">周一</option>
          <option value="周二">周二</option>
          <option value="周三">周三</option>
          <option value="周四">周四</option>
          <option value="周五">周五</option>
          <option value="周六">周六</option>
          <option value="周日">周日</option>
        </select>22:00至23:00
    </div> 
    </form>
    <div class="make_sure">
        <p class="order_amount">订单总价:<strong class="fontsize3" id="order_amount">¥<font id='order_amount2'></strong><input class="btn1" onclick="$(this).parent('p').next().toggle();$('#coupon_sn').val('');" style="display:none" type="button"></p>

        <div>
            <a onclick="ordertj();" class="btn enter">下单完成并支付</a>
            <a href="<?php echo U('Shopcart/index');?>" class="back">返回购物车</a>
        </div>
    </div>
    
    <input type="hidden" id="summoney" value="<?php echo ($sumPrice); ?>" />
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


  <script>
		     $(function(){
		    
        	 $('input[name=shipping_id]').change(function(){
        	  if($(this).val()!=null)
        	  {
        	  
        	    var sumPrice=$('#summoney').val();
            	var freePrice= $('#price_'+$(this).val()).val();
            //alert(sumPrice);
            //	return false;
            	$('#order_amount2').html(Number(freePrice)+Number(sumPrice));
        	  }
        	 });
        	 set_free();
        })
        
          function set_free()
          {
          	var addr_id = $("input[name='shipping_id']:checked").val();
          //	 var addr_id =$("input[name=shipping_id]").find("option:checked").val();
          	
           if(addr_id !=null)
            {          
            	var sumPrice='<?php echo ($sumPrice); ?>';
            	var freePrice= $('#price_'+addr_id).val();
            	$('#order_amount2').html(Number(freePrice)+Number(sumPrice));
            }
            else
            {
            $('#order_amount2').html('<?php echo ($sumPrice); ?>');
            }
          }
		    </script>