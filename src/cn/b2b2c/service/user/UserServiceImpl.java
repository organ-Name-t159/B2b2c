package cn.b2b2c.service.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.b2b2c.dao.user.UserMapper;
import cn.b2b2c.pojo.User;
<<<<<<< HEAD
@Service("/userSerivce")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;
	
=======
@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;
>>>>>>> 4f65d84fdff87019206a8c42abbf26c2d7988232
	@Override
	public int geiId() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
<<<<<<< HEAD
	public int regist(User user) {
		// TODO Auto-generated method stub
		return userMapper.regist(user);
	}
=======
	public User userLogin(String userName) {
		return userMapper.userLogin(userName);
	}

	

>>>>>>> 4f65d84fdff87019206a8c42abbf26c2d7988232
	

}
