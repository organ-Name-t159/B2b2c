<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车</title>
<%@include file="userhead.jsp"%>
<body style="cursor: auto;">
	<div id="popup_window" style="display: none;">
		<div class="pop_head">请输入余额支付密码</div>
		<a class="pop_head_r" href="javascript:cancel_input_surplus();"></a>
		<div class="pop-inner">
			<input id="surplus_password_input" class="inputBg inputSmall"
				type="password">
			<div class="required-notice surplus_password_input_notice"
				style="position: static;">
				<i class="notice-icon"></i><span class="notice-text"></span>
			</div>
			<div class="clear"></div>
			<input type="button" onclick="end_input_surplus()" value="确定"
				class="btn_pay1"> <input type="button"
				onclick="cancel_input_surplus()" value="取消" class="btn_pay2">
		</div>
	</div>
	<div id="cartFlow">
	<!-- 流程---------------------------------- -->
	 <%@include file="common/cartFlow1.jsp" %> 
	<%-- <%@include file="common/cartFlow2.jsp" %> --%>
	<!-- 流程---------------------------------- -->
	</div>
	
	<div class="tell-me-form"
		style="display: none; left: 424.5px; top: 140px;" id="tell-me-table">
		<div class="pop-header">
			<span>到货通知</span><a href="javascript:closeDiv1()" title="关闭"
				class="tell-me-close"></a>
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
						<td align="left"><input type="text" value="1"
							id="book-number" class="inputBg">
							<div class="tell-me-notice">
								<i class="notice-icon"></i><span class="notice-text num-notice"></span>
							</div></td>
					</tr>
					<tr>
						<td align="right"><font class="main-color">*</font>手机号码：</td>
						<td align="left"><input type="text" value="" id="phone-num"
							class="inputBg">
							<div class="tell-me-notice">
								<i class="notice-icon"></i><span
									class="notice-text phone-notice"></span>
							</div></td>
					</tr>
					<tr>
						<td align="right"><font class="main-color">*</font>电子邮箱：</td>
						<td align="left"><input type="text" value=""
							id="arrival-email" class="inputBg">
							<div class="tell-me-notice">
								<i class="notice-icon"></i><span
									class="notice-text email-notice"></span>
							</div></td>
					</tr>
					<tr>
						<td colspan="2" align="center" style="padding: 20px 0 30px;">
							<input type="button" value="马上提交" onclick="tell_me1(1)"
							class="sure-btn">
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<div class="right-sidebar-con">
	<!-- 刷新购物车================================================================= -->
	<%@include file="/WEB-INF/jsp/common/shoppingCar.jsp" %>
	<!-- 刷新购物车=================================================================结算 -->
	</div>

	
	<%@include file="foot.jsp"%>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/statics/images/order_pickpoint.js"></script>
	<div class="choose" id="choose" style="display: none"></div>
	

<script type="text/javascript">
function closeCustomer(){
	$("#choose,#bg").hide();
}
function choose_gift(suppid){
	var sel_goods = new Array();
	var obj_cartgoods = document.getElementsByName("sel_cartgoods[]");
	var j = 0;
	for (i=0;i<obj_cartgoods.length;i++){
		if(obj_cartgoods[i].checked == true){	
			sel_goods[j] = obj_cartgoods[i].value;
			j++;
		}
	}
	Ajax.call('', 'is_ajax=1&suppid=' + suppid + '&sel_goods='+sel_goods, selgiftResponse, 'GET', 'JSON');
}
function selgiftResponse(res){
	$('#choose').html(res.result).show();
	$('.bg').show();
}
</script>
	<script type="text/javascript">
var process_request = "正在处理您的请求...";
var username_chana = "- 用户名不能有中文。";
var msg_uname_length = "- 用户名不能超过 20 个字符。";
var username_empty = "- 用户名不能为空。";
var username_shorter = "- 用户名长度不能少于 3 个字符。";
var username_invalid = "- 用户名只能是由字母数字以及下划线组成。";
var password_empty = "- 登录密码不能为空。";
var password_shorter = "- 登录密码不能少于 6 个字符。";
var confirm_password_invalid = "- 两次输入密码不一致";
var email_empty = "- Email 为空";
var email_invalid = "- Email 不是合法的地址";
var agreement = "- 您没有接受协议";
var msn_invalid = "- msn地址不是一个有效的邮件地址";
var qq_invalid = "- QQ号码不是一个有效的号码";
var home_phone_invalid = "- 家庭电话不是一个有效号码";
var office_phone_invalid = "- 办公电话不是一个有效号码";
var mobile_phone_invalid = "- 手机号码不是一个有效号码";
var msg_un_blank = "- 用户名不能为空";
var msg_un_chine = "- 用户名不能为中文";
var msg_un_length = "- 用户名不得超过14个字符";
var msg_un_format = "- 用户名含有非法字符";
var msg_un_registered = "- 用户名已经存在,请重新输入";
var msg_can_rg = "* 可以注册";
var msg_email_blank = "- 邮件地址不能为空";
var msg_email_registered = "- 邮箱已存在";
var msg_email_format = "- 邮件地址不合法";
var msg_mobile_phone_blank = "- 手机号码不能为空";
var msg_mobile_phone_registered = "- 手机号码已存在";
var msg_mobile_phone_format = "- 手机号码不是一个有效号码";
var msg_blank = "- 不能为空";
var no_select_question = "- 您没有完成密码提示问题的操作";
var passwd_balnk = "* 密码中不能包含空格";
var msg_email_code_blank = "- 邮箱验证码不能为空";
var msg_mobile_phone_code_blank = "- 手机验证码不能为空";
var msg_captcha_blank = "- 验证码不能为空";
var msg_register_type_blank = "- 注册类型不能为空";
var username_exist = "用户名 %s 已经存在";
var compare_no_goods = "您没有选定任何需要比较的商品或者比较的商品数少于 2 个。";
var btn_buy = "购买";
var is_cancel = "取消";
var select_spe = "请选择商品属性";
</script>
<script lang="javascript" type="text/javascript">
$(document).click(function(e){ 
	var target = $(e.target); 
	if(target.closest('.right-sidebar-con').length == 0){ 
		$('.right-sidebar-main').removeClass('right-sidebar-main-open');
		$('.sidebar-tabs').removeClass('current');
		$('.right-sidebar-panels').removeClass('animate-in').addClass('animate-out').css('z-index',1);
	} 
}); 
function showCheckoutOther(obj) {
	var otherParent = obj.parentNode;
	otherParent.className = (otherParent.className == 'checkout_other') ? 'checkout_other2' : 'checkout_other';
	var spanzi = obj.getElementsByTagName('span')[0];
	spanzi.innerHTML = spanzi.innerHTML == '+' ? '-' : '+';
}

//地址
var UaddressIdN="";
//总金额
var moneyAll="";


function Uaddress(UaddressId){
	UaddressIdN=UaddressId;	
}

function TiscountCoupon(money){
	
	var uTiscountCouponId=$("#ECS_BONUS_0").val();
	if(uTiscountCouponId>0){
		$.ajax({
			url:contextPath+"/car/TiscountCouponMoney.html",
			method:"post",
			data:{
				tId:uTiscountCouponId
			},
			success:function(jsonStr){
				var result=eval("("+jsonStr+")");
				$("#TiscountMoney").html("¥"+result.money);
				moneyAll=money-result.money-15;
				$("#moneyAll").html("¥"+moneyAll);
			}
			
		});
	}else{
		$("#TiscountMoney").html("¥0");
		$("#moneyAll").html("¥"+money);
	}
	
	  
}



function cartSumit(userId,moneyS){
	//var uAddressId=$("li[name='Uaddress']:checked").attr("value");
	var uTime=$("input[name='best_time']:checked").val();
	var uTiscountCouponId=$("#ECS_BONUS_0").val();
	var invoiceTypeId=$("#ECS_INVTYPE").val();
	var invoiceContentId=$("#ECS_INVCONTENT").val();
	var leaveWord=$("#postscript").val()
	var paymentWayId=$("input[name='payment']:checked").val()
	moneyAll=moneyS;
	/* alert("用户id："+userId);
	alert("地址id:"+UaddressIdN);
	alert("时间id:"+uTime);
	alert("优惠券id:"+uTiscountCouponId)
	alert("发票类型:"+invoiceTypeId)
	alert("发票内容:"+invoiceContentId)
	alert("留言:"+leaveWord)
	alert("总金额:"+moneyAll)
	alert("支付方式:"+paymentWayId) */
	
	if(UaddressIdN==""||UaddressIdN==null){
		alert("请选择地址")
		return false;
	}else if(uTime==""||uTime==null){
		alert("请选择送货时间")
		return false;
	}else if(paymentWayId==""||paymentWayId==null){
		alert("请选择支付方式")
		return false;
	}	
	
	if(paymentWayId==2){
		$.ajax({
			url:contextPath+"/car/orderAll.html",
			method:"post",
			data:{
				userId:userId,
				UaddressIdN:UaddressIdN,
				uTime:uTime,
				uTiscountCouponId:uTiscountCouponId,
				invoiceTypeId:invoiceTypeId,
				invoiceContentId:invoiceContentId,
				leaveWord:leaveWord,
				monetAll:moneyAll,
				paymentWayId:paymentWayId
				
			},
			success:function(jsonStr){
				$("#cartFlow").html(jsonStr);
			}
		});
				
	}else{
		
		$.ajax({
			url:contextPath+"/car/orderAll.html",
			method:"post",
			data:{
				userId:userId,
				UaddressIdN:UaddressIdN,
				uTime:uTime,
				uTiscountCouponId:uTiscountCouponId,
				invoiceTypeId:invoiceTypeId,
				invoiceContentId:invoiceContentId,
				leaveWord:leaveWord,
				monetAll:moneyAll,
				paymentWayId:paymentWayId
				
			},
			success:function(jsonStr){
				$("#cartFlow").html(jsonStr);
			}
		});
		
		
		
		
	}
		 
	
}
</script>
</body>
</html>