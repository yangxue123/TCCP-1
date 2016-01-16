<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'testImage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <link rel="stylesheet" href="<c:url value="/css/jquery.Jcrop.css"/>" type="text/css"></link>
    <script type="text/javascript" src="<c:url value="/js/jquery-1.8.3.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/js/jquery.Jcrop.js"/>"></script>
  	<script type="text/javascript">
      //定义一个全局api，这样操作起来比较灵活
        var api = null;
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.readAsDataURL(input.files[0]);
                reader.onload = function (e) {
                    $('#cutimg').removeAttr('src');
                    $('#cutimg').attr('src', e.target.result);
                    api = $.Jcrop('#cutimg', {
                        setSelect: [ 20, 20, 200, 200 ],
                        aspectRatio: 1,
                        onSelect: updateCoords
                    });
                };
                if (api != undefined) {
                    api.destroy();
                }
            }
            function updateCoords(obj) {
                $("#x").val(obj.x);
                $("#y").val(obj.y);
                $("#w").val(obj.w);
                $("#h").val(obj.h);
            };
        }
    </script>
  </head>
  
  <body>
  	<form name="form" action="<%=basePath%>other/uploadHeadImage" class="form-horizontal"  method="post" enctype="multipart/form-data">
	    <div class="modal-body text-center">
    	    <div class="zxx_main_con">
        	    <div class="zxx_test_list">
            	    <input class="photo-file" type="file" name="imgFile" id="fcupload" onchange="readURL(this);"/>
                	<img alt="" src="" id="cutimg"/>
                	<input type="hidden" id="x" name="x"/>
                	 <input type="hidden" id="y" name="y"/>
               		 <input type="hidden" id="w" name="w"/>
               		 <input type="hidden" id="h" name="h"/>
        	   	 </div>
       		 </div>
   		 </div>
      <div class="modal-footer">
        <button id="submit" onclick="">上传</button>
    </div>
</form>
</html>
