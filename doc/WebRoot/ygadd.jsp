<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="<%=path %>/images/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path %>/javascript/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('tbody tr:odd').addClass("trLight");
		
		$(".select-all").click(function(){
			if($(this).attr("checked")){
				$(".checkBox input[type=checkbox]").each(function(){
					$(this).attr("checked", true);  
					});
				}else{
					$(".checkBox input[type=checkbox]").each(function(){
					$(this).attr("checked", false);  
					});
				}
			});
		
		})
		
		function add(){
		if(document.ThisForm.no.value=="")
	 {
	 	alert("工号不能为空");
		document.ThisForm.no.focus();
		return false;
	 }
	 if(document.ThisForm.password.value=="")
	 {
	 	alert("密码不能为空");
		document.ThisForm.password.focus();
		return false;
	 }
	 document.ThisForm.submit();
		
		
		}
</script>
<style type="text/css">
body {
	background:#FFF
}
</style>
</head>

<body>
 <form method="post" action="<%=path %>/ygadd.action" method="post" name="ThisForm">
<div id="contentWrap">
	<!--表格控件 -->
  <div id="widget table-widget">
    <div class="pageTitle">员工添加</div>
    <div class="pageColumn">
      <div class="pageButton"></div>
      <table>
         <thead>
          <th width="">工号</th>
          <th width=""><input type="text" id="no" name="no"/></th>
            </thead>
             <thead>
          <th width="">密码</th>
          <th width=""><input type="password" id="password" name="password"/></th>
            </thead>
             <thead>
          <th width="">姓名</th>
          <th width=""><input type="text" id="realname" name="realname"/></th>
            </thead>
             <thead>
          <th width="">电话</th>
          <th width=""><input type="text" id="tel" name="tel"/></th>
            </thead>
            <thead>
          <th width="">地址</th>
          <th width=""><input type="text" id="address" name="address"/></th>
            </thead>
             <thead>
          <th colspan="2"><input type="button" onclick="add()" value="确定"/> </th>
            </thead>
      </table>
    </div>
  </div><!-- #widget -->
</div>

</form>
</body>
</html>
