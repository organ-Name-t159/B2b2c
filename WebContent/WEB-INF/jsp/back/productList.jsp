<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<span class="layui-breadcrumb"> <a href="">首页</a> <a href="">演示</a>
			<a> <cite>导航元素</cite></a>
		</span> <a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="javascript:location.replace(location.href);" title="刷新"> <i
			class="layui-icon" style="line-height: 30px">ဂ</i></a>
	</div>
	<div class="x-body">
		<div class="layui-row">
			<form class="layui-form layui-col-md12 x-so" action="${ctx}/BackCate/adminProduct.view" method="post">
				
				<input type="text" name="keyWord"  value="${keyWord}" placeholder="请输入订单号"
					autocomplete="off" class="layui-input">
				<button class="layui-btn">
					<i class="layui-icon">&#xe615;</i>
				</button>
			</form>
		</div>
		<xblock>
		<button class="layui-btn layui-btn-danger" onclick="delAll()">
			<i class="layui-icon"></i>批量删除
		</button>
		<button class="layui-btn"
			onclick="x_admin_show('添加用户','/BackOrder/orderAdd.view')">
			<i class="layui-icon"></i>添加
		</button>
		<button class="layui-btn" onclick="printProductList()">
			<i class="layui-icon">&#xe6ab;</i>全部打印
		</button>
		<span class="x-right" style="line-height: 40px">共有数据：${pager.rowCount}条</span> </xblock>
		<table class="layui-table">
			<thead>
				<tr>
					<th>
						<div class="layui-unselect header layui-form-checkbox"
							lay-skin="primary">
							<i class="layui-icon">&#xe605;</i>
						</div>
					</th>
					<th>商品编号</th>
					<th>产品名称</th>
					<th>价格</th>
					<th>市场价格</th>
					<th>库存</th>					
					<!-- <th>文件名</th> -->
					<th>销售量</th>
					<th>评价次数</th>
					<th>赠送积分</th>					
					<th>1：正常0：下架</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${productList}" var="temp">
				<tr>
					<td>
						<div class="layui-unselect layui-form-checkbox" lay-skin="primary"
							data-id='2'>
							<i class="layui-icon">&#xe605;</i>
						</div>
					</td>
					<td>${temp.id}</td>
					<td>${temp.name}</td>					
					<td>${temp.price}</td>
					<td>${temp.bazaarPrice}</td>
					<td>${temp.stock}</td>
					<%-- <td>${temp.fileName}</td> --%>
					<td>${temp.salesVolume}</td>
					<td>${temp.evaluateSales}</td>
					<td>${temp.giveIntegral}</td>
					<td>${temp.isDelete}</td>
					<td class="td-manage"><a title="查看" onclick="x_admin_show('编辑','/BackCate/adminProductEdit.view?productId=${temp.id}')" href="javascript:;">
							<i class="layui-icon">&#xe63c;</i>
					</a> 
					<a title="删除" onclick="member_del(this,'要删除的id')"
						href="javascript:;"> <i class="layui-icon">&#xe640;</i>
					</a>
					<a title="打印" onclick="printProduct(${temp.id})" href="javascript:;">
					<i class="layui-icon">&#xe6ab;</i>
					</a>
					</td>
				</tr>
			</c:forEach>
				
			</tbody>
		</table>
		<div class="page">
      <c:if test="${pager.pageCount>=1}">
      	<div>
      	<c:if test="${pager.currentPage>1}">
      		<a class="prev" href="${ctx}/${pager.url}&currentPage=${pager.currentPage-1}">&lt;&lt;</a>
      	</c:if>
          <c:forEach var="tempt" begin="${pager.currentPage>3?pager.currentPage-3:1}" end="${pager.pageCount-pager.currentPage>3?pager.currentPage+3:pager.pageCount}" step="1">
          	<c:if test="${pager.currentPage==tempt}">
          		<span class="current">${tempt}</span>
          		<%-- <a class="num" href="">${temp}</a> --%>
          	</c:if>
          	<c:if test="${pager.currentPage!=tempt}">
          		<a class="num" href="${ctx}/${pager.url}&currentPage=${tempt}">${tempt}</a>
          	</c:if>
          </c:forEach>         
         <c:if test="${pager.currentPage<pager.pageCount}">
         <a class="next" href="${ctx}/${pager.url}&currentPage=${pager.currentPage+1}">&gt;&gt;</a>
      	 </c:if>
          
        </div>
      </c:if>
       <c:if test="${pager.pageCount==0}">
       	暂无记录
       </c:if> 
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
      
      function printProductList(){
			layer.confirm('确认要打印商品吗？',function(index){
				$.ajax({
					url:contextPath+"/BackCate/printProductList.view",
					type:"post",
					data:{
						
					},
					success:function(jsonStr){
						if(jsonStr !=null){
							layer.msg('全部成功打印', {
								icon : 1,
								time : 1000
							});
						}else{
							layer.msg('打印失败', {
								icon : 2,
								time : 1000
							});
						}
						
					}
					
				});
				
			});
		}

		function printProduct(proId){
			layer.confirm('确认要打印商品吗？',function(index){
				$.ajax({
					url:contextPath+"/BackCate/printProduct.view",
					type:"post",
					data:{
						proId:proId
					},
					success:function(jsonStr){
						if(jsonStr !=null){
							layer.msg('成功打印', {
								icon : 1,
								time : 1000
							});
						}else{
							layer.msg('打印失败', {
								icon : 2,
								time : 1000
							});
						}
						
					}
					
				});
				
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
	
</body>
</html>