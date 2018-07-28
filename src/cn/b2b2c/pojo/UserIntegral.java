package cn.b2b2c.pojo;

import java.io.Serializable;

public class UserIntegral implements Serializable {
	//SELECT `id`,`userId`,`integral` FROM `user_integral`
	private Integer id;
	private Integer userId;
	private Integer integral;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getIntegral() {
		return integral;
	}
	public void setIntegral(Integer integral) {
		this.integral = integral;
	}
	
	

}
