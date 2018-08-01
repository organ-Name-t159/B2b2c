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
        <form class="layui-form" action="">
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
          </div>
          <div class="layui-form-item">
              <label for="bazaarPrice" class="layui-form-label">
                  <span class="x-red">*</span>市场价格
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="bazaarPrice" value="${product.bazaarPrice}" name="bazaarPrice" required="" 
                  autocomplete="off" class="layui-input">
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
          </div>
          <div class="layui-form-item">
              <label for="evaluateSales" class="layui-form-label">
                  <span class="x-red">*</span>评价次数
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="evaluateSales" value="${product.evaluateSales}" name="evaluateSales" required="" 
                  autocomplete="off" class="layui-input">
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
                  <span class="x-red">*</span>1：正常0：下架
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="isDelete" value="${product.isDelete}" name="isDelete" required="" 
                  autocomplete="off" class="layui-input">
              </div>
          </div>         
          <div class="layui-form-item">
              <label for="L_repass" class="layui-form-label">
              </label>
              <button  class="layui-btn"  >
                	 增加
              </button>
          </div>
      </form>
    </div>
    <script type="text/javascript">
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
        
    </script>
    
</body>
</html>