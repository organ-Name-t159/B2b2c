<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>家家商城</title>
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
          <div class="tabmenu">
            <ul class="tab pngFix">
              <li class="active"  > <a href="#">红包</a> </li>
            </ul>
            <span class="ncm-btn" title="红包序列号">
            <form name="addBouns" action="" method="post" >
              <input onblur="if(this.value=='') this.value='红包序列号';" onfocus="if(this.value=='红包序列号') this.value='';"  name="bonus_sn" type="text" size="10" class="inputBgb" value="红包序列号"/>
              <input type="hidden" name="act" value="act_add_bonus" class="inputBg" />
              <input type="submit" class="bnt_blue_b" style="border:none;" value="添加红包" />
            </form>
            </span> </div>
          <div class="mar_top">
            <div id="tab_tab1_1">
              <ul class="bonus_con">
                 <c:if test="${dcStateList!=null}">
                 <c:forEach items="${dcStateList}" var="cl">              
                <li >
                  <p class="bonus_con_1"><strong>￥</strong><span class="type_money">${cl.money}</span>
                  <span class="bonus_status">${cl.stateName}</span></p>
                  <p>发行店铺：<a href="index.php" target="_blank">${cl.issue}</a></p>
                  <p>使用条件：满${cl.use}</p>
                  <p>有效时间：截至${cl.newTime}</p>
                
                </c:forEach> 
                </c:if>
                <c:if test="${dcStateList==null}">
                <li >
                <span>暂无红包</span>
                </li>
                </c:if>
               </ul>
               
              <div class="blank5"></div>
<script type="Text/Javascript" language="JavaScript">
<!--

function selectPage(sel){
  sel.form.submit();
}

//-->
</script>  </div>
          </div>
        </div>
    </div>
</div>

 <%@include file="/WEB-INF/jsp/foot.jsp"%>

</body>
</html>