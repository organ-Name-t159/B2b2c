package cn.b2b2c.service.user;

import java.util.List;

import cn.b2b2c.pojo.User;
import cn.b2b2c.pojo.UserAddress;

public interface UserService {
	
	public int geiId();
	
	public User userLogin(String userName);
	public User phoneLogin(String phone);
	
	public int regist(User user);
	
	/**
	 * 根据userid查询地址
	 * @param userId
	 * @return
	 * @throws Exception
	 */
	public List<UserAddress> getAll(Integer userId)throws Exception;
	
}
