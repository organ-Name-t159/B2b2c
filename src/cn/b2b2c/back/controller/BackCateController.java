package cn.b2b2c.back.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
