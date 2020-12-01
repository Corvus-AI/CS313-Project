<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin : Remove New Survey</title>
</head>
<body>
<h3>Enter the details of the Survey you wish to remove :</h3>
<form action="RemoveSurveyServlet" method="post">
			<table style="with: 50%">
				<tr>
					<td>Survey Name</td>
					<td><input type="text" name="sname" /></td>
				</tr>

			</table>
			<input type="submit" value="Remove Survey" /></form>
</body>
</html>