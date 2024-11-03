<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scriot Example2</title>
</head>
<body>

	<h1>Scripting Tag - Current Time</h1>
	<h2>Java가 제공하는 기본 클래스 이용해 보기</h2>
	<hr>
	
	<%	// 직접p안에 넣어도 됨
		java.util.Date dat = new java.util.Date();
	%>
	
	<p>Today : <%=dat%></p>
	<p>Today : <%=dat.toString() %></p>
	
	
</body>
</html>