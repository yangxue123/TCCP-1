package com.tccp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tccp.entity.testUser;
import com.tccp.service.UserService;
import com.tccp.entity.User;




@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	
	/**
	 * 跳转到用户登陆界面
	 * @param request
	 * @return
	 */
	@RequestMapping("/toUserLogin")
	public String toUserLogin(HttpServletRequest request){
//		String username = (String)request.getSession().getAttribute("username");
//		String user_id = (String)request.getSession().getAttribute("user_id");
//		String priority = (String)request.getSession().getAttribute("priority");
		User user = (User)request.getSession().getAttribute("User");
		if(user != null)
			return "/logined";
		else
			return "/userLogin";
	}
	
	/**
	 * 用户登录
	 * @param user
	 * @param request
	 * @return
	 */
	@RequestMapping("/userLogin")
	public String userLogin(User user, HttpServletRequest request){
		User user1 = userService.userLogin(user);
		if(user1 !=null){
			System.out.println(user1.getUser_id() + user1.getUsername() + user1.getPriority());
			request.getSession().setAttribute("User", user1);
//			request.getSession().setAttribute("username", user1.getUsername());
//			request.getSession().setAttribute("user_id", user1.getUser_id());
//			request.getSession().setAttribute("priority", user1.getPriority());
			request.getSession().setMaxInactiveInterval(900);
			
			
			return "/logined";
		}else{
			return "/error";
		}
	}
	
	/**
	 * 用户登出
	 * @param request
	 * @return 
	 */
	@RequestMapping("/userLoginOut")
	public String userLoginOut(HttpServletRequest request){
//			request.getSession().removeAttribute("username");
//			request.getSession().removeAttribute("user_id");
//			request.getSession().removeAttribute("priority");
			request.getSession().removeAttribute("User");
		//	User user = (User)request.getSession().getAttribute("User");
		//	System.out.println("失效测试:" + user.getUser_id() + user.getUsername() + user.getPriority());
			return "redirect:/user/toUserLogin";

	}
	
	//测试方法*************************************************************************
	/**
	 * 获取所有用户列表
	 * @param request
	 * @return
	 */
	@RequestMapping("/getAllUser")
	public String getAllUser(HttpServletRequest request){
		
		List<testUser> findAll = userService.findAll();
		
		request.setAttribute("userList", findAll);
		return "/allUser";
	}
	
	
	/**
	 * 测试获取所有用户列表
	 * @param request
	 * @return String
	 * @throws IOException 
	 */
	@RequestMapping("/getAllUserTest")
	public String getAllUserTest(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		//从数据库中取出所有用户信息，返回值为一个User对象集合，每个User对象包含username与age两个参数
		List<testUser> findAll = userService.findAll();
		
		//创建JSONArray实例
		JSONArray jsonArray = new JSONArray();
		//for each循环取出每个User对象
		for(testUser user: findAll)
		{
			//JSONObject是一个{}包裹起来的一个对象(Object)，
			//JSONArray则是[]包裹起来的一个数组(Array)
			//此处为对象，所以用得到JSONObject
			 JSONObject jo = new JSONObject();
             jo.put("username", user.getUsername());
             jo.put("age", user.getAge());
             jsonArray.add(jo);
        }
		try {
			 //后台输出测试
             System.out.println(jsonArray.toString());
             //设置字符集
             response.setCharacterEncoding("UTF-8");
             //页面输出
             response.getWriter().println("JSON输出形式：");
             response.getWriter().write(jsonArray.toString());
             
         } catch (IOException e) {
             e.printStackTrace();
         }
		 return null;
	}
	
	/**
	 * 跳转到添加用户界面
	 * @param request
	 * @return
	 */
	@RequestMapping("/toAddUser")
	public String toAddUser(HttpServletRequest request){
		
		return "/addUser";
	}
	/**
	 * 添加用户并重定向
	 * @param user
	 * @param request
	 * @return
	 */
	@RequestMapping("/addUser")
	public String addUser(testUser user,HttpServletRequest request){
		userService.add(user);
		return "redirect:/user/getAllUser";
	}
	
	/**
	 *编辑用户
	 * @param user
	 * @param request
	 * @return
	 */
	@RequestMapping("/updateUser")
	public String updateUser(testUser user,HttpServletRequest request){
		
		
		if(userService.update(user)){
			user = userService.findById(user.getUser_id());
			request.setAttribute("user", user);
			return "redirect:/user/getAllUser";
		}else{
			return "/error";
		}
	}
	/**
	 * 根据id查询单个用户
	 * @param user_id
	 * @param request
	 * @return
	 */
	@RequestMapping("/getUser")
	public String getUser(int user_id,HttpServletRequest request){
		
		request.setAttribute("user", userService.findById(user_id));
		return "/editUser";
	}
	/**
	 * 删除用户
	 * @param user_id
	 * @param request
	 * @param response
	 */
	@RequestMapping("/delUser")
	public void delUser(int user_id,HttpServletRequest request,HttpServletResponse response){
		String result = "{\"result\":\"error\"}";
		
		if(userService.delete(user_id)){
			result = "{\"result\":\"success\"}";
		}
		
		response.setContentType("application/json");
		
		try {
			PrintWriter out = response.getWriter();
			out.write(result);
		} catch (IOException e) {
			e.printStackTrace();
		}

	}
	//********************************************************************************
}
