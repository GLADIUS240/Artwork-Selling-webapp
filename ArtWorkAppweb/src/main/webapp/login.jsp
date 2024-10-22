<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="login.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Verdana:wght@400;700&display=swap" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Pacifico:wght@400&display=swap" />
<title>Log in to Artwork Portal</title>
</head>
<body>
<div class="info">
<span class="t1">On Demand Commissions</span>
<div class="message"><em>Memories</em> Preserved By <em>Hands</em> into the Paper.</div>
<svg class="strk" xmlns="http://www.w3.org/2000/svg" width="28.75vw" height="26" viewBox="0 0 440 26" fill="none">
  <path d="M13 13L427 13" stroke="#2C3E50" stroke-opacity="0.45" stroke-width="26" stroke-linecap="round"/>
</svg>
<span class="subheading">New User?</span>
<a class="btn-link" href="/ArtWorkAppweb/signup.jsp"><span class="create">Create Account <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" fill="none">
  <path d="M28 16L4 16" stroke="black" stroke-width="4" stroke-linecap="round" stroke-linejoin="round"/>
  <path d="M20 8L28 16L20 24" stroke="black" stroke-width="4" stroke-linecap="round" stroke-linejoin="round"/>
</svg></span></a>
</div>

<div class="login">
<span class="heading">Log in to your Account</span>
<form action="login" method="post">
<input class="uname" name="uname" type="text" placeholder="User Name">
<input class="pass" name="pass" type="password" placeholder="password">
<button type="submit">Log In</button>
</form>
</div>
<div class="snackbar hidden">Logged in Succefully<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
  <path d="M19 6.41L17.59 5L12 10.59L6.41 5L5 6.41L10.59 12L5 17.59L6.41 19L12 13.41L17.59 19L19 17.59L13.41 12L19 6.41Z" fill="#F5EFF7"/>
</svg></div>
</body>
</html>