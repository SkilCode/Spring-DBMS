<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href=css/bootstrap.css>
<style>
body, html {   
    width: 100%;
    height: 100%;
    margin: 1;
    padding: 1;
    display:table;
}
body {
    display:table-cell;
    vertical-align:middle;	
}
form {
    display:table;/* shrinks to fit content */
    margin:auto;
}
</style>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p style = "text-align: center;">${msg}</p>
<%

	if(session.getAttribute("login")  == null ){
	response.getWriter().print("<scipt>alert('please login first'); </script>");
	response.sendRedirect("login.jsp");
}
if(session.getAttribute("login")  == "false"){
	response.getWriter().print("<scipt>alert('please login first or check your password'); </script>");
	response.sendRedirect("login.jsp");
}
%>

<script>


function validateForm() {
  var x = document.forms["form"]["id"].value;
  var y = document.forms["form"]["name"].value;
  var z = document.forms["form"]["grade"].value;
  var a = document.forms["form"]["gender"].value;
  if (x == "" || x == null) {
    alert("all the feilds must be filled out");
    return false;
  }
  if (y == "" || y == null) {
	    alert("all the feilds must be filled out");
	    return false;
	  }
  if (z == "" || z == null) {
	    alert("all the feilds must be filled out");
	    return false;
	  }
  if (a == "" || a == null) {
	    alert("all the feilds must be filled out");
	    return false;
	  }
}
</script>

<form name="form" action="addStud" class="text-left border p-5" onsubmit = "return validateForm()" method= "post" >

<p class="h4 mb-4">Enter Data</p>

ID : <input type="number" class="form-control" name="id"><br>
Name : <input type="text" class="form-control" name="name"><br>
Grade : <input type="text" class="form-control" name="grade"><br> 
Gender: <select name= "gender" class= " form-control">
		<option value = "male">Male</option>
		<option value = "female">Female</option>
		<option value = "others">Others</option>
</select><br>
<input type="submit" name = "add" class="btn btn-info my-4" value = "Save">&nbsp;
<input type="button" class="btn btn-info my-4" onclick="window.location.href='index.jsp'" value="Reset" >&nbsp;
<input type="button" class="btn btn-info my-4" onclick="window.location.href='edit.jsp'" value="Edit Data" >&nbsp;
<input type="button" class="btn btn-info my-4" onclick="window.location.href='search.jsp'" value="Search Record" >&nbsp;

</form>
<form action= "fetchAll">
<input type="submit" class="btn btn-info my-4" name = "fetchAll" value="Fetch all data">
</form>
<form action="logout" class="text-center p-5"><input type="submit" class="btn btn-info my-4" value="logout"></form>


	

</body>
</html>