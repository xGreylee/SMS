<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<style type="text/css">
div#header {
	height: 25%;
	width: 100%;
	background-image: url("img/bgd3.jpg")
}

div#menu {
	height: 75%;
	width: 18%;
	float: buttom;
	background-image: url("img/bgd3.jpg");
	float: left;
	padding: 15px 20px 15px
}

div#content {
	height: 75%;
	width: 82%;
	float: right;
	background-image: url("img/bgd3.jpg");
	padding: 15px 20px 15px
}

h1 {
	margin-bottom: 50;
	margin-top: 50px;
	font-size: 40px;
	font-family: PMingLiU
}

h2 {
	margin-bottom: 0;
	font-size: 24px;
}

ul {
	margin: 0;
	font-size: 20dx
}

li {
	list-style: none;
}
</style>
</head>

<body>


	<div id="header">
		<h1 align=center>学生信息管理系统</h1>
	</div>

	<div id="menu">
		<h2>管理员功能模块</h2>
		</br>
		<ul>
			<li>修改密码</li>
			<li></li>
			<li><a href="manageStu?method=toaddstu">添加学生信息</a></li>
			<li></li>
			<li><a href="manageStu?method=toselectstu">查询学生信息</a></li>
			<li></li>
		</ul>
	</div>

	<div id="content">
		<center>
			<s:if test="#request.allstu.size()!=0">
				<table border="1" width="500px" height="100px">
					<tr>
						<td align="center">学生学号</td>
						<td align="center">学生姓名</td>
					</tr>
					<s:iterator value="#request.allstu" id="student">
						<tr>
							<td height="40" align="center"><s:property value="sno" /></td>
							<td height="40" align="center"><s:property value="sname" /></td>
							<td height="40" align="center">
								<a href="manageStu?method=toupdatestu&&id=<s:property value="sno"/>">编辑</a>
								<td>
								<a href="manageStu?method=deletestu&&id=<s:property value="sno"/>">删除</a>
							</td>
						</tr>
					</s:iterator>
					
				</table>
			</s:if>
			<s:else>
				暂无数据！！
			</s:else>
		</center>
	</div>





</body>
</html>