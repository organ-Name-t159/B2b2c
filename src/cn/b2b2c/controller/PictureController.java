package cn.b2b2c.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;

import cn.b2b2c.pojo.User;
import cn.b2b2c.service.user.UserService;
import cn.b2b2c.tools.StringUtils;

@Controller
@RequestMapping("/picture")
public class PictureController {
	
	@Resource
	private UserService userService;
	
	@RequestMapping(value="/uploading2.view")
	@ResponseBody
	public String uploading2(@RequestParam(value="file",required=false)MultipartFile file,HttpServletRequest request,HttpSession session)throws Exception {
		File targetFile=null;
        String msg="/B2b2c/statics/images/";//返回存储路径        
        String thisPath=session.getServletContext().getRealPath("/statics/images");//本地路径
        //System.out.println("thisPath:"+thisPath);
        File serverDir=new File(thisPath);       
        String fileName=file.getOriginalFilename();//获取文件名加后缀
        //System.out.println("fileName:"+fileName);
        if(fileName!=null&&fileName!=""){        	
            targetFile = new File(serverDir, fileName);
            //System.out.println("targetFile:"+targetFile);            
                file.transferTo(targetFile);               
                msg=msg+fileName;                                           
                //System.out.println("msg:"+msg);               
            
       }
		return JSON.toJSONString(msg);
	}
	
	@RequestMapping(value="/uploading.view")
	public String uploading(@RequestParam(value="headimg",required=false)MultipartFile fileP,HttpServletRequest request,HttpSession session)throws Exception {
		int num=0;
		User user=(User) session.getAttribute("user");
		String fileName=fileP.getOriginalFilename();// 文件原名称
		// 项目在容器中实际发布运行的根路径
		 //String realPath=request.getSession().getServletContext().getRealPath("/");
		String tempPath="G:\\Git-001\\B2b2c\\WebContent\\statics\\images";//服务器路径
		 // 自定义的文件名称
		 String trueFileName=String.valueOf(System.currentTimeMillis())+fileName;
		 String path=tempPath+"/"+trueFileName;
		System.out.println("trueFileName:"+trueFileName);
		System.out.println("path:"+path);
		// 转存文件到指定的路径
		fileP.transferTo(new File(path));
		num=userService.updatePicture(user.getId(), trueFileName);
		
		/*Map<String, String> params=new HashMap<String, String>();
		DiskFileItemFactory dFactory=new DiskFileItemFactory();
		dFactory.setSizeThreshold(1*1024*1024);//缓存1MB大小
		File cacheDir=new File("c:\\tempPrint");//缓存路径\目录
		if(!cacheDir.exists()) {//如果目录不存在，则新建目录
			cacheDir.mkdirs();//创建目录
		}
		User user=(User) session.getAttribute("user");;
		int num=0;
		
		String tempPath="G:\\Git-001\\B2b2c\\WebContent\\statics\\images";//服务器路径
		//String thisPath=session.getServletContext().getRealPath("/statics/images");//本地路径
		//File realDir=new File(thisPath);//本地路径
		File serverDir=new File(tempPath);
		realDir.mkdirs();//本地路径
		if(!realDir.isDirectory()) {//测试这个抽象路径名表示的文件是否为目录
			throw new ServletException("/statics/images"+"is not a directory");
		}//本地路径
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
					File file=new File(serverDir, fileName);
					fileName=StringUtils.randomUUID()
							+fItem.getName().substring(fItem.getName().lastIndexOf("."));
					//file=new File(realDir, fileName);//图片名与商品ID一致
					//fItem.write(file);//保存本地商品图片
					file=new File(serverDir, fileName);
					fItem.write(file);//保存服务器商品图片
				}				
				num=userService.updatePicture(user.getId(), fileName);
			}			
			
		}
		
		*/
		if(num==1) {
			return "redirect:/user/welocome.html";
		}
		
		return "error";
	}

}
