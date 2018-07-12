package cn.b2b2c.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
	@RequestMapping("/")
	public String showIndex() {
		return "show";
	}
	@RequestMapping("/{page}")
	public String showpage(@PathVariable String page) {
		return page;
	}
}
