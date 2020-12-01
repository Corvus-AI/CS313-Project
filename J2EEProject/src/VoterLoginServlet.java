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

@WebServlet("/VoterLoginServlet")
public class VoterLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public VoterLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{

			//getting input values from jsp page
			String voter_id = request.getParameter("voter_id");
			String password = request.getParameter("password");


			Connection con = null;
	 		String url = "jdbc:postgresql://localhost:5432/survey"; //PostgreSQL URL and followed by the database name
	 		String username = "postgres"; //PostgreSQL username
	 		String password1 = "1234"; //PostgreSQL password
			
			Class.forName("org.postgresql.Driver");
			con = DriverManager.getConnection(url, username, password1); //attempting to connect to PostgreSQL database
	 		System.out.println("Printing connection object "+con);

			//Prepared Statement to check credentials
			PreparedStatement st = con.prepareStatement("select count(*) from voter where voter_id = ? and password = ?");
	 		st.setString(1,voter_id);
			st.setString(2,password);
			ResultSet result=st.executeQuery();
			result.next() ;
	        int res = Integer.parseInt(result.getString("count")) ;
			if(res>0)
			{
				
				RequestDispatcher rd = request.getRequestDispatcher("VoterHome.jsp");
				rd.forward(request, response);
			}
			else{ 
				RequestDispatcher rd = request.getRequestDispatcher("LoginFail.jsp");
				rd.forward(request, response);
			}
			
			
		}
		 catch (Exception e) 
 		{
 			e.printStackTrace();
 		}

	
	}


}


