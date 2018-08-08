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
              <li class="active"> <a href="#">商品评价</a> </li>
            </ul>
          </div>
          <table width="100%" border="0" cellpadding="10" cellspacing="1" bgcolor="#eeeeee" class="item_list">
            <tbody><tr>
              <th colspan="2">商品信息</th>
              <th width="120">商品来源</th>
              
            </tr>
            <input id="commtr_have" type="hidden" value="0">
                        <tr>
              <td width="50"><a href="goods.php?id=116" target="_blank"> 
                 
                <img height="50" width="50" src="${ctx}/statics/images/${product.fileName}"> 
                 
                </a></td>
              <td><a href="" target="_blank">${product.name}</a></td>
              <td align="center">
              	                网站自营                              
             </td>
              
            </tr>
                    <tr id="commtr_245"> 
                   <td colspan="6" class="comment-pop" style="background:#fffdee;">
              	<div class="send-comment"> 
                    <form action="${ctx}/order/userEvaluateSubmit.view?productId=${product.id}" method="post" onsubmit="return ">
                    <input type="hidden" name="goods_id" value="116">
                    <input type="hidden" name="rec_id" value="245">
                    <table width="70%" border="0" cellspacing="1" cellpadding="5" style="float:left">
                      <%-- <script src="${ctx}/statics/js/jquery.raty.js" type="text/javascript"></script> --%>
                      <tbody>
                     
                      <tr>
                      	<td>
                        	<input type="hidden" name="orderId" value="${oId}">                          	
                        </td>
                        <th>评价内容：</th>                     
                        <td><textarea name="content" class="comment-textarea" id="content_245"></textarea></td>
                      </tr>
                      <tr>
                        <th>&nbsp;</th>
                        <td>
                        	<input type="submit" class="main-btn main-btn-large fl" value="提交评价">                          	
                        </td>
                      </tr>
                    </tbody></table>
                  </form>
                   
                </div>
              </td>
            </tr>
             
                      </tbody></table>
          <div class="blank"></div>
           
          <form name="selectPageForm" action="" method="get">
      </form>
<script type="Text/Javascript" language="JavaScript">
<!--

function selectPage(sel){
  sel.form.submit();
}

//-->
</script>  
           
           
          
           
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