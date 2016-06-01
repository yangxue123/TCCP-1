<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
	<title>ToughtCoding实验室管理系统</title>
	<link type="text/css" rel="stylesheet" href="css/style.css" />
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/menu.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  
<div class="top"></div>
<div id="header">
      <div class="logo_icon">
        <img src="images/icon.png" alt="icon" class="icon">
      </div>
	<div class="logo">ThoughtCoding实验室后台管理系统</div>
	<div class="navigation">
		<ul>
		 	<li>欢迎您超级管理员！</li>
			<li><a href="<%=basePath%>user/getUserInformation">${User.username}</a></li>
			<li><a href="<%=basePath%>user/getUserInformation">修改密码</a></li>
			<li><a href="">设置</a></li>
			<li><a href="<%=basePath%>/user/userLoginOut">退出</a></li>
		</ul>
	</div>
</div>
<div id="content">
<div class="leftmenu"></div>
	<div class="left_menu">
        <ul id="nav_dot">
      <li>
          <h4 class="M1"><span></span>系统公告</h4>
          <div class="list-item none">
            <a href=''>系统公告1</a>
            <a href=''>系统公告2</a>
            <a href=''>系统公告3</a>
            <a href=''>系统公告4</a>
          </div>
        </li>
        <li>
          <h4 class="M2"><span></span>工单处理</h4>
          <div class="list-item none">
            <a href=''>工单处理1</a>
            <a href=''>工单处理2</a>
            <a href=''>工单处理3</a>
            <a href=''>工单处理4</a>
            <a href=''>工单处理5</a>          
           </div>
        </li>
        <li>
          <h4 class="M3"><span></span>基础教学</h4>
          <div class="list-item none">
            <a href=''>基础教学1</a>
            <a href=''>基础教学2</a>
            <a href=''>基础教学3</a>
          </div>
        </li>
        <li>
          <h4 class="M4"><span></span>评论管理</h4>
          <div class="list-item none">
            <a href=''>评论管理1</a>
            <a href=''>评论管理2</a>
            <a href=''>评论管理3</a>
          </div>
        </li>
        <li>
          <h4 class="M5"><span></span>调研问卷</h4>
          <div class="list-item none">
            <a href=''>调研问卷1</a>
            <a href=''>调研问卷2</a>
            <a href=''>调研问卷3</a>
          </div>
        </li>
        <li>
          <h4  class="M6"><span></span>数据统计</h4>
          <div class="list-item none">
            <a href=''>数据统计1</a>
            <a href=''>数据统计2</a>
            <a href=''>数据统计3</a>
          </div>
        </li>
        <li>
          <h4  class="M7"><span></span>奖励管理</h4>
          <div class="list-item none">
            <a href=''>奖励管理1</a>
            <a href=''>奖励管理2</a>
            <a href=''>奖励管理3</a>
          </div>
        </li>
        <li>
          <h4   class="M8"><span></span>字典维护</h4>
          <div class="list-item none">
            <a href=''>字典维护1</a>
            <a href=''>字典维护2</a>
            <a href=''>字典维护3</a>
            <a href=''>字典维护4</a>
            <a href=''>字典维护5</a>
            <a href=''>字典维护6</a>
            <a href=''>字典维护7</a>
            <a href=''>字典维护8</a>
            <a href=''>字典维护9</a>
            <a href=''>字典维护4</a>
            <a href=''>字典维护5</a>
            <a href=''>字典维护6</a>
            <a href=''>字典维护7</a>
            <a href=''>字典维护8</a>
            <a href=''>字典维护9</a>
          </div>
        </li>
        <li>
          <h4  class="M9"><span></span>内容管理</h4>
          <div class="list-item none">
            <a href=''>内容管理1</a>
            <a href=''>内容管理2</a>
            <a href=''>内容管理3</a>
          </div>
        </li>
        <li>
          <h4   class="M10"><span></span>系统管理</h4>
          <div class="list-item none">
            <a href=''>系统管理1</a>
            <a href=''>系统管理2</a>
            <a href=''>系统管理3</a>
          </div>

        </li>
  </ul>

    </div>
		<div class="m-right">
			<!--<div class="right-nav">
					<ul>
							<li><img src="images/home.png"></li>
								<li style="margin-left:25px;">您当前的位置：</li>
								<li><a href="#">系统公告</a></li>
								<li>></li>
								<li><a href="#">最新公告</a></li>
						</ul>
			</div>!-->
			<div class="main">
				
			</div>
		</div>
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright©  2015 版权所有 ThoughtCodeing实验室 来源:<a href="" target="_blank">ThoughtCoding</a></p></div>
<script>navList(12);</script>
  <!-- 
  	欢迎您！
  	<br>
  	用户名：${User.username} 用户ID：${User.user_id} 用户类型：${User.priority}
  	<br>
    <hr> 
    <a href="<%=basePath%>/user/userLoginOut">登出</a> -->

</html>
