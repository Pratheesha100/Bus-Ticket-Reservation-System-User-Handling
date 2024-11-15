package com.user;

import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserBookingServlet
 */
@WebServlet("/UserBookingServlet")
public class UserBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		//catch the user's passengerId from the UserBooking.jsp
		String username = request.getParameter("username");
		
		// Call a method in UserDBUtil to retrieve booking details based on passengerId
		boolean isTrue;
		//check if there is any booking under the user's id and assign the boolean value to the isTrue variable
		isTrue = UserDBUtil.validateBooking(username);
		
		if (isTrue == true) {
			List<Booking> bookingDetails = UserDBUtil.getBookingDetails(username);
			request.setAttribute("bookingDetails", bookingDetails);	
		   // Forward the request to booking.jsp
	       RequestDispatcher dispatcher = request.getRequestDispatcher("UserBooking.jsp");
	       dispatcher.forward(request, response);
		}
		
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('You have not created any reservations for a booking. Please navigate to the Home Page for book a trip.');");
			out.println("location='UserBooking.jsp'");
			out.println("</script>");
		}
	}

}
