package cn.b2b2c.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.b2b2c.pojo.Order;
import cn.b2b2c.pojo.Product;
import cn.b2b2c.pojo.User;
import cn.b2b2c.service.order.OrderService;
import cn.b2b2c.tools.EmptyUtils;
import cn.b2b2c.tools.Pager;
import cn.b2b2c.tools.TimeTransform;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	
	@Autowired
	private OrderService orderService;
	
	
	
	@RequestMapping(value="/userOrder.view")
	public String userOrder(HttpServletRequest request) throws Exception {
	User user=(User)request.getSession().getAttribute("user");
	
	 String category=request.getParameter("category");//当前页
		String  levelStr=request.getParameter("level");//类别
		String currentPageStr=request.getParameter("currentPage");
		String keyWord=request.getParameter("keyWord");
		String pageSizeStr=request.getParameter("pageSize");
		int rowPerPage=EmptyUtils.isEmpty(pageSizeStr)?6:Integer.parseInt(pageSizeStr);
		int currentPage=EmptyUtils.isEmpty(currentPageStr)?1:Integer.parseInt(currentPageStr);
		int level=EmptyUtils.isEmpty(levelStr)?1:Integer.parseInt(levelStr);
		int total=orderService.getCountComm(user.getId());
		
		Pager pager=new Pager(total, rowPerPage, currentPage);
		pager.setUrl("/order/userOrder.view?category="+(EmptyUtils.isEmpty(category)?"":category));		
		
		List<Order> orderList=orderService.getUserComm(currentPage, rowPerPage, user.getId());	
		
		for (Order order : orderList) {
			order.setNewTime(TimeTransform.isTime(order.getCreateTime()).toString());
		}
		
		request.setAttribute("pager", pager);
		request.setAttribute("total", total);
		request.setAttribute("orderList", orderList);
	
/*	
	List<Order> orderList=	orderService.getOrderById(user.getId());
	request.getSession().setAttribute("orderList", orderList);*/
	return "user/UserOrder";
	}

}
/**
 * String category=request.getParameter("category");
		String  levelStr=request.getParameter("level");
		String currentPageStr=request.getParameter("currentPage");
		String keyWord=request.getParameter("keyWord");
		String pageSizeStr=request.getParameter("pageSize");
		int rowPerPage=EmptyUtils.isEmpty(pageSizeStr)?16:Integer.parseInt(pageSizeStr);
		int currentPage=EmptyUtils.isEmpty(currentPageStr)?1:Integer.parseInt(currentPageStr);
		int level=EmptyUtils.isEmpty(levelStr)?1:Integer.parseInt(levelStr);
		int total=productService.getCount(keyWord,EmptyUtils.isEmpty(category)?null:Integer.parseInt(category),level);
		
		Pager pager=new Pager(total, rowPerPage, currentPage);
		pager.setUrl("/details/Wine.html?level="+level+"&category="+(EmptyUtils.isEmpty(category)?"":category));		
		
		List<Product> productsList=productService.getProductList(currentPage, rowPerPage, keyWord, EmptyUtils.isEmpty(category)?null:Integer.parseInt(category), level);				
		request.setAttribute("pager", pager);
		request.setAttribute("total", total);
		request.setAttribute("productsList", productsList);
 */
