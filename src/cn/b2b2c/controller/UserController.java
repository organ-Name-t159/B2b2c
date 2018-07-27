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

import com.kewail.sdk.email.yun.EmailSenderUtil;
import com.kewail.sdk.email.yun.EmailSingleSender;
import com.kewail.sdk.email.yun.EmailSingleSenderResult;

import cn.b2b2c.pojo.DiscountCoupon;
import cn.b2b2c.pojo.User;
import cn.b2b2c.pojo.UserAddress;
import cn.b2b2c.service.discountcoupon.DiscountCouponService;
import cn.b2b2c.service.user.UserService;
import cn.b2b2c.tools.TimeTransform;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private DiscountCouponService dcs;

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
	public String accountBindEmail(HttpServletRequest request,HttpSession session) throws Exception {
		User user = (User) session.getAttribute("user");
		user = userService.basic(user.getId());
		String emailCover=user.getEmail().replace(user.getEmail().substring(4, 9), "****");
		System.out.println(user.getEmail());
		request.setAttribute("userEamil", emailCover);
		return "user/BindEmail";
	}

	@RequestMapping(value = "/BindEmailOne.html")
	public String accountBindEmailOne(HttpServletRequest request,HttpSession session) throws Exception {		
		
		return "user/BindEmailOne";
	}
	
	@RequestMapping(value = "/gainEmail.html",method=RequestMethod.POST)
	@ResponseBody
	public Object gainEmail(HttpServletRequest request,HttpSession session) throws Exception {		
		String userEmail=request.getParameter("email");
		EmailSenderUtil esu=new EmailSenderUtil();
		String subjectEmail=Integer.toString(esu.getRandom());		
		//请根据实际 accesskey 和 secretkey 进行开发，以下只作为演示 sdk 使用
		String accesskey = "5b2e89960cf2d36d1f59bc5a";
		String secretkey = "603bff34903e48eb850169653a23b8d9";
		
		//44,73
		
		// 邮件类型，0 事务投递，其他的为商业投递量
		int type=0;
		// 拓展字段
		String ext="";
		// 必须 管理控制台中配置的发信地址(登陆后台查看发信地址)
		String fromEmail="mail@service.shuojianghu.com";
		//// 必须 ,如果为true是的时候，replyEmail必填，false的时候replyEmail可以为空
		Boolean needToReply=false;
		 // 如果needToReply为true是的时候,则为必填,false的时候replyEmail可以为空
		String replyEmail=""; 
		
		// 必须 目标邮件地址
		String toEmail=userEmail; 
		
		//// 可选 发信人昵称,
		String fromAlias="b2b2c平台";
		// 必须 邮件主题。
		String subject="邮件验证码";
		// 必须 邮件 html 正文。
		String htmlBody="<h1>email code :"+subjectEmail+" </h1>";
		// 可选 取值范围 0~1: 1 为打开数据跟踪功能; 0 为关闭数据跟踪功能。该参数默认值为
		String clickTrace="1";
		String readTrace="1";
	
    	EmailSingleSender singleSender = new EmailSingleSender(accesskey, secretkey);
    	EmailSingleSenderResult singleSenderResult=singleSender.send(type, fromEmail, toEmail, fromAlias, needToReply, replyEmail, subject, htmlBody, clickTrace,readTrace, ext);
    	System.out.println(singleSenderResult);
		
		return subjectEmail;
	}
	
	
	@RequestMapping(value = "/verifyEmail.html",method=RequestMethod.POST)
	public String verifyEmail(HttpServletRequest request,HttpSession session) throws Exception {
		String email=request.getParameter("email");
		User user = (User) session.getAttribute("user");
		int num=userService.updateEmail(user.getId(), email);
		if(num==1) {
			return "user/BindEmailTow";
		}
		return "error";
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
}
