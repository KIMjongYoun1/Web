<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax - Test</title>
</head>
<body>
	<h1>Get Request</h1>
	<button type="button" onclick="sendRequest(1)">send(GET)</button>
	<p id="gettext"></p>

	<h1>Post Request</h1>
	<button type="button" onclick="sendRequest(2)">send(POST)</button>
	<p id="posttext"></p>
	<hr>

	<h3>Request Status</h3>
	<p id="statustext"></p>

</body>
<script>
	function sendRequest(typ) {
		console.log("request type : " + typ);

		// 1.XMLHttpRequest 생성
		var hr = new XMLHttpRequest();

		// 2. request 방식에 따라 jsp 호출

		if (typ == 1) {
			hr.open("GET", "10_ajax_Response.jsp?city=Paris&zipcd=34576", true);
			hr.send();
			document.getElementById("statustext").innerHTML = "GET 잠시 기다려주세요";
		}

		else {
			hr.open("POST", "10_ajax_Response.jsp", true);
			hr.setRequestHeader("Content-Type",
					"application/x-www-form-urlencoded");
			hr.send("city=Paris&zipcd=34576");
			document.getElementById("statustext").innerHTML = "POST 잠시 기다려주세요";
		}

		// 3. 데이터가 도착하면 할 일을 기술
		hr.onreadystatechange = function() {
			console.log("readystate wa changed :" + hr.readyState + "-"
					+ hr.status);

			// 데이터 도착시
			if (hr.readyState == XMLHttpRequest.DONE && hr.status == 200) {
				console.log("hr");
				console.log(hr);

				if (typ == 1) {
					console.log("type=1");
					document.getElementById("gettext").innerHTML = hr.responseText;
				}

				else {
					document.getElementById("posttext").innerHTML = hr.responseText;
				}
				
				document.getElementById("statustext").innerHTML = "DONE!!";
			}

		}
	}
</script>

</html>