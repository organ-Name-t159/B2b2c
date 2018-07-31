package cn.b2b2c.controller;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.b2b2c.pojo.User;
import cn.b2b2c.service.user.UserService;
import cn.b2b2c.tools.StringUtils;

@Controller
@RequestMapping("/picture")
public class PictureController {
	
	@Resource
	private UserService userService;
	
	@RequestMapping(value="/uploading.view")
	public String uploading(HttpServletRequest request,HttpSession session)throws Exception {
		Map<String, String> params=new HashMap<String, String>();
		DiskFileItemFactory dFactory=new DiskFileItemFactory();
		dFactory.setSizeThreshold(1*1024*1024);//缓存1MB大小
		File cacheDir=new File("c:\\tempPrint");//缓存路径\目录
		if(!cacheDir.exists()) {//如果目录不存在，则新建目录
			cacheDir.mkdirs();//创建目录
		}
		
		String tempPath="G:\\Git-001\\B2b2c\\WebContent\\statics\\images";//服务器路径
		String thisPath=session.getServletContext().getRealPath("/statics/images");//本地路径
		File realDir=new File(thisPath);
		File serverDir=new File(tempPath);
		realDir.mkdirs();
		if(!realDir.isDirectory()) {//测试这个抽象路径名表示的文件是否为目录
			throw new ServletException("/statics/images"+"is not a directory");
		}
		dFactory.setRepository(cacheDir);//缓存路径
		String fileName=null;
		ServletFileUpload sFileUpload=new ServletFileUpload(dFactory);//上传文件
		sFileUpload.setHeaderEncoding("utf-8");//设置字符编码
		
		List<?> items=sFileUpload.parseRequest(request);//并把表单中的每一个输入项包装成一个fileItem 对象，并返回一个保存了所有FileItem的list集合。
		Iterator<?> itr=items.iterator();
		while(itr.hasNext()) {
			FileItem fItem=(FileItem) itr.next();
			if(fItem.isFormField()) {
				params.put(fItem.getFieldName(), fItem.getString("utf-8"));
			}else {
				if(fItem.getSize()>0) {//修改图片
					fileName=fItem.getName().substring(fItem.getName().lastIndexOf("."));
					File file=new File(realDir, fileName);
					fileName=StringUtils.randomUUID()
							+fItem.getName().substring(fItem.getName().lastIndexOf("."));
					file=new File(realDir, fileName);//图片名与商品ID一致
					fItem.write(file);//保存本地商品图片
					file=new File(serverDir, fileName);
					fItem.write(file);//保存服务器商品图片
				}				
				
			}			
			
		}
		
		User user = (User) session.getAttribute("user");
		int num=userService.updatePicture(user.getId(), fileName);
		if(num==1) {
			return "redirect:/user/welocome.html";
		}
		
		return "error";
	}

}
