package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//catch the login form's entered details and save it to variables
		String userType = request.getParameter("usertype");
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		boolean isTrue;
		
		isTrue = UserDBUtil.validate(userType, userName, password);
		
		if (isTrue == true) {
			// create a session upon the successful validation
			HttpSession session = request.getSession();
		    session.setAttribute("username", userName);
			
			if("Passenger".equals(userType)) {
				//get the Passenger details from the getPassenger method and pass it to the passeDetails object 
				List<Passenger> passeDetails = UserDBUtil.getPassenger(userName);
				request.setAttribute("passeDetails", passeDetails);
				//navigate to the user account if the userType is Passenger
				RequestDispatcher dis = request.getRequestDispatcher("UserAccount.jsp");
				dis.forward(request, response);
			}
			
			else {
				//navigate to the Admin dash board if the userType is Admin
				RequestDispatcher dis = request.getRequestDispatcher("../Buss/dashBoard.jsp");
				dis.forward(request, response);
			}
			
		}
		
		else {
		    // if the entered data invalid, show the error and redirect to login page
			//validation 
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='Login.jsp'");
			out.println("</script>");
		}
	}

}
