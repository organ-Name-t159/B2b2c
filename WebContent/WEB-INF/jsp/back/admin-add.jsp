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
        <form class="layui-form" action="${ctx}/BackCate/adminNewly.view" method="post">
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
              <button  class="layui-btn" lay-filter="add" lay-submit="">
                  	新增
              </button>
          </div>
      </form>
    </div>
    
   
  </body>

</html>