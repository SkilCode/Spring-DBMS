<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href=css/bootstrap.css>
	

<head>
<meta charset="ISO-8859-1">
<title>New account</title>

</head>

<body>
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

<p style="text-align:center;">${msg}</p>
<form class="text-center border p-5" action="register" method="post">

    <p class="h4 mb-4">New account</p>

   
    <input type="number" name="id" class="form-control mb-4" placeholder="User Id">

    <input type="password" name="pwd" class="form-control mb-4" placeholder="Password">
 
    <input class="btn btn-info btn-block my-4" type="submit" value="Register">
    <input type="button" class="btn btn-info btn-block my-4" onclick="window.location.href='login.jsp'" value="log in" >
</form>

</body>
</html>