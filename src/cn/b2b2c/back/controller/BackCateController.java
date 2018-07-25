package cn.b2b2c.back.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.b2b2c.pojo.ProductCategory;
import cn.b2b2c.service.productCategory.ProductCategoryService;
import cn.b2b2c.tools.ProductCategoryVo;
import sun.print.resources.serviceui;

@Controller
@RequestMapping("/BackCate")
public class BackCateController {
	
	
	@Resource
	private ProductCategoryService productCategoryService;
		
	
	@RequestMapping(value="/cate.view")
	public String cate(HttpSession session)throws Exception {
		List<ProductCategoryVo> productCategoryVoListBack=productCategoryService.queryAllProductCategoryList();
		session.setAttribute("productCategoryVoListBack", productCategoryVoListBack);
		
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
	public String adminUpdate(HttpServletRequest request)throws Exception {
		String pId=request.getParameter("pId");
		String name=request.getParameter("name");
		String type=request.getParameter("type");		
		int num=productCategoryService.updateProduct(Integer.parseInt(pId), name, Integer.parseInt(type));
		//System.out.println(num);
		if(num==1) {
			//return "200";
			return "back/successBack";
		}
		return "erroe";
	}
	
	
	@RequestMapping(value="/adminAdd.view")
	public String adminAdd(HttpServletRequest request)throws Exception {		
		String type=request.getParameter("type");
		String parentId=request.getParameter("parentId");
		request.setAttribute("type", type);
		request.setAttribute("parentId", parentId);
		
		return "back/admin-add";
	}
	
	@RequestMapping(value="/adminNewly.view")
	public String adminNewly(HttpServletRequest request)throws Exception {
		String name=request.getParameter("name");
		String type=request.getParameter("type");
		String parentId=request.getParameter("parentId");
		int num=productCategoryService.addProduct(name, Integer.parseInt(type), Integer.parseInt(parentId));
		if(num==1) {			
			return "back/successBack";
		}
		return "erroe";
	}
	
	
	
	
	
	
	
	

}
