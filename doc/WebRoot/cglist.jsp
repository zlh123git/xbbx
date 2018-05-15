<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.util.*"%>
<%@ page import="com.model.*"%>
<%@ page import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
			
	Pagination p = (Pagination)request.getAttribute("page");
	int totleNum = p.getTotle();
	int totlePage = p.getTotlePage();
	int currentPage = p.getIndex();
	List list = p.getData();
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
	            action = "<%=path %>/cgmana.action?index=1";
	            submit();
	        }
		}
        
        
		function back()
		{
		    var pageNo= '<%=currentPage%>';
		    if(pageNo<2){
		 	   alert("当前已经是第一页");
		 	   return;
		    }else{
		 	   pageNo=Number(pageNo)-1;
		    }
				 with (document.getElementById("memberForm")) {
			            method = "post";
			             action = "<%=path %>/cgmana.action?index="+pageNo;
			            submit();
			        }
		}
        
		function next()
		{
			   var pageNo= '<%=currentPage%>';
			   var totlePage='<%=totlePage%>';
		    if(pageNo==totlePage){
		 	   alert("当前已经是最后一页");
		 	   return;
		    }else{
		 	   pageNo=Number(pageNo)+1;
		    }  
		    with (document.getElementById("memberForm")) {
		        method = "post";
		        action = "<%=path %>/cgmana.action?index="+pageNo;
		        submit();
		    }
		}
        
        function last()
		{ 
		   var totlePage='<%=totlePage%>';
			with (document.getElementById("memberForm")) {
	            method = "post";
	            action = "<%=path %>/cgmana.action?index="+totlePage;
	            submit();
	        }
		}
		
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
		function view(id){
			window.location.href="<%=path %>/cgmoremana.action?cgid="+id;
		}
		function cgadd(){
			window.location.href="<%=path %>/cgaddbf.action";
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
    <div class="pageTitle">我的采购</div>
    <div class="pageColumn">
      <div class="pageButton"><a href="#" onclick="cgadd()">新增采购</a>  </div>
      <table>
        <thead>
          <th width="">id</th>
          <th width="">订单号</th>
          <th width="">供应商号</th>
           <th width="">供应商名</th>
            <th width="">总价格</th>
              <th width="">时间</th>
              <th width="">审批状态</th>
              <th width="">西餐详细</th>
            </thead>
        <tbody>
        <%
			for(int i = 0;i<list.size();i++){
				Cg bean = (Cg)list.get(i);
			%>
          <tr>
            <td><%=bean.getId() %></td>
             <td><%=bean.getNo() %></td>
             <td><%=bean.getGysno() %></td>
             <td><%=bean.getGysnames() %></td>
             <td><%=bean.getPrice() %></td>
               <td><%=bean.getTimes() %></td>
             <td><%=bean.getStatus() %></td>
               <% if("审批成功".equals(bean.getStatus())) {%>
              <td> <a onclick="view(<%=bean.getId()%>)"><img src="images/icon/edit2.png" width="16" height="16" /></a>
          		<%} else{ %>
          		<td><img src="images/icon/wait.gif" width="16" height="16" /></td>
          		<%} %>
          </tr>
          
          <%} %>
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
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前第<%=currentPage %>页/共<%=totlePage %>页&nbsp;&nbsp;共<%=totleNum %>条记录&nbsp;&nbsp;
           <A class=cmdField 
            href="#" onclick="frist()">首页</A>
             <A class=cmdField 
             href="#" onclick="back()">上一页</A>
             <A class=cmdField 
             href="#" onclick="next()">下一页</A>
             <A class=cmdField 
             href="#" onclick="last()">尾页</A>
    </div>
  </div><!-- #widget -->
</div>

</form>
</body>
</html>