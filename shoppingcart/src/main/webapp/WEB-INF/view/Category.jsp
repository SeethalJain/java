<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c"
          uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category_ShoppingCart</title>
<jsp:include page="Css.jsp"/>
<jsp:include page="Header.jsp"/></nav>

</head>
<body>
<div class="container">
  <div class="row">
    <div class="main">
<form action="adding" method="post">
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
        <br>
        <button type="submit" class="btn btn btn-primary">
          Add
        </button>   
       </form></div></div></div>
     <br>
     <center>
 <h1>category table</h1>  
<table border="2" width="70%" cellpadding="2">  
<tr><th>Id</th><th>Name</th><th>Description</th><th>Edit</th><th>Delete</th></tr>  
   <c:forEach var="category" items="${categoryList}">   
   <tr>  
   <td>${category.id}</td>  
   <td>${category.name}</td>   
   <td>${category.description}</td>  
   <td><a href="editcategory?categoryId=${category.id}">Edit</a></td>  
   <td><a href="deletecategory?categoryId=${category.id}">Delete</a></td>  
   </tr>  
   </c:forEach>  
   </table>
   </center>
   </form>
    
  
 </body>
</html>