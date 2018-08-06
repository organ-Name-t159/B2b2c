package cn.b2b2c.service.jurisdiction;

import java.util.Set;


public interface JurisdictionService {
	public Set<String> getPermissions(String userLoginName);

}
