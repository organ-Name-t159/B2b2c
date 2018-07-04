package cn.b2b2c.service.product;

import java.util.List;

import cn.b2b2c.pojo.Product;
import cn.b2b2c.tools.ShoppingCart;


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
	
	
	/**
	 * 根据商品id查询详情
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Product getProduct(Integer id)throws Exception;
	
	
	/**
	 * 购物车的结算
	 * @param cart
	 * @return
	 * @throws Exception
	 */
	public ShoppingCart calculate(ShoppingCart cart)throws Exception;

}
