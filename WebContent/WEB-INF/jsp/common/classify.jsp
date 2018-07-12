<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
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
					id="searchForm" action=""
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
				<a href="" class="menu-event main-bg-color"
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
												<a href="" target="_blank"
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
														<a href="#" target="_blank"
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
					<li><a class="nav" href="#" title="首页">首页</a></li>
					<li><a class="nav " href="#" title="食品生鲜">食品生鲜</a>
					</li>
					<li><a class="nav " href="#" title="店铺街">店铺街</a></li>
					<li><a class="nav " href="#"
						title="团购">团购</a></li>
					<li><a class="nav " href="#" title="预售">预售</a></li>
					<li><a class="nav " href="#" title="拍卖">拍卖</a></li>
					<li><a class="nav " href="#" title="礼包">礼包</a></li>
					<li><a class="nav " href="#" title="积分商城">积分商城</a>
					</li>
					<li><a class="nav " href="#" title="优惠活动">优惠活动</a>
					</li>
					<li><a class="nav " href="#" title="电商资讯">电商资讯</a>
					</li>
					<li><a class="nav " href="#" title="家用电器">家用电器</a>
					</li>
				</ul>
			</div>
		</div>
	</div>