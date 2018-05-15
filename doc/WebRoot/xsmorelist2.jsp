<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.util.*"%>
<%@ page import="com.model.*"%>
<%@ page import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
			
	List list  = (ArrayList)request.getAttribute("page");
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
		
		
		function search2()
		{
			alert(2); 
			with (document.getElementById("memberForm")) {
	            method = "post";
	            action = "<%=path %>/cgmana.action?index=1";
	            submit();
	        }
		}
	
		function modify(id){
			window.location.href="<%=path %>/goodscgadd.jsp?id="+id;
		}
</script>
<style type="text/css">
body {
	background:#FFF
}
</style>
</head>

<body>
<form id="memberForm">
<div id="contentWrap">
	<!--表格控件 -->
  <div id="widget table-widget">
    <div class="pageTitle">客户购买情况</div>
    <div class="pageColumn">
      <div class="pageButton"></div>
      <table>
        <thead>
          <th width="">id</th>
           <th width="">西餐号</th>
            <th width="">西餐名</th>
            <th width="">购买价格</th>
              <th width="">购买数量</th>
            </thead>
        <tbody>
        <%
			for(int i = 0;i<list.size();i++){
				Xsmore bean = (Xsmore)list.get(i);
			%>
          <tr>
            <td><%=bean.getId() %></td>
               <td><%=bean.getNo() %></td>
                  <td><%=bean.getNames() %></td>
             <td><%=bean.getPrice() %></td>
               <td><%=bean.getSl() %></td>
          </tr>
          <%} %>
        </tbody>
      </table>
       
    </div>
  </div><!-- #widget -->
</div>

</form>
</body>
</html>
