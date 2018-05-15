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
<script type="text/javascript" src="<%=path %>/javascript/rl.js"></script>
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
		function search(){
		 document.memberForm.submit();

	}
</script>
<style type="text/css">
body {
	background:#FFF
}
</style>
</head>

<body>
<form id="memberForm" name="memberForm" action="<%=path %>/cgtj.action">
<div id="contentWrap">
	<!--表格控件 -->
  <div id="widget table-widget">
    <div class="pageTitle">进货统计</div>
    <div class="pageColumn">
      <div class="pageButton"><table>
         <thead>
          <th width="">开始时间</th>
          <th width=""><input type="text" id="btimes" name="btimes" onclick="SelectDate(this.name)"/></th>
          <th width="">结束时间</th>
          <th width=""><input type="text" id="etimes" name="etimes" onclick="SelectDate(this.name)"/></th>
            </thead>
             <thead>
          <th colspan="4"><input type="button" value="统计" onclick="search()"/> </th>
            </thead>
      </table></div>
      <table>
        <thead>
            <th width="">西餐名</th>
             <th width="">西餐号</th>
              <th width="">进价</th>
              <th width="">总数量</th>
            </thead>
        <tbody>
        <%
			for(int i = 0;i<list.size();i++){
				Cgmore bean = (Cgmore)list.get(i);
			%>
          <tr>
                  <td><%=ValueBean.getnamesByGId(bean.getGid()) %></td>
                  <td><%=ValueBean.getnoByGId(bean.getGid()) %></td>
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
