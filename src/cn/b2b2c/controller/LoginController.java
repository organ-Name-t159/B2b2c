package cn.b2b2c.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.b2b2c.pojo.User;
import cn.b2b2c.service.user.UserService;
/**
 * 登陆控制
 * @author surface
 *
 */
@Controller
@RequestMapping(value="/register")
public class LoginController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/login.html")
	public String login()throws Exception{
		return "Login";
	}
	/**
	 * 登陆验证
	 * @param userName
	 * @param password
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping("/loginSuccess")
	public String loginSuccess(String userName,String password, Model model,HttpSession session) {
	
		User user=new User();
		user=userService.userLogin(userName);
		if (password.equals(user.getPassword())) {
			return "index";
		}
		 model.addAttribute("error", "用户名或者密码错误"); 
		  return "error";
		
	}
}
