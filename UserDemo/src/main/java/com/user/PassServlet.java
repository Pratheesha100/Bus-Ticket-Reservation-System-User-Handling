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


@WebServlet("/PassServlet")
public class PassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		boolean isTrue;
		
		isTrue = UserDBUtil.validates(userName, password);
		
		if (isTrue == true) {
			// create a session upon the successful validation
			HttpSession session = request.getSession();
		    session.setAttribute("username", userName);
		    
		    List<Passenger> passeDetails = UserDBUtil.getPassenger(userName);
			request.setAttribute("passeDetails", passeDetails);
			RequestDispatcher dis = request.getRequestDispatcher("UserAccount.jsp");
			dis.forward(request, response);
		} 
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='BookingSuccess.jsp'");
			out.println("</script>");
		}
		}
}
