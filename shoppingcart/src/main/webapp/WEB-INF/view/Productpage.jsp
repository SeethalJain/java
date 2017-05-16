<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="Header.jsp"/></nav>

<style>

.member {
display: inline-block;
float: left;
width: 250px;
height: 300px;
vertical-align: top;
text-align:right;
text-align:top;
}
.name {
    display: inline;
}
.member img {
    width: 100%;
    display: block;
}
</style>
</head>
<body>
<div class="container">

<img src="resources/images/${productlist.id}.png" alt="${productlist.id}" style="width:150px:heigth:150px">
<br>
<strong>Name:</strong><font face="Comic Sans MS"> ${productlist.name}</font><br>
<strong>Description: </strong> <font face="Comic Sans MS"> ${productlist.description}</font><br>
<strong>Price: </strong> <font face="Comic Sans MS"> ${productlist.price}</font><br>
<form action="addtocart">
<strong>Quantity:</strong> <input type=number name=quantity>
<input type=hidden name=username value= ${Username} >
<input type=hidden name=productId value=${productlist.id }>
<input type=hidden name=productName value=${productlist.name }>
<input type=hidden name=action value="BuyNow">
<input type="submit" value="Add to cart">
</form>
</div>

</body>
</html>
