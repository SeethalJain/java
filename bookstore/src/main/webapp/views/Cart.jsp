<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.Random"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>my cart</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
  
    <style>
h3{
font-family: monotype corsiva;
	font-size: 1.5em;
	font-weight: bold;
	
}
body {
	background-image: url("http://eskipaper.com/images/necklace-hd-1.jpg");
	background-repeat: repeat;
	background-width: 150%;
	background-height: 150%;
	}

.navbar {
background-color: #661a00;
	font-family: monotype corsiva;
	font-size: 1.5em;
	font-weight: bold;
	}
	 
   h1, h5 {
	text-align:center;
}
</style>
</head>
<body>

	<header>
		<center>
		<h1 style="font-family:monotype corsiva;"><img src="https://cmkt-image-prd.global.ssl.fastly.net/0.1.0/ps/564985/580/386/m1/fpnw/wm0/1-.jpg?1436816495&s=36d5eceba23d9355349d47697d8069b3	" height="77" width="77" style="font-family: monotype corsiva;" /><b>bookstore</b></h1>
	</center>
	<nav class="navbar navbar-inverse">

	<ul class="nav navbar-nav">
		<li><a href="index">HOME</a></li>
		<li class="dropdown">
		<a class="dropdown-toggle"
			data-toggle="dropdown" href="#">Category<span class="caret"></span></a>
			
				<ul class="dropdown-menu">
					<c:forEach items="${categoryList }" var="category">
						<li><a href="categoryDropdown/${category.id}">${category.name}</a></li>
					</c:forEach>
					
						
					</ul></li>
<li><a href="Aboutus">ABOUT US</a></li>
		<li><a href="contactus">CONTACT US</a></li>
	</ul>
	<ul class="nav navbar-nav navbar-right">
			<c:if test="${not empty successlogin}">
				<li><a href="Logout">LOGOUT <span
						class="glyphicon glyphicon-log-out"></span></a></li>
			</c:if>
			<c:if test="${empty successlogin}">
				<li><a href="Register">SIGN UP <span
						class="glyphicon glyphicon-user"></span></a></li>
				<li><a href="Login">LOGIN <span
						class="glyphicon glyphicon-log-in"></span></a></li>
			</c:if>
		</ul>
	
	</nav> 
</header>
<div > 
					<h3 style="font-family:monotype corsiva;color:black;font-size: 1.7em;"><b>Items in your cart</b></h3>
					</div>
<div  ng-app="addToCartApp"  ng-controller = "addToCartCtrl"  ng-init="retrieveCart('${cartId}')">
	 
	 <div >
        <table class="table table-bordered" style="font-family:monotype corsiva;color:black;font-size: 1.5em;" >
		  <thead>
			  <tr>
			  <th>Product</th>
				<th >Unit Price</th>
				<th>Quantity</th>
				<th>Total Price(in Rs.)</th>
				<th>Action</th>
			  </tr>
			</thead>
			<tbody>
				<tr ng-repeat = "items in cart.cartItems">
						<td>{{items.name}}</td>
						<td>{{items.price}}</td>
						<td>{{items.quantity}}</td>
						<td>{{items.totalPrice}}</td>
						<td><button class="btn btn-danger btnAction" ng-click="removeItemFromCart('${items.totalPrice}')">
							<span class="glyphicon glyphicon-remove"></span>remove</button></td>
					</tr>
			 <tr>
                    <td></td>
                    <td></td>
					<td></td>
                    <td>Grand Total(in Rs.)</td>
                    <td>{{GrandTotalOfItems()}}</td>
                </tr> 
			</tbody> 
		  </table>
			  

          <div class="row">
		  <div class="span3">
             <a href="<spring:url value="/" />" class="btn btn-primary center">Continue Shopping</a>
			</div>	
			<div class="span3">
			<a href="startFlow" class="btn btn-success center"><span class="glyphicon-shopping-cart glyphicon"></span>check out</a>
             <%-- <a href="<spring:url value="/billingAddress"/>"
                   class="btn btn-success center"><span class="glyphicon-shopping-cart glyphicon"></span> Check out
                </a> --%>
			</div>	  
			<div class="span2">
           <a class="btn btn-danger center" ng-click="clearCartItems()"><span
                        class="glyphicon glyphicon-remove-sign"></span>Clear Cart</a>
			</div>		  
			
        </div>
		</div>
      </div>     

 
<script>
 var cartApp = angular.module ("addToCartApp", []);

 cartApp.controller("addToCartCtrl", function ($scope, $http){
 	
 	 /*
      * retrieveCart method is used to get all cart items at the starting of the application
      */
     $scope.retrieveCart = function (cartId) {
 		console.log(cartId);
         $scope.cartId = cartId;
         $scope.refreshCartItems(cartId);
     };
     
    
     /*
      * removeItemFromCart method is used to remove a item from the cart
      */
      $scope.removeItemFromCart = function (id) {
         $http['delete']('http://localhost:8080/bookstore/categoryDropdown/productDisplay/usercart/cart/removeItem/'+id).success(function (data) {
             $scope.refreshCartItems();
         });
     }; 

 	 /*
      * addItemToCart method is used to add items into the cart
      */
     $scope.addItemToCart = function (id) {
         $http.put('http://localhost:8080/bookstore/usercart/cart/addItem/'+id).success(function (data) {
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
         $http.get('http://localhost:8080/bookstore/categoryDropdown/productDisplay/usercart/cart/refreshCart/'+$scope.cartId).success(function (data) {
            $scope.cart=data;
         });
     };
     
     /*
      * clearCartItems method is used to delete all items from the cart
      */
     $scope.clearCartItems = function () {
     	$http['delete']('http://localhost:8080/bookstore/categoryDropdown/productDisplay/usercart/cart/clearCartItems/'+$scope.cartId).success(function (data)
     			{$scope.refreshCartItems()
     		});
     };
 });

</script>
 </body>
</html>