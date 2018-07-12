package cn.b2b2c.pojo;

import java.io.Serializable;

public class PaymentWay implements Serializable {
	//SELECT `id`,`wayName` FROM `payment_way`
	private Integer id;
	private String wayName;//支付方式名称
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getWayName() {
		return wayName;
	}
	public void setWayName(String wayName) {
		this.wayName = wayName;
	}
	
}
