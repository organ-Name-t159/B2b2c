<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="height: 100%;">
		<head>
		<title></title>
		</head>
	<body style="height: 100%; margin: 0;">
		<div id="container" style="height: 100%;"></div>
		<script type="text/javascript" src="js/echarts.js"></script>
		<script type="text/javascript">
			var dom = document.getElementById("container"); //å¯ä»¥éè¿å®æ¥è·å¾æå®idçhtmlåç´ 
			var myChart = echarts.init(dom);
			var option = {
				title: {//æ é¢
					text: 'ECharts å¥é¨ç¤ºä¾'
				},
				tooltip: {//æç¤ºæ¡ç»ä»¶ã
					
				},
				legend: {//å¾å½¢ç»ä»¶
					data: ['éé', 'éé2']					
				},
				xAxis: {//ç´è§åæ ç³» grid ä¸­ç x è½´
					data: ["è¡¬è¡«", "ç¾æ¯è¡«", "éªçººè¡«", "è£¤å­", "é«è·é", "è¢å­"]
				},
				yAxis: {//ç´è§åæ ç³» grid ä¸­ç y è½´
					
				},
				series: [{//ç³»ååè¡¨ãæ¯ä¸ªç³»åéè¿ type å³å®èªå·±çå¾è¡¨ç±»å
					name: 'éé',//å°æ é¢
					type: 'bar',//å¾è¡¨ç±»å
					data: [5, 20, 36, 10, 10, 20]//åæ°
				},{
					name: 'éé2',
					type: 'bar',
					data: [50, 200, 360, 100, 100, 200]
				}]
			}
			myChart.setOption(option);
		</script>
	</body>

</html>