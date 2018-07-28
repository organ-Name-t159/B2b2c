package cn.b2b2c.service.user;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.b2b2c.dao.user.UserIntegralMapper;
import cn.b2b2c.pojo.UserIntegral;

@Service
public class UserIntegralServiceImpl implements UserIntegralService {
	
	@Resource
	private UserIntegralMapper userIntegralMapper;

	@Override
	public int addUserIntegral(Integer userId, Integer integral) {
		
		return userIntegralMapper.addUserIntegral(userId, integral);
	}

	@Override
	public UserIntegral queryUserIntegral(Integer userId) {
		
		return userIntegralMapper.queryUserIntegral(userId);
	}

	@Override
	public int updateUserIntegral(Integer userId, Integer integral) {
		
		return userIntegralMapper.updateUserIntegral(userId, integral);
	}

}
