<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
	
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BJeweled</title>
</head>
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
.col-sm-10{}
</style>
<body>
<%@include file="header.jsp"%>
<div class="container-fluid">
		
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<div class="well well-default">
						<div class="well-body">
							<h3 class="text-center" style="color: black;">Billing Address</h3>
					<form:form class="form-horizontal" action="saveBillingAddress" commandName="billingAddress">
						<div class="form-group">
							<label for="" class="control-label col-sm-2">House</label>
							<div class="col-sm-10">
							<form:errors path="line1" class="error"/>
								<input name="line1" type="text" autofocus="true" class="form-control" required="true"/>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Street</label>
							<div class="col-sm-10">
							<form:errors path="line2" class="error"/>
								<input name="line2" type="text" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">City</label>
							<div class="col-sm-10">
							<form:errors path="city" class="error"/>
								<input name="city" type="text" class="form-control" required="true"/>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">State</label>
							<div class="col-sm-10">
							<form:errors path="state" class="error"/>
								<input name="state" type="text" class="form-control" required="true"/>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Country</label>
							<div class="col-sm-10">
							<form:errors path="country" class="error"/>
								<input name="country" type="text" class="form-control" required="true"/>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Zip code</label>
							<div class="col-sm-10">
							<form:errors path="zipCode" class="error"/>
								<input name="zipCode" type="text" pattern="^[1-9][0-9]{5}$" title="Enter a 6 digit pincode" required="true" class="form-control" />
							</div>
						</div>
						<div class="col-md-offset-3">
						<input type="submit" name="_eventId_submitBillingAddress"
							class="btn btn-md btn-success" value="Save">
						<input type="submit" name="_eventId_cancel"
							class="btn btn-md btn-danger" value="Cancel">
					    </div>
					    </form:form>
					  </div>
					
				</div>
			</div>
		</div>
		
	<%@include file="footer.jsp"%>
</body>
</html>