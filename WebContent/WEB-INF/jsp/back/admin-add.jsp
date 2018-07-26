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
       <%--  <form class="layui-form" action="${ctx}/BackCate/adminNewly.view" method="post"> --%>
          <div class="layui-form-item">
              <label for="name" class="layui-form-label">
                  <span class="x-red">*</span>栏目名
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="name" name="name" required="" lay-verify="name"
                  autocomplete="off" value="" class="layui-input">
              </div>
              <div class="layui-form-mid layui-word-aux">
                  <span class="x-red">*</span>
              </div>
          </div>
          <div class="layui-form-item">
              <label for="type" class="layui-form-label">
                  <span class="x-red">*</span>排序
              </label>
              <div class="layui-input-inline">
                  <input type="text" value="${type}" id="type" name="type" required="" lay-verify="type"
                  autocomplete="off" class="layui-input" readonly>
              </div>
              <div class="layui-form-mid layui-word-aux">
                  <span class="x-red">*</span>不能轻易改动
              </div>
          </div>
          <div class="layui-form-item">
              <label for="parentId" class="layui-form-label">
                  <span class="x-red">*</span>父级id
              </label>
              <div class="layui-input-inline">
                  <input type="text" value="${parentId}" id="parentId" name="parentId" required="" lay-verify="parentId"
                  autocomplete="off" class="layui-input" readonly>
              </div>
              <div class="layui-form-mid layui-word-aux">
                  <span class="x-red">*</span>不能轻易改动
              </div>
          </div>
          
          <div class="layui-form-item">
              <label for="L_repass" class="layui-form-label">
              </label>
              <button  class="layui-btn" onclick="addAdmin(this)">
                  	新增
              </button>
          </div>
      <!-- </form> -->
    </div>
    <script>
    function addAdmin(obj){
    	var name=$("input[name='name']").val();
    	var type=$("input[name='type']").val();
    	var parentId=$("input[name='parentId']").val();
    	/* alert(name)
    	alert(type) */
    	layer.confirm('确定要新增吗？',function(index){
    		//发异步删除数据
			$.ajax({
				url:contextPath+"/BackCate/adminNewly.view",
				method:"post",
				data:{
					parentId:parentId,
					name:name,
					type:type
				},
				success:function(jsonStr){
					if(jsonStr=="1"){
						layer.msg('新增成功', {
							icon : 1,
							time : 1000							
						},function(){
							window.parent.location.reload();//刷新父级页面
		                    parent.layer.close(index);//关闭当前的弹窗
						});						
						 // 获得frame索引
	                    //var index = parent.layer.getFrameIndex(window.name);
	                    
					}else{
						layer.msg('新增失败', {
							icon : 1,
							time : 1000
						});
					}						
					
				}
			});
    		
    		
    		
    	});
    }
    	
          /* //监听提交
           form.on('submit(add)', function(data){
            //console.log(data);
            //发异步，把数据提交给php
            if(data=="200"){
            	layer.alert("修改成功", {icon: 6},function () {
                    // 获得frame索引
                    var index = parent.layer.getFrameIndex(window.name);
                    //关闭当前frame
                    parent.layer.close(index);
                });
            }            
            return false;
          });  */
                          
    </script>
   
  </body>

</html>