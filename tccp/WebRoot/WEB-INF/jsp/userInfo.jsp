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
	<title>Personal Data</title>
	<link rel="stylesheet" type="text/css" href="css/personalData.css">
	<script type="text/javascript">
	function userLogin(){
		var form = document.forms[0];
		form.action = "<%=basePath%>user/updateUserInfo";
		form.method="post";
		form.submit();
	}
</script>
  </head>
  
  <body>
    <form name="userForm" method="post" action="<%=basePath%>user/updateUserInfo" >
		<div class = "personalHead">
			<img src="images/logo.png" alt = "Picture loding failure!" height="100" width="100" style="border-radius: 50px">
			<p><img src="<%=basePath%>upload/uploadImages/${User.user_id}${userInfo.image}" height="25" width="25">用户名：${userInfo.username}</p>
		</div>

		<div class = "personalData">
			<h2 style="margin-left:13%">个人信息：</h2>
			<ul>
				<li>级&nbsp;&nbsp;别：<input name="grade" id="grade" value="${userInfo.grade}" type="text" style="width:35px">
						专业:
						<select name="major" id="major" >	
							<option selected>${userInfo.major}</option><option>计科</option>
							<option>软件</option><option>网工</option><option>通工</option>
							<option>信息</option><option>安全</option><option>自动化</option>
							<option>信息对抗</option><option>物联网</option><option>集成电路</option>
							<option>微电子</option><option>测控</option><option>其他准也</option>
						</select>
				</li>
				<li>分&nbsp;&nbsp;组：${userInfo.groups}
				<input name="groups" type="radio" value="1" />大数据 
				<input name="groups" type="radio" value="2" />Web（前端、后台）
				<input name="groups" type="radio" value="3" />Android
				<input name="groups" type="radio" value="4" />嵌入式
				</li>
				<li>电&nbsp;&nbsp;话：<input name="phonenum" id="phonenum"type="text" value="${userInfo.phonenum}"></li>
				<li>邮&nbsp;&nbsp;箱：<input name="mail" id="email" type="text" value="${userInfo.mail}" onclick="return chkForm()" autocomplete="off"></li>
				<li>Q&nbsp;&nbsp;&nbsp;Q：<input name="qq" id="qq" type="text" value="${userInfo.qq}"onclick="checkEmail()"></li>
				<li>工作地点：<input name="workplace" id="workplace" type="text" value="${userInfo.workplace}"></li>
				<li>职&nbsp;&nbsp;位：<input name="job" id="job" type="text" value="${userInfo.job}"></li>
				<li>博客地址：<input name="blog" id="blog" type="text" value="${userInfo.blog}"></li>
				<li><strong>github：</strong><input name="github" type="text" value="${userInfo.github}" onclick="personalData.html
					" style="margin-left:14px;"></li>
				<li>人生格言：<br>
					<textarea name="motto" rows="5" cols="33" style="margin-top:10px">${userInfo.motto}</textarea>
				</li>
				<li>
					<button id="submit" type="submit">保存信息</button>
					<button id="modify"><a href="<%=basePath%>user/toUpdatePd">修改密码</a></button>
					<button id="modify"><a href="<%=basePath%>user/toUploadImage">上传头像</a></button>
					<button id="modify"><a href="<%=basePath%>user/toUserLogin">返回首页</a></button>
				</li>
			</ul>
		</div>
	</form>


	<script type="text/javascript" src="../js/personalData.js"></script>
  </body>
</html>
