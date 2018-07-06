<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车</title>
<%@include file="userhead.jsp" %>
<body style="cursor: auto;">
<div id="popup_window" style="display:none;">
	<div class="pop_head">请输入余额支付密码</div>
    <a class="pop_head_r" href="javascript:cancel_input_surplus();"></a>
    <div class="pop-inner">
        <input id="surplus_password_input" class="inputBg inputSmall" type="password">
        <div class="required-notice surplus_password_input_notice" style="position:static;"><i class="notice-icon"></i><span class="notice-text"></span></div>
        <div class="clear"></div>
        <input type="button" onclick="end_input_surplus()" value="确定" class="btn_pay1">
        <input type="button" onclick="cancel_input_surplus()" value="取消" class="btn_pay2">
    </div>
</div>
 

<div class="header w990">
  <div class="mall-logo"><a href=""><img src="${pageContext.request.contextPath}/statics/images/logo.gif"></a> </div>
</div>
<div class="blank15"></div>
<div class="block_jm"> 
    <div id="bg" class="bg" style="display:none;"></div>
  <div class="flowstep">
    <ol class="flowstep-5">
      <li class="step-first">
        <div class="step-done">
          <div class="step-name">查看购物车</div>
          <div class="step-no"></div>
        </div>
      </li>
      <li>
        <div class="step-name">拍下商品</div>
        <div class="step-no">2</div>
      </li>
      <li>
        <div class="step-name">付款</div>
        <div class="step-no">3</div>
      </li>
      <li>
        <div class="step-name">确认收货</div>
        <div class="step-no">4</div>
      </li>
      <li class="step-last">
        <div class="step-name">评价</div>
        <div class="step-no">5</div>
      </li>
    </ol>
  </div>
   
  
  <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/showdiv.js">
  </script>
  <div><script>document.write(unescape('%3Cscript id="_ju_" src="#js/showdiv.js?_t=1527673572045" %3E%3C/script%3E') );
  </script>
  <script id="_ju_" src="${pageContext.request.contextPath}/statics/images/showdiv1.js"></script></div> 
  <script type="text/javascript">
      var user_name_empty = "请输入您的用户名！";
      var email_address_empty = "请输入您的电子邮件地址！";
      var email_address_error = "您输入的电子邮件地址格式不正确！";
      var new_password_empty = "请输入您的新密码！";
      var confirm_password_empty = "请输入您的确认密码！";
      var both_password_error = "您两次输入的密码不一致！";
      var show_div_text = "请点击更新购物车按钮";
      var show_div_exit = "关闭";
    </script>
  <div class="blank15"></div>
  <div class="flowBox_jm">
    <div class="title_jm">
      <table cellpadding="0" cellspacing="0" width="100%" border="0">
        <tbody><tr>
          <td width="8%" align="center"><input type="checkbox" autocomplete="off" id="chkAll" name="chkAll" checked="true" onclick="return chkAll_onclick()" style="height:28px;vertical-align:middle;">
            全选</td>
          
          <td width="37%" align="center">产品</td>
          <td width="15%" align="center">数量</td>
          <td width="15%" align="center">本店价</td>
          <td width="15%" align="center">小计</td>
          <td width="10%" align="center">操作</td>
        </tr>
      </tbody></table>
    </div>
    <form id="formCart1" name="formCart" method="post" action="">
      <table align="center" cellpadding="0" cellspacing="0" style="height:auto;width:100%;">
  <tbody><tr height="35">
    <td style="text-indent:19px; background:#FAFAFA;font-weight:bold;color:#C81623">网站自营      <input type="hidden" name="supplierid" id="supplierid" value="0"></td>
  </tr>
</tbody></table>
<table align="center" cellpadding="0" cellspacing="0" style="height:auto;width:100%;">
    <tbody><tr>
    <td style="width:100%;">
    <table cellpadding="5" cellspacing="1" border="0" width="100%">
        <tbody><tr> 
		<td align="center" width="5%">
		<input type="checkbox" checked="checked" autocomplete="off" name="sel_cartgoods[]" value="936" id="sel_cartgoods_936" onclick="select_cart_goods();">
	</td>
	  <td align="center" width="40%">
	              
            <div class="thumb_name">
              <dl>
                <dt> <a href="" target="_blank"><img src="${pageContext.request.contextPath}/statics/images/143_thumb_G_1437529603664.jpg" border="0" title="小米（MI）小米Note 移动联通双4G 特别版(16G ROM)"></a> </dt>
                <dd> <a href="" target="_blank" class="f6">小米（MI）小米Note 移动联通双4G 特别版(16G ROM)</a> 
                  <br>
                  <font class="attrname">液晶屏尺寸:3.0英寸 <br>
颜色:黑色[300] <br>
</font> 
                   
                   
                </dd>
              </dl>
            </div>
            	    </td>
	    <td align="center" width="15%">
	                <div class="jm_cartnum"> <span class="jmminu" onclick="minus_num(936,143,0,0);">-</span>
              <input type="text" name="goods_number[936]" id="goods_number_936" value="1" size="4" class="jminputBg" onkeydown="if(event.keyCode == 13) event.returnValue = false" onblur="change_price(936,143,0)">
              <input type="hidden" id="hidden_936" value="1">
              <span class="jmadd" onclick="javascript:add_num(936,143,0,0)">+</span> </div>
            	    </td>
          <td align="center" width="15%"><font class="cart_jmprice" id="goods_price_936">¥2083.30</font></td>
          <td align="center" width="15%"><font class="cart_jmprice" id="subtotal_936">¥2083.30</font></td>
          <td align="center" width="10%"><a href="javascript:if (confirm(&#39;您确实要把该商品移出购物车吗？&#39;)) location.href=&#39;flow.php?step=drop_goods&amp;id=936&#39;; " class="f6">删除</a></td>
        </tr>
      </tbody></table>
      </td>
  </tr>
  </tbody></table>
<table width="100%" align="center" border="0" cellpadding="5" cellspacing="0" bgcolor="#ffffff" style="border-top:1px dashed #eee; margin-bottom:10px;">
  <tbody><tr>
    <td bgcolor="#ffffff" align="right" style="padding:10px 15px 0 0;"> 
      <span id="zk_0">根据优惠活动<a href=""><font color="red"></font></a>，您可以享受折扣 ¥0.0</span></td>
  </tr>
</tbody></table>
 
      <input type="hidden" name="step" id="actname" value="update_cart">
    </form>
    <table width="100%" align="center" border="0" cellpadding="5" cellspacing="6" style="border-top:1px solid #eee;">
      <tbody><tr>
        <td width="150"><a href="" class="continue_buy">继续购物</a></td>
        <td align="right" width="80"><a href="" class="jmclear"><font color="#aaaaaa">清空购物车 </font></a></td>
        <td align="right" id="cart_money_info"> 应付总额： <span>¥2083.30</span>，比市场价 ¥2800.00 节省了 ¥716.70 (26%)</td>
        <td align="right" width="150"><a href="javascript:void(0);" onclick="return selcart_submit();" class="jmcheckout" style="color:#ffffff">去结算</a></td>
      </tr>
    </tbody></table>
     
    <script type="text/javascript" charset="utf-8">
	function chkAll_onclick(){
		var obj = document.getElementById('chkAll');
		var obj_cartgoods = document.getElementsByName("sel_cartgoods[]");
		for (var i=0;i<obj_cartgoods.length;i++){
            if(!obj_cartgoods[i].disabled){
                var e = obj_cartgoods[i];

                if (e.name != 'chkAll'){
                    e.checked = obj.checked;
                }
            }
		}
		select_cart_goods();
	}
	function select_cart_goods(){
	      var sel_goods = new Array();
	      var obj_cartgoods = document.getElementsByName("sel_cartgoods[]");
	      var suppid = document.getElementById('supplierid');
	      var j=0;
	      var c = true;
	      for (i=0;i<obj_cartgoods.length;i++){
			if(obj_cartgoods[i].checked == true){	
				sel_goods[j] = obj_cartgoods[i].value;
				j++;
			}else{
				c = false;
			}
	      }
	      document.getElementById('chkAll').checked = c;
	      Ajax.call('flow.php', 'act=selcart&sel_goods=' + sel_goods + '&suppid=' + suppid, selcartResponse, 'GET', 'JSON');
	}
	function selcartResponse(res){
	  if (res.err_msg.length > 0){
            alert(res.err_msg);
	  }else{
	     document.getElementById('cart_money_info').innerHTML = res.result;
		 if(document.getElementById('zk_'+res.suppid)){
	     	document.getElementById('zk_'+res.suppid).innerHTML = res.your_discount;
		 }
	  }
	}
	function selcart_submit(){
	      var obj_cartgoods = document.getElementsByName("sel_cartgoods[]");
	      var formobj = document.getElementById('formCart1');
	      var j=0;
	      for (i=0;i<obj_cartgoods.length;i++){
			if(obj_cartgoods[i].checked == true){	
				j++;
			}
	      }
	      if (j>0){
		
			formobj.action='flow.php?step=checkout';
			document.getElementById('actname').value='checkout';
			formobj.submit();
			return true;
	      }else{	
			$('.pop-mask,.pop-compare').show();	
			$('.pop-compare .pop-text').html('您还没有选择商品哦！').css('padding-top',10);
			$('.pop-compare').css({'top':($(window).height()-$('.pop-compare').outerHeight())/2});	
			return false;
	     }
	}
	</script> 
     
     
    <script>
	function add_num(rec_id,goods_id,supp_id,is_package){
		document.getElementById("goods_number_"+rec_id+"").value++;
		var sel_goods = new Array();
		var obj_cartgoods = document.getElementsByName("sel_cartgoods[]");
		var j=0;
	      for (i=0;i<obj_cartgoods.length;i++){
			if(obj_cartgoods[i].checked == true){	
				sel_goods[j] = obj_cartgoods[i].value;
				j++;
			}
	      }
		var number = document.getElementById("goods_number_"+rec_id+"").value;
		Ajax.call('flow.php', 'step=update_group_cart&sel_goods='+ sel_goods +'&rec_id=' + rec_id +'&number=' + number+'&goods_id=' + goods_id + '&suppid=' + supp_id + '&is_package=' + is_package, changePriceResponse, 'GET', 'JSON');
	 }

	function minus_num(rec_id,goods_id,supp_id,is_package){
		if (document.getElementById("goods_number_"+rec_id+"").value>1){
			document.getElementById("goods_number_"+rec_id+"").value--;
		}
		var sel_goods = new Array();
		var obj_cartgoods = document.getElementsByName("sel_cartgoods[]");
		var j=0;
	      for (i=0;i<obj_cartgoods.length;i++){
			if(obj_cartgoods[i].checked == true){	
				sel_goods[j] = obj_cartgoods[i].value;
				j++;
			}
	      }
		var number = document.getElementById("goods_number_"+rec_id+"").value;
		Ajax.call('flow.php', 'step=update_group_cart&sel_goods='+ sel_goods +'&rec_id=' + rec_id +'&number=' + number+'&goods_id=' + goods_id + '&suppid=' + supp_id + '&is_package=' + is_package, changePriceResponse, 'GET', 'JSON');
	}

function change_price(rec_id,goods_id,is_package){	
	var r = /^[1-9]+[0-9]*]*$/;
	var number = document.getElementById("goods_number_"+rec_id+"").value;
	if (!r.test(number)){
		alert("您输入的格式不正确！");
		document.getElementById("goods_number_"+rec_id+"").value=document.getElementById("hidden_"+rec_id+"").value;
	}else{	
		var sel_goods = new Array();
		var obj_cartgoods = document.getElementsByName("sel_cartgoods[]");
		var j=0;
	      for (i=0;i<obj_cartgoods.length;i++){
			if(obj_cartgoods[i].checked == true){	
				sel_goods[j] = obj_cartgoods[i].value;
				j++;
			}
	      }
		Ajax.call('flow.php','step=update_group_cart&sel_goods='+ sel_goods +'&rec_id=' + rec_id +'&number=' + number+'&goods_id=' + goods_id + '&is_package=' + is_package, changePriceResponse, 'GET', 'JSON');
	}
}

function changePriceResponse(result){
if(result.error == 1){
	//alert(result.content);
	$('.pop-mask,.pop-compare').show();	
	$('.pop-compare .pop-text').html(result.content).css('padding-top',10);
	$('.pop-compare').css({'top':($(window).height()-$('.pop-compare').outerHeight())/2});	
	document.getElementById("goods_number_"+result.rec_id+"").value =result.number;
	document.getElementById("hidden_"+result.rec_id+"").value =result.number;
}else if (result.error == 999 ){
	/*if (confirm(result.message)){
		location.href = 'user.php';
	}*/
	$('.pop-mask,.pop-login').show();
}else if (result.error == 888 ){
	//alert(result.message);
	$('.pop-mask,.pop-compare').show();	
	$('.pop-compare .pop-text').html(result.message).css('padding-top',10);
	$('.pop-compare').css({'top':($(window).height()-$('.pop-compare').outerHeight())/2});	
	document.getElementById("goods_number_"+result.rec_id+"").value =result.number;
	document.getElementById("hidden_"+result.rec_id+"").value =result.number;
}else{
	document.getElementById("sel_cartgoods_"+result.rec_id).checked = true;//被操作商品选中
	document.getElementById("hidden_"+result.rec_id+"").value =result.number;
	document.getElementById("goods_price_"+result.rec_id).innerHTML = result.goods_price;//商品价格
	document.getElementById('subtotal_'+result.rec_id).innerHTML = result.subtotal;//商品总价
	document.getElementById('cart_money_info').innerHTML = result.market_amount_desc;//购物车商品总价说明
	document.getElementById('zk_'+result.suppid).innerHTML = result.your_discount;//折扣活动说明
	show_div_text = "恭喜您！ 商品数量修改成功！ ";
	showdiv(document.getElementById("goods_number_"+result.rec_id));
}

}
</script> 
     
     
     
    <script type="text/javascript" charset="utf-8">
        function collect_to_flow(goodsId){
          var goods        = new Object();
          var spec_arr     = new Array();
          var fittings_arr = new Array();
          var number       = 1;
          goods.spec     = spec_arr;
          goods.goods_id = goodsId;
          goods.number   = number;
          goods.parent   = 0;
          Ajax.call('flow.php?step=add_to_cart', 'goods=' + goods.toJSONString(), collect_to_flow_response, 'POST', 'JSON');
        }
        function collect_to_flow_response(result){
          if (result.error > 0){
            // 如果需要缺货登记，跳转
            if (result.error == 2){
              if (confirm(result.message)){
                location.href = 'user.php?act=add_booking&id=' + result.goods_id;
              }
	    }else if (result.error == 6){
              openSpeDiv(result.message, result.goods_id);
	    }else{
              alert(result.message);
            }
	  }else{
            location.href = 'flow.php';
          }
        }
      </script> 
     
  </div>
  <div class="blank15"></div>
  
  
  <script type="text/javascript">
	var hotboxtit = document.getElementById("HotBoxTit");
	var hotbox = document.getElementById("HotBox");
	var hottlist = hotboxtit.getElementsByTagName("li");
	var hotlist = hotbox.getElementsByTagName("ul");
	var hottlen = hottlist.length;
	for(var i = 0; i < hottlen; i++){ 
		hottlist[i].pai=i;
		hottlist[i].onmouseover = function(){	
		for(var j=0; j < hottlen; j++){
				var _hott = hottlist[j];
				var _hot =  hotlist[j];
				var ison  =  j==this.pai;
				_hott.className=(ison ? "curr" : "");
				_hot.className= (ison  ?  "curr" : "");
		}
		}
	}
	</script> 
   
  
   
  
   
  
   
  <div class="blank15"></div>
</div><script type="text/javascript" src="${pageContext.request.contextPath}/statics/images/index.php" id="scripts2s"></script><script type="text/javascript" src="${pageContext.request.contextPath}/statics/images/index(1).php" id="scriptsad_popup"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/images/arrive_notice.js.下载"></script>
<div class="tell-me-form" style="display: none; left: 424.5px; top: 140px;" id="tell-me-table">
	<div class="pop-header"><span>到货通知</span><a href="javascript:closeDiv1()" title="关闭" class="tell-me-close"></a></div>
    <div class="tell-me-content">
    	<table cellpadding="0" cellspacing="0" width="100%" border="0">
              <tbody><tr>
                <td colspan="2" align="left">
                    <div class="blank10"></div>
                    <div class="notice-note">
                        <p class="main-color" id="rgoods_name"></p>
                        当商品进行补货时，我们将以短信、邮件的形式通知您，最多发送一次，不会对您造成干扰。
                    </div>
                </td>
              </tr>
              <tr>
                <td width="30%" align="right"><font class="main-color">*</font>数量：</td>
                <td align="left">
                    <input type="text" value="1" id="book-number" class="inputBg">
                    <div class="tell-me-notice">
                        <i class="notice-icon"></i><span class="notice-text num-notice"></span>
                    </div>
                </td>
              </tr>
              <tr>
                <td align="right"><font class="main-color">*</font>手机号码：</td>
                <td align="left">
                    <input type="text" value="" id="phone-num" class="inputBg">
                    <div class="tell-me-notice">
                        <i class="notice-icon"></i><span class="notice-text phone-notice"></span>
                    </div>
                </td>
              </tr>
              <tr>
                <td align="right"><font class="main-color">*</font>电子邮箱：</td>
                <td align="left">
                    <input type="text" value="" id="arrival-email" class="inputBg">
                    <div class="tell-me-notice">
                        <i class="notice-icon"></i><span class="notice-text email-notice"></span>
                    </div>
                </td>
              </tr>
              <tr>
                <td colspan="2" align="center" style="padding:20px 0 30px;">
                    <input type="button" value="马上提交" onclick="tell_me1(1)" class="sure-btn">
                </td>
              </tr>
            </tbody></table>
    </div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/statics/images/user.js"></script><div class="right-sidebar-con">
	<div class="right-sidebar-main right-sidebar-main-open">
        <div class="right-sidebar-panel">
            <div id="quick-links" class="quick-links">
            	<ul>
                    <li class="quick-area quick-login">
                        <a href="javascript:;" class="quick-links-a"><i class="setting"></i></a>
                        <div class="sidebar-user quick-sidebar">
                        	<i class="arrow-right"></i>
                            <div class="sidebar-user-info">
                            	                                <div class="user-have-login">
                                	<div class="user-pic">
                                        <div class="user-pic-mask"></div>
                                                                                <img src="${pageContext.request.contextPath}/statics/images/people.gif">
                                                                            </div>
                                    <div class="user-info">
                                    	<p>用户名：yiren</p>
                                        <p>级　别：钻石会员</p>
                                    </div>
                                </div>
                                <p class="mt10">
                                	<a class="btn order-btn" href="">订单中心</a>
									<a class="btn account-btn" href="">帐户中心</a>
                                </p>
                                                            </div>
                        </div>
                    </li>
                    <li class="sidebar-tabs">
                    	<a href="javascript:void(0);" class="mpbtn_bonus quick-links-a"><i class="bonus"></i></a>
                        <div class="popup">
                            <font>领红包再购物</font>
                            <i class="arrow-right"></i>
                        </div>
                    </li>
                    <li class="sidebar-tabs current">
                        <div class="cart-list quick-links-a" id="collectBox">
                            <i class="cart"></i>
                            <div class="span">购物车</div>
                            <span class="ECS_CARTINFO"><form id="formCart" name="formCart" method="post" action="">
	<span class="cart_num">1</span>
	<div class="sidebar-cart-box">
        <h3 class="sidebar-panel-header">
            <a href="javascript:;" class="title"><i class="cart-icon"></i><em class="title">购物车</em></a>
            <span class="close-panel"></span>
        </h3>
        <div class="cart-panel-main">
            <div class="cart-panel-content" style="height: 572px;">
                                <div class="cart-list">
                                        <div class="cart-item">
                        <div class="item-goods">
                            <span class="p-img"><a href="#143"><img src="${pageContext.request.contextPath}/statics/images/143_thumb_G_1437529603664.jpg" width="50" height="50" alt="小米（MI）小米Note 移动联通双4G 特别版..."></a></span>
                        <div class="p-name"><a href="#143" title="小米（MI）小米Note 移动联通双4G 特别版...">小米（MI）小米Note 移动联通双4G 特别版...</a></div>
                        <div class="p-price"><strong>¥2083.3</strong>×1</div>
                        <a href="javascript:;" class="p-del" onclick="deleteCartGoods(936)">删除</a>
                        </div>
                    </div>
                                    </div>
                            </div>
        </div>
                <div class="cart-panel-footer">
            <div class="cart-footer-checkout">
                <div class="number"><strong class="count">1</strong>件商品</div>
                <div class="sum">共计：<strong class="total">2083.3</strong></div>
                <a class="btn" href="" target="_blank">去购物车结算</a>
            </div>
        </div>
            </div>
<script type="text/javascript">
function deleteCartGoods(rec_id){
	Ajax.call('delete_cart_goods.php', 'id='+rec_id, deleteCartGoodsResponse, 'POST', 'JSON');
}

/**
 * 接收返回的信息
 */
function deleteCartGoodsResponse(res){
  if (res.error){
    alert(res.err_msg);
  }else{
      $('.ECS_CARTINFO').html(res.content);
	  $('.cart-panel-content').height($(window).height()-90);
  }
}
</script> 
</form>
</span>
                        </div>
                    </li>
                    <li class="sidebar-tabs">
                        <a href="javascript:void(0);" class="mpbtn_history quick-links-a"><i class="history"></i></a>
                        <div class="popup" style="left: -121px; visibility: hidden;">
                            <font id="mpbtn_histroy">我看过的</font>
                            <i class="arrow-right"></i>
                        </div>
                    </li>
                    <li>
                        <a href="" target="_blank" class="mpbtn_stores quick-links-a"><i class="stores"></i></a>
                        <div class="popup">
                            我关注的店铺
                            <i class="arrow-right"></i>
                        </div>
                    </li>
                    <li id="collectGoods">
                        <a href="" target="_blank" class="mpbtn_collect quick-links-a"><i class="collect"></i></a>
                        <div class="popup">
                            我的收藏
                            <i class="arrow-right"></i>
                        </div>
                    </li>
                                    </ul>
            </div>
            <div class="quick-toggle">
            	<ul>
                    <li class="quick-area">
                    	<a class="quick-links-a" href="javascript:;"><i class="customer-service"></i></a>
                        <div class="sidebar-service quick-sidebar">
                        	<i class="arrow-right"></i>
                            
<div class="customer-service customer-service-online">
    <a target="_self" href="javascript:chat_online();" alt="点击这里给我发消息" title="点击这里给我发消息"><span class="icon-online"></span>在线客服</a>
</div>
<div class="customer-service">
    <a target="_blank" href="" alt="点击这里给我发消息" title="点击这里给我发消息"><span class="icon-qq"></span>在线客服</a>
</div>
<div class="customer-service">
    <a target="_blank" href="" alt="点击这里给我发消息" title="点击这里给我发消息"><span class="icon-ww"></span>在线客服</a>
</div>
                        </div>
                    </li>
                    <li class="quick-area">
                    	<a class="quick-links-a" href="javascript:;"><i class="qr-code"></i></a>
                        <div class="sidebar-code quick-sidebar">
                        	<i class="arrow-right"></i>
                            <img src="${pageContext.request.contextPath}/statics/images/weixin.jpg">
                        </div>
                    </li>
                    <li class="returnTop">
                        <a href="javascript:;" class="return_top quick-links-a"><i class="top"></i></a>
                        <div class="popup">
                        	返回顶部
                        	<i class="arrow-right"></i>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="">
        	
            <div class="right-sidebar-panels animate-out" style="z-index: 1;">
            	<h3 class="sidebar-panel-header">
                    <a href="javascript:;" class="title"><i class="bonus-icon"></i><em class="title">红包</em></a>
                    <span class="close-panel"></span>
                </h3>
                <div class="bonus-panel-main">
                    <div class="bonus-panel-content" style="height: 622px;">
                    	<script type="text/javascript">
						function fun(type_id, no_have_val){
							no_have = (typeof(no_have_val) == "undefined" ? 0 : no_have_val)
							Ajax.call('user.php?act=user_bonus', 'id=' + type_id + '&no_have=' + no_have, bounsResponse, 'GET', 'JSON');
						}
						function bounsResponse(result){
							$('.pop-compare,.pop-mask').show();
							$('.pop-compare .pop-text').html(result.message);
							$('.pop-compare').css({'top':($(window).height()-$('.pop-compare').height())/2});
						}
						</script>
												<div class="bonus-list">
							 
														 
														 
														 
														 
														 
														 
																				</div>
						                    </div>
                </div>
            </div>
            
        	
        	<div class="ECS_CARTINFO right-sidebar-panels animate-in" style="z-index: 2;">
        	<form id="formCart" name="formCart" method="post" action="">
	<span class="cart_num">1</span>
	<div class="sidebar-cart-box">
        <h3 class="sidebar-panel-header">
            <a href="javascript:;" class="title"><i class="cart-icon"></i><em class="title">购物车</em></a>
            <span class="close-panel"></span>
        </h3>
        <div class="cart-panel-main">
            <div class="cart-panel-content" style="height: 572px;">
                                <div class="cart-list">
                                        <div class="cart-item">
                        <div class="item-goods">
                            <span class="p-img"><a href="#143"><img src="${pageContext.request.contextPath}/statics/images/143_thumb_G_1437529603664.jpg" width="50" height="50" alt="小米（MI）小米Note 移动联通双4G 特别版..."></a></span>
                        <div class="p-name"><a href="#143" title="小米（MI）小米Note 移动联通双4G 特别版...">小米（MI）小米Note 移动联通双4G 特别版...</a></div>
                        <div class="p-price"><strong>¥2083.3</strong>×1</div>
                        <a href="javascript:;" class="p-del" onclick="deleteCartGoods(936)">删除</a>
                        </div>
                    </div>
                                    </div>
                            </div>
        </div>
                <div class="cart-panel-footer">
            <div class="cart-footer-checkout">
                <div class="number"><strong class="count">1</strong>件商品</div>
                <div class="sum">共计：<strong class="total">2083.3</strong></div>
                <a class="btn" href="" target="_blank">去购物车结算</a>
            </div>
        </div>
            </div>
<script type="text/javascript">
function deleteCartGoods(rec_id){
	Ajax.call('delete_cart_goods.php', 'id='+rec_id, deleteCartGoodsResponse, 'POST', 'JSON');
}

/**
 * 接收返回的信息
 */
function deleteCartGoodsResponse(res){
  if (res.error){
    alert(res.err_msg);
  }else{
      $('.ECS_CARTINFO').html(res.content);
	  $('.cart-panel-content').height($(window).height()-90);
  }
}
</script> 
</form>
</div>
        	
            
        	<div class="right-sidebar-panels animate-out" style="z-index: 1;">
				<h3 class="sidebar-panel-header">
                	<a href="javascript:;" class="title"><i></i><em class="title">我的足迹</em></a>
                    <span class="close-panel"></span>
                </h3>
          		<div class="sidebar-panel-main">
            		<div class="sidebar-panel-content">
              			<div class="history-panel">
              				<ul>
                				<li>
              <div class="p-img"><a target="_blank" href="#191"><img src="${pageContext.request.contextPath}/statics/images/191_thumb_G_1437533027069.jpg" alt="雪奈儿 金属边框手机壳套保护壳新款 适用于苹果iPhone6/Plus 4.7英寸 利剑i6土豪金5.5"></a></div>
              <div class="p-name"><a target="_blank" href="#191">雪奈儿 金属边框手机壳套保护壳新款 适用于苹果iPhone6/Plus 4.7英寸 利剑i6土豪金5.5</a> </div>
              <div class="p-comm"><span class="p-price main-color">¥78.0</span> </div>
            </li>                			</ul>
     		  			</div>
            		</div>
          		</div>
        	</div>
        	
        </div>
    </div>
</div>

<div class="pop-main pop-compare">
	<div class="pop-header">
    	<span>温馨提示</span>
        <a class="pop-close" href="javascript:;" title="关闭"></a>
    </div>
    <div class="pop-con">
    	<i class="pop-icon"></i>
        <p class="pop-text"></p>
        <a href="javascript:;" class="pop-sure main-bg-color">确定</a><a href="javascript:;" class="cancel-btn none">取消</a>
    </div>
</div>


<div class="pop-main pop-compare-small">
	<div class="pop-header">
    	<span>温馨提示</span>
        <a class="pop-close" href="javascript:;" title="关闭"></a>
    </div>
    <div class="pop-con">
    	<i class="pop-icon"></i>
        <p class="pop-text"></p>
        <a href="javascript:;" class="cancel-btn">关闭</a>
    </div>
</div>

<div id="tell-me-result" class="tell-me-form" style="display:none;">
	<div class="pop-header"><span>温馨提示</span><a href="javascript:closeDiv1()" title="关闭" class="tell-me-close"></a></div>
    <div class="tell-me-content">
    	<div class="tell-me-result">
            <div class="result-icon"></div>
            <div class="result-text">
            	<div class="title"></div>
                <div class="bottom">
                	<span onclick="javascript:closeDiv1();" class="cancel-btn">关闭</span>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="pop-mask"></div>
<div class="pop-main pop-login" style="top: 103px;">
  <div class="pop-header"> <span>您尚未登录</span><a class="pop-close" href="javascript:;" title="关闭"></a></div>
  <div class="pop-con">
    <form name="formLogin" action="" method="post" onsubmit="return user_login();">
      <div class="form">
      	<div class="mt">
        	<h2>用户登陆</h2><a href="" class="right_register main-color"><span class="text">立即注册</span><i class="icon"></i></a>
        </div>
        <div class="mc">
        	<div class="msg-wrap">
            	<div class="msg-error">
                	<i class="msg-icon"></i><span id="msg-error-text" class="msg-error-text"></span>
                </div>
            </div>
        	<div class="item item-name">
            	<i class="icon"></i>
                <input name="username" id="username" type="text" class="text" value="" tabindex="1" placeholder="手机号/用户名/邮箱">
            </div>
            <div class="item item-password">
                <i class="icon"></i>
                <input type="password" name="password" id="password" class="text" value="" tabindex="2" placeholder="密码">
            </div>
                        <div class="item item-authcode" id="o-authcode">
            	<div class="item-detail fl">
                    <i class="icon"></i>
                    <input type="text" id="authcode" name="captcha" class="text text-1" tabindex="3" placeholder="验证码">
                </div>
                <label class="img fl">
                    <img src="${pageContext.request.contextPath}/statics/images/captcha.php" alt="captcha" style="vertical-align: middle;cursor: pointer;" onclick="this.src=&#39;captcha.php?is_login=1&amp;&#39;+Math.random()">
                </label>
            </div>
                        <div class="safety" id="autoentry">
                <input type="checkbox" value="1" name="remember" id="remember" class="checkbox">
                <label for="remember" class="mar-b">请保存我这次的登录信息</label>
                <a class="forget_password fr" href="">忘记密码？</a> 
            </div>
            <div class="login-btn">
              <input type="hidden" name="act" value="act_login">
              <input type="hidden" name="back_act" value="">
              <input type="submit" name="submit" class="btn-img" id="loginsubmit" value="立即登录">
            </div>
            <div class="item-coagent">
		    	<a href="#user.php?act=oath&amp;type=weixin"><i class="weixin"></i>微信</a>
            	<a href="#user.php?act=oath&amp;type=qq"><i class="qq"></i>QQ</a>
            	<a href="#user.php?act=oath&amp;type=weibo"><i class="sina"></i>新浪</a>
            	<a href="#user.php?act=oath&amp;type=alipay" class="last"><i class="alipay"></i>支付宝</a>
            </div>
        </div>
      </div>
    </form>
  </div>
</div>
<script type="text/javascript">	
$(window).scroll(function(){ 
	if($(this).scrollTop() > $(window).height() ){ 
		$('.returnTop').show();
	}else{ 
		$('.returnTop').hide();
	} 
}) 
$('.cart-panel-content').height($(window).height()-90);
$('.bonus-panel-content').height($(window).height()-40);
$(".returnTop").click(function(){
	$('body,html').animate({scrollTop:0},800);
	return false;
});
$('.quick-area').hover(function(){
	$(this).find('.quick-sidebar').toggle();
})
//移动图标出现文字
$(".right-sidebar-panel li").mouseenter(function(){
	$(this).children(".popup").stop().animate({left:-92,queue:true});
	$(this).children(".popup").css("visibility","visible");
	$(this).children(".ibar_login_box").css("display","block");
});
$(".right-sidebar-panel li").mouseleave(function(){
	$(this).children(".popup").css("visibility","hidden");
	$(this).children(".popup").stop().animate({left:-121,queue:true});
	$(this).children(".ibar_login_box").css("display","none");
});
//点击购物车、用户信息以及浏览历史事件
$('.sidebar-tabs').click(function(){
	if($('.right-sidebar-main').hasClass('right-sidebar-main-open')&&$(this).hasClass('current')){
		$('.right-sidebar-main').removeClass('right-sidebar-main-open');
		$(this).removeClass('current');
		$('.right-sidebar-panels').eq($(this).index()-1).removeClass('animate-in').addClass('animate-out').css('z-index',1);
	}else{
		$(this).addClass('current').siblings('.sidebar-tabs').removeClass('current');
		$('.right-sidebar-main').addClass('right-sidebar-main-open');
		$('.right-sidebar-panels').eq($(this).index()-1).addClass('animate-in').removeClass('animate-out').css('z-index',2).siblings('.right-sidebar-panels').removeClass('animate-in').addClass('animate-out').css('z-index',1);
	}
});
$(".right-sidebar-panels").on('click', '.close-panel', function () {
	$('.sidebar-tabs').removeClass('current');
	$('.right-sidebar-main').removeClass('right-sidebar-main-open');
	$('.right-sidebar-panels').removeClass('animate-out');
});
$(document).click(function(e){ 
	var target = $(e.target); 
	if(target.closest('.right-sidebar-con').length == 0){ 
		$('.right-sidebar-main').removeClass('right-sidebar-main-open');
		$('.sidebar-tabs').removeClass('current');
		$('.right-sidebar-panels').removeClass('animate-in').addClass('animate-out').css('z-index',1);
	} 
}) 

$('.pop-login').css('top',($(window).height()-$('.pop-login').height())/2);
$('.pop-close').click(function(){
	$('.pop-main,.pop-mask').hide();
	$('form[name="formLogin"]').find('.msg-wrap').css('visibility','hidden');
	$('.pop-login .item,.pop-login .item-detail').removeClass('item-error');
	$('.pop-login .text').val('');
})
$('.pop-login .item .text').focus(function(){
	$(this).addClass('')	
})
</script>
<%@include file="foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/images/order_pickpoint.js"></script><div class="choose" id="choose" style="display:none"></div>
<script type="text/javascript">
function closeCustomer(){
	$("#choose,#bg").hide();
}
function choose_gift(suppid){
	var sel_goods = new Array();
	var obj_cartgoods = document.getElementsByName("sel_cartgoods[]");
	var j = 0;
	for (i=0;i<obj_cartgoods.length;i++){
		if(obj_cartgoods[i].checked == true){	
			sel_goods[j] = obj_cartgoods[i].value;
			j++;
		}
	}
	Ajax.call('flow.php', 'is_ajax=1&suppid=' + suppid + '&sel_goods='+sel_goods, selgiftResponse, 'GET', 'JSON');
}
function selgiftResponse(res){
	$('#choose').html(res.result).show();
	$('.bg').show();
}
</script>
<script type="text/javascript">
var process_request = "正在处理您的请求...";
var username_chana = "- 用户名不能有中文。";
var msg_uname_length = "- 用户名不能超过 20 个字符。";
var username_empty = "- 用户名不能为空。";
var username_shorter = "- 用户名长度不能少于 3 个字符。";
var username_invalid = "- 用户名只能是由字母数字以及下划线组成。";
var password_empty = "- 登录密码不能为空。";
var password_shorter = "- 登录密码不能少于 6 个字符。";
var confirm_password_invalid = "- 两次输入密码不一致";
var email_empty = "- Email 为空";
var email_invalid = "- Email 不是合法的地址";
var agreement = "- 您没有接受协议";
var msn_invalid = "- msn地址不是一个有效的邮件地址";
var qq_invalid = "- QQ号码不是一个有效的号码";
var home_phone_invalid = "- 家庭电话不是一个有效号码";
var office_phone_invalid = "- 办公电话不是一个有效号码";
var mobile_phone_invalid = "- 手机号码不是一个有效号码";
var msg_un_blank = "- 用户名不能为空";
var msg_un_chine = "- 用户名不能为中文";
var msg_un_length = "- 用户名不得超过14个字符";
var msg_un_format = "- 用户名含有非法字符";
var msg_un_registered = "- 用户名已经存在,请重新输入";
var msg_can_rg = "* 可以注册";
var msg_email_blank = "- 邮件地址不能为空";
var msg_email_registered = "- 邮箱已存在";
var msg_email_format = "- 邮件地址不合法";
var msg_mobile_phone_blank = "- 手机号码不能为空";
var msg_mobile_phone_registered = "- 手机号码已存在";
var msg_mobile_phone_format = "- 手机号码不是一个有效号码";
var msg_blank = "- 不能为空";
var no_select_question = "- 您没有完成密码提示问题的操作";
var passwd_balnk = "* 密码中不能包含空格";
var msg_email_code_blank = "- 邮箱验证码不能为空";
var msg_mobile_phone_code_blank = "- 手机验证码不能为空";
var msg_captcha_blank = "- 验证码不能为空";
var msg_register_type_blank = "- 注册类型不能为空";
var username_exist = "用户名 %s 已经存在";
var compare_no_goods = "您没有选定任何需要比较的商品或者比较的商品数少于 2 个。";
var btn_buy = "购买";
var is_cancel = "取消";
var select_spe = "请选择商品属性";
</script>
</body>
</html>