<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.WeatherBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title>The Weather</title>
</head>
<body>

	<div class=showContainer>
		<jsp:include page="index.jsp"></jsp:include>

		<div class=result>
			<%
			WeatherBean wBean = (WeatherBean) request.getAttribute("wBean");

			out.print("<p class=weatherResult>" + wBean.getDate() + "</p>");
			out.print("<p class=weatherResult> The sky in " + wBean.getCityStr() + " is now " + wBean.getCloudsStr() + "</p>");
			out.print("<p class=weatherResult> Temperature in " + wBean.getCityStr() + " is " + wBean.getTempStr() + "° Celsius</p><br>");
			%>
		
		</div>
		
	</div>
</body>
</html>