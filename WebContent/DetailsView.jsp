<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	ProductBean product = (ProductBean) request.getAttribute("product");
%>

<!DOCTYPE html>
<html>
<%@ page contentType="text/html; charset=UTF-8" import="java.util.*,it.unisa.model.ProductBean"%>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="DetailsStyle.css" rel="stylesheet" type="text/css">
	<title>YourBackPack</title>
</head>
<body>
	<div id="details">
  		<h2>Dettagli</h2>
  		<table>
    	<thead>
      		<tr>
      			<th>Codice_Prodotto</th>
        		<th>Prodotto</th>
        		<th>Descrizione</th>
      		</tr>
    	</thead>
    	<tbody>
				<tr>
					<td><%=product.getCode()%>
					<td><%=product.getName()%></td>
					<td><%=product.getDescription()%></td>
				</tr>
    	</tbody>
  		</table>
  		<img src="C:\Users\matte\OneDrive\Desktop\UNISA\TSW\storagesession ok\StorageSession\WebContent\img<%=product.getCode()%>.jpg" alt="Zaino" class="img">
  		<p><a href="product">Torna al catalogo</a></p>
  		<a href="cart?action=addC&id=<%=product.getCode()%>">Add to cart</a>
	</div>
</body>
</html>