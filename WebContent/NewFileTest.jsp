<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Test Title</title>
</head>
<body>
	<p>In the name of Allah, the Gracious, the Merciful</p>
	<% 
		String fname = request.getParameter("fname");
		out.print("first name is : " + fname + "\n");
	%>
	<br>
	<%= "last name: " + request.getParameter("lname") %>
</body>
</html>