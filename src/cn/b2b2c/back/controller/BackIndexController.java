package cn.b2b2c.back.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String memberList(HttpServletRequest request) {
		String category=request.getParameter("category");
		String pageSizeStr=request.getParameter("pageSize");
		String keyWord=request.getParameter("keyWord");
		String currentPageStr=request.getParameter("currentPage");
		String beginTime=request.getParameter("beginTime");
		String expirationTime=request.getParameter("expirationTime");
		
		int rowPerPage=EmptyUtils.isEmpty(pageSizeStr)?2:Integer.parseInt(pageSizeStr);
		int currentPage=EmptyUtils.isEmpty(currentPageStr)?1:Integer.parseInt(currentPageStr);
		int rowCount=userService.userCount(EmptyUtils.isEmpty(keyWord)?null:keyWord, EmptyUtils.isEmpty(beginTime)?null:TimeTransform.isTime(beginTime), EmptyUtils.isEmpty(expirationTime)?null:TimeTransform.isTime(expirationTime));
		Pager pager=new Pager(rowCount, rowPerPage, currentPage);
		pager.setUrl("/BackIndex/memberList.view?category="+(EmptyUtils.isEmpty(category)?"":category));
		List<User> userList=userService.userAll(currentPage, rowPerPage, keyWord, TimeTransform.isTime(beginTime), TimeTransform.isTime(expirationTime));
		System.out.println("数据："+userList.size());
		request.setAttribute("pager", pager);
		request.setAttribute("userList", userList);
		request.setAttribute("rowCount", rowCount);
		
		return "back/member-list";
	}
	
	@RequestMapping(value="/memberAdd.view")
	public String memberAdd() {
		return "back/member-add";
	}
	
	@RequestMapping(value="/memberEdit.view")
	public String memberEdit() {
		return "back/member-edit";
	}
	
	@RequestMapping(value="/memberPassword.view")
	public String memberPassword() {
		return "back/member-password";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
