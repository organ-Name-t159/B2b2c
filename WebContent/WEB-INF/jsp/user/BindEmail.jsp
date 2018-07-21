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
       
            <h5 class="user-title user-title-t"> <span> 安全级别： 
        较低&nbsp; <i class="validated2"></i> <span>&nbsp;建议您启动全部安全设置，以保障账户及资金安全</span> 
         
        </span> 
      </h5>
      <div class="blank"></div>
      <div id="safe05">
        <div class="mc">
          <div class="fore1"> <s class="fore1_3"></s> <strong>登录密码</strong> </div>
          <div class="fore2"> <span class="ftx-03">互联网账号存在被盗风险，建议您定期更改密码以保护账户安全。</span> <span style="color: #C81623;"></span> </div>
          <div class="fore3">
            <input type="button" value="修改" onclick="" class="main-btn main-btn-large" />
          </div>
        </div>
        <div class="mc">
          <div class="fore1"> <s class="fore1_1"></s> <strong>邮箱验证</strong> </div>
          <div class="fore2"> 
             
            <span style="color: #ED5854;">验证后，可用于快速找回登录密码，接收账户余额变动提醒</span> 
             
	    </div>
          <div class="fore3"> 
             
            <a href="${ctx}/user/BindEmailOne.html" class="btn btn-7">绑定邮箱</a> 
             
          </div>
        </div>
        <div class="mc">
          <div class="fore1"> <s class="fore1_3"></s> <strong>手机验证</strong> </div>
          <div class="fore2"> 
             
            <span class="ftx-03">您验证的手机：${tPhone},若已丢失或停用，请立即更换，避免账户被盗</span> 
             
          </div>
          <div class="fore3"> 
                        <input type="button" value="修改" onclick="" class="main-btn main-btn-large" />
             
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
