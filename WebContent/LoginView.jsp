<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ page contentType="text/html; charset=UTF-8" import="java.util.*,it.unisa.model.UtenteBean,it.unisa.model.ProductBean"%>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="LoginStyle.css" rel="stylesheet" type="text/css">
	<title>YourBackPack</title>
</head>

<body>
	<h1>Login</h1>
	<div id="LoginForm">
		<form action="login" method="POST"> 
			<fieldset>
     			<legend>Login</legend>
     			<label for="username">Login</label>
     			<input id="username" type="text" name="username" placeholder="enter login">
     			<br>
     			<label for="password">Password</label>
     			<input id="password" type="password" name="password" placeholder="enter password">
     			<br>
     			<button type="submit" class="login-btn">Login</button>
     			<button type="reset" class="reset-btn">Reset</button>
			</fieldset>
		</form>
    </div>
    <br>
</body>
</html>
