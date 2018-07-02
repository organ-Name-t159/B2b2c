package cn.b2b2c.service.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.b2b2c.dao.user.UserMapper;
import cn.b2b2c.pojo.User;
@Service("/userSerivce")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public int geiId() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int regist(User user) {
		// TODO Auto-generated method stub
		return userMapper.regist(user);
	}
	

}
