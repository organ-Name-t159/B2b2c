package cn.b2b2c.pojo;

import java.io.Serializable;
import java.util.Date;

public class Order implements Serializable {
	//SELECT `id`,`userId`,`userAddressId`,`createTime`,`cost`,`serialNumber`,
	//`deliveryTimeId`,`paymentStatusId`,`paymentWayId`,`distributionWayId`,
	//`userTiscountCouponId`,`invoiceTypeId`,`invoiceContentId`,`leaveWord` FROM `order`
	
	private Integer id;
	private Integer userId;
	private Integer userAddressId;
	private Date createTime;
	private float cost;
	private String serialNumber;
	private Integer deliveryTimeId;
	private Integer paymentStatusId;
	private Integer paymentWayId;
	private Integer distributionWayId;
	private Integer userTiscountCouponId;
	private Integer invoiceTypeId;
	private Integer invoiceContentId;
	private String leaveWord;
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
	public Integer getUserAddressId() {
		return userAddressId;
	}
	public void setUserAddressId(Integer userAddressId) {
		this.userAddressId = userAddressId;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public float getCost() {
		return cost;
	}
	public void setCost(float cost) {
		this.cost = cost;
	}
	public String getSerialNumber() {
		return serialNumber;
	}
	public void setSerialNumber(String serialNumber) {
		this.serialNumber = serialNumber;
	}
	public Integer getDeliveryTimeId() {
		return deliveryTimeId;
	}
	public void setDeliveryTimeId(Integer deliveryTimeId) {
		this.deliveryTimeId = deliveryTimeId;
	}
	public Integer getPaymentStatusId() {
		return paymentStatusId;
	}
	public void setPaymentStatusId(Integer paymentStatusId) {
		this.paymentStatusId = paymentStatusId;
	}
	public Integer getPaymentWayId() {
		return paymentWayId;
	}
	public void setPaymentWayId(Integer paymentWayId) {
		this.paymentWayId = paymentWayId;
	}
	public Integer getDistributionWayId() {
		return distributionWayId;
	}
	public void setDistributionWayId(Integer distributionWayId) {
		this.distributionWayId = distributionWayId;
	}
	public Integer getUserTiscountCouponId() {
		return userTiscountCouponId;
	}
	public void setUserTiscountCouponId(Integer userTiscountCouponId) {
		this.userTiscountCouponId = userTiscountCouponId;
	}
	public Integer getInvoiceTypeId() {
		return invoiceTypeId;
	}
	public void setInvoiceTypeId(Integer invoiceTypeId) {
		this.invoiceTypeId = invoiceTypeId;
	}
	public Integer getInvoiceContentId() {
		return invoiceContentId;
	}
	public void setInvoiceContentId(Integer invoiceContentId) {
		this.invoiceContentId = invoiceContentId;
	}
	public String getLeaveWord() {
		return leaveWord;
	}
	public void setLeaveWord(String leaveWord) {
		this.leaveWord = leaveWord;
	}
	
	

}
