<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<style>
.img{
  width="600";
  height="400";
}
</style>
<body>
<%@ include file="Admin.jsp"%><br/><br/>

</div>
<div class="container" >
<h1>Add  Product</h1>

	<c:url var="addAction" value="/addproduct"></c:url>

	<form:form action="${addAction}" method="post" enctype="multipart/form-data" commandName="product">
		<table style="width:100%">
			<tr>
				<td><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty product.id}">
						<td><form:input path="id" disabled="true" readonly="true" />
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
				<td><form:input path="name" required="true" /></td>
			</tr>
			
			
			<tr>
				<td><form:label path="price">
						<spring:message text="Price" />
					</form:label></td>
				<td><form:input path="price" required="true" /></td>
			</tr>
			
			<tr>
				<td><form:label path="description">
						<spring:message text="Description" />
					</form:label></td>
				<td><form:input path="description" required="true" /></td>
			</tr>
			
			<tr>
				<td><form:label path="supplier">
						<spring:message text="Supplier" />
					</form:label></td>
			
				 <td><form:select path="supplier.name" items="${supplierList}" itemValue="name" itemLabel="name" /></td>
			</tr>
			<tr>
				<td><form:label path="category">
						<spring:message text="Category" />
					</form:label></td>
			
				<td><form:select path="category.name" items="${categoryList}" itemValue="name" itemLabel="name" /></td>
			</tr>
			<tr>
			<td><form:label path="image">
			<spring:message text="Image"/>
			</form:label></td>
			<td><form:input type="file" name="image" path="image"/></td>
			
		<%-- <td><form:label path="image">Image</form:label></td>   
		  
							<td>   <form:input type="file" path="image" /></td> --%>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${!empty product.name}">
						<input type="submit"
							value="<spring:message text="editproduct"/>" />
					</c:if> <c:if test="${empty product.name}">
						<input type="submit" value="<spring:message text="addproduct"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	</div>
	<br>
	<h3>Product List</h3>
	<c:if test="${!empty productList}">
		<table class="tg">
			<tr>
				<th width="80">Product ID</th>
				<th width="120">Product Name</th>
				<th width="80">Price</th>
				<th width="200">Product Description</th>
				<th width="80">Category</th>
				<th width="80">Supplier</th>
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
					<td><img src="<c:url value="F:\Jewellery Images/${product.id}.jpg"/>" width="100"  height="100"></td>
					<td><a href="<c:url value='editproduct/${product.id}' />">Edit</a></td>
					<td><a href="<c:url value='removeproduct/${product.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	<%@ include file="footer.jsp" %>
</body>
</html>
