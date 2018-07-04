package cn.b2b2c.service.product;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.b2b2c.dao.product.ProductMapper;
import cn.b2b2c.pojo.Product;
import cn.b2b2c.tools.ShoppingCart;
import cn.b2b2c.tools.ShoppingCartItem;

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



	@Override
	public Product getProduct(Integer id) throws Exception {
		Product product=productMapper.getProduct(id);
		return product;
	}



	@Override
	public ShoppingCart calculate(ShoppingCart cart) throws Exception {
		double sum=0.0;
		for (ShoppingCartItem item : cart.getItems()) {
			sum=sum+item.getQuantity()*item.getProduct().getPrice();
			item.setCost(item.getQuantity()*item.getProduct().getPrice());
		}
		cart.setSum(sum);		
		return cart;
	}

}
