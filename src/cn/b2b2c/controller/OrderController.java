package cn.b2b2c.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	
	
	
	
	
	@RequestMapping(value="/userOrder.view")
	public String userOrder() {
		return "user/UserOrder";
	}

}
