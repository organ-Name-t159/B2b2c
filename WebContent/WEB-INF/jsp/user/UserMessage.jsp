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
    	<div class="box">
    	 
          <script type="text/javascript">
                      var bonus_sn_empty = "请输入您要添加的红包号码！";
                      var bonus_sn_error = "您输入的红包号码格式不正确！";
                      var email_empty = "请输入您的电子邮件地址！";
                      var email_error = "您输入的电子邮件地址格式不正确！";
                      var old_password_empty = "请输入您的原密码！";
                      var new_password_empty = "请输入您的新密码！";
                      var confirm_password_empty = "请输入您的确认密码！";
                      var both_password_error = "您现两次输入的密码不一致！";
                      var msg_blank = "不能为空";
                      var no_select_question = "- 您没有完成密码提示问题的操作";
                    </script> 
          <script type="text/javascript">
			function setTabCatGoods(name,cursel,n){
				for(i=1;i<=n;i++){
					var menu=document.getElementById(name+i);
					var con=document.getElementById("con_"+name+"_"+i);
					con.style.display=i==cursel?"block":"none";
					menu.className=i==cursel?"active":"";
				}
			}
		  </script>
          <div class="tabmenu">
            <ul class="tab">
              <li class="active" id="tab1" onclick="setTabCatGoods(&#39;tab&#39;,1,3)">基本信息</li>
              <li class="normal" id="tab2" onclick="setTabCatGoods(&#39;tab&#39;,2,3)">更换头像</li>
              <!-- <li class="normal" id="tab3" onclick="setTabCatGoods(&#39;tab&#39;,3,3)">实名认证</li> --> 
            </ul>
          </div>
          <div class="ncm-user-profile">
            <div class="ncm-default-form" id="con_tab_1">
              <form name="formEdit" action="${ctx}/UserMessage/update.xiugai?id=${sessionScope.user.id}" method="post">
                <table width="100%" border="0" cellpadding="10" cellspacing="1" bgcolor="#eee">
                    <tbody><tr>
                      <td width="35%" align="right">用户名称：</td>
                      <td width="65%" align="left">
                      	<input type="text" name="username" value="${useryou.userName}"   size="25" class="inputBg" style="ime-mode:disabled">
                        <span id="username_message" style="color:#C81623"></span>
                      </td>
                    </tr>
                    <tr>
                      <td align="right">出生日期：</td>
                      <td align="left"> 
                      <input type="date" name="birthday" value="${useryou.commB}"  size="25" class="inputBg" style="ime-mode:disabled">
                      </td>
                    </tr>
                    <tr>
                      <td align="right">性别：</td>
                      <td align="left">
                      
                      <c:if test="${useryou.sex==0}">
                       <label>
                        <input type="radio" name="sex" value="0" checked="checked"> 女&nbsp;&nbsp; 
                       </label>
                       <label>
                          <input type="radio" name="sex" value="1"> 男&nbsp;&nbsp; 
                        </label>
                       </c:if>
                        
                       <c:if test="${useryou.sex==1}">
                        <label>
                        <input type="radio" name="sex" value="0" > 女&nbsp;&nbsp; 
                        </label>
                        <label>
                          <input type="radio" name="sex" value="1" checked="checked">男&nbsp;&nbsp; 
                        </label>
                       </c:if>
                       
                        
                       </td>
                    </tr>
                                        <tr>
                      	<td colspan="2" align="center">
                        	<label class="submit-border">
                          		<input name="act" type="hidden" value="act_edit_profile">
                          		<input name="submit" type="submit" class="main-btn main-btn-large" value="确认修改">
                        	</label>
                        </td>
                    </tr>
                </tbody></table>
              </form>
            </div>
            <div class="ncm-default-form" id="con_tab_2" style="display:none">
              <form name="formEdit" action="${ctx}/picture/uploading.view" method="post" enctype="multipart/form-data">
                <table width="100%" border="0" cellpadding="10" cellspacing="1" bgcolor="#eee">
                	<tbody><tr>
                    	<td width="35%" align="right">头像预览：</td>
                  	  	<td class="user-avatar">
                        	                    		<p class="hint">
                            	完善个人信息资料，上传头像图片有助于您结识更多的朋友。<br>
                      			<span style="">头像最佳默认尺寸为120x120像素。</span>
                            </p>
                 		</td>
                	</tr>
                	<tr>
                    	<td width="35%" align="right">更换头像：</td>
                        <td>
                            <div class="ncm-upload-btn"> 
                                <a href="javascript:void(0);"><span><input type="file" name="headimg"></span></a>
                            </div>
                      	</td>
                    </tr>
                    <tr>
                      	<td colspan="2" align="center">
                        	<label class="submit-border">
                          		<input name="act" type="hidden" value="act_edit_img">
                          		<input name="submit" type="submit" class="main-btn main-btn-large" value="确认修改">
                        	</label>
                        </td>
                    </tr>
                </tbody></table>
              </form>
            </div>
            <div class="ncm-default-form" id="con_tab_3" style="display:none"> 
              <script type="text/javascript" src="${ctx}/statics/js/region.js"></script><script type="text/javascript" src="${ctx}/statics/js/shopping_flow.js"></script> 
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
              <form name="formIdentity" action="" method="post" onsubmit="return identity()" enctype="multipart/form-data">
                <table width="100%" border="0" cellpadding="10" cellspacing="1" bgcolor="#eeeeee">
                                    <tbody><tr>
                    <th colspan="2">认证审核通过</th>
                  </tr>
                                    <tr>
                    <td width="28%" align="right"><font class="main-color">*</font>真实姓名：</td>
		    <td width="72%" align="left"><input type="text" name="real_name" value="" class="inputBg">
		    <div class="required-notice"><i class="notice-icon"></i><span class="notice-text people-name-notice"></span></div></td>
                  </tr>
                  <tr>
                    <td align="right"><font class="main-color">*</font>身份证号：</td>
		    <td align="left"><input type="text" name="card" value="" class="inputBg">
		    <div class="required-notice"><i class="notice-icon"></i><span class="notice-text people-num-notice"></span></div></td>
                  </tr>
                  <tr>
                    <td align="right"><font class="main-color">*</font>身份证证件照：</td>
                    <td align="left">正面：
                      <input type="file" name="face_card">
                      <br>
		      		      <div class="required-notice"><i class="notice-icon"></i><span class="notice-text people-card-notice"></span></div></td>
                  </tr>
                  <tr>
                    <td align="right">&nbsp;</td>
                    <td align="left">反面：
                      <input type="file" name="back_card">
                      <br>
                      </td>
                  </tr>
                  <tr>
                    <td align="right">现居地：</td>
                    <td align="left"><select name="country" id="selCountries" onchange="region.changed(this, 1, &#39;selProvinces&#39;)">
                        <option value="0">请选择</option>
                                                <option value="1">中国</option>
                                              </select>
                      <select name="province" id="selProvinces" onchange="region.changed(this, 2, &#39;selCities&#39;)">
                        <option value="0">请选择</option>
                                              </select>
                      <select name="city" id="selCities" onchange="region.changed(this, 3, &#39;selDistricts&#39;)">
                        <option value="0">请选择</option>
                                              </select>
                      <select name="district" id="selDistricts" style="display:none">
                        <option value="0">请选择</option>
                        		      </select>
		      <div class="required-notice fl"><i class="notice-icon"></i><span class="notice-text address-notice"></span></div></td>
                  </tr>
                  <tr>
                    <td align="right">详细地址：</td>
		    <td align="left"><input type="text" name="address" value="" class="inputBg">
		    <div class="required-notice"><i class="notice-icon"></i><span class="notice-text address-detail-notice"></span></div></td>
                  </tr>
                  <tr>
                    <td width="28%" align="right">&nbsp;</td>
                    <td align="left">
                    	<input name="act" type="hidden" value="act_identity">
                        <input name="submit" type="submit" value="确认" class="main-btn main-btn-large"></td>
                  </tr>
                </tbody></table>
              </form>
            </div>
          </div>
         
        </div>
    </div>
   
</div>

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