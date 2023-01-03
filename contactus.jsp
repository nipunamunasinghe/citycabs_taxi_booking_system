<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8">
	<title>Contact US</title>
	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- Font-->
	<link rel="stylesheet" type="text/css" href="css/opensans-font.css">
	<link rel="stylesheet" type="text/css" href="fonts/line-awesome/css/line-awesome.min.css">
	<!-- Jquery -->
	<link rel="stylesheet" href="https://jqueryvalidation.org/files/demo/site-demos.css">
	<!-- Main Style Css -->
    <link rel="stylesheet" href="css/style.css"/>
    <%--Linking menu bar jsp file--%>
<%@include file="menubar.jsp"%>

    
</head>

<body class="form-v4">
	<div class="page-content">
		<div class="form-v4-content">
			<div class="form-left">
				<h2>City Cabs</h2>
				<p class="text-1">A taxi, also known as a taxicab or simply a cab, is a type of vehicle for hire with a driver, used by a single passenger or small group of passengers, 
				often for a non-shared ride. A taxicab conveys passengers between locations of their choice.</p>
				<p class="text-2"><span>Eu ultrices:</span> Vitae auctor eu augue ut. Malesuada nunc vel risus commodo viverra. Praesent elementum facilisis leo vel.</p>
				<div class="form-left-last">
					<input type="submit" name="account" class="account" value="Follow US">
				</div>
			</div>

			
			<form class="form-detail" action="submit" method="post">
				<h2 style="color:#fdc315;">Submit a Ticket</h2>
				<div class="form-group">
					<div class="form-row form-row-1">
						<label for="first_name">First Name</label>
						<input type="text" name="first_name" class="input-text" placeholder="First Name">
					</div>
					
					<div class="form-row form-row-1">
						<label for="last_name">Last Name</label>
						<input type="text" name="last_name" class="input-text" placeholder="Last Name">
					</div>
				</div>
				
				<div class="form-row">
					<label for="your_email">Your Email</label>
					<input type="text" name="your_email" class="input-text" placeholder="Email "required pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}">
				</div>
				
				<div class="form-row">
					<label for="inquiry">Enter your inquiry</label>
					<input style="width:400px; height:250px;" type="text" name="inquiry" class="input-text" placeholder="Enter your inquiry" required>
				</div>
				
				<div class="form-row-last">
					<input type="submit" name="register" class="register" value="Submit">
				</div>
				
		 
                
			</form>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
	<script>
		// just for the demos, avoids form submit
		jQuery.validator.setDefaults({
		  	debug: true,
		  	success:  function(label){
        		label.attr('id', 'valid');
   		 	},
		});
		$( "#myform" ).validate({
		  	rules: {
			    password: "required",
		    	comfirm_
		    	password: {
		      		equalTo: "#password"
		    	}
		  	},
		  	messages: {
		  		first_name: {
		  			required: "Please enter a firstname"
		  		},
		  		last_name: {
		  			required: "Please enter a lastname"
		  		},
		  		your_email: {
		  			required: "Please provide an email"
		  		},
		  		password: {
	  				required: "Please enter a password"
		  		},
		  		comfirm_password: {
		  			required: "Please enter a password",
		      		equalTo: "Wrong Password"
		    	}
		  	}
		});
	</script>
<footer> <%@include file="footer.jsp"%>	
</footer>
</body>
</html>