package cn.b2b2c.pojo;

import java.io.Serializable;

public class DeliveryTime implements Serializable {
	
	private Integer id;
	private String timeName;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTimeName() {
		return timeName;
	}
	public void setTimeName(String timeName) {
		this.timeName = timeName;
	}
	

}
