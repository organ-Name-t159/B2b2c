package cn.b2b2c.dao.role;

import java.util.Set;

import org.apache.ibatis.annotations.Param;

public interface RoleMapper {
	public Set<String> getRoles(@Param("name")String userLoginName);
}
