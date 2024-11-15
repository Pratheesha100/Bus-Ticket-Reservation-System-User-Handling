package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserBookingDeleteServlet
 */
@WebServlet("/UserBookingDeleteServlet")
public class UserBookingDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// get the user id from the DeleteUserAccount.jsp and assign it to a variable
				String bookingId = request.getParameter("bookingId");
				String cusId = request.getParameter("cusId");
				boolean isTrue;
				// send the user entered details to the DButil class and get the boolean value and assign it to the isTrue variable
						isTrue = UserDBUtil.deletePassengerBooking(bookingId);
						 
						 if(isTrue == true) {
							 // if the delete process succes the user will navigate to create account.jsp
							// List<Passenger> passengerDetails = UserDBUtil.getPassengerDetails(cusId);
							// request.setAttribute("passeDetails", passengerDetails);
							 RequestDispatcher dis = request.getRequestDispatcher("BookingSuccess.jsp");
							 dis.forward(request, response);
						 }
						 
						 else {
						     // if the delete success process unsuccess the user will navigates to useraccount page with the account details
							 List<Passenger> passengerDetails = UserDBUtil.getPassengerDetails(cusId);
							 request.setAttribute("passeDetails", passengerDetails);
							 RequestDispatcher dis = request.getRequestDispatcher("UserAccount.jsp");
							 dis.forward(request, response);
						 }
		
	}

}
