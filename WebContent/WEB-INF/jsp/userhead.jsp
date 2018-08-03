<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<script type="text/javascript">
	var contextPath = "${ctx}";
</script>

<link rel="stylesheet" href="${ctx}/statics/css/index.css" />
<link rel="stylesheet" href="${ctx}/statics/css/skin.css" />
<link rel="stylesheet" href="${ctx}/statics/css/style2015.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/statics/css/user.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/statics/css/wrzc_common.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/statics/css/flow.css">
<link rel="stylesheet" type="text/css" href="${ctx}/statics/css/category.css">
<link rel="stylesheet" type="text/css" href="${ctx}/statics/css/goods.css">

<script type="text/javascript" src="${ctx}/stiatics/js/global.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/jquery.validate.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/messages_zh.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/jquery.json.js"></script>
<%--  <script type="text/javascript" src="${ctx}/statics/js/transport.js"></script> --%> 
<script type="text/javascript" src="${ctx}/statics/js/common.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/user.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/bubbleup.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/utils.js"></script>

<script type="text/javascript" src="${ctx}/statics/js/page.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/bubbleup.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/jump.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/tab.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/magiczomm_plus.js"></script>

<script type="text/javascript" src="${ctx}/statics/js/compare.js"></script>
<%-- <script type="text/javascript" src="${ctx}/statics/js/gw_totop.js"></script> --%>
<script type="text/javascript" src="${ctx}/statics/js/scrollpic.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/jquery-lazyload.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/jquery.json.js"></script>

<script type="text/javascript" src="${ctx}/statics/js/arrive_notice.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/indexPrivate.min.js"></script>


<script type="text/javascript">
	var compare_no_goods = "您没有选定任何需要比较的商品或者比较的商品数少于 2 个。";
	var btn_buy = "购买";
	var is_cancel = "取消";
	var select_spe = "请选择商品属性";
</script>
</head>
<body>
<script type="text/javascript">
function outUser(){
	var msg=confirm("确定退出吗？")
	if (msg==true) {
		return true;
	} else {
		return false;
	}
	
}
</script>
	<div id="site-nav">
		<div class="sn-container w1210">
			<font id="login-info" class="sn-login-info"> 
			<c:if test="${sessionScope.user==null || sessionScope.user==''}">
				<em>欢迎光临本店!</em>
				<a class="sn-login main-color" href="${ctx}/register/login.html">请登录</a>
				<a class="sn-login main-color" href="#">微信登陆</a> <a
				class="sn-register" href="${ctx}/register/regist">免费注册</a>
			</c:if>
			<c:if test="${sessionScope.user!=null && sessionScope.user!=''}">
			<a class="sn-login main-color">${sessionScope.user.userName}</a>
			<em>欢迎你回来</em>
			<a class="sn-registre" href="${ctx}/register/outLogin" onclick="return outUser();">退出</a>
			</c:if>
			</font>
			<ul class="sn-quick-menu">
				<li class="sn-mytaobao menu-item">
				<c:choose>
				<c:when test="${sessionScope.user==null || sessionScope.user==''}">
					<div class="sn-menu">
					<a class="menu-hd" href="${ctx}/register/login.html"  >我的信息<b></b></a>
					<div id="menu-2" class="menu-bd">
							<div class="menu-bd-panel">
								<a href="${ctx}/register/login.html">已买到的宝贝</a> <a href="${ctx}/register/login.html">我的地址管理</a>
							</div>
						</div>
					</div>
					</li>
				<li class="sn-mystores"><a target="_top"
					class="sn-stores header-icon main-color" href="${ctx}/register/login.html"><i></i>我关注的店铺</a>
				</li>
				<li class="sn-cart mini-cart menu"><a id="mc-menu-hd"
					class="sn-cart header-icon main-color" href="${ctx}/register/login.html"><i></i>购物车</a></li>
				<li class="sn-favorite menu-item">
					<div class="sn-menu">
						<a class="menu-hd" href="${ctx}/register/login.html">收藏夹<b></b></a>
						<div id="menu-4" class="menu-bd">
							<div class="menu-bd-panel">
								<a href="${ctx}/register/login.html">收藏的宝贝</a> <a href="${ctx}/register/login.html">收藏的店铺</a>
							</div>
						</div>
					</div>
				</li>
				<li class="sn-separator"></li>
				<script type="text/javascript">
						function show_qcord() {
							var qs = document.getElementById('sn-qrcode');
							qs.style.display = "block";
						}
						function hide_qcord() {
							var qs = document.getElementById('sn-qrcode');
							qs.style.display = "none";
						}
					</script>
				<li class="sn-favorite menu-item">
					<div class="sn-menu">
						<a class="menu-hd" href="${ctx}/register/login.html">卖家中心<b></b></a>
						<div id="menu-4" class="menu-bd">
							<div class="menu-bd-panel">
								<a href="${ctx}/register/login.html">商家入驻</a> <a href="${ctx}/register/login.html">商家中心</a>
							</div>
						</div>
					</div>
				</li>
				<li class="menu-item">
					<div class="sn-menu">
						<a class="menu-hd sn-mobile" href="${ctx}/register/login.html">手机版<b></b></a>						
						<div class="menu-bd sn-qrcode" id="menu-5">
							<ul>
								<li class="app_down"><a href="${ctx}/register/login.html"></a>
									<p>微信商城</p> <img src="${ctx}/statics/images/app.jpg"
									alt="请用手机浏览器扫描" width="86px" height="240px"></li>
							</ul>
						</div>						
					</div>
				</li>
			</ul>
					
					
					
					
					</c:when>
					<c:otherwise><c:if test="${sessionScope.user!=null || sessionScope.user!=''}">
					<div class="sn-menu">
					<a class="menu-hd" href="${ctx}/user/welocome.html"  >我的信息<b></b></a>
					<div id="menu-2" class="menu-bd">
							<div class="menu-bd-panel">
								<a href="${ctx}/order/userOrder.view">已买到的宝贝</a> <a href="${ctx}/user/ReceivingAddress.html">我的地址管理</a>
							</div>
						</div>
					</div>
					</li>
				<li class="sn-mystores"><a target="_top"
					class="sn-stores header-icon main-color" href="#"><i></i>我关注的店铺</a>
				</li>
				<li class="sn-cart mini-cart menu"><a id="mc-menu-hd"
					class="sn-cart header-icon main-color" href="${ctx}/car/closeCart.html"><i></i>购物车</a></li>
				<li class="sn-favorite menu-item">
					<div class="sn-menu">
						<a class="menu-hd" href="${ctx}/user/Collect.html">收藏夹<b></b></a>
						<div id="menu-4" class="menu-bd">
							<div class="menu-bd-panel">
								<a href="${ctx}/user/Collect.html">收藏的宝贝</a>
							</div>
						</div>
					</div>
				</li>
				<li class="sn-separator"></li>
				<script type="text/javascript">
						function show_qcord() {
							var qs = document.getElementById('sn-qrcode');
							qs.style.display = "block";
						}
						function hide_qcord() {
							var qs = document.getElementById('sn-qrcode');
							qs.style.display = "none";
						}
					</script>
				<li class="sn-favorite menu-item">
					<div class="sn-menu">
						<a class="menu-hd" href="#">卖家中心<b></b></a>
						<div id="menu-4" class="menu-bd">
							<div class="menu-bd-panel">
								<a href="#">商家入驻</a> <a href="#">商家中心</a>
							</div>
						</div>
					</div>
				</li>
				<li class="menu-item">
					<div class="sn-menu">
						<a class="menu-hd sn-mobile" href="#">手机版<b></b></a>						
						<div class="menu-bd sn-qrcode" id="menu-5">
							<ul>
								<li class="app_down"><a href="#"></a>
									<p>微信商城</p> <img src="${ctx}/statics/images/app.jpg"
									alt="请用手机浏览器扫描" width="86px" height="240px"></li>
							</ul>
						</div>						
					</div>
				</li>
			</ul>
					</c:if>
					</c:otherwise>
					</c:choose>
				<%-- </li>
				<li class="sn-mystores"><a target="_top"
					class="sn-stores header-icon main-color" href="#"><i></i>我关注的店铺</a>
				</li>
				<li class="sn-cart mini-cart menu"><a id="mc-menu-hd"
					class="sn-cart header-icon main-color" href="${ctx}/car/closeCart.html"><i></i>购物车</a></li>
				<li class="sn-favorite menu-item">
					<div class="sn-menu">
						<a class="menu-hd" href="#">收藏夹<b></b></a>
						<div id="menu-4" class="menu-bd">
							<div class="menu-bd-panel">
								<a href="#">收藏的宝贝</a> <a href="#">收藏的店铺</a>
							</div>
						</div>
					</div>
				</li>
				<li class="sn-separator"></li>
				<script type="text/javascript">
						function show_qcord() {
							var qs = document.getElementById('sn-qrcode');
							qs.style.display = "block";
						}
						function hide_qcord() {
							var qs = document.getElementById('sn-qrcode');
							qs.style.display = "none";
						}
					</script>
				<li class="sn-favorite menu-item">
					<div class="sn-menu">
						<a class="menu-hd" href="#">卖家中心<b></b></a>
						<div id="menu-4" class="menu-bd">
							<div class="menu-bd-panel">
								<a href="#">商家入驻</a> <a href="#">商家中心</a>
							</div>
						</div>
					</div>
				</li>
				<li class="menu-item">
					<div class="sn-menu">
						<a class="menu-hd sn-mobile" href="#">手机版<b></b></a>						
						<div class="menu-bd sn-qrcode" id="menu-5">
							<ul>
								<li class="app_down"><a href="#"></a>
									<p>微信商城</p> <img src="${ctx}/statics/images/app.jpg"
									alt="请用手机浏览器扫描" width="86px" height="240px"></li>
							</ul>
						</div>						
					</div>
				</li>
			</ul> --%>
		</div>
	</div>
	<!-- <script>
			header_login();
			function header_login() {
				Ajax.call('', '', loginactResponse, 'GET', 'JSON', '1', '1');
			}
			function loginactResponse(result) {
				var MEMBERZONE = document.getElementById('login-info');
				MEMBERZONE.innerHTML = result.memberinfo;
			}
		</script> -->
		
	

