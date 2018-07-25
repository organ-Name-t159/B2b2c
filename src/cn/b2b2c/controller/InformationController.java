package cn.b2b2c.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.b2b2c.pojo.User;
import cn.b2b2c.service.user.UserService;
import cn.b2b2c.tools.TimeTransform;



@Controller
@RequestMapping(value="/UserMessage")
public class InformationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService userService;
	@RequestMapping(value="/update.xiugai",method=RequestMethod.POST)
		public String update(HttpServletRequest request) throws Exception {
		DateFormat df=new SimpleDateFormat("yyyy-MM-dd");
		Integer id = Integer.parseInt(request.getParameter("id"));
		String userName =request.getParameter("username");
		String birthday = request.getParameter("birthday");
		String sex = request.getParameter("sex");		
		int result = userService.updatemodify(id, userName, df.parse(birthday), Integer.parseInt(sex));
		System.out.println(result);
		return "UserMessage.jsp";
	}
	@RequestMapping("/userHome.jsp")
	public String userUpdate(HttpServletRequest request) {
		Integer id=Integer.parseInt(request.getParameter("id"));
		User user=userService.getUser(id);
		request.setAttribute("user", user);
		return "userHome";
	}
}