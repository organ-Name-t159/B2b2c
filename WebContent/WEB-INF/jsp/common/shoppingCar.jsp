<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<div class="right-sidebar-main">
	<div class="right-sidebar-panel">
		<div id="quick-links" class="quick-links">
			<ul>
				<li class="quick-area quick-login"><a href="#"><i
						class="setting"></i></a>
					<div class="sidebar-user quick-sidebar">
						<i class="arrow-right"></i>
						<div class="sidebar-user-info">
							<div class="user-pic">
								<div class="user-pic-mask"></div>
								<img src="${ctx}/statics/images/people.gif" />
							</div>
							<p>
								你好！请 <a href="#">登录</a>| <a href="#">注册</a>
							</p>
						</div>
					</div></li>
				<li class="sidebar-tabs"><a href="#"><i class="bonus"></i></a>
					<div class="popup">
						<font>领红包再购物</font> <i class="arrow-right"></i>
					</div></li>
				<li class="sidebar-tabs">
					<div class="cart-list quick-links-a" id="collectBox">
						<i class="cart"></i>
						<div class="span">购物车</div>
						<span class="ECS_CARTINFO">
							<form id="formCart" name="formCart" method="post" action="#">
								<c:if
									test="${sessionScope.cart==null || sessionScope.cart.items.size()<=0 }">
									<span class="cart_num">0</span>
								</c:if>
								<c:if
									test="${sessionScope.cart!=null && sessionScope.cart.items.size()>0 }">
									<span class="cart_num">${sessionScope.cart.items.size() }</span>
								</c:if>

							</form>
						</span>
					</div>
				</li>
				<li class="sidebar-tabs"><a href="#"><i class="history"></i></a>
					<div class="popup">
						<font id="mpbtn_histroy">我看过的</font> <i class="arrow-right"></i>
					</div></li>
				<li><a href="#"><i class="stores"></i></a>
					<div class="popup">
						我关注的店铺 <i class="arrow-right"></i>
					</div></li>
				<li id="collectGoods"><a href="#"><i class="collect"></i></a>
					<div class="popup">
						我的收藏 <i class="arrow-right"></i>
					</div></li>
			</ul>
		</div>
		<div class="quick-toggle">
					<ul>
						
						<li class="quick-area"><a class="quick-links-a"
							href="javascript:;"><i class="qr-code"></i></a>
							<div class="sidebar-code quick-sidebar">
								<i class="arrow-right"></i> <img
									src="${ctx}/statics/images/weixin.jpg" />
							</div></li>
						<li class="returnTop"><a href="javascript:;"
							class="return_top quick-links-a"><i class="top"></i></a>
							<div class="popup">
								返回顶部 <i class="arrow-right"></i>
							</div></li>
					</ul>
				</div>
		
	</div>
	<div class="">
		<div class="right-sidebar-panels animate-out" style="z-index: 1;">
			<h3 class="sidebar-panel-header">
				<a href="javascript:;" class="title"><i class="bonus-icon"></i><em
					class="title">红包</em></a> <span class="close-panel"></span>
			</h3>
			<div class="bonus-panel-main">
				<div class="bonus-panel-content" style="height: 622px;">
					<script type="text/javascript">
						function fun(type_id, no_have_val){
							no_have = (typeof(no_have_val) == "undefined" ? 0 : no_have_val)
							Ajax.call('user.php?act=user_bonus', 'id=' + type_id + '&no_have=' + no_have, bounsResponse, 'GET', 'JSON');
						}
						function bounsResponse(result){
							$('.pop-compare,.pop-mask').show();
							$('.pop-compare .pop-text').html(result.message);
							$('.pop-compare').css({'top':($(window).height()-$('.pop-compare').height())/2});
						}
						</script>
					<div class="bonus-list"></div>
				</div>
			</div>
		</div>
		<div class="ECS_CARTINFO right-sidebar-panels animate-out"
			style="z-index: 1;">
			<form id="formCart" name="formCart" method="post" action="">
				<c:if
					test="${sessionScope.cart==null || sessionScope.cart.items.size()<=0 }">
					<span class="cart_num">0</span>
				</c:if>
				<c:if
					test="${sessionScope.cart!=null && sessionScope.cart.items.size()>0 }">
					<span class="cart_num">${sessionScope.cart.items.size() }</span>
				</c:if>
				<div class="sidebar-cart-box">
					<h3 class="sidebar-panel-header">
						<a href="#"><i class="cart-icon"></i><em class="title">购物车</em></a>
						<span class="close-panel"></span>
					</h3>
					<div class="cart-panel-main">
						<c:if
							test="${sessionScope.cart==null || sessionScope.cart.items.size()<=0 }">
							<div class="cart-panel-content" style="height: 570px;">
								<div class="tip-box">
									<i class="tip-icon"></i>
									<div class="tip-text">
										您的购物车里什么都没有哦<br> <a class="main-color" href="#">再去看看吧</a>
									</div>
								</div>
							</div>
						</c:if>
						<c:if
							test="${sessionScope.cart!=null && sessionScope.cart.items.size()>0}">
							<div class="cart-panel-content" style="height: 572px;">
								<div class="cart-list">
									<c:forEach items="${sessionScope.cart.items}" var="temp">
										<div class="cart-item">
											<div class="item-goods">
												<span class="p-img"> <a href="#"> <img
														alt="${temp.product.name}"
														src="${ctx}/statics/images/${temp.product.fileName}"
														width="50px" height="50px">
												</a>
												</span>
												<div class="p-name">
													<a href="#" title="${temp.product.name}">${temp.product.name}</a>
												</div>
												<div class="p-price">
													<strong>￥${temp.product.price}</strong>x${temp.quantity}
												</div>
												<a href="#" class="p-del"
													onclick="deleteCar('${temp.product.id}')">删除</a>
											</div>
										</div>
									</c:forEach>

								</div>
							</div>
						</c:if>
					</div>
					<c:if
						test="${sessionScope.cart!=null && sessionScope.cart.items.size()>0}">
						<div class="cart-panel-footer">
							<div class="cart-footer-checkout">
								<div class="number">
									<strong class="count">${sessionScope.cart.items.size() }</strong>件商品
								</div>
								<div class="sum">
									共计：<strong class="total">${sessionScope.cart.sum }</strong>
								</div>
								<c:if test="${sessionScope.user==null || sessionScope.user=='' }">
									<a class="btn" href="${ctx}/register/login.html" target="_blank">去登录</a>
								</c:if>
								<c:if test="${sessionScope.user!=null && sessionScope.user!='' }">
									<a class="btn" href="${ctx}/car/closeCart.html" target="_blank">去购物车结算</a>
								</c:if>
							</div>
						</div>
					</c:if>
				</div>
				<script type="text/javascript">
			function deleteCartGoods(rec_id) {
				Ajax.call('delete_cart_goods.php', 'id=' + rec_id,
						deleteCartGoodsResponse, 'POST', 'JSON');
			}
			/**
			 * 接收返回的信息
			 */
			function deleteCartGoodsResponse(res) {
				if (res.error) {
					alert(res.err_msg);
				} else {
					$('.ECS_CARTINFO').html(res.content);
					/* $('.cart-panel-content').height(
							$(window).height() - 90); */
				}
			}
		</script>
			</form>
		</div>

	</div>
</div>
<script type="text/javascript">
	$(window).scroll(function() {
		if ($(this).scrollTop() > $(window).height()) {
			$('.returnTop').show();
		} else {
			$('.returnTop').hide();
		}
	})
	/* $('.cart-panel-content').height($(window).height() - 90); */
	$('.bonus-panel-content').height($(window).height() - 40);
	$(".returnTop").click(function() {
		$('body,html').animate({
			scrollTop : 0
		}, 800);
		return false;
	});
	//点击用户图标弹出登录框
	$(
			'.quick-login .quick-links-a,.quick-login .quick-login-a,.customer-service-online a')
			.click(function() {
				$('.pop-login,.pop-mask').show();
			})
	$('.quick-area').hover(function() {
		$(this).find('.quick-sidebar').toggle();
	})
	//移动图标出现文字
	$(".right-sidebar-panel li").mouseenter(function() {
		$(this).children(".popup").stop().animate({
			left : -92,
			queue : true
		});
		$(this).children(".popup").css("visibility", "visible");
		$(this).children(".ibar_login_box").css("display", "block");
	});
	$(".right-sidebar-panel li").mouseleave(function() {
		$(this).children(".popup").css("visibility", "hidden");
		$(this).children(".popup").stop().animate({
			left : -121,
			queue : true
		});
		$(this).children(".ibar_login_box").css("display", "none");
	});
	//点击购物车、用户信息以及浏览历史事件
	$('.sidebar-tabs').click(
			function() {
				if ($('.right-sidebar-main')
						.hasClass('right-sidebar-main-open')
						&& $(this).hasClass('current')) {
					$('.right-sidebar-main').removeClass(
							'right-sidebar-main-open');
					$(this).removeClass('current');
					$('.right-sidebar-panels').eq($(this).index() - 1)
							.removeClass('animate-in').addClass('animate-out')
							.css('z-index', 1);
				} else {
					$(this).addClass('current').siblings('.sidebar-tabs')
							.removeClass('current');
					$('.right-sidebar-main')
							.addClass('right-sidebar-main-open');
					$('.right-sidebar-panels').eq($(this).index() - 1)
							.addClass('animate-in').removeClass('animate-out')
							.css('z-index', 2)
							.siblings('.right-sidebar-panels').removeClass(
									'animate-in').addClass('animate-out').css(
									'z-index', 1);
				}
			});
	$(".right-sidebar-panels").on('click', '.close-panel', function() {
		$('.sidebar-tabs').removeClass('current');
		$('.right-sidebar-main').removeClass('right-sidebar-main-open');
		$('.right-sidebar-panels').removeClass('animate-out');
	});
	$(document).click(
			function(e) {
				var target = $(e.target);
				if (target.closest('.right-sidebar-con').length == 0) {
					$('.right-sidebar-main').removeClass(
							'right-sidebar-main-open');
					$('.sidebar-tabs').removeClass('current');
					$('.right-sidebar-panels').removeClass('animate-in')
							.addClass('animate-out').css('z-index', 1);
				}
			})
	$('.pop-login').css('top',
			($(window).height() - $('.pop-login').height()) / 2);
	$('.pop-close').click(
			function() {
				$('.pop-main,.pop-mask').hide();
				$('form[name="formLogin"]').find('.msg-wrap').css('visibility',
						'hidden');
				$('.pop-login .item,.pop-login .item-detail').removeClass(
						'item-error');
				$('.pop-login .text').val('');
			})
	$('.pop-login .item .text').focus(function() {
		$(this).addClass('')
	})
</script>