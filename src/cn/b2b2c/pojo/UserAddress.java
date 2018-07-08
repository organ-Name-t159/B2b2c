package cn.b2b2c.pojo;

import java.io.Serializable;

public class UserAddress implements Serializable {
	//`id`,`userId`,`consignee`,`address`,`addressPhone`,`postcode`,`isDefault`
	private Integer id;
	private Integer userId;//用户主键
	private String consignee;//收货人
	private String address;//地址
	private String addressPhone;//收货电话号码
	private int postcode;//邮政编号
	private int isDefault;//是否是默认地址1：yes，0：no
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
	public String getConsignee() {
		return consignee;
	}
	public void setConsignee(String consignee) {
		this.consignee = consignee;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddressPhone() {
		return addressPhone;
	}
	public void setAddressPhone(String addressPhone) {
		this.addressPhone = addressPhone;
	}
	public int getPostcode() {
		return postcode;
	}
	public void setPostcode(int postcode) {
		this.postcode = postcode;
	}
	public int getIsDefault() {
		return isDefault;
	}
	public void setIsDefault(int isDefault) {
		this.isDefault = isDefault;
	}
	
	

}
