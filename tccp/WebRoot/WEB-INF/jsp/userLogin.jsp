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
    <title>ThoughtCoding实验室登录</title>
	<link rel="stylesheet" type="text/css" href="css/login.css"/>
	<script type="text/javascript">
	function userLogin(){
		var form = document.forms[0];
		form.action = "<%=basePath%>user/userLogin";
		form.method="post";
		form.submit();
	}
</script>

  </head>
  
  <body class="login_page_background">

<div id="login_frame">
	<div class="TC"><span class="span">XUPT ThoughtCoding</span></div>
	<div class="login_form">
	<div class="logo_img" align="center">
		<img src="images/cow6.1.jpg" class="logo"/>
	</div>
	<form action="<%=basePath%>user/userLogin" name="userForm" method="post">
		<div class="user_name" align="center">
			<input class="name_text" type="text" name="username" placeholder="姓名"/>
		</div>
		<div class="password" align="center">
			<input class="password_text" type="password" name="password" placeholder="密码"/>
		</div>
		<div class="login green">
			<button class='login_button' type="submit">登录</button>
		</div>
	</form>
</div>

</div>
  <!--  
    <h1>用户登录</h1>
	<form action="" name="userForm">
		用户名：<input type="text" name="username"/>
		密码：   <input type="text" name="password"/>
		<input type="submit" value="登录" onclick="userLogin()"/>
	</form>-->
  </body>
  
</html>
