package com.tccp.service.impl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tccp.persistence.UserMapper;
import com.tccp.persistence.UserPersistence;
import com.tccp.entity.User;
import com.tccp.entity.testUser;
import com.tccp.service.UserService;



@Service
@Transactional  
//此处不再进行创建SqlSession和提交事务，都已交由spring去管理了。
public class UserServiceImpl implements UserService {
	
	@Resource
	private UserMapper mapper;
	@Resource
	private UserPersistence userPersistence;

	
	public User userLogin(User user){
		User user2 = userPersistence.selectByUP(user);
		if(user2!=null){
			System.out.println(user2.getUser_id() + user2.getUsername() + user2.getPriority());
			return user2;
		}
		return null;
		
	}
	
	//测试方法*********************************************************************
	public boolean delete(int id) {
		
		return mapper.delete(id);
	}

	public List<testUser> findAll() {
		List<testUser> findAllList = mapper.findAll();
		return findAllList;
	}

	public testUser findById(int id) {

		testUser user = mapper.findById(id);
		
		return user;
	}

	public void add(testUser user) {

		mapper.add(user);
	}

	public boolean update(testUser user) {

		return mapper.update(user);
	}
	//测试方法************************************************************************
	

}
