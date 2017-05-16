<%@page import="java.util.Random"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>billing page</title>
<style>
body {
	background-image: url("http://eskipaper.com/images/necklace-hd-1.jpg");
	background-repeat: no-repeat;
	background-size:150%;
	
}</style>
</head>
<body>
<center>
<div class="container-fluid"  >
		
		<div class="content">
			<div class="panel panel-primary">
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
			
				<div class="panel-heading" style="font-family:monotype corsiva;color:black;font-size: 1.5em;font-weight: bold;">Billing Address</div>
				<div class="panel-body">
					<form:form class="form-horizontal" action= "${flowExecutionUrl}&_eventId=event1" commandName="billingAddress" style="font-family:monotype corsiva;font-weight: bold;color:black;font-size: 1.5em;">
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Line 1</label>
							<div class="col-sm-10">
							<form:errors path="line1" class="error"/>
								<input name="line1" type="text" autofocus="true" class="form-control" required="true"/>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Line 2</label>
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
				<%-- <a href="${flowExecutionUrl}&_eventId=event1"> --%>	
					<input type="submit" name="_eventId_submitBillingAddress"
							class="btn btn-md btn-success" value="Save"></a>
						<input type="reset" name="_eventId_cancel"
							class="btn btn-md btn-danger" value="reset">
					    </div>
					    </form:form>
					  </div>
					
				</div>
			</div>
		</div>
		
	</center>
</body>
</html>