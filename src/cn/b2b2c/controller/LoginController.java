package cn.b2b2c.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/register")
public class LoginController {
	
	@RequestMapping(value="/login.html")
	public String login()throws Exception{
		return "Login";
	}

}
