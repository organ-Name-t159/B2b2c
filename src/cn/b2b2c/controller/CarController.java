package cn.b2b2c.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/car")
public class CarController {
	
	@RequestMapping("/addCar.html")
	@ResponseBody
	public String addCar() {
		System.out.println("添加购物车中");
		return "";
	}
	
}
