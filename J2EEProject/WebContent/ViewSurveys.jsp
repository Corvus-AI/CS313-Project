<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.sql.*, javax.servlet.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Surveys</title>
</head>
<body>
<h3>List of All Surveys</h3>
<% 
   Connection con = null;
   ResultSet rs = null;
   List<String> result = new ArrayList<String>();

		String url = "jdbc:postgresql://localhost:5432/survey"; //PostgreSQL URL and followed by the database name
		String username = "postgres"; //PostgreSQL username
		String password1 = "1234"; //PostgreSQL password
		
		Class.forName("org.postgresql.Driver");
		con = DriverManager.getConnection(url, username, password1); //attempting to connect to PostgreSQL database
		
       Statement stmt = con.createStatement();
       rs = stmt.executeQuery("select sname from survey");
       int i = 1 ;
       while (rs.next()) {
    	out.print(i+". ") ;
        out.println(rs.getString("sname")) ;
        out.print("<br/>") ;
        i++ ;
       }

%>

</body>
</html>