package cn.b2b2c.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.b2b2c.pojo.DiscountCoupon;
import cn.b2b2c.pojo.Product;
import cn.b2b2c.pojo.User;
import cn.b2b2c.pojo.UserAddress;
import cn.b2b2c.service.discountcoupon.DiscountCouponService;
import cn.b2b2c.service.product.ProductService;
import cn.b2b2c.service.user.UserService;
import cn.b2b2c.tools.TimeTransform;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private DiscountCouponService dcs;
@Autowired
private ProductService productService;
	@RequestMapping(value = "/welocome.html")
	public String welocome(HttpSession session) throws Exception {

		return "user/UserHome";
	}

	@RequestMapping(value = "/userMessage.html")
	public String userMessage(HttpSession session, HttpServletRequest request) throws Exception {

		User user = (User) session.getAttribute("user");
		user = userService.basic(user.getId());
		user.setCommB(TimeTransform.isTimeOne(user.getBirthday()));
		request.setAttribute("useryou", user);

		return "user/UserMessage";
	}

	@RequestMapping(value = "/accountSecurity.html")
	public String accountSecurity(HttpSession session) throws Exception {

		return "user/AccountSecurity";
	}

	@RequestMapping(value = "/BindEmail.html")
	public String accountBindEmail(HttpSession session) throws Exception {

		return "user/BindEmail";
	}

	@RequestMapping(value = "/BindEmailOne.html")
	public String accountBindEmailOne(HttpSession session) throws Exception {

		return "user/BindEmailOne";
	}

	@RequestMapping(value = "/BindEmailTow.html")
	public String accountBindEmailTow(HttpSession session) throws Exception {

		return "user/BindEmailTow";
	}

	@RequestMapping(value = "/BindEmailSuccess.html")
	public String accountBindEmailSuccess(HttpSession session) throws Exception {

		return "user/BindEmailSuccess";
	}

	@RequestMapping(value = "/RedEnvelopes.html")
	public String RedEnvelopes(HttpSession session, HttpServletRequest request) throws Exception {
		DiscountCoupon coupon = new DiscountCoupon();
		Integer userId = Integer.parseInt(request.getParameter("userId"));

		List<DiscountCoupon> dcStateList = dcs.getQueryById(userId);

		for (DiscountCoupon discountCoupon : dcStateList) {
			discountCoupon.setNewTime(TimeTransform.isTime(discountCoupon.getValidTime()).toString());
		}
		session.setAttribute("dcStateList", dcStateList);
		return "user/RedEnvelopes";
	}

	// 查询收货地址
	@RequestMapping(value = "ReceivingAddress.html")
	public String ReceivingAddress(HttpSession session) throws Exception {
		User user = (User) session.getAttribute("user");
		List<UserAddress> addressesList = userService.getAll(user.getId());
		session.setAttribute("addressesList", addressesList);
		return "user/ReceivingAddress";
	}

	// 修改收货地址
	@RequestMapping(value = "UpdateAddress", method = RequestMethod.POST)
	@ResponseBody
	public String UpdateAddress(HttpServletRequest request) throws Exception {
		User user = (User) request.getSession().getAttribute("user");
		String consignee = request.getParameter("consignee");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		Integer postcode = Integer.parseInt(request.getParameter("zipcode"));
		String addressPhone = request.getParameter("mobile");
		Integer id = Integer.parseInt(request.getParameter("id"));
		System.out.println("=========================================");
		System.out.println(id + " " + user.getId());
		int num = userService.update(id, user.getId(), consignee, address, addressPhone, postcode);
		if (num == 1) {
			return "200";
		}

		return "errer";
	}

	// 删除收货地址
	@RequestMapping(value = "DelAddress")
	public String DelAddress(HttpServletRequest request) throws Exception {
		User user = (User) request.getSession().getAttribute("user");
		String i = request.getParameter("uid");
		System.out.println(i + "====================================");
		Integer id = Integer.parseInt(i);
		System.out.println(id + "======================");
		int num = userService.deleteAddress(user.getId(), id);
		if (num == 1) {
			return "redirect:ReceivingAddress.html";
		}
		return "error";
	}

	// 新增收货地址
	@RequestMapping(value = "addAddress", method = RequestMethod.POST)
	public String addAddress(HttpServletRequest request) throws Exception {
		User user = (User) request.getSession().getAttribute("user");
		String consignee = request.getParameter("consignee");
		String address = request.getParameter("address");
		String addressPhone = request.getParameter("mobile");
		int postcode = Integer.parseInt(request.getParameter("zipcode"));
		int num = userService.addAddress(user.getId(), consignee, address, addressPhone, postcode);
		return "redirect:ReceivingAddress.html";
	}
	/**
	 * 我的收藏
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="Collect.html")
	public String Collect(HttpServletRequest request) throws Exception {
		User user=(User)request.getSession().getAttribute("user");	
		List<Product> productClist=productService.getCommodityByuid(user.getId());
		request.getSession().setAttribute("productClist", productClist);
		
		return "user/GoodsCollect";
	}
	//删除收藏
	@RequestMapping(value="delCollect")
	public String delCollect(HttpServletRequest request) {
	User user=(User)request.getSession().getAttribute("user");
	Integer pid=Integer.parseInt(request.getParameter("pid"));
	Integer num=productService.deleteCommodity(user.getId(), pid);
	 if (num==1) {
		 return "redirect:Collect.html";
	}
	 return "error";
	}
	
}
