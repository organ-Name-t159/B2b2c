<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<script>
var pay_balance_id = 4; //保存余额支付的id做为js全局变量
</script>

<script type="text/javascript" src="${ctx}/statics/js/shopping_flow.js"></script>

<div class="header w990">
	<div class="mall-logo">
		<a href="${ctx}/product/indexStatus.html"><img
			src="${ctx}/statics/images/logo.gif"></a>
	</div>
</div>
<div class="blank15"></div>
<div class="block_jm">

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
			<div class="step-name">付款</div>
			<div class="step-no">3</div>
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
<div id="bg" class="bg" style="display: none;"></div>
<script type="text/javascript" src="${ctx}/statics/js/region.js"></script>
<!-- <form action="#" method="post" name="theForm" id="theForm"onsubmit="return checkOrderForm(this)"> -->
	<script type="text/javascript">
				var flow_no_payment = "您必须选定一个支付方式。";
				var flow_no_shipping = "您必须选定一个配送方式。";
			</script>
	<div class="blank15"></div>
<div class="checkBox_jm clearfix">
	<div class="title">1 地址选择</div>
	<div class="address_jm" id="AddressList" >
		<ul>
		<c:forEach items="${requestScope.uAddress}" var="temp">
			<li onmouseover="showAddressEdit(this);"
				onmouseout="showAddressEdit(this);" onclick="Uaddress(${temp.id})">
				<div style="width: 100%; height: 100%;"
					onclick="selAddress(this, 63);">
					<table cellpadding="0" cellspacing="0" width="100%">
						<tbody>
							<tr>
								<td>${temp.consignee}<br>${temp.address}&nbsp;${temp.postcode},${temp.addressPhone}<br>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="edit_addr" id="address_edit_${temp.id-1}">
					<a href="javascript:void(0);" onclick="addressUpdate(${temp.id},'${temp.consignee}','${temp.address}',${temp.postcode},'${temp.addressPhone}')">修改</a> <a onclick="del_address_comfirm(${temp.id})">删除</a>
				</div>
			</li>
		</c:forEach>
			
		</ul>
		<div class="blank10"></div>
		<div class="address_jm_add" onclick="AddressEdit(0);">使用新地址</div>
	</div>
	<div id="popDiv" class="mydiv" style="display: none;">
			<div class="mydiv-l" id="PopAddressTitle">使用新地址</div>
			<div class="mydiv-r" onclick="javascript:closePopDiv()"></div>
			<div id="PopAddressCon">
				<table cellpadding="4" cellspacing="4" width="100%"
					style="clear: both;">
					<tbody>
						<tr>
							<td style="text-align: right; width: 13%"><font
								class="main-color">*</font>收件人</td>
							<td><input type="text" name="consignee" value=""
								class="input_addr2">
								<div class="required-notice fl">
									<i class="notice-icon"></i><span
										class="notice-text reciever-notice"></span>
								</div></td>
						</tr>
						
						<tr>
							<td style="text-align: right;"><font class="main-color">*</font>地址</td>
							<td><input type="text" name="address"
								class="input_addr1 inputMiddle" value="">
								<div class="required-notice">
									<i class="notice-icon"></i><span
										class="notice-text detail-address-notice"></span>
								</div></td>
						</tr>						
						<tr>
							<td style="text-align: right;">邮编</td>
							<td><input type="text" name="zipcode" class="input_addr3"
								value=""></td>
						</tr>
						<tr>
							<td style="text-align: right;"><font class="main-color">*</font>手机号码</td>
							<td><input type="text" name="mobile"
								class="input_addr2 input_addr2_t" value="">
							</td>
						</tr>
						<tr>
							<td></td>							
						</tr>
						<tr>
							<td></td>
							<td style="padding-top: 10px;"><input type="hidden"
								name="address_id" value=""> <input type="hidden"
								name="shipping_bian" value="0"> <input type="hidden"
								name="closediv" value="1"> <input type="button"
								class="BonusButton" value=" 确定 " onclick="submitAddress()">&nbsp;&nbsp;<input
								type="button" class="Button_reset" value=" 取消 "
								onclick="closePopDiv()"></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
<script type="text/javascript">
	function AddressEdit(aid) {
		if(aid) {
			document.getElementById('PopAddressTitle').innerHTML = '修改地址';
			document.getElementById('popDiv').style.display = 'block';
			
		} else {
			document.getElementById('PopAddressTitle').innerHTML = '使用新地址';
			document.getElementById('popDiv').style.display = 'block';
		}
		
	}
	
	function addressUpdate(aid,consignee,address,postcode,addressPhone){
		$("input[name='consignee']").val(consignee);
		$("input[name='address']").val(address);		
		$("input[name='zipcode']").val(postcode);
		$("input[name='mobile']").val(addressPhone);
		$("input[name='address_id']").val(aid);
		AddressEdit(aid);
	}
	

	function AddressEdit_Response(result) {
		var PopAddressCon = document.getElementById('PopAddressCon');
		PopAddressCon.innerHTML = result.content;
		document.getElementById('popDiv').style.display = 'block';
		document.getElementById('bg').style.display = 'block';
	}

	function showPopDiv() {
		document.getElementById('popDiv').style.display = 'block';
		document.getElementById('bg').style.display = 'block';
	}

	function closePopDiv() {
		document.getElementById('popDiv').style.display = 'none';
		document.getElementById('bg').style.display = 'none';
	}

	function showAddressEdit(obj) {
		if(obj.className != 'curr') {
			obj.className = obj.className == 'xxxxxx' ? '' : 'xxxxxx';
		}
	}

	function selAddress(obj, address_id) {
		var addrParent = obj.parentNode;
		var addrYeye = addrParent.parentNode;
		var addrList = addrYeye.getElementsByTagName('li');
		for(i = 0; i < addrList.length; i++) {
			addrList[i].className = '';
		}
		addrParent.className = 'curr';
		Ajax.call('', 'address_id=' + address_id, selAddress_response, 'GET', 'JSON');
	}

	function selAddress_response(result) {
		top.location.href = top.location.href;
	}

	function del_Address(address_id) {
		Ajax.call('', 'address_id=' + address_id, delAddressResponse, 'GET', 'JSON');
	}

	function delAddressResponse(result) {
		if(result.message) {
			alert(result.message);
		}

		if(result.error == 0) {
			var layer = document.getElementById('AddressList');

			if(layer) {
				layer.innerHTML = result.content;
			}
			if(result.content2) {
				document.getElementById("shippingBox").innerHTML = '<font color="#ff3300">&nbsp;&nbsp;&nbsp;正在重新导入配送区域，请稍候。。。</font>';
				document.getElementById("shippingBox").innerHTML = '<font style="color:#ff3300">配送区域已经变化，请重新选择物流<br><br></font>' + result.content2;
			}
			document.forms['theForm'].elements['have_consignee'].value = result.have_consignee;
		}
	}

	

	/* 处理提交地址的反馈信息  */
	function addressResponse(result) {
		if(result.message) {
			alert(result.message);
		} else {
			top.location.href = top.location.href;
		}
	}
</script>

<div class="checkBox_jm">
	<div class="title">
		2 送货时间 <span class="songhuo">送货时间仅作参考，快递公司会尽量满足您的要求</span>
	</div>
	<div class="timebox">
		<ul>
		<c:forEach items="${deliveryTime}" var="add" varStatus="status">
			<li class="curr" id="time_id_${status.index+1}"
				onclick="javascript:setTimeSh(1);"><input
				id="time_delivery${status.index+1}" type="radio" name="best_time" value="${add.id}"
				checked="checked"> <label for="time_delivery${status.index+1}">${add.timeName}</label>
			</li>
		</c:forEach>						
		</ul>
	</div>
	<div class="blank"></div>
</div>
<script>
$(function() {
	$('#seltimebox a').click(function() {
		$('#seltimebox a').removeClass('current').html('可选');
		$(this).addClass('current').html('已选');
	})
})
</script>

<div class="checkBox_jm">
	<div class="title">3 商品清单</div>
	<table border="0" cellpadding="0" cellspacing="0" width="100%"
		class="checkgoods">
		<tbody>
			<tr>
				<th width="50%" align="left" class="tdone">商品</th>
				<th>数量</th>
				<th>单价</th>
				<th>小计</th>
			</tr>
			<tr>
				<td colspan="4"
					style="background: #FAFAFA; border-top: 1px solid #eee; font-weight: bold; padding: 5px 10px;">
				网站自营</td>
		</tr>
			
			<c:forEach items="${sessionScope.cart.items}" var="car">
			<tr>
				<td width="50%" style="border-top: none;">
					<div class="thumb_name">
						<dl>
							<dt>
								<a href="#"><img
									src="${ctx}/statics/images/${car.product.fileName}"
									style="border: 1px solid #eeeeee;"
									title="${car.product.name}"></a>
							</dt>
							<dd>
								<a href="#">${car.product.name}</a> <br>
								<font class="attrname"></font>
		
							</dd>
						</dl>
					</div>
		
				</td>
				<td align="center" style="border-top: none;">${car.quantity}</td>
				<td align="center" class="price_font" style="border-top: none;">¥${car.product.price}</td>
				<td align="center" class="price_font" style="border-top: none;">¥${car.cost}</td>
			</tr>	
			</c:forEach>
			
		

			<tr>
				<td colspan="4" bgcolor="#ffffff" align="right"
					style="padding: 12px 15px 12px 0;">
				</td>
			</tr>

		<tr>
			<td colspan="4" bgcolor="#ffffff" align="left"
				class="shipping_type">
				<ul class="shipping_jm">
					<li><input type="hidden" name="pay_ship[0]" id="pay_ship_0"
						class="shipping" value="3"> <a id="ship_0_3"
						title="江、浙、沪地区首重15元/KG，续重2元/KG，其余城市首重20元/KG 运费¥15.00 "
						class="shipping_type shipping_type_curr pay_ship0"
						onclick="">
							<!--注意：如果选中的是当前的配送，注意a标签的变化，变化为<a class="shipping_type shipping_type_curr">-->
							<label> 普通快递 </label>
					</a></li>
				</ul> <span id="picktxt0"></span>

				<p class="shipping_desc" id="desc_0">江、浙、沪地区首重15元/KG，续重2元/KG，其余城市首重20元/KG
					运费¥15.00</p> <script>
							selectShipping($('#pay_ship_0').val(), 0);
						</script>
			</td>
		</tr>
		<tr>
			<td colspan="4" bgcolor="#ffffff" align="left"
				style="padding: 12px 0 12px 30px;">
				<div class="checkout_other">
					<a class="jmbag" href="javascript:void(0);" onclick="showCheckoutOther(this);"><span>+</span>使用店铺优惠券</a>
					<table class="subbox_other sub_bonus" width="100%">
						<tbody>
							<tr>
								<td align="right" width="120">使用店铺优惠券：</td>
								<td><select name="bonus[0]"
									onchange="TiscountCoupon(${sessionScope.cart.sum})" id="ECS_BONUS_0"
									class="otherinput">
										<option value="0" selected="selected">请选择</option>
										<c:forEach items="${lCoupons}" var="lc">
										<option value="${lc.id}"<c:if test="${sessionScope.cart.sum < lc.use}">disabled="disabled"</c:if> >店铺：${lc.issue}|满${lc.use}可用|优惠:[¥${lc.money}]</option>
										</c:forEach>										

								</select></td>
								<td>&nbsp; 或 &nbsp; <a href="#">直接输入优惠券号</a>
								</td>
								<td><label id="Bonus_span_0" style="display: none;">
										<input name="bonus_sn[0]" id="bonus_sn_0" type="text"
										size="15" value="输入优惠券"
										onfocus="if (value ==输入优惠券){value =}"
										onblur="if (value ==){value=输入优惠券}"
										class="input_addr2"> <input name="validate_bonus"
										type="button" value="使用"
										onclick="validateBonus(document.getElementById(bonus_sn_0).value,0)"
										class="BonusButton">
								</label></td>
							</tr>

						</tbody>
					</table>
				</div>
			</td>
		</tr>

	</tbody>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%"
	class="checkgoods" style="border-top: 0;">
	<tbody>
		<tr>
			<td colspan="4" class="tdother2">
				<div class="checkout_other">
					<a class="jmbag" href="javascript:void(0);" onclick="showCheckoutOther(this);"><span>+</span>开发票</a>

					<table class="subbox_other" width="100%">
						<tbody width="100%" cellpadding="5" cellspacing="0">
							<tr>
								<td align="right"><label class="mar-b" for="ECS_NEEDINV"><input
										name="need_inv" type="checkbox" id="ECS_NEEDINV"
										onclick="changeNeedInv()" value="1" class="checkbox">开发票：</label>
								</td>
								<td align="left" colspan="2"><select name="inv_type"
									id="ECS_INVTYPE"  onchange="changeNeedInv()"
									class="select fl" >
										<option value="0">请选择发票类型</option>
										<c:forEach items="${lTypes}" var="lts">
											<option value="${lts.id}">${lts.invoiceType}</option>
										</c:forEach>										
								</select> &nbsp;&nbsp; <select name="inv_content" id="ECS_INVCONTENT"
									 onchange="changeNeedInv()" class="select fl" >
										<option value="0">请选择发票内容</option>
										<c:forEach items="${lContents}" var="lcs">
											<option value="${lcs.id}">${lcs.content}</option>
										</c:forEach>										

								</select></td>
							</tr>
						</tbody>

						
					</table>
				</div>
			</td>
		</tr>
		
		<tr>
			<td colspan="4" class="tdother2">
				<div class="checkout_other">
					<a class="jmbag" href="javascript:void(0);" onclick="showCheckoutOther(this);"><span>+</span>订单留言</a>
					<table class="subbox_other" width="100%">
						<tbody width="100%" cellpadding="5" cellspacing="0">
							<tr>
								<td align="right" width="100" valign="top">订单留言：</td>
								<td colspan="4"><textarea name="postscript" cols="80"
										rows="3" id="postscript" class="textarea"></textarea></td>
							</tr>
						</tbody>
					</table>
				</div>
			</td>
		</tr>
		<script type="text/javascript">
					var fapiao_con = document.getElementById('ECS_INVCONTENT');
					if(fapiao_con.value == '0') {
						document.getElementById('ECS_INVPAYEE').disabled = true;
					} else {
						document.getElementById('ECS_INVPAYEE').disabled = false;
					}
				</script>
		<tr>
			<td colspan="4" class="tdother2">
				<div class="allow_user_surplus">
					<p>
						<label class="is_user_surplus" for="issurplus"><input
							type="checkbox" id="issurplus" onclick="checkboxOnclick(this)"
							style="vertical-align: middle; cursor: pointer">
							使用账户余额支付</label>
					</p>
					<div id="allow_user_surplus">
						<span class="surplus_desc"> <input name="surplus"
							type="text" class="surplus" id="ECS_SURPLUS" value="0"
							onblur="changeSurplus(this.value);">&nbsp;&nbsp;元 </span> 您当前的可用余额为 <span
							class="your_surplus">601.11 </span> <span
							id="ECS_SURPLUS_NOTICE_0" class="notice"></span> <span
							class="open_surplus">点此<a href="#">开启余额安全支付</a></span>
						</div>
						<script type="text/javascript">
								function checkboxOnclick(checkbox) {
									var surplus = 601.11;
									if(checkbox.checked == true) {
										document.getElementById("allow_user_surplus").style.display = "block";
										changeSurplus(surplus);
									} else {
										document.getElementById("allow_user_surplus").style.display = "none";
										changeSurplus(0);
									}
								}
							</script>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
	<div class="blank10"></div>
	<table cellpadding="0" cellspacing="0" width="100%">
		<tbody>
			<tr>
				<td align="right">
					<div id="ECS_ORDERTOTAL">
						<script type="text/javascript"
						src="${ctx}/statics/js/transport.js"></script>
						<script type="text/javascript" src="${ctx}/statics/js/utils.js"></script>
						<div id="ECS_ORDERTOTAL">

							<table width="99%" align="center" border="0" cellpadding="1"
							cellspacing="1" bgcolor="#ffffff">

								<tbody>
									<tr>
										<td align="right" bgcolor="#ffffff">该订单完成后，您将获得 <font
										class="main-color">${sessionScope.cart.sum}</font>积分。
										</td>
									</tr>
									<tr>
										<td align="right" bgcolor="#ffffff">商品总价: <font
										class="main-color">¥${sessionScope.cart.sum}</font> - 优惠: <font
										class="main-color" id="TiscountMoney">¥0.0</font> + 配送费用: <font
										class="main-color">¥15.00</font>
										</td>
									</tr>
									<tr>
										<td align="right" bgcolor="#ffffff">应付款金额： <font
										class="main-color"
										style="font-size: 18px; font-family: 微软雅黑;" id="moneyAll" >¥${sessionScope.cart.sum-dCoupon.money+15.0}</font>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
</div>


<div class="checkBox_jm" id="pay_div">
	<div class="title">4 支付方式</div>
	<ul class="payment_tab_jm" id="payment_tab">
	<c:forEach items="${lWays}" var="lw">
	<li onclick="selPayment(this)"><input type="radio" iscod="${lw.id}"
		 onclick="selectPayment(this)" name="payment" value="${lw.id}">
			<strong></strong> ${lw.wayName}</li>	
	</c:forEach>	
			
	<div class="payment_subbox">
				<ul>

					<li><label for="payment_other1"> <input
						id="payment_other1" type="radio" name="payment_other"
						onclick="selectPayment(this);document.getElementById(payment_other_input).value=this.value;"
						value="1"> <img align="absmiddle"
						src="${ctx}/statics/images/pay_alipay.gif" alt="支付宝">
					</label></li>
				</ul>
			</div></li>
	</ul>
</div>
<script type="text/javascript">
		function setTimeSh(id) {
			for(i = 1; i <= 4; i++) {
				document.getElementById('time_id_' + i).className = '';
			}
			var timeid = document.getElementById('time_id_' + id);
			timeid.className = 'curr';
		}

		function selTimeSh(obj) {
			document.getElementById('definetime_input').checked = true;
			document.getElementById('definetime').innerHTML = "指定送货时间 <font class='main-color'>" + obj.name + "</font>";
			document.getElementById('definetime_input').value = "指定送货时间 " + obj.name;
		}

		function selPayment(obj) {
			var con_country = document.forms['theForm'].elements['have_consignee'].value;
			if(con_country == '0') {
				alert('请先选择配送地址！');
				obj.checked = false;
				return;
			}
			var paymentList = obj.getElementsByTagName('input');
			if(paymentList[0].disabled != true) {
				var payParent = obj.parentNode;
				var payList = payParent.getElementsByTagName('li');
				for(i = 0; i < payList.length; i++) {
					payList[i].className = '';
				}
				obj.className = 'seled';

				for(var i = 0; i < paymentList.length; i++) {
					if(paymentList[i].name == 'payment' && !paymentList[i].disabled) {
						paymentList[i].checked = true;
					}
				}
			}
		}
</script>
<div class="flowBox_jm clearfix"
style="border: none; padding-bottom: 20px;">
	<div
	style="float: left; width: 40%; padding: 8px 0; padding-left: 5px;">
		<a href="${ctx}/car/closeCart.html" class="continue_buy" style="padding: 0;">返回修改购物车</a>
	</div>
	<div
	style="float: right; width: 55%; text-align: right; padding: 8px 20px;">

		<input onclick="cartSumit(${user.id},${sessionScope.cart.sum-15.0})" type="image"
		src="${ctx}/statics/images/btn_done.png" align="absmiddle">

		<input name="need_inv" style="display: none;" type="checkbox"
		class="input" id="ECS_NEEDINV" onclick="changeNeedInv()" value="1"
		checked="true"> <input type="hidden" name="step"
		value="done"> <input type="hidden" name="have_consignee"
		value="1">
	</div>
</div>
<div class="blank10"></div>
<!-- </form> -->
	
<script >
		if(document.getElementById('shipping_3')) {
			document.getElementById('shipping_3').click();
		}
</script>

<div class="blank15"></div>
</div>
	

<div id="pop" class="pop" style="display: none">
	<div class="pop_head">选择自提点</div>
	<a href="#"></a>
	<div class="pop_body" id="pickcontent"></div>
</div>
<script type="text/javascript"
	src="${ctx}/statics/js/order_pickpoint.js"></script>
<div class="choose" id="choose" style="display: none"></div>
	