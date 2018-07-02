package cn.b2b2c.service.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.b2b2c.dao.user.UserMapper;
import cn.b2b2c.pojo.User;
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

	

	

}
