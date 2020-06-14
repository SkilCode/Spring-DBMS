<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href=css/bootstrap.css>

<head>
<meta charset="ISO-8859-1">
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
<title>Insert title here</title>
</head>
<body>


<p style="text-align:center;">${msg}</p>
		

<!-- Default form login -->
<script type="text/javascript">

</script>
<form class="text-center border p-5" action="login" method="post">

    <p class="h4 mb-4">Log in</p>

   
    <input type="text" name="id" class="form-control mb-4" placeholder="User Id">

    <input type="password" name="pwd" class="form-control mb-4" placeholder="Password">
 
   <a href="resetPwd.jsp">Forgot password?</a>
    <input class="btn btn-info btn-block my-4" type="submit" value="sign in">
	
	<p>Create Account :
        <a href="register.jsp">Register</a>
    </p>
   
</form>

</body>
</html>	