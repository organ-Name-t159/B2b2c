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
              <li class="active"> <a href="">我的订单</a> </li>
            </ul>
          </div>
          <div id="J_Remide" class="remide-box">
            <h3>我的交易提醒：</h3>
            <ul>
              <li><a href="">未确认订单<span class="num">(0)</span></a></li>
              <li><a href="">待付款<span class="num">(0)</span></a></li>
              <li><a href="">待发货<span class="num">(16)</span></a></li>
              <li><a href="">已成交订单数<span class="num">(8)</span></a></li>
            </ul>
          </div>
          <div class="extra-r" style="display:none">
            <div class="search-01">
              <input id="ip_keyword" name="" class="s-itxt" value="商品名称、商品编号、订单编号" onfocus="if (this.value==this.defaultValue) this.value=;" onblur="this.value=this.defaultValue" onkeydown="javascript:if(event.keyCode==13) OrderSearch();" type="text">
              <!--input name="" type="button" value="查 询" class="btn-13" onclick="OrderSearch('ip_keyword')" clstag="click|keycount|orderinfo|search"/--> 
              <a href="javascript:;" class="btn-13" onclick="OrderSearch("")" clstag="click|keycount|orderinfo|search">查 询</a> </div>
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
            <c:forEach items="${orderList }" var="ol">
           <tbody class="close-order">
              <tr class="sep-row">
                <td colspan="7"></td>
              </tr>
              <tr class="order-hd">
                <td colspan="8"><span class="no">
                  <label> 订单编号：<span class="order-num"><a href="" class="main-color">${ol.serialNumber }</a>
                    </span> </label>
                  </span> <span class="deal-time">&nbsp;&nbsp;成交时间：${ol.newTime }</span> <span class="deal-time">&nbsp;&nbsp;商家店铺：网站自营</span>
                  
                  <a href="" title="联系客服">
                  <img src="${ctx}/statics/images/${ol.fileName}" width="16" height="16" style="vertical-align:top;"></a>
                  </td>
              </tr>
              <tr class="order-bd last">
                <td align="center" class="baobei no-border-right order_goods_info">
                                  
		  <div class="goods_desc last" style="height: 60px;"> <a class="pic" href="" title="查看宝贝详情" target="_blank"> 
                     
                    <img src="${ctx}/statics/images/${ol.fileName}" alt="查看宝贝详情" width="50" height="50">
                     
                    </a>
                    <div class="goods_name"> ${ol.name}</div>
                  </div>
                  
                  </td>
                  <td align="center" class="baobei no-border-right order_goods_attr">                  
                  <div class="goods_desc goods_desc_t last">颜色:${ol.colour} <br>
 </div>
                  
                  </td>
                <td align="center" class="baobei no-border-right order_goods_info" style="padding:0px;">                  
                  <div class="goods_desc price  last" style="padding-left: 0px; line-height: 50px; height: 60px;"> ¥${ol.price} </div>
                  
                  </td>
                <td align="center" class="baobei no-border-right order_goods_info" style="padding:0px;">                  
                  <div class="goods_desc  last" style="padding-left: 0px; line-height: 50px; height: 60px;"> ${ol.quantity} </div>
                  
                  </td>
 				<td align="center" class="after-service baobei no-border-right order_goods_info" valign="middle">
                   <a href="" class="main-color">退款</a><br>
                     
                    <a href="">留言/投诉</a> 
				</td>
                 
				 
				<td rowspan="1" align="center" class="amount no-border-right"><p class="post-type"><strong>
                
                				¥${ol.costt}                               </strong></p></td>
                <td rowspan="1" align="center" class="trade-status no-border-right">${ol.wayName }<br>${ol.statusName}<br>${ol.dbtName}<br>
                  <a href="" class="main-color">查看详情</a>
                   
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
            </c:forEach>
          
            
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
          <form name="selectPageForm" action="" method="get">
      <div class="page">
    	<div class="page-wrap fr">
		<div class="page-num fl">
		<c:if test="${pager.pageCount>=1}">
			<a class="num" href="${ctx}/${pager.url}&currentPage=1">首页</a>
			<c:if test="${pager.currentPage>1}">
            <a href="${ctx}/${pager.url}&currentPage=${pager.currentPage-1}" class="num prev disabled">上一页</a>
       		</c:if>
			<c:forEach var="temp" begin="${pager.currentPage>3?pager.currentPage-3:1}" end="${pager.pageCount-pager.currentPage>3?page.currentPage+3:pager.pageCount}" step="1">
				<c:if test="${pager.currentPage==temp}">
                <a href="${ctx}/${pager.url}&currentPage=${temp}" class="num">${temp}</a>
	            </c:if>
	            <c:if test="${pager.currentPage!=temp}">
	                <a href="${ctx}/${pager.url}&currentPage=${temp}" class="num">${temp}</a>
	            </c:if>
			</c:forEach>
			<c:if test="${pager.currentPage<pager.pageCount}">
            <a href="${ctx}/${pager.url}&currentPage=${pager.currentPage+1}" class="num prev disabled">下一页</a>
       		</c:if>
			<a class="num" href="${ctx}/${pager.url}&currentPage=${pager.pageCount}">尾页</a>			
		</c:if>
		<c:if test="${pager.pageCount==0}">
		        暂无记录
		</c:if>
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