package cn.b2b2c.service.product;

import java.util.List;


import org.apache.ibatis.annotations.Param;



import cn.b2b2c.pojo.Product;
import cn.b2b2c.pojo.UserProductEvaluate;
import cn.b2b2c.tools.ShoppingCart;


public interface ProductService {
	
	/**
	 * 修改商品
	 * @param product
	 * @return
	 */
	public int updateProductAll(Product product);
	
	/**
	 * 查询总条数
	 * @return
	 */
	public int count(String keyWord);
	
	
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
	 * 根据商品id修改数量
	 * @param stock
	 * @param id
	 * @return
	 */
	public int updateNumber(Integer stock,Integer id)throws Exception;
	
	
	
	
	
	
	
	
	

	/**
	 * 获取商品总条数
	 * @param proName
	 * @param id
	 * @param level
	 * @return
	 * @throws Exception
	 */
	public int getCount(String proName,Integer id,Integer level)throws Exception;
	/**
	 * 添加用户id和商品id 用于用户收藏商品
	 * @throws Exception 
	 */
	public int insertCommodity(Integer uid,Integer pid) throws Exception;
	
	/**
	 * 根据用户id查商品
	 * @return
	 * @throws Exception 
	 */
	public List<Product> getCommodityByuid(Integer uid) throws Exception;

	
	/**
	 * 删除用户收藏商品
	 */
	public int	deleteCommodity(@Param("uid")Integer uid,@Param("pid")Integer pid);

	public Product	selectComm(Integer uid,Integer pid);
	
	public int getcommodityCount(Integer uid);
	/**
	 * 查询全部评论
	 * @param user
	 * @return
	 */
	public List<UserProductEvaluate> getEvaluateAll(Integer pid);
}
