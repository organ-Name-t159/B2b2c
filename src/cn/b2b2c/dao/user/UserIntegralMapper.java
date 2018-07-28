package cn.b2b2c.dao.user;

import org.apache.ibatis.annotations.Param;

import cn.b2b2c.pojo.UserIntegral;

public interface UserIntegralMapper {
	
	/**
	 * 新增积分记录
	 * @param userId
	 * @param integral
	 * @return
	 */
	public int addUserIntegral(@Param("uId")Integer userId,@Param("ing")Integer integral);
	
	/**
	 * 根据id查询
	 * @param userId
	 * @return
	 */
	public UserIntegral queryUserIntegral(@Param("uId")Integer userId);
	
	/**
	 * 根据id修改
	 * @param userId
	 * @param integral
	 * @return
	 */
	public int updateUserIntegral(@Param("uId")Integer userId,@Param("ing")Integer integral);

}
