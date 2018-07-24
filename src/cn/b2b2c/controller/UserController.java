package cn.b2b2c.controller;


<<<<<<< HEAD

=======
>>>>>>> dde71ea4abb6647c25047f2b63fa694b5d0ca307



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.b2b2c.pojo.DiscountCoupon;
import cn.b2b2c.pojo.User;
import cn.b2b2c.pojo.UserAddress;
import cn.b2b2c.service.discountcoupon.DiscountCouponService;
import cn.b2b2c.service.user.UserService;
import cn.b2b2c.tools.TimeTransform;




@Controller
@RequestMapping("/user")
public class UserController {
<<<<<<< HEAD
	


	@Autowired
	private UserService  userService;

=======

	



	@Autowired
	private UserService  userService;
@Autowired
private  DiscountCouponService dcs;
>>>>>>> dde71ea4abb6647c25047f2b63fa694b5d0ca307
	
	@RequestMapping(value="/welocome.html")
	public String welocome(HttpSession session)throws Exception {
				
		return "user/UserHome";
	}
	
	@RequestMapping(value="/userMessage.html")
	public String userMessage(HttpSession session,HttpServletRequest request)throws Exception {		

		User user = (User) session.getAttribute("user");		
		user=userService.basic(user);
		user.setCommB(TimeTransform.isTime(user.getBirthday()).toString());
		request.setAttribute("useryou", user);

		return "user/UserMessage";
	}
	
	
	@RequestMapping(value="/accountSecurity.html")
	public String accountSecurity(HttpSession session)throws Exception {
				
		return "user/AccountSecurity";
	}
	
	@RequestMapping(value="/BindEmail.html")
	public String accountBindEmail(HttpSession session)throws Exception {
				
		return "user/BindEmail";
	}
	
	@RequestMapping(value="/BindEmailOne.html")
	public String accountBindEmailOne(HttpSession session)throws Exception {
				
		return "user/BindEmailOne";
	}

	@RequestMapping(value="/BindEmailTow.html")
	public String accountBindEmailTow(HttpSession session)throws Exception {
				
		return "user/BindEmailTow";
	}
	
	@RequestMapping(value="/BindEmailSuccess.html")
	public String accountBindEmailSuccess(HttpSession session)throws Exception {
				
		return "user/BindEmailSuccess";
	}
	
	@RequestMapping(value="/RedEnvelopes.html")
	public String RedEnvelopes(HttpSession session,HttpServletRequest request)throws Exception {
			DiscountCoupon coupon=new DiscountCoupon();
		Integer userId=Integer.parseInt(request.getParameter("userId"));
		
		List<DiscountCoupon> dcStateList=dcs.getQueryById(userId);
		
		for (DiscountCoupon discountCoupon : dcStateList) {
			discountCoupon.setNewTime(TimeTransform.isTime(discountCoupon.getValidTime()).toString());
		}
		session.setAttribute("dcStateList", dcStateList);
		return "user/RedEnvelopes";
	}
	@RequestMapping("ReceivingAddress.html")
	public String ReceivingAddress(HttpSession session) throws Exception {
		User user=(User)session.getAttribute("user");
		List<UserAddress> addressesList=userService.getAll(user.getId());
		session.setAttribute("addressesList", addressesList);
		return "user/ReceivingAddress";
	}
	
}
