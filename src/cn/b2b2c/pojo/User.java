package cn.b2b2c.pojo;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.alibaba.fastjson.annotation.JSONField;

public class User implements Serializable{

	private Integer id;	
	private String userName;//用户名
	private String password;//密码
	private Integer sex;//性别
	private String email;//电子邮箱
	private String phone;//电话
	private String headPortrait;//头像文件
	
	//@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	//@JSONField(format="yyyy-MM-dd HH:mm:ss")
	private Date birthday;//出生日期
	
	private String  commB;//时间格式替身
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getHeadPortrait() {
		return headPortrait;
	}
	public void setHeadPortrait(String headPortrait) {
		this.headPortrait = headPortrait;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCommB() {
		return commB;
	}
	public void setCommB(String commB) {
		this.commB = commB;
	}
	public Integer getSex() {
		return sex;
	}
	public void setSex(Integer sex) {
		this.sex = sex;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	
	
	
	
}
