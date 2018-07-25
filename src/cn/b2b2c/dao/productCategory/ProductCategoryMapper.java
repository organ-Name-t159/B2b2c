package cn.b2b2c.dao.productCategory;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.b2b2c.pojo.ProductCategory;
import cn.b2b2c.pojo.ProductCategoryParam;

public interface ProductCategoryMapper {
	
	/**
	 * 根据条件查询商品分类列表
	 * @param productCategoryParam
	 * @return
	 */
	public List<ProductCategory> queryProductCategorylist(ProductCategoryParam productCategoryParam);
	
	
	/**
	 * 根据id查询
	 * @param ProductCategoryId
	 * @return
	 */
	public ProductCategory queryAll(@Param("pcId")Integer ProductCategoryId);
	
	
	/**
	 * 根据id修改
	 * @param id
	 * @param name
	 * @param type
	 * @return
	 */
	public int updateProduct(@Param("pId")Integer id,@Param("pName")String name,@Param("pType")Integer type);
	
	
	
	/**
	 * 新增
	 * @param name
	 * @param type
	 * @param id
	 * @return
	 */
	public int addProduct(@Param("pName")String name,@Param("pType")Integer type,@Param("pId")Integer id);
	
	
	
	
	
}
