package cn.b2b2c.controller;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.b2b2c.pojo.Product;
import cn.b2b2c.service.product.ProductService;
import cn.b2b2c.tools.EmptyUtils;
import cn.b2b2c.tools.Pager;

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
	public String ProductWine(HttpServletRequest request)throws Exception {
		
		String category=request.getParameter("category");
		String  levelStr=request.getParameter("level");
		String currentPageStr=request.getParameter("currentPage");
		String keyWord=request.getParameter("keyWord");
		String pageSizeStr=request.getParameter("pageSize");
		int rowPerPage=EmptyUtils.isEmpty(pageSizeStr)?16:Integer.parseInt(pageSizeStr);
		int currentPage=EmptyUtils.isEmpty(currentPageStr)?1:Integer.parseInt(currentPageStr);
		int level=EmptyUtils.isEmpty(levelStr)?1:Integer.parseInt(levelStr);
		int total=productService.getCount(keyWord,EmptyUtils.isEmpty(category)?null:Integer.parseInt(category),level);
		
		Pager pager=new Pager(total, rowPerPage, currentPage);
		pager.setUrl("/details/Wine.html?level="+level+"&category="+(EmptyUtils.isEmpty(category)?"":category));		
		
		List<Product> productsList=productService.getProductList(currentPage, rowPerPage, keyWord, EmptyUtils.isEmpty(category)?null:Integer.parseInt(category), level);				
		request.setAttribute("pager", pager);
		request.setAttribute("total", total);
		request.setAttribute("productsList", productsList);
		return "Wine";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
