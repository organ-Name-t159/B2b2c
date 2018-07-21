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
    
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    
    <link rel="stylesheet" href="${ctx}/statics/css/font.css">
	<link rel="stylesheet" href="${ctx}/statics/css/xadmin.css">	
	<link rel="stylesheet" href="${ctx}/statics/css/modules/code.css">
	<link rel="stylesheet" href="${ctx}/statics/css/laydate.css">
	<link rel="stylesheet" href="${ctx}/statics/css/layer.css">
	<link rel="stylesheet" href="${ctx}/statics/css/layui.css">
	<link rel="stylesheet" href="${ctx}/statics/css/layui.mobile.css">	
		
    <script type="text/javascript" src="${ctx}/statics/js/jquery-1.12.4.js"></script>
    <script src="${ctx}/statics/js/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${ctx}/statics/js/xadmin.js"></script>
    <script type="text/javascript" src="${ctx}/statics/js/element.js"></script>
	<script type="text/javascript" src="${ctx}/statics/js/flow.js"></script>
	<script type="text/javascript" src="${ctx}/statics/js/carousel.js"></script>
	<script type="text/javascript" src="${ctx}/statics/js/code.js"></script>
	<script type="text/javascript" src="${ctx}/statics/js/form.js"></script>
	<script type="text/javascript" src="${ctx}/statics/js/laydate.js"></script>
	<script type="text/javascript" src="${ctx}/statics/js/layedit.js"></script>
	<script type="text/javascript" src="${ctx}/statics/js/layer.js"></script>
	<script type="text/javascript" src="${ctx}/statics/js/laypage.js"></script>
	<script type="text/javascript" src="${ctx}/statics/js/laytpl.js"></script>
	<script type="text/javascript" src="${ctx}/statics/js/layui.all.js"></script>
	<script type="text/javascript" src="${ctx}/statics/js/mobile.js"></script>
	<script type="text/javascript" src="${ctx}/statics/js/table.js"></script>
	<script type="text/javascript" src="${ctx}/statics/js/tree.js"></script>
	<script type="text/javascript" src="${ctx}/statics/js/upload.js"></script>
	<script type="text/javascript" src="${ctx}/statics/js/util.js"></script>
	<script type="text/javascript" src="${ctx}/statics/js/xcity.js"></script>
	<script type="text/javascript" src="${ctx}/statics/js/jquery.js"></script>
	
</head>
<body>
    <!-- 顶部开始 -->
    <div class="container">
        <div class="logo"><a href="./index.html">X-admin v2.0</a></div>
        <div class="left_open">
            <i title="展开左侧栏" class="iconfont">&#xe699;</i>
        </div>
        <ul class="layui-nav left fast-add" lay-filter="">
          <li class="layui-nav-item">
            <a href="javascript:;">+新增</a>
            <dl class="layui-nav-more"> <!-- 二级菜单 -->
              <dd><a onclick="x_admin_show('资讯','http://www.baidu.com')"><i class="iconfont">&#xe6a2;</i>资讯</a></dd>
              <dd><a onclick="x_admin_show('图片','http://www.baidu.com')"><i class="iconfont">&#xe6a8;</i>图片</a></dd>
               <dd><a onclick="x_admin_show('用户','http://www.baidu.com')"><i class="iconfont">&#xe6b8;</i>用户</a></dd>
            </dl>
          </li>
        </ul>
        <ul class="layui-nav right" lay-filter="">
          <li class="layui-nav-item">
            <a href="javascript:;">admin</a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
              <dd><a onclick="x_admin_show('个人信息','http://www.baidu.com')">个人信息</a></dd>
              <dd><a onclick="x_admin_show('切换帐号','http://www.baidu.com')">切换帐号</a></dd>
              <dd><a href="./login.html">退出</a></dd>
            </dl>
          </li>
          <li class="layui-nav-item to-index"><a href="/">前台首页</a></li>
        </ul>
        
    </div>
    <!-- 顶部结束 -->
