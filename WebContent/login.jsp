<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>   
    <title>message</title>  
    <meta http-equiv="pragma" content="no-cache">  
    <meta http-equiv="cache-control" content="no-cache">  
    <meta http-equiv="expires" content="0">      
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
    <meta http-equiv="description" content="This is my page">  
    <!-- 
    <link rel="stylesheet" type="text/css" href="styles.css"> 
    -->  
    <!-- <script src="js/jquery-1.8.3.js"></script>   -->  
    <script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">  
        $(function(){  
            $("#getCode").removeAttr("disabled");  
            //发送验证码  
            $("#getCode").click(function(){   
                $.ajax({  
                    url:"messageServlet",  
                    data:{  
                        "phone":$("#phone").val()  
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
            });  
            //验证  
            $("#validate").click(function(){      
                $.ajax({  
                    url:"codeServlet",  
                    data:{  
                        "code":$("#code").val()  
                    },  
                    type:"post",  
                    async:false,  
                    dataType:"text",  
                    success : function(data) {  
                        if(data=='true'){  
                            alert("恭喜您，验证成功");  
                        } else {  
                            alert("验证失败");  
                        }  
                    },  
                    error : function() {  
                        alert("error");  
                    }  
                });  
            });  
        })  
          
        //验证码倒计时  
        var wait = 60;  
        function time(obj) {  
            if(wait==0) {  
                $("#getCode").removeAttr("disabled");  
                $("#getCode").val("获取验证码");  
                wait = 60;  
            }else {  
                $("#getCode").attr("disabled","true");  
                $("#getCode").val(wait+"秒后重试");  
                wait--;  
                setTimeout(function() {     //倒计时方法  
                    time(obj);  
                },1000);    //间隔为1s  
            }  
        }  
    </script>  
   </head>  
    
   <body>  
    <input type="text" id="phone" name="phone"  placeholder="请输入手机号码">
    <input id="getCode" type="button" value="获取验证码"><br>  
    <input type="text" id="code" name="code" placeholder="6位验证码"><input id="validate" type="button" value="验证">  
   </body> 
</html>