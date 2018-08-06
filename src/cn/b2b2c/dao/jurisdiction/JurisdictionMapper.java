package cn.b2b2c.dao.jurisdiction;

import java.util.Set;

import org.apache.ibatis.annotations.Param;

public interface JurisdictionMapper {
	public Set<String> getPermissions(@Param("name")String userLoginName);

}
