package cn.b2b2c.back.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/BackLogin")
public class BackLoginController {
	
	
	
	@RequestMapping(value="/inToLogin.html")
	public String inToLogin() {
		
		return "back/Login";
	}

}
