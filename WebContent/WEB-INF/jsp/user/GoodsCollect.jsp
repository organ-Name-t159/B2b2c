<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>家家商城</title>
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
     
     
        <div class="box">       <div class="tabmenu">
        <ul class="tab">
          <li class="first active"><a>我的收藏</a><span style="font-size:12px;margin-left:15px">(关注以下的商品后，您绑定的邮箱可随时接受到关注商品的最新动态)</span></li>
        </ul>
      </div>
      <div class="mar_top">
        <table class="ncm-default-table">
          <tbody>
            <tr>
              <td colspan="2" class="pic-model">
              <ul>
              <c:forEach items="${productClist}" var="pl">
                     <li class="favorite-pic-list">
                    <div class="favorite-goods-thumb"> 
                    <a href="" target="_blank" title="">
                     <img src="${ctx}/statics/images/${pl.fileName}" alt="${pl.name}" width="200" height="200" /> </a> </div>
                    <div class="favorite-goods-info">
                      <dl>
                        <dt> 
                           
                          <a href="" target="_blank" title="${pl.name}">${pl.name}</a> 
                           
                        </dt>
                        <dd class="price"> 
                           
                          ¥${pl.price} 
                           
                        </dd>
                        <dd class="hover_tan"> 
                           
                          <i class="guanzhu2"></i><a href="javascript:if (confirm('确定将此商品加入关注列表么？')) location.href=''" class="ncm-btn-mini">关注</a> 
                           
                           
                          <i class="cart"></i><a href="javascript:void(0)" onclick="addToCart('${pl.id}')" class="ncm-btn-mini">加入购物车</a> <i class="del"></i>
                          <a href="javascript:if (confirm('您确定要从收藏夹中删除选定的商品吗？')) location.href='${ctx}/user/delCollect?pid=${pl.id}'" class="ncm-btn-mini ncm-btn-mini1">删除</a> 
                           
                        </dd>
                      </dl>
                    </div>
                  </li>
                  </c:forEach>
           </ul>
		</td>
            </tr>
          </tbody>
        </table>
        <form name="selectPageForm" action="" method="get">
      <div class="page">
    <div class="page-wrap fr"> 
    	<div class="page-num fl">
        	            <span class="num prev disabled">
            	<i class="icon"></i>
                <i>上一页</i>
            </span>
            			 
			 
			 
			<span class="num curr">1</span> 
			 
			 
			 
			<a class="num" href="user.php?act=collection_list&page=2">2</a> 
            	<a class="num next" href="user.php?act=collection_list&page=2">
                <i>下一页</i>
            	<i class="icon"></i>
            </a>
                    </div>
      
      <div class="total">共 1页 ，</div>
       
      <div class="form fl"> 
      <span class="text">到第</span>
       
            <input type="hidden" name="act" value="collection_list" />
       
       
      <kbd style="float:left;">
      <input type="text" name="page" onkeydown="if(event.keyCode==13)selectPage(this)" size="3" class="input"/>
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
 </div>
      <script type="text/javascript">
                var url = 'http://b2b2c.wygk.cn/';
                var u   = '6';
                var compare_no_goods = "您没有选定任何需要比较的商品或者比较的商品数少于 2 个。";
                var btn_buy = "购买";
                var is_cancel = "取消";
                var select_spe = "请选择商品属性";
            </script> 
    </div>
     <div class="box"> 
       
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