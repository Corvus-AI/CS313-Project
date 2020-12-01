<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.sql.*, javax.servlet.*, java.util.*" %>
<!DOCTYPE html>
<jsp:useBean id="Voter" class="Voter.Voter" scope="session"/> 
<html>
<head>
<meta charset="ISO-8859-1">
<title>Voter : Vote for Survey</title>
</head>
<body>
<h3>All Surveys you can Vote for :</h3>
<% 
   Connection con = null;
   ResultSet rs = null;

		String url = "jdbc:postgresql://localhost:5432/survey"; //PostgreSQL URL and followed by the database name
		String username = "postgres"; //PostgreSQL username
		String password1 = "1234"; //PostgreSQL password
		
		Class.forName("org.postgresql.Driver");
		con = DriverManager.getConnection(url, username, password1); //attempting to connect to PostgreSQL database

	
       PreparedStatement st = con.prepareStatement("select survey_id , sname from survey where survey_id not in (select s_name from data where v_name='" + Voter.ID + "')" );
       
       rs=st.executeQuery();

       while (rs.next()) {
    	out.print(rs.getString("survey_id") + "  ") ;
        out.println(rs.getString("sname")) ;
        out.print("<br/>") ;
       }

%>

<form action="VoterServlet" method="post">
			<table style="with: 50%">
				<tr>
					<td>Enter Survey ID</td>
					<td><input type="text" name="survey_id" /></td>
				</tr>
			</table>
			<input type="submit" value="Choose Survey" />
</form>
			
			
</body>
</html>