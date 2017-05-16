<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>book store</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
 width:100% ;
 height:70 px;
      margin: auto;
  }
</style> 
</head>

<body>
<%@ include file="/views/header.jsp" %>
<c:if test="${not empty successlogin}">
	
${username}
${successlogin}
</c:if>
 <div class="container-fluid">
 
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
        <img src="https://wallpaperscraft.com/image/book_reading_inspiration_113238_1920x1080.jpg" alt="book" width="450 pixel" height="400 pixel">
      </div>

      <div class="item">
        <img src="https://wallpaperscraft.com/image/book_shelves_a_lot_of_85661_1920x1080.jpg" alt="book" width="450 pixel" height="400 pixel">
      </div>
    
      <div class="item">
        <img src="https://wallpaperscraft.com/image/book_notebook_flowers_lilies_85660_1920x1080.jpg" alt="book" width="450 pixel" height="400 pixel">
      </div>

      <div class="item">
        <img src="https://wallpaperscraft.com/image/books_library_old_111388_1920x1080.jpg" alt="book" width="450 pixel" height="400 pixel">
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
  </div>
</div>
<center><h3>The Future of self study.</h3> 
<p>Broaden your Knowledge everyday from our site.</p></center>
<!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">

      <!-- Three columns of text below the carousel -->
      <div class="w">
        <div class="col-lg-4">
          <img class="img-circle" src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTD9AsRjegbMxsdLHSNDiDQup4IiALQEigaRuJ4c9svMdP2eXm5Hg" alt="Generic placeholder image" width="140" height="140">
          <h2>kids book</h2>
          <p>In this kids category you can find many varities of kids book</p>
      <!--     <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p> -->
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="https://bestbooksandauthors.files.wordpress.com/2013/04/good-books-for-children.jpeg" alt="Generic placeholder image" width="140" 

height="140">
          <h2>youngsters and teens book</h2>
          <p>In this category you can find many varities of youngsters and teens book</p>
        <!--   <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p> -->
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="data:image/jpeg;base64,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" alt="Generic placeholder image" width="140" height="140">
          <h2>text book</h2>
          <p>In this text book category you can find many varities of text book</p>
         <!--  <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p> -->
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->


      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">

      <div class="rowe">
        <div class="col-md-7">
          <h2 class="featurette-heading">Books <span class="text-muted">It'll blow your mind.</span></h2>
          <p class="lead">Escape into the magical world of books. Let your imagination run wild with adventurous tales. Embark on fun-filled journeys to places that 
exist only in fiction.. Expand your knowledge. Read anything and everything.</p>
        </div>
        <div class="col-md-5">
        <iframe width="425" height="315" src="https://www.youtube.com/embed/SKVcQnyEIT8" frameborder="0" allowfullscreen></iframe>
        </div>
      </div>

      <hr class="feature-divider">

      <div class="rowe">
        <div class="col-md-7 col-md-push-5">
          <h2 class="featurette-heading">Oh yeah, it's that good. <span class="text-muted">See for yourself.</span></h2>
          <p class="lead">Better World Books uses the power of business to change the world. We collect and sell books online to donate books and fund literacy 
initiatives worldwide. With more than 8 million new and used titles in stock, we’re a self-sustaining, triple-bottom-line company that creates social, economic and 
environmental value for all our stakeholders.</p>
        </div>
        <div class="col-md-5 col-md-pull-7">
          <img class="featurette-image img-responsive center-block" src="https://wallpaperscraft.com/image/books_apple_pillows_blurring_67480_602x339.jpg" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="feature-divider">

      <div class="rowe">
        <div class="col-md-7">
          <h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Merits.</span></h2>
          <p class="lead">All books are available with free shipping worldwide. And in case you're concerned about your eco-footprint, every order shipped from 
Mishawaka is carbon balanced with Green-e Climate certified offsets from 3Degrees, a leading green power and carbon balancing services firm.</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" src="https://wallpaperscraft.com/image/books_toys_holiday_76952_1920x1080.jpg" alt="Generic placeholder image">
        </div>
      </div>
</div>>
     

      <!-- /END THE FEATURETTES -->


<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>







<jsp:include page="footer.jsp"></jsp:include>
  	
 
  


</body>
</html>