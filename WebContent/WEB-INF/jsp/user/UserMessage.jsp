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
              <form name="formEdit" action="" method="post" onsubmit="return userEdit()">
                <table width="100%" border="0" cellpadding="10" cellspacing="1" bgcolor="#eee">
                    <tbody><tr>
                      <td width="35%" align="right">用户名称：</td>
                      <td width="65%" align="left">
                      	<input type="text" name="username" value="yiren" onblur="check_username(this.value)" size="25" class="inputBg" style="ime-mode:disabled">
                        <span id="username_message" style="color:#C81623"></span>
                      </td>
                    </tr>
                    <tr>
                      <td align="right">出生日期：</td>
                      <td align="left"> 
                      	<select name="birthdayYear"><option value="1958" selected="">1958</option><option value="1959">1959</option><option value="1960">1960</option><option value="1961">1961</option><option value="1962">1962</option><option value="1963">1963</option><option value="1964">1964</option><option value="1965">1965</option><option value="1966">1966</option><option value="1967">1967</option><option value="1968">1968</option><option value="1969">1969</option><option value="1970">1970</option><option value="1971">1971</option><option value="1972">1972</option><option value="1973">1973</option><option value="1974">1974</option><option value="1975">1975</option><option value="1976">1976</option><option value="1977">1977</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option><option value="1981">1981</option><option value="1982">1982</option><option value="1983">1983</option><option value="1984">1984</option><option value="1985">1985</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992">1992</option><option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option><option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value="2008">2008</option><option value="2009">2009</option><option value="2010">2010</option><option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option><option value="2019">2019</option></select>&nbsp;<select name="birthdayMonth"><option value="1" selected="">01</option><option value="2">02</option><option value="3">03</option><option value="4">04</option><option value="5">05</option><option value="6">06</option><option value="7">07</option><option value="8">08</option><option value="9">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option></select>&nbsp;<select name="birthdayDay"><option value="1" selected="">01</option><option value="2">02</option><option value="3">03</option><option value="4">04</option><option value="5">05</option><option value="6">06</option><option value="7">07</option><option value="8">08</option><option value="9">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select> 
                      </td>
                    </tr>
                    <tr>
                      <td align="right">性别：</td>
                      <td align="left">
                        <label>
                          <input type="radio" name="sex" value="0" checked="checked">
                          保密&nbsp;&nbsp; </label>
                        <label>
                          <input type="radio" name="sex" value="1">
                          男&nbsp;&nbsp; </label>
                        <label>
                          <input type="radio" name="sex" value="2">
                          女 </label>
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
              <form name="formEdit" action="" method="post" enctype="multipart/form-data" onsubmit="return userEdit()">
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