package cn.b2b2c.controller;

import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.b2b2c.pojo.User;
import cn.b2b2c.service.user.UserService;
import cn.b2b2c.tools.GetMessageCode;
import cn.b2b2c.tools.ReturnContant;
import cn.b2b2c.tools.SecurityUtils;
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
	@RequestMapping(value="/loginSuccess",method=RequestMethod.POST)
	@ResponseBody
	public Object loginSuccess(HttpServletRequest request, Model model,HttpSession session) {
		User user=new User();
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
		Pattern pattern = Pattern.compile("[0-9]*");
		if (pattern.matcher(userName).matches()&&userName.length()==11) {
			user=userService.phoneLogin(userName);
		}else{
			user=userService.userLogin(userName);
		
		}
		
		//Md5加密
		/*if (SecurityUtils.md5Hex(password).equals(user.getPassword())) {*/
		if (user!=null) {
			if((password).equals(user.getPassword())){
				System.out.println(userName+"  "+user.getPassword());
				session.setAttribute("user", user);
			return 200;
			}
		}	
		 return "error";
	}
	//退出登陆 跳转
	@RequestMapping(value="/outLogin")
	public String outLogin(HttpSession session){
		session.removeAttribute("user");
		return "Login";
	}
	//跳转到注册页面
		@RequestMapping("/regist")
		public String regist(@ModelAttribute("user") User user){
			return "regist";
		}
	
	
	//添加用户信息
		@RequestMapping(value="/regist",method=RequestMethod.POST)
		public String regist(User user,BindingResult bindingresult,HttpSession session){
			user.setPassword(SecurityUtils.md5Hex(user.getPassword()));
			int result=userService.regist(user);
					if(result>0){
				return "Login";
			}
			return "regist";
		}
		
		@RequestMapping("/")
		public String showIndex() {
			return "show";
		}
		@RequestMapping("/{page}")
		public String showpage(@PathVariable String page) {
			return page;
		}
		  
		
		    
}
