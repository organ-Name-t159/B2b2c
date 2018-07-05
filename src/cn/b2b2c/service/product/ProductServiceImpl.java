package cn.b2b2c.service.product;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.b2b2c.dao.product.ProductMapper;
import cn.b2b2c.pojo.Product;
import cn.b2b2c.tools.EmptyUtils;
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



	@Override
	public ShoppingCart modifyShoppingCart(String productId, String quantityStr, ShoppingCart cart) throws Exception {
		Integer quantity = 0;
		if (!EmptyUtils.isEmpty(quantityStr))
            quantity = Integer.parseInt(quantityStr);
		//便利购物车寻找该商品 修改其数量
		for (ShoppingCartItem item : cart.getItems()) {
			if(item.getProduct().getId().toString().equals(productId)) {
				if(quantity==0 || quantity<0) {
					cart.getItems().remove(item);
					break;
				}else {
					item.setQuantity(quantity);
				}
			}
			
		}
		//重新计算金额
		calculate(cart);		
		return cart;
	}

}
