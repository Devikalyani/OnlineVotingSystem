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
<form action="VoterLogin" method="post">
	<h4>Enter Voting Number</h4>
	<label for="votingNumber" class="form-elements"><b>Voter ID</b></label><br> 
	<input type="text" class="form-elements form-input" name="votingNumber" id="votingNumber"><br>
	<button type="submit" class="form-elements form-button">Login</button>
	<br>
	<a href="adminLogin.jsp" class="index-a" >Admin</a>
	</form>
</div>
</body>
</html>