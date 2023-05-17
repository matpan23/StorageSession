<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Collection<?> products = (Collection<?>) request.getAttribute("products");
	if(products == null) {
		response.sendRedirect("./product");	
		return;
	}
	ProductBean product = (ProductBean) request.getAttribute("product");
%>

<!DOCTYPE html>
<html>
<%@ page contentType="text/html; charset=UTF-8" import="java.util.*,it.unisa.model.ProductBean,it.unisa.model.Cart,it.unisa.model.UtenteBean,it.unisa.control.RegistrationControl,it.unisa.model.UtenteDAOImplementazione"%>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="ProductStyle.css" rel="stylesheet" type="text/css">
	<title>YourBackPack</title>
</head>

<body>
	<h2>Products 🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒🎒<a href="cart"><img src="C:\Users\matte\OneDrive\Desktop\UNISA\TSW\storagesession ok\StorageSession\WebContent\cart.jpg" alt="Carrello"></a>
	<a href="LoginView.jsp"><img src="C:\Users\matte\OneDrive\Desktop\UNISA\TSW\storagesession ok\StorageSession\WebContent\login.jpg" alt="Login"></a></h2>
	<table border="1">
		<tr>
			<th>Code <a href="product?sort=code">Sort</a></th>
			<th>Name <a href="product?sort=name">Sort</a></th>
			<th>Image </th>
			<th>Description <a href="product?sort=description">Sort</a></th>
			<th>Action</th>
		</tr>
		<%
			if (products != null && products.size() != 0) {
				Iterator<?> it = products.iterator();
				while (it.hasNext()) {
					ProductBean bean = (ProductBean) it.next();
		%>
		<tr>
			<td><%=bean.getCode()%></td>
			<td><%=bean.getName()%></td>
			<td><img src="C:\Users\matte\OneDrive\Desktop\UNISA\TSW\storagesession ok\StorageSession\WebContent\img<%=bean.getCode()%>.jpg">
			<td><%=bean.getDescription()%></td>
			<td><a href="product?action=delete&id=<%=bean.getCode()%>">Delete</a><br>
				<a href="details?action=read&id=<%=bean.getCode()%>">Details</a><br>
				<a href="cart?action=addC&id=<%=bean.getCode()%>">Add to cart</a>
				</td>
		</tr>
		<%
				}
			} else {
		%>
		<tr>
			<td colspan="5">No products available</td>
		</tr>
		<%
			}
		%>
	</table>	
</body>
</html>