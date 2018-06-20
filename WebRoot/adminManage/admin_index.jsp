<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="entity.User"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>图书管理系统--主页面</title>    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link href="font_style/lib/Hui-iconfont/1.0.8/iconfont.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
  	<div class="top_frame">
  		<span class="logo">程序员图书管理系统</span>
  		<span class="top_menu">
  			<ul>
  				<li><a href=""  target="right">管理员</a></li>
  				<li><a href="http://localhost:8080/librarySystem/adminManage/admin/updateAPassword.jsp" >修改密码</a></li>
  				<li><a href="userAction1" onclick=" return confirm('确定退出?')" >退出</a></li>
  			</ul>
  		</span>
  	</div>
  	<div class="content_main" >
	  	<div class="left_frame">
	  		<div class="left_frame_list">
				<li class="li_title"><a href="javascript:changeMenu(1)" class="a_style"><i class="Hui-iconfont">&#xe60d;</i>用户管理<i class="Hui-iconfont menu_dropdown-arrow" id="icon1">&#xe6d5;</i></a></li>
				<li id="second1">
					<ul>
						<li><a  href="userAction2" target="right">查看用户信息</a></li>
						<li><a  href="adminManage/userManage/addUser.jsp" target="right">添加用户信息</a></li>
					</ul>
				</li>
			</div>
			<div class="left_frame_list">
				<li class="li_title"><a href="javascript:changeMenu(2)"><i class="Hui-iconfont">&#xe720;</i>图书管理<i class="Hui-iconfont menu_dropdown-arrow" id="icon2">&#xe6d5;</i></a></li>
				<li id="second2">
					<ul>
						<li><a  href="adminManage/bookManage/addBook.jsp" target="right">添加图书信息</a></li>
						<li><a  href="servlet/AdminBookServlet?op=booklist" target="right">查看图书信息</a></li>
					</ul>
				</li>
			</div>
			<div class="left_frame_list">
				<li class="li_title"><a href="javascript:changeMenu(3)"><i class="Hui-iconfont">&#xe627;</i>借阅管理<i class="Hui-iconfont menu_dropdown-arrow" id="icon3">&#xe6d5;</i></a></li>
				<li id="second3">
					<ul>
						<li><a  href="servlet/AdminLendServlet?op=lendlist" target="right">借阅记录</a></li>
						<li><a  href="servlet/AdminLendServlet?op=unreturnlist" target="right">未还书籍</a></li>
					</ul>
				</li>
			</div>
			<div class="left_frame_list">
				<li class="li_title"><a href="javascript:changeMenu(4)"><i class="Hui-iconfont">&#xe63b;</i>信息管理<i class="Hui-iconfont menu_dropdown-arrow" id="icon4">&#xe6d5;</i></a></li>
				<li id="second4">
					<ul>
						<li><a  href="adminManage/messageManage/addMessage.jsp" target="right">添加信息</a></li>
						<li><a  href="servlet/MessageServlet?op=mlist"  target="right">查看信息</a></li>
					</ul>
				</li>
			</div>
			<div class="left_frame_list">
				<li class="li_title"><a href="javascript:changeMenu(5)"><i class="Hui-iconfont">&#xe70c;</i>反馈信息管理<i class="Hui-iconfont menu_dropdown-arrow" id="icon5">&#xe6d5;</i></a></li>
				<li id="second5">
					<ul>
						<li><a  href="servlet/FeedBackServlet?op=flist" target="right">查看反馈信息</a></li> 
					</ul>
				</li>
			</div>
			<div class="left_frame_list" >
				<li class="li_title"><a href="javascript:changeMenu(6)"><i class="Hui-iconfont">&#xe62e;</i>系统管理<i class="Hui-iconfont menu_dropdown-arrow" id="icon6">&#xe6d5;</i></a></li>
				<li id="second6">
					<ul>
						<li><a  href="#">系统日志</a></li>
						<li><a  href="#">系统设置</a></li>
						<li><a  href="#">系统参数</a></li>
					</ul>
				</li>
			</div>
	  	</div>
	  	<div class="right_frame">
		  	<iframe width="100%" class="content_container" height="100%" frameborder="0" scrolling="auto" name="right" src="adminManage/main/right.jsp">
     		</iframe>
	  	</div>
  	</div>
   </body> 
   <script type="text/javascript" src="js/main.js" charset="gb2312"></script>
   <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript">
	function confDel(id){
	  	if(confirm("确定要退出吗？")){
	 		location="servlet/AdminUserServlet?op=exit";
	  }
	}
	</script>
</html>
