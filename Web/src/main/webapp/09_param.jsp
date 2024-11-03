<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag - Param</title>
</head>
<body>
	
</body>
	<h1>Parameter Action Tag</h1>
	<h3>&lt;jsp:param&lt;</h3>
	<hr>
	<jsp:forward page="09_param_process.jsp">
        <jsp:param name="id" value="admin" />
        <jsp:param name="name" value="oneandonly" />
    </jsp:forward>
</html>