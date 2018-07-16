package cn.b2b2c.controller;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/user")
public class UserController {
	

	
	@RequestMapping(value="/welocome.html")
	public String welocome(HttpSession session)throws Exception {
				
		return "user/UserHome";
	}
	
	@RequestMapping(value="/userMessage.html")
	public String userMessage(HttpSession session)throws Exception {
		
		return "user/UserMessage";
	}
	
	
	@RequestMapping(value="/accountSecurity.html")
	public String accountSecurity(HttpSession session)throws Exception {
				
		return "user/AccountSecurity";
	}
	
	
	
	
	
	
	

}
