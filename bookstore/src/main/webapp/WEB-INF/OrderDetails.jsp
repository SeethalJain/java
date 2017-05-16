<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.Random"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>order detail</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
   <style type="text/css">
   body {
	background-image: url("http://eskipaper.com/images/necklace-hd-1.jpg");
	background-repeat: no-repeat;
	background-size:150%;
	
}
   </style>
</head>
<body>
	 <h3 style="font-family:monotype corsiva;color:black;font-size: 1.5em;"><b>OrderDetails</b></h3>
<div  ng-app="addToCartApp"  ng-controller = "addToCartCtrl"  ng-init="retrieveCart('${cartId}')">
	 
	 <div >
        <table class="table table-bordered" style="font-family:monotype corsiva;color:black;font-size: 1.5em;" >
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
			 <tr>
                    <td></td>
        
					<td></td>
                    <td>Grand Total(in Rs.)</td>
                    <td>{{GrandTotalOfItems()}}</td>
                </tr> 
			</tbody> 
		  </table>
			  

         	  
			
        </div>
		</div>     


	
<a href="${flowExecutionUrl}&_eventId=event2">confirm order</a>	  
		  
<!--  <a href="confirmorder"><button type="button" class="btn btn-primary" >Confirm order</button></a>
 -->        <a href="cancelorder"><button type="button" class="btn btn-primary" >cancel order</button></a>
        
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
         $http.put('http://localhost:8080/choco/categoryDropdown/productDisplay/usercart/cart/removeItem/'+name).success(function (data) {
             $scope.refreshCartItems();
         });
     };

 	 /*
      * addItemToCart method is used to add items into the cart
      */
     $scope.addItemToCart = function (id) {
         $http['delete']('http://localhost:8080/choco/usercart/cart/addItem/'+id).success(function (data) {
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
         $http.get('http://localhost:8080/choco/categoryDropdown/productDisplay/usercart/cart/refreshCart/'+$scope.cartId).success(function (data) {
            $scope.cart=data;
         });
     };
     
     /*
      * clearCartItems method is used to delete all items from the cart
      */
     $scope.clearCartItems = function () {
     	$http['delete']('http://localhost:8080/choco/categoryDropdown/productDisplay/usercart/cart/clearCartItems/'+$scope.cartId).success(function (data)
     			{$scope.refreshCartItems()
     		});
     };
 });

</script>
</body>
</html>