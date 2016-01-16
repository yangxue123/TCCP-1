<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<title>ModifyPassword</title>
	<link rel="stylesheet" type="text/css" href="../css/modifyPassword.css">
  </head>
  
  <body>
    <h2>修改密码：</h2>
	<form method="post" action="<%=basePath%>user/updatePd">
		<ul>
			<li>输入原密码：${password}<input name="password0" id="password0" type="password"></li>
			<li>输入新密码：<input name="password" id="password1" type="password"></li>
			<li>确认新密码：<input name="password2" id="password2" type="password"></li>
			<li><input name="submit" id="submit" type="submit" value="确认" onclick="is_same() "></li>
		</ul>
	</form>

	<script type="text/javascript">
	function is_same(){
		var password1 = document.getElementById('password1');
		var password2 = document.getElementById('password2');
		if(password1.value == password2.value) {
			return true;
		}
		else {
			alert("两次输入密码不一致，请重新输入！")
		}
	}
	</script>
  </body>
</html>
