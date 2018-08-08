package cn.b2b2c.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alipay.api.domain.OrderDetailResult;

import cn.b2b2c.pojo.Order;
import cn.b2b2c.pojo.Product;
import cn.b2b2c.pojo.User;
import cn.b2b2c.pojo.UserProductEvaluate;
import cn.b2b2c.service.order.OrderService;
import cn.b2b2c.service.product.ProductService;
import cn.b2b2c.service.user.UserService;
import cn.b2b2c.tools.EmptyUtils;
import cn.b2b2c.tools.Pager;
import cn.b2b2c.tools.TimeTransform;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	
	@Autowired
	private OrderService orderService;
	
	@Resource
	private ProductService productService;
	
	@Resource
	private UserService userService;
	
	@RequestMapping(value="/userEvaluateSubmit.view")
	public String userEvaluateSubmit(HttpServletRequest request,HttpSession session) {
		User user=(User) session.getAttribute("user");
		String orderId=request.getParameter("orderId");
		String commentT=request.getParameter("content");
		String productId=request.getParameter("productId");
		UserProductEvaluate uEvaluate=new UserProductEvaluate();
		uEvaluate.setProductId(Integer.parseInt(productId));
		uEvaluate.setEvaluateTime(new Date());
		uEvaluate.setuPEName(commentT);
		uEvaluate.setUserId(user.getId());
		int eNumber=userService.addEvaluateName(uEvaluate);
		if(eNumber==1) {
			orderService.updateOrderDetail(Integer.parseInt(orderId), Integer.parseInt(productId));
		}		
		
		return "redirect:/user/welocome.html";
	}
	
	
	
	
	@RequestMapping(value="/userEvaluate.view")
	public String userEvaluate(HttpServletRequest request)throws Exception {
		String pId=request.getParameter("pId");
		String oId=request.getParameter("oId");
		
		Product product=productService.getProduct(Integer.parseInt(pId));
		request.setAttribute("product", product);
		request.setAttribute("oId", oId);
		return "user/UserEvaluate";
	}
	
	
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
		List<List<Order>> orders=new ArrayList<List<Order>>();
		Map<String,List<Order>> map=new HashMap<String, List<Order>>();
		for (Order order : orderList) {
			order.setNewTime(TimeTransform.isTime(order.getCreateTime()).toString());
			List<Order> s=orderService.getOrderById(user.getId(), order.getSerialNumber());
			map.put(order.getSerialNumber(), s);
			
		}
		
		Set<Map.Entry<String, List<Order>>> es = map.entrySet();
		 
		Iterator<Map.Entry<String, List<Order>>> it = es.iterator();
		while (it.hasNext()) {
			Map.Entry<String,  List<Order>> en = it.next();
			 
			// 获取Map.Entry对象中封装的key和value对象
			String key = en.getKey();
			List<Order> value = en.getValue();
			System.out.println("key=" + key);
			for (Order order : value) {
				System.out.println(" value=" + order.getName()+""+order.getAddressPhone());
			}
			
		}
		
		request.setAttribute("map", map);
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
