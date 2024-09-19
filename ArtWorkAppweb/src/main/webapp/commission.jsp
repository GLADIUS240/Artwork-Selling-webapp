<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="comission.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Verdana:wght@400;700&display=swap" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Pacifico:wght@400&display=swap" />
<title>Submit Comission requests</title>
</head>
<body>
<div class="main">
<form action="" method="post">
<fieldset class="sub-heading">Request a <span class="main-heading">Custom Artwork</span></fieldset>
<p class="para">Fill out the form below to provide details about your custom artwork request. Our talented artists will work with you to create a masterpiece.</p>

<div class="wrapper">

<div class="container"><label for="size">Size</label>
<select id="size" required>
	<optgroup label="Paper">
		<option value="A3">A3</option>
		<option value="A4" selected>A4</option>
		<option value="A5">A5</option>
	</optgroup>
	<optgroup label="Canvas">
		<option value="4x4 canvas">4x4 inch</option>
		<option value="4x6 canvas">4x6 inch</option>
		<option value="6x6 canvas">6x6 inch</option>
		<option value="6x8 canvas">6x8 inch</option>
		<option value="8x10 canvas">8x10 inch</option>
		<option value="10x12 canvas">10x12 inch</option>
		<option value="12x16 canvas">12x16 inch</option>
		<option value="10x14 canvas">10x14 inch</option>
		<option value="14x18 canvas">14x18 inch</option>
	</optgroup>
</select>
</div>
<div class="container">
<label for="medium">Medium</label>
<select id="medium" required>
	<option value="graphite" selected>Graphite</option>
	<option value="charcoal">Charcoal</option>
	<option value="pencil colour">Pencil Colour</option>
	<option value="brush pens">Brsh pens</option>
	<option value="acrylic colour">Acrylic colour</option>
	<option value="oil colour">Oil Colour</option>
	<option value="mixed medium">Mixed Medium</option>
</select>
</div>

</div>

<div class="wrapper">

<div class="container">
	<label for="budget">Budget(in inr)</label>
	<input type="number" min=1800>
</div>
<div class="container">
	<label for="deadline">Deadline</label>
	<input type="date">
</div>

</div>

<div class="wrapper">

<div class="container">
	<label for="contactno">Contact No</label>
	<input id="contactno" type="number">
</div>
<div class="container">
	<label for="ref">Reference Image</label>
	<input type="file" id="ref">
</div>

</div>



<div class="container">
	<label for="description">Description</label>
	<textarea class="des" id="description"  maxlength=500 rows="4" cols="50"></textarea>
	
</div>

<input class="btn" type="submit" value="Submit Request">
</form>
</div>



<!-- Nav element -->
<nav id="navbar">
<div id="logo" class="logo">
	<img class="logo-img"src="images/Logo.png">
</div>
<div id="group" class="group">
<a id="w" target="_blank">ABOUT</a>
<a id="w" target="_blank">ARTWORKS</a>
<div id="menu" class="menu-icon">
    <div id="tl" class="line top-line"></div>
    <div id="bl" class="line bottom-line"></div>
</div>

	</div>
<div id="menu-option" class="menu-option hid">
<a href="#" target="_blank"> ABOUT</a>
<a href="#" target="_blank"> ARTWORKS</a>
<a href="#" target="_blank"> COMMISSIONS</a>
</div>	
<div id="log-out" class="log-out hid"><a href="#">Log out</a></div>
	
</nav>


<script src="comission.js"></script>
</body>
</html>