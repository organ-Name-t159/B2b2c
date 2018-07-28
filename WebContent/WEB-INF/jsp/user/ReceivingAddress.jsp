<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<script type="text/javascript">
	var contextPath = "${ctx}";
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>家家商城</title>
<%@include file="/WEB-INF/jsp/userhead.jsp"%>
<%@include file="/WEB-INF/jsp/common/classifyBall.jsp"%>

<script type="text/javascript" src="${ctx}/statics/js/nav.js"></script>
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
    	<div class="box">
    	 <%-- <script type="text/javascript" src="${ctx}/statics/js/region.js"></script> --%>
    	 <script type="text/javascript" src="${ctx}/statics/js/shopping_flow.js"></script> 
          <script type="text/javascript">
             region.isAdmin = false;
                            var consignee_not_null = "收货人姓名不能为空！";
                            var country_not_null = "请您选择收货人所在国家！";
                            var province_not_null = "请您选择收货人所在省份！";
                            var city_not_null = "请您选择收货人所在城市！";
                            var district_not_null = "请您选择收货人所在区域！";
                            var invalid_email = "您输入的邮件地址不是一个合法的邮件地址。";
                            var address_not_null = "收货人的详细地址不能为空！";
                            var tele_not_null = "固定电话不能为空！";
                            var shipping_not_null = "请您选择配送方式！";
                            var payment_not_null = "请您选择支付方式！";
                            var goodsattr_style = "1";
                            var tele_invaild = "该商品已添加到购物车，您现在还需要继续购物吗？\n如果您希望马上结算，请点击“确定”按钮。\n如果您希望继续购物，请点击“取消”按钮。";
                            var zip_not_num = "邮政编码只能填写数字";
                            var mobile_not_null = "手机号码不能为空!";
                            var mobile_invaild = "手机号码不是合法号码";
                            var mobile_or_tel_not_null = "手机号码和固定电话至少要填写一项";
                            
              onload = function() {
                if (!document.all)
                {
                  document.forms['theForm'].reset();
                }
              }
              
            </script>
          <div class="tabmenu">
            <ul class="tab pngFix">
              <li class="first active">地址列表</li>
            </ul>
          </div>
          <div class="alert alert-success">
            <h4>操作提示：</h4>
            <ul>
              <li>您可对已有的地址进行编辑及删除，亦可新增收货地址</li>
            </ul>
          </div>
          <div class="mar_top">
          <c:forEach items="${addressesList}" var="al" varStatus="vs">
            <form action="" method="post" name="theForm" >
            
            <table width="100%" border="0" cellpadding="10" cellspacing="1" bgcolor="#eeeeee">
                <tr>
                  <td align="right" width="10%">收货人姓名：</td>
                  <td align="left" width="40%"><input name="consignee" type="text" class="inputBg" id="consignee_0" value="${al.consignee}" />
                    (必填) </td>
                  <td align="right" width="10%">电子邮件地址：</td>
                  <td align="left" width="40%"><input name="email" type="text" class="inputBg" id="email_0" value="${user.email}" />
                  </td>
                </tr>
                <tr>
                  <td align="right">详细地址：</td>
                  <td align="left" colspan="3"><input name="address" type="text" class="inputBg" id="address_0" value="${al.address}" style="width: 692px;"/>
                    (必填)</td>
               	</tr>
                <tr>
                <td align="right">邮政编码：</td>
                  <td align="left"><input name="zipcode" type="text" class="inputBg" id="zipcode_0" value="${al.postcode}" />(必填)</td>
                  <td align="right">手机：</td>
                  <td align="left"><input name="mobile" type="text" class="inputBg" id="mobile_0" value="${al.addressPhone}" />(必填)
                </td>
                </tr>
                <tr>
                <td colspan="4" align="center">
                	                 
                    <input id="addressButton${al.id}" cId="${al.id}" onclick="if(confirm('你确定要修改信息吗？'))return update(${al.id});" type="button" name="submit" class="main-btn main-btn-large" value="确认修改" />
                    <input id="delButton${al.id}" uId="${al.id}" name="button"  type="button" class="main-btn main-btn-large"  onclick="if (confirm('你确认要删除该收货地址吗？'))window.location.href='${ctx}/user/DelAddress?uid=${al.id}'" value="删除" />
                    
                                        
                    <input type="hidden" name="act" value="act_edit_address" />
                    <input name="address_id" type="hidden" value="63" /></td>
                </tr>
              </table>
            </form>
            <div class="blank10"></div>
             </c:forEach>
            <script type="text/javascript">
            function update(po){
            	var consignee=document.getElementById("consignee_0").value;
            	var email=document.getElementById("email_0").value;
            	var address=document.getElementById("address_0").value;
            	var zipcode=document.getElementById("zipcode_0").value;
            	var mobile=document.getElementById("mobile_0").value;
            	var id=$("#addressButton"+po).attr("cId");
            	if(consignee==""||consignee==null)return false;
            	if(address==""||address==null)return false;
            	
            	$.ajax({
            		url:contextPath+"/user/UpdateAddress",
            		method:"POST",
            		data: {
            			consignee:consignee,
            			email:email,
            			address:address,
            			zipcode:zipcode,
            			mobile:mobile,
            			id:id,
            		  },
            		success:function (date) {
            		     if (date==200) {
            		    	 alert("修改成功");
            		     window.location.href=contextPath+"/user/ReceivingAddress.html";
            			}
            		},
            		error:function(){
            			alert("修改失败");
            		}
            	});
            }
            
            </script>
           
            <form action="${ctx}/user/addAddress" method="post" name="theForm" id="addForm" onsubmit="return del()">
            <table width="100%" border="0" cellpadding="10" cellspacing="1" bgcolor="#eeeeee">
                
                <tr>
                  <td align="right" width="10%">收货人姓名：</td>
                  <td align="left" width="40%"><input name="consignee" type="text" class="inputBg" id="consignee_2" value="" />
                    (必填) </td>
                  <td align="right" width="10%">电子邮件地址：</td>
                  <td align="left" width="40%"><input name="email" type="text" class="inputBg" id="email_2" value="${user.email}" />
                  </td>
                </tr>
                <tr>
                  <td align="right">详细地址：</td>
                  <td align="left" colspan="3"><input name="address" type="text" class="inputBg" id="address_2" value="" style="width: 692px;"/>
                    (必填)</td>
               	</tr>
                <tr>
                 <td align="right">邮政编码：</td>
                  <td align="left"><input name="zipcode" type="text" class="inputBg" id="zipcode_2" value="" />(必填)</td>
                  
                  <td align="right">手机：</td>
                  <td align="left"><input name="mobile" type="text" class="inputBg" id="mobile_2" value="${user.phone}" />
                </td>
                </tr>
                <tr>
                <td colspan="4" align="center">
                	                    
                    <input id="addButton" type="submit" name="submit" class="main-btn main-btn-large"  value="新增收货地址"/>
                    
                                        
                    <input type="hidden" name="act" value="act_edit_address" />
                    <input name="address_id" type="hidden" value="" /></td>
                </tr>
              </table>
            </form>
            <script type="text/javascript">
            	function del(){
            		if(confirm('你确定要修改信息吗？')==true){
            			var consignee=document.getElementById("consignee_2").value;
                		var email=document.getElementById("email_2").value;
                		var address=document.getElementById("address_2").value;
                		var zipcode=document.getElementById("zipcode_2").value;
                		var mobile=document.getElementById("mobile_2").value;
                		if (consignee==""||consignee==null) {
                			alert("收货人姓名不能为空");
							return false;
						}else
                		if (address==""||address==null) {
                			alert("详细地址不能为空");s
							return false;
						}else
                		if (zipcode==""||zipcode==null) {
                			alert("邮政编码不能为空");
							return false;
						}else
	                	if (mobile==""||mobile==null) {
	                		alert("手机号码不能为空不能为空");
							return false;
						}else{
							return true;
						}
                		
            		}else{
            			return false;
            		}
            		
            	}	
               
            
            </script>
            <div class="blank10"></div>
          </div>
         </div>
    </div>
</div>
 <%@include file="/WEB-INF/jsp/foot.jsp"%>

</body>
</html>