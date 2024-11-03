<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ page info="Date Class를 이용한 현재 날짜 출력" %>
<%@ page import="java.util.Date" %>
<%@ page errorPage="06_error_page.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>directive example</title>
</head>
<body>

	<h1>Directive example</h1>
	<hr>
	<p>Today : <%=new Date() %></p>
	<%
		//int i = 10 / 0;
		/* String s = "I am a boy";
		char p = s.charAt(100); */
	%>

</body>
</html>