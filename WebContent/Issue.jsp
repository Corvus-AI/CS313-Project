<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Library Management System</title>
</head>
<body>
<h1>Issue a Book</h1>
<form action="IssueServlet" method="post">
			<table style="with: 50%">
				<tr>
					<td>Student Id</td>
					<td><input type="text" name="student_id" /></td>
				</tr>
				<tr>
					<td>Book's Title</td>
					<td><input type="text" name="book_id" /></td>
				</tr>
				<tr>
					<td>Date of Issue (YYYY-MM-DD)</td>
					<td><input type="text" name="issue_date" /></td>
				</tr>
					<tr>
					<td>Date of Return</td>
					<td><input type="text" name="return_date" /></td>
				</tr>

			</table>
			<input type="submit" value="Submit" /></form>
</body>
</html>
