<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Login</title>
</head>
<%

%>
<body>
<%

	String userid = request.getParameter("userid");
	String passwd = request.getParameter("passwd");
	
	// userid : Apple, passwd : 111 인것만 인정

	if(userid.equals("Apple") && passwd.equals("111")){
		session.setAttribute("userid", userid);
		response.sendRedirect("13_session.jsp");
	}
	
	else {
%>
		<script>
			alert("Who are y");
			location.href = "13_session.jsp";
		</script>
<% 
	}
	
%>
		
</body>


</html>