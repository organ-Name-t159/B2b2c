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
       
            <div class="blank" ></div>
      <div id="find_pw" class="find_pw2">
        <div class="find_con">
          <div id="sflex04" class="stepflex">
            <dl class="first doing">
              <dt class="s-num">1</dt>
              <dd class="s-text"> 验证身份 <s></s> <b></b> </dd>
            </dl>
            <dl class="normal">
              <dt class="s-num">2</dt>
              <dd class="s-text"> 邮箱绑定 <s></s> <b></b> </dd>
            </dl>
            <dl class="last">
              <dt class="s-num">&nbsp;</dt>
              <dd class="s-text"> 完成 <s></s> <b></b> </dd>
            </dl>
          </div>
          <div id="find-box" class="uc_box">
            <form action="" method="post" id="fpForm" name="fpForm">
              <div id="error_container"></div>
              <div class="item">
                <label class="con_un">请选择验证身份方式：</label>
                <select id="validate_type" name="validate_type">
                                    <option id="validate_type_mobile_phone" value="mobile_phone" val="${user.phone}">已验证的手机号码</option>
                                  </select>
              </div>
              <div class="item v_mobile_phone v_item" style="/* display: none */">
                <label class="con_un">您的手机号：</label>
                <span id="l_mobile_phone">${tPhone}</span> </div>
              <div id="c_mobile_code" class="item v_mobile_phone v_item" style="display: none">
                <label class="con_un">请输入手机验证码：</label>
                <input type="text" id="mobile_code" name="mobile_code" class="text text_te2" value="" />
                <input id="zphone" type="button" value="获取手机验证码" class="code" />
              </div>
              <div class="item v_email v_item" style="display: none">
                <label class="con_un">您的邮箱地址：</label>
                <span id="l_email"></span> </div>
              <div id="c_email" class="item v_email v_item" style="display: none">
                <label class="con_un">请输入邮箱验证码：</label>
                <input type="text" id="email_code" name="email_code" class="text text_te2" value="" />
                <input id="zemail" type="button" value="获取邮箱验证码" class="code" />
              </div>
              <div class="item v_password v_item" style="display: none">
                <label class="con_un">用户名：</label>
                <span id="l_password"></span> </div>
              <div id="c_password" class="item v_password v_item" style="display: none">
                <label class="con_un">请输入登录密码：</label>
                <input type="password" id="password" name="password" class="text text_te2" value="" />
              </div>
              <div class="item">
                <label class="con_un">请输入验证码：</label>
                <input type="text" id="captcha" size="8" name="captcha" class="text text_te" placeholder="验证码" style="ime-mode: disabled" autocomplete="off" MaxLength="6" />
                <label class="img" style="margin-left: 5px"> 
                <!-- <img src="" alt="captcha" style="vertical-align: middle; cursor: pointer;" onClick="" />  -->
                <input id="zphones" class="zphone" type="button" onclick="phones();"  value="获取手机验证码 "style="color: #fff; background-color:#C81623;height: 32px;font-size: 12px;border: 0 none;">
                </label>
              </div>
              <div class="item">
                <label class="con_un">&nbsp;</label>
                <input type="hidden" name="act" value="to_email_binding" />
                <input type="button" name="button" id="btn_submit" class="main-btn main-btn-large" value="提交" />
              </div>
            </form>
          </div>
        </div>
      
      
      
        <script type="text/javascript">  
        function phones() {
        	//发送验证码  
        	$.ajax({  
                 url:"${ctx}/messageServlet",  
                 data:{  
                     "phone":$("#validate_type_mobile_phone").val()  
                 },  
                 type:"post",  
                 async:false,  
                 dataType:"text",  
                 success : function(data) {  
                     if(data=='true'){  
                         alert("验证码发送成功，收到后请输入验证码");
                         time(this); 
                     } else {  
                         alert("验证码发送失败");  
                     }  
                 },  
                 error : function() {  
                     alert("error");  
                 }  
             }); 
        	
        	//验证  
            $("#mobile_code").blur(function(){      
                $.ajax({  
                    url:"${ctx}/codeServlet",  
                    data:{  
                        "code":$("#captcha").val()  
                    },  
                    type:"post",  
                    async:false,  
                    dataType:"text",  
                    success : function(data) {  
                        if(data=='true'){  
                            alert("恭喜您，验证成功"); 
                           $("#btn_submit").click(function(){
                        	   window.location.href=contextPath+"/product/index.html";
                        	   
                           });
                        } else {  
                            alert("验证失败");  
                        }  
                    },  
                    error : function() {  
                        alert("error");  
                    }  
                });  
            });  
		}

          
        //验证码倒计时  
        var wait = 60;  
        function time(obj) {  
            if(wait==0) {  
                $("#zphones").removeAttr("disabled");  
                $("#zphones").val("获手机取验证码");  
                wait = 60;  
            }else {  
                $("#zphones").attr("disabled","true").css("background-color","#666666");  
                $("#zphones").val(wait+"秒后重试");
                wait--;  
                setTimeout(function() {     //倒计时方法  
                    time(obj);  
                },1000);    //间隔为1s  
            }  
        }
        
        
        </script>
        <script type="text/javascript">
                                    function show_validate_type(validate_type_obj){
                                        var type = $(validate_type_obj).val();
                                        var value = $("#validate_type_"+type).attr("val");
                                        $("#l_"+type).html(value);
                                        $(".v_item").hide();
                                        $(".v_"+type).show();
                                    }
                                    
                                    function send_email_code(emailCodeObj, sendButton){
                                        // 发送邮件
                                        var url = 'validate.php';
                                        $.post(url, {
                                            act: 'send_email_code'
                                        }, function(result) {
                                            if (result == 'ok') {
                                                //倒计时
                                                countdown(sendButton);
                                            } else {
                                                alert(result);
                                            }
                                        }, 'text');
                                    }
                                    
                                    function send_mobile_code(mobileCodeObj, sendButton) {
                                        // 发送邮件
                                        var url = 'validate.php';
                                        $.post(url, {
                                            act: 'send_mobile_code'
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
                                        
                                        show_validate_type($("#validate_type"));
                                        
                                        var validator = $("#fpForm").validate({
                                            debug: false,
                                            rules: {
                                                mobile_code: {
                                                    required: true
                                                },
                                                email_code: {
                                                    required: true
                                                },
                                                captcha: {
                                                    required: true
                                                }
                                            },
                                            messages: {
                                                mobile_code: {
                                                    required: "请输入手机验证码"
                                                },
                                                email_code: {
                                                    required: "请输入邮箱验证码"
                                                },
                                                captcha: {
                                                    required: "请输入验证码"
                                                }
                                            },
                                            errorPlacement: function(error, element) {
                                                error.appendTo(element.parent());  
                                            }
                                        });
                                        
                                        $("#validate_type").change(function(){
                                            show_validate_type($(this));
                                        });
                                        
                                        $("#zphone").click(function(){
                                            send_mobile_code($("#mobile_code"), $(this));
                                        });
                                        
                                        $("#zemail").click(function(){
                                            send_email_code($("#email_code"), $(this));
                                        });
                                        
                                        $("#btn_submit").click(function(){
                                            
                                            if(!validator.form()){
                                                return;
                                            }
                                            
                                            var type = $("#validate_type").val();
                                            
                                            var url = "security.php";
                                            var validate_type = $("#validate_type").val();
                                            $.post(url, {act: "validate", mobile_code: $("#mobile_code").val(), email_code: $("#email_code").val(), password: $("#password").val(), validate_type: validate_type, captcha: $("#captcha").val()}, function(data){
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