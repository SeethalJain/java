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
<title>Category</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
tr{
font-size: 1.5em;
font-family: monotype corsiva;
color: #000000;
font-weight: bold;
}
</style>

<body>
<%@ include file="Admin.jsp" %><br><br>
    <div class="container">
	 
	<h1 style="font-family:monotype corsiva; color:#000000;"><b>CATEGORY</b></h1>

	<c:url var="addAction" value="/addcategory"></c:url>

	<form:form action="${addAction}" commandName="category">
		<table style="width:50%">
			<tr>
				<td><form:label path="id">
						<spring:message text="Category Id" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty category.id}">
						<td><form:input path="id" disabled="true" readonly="true" style="color:black;" />
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id" required="true" style="color:black;"/></td>
					</c:otherwise>
				</c:choose>
			<tr>
			<form:input path="id" hidden="true"  />
				<td><form:label path="name">
						<spring:message text="Category Name" />
					</form:label></td>
				<td><form:input path="name" required="true" style="color:black;" /></td>
			</tr>
			<tr>
				<td><form:label path="description">
						<spring:message text="Category Description" />
					</form:label></td>
				<td><form:input path="description" required="true" style="color:black;" /></td>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${!empty category.name}">
						<input type="submit"
							value="<spring:message text="Edit Category" />" />
					</c:if> <c:if test="${empty category.name}">
						<input type="submit" value="<spring:message text="Add Category" />" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	</div>
	<br>
	<h3 style="font-family:monotype corsiva; color:#000000;"><b>CATEGORY LIST</b></h3> 
	<c:if test="${!empty categoryList}">
		<table class="tg">
			<tr>
				<th width="80">Category ID</th>
				<th width="120">Category Name</th>
				<th width="120">Category Description</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr>
			<c:forEach items="${categoryList}" var="category">
				<tr>
					<td>${category.id}</td>
					<td>${category.name}</td>
					<td>${category.description}</td>
					<td><a href="<c:url value='editcategory/${category.id}' />">Edit</a></td>
					<td><a href="<c:url value='removecategory/${category.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>