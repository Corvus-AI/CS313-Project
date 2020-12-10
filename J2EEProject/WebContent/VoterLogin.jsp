<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Survey Management System</title>
</head>
<body>
<h1><p style="text-align:center">Voter Login</p></h1>
<div id="form-wrapper" style="max-width:500px;margin:auto;">
<form action="VoterLoginServlet" method="post">
			<table style="with: 50%">
				<tr>
					<td>Voter ID</td>
					<td><input type="text" name="voter_id" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" /></td>
				</tr>
			</table>
			
			<input type="submit" value="Login" /></form></div>
</body>
</html>
