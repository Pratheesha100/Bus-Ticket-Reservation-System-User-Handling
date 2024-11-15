<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%
      //Check if session exists and username attribute is set
      if(session.getAttribute("username") == null) {
      response.sendRedirect("Login.jsp");
      }
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Dashboard Page</title>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border box;
}
#logo
{
	height: 50px;
	width: auto;
}

#top_nav_container_main
{
	top: 0;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 15px;
	background-color: #ebfbfa;
	background-image: linear-gradient(to right, #EBFBFA , #EBF4FB);
	z-index: 99;
    width: 100%;
    height: 54px;
    position: fixed;
}

#nav_links_container a
{
	text-decoration: none;
    padding: 8px;
    margin: 2px;
    color: black;
}

#nav_links_container
{
	padding-right: 21px;
}

#nav_links_container a:hover
{
    /*color: #0e86d4;*/
    /*font-weight: bold;*/
    transition: transform 0.3s;
    background-color: hsl(176, 67%, 95%, 0.66);
    border-radius: 7px;
}

.hov_border
{
    position: relative; 
    /*width: 100px;
    height: 30px;
    padding: 0;*/
    border: none;
}

.hov_border::before {
    content: "";
    position: absolute;
    background-color: #F2EBFB;
    width: 0;
    height: 2.6px;
    top: 31px;
    left: 0;
    /*z-index: -1;*/
    transition: width 1s;
}

.hov_border:hover::before {
    width: 100%;
}

/*---------------------- footer ------------------------*/
#footer_container_main
{
	position: relative;
	bottom: 0;
	width: 100%;
    display: flex;
    background-color: #EBF4FB;
    background-image: linear-gradient(to right, #EBF4FB , #F2EBFB);
    flex-direction: column;
    align-items: center;
}

.footer_sections
{
	/*background-color: #EBF4FB;*/
}

#footer_top
{
	width: 100%;
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    flex-wrap: nowrap;
    align-items: center;
    padding-top: 20px;
}
.footer_sections a 
{
	text-decoration: none;
	color: black;
	margin: 5px;
    display: inline-block;
}

#footer_section1
{
	padding-left: 30px;
}

#footer_section3 
{
	padding-right: 30px;
}

#social_container a 
{
	text-decoration: none;
}

#social_container img
{
	width: 30px;
	height: auto;
}

#footer_bottom
{
	text-align: center;
	padding-bottom: 8px;
}

/*---------------------- sidebar ------------------------*/
#main_content_container {
    display: flex;
    margin-top: 54px;
	height:1400px;
}
#sidebar {
    margin-top: 10px;
    padding-left: 20px;
    border:none;
	border-radius: 15px;
    width: 16%;
    background-color: #EBF9FB;
    background-image: linear-gradient(to bottom, #EBF9FB , #E9E0F5);
}
#sidebar a {
	text-decoration: none;
}

li {
	list-style: none;
}

#sidebar.hide {
	width: 60px;
}
#sidebar .user {
    font-family: 'Poppins', sans-serif;
    font-size:20px;
    font-weight:300;
    height: 56px;
    display: flex;
    align-items: center;
    top: 2px;
    left: 0;
    background-color: #EBF9FB;
    background-image: linear-gradient(to right, #EBF9FB , #F4F0FA);
    z-index:2;
    padding: 20px 20px; 
    box-sizing: border-box; 
    border-bottom: 2.8px solid #0BB4E2; 
}

#sidebar .user .bx {
    width: 100%;
    display: flex;
	margin-left: 5px;
    justify-content: center;
    margin-right: 5px; 
}

#sidebar .user i {
    /*color: #007bff; */
}

#sidebar .side-menu {
	width: 100%;
	margin-top: 48px;
}
#sidebar .side-menu li {
	height: 48px;
	background: transparent;
	margin-left: 6px;
	border-radius: 48px 0 0 48px;
	border-bottom: 2.8px solid #CBEFF6; 
	padding: 4px;
}
#sidebar .side-menu li.active {
    color:#CFE8FF;
	/*border:3px solid #EBF9FB;*/
	background:#FFF;
	position: relative;
	z-index:2;
}
#sidebar .side-menu li.active::before {
	content: '';
	position: absolute;
	width: 40px;
	height: 40px;
	border-radius: 50%;
	top: -40px;
	right: 0;
	box-shadow: 20px 20px 0 #FFF;
	z-index:1;
}
#sidebar .side-menu li.active::after {
	content: '';
	position: absolute;
	width: 40px;
	height: 40px;
	border-radius: 50%;
	bottom: -40px;
	right: 0;
	box-shadow: 20px -20px 0 #FFF;
	z-index:1;
}

#sidebar .side-menu li a {
    font-family: 'Poppins', sans-serif;
	width: 100%;
	height: 100%;
	background:transparent;
	display: flex;
	align-items: center;
	border-radius: 48px;
	font-size: 16px;
	color: #342E37;
	white-space: nowrap;
	overflow-x: hidden;
}

#sidebar .side-menu.top li a:hover {
	color:#0BB4E2;
}
#sidebar .side-menu.top li.active a {
	color: #0BB4E2;
}
#sidebar.hide .side-menu li a {
	width: calc(48px - (4px * 2));
	transition: width .3s ease;
}
#sidebar .side-menu li a.logout {
	color:#DB504A;
}
#sidebar .side-menu li a.logout:hover {
	color:#0BB4E2;
}
#sidebar .side-menu li a.setting:hover{
	color:#0BB4E2;
}

#sidebar .side-menu li a .bx {
	min-width: calc(60px  - ((4px + 6px) * 2));
	display: flex;
	justify-content: center;
}
#sidebar.hide ~ #content {
	width: calc(100% - 60px);
	left: 60px;
}

#space{
    margin-top:200px;
}
/*-------------------------------content----------------------------------*/
#content {
    flex: 1;
    background-color: #FFF;
    padding: 20px;
}
#content nav {
	height: 56px;
	background: #F9F9F9
	padding: 0 24px;
	display: flex;
	align-items: center;
	grid-gap: 24px;
	font-family: var(--lato);
	position: sticky;
	top: 0;
	left: 0;
	z-index: 1;
}
#content nav::before {
	content: '';
	position: absolute;
	width: 40px;
	height: 40px;
	bottom: -40px;
	left: 0;
	border-radius: 50%;
	box-shadow: -20px -20px 0 #F9F9F9;
}
#content nav a {
	color:#342E37;
}
#content nav .bx.bx-menu {
	cursor: pointer;
	color:#342E37;
}
#content nav .nav-link {
	font-size: 16px;
	transition: .3s ease;
}
#content nav .nav-link:hover {
	color:#0BB4E2;
}
#content nav form {
	max-width: 400px;
	width: 100%;
	margin-right: auto;
}
#content nav form .form-input {
	display: flex;
	align-items: center;
	height: 36px;
}
#content nav form .form-input input {
	flex-grow: 1;
	padding: 0 16px;
	height: 100%;
	border: none;
	background: #eee;
	border-radius: 36px 0 0 36px;
	outline: none;
	width: 100%;
	color:#342E37;;
}
#content nav form .form-input button {
	width: 36px;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	background: #5EE8C8;
	color: #F9F9F9;
	font-size: 18px;
	border: none;
	outline: none;
	border-radius: 0 36px 36px 0;
	cursor: pointer;
}
#content nav .notification {
	font-size: 20px;
	position: relative;
}
#content nav .notification .num {
	position: absolute;
	top: -6px;
	right: -6px;
	width: 20px;
	height: 20px;
	border-radius: 50%;
	border: 2px solid #F9F9F9;
	background: #DB504A;
	color: #F9F9F9;
	font-weight: 700;
	font-size: 12px;
	display: flex;
	justify-content: center;
	align-items: center;
}

#content nav .switch-mode {
	display: block;
	min-width: 50px;
	height: 25px;
	border-radius: 25px;
	background:#eee;
	cursor: pointer;
	position: relative;
}
#content nav .switch-mode::before {
	content: '';
	position: absolute;
	top: 2px;
	left: 2px;
	bottom: 2px;
	width: calc(25px - 4px);
	background:#5EE8C8;
	border-radius: 50%;
	transition: all .3s ease;
}

 .welcome-label {
    font-family: Comic sans ms;
    justify-content: center;
	width:100%;
	margin-top: 20px;
	margin-left: 0;
    padding: 7.2px;
    background-color:transparent;
    border-bottom: 2.8px solid #0BB4E2; 
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    display: flex;
}
.user-icon{
    display:flex;
    width: 70px;
	height:70px;
}
#content{
 margin:0;

}
/*----------------------------------------------forms-----------------------------------*/
#content .form-section{
display:flex;
}
.form-container1 {
    font-family:'Lato', sans-serif;
    width: 30%; 
    border: 2px solid  #e1f7fa;
    border-radius: 20px;
    padding: 20px;
    margin-top: 80px;
	margin-left:50px;
	margin-right:45px;
	padding-right:35px;
    height: 30%;
	background-color: #EEFAFC;
	background-image: linear-gradient(to bottom, #e1f7fa , #ebf8fa);
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.135);
}
.form-container2 {
    font-family:'Lato', sans-serif;
    width: 40%;
    border: 2px solid #e1f7fa;
    border-radius: 20px;
    padding: 20px;
    padding-right:35px;
    margin-top: 80px;
	margin-left:80px;
    height: 50%;
	background-color: #EEFAFC;
	background-image: linear-gradient(to bottom, #e1f7fa , #ebf8fa);
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.135);
	
}
.form-input {
    margin-bottom: 15px;
}

.form-input label {
    display: block;
    margin-bottom: 5px;
}

.form-input input {
    width: calc(100% - 10px);
    padding: 10px;
    border: 2px solid #EEFAFC;
    border-radius: 10px;
}

.form-buttons1 {
    display: flex;
    justify-content:center;
	margin-top:50px;
	margin-bottom:20px;
}
.form-buttons2 {
    display: flex;
    justify-content:right;
	margin-top:20px;
	margin-bottom:20px;
}
.form-buttons1 button {
    padding: 10px 20px;
    border: none;
    border-radius: 10px;
    cursor: pointer;
	background-color: #CBEFF6;
}
.update-btn, .delete-btn {
    padding: 10px 20px;
    border: none;
    border-radius: 10px;
    cursor: pointer;
	background-color:#CBEFF6;
}
.usericon {
    margin-top:25px;
    border: 3px dotted #ccc;
    width: 140px;
    height:146px;
	margin-left:110px;
}
.upload-btn:hover, .update-btn:hover, .delete-btn:hover {
    background-color: #87E8D1;
    color: #fff;
}


</style>
</head>
<body>
    <div id="top_nav_container_main">
		<div id="logo_container">
			<a href="index.html">
				<img src="image/logo.jpg" alt="logo" id="logo">
			</a>
		</div>
		
		<div id="nav_links_container">
			<a href="#help" class="hov_border ">Help</a>
			<a href="CreateAccount.jsp" class="hov_border ">Sign up</a>
			<a href="Login.jsp" class="hov_border ">Sign in</a>
		</div>
	</div>
	<br>
	<div id="main_content_container">
        
		<section id="sidebar">
		<div class="user"> 
			<img src="image/user1.png" alt="User Icon" style="margin-left:3px; margin-right:10px;width: 40px; height: 40px;">
				<c:forEach var="ps" items="${passeDetails}">
				<c:set var="fname" value="${ps.fname}"/>
	            <c:set var="lname" value="${ps.lname}"/>
	            <c:set var="username" value="${ps.username}"/>
				</c:forEach>
				<p>${fname}<br>${lname}</p>
				<c:url value="UserBooking.jsp" var="booking">
				<c:param name="fname" value="${fname}"/>
	            <c:param name="lname" value="${lname}"/>
	            <c:param name="username" value="${username}"/>
	            </c:url>
				 
		</div>
		<ul class="side-menu top">
			<li class="active">
				<a href="#">
					<i><img src="image/user2.png" alt="Profile Icon" style="margin-left:10px; margin-right:10px; width: 27px; height: 27px;"></i>
					<span class="text">Dashboard</span>
				</a>
			</li>
			<li>
				<a href="${booking}" >
					<i><img src="image/browser.png" alt="Booking Icon" style="margin-left:10px; margin-right:10px; width: 28px; height: 27px;"></i>
					<span class="text">My Bookings</span>
				</a>
			<li>
				<a href="#">
					<i><img src="image/message2.png" alt="Message Icon" style="margin-left:10px; margin-right:10px; width: 27px; height: 27px;"></i>
					<span class="text">Messages</span>
				</a>
			</li>
		</ul>
		<ul class="side-menu">
			<li>
				<a href="#" class="setting">
					<i><img src="image/set.png" alt="Message Icon" style="margin-left:10px; margin-right:10px; width: 27px; height: 27px;"></i>
					<span class="text">Settings</span>
				</a>
			</li>
			<li>
				<a href="LogoutServlet" class="logout">
					<i><img src="image/exit.png" alt="Message Icon" style="margin-left:10px; margin-right:10px; width: 27px; height: 27px;"></i>
					<span class="text">Logout</span>
				</a>
			</li>
		</ul>
	    </section>
		
		<section id="content">
		    <nav>
			<i class='bx bx-menu' ></i>
			   <form action="#">
				<div class="form-input">
					<input type="search" placeholder="Search...">
					<button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
				</div>
			    </form>
				<input type="checkbox" id="switch-mode" hidden>
				<label for="switch-mode" class="switch-mode"></label>
				<a href="#" class="notification">
					<i class='bx bxs-bell' ></i>
					<span class="num">8</span>
				</a>
				<a href="#" class="profile">
		 		</a>
		    </nav>
		
            <div class="welcome-label">
               <img class="user-icon" src="image/user2.png" alt="User Icon">
              <div>
                <h2 align="center" style="font-size:18px;font-weight: 400;margin-top:20px; margin-left:15px;">Thank you for visiting our web site.</h2>
              </div>
            </div>
		
		    <section class="form-section">
		    <div class="form-container1">
                 <form action="#" class="profile-image-form">
                   <div class="form-input">
                   <!-- User icon image placeholder -->
                   <img class="usericon" src="image/woman.png" alt="User Icon">
                   </div>
				   <div class="form-buttons1">
                   <button type="submit" class="upload-btn">Upload Your Image Here</button>
				   </div>
                </form>
             </div>

           <div class="form-container2">
                <form action="#" class="user-details-form">
				  
				   <!-- assigning the new updated user details to new variables-->
	               <c:forEach var="ps" items="${passeDetails}"> <!--get the values of the passenger list-->
	               <c:set var="id" value="${ps.getId()}"/>
	               <c:set var="fname" value="${ps.getFname()}"/>
	               <c:set var="lname" value="${ps.getLname()}"/>
	               <c:set var="email" value="${ps.getEmail()}"/>
	               <c:set var="address" value="${ps.getAddress()}"/>
	               <c:set var="phone" value="${ps.getPhone()}"/>
	               <c:set var="username" value="${ps.getUsername()}"/>
	               <c:set var="password" value="${ps.getPassword()}"/>
	       
	       
	               <%  //Retrieve parameters from the UpdateUserAccount.jsp
                   String id = request.getParameter("id");
                   String fname = request.getParameter("fname");
                   String lname = request.getParameter("lname");
                   String email = request.getParameter("email");
                   String address = request.getParameter("address");
                   String phone = request.getParameter("phone");
                   String username = request.getParameter("username");
                   String password = request.getParameter("password"); 
                   %>
	    
				   <!-- showing the user details using a form -->
                <div class="form-input">
                  <label for="name">Name:</label>
                  <input type="text" id="name" name="name" readonly value="${ps.getFname()} ${ps.getLname()}">
                </div>
                <div class="form-input">
                  <label for="address">Email:</label>
                  <input type="text" id="address" name="address" readonly value="${ps.getEmail()}">
                </div>
                <div class="form-input">
                  <label for="email">Address:</label>
                  <input type="email" id="email" name="email" readonly value="${ps.getAddress()}">
                </div>
                <div class="form-input">
                  <label for="contact">Contact:</label>
                  <input type="text" id="contact" name="contact" readonly value="${ps.getPhone()}">
                </div>
				</c:forEach>
				<!-- passing the current user profile values to the UpdateUserAccount.jsp -->
	            <c:url value="UpdateUserAccount.jsp" var="UpdateUser">
	            <!--  define the moving details to new variables -->
	            <c:param name="id" value="${id}"/>
	            <c:param name="fname" value="${fname}"/>
	            <c:param name="lname" value="${lname}"/>
                <c:param name="email" value="${email}"/>
                <c:param name="address" value="${address}"/>
                <c:param name="phone" value="${phone}"/>
                <c:param name="username" value="${username}"/>
                <c:param name="password" value="${password}"/>
	            </c:url>
				<p style="margin-top:10px; text-align:right;" >Do you want to update the details?</p>
                <div class="form-buttons2">
				<a href="${UpdateUser}">
                  <input type="button" class="update-btn" value="Update Details"> </a>
				</div> 
                  <!-- passing the current user profile values to the UpdateUserAccount.jsp -->
	              <c:url value="DeleteUserAccount.jsp" var="DeleteUser">
	              <!--  define the moving details to new variables -->
	              <c:param name="id" value="${id}"/>
	              <c:param name="fname" value="${fname}"/>
	              <c:param name="lname" value="${lname}"/>
                  <c:param name="email" value="${email}"/>
                  <c:param name="address" value="${address}"/>
                  <c:param name="phone" value="${phone}"/>
                  <c:param name="username" value="${username}"/>
                  <c:param name="password" value="${password}"/>
	              </c:url>			
				<p style="margin-top:10px; text-align:right;">Do you want to delete the details?</p>
				<div class="form-buttons2">
                <a href="${DeleteUser}">				
                  <input type="button" class="delete-btn"value="Delete Details"> </a>
               </div>
               </form>
           </div>
        </section>
		<section class="bottom-image">
		<div class="Image">
		
		</div>
		</section>
		</section>
	</div>
	<div id="footer_container_main">
		
		<div id="footer_top">

			<div id="footer_section1" class="footer_sections">

				<a href="#about">About</a>
				<br>
				<a href="#help">Support</a>
				<br>
				<a href="#terms">Terms and conditions</a>
				<br>
				<a href="#privacy">Privacy Policy</a>
			</div>

			<div id="footer_section2" class="footer_sections">
				<a href="index.html">
					<img src="image/logo.jpg" alt="logo" id="logo">
				</a>
			</div>

			<div id="footer_section3" class="footer_sections">
				<a href="mailto:busswap@info.com">Busswap@info.com</a>
				<br>
				<a href="tel:+94024021258">+94 024 021 258</a>
				<br><br>

				<div id="social_container">
					
					<a href="">
						<img src="image/facebook.png" alt="facebook">
					</a>
					<a href="">
						<img src="image/instagram.png" alt="instagram">
					</a>
					<a href="">
						<img src="image/twitter.png" alt="twitter">
					</a>
					<a href="">
						<img src="image/whatsapp.png" alt="whatsapp">
					</a>
				</div>
			</div>
				
		</div>

		<div id="footer_bottom">
			<p>
				Copyright �  BusSwap.com
			</p>
		</div>

	</div>
</body>
</html>