<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.util.*"%>
<%@ page import="com.model.*"%>
<%@ page import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
			
	List list = (ArrayList)request.getAttribute("list");
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
</script>
<style type="text/css">
body {
	background:#FFF
}
</style>
</head>

<body>
 <form method="post" action="<%=path %>/xsadd.action" method="post" name="ThisForm">
<div id="contentWrap">
	<!--表格控件 -->
  <div id="widget table-widget">
    <div class="pageTitle">销售添加</div>
    <div class="pageColumn">
      <div class="pageButton"></div>
      <table>
         <thead>
          <th width="">客户</th>
          <th width="">
          <select id="custid" name="custid">
           <%
			for(int i = 0;i<list.size();i++){
				Cust bean = (Cust)list.get(i);
			%>
          <option value="<%=bean.getId() %>"><%=bean.getRealname() %></option>
          <%} %>
          </select>
          
          </th>
            </thead>
            <thead>
          <th width="">价格</th>
          <th width=""><input type="text" id="price" name="price"/></th>
            </thead>
            <thead>
             <thead>
          <th colspan="2"><input type="submit" value="确定"/> </th>
            </thead>
      </table>
    </div>
  </div><!-- #widget -->
</div>

</form>
</body>
</html>
