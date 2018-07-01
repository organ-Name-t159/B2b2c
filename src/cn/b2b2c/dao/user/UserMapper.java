package cn.b2b2c.dao.user;


import org.apache.ibatis.annotations.Param;

import cn.b2b2c.pojo.User;


public interface UserMapper {
	
	/**
	 * 登录验证
	 * @param loginName
	 * @return
	 * @throws Exception
	 */
	public User userLogin(@Param("userName")String userName);
	
	

}
