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
<title>edit data</title>
</head>
<body>
<p style = "text-align: center;">${msg}</p>



<script>
function validateForm() {
  var x = document.forms["form"]["id"].value;
  
  if (x == "" || x == null) {
    alert("Feild name id must be filled out");
    return false;
  }
}
</script>

<form name="form" action="edit" class="text-center border p-5" onsubmit = "return validateForm()" method= "post" >

<p class="h4 mb-4">Edit Data</p>

<p style="font-size:14px;">NOTE : To delete record enter id only</p>
<p style="font-size:14px;">Fill all the following details with the respective id</p>
Enter ID : <input type="number" class="form-control" name="id"><br>
Enter NAME : <input type="text" class="form-control" name="name"><br>
Enter Grade : <input type="text" class="form-control" name="grade"><br>
Gender: <select name= "gender" class= " form-control">
		<option value = "male">Male</option>
		<option value = "female">Female</option>
		<option value = "others">Others</option>
</select><br>
<input type="submit" class="btn btn-info my-4" name="edit" value="Update">&nbsp;
<input type="submit" class="btn btn-info my-4" value="Delete" name="delete" />&nbsp;
<input type="button" class="btn btn-info my-4" onclick="window.location.href='edit.jsp'" value="Reset" >&nbsp;
<input type="button" class="btn btn-info my-4" onclick="window.location.href='index.jsp'" value="Go Back" >&nbsp;

</form>

<form action="logout" class="text-center p-5">
<input type="submit" class="btn btn-info my-4" value="logout">
</form>

</body>
</html>