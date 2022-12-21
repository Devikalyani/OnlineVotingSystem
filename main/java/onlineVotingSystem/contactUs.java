package onlineVotingSystem;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class contactUs
 */
public class contactUs extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//connect to database
		response.setContentType("text/html");
		DatabaseManager db=new DatabaseManager();
		java.sql.Connection conn=db.getConnection();
	
		//collection info from online page 
		String name=request.getParameter("name");
		String pnumber=request.getParameter("number");
		String email=request.getParameter("email");
		String comments=request.getParameter("comments");

		
		//storing the above info into database	
		try {
			PreparedStatement preparedStatement=conn.prepareStatement
			("insert into contact(name,pnumber,email,comments)values('"+name+"','"+pnumber+"','"+email+"','"+comments+"')");
			preparedStatement.executeUpdate();
			response.sendRedirect("index.jsp");
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
