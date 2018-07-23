<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set value="${pageContext.request.contextPath}" var="ctx"></c:set>
<script type="text/javascript">
var contextPath="${ctx}";
</script>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.0</title>
    <link rel="stylesheet" href="${ctx}/statics/css/font.css">
	<link rel="stylesheet" href="${ctx}/statics/css/xadmin.css">
	
	<script type="text/javascript" src="${ctx}/statics/js/jquery-1.12.4.js"></script>
    <script src="${ctx}/statics/js/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${ctx}/statics/js/xadmin.js"></script>   
</head>
<body>
    <div class="x-body">
        <form class="layui-form" action="${ctx}/BackIndex/memberListUpdate.html?id=${userEdit.id}" method="post">
          
          <div class="layui-form-item">
              <label for="L_username" class="layui-form-label">
                  <span class="x-red">*</span>昵称
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="L_username" name="userName" required="" lay-verify="nikename"
                  autocomplete="off" value="${userEdit.userName}" class="layui-input">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="L_sex" class="layui-form-label">
                  <span class="x-red">*</span>性别
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="L_pass" name="sex" required="" lay-verify="sex"
                  autocomplete="off" value="${userEdit.sex}" class="layui-input">
              </div>
              <div class="layui-form-mid layui-word-aux">
            	  1:男，0：女
           </div>             
          </div>
          <div class="layui-form-item">
              <label for="L_email" class="layui-form-label">
                  <span class="x-red">*</span>邮箱
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="L_repass" name="email" required="" lay-verify="email"
                  autocomplete="off" value="${userEdit.email}" class="layui-input">
              </div>
          </div>
           <div class="layui-form-item">
              <label for="L_phone" class="layui-form-label">
                  <span class="x-red">*</span>电话
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="L_repass" name="phone" required="" lay-verify="phone"
                  autocomplete="off" value="${userEdit.phone}" class="layui-input">
              </div>
            <div class="layui-form-mid layui-word-aux">
            	   标准11位   
           </div>
          </div>
          
           <div class="layui-form-item">
              <label for="L_birthday" class="layui-form-label">
                  <span class="x-red">*</span>出生日期
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="L_repass" name="birthday" required="" lay-verify="birthday"
                  autocomplete="off" value="${userEdit.commB}" class="layui-input">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="L_repass" class="layui-form-label">
              </label>             
              	<button  class="layui-btn" lay-filter="update" lay-submit="">
                  	修改
              </button>                        
          </div>
      </form>
    </div>
    <script>
      layui.use(['form','layer'], function(){
          $ = layui.jquery;
        var form = layui.form
        ,layer = layui.layer;
      
        //自定义验证规则
        form.verify({
          nikename: function(value){
            if(value.length < 5){
              return '昵称至少得5个字符啊';
            }
          }
          ,pass: [/(.+){6,12}$/, '密码必须6到12位']
          ,repass: function(value){
              if($('#L_pass').val()!=$('#L_repass').val()){
                  return '两次密码不一致';
              }
          }
        });

        //监听提交
        form.on('submit(add)', function(data){
          console.log(data);
          //发异步，把数据提交给php
          layer.alert("增加成功", {icon: 6},function () {
              // 获得frame索引
              var index = parent.layer.getFrameIndex(window.name);
              //关闭当前frame
              parent.layer.close(index);
          });
          return false;
        });
        
        
      });
  </script>
    <script>var _hmt = _hmt || []; (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
      })();</script>
  </body>

</html>