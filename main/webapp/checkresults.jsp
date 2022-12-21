<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css" type="text/css">
<meta charset="ISO-8859-1">
<title>Check Results</title>
<%
   
    String a[] = new String[100];
 	for(int i=0;i<100;i++){
 		a[i]="0";
 	}
 
    Class.forName("com.mysql.cj.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinevotingdb","root","Jungkook@97");
	
	PreparedStatement preparedStatement = con.prepareStatement("select party,count(party) as votecount from vote group by party");
	ResultSet rs=((java.sql.Statement) preparedStatement).executeQuery("select party,count(party) as votecount from vote group by party");
	
    int i=0;
    while(rs.next()){
    	if(rs.getString("party").equals("aam admi party"))
        a[0] = rs.getString("votecount");
    	if(rs.getString("party").equals("BJP"))
        a[1] = rs.getString("votecount");
    	if(rs.getString("party").equals("BSP"))
        a[2] = rs.getString("votecount");
    	if(rs.getString("party").equals("Congress"))
        a[3] = rs.getString("votecount");
    	if(rs.getString("party").equals("CPI"))
        a[4] = rs.getString("votecount");
    }
    %>
</head>
<%@include file="adminNavbar.jsp" %>
<body>

<div class="checkTable">
<table>
	<tr> 
		<th> Parties</th>
		<th> Names</th>
		<th> Votes</th>
	</tr>
	<tr>
		<td><img alt="aap" src="Images/aap.jpg"></td>
		<td>Aam Aadmi Party</td>
		<td><%=a[0]%></td>
	</tr>
	<tr>
		<td><img alt="bjp" src="Images/bjp.png"></td>
		<td>BJP</td>
		<td><%=a[1]%></td>
	</tr>
	<tr>
		<td><img alt="bsp" src="Images/bsp.png"></td>
		<td>BSP</td>
		<td><%=a[2]%></td>
	</tr>
	<tr>
		<td><img alt="congress" src="Images/congress.jpg"></td>
		<td>Congress</td>
		<td><%=a[3]%></td>
	</tr>
	<tr>
		<td><img alt="cpi" src="Images/cpi.jpg"></td>
		<td>CPI</td>
		<td><%=a[4]%></td>
	</tr>
</table>
</div>


</body>
</html>