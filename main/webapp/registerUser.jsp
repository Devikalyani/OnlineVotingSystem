<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css" type="text/css">
<meta charset="ISO-8859-1">
<title>User Register</title>
</head>
<%@include file="adminNavbar.jsp" %>
<body>
<div class="form-container">
<form action="RegisterUser" method="post" >

<label for="name" class="form-elements"><b>Name</b></label><br>
<input type="text" class="form-elements form-input" id="name" name="name"><br>

<label for="number" class="form-elements"><b>Phone Number</b></label><br>
<input type="text" class="form-elements form-input" id="number" name="number"><br>

<label for="email" class="form-elements"><b>Email</b></label><br>
<input type="text" class="form-elements form-input" id="email" name="email"><br>

<label for="voterNumber" class="form-elements"><b>Voter Number</b></label><br>
<input type="text" class="form-elements form-input" id="voterName" name="voterNumber"><br>

<label for="address" class="form-elements"><b>Address</b></label><br>
<input type="text" class="form-elements form-input" id="address" name="address"><br>

<label for="dob" class="form-elements"><b>DOB</b></label><br>
<input type="text" class="form-elements form-input" id="dob" name="dob"><br>

<button type="submit" class="form-elements form-button">Submit</button>
</form>
</div>

</body>
</html>