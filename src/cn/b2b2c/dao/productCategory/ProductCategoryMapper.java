package cn.b2b2c.dao.productCategory;

import java.util.List;

import cn.b2b2c.pojo.ProductCategory;
import cn.b2b2c.pojo.ProductCategoryParam;

public interface ProductCategoryMapper {
	
	/**
	 * 根据条件查询商品分类列表
	 * @param productCategoryParam
	 * @return
	 */
	public List<ProductCategory> queryProductCategorylist(ProductCategoryParam productCategoryParam);

}
