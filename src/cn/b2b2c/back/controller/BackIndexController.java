package cn.b2b2c.back.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.b2b2c.pojo.User;
import cn.b2b2c.service.user.UserService;
import cn.b2b2c.tools.EmptyUtils;
import cn.b2b2c.tools.Pager;
import cn.b2b2c.tools.TimeTransform;

@Controller
@RequestMapping("/BackIndex")
public class BackIndexController {
	
	@Resource
	private UserService userService;
	
	
	
	@RequestMapping(value="/inToIndex.html")
	public String inToIndex() {				
		return "back/index";
	}
	
	@RequestMapping(value="/inToWelcome.view")
	public String inToWelcome() {
		return "back/welcome";
	}
	
	@RequestMapping(value="/memberList.view")
	public String memberList(HttpServletRequest request)throws Exception {
		String category=request.getParameter("category");
		String pageSizeStr=request.getParameter("pageSize");
		String keyWord=request.getParameter("keyWord");
		String currentPageStr=request.getParameter("currentPage");
		String beginTime=request.getParameter("beginTime");
		String expirationTime=request.getParameter("expirationTime");
		
		int rowPerPage=EmptyUtils.isEmpty(pageSizeStr)?2:Integer.parseInt(pageSizeStr);
		int currentPage=EmptyUtils.isEmpty(currentPageStr)?1:Integer.parseInt(currentPageStr);
		int rowCount=userService.userCount(EmptyUtils.isEmpty(keyWord)?null:keyWord, EmptyUtils.isEmpty(beginTime)?null:TimeTransform.isDateOne(beginTime), EmptyUtils.isEmpty(expirationTime)?null:TimeTransform.isDateOne(expirationTime));
		Pager pager=new Pager(rowCount, rowPerPage, currentPage);
		pager.setUrl("/BackIndex/memberList.view?category="+(EmptyUtils.isEmpty(category)?"":category));
		List<User> userList=userService.userAll(currentPage, rowPerPage, keyWord, EmptyUtils.isEmpty(beginTime)?null:TimeTransform.isDateOne(beginTime), EmptyUtils.isEmpty(expirationTime)?null:TimeTransform.isDateOne(expirationTime));
		System.out.println("数据："+userList.size());
		request.setAttribute("pager", pager);
		request.setAttribute("userList", userList);
		request.setAttribute("rowCount", rowCount);
		
		return "back/member-list";
	}
	
	@RequestMapping(value="/memberListUpdate.html",method=RequestMethod.POST)
	public String memberListUpdate(HttpServletRequest request)throws Exception {
		String id=request.getParameter("id");
		String userName=request.getParameter("userName");
		String sex=request.getParameter("sex");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String birthday=request.getParameter("birthday");
		User user=new User();
		user.setId(Integer.parseInt(id));
		user.setUserName(userName);
		user.setId(Integer.parseInt(sex));
		user.setEmail(email);
		user.setPhone(phone);
		user.setBirthday(TimeTransform.isDateOne(birthday));
		userService.updateBackUser(user);
		
		return "back/successBack";
	}
	
	
	
	
	@RequestMapping(value="/memberAdd.view")
	public String memberAdd() {
		return "back/member-add";
	}
	
	@RequestMapping(value="/memberEdit.view")
	public String memberEdit(HttpServletRequest request) {
		String userId=request.getParameter("uId");		
		User userEdit=userService.getUser(Integer.parseInt(userId));
		request.setAttribute("userEdit", userEdit);
		
		return "back/member-edit";
	}
	
	@RequestMapping(value="/memberPassword.view")
	public String memberPassword() {
		return "back/member-password";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
