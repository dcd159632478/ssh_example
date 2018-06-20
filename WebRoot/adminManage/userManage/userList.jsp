<%@page import="entity.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>图书管理</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/common.css">
	<link rel="stylesheet" type="text/css" href="css/list.css">
	<link href="font_style/lib/Hui-iconfont/1.0.8/iconfont.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/common.js"></script>
  </head>
  
  <body>
   	<div class="top_frame">
  		<span class="Hui-iconfont">&#xe626;
  		</span><span>用户管理</span>
  		<span class="Hui-iconfont">&#xe6d7;</span>
  		<span>用户列表</span>
  	</div>
   <div class="searchPanel">
   
   </div>
   <table>
   		<tr class="tab_title"><td style="text-align:left;"><input type="checkbox" id="sel" /></td>
   		<td>ID</td>
   		<td>用户名</td>
   		<td>密码</td>
   		<td>操作</td>
   		</tr>
   		<c:forEach items="${sessionScope.ulist}" var="user">
		<tr>
		<td><input type="checkbox" name="ele"/></td>
		<td>${user.id}</td>
		<td>${user.userName}</td>
		<td>${user.password}</td>
		<td>
		<a href="userAction3?id=${user.id}">修改</a>
		<a href="userAction4?id=${user.id}" onclick=" return confirm('确定删除吗?')">删除</a>
		<a href="userAction5?id=${user.id}">查看详情</a>
		</td>
		</tr>
		</c:forEach>
   </table>
  <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript">
	$(function(){
			$("#sel").click(
				function(){
					if(this.checked)
					 $("input:checkbox").attr("checked", "checked");  
					else
					 $("input:checkbox").removeAttr("checked");  
				}
			);
			
			$("tr").mouseover(
				function(){
					$(this).css("background-color","#e5e5e5"); 
				}			
			);
			$("tr").mouseout(				
				function(){
					$(this).css("background-color","#fff"); 
				}
			);
	});
	</script>
  </body>
</html>
