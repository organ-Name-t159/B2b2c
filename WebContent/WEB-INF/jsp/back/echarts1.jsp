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
    <%-- <script src="${ctx}/statics/js/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${ctx}/statics/js/xadmin.js"></script> --%>   
</head>
<body>
   <div class="x-body">          
             <script src="${ctx}/statics/js/echarts.js" type="text/javascript"></script>
            <div id="main" style="width: 100%;height:400px;"></div>            
        </div> 
       
        <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var dom = document.getElementById("main");
        var myChart = echarts.init(dom);
        $.ajax({
			url:contextPath+"/echarts/echarts1Date.view",
			method:"post",
			data:{},
			success:function(jsonStr){
				jsonStr=eval("("+jsonStr+")");
				myChart.setOption({
			            title: {
			                text: '折线图堆叠-下单量'
			            },
			            tooltip: {
			                trigger: 'axis'
			            },
			            legend: {
			                data:['销售总量']
			            },
			            grid: {
			                left: '3%',
			                right: '4%',
			                bottom: '3%',
			                containLabel: true
			            },
			            toolbox: {
			                feature: {
			                    saveAsImage: {}
			                }
			            },
			            xAxis: {
			                type: 'category',
			                boundaryGap: false,
			                data: jsonStr.dataTime
			            },
			            yAxis: {
			                type: 'value'
			            },
			            series: [
			                {
			                    name:'销售',
			                    type:'line',
			                    stack: '总量',
			                    data:jsonStr.dataNumber
			                }
			            ]
				});
			}
        });
        // 指定图表的配置项和数据
        


        // 使用刚指定的配置项和数据显示图表。
        //myChart.setOption(option);
    </script>
</body>
</html>