<%@page import="java.util.List"%>

<%@page import="com.abhi.model.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href=css/bootstrap.css>
<head>
<meta charset="ISO-8859-1">
<title>All Data</title>
</head>
<body>

<form action="logout" class="text-center">
<input type="button" class="text-center btn btn-dark" onclick="window.location.href='index.jsp'" value="Go Back" >
<input type="submit" class="btn btn-dark" value="logout">
</form>

<p style = "text-align: center;">${msg}</p>
<% if(session.getAttribute("login") == "true"){ %>
<table class="table">
  <thead class="thead-dark">
<tr>
<th>
ID
</th>
<th>
NAME
</th>
<th>
GRADE
</th>
<th>
GENDER
</th>
</tr>
  </thead>
    <tbody>
<%
List<Student> studs = (List<Student>) request.getAttribute("students");
for(Student s : studs){

	out.print("<tr><td>" + s.getId());
	out.print("</td><td>" + s.getName());
	out.print("</td><td>" + s.getGrade());
	out.print("</td><td>" + s.getGender());
	out.print("</td></tr>");
	
	
	
}
%> 
  </tbody>
</table>
</body>
<% }
else{
	
	response.sendRedirect("login.jsp");	
}
%>
</html>