<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="IT">
<%@ page contentType="text/html; charset=UTF-8" import="java.util.*,it.unisa.model.UtenteBean,it.unisa.model.ProductBean"%>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="LoginStyle.css" rel="stylesheet" type="text/css">
	<title>YourBackPack</title>
	<script src="Login.js"></script>
</head>

<body>
	 <div class="container">
      <h1 class="label">Login utente</h1>
      <form class="login_form" name='registration' action="login" method="POST" onSubmit="return formValidation()">
        <div class="font">Email</div>
        <input type="text" name="email">
        <div id="email_error1">Inserire l'email</div>
        <div id="email_error2">Email non valida</div>
        <div class="font2">Password</div>
        <input type="password" name="password">
        <div id="password_error">Inserisci la password</div>
        <button type="submit">Login</button>
      </form>
     <div class="reg">
       <p> Non hai un account?</p><a href="RegistrationView.jsp" class="reg-link"> Registrati </a>
     </div>
     </div>
</body>
</html>
