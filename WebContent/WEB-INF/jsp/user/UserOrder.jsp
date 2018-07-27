<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>家家商城</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/WEB-INF/jsp/userhead.jsp"%>
<%@include file="/WEB-INF/jsp/common/classifyBall.jsp"%>

<script type="text/javascript" src="${ctx}/statics/images/nav.js"></script>
<div class="margin-w1210 clearfix">
	<div class="w">
		<div class="breadcrumb clearfix">
			<a href="##" class="index">首页</a> <span class="crumbs-arrow">&gt;</span> <span
				class="last">用户中心</span>
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


	<%@include file="/WEB-INF/jsp/user/userleft.jsp" %>
	<div class="user-right">
    	<div class="box">
    	 
          <div class="tabmenu">
            <ul class="tab">
              <li class="active"> <a href="http://b2b2c.wygk.cn/#">我的订单</a> </li>
            </ul>
          </div>
          <div id="J_Remide" class="remide-box">
            <h3>我的交易提醒：</h3>
            <ul>
              <li><a href="http://b2b2c.wygk.cn/user.php?act=order_list&amp;composite_status=0">未确认订单<span class="num">(0)</span></a></li>
              <li><a href="http://b2b2c.wygk.cn/user.php?act=order_list&amp;composite_status=100">待付款<span class="num">(0)</span></a></li>
              <li><a href="http://b2b2c.wygk.cn/user.php?act=order_list&amp;composite_status=101">待发货<span class="num">(16)</span></a></li>
              <li><a href="http://b2b2c.wygk.cn/user.php?act=order_list&amp;composite_status=102">已成交订单数<span class="num">(8)</span></a></li>
            </ul>
          </div>
          <div class="extra-r" style="display:none">
            <div class="search-01">
              <input id="ip_keyword" name="" class="s-itxt" value="商品名称、商品编号、订单编号" onfocus="if (this.value==this.defaultValue) this.value=&#39;&#39;" onblur="if (this.value==&#39;&#39;) this.value=this.defaultValue" onkeydown="javascript:if(event.keyCode==13) OrderSearch(&#39;ip_keyword&#39;);" type="text">
              <!--input name="" type="button" value="查 询" class="btn-13" onclick="OrderSearch('ip_keyword')" clstag="click|keycount|orderinfo|search"/--> 
              <a href="javascript:;" class="btn-13" onclick="OrderSearch(&#39;ip_keyword&#39;)" clstag="click|keycount|orderinfo|search">查 询</a> </div>
            <div class="blank"></div>
          </div>
          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="bought-table">
            <thead>
              <tr class="col-name">
                <th width="32%" style="border-left: 1px solid #E6E6E6;">宝贝</th>
                <th width="10%">属性</th>
                <th width="9%">单价(元)</th>
                <th width="5%">数量</th>
                <th width="13%">售后</th>
                <th width="8%">订单总金额</th>
                <th width="10%">状态</th>
                <th width="13%" style="border-right: 1px solid #E6E6E6;">操作</th>
              </tr>
            </thead>
            
                        <tbody class="close-order">
              <tr class="sep-row">
                <td colspan="7"></td>
              </tr>
              <tr class="order-hd">
                <td colspan="8"><span class="no">
                  <label> 订单编号：<span class="order-num"><a href="http://b2b2c.wygk.cn/user.php?act=order_detail&amp;order_id=241" class="main-color">2018072625357</a>
                    </span> </label>
                  </span> <span class="deal-time">&nbsp;&nbsp;成交时间：2018-07-26 18:35:39</span> <span class="deal-time">&nbsp;&nbsp;商家店铺：网站自营</span>
                  
                  <a href="javascript:chat_online({chat_order_id: &#39;241&#39;, chat_supp_id: &#39;0&#39;});" title="联系客服"><img src="./用户中心_网软志成B2B2C电商平台系统多用户商城系统模板_files/web_logo.png" width="16" height="16" style="vertical-align:top;"></a>
                  </td>
              </tr>
              <tr class="order-bd last">
                <td align="center" class="baobei no-border-right order_goods_info">
                                  
		  <div class="goods_desc last" style="height: 60px;"> <a class="pic" href="http://b2b2c.wygk.cn/goods.php?id=51" title="查看宝贝详情" target="_blank"> 
                     
                    <img src="./用户中心_网软志成B2B2C电商平台系统多用户商城系统模板_files/51_thumb_G_1437519866381.jpg" alt="查看宝贝详情" width="50" height="50">
                     
                    </a>
                    <div class="goods_name"> 高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装</div>
                  </div>
                  
                  </td>
                  <td align="center" class="baobei no-border-right order_goods_attr">                  
                  <div class="goods_desc goods_desc_t last"> 尺码:XL <br>
颜色:棕色 <br>
 </div>
                  
                  </td>
                <td align="center" class="baobei no-border-right order_goods_info" style="padding:0px;">                  
                  <div class="goods_desc price  last" style="padding-left: 0px; line-height: 50px; height: 60px;"> ¥199.0 </div>
                  
                  </td>
                <td align="center" class="baobei no-border-right order_goods_info" style="padding:0px;">                  
                  <div class="goods_desc  last" style="padding-left: 0px; line-height: 50px; height: 60px;"> 1 </div>
                  
                  </td>
 				<td align="center" class="after-service baobei no-border-right order_goods_info" valign="middle">
                                     <a href="http://b2b2c.wygk.cn/user.php?act=back_order&amp;order_id=241&amp;order_all=1&amp;x=1" class="main-color">退款</a><br>
                     
                    <a href="http://b2b2c.wygk.cn/user.php?act=message_list">留言/投诉</a> 
				</td>
                 
				 
				<td rowspan="1" align="center" class="amount no-border-right"><p class="post-type"><strong>
                
                				¥204.00                                </strong></p></td>
                <td rowspan="1" align="center" class="trade-status no-border-right">已确认<br>已付款<br>未发货<br>
                  <a href="http://b2b2c.wygk.cn/user.php?act=order_detail&amp;order_id=241" class="main-color">查看详情</a>
                   
                </td>
                <td rowspan="1" align="center" class="other">
                	 
                   
                   
                  <font class="main-color"><span style="color:red">已确认</span></font><br>
                  
                   
                  </td>
              </tr>
            </tbody>
            <script language="javascript" type="text/javascript">
		function showSubNav(id)
		{
			if (id != document.getElementById("s_have_hidden").value)
			{
				if (document.getElementById("s_have_hidden").value != 0)
				{
					var s_have_val = document.getElementById("s_have_hidden").value;
					document.getElementById(s_have_val).style.display = 'none';
				}
				document.getElementById(id).style.display = 'block';
				document.getElementById("s_have_hidden").value = id;
			}
		}
        function showSubNav2(id,express_id,express_no)
		{
			var _id = id;
			var id = 'subNav_'+id;
			if (id != document.getElementById("s_have_hidden").value)
			{
				if (document.getElementById("s_have_hidden").value != 0)
				{
					var s_have_val = document.getElementById("s_have_hidden").value;
					document.getElementById(s_have_val).style.display = 'none';
				}
				get_invoice_info2(express_id,express_no,1,_id);
				
				document.getElementById(id).style.display = 'block';
				document.getElementById("s_have_hidden").value = id;
			}
		}

        function hiddenSubNav(id)
		{
			document.getElementById(id).style.display = 'none';
			document.getElementById("s_have_hidden").value = 0;
		}
        </script> 
            
                        <tbody class="close-order">
              <tr class="sep-row">
                <td colspan="7"></td>
              </tr>
              <tr class="order-hd">
                <td colspan="8"><span class="no">
                  <label> 订单编号：<span class="order-num"><a href="http://b2b2c.wygk.cn/user.php?act=order_detail&amp;order_id=240" class="main-color">2018072623110</a>
                    </span> </label>
                  </span> <span class="deal-time">&nbsp;&nbsp;成交时间：2018-07-26 18:27:16</span> <span class="deal-time">&nbsp;&nbsp;商家店铺：网站自营</span>
                  
                  <a href="javascript:chat_online({chat_order_id: &#39;240&#39;, chat_supp_id: &#39;0&#39;});" title="联系客服"><img src="./用户中心_网软志成B2B2C电商平台系统多用户商城系统模板_files/web_logo.png" width="16" height="16" style="vertical-align:top;"></a>
                  </td>
              </tr>
              <tr class="order-bd last">
                <td align="center" class="baobei no-border-right order_goods_info">
                                  
		  <div class="goods_desc last" style="height: 60px;"> <a class="pic" href="http://b2b2c.wygk.cn/goods.php?id=51" title="查看宝贝详情" target="_blank"> 
                     
                    <img src="./用户中心_网软志成B2B2C电商平台系统多用户商城系统模板_files/51_thumb_G_1437519866381.jpg" alt="查看宝贝详情" width="50" height="50">
                     
                    </a>
                    <div class="goods_name"> 高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装</div>
                  </div>
                  
                  </td>
                  <td align="center" class="baobei no-border-right order_goods_attr">                  
                  <div class="goods_desc goods_desc_t last"> 颜色:银色 <br>
尺码:XL <br>
 </div>
                  
                  </td>
                <td align="center" class="baobei no-border-right order_goods_info" style="padding:0px;">                  
                  <div class="goods_desc price  last" style="padding-left: 0px; line-height: 50px; height: 60px;"> ¥199.0 </div>
                  
                  </td>
                <td align="center" class="baobei no-border-right order_goods_info" style="padding:0px;">                  
                  <div class="goods_desc  last" style="padding-left: 0px; line-height: 50px; height: 60px;"> 1 </div>
                  
                  </td>
 				<td align="center" class="after-service baobei no-border-right order_goods_info" valign="middle">
                                     <a href="http://b2b2c.wygk.cn/user.php?act=back_order&amp;order_id=240&amp;order_all=1&amp;x=1" class="main-color">退款</a><br>
                     
                    <a href="http://b2b2c.wygk.cn/user.php?act=message_list">留言/投诉</a> 
				</td>
                 
				 
				<td rowspan="1" align="center" class="amount no-border-right"><p class="post-type"><strong>
                
                				¥204.00                                </strong></p></td>
                <td rowspan="1" align="center" class="trade-status no-border-right">已确认<br>已付款<br>未发货<br>
                  <a href="http://b2b2c.wygk.cn/user.php?act=order_detail&amp;order_id=240" class="main-color">查看详情</a>
                   
                </td>
                <td rowspan="1" align="center" class="other">
                	 
                   
                   
                  <font class="main-color"><span style="color:red">已确认</span></font><br>
                  
                   
                  </td>
              </tr>
            </tbody>
            <script language="javascript" type="text/javascript">
		function showSubNav(id)
		{
			if (id != document.getElementById("s_have_hidden").value)
			{
				if (document.getElementById("s_have_hidden").value != 0)
				{
					var s_have_val = document.getElementById("s_have_hidden").value;
					document.getElementById(s_have_val).style.display = 'none';
				}
				document.getElementById(id).style.display = 'block';
				document.getElementById("s_have_hidden").value = id;
			}
		}
        function showSubNav2(id,express_id,express_no)
		{
			var _id = id;
			var id = 'subNav_'+id;
			if (id != document.getElementById("s_have_hidden").value)
			{
				if (document.getElementById("s_have_hidden").value != 0)
				{
					var s_have_val = document.getElementById("s_have_hidden").value;
					document.getElementById(s_have_val).style.display = 'none';
				}
				get_invoice_info2(express_id,express_no,1,_id);
				
				document.getElementById(id).style.display = 'block';
				document.getElementById("s_have_hidden").value = id;
			}
		}

        function hiddenSubNav(id)
		{
			document.getElementById(id).style.display = 'none';
			document.getElementById("s_have_hidden").value = 0;
		}
        </script> 
            
                        <tbody class="close-order">
              <tr class="sep-row">
                <td colspan="7"></td>
              </tr>
              <tr class="order-hd">
                <td colspan="8"><span class="no">
                  <label> 订单编号：<span class="order-num"><a href="http://b2b2c.wygk.cn/user.php?act=order_detail&amp;order_id=239" class="main-color">2018072624524</a>
                    </span> </label>
                  </span> <span class="deal-time">&nbsp;&nbsp;成交时间：2018-07-26 18:00:39</span> <span class="deal-time">&nbsp;&nbsp;商家店铺：网站自营</span>
                  
                  <a href="javascript:chat_online({chat_order_id: &#39;239&#39;, chat_supp_id: &#39;0&#39;});" title="联系客服"><img src="./用户中心_网软志成B2B2C电商平台系统多用户商城系统模板_files/web_logo.png" width="16" height="16" style="vertical-align:top;"></a>
                  </td>
              </tr>
              <tr class="order-bd last">
                <td align="center" class="baobei no-border-right order_goods_info">
                                  
		  <div class="goods_desc last" style="height: 60px;"> <a class="pic" title="查看宝贝详情" target="_blank"> 
                     
                    <img src="./用户中心_网软志成B2B2C电商平台系统多用户商城系统模板_files/ico_cart_package.gif" alt="查看宝贝详情" width="50" height="50"> 
                     
                    </a>
                    <div class="goods_name"> 礼包0726测试</div>
                  </div>
                  
                  </td>
                  <td align="center" class="baobei no-border-right order_goods_attr">                  
                  <div class="goods_desc goods_desc_t last">  </div>
                  
                  </td>
                <td align="center" class="baobei no-border-right order_goods_info" style="padding:0px;">                  
                  <div class="goods_desc price  last" style="padding-left: 0px; line-height: 50px; height: 60px;"> ¥100.0 </div>
                  
                  </td>
                <td align="center" class="baobei no-border-right order_goods_info" style="padding:0px;">                  
                  <div class="goods_desc  last" style="padding-left: 0px; line-height: 50px; height: 60px;"> 1 </div>
                  
                  </td>
 				<td align="center" class="after-service baobei no-border-right order_goods_info" valign="middle">
                				                
            	                 <div class="goods_desc last" style="height: 60px;"> 
                     
                                          <p> 
                      <a href="http://b2b2c.wygk.cn/user.php?act=back_order&amp;order_id=239&amp;goods_id=41&amp;product_id=0&amp;x=2" class="main-color">退货</a>
                      </p>
                     
                     
                                        <a href="http://b2b2c.wygk.cn/user.php?act=message_list">留言/投诉</a> </div>
                  
                  				  
				 </td>
				<td rowspan="1" align="center" class="amount no-border-right"><p class="post-type"><strong>
                
                				¥115.00                                </strong></p></td>
                <td rowspan="1" align="center" class="trade-status no-border-right">已确认<br>已付款<br>已发货<br>
                  <a href="http://b2b2c.wygk.cn/user.php?act=order_detail&amp;order_id=239" class="main-color">查看详情</a>
                                    
                  <div style="position:relative">
                  
                                  <div onmouseover="showSubNav2(&#39;239&#39;,&#39;顺丰速运&#39;,&#39;111&#39;);">
                     
                <a href="javascript:;" class="nav_a">物流跟踪</a></div>
                    <div id="subNav_239" class="wuliu" style="display:none; position:absolute;">
                                            <div class="hidden_wuliu" onclick="hiddenSubNav(&#39;subNav_239&#39;)"></div>
						<ul id="ul_i_239" class="rec-nav">
													<li id="div_i_239_1"><a href="javascript:;" onclick="get_invoice_info2(&#39;顺丰速运&#39;,&#39;111&#39;,&#39;1&#39;,&#39;239&#39;)">物流1</a></li>
												</ul>
                      <div id="retData_239"></div>
                       
                    </div>
                  </div>
                  
                 
                </td>
                <td rowspan="1" align="center" class="other">
                	 
                   
                   
                  <font class="main-color"><div class="clearfix"><i class="endtime-icon fl"></i><em class="endtime-text fl">还剩4天自动收货</em></div><a href="http://b2b2c.wygk.cn/user.php?act=affirm_received&amp;order_id=239" onclick="if (!confirm(&#39;您确认已经收到货物了吗？确认收货后不可再申请退货，请确认收到的货物没有问题。&#39;)) return false;" style="display:inline-block;background:#C81623;color:#fff;padding:3px 5px ;margin:3px 0px;">确认收货</a></font><br>
                  
                   
                  </td>
              </tr>
            </tbody>
            <script language="javascript" type="text/javascript">
		function showSubNav(id)
		{
			if (id != document.getElementById("s_have_hidden").value)
			{
				if (document.getElementById("s_have_hidden").value != 0)
				{
					var s_have_val = document.getElementById("s_have_hidden").value;
					document.getElementById(s_have_val).style.display = 'none';
				}
				document.getElementById(id).style.display = 'block';
				document.getElementById("s_have_hidden").value = id;
			}
		}
        function showSubNav2(id,express_id,express_no)
		{
			var _id = id;
			var id = 'subNav_'+id;
			if (id != document.getElementById("s_have_hidden").value)
			{
				if (document.getElementById("s_have_hidden").value != 0)
				{
					var s_have_val = document.getElementById("s_have_hidden").value;
					document.getElementById(s_have_val).style.display = 'none';
				}
				get_invoice_info2(express_id,express_no,1,_id);
				
				document.getElementById(id).style.display = 'block';
				document.getElementById("s_have_hidden").value = id;
			}
		}

        function hiddenSubNav(id)
		{
			document.getElementById(id).style.display = 'none';
			document.getElementById("s_have_hidden").value = 0;
		}
        </script> 
            
                        <tbody class="close-order">
              <tr class="sep-row">
                <td colspan="7"></td>
              </tr>
              <tr class="order-hd">
                <td colspan="8"><span class="no">
                  <label> 订单编号：<span class="order-num"><a href="http://b2b2c.wygk.cn/user.php?act=order_detail&amp;order_id=238" class="main-color">2018072695323</a>
                    </span> </label>
                  </span> <span class="deal-time">&nbsp;&nbsp;成交时间：2018-07-26 17:55:58</span> <span class="deal-time">&nbsp;&nbsp;商家店铺：网站自营</span>
                  
                  <a href="javascript:chat_online({chat_order_id: &#39;238&#39;, chat_supp_id: &#39;0&#39;});" title="联系客服"><img src="./用户中心_网软志成B2B2C电商平台系统多用户商城系统模板_files/web_logo.png" width="16" height="16" style="vertical-align:top;"></a>
                  </td>
              </tr>
              <tr class="order-bd last">
                <td align="center" class="baobei no-border-right order_goods_info">
                                  
		  <div class="goods_desc last" style="height: 60px;"> <a class="pic" href="http://b2b2c.wygk.cn/goods.php?id=99" title="查看宝贝详情" target="_blank"> 
                     
                    <img src="./用户中心_网软志成B2B2C电商平台系统多用户商城系统模板_files/99_thumb_G_1437523325748.jpg" alt="查看宝贝详情" width="50" height="50">
                     
                    </a>
                    <div class="goods_name"> 纯棉牛仔拼接修身男Polo衫</div>
                  </div>
                  
                  </td>
                  <td align="center" class="baobei no-border-right order_goods_attr">                  
                  <div class="goods_desc goods_desc_t last">  </div>
                  
                  </td>
                <td align="center" class="baobei no-border-right order_goods_info" style="padding:0px;">                  
                  <div class="goods_desc price  last" style="padding-left: 0px; line-height: 50px; height: 60px;"> ¥126.6 </div>
                  
                  </td>
                <td align="center" class="baobei no-border-right order_goods_info" style="padding:0px;">                  
                  <div class="goods_desc  last" style="padding-left: 0px; line-height: 50px; height: 60px;"> 1 </div>
                  
                  </td>
 				<td align="center" class="after-service baobei no-border-right order_goods_info" valign="middle">
                                     <a href="http://b2b2c.wygk.cn/user.php?act=back_order&amp;order_id=238&amp;order_all=1&amp;x=1" class="main-color">退款</a><br>
                     
                    <a href="http://b2b2c.wygk.cn/user.php?act=message_list">留言/投诉</a> 
				</td>
                 
				 
				<td rowspan="1" align="center" class="amount no-border-right"><p class="post-type"><strong>
                
                				¥131.65                                </strong></p></td>
                <td rowspan="1" align="center" class="trade-status no-border-right">已确认<br>已付款<br>未发货<br>
                  <a href="http://b2b2c.wygk.cn/user.php?act=order_detail&amp;order_id=238" class="main-color">查看详情</a>
                   
                </td>
                <td rowspan="1" align="center" class="other">
                	 
                   
                   
                  <font class="main-color"><span style="color:red">已确认</span></font><br>
                  
                   
                  </td>
              </tr>
            </tbody>
            <script language="javascript" type="text/javascript">
		function showSubNav(id)
		{
			if (id != document.getElementById("s_have_hidden").value)
			{
				if (document.getElementById("s_have_hidden").value != 0)
				{
					var s_have_val = document.getElementById("s_have_hidden").value;
					document.getElementById(s_have_val).style.display = 'none';
				}
				document.getElementById(id).style.display = 'block';
				document.getElementById("s_have_hidden").value = id;
			}
		}
        function showSubNav2(id,express_id,express_no)
		{
			var _id = id;
			var id = 'subNav_'+id;
			if (id != document.getElementById("s_have_hidden").value)
			{
				if (document.getElementById("s_have_hidden").value != 0)
				{
					var s_have_val = document.getElementById("s_have_hidden").value;
					document.getElementById(s_have_val).style.display = 'none';
				}
				get_invoice_info2(express_id,express_no,1,_id);
				
				document.getElementById(id).style.display = 'block';
				document.getElementById("s_have_hidden").value = id;
			}
		}

        function hiddenSubNav(id)
		{
			document.getElementById(id).style.display = 'none';
			document.getElementById("s_have_hidden").value = 0;
		}
        </script> 
            
                        <tbody class="close-order">
              <tr class="sep-row">
                <td colspan="7"></td>
              </tr>
              <tr class="order-hd">
                <td colspan="8"><span class="no">
                  <label> 订单编号：<span class="order-num"><a href="http://b2b2c.wygk.cn/user.php?act=order_detail&amp;order_id=237" class="main-color">2018072511080</a>
                    </span> </label>
                  </span> <span class="deal-time">&nbsp;&nbsp;成交时间：2018-07-25 18:31:31</span> <span class="deal-time">&nbsp;&nbsp;商家店铺：网站自营</span>
                  
                  <a href="javascript:chat_online({chat_order_id: &#39;237&#39;, chat_supp_id: &#39;0&#39;});" title="联系客服"><img src="./用户中心_网软志成B2B2C电商平台系统多用户商城系统模板_files/web_logo.png" width="16" height="16" style="vertical-align:top;"></a>
                  </td>
              </tr>
              <tr class="order-bd last">
                <td align="center" class="baobei no-border-right order_goods_info">
                                  
		  <div class="goods_desc last" style="height: 60px;"> <a class="pic" href="http://b2b2c.wygk.cn/goods.php?id=199" title="查看宝贝详情" target="_blank"> 
                     
                    <img src="./用户中心_网软志成B2B2C电商平台系统多用户商城系统模板_files/199_thumb_G_1437534382441.jpg" alt="查看宝贝详情" width="50" height="50">
                     
                    </a>
                    <div class="goods_name"> 爱度ay819无线蓝牙音箱便携迷你小音响插卡u盘低音炮电脑笔记本音箱 白色</div>
                  </div>
                  
                  </td>
                  <td align="center" class="baobei no-border-right order_goods_attr">                  
                  <div class="goods_desc goods_desc_t last">  </div>
                  
                  </td>
                <td align="center" class="baobei no-border-right order_goods_info" style="padding:0px;">                  
                  <div class="goods_desc price  last" style="padding-left: 0px; line-height: 50px; height: 60px;"> ¥125.8 </div>
                  
                  </td>
                <td align="center" class="baobei no-border-right order_goods_info" style="padding:0px;">                  
                  <div class="goods_desc  last" style="padding-left: 0px; line-height: 50px; height: 60px;"> 1 </div>
                  
                  </td>
 				<td align="center" class="after-service baobei no-border-right order_goods_info" valign="middle">
                                     <a href="http://b2b2c.wygk.cn/user.php?act=back_order&amp;order_id=237&amp;order_all=1&amp;x=1" class="main-color">退款</a><br>
                     
                    <a href="http://b2b2c.wygk.cn/user.php?act=message_list">留言/投诉</a> 
				</td>
                 
				 
				<td rowspan="1" align="center" class="amount no-border-right"><p class="post-type"><strong>
                
                				¥140.80                                </strong></p></td>
                <td rowspan="1" align="center" class="trade-status no-border-right">已确认<br>已付款<br>未发货<br>
                  <a href="http://b2b2c.wygk.cn/user.php?act=order_detail&amp;order_id=237" class="main-color">查看详情</a>
                   
                </td>
                <td rowspan="1" align="center" class="other">
                	 
                   
                   
                  <font class="main-color"><span style="color:red">已确认</span></font><br>
                  
                   
                  </td>
              </tr>
            </tbody>
            <script language="javascript" type="text/javascript">
		function showSubNav(id)
		{
			if (id != document.getElementById("s_have_hidden").value)
			{
				if (document.getElementById("s_have_hidden").value != 0)
				{
					var s_have_val = document.getElementById("s_have_hidden").value;
					document.getElementById(s_have_val).style.display = 'none';
				}
				document.getElementById(id).style.display = 'block';
				document.getElementById("s_have_hidden").value = id;
			}
		}
        function showSubNav2(id,express_id,express_no)
		{
			var _id = id;
			var id = 'subNav_'+id;
			if (id != document.getElementById("s_have_hidden").value)
			{
				if (document.getElementById("s_have_hidden").value != 0)
				{
					var s_have_val = document.getElementById("s_have_hidden").value;
					document.getElementById(s_have_val).style.display = 'none';
				}
				get_invoice_info2(express_id,express_no,1,_id);
				
				document.getElementById(id).style.display = 'block';
				document.getElementById("s_have_hidden").value = id;
			}
		}

        function hiddenSubNav(id)
		{
			document.getElementById(id).style.display = 'none';
			document.getElementById("s_have_hidden").value = 0;
		}
        </script> 
            
                      </table>
          <script type="text/javascript">
          $(function(){
				$('.order_goods_info').find('.goods_desc').each(function(){
					$(this).css('height',$(this).parents('.order_goods_info').siblings('.order_goods_attr').find('.goods_desc').eq($(this).index()).height());
				});
		  })
          </script>
          <input id="s_have_hidden" value="0" type="hidden">
          <div style="height:30px;line-heihgt:30px;clear:both"></div>
          <form name="selectPageForm" action="http://b2b2c.wygk.cn/user.php" method="get">
      <div class="page">
    <div class="page-wrap fr"> 
    	<div class="page-num fl">
        	            <span class="num prev disabled">
            	<i class="icon"></i>
                <i>上一页</i>
            </span>
            			 
			 
			 
			<span class="num curr">1</span> 
			 
			 
			 
			<a class="num" href="http://b2b2c.wygk.cn/user.php?act=order_list&amp;composite_status=-1&amp;page=2">2</a> 
			 
			 
			 
			<a class="num" href="http://b2b2c.wygk.cn/user.php?act=order_list&amp;composite_status=-1&amp;page=3">3</a> 
			 
			 
			 
			<a class="num" href="http://b2b2c.wygk.cn/user.php?act=order_list&amp;composite_status=-1&amp;page=4">4</a> 
			 
			 
			 
			<a class="num" href="http://b2b2c.wygk.cn/user.php?act=order_list&amp;composite_status=-1&amp;page=5">5</a> 
			 
			 
			 
			<a class="num" href="http://b2b2c.wygk.cn/user.php?act=order_list&amp;composite_status=-1&amp;page=6">6</a> 
			 
			 
			 
			<a class="num" href="http://b2b2c.wygk.cn/user.php?act=order_list&amp;composite_status=-1&amp;page=7">7</a> 
			 
			 
			 
			<a class="num" href="http://b2b2c.wygk.cn/user.php?act=order_list&amp;composite_status=-1&amp;page=8">8</a> 
			 
			 
			 
			<a class="num" href="http://b2b2c.wygk.cn/user.php?act=order_list&amp;composite_status=-1&amp;page=9">9</a> 
			 
			 
			 
			<a class="num" href="http://b2b2c.wygk.cn/user.php?act=order_list&amp;composite_status=-1&amp;page=10">10</a> 
			 
			 
			 
            			<a class="num next" href="http://b2b2c.wygk.cn/user.php?act=order_list&amp;composite_status=-1&amp;page=2">
                <i>下一页</i>
            	<i class="icon"></i>
            </a>
                    </div>
      
      <div class="total">共 17 页 ，</div>
       
      <div class="form fl"> 
      <span class="text">到第</span>
       
            <input type="hidden" name="act" value="order_list">
       
       
            <input type="hidden" name="composite_status" value="-1">
       
       
      <kbd style="float:left;">
      <input type="text" name="page" onkeydown="if(event.keyCode==13)selectPage(this)" size="3" class="input">
      </kbd>
      <span class="text">页</span>
      </div> 
       
    </div>
  </div>
    </form>
<script type="Text/Javascript" language="JavaScript">
<!--
function selectPage(sel){
  sel.form.submit();
}

//-->
</script>  
          <div style="height:30px;line-heihgt:30px;clear:both"></div> 
        </div>
    </div>
</div>
   
</div>

<%@include file="/WEB-INF/jsp/foot.jsp"%>
<script type="text/javascript">
var msg_title_empty = "留言标题为空";
var msg_content_empty = "留言内容为空";
var msg_title_limit = "留言标题不能超过200个字";
$(function(){
	$('.cancel-order').click(function(){
		$('.pop-mask').show();
		$('.pop-compare').show().css({'top':($(window).height()-$('.pop-compare').height())/2});
		$('.sure-btn').attr('href',$(this).prev('.none').attr('href'));
		
	})	
})
</script>
</body>
</html>