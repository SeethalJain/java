<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.Random"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BJeweled</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>
<style>
body {

	background:url("http://paper-backgrounds.com/textureimages/2012/08/white-wall-with-embossed-vintage-pattern-texture-hd.jpg")no-repeat center center fixed;
	margin-top: 20px;
}
</style>
<body>
<%@include file="header.jsp"%>
<div  ng-app="addToCartApp"  ng-controller = "addToCartCtrl"  ng-init="retrieveCart('${cartId}')">
 <table class="table table-bordered table-striped fs13" >
		  <thead>
			  <tr>
			  <th>Product</th>
				<th >Unit Price</th>
				<th>Quantity</th>
				<th>Total Price(in Rs.)</th>
			  </tr>
			</thead>
			<tbody>
		
				<tr ng-repeat = "items in cart.cartItems">
		
						<td>{{items.name}}</td>
						<td>{{items.price}}</td>
						<td>{{items.quantity}}</td>
						<td>{{items.totalPrice}}</td>
					</tr>
		
       
			</tbody> 
		  </table>
		  </div>
 <a href="confirmorder"><button type="button" class="btn btn-primary" >Confirm order</button></a>
        <a href="cancelorder"><button type="button" class="btn btn-primary" >cancel order</button></a>
        
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
     $scope.removeItemFromCart = function (name) {
         $http.put('http://localhost:8080/jewelrycart/categoryDropdown/productDisplay/usercart/cart/removeItem/'+name).success(function (data) {
             $scope.refreshCartItems();
         });
     };

 	 /*
      * addItemToCart method is used to add items into the cart
      */
     $scope.addItemToCart = function (id) {
         $http['delete']('http://localhost:8080/jewelrycart/usercart/cart/addItem/'+id).success(function (data) {
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
         $http.get('http://localhost:8080/jewelrycart/categoryDropdown/productDisplay/usercart/cart/refreshCart/'+$scope.cartId).success(function (data) {
            $scope.cart=data;
         });
     };
     
     /*
      * clearCartItems method is used to delete all items from the cart
      */
     $scope.clearCartItems = function () {
     	$http['delete']('http://localhost:8080/jewelrycart/categoryDropdown/productDisplay/usercart/cart/clearCartItems/'+$scope.cartId).success(function (data)
     			{$scope.refreshCartItems()
     		});
     };
 });

</script>
<%@include file="footer.jsp"%>
</body>
</html>