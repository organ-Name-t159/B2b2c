<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<script type="text/javascript">
	var contextPath = "${ctx}";
</script>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>家家商城</title>
<%@include file="/WEB-INF/jsp/userhead.jsp"%>
<%@include file="/WEB-INF/jsp/common/classifyBall.jsp"%>

<div class="margin-w1210 clearfix">
	<div class="w">
		<div class="breadcrumb clearfix">
			<a href="##" class="index">首页</a> <span class="crumbs-arrow">&gt;</span>
			<span class="last">用户中心</span>
		</div>
	</div>
	<div class="blank"></div>

	<%@include file="/WEB-INF/jsp/user/userleft.jsp"%>

	<div class="user-right">
		<div class="box">

			<h5 title="邮箱验证" class="user-title user-title-t">
				<span>邮箱验证</span>
			</h5>

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
						<dl class="last">
							<dt class="s-num">&nbsp;</dt>
							<dd class="s-text">
								完成 <s></s> <b></b>
							</dd>
						</dl>
					</div>
					<div id="find-box" class="uc_box">
						<form action="">
							<div id="error_container"></div>
							<div class="item">
								<label class="con_un">您的邮箱地址：</label><input type="text" value="" name="email" placeholder="请输入邮箱"></input> <%-- <span id="l_email">${userEmail.email}</span> --%>
							</div>
							<div class="item">
								<label class="con_un">请输入邮箱验证码：</label> <input name="email_code"
									id="email_code" type="text" tabindex="2" placeholder="请输入邮箱验证码"
									class="text text_te"> 
									<input type="button" value="获取邮箱验证码" class="code" onclick="gainEmail()">									
							</div>
							<!-- <div class="item">
								<label class="con_un">请输入验证码：</label> <input type="text"
									id="captcha" size="8" name="captcha" class="text text_te"
									placeholder="验证码" style="ime-mode: disabled" autocomplete="off"
									maxlength="6">
								<div>
									<span id="phoKey" name="phoKeys" class="add phoKey"></span>
								</div>
							</div> -->
							<div class="item">
								<label class="con_un">&nbsp;</label>  <input
									type="button" id="btn_submit" name="btn_submit"
									class="main-btn main-btn-large" value="提交">
							</div>
						</form>
					</div>
				</div>
				
			</div>

		</div>
	</div>
</div>


<%@include file="/WEB-INF/jsp/foot.jsp"%>
<script>
var emailTo="";
	function gainEmail() {
		var email=$("input[name='email']").val();
		$.ajax({
			url:contextPath+"/user/gainEmail.html",
			method:"post",
			data:{
				email:email
			},
			success:function(jsonStr){
				emailTo=jsonStr;
				alert(emailTo)
			}
		});
	}
</script>
</body>
</html>