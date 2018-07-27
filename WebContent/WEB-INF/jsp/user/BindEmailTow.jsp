<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      <h5 title="邮箱绑定" class="user-title user-title-t"> <span>邮箱绑定</span> </h5>

      <div class="blank"></div>
      <div id="find_pw3">
        <div class="find_con"> 
     <div id="sflex04" class="stepflex stepflex_te">
		<dl class="first doing">
			<dt class="s-num">1</dt>
			<dd class="s-text">
				邮箱验证 <s></s> <b></b>
			</dd>
		</dl>
		<dl class="first doing">
			<dt class="s-num">2</dt>
			<dd class="s-text">
				完成 <s></s> <b></b>
			</dd>
		</dl>
	</div>
            <div id="find-box" class="uc_box">
            <a href="${ctx}/product/indexStatus.html" class="main-btn main-btn-large">完成</a>           
          </div>
        </div>
       
      </div>
    </div>
  </div>
  </div>
  <%@include file="/WEB-INF/jsp/foot.jsp"%>
</body>
</html>