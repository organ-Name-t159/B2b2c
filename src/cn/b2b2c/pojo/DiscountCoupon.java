package cn.b2b2c.pojo;

import java.io.Serializable;
import java.util.Date;

public class DiscountCoupon implements Serializable {
	//`money`,`issue`,`use`,`validTime`
	private Integer id;//
	private float money;//优惠金额
	private String issue;//发行店铺
	private float use;//满足金额
	private Date validTime;//有效时间
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public float getMoney() {
		return money;
	}
	public void setMoney(float money) {
		this.money = money;
	}
	public String getIssue() {
		return issue;
	}
	public void setIssue(String issue) {
		this.issue = issue;
	}
	public float getUse() {
		return use;
	}
	public void setUse(float use) {
		this.use = use;
	}
	public Date getValidTime() {
		return validTime;
	}
	public void setValidTime(Date validTime) {
		this.validTime = validTime;
	}
	

}
