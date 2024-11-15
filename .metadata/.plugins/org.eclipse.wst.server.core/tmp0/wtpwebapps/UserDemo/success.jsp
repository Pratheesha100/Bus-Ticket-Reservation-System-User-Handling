<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>successfully created</title>
<style>
   body{
	         display:flex;
	         justify-content:center;
	         min-height:100vh;
	         background-color:#CBE1F6;
	         background-image: linear-gradient(to bottom, #f5feff , #bdf2ff);
	}
	.wrapper{
	        font-family: Poppins,sans-serif;
	        margin-top:157px;
	        padding-top: 50px;
            padding-right: 50px;
            padding-left: 50px;
		    width:370px;
			height:370px;
		    background:rgba(255, 255, 255, 0.9);
		    color:black;
			border: /*1px solid #A9E1EF*/ none; 
            border-radius: 15px;
            box-shadow:rgba(0, 0, 0, 0.19) 0px 4px 12px;
            text-align: center;
	} 
	.signin-link{
	        text-decoration: none;
            font-size: 20px;
            font-weight: bold;
            color: #74AFE7;
	}
	.signin-link:hover{
	 color:#2173C0;
	}
</style>
</head>
<body>
   <div class="wrapper">
   <br><br><br><br>
   <h3> Your Account Creation succeed! Please sign into the web site to navigate to the user account.</h3>
   <br><br><a href="Login.jsp" class="signin-link">Sign in</a>
   </div>
</body>
</html> 