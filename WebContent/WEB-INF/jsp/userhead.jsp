<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<script type="text/javascript">
	var contextPath = "${ctx}";
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>家家商城</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${ctx}/statics/css/index.css" />
<link rel="stylesheet" href="${ctx}/statics/css/skin.css" />
<link rel="stylesheet" href="${ctx}/statics/css/style2015.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx}/statics/css/user.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx}/statics/css/wrzc_common.css" />
<link rel="stylesheet" type="text/css"
	href="${ctx}/statics/css/category.css">
<script type="text/javascript" src="${ctx}/stiatics/js/global.js"></script>
<script type="text/javascript"
	src="${ctx}/statics/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript"
	src="${ctx}/statics/js/jquery.validate.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/messages_zh.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/jquery.json.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/transport.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/common.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/user.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/bubbleup.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/utils.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/common.min.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/page.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/bubbleup.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/nav.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/jump.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/tab.js"></script>
<script type="text/javascript"
	src="${ctx}/statics/js/jquery-lazyload.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/jquery.json.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/index.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/arrive_notice.js"></script>
<script type="text/javascript"
	src="${ctx}/statics/js/indexPrivate.min.js"></script>
<script type="text/javascript">
	var compare_no_goods = "您没有选定任何需要比较的商品或者比较的商品数少于 2 个。";
	var btn_buy = "购买";
	var is_cancel = "取消";
	var select_spe = "请选择商品属性";
</script>
</head>
<body>
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
			<a class="sn-registre" href="${ctx}/register/outLogin">退出</a>
			</c:if>
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
				<a href="${ctx}/product/index.html"><img src="${ctx}/statics/images/logo.gif"
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

	<div class="all-nav all-nav-border">
		<div class="w1210">
			<div class="home-category fl hover">
				<a href="catalog.php" class="menu-event main-bg-color"
					title="查看全部商品分类">全部商品分类<i></i></a>

				<div class="expand-menu all-cat main-bg-color" id="xz">
					<!-- 商品分类开始 -->
					<c:forEach items="${productCategoryVoList}" var="temp">
						<div class="list">
							<dl class="cat">
								<dt class="cat-name">
									<a href="#" target="_blank"
										title="${temp.productCategory.name}">${temp.productCategory.name}</a>
								</dt>
								<i>&gt;</i>
							</dl>
							<div class="categorys">
								<div class="item-left fl">
									<c:forEach items="${temp.productCategoryVoList}" var="vo1">
										<div class="item-channels">
											<div class="channels">
												<a href="category.php?id=197" target="_blank"
													title="${vo1.productCategory.name}">${vo1.productCategory.name}<i>&gt;</i></a>
											</div>
										</div>
									</c:forEach>
									<div class="subitems">
										<c:forEach items="${temp.productCategoryVoList}" var="vo">
											<dl class="fore1">
												<dt>
													<a href="#" target="_blank"
														title="${vo.productCategory.name}">${vo.productCategory.name}<i>&gt;</i></a>
												</dt>
												<dd>
													<c:forEach items="${vo.productCategoryVoList}" var="vo2">
														<a href="category.php?id=183" target="_blank"
															title="${vo2.productCategory.name}">${vo2.productCategory.name}</a>

													</c:forEach>
												</dd>
											</dl>
										</c:forEach>
									</div>

								</div>
							</div>

						</div>
					</c:forEach>
					<!-- 商品分类结束 -->

				</div>
			</div>
			<div class="allnav fl" id="nav">
				<ul>
					<li><a class="nav" href="index.php" title="首页">首页</a></li>
					<li><a class="nav " href="category.php?id=1" title="食品生鲜">食品生鲜</a>
					</li>
					<li><a class="nav " href="stores.php" title="店铺街">店铺街</a></li>
					<li><a class="nav " href="pro_search.php?intro=promotion"
						title="团购">团购</a></li>
					<li><a class="nav " href="pre_sale.php" title="预售">预售</a></li>
					<li><a class="nav " href="auction.php" title="拍卖">拍卖</a></li>
					<li><a class="nav " href="package.php" title="礼包">礼包</a></li>
					<li><a class="nav " href="exchange.php" title="积分商城">积分商城</a>
					</li>
					<li><a class="nav " href="activity.php" title="优惠活动">优惠活动</a>
					</li>
					<li><a class="nav " href="article_list.php" title="电商资讯">电商资讯</a>
					</li>
					<li><a class="nav " href="category.php?id=5" title="家用电器">家用电器</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<script type="text/javascript">
			//<![CDATA[
			function checkSearchForm() {
				if(document.getElementById('keyword').value) {
					var frm = document.getElementById('searchForm');
					var type = parseInt(document.getElementById('searchtype').value);
					frm.action = type == 0 ? 'search.php' : 'stores.php';
					return true;
				} else {
					alert("请输入关键词！");
					return false;
				}
			}
			function myValue1() {
				document.getElementById('keyword').value = "请输入商品名称或编号...";
			}
			function myValue2() {
				document.getElementById('keyword').value = "";
			}
			//]]>
			$('.search-type li').click(function() {
				$(this).addClass('cur').siblings().removeClass('cur');
				$('#searchtype').val($(this).attr('num'));
			});
			$(function() {
				//图片放大效果
				$(".header-right img").bubbleup({
					scale: 100
				});
				//头部搜索
				$('.search-type').hover(function() {
					$(this).css({
						"height": "auto",
						"overflow": "visible"
					});
				}, function() {
					$(this).css({
						"height": 32,
						"overflow": "hidden"
					});
				});
			});
			function _show_(h, b) {
				if(!h) {
					return
				}
				if(b && b.source && b.target) {
					var d = (typeof b.source == "string") ? M.$("#" + b.source) : b.source;
					var e = (typeof b.target == "string") ? M.$("#" + b.target) : b.target;
					if(d && e && !e.isDone) {
						e.innerHTML = d.value;
						d.parentNode.removeChild(d);
						if(typeof b.callback == "function") {
							b.callback()
						}
						e.isDone = true
					}
				}
				M.addClass(h, "hover");
				if(b && b.isLazyLoad && h.isDone) {
					var g = h.find("img");
					for(var a = 0, c = g.length; a < c; a++) {
						var f = g[a].getAttribute("data-src_index_menu");
						if(f) {
							g[a].setAttribute("src", f);
							g[a].removeAttribute("data-src_index_menu")
						}
					}
					h.isDone = true
				}
			}
			function _hide_(a) {
				if(!a) {
					return
				}
				if(a.className.indexOf("hover") > -1) {
					M.removeClass(a, "hover")
				}
			}
		</script>



</body>
</html>