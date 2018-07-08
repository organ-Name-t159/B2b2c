package cn.b2b2c.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.b2b2c.pojo.Product;
import cn.b2b2c.pojo.User;
import cn.b2b2c.pojo.UserAddress;
import cn.b2b2c.service.product.ProductService;
import cn.b2b2c.service.user.UserService;
import cn.b2b2c.tools.Constants;
import cn.b2b2c.tools.EmptyUtils;
import cn.b2b2c.tools.ReturnResult;
import cn.b2b2c.tools.ShoppingCart;


@Controller
@RequestMapping(value="/car")
public class CarController {
	
	@Resource
	private ProductService productService;
	
	@Resource
	private UserService userService;
	
	@RequestMapping(value="/addCar.html",method=RequestMethod.POST)
	@ResponseBody
	public Object addCar(HttpServletRequest request)throws Exception {
		System.out.println("添加购物车中");
		ReturnResult result=new ReturnResult();
		String pId=request.getParameter("productsId");
		String quantityStr=request.getParameter("number");
		if(quantityStr==null) {
			quantityStr="1";
		}
		Integer quantityS=1;
		quantityS=Integer.parseInt(quantityStr);
		//查询出商品
		Product product=productService.getProduct(Integer.parseInt(pId));
		if(product.getStock()<quantityS) {
			return result.returnFail("商品数量不足");
		}
		ShoppingCart cart=getCartFromSession(request);
		//往购物车放置商品
		result=cart.addItem(product, quantityS);
		if(result.getStatus()==Constants.ReturnResult.SUCCESS) {
			cart.setSum((EmptyUtils.isEmpty(cart.getSum()) ? 0.0 :cart.getSum())+(product.getPrice()*quantityS*1.0));
		}
		
		return result;
	}
	
	
	/**
	 * 从session中获取购物车
	 * @param request
	 * @return
	 */
	public ShoppingCart getCartFromSession(HttpServletRequest request) {
		HttpSession session=request.getSession();
		ShoppingCart cart=(ShoppingCart)session.getAttribute("cart");
		if(cart==null) {
			cart=new ShoppingCart();
			session.setAttribute("cart", cart);
		}		
		return cart;
	}
	
	
	
	@RequestMapping(value="/refresh.html",method=RequestMethod.POST)
	public Object refreshCart(HttpServletRequest request)throws Exception {
		HttpSession session=request.getSession();
		ShoppingCart cart=(ShoppingCart)getCartFromSession(request);
		cart=productService.calculate(cart);
		session.setAttribute("cart", cart);
		return "common/shoppingCar";
	}
	
	
	@RequestMapping(value="/deleteCart.html",method=RequestMethod.POST)
	@ResponseBody
	public ReturnResult deleteCart(HttpServletRequest request)throws Exception {
		ReturnResult result = new ReturnResult();
		//HttpSession session=request.getSession();		
		String number=request.getParameter("number");
		String quantityStr=request.getParameter("quantity");
		ShoppingCart cart=(ShoppingCart)getCartFromSession(request);
		Product product=productService.getProduct(Integer.parseInt(number));
		if(Integer.parseInt(quantityStr)>product.getStock()){
			return result.returnFail("商品数量不足");
    	}
		 cart = productService.modifyShoppingCart(number, quantityStr, cart);
		return result.returnSuccess();
	}
	
	
	@RequestMapping(value="/closeCart.html")
	public String closeCart(HttpServletRequest request)throws Exception {
		System.out.println("进入购物车结算页面");
		HttpSession session=request.getSession();
		ShoppingCart cart=(ShoppingCart)getCartFromSession(request);
		cart=productService.calculate(cart);
		session.setAttribute("cart", cart);				
		return "ShoppingCart1";
	}
	
	@RequestMapping(value="/getCart2.html",method=RequestMethod.POST)
	public String getCart2(HttpServletRequest request)throws Exception {
		System.out.println("进入购物车结算页面==具体选择");
		HttpSession session=request.getSession();
		User user=(User)session.getAttribute("user");
		List<UserAddress> uAddress=userService.getAll(user.getId());
		ShoppingCart cart=(ShoppingCart)getCartFromSession(request);
		cart=productService.calculate(cart);
		session.setAttribute("cart", cart);
		request.setAttribute("uAddress", uAddress);
		return "common/cartFlow2";
	}
	
	
	
	
	
}
