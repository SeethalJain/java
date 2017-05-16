<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Productview</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="Header.jsp"/></nav>

</head>
<body>
<div class="container">

<c:forEach var="productlist" items="${productlist}"> 
<div id="design-cast">
      <div class="member">
    <a href="Productpage?productid=${productlist.id}">
        <img src="resources/images/${productlist.id}.png" class="img-responsive img-thumbnail" alt="${productlist.id}" width="204" height="136"/>
        </a>
        <div class="name"><strong>${productlist.name }</strong>
            </div>
    </div></div>
</c:forEach>          
  </div>
</body>
</html>
