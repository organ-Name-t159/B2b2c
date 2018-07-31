<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <c:set value="${pageContext.request.contextPath}" var="ctx"></c:set>
<!DOCTYPE html>
<html style="height: 100%">
   <body style="height: 100%; margin: 0">
       <div id="container" style="height: 100%"></div>
       <!--<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
       <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ZUONbpqGBsYGXNIYHicvbAbM"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>-->
      <!--  <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script> -->
       <script type="text/javascript" src="${ctx}/js/back/echarts.js" ></script>
       <script type="text/javascript">
		var dom = document.getElementById("container");
		var myChart = echarts.init(dom);
		var app = {};
		option = null;
		var xAxisData = [];
		var data1 = [];
		var data2 = [];
		for (var i = 0; i < 100; i++) {
		    xAxisData.push('类目' + i);
		    data1.push((Math.sin(i / 5) * (i / 5 -10) + i / 6) * 5);
		    data2.push((Math.cos(i / 5) * (i / 5 -10) + i / 6) * 5);
		}
			option = {
			    title: {
			        text: '柱状图动画延迟'
			    },
			    legend: {
			        data: ['bar', 'bar2'],
			        align: 'left'
			    },
			    toolbox: {
			        // y: 'bottom',
			        feature: {
			            magicType: {
			                type: ['stack', 'tiled']
			            },
			            dataView: {},
			            saveAsImage: {
			                pixelRatio: 2
			            }
			        }
			    },
			    tooltip: {},
			    xAxis: {
			        data: xAxisData,
			        silent: false,
			        splitLine: {
			            show: false
			        }
			    },
			    yAxis: {
			    },
			    series: [{
			        name: 'bar',
			        type: 'bar',
			        data: data1,
			        animationDelay: function (idx) {
			            return idx * 10;
			        }
			    }, {
			        name: 'bar2',
			        type: 'bar',
			        data: data2,
			        animationDelay: function (idx) {
			            return idx * 10 + 100;
			        }
			    }],
			    animationEasing: 'elasticOut',
			    animationDelayUpdate: function (idx) {
			        return idx * 5;
			    }
			};;
			if (option && typeof option === "object") {
			    myChart.setOption(option, true);
			}
       </script>
   </body>
</html>