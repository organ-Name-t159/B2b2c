<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<div class="header w990">
	<div class="mall-logo">
		<a href="${ctx}/product/index.html"><img
			src="${ctx}/statics/images/logo.gif"></a>
	</div>
</div>
<div class="block">
	<div class="flowstep">
	<ol class="flowstep-5">
		<li class="step-first">
			<div class="step-done">
				<div class="step-name">查看购物车</div>
				<div class="step-no"></div>
			</div>
		</li>
		<li>
			<div class="step-done">
				<div class="step-name">拍下商品</div>
				<div class="step-no"></div>
			</div>
		</li>
		<li>
			<div class="step-done">
				<div class="step-name">付款</div>
				<div class="step-no"></div>
			</div>
		</li>
		<li>
			<div class="step-name">确认收货</div>
			<div class="step-no">4</div>
		</li>
		<li class="step-last">
			<div class="step-name">评价</div>
			<div class="step-no">5</div>
		</li>
	</ol>
</div>
	<div class="flowBox checkBox_jm" style="margin: 10px auto 70px auto;">
		<h6
			style="text-align: center; height: 30px; line-height: 30px; color: #C81623;">订单提交成功！</h6>
		<table width="99%" align="center" border="0" cellpadding="15"
			cellspacing="0" bgcolor="#fff" class="split_order"
			style="margin: 20px auto;">
			<tbody>
				<tr>
					<td style="padding-bottom: 10px;">
						<table width="100%" align="left" cellpadding="0" cellspacing="0"
							bgcolor="#fff"
							style="border: 1px solid #eeeeee; border-bottom: none">
							<tbody>
								<tr>
									<td
										style="border-bottom: 1px solid #eeeeee; padding-left: 15px; background: #FAFAFA; width: 445px;"
										height="30">订单号：${serialNumber}</td>
									<td
										style="border-bottom: 1px solid #eeeeee; background: #FAFAFA">${pWay.wayName}：¥${monetAll}</td>
									<td
										style="border-bottom: 1px solid #eeeeee; background: #FAFAFA">${dWay.dbtName}&nbsp;&nbsp;&nbsp;${dTime.timeName}</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
				<c:if test="${pWay.id==2}">
				<tr>
					<td align="center" style="padding-bottom: 30px;">
						<div style="text-align: center">
						<a href="${ctx}/car/jieKou.html?WIDout_trade_no=${serialNumber}&WIDtotal_amount=${monetAll}&WIDsubject=${serialNumber}&WIDbody=${dTime.timeName}" 
						class="main-btn main-btn-large">去支付</a>
							<!-- <input type="button"
								onclick=""
								value="去支付" class="main-btn main-btn-large"> -->
						</div>
					</td>
				</tr>	
				</c:if>
				<c:if test="${pWay.id==1}">
				<tr>
					<td align="center" style="padding-bottom: 30px;">
						<div style="text-align: center">
						<a href="${ctx}/product/indexStatus.html" class="main-btn main-btn-large">完成</a>
							
						</div>
					</td>
				</tr>	
				</c:if>
				
			</tbody>
		</table>
		<style>
table.split_order tbody {
	background: #fff
}

.submit_back a {
	color: #F00;
}
</style>
</div>


</div>

