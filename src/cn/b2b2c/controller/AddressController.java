package cn.b2b2c.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.b2b2c.pojo.User;
import cn.b2b2c.service.user.UserService;

@Controller
@RequestMapping("/address")
public class AddressController {
	
	@Resource
	private UserService userService;
	
	
	@RequestMapping(value="/updateAddress.html",method=RequestMethod.POST)
	@ResponseBody
	public Object updateAddress(HttpServletRequest request)throws Exception {
		HttpSession session=request.getSession();
		User user=(User)session.getAttribute("user");
		String addressId=request.getParameter("addressId");
		String consignee=request.getParameter("consignee");
		String addressT=request.getParameter("addressT");
		String zipcode=request.getParameter("zipcode");
		String mobile=request.getParameter("mobile");
		
		int num=userService.update(Integer.parseInt(addressId), user.getId(), consignee, addressT, mobile, Integer.parseInt(zipcode));
		
		return num;
	}
	
	@RequestMapping(value="/addAddress.html",method=RequestMethod.POST)
	@ResponseBody
	public Object addAddress(HttpServletRequest request)throws Exception {
		HttpSession session=request.getSession();
		User user=(User)session.getAttribute("user");		
		String consignee=request.getParameter("consignee");
		String addressT=request.getParameter("addressT");
		String zipcode=request.getParameter("zipcode");
		String mobile=request.getParameter("mobile");
		
		int num=userService.addAddress(user.getId(), consignee, addressT, mobile, Integer.parseInt(zipcode));
		
		return num;
	}
	
	@RequestMapping(value="/deleteAddress.html",method=RequestMethod.POST)
	@ResponseBody
	public Object deleteAddress(HttpServletRequest request)throws Exception {
		String comfirmId=request.getParameter("comfirmId");
		HttpSession session=request.getSession();
		User user=(User)session.getAttribute("user");
		int num=userService.deleteAddress(user.getId(), Integer.parseInt(comfirmId));
		
		return num;
	}
	

}
