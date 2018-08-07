package cn.b2b2c.service.role;

import java.util.Set;


public interface RoleService {
	/**
	 * 给用户角色
	 * @param userId
	 * @return
	 * @throws Exception
	 */
	public Set<String> getRoles(String userLoginName)throws Exception;
}
