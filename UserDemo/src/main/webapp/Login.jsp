<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <script>
    function validate() {
    	<!--get the parameters from the form-->
    	 var username = document.getElementById("username");
    	 var password = document.getElementById("password");
            if (username.value.trim() == "" || password.value.trim() == "") 
            {
                alert("Please fill the  all required fields");
                highlightEmptyFields();
                return false;
            }
            else{
            	return true;
            }
        }
    function highlightEmptyFields() {
            var inputs = document.querySelectorAll('input[type="text"], input[type="password"]');
            inputs.forEach(function(input) {
            if (input.value === "") {
            input.style.border = "solid 1.97px red";
            } else {
            input.style.borderColor = "";
            }
        });
    }
    </script>
    <style>
 *{
	
	         padding: 0;
	         scroll-behavior: smooth;
 }
 body{
	         display:flex;
	         justify-content:center;
	         min-height:100vh;
	         background-image: linear-gradient(to bottom, #EBF9FB , #E9E0F5);
 }
 .wrapper{
	        zoom:0.9;
	        font-family: "Lora", serif;
	        margin-top:50px;
	        padding:5px;
		    width:880px;
			height:670px;
		    background:rgba(255, 255, 255, 0.9);
		    color:black;
			border: 3px solid #EEF7FC; 
            border-radius: 25px;
            box-shadow:rgba(0, 0, 0, 0.14) 0px 4px 10px;
            justify-content:space-between;
} 
 .container {
            display: flex;
            height: 100%;
			margin:0;
}
 .left-side {
            flex: 1; 
            background-image: url('image/bg_n.jpg');
            background-size: 100% auto;
			background-repeat: no-repeat;
			background-position: 40% 50%;
			left:5%;
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
        }
 .gradient-overlay {
            position: absolute;
            left: 0;
            top: 0;
            height: 100%;
            width:100%;
            background: linear-gradient(to right, rgba(255,255,250,0.2) 0%, rgba(255,255,250,0.4) 100%);
   }
 .logo {
		    width: 350px; 
            height: 110px;
            position: absolute;
            top: 60%;
            left: 53%;
            transform: translate(-50%, -50%);
            padding: 6px; 
			z-index: 2;
  }
 .right-side {
            flex: 1;
            padding: 20px;
			display: flex;
			margin-top:0px;
            justify-content: center;
            align-items: center;
            padding: 20px;
            background-size: cover;
            z-index: 0; 
   }
 .login-form {
		    zoom: 0.92;
		    margitn-top:0px;
		    margin-right:0;
            width: 400px;
			height: 553px;
            padding: 15px;
            border-radius: 10px;
            background-color: #fff;
			position: relative;
            z-index: 1; 
  }
 .social .signup-link {
            color:#9fdcfc;
            text-decoration: underline;
            cursor: pointer;
			font-weight:549.5;
			font-size:20px;
 }
 .social .signup-link:hover{
		    color:#0b95de;
 }
 .social{
		font-size: 15px;
}
 .social-icons {
            display: flex;
            justify-content: center;
 }
 .social-icons img {
            width: 27.5x; 
            height: 27.5px;
            margin: 0 5px;
			cursor: pointer;
 }
 .social-icons img:hover {
           filter: brightness(0.9); 
           transform: scale(1.2);
			
 }
 .input-container {
            margin-bottom: 20px;
 }
 select, input[type="text"], input[type="password"] {
		    font-family: "Lora", serif;
            width: 80%;
            padding: 8.3px;
			margin: 10px;
            border: 1.7px solid #ccc;
            border-radius: 13px;
            box-sizing: border-box;
			font-size:19px;
  }
 #op {
            background-color: #f0f0f0;
            color: #333;
            padding: 30px;
  }
 button {
            width: 65%;
            padding: 10px;
			margin:10px;
            background-color: #6faadb;
            color: #fff;
            border:none ;
            border-radius: 20px;
            cursor: pointer;
			font-family: "Lora", serif;
			font-size:19px;
  }
 button:hover {
            background-color:#a876b8;
			}
 .option{
		    padding: 30px;
  }
		
</style>
</head>
<body>
<div class="wrapper">
    <div class="container">
    <div class="left-side">
	<div class="gradient-overlay">
        <img class="logo" src="image/logo.jpg" alt="Logo">
    </div></div>
    <div class="right-side">
	<div class="login-form" align ="center">
        <h1 style="font-size:42px;">Sign in</h1>
        <form onsubmit="return validate()" action="login" method="post">
            <select name="usertype" id="inp" required>
            <option class="option" id="op" value="Passenger">Passenger</option>
            <option class="option" id="op" value="Admin">Admin</option>
           </select>
            <input type="text" id="username" name="username" placeholder="Username"><br>
            <input type="password" id="password" name="password" placeholder="Password"><br><br>
            <button type="submit">Login</button>
			<div class="social">
			<p style="font-size:18px;">Don't have an account? <a href="CreateAccount.jsp" class="signup-link">Sign up</a></p>
            <p style="font-size:18px; margin-top:2px;">Or sign up with:</p>
			</div>
            <div class="social-icons">
                <img src="image/facebook.png" alt="Facebook">
                <img src="image/google.png" alt="Google">
                <img src="image/whatsapp.png" alt="Whatsapp]">
            </div>
        </form>
    </div>
</div>
</div>
   </div> </body>
 </html>