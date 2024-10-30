<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="components/css/header.css">
<link rel="stylesheet" href="components/css/footer.css">
<link rel="stylesheet" href="artworks.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Verdana:wght@400;700&display=swap" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Pacifico:wght@400&display=swap" />
<title>Recent Artworks</title>
</head>
<body>

<%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
	
	response.setHeader("Pragma","no-cache");//HTTP 1.0
	
	response.setHeader("Expires","0");//Proxies



if(session.getAttribute("loggedinUser")==null) {
	response.sendRedirect("login.jsp");
}
%>

<div class="gallery">

<div class="image i1" id="image">
	<div id="fade" class="fade ">
		<div class="description">
			<h4 class="topic">Pencil Color Artwork</h4>
			<h4 class="des">Roronoa Zoro From One Piece</h4>
		</div>
	</div>
</div>

<div class="image i2" id="image">
	<div id="fade" class="fade ">
		<div class="description">
			<h4 class="topic">Graphite Pencil Potrait</h4>
			<h4 class="des">Keanu Reeves AKA John Wick </h4>
		</div>
	</div>
</div>

<div class="image i3" id="image">
	<div id="fade" class="fade ">
		<div class="description">
			<h4 class="topic">Acrylic Canvas Painting</h4>
			<h4 class="des">Moonfall Painting</h4>
		</div>
	</div>
</div>

<div class="image i4" id="image">
	<div id="fade" class="fade ">
		<div class="description">
			<h4 class="topic">Graphite and Charcoal Pencil Potrait</h4>
			<h4 class="des">Cillian Murphy AKA Thomas Shelby</h4>
		</div>
	</div>
</div>

<div class="image i5" id="image">
	<div id="fade" class="fade ">
		<div class="description">
			<h4 class="topic">Graphite Pencil Artwork</h4>
			<h4 class="des">Usual Still life painting with a landscape</h4>
		</div>
	</div>
</div>

<div class="image i6" id="image">
	<div id="fade" class="fade ">
		<div class="description">
			<h4 class="topic">Graphite Pencil Potrait</h4>
			<h4 class="des">Selena Gomez Potrait</h4>
		</div>
	</div>
</div>

<div class="image i7" id="image">
	<div id="fade" class="fade ">
		<div class="description">
			<h4 class="topic">Pen & Pencil Artwork</h4>
			<h4 class="des">killua From Hunter X Hunter Anime</h4>
		</div>
	</div>
</div>

<div class="image i8" id="image">
	<div id="fade" class="fade ">
		<div class="description">
			<h4 class="topic">Abstract Potrait</h4>
			<h4 class="des">Water Color on canvas Mother Teresa</h4>
		</div>
	</div>
</div>

<div class="image i9" id="image">
	<div id="fade" class="fade ">
		<div class="description">
			<h4 class="topic">Charcoal Powder Potrait</h4>
			<h4 class="des">Johnny Depp Potrait Pending</h4>
		</div>
	</div>
</div>





</div>



<hr>
<!-- Footer -->
<%@ include file="components/jsp/footer.jsp" %>

<!--Navbar element  -->
<%@ include file="components/jsp/header.jsp" %>


<script src="artworks.js"></script>
</body>
</html>