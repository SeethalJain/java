<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trendz-Fashion For All</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>body {
	background:
		url("")
		no-repeat;
	background-color: brown;
	font: oblique;
	size: 100px 80px auto;
	font-family: 'Didot-Italic';
	font-style: italic;
	color: #B22222;
}</style>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp" %>
${username}
${successlogin}
 <%@ include file="/WEB-INF/views/Carousel.jsp" %>
 <%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>