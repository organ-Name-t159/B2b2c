package cn.b2b2c.realm;


import java.util.Iterator;
import java.util.Set;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import cn.b2b2c.dao.backuser.BackUserMapper;
import cn.b2b2c.pojo.BackUser;
import cn.b2b2c.pojo.User;
import cn.b2b2c.service.jurisdiction.JurisdictionService;
import cn.b2b2c.service.role.RoleService;
import cn.b2b2c.service.user.UserService;



public class MyRealm extends AuthorizingRealm {
	
	@Resource
	private UserService userService;
	
	@Resource
	private BackUserMapper backUserMapper;
	
	@Resource
	private JurisdictionService jurisdictionService;
	
	@Resource
	private RoleService roleService;
	
	// 为当前登陆成功的用户授予权限和角色，已经登陆成功了
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		String username = (String) principals.getPrimaryPrincipal(); //获取用户名
			SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        				
			try {
				Set<String> nameU=roleService.getRoles(username);
				Iterator<String> it = nameU.iterator();
				String str=null;
				while (it.hasNext()) {  
					   str = it.next();  					    
					} 
				//System.out.println(str);
				//System.out.println(nameU);
				Set<String> name=jurisdictionService.getPermissions(str);
				//System.out.println(name);
				authorizationInfo.setRoles(nameU);//给用户角色
				authorizationInfo.setStringPermissions(name);//给用户权限
			} catch (Exception e) {				
				e.printStackTrace();
			}			   
        return authorizationInfo;
	}
	
	
	// 验证当前登录的用户，获取认证信息
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		String username = (String) token.getPrincipal(); // 获取用户名
        BackUser bUser;
		try {
			bUser = backUserMapper.getBackUser(username);
			 if(bUser != null) {
		            AuthenticationInfo authcInfo = new SimpleAuthenticationInfo(bUser.getBackUserName(), bUser.getBackPassWord(), getName());
		            return authcInfo;
		        } else {
		            return null;
		        } 
		} catch (Exception e) {			
			e.printStackTrace();
			return null;
		}
             
	}
	// 清除缓存
	     public void clearCached() {
	         PrincipalCollection principals = SecurityUtils.getSubject().getPrincipals();
	         super.clearCache(principals);
	     }

}
