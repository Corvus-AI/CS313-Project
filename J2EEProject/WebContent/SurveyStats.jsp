<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.sql.*, javax.servlet.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin : All Survey Stats</title>
<jsp:useBean id="Voter" class="Voter.Voter" scope="session"/> 
</head>
<body>

<% 
   Connection con = null;
   ResultSet rs = null;
   String tot_Voters = "0" ;
  

		String url = "jdbc:postgresql://localhost:5432/survey"; //PostgreSQL URL and followed by the database name
		String username = "postgres"; //PostgreSQL username
		String password1 = "1234"; //PostgreSQL password
		
		Class.forName("org.postgresql.Driver");
		con = DriverManager.getConnection(url, username, password1); //attempting to connect to PostgreSQL database
		
		 Statement stmt1 = con.createStatement();
	     ResultSet rs1 = stmt1.executeQuery("select count(*) from voter");
	     while (rs1.next()) {
	         tot_Voters = rs1.getString("count") ;
	        }

		
       Statement stmt = con.createStatement();
       rs = stmt.executeQuery("select s_name , count(s_name) from data group by s_name order by s_name ");
       out.println("Survey&emsp;No. of Voters") ;
       out.print("<br/><br/> ") ;
       while (rs.next()) {
        out.println(rs.getString("s_name")) ; out.println("&emsp;");
        out.println(rs.getString("count")) ; 
        out.println(" out of " + tot_Voters + " have voted") ;
        out.print("<br/>") ;
   
       }

%>

</body>
</html>