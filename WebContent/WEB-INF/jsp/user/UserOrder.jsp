<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fm" %>
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
        
          <div class="extra-r" style="display:none">
           
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
            
           
             <c:forEach items="${map}" var="ol"> 
             	
           <tbody class="close-order">
              <tr class="sep-row">
                <td colspan="7"></td>
              </tr>
              <tr class="order-hd">
                <td colspan="8"><span class="no">
                  <label> 订单编号：<span class="order-num"><a href="" class="main-color">${ol.key}</a>
                    </span> </label>
                  </span> 
                  <c:forEach items="${ol.value}" var="os" end="0">
                  <span class="deal-time">&nbsp;&nbsp;成交时间：<fm:formatDate var="t" value="${os.createTime }" type="Date" pattern="yyyy-MM-dd HH:mm:ss"/>${t} </span>
                  </c:forEach>
                   <span class="deal-time">&nbsp;&nbsp;商家店铺：网站自营</span>
                  
                  <a href="" title="联系客服">
                  <img src="${ctx}/statics/images/${os.fileName}" width="16" height="16" style="vertical-align:top;"></a>
                  </td>
              </tr>
             
  
            	<tr class="order-bd last">
                <td align="center" class="baobei no-border-right order_goods_info">
                <c:forEach items="${ol.value }" var="os">
                       
		  <div class="goods_desc last" style="height: 60px;"> 
		  <a class="pic" href="${ctx}/details/ProductDeatil.html?id=${os.productId}" title="查看宝贝详情" > 
                     
                    <img src="${ctx}/statics/images/${os.fileName}" alt="查看宝贝详情" width="50" height="50">
                     
                    </a>
                    <div class="goods_name"> ${os.name}</div>
                  </div>
                 
                   </c:forEach>
                  </td>
                  <td align="center" class="baobei no-border-right order_goods_attr">  
                
                   	<c:forEach items="${ol.value }" var="os">              
                  <div class="goods_desc goods_desc_t last">颜色:${os.colour} <br>
                  
 					</div>
                
                   </c:forEach>
                  </td>
                <td align="center" class="baobei no-border-right order_goods_info" style="padding:0px;">   
               
                   	<c:forEach items="${ol.value }" var="os">            
                  <div class="goods_desc price  last" style="padding-left: 0px; line-height: 50px; height: 60px;"> ¥${os.price} </div>
                 
                   </c:forEach> 
                  </td>
                <td align="center" class="baobei no-border-right order_goods_info" style="padding:0px;"> 
              
                   	<c:forEach items="${ol.value}" var="os">                  
                  <div class="goods_desc  last" style="padding-left: 0px; line-height: 50px; height: 60px;"> ${os.quantity} </div>
                    
                   </c:forEach>
                  </td>
                    
                  	<td align="center" class="after-service baobei no-border-right order_goods_info" valign="middle">
                    <c:forEach items="${ol.value}" var="os" end="0">
                     <c:if test="${os.evaluateStaticId==2}">
                    	<a href="javascript:void(0)">已评价</a></br>
                    </c:if>                    
                     </c:forEach>
                    <c:forEach items="${ol.value}" var="os">
                    <c:if test="${os.statusName eq '已付款' and os.evaluateStaticId==1}">
                    	<a href="${ctx}/order/userEvaluate.view?pId=${os.productId}&oId=${os.id}">我要评价</a></br></br></br>                	
                    </c:if>
                    </c:forEach>
                    <c:forEach items="${ol.value}" var="os" end="0">
                     <c:if test="${os.statusName eq '未付款'}">
                    	<a href="${ctx}/car/jieKou.html?WIDout_trade_no=${ol.key}&WIDtotal_amount=${os.cost}&WIDsubject=${ol.key}&WIDbody=${os.colour}">去支付</a></br>
                    </c:if>                    
                     </c:forEach>
					</td>
                
                
				 <td rowspan="1" align="center" class="amount no-border-right"><p class="post-type"><strong>
                	 <c:forEach items="${ol.value}" var="os" end="0">
                				¥${os.cost}  
               		 </c:forEach></strong></p></td>
                 <td rowspan="1" align="center" class="trade-status no-border-right">
                  <c:forEach items="${ol.value}" var="os" end="0">
                 ${os.wayName }<br>${os.statusName}<br>${os.deliveryStatus}<br>
                 
                  <a href="${ctx}/details/ProductDeatil.html?id=${os.productId}" class="main-color">查看详情</a>
                   </c:forEach>
                </td>   
                
               <td rowspan="1" align="center" class="other">
                <c:forEach items="${ol.value}" var="os" end="0">
                	<c:if test="${os.statusName eq '已付款'}">
                  <font class="main-color"><span style="color:red">确认订单</span></font><br>
                  	</c:if>
                  	 <c:if test="${os.statusName eq '未付款'}">                
                 
                  
                  <a href="">取消订单</a> 
                   </c:if>  
                   </c:forEach>
                  </td>
               </tr>
           
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