package cn.b2b2c.pojo;

import java.io.Serializable;

public class UserDiscountCoupon implements Serializable {
	//SELECT `id`,`userId`,`dcId`,`dcsId` FROM `user_discount_coupon`
	private Integer id;
	private Integer userId;
	private Integer dcId;
	private Integer dcsId;
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
	public Integer getDcId() {
		return dcId;
	}
	public void setDcId(Integer dcId) {
		this.dcId = dcId;
	}
	public Integer getDcsId() {
		return dcsId;
	}
	public void setDcsId(Integer dcsId) {
		this.dcsId = dcsId;
	}
	
	
}
