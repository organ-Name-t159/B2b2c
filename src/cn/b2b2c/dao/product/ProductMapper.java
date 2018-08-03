package cn.b2b2c.dao.product;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.b2b2c.pojo.Product;

public interface ProductMapper {
	
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
	public int count(@Param("kw")String keyWord);
	
	/**
	 * 根据查询条件，分页显示商品信息列表（返回类型：List<Product>，参数：当前页码、页码容量、商品名称、分类级别、类别）。
	 * @param currentPageNo
	 * @param pageSize
	 * @param proName
	 * @param categoryId
	 * @param level
	 * @return
	 */
	public List<Product> getProductList(@Param("from")Integer currentPageNo,
			@Param("pageSize")Integer pageSize,
			@Param("proName")String proName,
			@Param("categoryId")Integer categoryId,
			@Param("level")Integer level);
	
	/**
	 * 根据商品id查询详情
	 * @param id
	 * @return
	 */
	public Product getProduct(@Param("pId")Integer id);

	
	
	/**
	 * 根据商品id修改数量
	 * @param stock
	 * @param id
	 * @return
	 */
	public int updateNumber(@Param("number")Integer stock,@Param("pId")Integer id);
	
	
	


/**
 * 根据类别id查找商品联表
 */
	public List<Product> getProductById(@Param("pId")Integer id);
	
	
	/**
	 * 获取商品总条数
	 * @param proName
	 * @param id
	 * @param level
	 * @return
	 * @throws Exception
	 */
	public int getCount(@Param("pName")String proName,@Param("categoryId")Integer id,@Param("level")Integer level);
	
	/**
	 * 添加用户id和商品id 用于用户收藏商品
	 */
	public int insertCommodity(@Param("uid")Integer uid,@Param("pid")Integer pid);
	
	/**
	 * 根据用户id查商品
	 * @return
	 */
	public List<Product> getCommodityByuid(@Param("uid")Integer uid);
	/**
	 * 删除用户收藏商品
	 */
	public int	deleteCommodity(@Param("uid")Integer uid,@Param("pid")Integer pid);
 
	
	public Product	selectComm(@Param("uid")Integer uid,@Param("pid")Integer pid);
	
	public int getcommodityCount(@Param("uid")Integer uid);
}
