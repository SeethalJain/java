<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta charset="utf-8" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"
	type="text/javascript"></script>
	
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	type="text/javascript"></script>
<title>Registration for online shopping</title>
<style>
body {
	background:
		url('https://static.videezy.com/system/resources/thumbnails/000/005/027/original/diamond-ring-4k-wedding-background.jpg')
		no-repeat center center fixed;
}

* {
	color: white;
}

.form-signin {
	max-width: 280px;
	padding: 15px;
	margin: 100px;
	margin-top: 10px;
}

.input-group-addon {
	background-color: rgb(50, 118, 177);
	border-color: rgb(40, 94, 142);
	color: rgb(255, 255, 255);
}

.form-control:focus {
	background-color: rgb(50, 118, 177);
	border-color: rgb(40, 94, 142);
	color: rgb(255, 255, 255);
}

.well-default {
	opacity: 0.8;
	/*margin-top:30px;*/
}
</style>


<body>
	<jsp:include page="header.jsp"></jsp:include>
	<form id="signup" action="Success" modelAttribute="userDetails" method="POST">
	<form class="form-signin">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<div class="well well-default">
						<div class="well-body">
							<h3 class="text-center" style="color: black;">SIGN UP</h3>

							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon"><span
										class="glyphicon glyphicon-user" style="color: black;"></span>
									</span> <input type="text" class="form-control" name="name" required
										placeholder="First Name" id="FirstName"/>
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon"><span
										class="glyphicon glyphicon-pencil" style="color: black;"></span></span>
									<input type="text" class="form-control" name="username"
										placeholder="Username" id="UserName" required />
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon"><span
										class="glyphicon glyphicon-envelope" style="color: black;"></span></span>
									<input class="form-control" required type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
										placeholder="Email" name="email" id="EmailId"
										onchange="email_validate(this.value);" />
								</div>
							</div>
							
							<div class="form-group">
								<div class="input-group">

									<span class="input-group-addon"><span
										class="glyphicon glyphicon-lock" style="color: black;"></span></span>
									<input required name="password" type="password"
										class="form-control inputpass" placeholder="Enter Password" minlength="6" maxlength="16"
										id="password" />
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon"><span
										class="glyphicon glyphicon-lock" style="color: black;"></span></span>
									<input required name="cpassword" type="password"
										class="form-control inputpass" minlength="4" maxlength="16"
										placeholder="Enter again to validate" id="cpassword"
										onkeyup="checkPass(); return false;" />
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon"><span
										class="glyphicon glyphicon-map-marker" style="color: black;"></span></span>
									<input type="text" name="address" class="form-control"
										placeholder="City" id="City"/>
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon"><span
										class="glyphicon glyphicon-phone" style="color: black;"></span></span>
									<input type="text" name="Phone" pattern="[0-9]{10}" class="form-control"
										placeholder="Phone" id="ContactNo" />
								</div>
							</div>
							</div>
						<div class="form-group">
							<input class="btn btn-success" type="submit" name="submit_reg"
								value="Register">
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
<script>

function checkPass() {
	//Store the password field objects into variables ...
	var password = document.getElementById('password');
	var cpassword = document.getElementById('cpassword');
	//Store the Confimation Message Object ...
	var message = document.getElementById('confirmMessage');
	//Set the colors we will be using ...
	var goodColor = "#66cc66";
	var badColor = "#ff6666";
	//Compare the values in the password field 
	//and the confirmation field
	if (password.value == cpassword.value) {
		//The passwords match. 
		//Set the color to the good color and inform
		//the user that they have entered the correct password 
		cpassword.style.backgroundColor = goodColor;
		message.style.color = goodColor;
		message.innerHTML = "Passwords Match"
	} else {
		//The passwords do not match.
		//Set the color to the bad color and
		//notify the user.
		cpassword.style.backgroundColor = badColor;
		message.style.color = badColor;
		message.innerHTML = "Passwords Do Not Match!"
	}
}
function email_validate(email) {
	var regMail = /^([_a-zA-Z0-9-]+)(\.[_a-zA-Z0-9-]+)*@([a-zA-Z0-9-]+\.)+([a-zA-Z]{2,3})$/;

	if (regMail.test(email) == false) {
		document.getElementById("status").innerHTML = "<span class='warning'>Email address is not valid yet.</span>";
	} else {
		document.getElementById("status").innerHTML = "<span class='valid'>Thanks, you have entered a valid Email address!</span>";
	}
	
}

	</script>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>