<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
	<%
		String fname = (String) session.getAttribute("fname");
		out.print("First name : " + fname);
	%>
	</div>
	<div>
	<%
		out.print("First Name (page context): " + 
		(String) pageContext.getAttribute("fname", pageContext.SESSION_SCOPE));
	%>
	</div>
</body>
</html>