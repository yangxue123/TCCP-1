package com.tccp.service;

import java.util.List;

import com.tccp.entity.User;
import com.tccp.entity.testUser;


public interface UserService {
	
	//测试方法****************************************************************
	void add(testUser user);
	boolean update(testUser user);
	boolean delete(int id);
	testUser findById(int id);
	List<testUser> findAll();
	//测试方法****************************************************************
	
	
	//实际方法
	//用户登录
	public User userLogin(User user);
}
