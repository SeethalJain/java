<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <c:if test="${pageContext.request.userPrincipal.name != null}">
    	 <%@page session ="true" %>
</c:if> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login_ShoppingCart</title>
<jsp:include page="Css.jsp" />
</head>
<body>
<div class="container">
  <div class="row">
  
    <div class="main">
      <h3>Please Log In, or <a href="Register">Sign Up</a></h3>
    <form action="loginprocess" method="post">
        <div class="form-group">
          <label for="inputUsernameEmail">Username</label>
          <input type="text" title="name should have max 15 min 3 char,no numbers" pattern="[A-Za-z]{3,15}" placeholder="username" required=" "name="username" class="form-control" id="inputUsernameEmail">
        </div>
        <div class="form-group">
          <label for="inputPassword">Password</label>
          <input type="password" title="Password should be min one uppercase,lowercase and number" placeholder="Password" required=" "  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" name="password" class="form-control" id="inputPassword">
        <br>
        <button type="submit" class="btn btn btn-primary">
          Log In
        </button>   
       </div></form>
      </div>    
  </div>
</div>
</body>
</html>