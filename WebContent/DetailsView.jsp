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
	 <div class="titolo">
 	 <p class="nomeSito">Dettagli prodotto</p> 
 	 </div>
  		
  		
  		
  		
  		
  		
  		
     <table border="1">

    	
      		<tr>
        		<th><%=product.getName()%></th>
        		<th>Descrizione</th>
      		</tr>
    	

    	
			<tr>
				<td><img src="C:\Users\Utente\Desktop\StorageSession\WebContent\img<%=product.getCode()%>.jpg"></td>
				<td><%=product.getDescription()%>  </td>	
			</tr>
    	

  	 </table>
  	 
  	 
  	   <br>
	   <br>
	   <h2> Prezzo:<%=product.getPrice()%></h2>
	   <br>
	   
      <a href="product">Torna al carrello</a>
	  
	  <br>
	  <br>
	  
      <a href="cart?action=addC&id=<%=product.getCode()%>">Aggiungi al carrello</a>
  		
</body>
</html>
