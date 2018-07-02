package cn.b2b2c.service.user;

import org.springframework.stereotype.Service;

import cn.b2b2c.pojo.User;


public interface UserService {
	
	public int geiId();
	
	
	public int regist(User user);
}
