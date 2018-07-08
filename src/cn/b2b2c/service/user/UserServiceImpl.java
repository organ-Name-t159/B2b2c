package cn.b2b2c.service.user;

import java.util.ArrayList;
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

	

	

}
