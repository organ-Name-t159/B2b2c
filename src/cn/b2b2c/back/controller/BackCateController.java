package cn.b2b2c.back.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String adminEdit() {
		return "back/admin-edit";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
