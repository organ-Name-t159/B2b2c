<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!--<style>
			::-webkit-input-placeholder {
				text-overflow: ellipsis;
				overflow: hidden;
				cursor: text;
				color: gray;
				opacity: 1;
				padding: 0;
				border: 0;
			}
		</style>-->
		<!--<base href="#">-->
		<base href="#">

		<meta name="Keywords" content="">
		<meta name="Description" content="">
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">

		<title>用户中心_网软志成B2B2C电商平台系统多用户商城系统模板</title>

		<link rel="stylesheet" type="text/css" href="${ctx}/statics/css/passport.css"/>
		<link rel="stylesheet" type="text/css" href="${ctx}/statics/css/wrzc_common.css"/>

		
		<script type="text/javascript" src="${ctx}/statics/js/jquery_email.js"></script>
		<script type="text/javascript" src="${ctx}/statics/js/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" src="${ctx}/statics/js/jquery.validate.js"></script>
		<script type="text/javascript" src="${ctx}/statics/js/messages_zh.js"></script>
		<script type="text/javascript" src="${ctx}/statics/js/placeholder.js"></script>
		<script type="text/javascript" src="${ctx}/statics/js/jquery.json.js"></script>
		<script type="text/javascript" src="${ctx}/statics/js/transport.js"></script>
		<script type="text/javascript" src="${ctx}/statics/js/common.js"></script>
		<script type="text/javascript" src="${ctx}/statics/js/register.js"></script>
		<script type="text/javascript" src="${ctx}/statics/js/zz.js"></script>
</head>
<body onclick="wygk_onclick();" style="cursor: auto;">

<div class="logo-r">
			<div class="logo-info-r">
				<a href="${ctx}/product/index.html" class="logo"></a> <span class="findpw">欢迎注册</span>
				<a href="#" class="qq"></a>
				<a href="#" class="sina"></a>
				<div class="user-weixin weixin">
					<span></span>
					<div class="erweima">
						<div class="erweima-inner">
							<i><s>◇</s></i>
							<img alt="微信" src="imgweixin.jpg" width="130" height="130">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="blank"></div>
		<div class="blank"></div>
		<div class="w990">

			<script type="text/javascript" src="${ctx}/statics/js/utils.js"></script>
			<div id="regist">
				<div class="register-con" style="height: 479px;">
					<div class="box-pic-reg"><img src="${ctx}/statics/images/registerPic.jpg"/></div>
					<div class="uc-box-reg">
						<form action="#" method="post" id="formRegister" name="formRegister">
							<input type="hidden" id="register_type" name="register_type" value="${register_type}">
							<ul class="register-tab">
								<li id="li-register-type-mobile" class="tab-item fl cur" register_type="mobile">手机注册<span class="bg-ff"></span></li>
								<li id="li-register-type-email" class="tab-item fl" register_type="email">邮箱注册<span class="bg-ff"></span></li>
								<li class="have-account fr">已有账号！
									<a href="${ctx}/register/login.html">登录</a>
								</li>
							</ul>
						</form>
						<form action="regist" method="post" id="formUser" name="formUser">
							<div class="form">
								<input type="hidden" name="register_type" value="mobile">
								<div class="item">
									<input name="phone" type="text" id="mobile_phone" placeholder="手机" onblur="checkMobilePhone(this)" class="text">
									<i class="i-phone"></i>
									<div> <span class="label" id="mobile_phone_notice"></span> </div>
								</div>
								<div id="o-password">
									<div class="item">
										<input name="password" type="password" id="password" placeholder="密码" onblur="check_password(this.value);" onkeyup="checkIntensity(this.value)" class="text">
										<i class="i-pass"></i>
										<div id="pwd_notice" style="display: none;"> <span class="label" id="password_notice"></span> </div>
										<div id="pwd_intensity"> <span class="label">
                  <table width="295" height="25px" border="0" cellspacing="0" cellpadding="0" style="padding: 0px 0px 10px;">
                    <tbody><tr align="center">
                      <td width="33%" id="pwd_lower">弱</td>
                      <td width="33%" id="pwd_middle">中</td>
                      <td width="33%" id="pwd_high">强</td>
                    </tr>
                  </tbody></table>
                  </span> </div>
									</div>
									<div class="item">
										<input type="password" id="conform_password" name="confirm_password" class="text" placeholder="确认密码" onblur="check_conform_password(this.value);" autocomplete="off">
										<i class="i-pass"></i>
										<div> <span class="label" id="conform_password_notice"></span> </div>
									</div>
								</div>
<script type="text/javascript">
$(function() {
	/*生成验证码*/
create_code();
});
		
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
				var ar1 = '';
				var code = shuffle();
				for (var i = 0; i < 4; i++) {
					ar1 += code[i];
				}
				;

				$(".img").text(ar1);
			}
			;
			show_code();
			$(".img").click(function() {
				show_code();
			});
		}
</script>
<style>
.phoKeys {
	background: #C81623;
	text-align: center;
	line-height: 38px;
	color: #fff;
	border-radius: 3px;
	width: 103.56px;
	margin-left: 11px;
}

.phoKeys {
	letter-spacing: 3px;
	font-size: 20px;
}
</style>
					 <div class="item">
									<input type="text" id="captcha" size="8" name="captcha" class="text text-te" placeholder="验证码" style="ime-mode: disabled" autocomplete="off" maxlength="6">
									<label class="img phoKeys"> </label>
									<i class="i-captcha"></i>
									<div style="clear:both"> <span class="label" id="captcha_notice"></span> </div>
								</div>

								<div class="item">
									<input id="mobile_code" class="text text-te fl" type="text" placeholder="手机验证码" name="mobile_code">
									<i class="i-phone"></i>
									<input id="zphone" class="zphone" type="button" value="获取手机验证码 ">
									<div> <span id="extend_field5i" class="label"></span> </div>
								</div> 
								<div class="safety">
									<input name="agreement" type="checkbox" value="1" checked="checked" class="checkbox">
									<label for="remember" class="mar-b">我已看过并接受《<a href="##">用户协议</a>》</label>
								</div>
								<div class="item">
									<input name="act" type="hidden" value="register">
									<input type="hidden" name="back_act" value="user.php">
									<input type="submit" id="btn_submit" name="Submit" class="btn-img btn-regist" value="立即注册">
								</div>
							</div>
						</form>
						<!--[if !ie]>form end<![endif]-->

					</div>
				</div>
			</div>

			<div class="blank"></div>
		</div>
		<div class="site-footer">
			<div class="footer-related">
				<div class="footer-info clearfix">
					<div class="info-text">
						<p class="nav_bottom">
							<a href="##">关于我们</a><em>|</em>
							<a href="##">联系我们</a><em>|</em>
							<a href="##">商家入驻</a><em>|</em>
							<a href="##">版权证书</a><em>|</em>
							<a href="##">手机商城</a><em>|</em>
							<a href="##">销售联盟</a><em>|</em>
							<a href="##">商城社区</a><em>|</em>
							<a href="##">企业文化</a><em>|</em>
							<a href="##">帮助中心</a><em>|</em>
							<a href="##">留言板</a><em style="display:none">|</em> ICP备案证书号:
							<a href="##">粤ICP备06122404号</a>
						</p>
						<p>
							<a href="##">© 2005-2018 网软志成B2B2C电商平台系统多用户商城系统模板 版权所有，并保留所有权利。</a>
							<a href="##">广州市天河区国家软件园产业基地8栋502 </a>
							<a href="##"> Tel: 020-34506590 </a>
							<a href="##"> E-mail: 38306293@qq.com </a>
						</p>
						<p>
							<!--<script type="text/javascript">
								var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
								document.write(unescape("%3Cspan id='cnzz_stat_icon_1000200717'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s22.cnzz.com/z_stat.php%3Fid%3D1000200717%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));
							</script>-->
							
							<span id="cnzz_stat_icon_1000200717"><a href="##"><img border="0" hspace="0" vspace="0" src="${ctx}/statics/images/pic1.gif"></a></span>
							<script src="#" type="text/javascript"></script>
							<script src="#" charset="utf-8" type="text/javascript"></script>
							<a href="##"><img src="${ctx}/statics/images/button_old_41.gif" height="16" border="0" alt="QQ"> 394223545</a>
							<a href="##"><img src="${ctx}/statics/images/T1tm9.XdRnXXaHNz_X-16-16.gif" width="16" height="16" border="0" alt="淘宝旺旺">38306293</a>
						</p>
					</div>
				</div>
				<img src="#" alt="" style="width:0px;height:0px;display:none;">
				<table cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
					<tbody>

						<tr>
							<td bgcolor="#555555">
								<table cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
									<tbody>
										<tr>
											<td align="middle" height="22">
												<font color="#ffffff"><span>电话：020-34506590 34700400 34709708 13719472523 13527894748</span> </font>
											</td>
										</tr>
										<tr>
											<td align="middle" height="22">
												<font color="#ffffff">微信号：13719472523&nbsp;&nbsp;13527894748&nbsp;&nbsp; 联系邮箱：38306293@qq.com</font>
											</td>
										</tr>
										<tr>
											<td align="middle" height="22">
												<font color="#ffffff">公司地址：广州市天河区国家软件园产业基地8栋502 软著登字第0830353号　登记号 2014SR161116 </font>
											</td>
										</tr>
										<tr>
											<td align="middle" height="22">
												<font color="#ffffff"><span class="css2">客服QQ:290116505</span>
													<a target="blank" href="#"><img border="0" src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a><span class="css2">38306293<a target="blank" href="#"><img border="0" src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>417586492</span>
													<font face="Verdana">
														<a target="blank" href="#"><img border="0" src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>
													</font><span class="css2">657248708</span>
													<font face="Verdana">
														<a target="blank" href="#"><img border="0" src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>
													</font><br><span class="css2">客服QQ:454882888</span>
													<font face="Verdana">
														<a target="blank" href="#"><img border="0" src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>
													</font><span class="css2">394223545</span>
													<font face="Verdana">
														<a target="blank" href="#"><img border="0" src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>
													</font><span class="css2">469648611</span>
													<font face="Verdana">
														<a target="blank" href="#"><img border="0" src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>
													</font><span class="css2">314730679</span>
													<font face="Verdana">
														<a target="blank" href="#"><img border="0" src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>
													</font>
												</font>
											</td>
										</tr>
										<tr>
											<td height="22" align="middle">
												<font color="#ffffff">Copyright(c)2000-2030 www.wrzc.net <span>广州网软志成信息科技有限公司</span> 版权所有</font>
												<a href="##">
													<font color="#FF0000">进入后台管理</font>
												</a>
											</td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
					</tbody>
				</table>

				
			</div>
		</div>

<script type="text/javascript">
			var process_request = "正在处理您的请求...";
			var username_chana = "- 用户名不能有中文。";
			var msg_uname_length = "- 用户名不能超过 20 个字符。";
			var username_empty = "- 用户名不能为空。";
			var username_shorter = "- 用户名长度不能少于 3 个字符。";
			var username_invalid = "- 用户名只能是由字母数字以及下划线组成。";
			var password_empty = "- 登录密码不能为空。";
			var password_shorter = "- 登录密码不能少于 6 个字符。";
			var confirm_password_invalid = "- 两次输入密码不一致";
			var email_empty = "- Email 为空";
			var email_invalid = "- Email 不是合法的地址";
			var agreement = "- 您没有接受协议";
			var msn_invalid = "- msn地址不是一个有效的邮件地址";
			var qq_invalid = "- QQ号码不是一个有效的号码";
			var home_phone_invalid = "- 家庭电话不是一个有效号码";
			var office_phone_invalid = "- 办公电话不是一个有效号码";
			var mobile_phone_invalid = "- 手机号码不是一个有效号码";
			var msg_un_blank = "- 用户名不能为空";
			var msg_un_chine = "- 用户名不能为中文";
			var msg_un_length = "- 用户名不得超过14个字符";
			var msg_un_format = "- 用户名含有非法字符";
			var msg_un_registered = "- 用户名已经存在,请重新输入";
			var msg_can_rg = "* 可以注册";
			var msg_email_blank = "- 邮件地址不能为空";
			var msg_email_registered = "- 邮箱已存在";
			var msg_email_format = "- 邮件地址不合法";
			var msg_mobile_phone_blank = "- 手机号码不能为空";
			var msg_mobile_phone_registered = "- 手机号码已存在";
			var msg_mobile_phone_format = "- 手机号码不是一个有效号码";
			var msg_blank = "- 不能为空";
			var no_select_question = "- 您没有完成密码提示问题的操作";
			var passwd_balnk = "* 密码中不能包含空格";
			var msg_email_code_blank = "- 邮箱验证码不能为空";
			var msg_mobile_phone_code_blank = "- 手机验证码不能为空";
			var msg_captcha_blank = "- 验证码不能为空";
			var msg_register_type_blank = "- 注册类型不能为空";
			var username_exist = "用户名 %s 已经存在";

			$().ready(function() {
				//设置高度
				$(".register-con").height($(".uc-box-reg").height());

				$("#formUser").submit(function() {
					return register('mobile');
				});

				$("#zemail").click(function() {
					$("#email").blur();
					$("#password").blur();
					$("#conform_password").blur();
					if($("#captcha").size() > 0 && $("#captcha").val().length == 0) {
						$("#captcha_notice").html(msg_captcha_blank);
						$("#captcha_notice").css({
							color: '#C81623'
						});
						return;
					}
					sendEmailCode($("#email"), $("#email_code"), $(this));
				});

				$("#zphone").click(function() {
					$("#mobile_phone").blur();
					$("#password").blur();
					$("#conform_password").blur();
					if($("#captcha").size() > 0 && $("#captcha").val().length == 0) {
						$("#captcha_notice").html(msg_captcha_blank);
						$("#captcha_notice").css({
							color: '#C81623'
						});
						return;
					}
					sendMobileCode($("#mobile_phone"), $("#mobile_code"), $(this));
				});

				$(".register-tab").find(".cur").removeClass("cur");
				$("#li-register-type-mobile").addClass("cur");
				$(".tab-item").click(function() {
					var register_type = $(this).attr("register_type");
					$("#register_type").val(register_type);
					$("#formRegister").submit();
				});
			});
		</script>


</body>
</html>