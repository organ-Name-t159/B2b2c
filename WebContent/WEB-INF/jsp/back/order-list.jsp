<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt"%> 
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
    <div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="">首页</a>
        <a href="">演示</a>
        <a>
          <cite>导航元素</cite></a>
      </span>
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
    </div>
    <div class="x-body">
      <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so">
          <input class="layui-input" placeholder="开始日" name="start" id="start">
          <input class="layui-input" placeholder="截止日" name="end" id="end">
          <div class="layui-input-inline">
            <select name="contrller">
              <option>支付状态</option>
              <option>已支付</option>
              <option>未支付</option>
            </select>
          </div>
          <div class="layui-input-inline">
            <select name="contrller">
              <option>支付方式</option>
              <option>支付宝</option>
              <option>微信</option>
              <option>货到付款</option>
            </select>
          </div>
          <div class="layui-input-inline">
            <select name="contrller">
              <option value="">订单状态</option>
              <option value="0">待确认</option>
              <option value="1">已确认</option>
              <option value="2">已收货</option>
              <option value="3">已取消</option>
              <option value="4">已完成</option>
              <option value="5">已作废</option>
            </select>
          </div>
          <input type="text" name="username"  placeholder="请输入订单号" autocomplete="off" class="layui-input">
          <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
        </form>
      </div>
      <xblock>
        <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
        <button class="layui-btn" onclick="x_admin_show('添加用户','/BackOrder/orderAdd.view')"><i class="layui-icon"></i>添加</button>
        <span class="x-right" style="line-height:40px">共有数据：${total} 条</span>
      </xblock>
      <table class="layui-table">
        <thead>
          <tr>
            <th>
              <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
            </th>
            <th>订单编号</th>
            <th>收货人</th>
            <th>总金额</th>
            <th>应付金额</th>
            <th>订单状态</th>
            <th>支付状态</th>
            <th>发货状态</th>
            <th>支付方式</th>
            <th>配送方式</th>
            <th>下单时间</th>
            <th >操作</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${orderList}" var="ol">
          <tr>
            <td>
              <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
            </td>
            <td>${ol.serialNumber}</td>
            <td>${ol.consignee}:${ol.addressPhone}</td>
            <td>${ol.cost}</td>
            <td>${ol.cost}</td>
            <td>待确认</td>
            <td>${ol.statusName }</td>
            <td>${ol.deliveryStatus }</td>
            <td>${ol.wayName }</td>
            <td>${ol.dbtName }</td>
            <td><fm:formatDate var="t" value="${ol.createTime }" type="Date" pattern="yyyy-MM-dd HH:mm:ss"/>${t}</td>
            <td class="td-manage">
              <a title="查看"  onclick="x_admin_show('编辑','order-view.html')" href="javascript:;">
                <i class="layui-icon">&#xe63c;</i>
              </a>
              <a title="删除" onclick="member_del(this,'要删除的id')" href="javascript:;">
                <i class="layui-icon">&#xe640;</i>
              </a>
            </td>
          </tr>
          </c:forEach>
        </tbody>
      </table>
    <div class="page">
    	<div class="page-wrap fr">
		<div class="page-num fl">
		<c:if test="${pager.pageCount>=1}">
			<a class="num" href="${ctx}/${pager.url}&currentPage=1">首页</a>
			<c:if test="${pager.currentPage>1}">
            <a href="${ctx}/${pager.url}&currentPage=${pager.currentPage-1}" class="num prev disabled">上一页</a>
       		</c:if>
			<c:forEach var="temp" begin="${pager.currentPage>3?pager.currentPage-3:1}" end="${pager.pageCount-pager.currentPage>3?page.currentPage+3:pager.pageCount}" step="1">
				<c:if test="${pager.currentPage==temp}">
                <a href="${ctx}/${pager.url}&currentPage=${temp}" class="num">${temp}</a>
	            </c:if>
	            <c:if test="${pager.currentPage!=temp}">
	                <a href="${ctx}/${pager.url}&currentPage=${temp}" class="num">${temp}</a>
	            </c:if>
			</c:forEach>
			<c:if test="${pager.currentPage<pager.pageCount}">
            <a href="${ctx}/${pager.url}&currentPage=${pager.currentPage+1}" class="num prev disabled">下一页</a>
       		</c:if>
			<a class="num" href="${ctx}/${pager.url}&currentPage=${pager.pageCount}">尾页</a>			
		</c:if>
		<c:if test="${pager.pageCount==0}">
		        暂无记录
		</c:if>
		</div>
	</div>
  </div> 

    </div>
    <script>
      layui.use('laydate', function(){
        var laydate = layui.laydate;
        
        //执行一个laydate实例
        laydate.render({
          elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
          elem: '#end' //指定元素
        });
      });

       /*用户-停用*/
      function member_stop(obj,id){
          layer.confirm('确认要停用吗？',function(index){

              if($(obj).attr('title')=='启用'){

                //发异步把用户状态进行更改
                $(obj).attr('title','停用')
                $(obj).find('i').html('&#xe62f;');

                $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('已停用');
                layer.msg('已停用!',{icon: 5,time:1000});

              }else{
                $(obj).attr('title','启用')
                $(obj).find('i').html('&#xe601;');

                $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('已启用');
                layer.msg('已启用!',{icon: 5,time:1000});
              }
              
          });
      }

      /*用户-删除*/
      function member_del(obj,id){
          layer.confirm('确认要删除吗？',function(index){
              //发异步删除数据
              $(obj).parents("tr").remove();
              layer.msg('已删除!',{icon:1,time:1000});
          });
      }



      function delAll (argument) {

        var data = tableCheck.getData();
  
        layer.confirm('确认要删除吗？'+data,function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
      }
    </script>
    <script>var _hmt = _hmt || []; (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
      })();</script>
  </body>
</html>