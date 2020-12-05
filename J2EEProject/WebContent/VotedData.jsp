<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.sql.*, javax.servlet.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Voter : Voted Survey Data</title>
<jsp:useBean id="Voter" class="Voter.Voter" scope="session"/> 
</head>
<body>

<% 
   Connection con = null;
   ResultSet rs = null;
  

		String url = "jdbc:postgresql://localhost:5432/survey"; //PostgreSQL URL and followed by the database name
		String username = "postgres"; //PostgreSQL username
		String password1 = "1234"; //PostgreSQL password
		
		Class.forName("org.postgresql.Driver");
		con = DriverManager.getConnection(url, username, password1); //attempting to connect to PostgreSQL database
		
       Statement stmt = con.createStatement();
       rs = stmt.executeQuery("select * from data where v_name ='" + Voter.ID + "' order by s_name" );
       out.println("Survey Vote") ;
       out.print("<br/><br/> ") ;
       while (rs.next()) {
        out.println(rs.getString("s_name")) ; out.println("&emsp;");
        out.println(rs.getString("option")) ;
        out.print("<br/>") ;
   
       }

%>

</body>
</html>