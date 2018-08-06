package cn.b2b2c.service.role;

import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.b2b2c.dao.role.RoleMapper;


@Service
public class RoleServiceImpl implements RoleService {
	
	@Resource
	private RoleMapper roleMapper;

	@Override
	public Set<String> getRoles(String userLoginName) throws Exception {
		Set<String> name=roleMapper.getRoles(userLoginName);
		return name;
	}

}
