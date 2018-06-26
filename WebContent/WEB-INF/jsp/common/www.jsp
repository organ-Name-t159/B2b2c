<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>
<link rel="stylesheet" href="${ctx}/statics/css/index.css" />
<link rel="stylesheet" href="${ctx}/statics/css/skin.css" />
<link rel="alternate" type="application/rss+xml" href="#">
<link rel="stylesheet" href="${ctx}/statics/css/style2015.css" />
<script type="text/javascript"
	src="${ctx}/statics/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/jump.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/tab.js"></script>
<script type="text/javascript"
	src="${ctx}/statics/js/jquery-lazyload.js"></script>
<script type="text/javascript">
			var compare_no_goods = "您没有选定任何需要比较的商品或者比较的商品数少于 2 个。";
			var btn_buy = "购买";
			var is_cancel = "取消";
			var select_spe = "请选择商品属性";
		</script>
<script type="text/javascript" src="${ctx}/statics/js/jquery.json.js"></script>

<script type="text/javascript" src="${ctx}/statics/js/common.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/index.js"></script>
<link rel="stylesheet" href="${ctx}/statics/css/wrzc_common.css" />

<script type="text/javascript" src="${ctx}/statics/js/page.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/bubbleup.js"></script>
</head>
<body>
	<div id="site-nav">
		<div class="sn-container w1210">
			<script type="text/javascript" src="${ctx}/statics/js/utils.js"></script>
			<script type="text/javascript" src="${ctx}/statics/js/common.min.js"></script>
			<font id="login-info" class="sn-login-info"> <em>欢迎光临本店!</em>
				<a class="sn-login main-color" href="#">请登录</a> <a
				class="sn-login main-color" href="#">微信登陆</a> <a class="sn-register"
				href="#">免费注册</a>
			</font>
			<ul class="sn-quick-menu">
				<li class="sn-mytaobao menu-item">
					<div class="sn-menu">
						<a class="menu-hd" href="#">我的信息<b></b></a>
						<div id="menu-2" class="menu-bd">
							<div class="menu-bd-panel">
								<a href="#">已买到的宝贝</a> <a href="#">我的地址管理</a>
							</div>
						</div>
					</div>
				</li>
				<li class="sn-mystores"><a target="_top"
					class="sn-stores header-icon main-color" href="#"><i></i>我关注的店铺</a>
				</li>
				<li class="sn-cart mini-cart menu"><a id="mc-menu-hd"
					class="sn-cart header-icon main-color" href="#"><i></i>购物车</a></li>
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
			</ul>
		</div>
	</div>
	<script>
			header_login();

			function header_login() {
				Ajax.call('login_act_ajax.php', '', loginactResponse, 'GET', 'JSON', '1', '1');
			}

			function loginactResponse(result) {
				var MEMBERZONE = document.getElementById('login-info');
				MEMBERZONE.innerHTML = result.memberinfo;
			}
		</script>
	<div class="header">
		<div class="w1210">
			<div class="mall-logo">
				<a href="#"><img src="${ctx}/statics/images/logo.gif"
					width="250"></a>
			</div>
			<div class="mall-logo-right">
				<a href="#"></a>
			</div>
			<div class="mall-search">
				<div id="search-tips" style="display: none;"></div>
				<form class="mallSearch-form" method="get" name="searchForm"
					id="searchForm" action="http://b2b2c.wygk.cn/search.php"
					onsubmit="return checkSearchForm()">
					<input type="hidden" name="type" id="searchtype" value="0">
					<div class="mallSearch-input">
						<ul class="search-type">
							<li class="cur" num="0">宝贝<i class="icon-down"></i></li>
							<li num="1">店铺<i class="icon-down"></i></li>
						</ul>
						<div class="s-combobox">
							<div class="s-combobox-input-wrap">
								<input aria-haspopup="true" role="combobox"
									class="s-combobox-input" name="keywords" id="keyword"
									tabindex="9" accesskey="s" onkeyup="STip(this.value, event);"
									autocomplete="off" value="请输入关键词"
									onfocus="if(this.value==&#39;请输入关键词&#39;){this.value=&#39;&#39;;}else{this.value=this.value;}"
									onblur="if(this.value==&#39;&#39;)this.value=&#39;请输入关键词&#39;"
									type="text">
							</div>
						</div>
						<input type="submit" value="搜索" class="button main-bg-color">
					</div>
				</form>
				<ul class="hot-query">
					<li style="border-left: none;"><a href="#">网软志成</a></li>
					<li><a href="#">iPhone5</a></li>
					<li><a href="#">NZXT</a></li>
					<li><a href="#">旅行包</a></li>
					<li><a href="#">格力电暖器</a></li>
					<li><a href="#">年货先到家</a></li>
					<li><a href="#">MX2</a></li>
				</ul>
			</div>
			<ul class="header-right">
				<li><a href="#"><img src="${ctx}/statics/images/7day.jpg" /></a>
				</li>
				<li><a href="#"><img
						src="${ctx}/statics/images/guarantee.jpg" /></a></li>
				<li><a href="#"><img
						src="${ctx}/statics/images/delivery.jpg" /></a></li>
			</ul>
		</div>
	</div>
</body>
</html>