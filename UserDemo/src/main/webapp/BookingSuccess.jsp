<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success</title>
</head>
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
	        margin-top:145px;
	        padding-top: 36px;
            padding-right: 50px;
            padding-left: 50px;
            padding-bottom:20px;
		    width:370px;
			height:375px;
		    background:rgba(255, 255, 255, 0.9);
		    color:black;
			border: /*1.3px solid #A9E1EF*/ none; 
            border-radius: 15px;
            box-shadow:rgba(0, 0, 0, 0.19) 0px 4px 12px;
            text-align: center;
	} 
	.detail-form {
            width: 300px;
			height: 250px;
            padding: 0px;
            margin-left: 30px;
            border-radius: 10px;
            background-color:transparent;
        }
    input[type="text"], input[type="password"] {
            font-size:12px;
            width: 80%;
            padding: 9px;
			margin: 10px;
            border: 1.5px solid #ccc;
            border-radius: 12px;
            box-sizing: border-box;
        }
        button {
            width: 65%;
            padding: 10px;
			margin:5px;
            background-color: #53C3DF;
            color: #fff;
            border:none ;
            border-radius: 13px;
            cursor: pointer;
			font size:20px;
        }
        button:hover {
            background-color:#30B7D9;
			}
            
</style>
<body>
   <div class="wrapper">
     <br><br><h3> You succssfully deleted the booking!</h3>
     <h4> Please enter these details to navigate to the user account</h4>
     <div class ="detail-form"> 
         <form action="pass" method="post">
            <input type="text" id="username" name="username" placeholder="Username"><br>
             <input type="password" id="password" name="password" placeholder="Password"><br>
            <button type="submit">Enter</button>
        </form>
        </div>
   </div>
</body>
</html>