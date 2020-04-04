<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String firstname=(String)session.getAttribute("firstname");
	String lastname=(String)session.getAttribute("lastname");
	String name=firstname+" "+lastname;
	String email=(String)session.getAttribute("emailPre");

%>
<center>

	<h2>Hello <%=name %> ! your booking has been taken and a verification message has been send to <%=email %>.
	</h2><br>
	<p>
	click here <a href="homepage.jsp">Home</a>	
	</p>
</center>
</body>
</html>