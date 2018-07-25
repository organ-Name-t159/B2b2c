package cn.b2b2c.dao.user;


import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.b2b2c.pojo.User;
import cn.b2b2c.pojo.UserAddress;


public interface UserMapper {
	
	/**
	 * 查询基本信息
	 * @param user
	 * @return
	 */
	public User basic(@Param("uid")Integer uId);
	
	/**
	 * 后台==修改
	 * @param user
	 * @return
	 */
	public int updateBackUser(User user);
	
	/**
	 * 根据id查询
	 * @param userId
	 * @return
	 */
	public User getUser(@Param("uId")Integer userId);
	
	/**
	 * 分页查询
	 * @param currentPageNo
	 * @param pageSize
	 * @param keyWord
	 * @param beginTime
	 * @param expirationTime
	 * @return
	 */
	public List<User> userAll(@Param("cpn")Integer currentPageNo,@Param("ps")Integer pageSize,@Param("kw")String keyWord,@Param("bt")Date beginTime,@Param("et")Date expirationTime);
	
	
	
	/**
	 * 查询==总条数
	 * @param keyWord
	 * @param beginTime
	 * @param expirationTime
	 * @return
	 */
	public int userCount(@Param("kw")String keyWord,@Param("bt")Date beginTime,@Param("et")Date expirationTime);
	
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
	
	
	/**
	 * 修改用户地址
	 * @param uAddress
	 * @return
	 */
	public int update(UserAddress uAddress);
	
	/**
	 * 新增用户地址
	 * @param uAddress
	 * @return
	 */
	public int addAddress(UserAddress uAddress);
	
	/**
	 * 删除用户地址
	 * @param userId
	 * @param id
	 * @return
	 */
	public int deleteAddress(@Param("uId")Integer userId,@Param("aId")Integer id);
	/**
	 * 修改基本信息
	 * @param user
	 * @return
	 */
	public int updatemodify(@Param("uid")Integer userid,@Param("uName")String userName,@Param("bDay")Date birthday,@Param("sx")Integer sex);
}
