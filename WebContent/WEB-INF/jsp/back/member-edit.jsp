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
        <%-- <form class="layui-form" action="${ctx}/BackIndex/memberListUpdate.html?id=${userEdit.id}" method="post"> --%>
          
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
              	<button  class="layui-btn" onclick="updateMember(this,${userEdit.id})">
                  	修改
              </button>                        
          </div>
     <!--  </form> -->
    </div>
    <script>
    function updateMember(obj,id){
    	var userName=$("input[name='userName']").val();
    	var sex=$("input[name='sex']").val();
    	var email=$("input[name='email']").val();
    	var phone=$("input[name='phone']").val();
    	var birthday=$("input[name='birthday']").val();
    	/* alert(name)
    	alert(type) */
    	layer.confirm('确定要修改吗？',function(index){
    		//发异步删除数据
			$.ajax({
				url:contextPath+"/BackIndex/memberListUpdate.html",
				method:"post",
				data:{
					id:id,
					userName:userName,
					sex:sex,
					email:email,
					phone:phone,
					birthday:birthday
				},
				success:function(jsonStr){
					var result=eval("("+jsonStr+")");
					if(result.status==1){
						layer.msg('修改成功', {
							icon : 1,
							time : 1000							
						},function(){
							window.parent.location.reload();//刷新父级页面
		                    parent.layer.close(index);//关闭当前的弹窗
						});						
						 // 获得frame索引
	                    //var index = parent.layer.getFrameIndex(window.name);
	                    
					}else{
						layer.msg(result.message, {
							icon : 1,
							time : 1000
						});
					}						
					
				}
			});
    		
    		
    		
    	});
    }
    
    
      /* layui.use(['form','layer'], function(){
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
        
        
      }); */
  </script>
 
  </body>

</html>