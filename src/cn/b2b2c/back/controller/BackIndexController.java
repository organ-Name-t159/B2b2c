package cn.b2b2c.back.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/BackIndex")
public class BackIndexController {
	
	@RequestMapping(value="/inToIndex.html")
	public String inToIndex() {				
		return "back/index";
	}
	
	@RequestMapping(value="/inToWelcome.view")
	public String inToWelcome() {
		return "back/welcome";
	}
	
	@RequestMapping(value="/memberList.view")
	public String memberList() {
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
