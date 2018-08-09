package cn.b2b2c.back.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.b2b2c.pojo.Order;
import cn.b2b2c.service.order.OrderService;
import cn.b2b2c.tools.EmptyUtils;
import cn.b2b2c.tools.Pager;
import cn.b2b2c.tools.TimeTransform;

@Controller
@RequestMapping("/BackOrder")
public class BackOrderController {
	
	@Autowired
	private OrderService orderService;
	
	
	@RequestMapping(value="/orderList.view")
	public String orderList(HttpServletRequest request) {
		String category=request.getParameter("category");//当前页
		String currentPageStr=request.getParameter("currentPage");
		String pageSizeStr=request.getParameter("pageSize");
		int rowPerPage=EmptyUtils.isEmpty(pageSizeStr)?6:Integer.parseInt(pageSizeStr);
		int currentPage=EmptyUtils.isEmpty(currentPageStr)?1:Integer.parseInt(currentPageStr);
		int total=orderService.getCountComm();
		
		Pager pager=new Pager(total, rowPerPage, currentPage);
		pager.setUrl("/BackOrder/orderList.view?category="+(EmptyUtils.isEmpty(category)?"":category));		
	
		List<Order> orderList=orderService.getOrderAll(currentPage, rowPerPage);
		/*Map<String,List<Order>> map=new HashMap<String, List<Order>>();
		for (Order order : orderList) {
			List<Order> s=orderService.getOrderById( order.getSerialNumber());
			map.put(order.getSerialNumber(), s);
			
		}*/
		/*request.setAttribute("map", map);*/
		
		
		for (Order order : orderList) {
			System.out.println(order.getSerialNumber());
		}
		request.setAttribute("pager", pager);
		request.setAttribute("total", total);
		request.setAttribute("orderList", orderList);
		return "back/order-list";
	}
	
	
	@RequestMapping(value="/orderAdd.view")
	public String orderAdd() {
		return "back/order-add";
	}
	
	@RequestMapping(value="/orderEdit.view")
	public String orderEdit(HttpServletRequest request) throws Exception {
		String serialNumber=request.getParameter("name");
		List<Order> orders=orderService.getOrderById(null,serialNumber);
		
		request.setAttribute("orders", orders);
		return "back/order-edit";
	}
 @RequestMapping(value="/update.view")
 @ResponseBody
 public Object updateView(HttpServletRequest request) {
	 String deliveryStatus=request.getParameter("deliveryStatus");
	
	 return   "";
 }
}
