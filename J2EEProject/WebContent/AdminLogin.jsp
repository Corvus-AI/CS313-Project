<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Survey Management System</title>
</head>
<body>
<h1>Admin Login</h1>
<form action="AdminLoginServlet" method="post">
			<table style="with: 50%">
				<tr>
					<td>Admin ID</td>
					<td><input type="text" name="admin_id" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" /></td>
				</tr>
			</table>
			
			<input type="submit" value="Login" /></form>
</body>
</html>
