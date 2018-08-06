<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${pageContext.request.contextPath}" var="ctx"></c:set>
<script type="text/javascript">
var contextPath="${ctx}";
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>B2b2c后台登录</title>
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />

    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${ctx}/statics/css/font.css">
	<link rel="stylesheet" href="${ctx}/statics/css/xadmin.css">
    <script type="text/javascript" src="${ctx}/statics/js/jquery-1.12.4.js"></script>
    <script src="${ctx}/statics/js/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${ctx}/statics/js/xadmin.js"></script>

</head>
<body class="login-bg" onkeyup="submitKeyCode()">
    
    <div class="login layui-anim layui-anim-up">
        <div class="message">B2b2c后台管理登录</div>
        <div id="darkbannerwrap"></div>
        
        <form method="post" class="layui-form">
            <input name="username" placeholder="用户名"  type="text" lay-verify="required" class="layui-input" >
            <hr class="hr15">
            <input name="password" lay-verify="required" placeholder="密码"  type="password" class="layui-input">
            <hr class="hr15"><!-- onclick="submitLogin()" -->
            <input value="登录" style="width:100%;" type="button" onclick="submitLogin()">
            <hr class="hr20" >
        </form>
    </div>

    <script>
    function submitKeyCode(){
    	if(event.keyCode==13){
    		submitLogin();
    	}
    }
    	function submitLogin(){
    		
    			var name=$("input[name='username']").val();
        		var pass=$("input[name='password']").val();
        		if(name==null||name==""){
        			alert("账号不能为空")
        			return false;
        		}else if(pass==null||pass==""){
        			alert("密码不能为空")
        			return false;
        		}   		
        		 $.ajax({
        			url:contextPath+"/BackLogin/verifyLoginRole.view",
        			method:"post",
        			data:{
        				name:name,
        				pass:pass
        			},
        			success:function(jsonStr){
        				var result=eval("("+jsonStr+")");
        				//alert(result.status)
        				if(result.status==1){   					
        					window.location.href=contextPath+"/BackIndex/inToIndex.html";
        				}else{
        					alert(result.message)
        				}
        			}
        		}); 
    		
    		
    	}
    
    
    
    
    
    
   /*  $(function  () {
            layui.use('form', function(){
              var form = layui.form;
              // layer.msg('玩命卖萌中', function(){
              //   //关闭后的操作
              //   });
              //监听提交
              form.on('submit(login)', function(data){
                // alert(888)
                layer.msg(JSON.stringify(data.field),function(){
                    location.href='index.html'
                });
                return false;
              });
            });
        }) */ 

        
    </script>

    
</body>

</html>