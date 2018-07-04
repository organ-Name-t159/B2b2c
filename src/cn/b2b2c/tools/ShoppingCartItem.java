package cn.b2b2c.tools;

import java.io.Serializable;

import cn.b2b2c.pojo.Product;

public class ShoppingCartItem implements Serializable {
	
	private Product product;//商品
	private Integer quantity;//数量
	private float cost;//价格
	
	public ShoppingCartItem(Product product,Integer quantity) {
		this.product=product;
		this.quantity=quantity;
		this.cost=product.getPrice()*quantity;
	}
	
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
		this.cost=product.getPrice()*quantity;
	}
	public float getCost() {
		return cost;
	}
	public void setCost(float cost) {
		this.cost = cost;
	}
	

}
