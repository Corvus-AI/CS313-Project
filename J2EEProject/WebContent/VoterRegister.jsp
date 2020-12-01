<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Survey Management System</title>
</head>
<body>
<h1>Voter Register</h1>
<form action="VoterRegisterServlet" method="post">
			<table style="with: 50%">
				<tr>
					<td>Voter ID</td>
					<td><input type="text" name="voter_id" /></td>
				</tr>
				<tr>
					<td>Voter Name</td>
					<td><input type="text" name="vname" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="email" /></td>
				</tr>
			</table>
			<input type="submit" value="Register" /></form>
</body>
</html>
