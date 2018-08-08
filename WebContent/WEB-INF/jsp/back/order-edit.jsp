<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt" %>  
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
        <form class="layui-form">
        <c:forEach items="${orders}" var="os" end="0">
          <div class="layui-form-item">
              <label for="username" class="layui-form-label">
                  <span class="x-red">*</span>订单编号
              </label>
              <div class="layui-input-inline">
                 <label for="username" class="layui-form-label">
                  ${os.serialNumber}
                  </label>
              </div>
          </div>
          <div class="layui-form-item">
              <label for="username" class="layui-form-label">
                  <span class="x-red">*</span>下单时间
              </label>
              <div class="layui-input-inline">
              <fm:formatDate var="t" value="${os.createTime }" type="Date" pattern="yyyy-MM-dd HH:mm:ss"/>
                  <input type="text" id="username" name="username" value="${t}" disabled="disabled" lay-verify="required"
                  autocomplete="off" class="layui-input">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="username" class="layui-form-label">
                  <span class="x-red">*</span>收货人
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="username" name="username" value="${os.consignee}" disabled="disabled" lay-verify="required"
                  autocomplete="off" class="layui-input">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="phone" class="layui-form-label">
                  <span class="x-red">*</span>手机
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="phone" name="phone" value="${os.addressPhone}" disabled="disabled" lay-verify="phone"
                  autocomplete="off" class="layui-input">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="username" class="layui-form-label">
                  <span class="x-red">*</span>收货地址
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="username" name="username" value="${os.address}" disabled="disabled" lay-verify="required"
                  autocomplete="off" class="layui-input">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="username" class="layui-form-label">
                  <span class="x-red">*</span>配送物流
              </label>
             <div class="layui-input-inline">
                  <select id="shipping" name="shipping" class="valid">
                    <option value="shentong">申通物流</option>
                    <option value="shunfeng">顺丰物流</option>
                  </select>
              </div>
              </div>
             <div class="layui-form-item">
              <label for="username" class="layui-form-label">
                  <span class="x-red">*</span>配送方式
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="username" name="username" value="${os.dbtName}" disabled="disabled" lay-verify="required"
                  autocomplete="off" class="layui-input">
              </div>
          </div>  
          <div class="layui-form-item">
              <label for="username" class="layui-form-label">
                  <span class="x-red">*</span>发货状态
              </label>
               <div class="layui-input-inline">
                  <select name="contrller" id="sele">
                    <option value="1">${os.deliveryStatus}</option>
                    <option value="2">已发货</option>
                    <option value="3">已收货</option>
                    <option></option>
                  </select>
              </div>
              </div>
          <div class="layui-form-item">
              <label for="L_email" class="layui-form-label">
                  <span class="x-red">*</span>支付方式
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="L_email" name="email" value="${os.wayName}" disabled="disabled" lay-verify="email"
                  autocomplete="off" class="layui-input">
              </div>
              <div class="layui-form-mid layui-word-aux">
                  <span class="x-red">*</span>
              </div>
          </div>
           <div class="layui-form-item">
              <label for="L_email" class="layui-form-label">
                  <span class="x-red">*</span>支付状态
              </label>
          <div class="layui-input-inline">
                  <input type="text" id="L_email" name="email" value="${os.statusName}" disabled="disabled" lay-verify="email"
                  autocomplete="off" class="layui-input">
              </div>
              </div>
               <div class="layui-form-item">
              <label for="L_email" class="layui-form-label">
                  <span class="x-red">*</span>送货时间
              </label>
          <div class="layui-input-inline">
                  <input type="text" id="L_email" name="email" value="${os.timeName}" disabled="disabled" lay-verify="email"
                  autocomplete="off" class="layui-input">
              </div>
              </div>
               <div class="layui-form-item">
              <label for="L_email" class="layui-form-label">
                  <span class="x-red">*</span>总金额
              </label>
          <div class="layui-input-inline">
                  <input type="text" id="L_email" name="email" value="${os.cost}元" disabled="disabled" lay-verify="email"
                  autocomplete="off" class="layui-input">
              </div>
              </div>
          </c:forEach>
          <div class="layui-form-item layui-form-text">
              <label for="desc" class="layui-form-label">
                  商品
              </label>
              <div class="layui-input-block">
                  <table class="layui-table">
                    <tbody>
                    <c:forEach items="${orders}" var="s">
                      <tr>
                        <td><img src="${ctx}/statics/images/ ${s.fileName}">${s.name }</td>
                        <td>${s.price}</td>
                      </tr>
                     </c:forEach>
                    </tbody>
                  </table>
              </div>
          </div>
          
          <div class="layui-form-item">
              <label for="L_repass" class="layui-form-label">
              </label>
              <input type="button" class="layui-btn" onclick="tiJiao();" value="修改"/>
          </div>
      </form>
    </div>
    <script type="text/javascript">
    function tiJiao(){
    	var deliveryStatus=$("#sele").val();
    	
    	alert("此功能暂未实现");
    	$.ajax({
    		url:contextPath+"/BackOrder/update.view",
			method:"post",
			data:{
				deliveryStatus:deliveryStatus
			},
			success:function(jsonStr){
				var result=eval("("+jsonStr+")");
				//alert(result.status)
				if(result.status==1){   					
					window.location.href=contextPath+"/BackOrder/orderList.view";
				}else{
					alert(result.message)
				}
			}
    	})
    	
    	
    	
    	
    }
    
       /*  layui.use(['form','layer'], function(){
            $ = layui.jquery;
          var form = layui.form
          ,layer = layui.layer;
        
          //自定义验证规则
          form.verify({
            nikename: function(value){
              if(value.length < 5){
                return '昵称至少得5个字符啊';
              }
            }
            ,pass: [/(.+){6,12}$/, '密码必须6到12位']
            ,repass: function(value){
                if($('#L_pass').val()!=$('#L_repass').val()){
                    return '两次密码不一致';
                }
            }
          });

          //监听提交
          form.on('submit(add)', function(data){
            console.log(data);
            //发异步，把数据提交给php
            layer.alert("增加成功", {icon: 6},function () {
                // 获得frame索引
                var index = parent.layer.getFrameIndex(window.name);
                //关闭当前frame
                parent.layer.close(index);
            });
            return false;
          });
          
          
        }); */
    </script>
    <script>var _hmt = _hmt || []; (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
      })();</script>
  </body>
</html>