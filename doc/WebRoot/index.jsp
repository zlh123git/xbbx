<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String types = request.getSession().getAttribute("userType").toString();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>贝诺蒂法西餐店收费系统</title>
<link href="<%=path %>/images/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path %>/javascript/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	//setMenuHeight
	$('.menu').height($(window).height()-51-27-26-5);
	$('.sidebar').height($(window).height()-51-27-26-5);
	$('.page').height($(window).height()-51-27-26-5);
	$('.page iframe').width($(window).width()-15-168);
	
	//menu on and off
	$('.btn').click(function(){
		$('.menu').toggle();
		
		if($(".menu").is(":hidden")){
			$('.page iframe').width($(window).width()-15+5);
			}else{
			$('.page iframe').width($(window).width()-15-168);
				}
		});
		
	//
	$('.subMenu a[href="#"]').click(function(){
		$(this).next('ul').toggle();
		return false;
		});
})
function init(){

$.ajax({                      
        type: "POST",                                        
        url: "<%=path%>/FindNumServlet",              
        dataType: "text",                                    
        beforeSend: function(XMLHttpRequest) {                          
                         
        },                     
        success: function(msg) {    
           if(msg!=null&&msg!=''){
            var url="<%=path %>/goodskcmana2.action";
				    window.open (url,'newwindow','height=100,width=400,top=0,left=0,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no')
           }
           
        },                      
        error: function(xhr, msg, e) {                          
            alert("error");                      
        }                  
     });              

 
}
</script>


</head>

<body style="overflow-y:hidden">
<div id="wrap">
	<div id="header">
    <div class="logo fleft"><h1> <font color="white">贝诺蒂法西餐店收费系统</font></h1></div>
    	<a>修改密码</a>
    <a class="logout fright" href="<%=path %>/loginout.action"> </a>
    <div class="clear"></div>
    <div class="subnav">
    	<div class="subnavLeft fleft"></div>
        <div class="fleft"></div>
        <div class="subnavRight fright"></div>
    </div>
    </div><!--#header -->
    <div id="content">
    <div class="space"></div>
    <div class="menu fleft">
    	<ul>
        	<li class="subMenuTitle">菜单</li>
        	
        	<%if(types.equals("1")){ %>
            <li class="subMenu"><a href="#">系统设置</a>
            	<ul>
                	<li><a href="<%=path %>/ygmana.action" target="right">员工管理</a></li>
                   <li><a href="<%=path %>/ygadd.jsp" target="right">员工添加</a></li>
                   <li><a href="<%=path %>/gysmana.action" target="right">供应商管理</a></li>
                   <li><a href="<%=path %>/gysadd.jsp" target="right">供应商添加</a></li>
                   <li><a href="<%=path %>/shenpi.action" target="right">西餐采购审批</a></li>
                </ul>
            </li>
           <%}else if(types.equals("店员")){ %>
            <li class="subMenu"><a href="#">我的工作</a>
            	<ul>  
            		<li><a href="<%=path %>/goodsmana.action" target="right">西餐管理</a></li>
                   	<li><a href="<%=path %>/goodsadd.jsp" target="right">西餐添加</a></li>
	    			<li><a href="<%=path %>/custmana.action" target="right">会员管理</a></li>
                   	<li><a href="<%=path %>/custadd.jsp" target="right">会员添加</a></li>
                   	<li><a href="<%=path %>/cgmana.action" target="right">采购列表</a></li>
                   	<li><a href="<%=path %>/xsmana.action" target="right">销售列表</a></li>
        			<li><a href="<%=path %>/rtj.action" target="right">日营业管理</a></li>
                   	<li><a href="<%=path %>/tj.action" target="right">销售统计报表</a></li>
                   	<li><a href="<%=path %>/tj.action" target="right">销售排行报表</a></li>
                </ul>
            </li>
            <%} %>
        </ul>
    </div>
 
    <div class="sidebar fleft"><div class="btn"></div></div>
    <div class="page">
    <iframe width="100%" scrolling="auto" height="100%" frameborder="false" allowtransparency="true" style="border: medium none;" src="<%=path %>/rtj.action" id="rightMain" name="right"></iframe>
    </div>
    </div><!--#content -->
    <div class="clear"></div>
    <div id="footer">CopyRight &copy; 2016-2017 贝诺蒂法西餐店收费系统 </div><!--#footer -->
   
    
</div><!--#wrap -->
</body>
</html>
