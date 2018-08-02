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
            <div class="ncm-default-form" id="con_tab_2" style="display:none"><!-- method="post" enctype="multipart/form-data" -->
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
                                <a href="javascript:void(0);"><span><input type="file" name="headimg" onchange="setImg(this);"></span></a><span><img id="printShow" src="" width="80" height="80"></img></span>
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
              function setImg(obj){
              	var fSrc=$(obj).val();//获取图片路径
              	var data = new FormData();//动态form表单
              	
              	 $.each($(obj)[0].files,function(i,file){//遍历
                       data.append('file', file);//添加数据
                   }); 
              	
              	$.ajax({
          			url:contextPath+"/picture/uploading2.view",
          			type:"post",
          			data:data,
          			cache: false,
          			contentType: false,    //不可缺
                      processData: false,		//不可缺 
                      dataType:"json",
          			success:function(jsonStr){				
          				//alert(jsonStr)				
          				$("#printShow").attr("src",jsonStr);//绑定某个属性，赋予值
          			}
          		}); 
              	
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