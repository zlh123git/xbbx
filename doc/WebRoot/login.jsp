<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
	Object o = request.getAttribute("ok");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta http-equiv="Pragma" content="no-cache"> 
<meta http-equiv="Cache-Control" content="no-cache"> 
<meta http-equiv="Expires" content="0"> 
<title>贝诺蒂法西餐店收费系统</title> 
<link href="<%=path %>/css/login.css" type="text/css" rel="stylesheet"> 
<script type="text/javascript">
function login(){

  if(document.ThisForm.username.value=="")
	 {
	 	alert("请输入用户名");
		document.ThisForm.username.focus();
		return false;
	 }
	 if(document.ThisForm.password.value=="")
	 {
	 	alert("请输入密码");
		document.ThisForm.password.focus();
		return false;
	 }
	 document.ThisForm.submit();

}
 function init(){
		 	var o = '<%=o%>';
		 	if(o=='ok'){
		 		alert("用户名或密码错误");
		 	}
		 }
</script>

</head> 
<body> 

<div class="login">
    <div class="message">贝诺蒂法西餐店收费系统-管理登录</div>
    <div id="darkbannerwrap"></div>
    
    <form method="post" action="<%=path %>/login.action" method="post" name="ThisForm">
		<input name="username" id="username" placeholder="用户名" required="" type="text">
		<hr class="hr15">
		<input name="password" id="password" placeholder="密码" required="" type="password">
		<hr class="hr15">
		<input value="登录" style="width:100%;" type="button" onclick="login()">
		<hr class="hr20">
	</form>

	
</div>

<div class="copyright"></div>

</body>
</html>