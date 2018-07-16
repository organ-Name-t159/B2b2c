<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="userhead.jsp" %>
<%@include file="common/classify.jsp" %> 
<!DOCTYPE html>
<title>${product.name}</title>
<script type="text/javascript">
$(function() {
	$("#xz").hide();
	$("#quanbu").hover(
		function (){
			$("#xz").show();	
		},		
		function (){
			$("#xz").hide();	
		}
	)
})
</script>
	<div id="bg" class="bg" style="display: none;"></div>
	<script type="text/javascript">
function showDiv(goods_id){
	document.getElementById('popDiv').style.display='block';
	document.getElementById('bg').style.display='block';
	var form_quick_buy = document.forms['quick_buy'];
	form_quick_buy.elements['goods_id'].value = goods_id;
	 var sels = document.getElementsByTagName('select'); 
	 for (var i = 0; i < sels.length; i++) {
		if(sels[i].name!='country' && sels[i].name!='province' && sels[i].name !='city' && sels[i].name !='district'){
			sels[i].style.visibility = 'hidden';     
		}
	}
}
function closeDiv(){
document.getElementById('popDiv').style.display='none';
document.getElementById('bg').style.display='none';
var sels = document.getElementsByTagName('select'); 
 for (var i = 0; i < sels.length; i++) {
		sels[i].style.visibility = '';     
    }
}
function check_notice() {
    var form_notice= document.forms['pricecut_notice'];
    var price = form_notice.elements['price'].value;
    var mobile = form_notice.elements['mobile'].value;
    var email = form_notice.elements['email'].value;
    var msg = '';
     if (price == '') {
        msg += '价格不能为空\n';
	 $('.pricecut-notice-form .price-notice').html('价格不能为空!').parents('.price-text-notice').show();
    }else if(isNaN(price)){
         msg += '价格必须为数字\n';
	 $('.pricecut-notice-form .price-notice').html('价格必须为数字!').parents('.price-text-notice').show();
     }else if(parseFloat(price) >= parseFloat(form_notice.elements['price_now'].value.replace(/[^0-9.]/ig,""))){
         msg += '价格应低于商品当前价\n';
	 $('.pricecut-notice-form .price-notice').html('价格应低于商品当前价!').parents('.price-text-notice').show();
     }else{
     		$('.pricecut-notice-form .price-notice').html('').parents('.price-text-notice').hide();	
     }
    if (mobile == '') {
        msg += '手机号码不能为空\n';
	$('.pricecut-notice-form .phone-notice').html('手机号码不能为空!').parents('.price-text-notice').show();
    } else {
        if (!(/^[\d-]{6,}$/.test(mobile))) {
            msg += '手机号码格式不对\n';
	    $('.pricecut-notice-form .phone-notice').html('手机号码格式不对!').parents('.price-text-notice').show();
        }else{
		$('.pricecut-notice-form .phone-notice').html('').parents('.price-text-notice').hide();	
    	}
    }
    if (email == '') {
        msg += '邮箱不能为空\n';
	$('.pricecut-notice-form .email-notice').html('邮箱不能为空!').parents('.price-text-notice').show();
    }else{
        var reg1 = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)/;
        if (!reg1.test(email)) {
            msg += '邮箱格式不正确\n';
	    	$('.pricecut-notice-form .email-notice').html('邮箱格式不正确!').parents('.price-text-notice').show();
        }else{
			$('.pricecut-notice-form .email-notice').html('').parents('.price-text-notice').hide();
    	}
    }
    if (msg){
        return false;
    }else{		
        return true;
    }
}
</script>
	<div id="popDiv" class="mydiv pricecut-notice-form"
		style="display: none;">
		<div class="qb_left">
			<span>降价通知</span><a href="javascript:closeDiv()" title="关闭"></a>
		</div>
		<div class="pop-con">
			<form method="post" name="pricecut_notice" action=""
				onSubmit="return check_notice();">
				<table cellpadding=0 cellspacing=0 width="90%" border=0>
					<tr>
						<td colspan="2" align=left style="padding: 15px 0px;">
							<div class="notice-note">
								<p class="main-color">Haier/海尔 XQG70-B12866电商/7公斤 全自动 变频滚筒
									洗衣机</p>
								当商品价格低于您设定的价格我们将通知您，通知短信最多发送一次，不会对您造成干扰。
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" align="right" width="20%">现价：</td>
						<td align="left"><font class="main-color"> ¥3245.0 </font> <input
							type="hidden" name="price_now" value="¥3245.0" /></td>
					</tr>
					<tr>
						<td valign="top" align="right"><font class="main-color">*</font>价格低于：</td>
						<td align="left"><input type="text" id="consignee"
							name="price" size="13" class="inputBg inputBg-spe"
							onkeyup="this.value=this.value.replace(/[^0-9.]/ig,'')"
							onafterpaste="this.value=this.value.replace(/[^0-9.]]/ig,'')" />
							元时通知我！
							<div class="price-text-notice">
								<i class="notice-icon"></i> <span
									class="notice-text price-notice"></span>
							</div></td>
					</tr>
					<tr>
						<td align=right><font class="main-color">*</font>手机号码：</td>
						<td align="left"><input type="text" name="mobile" size=23
							class="inputBg" /> 我们将以短信通知您
							<div class="price-text-notice">
								<i class="notice-icon"></i> <span
									class="notice-text phone-notice"></span>
							</div></td>
					</tr>
					<tr>
						<td align=right><font class="main-color">*</font>邮箱：</td>
						<td align="left"><input type="text" name="email"
							class="inputBg" /> 您还可以通过邮件接收
							<div class="price-text-notice">
								<i class="notice-icon"></i> <span
									class="notice-text email-notice"></span>
							</div></td>
					</tr>
					<tr>
						<td colspan="2" align="center" style="padding: 20px 0 30px;">
							<input type="hidden" value="125" name="goods_id" id="goods_id" />
							<input type="submit" class="pop-sure main-bg-color" value="马上提交">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	
	<div class="tell-me-form" style="display: none;" id="tell-me-table">
		<div class="pop-header">
			<span>到货通知</span><a href="javascript:closeDiv1()" title="关闭"
				class="tell-me-close"></a>
		</div>
		<div class="tell-me-content">
			<table cellpadding="0" cellspacing="0" width="100%" border="0">
				<tr>
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
					<td align="left"><input type="text" value="1" id="book-number"
						class="inputBg" />
						<div class="tell-me-notice">
							<i class="notice-icon"></i><span class="notice-text num-notice"></span>
						</div></td>
				</tr>
				<tr>
					<td align="right"><font class="main-color">*</font>手机号码：</td>
					<td align="left"><input type="text" value="" id="phone-num"
						class="inputBg" />
						<div class="tell-me-notice">
							<i class="notice-icon"></i><span class="notice-text phone-notice"></span>
						</div></td>
				</tr>
				<tr>
					<td align="right"><font class="main-color">*</font>电子邮箱：</td>
					<td align="left"><input type="text" value=""
						id="arrival-email" class="inputBg" />
						<div class="tell-me-notice">
							<i class="notice-icon"></i><span class="notice-text email-notice"></span>
						</div></td>
				</tr>
				<tr>
					<td colspan="2" align="center" style="padding: 20px 0 30px;">
						<input type="button" value="马上提交" onclick="tell_me1(125)"
						class="sure-btn" />
					</td>
				</tr>
			</table>
		</div>
	</div>
	
	<script language="javascript"> 
<!--
/*屏蔽所有的js错误*/
function killerrors() { 
return true; 
} 
window.onerror = killerrors; 
//-->
</script>


<script type="text/javascript">
		function show_qcord(){
			var qs=document.getElementById('sn-qrcode');
			qs.style.display="block";
		}
		function hide_qcord(){
			var qs=document.getElementById('sn-qrcode');
			qs.style.display="none";
		}
	  </script>
	
	<script>
header_login();
function header_login()
{	
	Ajax.call('', '', loginactResponse, 'GET', 'JSON', '1', '1');
}
function loginactResponse(result)
{
	var MEMBERZONE =document.getElementById('login-info');
	MEMBERZONE.innerHTML= result.memberinfo;
}
</script>

	<script type="text/javascript">
//<![CDATA[
function checkSearchForm()
{
    if(document.getElementById('keyword').value)
    {
	var frm  = document.getElementById('searchForm');
	var type = parseInt(document.getElementById('searchtype').value);
	frm.action = type==0 ? '' : '';
        return true;
    }
    else
    {
	alert("请输入关键词！");
        return false;
    }
}
function myValue1()
{
	document.getElementById('keyword').value = "请输入商品名称或编号...";
}
function myValue2()
{
	document.getElementById('keyword').value = "";
}
//]]>
$('.search-type li').click(function() {
    $(this).addClass('cur').siblings().removeClass('cur');
    $('#searchtype').val($(this).attr('num'));
});
$(function(){
	//图片放大效果
    $(".header-right img").bubbleup({scale:100});
	
	//头部搜索
	$('.search-type').hover(function(){
		$(this).css({"height":"auto","overflow":"visible"});
	},function(){
		$(this).css({"height":32,"overflow":"hidden"});
	});
	
});
function _show_(h, b) {
	if (!h) {
		return
	}
	if (b && b.source && b.target) {
		var d = (typeof b.source == "string") ? M.$("#" + b.source) : b.source;
		var e = (typeof b.target == "string") ? M.$("#" + b.target) : b.target;
		if (d && e && !e.isDone) {
			e.innerHTML = d.value;
			d.parentNode.removeChild(d);
			if (typeof b.callback == "function") {
				b.callback()
			}
			e.isDone = true
		}
	}
	M.addClass(h, "hover");
	if (b && b.isLazyLoad && h.isDone) {
		var g = h.find("img");
		for (var a = 0, c = g.length; a < c; a++) {
			var f = g[a].getAttribute("data-src_index_menu");
			if (f) {
				g[a].setAttribute("src", f);
				g[a].removeAttribute("data-src_index_menu")
			}
		}
		h.isDone = true
	}
}
function _hide_(a) {
	if (!a) {
		return
	}
	if (a.className.indexOf("hover") > -1) {
		M.removeClass(a, "hover")
	}
}
</script>
	
	<div class="margin-w1210 clearfix">
		<div class="w">
			<div class="breadcrumb clearfix">
				<a href="." class="index">首页</a> <span class='crumbs-arrow'>&gt;</span>
				<div class='crumbs-nav crumbs-nav0'>
					<a class='crumbs-title' href='#'>家用电器<i
						class='icon'></i></a>
					<div class='crumbs-drop'>
						<ul class='crumbs-drop-list'>
							<li><a href='#'>食品、酒类、生鲜、特产</a></li>
							<li><a href='#'>男装、女装、内衣、珠宝</a></li>
							<li><a href='#'>个护化妆、清洁用品</a></li>
							<li><a href='#'>手机、数码、通信</a></li>
							<li><a href='#'>家用电器</a></li>
							<li><a href='#'>家居、家具、家装、厨具</a></li>
							<li><a href='#'>酒类饮料</a></li>
							<li><a href='#'>母婴、玩具乐器</a></li>
							<li><a href='#'>simlcufv</a></li>
							<li><a href='#'>虚拟商品</a></li>
							<li><a href='#'>电脑、办公</a></li>
							<li><a href='#'>鞋靴、箱包、钟表、奢侈品</a></li>
							<li><a href='#'>运动户外</a></li>
							<li><a href='#'>汽车、汽车用品</a></li>
							<li><a href='#'>营养保健</a></li>
							<li><a href='#'>图书、音像、电子书</a></li>
							<li><a href='#'>彩票、旅行、充值、票务</a></li>
							<li><a href='#'>理财、众筹、白条、保险</a></li>
							<li><a href='#'>多的</a></li>
							<li><a href='#'>肉</a></li>
							<li><a href='#'>对的</a></li>
							<li><a href='#'>111</a></li>
							<li><a href='#'>rrwoersb</a></li>
							<li><a href='#'>axaxmmtt</a></li>
							<li><a href='#'>utybgjqe</a></li>
							<li><a href='#'>xfnrhvbd</a></li>
							<li><a href='#'>gkkmssby</a></li>
							<li><a href='#'>etalgjat</a></li>
						</ul>
					</div>
				</div>
				<span class='crumbs-arrow'>&gt;</span>
				<div class='crumbs-nav crumbs-nav1'>
					<a class='crumbs-title' href='#'>大家电<i
						class='icon'></i></a>
					<div class='crumbs-drop'>
						<ul class='crumbs-drop-list'>
							<li><a href='#'>大家电</a></li>
							<li><a href='#'>生活电器</a></li>
							<li><a href='#'>厨房电器</a></li>
							<li><a href='#'>个护健康</a></li>
							<li><a href='#'>五金家装</a></li>
							<li><a href='#'>pwigulnu</a></li>
							<li><a href='#'>qohfpmyo</a></li>
							<li><a href='#'>rklmbdpp</a></li>
							<li><a href='#'>opmovije</a></li>
							<li><a href='#'>fqbujchb</a></li>
							<li><a href='#'>rjspnmbk</a></li>
						</ul>
					</div>
				</div>
				<span class="crumbs-arrow">&gt;</span> <span class="last">Haier/海尔
					XQG70-B12866电商/7公斤 全自动 变频滚筒 洗衣机</span>
			</div>
		</div>
		<div class="blank"></div>
		<script>
$(function(){
	$('.breadcrumb .crumbs-nav').hover(function(){
		$(this).toggleClass('curr');	
	})
})
</script>
<script type="text/javascript">
</script>
		<div id="product-intro" class="goods-info">
			<div id="preview">
				<div class="goods-img" id="li_125"
					style="position: relative; z-index: 3;">
					<a href="${ctx}/statics/images/${product.fileName}"
						class="MagicZoom" id="zoom" rel="zoom-position: right;}"> 
						<img src="${ctx}/statics/images/${product.fileName}"
						class="goodsimg pic_img_125" id="goods_bimg" width="400"
						height="400" />
					</a>
				</div>
				<div style="height: 10px; line-height: 10px; clear: both;"></div>

				<div class="clearfix" class="goods_picture">
					<span class="scrleft" onmouseover="moveLeft()"
						onmousedown="clickLeft()" onmouseup="moveLeft()"
						onmouseout="scrollStop()"></span>
					<div class="gallery">
						<div id="demo">
							<div id="demo1" style="float: left;">
								<ul id="goods_gallery">
									<li><a
										href="${ctx}/statics/images/125_P_1437525897393.jpg"
										rel="zoom-id: zoom;"
										rev="${ctx}/statics/images/125_P_1437525897165.jpg" title="">
											<img
											src="${ctx}/statics/images/${product.fileName}"
											alt="Haier/海尔 XQG70-B12866电商/7公斤 全自动 变频滚筒 洗衣机" class="B_blue" />
									</a></li>
								</ul>
							</div>
							<div id="demo2" style="display: inline; overflow: visible;"></div>
						</div>
					</div>
					<span class="scrright" onmouseover="moveRight()"
						onmousedown="clickRight()" onmouseup="moveRight()"
						onmouseout="scrollStop()" class="spanR"></span>
					<script>
      function $gg(id){  
        return (document.getElementById) ? document.getElementById(id): document.all[id]
      }
      
      var boxwidth=60;//跟图片的实际尺寸相符
      
      var box=$gg("demo");
      var obox=$gg("demo1");
      var dulbox=$gg("demo2");
      obox.style.width=obox.getElementsByTagName("li").length*boxwidth+'px';
      dulbox.style.width=obox.getElementsByTagName("li").length*boxwidth+'px';
      box.style.width=obox.getElementsByTagName("li").length*boxwidth*6+'px';
      var canroll = false;
      if (obox.getElementsByTagName("li").length >= 6) {
        canroll = true;
        dulbox.innerHTML=obox.innerHTML;
      }
      var step=5;temp=1;speed=50;
      var awidth=obox.offsetWidth;
      var mData=0;
      var isStop = 1;
      var dir = 1;
      
      function s(){
        if (!canroll) return;
        if (dir) {
      if((awidth+mData)>=0)
      {
      mData=mData-step;
      }
      else
      {
      mData=-step;
      }
      } else {
        if(mData>=0)
        {
        mData=-awidth;
        }
        else
        {
        mData+=step;
        }
      }
      
      obox.style.marginLeft=mData+"px";
      
      if (isStop) return;
      
      setTimeout(s,speed)
      }
      
      
      function moveLeft() {
          var wasStop = isStop;
          dir = 1;
          speed = 50;
          isStop=0;
          if (wasStop) {
            setTimeout(s,speed);
          }
      }
      
      function moveRight() {
          var wasStop = isStop;
          dir = 0;
          speed = 50;
          isStop=0;
          if (wasStop) {
            setTimeout(s,speed);
          }
      }
      
      function scrollStop() {
        isStop=1;
      }
      
      function clickLeft() {
          var wasStop = isStop;
          dir = 1;
          speed = 25;
          isStop=0;
          if (wasStop) {
            setTimeout(s,speed);
          }
      }
      
      function clickRight() {
          var wasStop = isStop;
          dir = 0;
          speed = 25;
          isStop=0;
          if (wasStop) {
            setTimeout(s,speed);
          }
      }
      </script>
				</div>


				<div class="goods-gallery-bottom">
					<div class="goods-sn fl">
						<span class="goods-sn-color">商品货号</span> <span>WRZ000125</span>
					</div>

					<a class="goods-compare compare-btn fr" data-goods="125"
						data-type=""
						onclick="Compare.add(125,'Haier/海尔 XQG70-B12866电商/7公斤 全自动 变频滚筒 洗衣机','0', 
						'${ctx}/statics/images/125_thumb_G_1437525897177.jpg', '¥3894.0')"><i></i>对比</a>

					<a href="javascript:collect(125)" class="goods-col  fr"> <b></b><i>收藏
							(1)</i>
					</a>
					<div class="bdsharebuttonbox fr">
						<a class="bds_more" href="#" data-cmd="more"
							style="background: transparent url(themes/wrzcnet_jdcom/images/goods-icon.png) no-repeat -110px -166px; color: #999; line-height: 25px; height: 25px; margin: 0px 10px; padding-left: 20px; display: block;">分享</a>
					</div>
				</div>
				<script type="text/javascript">
        	window._bd_share_config = {
			"common": {
				"bdSnsKey": {},
				"bdText": "",
				"bdMini": "2",
				"bdMiniList": false,
				"bdPic": "",
				"bdStyle": "0",
				"bdSize": "16"
			},
			"share": {}
		};
		with(document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 
		'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~ (-new Date() / 36e5)];
        </script>
			</div>
			<div class="goods-detail-info">
				<form action="javascript:addToCart(125)" method="post"
					name="ECS_FORMBUY" id="ECS_FORMBUY">
					<div class="goods-name">
						<h1>${product.name}</h1>
					</div>
					<div class="goods-brief">
						<span>层层甄选 臻心臻意 爱的见证 巧克力让爱历久弥新 送佳人女友礼品</span>
					</div>
					<div id="goods-price" >
						<div class="mar-l" >
							<span class="price" >售价￥</span>
							<strong class="p-price"
								id="ECS_GOODS_AMOUNT">${product.price}</strong> <span class="depreciate"><a
								href="javascript:showDiv(125);">降价通知</a></span>
						</div>
						
						<div class="show-price">
							<div class="market-prices-spe">
								<span class="price">市场价</span> <font class="market-price">${product.bazaarPrice}</font>
							</div>
								

							<div class="rank-prices">
								<div id="vip1" onmouseover="hidevip1()">
									<span class="rmbPrice">会员等级价格<i></i></span>
								</div>
								<div class="hover" style="display: none;" id="vip2"
									onmouseover="hidevip1()" onmouseout="showvip1()">
									<span class="rmbPrice">会员等级价格<i></i></span> <br /> <span
										class="rmbPrice"> 普通会员：¥3245.0</span> <br /> <span
										class="rmbPrice"> 铜牌会员：¥3082.7</span> <br /> <span
										class="rmbPrice"> 金牌会员：¥2920.5</span> <br /> <span
										class="rmbPrice"> 钻石会员：¥2758.2</span> <br /> <span
										class="rmbPrice"> 国外会员：¥1233.1</span>

								</div>
								<script type="text/javascript">
						function hidevip1(){ 
						document.getElementById('vip1').style.display="none";
						document.getElementById('vip2').style.display="block";
						}
						function showvip1(){ 
						document.getElementById('vip1').style.display="block";
						document.getElementById('vip2').style.display="none";
						}
					  </script>
							</div>

						</div>
					</div>
					<ul id="summary1">



					</ul>
					<div id="summary-qita">
						<ul class="qita">
							<li>
								<p>
									累积评价<span><a href="#">${product.evaluateSales }人评价</a></span>
								</p>
							</li>
							<li>
							
								<p>
								累计销量<span><a href="#">${product.salesVolume}</a></span>
								</p>
							</li>
							<li style="border: none">
								<p>
									赠送积分<span><font id="ECS_GOODS_AMOUNT_jf">${product.giveIntegral}</font></span>
								</p>
						</ul>
					</div>
					<ul id="summary">


					</ul>
					<ul id="choose" class="choose_bor">
						<li style="z-index: 1;">
							<div class="pickup-point-wrap">
								<div class="dt">自提</div>
								<div id="pickup_point" onmouseenter="show_list()"
									onmouseleave="hide_list()">自提点列表</div>
								<div id="area_label" onmouseenter="show_area()"
									onmouseleave="hide_area()">所在区域</div>
								<div id="pickup_point_list" onmouseenter="show_list()"
									onmouseleave="hide_list()"></div>
								<div id="area_list_wrap" onmouseenter="show_area()"
									onmouseleave="hide_area()">
									<div id="area_menu">
										<a id="province" href="javascript:void(0);">省</a> <a id="city"
											href="javascript:void(0);">市</a> <a class="hover"
											id="district" href="javascript:void(0);">区</a>
										<div style="clear: both"></div>
									</div>
									<ul id="area_list">
									</ul>
								</div>
								<div style="clear: both"></div>
							</div>
						</li>



						<script type="text/javascript">
					var myString=new Array();
					
										
				  </script>


						<li id="choose-amount">
							<div class="dt">数量</div>
							<div class="dd">
								<div class="wrap-input">
									<script language="javascript" type="text/javascript">  function goods_cut(){var num_val=document.getElementById('number');  var new_num=num_val.value;  var Num = parseInt(new_num);  if(Num>1)Num=Num-1;  num_val.value=Num;}  function goods_add(){var num_val=document.getElementById('number');  var new_num=num_val.value;  var Num = parseInt(new_num);  Num=Num+1;  num_val.value=Num;} </script>
									<a class="btn-reduce" href="javascript:;"
										onclick="goods_cut();changePrice();">减少数量</a> <input
										name="number" type="text" class="text" id="number" value="1"
										onblur="changePrice();" /> <a class="btn-add"
										href="javascript:;" onclick="goods_add();changePrice();">增加数量</a>
									（库存<font id="shows_number">${product.stock } </font>）
								</div>
							</div>
						</li>
					</ul>
					<div class="buyNub-buy-wrap">
						<div id="choose-btns1" class="buyNub-buy" style="display: none">
							<a onclick="tell_me(125)" class="tell-me"><i></i>到货通知</a>
						</div>
						<div id="choose-btns" class="buyNub-buy">

							<a href="javascript:addToCart(125,0,1)" name="bi_addToCart"
								class="u-buy1">立即购买</a> <a href="javascript:addToCart(125)"
								name="bi_addToCart" class="u-buy2">加入购物车</a> <a id="phone"
								class="btn-phone" style="position: relative; cursor: pointer">
								手机购买<i></i>
								<div id="phone-tan"
									style="display: none; position: relative; z-index: 1; margin-left: -15px;">
									<span class="arr"></span>
									<div class="m-qrcode-wrap">
										<img src="${ctx}/statics/images/erweima_supplier.jpg" width="100" height="100" />
									</div>
								</div>
							</a>
						</div>
						<script type="text/javascript">
                        $("#phone").mouseover( function(){	
                            $( "#phone-tan" ).show();
                        });
                        $("#phone").mouseleave( function(){
                            $( "#phone-tan" ).hide();
                        });
                    </script>
					</div>
				</form>
			</div>
			<div id="supp_info">

				<div id="shop-info">
					<dl class="shop-title">
						<dt>
							<span>平台自营</span>
						</dt>
					</dl>
					<div class="shop-info-detail">
						<div class="blank10"></div>
						<dl>
							<dt>商家名称：</dt>
							<dd>网软志成B2B2C电商平台系统多用户商城系统模板</dd>
						</dl>
						<dl>
							<dt>客服邮件：</dt>
							<dd>38306293@qq.com</dd>
						</dl>
						<dl>
							<dt>客服电话：</dt>
							<dd>020-34506590</dd>
						</dl>
						<dl>
							<dt>所在地区：</dt>
							<dd>3137 Laguna Street</dd>
						</dl>
						<ul class="service-promise">
							<li class="service-promise1"><a href="javascript:;"
								title="货到付款"></a></li>
							<li class="service-promise2"><a href="javascript:;"
								title="正品保障"></a></li>
							<li class="service-promise3" style="margin: 0;"><a
								href="javascript:;" title="当天配送"></a></li>
						</ul>
						<div id="enter-shop">
							<div class="shop-customer clearfix">

								<a class="btn-customer"
									href="#"
									target="_blank" title="点击这里联系我"> <i>
									<img src="${ctx }/statics/images/"
										height="16" border="0" alt="QQ" /></i>联系QQ
								</a> <a class="btn-customer btn-customer-ww"
									href="#"
									target="_blank"> <i><img src="" width="16" height="16"
										border="0" alt="淘宝旺旺" /></i>联系旺旺
								</a>
							</div>
							<div id="attention-shop">
								<p>扫一扫，手机访问微商城</p>
								<img src="${ctx}/statics/images/erweima_png.jpg" width="120" height="120" />
							</div>
						</div>
					</div>
				</div>


			</div>
		</div>
		<div class="goods-best">
			<div class="mt">
			</div>
		<script type="text/javascript">
		 var _scrolling="";
		var a=1;
		var $slider1 = $('.slider1 ul');
		var $slider1_child_l = $('.slider1 ul li').length;
		var $slider1_width = $('.slider1 ul li').width();
		$slider1.width($slider1_child_l * $slider1_width);
		var slider1_count = 0;
		if ($slider1_child_l <=6) {
			$('#btn-right1').css({cursor: 'auto'});
			$('#btn-right1').removeClass("dasabled");
		}
		var time="";
		function bottom3(){
			if (slider1_count >= $slider1_child_l - 6){
				a=0;
				top1();
			}else{
				slider1_count++;
				$slider1.animate({left: '-=' + $slider1_width + 'px'}, 'slow');	
				slider1_pic();
				time = setTimeout("bottom3()",5000);
			}
		}
		function top3(){
			if (slider1_count <= 0) {
				a=1;
				bottom1();	
			}else{
				slider1_count--;
				$slider1.animate({left: '+=' + $slider1_width + 'px'}, 'slow');
				slider1_pic();
				time = setTimeout("top3();",5000);
			}
		}
		function bottom4(){
			if (slider1_count >= $slider1_child_l - 6){
				return false;
			}else{
				slider1_count++;
				$slider1.animate({left: '-=' + $slider1_width + 'px'}, 'slow');	
				slider1_pic();
			}
		}
		function top4(){
			if (slider1_count <= 0) {
				return false;
			}else{
				slider1_count--;
				$slider1.animate({left: '+=' + $slider1_width + 'px'}, 'slow');
				slider1_pic();
			}
		}
		function slider1_pic() {
			if (slider1_count >= $slider1_child_l - 6) {
				$('#btn-right1').css({cursor: 'auto'});
				$('#btn-right1').addClass("dasabled");
			}
			else if (slider1_count > 0 && slider1_count <= $slider1_child_l - 6) {
				$('#btn-left1').css({cursor: 'pointer'});
				$('#btn-left1').removeClass("dasabled");
				$('#btn-right1').css({cursor: 'pointer'});
				$('#btn-right1').removeClass("dasabled");
			}
			else if (slider1_count <= 0) {
				$('#btn-left1').css({cursor: 'auto'});
				$('#btn-left1').addClass("dasabled");
			}
		}
</script>
		</div>
		<div class="left-con">
			<div class="aside-con aside-con1">
				<div class="aside-tit">
					<h2>相关分类</h2>
				</div>
				<div class="aside-list">
					<ul>
						<li><a href="#" title="大家电">大家电</a></li>
						<li><a href="#" title="生活电器">生活电器</a></li>
						<li><a href="#" title="厨房电器">厨房电器</a></li>
						<li><a href="#" title="个护健康">个护健康</a></li>
						<li><a href="#" title="热卖手机">热卖手机</a></li>
						<li><a href="#" title="手机配件"></a>手机配件</li>
						<li><a href="#" title="数码影音"></a>数码影音</li>
					</ul>
				</div>
			</div>
			<div class="aside-con aside-con1">
				<div class="aside-tit">
					<h2>同类品牌</h2>
				</div>
				<div class="aside-list">
					<ul>
						<li><a href="#" title="美的">美的</a></li>
						<li><a href="#" title="海尔">海尔</a></li>
						<li><a href="#" title="西门子">西门子</a></li>
						<li><a href="#" title="格兰仕">格兰仕</a></li>
						<li><a href="#" title="格力">格力</a></li>
					</ul>
				</div>
			</div>
			<div class="aside-con collect">
				<div class="aside-tit">
					<h2>最近上新</h2>
				</div>
				<div class="aside-list colList" style="max-height: 512px;">
					<div class="slider colFrame" id="slider">
						<ul style="left: 0px;">
							<li style="border-top: none;">
								<div class="p-img">
									<a href="#"><img width="100" height="100"
										alt="韩国进口X-5花生夹心巧克力棒盒装（24根）864g"
										src="${ctx}/statics/images/26_thumb_G_1437505984631.jpg" /></a>
								</div>
								<div class="rate">
									<a href="#" title="韩国进口X-5花生夹心巧克力棒盒装（24根）864g">韩国进口X-5花生夹心巧...</a>
								</div>
								<div class="p-price">
									<strong> ¥0.0 </strong>
								</div>
							</li>
							<li>
								<div class="p-img">
									<a href="#"><img width="100" height="100"
										alt="优雅100 经典设计款全棉斜纹印花四件套"
										src="${ctx}/statics/images/139_thumb_G_1437528892306.jpg" /></a>
								</div>
								<div class="rate">
									<a href="#" title="优雅100 经典设计款全棉斜纹印花四件套">优雅100
										经典设计款全...</a>
								</div>
								<div class="p-price">
									<strong> ¥189.0 </strong>
								</div>
							</li>
							<li>
								<div class="p-img">
									<a href="#"><img width="100" height="100"
										alt="LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔斯基"
										src="${ctx}/statics/images/137_thumb_G_1437528855059.jpg" /></a>
								</div>
								<div class="rate">
									<a href="#" title="LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔斯基">LOVO
										罗莱家纺出品全...</a>
								</div>
								<div class="p-price">
									<strong> ¥399.0 </strong>
								</div>
							</li>
							<li>
								<div class="p-img">
									<a href="#"><img width="100" height="100"
										alt="雅鹿全棉四件套纯棉套件床上用品 回忆蓝 1.8米床"
										src="${ctx}/statics/images/140_thumb_G_1437528915082.jpg" /></a>
								</div>
								<div class="rate">
									<a href="#" title="雅鹿全棉四件套纯棉套件床上用品 回忆蓝 1.8米床">雅鹿全棉四件套纯棉套件床...</a>
								</div>
								<div class="p-price">
									<strong> ¥333.0 </strong>
								</div>
							</li>
							<li>
								<div class="p-img">
									<a href="#"><img width="100" height="100"
										alt="摩托罗拉 moto x pro(XT1115) 64GB 雅典黑 移动联通电信4G手机"
										src="${ctx}/statics/images/175_thumb_G_1437531671882.jpg" /></a>
								</div>
								<div class="rate">
									<a href="#"
										title="摩托罗拉 moto x pro(XT1115) 64GB 雅典黑 移动联通电信4G手机">摩托罗拉
										moto x ...</a>
								</div>
								<div class="p-price">
									<strong> ¥9699.0 </strong>
								</div>
							</li>
							<li>
								<div class="p-img">
									<a href="#"><img width="100" height="100"
										alt="苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机"
										src="${ctx}/statics/images/100_thumb_G_1437523484060.jpg" /></a>
								</div>
								<div class="rate">
									<a href="#"
										title="苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机">苹果（Apple）iPh...</a>
								</div>
								<div class="p-price">
									<strong> ¥4888.0 </strong>
								</div>
							</li>
							<li>
								<div class="p-img">
									<a href="#"><img width="100" height="100"
										alt="小米（MI）小米Note 移动联通双4G 特别版(16G ROM)"
										src="${ctx}/statics/images/143_thumb_G_1437529603664.jpg" /></a>
								</div>
								<div class="rate">
									<a href="#"
										title="小米（MI）小米Note 移动联通双4G 特别版(16G ROM)">小米（MI）小米Note...</a>
								</div>
								<div class="p-price">
									<strong> ¥2098.0 </strong>
								</div>
							</li>
							<li>
								<div class="p-img">
									<a href="#"><img width="100" height="100"
										alt="三星 Galaxy S6 edge（G9250）32G版 铂光金 移动联通电信4G手机"
										src="${ctx}/statics/images/155_thumb_G_1437530585448.jpg" /></a>
								</div>
								<div class="rate">
									<a href="#"
										title="三星 Galaxy S6 edge（G9250）32G版 铂光金 移动联通电信4G手机">三星
										Galaxy S6...</a>
								</div>
								<div class="p-price">
									<strong> ¥6088.0 </strong>
								</div>
							</li>
							<li>
								<div class="p-img">
									<a href="#"><img width="100" height="100"
										alt="朵唯 懂小姐美颜自拍女性机 (C9) 薄荷绿 移动4G手机"
										src="${ctx}/statics/images/168_thumb_G_1437531325629.jpg" /></a>
								</div>
								<div class="rate">
									<a href="#"
										title="朵唯 懂小姐美颜自拍女性机 (C9) 薄荷绿 移动4G手机">朵唯 懂小姐美颜自拍女性...</a>
								</div>
								<div class="p-price">
									<strong> ¥899.0 </strong>
								</div>
							</li>
							<li>
								<div class="p-img">
									<a href="#"><img width="100" height="100"
										alt="【套装版】荣耀 6 Plus (PE-TL20) 3GB内存标准版 白色 移动4G手机 双卡双待双通"
										src="${ctx}/statics/images/147_thumb_G_1437530142553.jpg" /></a>
								</div>
								<div class="rate">
									<a href="#"
										title="【套装版】荣耀 6 Plus (PE-TL20) 3GB内存标准版 白色 移动4G手机 双卡双待双通">【套装版】荣耀
										6 Pl...</a>
								</div>
								<div class="p-price">
									<strong> ¥2199.0 </strong>
								</div>
							</li>
						</ul>
					</div>
					<a id="btn-left" class="prev" title="上一个" onclick="top2()"></a> <a
						id="btn-right" class="next" title="下一个" onclick="bottom2()"></a>
				</div>
				<script type="text/javascript">
 		var _scrolling="";
		var a=1;
		var $slider = $('.slider ul');
		var $slider_child_l = $('.slider ul li').length;
		var $slider_height = $('.slider ul li').height();
		$slider.height($slider_child_l * $slider_height);
		
		var slider_count = 0;
		if ($slider_child_l <=3) {
			$('#btn-right').css({cursor: 'auto'});
			$('#btn-right').removeClass("dasabled");
		}
		var time="";
		function bottom1(){
			if (slider_count >= $slider_child_l - 3){
				a=0;
				top1();
			}else{
				slider_count++;
				$slider.animate({top: '-=' + $slider_height + 'px'}, 'slow');	
				slider_pic();
				time = setTimeout("bottom1()",5000);
			}
		}
		function top1(){
			if (slider_count <= 0) {
				a=1;
				bottom1();	
			}else{
				slider_count--;
				$slider.animate({top: '+=' + $slider_height + 'px'}, 'slow');
				slider_pic();
				time = setTimeout("top1();",5000);
			}
		}
		function bottom2(){
			if (slider_count >= $slider_child_l - 3){
				return false;
			}else{
				slider_count++;
				$slider.animate({top: '-=' + $slider_height + 'px'}, 'slow');	
				slider_pic();
			}
		}
		function top2(){
			if (slider_count <= 0) {
				return false;
			}else{
				slider_count--;
				$slider.animate({top: '+=' + $slider_height + 'px'}, 'slow');
				slider_pic();
			}
		}
		
		function slider_pic() {
			if (slider_count >= $slider_child_l - 3) {
				$('#btn-right').css({cursor: 'auto'});
				$('#btn-right').addClass("dasabled");
			}
			else if (slider_count > 0 && slider_count <= $slider_child_l - 3) {
				$('#btn-left').css({cursor: 'pointer'});
				$('#btn-left').removeClass("dasabled");
				$('#btn-right').css({cursor: 'pointer'});
				$('#btn-right').removeClass("dasabled");
			}
			else if (slider_count <= 0) {
				$('#btn-left').css({cursor: 'auto'});
				$('#btn-left').addClass("dasabled");
			}
		}
		$(function(){
			bottom1();
			$("#slider>ul").hover(function(){
				//鼠标移动DIV上停止
				clearTimeout(time);
			},function(){
				//离开继续调用
				if(a==1){
					bottom1();
				}else if(a==0){
					top1();
				}
			});
			
		});
</script>
			</div>





			<div class="blank"></div>


		</div>
		<div class="right-con">
			<div class="package">
				<div class="pa-tit" id="package_tit">
					<h2 class="current">优惠套餐1</h2>

				</div>
				<div class="pa-box clearfix">
					<div id="package_box_0">
						<ul>
							<li><a href="#" target="_blank"
								title="Haier/海尔 XQG70-B12866电商/7公斤 全自动 变频滚筒 洗衣机"> <img
									src="${ctx}/statics/images/125_thumb_G_1437525897177.jpg" />
							</a> <a href="#" target="_blank"
								title="Haier/海尔 XQG70-B12866电商/7公斤 全自动 变频滚筒 洗衣机"> Haier/海尔
									XQG... </a> <font class="main-color">¥3245.0 </font></li>
							<li><a href="#" target="_blank"
								title="海尔HGS-2164手持蒸汽挂烫机家用挂式电熨斗熨烫机正品全国联保"> <img
									src="${ctx}/statics/images/86_thumb_G_1437522610059.jpg" />
							</a> <a href="#" target="_blank"
								title="海尔HGS-2164手持蒸汽挂烫机家用挂式电熨斗熨烫机正品全国联保"> 海尔HGS-2164手持... </a>
								<font class="main-color">¥500.0 </font></li>
							<li><a href="#" target="_blank"
								title="海尔ZB401G 家用小型床铺除螨仪 床上除螨机吸尘器 紫外线杀菌"> <img
									src="${ctx}/statics/images/91_thumb_G_1437522939065.jpg" />
							</a> <a href="#" target="_blank"
								title="海尔ZB401G 家用小型床铺除螨仪 床上除螨机吸尘器 紫外线杀菌"> 海尔ZB401G 家用小... </a>
								<font class="main-color">¥399.0 </font></li>
							<li><a href="#" target="_blank"
								title="二级大2P智能云定频冷暖柜机空调"> <img
									src="${ctx}/statics/images/122_thumb_G_1437525597541.jpg" />
							</a> <a href="#" target="_blank"
								title="二级大2P智能云定频冷暖柜机空调"> 二级大2P智能云定频冷暖... </a> <font
								class="main-color">¥2245.0 </font></li>
							<li class="last"><a href="#" target="_blank"
								title="SIEMENS/西门子 BCD-610W(KA92NV03TI)双开家用对开门电冰箱无霜"> <img
									src="${ctx}/statics/images/123_thumb_G_1437525706093.jpg" />
							</a> <a href="#" target="_blank"
								title="SIEMENS/西门子 BCD-610W(KA92NV03TI)双开家用对开门电冰箱无霜">
									SIEMENS/西门子 ... </a> <font class="main-color">¥5245.0 </font></li>
						</ul>
						<div class="buypack">
							原 价：<font class="f-yuan" id="price_yuan_0">¥11634.0</font><br />
							<strong><font class="f-pack1">套餐价：</font></strong> <font
								class="f-pack" id="price_pack_0">¥10009.0</font><br /> 节 省：<font
								class="f-save" id="price_save_0">¥1625.0 </font><br /> <a
								class="btn-pack" onClick="javascript:addPackageToCart(8, 0)"
								title="购买此套餐">购买此套餐</a>
						</div>
					</div>

				</div>
			</div>
			<div class="blank"></div>
			<script type="text/javascript">
reg_package();
</script>
			<div id="wrapper">
				<div class="mt" id="main-nav-holder">
					<ul class="tab" id="nav">
						<li class="boldtit-list h-list" onclick="change_widget(1, this);"><a
							href="#">规格参数</a></li>
						<li class="boldtit-list" onclick="change_widget(1, this);"><a
							href="#">商品介绍</a></li>
						<li class="boldtit-list" onclick="change_widget(1, this);"><a
							href=#>商品评价(0)</a></li>
						<li class="boldtit-list" onclick="change_widget(1, this);"><a
							href="#">售后保障</a></li>
					</ul>
					<div class="goods-ce-right">
						<a href="javascript:addToCart(125)" name="bi_addToCart"
							class="right-add">加入购物车</a>
						<div class="ce-right">
							<ul class="abs-ul">
								<li class="abs-active"><i></i><span>规格参数</span></li>
								<li><i></i><span>产品介绍</span></li>
								<li><i></i><span>商品评价</span></li>
								<li><i></i><span>包装清单</span></li>
								<li><i></i><span>售后服务</span></li>
								<li><i></i><span>常见问题</span></li>
							</ul>
						</div>
					</div>
				</div>
				<div id="main_widget_1">
					<div class="mc" id="os_canshu">
						<ul class="detail-list">
							<li>商品名称：Haier/海尔 XQG70-B12866电商/7公斤 全自动 变频滚筒 洗衣机</li>
							<li>商品编号：WRZ000125</li>
							<li>品牌：<a href=""></a></li>
							<li>上架时间：2015-07-22</li>
							<li>商品毛重：0克</li>
							<li>库存： 1999</li>
						</ul>
					</div>
					<div class="mc" id="os_jieshao">
						<div class="blank20"></div>
						<div class="detail-content">
							<p>
								<img src="${ctx}/statics/images/1437534693373515.jpg"
									style="float: none;" title="54ced12fN9ae6edd5.jpg" />
							</p>
							<p>
								<img src="${ctx}/statics/images/1437534693284224.jpg"
									style="float: none;" title="553db148N0383b5dd.jpg" />
							</p>
							<p>
								<img src="${ctx}/statics/images/1437534694380142.jpg"
									style="float: none;" title="5588f325Nbc38a815.jpg" />
							</p>
							<p>
								<br />
							</p>
						</div>
					</div>
					<div class="mc" id="os_pinglun">
						<div class="blank20"></div>
						<div class="my-comment-pre">
							<div class="tab-title">
								<span>商品评价</span>
							</div>
							<div class="goods-content">
								<ul>
									<li class="hpd"><div class="main-color">100%</div>
										<p>好评度</p></li>
									<li class="pre">
										<dl>
											<dt>
												好评<span>(100%)</span>
											</dt>
											<dd>
												<div style="width: 100%"></div>
											</dd>
										</dl>
										<dl>
											<dt>
												中评<span>(100%)</span>
											</dt>
											<dd>
												<div style="width: 100%"></div>
											</dd>
										</dl>
										<dl>
											<dt>
												差评<span>(100%)</span>
											</dt>
											<dd>
												<div style="width: 100%"></div>
											</dd>
										</dl>
									</li>
								</ul>
							</div>
						</div>
						<div class="my-comment-tab">
							<ul>
								<li id="mct_0" onClick="ShowMyComments(125,0,1)" class="cur">全部评价<span>(0)</span></li>
								<li id="mct_1" onClick="ShowMyComments(125,1,1)">好评<span>(0)</span></li>
								<li id="mct_2" onClick="ShowMyComments(125,2,1)">中评<span>(0)</span></li>
								<li id="mct_3" onClick="ShowMyComments(125,3,1)">差评<span>(0)</span></li>
								<li id="mct_4" onClick="ShowMyComments(125,4,1)">用户晒单<span>(0)</span></li>
							</ul>
						</div>
						<div class="my-comment-list" id="ECS_MYCOMMENTS"></div>
						<script language="javascript">
function ShowMyComments(goods_id, type, page)
{
	for (var i = 0; i <= 4 ; i ++)
	{
		document.getElementById("mct_"+i).className = (type == i) ? 'cur' : '';
	}
	Ajax.call('', 'goods_id=' + goods_id + '&type=' + type + '&page='+page, ShowMyCommentsResponse, 'GET', 'JSON');
}
function ShowMyCommentsResponse(result)
{
  if (result.error)
  {
  }
  try
  {
    var layer = document.getElementById("ECS_MYCOMMENTS");
    layer.innerHTML = result.content;
  }
  catch (ex) {}
}
function show_good(comment_id)
{
	Ajax.call('', 'comment_id=' + comment_id, show_goodResponse, 'GET', 'JSON');
}
function show_goodResponse(result)
{
	if (result.error == 1)
	{
		alert("您已经评过分了哦！");
	}
	else
	{
		var layer = document.getElementById("good_num_"+result.comment_id);
		layer.innerHTML = result.good_num;
	}
}
document.getElementById('mct_0').click();
</script>
					</div>
					<div class="mc" id="os_advantage">
						<div class="blank20"></div>
						<div class="my-comment-pre">
							<div class="tab-title">
								<span>包装清单</span>
							</div>
							<div class="goods-content">
								<img src="${ctx}/statics/images/package.jpg" alt="包装清单"
									width="818" />
							</div>
						</div>
					</div>
					<div class="mc" id="os_shouhou">
						<div class="blank20"></div>
						<div class="my-comment-pre">
							<div class="tab-title">
								<span>售后保障</span>
							</div>
							<div class="goods-content goods-sales-support">
								质保期：一年<br /> 售前服务电话：020-34506590<br /> 售后服务电话：020-34506590<br />
								品牌官方网站：<a href="" target="_blank" title="进入品牌官方网站"
									class="main-color">http://www.wrzc.net</a><br />
								<div class="sales-support-info">
									本商城向您保证所售商品均为正品行货，本商城自营商品自带机打发票，与商品一起寄送。凭质保证书及本商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由本商城联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。本商城还为您提供具有竞争力的商品价格和<a
										href="#" target="_blank">运费政策</a>，请您放心购买！ <br /> <br />
									注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！
									<div class="state">
										<strong class="main-color">权利声明：</strong><br />
										本商城上的所有商品信息、客户评价、商品咨询、网友讨论等内容，是京东商城重要的经营资源，未经许可，禁止非法转载使用。
										<p>
											<b>注：</b>本站商品信息均来自于厂商，其真实性、准确性和合法性由信息拥有者（厂商）负责。本站不提供任何保证，并不承担任何法律责任。
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="mc" id="os_changjian">
						<div class="blank20"></div>
						<div class="wenti">
							<div class="tab-title">
								<span>常见问题</span>
							</div>
							<div class="tab-body">
								<div class="list">
									<div class="question clearfix">
										<span class="icon fl"></span> <strong class="common-right">下单后可以修改订单吗？</strong>
									</div>
									<div class="answer clearfix">
										<span class="icon fl"></span>
										<p class="common-right">由本网站发货的订单，在订单打印之前可以修改，打开“订单详情”页面，点击右上角的“修改订单”即可，若没有修改订单按钮，则表示订单无法修改。</p>
									</div>
								</div>
								<div class="list">
									<div class="question clearfix">
										<span class="icon fl"></span> <strong class="common-right">无货商品几天可以到货？</strong>
									</div>
									<div class="answer clearfix">
										<span class="icon fl"></span>
										<p class="common-right">您可以通过以下方法获取商品的到货时间：若商品页面中，显示“无货”时：商品具体的到货时间是无法确定的，您可以通过商品页面的“到货通知”功能获得商品到货提醒。</p>
									</div>
								</div>
								<div class="list">
									<div class="question clearfix">
										<span class="icon fl"></span> <strong class="common-right">订单如何取消？</strong>
									</div>
									<div class="answer clearfix">
										<span class="icon fl"></span>
										<p class="common-right">
											如订单处于暂停状态，进入“我的订单"页面，找到要取消的订单，点击“取消订单”按钮。</p>
									</div>
								</div>
								<div class="list">
									<div class="question clearfix">
										<span class="icon fl"></span> <strong class="common-right">可以开发票吗？</strong>
									</div>
									<div class="answer clearfix">
										<span class="icon fl"></span>
										<p class="common-right">本网站所售商品都是正品行货，均开具正规发票（图书商品用户自由选择是否开发票），发票金额含配送费金额，另有说明的除外。</p>
									</div>
								</div>
								<div class="list">
									<div class="question clearfix">
										<span class="icon fl"></span> <strong class="common-right">如何联系商家？</strong>
									</div>
									<div class="answer clearfix">
										<span class="icon fl"></span>
										<p class="common-right">在商品页面右则，您可以看到卖家信息，点击“联系客服”按钮，咨询卖家的在线客服人员，已开通400电话的卖家，您可直接致电卖家。</p>
									</div>
								</div>
								<div class="list">
									<div class="question clearfix">
										<span class="icon fl"></span> <strong class="common-right">收到的商品少了/发错了怎么办？</strong>
									</div>
									<div class="answer clearfix">
										<span class="icon fl"></span>
										<p class="common-right">同个订单购买多个商品可能会分为一个以上包裹发出，可能不会同时送达，建议您耐心等待1-2天，如未收到，本网站自营商品可直接联系京东在线客服，第三方商家商品请联系商家在线客服。</p>
									</div>
								</div>
								<div class="list none">
									<div class="question clearfix">
										<span class="icon fl"></span> <strong class="common-right">如何申请退货/换货？</strong>
									</div>
									<div class="answer clearfix">
										<span class="icon fl"></span>
										<p class="common-right">登陆网站，进入“我的订单”，点击客户服务下的返修/退换货或商品右则的申请返修/退换货，出现返修及退换货首页，点击“申请”即可操作退换货及返修，提交成功后请耐心等待，由专业的售后工作人员受理您的申请。</p>
									</div>
								</div>
								<div class="list" style="border: none">
									<div class="question clearfix">
										<span class="icon fl"></span> <strong class="common-right">退换货/维修需要多长时间？</strong>
									</div>
									<div class="answer clearfix">
										<span class="icon fl"></span>
										<p class="common-right">
											一般情况下，退货处理周期（不包含检测时间）：自接收到问题商品之日起 7
											日之内为您处理完成，各支付方式退款时间请点击查阅退款多久可以到账；</br> 换货处理周期：自接收到问题商品之日起 15
											日之内为您处理完成；</br> 正常维修处理周期：自接收到问题商品之日起 30 日内为您处理完成。
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<script type="text/javascript">
			$(".ce-right").height($("#main_widget_1").height());
            var obj11 = document.getElementById("main-nav-holder");
			var top11 = getTop(obj11);
			var isIE6 = /msie 6/i.test(navigator.userAgent);
			function getTop(e){
				var offset = e.offsetTop;
				if(e.offsetParent != null) offset += getTop(e.offsetParent);
				return offset;
			}
	    </script>
		</div>
	</div>
	
	<div id="compareBox">
		<div class="menu">
			<ul>
				<li class="current" data-value='compare'>对比栏</li>
				<li data-value='history'>最近浏览</li>
			</ul>
			<a class="hide-compare" href="javascript:;" title="隐藏"></a>
			<div style="clear: both"></div>
		</div>
		<div id="compareList"></div>
		<div id="historyList" style="display: none;">
			<span id="sc-prev" class="sc-prev scroll-btn"></span> <span
				id="sc-next" class="sc-next scroll-btn"></span>
			<div class="scroll_wrap">
				<ul>
					<li><div class="item_wrap">
							<div class="dt">
								<a href=""><img width="50" height="50"
									src="${ctx}/statics/images/60_thumb_G_1437520982494.jpg" /></a>
							</div>
							<div class="dd">
								<a class="name" href="">德国 进口牛奶
									欧德堡（Oldenburger）超高温处理全脂纯牛奶1L*12</a>
								<div class="btn">
									<a class="compare-btn" data-goods="60"
										onClick="Compare.add(60,'德国 进口牛奶 欧德堡（Oldenburger）超高温处理全脂纯牛奶1L*12',0, '${ctx}/statics/images/60_thumb_G_1437520982494.jpg', '¥130.0')"></a><span
										class="price main-color"><strong>¥130.0</strong></span>
								</div>
							</div>
						</div></li>
					<li><div class="item_wrap">
							<div class="dt">
								<a href=""><img width="50" height="50"
									src="${ctx}/statics/images/68_thumb_G_1437521651986.jpg" /></a>
							</div>
							<div class="dd">
								<a class="name" href="#">新西兰 原装进口 纯牛奶 纽麦福（
									Meadow fresh ）全脂1L*12盒/箱</a>
								<div class="btn">
									<a class="compare-btn" data-goods="68"
										onClick="Compare.add(68,'新西兰 原装进口 纯牛奶 纽麦福（ Meadow fresh ）全脂1L*12盒/箱',0, 
												'${ctx}/statics/images/68_thumb_G_1437521651986.jpg', '¥130.0')"></a><span
										class="price main-color"><strong>¥130.0</strong></span>
								</div>
							</div>
						</div></li>
					<li><div class="item_wrap">
							<div class="dt">
								<a href="#"><img width="50" height="50"
									src="${ctx}/statics/images/123_thumb_G_1437525706093.jpg" /></a>
							</div>
							<div class="dd">
								<a class="name" href="#">SIEMENS/西门子
									BCD-610W(KA92NV03TI)双开家用对开门电冰箱无霜</a>
								<div class="btn">
									<a class="compare-btn" data-goods="123"
										onClick="Compare.add(123,'SIEMENS/西门子 BCD-610W(KA92NV03TI)双开家用对开门电冰箱无霜',0, 
												'${ctx}/statics/images/123_thumb_G_1437525706093.jpg', '¥6294.0')"></a><span
										class="price main-color"><strong>¥6294.0</strong></span>
								</div>
							</div>
						</div></li>
					<li><div class="item_wrap">
							<div class="dt">
								<a href="#"><img width="50" height="50"
									src="${ctx}/statics/images/125_thumb_G_1437525897177.jpg" /></a>
							</div>
							<div class="dd">
								<a class="name" href="#">Haier/海尔
									XQG70-B12866电商/7公斤 全自动 变频滚筒 洗衣机</a>
								<div class="btn">
									<a class="compare-btn" data-goods="125"
										onClick="Compare.add(125,'Haier/海尔 XQG70-B12866电商/7公斤 全自动 变频滚筒 洗衣机',0, 
												'${ctx}/statics/images/125_thumb_G_1437525897177.jpg', '¥3894.0')"></a><span
										class="price main-color"><strong>¥3894.0</strong></span>
								</div>
							</div>
						</div></li>
					<li><div class="item_wrap">
							<div class="dt">
								<a href="#"><img width="50" height="50"
									src="${ctx}/statics/images/139_thumb_G_1437528892306.jpg" /></a>
							</div>
							<div class="dd">
								<a class="name" href="#">优雅100 经典设计款全棉斜纹印花四件套</a>
								<div class="btn">
									<a class="compare-btn" data-goods="139"
										onClick="Compare.add(139,'优雅100 经典设计款全棉斜纹印花四件套',0, 
										'${ctx}/statics/images/139_thumb_G_1437528892306.jpg', '¥226.7')"></a><span
										class="price main-color"><strong>¥226.7</strong></span>
								</div>
							</div>
						</div></li>
					<li><div class="item_wrap">
							<div class="dt">
								<a href="#"><img width="50" height="50"
									src="${ctx}/statics/images/_thumb_P_1457590880591.jpg" /></a>
							</div>
							<div class="dd">
								<a class="name" href="#">好事达家用梯子四步梯加厚梯子折叠梯移动扶梯人字梯2766</a>
								<div class="btn">
									<a class="compare-btn" data-goods="283"
										onClick="Compare.add(283,'好事达家用梯子四步梯加厚梯子折叠梯移动扶梯人字梯2766',2, 
												'${ctx}/statics/images/_thumb_P_1457590880591.jpg', '¥29.0')"></a><span
										class="price main-color"><strong>¥29.0</strong></span>
								</div>
							</div>
						</div></li>
				</ul>
			</div>
		</div>
	</div>
	<script type="text/javascript">
var goods_id = 125;
var goodsattr_style = 1;
var gmt_end_time = 0;
var day = "天";
var hour = "小时";
var minute = "分钟";
var second = "秒";
var end = "结束";
var goodsId = 125;
var now_time = 1531469521;
var suppid = 0;
</script>
	<script>
window.onload = function(){
  Compare.init();
  fixpng();
}
var button_compare = '';
var exist = "您已经选择了%s";
var count_limit = "最多只能选择4个商品进行对比";
var goods_type_different = "\"%s\"和已选择商品类型不同无法进行对比";
var compare_no_goods = "您没有选定任何需要比较的商品或者比较的商品数少于 2 个。";
var btn_buy = "购买";
var is_cancel = "取消";
var select_spe = "请选择商品属性";
//changePrice();
changePriceAll();
fixpng();
ShowMyComments(125,0,1);
try {onload_leftTime();}
catch (e) {}
/**
 * 点选可选属性或改变数量时修改商品价格的函数
 */
function changePrice(){
  var attr = getSelectedAttributes(document.forms['ECS_FORMBUY']);
  var qty = document.forms['ECS_FORMBUY'].elements['number'].value;
  Ajax.call('', 'act=price&id=' + goodsId + '&attr=' + attr + '&number=' + qty, changePriceResponse, 'GET', 'JSON');
}
/**
 * 接收返回的信息
 */
function changePriceResponse(res){
  if (res.err_msg.length > 0){
	if(res.qty==0){
		document.getElementById('choose-btns').style.display = 'none';
    	document.getElementById('choose-btns1').style.display = 'block';
	}
    alert(res.err_msg);
	document.forms['ECS_FORMBUY'].elements['number'].value = res.qty;
 }else{
	  document.getElementById('choose-btns').style.display = 'block';
     document.getElementById('choose-btns1').style.display = 'none';
    document.forms['ECS_FORMBUY'].elements['number'].value = res.qty;
    if (document.getElementById('ECS_GOODS_AMOUNT')){
      document.getElementById('ECS_GOODS_AMOUNT').innerHTML = res.result;
	  if (res.result_jf){
		document.getElementById('ECS_GOODS_AMOUNT_jf').innerHTML = res.result_jf;
	  }
    }
    if(document.getElementById('shows_number')){
		res.attr_num = res.attr_num ? res.attr_num : '0';
	document.getElementById('shows_number').innerHTML = res.attr_num;
    }
    if(document.getElementById('mark_price')){
	document.getElementById('mark_price').innerHTML = res.result1;
    }
  }
  
}
/**
* 获取商品范围价格
*/
function changePriceAll(){
	var attr = getSelectedAttributes(document.forms['ECS_FORMBUY']);
	var qty = document.forms['ECS_FORMBUY'].elements['number'].value;
	Ajax.call('', 'act=allprice&id=' + goodsId + '&attr=' + attr + '&number=1', changePriceResponse, 'GET', 'JSON');
}
$('.item-operate .collet-btn').click(function(){
	$('.pop-login,.pop-mask').show();	
})
</script>
	<script src="" type="text/javascript"></script>
	<script>
Ajax.call('', 'act=get_pickup_info&province='+remote_ip_info.province+'&city='+remote_ip_info.city+'&district='+remote_ip_info.district+'&suppid='+suppid,
	function(res){
		if(res.error == 0) {
			var result = '<ul>';
			for(var i=0; i<res.result.length; i++){
				result += '<li>店名：'+res.result[i].shop_name+'<br>联系人：'+res.result[i].contact+'&nbsp;&nbsp;联系方式：'+res.result[i].phone + '<br>地址：'+res.result[i].address+'</li>';
			}
			result += '</ul>';
			if(res.result.length > 0){
				document.getElementById('pickup_point_list').innerHTML = result;
				
			}else{
				document.getElementById('pickup_point_list').innerHTML = '<div style="padding:10px 0;text-align:center;">该地区尚未开放自提点</div>';
				
			}
			hide_area();
			show_list();
			document.getElementById('province').innerHTML = res.city_info.province;
			document.getElementById('province').onclick = function(){
				get_area_list(1, '');
			}
			document.getElementById('city').innerHTML = res.city_info.city;
			document.getElementById('city').onclick = function(){
				get_area_list(res.city_info.province_id, res.city_info.province);
			}
			
			document.getElementById('area_label').innerHTML = res.city_info.province + '&nbsp;' + res.city_info.city;
			get_area_list(res.city_info.city_id, res.city_info.city);
		}
	}, 'GET', 'JSON');
function show_list(){
	document.getElementById('pickup_point').style.borderBottom = "1px solid #fff";
	document.getElementById('pickup_point_list').style.display = "block";
}
function hide_list(){
	document.getElementById('pickup_point').style.borderBottom = "1px solid #ccc";
	document.getElementById('pickup_point_list').style.display = "none";
}
function get_area_list(parent_id, name){
	Ajax.call('', 'act=get_area_list&parent_id='+parent_id, function(res) {
		var result = '';
		for(var i=0; i<res.length; i++){
			result += '<li';
			if(res[i].region_name.length>5)
				result += ' style="widht:170px;"';
			result += '><a href="javascript:void(0)" ';
			if(res[i].region_type == 3)
				result += 'onclick="get_pickup_point_list('+res[i].region_id+', this)">';
			else
				result += 'onclick="get_area_list('+res[i].region_id+', \''+res[i].region_name+'\')">';
			result+=res[i].region_name+'</a></li>';
		}
		result += '';
		document.getElementById('area_list').innerHTML = result;
		
		switch(res[0].region_type){
			case '1':
				document.getElementById('province').onclick = function(){get_area_list(parent_id, name);};
				document.getElementById('city').innerHTML = '市';
				document.getElementById('district').innerHTML = '区';
				switch_hover('province');
				break;
			case '2':
				document.getElementById('city').onclick = function(){get_area_list(parent_id, name);};
				document.getElementById('province').innerHTML = name;
				//document.getElementById('city').innerHTML = '市';
				document.getElementById('district').innerHTML = '区';
				switch_hover('city');
				break;
			case '3':
				document.getElementById('city').innerHTML = name;
				document.getElementById('district').innerHTML = '区';
				switch_hover('district');
				break;
		}
		hide_list();
		//show_area();
	}, 'GET', 'JSON');
}
function switch_hover(sel){
	if(sel == 'province'){
		document.getElementById('city').className = '';
		document.getElementById('district').className = '';
		document.getElementById('province').className = 'hover';
	}else if(sel == 'city'){
		document.getElementById('city').className = 'hover';
		document.getElementById('district').className = '';
		document.getElementById('province').className = '';
	}else{
		document.getElementById('city').className = '';
		document.getElementById('district').className = 'hover';
		document.getElementById('province').className = '';
	}
}
function get_pickup_point_list(region_id, obj){
	var name = obj.innerHTML;
	document.getElementById('district').innerHTML = name;
	var label = document.getElementById('province').innerHTML + '&nbsp;' +
				document.getElementById('city').innerHTML + '&nbsp;' +
				document.getElementById('district').innerHTML;
	document.getElementById('area_label').innerHTML = label;
	
	Ajax.call('', 'act=get_pickup_point_list&district_id='+region_id+'&suppid='+suppid, function(res) {
		var result = '<ul>';
			if(res.length > 0){
				for(var i=0; i<res.length; i++){
					result += '<li>'+res[i].shop_name+'&nbsp;&nbsp;地址：'+res[i].address+
								'<br>联系人：'+res[i].contact+'&nbsp;&nbsp;联系方式：'+res[i].phone + '</li>';
				}
				result += '</ul>';
				document.getElementById('pickup_point_list').innerHTML = result;
				
			}else{
				document.getElementById('pickup_point_list').innerHTML = '<div style="padding:10px 0;text-align:center;">该地区尚未开放自提点</div>';
				
			}
			hide_area();
			show_list();
			
			
	}, 'GET', 'JSON');
}
function show_area(){
	document.getElementById('area_label').style.borderBottom = "1px #fff solid";
	document.getElementById('area_list_wrap').style.display = "block";
}
function hide_area(){
	document.getElementById('area_label').style.borderBottom = "1px solid #ccc";
	document.getElementById('area_list_wrap').style.display = "none";
}
</script>
	<div class="right-sidebar-con">
		<div class="right-sidebar-main">
			<div class="right-sidebar-panel">
				<div id="quick-links" class="quick-links">
					<ul>
						<li class="quick-area quick-login"><a href="javascript:;"
							class="quick-links-a"><i class="setting"></i></a>
							<div class="sidebar-user quick-sidebar">
								<i class="arrow-right"></i>
								<div class="sidebar-user-info">
									<div class="user-pic">
										<div class="user-pic-mask"></div>
										<img src="${ctx}/statics/imagess/people.jpg" />
									</div>
									<p>
										你好！请<a href="javascript:;" class="quick-login-a main-color">登录</a>|<a
											href="#" class="main-color">注册</a>
									</p>
								</div>
							</div></li>
						<li class="sidebar-tabs"><a href="javascript:void(0);"
							class="mpbtn_bonus quick-links-a"><i class="bonus"></i></a>
							<div class="popup">
								<font>领红包再购物</font> <i class="arrow-right"></i>
							</div></li>
						<li class="sidebar-tabs">
							<div class="cart-list quick-links-a" id="collectBox">
								<i class="cart"></i>
								<div class="span">购物车</div>
								<span class="ECS_CARTINFO"><form id="formCart"
										name="formCart" method="post" action="">
										<span class="cart_num">0</span>
										<div class="sidebar-cart-box">
											<h3 class="sidebar-panel-header">
												<a href="javascript:;" class="title"><i
													class="cart-icon"></i><em class="title">购物车</em></a> <span
													class="close-panel"></span>
											</h3>
											<div class="cart-panel-main">
												<div class="cart-panel-content">
													<div class="tip-box">
														<i class="tip-icon"></i>
														<div class="tip-text">
															您的购物车里什么都没有哦<br />
															<a class="main-color" href="./">再去看看吧</a>
														</div>
													</div>
												</div>
											</div>
										</div>
										<script type="text/javascript">
function deleteCartGoods(rec_id){
	Ajax.call('', 'id='+rec_id, deleteCartGoodsResponse, 'POST', 'JSON');
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
									</form> </span>
							</div>
						</li>
						<li class="sidebar-tabs"><a href="javascript:void(0);"
							class="mpbtn_history quick-links-a"><i class="history"></i></a>
							<div class="popup">
								<font id="mpbtn_histroy">我看过的</font> <i class="arrow-right"></i>
							</div></li>
						<li><a href="#" target="_blank"
							class="mpbtn_stores quick-links-a"><i class="stores"></i></a>
							<div class="popup">
								我关注的店铺 <i class="arrow-right"></i>
							</div></li>
						<li id="collectGoods"><a href="#"
							target="_blank" class="mpbtn_collect quick-links-a"><i
								class="collect"></i></a>
							<div class="popup">
								我的收藏 <i class="arrow-right"></i>
							</div></li>
						<li><a href="javascript:;"
							class="mpbtn-contrast quick-links-a"><i class="contrast"></i></a>
							<div class="popup">
								对比商品 <i class="arrow-right"></i>
							</div></li>
					</ul>
				</div>
				<div class="quick-toggle">
					<ul>
						<li class="quick-area"><a class="quick-links-a"
							href="javascript:;"><i class="customer-service"></i></a>
							<div class="sidebar-service quick-sidebar">
								<i class="arrow-right"></i>

								<div class="customer-service customer-service-online">
									<a target="_self" href="javascript:;" alt="点击这里给我发消息"
										title="点击这里给我发消息"><span class="icon-online"></span>在线客服</a>
								</div>
								<div class="customer-service">
									<a target="_blank" href="" alt="点击这里给我发消息" title="点击这里给我发消息"><span
										class="icon-qq"></span>在线客服</a>
								</div>
								<div class="customer-service">
									<a target="_blank" href="" alt="点击这里给我发消息" title="点击这里给我发消息"><span
										class="icon-ww"></span>在线客服</a>
								</div>
							</div></li>
						<li class="quick-area"><a class="quick-links-a"
							href="javascript:;"><i class="qr-code"></i></a>
							<div class="sidebar-code quick-sidebar">
								<i class="arrow-right"></i> <img
									src="${ctx}/statics/images/weixin.jpg" />
							</div></li>
						<li class="returnTop"><a href="javascript:;"
							class="return_top quick-links-a"><i class="top"></i></a>
							<div class="popup">
								返回顶部 <i class="arrow-right"></i>
							</div></li>
					</ul>
				</div>
			</div>
			<div class="">

				<div class="right-sidebar-panels">
					<h3 class="sidebar-panel-header">
						<a href="javascript:;" class="title"><i class="bonus-icon"></i><em
							class="title">红包</em></a> <span class="close-panel"></span>
					</h3>
					<div class="bonus-panel-main">
						<div class="bonus-panel-content">
							<script type="text/javascript">
						function fun(type_id, no_have_val){
							no_have = (typeof(no_have_val) == "undefined" ? 0 : no_have_val)
							Ajax.call('', 'id=' + type_id + '&no_have=' + no_have, bounsResponse, 'GET', 'JSON');
						}
						function bounsResponse(result){
							$('.pop-compare,.pop-mask').show();
							$('.pop-compare .pop-text').html(result.message);
							$('.pop-compare').css({'top':($(window).height()-$('.pop-compare').height())/2});
						}
						</script>
							<div class="bonus-list"></div>
						</div>
					</div>
				</div>


				<div class="ECS_CARTINFO right-sidebar-panels">
					<form id="formCart" name="formCart" method="post" action="">
						<span class="cart_num">0</span>
						<div class="sidebar-cart-box">
							<h3 class="sidebar-panel-header">
								<a href="javascript:;" class="title"><i class="cart-icon"></i><em
									class="title">购物车</em></a> <span class="close-panel"></span>
							</h3>
							<div class="cart-panel-main">
								<div class="cart-panel-content">
									<div class="tip-box">
										<i class="tip-icon"></i>
										<div class="tip-text">
											您的购物车里什么都没有哦<br />
											<a class="main-color" href="./">再去看看吧</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<script type="text/javascript">
function deleteCartGoods(rec_id){
	Ajax.call('', 'id='+rec_id, deleteCartGoodsResponse, 'POST', 'JSON');
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


				<div class="right-sidebar-panels">
					<h3 class="sidebar-panel-header">
						<a href="javascript:;" class="title"><i></i><em class="title">我的足迹</em></a>
						<span class="close-panel"></span>
					</h3>
					<div class="sidebar-panel-main">
						<div class="sidebar-panel-content">
							<div class="history-panel">
								<ul>
									<li>
										<div class="p-img">
											<a target="_blank" href="#"><img
												src="${ctx}/statics/images/60_thumb_G_1437520982494.jpg"
												alt="德国 进口牛奶 欧德堡（Oldenburger）超高温处理全脂纯牛奶1L*12" /></a>
										</div>
										<div class="p-name">
											<a target="_blank" href="#">德国 进口牛奶
												欧德堡（Oldenburger）超高温处理全脂纯牛奶1L*12</a>
										</div>
										<div class="p-comm">
											<span class="p-price main-color">¥119.0</span>
										</div>
									</li>
									<li>
										<div class="p-img">
											<a target="_blank" href="#"><img
												src="${ctx}/statics/images/68_thumb_G_1437521651986.jpg"
												alt="新西兰 原装进口 纯牛奶 纽麦福（ Meadow fresh ）全脂1L*12盒/箱" /></a>
										</div>
										<div class="p-name">
											<a target="_blank" href="#">新西兰 原装进口 纯牛奶
												纽麦福（ Meadow fresh ）全脂1L*12盒/箱</a>
										</div>
										<div class="p-comm">
											<span class="p-price main-color">¥109.0</span>
										</div>
									</li>
									<li>
										<div class="p-img">
											<a target="_blank" href="#"><img
												src="${ctx}/statics/images/123_thumb_G_1437525706093.jpg"
												alt="SIEMENS/西门子 BCD-610W(KA92NV03TI)双开家用对开门电冰箱无霜" /></a>
										</div>
										<div class="p-name">
											<a target="_blank" href="#">SIEMENS/西门子
												BCD-610W(KA92NV03TI)双开家用对开门电冰箱无霜</a>
										</div>
										<div class="p-comm">
											<span class="p-price main-color">¥5245.0</span>
										</div>
									</li>
									<li>
										<div class="p-img">
											<a target="_blank" href="#"><img
												src="${ctx}/statics/images/125_thumb_G_1437525897177.jpg"
												alt="Haier/海尔 XQG70-B12866电商/7公斤 全自动 变频滚筒 洗衣机" /></a>
										</div>
										<div class="p-name">
											<a target="_blank" href="#">Haier/海尔
												XQG70-B12866电商/7公斤 全自动 变频滚筒 洗衣机</a>
										</div>
										<div class="p-comm">
											<span class="p-price main-color">¥3245.0</span>
										</div>
									</li>
									<li>
										<div class="p-img">
											<a target="_blank" href="#"><img
												src="${ctx}/statics/images/139_thumb_G_1437528892306.jpg"
												alt="优雅100 经典设计款全棉斜纹印花四件套" /></a>
										</div>
										<div class="p-name">
											<a target="_blank" href="#">优雅100
												经典设计款全棉斜纹印花四件套</a>
										</div>
										<div class="p-comm">
											<span class="p-price main-color">¥189.0</span>
										</div>
									</li>
									<li>
										<div class="p-img">
											<a target="_blank" href="#"><img
												src="${ctx}/statics/images/_thumb_P_1457590880591.jpg"
												alt="好事达家用梯子四步梯加厚梯子折叠梯移动扶梯人字梯2766" /></a>
										</div>
										<div class="p-name">
											<a target="_blank" href="#">好事达家用梯子四步梯加厚梯子折叠梯移动扶梯人字梯2766</a>
										</div>
										<div class="p-comm">
											<span class="p-price main-color">¥10.0</span>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<div class="pop-main pop-compare">
		<div class="pop-header">
			<span>温馨提示</span> <a class="pop-close" href="javascript:;" title="关闭"></a>
		</div>
		<div class="pop-con">
			<i class="pop-icon"></i>
			<p class="pop-text"></p>
			<a href="javascript:;" class="pop-sure main-bg-color">确定</a><a
				href="javascript:;" class="cancel-btn none">取消</a>
		</div>
	</div>
	<div class="pop-main pop-compare-small">
		<div class="pop-header">
			<span>温馨提示</span> <a class="pop-close" href="javascript:;" title="关闭"></a>
		</div>
		<div class="pop-con">
			<i class="pop-icon"></i>
			<p class="pop-text"></p>
			<a href="javascript:;" class="cancel-btn">关闭</a>
		</div>
	</div>
	<div id="tell-me-result" class="tell-me-form" style="display: none;">
		<div class="pop-header">
			<span>温馨提示</span><a href="javascript:closeDiv1()" title="关闭"
				class="tell-me-close"></a>
		</div>
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
	<div class="pop-main pop-login">
		<div class="pop-header">
			<span>您尚未登录</span><a class="pop-close" href="javascript:;" title="关闭"></a>
		</div>
		<div class="pop-con">
			<form name="formLogin" action="" method="post"
				onSubmit="return user_login();">
				<div class="form">
					<div class="mt">
						<h2>用户登陆</h2>
						<a href="#" class="right_register main-color"><span
							class="text">立即注册</span><i class="icon"></i></a>
					</div>
					<div class="mc">
						<div class="msg-wrap">
							<div class="msg-error">
								<i class="msg-icon"></i><span id="msg-error-text"
									class="msg-error-text"></span>
							</div>
						</div>
						<div class="item item-name">
							<i class="icon"></i> <input name="username" id="username"
								type="text" class="text" value="" tabindex="1"
								placeholder="手机号/用户名/邮箱" />
						</div>
						<div class="item item-password">
							<i class="icon"></i> <input type="password" name="password"
								id="password" class="text" value="" tabindex="2"
								placeholder="密码" />
						</div>
						<div class="item item-authcode" id="o-authcode">
							<div class="item-detail fl">
								<i class="icon"></i> <input type="text" id="authcode"
									name="captcha" class="text text-1" tabindex="3"
									placeholder="验证码" />
							</div>
							<label class="img fl"> <img
								src="" alt="captcha"
								style="vertical-align: middle; cursor: pointer;"
								onClick="" />
							</label>
						</div>
						<div class="safety" id="autoentry">
							<input type="checkbox" value="1" name="remember" id="remember"
								class="checkbox" /> <label for="remember" class="mar-b">请保存我这次的登录信息</label>
							<a class="forget_password fr" href="#">忘记密码？</a>
						</div>
						<div class="login-btn">
							<input type="hidden" name="act" value="act_login" /> <input
								type="hidden" name="back_act" value='' /> <input type="submit"
								name="submit" class="btn-img" id="loginsubmit" value="立即登录" />
						</div>
						<div class="item-coagent">
							<a href="#"><i class="weixin"></i>微信</a>
							<a href="#"><i class="qq"></i>QQ</a> <a
								href="#"><i class="sina"></i>新浪</a> <a
								href="#" class="last"><i
								class="alipay"></i>支付宝</a>
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
//点击用户图标弹出登录框
$('.quick-login .quick-links-a,.quick-login .quick-login-a,.customer-service-online a').click(function(){
	$('.pop-login,.pop-mask').show();
})
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
	<div class="site-footer">
		<div class="footer-related">
			<div class="footer-article w1210">
				<dl class="col-article col-article-first">
					<dt>新手上路</dt>
					<dd>
						<a rel="nofollow" href="#" target="_blank">售后流程</a>
					</dd>
					<dd>
						<a rel="nofollow" href="#" target="_blank">购物流程</a>
					</dd>
					<dd>
						<a rel="nofollow" href="#" target="_blank">订购方式</a>
					</dd>
					<dd>
						<a rel="nofollow" href="#" target="_blank">在线支付</a>
					</dd>
					<dd>
						<a rel="nofollow" href="#" target="_blank">公司转账</a>
					</dd>
				</dl>
				<dl class="col-article ">
					<dt>配送方式</dt>
					<dd>
						<a rel="nofollow" href="#" target="_blank">货到付款区域</a>
					</dd>
					<dd>
						<a rel="nofollow" href="#" target="_blank">配送支付查询</a>
					</dd>
					<dd>
						<a rel="nofollow" href="#" target="_blank">支付方式说明</a>
					</dd>
					<dd>
						<a rel="nofollow" href="#" target="_blank">如何送礼</a>
					</dd>
					<dd>
						<a rel="nofollow" href="#" target="_blank">Global
							Shipping</a>
					</dd>
				</dl>
				<dl class="col-article ">
					<dt>购物指南</dt>
					<dd>
						<a rel="nofollow" href="#" target="_blank">常见问题</a>
					</dd>
					<dd>
						<a rel="nofollow" href="#" target="_blank">订购流程</a>
					</dd>
					<dd>
						<a rel="nofollow" href="#" target="_blank">注册新会员</a>
					</dd>
					<dd>
						<a rel="nofollow" href="#" target="_blank">团购/机票</a>
					</dd>
					<dd>
						<a rel="nofollow" href="#" target="_blank">联系客服</a>
					</dd>
				</dl>
				<dl class="col-article ">
					<dt>售后服务</dt>
					<dd>
						<a rel="nofollow" href="#" target="_blank">退换货原则</a>
					</dd>
					<dd>
						<a rel="nofollow" href="#" target="_blank">售后服务保证</a>
					</dd>
					<dd>
						<a rel="nofollow" href="#" target="_blank">换货流程</a>
					</dd>
					<dd>
						<a rel="nofollow" href="#" target="_blank">退款说明</a>
					</dd>
					<dd>
						<a rel="nofollow" href="#" target="_blank">返修/退换货</a>
					</dd>
				</dl>
				<dl class="col-article ">
					<dt>关于我们</dt>
					<dd>
						<a rel="nofollow" href="#" target="_blank">网站故障报告</a>
					</dd>
					<dd>
						<a rel="nofollow" href="#" target="_blank">选机咨询</a>
					</dd>
					<dd>
						<a rel="nofollow" href="#" target="_blank">投诉与建议</a>
					</dd>
					<dd>
						<a rel="nofollow" href="#" target="_blank">节能补贴</a>
					</dd>
					<dd>
						<a rel="nofollow" href="#" target="_blank">关于我们</a>
					</dd>
				</dl>
				<dl class="col-article">
					<dt>服务支持</dt>
					<dd>售前咨询 020-34506590</dd>
					<dd>售后咨询 020-34506590</dd>
					<dd>客服 QQ 38306293</dd>
					<dd>工作时间 9：00-17：30</dd>
				</dl>
			</div>
			<div class="footer-info clearfix">
				<div class="info-text">
					<p class="nav_bottom">
						<a href="#">关于我们</a><em>|</em> <a
							href="#">联系我们</a><em>|</em> <a
							href="#">商家入驻</a><em>|</em> <a href="#">版权证书</a><em>|</em>
						<a href="#">手机商城</a><em>|</em> <a href="#">销售联盟</a><em>|</em>
						<a href="#">商城社区</a><em>|</em> <a href="#">企业文化</a><em>|</em>
						<a href="#">帮助中心</a><em>|</em> <a href="#">留言板</a><em
							style="display: none">|</em> ICP备案证书号:<a href="" target="_blank">粤ICP备06122404号</a>
					</p>
					<p>
						<a href="javascript:;">&copy; 2005-2018
							网软志成B2B2C电商平台系统多用户商城系统模板 版权所有，并保留所有权利。</a> <a href="javascript:;">3137
							Laguna Street </a> <a href="javascript:;"> Tel: 020-34506590 </a> <a
							href="javascript:;"> E-mail: 38306293@qq.com </a>
					</p>
					<p>
						<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1000200717'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol +
								"' type='text/javascript'%3E%3C/script%3E"));</script>
						<a href="Site=网软志成B2B2C电商平台系统多用户商城系统模板&amp;Menu=yes"
							target="_blank"><img
							src="" height="16" border="0"
							alt="QQ" /> 394223545</a> <a
							href=""
							target="_blank"><img
							src=""
							width="16" height="16" border="0" alt="淘宝旺旺" />38306293</a>
					</p>
				</div>
			</div>
			<img src="" alt=""
				style="width: 0px; height: 0px; display: none;" />
			<table cellspacing="0" cellpadding="0" width="100%" align="center"
				border="0">
				<tbody>

					<tr>
						<td bgColor="#555555"><table cellspacing="0" cellpadding="0"
								width="100%" align="center" border="0">
								<tbody>
									<tr>
										<td align="middle" height="22"><font color="#ffffff"><span>电话：020-34506590
													34700400 34709708 13719472523 13527894748</span> </font></td>
									</tr>
									<tr>
										<td align="middle" height="22"><font color="#ffffff">微信号：13719472523&nbsp;&nbsp;13527894748&nbsp;&nbsp;
												联系邮箱：38306293@qq.com</font></td>
									</tr>
									<tr>
										<td align="middle" height="22"><font color="#ffffff">公司地址：广州市天河区国家软件园产业基地8栋502
												软著登字第0830353号 登记号 2014SR161116 </font></td>
									</tr>
									<tr>
										<td align="middle" height="22"><font color="#ffffff"><span
												class="css2">客服QQ:290116505</span><a target="blank"
												href="tencent://message/?uin=290116505&amp;Site=网软志成客服为你服务&amp;Menu=yes"><img
													border="0" src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务" /></a> <span
												class="css2">38306293<a target=blank
													href=tencent://message/?uin=38306293&Site=网软志成客服为你服务&MMenu=yes>
														<img border="0" src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务">
												</a>417586492
											</span> <FONT face=Verdana><a target=blank
													href=tencent://message/?uin=417586492&Site=网软志成客服为你服务&Menu=yes>
														<img border="0" src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务">
												</a></FONT><span class="css2">657248708</span> <font face="Verdana"><a
													target="blank"
													href="tencent://message/?uin=657248708&amp;Site=网软志成客服为你服务&amp;Menu=yes">
														<img border="0" src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务" />
												</a></font><br>
											<span class="css2">客服QQ:454882888</span> <font face="Verdana"><a
													target="blank"
													href="tencent://message/?uin=454882888&amp;Site=网软志成客服为你服务&amp;Menu=yes">
														<img border="0" src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务" />
												</a></font><span class="css2">394223545</span><font face="Verdana">
													<a target="blank"
													href="tencent://message/?uin=394223545&amp;Site=网软志成客服为你服务&amp;Menu=yes"><img
														border="0" src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务" /></a>
											</font><span class="css2">469648611</span><font face="Verdana"><a
													target="blank"
													href="tencent://message/?uin=469648611&amp;Site=网软志成客服为你服务&amp;Menu=yes"><img
														border="0" src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务" /></a></font><span
												class="css2">314730679</span><font face="Verdana"><a
													target="blank"
													href="tencent://message/?uin=314730679&amp;Site=网软志成客服为你服务&amp;Menu=yes"><img
														border="0" src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务" /></a></td>
									</tr>
									<tr>
										<td height="22" align="middle"><font color="#ffffff">Copyright(c)2000-2030
												www.wrzc.net <span>广州网软志成信息科技有限公司</span> 版权所有
										</font> <a href="/admin"><font color="#FF0000">进入后台管理</font></a></td>
									</tr>
								</tbody>
							</table></td>
					</tr>
				</tbody>
			</table>
			<script type="text/javascript">
Ajax.call('', '', '', 'GET', 'JSON');
//预售
Ajax.call('', '', '', 'GET', 'JSON');
</script>
			
		</div>
	</div>
</body>

<script>
$(function(){
	$('.goods-col').click(function(){
		$('.pop-login,.pop-mask').show();	
	})
})</script>
</html>