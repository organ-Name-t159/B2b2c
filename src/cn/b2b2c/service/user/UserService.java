package cn.b2b2c.service.user;

import cn.b2b2c.pojo.User;

public interface UserService {
	
	public int geiId();
	
	public User userLogin(String userName);
	public User phoneLogin(String phone);
	
	public int regist(User user);
	
}
