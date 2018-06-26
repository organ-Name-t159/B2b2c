package cn.b2b2c.pojo;

import java.io.Serializable;

/**
 * 商品表
 * @author Java
 *
 */
public class ProductCategory implements Serializable {
	
	private Integer id;//ID
	private String name;//名称
	private Integer parentId;//父级ID
	private Integer type;//分类级别
	private String parentName;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getParentId() {
		return parentId;
	}
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public String getParentName() {
		return parentName;
	}
	public void setParentName(String parentName) {
		this.parentName = parentName;
	}

}
