package cn.b2b2c.back.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.b2b2c.pojo.BackUser;
import cn.b2b2c.service.backuser.BackUserService;
import cn.b2b2c.tools.ReturnResult;

@Controller
@RequestMapping("/BackLogin")
public class BackLoginController {
	
	@Resource
	private BackUserService backUserService;
	
	
	
	@RequestMapping(value="/inToLogin.html")
	public String inToLogin() {
		
		return "back/Login";
	}
	
	
	@RequestMapping(value="/verifyLogin.view")
	@ResponseBody
	public Object verifyLogin(HttpServletRequest request)throws Exception {
		HttpSession session=request.getSession();
		String uName=request.getParameter("name");
		String uPass=request.getParameter("pass");
		ReturnResult restatus=new ReturnResult();
		BackUser backUser= backUserService.getBackUser(uName);
		if(backUser!=null) {					
			if(uPass.equals(backUser.getBackPassWord())) {
				return restatus.returnSuccess();
			}else {
				return restatus.returnFail("账号或密码错误");
			}
		}else {
			return restatus.returnFail("账号或密码错误");
		}
		
	}

}
