<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <script>
    function validate() {
    	<!--Check if required fields are empty-->
    	var fname = document.getElementById("Fname");
    	var lname = document.getElementById("Lname");
    	var email = document.getElementById("email");
    	var address = document.getElementById("address");
    	var phone = document.getElementById("phone");
    	var username = document.getElementById("username");
    	var password = document.getElementById("password");
        var confirmPassword= document.getElementById("repass");

        <!--Check if passwords match-->
        if(fname.value == "" || lname.value == "" || email.value.trim() == "" || address.value.trim() == "" ||
          phone.value.trim() == "" || username.value.trim() == "" || password.value.trim() == "" || confirmPassword.value.trim() == ""){
        	alert("Please fill all the fields accordingly")
        	highlightEmptyFields();
        	return false;
        }
        
        if (password.value !== confirmPassword.value) {
            alert("Passwords do not match.");
            document.getElementById("password").style.border = "solid 2px red";
            document.getElementById("repass").style.border = "solid 2px red";
            return false;
        }
        
        
        var emailPattern = /^[a-zA-Z0-9._%+-]+@gmail\.com$/;
        if (!emailPattern.test(email.value.trim())) {
            alert("Please enter a valid Gmail address.");
            email.style.border = "solid 2px red";
            return false;
        } else {
            email.style.border = "";
        }
        
        var phonePattern = /^\d{10}$/;
        if (!phonePattern.test(phone.value.trim())) {
            alert("Please enter a valid 10-digit contact number.");
            phone.style.border = "solid 2px red";
            return false;
        } else {
            phone.style.border = "";
        }


          return true; 
        
        }
    
    function highlightEmptyFields() {
        var inputs = document.querySelectorAll('input[type="text"], input[type="password"]');
        inputs.forEach(function(input) {
            if (input.value === "") {
                input.style.border = "solid 2.2px red";
            } else {
                input.style.borderColor = "";
            }
        });
    }
  </script>
 <style>
    
  body{
	         display:flex;
	         justify-content:center;
	         min-height:100vh;
	         background-image: linear-gradient(to bottom, #EBF9FB , #E9E0F5);
	}
  .wrapper{
	        zoom:0.9;
	        font-family: "Lora", serif;
	        margin-top:45px;
	        padding:5px;
		    width:899px;
			height:700px;
		    background:rgba(255, 255, 255, 0.9);
		    color:black;
			border: 3px solid #EEF7FC; 
            border-radius: 25px;
            box-shadow:rgba(0, 0, 0, 0.14) 0px 4px 11px;
            justify-content:space-between;
	} 
  .container {
            display: flex;
            height: 100%;
			margin:0;
        }
  .left-side {
            flex: 1;
			display: flex;
            justify-content: center;
            align-items: center;
            padding:0px;
            background-size: cover;
            z-index: 0; 
        }
  .signup-form {
			zoom: 0.83;
            width: 460px;
			height: 700px;
            padding: 0px;
            border-radius: 10px;
            background-color: #fff;
			position: relative; 
            z-index: 1; 
        }
  h1 {
            font-size: 50px;
            margin-bottom: 10px;
			margin-top:0;
        }
 	
 .signin-link {
            color: #B7ADEB;
            text-decoration: underline;
            cursor: pointer;
			font-weight:549.5;
			font-size:23px;
        }
 .signin-link:hover{
		    color:#9b5fad;
		}
 /*.signin-link a :hover{
		    color:#AD73BF;
 }*/
  .input-container {
            align-items: center;
            margin-bottom: 20px;
        }
  input[type="text"], input[type="password"] {
            width: 80%;
			font-family: "Lora", serif;
			font-size:19px;
            padding: 10px;
			margin: 10px;
            border: 2px solid #ccc;
            border-radius: 12px;
            box-sizing: border-box;
        }
  .button {
            width: 65%;
            padding: 10px;
			margin:20px;
            background-color:#A677A5;
            color: #fff;
            border:none ;
            border-radius: 20px;
            cursor: pointer;
			font-size:19px;
			font-family: "Lora", serif;
        }
  .button:hover{
            background-color:#55C4DD;
			}
  .right-side {
			z-index: 9;
            flex: 1;
            background-image: url('image/bg_n_s-removebg.png');
			background-size: 92% auto;
			background-repeat: no-repeat;
			background-position: 70% 35%;
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
        }
  .gradient-overlay {
			z-index : 1;
			zoom: 0.9;
            position: absolute;
            left: 0;
            top: 0;
            height: 100%;
            width:100%; 
			/*
            background: linear-gradient(to right, rgba(255,255,250,0.5) 0%, rgba(255,255,250,0.6) 100%);
			*/
        }
  .logo {
            width: 340px; 
            height: 100px; 
            position: absolute;
            top: 67%;
            left: 35%;
            transform: translate(-50%, -50%);
            padding: 6px; 
			z-index: 2; 
        }
		
        
    </style>
</head>
<body>
<div class="wrapper">
<div class="container">
 <div class="left-side">
	<div class="signup-form" align ="center">
        <h1>Sign up</h1>
        <form onsubmit="return validate()" action="insert" method="post">
		    <input type="text" id ="Fname" name="Fname" placeholder="First name">
            <input type="text" id="Lname" name="Lname" placeholder="Last name">
			<input type="text" id="email" name="email" placeholder="Email">
			<input type="text" id="address" name="address" placeholder="Address">
			<input type="text" id="phone" name="phone" placeholder="Contact">
			<input type="text" id="username" name="username" placeholder="Username">
            <input type="password" id="password" name="password" placeholder="Password">
			<input type="password" id="repass" name="repass" placeholder="Confirm Password">
            <input type="submit" class="button" name="submit" value="Create Account">
			<div class="sign-in">
			<p style="font-size:19.9px;">Already have an account? <a href="Login.jsp" class="signin-link">Sign in</a></p>
			</div>
        </form>
    </div>
  </div>
    <div class="right-side">
	 <div class="gradient-overlay"></div>
     <img class="logo" src="image/logo.jpg" alt="Logo">
    </div>
</div>
</div>
  </body>
 </html>