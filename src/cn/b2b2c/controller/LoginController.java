package cn.b2b2c.controller;

<<<<<<< HEAD
import javax.annotation.Resource;
=======
>>>>>>> 4f65d84fdff87019206a8c42abbf26c2d7988232
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
<<<<<<< HEAD
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
=======
import org.springframework.ui.Model;
>>>>>>> 4f65d84fdff87019206a8c42abbf26c2d7988232
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.b2b2c.pojo.User;
import cn.b2b2c.service.user.UserService;

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
	
<<<<<<< HEAD
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
=======
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
>>>>>>> 4f65d84fdff87019206a8c42abbf26c2d7988232
}


	
	
	
	
	
	

