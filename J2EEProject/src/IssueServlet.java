import java.sql.*;


import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDate;

/**
 * Servlet implementation class IssueServlet
 */
@WebServlet("/IssueServlet")
public class IssueServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public IssueServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			
		
		String temp1  = request.getParameter("issue_date");
		java.util.Date date1 = new SimpleDateFormat("yyyy-MM-dd").parse(temp1); 
		java.sql.Date issue_date = new java.sql.Date(date1.getTime());
		
		java.sql.Date return_date = null ;
	
		int flag = 0 ;
		String temp2  = request.getParameter("return_date");
		if(temp2=="")
		{ flag = 1 ; }
		else { 
		java.util.Date date2 = new SimpleDateFormat("yyyy-MM-dd").parse(temp2); 
	     return_date = new java.sql.Date(date2.getTime());
		}
		
		//getting input values from jsp page
		String student_id = request.getParameter("student_id");
		String book_id = request.getParameter("book_id");
	
		


		Connection con = null;
 		String url = "jdbc:postgresql://localhost:5432/lms"; //PostgreSQL URL and followed by the database name
 		String username = "postgres"; //PostgreSQL username
 		String password = "1234"; //PostgreSQL password
		
		Class.forName("org.postgresql.Driver");
		con = DriverManager.getConnection(url, username, password); //attempting to connect to PostgreSQL database
 		System.out.println("Printing connection object "+con);
 		

		PreparedStatement smt1 = con.prepareStatement("select * from student where student_id = ? ");
		smt1.setString(1, student_id);
		int temp = 0 ;
		ResultSet rs1 = smt1.executeQuery();
		 while (rs1.next()) 
		 {
			   temp = 1 ;
		 }
		
		if(temp==0)
		{
			System.out.print("Invalid Student ID");
		}
		else { 
		//Prepared Statement to add data
		PreparedStatement st = con.prepareStatement("insert into issue values(?, ?,?,?)");
 		st.setString(1,student_id);
		st.setString(2,book_id);
		st.setDate(3,issue_date);
		if(flag==0) {
		st.setDate(4,return_date);
		}
		else
		{
			st.setDate(4, null);
		}
		int result=st.executeUpdate();

		//Checks if insert is successful.If yes,then redirects to Result.jsp page 
		if(result>0)
		{
			
			RequestDispatcher rd = request.getRequestDispatcher("IssueResult.jsp");
			rd.forward(request, response);
		}
		
		}

		}
		 catch (Exception e) 
 		{
 			e.printStackTrace();
 		}

	
	}


}


