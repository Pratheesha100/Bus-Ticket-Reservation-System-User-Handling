package com.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Servlet implementation class UserInsertServlet

@WebServlet("/UserInsertServlet")
public class UserInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		       //store the entered details into variables
				String Fname = request.getParameter("Fname");
				String Lname = request.getParameter("Lname");
				String email = request.getParameter("email");
				String address = request.getParameter("address");
				String phone = request.getParameter("phone");
				String username = request.getParameter("username");
				String password = request.getParameter("password");
				
				boolean isTrue;
				// pass the details to the DButil class 
				isTrue = UserDBUtil.insertPassenger( Fname, Lname, email,address,phone,username, password );
				if(isTrue == true) {
					// navigates to the success jsp page
					RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
					dis.forward(request, response);
				}
				else {
					// navigates to the unsuccessful jsp page
					RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
					dis2.forward(request, response);
				}
		}

}
