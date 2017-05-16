<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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

	background:url("src="https://ak8.picdn.net/shutterstock/videos/22178932/thumb/1.jpg"")no-repeat center center fixed;
	margin-top: 20px;
}
</style>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
   <ul class="nav navbar-nav navbar-right">
     
   <li><a href="Logout"><span class="glyphicon glyphicon-log-0ut"></span> Log Out</a></li>
    </ul>
  </div></nav>
<br/><br/><br/>



<div class="container">
	<div class="row">
		<div class="col-xs-8">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">
						<div class="row">
							<div class="col-xs-6">
								<h5><span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart</h5>
							</div>
							<div class="col-xs-6">
								
									<a href="<spring:url value="/" />" class="btn btn-primary center"><span class="glyphicon glyphicon-share-alt"></span>Continue Shopping</a>
								
							</div>
						</div>
					</div>
				</div>
				

<div > 
					<h3>Shopping Cart</h3>
					</div>
<div  ng-app="addToCartApp"  ng-controller = "addToCartCtrl"  ng-init="retrieveCart('${cartId}')">
	 
	 <div >
        <table class="table table-bordered table-striped fs13" >
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
						<td><button class="btn btn-danger btnAction" ng-click="removeItemFromCart('${items.id}')">
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
							<div class="col-xs-6">
             <a href="<spring:url value="/billingAddress"/>"
                   class="btn btn-success center"><span class="glyphicon-shopping-cart glyphicon"></span> Check out
                </a>
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
    	 console.log("inside remove cart")
    	 console.log(id)
         $http.put('http://localhost:8080/trendscart/categoryDropdown/productDisplay/usercart/cart/removeItem/'+id).success(function (data) {
             $scope.refreshCartItems();
         });
     };

 	 /*
      * addItemToCart method is used to add items into the cart
      */
     $scope.addItemToCart = function (id) {
         $http['delete']('http://localhost:8080/trendscart/usercart/cart/addItem/'+id).success(function (data) {
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
         $http.get('http://localhost:8080/trendscart/categoryDropdown/productDisplay/usercart/cart/refreshCart/'+$scope.cartId).success(function (data) {
            $scope.cart=data;
         });
     };
     
     /*
      * clearCartItems method is used to delete all items from the cart
      */
     $scope.clearCartItems = function () {
     	$http['delete']('http://localhost:8080/trendscart/categoryDropdown/productDisplay/usercart/cart/clearCartItems/'+$scope.cartId).success(function (data)
     			{$scope.refreshCartItems()
     		});
     };
 });

</script>
 </body>
</html>

<%-- 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c"
          uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category_ShoppingCart</title>
<jsp:include page="header.jsp"/></nav>
</head>
<body>
 <center>
 <h1>cart items</h1>  
<table border="2" width="70%" cellpadding="2">  
<tr><th>OrderId</th><th>Quantity</th><th>Total</th><th>Cancel</th></tr>  

   <c:forEach var="cartitem" items="${cartList}">   
   <tr>
   <td>${cartitem.cartitemid}</td>    
   <td>${cartitem.quantity}</td>    
   <td>${cartitem.totalprice}</td> 
   <td><a href="cartcancel?orderid=${cartitem.cartitemid}">Cancel</a></td>  
    </tr>  
   </c:forEach>  
   </table>
   </center>
   <br>
   <div class="container">
   <div class="row">
        <div class="col-xs-6 col-sm-6 col-md-6">
          <a href="index" class="btn btn-lg btn-primary btn-block">Back To Home</a>
        </div><div class="col-xs-6 col-sm-6 col-md-6"><a href="payment" class="btn btn-lg btn-info btn-block">Proceed</a></div>
      </div>
   </div>
   </body>
</html> --%>