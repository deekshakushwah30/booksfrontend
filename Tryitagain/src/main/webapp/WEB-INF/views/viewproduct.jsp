<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table>
<b>Details about Project </b>
<tr>
<c:url value="/images/${product.id }.jpg" var="imageUrl"></c:url>
<td><img src="${imageUrl }" height="70" width="70"></td>
<tr>
<td>Product Name</td><td>${product.productName}</td>
</tr>
<tr>
<td>Product Price</td><td>${product.price}</td>
</tr>
<tr>
<td>Product Description</td><td>${product.description}</td>
</tr>
<tr>
<td>Product Quantity</td>
<td>${product.quantity}</td>
</tr>
</table>
<c:url value="getallproducts" var="url1"></c:url>
<a href="${url1 }">back to list of products</a>

<br>

</body>
</html>