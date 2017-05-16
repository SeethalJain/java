<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product</title>
<jsp:include page="Header.jsp"/></nav>
<jsp:include page="Css.jsp"/>
</head>
<body>
<center>

         <form:form action="saveproduct" commandName="product" method="post" enctype="multipart/form-data">
         
         <div class="container">
  <div class="row">
    <div class="main">
    
         <div class="form-group">
      <label for="inputId">ID</label>
          <input type="text"  placeholder="id" required=" " value="${values.id}" name="id" class="form-control" id="inputId">
        </div>
         <div class="form-group">
          <label for="inputName">Name</label>
          <input type="text"  placeholder="name" required=" " value="${values.name}" name="name" title="Name should have  min 3 char and max 15" pattern="[A-Za-z]{3,15}" class="form-control" id="inputName">
        </div>
        <div class="form-group">
          <label for="inputDescription">Description</label>
          <input type="text"  placeholder="Description" required=" " value="${values.description}" name="description" class="form-control" id="inputdescription">
        </div>
        <div class="form-group">
      <label for="inputPrice">Price</label>
          <input type="text"  placeholder="price" required=" " value="${values.price}" name="price" class="form-control" id="inputPrice">
        </div>
          <div class="form-group">
      <label for="inputQuantity">Quantity</label>
          <input type="text"  placeholder="quantity" required=" " value="${values.quantity}" name="quantity" class="form-control" id="inputQuantity">
        </div></div></div></div>
        
<br><form:select path="category_id">        
<option value=category>Category List</option>
<c:forEach var="category" items="${category_drop}"> 
<option  value="${category.id}">${category.name} </option>
</c:forEach>
</form:select>
<br>

 <br><form:select path="supplier_id">
<option value=supplier>Supplier List</option>
<c:forEach var="supplier" items="${supplier_drop}"> 
<option value="${supplier.id}">${supplier.name}</option>
 </c:forEach>
</form:select>   
<br>    
 <br><label for="image">Image :</label><form:input path="image" type="file"/>
 <br> <button type="submit" class="btn btn btn-primary">
          Save
        </button>  <br>   
        </form:form>  
        </center>
                  
    <div align="center"><h3>Product List</h3> 
   		<table border="2" width="70%" cellpadding="2">  
  			<tr>
  				<th>ID</th>
				<th>Name</th>
				<th>Description</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>Category</th>
				<th>Supplier</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
   <c:forEach var="product" items="${productList}">
				<tr>
                	<td>${product.id}</td>
					<td>${product.name}</td>
					<td>${product.description}</td>
					<td>${product.price}</td>
					<td>${product.quantity}</td>
					<td>${product.category_id}</td>				
					<td>${product.supplier_id}</td>				
					
					<td><a href="editproduct?productId=${product.id}">Edit</a></td>
					
					<td><a href="deleteproduct?productId=${product.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
    </div> 
     </body>
</html>