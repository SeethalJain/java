<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<title>${product.name }</title>
</head>
<style>
body {
	background:
		url("https://thumbs.dreamstime.com/z/blue-serenity-pink-rose-quartz-gradient-background-multiples-dots-fashion-trends-circles-backdrop-vector-illustration-may-78308100.jpg")
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
</style>
<body>
<%@ include file="/WEB-INF/views/header.jsp" %>
<div ng-app = "addToCartApp" ng-controller="addToCartCtrl"> 

<h1 style="text-align:center;">${product.name }</h1>
	<div style="margin-left:700px">
<img src="D:\trendscart\src\main\WEB_INF\resources/${product.id}.jpg" class="img-responsive" />
						<p>Name:${product.name }</p>
							<h4>Price:RS.${product.price}</h4>
							
							<p>Description:${product.description }</p>
							
							<c:if test="${empty successlogin}">
					<a href="Login"><button class="btn btn-primary">login to add to cart
											</button></a>
					</c:if>	
					<c:if test="${not empty successlogin}">	
									<button class="btn btn-primary"
										   ng-click="addItemToCart('${product.id}')"><span
												class="glyphicon glyphicon-shopping-cart"></span>Add to cart
											</button>
							</c:if>	
				
						
							<p>15 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span>
								 <span class="glyphicon glyphicon-star"></span>
								  <span	class="glyphicon glyphicon-star"></span>
								   <span class="glyphicon glyphicon-star"></span>
									 <span class="glyphicon glyphicon-star"></span>
							</p>
						
					

</div>
</div>
	
			

<a href="categoryback"><button type="button" class="btn btn-primary" >back to categories</button></a>
 <script>
 

 var cartApp = angular.module ("addToCartApp", []);

 cartApp.controller("addToCartCtrl", function ($scope, $http){
 	
 	 /*
      * retrieveCart method is used to get all cart items at the starting of the application
      */
     $scope.retrieveCart = function (cartId) {
         $scope.cartId = cartId;
         $scope.refreshCartItems(cartId);
     };
     
     
     /*
      * removeItemFromCart method is used to remove a item from the cart
      */
     $scope.removeItemFromCart = function (id) {
         $http.put('http://localhost:8080/trendscart/removeItem/'+id).success(function (data) {
             $scope.refreshCartItems();
         });
     };

 	 /*
      * addItemToCart method is used to add items into the cart
      */
     $scope.addItemToCart = function (id) {
         $http.put('http://localhost:8080/trendscart/categoryDropdown/productDisplay/usercart/cart/addItem/'+id).success(function (data) {
             alert("Item added to the cart!")
             
         });
     };
    
    
     /*
      * GrandTotalOfItems method is called on cart page to calculate grand total for the added items
      */
     $scope.GrandTotalOfItems = function () {
         var grandTotal=0;

         for (var i=0; i<$scope.cart.cartItems.length; i++) {
             grandTotal+=$scope.cart.cartItems[i].totalPrice;
        }

         return grandTotal;
     };
     /*
 	 * refreshCartItems method is called by others methods in same controller to refresh the cart
 	 */
     $scope.refreshCartItems = function () {
         $http.get('http://localhost:8080/trendscart/refreshCart/'+$scope.cartId).success(function (data) {
            $scope.cart=data;
         });
     };
     
     /*
      * clearCartItems method is used to delete all items from the cart
      */
     $scope.clearCartItems = function () {
     	$http['delete']('http://localhost:8080/trendscart/clearCartItems/'+$scope.cartId).success(function (data)
     			{$scope.refreshCartItems()
     		});
     };
 });

</script> 

 <%@ include file="footer.jsp" %>

</body>
</html> 

<%-- 
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
<jsp:include page="header.jsp"/></nav>

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

<img src="resources/images/${product.id}.png" alt="${product.id}" style="width:150px:heigth:150px">
<br>
<strong>Name:</strong><font face="Comic Sans MS"> ${cartitem.name}</font><br>
<strong>Description: </strong> <font face="Comic Sans MS"> ${cartitem.description}</font><br>
<strong>Price: </strong> <font face="Comic Sans MS"> ${cartitem.price}</font><br>
<form action="addtocart">
<strong>Quantity:</strong> <input type=number name=quantity>
<input type=hidden name=username value= ${Username} >
<input type=hidden name=productId value=${cartitem.id }>
<input type=hidden name=productName value=${cartitem.name }>
<input type=hidden name=action value="BuyNow">
<input type="submit" value="Add to cart">
</form>
</div>

</body>
</html>
 --%>