package cn.b2b2c.service.jurisdiction;

import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.b2b2c.dao.jurisdiction.JurisdictionMapper;



@Service
public class JurisdictionServiceImpl implements JurisdictionService {
	
	@Resource
	private JurisdictionMapper jurisdictionMapper;

	@Override
	public Set<String> getPermissions(String userLoginName) {
		Set<String> name=jurisdictionMapper.getPermissions(userLoginName);
		return name;
	}

}
