package cn.b2b2c.dao.backuser;

import org.apache.ibatis.annotations.Param;

import cn.b2b2c.pojo.BackUser;

public interface BackUserMapper {
	
	/**
	 * 登录验证
	 * @param username
	 * @param userpass
	 * @return
	 */
	public BackUser getBackUser(@Param("bName")String username);
	
	
	
	

}
