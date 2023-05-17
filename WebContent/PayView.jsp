<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ page contentType="text/html; charset=UTF-8" import="java.util.*,it.unisa.model.UtenteBean"%>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="PayStyle.css" rel="stylesheet" type="text/css">
		<title>YourBackPack</title>
	</head>
	<body>
   		<div id="PayForm">
			<form action="card" method="POST">
				<fieldset>
     				<legend>Inserisci i dati per il pagamento</legend>
     				<label for="numeroCarta">Numero carta</label>
     				<input id="numeroCarta" type="text" name="numeroCarta" placeholder="numero carta">
     				<br>
     				<label for="dataScadenza">Data di scadenza</label>
     				<input id="dataScadenza" type="text" name="dataScadenza" placeholder="data di scadenza">
     				<br>
     				<label for="cvc">Cvc</label>
     				<input id="cvc" type="text" name="cvc" placeholder="cvc">
     				<br>
     				<button type="submit">Avanti</button>
				</fieldset>
			</form>
    	</div>
	</body>
</html>