<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin : Add New Survey</title>
</head>
<body>
<h3><p style="text-align:center">Enter new Survey Details</p></h3>
<div id="form-wrapper" style="max-width:500px;margin:auto;">
<form action="AddSurveyServlet" method="post">
			<table style="with: 50%">
				<tr>
					<td>Survey ID</td>
					<td><input type="text" name="survey_id" /></td>
				</tr>
				<tr>
					<td>Survey Name</td>
					<td><input type="text" name="sname" /></td>
				</tr>
				<tr>
					<td>Description</td>
					<td><input type="text" name="description" /></td>
				</tr>
			</table>
			<input type="submit" value="Add Survey" /></form>
			</div>
</body>
</html>