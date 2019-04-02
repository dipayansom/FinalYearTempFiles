<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<link href='<spring:url value="/css/jquery-ui.min.css"/>'
	rel="stylesheet" />
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href='<spring:url value="/css/registration.css"/>'
	rel="stylesheet" />
<script type="text/javascript"
	src='<spring:url value="/Script/registration.js"/>'></script>
<script type="text/javascript"
	src='<spring:url value="/Script/jquery-ui.min.js"/>'></script>
<title>Registration</title>
</head>

<body>
	<div class="main">
		<section class="signup">
		<div class="container">
			<div class="col-md-6 col-md-offset-3">
				<div class="signup-content">
					<form:form method="POST" action="add" id="signup-form" class="signup-form" commandName="admin">
						<h2 class="form-title">CREATE ACCOUNT</h2>
						<div class="form-group">
							<form:input type="text" class="form-control input-lg" path="fname"
								id="firstName" placeholder="First Name"
								 required="required" ></form:input>
						</div>
						<div class="form-group">
							<form:input type="text" class="form-control input-lg" path="lname"
								id="lastName" placeholder="Last Name" required="required" />
						</div>
						<div class="form-group">
							<form:input type="number" class="form-control input-lg" path="age"
								id="age" min="18" max="100" placeholder="Age" required="required" />
						</div>

						<div class="form-group">
							<button type="button" class="btn btn-primary"
								data-toggle="collapse" data-target="#demo" id="gender">
								<span id="genderText">Gender</span>
							</button>
							<div id="demo" class="collapse">
								<div class="radio">
									<label><form:input type="radio" path="gender" value="male" checked="checked" />Male</label>
								</div>
								<div class="radio">
									<label><form:input type="radio" path="gender" value="female" />Female</label>
								</div>
							</div>
						</div>

						<div class="form-group">



							<div class="row">
								<div class='col-md-6'>
									<div class="form-group">
										<!-- <div class='input-group date' id='datetimepicker1S'> -->
											<form:input type='text' class="form-control" id="mydate"
												placeholder='DOB' path="dob" />
									<!-- 	</div> -->
									</div>
								</div>
							</div>


						</div>
						<script type="text/javascript">
						$(document).ready(function(){
							$('#mydate').datepicker({dateFormat: "dd-M-yy",
								changeMonth: true,
								changeYear: true
								});
							}
						)
						</script>

						<div class="form-group">
							<form:input type="text" class="form-control input-lg" path="contact"
								id="contactNumber" placeholder="Contact Number" required="required" />
						</div>



						<div class="form-group">
							<form:input type="text" class="form-control input-lg" path="altcontact"
								id="altContactNumber" placeholder="Alternate Contact Number"/>
						</div>


						<div class="form-group">
							<form:input type="email" path="email" class="form-control input-lg" placeholder="Email" required="required" />
						</div>
						<div class="form-group">
							<form:input id="password" type="text" class="form-control input-lg"
								path="password" placeholder="Password" required="required" /> <span id="eye"
								toggle="#password"
								class="fa fa-fw fa-eye fa-lg field-icon toggle-password"></span>
							<div class="pwstrength_viewport_progress"></div>
						</div>
						<div class="form-group">
							<input type="checkbox" name="" id="agree-term" class="agree-term"
								required> <label for="agree-term"
								class="label-agree-term"><span><span></span></span>I
								agree all statements in <a href="#" class="term-service">Terms
									of service</a></label>
						</div>
						<div class="form-group"></div>
						<input type="submit" class="form-input" name="" id="submit"
							value="Sign Up" />
					</form:form>
					<p class="loginHere">
						Have already an account ? <a href="login" class="loginhere-link">Login
							here</a>
					</p>
				</div>
			</div>
		</div>
		</section>
	</div>
</body>

</html>