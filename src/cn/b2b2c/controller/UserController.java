package cn.b2b2c.controller;


<<<<<<< HEAD


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


=======
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
>>>>>>> 1716a29267fabdd35e06386be55fff0ade0a09e9
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.b2b2c.pojo.User;
import cn.b2b2c.service.user.UserService;
import cn.b2b2c.tools.TimeTransform;




@Controller
@RequestMapping("/user")
public class UserController {
<<<<<<< HEAD
	


=======
	@Autowired
	private UserService  userService;
>>>>>>> 1716a29267fabdd35e06386be55fff0ade0a09e9
	
	@RequestMapping(value="/welocome.html")
	public String welocome(HttpSession session)throws Exception {
				
		return "user/UserHome";
	}
	
	@RequestMapping(value="/userMessage.html")
	public String userMessage(HttpSession session,HttpServletRequest request)throws Exception {		
<<<<<<< HEAD
		
=======
		User user = (User) session.getAttribute("user");		
		user=userService.basic(user);
		user.setCommB(TimeTransform.isTime(user.getBirthday()).toString());
		request.setAttribute("useryou", user);
>>>>>>> 1716a29267fabdd35e06386be55fff0ade0a09e9
		return "user/UserMessage";
	}
	
	
	@RequestMapping(value="/accountSecurity.html")
	public String accountSecurity(HttpSession session)throws Exception {
				
		return "user/AccountSecurity";
	}
	
	
	
}
