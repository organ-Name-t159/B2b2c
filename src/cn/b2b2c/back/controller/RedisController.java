package cn.b2b2c.back.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.b2b2c.service.redis.RedisServiceImpl;

@Controller
@RequestMapping("/redis")
public class RedisController {
	
	@Resource
	private RedisServiceImpl redisServiceImpl;
	
	
	@RequestMapping(value="/redisTest.do")
	public String redisTest(Model model) {
		String  msg=redisServiceImpl.getHello();  //获取数据 
		model.addAttribute("msg",msg);  //把数据传递到客户端
		
		return "redis/success";
	}
	
	@RequestMapping(value="/redisProduct.do")
	public String redisProduct() {
		
		
		
		
		
		return "";
	}
	
	

}
