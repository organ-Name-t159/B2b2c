package cn.b2b2c.controller;

import java.io.IOException;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;





@Controller
public class PhoneController {
@RequestMapping(value="/messageServlet",method=RequestMethod.POST)
public void sendMessage(HttpServletResponse response,HttpServletRequest request,String phone) {
	System.out.println("11111111111");
	response.setCharacterEncoding("UTF-8");
	String code=getCode(request);
	System.out.println(phone);
	System.out.println(code);
    try {
    	sendMsg(phone,code);  
		response.flushBuffer();
		response.getWriter().write("true");  
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
private String getCode(HttpServletRequest request) {  
    Random rand =new Random();  
    String code = "";  
    for(int i=0;i<4;i++) {  
        code += rand.nextInt(10);  
    }  
    request.getSession().setAttribute("code",code);  
  //定时任务
  	final Timer timer=new Timer();
  	final HttpSession httpSession=request.getSession();
  	timer.schedule(new TimerTask() {
  	    @Override
  	    public void run() {
  	        httpSession.removeAttribute("code");
  	        System.out.println("code删除成功");
  	        timer.cancel();
  	    }
  	},5*60*1000);
    return code;  
}  
//发送短信  
private void sendMsg(String phone,String code) throws HttpException, IOException {  
	HttpClient client = new HttpClient();  
    PostMethod post = new PostMethod("http://utf8.sms.webchinese.cn/");  
    post.addRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=utf8");//在头文件中设置转码  
    NameValuePair[] data ={   
            new NameValuePair("Uid", "b2b2cming"),// 注册的用户名    
            new NameValuePair("Key", "d41d8cd98f00b204e980"),// 注册成功后，登录网站后得到的密钥    
            new NameValuePair("smsMob",phone),// 手机号码    
            new NameValuePair("smsText","验证码："+code)};// 短信内容    
    post.setRequestBody(data);  

    client.executeMethod(post);  
    Header[] headers = post.getResponseHeaders();  
    int statusCode = post.getStatusCode();  
    System.out.println("statusCode:"+statusCode);  
    for(Header h : headers)  
    {  
        System.out.println("-----"+h.toString());  
    }  
    String result = new String(post.getResponseBodyAsString().getBytes("utf8"));  
    System.out.println(result); //打印返回消息状态  
    post.releaseConnection();  
}  
@RequestMapping(value="/codeServlet",method=RequestMethod.POST)
public void codeTest(HttpServletRequest request, HttpServletResponse response,String code) {
	response.setCharacterEncoding("UTF-8"); 
	try {
		 if(request.getSession().getAttribute("code").equals(code)){  
	         response.getWriter().write("true");     
	     }else {  
	         response.getWriter().write("false");     
	     }  
	     response.flushBuffer(); 
	} catch (Exception e) {
		// TODO: handle exception
	}
  }
}
