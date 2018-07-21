<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
       
       
       
      
       
       
      
            <h5 title="邮箱绑定" class="user-title user-title-t"> <span>邮箱绑定</span> </h5>
       
       
            <div class="blank"></div>
      <div id="find_pw3">
        <div class="find_con"> 
                    <div id="sflex04" class="stepflex">
            <dl class="first done">
              <dt class="s-num">1</dt>
              <dd class="s-text"> 验证身份 <s></s> <b></b> </dd>
            </dl>
            <dl class="normal doing">
              <dt class="s-num">2</dt>
              <dd class="s-text"> 邮箱绑定 <s></s> <b></b> </dd>
            </dl>
            <dl class="last">
              <dt class="s-num">&nbsp;</dt>
              <dd class="s-text"> 完成 <s></s> <b></b> </dd>
            </dl>
          </div>
                    <div id="find-box" class="uc_box">
            <form action="security.php" method="post" id="fpForm" name="fpForm">
              <div id="error_container"></div>
              <div class="item">
                <label class="con_un">您的邮箱地址：</label>
                <input name="email" id="email" type="text" tabindex="1" placeholder="请输入邮箱地址" class="text" />
              </div>
              <div class="item">
                <label class="con_un">邮箱验证码：</label>
                <input name="email_code" id="email_code" type="text" tabindex="2" placeholder="请输入邮箱验证码" class="text text_te" />
                <input id="zemail" type="button" value="获取邮箱验证码" class="code" />
              </div>
              <div class="item">
                <label class="con_un">&nbsp;</label>
                <input type="hidden" name="act" value="email_binding_success" />
                <input type="button" id="btn_submit" name="btn_submit" class="main-btn main-btn-large" value="提交" />
              </div>
            </form>
          </div>
        </div>
        <script type="text/javascript">
                                    function send_email_code(emailCodeObj, sendButton){
                                        // 发送邮件
                                        var url = 'security.php';
                                        $.post(url, {
                                            act: 'send_email_code', 
                                            email: $("#email").val()
                                        }, function(result) {
                                            if (result == 'ok') {
                                                //倒计时
                                                countdown(sendButton);
                                            } else {
                                                alert(result);
                                            }
                                        }, 'text');
                                    }
                                    
                                    $().ready(function(){
                                        
                                        var validator = $("#fpForm").validate({
                                            debug: false,
                                            rules: {
                                                email: {
                                                    required: true,
                                                    email: true,
                                                    remote: {  
                                                        url: "security.php",     //后台处理程序  
                                                        type: "post",               //数据发送方式  
                                                        dataType: "json",           //接受数据格式     
                                                        data: {                     //要传递的数据  
                                                            act: 'check_email_exist',
                                                            email: function() {  
                                                                return $("#email").val();  
                                                            }  
                                                        }
                                                    }
                                                },
                                                email_code: {
                                                    required: true
                                                }
                                            },
                                            messages: {
                                                email: {
                                                    required: "请输入邮箱验证码",
                                                    email: "邮箱格式不正确",
                                                    remote: "邮箱已存在"
                                                },
                                                email_code: {
                                                    required: "请输入邮箱验证码"
                                                }
                                            },
                                            errorPlacement: function(error, element) {
                                                error.appendTo(element.parent());  
                                            }
                                        });
                                                                            
                                        $("#email").blur(function(){
                                            $("#email").valid();
                                        });
                                        
                                        $("#zemail").click(function(){
                                            if(!$("#email").valid()){
                                                return;
                                            }
                                            send_email_code($("#email_code"), $(this));
                                        });
                                        
                                        $("#btn_submit").click(function(){
                                            
                                            if(!validator.form()){
                                                return;
                                            }
                                            
                                            var type = $("#validate_type").val();
                                            
                                            var url = "security.php";
                                            $.post(url, {act: "do_email_binding", email: $("#email").val(), email_code: $("#email_code").val()}, function(data){
                                                if(data.error == 1){
                                                    alert(data.content);
                                                    if(data.url != undefined && data.url.length > 0){
                                                        window.location.href = data.url;
                                                    }
                                                }else{
                                                    $("#fpForm").submit();
                                                }
                                            }, "json");
                                        });
                                        
                                    });
                                </script> 
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