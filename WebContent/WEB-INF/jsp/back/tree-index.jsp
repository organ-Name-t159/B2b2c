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
			myChart.showLoading(); //èæ¯é¢è²æèèæ¯éæåº¦ä¿®æ¹

			var data1 = {
				"name": "flare",
				"children": [{
						"name": "data",
						"children": [{
								"name": "converters",
								"children": [{
										"name": "Converters",
										"value": 721
									},
									{
										"name": "DelimitedTextConverter",
										"value": 4294
									}
								]
							},
							{
								"name": "DataUtil",
								"value": 3322
							}
						]
					},
					{
						"name": "display",
						"children": [{
								"name": "DirtySprite",
								"value": 8833
							},
							{
								"name": "LineSprite",
								"value": 1732
							},
							{
								"name": "RectSprite",
								"value": 3623
							}
						]
					},
					{
						"name": "flex",
						"children": [{
							"name": "FlareVis",
							"value": 4116
						}]
					},
					{
						"name": "query",
						"children": [{
								"name": "AggregateExpression",
								"value": 1616
							},
							{
								"name": "And",
								"value": 1027
							},
							{
								"name": "Arithmetic",
								"value": 3891
							},
							{
								"name": "Average",
								"value": 891
							},
							{
								"name": "BinaryExpression",
								"value": 2893
							},
							{
								"name": "Comparison",
								"value": 5103
							},
							{
								"name": "CompositeExpression",
								"value": 3677
							},
							{
								"name": "Count",
								"value": 781
							},
							{
								"name": "DateUtil",
								"value": 4141
							},
							{
								"name": "Distinct",
								"value": 933
							},
							{
								"name": "Expression",
								"value": 5130
							},
							{
								"name": "ExpressionIterator",
								"value": 3617
							},
							{
								"name": "Fn",
								"value": 3240
							},
							{
								"name": "If",
								"value": 2732
							},
							{
								"name": "IsA",
								"value": 2039
							},
							{
								"name": "Literal",
								"value": 1214
							},
							{
								"name": "Match",
								"value": 3748
							},
							{
								"name": "Maximum",
								"value": 843
							},
							{
								"name": "methods",
								"children": [{
										"name": "add",
										"value": 593
									},
									{
										"name": "and",
										"value": 330
									},
									{
										"name": "average",
										"value": 287
									},
									{
										"name": "count",
										"value": 277
									},
									{
										"name": "distinct",
										"value": 292
									},
									{
										"name": "div",
										"value": 595
									},
									{
										"name": "eq",
										"value": 594
									},
									{
										"name": "fn",
										"value": 460
									},
									{
										"name": "gt",
										"value": 603
									},
									{
										"name": "gte",
										"value": 625
									},
									{
										"name": "iff",
										"value": 748
									},
									{
										"name": "isa",
										"value": 461
									},
									{
										"name": "lt",
										"value": 597
									},
									{
										"name": "lte",
										"value": 619
									},
									{
										"name": "max",
										"value": 283
									},
									{
										"name": "min",
										"value": 283
									},
									{
										"name": "mod",
										"value": 591
									},
									{
										"name": "mul",
										"value": 603
									},
									{
										"name": "neq",
										"value": 599
									},
									{
										"name": "not",
										"value": 386
									},
									{
										"name": "or",
										"value": 323
									},
									{
										"name": "orderby",
										"value": 307
									},
									{
										"name": "range",
										"value": 772
									},
									{
										"name": "select",
										"value": 296
									},
									{
										"name": "stddev",
										"value": 363
									},
									{
										"name": "sub",
										"value": 600
									},
									{
										"name": "sum",
										"value": 280
									},
									{
										"name": "update",
										"value": 307
									},
									{
										"name": "variance",
										"value": 335
									},
									{
										"name": "where",
										"value": 299
									},
									{
										"name": "xor",
										"value": 354
									},
									{
										"name": "_",
										"value": 264
									}
								]
							},
							{
								"name": "Minimum",
								"value": 843
							},
							{
								"name": "Not",
								"value": 1554
							},
							{
								"name": "Or",
								"value": 970
							},
							{
								"name": "Query",
								"value": 13896
							},
							{
								"name": "Range",
								"value": 1594
							},
							{
								"name": "StringUtil",
								"value": 4130
							},
							{
								"name": "Sum",
								"value": 791
							},
							{
								"name": "Variable",
								"value": 1124
							},
							{
								"name": "Variance",
								"value": 1876
							},
							{
								"name": "Xor",
								"value": 1101
							}
						]
					},
					{
						"name": "scale",
						"children": [{
								"name": "IScaleMap",
								"value": 2105
							},
							{
								"name": "LinearScale",
								"value": 1316
							},
							{
								"name": "LogScale",
								"value": 3151
							},
							{
								"name": "OrdinalScale",
								"value": 3770
							},
							{
								"name": "QuantileScale",
								"value": 2435
							},
							{
								"name": "QuantitativeScale",
								"value": 4839
							},
							{
								"name": "RootScale",
								"value": 1756
							},
							{
								"name": "Scale",
								"value": 4268
							},
							{
								"name": "ScaleType",
								"value": 1821
							},
							{
								"name": "TimeScale",
								"value": 5833
							}
						]
					}
				]
			};

			var data2 = {
				"name": "åå°åè½",
				"children": [{
						"name": "flex",
						"children": [{
							"name": "FlareVis",
							"value": 4116
						}]
					},
					{
						"name": "scale",
						"children": [{
								"name": "IScaleMap",
								"value": 2105
							},
							{
								"name": "LinearScale",
								"value": 1316
							},
							{
								"name": "LogScale",
								"value": 3151
							},
							{
								"name": "OrdinalScale",
								"value": 3770
							},
							{
								"name": "QuantileScale",
								"value": 2435
							},
							{
								"name": "QuantitativeScale",
								"value": 4839
							},
							{
								"name": "RootScale",
								"value": 1756
							},
							{
								"name": "Scale",
								"value": 4268
							},
							{
								"name": "ScaleType",
								"value": 1821
							},
							{
								"name": "TimeScale",
								"value": 5833
							}
						]
					},
					{
						"name": "display",
						"children": [{
							"name": "DirtySprite",
							"value": 8833
						}]
					}
				]
			};

			myChart.hideLoading();

			myChart.setOption(option = {
				tooltip: {
					trigger: 'item',
					triggerOn: 'mousemove' //æç¤ºæ¡è§¦åçæ¡ä»¶ï¼å¯éï¼mousemoveï¼é¼ æ ç§»å¨æ¶è§¦å
				},
				legend: { //å¾å½¢ç»ä»¶
					top: '2%',
					left: '3%',
					orient: 'vertical',
					data: [{
							name: 'tree1',
							icon: 'rectangle'//// å¼ºå¶è®¾ç½®å¾å½¢
						},
						{
							name: 'tree2',
							icon: 'rectangle'
						}
					],
					borderColor: '#c23531'
				},
				series: [{
						type: 'tree',

						name: 'tree1',

						data: [data1],

						top: '5%',
						left: '7%',
						bottom: '2%',
						right: '60%',

						symbolSize: 7,

						label: {//é¥¼å¾å¾å½¢ä¸çææ¬æ ç­¾ï¼å¯ç¨äºè¯´æå¾å½¢çä¸äºæ°æ®ä¿¡æ¯ï¼æ¯å¦å¼ï¼åç§°ç­
							normal: {
								position: 'left',
								verticalAlign: 'middle',
								align: 'right'
							}
						},


						leaves: {//å¶å­èç¹çç¹æ®éç½®ï¼å¦ä¸é¢çæ å¾å®ä¾ä¸­ï¼å¶å­èç¹åéå¶å­èç¹çæ ç­¾ä½ç½®ä¸åã
							label: {
								normal: {
									position: 'right',
									verticalAlign: 'middle',
									align: 'left'
								}
							}
						},
						
						//å­æ æå åå±å¼çäº¤äºï¼é»è®¤æå¼ ãç±äºç»å¾åºåæ¯æéçï¼
						//èéå¸¸ä¸ä¸ªæ å¾çèç¹å¯è½ä¼æ¯è¾å¤ï¼è¿æ ·å°±ä¼åºç°èç¹ä¹é´ç¸äºé®ççé®é¢ã
						//ä¸ºäºé¿åè¿ä¸é®é¢ï¼å¯ä»¥å°ææ¶æ å³çå­æ æå æ¶èµ·ï¼
						//ç­å°éè¦æ¶åå°å¶å±å¼ãå¦ä¸é¢å¾åå¸å±æ å¾ç¤ºä¾ï¼
						//èç¹ä¸­å¿ç¨èè²å¡«åçå°±æ¯æå æ¶èµ·çå­æ ï¼å¯ä»¥ç¹å»å°å¶å±å¼
						expandAndCollapse: true,

						animationDuration: 550,//åå§å¨ç»çæ¶é¿ï¼æ¯æåè°å½æ°ï¼å¯ä»¥éè¿æ¯ä¸ªæ°æ®è¿åä¸åç delay æ¶é´å®ç°æ´æå§çåå§å¨ç»ææ
						animationDurationUpdate: 750//æ°æ®æ´æ°å¨ç»çæ¶é¿

					},
					{
						type: 'tree',
						name: 'tree2',
						data: [data2],

						top: '20%',
						left: '60%',
						bottom: '22%',
						right: '18%',

						symbolSize: 7,

						label: {
							normal: {
								position: 'left',
								verticalAlign: 'middle',
								align: 'right'
							}
						},

						leaves: {
							label: {
								normal: {
									position: 'right',
									verticalAlign: 'middle',
									align: 'left'
								}
							}
						},

						expandAndCollapse: true,

						animationDuration: 550,
						animationDurationUpdate: 750
					}
				]
			});
		</script>
	</body>

</html>