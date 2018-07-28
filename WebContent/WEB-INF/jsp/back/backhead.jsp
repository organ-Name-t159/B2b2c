<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${pageContext.request.contextPath}" var="ctx"></c:set>
<script type="text/javascript">
var contextPath="${ctx}";
</script>

<head>
	<!-- <meta charset="UTF-8"> -->
	<title>B2b2c后台</title>
	<!-- <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" /> -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
   <!--  <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" /> -->
    
    <link rel="stylesheet" href="${ctx}/statics/css/font.css">
	<link rel="stylesheet" href="${ctx}/statics/css/xadmin.css">	
	<link rel="stylesheet" href="${ctx}/statics/css/modules/code.css">
	<link rel="stylesheet" href="${ctx}/statics/css/laydate.css">
	<link rel="stylesheet" href="${ctx}/statics/css/layer.css">
	<link rel="stylesheet" href="${ctx}/statics/css/layui.css">
	<link rel="stylesheet" href="${ctx}/statics/css/layui.mobile.css">	
		
     
</head>
<body>
    <!-- 顶部开始 -->
    <div class="container">
        <div class="logo"><a href="./index.html">B2b2c后台</a></div>
        <div class="left_open">
            <i title="展开左侧栏" class="iconfont">&#xe699;</i>
        </div>
        <ul class="layui-nav left fast-add" lay-filter="">
          <li class="layui-nav-item">
            <a href="javascript:;">+新增</a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
              <dd><a onclick="x_admin_show('资讯','http://www.baidu.com')"><i class="iconfont">&#xe6a2;</i>资讯</a></dd>
              <dd><a onclick="x_admin_show('图片','http://www.baidu.com')"><i class="iconfont">&#xe6a8;</i>图片</a></dd>
               <dd><a onclick="x_admin_show('用户','http://www.baidu.com')"><i class="iconfont">&#xe6b8;</i>用户</a></dd>
            </dl>
          </li>
        </ul>
        <ul class="layui-nav right" lay-filter="">
          <li class="layui-nav-item">
            <a href="javascript:;">${backUser.backUserName}</a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
              <!-- <dd><a onclick="x_admin_show('个人信息','http://www.baidu.com')">个人信息</a></dd> -->
              <dd><a onclick="x_admin_show('切换帐号','/BackLogin/inToLogin.html')">切换帐号</a></dd>
              <dd><a href="${ctx}/BackLogin/inToLogin.html">退出</a></dd>
            </dl>
          </li>
          <li class="layui-nav-item to-index"><a href="${ctx}/product/index.html">前台首页</a></li>
        </ul>
        
    </div>
    <!-- 顶部结束 -->
    <script type="text/javascript">
    	 function layuiOver(){
    		$(".layui-nav-child").show();
    	}
    	function layuiOut(){
    		$(".layui-nav-child").hide();
    	} 
    </script>
