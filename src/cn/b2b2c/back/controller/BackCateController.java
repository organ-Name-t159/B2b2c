package cn.b2b2c.back.controller;

import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.httpclient.util.DateUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;

import cn.b2b2c.pojo.Product;
import cn.b2b2c.pojo.ProductCategory;
import cn.b2b2c.service.product.ProductService;
import cn.b2b2c.service.productCategory.ProductCategoryService;
import cn.b2b2c.tools.EmptyUtils;
import cn.b2b2c.tools.Pager;
import cn.b2b2c.tools.ProductCategoryVo;
import sun.print.resources.serviceui;

@Controller
@RequestMapping("/BackCate")
public class BackCateController {
	
	
	@Resource
	private ProductCategoryService productCategoryService;
	
	@Resource
	private ProductService productService;
	
	
	@RequestMapping(value="/adminUpdateProductFile.view",method=RequestMethod.POST)
	public String adminUpdateProductFile(@RequestParam(value="fileName",required=false)MultipartFile file
								,HttpServletRequest request
								,HttpSession session)throws Exception {
		
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String description=request.getParameter("description");
		String price=request.getParameter("price");
		String bazaarPrice=request.getParameter("bazaarPrice");
		String salesVolume=request.getParameter("salesVolume");
		String evaluateSales=request.getParameter("evaluateSales");
		String giveIntegral=request.getParameter("giveIntegral");
		String model=request.getParameter("model");
		String colour=request.getParameter("colour");
		String isDelete=request.getParameter("isDelete");
		//String rawfileName=request.getParameter("rawfileName");
		int num=0;
		Product product=new Product();
		product.setId(Integer.parseInt(id));
		product.setName(name);
		product.setDescription(description);
		product.setPrice(Float.valueOf(price));
		product.setBazaarPrice(Float.valueOf(bazaarPrice));
		product.setSalesVolume(Integer.parseInt(salesVolume));
		product.setEvaluateSales(Integer.parseInt(evaluateSales));
		product.setGiveIntegral(Integer.parseInt(giveIntegral));
		product.setModel(model);
		product.setColour(colour);
		product.setIsDelete(Integer.parseInt(isDelete));
		File targetFile=null;
		String tempPath="G:\\Git-001\\B2b2c\\WebContent\\upload\\imgs";//服务器路径
		File serverDir=new File(tempPath);
		String fileName=file.getOriginalFilename();//获取文件名加后缀
		if(fileName!=null&&fileName!=""){ 
			targetFile = new File(serverDir, fileName);
            System.out.println("targetFile:"+targetFile);            
            file.transferTo(targetFile);
            product.setFileName(fileName);
            
		}
		
		num=productService.updateProductAll(product);
		
		if(num==1) {
			System.out.println("修改成功");
			return "back/success";
		}
		
		return "error";
	}
	
	
	
	@RequestMapping(value="/adminProductFile.view")
	@ResponseBody
	public String adminProductFile(@RequestParam(value="file",required=false)MultipartFile file
								,HttpServletRequest request
								,HttpSession session)throws Exception {
		File targetFile=null;
        String msg="/B2b2c/statics/images/";//返回存储路径
        //String tempPath="G:\\Git-001\\B2b2c\\WebContent\\upload\\imgs";//服务器路径
        String thisPath=session.getServletContext().getRealPath("/statics/images");//本地路径
        System.out.println("thisPath:"+thisPath);
        File serverDir=new File(thisPath);
       // int code=1;
        String fileName=file.getOriginalFilename();//获取文件名加后缀
        System.out.println("fileName:"+fileName);
        if(fileName!=null&&fileName!=""){ 
        	/*//String thisPath=session.getServletContext().getRealPath("/statics/images");//本地路径
            String returnUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() +"/upload/imgs/";//存储路径
            System.out.println("returnUrl:"+returnUrl);
            
            String path = request.getSession().getServletContext().getRealPath("upload/imgs"); //文件存储位置
            System.out.println("path:"+path);
            String fileF = fileName.substring(fileName.lastIndexOf("."), fileName.length());//文件后缀
            System.out.println("fileF:"+fileF);
            fileName=new Date().getTime()+"_"+new Random().nextInt(1000)+fileF;//新的文件名
            System.out.println("fileName-2:"+fileName);
            //先判断文件是否存在
            String fileAdd = DateUtil.formatDate(new Date(),"yyyyMMdd");
            System.out.println("fileAdd:"+fileAdd);
            File file1 =new File(path+"/"+fileAdd); 
            System.out.println("file1:"+file1);
            //如果文件夹不存在则创建    
            if(!file1 .exists()  && !file1 .isDirectory()){       
                file1 .mkdir();  
            }*/
            targetFile = new File(serverDir, fileName);
            System.out.println("targetFile:"+targetFile);            
                file.transferTo(targetFile);
                
                //File tempFile = new File(tempPath, fileName);
               // file.transferTo(tempFile);
                msg=msg+fileName;
                //msg=file1+"/"+fileName;                             
                System.out.println("msg:"+msg);
                //code=0;
            
       }
		
		
		return JSON.toJSONString(msg);
	}
	
	
	@RequestMapping(value="/adminProductEdit.view")
	public String adminProductEdit(HttpServletRequest request)throws Exception {
		String productId=request.getParameter("productId");
		Product product=productService.getProduct(Integer.parseInt(productId));
		request.setAttribute("product", product);
		return "back/product-edit";
	}
	
	@RequestMapping(value="/adminProduct.view")
	public String adminProduct(HttpServletRequest request)throws Exception {
		String category=request.getParameter("category");
		String pageSizeStr=request.getParameter("pageSize");		
		String currentPageStr=request.getParameter("currentPage");
		String keyWord=request.getParameter("keyWord");
		String keyWordStr=EmptyUtils.isEmpty(keyWord)?null:keyWord;
		int rowPerPage=EmptyUtils.isEmpty(pageSizeStr)?4:Integer.parseInt(pageSizeStr);
		int currentPage=EmptyUtils.isEmpty(currentPageStr)?1:Integer.parseInt(currentPageStr);
		int rowCount=productService.count(keyWordStr);
		Pager pager=new Pager(rowCount, rowPerPage, currentPage);
		pager.setUrl("/BackCate/adminProduct.view?category="+(EmptyUtils.isEmpty(category)?"":category));
		
		List<Product> productList=productService.getProductList(currentPage, rowPerPage, keyWordStr, null,null);
		request.setAttribute("pager", pager);
		request.setAttribute("productList", productList);
		request.setAttribute("rowCount", rowCount);
		
		return "back/productList";
	}
		
	
	@RequestMapping(value="/cate.view")
	public String cate(HttpServletRequest request,HttpSession session)throws Exception {
		List<ProductCategoryVo> productCategoryVoListBack=productCategoryService.queryAllProductCategoryList();
		request.setAttribute("productCategoryVoListBack", productCategoryVoListBack);
		
		return "back/cate";
	}
	
	@RequestMapping(value="/adminEdit.view")
	public String adminEdit(HttpServletRequest request,HttpSession session)throws Exception {
		String pcId=request.getParameter("pcId");		
		ProductCategory pCategory=productCategoryService.queryAll(Integer.parseInt(pcId));
		request.setAttribute("pCategory", pCategory);
		
		return "back/admin-edit";
	}
	
	
	@RequestMapping(value="/adminUpdate.view",method=RequestMethod.POST)
	@ResponseBody
	public Object adminUpdate(HttpServletRequest request)throws Exception {
		String pId=request.getParameter("pId");
		String name=request.getParameter("name");
		String type=request.getParameter("type");		
		int num=productCategoryService.updateProduct(Integer.parseInt(pId), name, Integer.parseInt(type));
		//System.out.println(num);
		/*if(num==1) {
			//return "200";
			return "back/successBack";
		}*/
		return num;
	}
	
	
	@RequestMapping(value="/adminAdd.view")
	public String adminAdd(HttpServletRequest request)throws Exception {		
		String type=request.getParameter("type");
		String parentId=request.getParameter("parentId");
		request.setAttribute("type", type);
		request.setAttribute("parentId", parentId);
		
		return "back/admin-add";
	}
	
	@RequestMapping(value="/adminNewly.view",method=RequestMethod.POST)
	@ResponseBody
	public Object adminNewly(HttpServletRequest request)throws Exception {
		String name=request.getParameter("name");
		String type=request.getParameter("type");
		String parentId=request.getParameter("parentId");
		int num=productCategoryService.addProduct(name, Integer.parseInt(type), Integer.parseInt(parentId));
		/*if(num==1) {			
			return "back/successBack";
		}*/
		return num;
	}
	
	@RequestMapping(value="/adminCateAdd.view")
	public String adminCateAdd(HttpServletRequest request)throws Exception {
		String cName=request.getParameter("cate_name");		
		int num=productCategoryService.addProduct(cName, 1, 0);
		if(num==1) {			
			return "back/cate";
		}
		return "erroe";
	}
	
	
	@RequestMapping(value="/adminCateDelete.view")
	@ResponseBody
	public Object adminCateDelete(HttpServletRequest request)throws Exception {
		String id=request.getParameter("id");		
		int num=productCategoryService.deleteProduct(Integer.parseInt(id));
		System.out.println(num);
		
		return num;
	}
	
	
	
	
	
	
	
	
	
	
	
	

}
