<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin HomePage</title>
<script> 

function redirect1(elem){
    elem.setAttribute("action","ViewSurveys.jsp");
    elem.submit();
}

function redirect2(elem){
    elem.setAttribute("action","AddSurvey.jsp");
    elem.submit();
}

function redirect3(elem){
    elem.setAttribute("action","RemoveSurvey.jsp");
    elem.submit();
}

function redirect4(elem){
    elem.setAttribute("action","SurveyData.jsp");
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
    <input type="submit" value="Add a new Survey"/> 
</form>

&nbsp;
<form id="main" method="post" name="main" action="" onsubmit="redirect3(this);">
    <input type="submit" value="Remove a existing Survey"/> 
</form>

&nbsp;
<form id="main" method="post" name="main" action="" onsubmit="redirect4(this);">
    <input type="submit" value="Check Survey Results"/> 
</form>
</body>
</html>