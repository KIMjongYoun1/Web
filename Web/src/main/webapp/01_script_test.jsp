<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WelCome</title>
</head>
<body>
	<h1>welcome to my page!!</h1>
	<hr>
	<!-- JSP DECLARATION TAG -->
	<%!
		int count = 10;
		String color = "magenta";
		String makeLower(String data){
			return data. toLowerCase();
		}
	%>
	<br>
	<table>
		<tr><td>Hello</td></tr>
	</table>
	<br>
	
	<!-- JSP SCRIPTLET -->
	<%
		out.println("This is my First JSP page<br>");
		out.println("Total count is" + count + "<br>");
		for(int i = 0; i < count; i++) {
			out.println("Current i is" + i + "<br>");
		}
	%>
	<br><br>
	
	<!-- JSP EXPRESSION -->
	<!-- 절대 세미콜론 넣지 마시오 -->
	<input type="text" value="My Name is Mr.owen"><br>
	<input type="text"  style="color : <%=color%>; font-size : 30px;" 
						 value="<%=makeLower("My Name is Mr.Owen")%>">
	
	
	
</body>
</html>