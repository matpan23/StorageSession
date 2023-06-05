<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ page contentType="text/html; charset=UTF-8" import="java.util.*,it.unisa.model.UtenteBean,it.unisa.model.ProductBean"%>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="RegistrationStyle.css" rel="stylesheet" type="text/css">
	<title>YourBackPack</title>
	<script src="Registration.js"></script>
</head>

<body>
	<div class="container">
      <h1 class="label">Registrazione utente</h1>
      <form class="login_form" name='registration' onSubmit="return formRegValidation()" action="registration" method="POST">
        

        <div class="font">Email</div>
        <input type="text" name="email" id="email" placeholder="Email">
        <div id="email_error1">Non può esssere vuoto</div>
        <div id="email_error2">Email non valida</div>


        <div class="font">Nome</div>
        <input type="text" name="nome" id="nome" placeholder="Nome">
        <div id="nome_error1">Non può esssere vuoto</div>
        <div id="nome_error2">Nome deve contenere solo lettere</div>
       
        <div class="font">Cognome</div>
        <input type="text" name="cognome" id="cognome" placeholder="Cognome">
        <div id="cognome_error1">Non può esssere vuoto</div>
        <div id="cognome_error2">Cognome deve contenere solo lettere</div>


        <div class="font">Indirizzo</div>
        <input type="text" name="indirizzo" id="indirizzo" placeholder="Indirizzo">
        <div id="indirizzo_error1">Non può esssere vuoto</div>


        <div class="font">Città</div>
        <input type="text" name="citta" id="citta" placeholder="Città">
        <div id="citta_error1">Non può esssere vuoto</div>
        <div id="citta_error2">Città deve contenere solo lettere</div>
        
        <div class="font">Provincia</div>
        <input type="text" name="provincia" id="provincia" placeholder="Provincia">
        <div id="provincia_error1">Non può esssere vuotoa</div>
        <div id="provincia_error2">Provincia deve contenere solo lettere</div>
        
        <div class="font">Cap</div>
        <input type="text" name="cap" id="cap" placeholder="Cap">
        <div id="cap_error1">Non può esssere vuoto</div>
        <div id="cap_error2">Cap deve contenere solo numeri</div>

        <div class="font">Password</div>
        <input type="password" name="password" id="password" placeholder="Password">
        <div id="password_error1">Non può esssere vuoto</div>
        <button type="submit">Conferma</button>
      </form>
      <form action="product" method="POST" class="login_form">
			<button type="submit">Torna al catalogo</button>
	 </form>
    </div>
   
	</body>
</html>