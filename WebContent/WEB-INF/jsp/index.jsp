<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<script type="text/javascript">
	var compare_no_goods = "您没有选定任何需要比较的商品或者比较的商品数少于 2 个。";
	var btn_buy = "购买";
	var is_cancel = "取消";
	var select_spe = "请选择商品属性";
</script>


<script type="text/javascript">
	function checkSearchForm() {
		if (document.getElementById('keyword').value) {
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
			scale : 70
		});

		//头部搜索
		$('.search-type').hover(function() {
			$(this).css({
				"height" : "auto",
				"overflow" : "visible"
			});
		}, function() {
			$(this).css({
				"height" : 32,
				"overflow" : "hidden"
			});
		});

	});
</script>

<%@include file="userhead.jsp"%>
<script type="text/javascript">
	$(function() {
		$("#xz").show();
		document.getElementById("xx").style.display = "none";
	});
</script>
<div class="banner">
	<ul id="fullScreenSlides" class="full-screen-slides">

		<li
			style="background: url(${ctx}/statics/images/20150722zsmllz.jpg) center center no-repeat; display: none;">
			<a href="#">&nbsp;</a>
		</li>
		<li
			style="background: url(${ctx }/statics/images/20150722uzphik.jpg) center center no-repeat; display: none;">
			<a href="#">&nbsp;</a>

		</li>

		<li
			style="background: url(${ctx }/statics/images/20150723axsewo.jpg)center center no-repeat; display: none;">
			<a href="#">&nbsp;</a>
		</li>

	</ul>
	<ul class="full-screen-slides-pagination">
		<li class=""><a href="#">1</a></li>
		<li class="current"><a href="#">2</a></li>
		<li class=""><a href="#">3</a></li>
	</ul>
	<div class="focus-trigeminy">
		<div class="carousel">
			<ul class="box" style="width: 1584px;">

				<li><a href="#"><img
						src="${ctx}/statics/images/1437497920196427586.jpg"
						alt="首页幻灯片-小图下1"></a></li>

				<li><a href="#"><img
						src="${ctx}/statics/images/1437497944523762531.jpg"
						alt="首页幻灯片-小图下2"></a></li>

				<li><a href="#"><img
						src="${ctx}/statics/images/1437497969836917729.jpg"
						alt="首页幻灯片-小图下3"></a></li>

				<li><a href="#"><img
						src="${ctx}/statics/images/1453445559337605969.jpg"
						alt="首页幻灯片-小图下4"></a></li>

				<li><a href="#"><img
						src="${ctx}/statics/images/1453446324678170271.jpg"
						alt="首页幻灯片-小图下5"></a></li>

				<li><a href="#"><img
						src="${ctx}/statics/images/1453445653632359411.jpg"
						alt="首页幻灯片-小图下6"></a></li>
			</ul>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			$('.focus-trigeminy').hover(function() {
				$('.prev,.next').fadeTo('fast', 0.4);
			}, function() {
				$('.prev,.next').fadeTo('fast', 0);
			})
			Move(".next", ".prev", ".box", ".focus-trigeminy", "3");
		})
	</script>
	<div class="right-sidebar">
		<div class="sale-discount">
			<h3>限时抢购</h3>
			<ul class="saleDiscount" style="width: 208px;">

				<li>
					<div class="sale-con">
						<p class="time-remain" count_down="86451210">
							<span id="leftTime0"> <em time_id="d"
								class="main-bg-color">1000</em> 天 <em time_id="h"
								class="main-bg-color">14</em> 小时 <em time_id="m"
								class="main-bg-color">13</em> 分 <em time_id="s"
								class="main-bg-color">30</em> 秒
							</span>
						</p>
						<p class="goods-thumb">
							<a href="#"><img
								data-original="images/201602/thumb_${ctx}/statics/images/270_thumb_G_1456452662995.jpg"
								src="${ctx}/statics/images/270_thumb_G_1456452662995.jpg"
								alt="五粮液 45度小酒版 水晶礼盒装 浓香型白酒 官方授权 酒厂直供 中国名酒 250ML"
								style="display: inline;"></a>
						</p>
						<p class="goods-name">
							<a href="#">五粮液 45度小酒版 水晶礼盒装 浓香型白酒 官...</a>
						</p>
						<p class="goods-price">
							<span class="main-color"> ¥200.0 </span> <span
								class="goods-discount main-color">7.2折</span>
						</p>
					</div>
				</li>

			</ul>
			<div class="arrow pre" style="opacity: 0;"></div>
			<div class="arrow next" style="opacity: 0;"></div>
		</div>
		<script type="text/javascript">
			Move(".next", ".pre", ".saleDiscount", ".sale-discount", "1");
		</script>

		<div class="proclamation">
			<ul class="tabs-nav">
				<li class="tabs-selected">
					<h3>商城公告</h3>
				</li>
				<li>
					<h3>招商入驻</h3>
				</li>
			</ul>

			<div class="tabs-panel">
				<ul class="mall-news">
					<li><a target="_blank" href="#">商家帮助指南 </a></li>
					<li><a target="_blank" href="#">供货商(入驻商文章标题) </a></li>
				</ul>
			</div>
			<div class="tabs-panel tabs-hide">
				<a href="#">&nbsp;</a> <a href="#"> <i class="icon-cog"></i>
					登录商家管理中心
				</a>
			</div>
		</div>
	</div>
</div>


<div class="w1210 index-sale">
	<ul class="tabs-nav">
		<li class=""><i class="arrow"></i>
			<h3>疯狂抢购</h3></li>
		<li class=""><i class="arrow"></i>
			<h3>热销排行</h3></li>
		<li class=""><i class="arrow"></i>
			<h3>商城热卖</h3></li>
		<li class=""><i class="arrow"></i>
			<h3>商城推荐</h3></li>
		<li class="tabs-selected"><i class="arrow"></i>
			<h3>新品上市</h3></li>
	</ul>
	<div class="tabs-panel sale-goods-list tabs-hide">
		<ul>

		</ul>
	</div>

	<div class="tabs-panel sale-goods-list tabs-hide">
		<ul>
			<li>
				<dl>
					<dt class="goods-name">
						<a target="_blank" href="#">苹果（Apple）iPhone 6 (A1586...</a>
					</dt>
					<dd class="goods-thumb">
						<a target="_blank" href="#"> <img
							data-original="images/201507/thumb_${ctx}/statics/images/100_thumb_G_1437523484060.jpg"
							src="${ctx}/statics/images/loading.gif" alt="">
						</a>
					</dd>
					<dd class="goods-price">
						商城价： <em> 4888.00 </em>
					</dd>
				</dl>
			</li>
			<li>
				<dl>
					<dt class="goods-name">
						<a target="_blank" href="#">爱度AY800蓝牙音箱手机电脑迷你音响无线便携插...</a>
					</dt>
					<dd class="goods-thumb">
						<a target="_blank" href="#"> <img
							data-original="images/201507/thumb_${ctx}/statics/images/200_thumb_G_1437534571298.jpg"
							src="${ctx}/statics/images/loading.gif" alt="">
						</a>
					</dd>
					<dd class="goods-price">
						商城价： <em> 98.00 </em>
					</dd>
				</dl>
			</li>
			<li>
				<dl>
					<dt class="goods-name">
						<a target="_blank" href="#">高端2015夏装新款修身淑坊女女装蕾丝短袖复女连...</a>
					</dt>
					<dd class="goods-thumb">
						<a target="_blank" href="#"> <img
							data-original="images/201507/thumb_${ctx}/statics/images/51_thumb_G_1437519866381.jpg"
							src="${ctx}/statics/images/loading.gif" alt="">
						</a>
					</dd>
					<dd class="goods-price">
						商城价： <em> 199.00 </em>
					</dd>
				</dl>
			</li>
			<li>
				<dl>
					<dt class="goods-name">
						<a target="_blank" href="#">家用静音办公室空调加湿器 香薰迷你大容量净化特价</a>
					</dt>
					<dd class="goods-thumb">
						<a target="_blank" href="#"> <img
							data-original="images/201507/thumb_${ctx}/statics/images/88_thumb_G_1437522788663.jpg"
							src="${ctx}/statics/images/loading.gif" alt="">
						</a>
					</dd>
					<dd class="goods-price">
						商城价： <em> 100.00 </em>
					</dd>
				</dl>
			</li>
			<li>
				<dl>
					<dt class="goods-name">
						<a target="_blank" href="#">包邮 新款户外军迷阿帕奇T恤 纯棉男款短袖半袖特...</a>
					</dt>
					<dd class="goods-thumb">
						<a target="_blank" href="#"> <img
							data-original="images/201507/thumb_${ctx}/statics/images/_thumb_P_1438047501681.jpg"
							src="${ctx}/statics/images/loading.gif" alt="">
						</a>
					</dd>
					<dd class="goods-price">
						商城价： <em> 274.00 </em>
					</dd>
				</dl>
			</li>
		</ul>
	</div>

	<div class="tabs-panel sale-goods-list tabs-hide">
		<ul>

			<li>
				<dl>
					<dt class="goods-name">
						<a target="_blank" href="#">雅鹿全棉四件套纯棉套件床上用品 回忆蓝 1.8米...</a>
					</dt>
					<dd class="goods-thumb">
						<a target="_blank" href="#"> <img
							data-original="images/201507/thumb_${ctx}/statics/images/140_thumb_G_1437528915082.jpg"
							src="${ctx}/statics/images/loading.gif"
							alt="雅鹿全棉四件套纯棉套件床上用品 回忆蓝 1.8米床">
						</a>
					</dd>
					<dd class="goods-price">
						商城价： <em> ¥333.0 </em>
					</dd>
				</dl>
			</li>

			<li>
				<dl>
					<dt class="goods-name">
						<a target="_blank" href="#">宝雕 欧式双舌静音象牙白室内房门锁M87457 ...</a>
					</dt>
					<dd class="goods-thumb">
						<a target="_blank" href="#"> <img
							data-original="images/201602/thumb_${ctx}/statics/images/280_thumb_G_1456453887329.jpg"
							src="${ctx}/statics/images/loading.gif"
							alt="宝雕 欧式双舌静音象牙白室内房门锁M87457 象牙白宝雕">
						</a>
					</dd>
					<dd class="goods-price">
						商城价： <em> ¥99.0 </em>
					</dd>
				</dl>
			</li>

			<li>
				<dl>
					<dt class="goods-name">
						<a target="_blank" href="#">韩国原装进口lotte乐天 2%富足水蜜桃果汁饮...</a>
					</dt>
					<dd class="goods-thumb">
						<a target="_blank" href="#"> <img
							data-original="images/201603/thumb_${ctx}/statics/images/287_thumb_G_1457592139010.jpg"
							src="${ctx}/statics/images/loading.gif"
							alt="韩国原装进口lotte乐天 2%富足水蜜桃果汁饮料240ml听装 夏季饮料">
						</a>
					</dd>
					<dd class="goods-price">
						商城价： <em> ¥5.3 </em>
					</dd>
				</dl>
			</li>

			<li>
				<dl>
					<dt class="goods-name">
						<a target="_blank" href="#">康师傅优悦水550ml*24瓶（整箱）</a>
					</dt>
					<dd class="goods-thumb">
						<a target="_blank" href="#"> <img
							data-original="images/201602/thumb_${ctx}/statics/images/273_thumb_G_1456452987184.jpg"
							src="${ctx}/statics/images/loading.gif" alt="康师傅优悦水550ml*24瓶（整箱）">
						</a>
					</dd>
					<dd class="goods-price">
						商城价： <em> ¥19.9 </em>
					</dd>
				</dl>
			</li>

			<li>
				<dl>
					<dt class="goods-name">
						<a target="_blank" href="#">adj</a>
					</dt>
					<dd class="goods-thumb">
						<a target="_blank" href="#"> <img
							data-original="images/201805/thumb_${ctx}/statics/images/401_thumb_G_1527042853249.jpg"
							src="${ctx}/statics/images/loading.gif" alt="adj">
						</a>
					</dd>
					<dd class="goods-price">
						商城价： <em> ¥150.0 </em>
					</dd>
				</dl>
			</li>

		</ul>
	</div>

	<div class="tabs-panel sale-goods-list tabs-hide">
		<ul>

			<li>
				<dl>
					<dt class="goods-name">
						<a target="_blank" href="#">沙宣垂坠质感润发乳750ml</a>
					</dt>
					<dd class="goods-thumb">
						<a target="_blank" href="#"> <img
							data-original="images/201507/thumb_${ctx}/statics/images/153_thumb_G_1437530435593.jpg"
							src="${ctx}/statics/images/loading.gif" alt="沙宣垂坠质感润发乳750ml">
						</a>
					</dd>
					<dd class="goods-price">
						商城价： <em> ¥90.0 </em>
					</dd>
				</dl>
			</li>

			<li>
				<dl>
					<dt class="goods-name">
						<a target="_blank" href="#">欧莱雅透明质酸水润洗发露400ml*2+透明质酸...</a>
					</dt>
					<dd class="goods-thumb">
						<a target="_blank" href="#"> <img
							data-original="images/201507/thumb_${ctx}/statics/images/163_thumb_G_1437530957991.jpg"
							src="${ctx}/statics/images/loading.gif"
							alt="欧莱雅透明质酸水润洗发露400ml*2+透明质酸水润润发乳400ml">
						</a>
					</dd>
					<dd class="goods-price">
						商城价： <em> ¥75.0 </em>
					</dd>
				</dl>
			</li>

			<li>
				<dl>
					<dt class="goods-name">
						<a target="_blank" href="#">宝雕 欧式双舌静音象牙白室内房门锁M87457 ...</a>
					</dt>
					<dd class="goods-thumb">
						<a target="_blank" href="#"> <img
							data-original="images/201602/thumb_${ctx}/statics/images/280_thumb_G_1456453887329.jpg"
							src="${ctx}/statics/images/loading.gif"
							alt="宝雕 欧式双舌静音象牙白室内房门锁M87457 象牙白宝雕">
						</a>
					</dd>
					<dd class="goods-price">
						商城价： <em> ¥99.0 </em>
					</dd>
				</dl>
			</li>

			<li>
				<dl>
					<dt class="goods-name">
						<a target="_blank" href="#">韩国原装进口lotte乐天 2%富足水蜜桃果汁饮...</a>
					</dt>
					<dd class="goods-thumb">
						<a target="_blank" href="#"> <img
							data-original="images/201603/thumb_${ctx}/statics/images/287_thumb_G_1457592139010.jpg"
							src="${ctx}/statics/images/loading.gif"
							alt="韩国原装进口lotte乐天 2%富足水蜜桃果汁饮料240ml听装 夏季饮料">
						</a>
					</dd>
					<dd class="goods-price">
						商城价： <em> ¥5.3 </em>
					</dd>
				</dl>
			</li>

			<li>
				<dl>
					<dt class="goods-name">
						<a target="_blank" href="#">L’OREAL/欧莱雅 精油润养洗发露700ml</a>
					</dt>
					<dd class="goods-thumb">
						<a target="_blank" href="#"> <img
							data-original="images/201507/thumb_${ctx}/statics/images/158_thumb_G_1437530565110.jpg"
							src="${ctx}/statics/images/loading.gif"
							alt="L’OREAL/欧莱雅 精油润养洗发露700ml">
						</a>
					</dd>
					<dd class="goods-price">
						商城价： <em> ¥40.0 </em>
					</dd>
				</dl>
			</li>

		</ul>
	</div>

	<div class="tabs-panel sale-goods-list">
		<ul>

			<li>
				<dl>
					<dt class="goods-name">
						<a target="_blank" href="#">韩国进口X-5花生夹心巧克力棒盒装（24根）86...</a>
					</dt>
					<dd class="goods-thumb">
						<a target="_blank" href="#"> <img
							data-original="images/201507/thumb_${ctx}/statics/images/26_thumb_G_1437505984631.jpg"
							src="${ctx}/statics/images/26_thumb_G_1437505984631.jpg"
							alt="韩国进口X-5花生夹心巧克力棒盒装（24根）864g" style="display: inline;">
						</a>
					</dd>
					<dd class="goods-price">
						商城价： <em> ¥0.0 </em>
					</dd>
				</dl>
			</li>

			<li>
				<dl>
					<dt class="goods-name">
						<a target="_blank" href="#">优雅100 经典设计款全棉斜纹印花四件套</a>
					</dt>
					<dd class="goods-thumb">
						<a target="_blank" href="#"> <img
							data-original="images/201507/thumb_${ctx}/statics/images/139_thumb_G_1437528892306.jpg"
							src="${ctx}/statics/images/139_thumb_G_1437528892306.jpg"
							alt="优雅100 经典设计款全棉斜纹印花四件套" style="display: inline;">
						</a>
					</dd>
					<dd class="goods-price">
						商城价： <em> ¥189.0 </em>
					</dd>
				</dl>
			</li>

			<li>
				<dl>
					<dt class="goods-name">
						<a target="_blank" href="#">LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔...</a>
					</dt>
					<dd class="goods-thumb">
						<a target="_blank" href="#"> <img
							data-original="images/201507/thumb_${ctx}/statics/images/137_thumb_G_1437528855059.jpg"
							src="${ctx}/statics/images/137_thumb_G_1437528855059.jpg"
							alt="LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔斯基" style="display: inline;">
						</a>
					</dd>
					<dd class="goods-price">
						商城价： <em> ¥399.0 </em>
					</dd>
				</dl>
			</li>

			<li>
				<dl>
					<dt class="goods-name">
						<a target="_blank" href="#">雅鹿全棉四件套纯棉套件床上用品 回忆蓝 1.8米...</a>
					</dt>
					<dd class="goods-thumb">
						<a target="_blank" href="#"> <img
							data-original="images/201507/thumb_${ctx}/statics/images/140_thumb_G_1437528915082.jpg"
							src="${ctx}/statics/images/140_thumb_G_1437528915082.jpg"
							alt="雅鹿全棉四件套纯棉套件床上用品 回忆蓝 1.8米床" style="display: inline;">
						</a>
					</dd>
					<dd class="goods-price">
						商城价： <em> ¥333.0 </em>
					</dd>
				</dl>
			</li>

			<li>
				<dl>
					<dt class="goods-name">
						<a target="_blank" href="#">苹果（Apple）iPhone 6 (A1586...</a>
					</dt>
					<dd class="goods-thumb">
						<a target="_blank" href="#"> <img
							data-original="images/201507/thumb_${ctx}/statics/images/100_thumb_G_1437523484060.jpg"
							src="${ctx}/statics/images/100_thumb_G_1437523484060.jpg"
							alt="苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机"
							style="display: inline;">
						</a>
					</dd>
					<dd class="goods-price">
						商城价： <em> ¥4888.0 </em>
					</dd>
				</dl>
			</li>

		</ul>
	</div>

</div>

<script type="text/javascript"
	src="${ctx}/statics/js/indexPrivate.min.js"></script>
<script type="text/javascript" src="${ctx}/statics/js/user.js"></script>
<div class="right-sidebar-con">
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
							<span class="ECS_CARTINFO"><form id="formCart"
									name="formCart" method="post"
									action="http://b2b2c.wygk.cn/flow.php">
									<span class="cart_num">0</span>
									<div class="sidebar-cart-box">
										<h3 class="sidebar-panel-header">
											<a href="#"><i class="cart-icon"></i><em class="title">购物车</em></a>
											<span class="close-panel"></span>
										</h3>
										<div class="cart-panel-main">
											<div class="cart-panel-content" style="height: 883px;">
												<div class="tip-box">
													<i class="tip-icon"></i>
													<div class="tip-text">
														您的购物车里什么都没有哦<br> <a class="main-color" href="#">再去看看吧</a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<script type="text/javascript">
										function deleteCartGoods(rec_id) {
											Ajax.call('delete_cart_goods.php',
													'id=' + rec_id,
													deleteCartGoodsResponse,
													'POST', 'JSON');
										}

										/**
										 * 接收返回的信息
										 */
										function deleteCartGoodsResponse(res) {
											if (res.error) {
												alert(res.err_msg);
											} else {
												$('.ECS_CARTINFO').html(
														res.content);
												$('.cart-panel-content')
														.height(
																$(window)
																		.height() - 90);
											}
										}
									</script>
								</form> </span>
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
					<li class="quick-area"><a class="quick-links-a" href="#"><i
							class="customer-service"></i></a>
						<div class="sidebar-service quick-sidebar">
							<i class="arrow-right"></i>

							<div class="customer-service customer-service-online">
								<a target="_self" href="#"><span class="icon-online"></span>在线客服</a>
							</div>
							<div class="customer-service">
								<a target="_blank" href="#"><span class="icon-qq"></span>在线客服</a>
							</div>
							<div class="customer-service">
								<a target="_blank" href="#"><span class="icon-ww"></span>在线客服</a>
							</div>
						</div></li>
					<li class="quick-area"><a class="quick-links-a" href="#"><i
							class="qr-code"></i></a>
						<div class="sidebar-code quick-sidebar">
							<i class="arrow-right"></i> <img
								src="${ctx}/statics/images/weixin.jpg">
						</div></li>
					<li class="returnTop" style="display: list-item;"><a href="#"><i
							class="top"></i></a>
						<div class="popup">
							返回顶部 <i class="arrow-right"></i>
						</div></li>
				</ul>
			</div>
		</div>
		<div class="">

			<div class="right-sidebar-panels animate-out" style="z-index: 1;">
				<h3 class="sidebar-panel-header">
					<a href="#"><i class="bonus-icon"></i><em class="title">红包</em></a>
					<span class="close-panel"></span>
				</h3>
				<div class="bonus-panel-main">
					<div class="bonus-panel-content" style="height: 933px;">
						<script type="text/javascript">
							function fun(type_id, no_have_val) {
								no_have = (typeof (no_have_val) == "undefined" ? 0
										: no_have_val)
								Ajax.call('user.php?act=user_bonus', 'id='
										+ type_id + '&no_have=' + no_have,
										bounsResponse, 'GET', 'JSON');
							}

							function bounsResponse(result) {
								$('.pop-compare,.pop-mask').show();
								$('.pop-compare .pop-text')
										.html(result.message);
								$('.pop-compare')
										.css(
												{
													'top' : ($(window).height() - $(
															'.pop-compare')
															.height()) / 2
												});
							}
						</script>
						<div class="bonus-list"></div>
					</div>
				</div>
			</div>

			<div class="ECS_CARTINFO right-sidebar-panels animate-out"
				style="z-index: 1;">
				<form id="formCart" name="formCart" method="post" action="">
					<span class="cart_num">0</span>
					<div class="sidebar-cart-box">
						<h3 class="sidebar-panel-header">
							<a href="#"><i class="cart-icon"></i><em class="title">购物车</em></a>
							<span class="close-panel"></span>
						</h3>
						<div class="cart-panel-main">
							<div class="cart-panel-content" style="height: 883px;">
								<div class="tip-box">
									<i class="tip-icon"></i>
									<div class="tip-text">
										您的购物车里什么都没有哦<br> <a class="main-color" href="#">再去看看吧</a>
									</div>
								</div>
							</div>
						</div>
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
								$('.cart-panel-content').height(
										$(window).height() - 90);
							}
						}
					</script>
				</form>
			</div>

			<div class="right-sidebar-panels animate-out" style="z-index: 1;">
				<h3 class="sidebar-panel-header">
					<a href="#"><i></i><em class="title">我的足迹</em></a> <span
						class="close-panel"></span>
				</h3>
				<div class="sidebar-panel-main">
					<div class="sidebar-panel-content">
						<div class="history-panel">
							<ul>
								<li>
									<div class="p-img">
										<a target="_blank" href="#"><img
											src="${ctx}/statics/images/49_thumb_G_1437517210470.jpg"
											alt="安琦诺 夏装新品孕妇装 韩版休闲外出服喂奶衣套装"></a>
									</div>
									<div class="p-name">
										<a target="_blank" href="#">安琦诺 夏装新品孕妇装 韩版休闲外出服喂奶衣套装</a>
									</div>
									<div class="p-comm">
										<span class="p-price main-color">¥128.0</span>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>
<div class="pop-main pop-compare">
	<div class="pop-header">
		<span>温馨提示</span> <a class="pop-close" href="#"></a>
	</div>
	<div class="pop-con">
		<i class="pop-icon"></i>
		<p class="pop-text"></p>
		<a href="#">确定</a> <a href="#">取消</a>
	</div>
</div>
<div class="pop-main pop-compare-small">
	<div class="pop-header">
		<span>温馨提示</span> <a class="pop-close" href="#"></a>
	</div>
	<div class="pop-con">
		<i class="pop-icon"></i>
		<p class="pop-text"></p>
		<a href="#">关闭</a>
	</div>
</div>
<div id="tell-me-result" class="tell-me-form" style="display: none;">
	<div class="pop-header">
		<span>温馨提示</span> <a href="#"></a>
	</div>
	<div class="tell-me-content">
		<div class="tell-me-result">
			<div class="result-icon"></div>
			<div class="result-text">
				<div class="title"></div>
				<div class="bottom">
					<span onclick="javascript:closeDiv1();" class="cancel-btn">关闭</span>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="pop-mask"></div>
<div class="pop-main pop-login" style="top: 258.5px;">
	<div class="pop-header">
		<span>您尚未登录</span> <a class="pop-close" href="#"></a>
	</div>
	<div class="pop-con">
		<form name="formLogin" action="http://b2b2c.wygk.cn/user.php"
			method="post" onsubmit="return user_login();">
			<div class="form">
				<div class="mt">
					<h2>用户登陆</h2>
					<a href="#"><span class="text">立即注册</span><i class="icon"></i></a>
				</div>
				<div class="mc">
					<div class="msg-wrap">
						<div class="msg-error">
							<i class="msg-icon"></i><span id="msg-error-text"
								class="msg-error-text"></span>
						</div>
					</div>
					<div class="item item-name">
						<i class="icon"></i> <input name="username" id="username"
							type="text" class="text" value="" tabindex="1"
							placeholder="手机号/用户名/邮箱">
					</div>
					<div class="item item-password">
						<i class="icon"></i> <input type="password" name="password"
							id="password" class="text" value="" tabindex="2" placeholder="密码">
					</div>
					<div class="item item-authcode" id="o-authcode">
						<div class="item-detail fl">
							<i class="icon"></i> <input type="text" id="authcode"
								name="captcha" class="text text-1" tabindex="3"
								placeholder="验证码">
						</div>
						<label class="img fl">
							src="${ctx}/statics/images/captcha.php" alt="captcha"
							style="vertical-align: middle;cursor: pointer;"
							onclick="this.src=&#39;captcha.php?is_login=1&amp;&#39;+Math.random()">
						</label>
					</div>
					<div class="safety" id="autoentry">
						<input type="checkbox" value="1" name="remember" id="remember"
							class="checkbox"> <label for="remember" class="mar-b">请保存我这次的登录信息</label>
						<a class="forget_password fr" href="#">忘记密码？</a>
					</div>
					<div class="login-btn">
						<input type="hidden" name="act" value="act_login"> <input
							type="hidden" name="back_act" value=""> <input
							type="submit" name="submit" class="btn-img" id="loginsubmit"
							value="立即登录">
					</div>
					<div class="item-coagent">
						<a href="#"><i class="weixin"></i>微信</a> <a href="#"><i
							class="qq"></i>QQ</a> <a href="#"><i class="sina"></i>新浪</a> <a
							href="#"><i class="alipay"></i>支付宝</a>
					</div>
				</div>
			</div>
		</form>
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
	$('.cart-panel-content').height($(window).height() - 90);
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
<div class="site-footer">
	<div class="footer-service">
		<div class="w1210">
			<ul class="list-service clearfix">
				<li><a class="ic1" rel="nofollow" href="#"><i></i><strong>1小时快修服务</strong></a>
				</li>
				<li><a class="ic2" rel="nofollow" href="#"><i></i><strong>7天无理由退货</strong></a>
				</li>
				<li><a class="ic3" rel="nofollow" href="#"><i></i><strong>15天免费换货</strong></a>
				</li>
				<li><a class="ic4" rel="nofollow" href="#"><i></i><strong>满150元包邮</strong></a>
				</li>
				<li><a class="ic5" rel="nofollow" href="#"><i></i><strong>460余家售后网点</strong></a>
				</li>
			</ul>
		</div>
	</div>
	<div class="footer-related">
		<div class="footer-article w1210">
			<dl class="col-article col-article-first">
				<dt>新手上路</dt>
				<dd>
					<a rel="nofollow" href="#">售后流程</a>
				</dd>
				<dd>
					<a rel="nofollow" href="#">购物流程</a>
				</dd>
				<dd>
					<a rel="nofollow" href="#">订购方式</a>
				</dd>
				<dd>
					<a rel="nofollow" href="#">在线支付</a>
				</dd>
				<dd>
					<a rel="nofollow" href="#">公司转账</a>
				</dd>
			</dl>
			<dl class="col-article ">
				<dt>配送方式</dt>
				<dd>
					<a rel="nofollow" href="#">货到付款区域</a>
				</dd>
				<dd>
					<a rel="nofollow" href="#">配送支付查询</a>
				</dd>
				<dd>
					<a rel="nofollow" href="#">支付方式说明</a>
				</dd>
				<dd>
					<a rel="nofollow" href="#">如何送礼</a>
				</dd>
				<dd>
					<a rel="nofollow" href="#">Global Shipping</a>
				</dd>
			</dl>
			<dl class="col-article ">
				<dt>购物指南</dt>
				<dd>
					<a rel="nofollow" href="#">常见问题</a>
				</dd>
				<dd>
					<a rel="nofollow" href="#">订购流程</a>
				</dd>
				<dd>
					<a rel="nofollow" href="#">注册新会员</a>
				</dd>
				<dd>
					<a rel="nofollow" href="#">团购/机票</a>
				</dd>
				<dd>
					<a rel="nofollow" href="#">联系客服</a>
				</dd>
			</dl>
			<dl class="col-article ">
				<dt>售后服务</dt>
				<dd>
					<a rel="nofollow" href="#">退换货原则</a>
				</dd>
				<dd>
					<a rel="nofollow" href="#">售后服务保证</a>
				</dd>
				<dd>
					<a rel="nofollow" href="#">换货流程</a>
				</dd>
				<dd>
					<a rel="nofollow" href="#">退款说明</a>
				</dd>
				<dd>
					<a rel="nofollow" href="#">返修/退换货</a>
				</dd>
			</dl>
			<dl class="col-article ">
				<dt>关于我们</dt>
				<dd>
					<a rel="nofollow" href="#">网站故障报告</a>
				</dd>
				<dd>
					<a rel="nofollow" href="#">选机咨询</a>
				</dd>
				<dd>
					<a rel="nofollow" href="#">投诉与建议</a>
				</dd>
				<dd>
					<a rel="nofollow" href="#">节能补贴</a>
				</dd>
				<dd>
					<a rel="nofollow" href="#">关于我们</a>
				</dd>
			</dl>
			<dl class="col-article">
				<dt>服务支持</dt>
				<dd>售前咨询 020-34506590</dd>
				<dd>售后咨询 020-34506590</dd>
				<dd>客服 QQ 38306293</dd>
				<dd>工作时间 9：00-17：30</dd>
			</dl>
		</div>
		<div class="footer-info clearfix">
			<div class="info-text">

				<p>
					友情链接： <a href="#">网软志成</a><span class="sep">|</span> <a href="#">阿里巴巴</a><span
						class="sep">|</span> <a href="#">百度</a><span class="sep">|</span>
					<a href="#">腾讯</a><span class="sep">|</span> <a href="#">网易</a><span
						class="sep">|</span> <a href="#">京东商城</a><span class="sep">|</span>
					<a href="#">天猫商城</a><span class="sep">|</span> <a href="#">支付宝</a><span
						class="sep">|</span> <a href="#">搜狐</a><span class="sep">|</span>
					<a href="#">优酷网</a><span class="sep">|</span> <a href="#">新浪</a><span
						class="sep">|</span> <a href="#">凤凰网</a><span class="sep">|</span>
					<a href="#">58同城</a><span class="sep">|</span> <a href="#">搜房网</a><span
						class="sep">|</span> <a href="#">世纪佳缘</a><span class="sep">|</span>
					<a href="#">央视网</a><span class="sep">|</span> <a href="#">新华网</a><span
						class="sep">|</span> <a href="#">苏宁易购</a>
				</p>
				<p class="nav_bottom">
					<a href="#">关于我们</a><em>|</em> <a href="#">联系我们</a><em>|</em> <a
						href="#">商家入驻</a><em>|</em> <a href="#">版权证书</a><em>|</em> <a
						href="#">手机商城</a><em>|</em> <a href="#">销售联盟</a><em>|</em> <a
						href="#">商城社区</a><em>|</em> <a href="#">企业文化</a><em>|</em> <a
						href="#">帮助中心</a><em>|</em> <a href="#">留言板</a><em
						style="display: none">|</em> ICP备案证书号: <a href="#">粤ICP备06122404号</a>
				</p>
				<p>
					<a href="#">© 2005-2018 网软志成B2B2C电商平台系统多用户商城系统模板 版权所有，并保留所有权利。</a>
					<a href="#">广州市天河区国家软件园产业基地8栋502 </a> <a href="#"> Tel:
						020-34506590 </a> <a href="#"> E-mail: 38306293@qq.com </a>
				</p>
				<p>
					<script type="text/javascript">
						var cnzz_protocol = (("https:" == document.location.protocol) ? " https://"
								: " http://");
						document
								.write(unescape("%3Cspan id='cnzz_stat_icon_1000200717'%3E%3C/span%3E%3Cscript src='"
										+ cnzz_protocol
										+ "s22.cnzz.com/z_stat.php%3Fid%3D1000200717%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));
					</script>
					<span id="cnzz_stat_icon_1000200717"><a href="#"><img
							border="0" hspace="0" vspace="0"
							src="${ctx}/statics/images/pic1.gif"></a></span>
					<script src="${ctx}/statics/images/z_stat.php"
						type="text/javascript"></script>
					<script src="${ctx}/statics/images/core.php" charset="utf-8"
						type="text/javascript"></script>
					<a href="#"><img src="${ctx}/statics/images/pa" height="16"
						border="0" alt="QQ" /> 394223545</a> <a href="#"><img
						src="${ctx}/statics/images/online.ww" width="16" height="16"
						border="0" alt="淘宝旺旺" />38306293</a>
				</p>
			</div>
		</div>
	</div>
</div>
<table cellspacing="0" cellpadding="0" width="100%" align="center"
	border="0">
	<tbody>

		<tr>
			<td bgcolor="#555555">
				<table cellspacing="0" cellpadding="0" width="100%" align="center"
					border="0">
					<tbody>
						<tr>
							<td align="middle" height="22"><font color="#ffffff"><span>电话：020-34506590
										34700400 34709708 13719472523 13527894748</span> </font></td>
						</tr>
						<tr>
							<td align="middle" height="22"><font color="#ffffff">微信号：13719472523&nbsp;&nbsp;13527894748&nbsp;&nbsp;
									联系邮箱：38306293@qq.com</font></td>
						</tr>
						<tr>
							<td align="middle" height="22"><font color="#ffffff">公司地址：广州市天河区国家软件园产业基地8栋502
									软著登字第0830353号 登记号 2014SR161116 </font></td>
						</tr>
						<tr>
							<td align="middle" height="22"><font color="#ffffff"><span
									class="css2">客服QQ:290116505</span> <a target="blank" href="#"><img
										border="0" src="${ctx}/statics/images/qqonline.gif"
										alt="网软志成客服为你服务"></a> <span class="css2">38306293<a
										target="blank" href="#"><img border="0"
											src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>417586492
								</span> <font face="Verdana"> <a target="blank" href="#"><img
											border="0" src="${ctx}/statics/images/qqonline.gif"
											alt="网软志成客服为你服务"></a>
								</font><span class="css2">657248708</span> <font face="Verdana">
										<a target="blank" href="#"><img border="0"
											src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>
								</font><br> <span class="css2">客服QQ:454882888</span> <font
									face="Verdana"> <a target="blank" href="#"><img
											border="0" src="${ctx}/statics/images/qqonline.gif"
											alt="网软志成客服为你服务"></a>
								</font><span class="css2">394223545</span> <font face="Verdana">
										<a target="blank" href="#"><img border="0"
											src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>
								</font><span class="css2">469648611</span> <font face="Verdana">
										<a target="blank" href="#"><img border="0"
											src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>
								</font><span class="css2">314730679</span> <font face="Verdana">
										<a target="blank" href="#"><img border="0"
											src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>
								</font> </font></td>
						</tr>
						<tr>
							<td height="22" align="middle"><font color="#ffffff">Copyright(c)2000-2030
									www.wrzc.net <span>广州网软志成信息科技有限公司</span> 版权所有
							</font> <a href="#"> <font color="#FF0000">进入后台管理</font>
							</a></td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
	</tbody>
</table>
<img src="${ctx}/statics/images/cron.php" alt=""
	style="width: 0px; height: 0px;" />
<script type="text/javascript">
	Ajax.call('api/okgoods.php', '', '', 'GET', 'JSON');
	$("img").lazyload({
		effect : "fadeIn",
		skip_invisible : true,
		failure_limit : 20
	});
</script>
<script type="text/javascript" src="${ctx}/statics/js/base.js"></script>
<script language="JavaScript" src="js/347107.js" type="text/javascript"
	charset="utf-8"></script>
<script language="javascript" src="js/url.js" charset="utf-8"
	type="text/javascript"></script>
<script language="javascript" src="js/347107_code.js" charset="utf-8"
	type="text/javascript"></script>
<style type="text/css">
.kfpopupdiv img {
	display: inline;
}

.kfoutbox .kfbox .kf54kefuqqbottom img {
	margin: 0px;
	padding: 0px;
	clear: both;
	float: left;
}
</style>
<link rel="stylesheet" href="${ctx}/statics/css/index.css" />
<style type="text/css">
.kfoutbox {
	_position: absolute;
	right: 42px;
	kf54kefuqqtop: 0px;
}

.kfboxmenu {;
	display: none;
}
/**/
</style>
<%-- 		<div id="kfoutbox" class="kfoutbox" style="top: 2193px;">
			<div id="kfinbox" class="kfbox">
				<div class="kf54kefuqqtop"><img src="${ctx}/statics/images/top.gif">
					<div id="kfboxclose" class="kfboxclose">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
				</div>
				<div class="kf54kefuqqbg">
					<div class="kefu54kefunetgroup">
						<div style="text-align:center;"> <span style="line-height:1.5;"><strong>QQ咨询销售</strong></span> </div>
					</div>
					<div class="kefu54kefunetli">
						<div class="kefu54kefunetpicimgcenter">
							<a target="_blank"  href="#"><img src="${ctx}/statics/images/101.gif" vspace="4" border="0" align="absmiddle" title="咨询QQ:394223545"></a>
						</div>
					</div>
					<div class="kefu54kefunetli">
						<div class="kefu54kefunetpicimgcenter">
							<a target="_blank"href="#"><img src="${ctx}/statics/images/101.gif" vspace="4" border="0" align="absmiddle" title="咨询QQ:38306293"></a>
						</div>
					</div>
					<div class="kefu54kefunetli">
						<div class="kefu54kefunetpicimgcenter">
							<a target="_blank" href="#"><img src="${ctx}/statics/images/101.gif" vspace="4" border="0" align="absmiddle" title="咨询QQ:469648611"></a>
						</div>
					</div>
					<div class="kefu54kefunetli">
						<div class="kefu54kefunetpicimgcenter">
							<a target="_blank"href="#"><img src="${ctx}/statics/images/101.gif" vspace="4" border="0" align="absmiddle" title="咨询QQ:454882888"></a>
						</div>
					</div>
					<div class="kefu54kefunetgroup">
						<div style="text-align:center;"> <span style="line-height:1.5;color:#E56600;"><strong>售前咨询热线</strong></span></div>
					</div>
					<div class="kefu54kefunetgroup">
						<p style="text-align:center;"> 020-34506590</p>
					</div>
					<div class="kefu54kefunetgroup">
						<div style="text-align:center;"> <span style="line-height:1.5;">020-34709708</span></div>
					</div>
					<div class="kefu54kefunetgroup">
						<div style="text-align:center;"> <span style="line-height:1.5;color:#E56600;"><strong>售后咨询热线</strong></span></div>
					</div>
					<div class="kefu54kefunetgroup">
						<div style="text-align:center;"> 020-34700400</div>
					</div>
					<div class="kefu54kefunetli">
						<div class="kefu54kefunetmycode" align="center">src="${ctx}/statics/images/3082681_pic.jpg"></div>
					</div>
					<div class="kefu54kefunetgroup">
						<div style="text-align:center;"> <span style="line-height:1.5;color:#E56600;"><span style="color:#000000;">扫一扫二维码</span><br></span>
							<p> <span style="line-height:1.5;color:#000000;">与我微信畅聊</span> </p>
						</div>
					</div>
					<div style="clear: both;"></div>
				</div>
				<div style="clear: both;"></div>
				<div class="kf54kefuqqbottom">
					<a href="#"><img src="${ctx}/statics/images/bottom.gif"></a>
				</div>
			</div>
			<div id="kfboxmenu" class="kfboxmenu kfboxmenuright"></div>
		</div> --%>

<style type="text/css">
.kfpopupdiv {
	position: fixed;
	_position: absolute;
	visibility: visible;
	margin: 0 auto;
	top: 40%;
	left: 50%;
	left: 42% !important;
	clear: both;
	display: none;
}
</style>



<div class="tell-me-form"
	style="display: none; left: 701.5px; top: 295.5px;" id="tell-me-table">
	<div class="pop-header">
		<span>到货通知</span> <a href="#"></a>
	</div>
	<div class="tell-me-content">
		<table cellpadding="0" cellspacing="0" width="100%" border="0">
			<tbody>
				<tr>
					<td colspan="2" align="left">
						<div class="blank10"></div>
						<div class="notice-note">
							<p class="main-color" id="rgoods_name"></p>
							当商品进行补货时，我们将以短信、邮件的形式通知您，最多发送一次，不会对您造成干扰。
						</div>
					</td>
				</tr>
				<tr>
					<td width="30%" align="right"><font class="main-color">*</font>数量：</td>
					<td align="left"><input type="text" value="1" id="book-number"
						class="inputBg">
						<div class="tell-me-notice">
							<i class="notice-icon"></i><span class="notice-text num-notice"></span>
						</div></td>
				</tr>
				<tr>
					<td align="right"><font class="main-color">*</font>手机号码：</td>
					<td align="left"><input type="text" value="" id="phone-num"
						class="inputBg">
						<div class="tell-me-notice">
							<i class="notice-icon"></i><span class="notice-text phone-notice"></span>
						</div></td>
				</tr>
				<tr>
					<td align="right"><font class="main-color">*</font>电子邮箱：</td>
					<td align="left"><input type="text" value=""
						id="arrival-email" class="inputBg">
						<div class="tell-me-notice">
							<i class="notice-icon"></i><span class="notice-text email-notice"></span>
						</div></td>
				</tr>
				<tr>
					<td colspan="2" align="center" style="padding: 20px 0 30px;">
						<input type="button" value="马上提交" onclick="tell_me1()"
						class="sure-btn">
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<div class="elevator" style="visibility: visible;">
	<div class="elevator-floor" style="transform: scale(1); opacity: 1;">
		<a class="smooth" href="#"> <b class="fs">1F</b> <em
			class="fs-name">家电</em> <i class="fs-line"></i>
		</a> <a class="smooth active" href="#"> <b class="fs">2F</b> <em
			class="fs-name">数码</em> <i class="fs-line"></i>
		</a> <a class="smooth" href="#"> <b class="fs">3F</b> <em
			class="fs-name">家居</em> <i class="fs-line"></i>
		</a> <a class="smooth" href="#"> <b class="fs">4F</b> <em
			class="fs-name">服饰</em> <i class="fs-line"></i>
		</a> <a class="smooth" href="#"> <b class="fs">5F</b> <em
			class="fs-name">个护</em> <i class="fs-line"></i>
		</a> <a class="smooth" href="#"> <b class="fs">6F</b> <em
			class="fs-name">酒饮</em> <i class="fs-line"></i>
		</a> <a class="smooth" href="#"> <b class="fs">7F</b> <em
			class="fs-name">母婴</em> <i class="fs-line"></i>
		</a> <a class="smooth" href="#"> <b class="fs">8F</b> <em
			class="fs-name">食品</em>
		</a>
	</div>
</div>
<script type="text/javascript" src="${ctx}/statics/js/home_index.js"></script>
<script type="text/javascript">
	$(".brand-con").hover(function() {
		var num = $(this).find("li").length;
		if (num > 10) {
			$(this).find(".brand-btn").fadeTo('fast', 0.4);
		}
	}, function() {
		$(this).find(".brand-btn").fadeTo('fast', 0);
	})
</script>
</body>

</html>