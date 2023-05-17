<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ page contentType="text/html; charset=UTF-8" import="java.util.*,it.unisa.model.UtenteBean,it.unisa.model.ProductBean"%>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="RegistrationStyle.css" rel="stylesheet" type="text/css">
	<title>YourBackPack</title>
</head>

<body>
	<h1>Registrazione</h1>
		<div id="RegistrationForm">
			<form action="registration" method="POST">
				<label for="email">Email</label>
          		<input id="email" type="text" name="email" placeholder="Email">
          		<br>
        		<label for="nome">Nome</label>
          		<input id="nome" type="text" name="nome" placeholder="Nome">
          		<br>
        		<label for="cognome">Cognome</label>
		        <input id="cognome" type="text" name="cognome" placeholder="Cognome">
		    	<br>
		    	<label for="indirizzo">Indirizzo</label>
		        <input id="indirizzo" type="text" name="indirizzo" placeholder="Indirizzo">
		    	<br>
		    	<label for="citta">Città</label>
		        <input id="citta" type="text" name="citta" placeholder="Città">
		    	<br>
		    	<label for="provincia">Provincia</label>
		        <input id="provincia" type="text" name="provincia" placeholder="Provincia">
		    	<br>
		    	<label for="cap">Cap</label>
		        <input id="cap" type="text" name="cap" placeholder="Cap">
		    	<br>
		    	<label for="password">Password</label>
		        <input id="password" type="password" name="password" placeholder="Password">
				<br>
				<button type="submit" class="reg-btn">Registrazione</button>
			</form>
		</div>
		<br>
		<form action="product" method="POST">
			<button type="submit" class="back-btn">Catalogo</button>
		</form>
	</body>
</html>