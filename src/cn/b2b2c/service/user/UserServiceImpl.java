package cn.b2b2c.service.user;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.b2b2c.dao.user.UserMapper;
import cn.b2b2c.pojo.User;
import cn.b2b2c.pojo.UserAddress;
@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;
	@Override
	public int geiId() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public User userLogin(String userName) {
		return userMapper.userLogin(userName);
	}

	@Override
	public int regist(User user) {
		// TODO Auto-generated method stub
		return userMapper.regist(user);
	}

	@Override
	public User phoneLogin(String phone) {
		// TODO Auto-generated method stub
		return userMapper.phoneLogin(phone);
	}

	@Override
	public List<UserAddress> getAll(Integer userId) throws Exception {
		List<UserAddress> uList=new ArrayList<UserAddress>();
		uList=userMapper.getAll(userId);		
		return uList;
	}

	@Override
	public int update(Integer id, Integer userId, String consignee, String address, String addressPhone,
			Integer postcode) throws Exception {
		UserAddress uAddress=new UserAddress();
		uAddress.setId(id);
		uAddress.setUserId(userId);
		uAddress.setConsignee(consignee);
		uAddress.setAddress(address);
		uAddress.setAddressPhone(addressPhone);
		uAddress.setPostcode(postcode);
		
		return userMapper.update(uAddress);
	}

	@Override
	public int addAddress(Integer userId, String consignee, String address, String addressPhone, Integer postcode)
			throws Exception {
		
		UserAddress uAddress=new UserAddress();		
		uAddress.setUserId(userId);
		uAddress.setConsignee(consignee);
		uAddress.setAddress(address);
		uAddress.setAddressPhone(addressPhone);
		uAddress.setPostcode(postcode);
		
		return userMapper.addAddress(uAddress);
	}

	@Override
	public int deleteAddress(Integer userId, Integer id) throws Exception {
		
		return userMapper.deleteAddress(userId, id);
	}


	@Override
	public int userCount(String keyWord, Date beginTime, Date expirationTime) {
		
		return userMapper.userCount(keyWord, beginTime, expirationTime);
	}

	@Override
	public List<User> userAll(Integer currentPageNo, Integer pageSize, String keyWord, Date beginTime,
			Date expirationTime) {
		currentPageNo=(currentPageNo-1)*pageSize;
		return userMapper.userAll(currentPageNo, pageSize, keyWord, beginTime, expirationTime);
	}

	

	

}
