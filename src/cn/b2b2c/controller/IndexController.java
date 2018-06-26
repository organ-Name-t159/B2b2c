package cn.b2b2c.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.b2b2c.pojo.Product;
import cn.b2b2c.service.product.ProductService;
import cn.b2b2c.service.productCategory.ProductCategoryService;
import cn.b2b2c.tools.ProductCategoryVo;

@Controller
@RequestMapping(value="/product")
public class IndexController {
	
	@Resource
	private ProductCategoryService productCategoryService;
	
	@Resource
	private ProductService productService;
	
	
	@RequestMapping(value="/index.html")
	public String index(Model model,HttpSession session)throws Exception {
		//商品分类
		List<ProductCategoryVo> productCategoryVoList=productCategoryService.queryAllProductCategoryList();
		for (ProductCategoryVo vo : productCategoryVoList) {
			List<Product> productList=productService.getProductList(1, 8, null, vo.getProductCategory().getId(),1);
			vo.setProductList(productList);
		}		
		session.setAttribute("productCategoryVoList", productCategoryVoList);		
		return "index";
	}
	

}
