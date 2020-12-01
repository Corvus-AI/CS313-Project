<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.sql.*, javax.servlet.*, java.util.*" %>
<!DOCTYPE html>
<jsp:useBean id="Voter" class="Voter.Voter" scope="session"/> 
<html>
<head>
<meta charset="ISO-8859-1">
<title>Voter : Vote </title>
</head>
<body>
<h3>Survey Description</h3>&nbsp;
<% 
   Connection con = null;
   ResultSet rs = null;

		String url = "jdbc:postgresql://localhost:5432/survey"; //PostgreSQL URL and followed by the database name
		String username = "postgres"; //PostgreSQL username
		String password1 = "1234"; //PostgreSQL password
		
		Class.forName("org.postgresql.Driver");
		con = DriverManager.getConnection(url, username, password1); //attempting to connect to PostgreSQL database

	
       PreparedStatement st = con.prepareStatement("select description from survey where survey_id='" + Voter.Survey + "'" );
       rs=st.executeQuery();
       rs.next();
       
        out.println(rs.getString("description")) ;
        out.print("<br/>") ;
    

%>
<form action="AddVoteServlet" method="post">
			<table style="with: 50%">
				<tr>
					<td>Enter your Response :</td>
					<td><input type="text" name="option" /></td>
				</tr>
			</table>
			<input type="submit" value="Vote" />
</form>
		
</body>
</html>