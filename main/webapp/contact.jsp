<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta charset="ISO-8859-1">
<title>Online Voting System</title>
</head>
<%@include file="navbar.jsp" %>
<body>
<div class="form-container">
<form action="contactUs" method="post" >
<label id="name" class="form-elements" >Name</label>
<br>
<input id="name" name="name" class="form-elements form-input" type="text">
<br>
<label id="number"  class="form-elements" >Mobile Number</label>
<br>
<input id="number" name="number" class="form-elements form-input" type="text">
<br>
<label id="email" class="form-elements" >Email ID</label>
<br>
<input id="email" name="email" class="form-elements form-input" type="text">
<br>
<label id="comments" class="form-elements" >Comments</label>
<br>
<input id="comments" name="comments" class="form-elements form-input" type="text">
<br>
<button type="submit" class="form-elements form-button">Submit</button>
</form>
</div>

</body>
</html>