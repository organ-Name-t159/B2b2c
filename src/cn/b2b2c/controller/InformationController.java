package cn.b2b2c.controller;



import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.b2b2c.pojo.User;
import cn.b2b2c.service.user.UserService;
import cn.b2b2c.tools.TimeTransform;



@Controller
@RequestMapping(value="/UserMessage")
public class InformationController extends HttpServlet {	
	
	
	@Resource
	private UserService userService;
	
	
	@RequestMapping(value="/update.xiugai",method=RequestMethod.POST)
		public String update(HttpServletRequest request) throws Exception {		
		String id = request.getParameter("id");
		String userName =request.getParameter("username");
		String birthday = request.getParameter("birthday");
		String sex = request.getParameter("sex");		
		int result = userService.updatemodify(Integer.parseInt(id), userName, TimeTransform.isDateOne(birthday), Integer.parseInt(sex));
		System.out.println(result);
		return "redirect:/user/userMessage.html";
	}
	@RequestMapping("/userHome.jsp")
	public String userUpdate(HttpServletRequest request) {
		Integer id=Integer.parseInt(request.getParameter("id"));
		User user=userService.getUser(id);
		request.setAttribute("user", user);
		return "userHome";
	}
}