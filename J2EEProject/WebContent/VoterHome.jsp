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

function redirect3(elem){
    elem.setAttribute("action","Home.jsp");
    elem.submit();
}

function redirect4(elem){
    elem.setAttribute("action","VotedData.jsp");
    elem.submit();
}

</script>
</head>
<body>
<h1> <p style="text-align:center"> Voter DashBoard </p> </h1>
<div id="form-wrapper" style="max-width:500px;margin:auto;">
&nbsp;
<form id="main" method="post" name="main" action="" onsubmit="redirect1(this);">
    <input type="submit" value="View All Surveys"/> 
</form>

&nbsp;
<form id="main" method="post" name="main" action="" onsubmit="redirect2(this);">
    <input type="submit" value="Vote for a Survey"/> 
</form>

&nbsp;
<form id="main" method="post" name="main" action="" onsubmit="redirect4(this);">
    <input type="submit" value="View Voted Surveys"/> 
</form>

&nbsp;
<form id="main" method="post" name="main" action="" onsubmit="redirect3(this);">
    <input type="submit" value="Logout"/> 
</form>
</div>
</body>
</html>