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
	
	
	/**
	 * 修改用户地址
	 * @param id
	 * @param userId
	 * @param consignee
	 * @param address
	 * @param addressPhone
	 * @param postcode
	 * @return
	 * @throws Exception
	 */
	public int update(Integer id
					,Integer userId
					,String consignee
					,String address
					,String addressPhone
					,Integer postcode)throws Exception;
	
	
	
	/**
	 * 新增用户地址
	 * @param userId
	 * @param consignee
	 * @param address
	 * @param addressPhone
	 * @param postcode
	 * @return
	 * @throws Exception
	 */
	public int addAddress(
					Integer userId
					,String consignee
					,String address
					,String addressPhone
					,Integer postcode)throws Exception;
	
	
	/**
	 * 删除用户地址
	 * @param userId
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public int deleteAddress(Integer userId,Integer id)throws Exception;
	
	
	
	
}
