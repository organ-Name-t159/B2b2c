package cn.b2b2c.pojo;

import java.io.Serializable;
import java.util.Date;

public class UserProductEvaluate implements Serializable {
	//SELECT `id`,`userId`,`productId`,`uPEName` FROM 
	private Integer id;
	private Integer userId;
	private Integer productId;
	private String uPEName;//评价内容	
	private Date evaluateTime;//评价时间
	private String tempEvaluateTime;//临时转换时间字段
	private String evaluateName;//临时评价人名称
	private String headPortrait;//头像
	
	public String getHeadPortrait() {
		return headPortrait;
	}
	public void setHeadPortrait(String headPortrait) {
		this.headPortrait = headPortrait;
	}
	public String getTempEvaluateTime() {
		return tempEvaluateTime;
	}
	public void setTempEvaluateTime(String tempEvaluateTime) {
		this.tempEvaluateTime = tempEvaluateTime;
	}
	public String getEvaluateName() {
		return evaluateName;
	}
	public void setEvaluateName(String evaluateName) {
		this.evaluateName = evaluateName;
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
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public String getuPEName() {
		return uPEName;
	}
	public void setuPEName(String uPEName) {
		this.uPEName = uPEName;
	}
	public Date getEvaluateTime() {
		return evaluateTime;
	}
	public void setEvaluateTime(Date evaluateTime) {
		this.evaluateTime = evaluateTime;
	}
	

}
