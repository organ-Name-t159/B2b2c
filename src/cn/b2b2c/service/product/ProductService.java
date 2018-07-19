package cn.b2b2c.service.product;

import java.util.List;

import org.apache.ibatis.annotations.Param;

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
	 * 根据类别id查找商品联表
	 */
		public List<Product> getProductById(Integer id);
	/**
	 * 购物车的结算
	 * @param cart
	 * @return
	 * @throws Exception
	 */
	public ShoppingCart calculate(ShoppingCart cart)throws Exception;
	
	
	/**
	 * 修改/删除购物车
	 * @param productId
	 * @param quantityStr
	 * @param cart
	 * @return
	 * @throws Exception
	 */
	public ShoppingCart modifyShoppingCart(String productId,String quantityStr,ShoppingCart cart) throws Exception;
	/**
	 * 获取商品总条数
	 */
		public int getCount(Integer id);

}
