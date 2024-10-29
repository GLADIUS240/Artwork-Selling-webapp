<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Verdana:wght@400;700&display=swap" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Pacifico:wght@400&display=swap" />
<title>Commissioned_Artworks</title>
</head>
<body>
<div class="welcome_page">
<div class="hero-section">

<span class="title-main"><label  class="heading Title-text">Crafting </label><label id="w" class="heading mem">Memories </label><label class="into">into</label></span>

<span class="subtitle"><label class="heading sub Title-text">Works of</label><label id="art" class="heading sub Title-text"> art</label></span>

<%
if(session.getAttribute("loggedinUser")==null){ 
       out.println("<a class=\"btn-link\" href=\"/ArtWorkAppweb/login.jsp\">"
                   + "<div id=\"btn\" class=\"button\">"
                   + "<h3 class=\"get\">Get Yours</h3>"
                   + "<img src=\"images/get_icon.svg\" class=\"icon\">"
                   + "</div></a>");
   }
%>


<div class="card-frame">
<div class="card">
<img  src="images/Lamp_artwork.png"></div>

<div class="card">
<img  src="images/Zoro_artwork.png"></div>

<div class="card">
<img class="killua" src="images/Killua.png"></div>

</div>
<div id="lit" class="light"></div>

</div>

<h1 class="heading why" id="w">Why <span class="heading choose">Choose Me?</span></h1>

<!--  points why choose me-->
<section class="points">
<ul>
<li><h3>Personalized Service: I take the time to understand your unique requirements and ensure the artwork is a perfect fit for you.</h3></li>
<li><h3> Materials: I use only the best materials to ensure the longevity and vibrancy of your artwork. Even the eraser can’t erase it!
</h3></li>
<li><h3>Passion and Professionalism: My dedication to art and my clients drives me to deliver exceptional pieces that you will cherish for a lifetime.</h3></li>
</ul>
</section>

<!-- new section to invite customer -->
<section class="invite">
<h3 class="title">Let's Create Together</h3>
<p><h4 class="unfocused">I invite you to explore my posts and see the variety of artworks I've created. If you have a vision in mind or need inspiration, feel free to reach out. Let's collaborate and create something beautiful together!</h4>
</section>

<h1 class="heading abt" id="w">About Me</h1>

<!--about container starts  -->
<div class="about-container">
<div class="point"><h3>Welcome To My Art World</h3></div>
<div class="point"><h3>My Artistic Journey</h3></div>
<div class="point"><h3>What I Offer</h3></div>
<div class="point"><h3>My Process</h3></div>
</div>
<hr>
<!-- Footer -->
<footer class="footer">
<section class="about" ><h3 id="w">About Us</h3>
<p class="about-us">Creating timeless, personalized art with passion and professionalism. Let's collaborate and bring your vision to life. Explore my gallery today!</section>
<section class="links"><h3>Quick Links</h3>
<div class="quick-links">
<a href="/ArtWorkAppweb/index.jsp">Home</a>
<a href="/ArtWorkAppweb/artworks.jsp">Artworks</a>
<a href="/ArtWorkAppweb/commission.jsp">Commissions</a>
<a href="#">Contact</a></div></section>
<section class="contact"><h3 id="w">Contact Us</h3>
<a href="https://www.instagram.com/btechxartist/" target="_blank"><img src="images/Insta_icon.svg" alt="insta:btechxartist"></a> <a href="https://www.linkedin.com/in/deepak-bora-552b5224b/" target="_blank"><img src="images/linkedin_icon.svg" alt="linkedin profile"></a> <a href="https://mail.google.com/mail/?view=cm&fs=1&to=deepakbora0000@gmail.com&su=Feedback" target="_blank"><img src="images/gmail_icon.svg" alt="email:deepakbora0000@gmail.com"></a></section>
</footer>

<!--Navbar element  -->
<nav id="navbar">
<a href="/ArtWorkAppweb/index.jsp" id="logo" class="logo">
	<img class="logo-img" alt="logo" src="images/Logo.png">
</a>
<div id="group" class="group">
<a id="w" href="/ArtWorkAppweb/aboutus.jsp">ABOUT</a>
<a id="w" href="/ArtWorkAppweb/artworks.jsp" >ARTWORKS</a>
<div id="menu" class="menu-icon">
    <div id="tl" class="line top-line"></div>
    <div id="bl" class="line bottom-line"></div>
</div>

	</div>
<div id="menu-option" class="menu-option hid">
<a href="/ArtWorkAppweb/aboutus.jsp"> ABOUT</a>
<a href="/ArtWorkAppweb/artworks.jsp" > ARTWORKS</a>
<a href="/ArtWorkAppweb/commission.jsp" target="_blank"> COMMISSIONS</a>
</div>	
<div id="log-out" class="log-out hid"><a href="/ArtWorkAppweb/logout">Log out</a></div>
	
</nav>
</div>

<script src="script.js"></script>
</body>
</html>