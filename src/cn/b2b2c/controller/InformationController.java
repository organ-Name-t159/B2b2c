package cn.b2b2c.controller;

import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.b2b2c.pojo.User;



@Controller
@RequestMapping(value="/UserMessage")
public class InformationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@RequestMapping(value="/update.wu")
		public String update(HttpServletRequest request) throws Exception {
		Integer id = Integer.parseInt(request.getParameter("id"));
		String userName =request.getParameter("userName");
		String birthday = request.getParameter("birthday");
		String sex = request.getParameter("sex");
		User user = new User();
		user.setId(id);
		return null;
	}
}
