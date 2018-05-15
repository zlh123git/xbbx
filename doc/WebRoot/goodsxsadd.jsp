<%@ page language="java" import="java.util.*,com.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String id = request.getParameter("id").toString();
String cgid = request.getParameter("cgid").toString();
String zk=ValueBean.getZkById(cgid);
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
 <form method="post" action="<%=path %>/goodsxsadd.action" method="post" name="ThisForm">
  <input id="id" name="id" type="hidden" value="<%=id %>">
    <input id="cgid" name="cgid" type="hidden" value="<%=cgid %>">
     <input id="price" name="price" type="hidden" value="<%=zk %>">
<div id="contentWrap">
	<!--表格控件 -->
  <div id="widget table-widget">
    <div class="pageTitle">西餐销售添加</div>
    <div class="pageColumn">
      <div class="pageButton"></div>
      <table>
         <thead>
          <th width="">数量</th>
          <th width=""><input type="text" id="kc" name="kc"/></th>
            </thead>
            <thead>
          <th width="">折扣</th>
          <th width="">
          <%if(zk.equals("0")){ %>
           您没有折扣
          <%}else{ %>
           您的折扣为 :<%=zk %>
          <%} %>
         
          </th>
            </thead>
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