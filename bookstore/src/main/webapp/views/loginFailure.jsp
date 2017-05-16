<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
<style type="text/css">
h2{
font-family: monotype corsiva;
	font-size: 1.5em;
	font-weight: bold;
	color:#000;
	}
.background {
	background-image: url("https://wallpaperscraft.com/image/sunglasses_books_beach_sun_110969_1920x1080.jpg");
	background-size:100%;
}

</style>
</head>
 <body>
<%@ include file="header.jsp" %>
  <h3>Please Enter the Correct Credentials!</h3>
  <div class="background">  
  <br>
<br>
<br>
<br>
<br>
 
            <form:form action="perform_login" method="post" role="form">
	   <center><h2 style="color:black;font-weight: bold;font-family: monotype corsiva;">Login page</h2></center>
	  
	   <table  cellspacing="10" cellpadding="2" width="45%" 
			align="center">
<tr>
<td style="color:black;font-weight: bold;font-family: monotype corsiva;font-size: 1.5em;" > UserName<p></td>
<td ><input type="text"  name="username" size="20"/><p></td>
</tr>

<tr>
<td style="color:black;font-weight: bold;font-family: monotype corsiva;font-size: 1.5em;">Password<p></td>
<td ><input type="password"  name="password" size="20"/><p></td>
</tr>
<tr>
<td></td>
<td><input type="submit" style="color:black;" value="Login"></td>
</tr></table>
</form:form>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
</div>
<%@ include file="footer.jsp" %>
    


</body>
</html>