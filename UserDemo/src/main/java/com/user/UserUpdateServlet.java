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
 * Servlet implementation class UserUpdateServlet
 */
@WebServlet("/UserUpdateServlet")
public class UserUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// get the details from the UpdateUserAccount.jsp and assign it to variables
		String id = request.getParameter("id");
		String fname =request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean isTrue;
		// send the user entered details to the DButil class and get the boolean value and assign it to the isTrue variable
		isTrue = UserDBUtil.updateUser(id, fname, lname, email, phone, address, username, password);
		 
		 if(isTrue == true) {
			 // get the updated details and set it to the user account page
			 List<Passenger> passengerDetails = UserDBUtil.getPassengerDetails(id);
			 request.setAttribute("passeDetails", passengerDetails);
			 RequestDispatcher dis = request.getRequestDispatcher("UserAccount.jsp");
			 dis.forward(request, response);
		 }
		 
		 else {
			 // go to the user account page with the previous data
			 List<Passenger> passengerDetails = UserDBUtil.getPassengerDetails(id);
			 request.setAttribute("passeDetails", passengerDetails);
			 RequestDispatcher dis = request.getRequestDispatcher("UserAccount.jsp");
			 dis.forward(request, response);
		 }
	}

}
