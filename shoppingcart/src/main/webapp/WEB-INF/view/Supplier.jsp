<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c"
          uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<jsp:include page="Header.jsp"/></nav>
<jsp:include page="Css.jsp"/>
</head>
<body>
<div class="container">
  <div class="row">
    <div class="main">
<form action="supplieradd" method="post">
  <div class="form-group">
          <label for="inputId">ID</label>
          <input type="text"  placeholder="id" required=" " value="${value.id}" name="id" class="form-control" id="inputId">
        </div>
         <div class="form-group">
          <label for="inputName">Name</label>
          <input type="text"  placeholder="name" required=" " value="${value.name}" name="name" title="Name should have  min 3 char and max 15" pattern="[A-Za-z]{3,15}" class="form-control" id="inputName">
        </div>
        <div class="form-group">
          <label for="inputContactnumber">ContactNumber</label>
          <input type="text"  placeholder="Contactnumber" required=" " value="${value.contactnumber}" name="contactnumber" title="Mobile Number should start with either 7/8/9 and should contain 10 digits" pattern="[789][0-9]{9}" class="form-control" id="inputContactnumber">
        <br>
        <button type="submit" class="btn btn btn-primary">
          Add
        </button>   
       </div></form></div></div></div>
     <center>
<h1>supplier table</h1>  
<table border="2" width="70%" cellpadding="2">  
<tr><th>Id</th><th>Name</th><th>Contactnumber</th><th>Edit</th><th>Delete</th></tr>  
   <c:forEach var="supplier" items="${supplierList}">   
   <tr>  
   <td>${supplier.id}</td>  
   <td>${supplier.name}</td>   
   <td>${supplier.contactnumber}</td>  
   <td><a href="editsupplier?supplierId=${supplier.id}">Edit</a></td>  
   <td><a href="deletesupplier?supplierId=${supplier.id}">Delete</a></td>  
   </tr>  
   </c:forEach>  
   </table> 
   </center> 
   <br/>  
</form>
</body>
</html>