<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Voter HomePage</title>
<script> 
function redirect1(elem){
    elem.setAttribute("action","ViewSurveys.jsp");
    elem.submit();
}

function redirect2(elem){
    elem.setAttribute("action","Vote.jsp");
    elem.submit();
}

</script>
</head>
<body>

&nbsp;
<form id="main" method="post" name="main" action="" onsubmit="redirect1(this);">
    <input type="submit" value="View Existing Surveys"/> 
</form>

&nbsp;
<form id="main" method="post" name="main" action="" onsubmit="redirect2(this);">
    <input type="submit" value="Vote for a Survey"/> 
</form>

</body>
</html>