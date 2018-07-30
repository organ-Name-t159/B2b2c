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
				backgroundColor: '#2c343c',

				title: {//æ é¢
					text: 'Customized Pie',
					left: 'center',
					top: 20,
					textStyle: {
						color: '#ccc'
					}
				},

				tooltip: {//æç¤ºæ¡ç»ä»¶ã
					trigger: 'item',
					formatter: "{a} <br/>{b} : {c} ({d}%)"//å­ç¬¦ä¸²æ¨¡æ¿,æ¨¡æ¿åéæ {a}, {b}ï¼{c}ï¼{d}ï¼{e}ï¼åå«è¡¨ç¤ºç³»ååï¼æ°æ®åï¼æ°æ®å¼ç­
				},

				visualMap: {//æ¯è§è§æ å°ç»ä»¶ï¼ç¨äºè¿è¡ãè§è§ç¼ç ãï¼ä¹å°±æ¯å°æ°æ®æ å°å°è§è§åç´ ï¼è§è§ééï¼
					show: false,
					min: 80,//é¢è²ååçå¼
					max: 600,
					inRange: {
						colorLightness: [0, 1]//é¢è²çææåº¦
					}
				},
				series: [{//ç³»ååè¡¨ãæ¯ä¸ªç³»åéè¿ type å³å®èªå·±çå¾è¡¨ç±»å
					name: 'è®¿é®æ¥æº',
					type: 'pie',
					radius: '55%',
					center: ['50%', '50%'],
					data: [{
							value: 335,
							name: 'ç´æ¥è®¿é®'
						},
						{
							value: 310,
							name: 'é®ä»¶è¥é'
						},
						{
							value: 274,
							name: 'èçå¹¿å'
						},
						{
							value: 235,
							name: 'è§é¢å¹¿å'
						},
						{
							value: 400,
							name: 'æç´¢å¼æ'
						}
					].sort(function(a, b) {
						//æå½¢åæ ¹æ®æ°æ® value çæåºæ¹å¼ï¼å¦ææªæå® valueï¼åå¶å¼ä¸ºå­åç´  value ä¹åã
						//é»è®¤å¼ 'desc' è¡¨ç¤ºéåºæåºï¼è¿å¯ä»¥è®¾ç½®ä¸º 'asc'
						//è¡¨ç¤ºååºæåºï¼null è¡¨ç¤ºä¸æåºï¼ä½¿ç¨åå§æ°æ®çé¡ºåºï¼æèç¨åè°å½æ°è¿è¡æåï¼
						return a.value - b.value;
					}),
					roseType: 'radius',//æ¯å¦å±ç¤ºæåä¸æ ¼å°å¾ï¼éè¿åå¾åºåæ°æ®å¤§å°ãå¯éæ©ä¸¤ç§æ¨¡å¼ï¼æåºåå¿è§å±ç°æ°æ®çç¾åæ¯ï¼åå¾å±ç°æ°æ®çå¤§å°
					label: {//é¥¼å¾å¾å½¢ä¸çææ¬æ ç­¾ï¼å¯ç¨äºè¯´æå¾å½¢çä¸äºæ°æ®ä¿¡æ¯ï¼æ¯å¦å¼ï¼åç§°ç­
						normal: {
							textStyle: {
								color: 'rgba(255, 255, 255, 0.3)'
							}
						}
					},
					labelLine: {//æ ç­¾çè§è§å¼å¯¼çº¿æ ·å¼ï¼å¨ label ä½ç½® è®¾ç½®ä¸º'outside'çæ¶åä¼æ¾ç¤ºè§è§å¼å¯¼çº¿ã
						normal: {
							lineStyle: {
								color: 'rgba(255, 255, 255, 0.3)'
							},
							smooth: 0.2,
							length: 10,
							length2: 20
						}
					},
					itemStyle: {//æçº¿æç¹æ å¿çæ ·å¼ã
						normal: {
							color: 'red',
							shadowBlur: 200,
							shadowColor: 'rgba(0, 0, 0, 0.5)'
						}
					},

					animationType: 'scale',//åå§å¨ç»ææï¼å¯é
					animationEasing: 'elasticOut',//ç¼©æ¾ææï¼éåè®¾ç½® animationEasing='elasticOut' å¯ä»¥åæ popup çææ
					animationDelay: function(idx) {//åå§å¨ç»çå»¶è¿ï¼æ¯æåè°å½æ°ï¼å¯ä»¥éè¿æ¯ä¸ªæ°æ®è¿åä¸åç delay æ¶é´å®ç°æ´æå§çåå§å¨ç»ææ
						return Math.random() * 200;
					}
				}]
			};
			myChart.setOption(option);
		</script>
	</body>

</html>