package cn.b2b2c.controller;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.b2b2c.pojo.Product;
import cn.b2b2c.service.product.ProductService;

@Controller
@RequestMapping("/details")
public class DetailsController {
	
	@Resource
	private ProductService productService;
	
	@RequestMapping(value="/ProductDeatil.html")
	public String ProductDeatil(HttpServletRequest request) throws Exception{
		Integer id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.getProduct(id);
        request.setAttribute("product", product);
        return "ProductDeatil";
    }
	@RequestMapping(value="/Wine.html")
	public String ProductWine(HttpServletRequest request) {
		
		
		return "Wine";
	}
}
