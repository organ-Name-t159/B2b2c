package cn.b2b2c.pojo;

public class BackUser {
	//SELECT `id`,`backUserName`,`roleId`,`backPassWord` FROM `back_user` 
	private Integer id;
	private String backUserName;//管理员
	private Integer roleId;//角色
	private String backPassWord;//密码
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getBackUserName() {
		return backUserName;
	}
	public void setBackUserName(String backUserName) {
		this.backUserName = backUserName;
	}
	public Integer getRoleId() {
		return roleId;
	}
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	public String getBackPassWord() {
		return backPassWord;
	}
	public void setBackPassWord(String backPassWord) {
		this.backPassWord = backPassWord;
	}
	
	
	
	
	

}
