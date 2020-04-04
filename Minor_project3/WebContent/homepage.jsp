<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel = "icon" type = "image/png" href = "logo.png">
<link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- For apple devices -->
    <link rel = "apple-touch-icon" type = "image/png" href = "logo.jpg"/>
    <style>
* {box-sizing: border-box;}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}



* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}
.slideshow-container {
  max-width: 1520px;
  position: relative;
  margin: auto;
  
}
.slideshow-container-transaction   {
  max-width: 1520px;
  position: relative;
  margin: auto;
  
}

/

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 3s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}



.brand
{
	background-color: white;
}
.brand img {
	width: 370px;
	height: 300px;
	padding: 15px;
}
.brand img:hover
{
	animation: shake 0.5s;
  animation-iteration-count: infinite;

}

.parabrand
{
	position: relative;
	background-color: white;
	width: 410;
	left: 500px;
	top: 3px;
	height: 100px;
}
.cart
{
	position: relative;
	bottom:  30px;
}
.about p{
	font-size: 10px;
}
.about h1{
	font-size: 20px;
}
.about h2
{
	font-size: 20px;
}
.dropbtn {
  background-color: #3498DB;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
  background-color: #2980B9;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  overflow: auto;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown a:hover {background-color: #ddd;}

.show {display: block;}
</style>
</head>
<body>
<%@include file="header.jsp"%>


<div class="slideshow-container">

  <!-- Full-width images with number and caption text -->
  <div class="mySlides fade">
    <div class="numbertext"></div>
    <img src="front1.jpg" style="width:1519px; height:580px">
    <div class="text"></div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext"></div>
    <img src="front2.jpg" style="width:1519px; height: 580px">
    <div class="text"></div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext"></div>
    <img src="front3.jpg" style="width:1519px; height:580px">
    <div class="text"></div>
  </div>

  <br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>




<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 3000); 
}
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>



<div class="brand" id="branddiv">
	<div class="parabrand">
	<p style="font-size: 35px; position: relative; align-content: center;">GAS AGENCY</p><br>
	
     </div>
     <div class="row">
  <div class="col-sm-4">
  <a href="hpbookingpage.jsp">
  	<img src="hp_logo.jpg" class="img-thumbnail" alt="Cinque Terre">
  </a>
  	<p>Hp gas agency is very bad</p>
  </div>
  <div class="col-sm-4">
  <a href="Bharat.jsp">
  	<img src="bharat1_logo.jpg" class="img-thumbnail" alt="Cinque Terre">
  </a>
  	
  	<p>Hp gas agency is very bad</p>
  </div>
  <div class="col-sm-4">
  <a href="Indianbookingpage.jsp">
  	<img src="indian_logo.jpg" class="img-thumbnail" alt="Cinque Terre">
  </a>
  	
  	<p>Hp gas agency is very bad</p>
  </div>
</div>
	</div>
<br>
<br>
<br>
	<%@include file="footer.jsp"%>
</body>
</html>