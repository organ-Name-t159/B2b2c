package cn.b2b2c.dao.user;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.b2b2c.pojo.User;
import cn.b2b2c.pojo.UserAddress;


public interface UserMapper {
	
	/**
	 * 登录验证
	 * @param loginName
	 * @return
	 * @throws Exception
	 */
	public User userLogin(@Param("userName")String userName);
	public User phoneLogin(@Param("phone")String phone);
	/**
	 * 注册
	 * @param user
	 * @return
	 */
	public int regist(User user);
	
	
	/**
	 * 根据userid查询地址
	 * @param userId
	 * @return
	 */
	public List<UserAddress> getAll(@Param("uId")Integer userId);

}
