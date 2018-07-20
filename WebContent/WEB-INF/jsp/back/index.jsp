<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${pageContext.request.contextPath}" var="ctx"></c:set>
<script type="text/javascript">
var contextPath="${ctx}";
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<%@include file="backhead.jsp" %>
<%@include file="backleft.jsp" %>    
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
      <ul class="layui-tab-title">
        <li class="home"><i class="layui-icon">&#xe68e;</i>我的桌面</li>
      </ul>
      <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <iframe src="${ctx}/BackIndex/inToWelcome.view" frameborder="0" scrolling="yes" class="x-iframe"></iframe>
        </div>
      </div>
    </div>
</div>
<div class="page-content-bg"></div>
<!-- 右侧主体结束 -->
<%@include file="backfoot.jsp" %>    
</body>

</html>