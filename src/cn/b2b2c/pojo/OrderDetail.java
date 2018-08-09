package cn.b2b2c.pojo;

import java.io.Serializable;

public class OrderDetail implements Serializable {
	//SELECT `id`,`orderId`,`productId`,`quantity`,`cost` FROM `order_detail`
	private Integer id;
	private Integer orderId;
	private Integer productId;
	private Integer quantity;
	private float cost;
	private Integer evaluateStaticId;
	
	public Integer getEvaluateStaticId() {
		return evaluateStaticId;
	}
	public void setEvaluateStaticId(Integer evaluateStaticId) {
		this.evaluateStaticId = evaluateStaticId;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getOrderId() {
		return orderId;
	}
	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public float getCost() {
		return cost;
	}
	public void setCost(float cost) {
		this.cost = cost;
	}

}
