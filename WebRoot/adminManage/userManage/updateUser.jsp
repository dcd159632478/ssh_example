<%@page import="entity.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>图书管理系统--用户信息修改</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/common.css">
	<link href="font_style/lib/Hui-iconfont/1.0.8/iconfont.css" rel="stylesheet" type="text/css" />
  	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
  	
  </head>
  
  <body>
  	<div class="top_frame">
  		<span class="Hui-iconfont">&#xe626;</span><span>用户管理</span><span class="Hui-iconfont">&#xe6d7;</span><span>用户信息修改</span>
  	</div>
  	<div class="content_frame">
  		<form action="userAction6" method="post">
  			<input type="hidden" name="id" value="${user1.id}" class="input_style">
  			<input type="hidden" name="grade" value="${user1.grade}">
  			<table>
  				<tr>
  				<th>用户名称</th>
  				<td>
  				<input type="text" name="userName" value="${user1.userName}" class="input_style" />
  				</td>
  				</tr>
  				<tr>
  				<th>用户密码</th>
  				<td><input type="password" name="password" value="${user1.password}"  class="input_style" /></td>
  				</tr>
  				<tr>
  				<td colspan="2">
  				<input type="submit" value="修改" class="btn"/>
  				</td>
  				</tr>
  			</table>
  		</form>
  	</div>
  </body>
  	<script charset="gb2312" language="JavaScript" type="text/javascript" src="js/common.js"></script>
</html>
