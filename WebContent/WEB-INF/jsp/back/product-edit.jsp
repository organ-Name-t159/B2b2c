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
<div class="x-body"><%-- action="${ctx}/BackCate/adminUpdateProductFile.view" --%>
        <form class="layui-form" action="${ctx}/BackCate/adminUpdateProductFile.view" 
         method="post" enctype="multipart/form-data" onsubmit="return submitFou(this)">
          <div class="layui-form-item">
              <label for="name" class="layui-form-label">
                  <span class="x-red">*</span>产品编号
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="id" name="id" value="${product.id}" required="" 
                  autocomplete="off" class="layui-input" >
              </div>
          </div>
          <div class="layui-form-item">
              <label for="name" class="layui-form-label">
                  <span class="x-red">*</span>产品名称
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="name" name="name" value="${product.name}" required="" 
                  autocomplete="off" class="layui-input" >
              </div>
          </div>
          <div class="layui-form-item">
              <label for="description" class="layui-form-label">
                  <span class="x-red">*</span>产品描述
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="description" value="${product.description}" name="description" required="" l
                  autocomplete="off" class="layui-input">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="price" class="layui-form-label">
                  <span class="x-red">*</span>价格
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="price" value="${product.price}" name="price" required="" l
                  autocomplete="off" class="layui-input">
              </div>
              <div class="layui-form-mid layui-word-aux">
               	  元
              </div>
          </div>
          <div class="layui-form-item">
              <label for="bazaarPrice" class="layui-form-label">
                  <span class="x-red">*</span>市场价格
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="bazaarPrice" value="${product.bazaarPrice}" name="bazaarPrice" required="" 
                  autocomplete="off" class="layui-input">
              </div>
              <div class="layui-form-mid layui-word-aux">
               	  元
              </div>
          </div>
          <div class="layui-form-item">
              <label for="rawfileName" class="layui-form-label">
                  <span class="x-red">*</span>原文件名
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="rawfileName" value="${product.fileName}"
                   class="layui-input" name="rawfileName" >
              </div>
              <div class="layui-form-mid layui-word-aux">
                  <img src="${ctx}/statics/images/${product.fileName}" width="120" height="120"/>
              </div>
          </div>
          <div class="layui-form-item">
              <label for="fileName" class="layui-form-label">
                  <span class="x-red">*</span>文件名
              </label>
              <div class="layui-input-inline">
                  <input type="file" id="fileName" value="${product.fileName}"
                   class="layui-input" name="fileName" onchange="setImg(this);">
              </div>
              <div class="layui-form-mid layui-word-aux">
                  <img id="thumburlShow" src="" width="120" height="120"/>
              </div>
          </div>
          <div class="layui-form-item">
              <label for="salesVolume" class="layui-form-label">
                  <span class="x-red">*</span>销售量
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="salesVolume" value="${product.salesVolume}" name="salesVolume" required="" 
                  autocomplete="off" class="layui-input">
              </div>
              <div class="layui-form-mid layui-word-aux">
               	  件
              </div>
          </div>
          <div class="layui-form-item">
              <label for="evaluateSales" class="layui-form-label">
                  <span class="x-red">*</span>评价次数
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="evaluateSales" value="${product.evaluateSales}" name="evaluateSales" required="" 
                  autocomplete="off" class="layui-input">
              </div>
              <div class="layui-form-mid layui-word-aux">
               	  次
              </div>
          </div>
          <div class="layui-form-item">
              <label for="giveIntegral" class="layui-form-label">
                  <span class="x-red">*</span>赠送积分
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="giveIntegral" value="${product.giveIntegral}" name="giveIntegral" required="" 
                  autocomplete="off" class="layui-input">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="model" class="layui-form-label">
                  <span class="x-red">*</span>型号
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="model" value="${product.model}" name="model" required="" 
                  autocomplete="off" class="layui-input">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="colour" class="layui-form-label">
                  <span class="x-red">*</span>颜色
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="colour" value="${product.colour}" name="colour" required="" 
                  autocomplete="off" class="layui-input">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="isDelete" class="layui-form-label">
                  <span class="x-red">1:正常</span><span class="x-red">0:下架</span>
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="isDelete" value="${product.isDelete}" name="isDelete" required="" 
                  autocomplete="off" class="layui-input">
              </div>
          </div>         
          <div class="layui-form-item">
              <label for="L_repass" class="layui-form-label">
              </label>
              <button  class="layui-btn" >
                	 修改
              </button>
          </div>
      </form>
    </div>
    <script type="text/javascript">
    function submitFou(obj){
    	if(confirm("确定要修改吗")){
    		return true;
    	}  	
   	 return false;
    }
    
    function setImg(obj){
    	var fSrc=$(obj).val();//获取图片路径
    	var data = new FormData();//动态form表单
    	 /* if(!/\.(?:png|jpg|bmp|gif|PNG|JPG|BMP|GIF)$/.test(fSrc))
         {
             alertLayel("类型必须是图片(.png|jpg|bmp|gif|PNG|JPG|BMP|GIF)");
             $(obj).val('');
             return false;
         } */
    	 $.each($(obj)[0].files,function(i,file){//遍历
             data.append('file', file);//添加数据
         }); 
    	// alert("1")
    	$.ajax({
			url:contextPath+"/BackCate/adminProductFile.view",
			type:"post",
			data:data,
			cache: false,
			contentType: false,    //不可缺
            processData: false,		//不可缺 
            dataType:"json",
			success:function(jsonStr){				
				//alert(jsonStr)				
				$("#thumburlShow").attr("src",jsonStr);//绑定某个属性，赋予值
			}
		}); 
    	
    }
     
    
    /* function closePro(obj){
    	var id=$("input[name='id']").val();
    	var name=$("input[name='name']").val();
    	var description=$("input[name='description']").val();
    	var price=$("input[name='price']").val();
    	var bazaarPrice=$("input[name='bazaarPrice']").val();
    	var salesVolume=$("input[name='salesVolume']").val();
    	var evaluateSales=$("input[name='evaluateSales']").val();
    	var giveIntegral=$("input[name='giveIntegral']").val();
    	var model=$("input[name='model']").val();
    	var colour=$("input[name='colour']").val();
    	var isDelete=$("input[name='isDelete']").val();
    	//var =$("input[name='']").val();
    	layer.confirm('确定要修改吗？',function(index){
    		$.ajax({
				url:contextPath+"/BackCate/adminUpdateProductFile.view",
				method:"post",
				data:{
					id:id,
					name:name,
					description:description,
					price:price,
					bazaarPrice:bazaarPrice,
					salesVolume:salesVolume,
					evaluateSales:evaluateSales,
					giveIntegral:giveIntegral,
					model:model,
					colour:colour,
					isDelete:isDelete
				},
				cache: false,
				contentType: false,    //不可缺
	            processData: false,		//不可缺
				success:function(jsonStr){
					if(jsonStr=="1"){
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
						layer.msg('修改失败', {
							icon : 1,
							time : 1000
						});
					}						
					
				}
			});
    		
    			
    		
    	});
    }
     */
   
     
    
    
    
    
    
    
    
    </script>
    
</body>
</html>