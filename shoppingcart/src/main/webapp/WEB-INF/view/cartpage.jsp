<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c"
          uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category_ShoppingCart</title>
<jsp:include page="Header.jsp"/></nav>
<jsp:include page="Css.jsp" />
</head>
<body>
 <center>
 <h1>cart items</h1>  
<table border="2" width="70%" cellpadding="2">  
<tr><th>OrderId</th><th>Quantity</th><th>Total</th><th>Cancel</th></tr>  

   <c:forEach var="order_table" items="${cartList}">   
   <tr>
   <td>${order_table.orderid}</td>    
   <td>${order_table.quantity}</td>    
   <td>${order_table.total}</td> 
   <td><a href="cartcancel?orderid=${order_table.orderid}">Cancel</a></td>  
    </tr>  
   </c:forEach>  
   </table>
   </center>
   <br>
   <div class="container">
   <div class="row">
        <div class="col-xs-6 col-sm-6 col-md-6">
          <a href="Home" class="btn btn-lg btn-primary btn-block">Back To Home</a>
        </div><div class="col-xs-6 col-sm-6 col-md-6"><a href="Address" class="btn btn-lg btn-info btn-block">Proceed</a></div>
      </div>
   </div>
   </body>
</html>