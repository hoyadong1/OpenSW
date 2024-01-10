<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="myapp.LoginManager" %>
<!DOCTYPE html>

<jsp:useBean id="user" class="myapp.UserBean" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>

<html>
<head>
<meta http-equiv="Content-Type" content = "text/html;UTF-8">
<title>Insert title here</title>
<style>body{text-align:center}</style>
</head>
<body>
	<h2>로그인 예제</h2>
	<hr>
	<%
	LoginManager loginManager = new LoginManager();
	if(loginManager.authenticate(user)) out.println("Login Success!");
	else out.println("Login Fail!!!");
	%>
	<hr>
	사용자 아이디: <jsp:getProperty property="userid" name="user"/><br>
	사용자 패스워드: <jsp:getProperty property="passwd" name="user"/><br>
	사용자 이메일 : <jsp:getProperty property="email" name="user"/>
</body>
</html>