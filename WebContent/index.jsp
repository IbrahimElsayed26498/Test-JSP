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
	
	<%@ includefile='form.html' %>
	
	<% 
		String fname = request.getParameter("fname");
		out.print("first name is : " + fname + "\n");
	%>
	<br>
	<%= "last name: " + request.getParameter("lname") %>
	
	<div>
	<%!
		int sum(int x, int y){
			return x + y;
		}
	%>
	<%="sum(5, 6) : " + sum(5, 6) %>
	</div>
	<div>
		<%
			//Thread.sleep(2000);
			//response.sendRedirect("http://www.google.com");
			
			// Using session
			session.setAttribute("fname", fname);
			pageContext.setAttribute("fname", fname, pageContext.SESSION_SCOPE);
		%>
		Click <a href="File.jsp">here</a>
	</div>
</body>
</html>