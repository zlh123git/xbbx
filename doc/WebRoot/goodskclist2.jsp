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
		
		
		  function frist()
		{
		 	with (document.getElementById("memberForm")) {
	            method = "post";
	            action = "<%=path %>/goodskcmana.action?index=1";
	            submit();
	        }
		}
        
        
		
	
		function modify(id){
			window.location.href="<%=path %>/goodsmodifybefore.action?id="+id;
		}
		function del(id){
			window.location.href="<%=path %>/goodsdel.action?id="+id;
		}
</script>
<style type="text/css">
body {
	background:#FFF
}
</style>
</head>

<body>
<form id="memberForm" name="memberForm" action="<%=path %>/goodskcmana.action">
<div id="contentWrap">
	<!--表格控件 -->
  <div id="widget table-widget">
    <div class="pageTitle">库存</div>
    <div class="pageColumn">
      <div class="pageButton"></div>
      <table>
        <thead>
          <th width="">id</th>
           <th width="">西餐号</th>
          <th width="">西餐名</th>
           <th width="">西餐规格</th>
            <th width="">西餐类型</th>
            <th width="">价格</th>
              <th width="">库存</th>
              <th width="">描述</th>
               <th width="">提示</th>
            </thead>
        <tbody>
       <%
			for(int i = 0;i<list.size();i++){
				Goods bean = (Goods)list.get(i);
				int kc=bean.getKc();
				if(kc<=10){
				
			%>
          <tr bgcolor="red">
            <td><%=bean.getId() %></td>
            <td><%=bean.getNo() %></td>
            <td><%=bean.getNames() %></td>
              <td><%=bean.getZz() %></td>
                <td><%=bean.getCbs() %></td>
             <td><%=bean.getPrice() %></td>
              <td><%=bean.getKc() %></td>
               <td><%=bean.getDescs() %></td>
                 <td>需要采购</td>
          </tr>
          
          <%}else if(kc>=100){ %>
          <tr bgcolor="yellow">
            <td><%=bean.getId() %></td>
            <td><%=bean.getNo() %></td>
            <td><%=bean.getNames() %></td>
              <td><%=bean.getZz() %></td>
                <td><%=bean.getCbs() %></td>
             <td><%=bean.getPrice() %></td>
              <td><%=bean.getKc() %></td>
               <td><%=bean.getDescs() %></td>
               <td>库存积压</td>
          </tr>
           <%}else { %>
          <tr bgcolor="green">
            <td><%=bean.getId() %></td>
            <td><%=bean.getNo() %></td>
            <td><%=bean.getNames() %></td>
              <td><%=bean.getZz() %></td>
                <td><%=bean.getCbs() %></td>
             <td><%=bean.getPrice() %></td>
              <td><%=bean.getKc() %></td>
               <td><%=bean.getDescs() %></td>
               <td></td>
          </tr>
          <%}} %>
        </tbody>
      </table>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
  </div><!-- #widget -->
</div>

</form>
</body>
</html>
