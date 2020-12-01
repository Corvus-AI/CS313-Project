<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Voter Added</title>
<script> function redirect(elem){
    elem.setAttribute("action","Home.jsp");
    elem.submit();
}</script>
</head>
<body>
You have registered successfully !
&nbsp;
<form id="main" method="post" name="main" action="" onsubmit="redirect(this);">
    <input type="submit" value="Back to Home"/> 
</form>




</body>
</html>