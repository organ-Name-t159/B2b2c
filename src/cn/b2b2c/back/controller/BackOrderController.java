package cn.b2b2c.back.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/BackOrder")
public class BackOrderController {
	
	@RequestMapping(value="/orderList.view")
	public String orderList() {
		return "back/order-list";
	}
	
	
	@RequestMapping(value="/orderAdd.view")
	public String orderAdd() {
		return "back/order-add";
	}
	
	

}
