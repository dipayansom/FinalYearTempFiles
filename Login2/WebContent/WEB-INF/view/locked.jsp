
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script> 
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href='<spring:url value="/css/registration.css"/>' rel="stylesheet" />
<script type="text/javascript" src='<spring:url value="/Script/registration.js"/>'></script>

<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!-- <script src="Script/registration.js"></script>
<link rel="stylesheet" type="text/css" href="Styles/registration.css"> -->
<title>Login</title>
</head>
<body>
	<div class="main">
		<section class="signup">	
			<div class="container">
				<div class="col-md-6 col-md-offset-3" style="padding-top: 10%">
					<div class="signup-content">
					<form method="GET" action="<c:url value='/login'/>" id="signup-form" class="signup-form">
						<h2 class="form-title">Your Account Has Been Locked.</h2>
						<h3>Please Contact Administrator.</h3>
						
						<input type="submit" class="form-input" name="" id="submit"
								value="Go Back To Login Page" />
					</form>
				</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>

<%-- <a href="${pageContext.request.contextPath}/login">go back</a> --%>