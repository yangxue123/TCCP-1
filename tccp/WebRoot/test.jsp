<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>测试首页</title>
	
  </head>
  
  <body>
   	<a href="<%=basePath%>user/getAllUser">首页，点击进入tccp测试页</a>
   	<br>
   	<hr>
   	<a href="<%=basePath%>user/getAllUserTest">测试JSON</a>
   	<hr>
   	<a href="<%=basePath%>user/toUserLogin">测试登录</a>
  </body>
</html>
