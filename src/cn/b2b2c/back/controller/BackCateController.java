package cn.b2b2c.back.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/BackCate")
public class BackCateController {
	
	@RequestMapping(value="/cate.view")
	public String cate() {
		return "back/cate";
	}
	
	@RequestMapping(value="/adminEdit.view")
	public String adminEdit() {
		return "back/admin-edit";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
