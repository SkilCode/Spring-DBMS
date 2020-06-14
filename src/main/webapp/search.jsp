<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href=css/bootstrap.css>
<style>
table.mytable-marg{
	border-collapse: collapse;
}
table.mytable-marg td, table.mytable-marg th{
  border: 1px solid #ccc;
}
.mytable-marg{
	margin:0 auto;
}
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
<title>Search</title>
</head>
<body>
<p style = "text-align: center;">${msg}</p>
<script>
function validateForm() {
  var x = document.forms["form"]["id"].value;

  if (x == "" || x == null) {
    alert("plese enter the id");
    return false;
  }
  
}
</script>


<form action="search" class="text-center border p-5" onsubmit = "return validateForm()" method= "post">
<p class="h4 mb-4">Edit Data</p>
Enter ID : <input type="number" class="form-control" name="id"><br>
<input type="submit" class="btn btn-info my-4" value="Search">&nbsp;
<input type="button" class="btn btn-info my-4" onclick="window.location.href='index.jsp'" value="Go Back" >
<table class="mytable-marg" >
<tr>
<td>attribute</td>
<td>values</td>
</tr>
<tr>
<td>ID</td>
<td>${id}</td>
</tr>
<tr>
<td>NAME</td>
<td>${name}</td>
</tr>
<tr>
<td>GRADE</td>
<td>${grade}</td>
</tr>
<tr>
<td>GENDER</td>
<td>${gender}</td>
</tr>

</table>

</form>



<form action="logout" class="text-center p-5">
<input type="submit" class="btn btn-info my-4" value="logout">
</form>
<p class= "text-center">


</p>
</body>
</html>