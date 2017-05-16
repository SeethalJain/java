<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

</head>
<style>

body {
	background:
		url("http://www.walldevil.com/wallpapers/a53/background-texture-spirals-spins-circles-widescreen-image.jpg")
		no-repeat center center fixed;
	font-family: 'Didot-Italic';
	font-style: italic;
	
}

h4 {
	font-weight: 600;
	font-family: 'Didot-Italic';
	color:purple;
}

p {
	font-size: 12px;
	margin-top: 5px;
	font-family: 'Didot-Italic';
	color:purple;
}

.price {
	font-size: 30px;
	font-family: 'Didot-Italic';
	margin: 0 auto;
	color: #333;
}

.right {
	float: right;
	border-bottom: 2px solid #4B8E4B;
}

.thumbnail {
	opacity: 0.70;
	-webkit-transition: all 0.5s;
	transition: all 0.5s;
}

.thumbnail:hover {
	opacity: 1.00;
	box-shadow: 0px 0px 10px #4bc6ff;
}

.line {
	margin-bottom: 5px;
}
.button {
    
    
    padding: 5px 7px;
    text-align: center;
    text-decoration: Didot-Italic;
    display: inline-block;
    font-size: 16px;
    margin: 1px 2px;
    -webkit-transition-duration: 0.4s; 
    transition-duration: 0.4s;
    cursor: pointer;
}

.button1 {
    background-color: purple; 
    color:white; 
    border-radius: 12px;
    border: 2px solid purple;
}

.button1:hover {
    background-color:white ;
    color: purple;
}

@media screen and (max-width: 770px) {
	.right {
		float: left;
		width: 100%;
	}
}
</style>
<body>
<%@ include file="header.jsp" %>

<h3 style="text-align:center; ">Products</h3>
<a href="categoryback"><button type="button" class="button button1" >Back to Categories</button></a>

	<div class="container-fluid text-center " >
			
			 <div class="row text-center">
			 <p >
 <c:forEach items="${productList}" var="product">
				<div class="col-md-3 col-sm-6">
					<div class="thumbnail">
						<img src="F:\Jewellery Images/${product.id}.jpg" class="img-responsive" style="height:200px; width:60%"/>
						<div class="caption">
							<h4 class="pull-right">RS.${product.price}</h4>
							<h4>${product.name }</h4>
							<hr class="line">
							<a href="productDisplay/${product.id}"><div class="col-md-6 col-sm-6">
							<button class="button button1"> VIEW</button>
						</div></a>
							</div>
							
						<div class="ratings">
							
							<p>
								<span class="fa fa-heart"></span>
								 <span class="fa fa-heart"></span>
								  <span	class="fa fa-heart"></span>
								   <span class="fa fa-heart"></span>
									 <span class="fa fa-heart"></span>
							</p>
						</div>
					</div>
				</div>
</c:forEach>
</p>
		</div>
		</div>		
</div>

 <%@ include file="footer.jsp" %>
	

</body>
</html>