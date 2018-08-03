<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<script type="text/javascript">
	var contextPath = "${ctx}";
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "##">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>
::-webkit-input-placeholder {
	text-overflow: ellipsis;
	overflow: hidden;
	cursor: text;
	color: gray;
	opacity: 1;
	padding: 0;
	border: 0;
}
</style>

<title>用户登录</title>

<link rel="stylesheet" type="text/css"
	href="${ctx}/statics/css/passport.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx}/statics/css/wrzc_common.css" />
<script type="text/javascript" src="${ctx}/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/jquery_email.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/placeholder.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/jquery.json.js"></script>
<%-- <script type="text/javascript" src="${ctx}/statics/js/transport.js"></script> --%>
			
</head>
	
<body onclick="wygk_onclick();" style="cursor: auto;" onkeyup="submitKeyCode();">
	<div></div>

	<script type="text/javascript" src="${ctx}/statics/js/common.js"></script>
	<script type="text/javascript" src="${ctx}/statics/js/user.js"></script>

<script type="text/javascript">
function erweima1(obj, sType) {
	var oDiv = document.getElementById(obj);
	if (sType == 'show') {
		oDiv.style.display = 'block';
	}
	if (sType == 'hide') {
		oDiv.style.display = 'none';
	}
}
var ar1 = '';
$(function() {
/*生成验证码*/
create_code();
});


function checkUser(){
	var result = document.getElementById("username").value;
	var password = document.getElementById("password").value;
	var authcode =document.getElementById("authcode").value;

	if(result == ""  ){
	     alert("用户名不能为空");
	     return false;
	   }
	
	   if(password == ""  ){
	    alert("密码不能为空");
	     return false;
	   }
	
	   if(authcode==""){
		   alert("验证码不能为空！");
		     return false;
	   }
	   //验证码转换小写
	 
	if(ar1.toLowerCase()!=authcode.toLowerCase()){
		alert("验证码错误！");
		create_code();
		return false;
	}
	
	
		//获取表单 ，提交 表单
	 //document.getElementById("formId").submit(); 
		
			
}
function create_code() {
	function shuffle() {
		var arr = [ '1', 'r', 'Q', '4', 'S', '6', 'w', 'u', 'D', 'I',
				'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k',
				'l', 'm', 'n', 'o', 'p', 'q', '2', 's', 't', '8', 'v',
				'7', 'x', 'y', 'z', 'A', 'B', 'C', '9', 'E', 'F', 'G',
				'H', '0', 'J', 'K', 'L', 'M', 'N', 'O', 'P', '3', 'R',
				'5', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' ];
		return arr.sort(function() {
			return (Math.random() - .5);
		});
	}
	;
	shuffle();
	function show_code() {
		if(ar1!=""){
			ar1="";
		}
		var code = shuffle();
		for (var i = 0; i < 4; i++) {
			ar1 += code[i];
		}
		;
		$(".phoKey").text(ar1);
	}
	;
	show_code();
	$(".phoKey").click(function() {
		show_code();
	});
}


function login() {
	var result = document.getElementById("username").value;
	var password = document.getElementById("password").value;
	var authcode =document.getElementById("authcode").value;
	
	if(result == ""  ){
	     alert("用户名不能为空");
	     return false;
	   }
	
	   if(password == ""  ){
	    alert("密码不能为空");
	     return false;
	   }
	
	   if(authcode==""){
		   alert("验证码不能为空！");
		     return false;
	   }
	   //验证码转换小写
	 
	if(ar1.toLowerCase()!=authcode.toLowerCase()){
		alert("验证码错误！");
		create_code();
		$("#authcode").val("").focus();
		return false;
	}
	
	
    $.ajax({
    //几个参数需要注意一下
        
        //dataType: "json",//预期服务器返回的数据类型
        url: contextPath+"/register/loginSuccess",//url
        method: "POST",//方法类型
        data: {
        	userName:result,
        	password:password
        },
        success: function (date) {
        	if (date==200) {
        		window.location.href=contextPath+"/product/index.html";
			}
          
        },
        error : function() {
        	
        		 alert("账号或密码错误,请重新输入！");
        		 $("#password").val("").focus()
        		 $("#authcode").val("");
        		 create_code();
       
         
        }
    });
}

	</script>
	<div class="logo-r">
		<div class="logo-info-r">
			<a href="${ctx}/product/index.html" class="logo"></a><span class="findpw">欢迎登录</span> <a href="#" class="qq"></a> 
			<a href="#" class="sina"></a>
			<div class="user-weixin weixin">
				<span></span>
				<div class="erweima">
					<div class="erweima-inner">
						<i><s>◇</s></i> <img alt="微信"
							src="${ctx}/statics/images/weixin.jpg" width="130" height="130" />
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="w">

		<div class="login-wrap" id="entry">
			<div class="login-banner">
				<div class="w990 position-relative">
					<a class="banner-bg" href="#"><img
						src="${ctx}/statics/images/login-banner.jpg" /></a>

					<div class="login-form">
						<form id="formId" name="formLogin" method="post" action="">
							<div class="login-tit">
								用户登录 <a class="regist-link main-color" href="${ctx}/register/regist">立即注册 <i>&gt;</i></a>
							</div>
							<div class="form">
								<div class="msg-wrap">
									<div class="msg-error">
										<i class="msg-icon"></i><span id="msg-error-text"
											class="msg-error-text"></span>
									</div>
								</div>
								<div class="item item-name">
									<i class="icon"></i> <input name="username" type="text"
										class="text" id="username" placeholder="手机号/用户名/邮箱"
										tabindex="1" onkeyup="value=value.replace(/[\W]/g,'') " style="margin-top: 10px" />
								</div>
								<div class="item item-password">
									<i class="icon"></i> <input name="password" type="password"
										class="text" id="password" placeholder="密码" tabindex="2"
										value="" style="margin-top: 10px"/>
								</div>
								<div class="item item-authcode clearfix" id="o-authcode">
									<div class="item-detail fl">
										<i class="icon"></i> <input type="text" id="authcode"
											name="captcha" class="" tabindex="3" style="width:100; height: 38px;padding-left: 41px;font-size: 14px;" />
									</div>
									<span id="aa" name="phoKeys" class="add phoKey"></span>
								</div>
						
								<div class="safety" id="autoentry">
									<label for="remember" class="mar-b"><input
										type="checkbox" value="1" name="remember" id="remember"
										class="checkbox" />请保存我这次的登录信息</label> <a class="forget_password fr"
										href="#">忘记密码？</a>
								</div>
								<div class="login-btn">
									<input type="button" name="submit" class="btn-img btn-entry"
										id="loginsubmit" value="立即登录" onclick="login()" />
								</div>
								<div class="item-coagent">
									<a href="#"><i class="weixin"></i>微信</a> <a href="#"><i
										class="qq"></i>QQ</a> <a href="#"><i class="sina"></i>新浪</a> <a
										href="#"><i class="alipay"></i>支付宝</a>
								</div>
							</div>
						 </form>
					</div>
				</div>
			</div>
		</div>

	</div>
	<%@include file="foot.jsp"%>

	<script type="text/javascript">
	 function submitKeyCode(){
	    	if(event.keyCode==13){
	    		login();
	    	}
	    }
	
	
	
		$(".mcon").height($(".uc_box").height());
	</script>

</body>

</html>