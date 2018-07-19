package cn.b2b2c.service.backuser;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.b2b2c.dao.backuser.BackUserMapper;
import cn.b2b2c.pojo.BackUser;

@Service
public class BackUserServiceImpl implements BackUserService {
	
	@Resource
	private BackUserMapper backUserMapper;
	
	

	@Override
	public BackUser getBackUser(String username) throws Exception {
		
		return backUserMapper.getBackUser(username);
	}

}
