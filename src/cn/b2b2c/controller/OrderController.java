package cn.b2b2c.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.b2b2c.pojo.Order;
import cn.b2b2c.pojo.User;
import cn.b2b2c.service.order.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	
	@Autowired
	private OrderService orderService;
	
	
	
	@RequestMapping(value="/userOrder.view")
	public String userOrder(HttpServletRequest request) throws Exception {
	User user=(User)request.getSession().getAttribute("user");
	List<Order> orderList=	orderService.getOrderById(user.getId());
	request.getSession().setAttribute("orderList", orderList);
	return "user/UserOrder";
	}

}
