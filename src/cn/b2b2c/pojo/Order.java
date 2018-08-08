package cn.b2b2c.pojo;

import java.io.Serializable;
import java.util.Date;

public class Order implements Serializable {
	// SELECT `id`,`userId`,`userAddressId`,`createTime`,`cost`,`serialNumber`,
	// `deliveryTimeId`,`paymentStatusId`,`paymentWayId`,`distributionWayId`,
	// `userTiscountCouponId`,`invoiceTypeId`,`invoiceContentId`,`leaveWord` FROM
	// `order`

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

	private String fileName;
	private String name;
	private String colour;
	private float price;
	private String newTime;
	private int suCount;
	private String deliveryStatus;
	private Integer evaluateStaticId;

	public String getDeliveryStatus() {
		return deliveryStatus;
	}

	public void setDeliveryStatus(String deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}

	public int getSuCount() {
		return suCount;
	}

	public void setSuCount(int suCount) {
		this.suCount = suCount;
	}

	public String getNewTime() {
		return newTime;
	}

	public void setNewTime(String newTime) {
		this.newTime = newTime;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getColour() {
		return colour;
	}

	public void setColour(String colour) {
		this.colour = colour;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	private String consignee;
	private String address;
	private String addressPhone;
	private int postcode;
	private String timeName;
	private String statusName;
	private String wayName;
	private String dbtName;
	private String invoiceType;
	private String content;
	private int productId;
	private int quantity;
	private int costt;

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

	public String getTimeName() {
		return timeName;
	}

	public void setTimeName(String timeName) {
		this.timeName = timeName;
	}

	public String getStatusName() {
		return statusName;
	}

	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}

	public String getWayName() {
		return wayName;
	}

	public void setWayName(String wayName) {
		this.wayName = wayName;
	}

	public String getDbtName() {
		return dbtName;
	}

	public void setDbtName(String dbtName) {
		this.dbtName = dbtName;
	}

	public String getInvoiceType() {
		return invoiceType;
	}

	public void setInvoiceType(String invoiceType) {
		this.invoiceType = invoiceType;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getCostt() {
		return costt;
	}

	public void setCostt(int costt) {
		this.costt = costt;
	}

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

	public Integer getEvaluateStaticId() {
		return evaluateStaticId;
	}

	public void setEvaluateStaticId(Integer evaluateStaticId) {
		this.evaluateStaticId = evaluateStaticId;
	}

}
