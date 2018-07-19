package cn.b2b2c.back.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.b2b2c.pojo.BackUser;
import cn.b2b2c.service.backuser.BackUserService;

@Controller
@RequestMapping("/BackLogin")
public class BackLoginController {
	
	@Resource
	private BackUserService backUserService;
	
	
	
	@RequestMapping(value="/inToLogin.html")
	public String inToLogin() {
		
		return "back/Login";
	}
	
	
	@RequestMapping(value="/verifyLogin.view")
	public Object verifyLogin(HttpServletRequest request)throws Exception {
		HttpSession session=request.getSession();
		String uName=request.getParameter("name");
		String uPass=request.getParameter("pass");
		
		BackUser backUser= backUserService.getBackUser(uName);
		if(backUser.getBackPassWord().equals(uPass)) {
			return "200";
		}
		
		return "账号或密码错误";
	}

}
