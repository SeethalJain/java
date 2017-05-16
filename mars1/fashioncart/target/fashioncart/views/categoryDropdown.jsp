<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BJeweled-The ultimate luxury in style</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>
<style>body {
	background:
		url("https://wallpaperscraft.com/image/flowers_buds_pearls_jewelry_32070_1920x1080.jpg")
		no-repeat center center fixed;
	background-color: none;
	font: oblique;
	size: 18;
	font-family: 'Didot-Italic';
	font-style: italic;
	color: #B22222;
}</style>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container-fluid">
<c:forEach items="${listCategory}" var="category">
		<ul class="nav navbar-nav">
		
		<li><a href="categoryDropdown/${category.id}">${category.name}</a></li>
			</ul>
			</c:forEach>
			
	</div>
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
							<a href="productDisplay/${product.id}">
							<div class="col-md-6 col-sm-6">
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
	 <%@ include file="/views/footer.jsp" %>
</body>
</html>