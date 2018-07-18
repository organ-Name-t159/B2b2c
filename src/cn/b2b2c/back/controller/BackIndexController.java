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

}
