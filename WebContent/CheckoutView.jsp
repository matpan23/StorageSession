<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String user = "";
	String psw = "";
	String nome = "";
	if(request.getSession().getAttribute("utente")==null)
		response.sendRedirect("LoginView.jsp");
	else{
		user = (String) request.getSession().getAttribute("utente");
		psw = (String) request.getSession().getAttribute("password");
		UtenteDAOImplementazione userDao = new UtenteDAOImplementazione();
		UtenteBean utente = userDao.findByCred(user, psw);
		nome = utente.getNome();
	}
	//ProductBean product = (ProductBean) request.getAttribute("product");
	Cart cart = (Cart) request.getSession().getAttribute("cart");
%>
<!DOCTYPE html>
<html>
<%@ page contentType="text/html; charset=UTF-8" import="java.util.*,it.unisa.model.ProductBean,it.unisa.model.Cart,it.unisa.model.UtenteBean,it.unisa.control.RegistrationControl,it.unisa.model.UtenteDAOImplementazione"%>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="CheckoutStyle.css" rel="stylesheet" type="text/css">
	<title>YourBackPack</title>
</head>

<body>
	<% if(!nome.equals("")) { %>
		<h2>Bentornato <%= nome %></h2>
	<% } %>
	<% if(cart==null){ %>
			<h2>Il carrello è vuoto!</h2>
			<h2>Torna al catalogo ed aggiungi un prodotto al carrello per acquistarlo</h2>
			<a href="product">Torna al Catalogo</a>
	<% } %>
	<table border="1">
		<thead>
			<tr>
				<th>Prodotto</th>
				<th>Quantità</th>
				<th>Prezzo</th>
			</tr>
		</thead>
		<tbody>
			<%	double price=0;
				if(cart != null) { %>
			<% List<ProductBean> prodcart = cart.getProducts(); 	
				for(ProductBean beancart: prodcart) {
					price+=beancart.getPrice();
			%>
			<tr>
				<td><%=beancart.getName()%></td>
				<td><%=beancart.getQuantity()%></td>
				<td><%=beancart.getPrice()+"€"%></td>
			</tr>
			<% } %>
		<% } %>
		</tbody>
	</table>
	<p>Totale: <span class="total-price"><%= price %></span></p>
	<p>Scegli il metodo di pagamento: 
		<input type="radio" id="visa" name="card" value="visa">
		<label for="visa">VISA</label>
		<input type="radio" id="html" name="card" value="mastercard">
		<label for="mastercard">MASTERCARD</label>
		<input type="radio" id="postepay" name="card" value="postepay">
		<label for="postepay">POSTEPAY</label><br>
	</p>
</body>