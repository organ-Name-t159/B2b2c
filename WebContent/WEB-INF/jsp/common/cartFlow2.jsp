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
		<a href="#"><img src="${ctx}/statics/images/logo.gif"></a>
	</div>
</div>
<div class="blank15"></div>
<div class="block_jm">

<script>
function del_address_comfirm(comfirmId) {
	$('.pop-compare,.pop-mask').show();
	$('.pop-compare .pop-text').html('您确认要删除吗？');
	$('.pop-compare').css({
		'top': ($(window).height() - $('.pop-compare').outerHeight()) / 2
	});
	$('.cancel-btn').removeClass('none');
	$('.pop-sure').click(function() {
		del_Address(comfirmId);
	})
}
</script>
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
	<div class="address_jm" id="AddressList">
		<ul>
		<c:forEach items="${requestScope.uAddress}" var="temp">
			<li onmouseover="showAddressEdit(this);"
				onmouseout="showAddressEdit(this);">
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
					<a href="#">修改</a> <a onclick="del_address_comfirm(63)">删除</a>
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
		<div id="PopAddressCon"></div>
	</div>
</div>
<script type="text/javascript">
	function AddressEdit(aid) {
		if(aid) {
			document.getElementById('PopAddressTitle').innerHTML = '修改地址';
		} else {
			document.getElementById('PopAddressTitle').innerHTML = '使用新地址';
		}
		Ajax.call('', 'address_id=' + aid, AddressEdit_Response, 'GET', 'JSON');
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

	/**
	 * 提交地址信息
	 */
	function submitAddress() {
		var frm = document.forms['theForm'];
		var cmt = new Object;
		cmt.address_id = frm.elements['address_id'].value;
		cmt.consignee = frm.elements['consignee'].value;
		cmt.address = frm.elements['address'].value;
		cmt.email = frm.elements['email'].value;
		cmt.zipcode = frm.elements['zipcode'].value;
		cmt.country = 1; //frm.elements['country'].value;
		cmt.province = frm.elements['province'].value;
		cmt.city = frm.elements['city'].value;
		cmt.district = frm.elements['district'].value;
		cmt.tel = frm.elements['tel_01'].value + "-" + frm.elements['tel_02'].value + (Utils.isEmpty(frm.elements['tel_03'].value) ? "" : "-" + frm.elements['tel_03'].value);
		cmt.mobile = frm.elements['mobile'].value;
		cmt.closediv = frm.elements['closediv'].value;
		cmt.shipping_bian = frm.elements['shipping_bian'].value;
		cmt.optionlength = frm.elements['district'].length;

		if(cmt.consignee.length == 0) {
			$('form[name=theForm]').find('.reciever-notice').html('收件人不能为空').parents('.required-notice').css('visibility', 'visible');
			//alert('收件人不能为空！');
			return false;
		} else {
			$('form[name=theForm]').find('.reciever-notice').html('').parents('.required-notice').css('visibility', 'hidden');
		}
		if(cmt.optionlength > 1) {
			if(cmt.province == '0' || cmt.city == '0' || cmt.district == '0') {
				$('form[name=theForm]').find('.address-notice').html('所在地区不完整').parents('.required-notice').css('visibility', 'visible');
				//alert('所在地区不完整！');
				return false;
			} else {
				$('form[name=theForm]').find('.address-notice').html('').parents('.required-notice').css('visibility', 'hidden');
			}
		} else {
			if(cmt.province == '0' || cmt.city == '0') {
				$('form[name=theForm]').find('.address-notice').html('所在地区不完整').parents('.required-notice').css('visibility', 'visible');
				//alert('所在地区不完整！');
				return false;
			} else {
				$('form[name=theForm]').find('.address-notice').html('').parents('.required-notice').css('visibility', 'hidden');
			}

		}
		if(cmt.email.length > 0 && (!Utils.isEmail(cmt.email))) {
			alert('邮箱地址不正确');
			return false;
		}
		if(cmt.address.length == 0) {
			$('form[name=theForm]').find('.detail-address-notice').html('街道地址不能为空').parents('.required-notice').css('visibility', 'visible');
			//alert('街道地址不能为空！');
			return false;
		} else {
			$('form[name=theForm]').find('.detail-address-notice').html('').parents('.required-notice').css('visibility', 'hidden');
		}

		if(cmt.mobile.length == 0 && (cmt.tel.length == 0 || cmt.tel == '--' || cmt.tel == '-')) {
			$('form[name=theForm]').find('.phone-notice').html('手机号码和固定电话必须填写至少一项').parents('.required-notice').css('visibility', 'visible');
			//alert('手机号码和固定电话必须填写至少一项！');
			return false;
		} else {
			$('form[name=theForm]').find('.phone-notice').html('').parents('.required-notice').css('visibility', 'hidden');
		}
		if(cmt.mobile.length > 0) {
			var reg = /^1[34578][0-9]\d{8}$/;
			if(!Utils.isMobile(cmt.mobile)) {
				$('form[name=theForm]').find('.phone-notice').html('手机号码格式不正确').parents('.required-notice').css('visibility', 'visible');
				//alert('手机号码格式不正确！');
				return false;
			} else {
				$('form[name=theForm]').find('.phone-notice').html('').parents('.required-notice').css('visibility', 'hidden');
			}
		}
		if(cmt.tel.length > 0 && cmt.tel != '--' && cmt.tel != '-') {
			var reg = /^[\d|\-|\s]+$/;
			if(!Utils.isTel(cmt.tel)) {
				$('form[name=theForm]').find('.phone-notice').html('固定电话格式不正确').parents('.required-notice').css('visibility', 'visible');
				//alert('固定电话格式不正确！');
				return false;
			} else {
				$('form[name=theForm]').find('.phone-notice').html('').parents('.required-notice').css('visibility', 'hidden');
			}
		}
		Ajax.call('', 'address=' + $.toJSON(cmt), addressResponse, 'POST', 'JSON');
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
			<li class="curr" id="time_id_1"
				onclick="javascript:setTimeSh(&#39;1&#39;);"><input
				id="time_delivery1" type="radio" name="best_time" value="仅工作日送货"
				checked="checked"> <label for="time_delivery1">仅工作日送货</label>
			</li>
			<li id="time_id_2" onclick="javascript:setTimeSh(&#39;2&#39;);">
				<input id="time_delivery2" type="radio" name="best_time"
				value="仅周末送货"> <label for="time_delivery2">仅周末送货</label>
			</li>
			<li id="time_id_3" onclick="javascript:setTimeSh(&#39;3&#39;)">
				<input id="time_delivery3" type="radio" name="best_time"
				value="工作日/周末/假日均可"> <label for="time_delivery3">工作日/周末/假日均可</label>
			</li>
			<li id="time_id_4" style="position: relative;"
				onmouseover="if(this.className==&#39;curr&#39; || this.className==&#39;curr2&#39;){this.className=&#39;curr&#39;;}else{this.className=&#39;cur2&#39;;}"
				onmouseout="if(this.className==&#39;curr&#39;){this.className=&#39;curr2&#39;;}else{this.className=&#39;cur&#39;;}"
				onclick="javascript:setTimeSh(&#39;4&#39;)"><input
				type="radio" name="best_time" value="" id="definetime_input">
				<label for="definetime_input" id="definetime">指定送货时间</label>
				<div class="seltimebox" id="seltimebox">
					<table cellpadding="0" cellspacing="0" width="100%">
						<tbody>
							<tr bgcolor="#ffffff">
								<td><span>时间段</span></td>
								<td align="center"><span>06-04<br>今天
								</span></td>
								<td align="center"><span>06-05<br>周二
								</span></td>
								<td align="center"><span>06-06<br>周三
								</span></td>
								<td align="center"><span>06-07<br>周四
								</span></td>
								<td align="center"><span>06-08<br>周五
								</span></td>
								<td align="center"><span>06-09<br>周六
								</span></td>
								<td align="center"><span>06-10<br>周日
								</span></td>
							</tr>
							<tr bgcolor="#ffffff">
								<td><span>9:00--15:00</span></td>
								<td align="center">&nbsp;</td>
								<td align="center"><a href="#">可选</a></td>
								<td align="center"><a href="#">可选</a></td>
								<td align="center"><a href="#">可选</a></td>
								<td align="center"><a href="#">可选</a></td>
								<td align="center"><a href="#">可选</a></td>
								<td align="center"><a href="#">可选</a></td>
							</tr>
							<tr bgcolor="#ffffff">
								<td><span>15:00--19:00</span></td>
								<td align="center">&nbsp;</td>
								<td align="center"><a href="#">可选</a></td>
								<td align="center"><a href="#">可选</a></td>
								<td align="center"><a href="#">可选</a></td>
								<td align="center"><a href="#">可选</a></td>
								<td align="center"><a href="#">可选</a></td>
								<td align="center"><a href="#">可选</a></td>
							</tr>
							<tr bgcolor="#ffffff">
								<td><span>19:00--22:00</span></td>
								<td align="center">&nbsp;</td>
								<td align="center"><a href="#">可选</a></td>
								<td align="center"><a href="#">可选</a></td>
								<td align="center"><a href="#">可选</a></td>
								<td align="center"><a href="#">可选</a></td>
								<td align="center"><a href="#">可选</a></td>
								<td align="center"><a href="#">可选</a></td>
							</tr>
						</tbody>
					</table>
				</div></li>
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
					style="padding: 12px 15px 12px 0;">根据优惠活动 <a href="#"> <font
						color="red">满199元减99元</font>
				</a>，您可以享受折扣 ¥99.0
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
						onclick="$(&#39;#pay_ship_0&#39;).val(3);selectShipping(3,0);$(&#39;.pay_ship0&#39;).removeClass(&#39;shipping_type_curr&#39;);$(this).addClass(&#39;shipping_type_curr&#39;);">
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
					<a class="jmbag" href="#"><span>+</span>使用店铺优惠券</a>
					<table class="subbox_other sub_bonus" width="100%">
						<tbody>
							<tr>
								<td align="right" width="120">使用店铺优惠券：</td>
								<td><select name="bonus[0]"
									onchange="changeBonus(this.value,0)" id="ECS_BONUS_0"
									class="otherinput">
										<option value="0" selected="">请选择</option>
										<option value="383">线上领取红包2222[¥19.00]</option>
										<option value="384">线上领取红包2222[¥19.00]</option>
										<option value="385">线上领取红包2222[¥19.00]</option>
										<option value="386">线上领取红包2222[¥19.00]</option>
										<option value="387">线上领取红包2222[¥19.00]</option>
										<option value="388">线上领取红包2222[¥19.00]</option>
										<option value="389">线上领取红包2222[¥19.00]</option>
										<option value="390">线上领取红包2222[¥19.00]</option>
										<option value="391">线上领取红包2222[¥19.00]</option>
										<option value="392">线上领取红包2222[¥19.00]</option>

								</select></td>
								<td>&nbsp; 或 &nbsp; <a href="#">直接输入优惠券号</a>
								</td>
								<td><label id="Bonus_span_0" style="display: none;">
										<input name="bonus_sn[0]" id="bonus_sn_0" type="text"
										size="15" value="输入优惠券"
										onfocus="if (value ==&#39;输入优惠券&#39;){value =&#39;&#39;}"
										onblur="if (value ==&#39;&#39;){value=&#39;输入优惠券&#39;}"
										class="input_addr2"> <input name="validate_bonus"
										type="button" value="使用"
										onclick="validateBonus(document.getElementById(&#39;bonus_sn_0&#39;).value,0)"
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
					<a class="jmbag" href="#"><span>+</span>开发票</a>

					<table class="subbox_other" width="100%">
						<tbody width="100%" cellpadding="5" cellspacing="0">
							<tr>
								<td align="right"><label class="mar-b" for="ECS_NEEDINV"><input
										name="need_inv" type="checkbox" id="ECS_NEEDINV"
										onclick="changeNeedInv()" value="1" class="checkbox">开发票：</label></td>
								<td align="left" colspan="2"><select name="inv_type"
									id="ECS_INVTYPE" disabled="true" onchange="changeNeedInv()"
									class="select fl">
										<option value="0">请选择发票类型</option>

										<option value="normal_invoice">普通发票 [1%]</option>
										<option value="vat_invoice">增值税发票 [1.5%]</option>
								</select> &nbsp;&nbsp; <select name="inv_content" id="ECS_INVCONTENT"
									disabled="true" onchange="changeNeedInv()" class="select fl">
										<option value="0">请选择发票内容</option>

										<option value="明细">明细</option>
										<option value="办公用品">办公用品</option>
										<option value="电脑配件">电脑配件</option>
										<option value="耗材">耗材</option>
										<option value="其他">其他</option>

								</select></td>
							</tr>
						</tbody>

						<tbody id="vat_invoice_tbody" style="display: none;"
							width="100%" cellpadding="5" cellspacing="0">
							<tr>
								<td colspan="3" align="left"><strong
									style="font-size: 16px;">公司信息</strong></td>
							</tr>
							<tr>
								<td align="right"><em style="color: #e4393c">*</em>单位名称：</td>
								<td colspan="2"><input name="vat_inv_company_name"
									type="text" class="otherinput2"></td>
							</tr>
							<tr>
								<td align="right"><em style="color: #e4393c">*</em>纳税人识别号：</td>
								<td width="300" style="width: 300px;"><input
									name="vat_inv_taxpayer_id" type="text"
									onblur="javascript:check_taxpayer_id(this,&quot;taxpayer_notice&quot;)"
									class="otherinput2"></td>
								<td>&nbsp;<span id="taxpayer_notice"
									style="font-size: 12px; color: #f00;"></span></td>
							</tr>
							<tr>
								<td align="right"><em style="color: #e4393c">*</em>注册地址：</td>
								<td colspan="2"><input
									name="vat_inv_registration_address" type="text"
									class="otherinput2"></td>
							</tr>
							<tr>
								<td align="right"><em style="color: #e4393c">*</em>注册电话：</td>
								<td colspan="2"><input name="vat_inv_registration_phone"
									type="text" class="otherinput2"></td>
							</tr>
							<tr>
								<td align="right"><em style="color: #e4393c">*</em>开户银行：</td>
								<td colspan="2"><input name="vat_inv_deposit_bank"
									type="text" class="otherinput2"></td>
							</tr>
							<tr>
								<td align="right"><em style="color: #e4393c">*</em>银行账户：</td>
								<td><input name="vat_inv_bank_account" type="text"
									onblur="javascript:check_bank_account(this,&quot;bank_account_notice&quot;)"
									class="otherinput2"></td>
								<td>&nbsp;<span id="bank_account_notice"
									style="font-size: 12px; color: #f00;"></span></td>
							</tr>
							<tr>
								<td colspan="3" align="left" style="padding: 10px 0px"><strong
									style="font-size: 16px;">收票人信息</strong></td>
							</tr>
							<tr>
								<td align="right"><em style="color: #e4393c">*</em>收票人姓名：</td>
								<td colspan="2"><input name="inv_consignee_name"
									type="text" class="otherinput2"></td>
							</tr>
							<tr>
								<td align="right"><em style="color: #e4393c">*</em>收票人手机：</td>
								<td><input name="inv_consignee_phone" type="text"
									onblur="javascript:check_phone_number(this,&quot;phone_number_notice&quot;)"
									class="otherinput2"></td>
								<td>&nbsp;<span id="phone_number_notice"
									style="font-size: 12px; color: #f00;"></span></td>
							</tr>
							<tr>
								<td align="right"><em style="color: #e4393c">*</em>收票人省份：</td>
								<td colspan="2"><input type="hidden" name="country"
									value="1"> <select name="inv_consignee_province"
									id="selProvinces"
									onchange="region.changed(this, 2, &#39;selCities&#39;);">
										<option value="0">请选择省</option>
										<option value="2">北京</option>
										<option value="3">安徽</option>
										<option value="4">福建</option>
										<option value="5">甘肃</option>
										<option value="6">广东</option>
										<option value="7">广西</option>
										<option value="8">贵州</option>
										<option value="9">海南</option>
										<option value="10">河北</option>
										<option value="11">河南</option>
										<option value="12">黑龙江</option>
										<option value="13">湖北</option>
										<option value="14">湖南</option>
										<option value="15">吉林</option>
										<option value="16">江苏</option>
										<option value="17">江西</option>
										<option value="18">辽宁</option>
										<option value="19">内蒙古</option>
										<option value="20">宁夏</option>
										<option value="21">青海</option>
										<option value="22">山东</option>
										<option value="23">山西</option>
										<option value="24">陕西</option>
										<option value="25">上海</option>
										<option value="26">四川</option>
										<option value="27">天津</option>
										<option value="28">西藏</option>
										<option value="29">新疆</option>
										<option value="30">云南</option>
										<option value="31">浙江</option>
										<option value="32">重庆</option>
										<option value="33">香港</option>
										<option value="34">澳门</option>
										<option value="35">台湾</option>
								</select> <select name="inv_consignee_city" id="selCities"
									onchange="region.changed(this, 3, &#39;selDistricts&#39;);">
										<option value="0">请选择</option>
								</select> <select name="inv_consignee_district" id="selDistricts"
									style="display: none;">
										<option value="0">请选择</option>
								</select></td>
							</tr>
							<tr>
								<td align="right"><em style="color: #e4393c">*</em>详细地址：</td>
								<td colspan="2"><input name="inv_consignee_address"
									type="text" class="otherinput2"></td>
							</tr>
						</tbody>

						<tbody id="normal_invoice_tbody" style="display: none">
							<tr>
								<td align="right">发票抬头：</td>
								<td colspan="2"><input id="individual_inv" type="radio"
									onclick="changeNeedInv()" name="inv_payee_type"
									value="individual" checked="true"
									style="vertical-align: middle"> <label
									for="individual_inv" style="vertical-align: middle">个人</label>
									<input id="unit_inv" type="radio" onclick="changeNeedInv()"
									name="inv_payee_type" value="unit"
									style="vertical-align: middle"> <label
									for="unit_inv" style="vertical-align: middle">单位</label>
									&nbsp;&nbsp; <input id="ECS_INVPAYEE" name="inv_payee"
									class="otherinput2"
									style="display: none; vertical-align: middle" disabled=""></td>
							</tr>
						</tbody>
					</table>
				</div>
			</td>
		</tr>
		<tr>
			<td colspan="4" class="tdother2">
				<div class="checkout_other">
					<a class="jmbag" href="#"><span>+</span>缺货处理</a>
					<table class="subbox_other" width="100%">

						<tbody width="100%" cellpadding="5" cellspacing="0">
							<tr>
								<td align="right" width="100">缺货处理：</td>
								<td colspan="4"><label> <input name="how_oos"
										type="radio" value="0" checked="" onclick="changeOOS(this)">
										等待所有商品备齐后再发
								</label> <label> <input name="how_oos" type="radio" value="1"
										onclick="changeOOS(this)"> 取消订单
								</label> <label> <input name="how_oos" type="radio" value="2"
										onclick="changeOOS(this)"> 与店主协商
								</label></td>
							</tr>
						</tbody>
					</table>
				</div>
			</td>
		</tr>
		<tr>
			<td colspan="4" class="tdother2">
				<div class="checkout_other">
					<a class="jmbag" href="#"><span>+</span>订单留言</a>
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
										class="main-color">¥0.00</font>的红包。
										</td>
									</tr>
									<tr>
										<td align="right" bgcolor="#ffffff">商品总价: <font
										class="main-color">¥${sessionScope.cart.sum}</font> - 折扣: <font
										class="main-color">¥99.00</font> + 配送费用: <font
										class="main-color">¥15.00</font>
										</td>
									</tr>
									<tr>
										<td align="right" bgcolor="#ffffff">应付款金额： <font
										class="main-color"
										style="font-size: 18px; font-family: 微软雅黑;">¥${sessionScope.cart.sum-99.0-15.0}</font>
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
<script type="text/javascript">
function showCheckoutOther(obj) {
	var otherParent = obj.parentNode;
	otherParent.className = (otherParent.className == 'checkout_other') ? 'checkout_other2' : 'checkout_other';
	var spanzi = obj.getElementsByTagName('span')[0];
	spanzi.innerHTML = spanzi.innerHTML == '+' ? '-' : '+';
}
</script>

<div class="checkBox_jm" id="pay_div">
	<div class="title">4 支付方式</div>
	<ul class="payment_tab_jm" id="payment_tab">

		<li onclick="selPayment(this)"><input type="radio" iscod="1"
		 onclick="selectPayment(this)" name="payment" value="6">
			<strong></strong> 货到付款</li>

		<li onclick="selPayment(this)"><input type="radio"
		onclick="selectPayment(this)" iscod="0" name="payment"
		id="payment_other_input" value="0"> &nbsp;支付宝
			
	<div class="payment_subbox">
				<ul>

					<li><label for="payment_other1"> <input
						id="payment_other1" type="radio" name="payment_other"
						onclick="selectPayment(this);document.getElementById(&#39;payment_other_input&#39;).value=this.value;"
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
		<a href="#" class="continue_buy" style="padding: 0;">返回修改购物车</a>
	</div>
	<div
	style="float: right; width: 55%; text-align: right; padding: 8px 20px;">

		<input onclick="return check_before_submit()" type="image"
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
		
		
		
<script>
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
	