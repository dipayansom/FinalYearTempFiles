<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<%-- <html>
<head>
<link href='<spring:url value="/resources/test.css"/>' rel="stylesheet" />

</head>
	<body>
	
		<h1 id="banner">Login to Security Demo</h1>  
		<form name="f" action="<c:url value='j_spring_security_check'/>"
					method="POST">
			<table>
				<tr>
					<td>Username:</td>
					<td><input type='text' name='j_username' /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type='password' name='j_password'></td>
				</tr>
				<tr>
					<td colspan="2">&nbsp;</td>
				</tr>
				<tr>
					<td colspan='2'><input name="submit" type="submit">&nbsp;<input name="reset" type="reset"></td>
				</tr>
			</table>
		</form>
	</body>
</html> --%>
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
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	<div class="main">
		<section class="signup">	
			<div class="container">
				<div class="col-md-6 col-md-offset-3" style="padding-top: 10%">
					<div class="signup-content">
					<form method="POST" action="<c:url value='j_spring_security_check'/>" id="signup-form" class="signup-form">
						<h2 class="form-title">Login</h2>
						<div class="form-group">
							<input type="text" class="form-control input-lg"  name='j_username' id="loginId"
								placeholder="Login Id" required />
						</div>
						
						<div class="form-group">
							<input id="password" type="password" class="form-control input-lg" name='j_password' placeholder="Password" required>
              					<span id="eye" toggle="#password" class="fa fa-fw fa-eye-slash fa-lg field-icon toggle-password"></span>
              					<div class="pwstrength_viewport_progress"></div>
              					<a href="">Forgot password?</a>
						</div>
						
						
						
						<input type="submit" class="form-input" name="" id="submit"
								value="Login" />
					</form>
					
					<p class="loginHere">
                        Don't have an account ? <a href="reg" class="Registerhere-link">Register Here</a> 
                    	
                    </p>
                    
				</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>