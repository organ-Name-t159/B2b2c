package cn.b2b2c.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.b2b2c.pojo.User;
import cn.b2b2c.service.user.UserService;

@Controller
@RequestMapping(value="/register")
public class LoginController {
	
	@Autowired
	private UserService userSerivce;


	@RequestMapping(value="/login.html")
	public String login()throws Exception{
		return "Login";
	}
	
	@RequestMapping("/regist")
	public String regist() {
		return "regist";
	}
	//注册新用户
		@RequestMapping(value="/regist",method=RequestMethod.POST)
		public String addUser(User user,BindingResult bindingresult,HttpSession session){
			int result=userSerivce.regist(user);
			if(result>0){
				System.out.println("成功");
				return "index";
			}
			return "index";
		}
}


	
	
	
	
	
	

