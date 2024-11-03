<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scriot Example2</title>
</head>
<body>

	<h1>Script Tag - Table Creation</h1>
	<hr>
	<!-- Hand job -->
	<table border="1">
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
			<td>4</td>
			<td>5</td>
		</tr>
		<tr>
			<td>6</td>
			<td>7</td>
			<td>8</td>
			<td>9</td>
			<td>10</td>
		</tr>
		<tr>
			<td>11</td>
			<td>12</td>
			<td>13</td>
			<td>14</td>
			<td>15</td>
		</tr>
	</table>
	<br>
	<br>
	<!-- Using Jsp -->
	<table border="1">
		<%
		final int ROWS = 1000;
		int COLS = 17;
		for (int i = 0; i < ROWS; i++) {
		%>
		<tr>
			<%
			for (int j = 0; j < COLS; j++) {
			%>
			<td><%=(i * COLS+ j + 1)%></td>
			<%
			}
			%>
		</tr>
		<%
		}
		%>
	</table>
	<br>
	<br>

</body>
</html>