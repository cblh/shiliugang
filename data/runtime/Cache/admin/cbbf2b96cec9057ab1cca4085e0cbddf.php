<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<link href="__STATIC__/css/admin/style.css" rel="stylesheet"/>
	<title><?php echo L('website_manage');?></title>
	<script>
	var URL = '__URL__';
	var SELF = '__SELF__';
	var ROOT_PATH = '__ROOT__';
	var APP	 =	 '__APP__';
	//语言项目
	var lang = new Object();
	<?php $_result=L('js_lang');if(is_array($_result)): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($i % 2 );++$i;?>lang.<?php echo ($key); ?> = "<?php echo ($val); ?>";<?php endforeach; endif; else: echo "" ;endif; ?>
	</script>
	<script charset="utf-8" src="__STATIC__/js/jquery.js" type="text/javascript"></script>
</head>

<body>
<div id="J_ajax_loading" class="ajax_loading"><?php echo L('ajax_loading');?></div>
<?php if(($sub_menu != '') OR ($big_menu != '')): ?><div class="subnav">
    <div class="content_menu ib_a blue line_x">
    	<?php if(!empty($big_menu)): ?><a class="add fb J_showdialog" href="javascript:void(0);" data-uri="<?php echo ($big_menu["iframe"]); ?>" data-title="<?php echo ($big_menu["title"]); ?>" data-id="<?php echo ($big_menu["id"]); ?>" data-width="<?php echo ($big_menu["width"]); ?>" data-height="<?php echo ($big_menu["height"]); ?>"><em><?php echo ($big_menu["title"]); ?></em></a>　<?php endif; ?>
        <?php if(!empty($sub_menu)): if(is_array($sub_menu)): $key = 0; $__LIST__ = $sub_menu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$val): $mod = ($key % 2 );++$key; if($key != 1): ?><span>|</span><?php endif; ?>
        <a href="<?php echo U($val['module_name'].'/'.$val['action_name'],array('menuid'=>$menuid)); echo ($val["data"]); ?>" class="<?php echo ($val["class"]); ?>"><em><?php echo L($val['name']);?></em></a><?php endforeach; endif; else: echo "" ;endif; endif; ?>
    </div>
</div><?php endif; ?>
<script charset="utf-8" src="__STATIC__/js/jquery.js" type="text/javascript"></script>
<style>
.tdtitle {font-family: "宋体";
    height: 32px;
    line-height: 32px;
    padding-right: 5px;
    text-align: right;
    vertical-align: top;}

.tblist thead tr th, .tblist tbody tr.tblist_th td {
    background: url("__STATIC__/images/tblistthbg.gif") repeat-x scroll 0 0 transparent;
    border-right: 1px solid #DDDDDD;
    height: 30px;
    overflow: hidden;
    padding: 0 8px;
    text-align: center;
    white-space: nowrap;
}
.tblist tbody tr, .tbmodify .tblist tbody tr {
    background: none repeat scroll 0 0 #FFFFFF;
}
.tblist {
    border-left: 1px solid #DDDDDD;
    width: 100%;
}	
.tblist tbody tr, .tbmodify .tblist tbody tr {
    background: none repeat scroll 0 0 #FFFFFF;
}
.tblist tbody tr td, .tbmodify .tblist tbody tr td {
    border-bottom: 1px solid #DDDDDD;
    border-left: 0 solid #DDDDDD;
    border-right: 1px solid #DDDDDD;
    line-height: 18px;
    text-align: center;
}
.tblist tbody tr td {
    padding: 2px 4px;
}
.tbdetail {
    width: 100%;
}
.tbdetail td {
    background-color: #FFFFFF;
    height: 32px;
    line-height: 33px;
    padding: 3px 0 3px 5px;
   <!-- text-align: left;-->
}
.tbdetail .ltd {
    padding-left: 5px;
  text-align: left;
}
.tbdetail .rtd {
    padding-right: 5px;
   text-align: right;	
}
</style>
<script charset="utf-8" src="__STATIC__/js/jquery.js" type="text/javascript"></script>
<!--编辑商品-->
<form id="info_form" action="<?php echo u('item_order/edit');?>" method="post" enctype="multipart/form-data">
<div class="pad_lr_10">
	<div class="col_tab">
		
		<div class="J_panes">
        <div class="content_list pad_10">
        <div align="center" style="background:none repeat scroll 0 0 #E6F1F6;font-size:14px;font-weight:bold;padding:10px 0;">基本信息</div>
		
        
       
        
        
        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tbdetail">
                    <tbody>
                        <tr>
                            <td width="12%" class="tdtitle" >订单编号：</td>
                            <td width="22%"><?php echo ($info["orderId"]); ?></td>
                          
                            <td width="12%" class="tdtitle">订单状态：</td>
                            <td width="22%">   
                         <?php switch($info["status"]): case "1": ?>待付款<?php break;?>
                         <?php case "2": ?>待发货<?php break;?>
                         <?php case "3": ?>待收货<?php break;?>
                         <?php case "4": ?>完成<?php break;?>
                        <?php default: ?><font color="red">关闭</font><?php endswitch;?>
                        </td>
                         <td width="12%" class="tdtitle"></td>
                            <td width="22%"></td>
                        </tr>
                        <tr>
                            <td class="tdtitle">下单时间：</td>
                            <td><?php echo (date('Y/m/d H:i:s',$info["add_time"])); ?></td>
                            <td class="tdtitle">付款时间：</td>
                            <td><?php if($info["support_time"] == ''): ?>-<?php else: echo (date('Y/m/d H:i:s',$info["support_time"])); endif; ?></td>
                            <td class="tdtitle">商品总额：</td>
                            <td class="red"><span id="labProductTotal">¥<?php echo ($info["goods_sumPrice"]); ?></span></td>
                        </tr>
                        <tr>
                            <td class="tdtitle">订单总额：</td>
                            <td class="red"><span id="labOrderTotal">¥<?php echo ($info["order_sumPrice"]); ?></span></td>
                        </tr>
                       
                        <tr>
                            <td class="tdtitle">客户要求：</td>
                            <td style="padding:5px 0 5px 10px;" colspan="5"><?php echo ($info["note"]); ?></td>
                        </tr>
                        <tr>
                            <td class="tdtitle">客服备注：</td>
                            <td style="padding:5px 0 5px 10px;" colspan="5">
                                <span  id="labSellerRemark"><?php echo ($info["sellerRemark"]); ?></span>
                                 <form method="POST" >
                                <input type="hidden" name="id" value="<?php echo ($info["id"]); ?>" />
                                    <input type="hidden" name="g" value="admin" />
                                    <input type="hidden" name="m" value="item_order" />
                                   <input type="hidden" name="a" value="updateRemark" />
                                   <span style="display:none;" id="sellerRemark_modify">
	                                    <textarea style="width:600px;height:45px;margin-bottom:3px;resize: none;"  id="txtSellerRemark" name="txtSellerRemark"><?php echo ($info["sellerRemark"]); ?></textarea>
                                    <br>
                                    <input type="submit" class="button" id="btnSellerRemark" value="保存" name="btnSellerRemark">
                                    <input type="button" value="取消" class="button" onclick="Cancel()">
                                </span>
                                <input type="button" value="修改" class="button"  onclick="Modify()" id="btnModifySellerRemark" name="btnModifySellerRemark">
                                </form>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <script>
                function Modify()
                {
                	$('#labSellerRemark').hide();
                	$('#btnModifySellerRemark').hide();
                	$('#sellerRemark_modify').show();
                }
                  function Cancel()
                {
                	$('#labSellerRemark').show();
                	$('#btnModifySellerRemark').show();
                	$('#sellerRemark_modify').hide();
                }
              
                </script>
                
            
                 <div align="center" style="background:none repeat scroll 0 0 #E6F1F6;font-size:14px;font-weight:bold;padding:10px 0;">支付信息</div>    
               <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tbdetail">
                    <tbody>
                        <tr>
                            <td width="12%" class="tdtitle">支付方式：</td>
                            <td width="22%">
                             <?php switch($info["supportmetho"]): case "1": ?>支付宝支付<?php break;?>
                         <?php case "2": ?>货到付款<?php break;?>
                        <?php default: ?>-<?php endswitch;?>
                           </td>
                           <td width="12%" class="tdtitle">是否货到付款:</td>
                            <td width="22%"> <?php switch($info["supportmetho"]): case "1": ?>否<?php break;?>
                         <?php case "2": ?>是<?php break;?>
                        <?php default: ?>-<?php endswitch;?></td>
                             <td width="12%" class="tdtitle"></td>
                            <td width="22%" class="red"><span id="labPaymentFee"></span></td> 
                        </tr>
                    </tbody>
                </table>
                
                 <div align="center" style="background:none repeat scroll 0 0 #E6F1F6;font-size:14px;font-weight:bold;padding:10px 0;">配送信息</div>    
                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tbdetail">
                    <tbody>
                        <tr>
                            <td width="12%" class="tdtitle">客户要求：</td>
                            <td width="22%">  <?php switch($info["freetype"]): case "1": ?>平邮<?php break;?>
                         <?php case "2": ?>快递<?php break;?>  
                         <?php case "3": ?>ems<?php break;?>  
                          <?php case "0": ?>卖家包邮<?php break; endswitch;?></td>
                            <td width="12%" class="tdtitle">运送费用：</td>
                            <td width="22%" class="red"><span id="labDeliveryFee">
                            <?php switch($info["freetype"]): case "0": ?>¥0.00<?php break;?>  
                          <?php default: echo ($info["freeprice"]); endswitch;?></span></td>
                            <td width="12%" class="tdtitle"></td>
                            <td width="22%" class="red">
                          
                                
                            </td>
                        </tr>
                          <tr>
                            <td width="12%" class="tdtitle">配送快递：</td>
                            <td width="22%"> 
                            <?php if($info["userfree"] == '0'): ?>无需快递<?php elseif($info["userfree"] != '' and $info["userfree"] != '0' ): echo ($info["userfree"]); else: ?>-<?php endif; ?>
                            
                            </td>
                            <td width="12%" class="tdtitle">快递单号：</td>
                            <td width="22%"> <?php if($info["freecode"] == ''): ?>-<?php else: ?> <?php echo ($info["freecode"]); endif; ?></td>
                        </tr>
                     
                            
                          </tr>
                        <tr id="trDeliverySend">
	                         <td class="tdtitle">出库时间：</td>
	                           <td colspan="5">
                                <span style="display:block;width:180px;float:left;" id="labDeliveryTime"><?php if($info["fahuo_time"] == ''): ?>-<?php else: ?> <?php echo (date('Y/m/d H:i:s',$info["fahuo_time"])); endif; ?></span>
                            </td>
                        </tr>
                        <tr id="trDeliveryAddress">
	                       <td class="tdtitle">发货地址：</td>
	                         <td style="padding:5px 0;" colspan="5">
	                         <?php if($info["fahuoaddress"] == ''): ?>-<?php else: ?>
	                         <?php echo ($fahuoaddress["contacts"]); ?>（<?php echo ($fahuoaddress["mobile"]); ?>）<?php echo ($fahuoaddress["Province"]); ?> <?php echo ($fahuoaddress["City"]); ?> <?php echo ($fahuoaddress["Area"]); ?> <?php echo ($fahuoaddress["address"]); ?>（邮编：<?php if($fahuoaddress["postcode"] == ''): ?>-<?php else: echo ($fahuoaddress["postcode"]); endif; ?>）<?php endif; ?>
                                
                           </td>
                           
                        </tr>
                        
                    </tbody>
                </table>
                
                   <div align="center" style="background:none repeat scroll 0 0 #E6F1F6;font-size:14px;font-weight:bold;padding:10px 0;">收货人信息</div>    
                      <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tbdetail">
                    <tbody>
                        <tr>
                            <td class="tdtitle">收货人账号：</td>
                            <td colspan="5">
                                <?php echo ($info["userName"]); ?>
                            </td>
                        </tr>
                        <tr>
                            <td width="12%" class="tdtitle">收 货 人：</td>
                            <td width="22%">
                                <span attr="address_display" id="labConsignee"><?php echo ($info["address_name"]); ?></span>
                                <span style="display:none;" attr="address_modify">
                                    <input type="text" class="txt150" id="txtConsignee" maxlength="50" value="address_name" name="txtConsignee">
                                </span>
                            </td>
                            <td width="12%" class="tdtitle">联系手机：</td>
                            <td width="22%">
                                <span attr="address_display" id="labMobile"><?php echo ($info["mobile"]); ?></span>
                                <span style="display:none;" attr="address_modify">
                                    <input type="text" class="txt150" id="txtMobile" maxlength="50" value="<?php echo ($info["mobile"]); ?>" name="txtMobile">
                                </span>
                            </td>
                            <td width="12%" class="tdtitle"></td>
                            <td width="22%">
                                <span attr="address_display" id="labPhone"></span>
                                <span style="display:none;" attr="address_modify">
                                    <input type="text" class="txt150" id="txtPhone" maxlength="50" name="txtPhone">
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td class="tdtitle">收货地址：</td>
                            <td colspan="5">
                                <span attr="address_display">
                                   <?php echo ($info["address"]); ?>
                                </span>
                               
                                
                            </td>
                        </tr>
                    </tbody>
                </table>
                
                 <div align="center" style="background:none repeat scroll 0 0 #E6F1F6;font-size:14px;font-weight:bold;padding:10px 0;">商品明细</div>    
                   <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tblist">
                    <thead>
                        <tr>
                            <th width="70">商品图片</th>
                            <th>商品名称</th>
                            <th width="60">单价</th>
                            <th width="60">数量</th>
                            <th width="60">小计</th>
                        </tr>
                    </thead>
                    <tbody>
                     <?php if(is_array($order_detail)): $i = 0; $__LIST__ = $order_detail;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr class="">
                            <td><img width="68" alt="nopic" src="<?php echo attach(get_thumb($vo['img'], '_b'), 'item');?>"></td>
                            <td class="ltd">
                                <?php echo ($vo["title"]); ?>
                                
                            </td>
                            <td class="red rtd">¥<?php echo ($vo["price"]); ?></td>
                            <td><?php echo ($vo["quantity"]); ?></td>
                            <td class="red rtd">¥<?php echo $vo['price']*$vo['quantity']; ?></td>
                        </tr><?php endforeach; endif; else: echo "" ;endif; ?>   
                    </tbody>
                </table>      
                
                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tbdetail">
                    <tbody>
                        <tr>
                            <td class="rtd">商品总额：<span class="red" id="labProdAllTotal">¥<?php echo ($info["goods_sumPrice"]); ?></span>  </td>
                        </tr>
                        
                    </tbody>
                </table>          
		</div>
      
		
        </div>
      <!--  <a data-height="130" data-width="400" data-id="add" data-title="添加收货地址" data-uri="/index.php?g=admin&amp;m=address&amp;a=add" href="javascript:void(0);" class="add fb J_showdialog"><em>添加收货地址</em></a>-->
      
		<div class="mt10" style="text-align:center;">
		  <?php switch($info["status"]): case "1": ?><!-- 待付款-->
                <a href="<?php echo U('item_order/status',array('orderId'=>$info['orderId'],'status'=>2));?>">	<input type="button" value="设为已付款" id="dosubmit" name="dosubmit" class="btn btn_submit" ></a><?php break;?>  
                <?php case "2": ?><!-- 待发货-->
                
               <a data-height="130" data-width="650"
                 data-id="add" data-title="发货管理" data-uri="index.php?g=admin&amp;m=item_order&amp;a=fahuo&amp;id=<?php echo ($info["id"]); ?>" href="javascript:void(0);" class="add fb J_showdialog"> 	<input type="button" value="发货" id="dosubmit" name="dosubmit" class="btn btn_submit" ></a><?php break;?>  
                <?php case "3": ?><!-- 待收货 -->
                  <a href="<?php echo U('item_order/status',array('orderId'=>$info['orderId'],'status'=>4));?>"><input type="button" value="设为已收货" id="dosubmit" name="dosubmit" class="btn btn_submit" ></a><?php break;?>  
                
                <?php default: endswitch;?>
		
		
		<a href="<?php echo U('item_order/index');?>">  <input type="button"  value=" 返回列表 " class="btn btn_cannel"></a></div>
	</div>
</div>
<input type="hidden" name="menuid"  value="<?php echo ($menuid); ?>"/>
<input type="hidden" name="id" value="<?php echo ($info["id"]); ?>" />
</form>
<script src="__STATIC__/js/jquery/jquery.js"></script>
<script src="__STATIC__/js/jquery/plugins/jquery.tools.min.js"></script>
<script src="__STATIC__/js/jquery/plugins/formvalidator.js"></script>
<script src="__STATIC__/js/pinphp.js"></script>
<script src="__STATIC__/js/admin.js"></script>
<script>
//初始化弹窗
(function (d) {
    d['okValue'] = lang.dialog_ok;
    d['cancelValue'] = lang.dialog_cancel;
    d['title'] = lang.dialog_title;
})($.dialog.defaults);
</script>

<?php if(isset($list_table)): ?><script src="__STATIC__/js/jquery/plugins/listTable.js"></script>
<script>
$(function(){
	$('.J_tablelist').listTable();
});
</script><?php endif; ?>


</body>
</html>
<script src="__STATIC__/js/jquery/plugins/colorpicker.js"></script>
<script src="__STATIC__/js/kindeditor/kindeditor.js"></script>