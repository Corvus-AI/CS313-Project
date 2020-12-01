import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/AddSurveyServlet")
public class AddSurveyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public AddSurveyServlet() { 
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
		
		//getting input values from jsp page
		String survey_id = request.getParameter("survey_id");
		String sname = request.getParameter("sname");
		String description = request.getParameter("description");

		Connection con = null;
 		String url = "jdbc:postgresql://localhost:5432/survey"; //PostgreSQL URL and followed by the database name
 		String username = "postgres"; //PostgreSQL username
 		String password1 = "1234"; //PostgreSQL password
		
		Class.forName("org.postgresql.Driver");
		con = DriverManager.getConnection(url, username, password1); //attempting to connect to PostgreSQL database
 		System.out.println("Printing connection object "+con);

		//Prepared Statement to check credentials
		PreparedStatement smt = con.prepareStatement("INSERT INTO survey VALUES(?, ?, ?)");
		smt.setString(1, survey_id);
		smt.setString(2, sname);
		smt.setString(3, description);
		
		int temp = smt.executeUpdate();
		if(temp>0)
		{	
			RequestDispatcher rd = request.getRequestDispatcher("AdminHome.jsp");
			rd.forward(request, response);
		}
		else{ 
			RequestDispatcher rd = request.getRequestDispatcher("AddSurveyFailed.jsp");
			rd.forward(request, response);
		}
		
		
		}
		 catch (Exception e) 
 		{   
 			e.printStackTrace();
 		}

	
	}


}