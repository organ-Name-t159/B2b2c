package cn.b2b2c.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/picture")
public class PictureController {
	
	@RequestMapping(value="/uploading.view")
	public String uploading() {
		return null;
	}

}
