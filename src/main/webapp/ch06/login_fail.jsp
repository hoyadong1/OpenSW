<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="userinfo" class="myapp.UserBean" scope="request"></jsp:useBean>
<html>
<head>
<meta http-equiv="Content-Type" content = "text/html;UTF-8">
<title>Insert title here</title>
<style>body{text-align:center}</style>
</head>
<body>
<h2>로그인 실패</h2>
	사용자 아이디: <jsp:getProperty property="userid" name="userinfo"/><br>
	사용자 패스워드: <jsp:getProperty property="passwd" name="userinfo"/><br>
	에러코드 : <jsp:getProperty property="error" name="userinfo"/>
</body>
</html>