<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Address_ShoppingCart</title>
<jsp:include page="Css.jsp" />
<style>
$(function () {
    $('.button-checkbox').each(function () {

        // Settings
        var $widget = $(this),
            $button = $widget.find('button'),
            $checkbox = $widget.find('input:checkbox'),
            color = $button.data('color'),
            settings = {
                on: {
                    icon: 'glyphicon glyphicon-check'
                },
                off: {
                    icon: 'glyphicon glyphicon-unchecked'
                }
            };

        // Event Handlers
        $button.on('click', function () {
            $checkbox.prop('checked', !$checkbox.is(':checked'));
            $checkbox.triggerHandler('change');
            updateDisplay();
        });
        $checkbox.on('change', function () {
            updateDisplay();
        });

        // Actions
        function updateDisplay() {
            var isChecked = $checkbox.is(':checked');

            // Set the button's state
            $button.data('state', (isChecked) ? "on" : "off");

            // Set the button's icon
            $button.find('.state-icon')
                .removeClass()
                .addClass('state-icon ' + settings[$button.data('state')].icon);

            // Update the button's color
            if (isChecked) {
                $button
                    .removeClass('btn-default')
                    .addClass('btn-' + color + ' active');
            }
            else {
                $button
                    .removeClass('btn-' + color + ' active')
                    .addClass('btn-default');
            }
        }

        // Initialization
        function init() {

            updateDisplay();

            // Inject the icon if applicable
            if ($button.find('.state-icon').length == 0) {
                $button.prepend('<i class="state-icon ' + settings[$button.data('state')].icon + '"></i> ');
            }
        }
        init();
    });
});

</style>
</head>
<body>
<div class="container">
<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		<form action="saveaddress" method="post">
			<h2>Shipment Address</h2>
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-6 col-sm-6 col-md-6">
					<div class="form-group">
                        <input type="text" required=" " name="name" title="Name should have  min 3 char and max 15" pattern="[A-Za-z]{3,15}"  class="form-control input-lg" placeholder="Name" tabindex="1">
					</div>
				</div>
				</div>
				<div class="form-group">
				<input type="email" required=" " name="email" title="enter valid email" id="email" class="form-control input-lg" placeholder="Email Address" tabindex="2">
			</div>
			<div class="row">
	        	<div class="col-xs-6 col-sm-6 col-md-6">
			       <div class="form-group">
				<input type="text" required=" " name="pincode" title="pincode not valid" pattern="[0-9]{6}" class="form-control input-lg" placeholder="Pincode" tabindex="3">
			</div></div>
				<div class="col-xs-6 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="text" required=" " name="city" required=" " id="city" class="form-control input-lg" placeholder="City" tabindex="5">
					</div>
				</div>
		</div>
			<div class="row">
				<div class="col-xs-6 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="text" required=" " name="phone" title="Mobile Number should start with either 7/8/9 and should contain 10 digits" pattern="[789][0-9]{9}" id="mobilenumber" class="form-control input-lg" placeholder="MobileNumber" tabindex="6">
					</div>
				</div>
					<div class="col-xs-6 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="text" name="address" required=" " id="address" class="form-control input-lg" placeholder="Address" tabindex="6">
					</div>
				</div>
			
			</div>
			<hr class="colorgraph">
			<div align="center">
			<div class="row">
				<div class="col-md-6"><input type="submit" value="Proceed To Pay" class="btn btn-primary btn-block btn-lg" tabindex="7"></div>
				</div></div>
		</form>
	</div>
</div>
</div>
</body>
</html>