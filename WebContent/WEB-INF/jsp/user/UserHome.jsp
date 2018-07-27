<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
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
		<div class="account">
			<div class="notice">
				<i></i> <span>用户中心公告：用户中心公告！</span>
			</div>
			<div class="money">
				<ul class="clearfix">
					<li class="first">
						<div class="title">
							<span>账号余额</span>
						</div>
						<div class="pic">
							<a href="##"><i class="user_bg"></i></a>
						</div>
						<p>
							<a href="##">暂未启用</a>
						</p>
					</li>
					<li class="second">
						<div class="title">
							<span>红包</span>
						</div>
						<div class="pic">
							<a href="##"><i class="user_bg"></i></a>
						</div>
						<p>
							<a href="##"> 3</a>
						</p>
					</li>
					<li class="third">
						<div class="title">
							<span>可用积分</span>
						</div>
						<div class="pic">
							<i class="user_bg"></i>
						</div>
						<p>
							<a href="##">14769积分</a>
						</p>
					</li>
				</ul>
			</div>
			<div class="security">
				<div class="improve">
					<p>账户安全</p>
					<span class="improve-name"> 危险 </span> <i class="danger"><em></em></i>
					<a href="##">提升 &gt;</a>
				</div>
				<div class="safe-info clearfix">
					<div class="safe-type phone">
						<i class="tit-icon"></i> <span class="safe-name">手机：</span> <a
							class="res" href="##">未验证</a>
					</div>
					<div class="safe-type mail">
						<i class="tit-icon"></i> <span class="safe-name">邮箱：</span> <a
							class="res" href="##">未验证</a>
					</div>
				</div>
			</div>
			<div class="middle order">
				<div class="line1 clearfix">
					<div class="title">
						<i></i><span>交易提醒</span>
					</div>
					<div class="status">
						<ul>
							<li><a href="##">未确认<span>3</span></a><i></i></li>
							<li><a href="##">待付款<span>0</span></a><i></i></li>
							<li><a href="##">待评价<span>1</span></a></li>
						</ul>
					</div>
					<a class="more" href="##">查看全部订单 &gt;</a>
				</div>

				<div class="proListUc">
					<ul class="listLine clearfix">
						<li>
							<ul class="img clearfix">
								<li><a href="##"> <img
										src="${ctx}/statics/images/100_thumb_G_1437523484060.jpg"
										alt="苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机">

								</a> <span class="order-num">1</span></li>
							</ul>
						</li>
						<li class="name"><a href="##">苹果（Apple）iPhone 6 (A1586)
								16GB 金色 移动联通电信4G手机</a></li>
						<li class="attr">颜色:白色</li>
						<li class="type"><a class="none" href="##">取消订单</a><a
							class="cancel-order" href="##">取消订单</a></li>
						<li class="check"><a href="##">查看</a></li>
					</ul>
					<ul class="listLine clearfix">
						<li>
							<ul class="img clearfix">
								<li><a href="##"> <img
										src="${ctx}/statics/images/124_thumb_G_1437525834721.jpg"
										alt="Haier/海尔 BCD-252WDBD 252升 无霜风冷 冷藏冷冻家用三门冰箱">

								</a> <span class="order-num">1</span></li>
							</ul>
						</li>
						<li class="name"><a href="##">Haier/海尔 BCD-252WDBD 252升
								无霜风冷 冷藏冷冻家用三门冰箱</a></li>
						<li class="attr"></li>
						<li class="type"><a class="none" href="##">取消订单</a><a
							class="cancel-order" href="##">取消订单</a></li>
						<li class="check"><a href="##">查看</a></li>
					</ul>
					<ul class="listLine clearfix">
						<li>
							<ul class="img clearfix">
								<li><a href="##"> <img
										src="${ctx}/statics/images/110_thumb_G_1437523812526.jpg"
										alt="养生壶玻璃加厚分体保温电煎药壶全自动花茶壶隔水炖正品">

								</a> <span class="order-num">1</span></li>
							</ul>
						</li>
						<li class="name"><a href="##">养生壶玻璃加厚分体保温电煎药壶全自动花茶壶隔水炖正品</a>
						</li>
						<li class="attr"></li>
						<li class="type"><a class="none" href="##">取消订单</a><a
							class="cancel-order" href="##">取消订单</a></li>
						<li class="check"><a href="##">查看</a></li>
					</ul>
					<ul class="listLine clearfix">
						<li>
							<ul class="img clearfix">
								<li><a href="##"> <img
										src="${ctx}/statics/images/51_thumb_G_1437519866381.jpg"
										alt="高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装">

								</a> <span class="order-num">1</span></li>
							</ul>
						</li>
						<li class="name"><a href="##">高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装</a>
						</li>
						<li class="attr">颜色:银色 尺码:XL</li>
						<li class="type"><span style="color: #C81623">无效</span></li>
						<li class="check"><a href="##">查看</a></li>
					</ul>
				</div>


			</div>
			<div class="middle cart">
				<div class="line1 clearfix">
					<div class="title">
						<i></i><span>我的购物车</span>
					</div>
				</div>


				<div class="emptyFrame_cart">
					<i class="user_bg"></i><span>您的购物车里空空的，赶快去购物吧！</span>
				</div>


			</div>
			<div class="middle exchange">
				<div class="line1 clearfix">
					<div class="title">
						<i></i><span>积分兑换</span>
					</div>
					<a class="more" href="##">进入积分商城 &gt;</a>
				</div>


				<div class="exchangeList">
					<div class="colFrame">
						<ul class="clearfix">
						<style>
						.first img{
						width: 100%;
						height:80%;
						}
						
						
						</style>
							<li class="first"><a href="##"> <img
									src="${ctx}/statics/images/97_thumb_G_1437523257758.jpg"
									alt="除湿机家用抽湿机20B 地下室别墅吸湿器除湿器"> <span>14990积分</span>
							</a> <a href="##">除湿机家用抽湿机20B 地下室别墅吸湿器除湿器</a></li>
							<li class="first"><a href="##"> <img
									src="${ctx}/statics/images/100_thumb_G_1437523484060.jpg"
									alt="苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机"> <span>180000积分</span>
							</a> <a href="##">苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机</a></li>
							<li class="first"><a href="##"> <img
									src="${ctx}/statics/images/81_thumb_G_1437522277060.jpg"
									alt="伊利 味可滋（巧克力）奶昔乳饮品240ml*12盒"> <span>1990积分</span>
							</a> <a href="##">伊利 味可滋（巧克力）奶昔乳饮品240ml*12盒</a></li>
							<li class="first"><a href="##"> <img
									src="${ctx}/statics/images/102_thumb_G_1437523460978.jpg"
									alt="Polo衫男短袖 2015夏装男装短袖t恤 男士拼接撞色修身韩版潮"> <span>1560积分</span>
							</a> <a href="##">Polo衫男短袖 2015夏装男装短袖t恤 男士拼接撞色修身韩版潮</a></li>
						</ul>
					</div>
				</div>

			</div>
			<div class="middle history">
				<div class="line1 clearfix">
					<div class="title">
						<i></i><span>我的足迹</span>
					</div>
				</div>
				<div class="proListUc_history">
					<div class="colFrame">
						<ul style="left: 0px;" class="clearfix">
							<li class="first"><a href="##">
									<div class="mask"></div> <img
									src="${ctx}/statics/images/5_thumb_G_1437502904492.jpg"
									alt="半壳扇贝 扇贝肉 1000g/新鲜扇贝冷冻烧烤海鲜">
							</a> <a href="##">半壳扇贝 扇贝肉 1000g/新鲜扇贝冷冻烧烤海鲜</a>
								<p class="pri">￥49.30</p></li>
							<li class="first"><a href="##">
									<div class="mask"></div> <img
									src="${ctx}/statics/images/51_thumb_G_1437519866381.jpg"
									alt="高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装">
							</a> <a href="##">高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装</a>
								<p class="pri">￥199.00</p></li>
							<li class="first"><a href="##">
									<div class="mask"></div> <img
									src="${ctx}/statics/images/88_thumb_G_1437522788663.jpg"
									alt="家用静音办公室空调加湿器 香薰迷你大容量净化特价">
							</a> <a href="##">家用静音办公室空调加湿器 香薰迷你大容量净化特价</a>
								<p class="pri">￥100.00</p></li>
							<li class="first"><a href="##">
									<div class="mask"></div> <img
									src="${ctx}/statics/images/100_thumb_G_1437523484060.jpg"
									alt="苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机">
							</a> <a href="##">苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机</a>
								<p class="pri">￥4888.00</p></li>
							<li class="first"><a href="##">
									<div class="mask"></div> <img
									src="${ctx}/statics/images/122_thumb_G_1437525597541.jpg"
									alt="二级大2P智能云定频冷暖柜机空调">
							</a> <a href="##">二级大2P智能云定频冷暖柜机空调</a>
								<p class="pri">￥2245.00</p></li>
							<li class="first"><a href="##">
									<div class="mask"></div> <img
									src="${ctx}/statics/images/124_thumb_G_1437525834721.jpg"
									alt="Haier/海尔 BCD-252WDBD 252升 无霜风冷 冷藏冷冻家用三门冰箱">
							</a> <a href="##">Haier/海尔 BCD-252WDBD 252升 无霜风冷 冷藏冷冻家用三门冰箱</a>
								<p class="pri">￥3245.00</p></li>
							<li class="first"><a href="##">
									<div class="mask"></div> <img
									src="${ctx}/statics/images/200_thumb_G_1437534571298.jpg"
									alt="爱度AY800蓝牙音箱手机电脑迷你音响无线便携插卡低音炮 带蓝牙自拍 土豪金">
							</a> <a href="##">爱度AY800蓝牙音箱手机电脑迷你音响无线便携插卡低音炮 带蓝牙自拍 土豪金</a>
								<p class="pri">￥98.00</p></li>
							<li class="first"><a href="##">
									<div class="mask"></div> <img
									src="${ctx}/statics/images/202_thumb_G_1437534795824.jpg"
									alt="安索夫迷你电脑USB2.0小音箱可爱熊猫便携笔记本台式电脑音箱 音响">
							</a> <a href="##">安索夫迷你电脑USB2.0小音箱可爱熊猫便携笔记本台式电脑音箱 音响</a>
								<p class="pri">￥24.65</p></li>
							<li class="first"><a href="##">
									<div class="mask"></div> <img
									src="${ctx}/statics/images/231_thumb_G_1437587773545.jpg"
									alt="可爱卡通餐盘水果盘点心盘 盘子儿童托盘餐具6件套">
							</a> <a href="##">可爱卡通餐盘水果盘点心盘 盘子儿童托盘餐具6件套</a>
								<p class="pri">￥99.00</p></li>
							<li class="first"><a href="##">
									<div class="mask"></div> <img
									src="${ctx}/statics/images/_thumb_P_1438047501681.jpg"
									alt="包邮 新款户外军迷阿帕奇T恤 纯棉男款短袖半袖特价宽松">
							</a> <a href="##">包邮 新款户外军迷阿帕奇T恤 纯棉男款短袖半袖特价宽松</a>
								<p class="pri">￥274.00</p></li>
							<li class="first"><a href="##">
									<div class="mask"></div> <img
									src="${ctx}/statics/images/248_thumb_G_1455691419594.jpg"
									alt="巴肯特烤涮自助时尚汇">
							</a> <a href="##">巴肯特烤涮自助时尚汇</a>
								<p class="pri">￥56.10</p></li>
							<li class="first"><a href="##">
									<div class="mask"></div> <img src="##" alt="32">
							</a> <a href="##">32</a>
								<p class="pri">￥2.55</p></li>
						</ul>
					</div>
					<p class="more">
						<a href="##">继续购物 &gt;</a>
					</p>
				</div>


			</div>
			<script>
		/*第一种形式 第二种形式 更换显示样式*/
		function setTabCatGoods(name,cursel,n){
		for(i=1;i<=n;i++){
		var menu=document.getElementById(name+i);
		var con=document.getElementById("con_"+name+"_"+i);
		con.style.display=i==cursel?"block":"none";
		menu.className=i==cursel?"line1":"line2";
		}
		}
		</script>
			<div class="middle collect">
				<div class="line1" id="tab1"
					onmouseover="setTabCatGoods(&#39;tab&#39;,1,2)">
					<div class="title">
						<i></i><span>商品收藏</span>
					</div>
				</div>
				<div class="line2" id="tab2"
					onmouseover="setTabCatGoods(&#39;tab&#39;,2,2)">
					<div class="title">
						<i></i><span>店铺关注</span>
					</div>
				</div>
				<div style="height: 0px; line-height: 0px; clear: both"></div>
				<div class="tab_con" style="width: 100%">
					<div class="" id="con_tab_1">
						<div class="colList clearfix">
							<div class="colFrame">
								<ul style="left: 0px;" class="clearfix">

									<li class="first"><a href="##"> <img
											src="${ctx}/statics/images/32_thumb_G_1437506920994.jpg"
											alt="Lindt瑞士莲黑巧克力特醇排装德国进口 70%可可黑巧克力10块组合 特惠分享装"> <span>￥260.00</span>
									</a> <a href="##">Lindt瑞士莲黑巧克力特醇排装德国进口 70%可可黑巧克力10块组合 特惠分享装</a></li>
								</ul>
							</div>
							<p class="more">
								<a href="##">查看收藏的所有商品 &gt;</a>
							</p>
						</div>


					</div>
					<div id="con_tab_2" style="display: none">

						<div class="emptyFrame_shop">
							<i class="user_bg"></i><span>您的店铺收藏空空的，赶快去收藏店铺吧！</span>
						</div>


					</div>
				</div>
			</div>
		</div>
		<div class="box"></div>
	</div>
</div>
<div class="pop-main pop-compare">
	<div class="pop-header">
		<span>温馨提示</span> <a class="pop-close" href="##"></a>
	</div>
	<div class="pop-con">
		<i class="pop-icon"></i>
		<p class="pop-text" style="padding-top: 20px;">您确定要取消该订单吗？取消订单后，不能恢复。</p>
		<div class="pop-btn">
			<a href="##">确定</a><a class="cancel-btn">取消</a><span class="clear"></span>
		</div>
	</div>
</div>
<div class="pop-mask"></div>

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