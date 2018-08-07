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
            <blockquote class="layui-elem-quote">
                特别声明：ECharts，一个纯 Javascript 的图表库，可以流畅的运行在 PC 和移动设备上，兼容当前绝大部分浏览器（IE8/9/10/11，Chrome，Firefox，Safari等），底层依赖轻量级的 Canvas 类库 ZRender，提供直观，生动，可交互，可高度个性化定制的数据可视化图表。如需使用，详细了解可以访问官网 <a href="http://echarts.baidu.com/" style="color:red">ECharts</a>。 x-admin不承担任何版权问题。
            </blockquote>
            为 ECharts 准备一个具备大小（宽高）的 DOM
             <script src="${ctx}/statics/js/echarts.js" type="text/javascript"></script>
            <div id="main" style="width: 100%;height:400px;"></div>
            <blockquote class="layui-elem-quote">
                注意：本案例的Echarts图表库由cdn引入，需要在线才能正常使用，如想离想，请至Echarts官网下载。
            </blockquote>
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
			                text: '折线图堆叠'
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