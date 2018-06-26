package cn.b2b2c.service.product;

import java.util.List;

import cn.b2b2c.pojo.Product;


public interface ProductService {
	
	
	/**
	 * 
	 * @param currentPageNo 当前页
	 * @param pageSize 页的条数
	 * @param proName 商品名称
	 * @param categoryId 商品Id
	 * @param level
	 * @return
	 * @throws Exception
	 */
	public List<Product> getProductList(Integer currentPageNo,Integer pageSize, 
			String proName, Integer categoryId, Integer level)throws Exception;

}
