<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trendz-Fashion For All </title>
<style>
body {
	background:
		url("https://s-media-cache-ak0.pinimg.com/originals/a5/1f/28/a51f28d4dfdfcd9b2b4bab5b1fd378fa.jpg");
		font-family: 'Didot-Italic';
	font-style: italic;
}

.jumbotron {
	background:
		url("http://cdn.wallpapersafari.com/34/18/jNlfaT.jpg");
	color: #FFF;
	border-radius: 0px;
	font-family: 'Didot-Italic';
	font-style: italic;
}

.jumbotron-sm {
	padding-top: 24px;
	padding-bottom: 24px;
}

.jumbotron small {
	color: #FFF;
	
}

.h1 small {
	font-size: 24px;
	font-family: 'Didot-Italic';
	font-style: italic;
}

.first-box {
	padding: 10px;
	background: transparent;
	font-family: 'Didot-Italic';
	font-style: italic;
}

.second-box {
	padding: 10px;
	background: transparent;
	font-family: 'Didot-Italic';
	font-style: italic;
}

.third-box {
	padding: 10px;
	background: transparent;
	font-family: 'Didot-Italic';
	font-style: italic;
}

.fourth-box {
	padding: 10px;
	background: transparent;
	font-family: 'Didot-Italic';
	font-style: italic;
}

</style>
<body>
<%@ include file="/WEB-INF/views/header.jsp" %>
	<div class="jumbotron jumbotron-sm">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-lg-12">
					<h1 class="h1">
						Contact us <small>Feel free to contact us</small>
					</h1>
				</div>
			</div>
		</div>
	</div><br><br>
	<div class="container">

		<div class="row text-center">
			<div class="col-sm-3 col-xs-6 first-box">
				<h1>
					<span class="glyphicon glyphicon-earphone"></span>
				</h1>
				<h3>Phone</h3>
				<p>+919551910449</p>
				<br>
			</div>
			<div class="col-sm-3 col-xs-6 second-box">
				<h1>
					<span class="glyphicon glyphicon-home"></span>
				</h1>
				<h3>Location</h3>
				<p> Road</p>
				<br>
			</div>
			<div class="col-sm-3 col-xs-6 third-box">
				<h1>
					<span class="glyphicon glyphicon-send"></span>
				</h1>
				<h3>E-mail</h3>
				<p>call.sjjain10@gmail.com</p>
				<br>
			</div>
			<div class="col-sm-3 col-xs-6 fourth-box">
				<h1>
					<span class="glyphicon glyphicon-leaf"></span>
				</h1>
				<h3>Web</h3>
				<p>www.trendscart.com</p>
				<br>
			</div>
		</div>
	</div>
	<br>
	<br><br><br>
				<div class="col-md-4">
				<form>
            <legend><span class="glyphicon glyphicon-globe"></span> Our office</legend>
            <address>
                <strong>TrendzCart</strong><br>
                7th cross Street<br>
                Broadway,Chennai-600115<br>
                <abbr title="Phone">
                    P:</abbr>
                +919551910449
            </address>
            <address>
                <strong>Seethal Jain</strong><br>
                <a href="mailto:#">call.sjjain10@gmail.com</a>
            </address>
            </form>
			</div>
		</div>
	</div>
<%@ include file="/WEB-INF/views/footer.jsp" %>

</body>
</html>





