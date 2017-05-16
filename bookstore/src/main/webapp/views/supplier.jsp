<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.Random"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier</title>
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

<%@ include file="Admin.jsp" %><br/><br/>
 
       
	<div class="container">
	<h1 style="font-family:monotype corsiva; color:#000000;"><b>SUPPLIER</b></h1>

 <c:url var="addAction" value="/addsupplier"></c:url>

	<form:form action="${addAction}" commandName="supplier">
		<table style="width:50%">
			<tr>
				<td><form:label path="id">
						<spring:message text="Supplier Id" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty supplier.id}">
						<td><form:input path="id" disabled="true" readonly="true" style="color:black;"/>
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id" required="true" style="color:black;"/></td>
					</c:otherwise>
				</c:choose>
			<tr>
			<form:input path="id" hidden="true"  />
				<td><form:label path="name">
						<spring:message text="Supplier Name" />
					</form:label></td>
				<td><form:input path="name" required="true" style="color:black;"/></td>
			</tr>
			<tr>
				<td><form:label path="address">
						<spring:message text="Supplier Address" />
					</form:label></td>
				<td><form:input path="address" required="true" style="color:black;"/></td>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${!empty supplier.name}">
						<input type="submit"
							value="<spring:message text="Edit Supplier" />" />
					</c:if> <c:if test="${empty supplier.name}">
						<input type="submit" value="<spring:message text="Add Supplier" />" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	</div>
	<br>
	<h3 style="font-family:monotype corsiva; color:#000000;"><b>SUPPLIER LIST</b></h3>
	<div ng-app="repeatSample" ng-controller="SupplierController">
  <br/><br/>
  Search:<input type=text placeholder="Search" ng-model="searchText"/>
<%-- 	<c:if test="${!empty supplierList}">
 --%>		<table class="tg">
			<tr>
				<th width="80">Supplier ID</th>
				<th width="120">Supplier Name</th>
				<th width="120">Supplier Address</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr>
<%-- 			<c:forEach items="${supplierList}" var="supplier">
 --%>			
  <tr class="success" ng-repeat="sup in supplier|filter:searchText">
			
 	<td >{{sup.id}}</td>
 	<td>{{sup.name}}</td>
 	<td>{{sup.address}}</td>
 	<td ><a href="editsupplier/?id={{sup.id}}">Edit</a></td>
	<td><a href="removesupplier/?id={{sup.id}}">Delete</a></td>
 </tr>
				<%-- <tr>
					<td>${supplier.id}</td>
					<td>${supplier.name}</td>
					<td>${supplier.address}</td>
					<td><a href="<c:url value='editsupplier/${supplier.id}' />">Edit</a></td>
					<td><a href="<c:url value='removesupplier/${supplier.id}' />">Delete</a></td>
				</tr> --%>
				</tr>
		<%-- 	</c:forEach> --%>
		</table>
<%-- 	</c:if>
 --%>	</div>
	<script>
  var prod = ${supplierList}; 
  angular.module('repeatSample',[]).controller('SupplierController', function($scope)  
   {
          $scope.supplier=prod;  
          $scope.sort = function(keyname)
          {
              $scope.sortKey = keyname;   //set the sortKey to the param passed
              $scope.reverse = !$scope.reverse; //if true make it false and vice versa
          }
              
   
              
    });
</script>
</body>
</html>