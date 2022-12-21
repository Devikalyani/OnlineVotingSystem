<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css" type="text/css">
<meta charset="ISO-8859-1">
<title>Admin Login</title>
</head>
<%@include file="navbar.jsp" %>
<body>
<div class="form-container">
<form action="AdminLogin" method="post">
<h3>Admin Login</h3>

<label for="name" class="form-elements"><b>Name</b></label><br>
<input type="text" id="name" name="adminName" class="form-elements form-input">

<label for="pwd" class="form-elements"><b>Password</b></label>
<input type="password" id="pwd" name="password" class="form-elements form-input">

<button class="form-elements form-button" type="submit">Login</button>
</form>
</div>

</body>
</html>