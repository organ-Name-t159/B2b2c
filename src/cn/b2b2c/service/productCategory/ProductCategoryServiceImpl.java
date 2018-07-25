package cn.b2b2c.service.productCategory;

import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.b2b2c.dao.productCategory.ProductCategoryMapper;
import cn.b2b2c.pojo.ProductCategory;
import cn.b2b2c.pojo.ProductCategoryParam;
import cn.b2b2c.tools.EmptyUtils;
import cn.b2b2c.tools.ProductCategoryVo;

@Service
public class ProductCategoryServiceImpl implements ProductCategoryService {
	
	@Autowired
	private ProductCategoryMapper productCategoryMapper;

	@Override
	public List<ProductCategoryVo> queryAllProductCategoryList() throws Exception {
		//开始分类
		List<ProductCategoryVo> productCategory1VoList=new ArrayList<ProductCategoryVo>();
		//查询一级分类
		List<ProductCategory> productCategory1List=getProductCategories(null);
		for (ProductCategory product1Category : productCategory1List) {
			//封装一级分类
			ProductCategoryVo productCategoryVo=new ProductCategoryVo();
			productCategoryVo.setProductCategory(product1Category);
			//开始子分类
			List<ProductCategoryVo> productCategoryVo1ChildList=new ArrayList<ProductCategoryVo>();
			//根据一级分类查询二级分类
			List<ProductCategory> productCategory2List=getProductCategories(product1Category.getId());
			for (ProductCategory productCategory2 : productCategory2List) {
				//封装二级分类
				ProductCategoryVo productCategoryVo2=new ProductCategoryVo();
				productCategoryVo1ChildList.add(productCategoryVo2);
				productCategoryVo2.setProductCategory(productCategory2);
				//开始子三级分类
				List<ProductCategoryVo> productCategoryVo2ChildList=new ArrayList<ProductCategoryVo>();
				productCategoryVo2.setProductCategoryVoList(productCategoryVo2ChildList);
				//根据二级分类查询三级分类的列表
                List<ProductCategory> productCategory3List = getProductCategories(productCategory2.getId());
                for (ProductCategory productCategory3 : productCategory3List) {
					ProductCategoryVo productCategoryVo3=new ProductCategoryVo();
					productCategoryVo3.setProductCategory(productCategory3);
                    productCategoryVo2ChildList.add(productCategoryVo3);
				}
			}
			productCategoryVo.setProductCategoryVoList(productCategoryVo1ChildList);
			productCategory1VoList.add(productCategoryVo);
		}
		return productCategory1VoList;
	}

	@Override
	public List<ProductCategory> getProductCategories(Integer parentId) throws Exception {
		List<ProductCategory> productCategoryList=new ArrayList<ProductCategory>();
		ProductCategoryParam params=new ProductCategoryParam();
		if(EmptyUtils.isNotEmpty(parentId)) {
			params.setParentId(parentId);
		}else {
			params.setParentId(0);
		}
		productCategoryList=productCategoryMapper.queryProductCategorylist(params);	
		//System.out.println("size: " + productCategoryList.size());
		return productCategoryList;
	}

	@Override
	public ProductCategory queryAll(Integer ProductCategoryId) throws Exception {
		
		return productCategoryMapper.queryAll(ProductCategoryId);
	}

	@Override
	public int updateProduct(Integer id, String name, Integer type) throws Exception {
		
		return productCategoryMapper.updateProduct(id, name, type);
	}

	@Override
	public int addProduct(String name, Integer type, Integer id) {
		
		return productCategoryMapper.addProduct(name, type, id);
	}
	
	

}
