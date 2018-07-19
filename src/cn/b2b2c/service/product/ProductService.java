package cn.b2b2c.service.product;

import java.util.List;

<<<<<<< HEAD
<<<<<<< HEAD
=======
import org.apache.ibatis.annotations.Param;
>>>>>>> c5785c3ae77d91313507dc76f295b11ff9b5599d
=======
import org.apache.ibatis.annotations.Param;
>>>>>>> c5785c3ae77d91313507dc76f295b11ff9b5599d

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
<<<<<<< HEAD
<<<<<<< HEAD
	
	
	
	
	/**
	 * 根据商品id修改数量
	 * @param stock
	 * @param id
	 * @return
	 */
	public int updateNumber(Integer stock,Integer id)throws Exception;
	
	
	
	
	
	
	
	
	
=======
=======
>>>>>>> c5785c3ae77d91313507dc76f295b11ff9b5599d
	/**
	 * 获取商品总条数
	 */
		public int getCount(Integer id);
<<<<<<< HEAD
>>>>>>> c5785c3ae77d91313507dc76f295b11ff9b5599d
=======
>>>>>>> c5785c3ae77d91313507dc76f295b11ff9b5599d

}
