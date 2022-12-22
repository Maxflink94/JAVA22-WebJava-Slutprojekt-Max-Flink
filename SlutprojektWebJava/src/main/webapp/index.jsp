<%@page import="model.WeatherBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="controller.OWservlet"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title>Weather</title>
</head>
<body>
	<div class=startContainer>
		<div class=form>
			<form action="OWservlet" method="get">
				<p>City:</p>
				<input type="text" name="city" required />
				<p>Country:</p>
				<input type="text" name="country" required /> 
				<input class=btn type="submit" value="Search" />
			</form>
			
			<a class=cookie href="OWservlet?city=${cookie['Cookie'].getValue().split('/')[0]}&country=${cookie['Cookie'].getValue().split('/')[1]}">
			${cookie["Cookie"].getValue()}
			</a>
		
		</div>
	</div>
</body>
</html>