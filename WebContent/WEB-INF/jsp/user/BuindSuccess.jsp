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
          <div id="sflex04" class="stepflex">
            <dl class="first done">
              <dt class="s-num">1</dt>
              <dd class="s-text"> 验证身份 <s></s> <b></b> </dd>
            </dl>
            <dl class="normal done">
              <dt class="s-num">2</dt>
              <dd class="s-text"> 绑定邮箱 <s></s> <b></b> </dd>
            </dl>
            <dl class="last doing">
              <dt class="s-num">&nbsp;</dt>
              <dd class="s-text"> 完成 <s></s> <b></b> </dd>
            </dl>
          </div>
          <div id="find-box" class="uc_box">
            <div class="find_box_end">
              <p> <i></i> 绑定邮箱成功！ </p>
              <p class="on_go"> <a href="security.php" title="立即购物" class="back">返回账户安全中心&gt;&gt;</a> </p>
            </div>
          </div>
        </div>
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