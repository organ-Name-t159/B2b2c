package cn.b2b2c.dao.product;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.b2b2c.pojo.Product;

public interface ProductMapper {
	
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
<<<<<<< HEAD
<<<<<<< HEAD
	
	
	/**
	 * 根据商品id修改数量
	 * @param stock
	 * @param id
	 * @return
	 */
	public int updateNumber(@Param("number")Integer stock,@Param("pId")Integer id);
	
	
	

=======
=======
>>>>>>> c5785c3ae77d91313507dc76f295b11ff9b5599d
/**
 * 根据类别id查找商品联表
 */
	public List<Product> getProductById(@Param("pId")Integer id);
	/**
	 * 获取商品总条数
	 */
		public int getCount(@Param("pId")Integer id);
<<<<<<< HEAD
>>>>>>> c5785c3ae77d91313507dc76f295b11ff9b5599d
=======
>>>>>>> c5785c3ae77d91313507dc76f295b11ff9b5599d
}
