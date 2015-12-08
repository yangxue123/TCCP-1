package com.tccp.test;


import java.util.List;

import com.tccp.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.tccp.persistence.UserMapper;
import com.tccp.entity.testUser;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/config/spring-common.xml")
public class UserTest {

	@Autowired
	private UserMapper userMapper;
	@Autowired
	private com.tccp.persistence.UserPersistence test;
	
	@Test
	public void testSelectByUP(){
		User user = new User();
		user.setUsername("testname");
		user.setPassword("123456");
		System.out.println("用户名：" + test.selectByUP(user).getUsername() + "\n用户ID:" + test.selectByUP(user).getUser_id()+ "\n用户类型:" + test.selectByUP(user).getPriority());
	}
	
	
	@Test
	public void testSelectAllUser(){
	
		System.out.println(test.selectAllUser().toString());
	}

//*********************************************************************************//
	@Test
	public void testAdd(){
		testUser user = new testUser(4, "王五", "33");
		userMapper.add(user);
		
	}
	
	@Test
	public void testFindAll(){
		List<testUser> findAllList = userMapper.findAll();
		System.out.println(findAllList.size());
	}
	
	@Test
	public void testFindAll2(){
		List<testUser> findAllList = userMapper.findAll2();
		System.out.println(findAllList.size());
	}
	
	@Test
	public void testFindById(){
		testUser user = userMapper.findById(2);
		System.out.println(user.getUser_id());
		System.out.println(user.getUsername());
	}


	@Test
	public void testUpdate(){
		
		testUser user = new testUser(5, "钱6", "24");
		userMapper.update(user);
	}
	
	@Test
	public void testDelete(){
		userMapper.delete(4);
	}
	
	@Test
	public void testTest(){
		testUser user =userMapper.userMap(2);
		System.out.println(user.toString());
	}

}
