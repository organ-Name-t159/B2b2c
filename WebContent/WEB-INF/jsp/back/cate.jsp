<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set value="${pageContext.request.contextPath}" var="ctx"></c:set>
<script type="text/javascript">
	var contextPath = "${ctx}";
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
			<form class="layui-form layui-col-md12 x-so layui-form-pane" action="${ctx}/BackCate/adminCateAdd.view" method="post">
				<input class="layui-input" placeholder="分类名" name="cate_name">
				<button class="layui-btn" lay-submit="" lay-filter="sreach">
					<i class="layui-icon"></i>增加
				</button>
			</form>
		</div>
		<!-- <blockquote class="layui-elem-quote">
			每个tr 上有两个属性 cate-id='1' 当前分类id fid='0' 父级id ,顶级分类为 0，有子分类的前面加收缩图标<i
				class="layui-icon x-show" status='true'>&#xe623;</i>
		</blockquote> -->
		<xblock>
		<!-- <button class="layui-btn layui-btn-danger" onclick="delAll()">
			<i class="layui-icon"></i>批量删除
		</button>
		<span class="x-right" style="line-height: 40px">共有数据： 条</span> </xblock> -->
		<table class="layui-table layui-form">
			<thead>
				<tr>
					<th width="20">
						<div class="layui-unselect header layui-form-checkbox"
							lay-skin="primary">
							<i class="layui-icon">&#xe605;</i>
						</div>
					</th>
					<th width="70">ID</th>
					<th>栏目名</th>
					<th width="50">排序</th>
					<th width="50">状态</th>
					<th width="220">操作</th>
			</thead>
			<tbody class="x-cate">
				<c:forEach items="${productCategoryVoListBack}" var="temp">
					<tr cate-id='${temp.productCategory.id}'
						fid='${temp.productCategory.parentId}'>
						<td>
							<div class="layui-unselect layui-form-checkbox"
								lay-skin="primary" data-id='2'>
								<i class="layui-icon">&#xe605;</i>
							</div>
						</td>
						<td>${temp.productCategory.id}</td>
						<td><i class="layui-icon x-show" status='true'>&#xe623;</i>
							${temp.productCategory.name}</td>
						<td><input type="text" class="layui-input x-sort"
							name="order" value="${temp.productCategory.type}"></td>
						<td><input type="checkbox" name="switch" lay-text="开启|停用"
							checked="" lay-skin="switch"></td>
						<td class="td-manage">
							<button class="layui-btn layui-btn layui-btn-xs"
								onclick="x_admin_show('编辑','/BackCate/adminEdit.view?pcId=${temp.productCategory.id}')">
								<i class="layui-icon">&#xe642;</i>编辑
							</button>
							<button class="layui-btn layui-btn-warm layui-btn-xs"
								onclick="x_admin_show('添加子栏目','/BackCate/adminAdd.view?type=2&parentId=${temp.productCategory.id}')">
								<i class="layui-icon">&#xe642;</i>添加子栏目
							</button>
							<button class="layui-btn-danger layui-btn layui-btn-xs"
								onclick="member_del(this,${temp.productCategory.id})" href="javascript:;">
								<i class="layui-icon">&#xe640;</i>删除
							</button>
						</td>
					</tr>
					<c:forEach items="${temp.productCategoryVoList}" var="vo1">
						<tr cate-id='${vo1.productCategory.id}'
							fid='${vo1.productCategory.parentId}'>
							<td>
								<div class="layui-unselect layui-form-checkbox"
									lay-skin="primary" data-id='2'>
									<i class="layui-icon">&#xe605;</i>
								</div>
							</td>
							<td>${vo1.productCategory.id}</td>
							<td><i class="layui-icon x-show" status='true'>&#xe623;</i>
								${vo1.productCategory.name}</td>
							<td><input type="text" class="layui-input x-sort"
								name="order" value="${vo1.productCategory.type}"></td>
							<td><input type="checkbox" name="switch" lay-text="开启|停用"
								checked="" lay-skin="switch"></td>
							<td class="td-manage">
								<button class="layui-btn layui-btn layui-btn-xs"
									onclick="x_admin_show('编辑','/BackCate/adminEdit.view?pcId=${vo1.productCategory.id}')">
									<i class="layui-icon">&#xe642;</i>编辑
								</button>
								<button class="layui-btn layui-btn-warm layui-btn-xs"
									onclick="x_admin_show('添加子栏目','/BackCate/adminAdd.view?type=3&parentId=${vo1.productCategory.id}')">
									<i class="layui-icon">&#xe642;</i>添加子栏目
								</button>
								<button class="layui-btn-danger layui-btn layui-btn-xs"
									onclick="member_del(this,${vo1.productCategory.id})" href="javascript:;">
									<i class="layui-icon">&#xe640;</i>删除
								</button>
							</td>
						</tr>
						<c:forEach items="${vo1.productCategoryVoList}" var="vo2">
							<tr cate-id='${vo2.productCategory.id}'
								fid='${vo2.productCategory.parentId}'>
								<td>
									<div class="layui-unselect layui-form-checkbox"
										lay-skin="primary" data-id='2'>
										<i class="layui-icon">&#xe605;</i>
									</div>
								</td>
								<td>${vo2.productCategory.id}</td>
								<td>
					              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					              ${vo2.productCategory.name}
					            </td>
								<td><input type="text" class="layui-input x-sort"
									name="order" value="${vo2.productCategory.type}"></td>
								<td><input type="checkbox" name="switch" lay-text="开启|停用"
									checked="" lay-skin="switch"></td>
								<td class="td-manage">
									<button class="layui-btn layui-btn layui-btn-xs"
										onclick="x_admin_show('编辑','/BackCate/adminEdit.view?pcId=${vo2.productCategory.id}')">
										<i class="layui-icon">&#xe642;</i>编辑
									</button>									
									<button class="layui-btn-danger layui-btn layui-btn-xs"
										onclick="member_del(this,${vo2.productCategory.id})" href="javascript:;">
										<i class="layui-icon">&#xe640;</i>删除
									</button>
								</td>
							</tr>
						</c:forEach>
					</c:forEach>
				</c:forEach>
				
			</tbody>
		</table>
	</div>
	<style type="text/css">
</style>
	<script>
		layui.use([ 'form' ], function() {
			form = layui.form;

		});

		/*用户-删除*/
		function member_del(obj, id) {
			layer.confirm('确认要删除吗？', function(index) {
				//发异步删除数据
				$.ajax({
					url:contextPath+"/BackCate/adminCateDelete.view",
					method:"post",
					data:{
						id:id
					},
					success:function(jsonStr){
						if(jsonStr=="1"){
							$(obj).parents("tr").remove();
							layer.msg('已删除!', {
								icon : 1,
								time : 1000
							});
						}						
					}
				});
				
			});
		}

		function delAll(argument) {

			var data = tableCheck.getData();

			layer.confirm('确认要删除吗？' + data, function(index) {
				//捉到所有被选中的，发异步进行删除
				layer.msg('删除成功', {
					icon : 1
				});
				$(".layui-form-checked").not('.header').parents('tr').remove();
			});
		}
	</script>

</body>
</html>