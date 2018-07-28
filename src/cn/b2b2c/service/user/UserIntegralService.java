package cn.b2b2c.service.user;

import cn.b2b2c.pojo.UserIntegral;

public interface UserIntegralService {
	
	/**
	 * 新增积分记录
	 * @param userId
	 * @param integral
	 * @return
	 */
	public int addUserIntegral(Integer userId,Integer integral);
	
	
	/**
	 * 根据id查询
	 * @param userId
	 * @return
	 */
	public UserIntegral queryUserIntegral(Integer userId);
	
	/**
	 * 根据id修改
	 * @param userId
	 * @param integral
	 * @return
	 */
	public int updateUserIntegral(Integer userId,Integer integral);

}
