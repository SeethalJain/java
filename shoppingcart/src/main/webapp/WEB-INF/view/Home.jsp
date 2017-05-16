<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 </head>
<body>
 <jsp:include page="Header.jsp"/>
  
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>
<!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="http://cdn.shopclues.com/images/banners/MenFootwear_23rdFeb17_CS_HeroBanner.jpg"  width="1500" height="500">
      </div>

      <div class="item">
        <img src="http://cdn.shopclues.com/images/banners/electronics_16jan_W_alam_tv2017.jpg" width="1500" height="500">
      </div>
    
      <div class="item">
        <img src="http://cdn.shopclues.com/images/banners/IVOOMIMobile_8mar-W_babita_Hero1.jpg"  width="1500" height="500">
      </div>
     
    </div>
        <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div></nav>
  
<div align="center"><h3>${thnk}</h3></div>
<div align="center"><h3>${dt}</h3></div>

<legend> Shoes</legend>
<div align="center">
<div class="container">
      <a href="Productpage?productid=104">    
  <img src="resources\images\104.png" class="img-thumbnail" alt="Cinque Terre" width="204" height="136"></a> 
  <a href="Productpage?productid=105">
  <img src="resources\images\105.png" class="img-thumbnail" alt="Cinque Terre" width="204" height="136"></a>
  <a href="Productpage?productid=101">
  <img src="resources\images\101.png" class="img-thumbnail" alt="Cinque Terre" width="204" height="136"> </a>
  <a href="Productpage?productid=106"> 
   <img src="resources\images\106.png" class="img-thumbnail" alt="Cinque Terre" width="204" height="136"> </a>
     
</div>
</div>
  
  <legend> Watches</legend>
<div align="center">
<div class="container">
  <a href="Productpage?productid=201">        
  <img src="resources\images\201.png" class="img-thumbnail" alt="Cinque Terre" width="204" height="136"> </a>
  <a href="Productpage?productid=202">
  <img src="resources\images\202.png" class="img-thumbnail" alt="Cinque Terre" width="204" height="136"></a>
  <a href="Productpage?productid=203">
  <img src="resources\images\203.png" class="img-thumbnail" alt="Cinque Terre" width="204" height="136"> </a>
   <a href="Productpage?productid=206">
   <img src="resources\images\206.png" class="img-thumbnail" alt="Cinque Terre" width="204" height="136"> </a>
     
</div>
</div>

 <legend> Sunglasses</legend>
<div align="center">
<div class="container">
   <a href="Productpage?productid=302">       
  <img src="resources\images\302.png" class="img-thumbnail" alt="Cinque Terre" width="204" height="136"> </a>
  
  <a href="Productpage?productid=305">
  <img src="resources\images\305.png" class="img-thumbnail" alt="Cinque Terre" width="204" height="136"></a>
  
  <a href="Productpage?productid=302">
  <img src="resources\images\302.png" class="img-thumbnail" alt="Cinque Terre" width="204" height="136"> </a>
  
  <a href="Productpage?productid=304">
   <img src="resources\images\304.png" class="img-thumbnail" alt="Cinque Terre" width="204" height="136"> </a>
     
</div>
</div>


  
 <jsp:include page="Footer.jsp"/>
</body>
 </html>