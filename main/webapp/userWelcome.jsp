<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<%@include file="navbar.jsp" %>
<body>
<div class="form-container">
<form action="Vote" method="post">
<label for="voteNumber" class="form-elements"><b>Enter your card number</b></label>
<br>
<input id="voteNumber" name="voterNumber" class="form-elements form-input" type="text"><br>
<label for="party" class="form-elements"><b>Choose your party</b></label><br>

<input type="radio" id="AAP" name="party" value="aam admi party">
<label for="AAP"><img class="partyImg" src="Images/aap.jpg" alt="aap">AAP</label><br>

<input type="radio" id="BJP" name="party" value="BJP">
<label for="BJP"><img class="partyImg" src="Images/bjp.png" alt="bjp">BJP</label><br>

<input type="radio" id="BSP" name="party" value="BSP">
<label for="BSP"><img class="partyImg" src="Images/bsp.png" alt="bsp">BSP</label><br>

<input type="radio" id="Congress" name="party" value="Congress">
<label for="Congress"><img class="partyImg" src="Images/congress.jpg" alt="congress">Congress</label><br>

<input type="radio" id="CPI" name="party" value="CPI">
<label for="CPI"><img class="partyImg" src="Images/cpi.jpg" alt="cpi">CPI</label><br>

<button type="submit" class="form-elements form-button">Submit</button>
</form>
</div>

</body>
</html>