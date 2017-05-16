<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 </head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">ShoppingCart</a>
    </div>
    <c:if test="${AdminLoggedIn != true}">
    <ul class="nav navbar-nav">
          <li><a href="categorypage?categoryid=1">Footwears</a></li>
          <li><a href="categorypage?categoryid=2">Watches</a></li>
          <li><a href="categorypage?categoryid=3">Sunglasses</a></li>
   </ul></c:if>
   <c:if test="${AdminLoggedIn == true}">
   <ul class="nav navbar-nav">
      <li><a href="Category">Manage Category</a></li>
      <li><a href="Supplier">Manage Supplier</a></li>
      <li><a href="Product">Manage Product</a></li>
      </ul>
      </c:if>
   <ul class="nav navbar-nav navbar-right">
     <c:if test="${LoggedIn != true}">
      <li><a href="Register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
   </c:if>
      
      <c:if test="${LoggedIn == true}">
      <li><a href="#">Welcome<span class="glyphicon glyphicon-user"></span>${Username}</a></li>
      <li><a href="Cartpage"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
        <li><a href="perform_logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </c:if> 
        
  </ul></div>
</body>
</html>