<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    
	<script type="text/javascript">
	function userLogin(){
		var form = document.forms[0];
		form.action = "<%=basePath%>user/userLogin";
		form.method="post";
		form.submit();
	}
</script>

  </head>
  
  <body>
    <h1>用户登录</h1>
	<form action="" name="userForm">
		用户名：<input type="text" name="username"/>
		密码：   <input type="text" name="password"/>
		<input type="submit" value="登录" onclick="userLogin()"/>
	</form>
  </body>
  
</html>
