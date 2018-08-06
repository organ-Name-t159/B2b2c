package cn.b2b2c.back.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.b2b2c.pojo.BackUser;
import cn.b2b2c.realm.MyRealm;
import cn.b2b2c.service.backuser.BackUserService;
import cn.b2b2c.tools.ReturnResult;

@Controller
@RequestMapping("/BackLogin")
public class BackLoginController {
	
	@Resource
	private BackUserService backUserService;
	
	
	@RequestMapping(value="/verifyLoginRole.view")
	@ResponseBody
	public Object verifyLoginRole(HttpServletRequest request)throws Exception {
		HttpSession session=request.getSession();
		String uName=request.getParameter("name");
		String uPass=request.getParameter("pass");
		ReturnResult restatus=new ReturnResult();
		
		Subject subject=SecurityUtils.getSubject();		
		BackUser backUser= backUserService.getBackUser(uName);
		UsernamePasswordToken token=new UsernamePasswordToken(uName, uPass);
		subject.login(token);
		boolean loginR=subject.isAuthenticated();
		//System.out.println("认证状态：" + subject.isAuthenticated());
		if(loginR) {			
			//token.setRememberMe(rememberMe);
			
			//subject.isAuthenticated();
			//System.out.println("认证状态：" + subject.isAuthenticated());
	       /* boolean isPermitted =subject.isPermitted("admin:select");
	        if(!isPermitted) {
	        	return restatus.returnFail("权限不够，请联系管理员");
	        }*/
	       // System.out.println("单个权限判断" + isPermitted);
	       /* boolean isPermittedAll =subject.isPermittedAll("admin:select","admin:insert","admin:update","admin:delete");
	        if(!isPermittedAll) {
	        	return restatus.returnFail("权限不够，请联系管理员");
	        }*/
	        // System.out.println("多个权限判断" + isPermittedAll);
	        //subject.checkRole("admin");//验证角色
	        //subject.checkPermission("admin:insert");//验证角色权限
	        session.setAttribute("backUser", backUser);
			return restatus.returnSuccess();
		}else {
			return restatus.returnFail("账号或密码错误");
		}
		
	}
	
	
	
	@RequestMapping(value="/inToLogin.html")
	public String inToLogin() {
		MyRealm myRealm=new MyRealm();
		myRealm.clearCached();
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
				session.setAttribute("backUser", backUser);
				return restatus.returnSuccess();
			}else {
				return restatus.returnFail("账号或密码错误");
			}
		}else {
			return restatus.returnFail("账号或密码错误");
		}
		
	}

}
