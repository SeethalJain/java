<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<title>BJeweled-The ultimate luxury in style</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.panel-default {
	background: transparent !important;
	border: transparent !important;
	font-family: 'Didot-Italic';
	font-style: italic;
	font-size: 20px;
}

.navbar {
	background: transparent !important;
	/*border: transparent !important;*/
	font-family: 'Didot-Italic';
	font-style: italic;
	color: blue;
	font-size: 18px;
}
</style>
<body>
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-body"><img src="https://www.freelogoservices.com/api/main/images/1j+ojl1FOMkX9WypfBe43D6kjPaFqRFJnBjEwXs1M3EMoAJtlCgtj...dp9f86">
				
				<ul class="nav navbar-nav navbar-right">
					<c:if test="${not empty successlogin}">
						<li><a href="Cart">My Cart<span class="glyphicon glyphicon-shopping-cart"></span></a></li>
						<li><a href="Logout">Logout<span class="glyphicon glyphicon-log-out"></span></a></li>
					</c:if>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<c:if test="${empty successlogin}">
						<li><a href="Login">Login<span class="glyphicon glyphicon-log-in"></span></a></li>
						<li><a href="Register">Sign Up <span class="glyphicon glyphicon-user" ></span></a></li>
					</c:if>
				</ul>
			</div>
			<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<ul class="nav navbar-nav">
						<li><a href="index">Home</a></li>
						<li class="dropdown">
						<li><a href="categoryDropdown">Products</a></li>
						<li><a href="Aboutus">About Us</a></li>
						<li><a href="Contact">Contact Us</a></li>

					</ul>

				</div>
				</div>
			</nav>
</body>
</html>







