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
<title>Product</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
tr{
font-size: 1.5em;
font-family: monotype corsiva;
color: #000000;
font-weight: bold;
}
</style>

</head>
<body>
<%@ include file="Admin.jsp"%><br/><br/>
<script>
	var cat = ${categoryList};
	var sell = ${supplierList};
	
	angular.module('repeatSample1', []).controller('reapeterController1',
			function($scope) {
				$scope.Category1 = cat;
				$scope.Seller1 = sell;
				$scope.sort = function(keyname) {
					$scope.sortKey = keyname; //set the sortKey to the param passed
					$scope.reverse = !$scope.reverse; //if true make it false and vice versa
				}
			});
</script>

<div class="container"ng-app="repeatSample1" >
<h1 style="font-family:monotype corsiva; color:#000000;" ><b> PRODUCT</b></h1>

	<c:url var="addAction" value="/addproduct"></c:url>

	<form:form action="${addAction}" method="post" enctype="multipart/form-data" commandName="product">
		<table style="width:100%">
			<tr>
				<td><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty product.id}">
						<td><form:input path="id" disabled="true" readonly="true" style="color:black;" />
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id" required="true"/></td>
					</c:otherwise>
				</c:choose>
			<tr>
			<form:input path="id" hidden="true"  />
				<td><form:label path="name">
						<spring:message text="Name" />
					</form:label></td>
				<td><form:input path="name" required="true" style="color:black;"/></td>
			</tr>
			
			
			<tr>
				<td><form:label path="price">
						<spring:message text="Price" />
					</form:label></td>
				<td><form:input path="price" required="true" style="color:black;"/></td>
			</tr>
			
			<tr>
				<td><form:label path="description">
						<spring:message text="Description" />
					</form:label></td>
				<td><form:input path="description" required="true" style="color:black;"/></td>
			</tr>
		<tr>
				<td><form:label path="image_link">
						<spring:message text="Image_link" />
					</form:label></td>
				<td><form:input path="image_link" required="true" /></td>
			</tr>
				
			
			<tr>
				<td><form:label path="supplier">
						<spring:message text="Supplier" />
					</form:label></td>
			
				 <td><form:select path="supplier.name" items="${supplierList}" itemValue="name" itemLabel="name" style="color:black;" /></td>
			</tr>
			<tr>
				<td><form:label path="category">
						<spring:message text="Category" />
					</form:label></td>
			
				<td><form:select path="category.name" items="${categoryList}" itemValue="name" itemLabel="name" style="color:black;"/></td>
			</tr>
			<tr>
			<td><form:label path="image">
			<spring:message text="Image"/>
			</form:label></td>
			<td><form:input type="file" name="image" path="image" style="color:black;"/></td>
			
			</tr>
			<tr>
				<td colspan="2"><c:if test="${!empty product.name}">
						<input type="submit"
							value="<spring:message text="editproduct"/>" />
					</c:if> <c:if test="${empty product.name}">
						<input type="submit" value="<spring:message text="addproduct" />" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	</div>
	<br>
	<h3 style="font-family:monotype corsiva; color:#000000;"><b>PRODUCT LIST</b></h3>
	<c:if test="${!empty productList}">
		<table class="tg">
			<tr>
				<th width="80">Product ID</th>
				<th width="120">Product Name</th>
				<th width="80">Price</th>
				<th width="400">Product Description</th>
				<th width="80">Category</th>
				<th width="80">Supplier</th>
				<th width="200">Image_link</th>
				<th width="80">Image</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr>
			<c:forEach items="${productList}" var="product">
				<tr>
					<td>${product.id}</td>
					<td>${product.name}</td>
					<td>${product.price}</td>
					<td>${product.description}</td>
					<td>${product.category.name}</td>
					<td>${product.supplier.name}</td>
					<td>${product.image_link}</td>
					<td>${product.image}</td>
					<td><img src="<c:url value="${product.image_link}.jpg"/>" style="width:75px;height:75px"></td>
					<td><a href="<c:url value='editproduct/${product.id}' />">Edit</a></td>
					<td><a href="<c:url value='removeproduct/${product.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>
