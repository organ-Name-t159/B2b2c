package cn.b2b2c.service.backuser;

import org.apache.ibatis.annotations.Param;

import cn.b2b2c.pojo.BackUser;

public interface BackUserService {
	
	
	/**
	 * 登录验证
	 * @param username
	 * @param userpass
	 * @return
	 */
	public BackUser getBackUser(String username)throws Exception;

}
