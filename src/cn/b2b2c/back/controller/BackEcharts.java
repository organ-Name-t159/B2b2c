package cn.b2b2c.back.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/echarts")
public class BackEcharts {
	
	
	@RequestMapping(value="/echarts1.view")
	public String echarts1() {
		return "back/echarts1";
	}

}
