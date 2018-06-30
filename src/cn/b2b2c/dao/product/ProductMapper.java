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
	

}