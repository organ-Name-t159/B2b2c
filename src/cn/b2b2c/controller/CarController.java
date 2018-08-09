package cn.b2b2c.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.alipay.config.AlipayConfig;

import cn.b2b2c.pojo.DeliveryTime;
import cn.b2b2c.pojo.DiscountCoupon;
import cn.b2b2c.pojo.DistributionWay;
import cn.b2b2c.pojo.InvoiceContent;
import cn.b2b2c.pojo.InvoiceType;
import cn.b2b2c.pojo.PaymentWay;
import cn.b2b2c.pojo.Product;
import cn.b2b2c.pojo.User;
import cn.b2b2c.pojo.UserAddress;
import cn.b2b2c.pojo.UserIntegral;
import cn.b2b2c.service.deliverytime.DeliveryTimeService;
import cn.b2b2c.service.discountcoupon.DiscountCouponService;
import cn.b2b2c.service.invoice.InvoiceService;
import cn.b2b2c.service.order.OrderService;
import cn.b2b2c.service.orderdetail.OrderDetailService;
import cn.b2b2c.service.paymentway.PaymentWaySerivce;
import cn.b2b2c.service.product.ProductService;
import cn.b2b2c.service.user.UserIntegralService;
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
	
	@Resource
	private UserIntegralService userIntegralService;
	
	
	
	@RequestMapping(value="/jieKou.html")
	public void jieKou(HttpServletRequest request,HttpServletResponse response,HttpSession session)throws Exception {
		
		
		//获得初始化的AlipayClient
        AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);

        //设置请求参数
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
        alipayRequest.setReturnUrl(AlipayConfig.return_url2);
        alipayRequest.setNotifyUrl(AlipayConfig.notify_url);

        //商户订单号，商户网站订单系统中唯一订单号，必填
        String out_trade_no = request.getParameter("WIDout_trade_no");
        session.setAttribute("outTradeNo", out_trade_no);
        //付款金额，必填
        String total_amount = request.getParameter("WIDtotal_amount");
        session.setAttribute("totalAmount", total_amount);
        //订单名称，必填
        String subject = request.getParameter("WIDsubject");
        //商品描述，可空
        String body = request.getParameter("WIDbody");

        alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\"," 
                + "\"total_amount\":\""+ total_amount +"\"," 
                + "\"subject\":\""+ subject +"\"," 
                + "\"body\":\""+ body +"\"," 
                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");

        //请求
        String result = alipayClient.pageExecute(alipayRequest).getBody();        
        response.setContentType("text/html;charset=" + AlipayConfig.charset);
        response.getWriter().write(result);//直接将完整的表单html输出到页面
        response.getWriter().flush();
        response.getWriter().close();
		
	}
	
	@RequestMapping(value="/return_url.view")
	public String returnUrl(HttpServletRequest request,HttpServletResponse response)throws Exception {
		HttpSession session=request.getSession();
		User user=(User)session.getAttribute("user");
		String number=(String)session.getAttribute("serialNumber");
		String pId=(String)session.getAttribute("paymentWayId");
		String integral=(String) session.getAttribute("monetAll");
		
		String otn=(String)session.getAttribute("outTradeNo");
		System.out.println(otn);
		
		String ta=(String) session.getAttribute("totalAmount");
		String tempNUmber="";
		String tempMoney="";
		if(number==null) {
			tempNUmber=otn;
		}else {
			tempNUmber=number;
		}
		if(integral==null) {
			tempMoney=ta;
		}else {
			tempMoney=integral;
		}
		Integer tempMoneyAll=(int) Float.parseFloat(tempMoney);
		//System.out.println(number);
		if(orderService.updateOrder(tempNUmber)==1) {
			//productService.updateNumber(stock, id);
			UserIntegral uIntegral=userIntegralService.queryUserIntegral(user.getId());
			if(uIntegral==null) {
				userIntegralService.addUserIntegral(user.getId(), tempMoneyAll);
			}else {
				userIntegralService.updateUserIntegral(user.getId(), uIntegral.getIntegral()+tempMoneyAll);
			}
			
			System.out.println("改变状态成功");
		}
		if(Integer.parseInt(pId)==1) {
			return "common/ShoppingOrder";
		}
		return "index";
	}
	
	
	
	@RequestMapping(value="/addCar.html",method=RequestMethod.POST)
	@ResponseBody
	public Object addCar(HttpServletRequest request)throws Exception {
		//System.out.println("添加购物车中");
		HttpSession session=request.getSession();
		ReturnResult result=new ReturnResult();
		String pId=request.getParameter("productsId");
		String quantityStr=request.getParameter("number");
		String buyId=request.getParameter("buyId");
		if(quantityStr==null||buyId==null) {
			quantityStr="1";
			buyId="400";
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
		if(session.getAttribute("user")==null&&buyId.equals("404")) {
			 return result.returnFail("未登录，请先登录");
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
	public Object deleteCart(HttpServletRequest request)throws Exception {
		ReturnResult result = new ReturnResult();
		HttpSession session=request.getSession();		
		String number=request.getParameter("number");
		String quantityStr=request.getParameter("quantity");
		ShoppingCart cart=(ShoppingCart)getCartFromSession(request);
		Product product=productService.getProduct(Integer.parseInt(number));
		if(Integer.parseInt(quantityStr)>product.getStock()){
			return result.returnFail("商品数量不足");
    	}
		 cart = productService.modifyShoppingCart(number, quantityStr, cart);
		 session.setAttribute("cart", cart);
		return result.returnSuccess();
	}
	
	
	
	
	@RequestMapping(value="/deleteCartAll.html",method=RequestMethod.POST)
	@ResponseBody
	public Object deleteCartAll(HttpServletRequest request)throws Exception {
		ReturnResult result = new ReturnResult();
		HttpSession session=request.getSession();		
		session.removeAttribute("cart");						 		
		return result.returnSuccess();
	}
	
	
	@RequestMapping(value="/closeCart.html")
	public String closeCart(HttpServletRequest request)throws Exception {
		//System.out.println("进入购物车结算页面");
		HttpSession session=request.getSession();
		ShoppingCart cart=(ShoppingCart)getCartFromSession(request);
		cart=productService.calculate(cart);
		session.setAttribute("cart", cart);				
		return "ShoppingCart1";
	}
	
	@RequestMapping(value="/getCart1.html",method=RequestMethod.POST)
	public Object getCart1(HttpServletRequest request)throws Exception {
		HttpSession session=request.getSession();
		ShoppingCart cart=(ShoppingCart)getCartFromSession(request);
		cart=productService.calculate(cart);
		session.setAttribute("cart", cart);
		return "common/cartFlow1";
	}
	
	
	
	
	
	
	@RequestMapping(value="/getCart2.html",method=RequestMethod.POST)
	public String getCart2(HttpServletRequest request)throws Exception {
		//System.out.println("进入购物车结算页面==具体选择");
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
	public Object orderAll(HttpServletRequest request,HttpServletResponse response)throws Exception {
		HttpSession session=request.getSession();
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
		//System.out.println(num);
		Integer orderId=orderService.getId(serialNumber);
		ShoppingCart cart=(ShoppingCart)getCartFromSession(request);
		for (ShoppingCartItem car : cart.items) {
			orderDetailService.addOrderDetail(orderId, car.getProduct().getId(), car.getQuantity(), car.getCost());	
			productService.updateNumber(car.getProduct().getStock()-car.getQuantity(), car.getProduct().getId());
		}
		DistributionWay dWay= orderService.getDistributionWayId(distributionWayId);
		PaymentWay pWay=paymentWaySerivce.getId(Integer.parseInt(paymentWayId));
		DeliveryTime dTime =deliveryTimeService.getId(Integer.parseInt(uTime));
		int udcNum=discountCouponService.updateDiscountCouponStatic(Integer.parseInt(userId), Integer.parseInt(uTiscountCouponId), 3);
		System.out.println(udcNum);
		
		
		session.setAttribute("serialNumber", serialNumber);
		//request.setAttribute("serialNumber", serialNumber);
		//session.setAttribute(arg0, arg1);
		session.setAttribute("uTiscountCouponId", uTiscountCouponId);
		session.setAttribute("monetAll", monetAll);
		session.setAttribute("paymentWayId", paymentWayId);
		session.setAttribute("dWay", dWay);
		session.setAttribute("pWay", pWay);
		session.setAttribute("dTime", dTime);
		session.removeAttribute("cart");
		if(Integer.parseInt(paymentWayId)==1) {
			//获得初始化的AlipayClient
	        AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);

	        //设置请求参数
	        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
	        alipayRequest.setReturnUrl(AlipayConfig.return_url2);
	        alipayRequest.setNotifyUrl(AlipayConfig.notify_url);

	        //商户订单号，商户网站订单系统中唯一订单号，必填
	        String out_trade_no = serialNumber;
	        //付款金额，必填
	        String total_amount = monetAll;
	        //订单名称，必填
	        String subject = serialNumber;
	        //商品描述，可空
	        String body = "";

	        alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\"," 
	                + "\"total_amount\":\""+ total_amount +"\"," 
	                + "\"subject\":\""+ subject +"\"," 
	                + "\"body\":\""+ body +"\"," 
	                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");

	        //请求
	        String result = alipayClient.pageExecute(alipayRequest).getBody();

	        response.setContentType("text/html;charset=" + AlipayConfig.charset);
	        response.getWriter().write(result);//直接将完整的表单html输出到页面
	        response.getWriter().flush();
	        response.getWriter().close();
			
		}
		
		return "common/cartFlow3";
	}
	
	
	@RequestMapping(value="/cartFlow3.html")
	public String cartFlow3() {
		return "common/cartFlow3";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
