package cn.b2b2c.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.b2b2c.pojo.DeliveryTime;
import cn.b2b2c.pojo.DiscountCoupon;
import cn.b2b2c.pojo.InvoiceContent;
import cn.b2b2c.pojo.InvoiceType;
import cn.b2b2c.pojo.PaymentWay;
import cn.b2b2c.pojo.Product;
import cn.b2b2c.pojo.User;
import cn.b2b2c.pojo.UserAddress;
import cn.b2b2c.service.deliverytime.DeliveryTimeService;
import cn.b2b2c.service.discountcoupon.DiscountCouponService;
import cn.b2b2c.service.invoice.InvoiceService;
import cn.b2b2c.service.order.OrderService;
import cn.b2b2c.service.orderdetail.OrderDetailService;
import cn.b2b2c.service.paymentway.PaymentWaySerivce;
import cn.b2b2c.service.product.ProductService;
import cn.b2b2c.service.user.UserService;
import cn.b2b2c.tools.Constants;
import cn.b2b2c.tools.EmptyUtils;
import cn.b2b2c.tools.ReturnResult;
import cn.b2b2c.tools.ShoppingCart;
import cn.b2b2c.tools.ShoppingCartItem;
import cn.b2b2c.tools.StringUtils;


@Controller
@RequestMapping(value="/car")
public class CarController {
	
	@Resource
	private ProductService productService;
	
	@Resource
	private UserService userService;
	
	@Resource
	private DeliveryTimeService deliveryTimeService;
	
	@Resource
	private DiscountCouponService discountCouponService;
	
	@Resource
	private InvoiceService invoiceService;
	
	@Resource
	private PaymentWaySerivce paymentWaySerivce;
	
	@Resource
	private OrderService orderService;
	
	@Resource
	private OrderDetailService orderDetailService;
	
	
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
		if(user==null) {
			return "redirect:/register/login.html";
		}
		List<UserAddress> uAddress=userService.getAll(user.getId());
		ShoppingCart cart=(ShoppingCart)getCartFromSession(request);
		cart=productService.calculate(cart);
		
		List<DeliveryTime> deliveryTime=deliveryTimeService.getAll();
		
		List<DiscountCoupon> lCoupons=discountCouponService.getDiscountCoupon(user.getId(), 1);
		
		List<InvoiceType> lTypes=invoiceService.getInvoiceType();
		List<InvoiceContent> lContents=invoiceService.getInvoiceContent();
		
		List<PaymentWay> lWays=paymentWaySerivce.getAll();
		session.setAttribute("cart", cart);
		request.setAttribute("uAddress", uAddress);
		request.setAttribute("deliveryTime", deliveryTime);
		request.setAttribute("lCoupons", lCoupons);
		request.setAttribute("lTypes", lTypes);
		request.setAttribute("lContents", lContents);
		request.setAttribute("lWays", lWays);
		return "common/cartFlow2";
	}
	
	@RequestMapping(value="/TiscountCouponMoney.html",method=RequestMethod.POST)
	@ResponseBody
	public Object TiscountCouponMoney(HttpServletRequest request) {
		String id=request.getParameter("tId");
		DiscountCoupon dCoupon=discountCouponService.getAll(Integer.parseInt(id));
		request.setAttribute("dCoupon", dCoupon);
		return dCoupon;
	}
	
	
	@RequestMapping(value="/orderAll.html",method=RequestMethod.POST)
	public Object orderAll(HttpServletRequest request)throws Exception {
		String userId=request.getParameter("userId");
		String UaddressIdN=request.getParameter("UaddressIdN");
		String uTime=request.getParameter("uTime");
		String uTiscountCouponId=request.getParameter("uTiscountCouponId");
		String invoiceTypeId=request.getParameter("invoiceTypeId");
		String invoiceContentId=request.getParameter("invoiceContentId");
		String leaveWord=request.getParameter("leaveWord");
		String monetAll=request.getParameter("monetAll");
		String paymentWayId=request.getParameter("paymentWayId");
		
		Integer paymentStatusId=1;
		Integer distributionWayId=1;
		/*if(Integer.parseInt(paymentWayId)==2) {
			paymentStatusId=1;
			System.out.println("未付款：1");
		}else if(Integer.parseInt(paymentWayId)==1) {
			paymentStatusId=2;
			System.out.println("已付款：2");
		}*/
		String serialNumber=StringUtils.randomUUID();
		
		int num=orderService.addOrder(Integer.parseInt(userId)
							, Integer.parseInt(UaddressIdN)
							, new Date()
							, Float.parseFloat(monetAll)
							, serialNumber
							, Integer.parseInt(uTime)
							, paymentStatusId
							, Integer.parseInt(paymentWayId)
							, distributionWayId
							, Integer.parseInt(uTiscountCouponId)
							, Integer.parseInt(invoiceTypeId)
							, Integer.parseInt(invoiceContentId)
							, leaveWord);
		System.out.println(num);
		Integer orderId=orderService.getId(serialNumber);
		ShoppingCart cart=(ShoppingCart)getCartFromSession(request);
		for (ShoppingCartItem car : cart.items) {
			orderDetailService.addOrderDetail(orderId, car.getProduct().getId(), car.getQuantity(), car.getCost());			
		}
		request.setAttribute("serialNumber", serialNumber);
		request.setAttribute("monetAll", monetAll);
		return "common/cartFlow3";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
