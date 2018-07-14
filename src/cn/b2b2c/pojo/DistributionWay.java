package cn.b2b2c.pojo;

import java.io.Serializable;

public class DistributionWay implements Serializable {
	private Integer id;
	private String dbtName;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getDbtName() {
		return dbtName;
	}
	public void setDbtName(String dbtName) {
		this.dbtName = dbtName;
	}
	
	

}
