package com.tccp.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
/**
 * Spring框架测试
 * @author TCCP项目组
 **/
public class SpringTest {

	 public static void main(String[] args) {
		 ApplicationContext ctx = new ClassPathXmlApplicationContext("config/spring-common.xml");
		 Object userMapper = ctx.getBean("userMapper");
		 System.out.println(userMapper);
	 }
}
