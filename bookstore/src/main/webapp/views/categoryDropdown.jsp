<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>  ${category.name}  </title>
<meta name="viewport" content="width=device-width,height=device-height,initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<style>
.body {
    padding-top: 70px; /* Required padding for .navbar-fixed-top. Remove if using .navbar-static-top. Change if height of navigation changes. */
}

.caption {
    height: 130px;
    overflow: hidden;
}

.caption h4 {
    white-space: nowrap;
}

.thumbnail img {
    width: 100%;
}

.ratings {
    padding-right: 10px;
    padding-left: 10px;
    color: #d17581;
}

.thumbnail {
    padding: 0;
}

.thumbnail .caption-full {
    padding: 9px;
    color: #333;
}

</style>



</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-md-3">
                <p class="lead">BOOK STORE</p>
                <div class="list-group">
                    <a href="categoryDropdown/101" class="list-group-item">Kids</a>
                    <a href="categoryDropdown/102" class="list-group-item">Youngsters and Teens</a>
                    <a href="categoryDropdown/103" class="list-group-item">Text Book</a>
                </div>
            </div>
   <div class="col-md-9">;

                
                <div class="row">
<c:forEach items="${productList}" var="product">
                    
                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="${product.image_link}.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right">RS.${product.price}</h4>
                                <h4><a href="productDisplay/${product.id}">${product.name }</a>
                                </h4>
<!--                                 <p>This is a short description.This jumbo book of alphabets use to learn alphabets for kids .</p> -->
                            </div>
                            <div class="ratings">
                                <p class="pull-right">5 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
              

                    

                    
                </div>

            </div>

        </div>

    </div>
    <!-- /.container -->

    

        <hr>
        <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>