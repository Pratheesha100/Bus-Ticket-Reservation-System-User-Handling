<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Account</title>
<style>
	body{
	         display:flex;
	         justify-content:center;
	         min-height:100vh;
	        /* background-color:#1F9583;*/
			 background-image: url('image/bg5.jpg');
	}
	.wrapper{
	        zoom: 0.9;
	        font-family: Poppins,sans-serif;
	        margin-top:140px;
		    width:420px;
			height:550px;
		    background:rgba(255, 255, 255, 0.45);
		    color:black;
			border:none; 
            border-radius: 15px;
            box-shadow:rgba(0, 0, 0, 0.19) 0px 4px 12px;
            text-align: center;
	} 
	.form-container {
	       padding: 20px;
    }
	
    input[type="text"], input[type="password"], button {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1.5px solid #ccc;
			font-size: 17px;
            border-radius: 25px;
            outline: none;
			background: transparent;
        }
	input::placeholder{
	       color:black;
	}
    .button {
	       font-weight:1;
	       margin-top: 8px;
           background-color: rgba(255, 255, 255, 0.7);
            color: black;
            border: 1.6px solid #ccc;
            border-radius: 25px;
            padding: 12px 20px;
            cursor: pointer;
            transition: background-color 0.3s ease, border-color 0.3s ease;
        }
    .button:hover {
            background-color:#ABD4ED;
        }
	</style>
</head>
<body>

  <%  
   // get the parameter values of the current details from the UpdateUserAccount and assign it to variables
    String id = request.getParameter("id");
    String fname = request.getParameter("fname");  
    String lname = request.getParameter("lname");  
    String email = request.getParameter("email");  
    String address = request.getParameter("address");  
    String phone = request.getParameter("phone");  
    String username = request.getParameter("username");
    String password = request.getParameter("password");
   %>
   
   <div class="wrapper">
      <div class="form-container">
      <!--  Show the current details of the Passenger -->
        <form action="delete" method="post">
        <table>
		<tr>
			<td>Customer ID</td>
			<td><input type="text" name="id" value="<%= id %>" readonly></td>
		</tr>
		 <tr>
			<td>First Name</td>
			<td><input type="text" name="fname" value="<%= fname %>" readonly></td>
		</tr>
		 <tr>
			<td>Last Name</td>
			<td><input type="text" name="lname" value="<%= lname %>" readonly></td>
		</tr>
		<tr>
		    <td>Email</td>
		    <td><input type="text" name="email" value="<%= email %>" readonly></td>
	    </tr>
	    <tr>
		    <td>Address</td>
		    <td><input type="text" name="address" value="<%= address %>" readonly></td>
	    </tr>
	    <tr>
		    <td>Phone number</td>
		    <td><input type="text" name="phone" value="<%= phone %>" readonly></td>
	    </tr>
	    <tr>
		    <td>User name</td>
		    <td><input type="text" name="username" value="<%= username %>" readonly></td>
	    </tr>
	    <tr>
		   <td>Password</td>
		   <td><input type="password" name="password" value="<%= password %>" readonly></td>
	    </tr>		
	    </table>
	    <input class="button" type="submit" name="submit" value="Delete Details">
        
        </form>
     </div>
  </div>

</body>
</html>