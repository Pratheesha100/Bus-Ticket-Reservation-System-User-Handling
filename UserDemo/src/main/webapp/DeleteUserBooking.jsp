<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Delete Booking</title>
<style>
	body{
	         display:flex;
	         justify-content:center;
	         min-height:100vh;
	         /*background-color:;*/
			 background-image: url('image/bg5.jpg');
			 color: black;
	}
	.wrapper{
	        zoom: 0.9;
	        font-family: Poppins,sans-serif;
	        margin-top:100px;
		    width:420px;
			height:600px;
		    background:rgba(255, 255, 255, 0.45);
		    color:black;
		    border:none;
			/*border: 2px solid #3597D4; */
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
            border-height: 9px;
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
   // get the parameter values of the current details from the UserBooking.jsp and assign it to variables
    String bookingId = request.getParameter("bookingId");
    String cusId = request.getParameter("cusId");  
    String cusName = request.getParameter("cusName");  
    String quantity = request.getParameter("quantity");  
    String email = request.getParameter("email");  
    String phone = request.getParameter("phone");  
    String destination = request.getParameter("destination");
    String departure = request.getParameter("departure");
    String date = request.getParameter("date");
    String price = request.getParameter("price");
   %>
   
   <div class="wrapper">
      <div class="form-container">
      <!--  Show the current details of the booking -->
        <form action="DeleteBooking" method="post">
        <table>
        <tr>
			<td>Booking ID</td>
			<td><input type="text" name="bookingId" value="<%= bookingId %>" readonly></td>
		</tr>
		 <tr>
			<td>Passenger Name</td>
			<td><input type="text" name="cusName" value="<%= cusName %>" readonly></td>
		</tr>
		 <tr>
			<td>Ticket Quantity</td>
			<td><input type="text" name="quantity" value="<%= quantity %>" readonly></td>
		</tr>
		<tr>
		    <td>Email</td>
		    <td><input type="text" name="email" value="<%= email %>" readonly></td>
	    </tr>
	    <tr>
		    <td>Phone number</td>
		    <td><input type="text" name="phone" value="<%= phone %>" readonly></td>
	    </tr>
	    <tr>
		    <td>Destination</td>
		    <td><input type="text" name="destination" value="<%= destination %>" readonly></td>
	    </tr>
	    <tr>
		    <td>Departure </td>
		    <td><input type="text" name="departure" value="<%= departure %>" readonly></td>
	    </tr>
	    <tr>
		   <td>Date</td>
		   <td><input type="text" name="date" value="<%= date %>" readonly></td>
	    </tr>
	    <tr>
		   <td>Price</td>
		   <td><input type="text" name="price" value="<%= price %>" readonly></td>
	    </tr>		
	    </table>
	    <input class="button" type="submit" name="submit" value="Delete Details">
        </form>
     </div>
  </div>

</body>
</html>