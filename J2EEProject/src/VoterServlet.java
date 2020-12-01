import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Voter.Voter;

import java.sql.* ;


@WebServlet("/VoterServlet")
public class VoterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public VoterServlet() { 
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
		
		//getting input values from jsp page
		String survey_id = request.getParameter("survey_id");
        Voter.setSurvey(survey_id) ;
	    
        RequestDispatcher rd = request.getRequestDispatcher("AddVote.jsp");
		rd.forward(request, response);
		
		}
		 catch (Exception e) 
 		{   
 			e.printStackTrace();
 		}

	
	}


}