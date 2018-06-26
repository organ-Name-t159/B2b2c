package cn.b2b2c.service.product;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.b2b2c.dao.product.ProductMapper;
import cn.b2b2c.pojo.Product;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Resource
	private ProductMapper productMapper;
	
	

	@Override
	public List<Product> getProductList(Integer currentPageNo, Integer pageSize, String proName, Integer categoryId,
			Integer level) throws Exception {
		List<Product> productList=new ArrayList<Product>();
		currentPageNo =(currentPageNo-1)*pageSize;
		productList=productMapper.getProductList(currentPageNo, pageSize, proName, categoryId, level);		
		return productList;
	}

}
