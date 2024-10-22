<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="signup.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Verdana:wght@400;700&display=swap" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Pacifico:wght@400&display=swap" />
<title>Signup to Continue</title>
</head>
<body>

<div class="bg"></div>

<div class="main">
<div class="sign-up">
<span class="heading">Create an account</span>
<form action="signup" method="post">
<input class="uname" name="name" type="text" placeholder="Enter Your Full Name">
<input class="uname" name="username" type="text" placeholder="Enter Username">
<input class="uname" name="email" type="text" placeholder="Enter Your Email Address">
<input class="pass" name="password" type="password" placeholder="Password">
<button class="heading" type="submit">Sign up</button>
</form>

</div>
<span class="sub-heading">Already a member yet?<a href="/ArtWorkAppweb/login.jsp">Login</a></span>

</div>

</body>
</html>