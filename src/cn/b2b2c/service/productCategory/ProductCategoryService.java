package cn.b2b2c.service.productCategory;

import java.util.List;

import cn.b2b2c.pojo.ProductCategory;
import cn.b2b2c.tools.ProductCategoryVo;

public interface ProductCategoryService {
	
	/**
	 * 查询全部的商品分类
	 * @return
	 * @throws Exception
	 */
	public List<ProductCategoryVo> queryAllProductCategoryList()throws Exception;
	
	/**
	 * 查询子分类
	 * @param parentId
	 * @return
	 * @throws Exception
	 */
	public List<ProductCategory> getProductCategories(Integer parentId)throws Exception;
	

}
