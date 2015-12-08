package com.tccp.persistence;

import com.tccp.entity.User;

public interface UserPersistence {
	//根据用户名和密码查找符合条件用户信息(取user_id & username & priority)
	public User selectByUP(User user);
	
	//查找所有用户
	public User selectAllUser(); 
}
